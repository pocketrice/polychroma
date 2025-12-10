INCLUDE "utils/hardware.inc"

SECTION "GameVariables", WRAM0

wLastKeys:: db
wCurrKeys:: db
wNewKeys:: db
wGameState:: db


SECTION "Header", ROM0[$100]

	jp EntryPoint

	ds $150 - @, 0 ; make room for header

EntryPoint:
; Turn off audio circuitry
xor a
ld [rNR52], a
ld [wGameState], a

; Wait for vblank
call WaitForOneVBlank

; Turn off LCD
xor a
ld [rLCDC], a

; Load text font into VRAM
call LoadFontIntoVRAM

; Turn LCD on
ld a, LCDCF_ON | LCDCF_BGON | LCDCF_OBJON | LCDCF_OBJ16 | LCDCF_WINON | LCDCF_WIN9C00
ld [rLCDC], a


; During first blank frame, init display registers
ld a, %11100100
ld [rBGP], a
ld [rOBP0], a

NextGameState::

  ; (!) never turn LCD off outside of vblank!!!
  call WaitForOneVBlank
  call ClearBackground

  ; Turn LCD off
  xor a
  ld [rLCDC], a

  ; Reset BG/WIN positions
  ld [rSCX], a
  ld [rSCY], a
  ld [rWX], a
  ld [rWY], a

  ; disable interrupts
  call DisableInterrupts

  ; clear sprites
  ; call ClearAllSprites

  ; Init next state
  ;ld a, [wGameState]
  ;cp 2 ; GAME
  ;call z, InitGameState
  ld a, [wGameState]
  cp 1 ; POLYTALK
  call z, InitPolytalkState
  ld a, [wGameState]
  and a ; TITLE
  call z, InitTitleState

  ; update the next state
  ld a, [wGameState]
  ;cp 2 ; GAME
  ;jp z, UpdateGameState
  cp 1 ; POLYTALK
  jp z, UpdatePolytalkState
  jp UpdateTitleState




