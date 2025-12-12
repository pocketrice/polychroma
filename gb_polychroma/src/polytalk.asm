INCLUDE "utils/hardware.inc"
INCLUDE "utils/text-macros.inc"

SECTION "PolytalkVariables", WRAM0

polyCount:: db
polyStatus:: db
isPolyWait:: db


SECTION "PolytalkState", ROM0

PolyText:: db "polytalk", 255

ClearText:: db "                ", 255
SendWaitText:: db "press b to send!", 255
SendingText:: db "sending", 255
WaitText:: db "waiting", 255
OKText:: db "gotcha! ok", 255
NGText:: db "gotcha! fail", 255

InitPolytalkState::
	; draw poly text
	ld de, $9884
	ld hl, PolyText
	call DrawTextTilesLoop

	; draw send wait text
	ld de, $98e4
	ld hl, SendWaitText
	call DrawTextTilesLoop

	call DisplayPolyCount

	; turn LCD on
	ld a, LCDCF_ON | LCDCF_BGON | LCDCF_OBJON | LCDCF_OBJ16
	ld [rLCDC], a

	ret

UpdatePolytalkState:: ; stay in this loop forever!

UpdatePolytalkState_HandleInput:
	; save last frame keys
	ld a, [wCurrKeys]
	ld [wLastKeys], a

	; input black box
	call Input

	ld a, [wCurrKeys]
	and PADF_UP
	call nz, PolyUp

	ld a, [wCurrKeys]
	and PADF_B
	call nz, PolyTalk

	jp UpdatePolytalkState_HandleInput

; +++ any code below is not fall-thru! +++

DisplayPolyCount: ; update the polycount tile on-screen with current value
	;ld de, $9964
	;ld a, [polyCount]
	;inc a
	;ld [de], a ; charset defines n+1 as nth number char!
	ret

PolyUp: ; cycle polyCount ++
	ld hl, polyCount
	inc [hl]
	ld a, $4 ; [0,{VALUE}) options. must not exceed 4 as signal is 2 bits!

	; check polyCount for "overflow"
	ld hl, polyCount
	cp a, [hl]
	jp nz, PolyUp_UpdateText

	; reset polyCount if exceeds limit
	xor a
	ld [polyCount], a
PolyUp_UpdateText:
	call DisplayPolyCount

	jp UpdatePolytalkState_HandleInput

PolyTalk: ; send polytalk status byte 
	; check if in waiting mode
	xor a
	ld hl, polyCount 
	cp a, [hl]
	jp nz, PolyTalk_Hear

	; update status text (sending)
	ld de, $98e4
	ld hl, ClearText
	call DrawTextTilesLoop

	ld de, $98e4
	ld hl, SendingText
	call DrawTextTilesLoop

	; trigger the wait flag
	ld a, $1
	ld [isPolyWait], a

	; individually morse each bit (2 bits)
	ld hl, polyCount
	bit $0, [hl]
	call PolyMorse
	bit $1, [hl]
	call PolyMorse

	; update status text (waiting)
	ld de, $98e4
	ld hl, ClearText
	call DrawTextTilesLoop

	ld de, $9884
	ld hl, WaitText
	call DrawTextTilesLoop

	jp UpdatePolytalkState_HandleInput

PolyTalk_Hear: ; receive polytalk status instead
	ld a, RPF_ENREAD
	ld [rRP], a
	ld hl, rRP
	bit $1, [hl] ; check bit 1 for read value, sets ZF
	jp z, Terminar
	ld a, $1
	ld [polyStatus], a; 0 if no read, 1 if read

	; go to terminate vvv
	
Terminar: ; finally finished!!
	; clear old status text
	ld de, $98e4
	ld hl, ClearText
	call DrawTextTilesLoop

	xor a
	ld hl, polyStatus
	cp a, [hl]
	jp z, Terminar_NG

Terminar_OK: ; todo: technically can be space-optimised by having ld de call outside
	ld de, $98e4
	ld hl, OKText
	call DrawTextTilesLoop
	jp Done

Terminar_NG:
	ld de, $98e4
	ld hl, NGText
	call DrawTextTilesLoop

Done: ; busy loop(!!)
	jp Done

PolyMorse: ; send the bit given by ZF using simple morse delay-based ON-OFF system.
	ld a, RPF_WRITE_HI
	ld [rRP], a
	jp nz, PolyMorse_1
PolyMorse_0:
	call WaitForOneVBlank
	call WaitForOneVBlank
PolyMorse_1:
	call WaitForOneVBlank
PolyMorse_Finish:
	ld a, RPF_WRITE_LO
	ld [rRP], a
	ret




;PolyTalk0: ; long ON-OFF pulse = 0. This will just be 3 vblanks (~48ms)
;	ld a, RPF_WRITE_HI
;	ld [rRP], a
;	call WaitForOneVBlank
;	call WaitForOneVBlank
;	call WaitForOneVBlank
;	ld a, RPF_WRITE_LO
;	ld [rRP], a
;	ret

;PolyTalk1: ; short ON-OFF pulse = 1. Wait 1 vblank (~16ms)
;	ld a, RPF_WRITE_HI
;	ld [rRP], a
;	call WaitForOneVBlank
;	ld a, RPF_WRITE_LO
;	ld [rRP], a
;	ret













