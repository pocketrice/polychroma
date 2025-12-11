#include <Adafruit_GFX.h>
#include <Adafruit_ST7735.h>
#include <IRremoteESP8266.h>
#include <IRrecv.h>

const int PIN_TFT_LITE = 33;
const int PIN_TFT_SCLK = 25;
const int PIN_TFT_MOSI = 26;
const int PIN_TFT_CS = 27;
const int PIN_TFT_DC = 14;
const int PIN_TFT_RESET = 13;

const int PIN_JOY_X = 36;
const int PIN_JOY_Y = 39;
const int PIN_JOY_SW = 33;

const int PIN_LED = 21;

const int PIN_IR = 18;

Adafruit_ST7735 tft = Adafruit_ST7735(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_MOSI, PIN_TFT_SCLK, PIN_TFT_RESET);

IRrecv irrecv(PIN_IR);
decode_results irres;
const uint8_t POLYTALK_ERR = 255;
const uint8_t POLYTALK_L0 = 0;
const uint8_t POLYTALK_L1 = 1;
const uint8_t POLYTALK_L2 = 2;
const uint8_t POLYTALK_L3 = 3;
const uint8_t POLYTALK_CON = 128;
const uint16_t polytalk_con_bg = tft.color565(81, 42, 255);
const uint16_t polytalk_con_text = tft.color565(208, 200, 244);
const uint16_t polytalk_fin_bg = tft.color565(59, 191, 183);
const uint16_t polytalk_fin_text = tft.color565(215, 246, 243);
const uint16_t polytalk_kill_bg = tft.color565(230, 25, 126);
const uint16_t polytalk_kill_text = tft.color565(236, 226, 231);
const uint16_t polytalk_ms_bg = tft.color565(0, 0, 0);
const uint16_t polytalk_ms_text = tft.color565(231, 117, 48);

const uint8_t GBC_PIXELS_HOR = 160;
const uint8_t GBC_PIXELS_VERT = 128;
const uint8_t LEVEL_TILES_HOR = 10;
const uint8_t LEVEL_TILES_VERT = 8;
const uint8_t TILE_PIXELS_HOR = GBC_PIXELS_HOR / LEVEL_TILES_HOR; // shoould be 16
const uint8_t TILE_PIXELS_VERT = GBC_PIXELS_VERT / LEVEL_TILES_VERT; // should be 16
const uint16_t palette_player = tft.color565(198, 191, 214); // color of the player tile



const int JOY_TOLERANCE_EDGE = 150;
const int JOY_TOLERANCE_STD = 100;
const int JOY_LOW_EDGE = 0 + JOY_TOLERANCE_EDGE;
const int JOY_HI_EDGE = 4095 - JOY_TOLERANCE_EDGE;
const int JOY_MID_LBOUND = 1800 - JOY_TOLERANCE_STD;
const int JOY_MID_RBOUND = 1800 + JOY_TOLERANCE_STD;

uint8_t levelmap_0[86] = { // please note!! mapdata is y-inverted for easy ptr arithmetic.
  0, 1,
  8, 6, 8, 5,
  0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 3, 0, 0, 2, 0,
  0, 0, 0, 0, 0, 3, 0, 0, 2, 0,
  0, 0, 0, 0, 0, 3, 0, 1, 1, 0,
   0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
   0, 0, 1, 1, 0, 3, 0, 0, 0, 1,
   0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
};

const uint16_t palette_0[5] = {
  tft.color565(0, 0, 0),
  tft.color565(255, 255, 255),
  tft.color565(91, 110, 225),
  tft.color565(172, 50, 50),
  tft.color565(0, 0, 0) // no special
};

uint8_t levelmap_1[86] = {
  7, 7,
  8, 4, 8, 5,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 3, 0, 0, 0, 1, 1, 0,
  0, 3, 0, 0, 0, 0, 1, 1, 2, 0,
  0, 0, 0, 3, 0, 0, 1, 1, 2, 0,
  3, 0, 0, 0, 0, 0, 0, 1, 1, 0,
  0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

uint16_t palette_1[5] = {
  tft.color565(34, 32, 52),
  tft.color565(238, 195, 154),
  tft.color565(34, 32, 52), // door is "hidden"
  tft.color565(154, 178, 238),
  tft.color565(0, 0, 0) // no special
};

uint8_t levelmap_2[86] = {
  1, 1,
  5, 3, 5, 4,
  0, 0, 0, 3, 0, 3, 0, 0, 0, 0,
  0, 0, 3, 0, 0, 3, 3, 3, 0, 0,
  3, 3, 3, 0, 3, 3, 3, 3, 3, 0,
  0, 3, 0, 0, 3, 2, 3, 3, 3, 0,
  0, 3, 3, 0, 0, 2, 3, 3, 3, 3,
  0, 3, 3, 3, 3, 3, 3, 3, 0, 0,
  0, 3, 3, 0, 3, 3, 3, 0, 0, 0,
  3, 3, 0, 3, 0, 0, 0, 0, 0, 0,
};

const uint16_t palette_2[5] = {
  tft.color565(16, 65, 67),
  tft.color565(0, 0, 0), // no wall
  tft.color565(91, 110, 225),
  tft.color565(126, 193, 197),
  tft.color565(0, 0, 0) // no special
};

uint8_t levelmap_3[6] = {
  1, 7,
  100, 100, 100, 100, // no exit door
  // [[ mutable level data @ levelmap4 ]]
};

const uint16_t palette_3[5] = {
  tft.color565(0, 0, 0), // yes blank, replaced after painted
  tft.color565(255, 255, 255), // no wall
  tft.color565(255, 255, 255), // no door
  tft.color565(255, 255, 255), // no lava
  tft.color565(255, 28, 127), // yes special!
};

// polytalk/phase-change 
bool isPolyCon = false;
bool isPolySwap = true;
int polyswap = 100; // phase tracker/trigger; 100 = waiting, 101 = con established, 102 = finish, 200 = killed, 0 = L0, 1 = L1, 2 = L2, 3 = L3


// "game" vars
bool isGame = false;
bool gameStatus = false;
int level = 0;
int player_x, player_y;
int door_a0, door_a1, door_b0, door_b1;
int player_ox, player_oy;
uint8_t *level_map = levelmap_0; // technically `const`
const uint16_t *level_pal = palette_0;
bool loadNextLevel = false;


void setup() {
  pinMode(PIN_JOY_SW, INPUT);  
  pinMode(PIN_LED, OUTPUT);

  Serial.begin(115200);

  irrecv.enableIRIn();

  tft.initR(INITR_BLACKTAB);
  tft.setRotation(3);
  tft.setTextColor(ST77XX_WHITE);
  tft.setTextSize(1);
  tft.setCursor(8, 16);
}

void loop() {
  if (irrecv.decode(&irres)) {
    uint8_t key = decodeIRRes(irres.value);

    switch (key) {
      case POLYTALK_CON:
        isPolyCon = !isPolyCon;

        if (isPolyCon) {
          polylite_con_init();
          isPolySwap = true;
          polyswap = 101;
        } else {
          polylite_con_end();
          isGame = false;
          isPolySwap = true;
          polyswap = 200;
        }
        break;
      case POLYTALK_ERR:
        if (isPolyCon) {
          polylite_err();
        }
        break;
      default:
        if (isPolyCon) {
          polylite_ok_ln();
          isPolySwap = true;
          polyswap = key;
        }
    }

    irrecv.resume();
  }

  if (isPolySwap) {
    tft.setCursor(8, 16);

    switch (polyswap) {
      case 100: // waiting
          tft.fillScreen(ST77XX_BLACK);
          tft.println("awaiting polytalk...");
          break;
      case 101: // chitchat established
          tft.fillScreen(polytalk_con_bg);
          tft.setTextColor(polytalk_con_text);
          tft.println("chitchat OK!");
          delay(5000);
          tft.fillScreen(polytalk_con_bg);
          tft.println("level select...");
          break;
      case 102: // finish
          tft.fillScreen(polytalk_fin_bg);
          tft.setTextColor(polytalk_fin_text);
          tft.println((gameStatus) ? "turned out OK :D" : "turned out NG :(");
          delay(10000);
          tft.fillScreen(polytalk_ms_bg);
          tft.setTextColor(polytalk_ms_text);
          tft.println("It's now safe to turn off polychroma.");
          delay(150);
          polylite_con_end();
          isPolyCon = false;

          break;
      case 200: // killed
          tft.fillScreen(polytalk_kill_bg);
          tft.setTextColor(polytalk_kill_text);
          tft.println("abruptly ended chitchat..");
          break;
      case 0: // L0
          tft.fillScreen(polytalk_con_bg);
          tft.setTextColor(polytalk_con_text);
          tft.println("loading room 0!");
          delay(5000);
          level = 0;
          loadNextLevel = true;
          isGame = true;
          break;
      case 1: // L1
          tft.fillScreen(polytalk_con_bg);
          tft.setTextColor(polytalk_con_text);
          tft.println("loading room 1!");
          delay(5000);
          level = 1;
          loadNextLevel = true;
          isGame = true;
          break;
      case 2: // L2
          tft.fillScreen(polytalk_con_bg);
          tft.setTextColor(polytalk_con_text);
          tft.println("loading room 2!");
          delay(5000);
          level = 2;
          loadNextLevel = true;
          isGame = true;
          break;
      case 3: // L3
          tft.fillScreen(polytalk_con_bg);
          tft.setTextColor(polytalk_con_text);
          tft.println("loading special room!");
          delay(5000);
          level = 3;
          loadNextLevel = true;
          isGame = true;
      default: break;
    }

    isPolySwap = false;
  }

  if (isGame) {
      digitalWrite(PIN_LED, HIGH);

  if (loadNextLevel) {
    switch (level) {
      case 0:
        level_map = levelmap_0;
        level_pal = palette_0;
        break;
      case 1:
        level_map = levelmap_1;
        level_pal = palette_1;
        break;
      case 2:
        level_map = levelmap_2;
        level_pal = palette_2;
        break;
      case 3:
        level_map = levelmap_3;
        level_pal = palette_3;
        break;
    }

    for (size_t x = 0; x < TILE_PIXELS_HOR; x++) {
      for (size_t y = 0; y < TILE_PIXELS_VERT; y++) {
        tft.fillRect(x * TILE_PIXELS_HOR, y * TILE_PIXELS_VERT, TILE_PIXELS_HOR, TILE_PIXELS_VERT, level_pal[level_map[6 + y * LEVEL_TILES_HOR + x]]);
      }
    }

    tft.drawChar(0, 0, '0' + level, ST77XX_WHITE, ST77XX_BLACK, 2); // overdraw level num

      player_x = level_map[0];
      player_y = level_map[1];
      door_a0 = level_map[2];
      door_a1 = level_map[3];
      door_b0 = level_map[4];
      door_b1 = level_map[5];

      loadNextLevel = false;
  }

    int joy_x = analogRead(PIN_JOY_X); // 0-4095
    int joy_y = analogRead(PIN_JOY_Y); // 0-4095
    bool is_joy_btn = (digitalRead(PIN_JOY_SW) == 0);

    // draw over old player location
    tft.fillRect(player_ox * TILE_PIXELS_HOR, player_y * TILE_PIXELS_VERT, TILE_PIXELS_HOR, TILE_PIXELS_VERT, level_pal[level_map[6 + player_oy * LEVEL_TILES_HOR + player_ox]]);

    delay(50);

    // parse/update player position, wrapping if needed
    player_ox = player_x; // <-- store previous positions if need to reset after collision check.
    player_oy = player_y;

    if (joy_y <= JOY_LOW_EDGE && joy_x >= JOY_MID_LBOUND && joy_x <= JOY_MID_RBOUND) { // (1800, 0) :~ (1700-1900, 0-200). UP!
       player_y = (player_y == 0) ? LEVEL_TILES_VERT - 1 : player_y - 1;

    } else if (joy_x >= JOY_MID_LBOUND && joy_x <= JOY_MID_RBOUND && joy_y >= JOY_HI_EDGE) { // (1800, 4095) :~ (1700-1900, 3900-4095). DOWN!
       player_y = (player_y == LEVEL_TILES_VERT - 1) ? 0 : player_y + 1; // <-- wrap if needed

    } else if (joy_x >= JOY_HI_EDGE && joy_y >= JOY_MID_LBOUND && joy_y <= JOY_MID_RBOUND) { // (4095, 1800) :~ (3900-4095, 1700-1900). RIGHT!
      player_x = (player_x == LEVEL_TILES_HOR - 1) ? 0 : player_x + 1;

    } else if (joy_x <= JOY_LOW_EDGE && joy_y >= JOY_MID_LBOUND && joy_y <= JOY_MID_RBOUND) { // (0, 1800) :~ (0-200, 1700-1900). LEFT!
      player_x = (player_x == 0) ? LEVEL_TILES_HOR - 1 : player_x - 1;

    } else if (joy_x <= JOY_LOW_EDGE && joy_y >= JOY_HI_EDGE) { // (0, 4095) :~ (0-200, 3900-4095). DOWN_LEFT!
      player_x = (player_x == 0) ? LEVEL_TILES_HOR - 1 : player_x - 1;
      player_y = (player_y == LEVEL_TILES_VERT - 1) ? 0 : player_y + 1;

    } else if (joy_x >= JOY_HI_EDGE && joy_y >= JOY_HI_EDGE) { // (4095, 4095) :~ (3900-4095, 3900-4095). DOWN_RIGHT!
      player_x = (player_x == LEVEL_TILES_VERT - 1) ? 0 : player_x + 1;
      player_y = (player_y == LEVEL_TILES_VERT - 1) ? 0 : player_y + 1;

    } else if (joy_x <= JOY_LOW_EDGE && joy_y <= JOY_LOW_EDGE) { // (0, 0) :~ (0-200, 0-200). UP_LEFT!
      player_x = (player_x == 0) ? LEVEL_TILES_HOR - 1 : player_x - 1;
      player_y = (player_y == 0) ? LEVEL_TILES_VERT - 1 : player_y - 1;

    } else if (joy_x >= JOY_HI_EDGE && joy_y <= JOY_LOW_EDGE) { // (4095, 0) :~ (3900-4095, 0-200). UP_RIGHT!
      player_x = (player_x == LEVEL_TILES_HOR - 1) ? 0 : player_x + 1;
      player_y = (player_y == 0) ? LEVEL_TILES_VERT - 1 : player_y - 1;

    } // otherwise, idle!!

    // tile check! if wall, revert position; if door and button pressed, exit OK; if lava, exit NG.
    // note for latter two cases render for a frame before quit, so queued rather than executed here.
    switch (*(level_map + 6 + player_y * LEVEL_TILES_HOR + player_x)) {
      case 0: // hole
        break;
      case 1: // wall
        player_x = player_ox;
        player_y = player_oy;
        break;
      case 2: // door
        if (is_joy_btn) {
          isGame = false;
          gameStatus = true;
          polyswap = 102;
          isPolySwap = true;
          //  level++;
          //  loadNextLevel = true;
        }
        break;
      case 3: // lava
        isGame = false;
        gameStatus = false;
        polyswap = 102;
        isPolySwap = true;
        break;
      case 4: // special/paint
      break;
    }

    // render frame

    if (is_joy_btn) {
      tft.fillRect(player_x * TILE_PIXELS_HOR, player_y * TILE_PIXELS_VERT, TILE_PIXELS_HOR, TILE_PIXELS_VERT, palette_player); // overdraw player
    } else {
      tft.drawRect(player_x * TILE_PIXELS_HOR, player_y * TILE_PIXELS_VERT, TILE_PIXELS_HOR, TILE_PIXELS_VERT, palette_player);
    }
    delay(150);
  }
}

/// "polylite" binary signal for establish comms. OFF -> ON
inline void polylite_con_init() {
  digitalWrite(PIN_LED, HIGH);
  delay(200);
  digitalWrite(PIN_LED, LOW);
  delay(100);
  digitalWrite(PIN_LED, HIGH);
  delay(200);
  digitalWrite(PIN_LED, LOW);
  delay(100);
  digitalWrite(PIN_LED, HIGH);
  delay(200);
  digitalWrite(PIN_LED, LOW);
  delay(100);
  digitalWrite(PIN_LED, HIGH);
}

/// "polylite" binary signal for kill comms. ON -> OFF
inline void polylite_con_end() {
  digitalWrite(PIN_LED, LOW);
  delay(200);
  digitalWrite(PIN_LED, HIGH);
  delay(100);
  digitalWrite(PIN_LED, LOW);
  delay(200);
  digitalWrite(PIN_LED, HIGH);
  delay(100);
  digitalWrite(PIN_LED, LOW);
}

/// "polylite" binary signal for accepted level n. ON -> ON
inline void polylite_ok_ln() {
  digitalWrite(PIN_LED, LOW);
  delay(200);
  digitalWrite(PIN_LED, HIGH);
  delay(200);
  digitalWrite(PIN_LED, LOW);
  delay(200);
  digitalWrite(PIN_LED, HIGH);
  delay(200);
  digitalWrite(PIN_LED, LOW);
  delay(200);
  digitalWrite(PIN_LED, HIGH);
}

/// "polylite" binary signal for err. ON -> ON
inline void polylite_err() {
  digitalWrite(PIN_LED, LOW);
  delay(25);
  digitalWrite(PIN_LED, HIGH);
  delay(25);
  digitalWrite(PIN_LED, LOW);
  delay(25);
  digitalWrite(PIN_LED, HIGH);
}

uint8_t decodeIRRes(long value) {
  switch (value) {
    case 0xFF6897: // "0"
      return POLYTALK_L0; // load level 0
    case 0xFF30CF: // "1"
      return POLYTALK_L1; // load level 1
    case 0xFF18E7: // "2"
      return POLYTALK_L2; // load level 2
    case 0xFF7A85: // "3"
      return POLYTALK_L3; // load level 3
    case 0xFFA25D: // "⏻"
      return POLYTALK_CON; // convo established
    default:
      return POLYTALK_ERR; // error/unsupported
  }
}
