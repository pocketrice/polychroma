INCLUDE "utils/hardware.inc"
INCLUDE "utils/text-macros.inc"

SECTION "TitleState", ROM0

TitleText:: db "polychroma", 255
InputText:: db "push start", 255
CopyrightText:: db "© 2025 pocketrice", 255

;titleTileData: INCBIN "generated/backgrounds/title.2bpp"
;titleTileDataEnd:

;titleTileMap: INCBIN "generated/backgrounds/title.tilemap"
;titleTileMapEnd:

InitTitleState::
	; draw title text
	ld de, $9884
	ld hl, TitleText
	call DrawTextTilesLoop

	; draw input text
	ld de, $99a5
	ld hl, InputText
	call DrawTextTilesLoop

	; draw copyright text
	ld de, $8180
	ld hl, CopyrightText
	call DrawTextTilesLoop

	; turn LCD on
	ld a, LCDCF_ON | LCDCF_BGON | LCDCF_OBJON | LCDCF_OBJ16
	ld [rLCDC], a

	ret

UpdateTitleState::

; waiting for A press!
; ===========================

; save passed value to mWaitKey, which WaitForKeyFunc always checks!
ld a, PADF_A
ld [mWaitKey], a
call WaitForKeyFunction

; ===========================

ld a, 1
ld [wGameState], a
jp NextGameState

