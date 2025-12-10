INCLUDE "utils/hardware.inc"

SECTION "Background", ROM0

ClearBackground::
	; turn LCD off (MUST call this only after waiting for vblank)
	xor a
	ld [rLCDC], a

	ld bc, 1024
	ld hl, $9800

ClearBackgroundLoop:
	xor a
	ld [hli], a

	dec bc
	ld a, b
	or c

	jp nz, ClearBackgroundLoop

	; turn LCD on
	ld a, LCDCF_ON | LCDCF_BGON| LCDCF_OBJON | LCDCF_OBJ16
	ld [rLCDC], a

	ret