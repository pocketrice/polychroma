INCLUDE "utils/hardware.inc"
INCLUDE "utils/text-macros.inc"

SECTION "TitleState", ROM0

TitleText:: db "polychroma", 255
InputText:: db "push start", 255
CopyrightText:: db "© 2025 pocketrice", 255

titleTileData: INCBIN "generated/title.2bpp"
titleTileDataEnd:

titleTileMap: INCBIN "generated/title.tilemap"
titleTileMapEnd:

InitTitleState::
	; draw title logo
	call DrawTitleLogo;

	;; draw title text
	;ld de, $9882
	;ld hl, TitleText
	;call DrawTextTilesLoop

	; draw input text
	ld de, $99a5
	ld hl, InputText
	call DrawTextTilesLoop

	;; draw copyright text
	;ld de, $98c2
	;ld hl, CopyrightText
	;call DrawTextTilesLoop

	; turn LCD on
	ld a, LCDCF_ON | LCDCF_BGON | LCDCF_OBJON | LCDCF_OBJ8
	ld [rLCDC], a

	ret

DrawTitleLogo::
	; copy tiles
	ld de, titleTileData
	ld hl, $9300
	ld bc, titleTileDataEnd - titleTileData
	call CopyDEintoMemoryAtHL

	; copy tilemap
	ld de, titleTileMap
	ld hl, $9800
	ld bc, titleTileMapEnd - titleTileMap
	jp CopyDEintoMemoryAtHL_With52Offset

UpdateTitleState::

; waiting for A press!
; ===========================

; save passed value to mWaitKey, which WaitForKeyFunc always checks!
ld a, PADF_A
ld [mWaitKey], a
call WaitForKeyFunction

; ===========================

ld a, 1 ; TEMP DISABLE FOR VBLANK CONCERNS
ld [wGameState], a
jp NextGameState

