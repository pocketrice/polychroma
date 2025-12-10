INCLUDE "utils/hardware.inc"

SECTION "VBlankVariables", WRAM0

wVBlankCount:: db

SECTION "VBlankFunctions", ROM0

WaitForOneVBlank::

	; wait a bit of time... save # reps to our counter var
	ld a, 1
	ld [wVBlankCount], a

WaitForVBlankFunction::

WaitForVBlankFunction_Loop:: 

	ld a, [rLY] ; Copy vertical line to `a`
	cp 144 ; Check if vertical line is 0
	jp c, WaitForVBlankFunction_Loop ; Condjump! If `c` flag is set, last op overflowed.

	ld a, [wVBlankCount]
	sub 1
	ld [wVBlankCount], a
	ret z

WaitForVBlankFunction_Loop2::

	ld a, [rLY] ; ditto above.
	cp 144
	jp nc, WaitForVBlankFunction_Loop2 ; same condjump but if didn't overflow

	jp WaitForVBlankFunction_Loop

DisableInterrupts:: ; todo: move to interrupts.asm
	xor a
	ldh [rSTAT], a
	di
	ret