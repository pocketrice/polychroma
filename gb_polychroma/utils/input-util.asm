SECTION "InputUtilsVariables", WRAM0

mWaitKey:: db

SECTION "InputUtils", ROM0

WaitForKeyFunction::

	; preserve contents
	push bc

WaitForKeyFunction_Loop:

	; save keys last frame
	ld a, [wCurrKeys]
	ld [wLastKeys], a

	; in `input.asm`, since inputs are very!! hard
	call Input

	; see if polled key is desired key?
	ld a, [mWaitKey]
	ld b, a
	ld a, [wCurrKeys]
	and b
	jp z, WaitForKeyFunction_NotPressed

	ld a, [wLastKeys]
	and b
	jp nz, WaitForKeyFunction_NotPressed

	; restore contents
	pop bc

	ret

WaitForKeyFunction_NotPressed:
	; wait a bit of time (next vblank)
	ld a, 1
	ld [wVBlankCount], a
	call WaitForVBlankFunction

	jp WaitForKeyFunction_Loop
