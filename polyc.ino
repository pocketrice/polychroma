#include <IRremoteESP8266.h>
#include <IRrecv.h>
#include "AudioFileSourceSD_MMC.h"
#include "AudioOutputI2S.h"
#include "AudioGeneratorMP3.h"
#include "SD_MMC.h"
#include "FS.h"

#define PIN_JOY_X 36;
#define PIN_JOY_Y 39;
#define PIN_JOY_SW 23;

//#define PIN_IR_OUT  35;
#define PIN_IR_IN  32;

#define PIN_LED_R  21;
#define PIN_LED_G  19;
#define PIN_LED_B  18;

#define PIN_AMP_MONO  22;

#define PIN_TFT_LITE  33;
#define PIN_TFT_SCLK  25;
#define PIN_TFT_MOSI  26;
#define PIN_TFT_CS  27;
#define PIN_TFT_DC  14;
#define PIN_TFT_RESET  13;

IRrecv irrecv(IR_RECEIVE_PIN);
decode_results irres;

AudioGeneratorMP3 *mp3;
AudioFileSourceSD_MMC *file_l0;
AudioFileSourceSD_MMC *file_l1;
AudioFileSourceSD_MMC *file_l2;
AudioFileSourceSD_MMC *file_l3;
AudioOutputI2S *out;

// "game" vars
AudioFileSourceSD_MMC *level_audio;
uint8_t *level_map;
uint8_t *level_mapdata;
uint16_t *level_pal;
uint8_t player_x;
uint8_t player_y;
uint8_t door0_x;
uint8_t door0_y;
uint8_t door1_x;
uint8_t door1_y;
std::string tft_lid; // level id 

bool is_special;
uint8_t special_tiles_left;
bool is_game;
int game_end_state; // 0 = not end, 1 = OK, 2 = NG
enum JoyDir joydir;
uint8_t mapdata4[80];

Adafruit_ST7735 tft = Adafruit_ST7735(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_RST);

// 0 = empty, 1 = wall, 2 = door, 3 = lava, 4 = (special) paint
// first six are (1) start tile x/y and (2) exit tile A/B x/y. note first tile is always reserved for level ID and overwritten.
// display is 128x160, so 8x10 GB2x tiles. 
const uint8_t GBC_PIXELS_HOR = 160;
const uint8_t GBC_PIXELS_VERT = 128;
const uint8_t LEVEL_TILES_HOR = 10;
const uint8_t LEVEL_TILES_VERT = 8;
const uint8_t TILE_PIXELS_HOR = GBC_PIXELS_HOR / LEVEL_TILES_HOR; // shoould be 16
const uint8_t TILE_PIXELS_VERT = GBC_PIXELS_VERT / LEVEL_TILES_VERT; // should be 16
const uint16_t palette_player = tft.color565(198, 191, 214); // color of the player tile

const uint8_t levelmap_0[84] = { // please note!! mapdata is y-inverted for easy ptr arithmetic.
  0, 1,
  8, 6, 8, 5,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
  0, 0, 1, 1, 0, 3, 0, 0, 0, 1,
  0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 3, 0, 1, 1, 0,
  0, 0, 0, 0, 0, 3, 0, 0, 2, 0,
  0, 0, 0, 0, 0, 3, 0, 0, 2, 0,
  0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
}

const uint16_t palette_0[5] = {
  tft.color565(0, 0, 0),
  tft.color565(255, 255, 255),
  tft.color565(91, 110, 225),
  tft.color565(172, 50, 50),
  tft.color565(0, 0, 0) // no special
}

const uint8_t levelmap_1[84] = {
  1, 7,
  8, 4, 8, 5,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
  3, 0, 0, 0, 0, 0, 0, 1, 1, 0,
  0, 0, 0, 3, 0, 0, 1, 1, 2, 0,
  0, 3, 0, 0, 0, 0, 1, 1, 2, 0,
  0, 0, 0, 3, 0, 0, 0, 1, 1, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
}

const uint16_t palette_1[5] = {
  tft.color565(34, 32, 52),
  tft.color565(238, 195, 154),
  tft.color565(34, 32, 52), // door is "hidden"
  tft.color565(154, 178, 238),
  tft.color565(0, 0, 0) // no special
}

const uint8_t levelmap_2[84] = {
  9, 7,
  5, 3, 5, 4,
  3, 3, 0, 3, 0, 0, 0, 0, 0, 0
  0, 3, 3, 0, 3, 3, 3, 0, 0, 0,
  0, 3, 3, 3, 3, 3, 3, 3, 0, 0,
  0, 3, 3, 0, 0, 2, 3, 3, 3, 3,
  0, 3, 0, 0, 3, 2, 3, 3, 3, 0,
  3, 3, 3, 0, 3, 3, 3, 3, 3, 0,
  0, 0, 3, 0, 0, 3, 3, 3, 0, 0,
  3, 0, 0, 3, 0, 3, 0, 0, 0, 0,
}

const uint16_t palette_2[5] = {
  tft.color565(16, 65, 67),
  tft.color565(0, 0, 0), // no wall
  tft.color565(91, 110, 225),
  tft.color565(126, 193, 197),
  tft.color565(0, 0, 0) // no special
}

const uint8_t levelmap_3[6] = {
  1, 7,
  100, 100, 100, 100, // no exit door
  // [[ mutable level data @ levelmap4 ]]
}

const uint16_t palette_3[5] = {
  tft.color565(0, 0, 0), // yes blank, replaced after painted
  tft.color565(255, 255, 255), // no wall
  tft.color565(255, 255, 255), // no door
  tft.color565(255, 255, 255), // no lava
  tft.color565(255, 28, 127), // yes special!
}

const int pwmFreq = 5000;
const int pwmRes = 8;

const int standbyRGB[3] = { 98, 77, 228 };
const int activeRGB[3] = { 77, 228, 193 };

const int JOY_TOLERANCE_EDGE = 150;
const int JOY_TOLERANCE_STD = 100;
const int JOY_LOW_EDGE = 0 + JOY_TOLERANCE_EDGE;
const int JOY_HI_EDGE = 4095 - JOY_TOLERANCE_EDGE;
const int JOY_MID_LBOUND = 1800 - JOY_TOLERANCE_STD;
const int JOY_MID_RBOUND = 1800 + JOY_TOLERANCE_STD;

void setup() {
  ledcAttach(PIN_LED_R, pwmFreq, pwmRes);
  ledcAttach(PIN_LED_G, pwmFreq, pwmRes);
  ledcAttach(PIN_LED_B, pwmFreq, pwmRes);

  setColor(standbyRGB);

  tft.initR(INITR_BLACKTAB);
  tft.fillScreen(ST77XX_BLACK);
  tft.setTextColor(ST77XX_WHITE);
  tft.setTextSize(16);
  tft.setCursor(0,0);
  tft.println("Waiting for polytalk...");

  irrecv.enableIRIn();

  SD_MMC.begin();
  file_l0 = new AudioFileSourceSD_MMC("/l0.mp3");
  file_l1 = new AudioFileSourceSD_MMC("/l1.mp3");
  file_l2 = new AudioFileSourceSD_MMC("/l2.mp3");
  file_l3 = new AudioFileSourceSD_MMC("/l3.mp3");
  out = new AudioOutputI2S(0, 1);
  out->SetOutputModeMono(true);
  mp3 = new AudioGeneratorMP3();

  pinMode(PIN_JOY_SW, INPUT);
}

void loop() {
  if (!is_game && irrecv.decode(&results)) {
      int level_id = initGame(decodeIRRes(irres.value), joy_x, joy_y, joy_btn);
      
      switch (level_id) {
        case 0:
          level_audio = file_l0;
          level_map = levelmap_0;
          level_pal = palette_0;
          is_special = false;
          is_game = true;
          tft_lid = "0"
          break;

        case 1:
          level_audio = file_l1;
          level_map = levelmap_1;
          level_pal = palette_1;
          is_special = false;
          is_game = true;
          tft_lid = "1"
          break;

        case 2:
          level_audio = file_l2;
          level_map = levelmap_2;
          level_pal = palette_2;
          is_special = false;
          is_game = true;
          tft_lid = "2"
          break;
    
        case 3: // should be only 3
          level_audio = file_l3;
          level_map = levelmap_3;
          level_pal = palette_3;
          is_special = true;
          is_game = true;
          tft_lid = "3";
          break;

        default:
          is_game = false;
      }

      player_x = *(level_map);
      player_y = *(level_map + 1);
      door0_x = *(level_map + 2);
      door0_y = *(level_map + 3);
      door1_x = *(level_map + 4);
      door1_y = *(level_map + 5);
      level_mapdata = (is_special) ? levelmap4 : level_map + 6;

      // set sync LED
      setColor(activeRGB);

      // reset game vars
      game_end_state = 0;

      if (is_special) {
        special_tiles_left = 80;

        mapdata4 = {
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
          4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
        }
      }

      mp3->begin(level_audio);
  }

  if (is_game) {
    // poll player inputs
    int joy_x = analogRead(PIN_JOY_X); // 0-4095
    int joy_y = analogRead(PIN_JOY_Y); // 0-4095
    bool is_joy_btn = (digitalRead(PIN_JOY_SW) == 0);

    // parse/update player position, wrapping if needed
    int player_ox = player_x; // <-- store previous positions if need to reset after collision check.
    int player_oy = player_y;

    if (yValue <= JOY_LOW_EDGE && xValue >= JOY_MID_LBOUND && xValue <= JOY_MID_RBOUND) { // (1800, 0) :~ (1700-1900, 0-200). UP!
      player_y = (player_y == LEVEL_TILES_VERT - 1) ? 0 : player_y + 1; // <-- wrap if needed

    } else if (xValue >= JOY_MID_LBOUND && xValue <= JOY_MID_RBOUND && yValue >= JOY_HI_EDGE) { // (1800, 4095) :~ (1700-1900, 3900-4095). DOWN!
      player_y = (player_y == 0) ? LEVEL_TILES_VERT - 1 : player_y - 1;

    } else if (xValue >= JOY_HI_EDGE && yValue >= JOY_MID_LBOUND && yValue <= JOY_MID_RBOUND) { // (4095, 1800) :~ (3900-4095, 1700-1900). RIGHT!
      player_x = (player_x == LEVEL_TILES_HOR - 1) ? 0 : player_x + 1;

    } else if (xValue <= JOY_LOW_EDGE && yValue >= JOY_MID_LBOUND && yValue <= JOY_MID_RBOUND) { // (0, 1800) :~ (0-200, 1700-1900). LEFT!
      player_x = (player_x == 0) ? LEVEL_TILES_HOR - 1 : player_x - 1;

    } else if (xValue <= JOY_LOW_EDGE && yValue >= JOY_HI_EDGE) { // (0, 4095) :~ (0-200, 3900-4095). DOWN_LEFT!
      player_x = (player_x == 0) ? LEVEL_TILES_HOR - 1 : player_x - 1;
      player_y = (player_y == 0) ? LEVEL_TILES_VERT - 1 : player_y - 1;

    } else if (xValue >= JOY_HI_EDGE && yValue >= JOY_HI_EDGE) { // (4095, 4095) :~ (3900-4095, 3900-4095). DOWN_RIGHT!
      player_x = (player_x == LEVEL_TILES_VERT - 1) ? 0 : player_x + 1;
      player_y = (player_y == 0) ? LEVEL_TILES_VERT - 1 : player_y - 1;

    } else if (xValue <= JOY_LOW_EDGE && yValue <= JOY_LOW_EDGE) { // (0, 0) :~ (0-200, 0-200). UP_LEFT!
      player_x = (player_x == 0) ? LEVEL_TILES_HOR - 1 : player_x - 1;
      player_y = (player_y == LEVEL_TILES_VERT - 1) ? 0 : player_y + 1;

    } else if (xValue >= JOY_HI_EDGE && yValue <= JOY_LOW_EDGE) { // (4095, 0) :~ (3900-4095, 0-200). UP_RIGHT!
      player_x = (player_x == LEVEL_TILES_HOR - 1) ? 0 : player_x + 1;
      player_y = (player_y == LEVEL_TILES_VERT - 1) ? 0 : player_y + 1;

    } // otherwise, idle!!

    // tile check! if wall, revert position; if door and button pressed, exit OK; if lava, exit NG.
    // note for latter two cases render for a frame before quit, so queued rather than executed here.
    switch (*(level_mapdata + player_y * LEVEL_TILES_VERT + player_x)) {
      case 0: // hole
        break;
      case 1: // wall
        player_x = player_ox;
        player_y = player_oy;
        break;
      case 2: // door
        if (is_joy_btn) {
          game_end_state = 1;
        }
        break;
      case 3: // lava
        game_end_state = 2;
        break;
      case 4: // special/paint
        *(level_mapdata + player_y * LEVEL_TILES_VERT + player_x) = 0;
        special_tiles_left--;

        if (special_tiles_left == 0) {
          game_end_state = 1;
        }
    }

    // render frame
    for (size_t x = 0; x < LEVEL_TILES_HOR; x++) {
      for (size_t y = 0; y < LEVEL_TILES_VERT; y++) {
        tft.drawRect(x * TILE_PIXELS_HOR, y * TILE_PIXELS_VERT, (x+1) * TILE_PIXELS_HOR, (y+1) * TILE_PIXELS_VERT, *(level_pal[*(level_mapdata + y * LEVEL_TILES_VERT + x)]));
      }
    }
    tft.println(tft_lid) // overdraw level num
    tft.drawRect(player_x * TILE_PIXELS_HOR, player_y * TILE_PIXELS_VERT, (player_x+1) * TILE_PIXELS_HOR, (player_y+1) * TILE_PIXELS_VERT, palette_player); // overdraw player

    // sync with standard 60 fps
    delay(16);

    if (game_end_state) {
      tft.fillScreen(ST77XX_BLACK);
      tft.println((game_end_state == 1) ? "finished OK!" : "finished NG.");
      mp3->stop();
      setColor(standbyRGB);
      is_game = false;
    }
  }
}

uint8_t decodeIRRes(long value) {
  switch (value) {
    case 0xFF6897:
      return 0;
    case 0xFF30CF:
      return 1;
    case 0xFF18E7:
      return 2;
    case 0xFF7A85:
      return 3;
    default:
      return 0-1; // error/unsupported
  }
}

void setColor(int rgb[3]) {
  ledcWrite(PIN_LED_R, rgb[0]);
  ledcWrite(PIN_LED_G, rgb[1]);
  ledcWrite(PIN_LED_B, rgb[2]);
}
