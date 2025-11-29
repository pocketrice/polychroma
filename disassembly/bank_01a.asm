; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    ld sp, $ffff

jr_01a_4003:
    ldh a, [rLY]
    cp $91
    jr nz, jr_01a_4003

    xor a
    ldh [rLCDC], a
    ld a, $0a
    ld [$0000], a
    ld hl, $8000
    ld bc, $2000
    ld a, $00
    call Call_000_062f
    ld hl, $c000
    ld bc, $2000
    ld a, $00
    call Call_000_062f
    ld sp, $e000
    ld hl, $fe00
    ld bc, $0100
    ld a, $00
    call Call_000_062f
    ld hl, $ff80
    ld bc, $007f
    ld a, $00
    call Call_000_062f
    ld hl, $a000
    ld bc, $1c00
    ld a, $00
    call Call_000_062f
    xor a
    ldh [rIF], a
    ld a, $07
    ldh [rIE], a
    ld a, $ff
    ldh [rTIMA], a
    ld a, $bc
    ldh [rTMA], a
    xor a
    ldh [rTAC], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $ff
    ldh [rLYC], a
    ld [$da29], a
    ld a, $1a
    call Call_000_05f3
    ld hl, $40e8
    ld de, $ff88
    ld bc, $000a
    call Call_000_0621
    ld hl, $da21
    ld a, $02
    ld [hl-], a
    ld [hl], $2b
    xor a
    ld [$da1c], a
    ld a, $1e
    ld hl, $4232
    call Call_000_05e5
    ld a, $07
    ld hl, $57bc
    call Call_000_05e5
    ld a, $07
    ld hl, $401d
    call Call_000_05e5
    xor a
    ldh [rBGP], a
    ld [$cd00], a
    ldh [rOBP0], a
    ld [$cd01], a
    ldh [rOBP1], a
    ld [$cd02], a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [rWY], a
    ldh [rWX], a
    ld [$da2b], a
    ld a, $c0
    ld [$da08], a
    ld a, $c2
    ld [$da28], a
    ld a, $c3
    ld [$da10], a
    ld hl, $0342
    call Call_000_0604
    ld hl, $da13
    ld a, $c3
    ld [hl+], a
    ld a, $42
    ld [hl+], a
    ld [hl], $03
    ld hl, $da16
    ld a, $42
    ld [hl+], a
    ld [hl], $03
    ei
    ld a, $04
    ldh [rTAC], a
    jp Jump_000_10de


    db $3e, $c0, $e0, $46, $3e, $28, $3d, $20, $fd, $c9

    ld [hl], $41
    dec sp
    ld b, c
    ld b, b
    ld b, c
    ld b, l
    ld b, c
    ld c, d
    ld b, c
    ld c, a
    ld b, c
    ld d, h
    ld b, c
    ld e, c
    ld b, c
    ld e, [hl]
    ld b, c
    ld h, e
    ld b, c
    ld l, b
    ld b, c
    ld l, l
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], a
    ld b, c
    ld a, h
    ld b, c
    add c
    ld b, c
    add [hl]
    ld b, c
    adc e
    ld b, c
    sub b
    ld b, c
    sub l
    ld b, c
    sbc d
    ld b, c
    and h
    ld b, c
    sbc a
    ld b, c
    xor [hl]
    ld b, c
    xor c
    ld b, c
    or e
    ld b, c
    cp b
    ld b, c
    cp l
    ld b, c
    jp nz, $c741

    ld b, c
    call z, $d141
    ld b, c
    sub $41
    db $db
    ld b, c
    inc bc
    inc [hl]
    scf
    ld [hl], $08
    inc bc
    inc [hl]
    add hl, sp
    jr c, jr_01a_4150

    inc bc
    inc [hl]
    dec sp
    ld a, [hl-]
    rra
    inc bc
    inc [hl]
    dec a
    inc a
    dec bc
    inc bc
    inc [hl]
    ccf
    ld a, $0e
    inc bc

jr_01a_4150:
    inc [hl]
    ld b, c
    ld b, b
    ld de, $3403
    ld b, e
    ld b, d
    inc de
    inc bc
    inc [hl]
    ld b, l
    ld b, h
    ld [de], a
    inc bc
    inc [hl]
    ld b, a
    ld b, [hl]
    inc d
    inc bc
    inc [hl]
    ld c, c
    ld c, b
    dec d
    inc bc
    inc [hl]
    ld c, l
    ld c, h
    ld a, [bc]
    inc bc
    inc [hl]
    ld c, e
    ld c, d
    rrca
    inc bc
    inc [hl]
    ld c, a
    ld c, [hl]
    dec e
    inc bc
    inc [hl]
    ld d, c
    ld d, b
    ld d, $03
    dec [hl]
    ld d, e
    ld d, d
    ld d, $03
    dec [hl]
    ld d, l
    ld d, h
    rla
    inc bc
    dec [hl]
    ld d, a
    ld d, [hl]
    jr jr_01a_418f

    dec [hl]
    ld e, c
    ld e, b

jr_01a_418f:
    add hl, de
    inc bc
    dec [hl]
    ld e, e
    ld e, d
    dec de
    inc bc
    dec [hl]
    ld e, l
    ld e, h
    ld a, [de]
    inc bc
    dec [hl]
    ld e, a
    ld e, [hl]
    inc e
    inc bc
    dec [hl]
    ld h, c
    ld h, b
    ld e, $03
    inc [hl]
    ld h, e
    ld h, d
    ld e, $03
    dec [hl]
    ld h, l
    ld h, h
    inc hl
    inc bc
    inc [hl]
    ld h, a
    ld h, [hl]
    inc hl
    inc bc
    inc [hl]
    ld l, c
    ld l, b
    ld hl, $3403
    ld l, e
    ld l, d
    ld [hl+], a
    inc bc
    inc [hl]
    ld l, l
    ld l, h
    nop
    inc bc
    inc [hl]
    ld l, a
    ld l, [hl]
    ld bc, $3403
    ld [hl], c
    ld [hl], b
    ld [bc], a
    inc bc
    inc [hl]
    ld [hl], e
    ld [hl], d
    inc bc
    inc bc
    inc [hl]
    ld [hl], l
    ld [hl], h
    inc b
    inc bc
    inc [hl]
    ld [hl], a
    halt
    dec b
    inc bc
    inc [hl]
    ld a, c
    ld a, b
    db $06

Call_01a_41e0:
    ld a, [$deed]
    or a
    ret z

    pop hl
    ld a, d
    ld hl, $40f2
    add a
    add l
    ld l, a
    jr nc, jr_01a_41f0

    inc h

jr_01a_41f0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ld c, a
    ld de, $cd0c
    ld [de], a
    inc e
    ld b, $00
    add hl, bc

jr_01a_41fd:
    ld a, [hl-]
    ld [de], a
    inc e
    dec c
    jr nz, jr_01a_41fd

    jr jr_01a_4235

Call_01a_4205:
    ld a, [$deed]
    or a
    ret z

    pop hl
    ld a, d
    ld hl, $40f2
    add a
    add l
    ld l, a
    jr nc, jr_01a_4215

    inc h

jr_01a_4215:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    ld de, $cd0c
    ld [de], a
    inc e
    inc hl

jr_01a_4220:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_01a_4220

    ld hl, $cd09
    ld de, $cd00
    ld b, $03

jr_01a_422e:
    ld a, [hl+]
    ld [de], a
    ldh [c], a
    inc e
    dec b
    jr nz, jr_01a_422e

jr_01a_4235:
    ld a, $0d
    ld [$da34], a
    ld a, $01
    ld [$da38], a
    ld a, $04
    ldh [$ff84], a
    jp Jump_01a_42ca


    ld a, $ff
    ld [$da37], a
    call Call_01a_4205
    ld a, e
    ldh [$ff84], a
    ld a, [$cd00]
    or a
    ld a, $00
    jr z, jr_01a_425b

    ld a, $01

jr_01a_425b:
    ld [$da35], a
    ld hl, $cd08
    ld de, $cd0b
    ld c, $06

jr_01a_4266:
    ld a, [de]
    dec e
    call Call_01a_42dd
    ld [hl-], a
    dec c
    jr nz, jr_01a_4266

    jr jr_01a_42c5

    call Call_01a_4292
    jr jr_01a_4283

    call Call_01a_429a
    jr jr_01a_4283

    call Call_01a_42a4
    jr jr_01a_4283

    call Call_01a_42ac

jr_01a_4283:
    ld a, $01
    ld [$da39], a
    call Call_000_0343
    ld a, [$da36]
    or a
    jr nz, jr_01a_4283

    ret


Call_01a_4292:
    ld a, $01
    ld [$da37], a
    call Call_01a_41e0

Call_01a_429a:
    ld a, $01
    ld [$da35], a
    ld a, e
    ldh [$ff84], a
    jr jr_01a_42b4

Call_01a_42a4:
    ld a, $00
    ld [$da37], a
    call Call_01a_41e0

Call_01a_42ac:
    ld a, $00
    ld [$da35], a
    ld a, e
    ldh [$ff84], a

jr_01a_42b4:
    ld hl, $cd03
    ld de, $cd00
    ld c, $09

jr_01a_42bc:
    ld a, [de]
    inc e
    call Call_01a_42dd
    ld [hl+], a
    dec c
    jr nz, jr_01a_42bc

jr_01a_42c5:
    ld a, $03
    ld [$da34], a

Jump_01a_42ca:
    ldh a, [$ff84]
    ld [$da32], a
    ld [$da33], a
    ld a, $01
    ld [$da36], a
    ld hl, $0684
    jp Jump_000_05f9


Call_01a_42dd:
    ld b, a
    ld a, [$da35]
    cp $00
    ld a, b
    jr nz, jr_01a_4305

    ld b, a
    and $c0
    ld a, b
    jr z, jr_01a_42ef

    sub $40
    ld b, a

jr_01a_42ef:
    and $30
    ld a, b
    jr z, jr_01a_42f7

    sub $10
    ld b, a

jr_01a_42f7:
    and $0c
    ld a, b
    jr z, jr_01a_42ff

    sub $04
    ld b, a

jr_01a_42ff:
    and $03
    ld a, b
    ret z

    dec a
    ret


jr_01a_4305:
    ld b, a
    and $c0
    cp $c0
    ld a, b
    jr z, jr_01a_4310

    add $40
    ld b, a

jr_01a_4310:
    and $30
    cp $30
    ld a, b
    jr z, jr_01a_431a

    add $10
    ld b, a

jr_01a_431a:
    and $0c
    cp $0c
    ld a, b
    jr z, jr_01a_4324

    add $04
    ld b, a

jr_01a_4324:
    and $03
    cp $03
    ld a, b
    ret z

    inc a
    ret


    db $17, $ff, $0d, $0f, $46, $d8, $0f, $5e, $03, $0f, $5f, $08, $0f, $60, $0b, $03
    db $4e, $43, $5a, $19, $00, $0a, $19, $01, $0a, $19, $00, $0a, $19, $02, $0a, $06
    db $3f, $43

    ld bc, $437b
    call Call_000_255b
    call Call_01a_4363
    call Call_01a_4389
    ret nz

    ld e, $1a
    ld bc, $43a1
    jp Jump_000_0846


Call_01a_4363:
Jump_01a_4363:
    ld a, [$dd2c]
    bit 0, a
    jr nz, jr_01a_436d

    bit 1, a
    ret z

jr_01a_436d:
    ld e, $39
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


    rst $38

    db $00

    nop
    nop
    nop

    db $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01a_4389:
    ld h, $a8

jr_01a_438b:
    ld a, h
    cp d
    jr z, jr_01a_439a

    ld l, $00
    ld a, [hl]
    inc a
    jr z, jr_01a_439a

    ld l, $4c
    ld a, [hl]
    or a
    ret nz

jr_01a_439a:
    inc h
    ld a, h
    cp $b2
    jr nz, jr_01a_438b

    ret


    db $03, $ae, $43, $5a, $22, $3f, $43, $1a, $05, $3c, $06, $b7, $43

    ld bc, $437b
    call Call_000_255b
    jp Jump_01a_4363


    db $0d, $c2, $43, $03, $cb, $43, $5a, $0d, $e4, $43, $00

    ld hl, $52ce
    ld a, $03
    call Call_000_05cf
    ret


    ld bc, $437b
    call Call_000_255b
    call Call_01a_4363
    call Call_000_2422
    ld a, [$cd4d]
    or a
    ret nz

    ld e, $1a
    ld bc, $4454
    jp Jump_000_0846


    push bc
    ld hl, $cd4d
    ld a, $01
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $88
    ld [hl+], a
    ld a, [$a071]
    ld c, a
    ld e, $5b
    ld a, [de]
    cp $04
    jr z, jr_01a_4417

    or a
    jr nz, jr_01a_4414

    ld e, $09
    call Call_000_063b
    ld e, $01
    cp $04
    jr c, jr_01a_4410

    inc e
    cp $06
    jr c, jr_01a_4410

    inc e

jr_01a_4410:
    ld a, e
    ld e, $5b
    ld [de], a

jr_01a_4414:
    cp c
    jr nz, jr_01a_4430

jr_01a_4417:
    call Call_000_0647
    and $07
    ld a, $04
    jr nz, jr_01a_4422

    ld a, $05

jr_01a_4422:
    ld [de], a
    ld bc, $5d91
    ld de, $0240
    jr nz, jr_01a_4448

    ld bc, $5fd1
    jr jr_01a_4448

jr_01a_4430:
    ld bc, $5891
    ld de, $0280
    cp $02
    jr z, jr_01a_4448

    ld bc, $5631
    ld de, $0260
    jr c, jr_01a_4448

    ld bc, $5b11
    ld de, $0280

jr_01a_4448:
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    db $10, $5b, $13, $04, $5c, $44, $24, $5c, $03, $63, $44, $5a, $06, $3f, $43

    ld e, $15
    ld bc, $0200
    call Call_000_0d35
    call Call_000_0da4
    call Call_000_1a25
    bit 7, a
    jr z, jr_01a_447d

    ld e, $1a
    ld bc, $4486
    jp Jump_000_0846


jr_01a_447d:
    ld bc, $437b
    call Call_000_255b
    jp Jump_01a_4363


    db $10, $5b, $13, $04, $9a, $44, $14, $05

    sub l
    ld b, h

    db $24, $5d, $06, $9c, $44

    inc h
    ld h, b
    ld b, $9c
    ld b, h

    db $24, $23, $18, $0f, $5e, $03, $0f, $5f, $08, $0f, $60, $0a, $0f, $61, $40, $03
    db $3c, $45, $5a, $0d, $50, $0f, $1f, $a8, $b2, $0d, $50, $0f, $20, $a8, $b2, $0d
    db $50, $0f, $21, $a8, $b2, $05, $02, $27, $0f, $46, $86, $10, $5b, $0e, $06

    push de
    ld b, h

    db $d5, $44, $dc, $44, $e3, $44, $ea, $44

    pop af
    ld b, h

    db $04, $c1, $6d, $0a, $06, $fb, $44, $04, $2d, $6e, $0a, $06, $fb, $44, $04, $99
    db $6e, $0a, $06, $fb, $44, $04, $05, $6f, $0a, $06, $f5, $44

    inc b
    ld d, [hl]
    ld l, a
    ld a, [bc]

    db $19, $00, $30, $06, $0a, $45, $19, $00, $28, $19, $03, $04, $19, $00, $04, $19
    db $03, $04, $19, $00, $04, $08, $80, $fe, $03, $22, $45, $5a, $01, $01, $00, $18
    db $03, $3c, $45, $5a, $19, $02, $0a, $19, $01, $0a, $06, $19, $45

    ld e, $15
    ld bc, $0200
    call Call_000_0d35
    call Call_000_0da4
    call Call_000_1a25
    bit 7, a
    jr z, jr_01a_453c

    ld e, $1a
    ld bc, $4514
    jp Jump_000_0846


jr_01a_453c:
    ld bc, $437b
    call Call_000_255b
    call Call_01a_4363
    ld a, [$dd2c]
    bit 3, a
    ret z

    call Call_000_2809
    ret c

    ld e, $5b
    ld a, [de]
    cp $04
    jr nc, jr_01a_457a

    ld a, [$a051]
    cp $0c
    ret z

    ld e, $5b
    ld a, [de]
    ld [$a043], a
    ld e, $02
    ld bc, $7340
    call Call_000_0c48
    ld hl, $a003
    ld e, l
    ld b, $06

jr_01a_4570:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_01a_4570

jr_01a_4576:
    ld h, d
    jp Jump_000_0bba


jr_01a_457a:
    jr nz, jr_01a_459d

    ld a, [$a071]
    or a
    ld hl, $a04c
    ld e, $0c
    ld b, $02
    jr z, jr_01a_4590

    ld hl, $a072
    ld e, $06
    ld b, $01

jr_01a_4590:
    ld a, [hl]
    cp e
    jr nc, jr_01a_4596

    add b
    ld [hl], a

jr_01a_4596:
    ld e, $10
    call Call_000_10aa
    jr jr_01a_4576

jr_01a_459d:
    ld hl, $7c7c
    ld a, $03
    call Call_000_05cf
    ld a, $01
    ld [$dd62], a
    jr jr_01a_4576

    db $0b, $d4, $45, $07, $98, $fe, $08, $98, $fe, $19, $ff, $02, $19, $00, $04, $18
    db $05, $06, $16, $0b, $d4, $45, $08, $00, $fe, $06, $b5, $45, $0b, $d4, $45, $07
    db $68, $01, $08, $98, $fe, $06, $b5, $45, $17, $f6, $0d, $03, $a4, $0d, $40, $04
    db $46, $72, $0b, $0d, $e3, $45, $0c

    push bc
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $5b
    ld a, [hl]
    ld hl, $45fe
    add l
    ld l, a
    jr nc, jr_01a_45f3

    inc h

jr_01a_45f3:
    ld a, [hl]
    ld h, d
    ld l, $07
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    pop bc
    ret


    db $f8, $f6, $f8, $f8

    ldh a, [c]

    db $fe

    rla
    rst $38
    dec c
    inc bc
    inc de
    ld b, [hl]
    ld e, d
    nop
    dec b
    inc a
    dec c
    jp nz, Jump_000_1643

    call Call_01a_4389
    ret nz

    ld e, $1a
    ld bc, $460d
    jp Jump_000_0846


    db $17, $f6, $0d, $04, $52, $6f, $0b, $0f, $4c, $00, $0f, $5e, $08, $0f, $5f, $08
    db $0d, $8b, $46, $0f, $60, $00, $0f, $61, $40, $0f, $3d, $10, $0f, $40, $20, $0f
    db $3a, $78, $0f, $3b, $00, $0d, $a5, $1a, $1a, $3e, $12, $6b, $46, $0f, $3a, $2c
    db $0f, $3b, $01, $10, $39, $0e, $03, $5c, $46

    ld h, d
    ld b, [hl]
    ld l, b
    ld b, [hl]

    db $26, $a0, $00, $06, $6b, $46

    ld h, $c0
    nop
    ld b, $6b
    ld b, [hl]
    ld h, $e0
    nop

    db $0f, $45, $00, $03, $ac, $46, $5a, $01, $07, $1f, $7d, $46, $0d, $91, $46, $06
    db $74, $46

    ld e, $3e
    ld a, [de]
    or a
    ld a, $08
    jr z, jr_01a_4687

    ld a, $03

jr_01a_4687:
    ld e, $24
    ld [de], a
    ret


    push bc
    call Call_000_1964
    pop bc
    ret


    ld e, $0e
    ld a, [de]
    rla
    ld e, $15
    ld a, [de]
    jr nc, jr_01a_46a3

    dec a
    cp $06
    jr nz, jr_01a_46aa

    ld a, $0a
    jr jr_01a_46aa

jr_01a_46a3:
    inc a
    cp $0b
    jr nz, jr_01a_46aa

    ld a, $07

jr_01a_46aa:
    ld [de], a
    ret


    ld e, $3e
    ld a, [de]
    or a
    ld e, $15
    ld bc, $0200
    jr z, jr_01a_46bc

    ld e, $04
    ld bc, $0030

jr_01a_46bc:
    call Call_000_0d35
    call Call_000_0da4
    ld e, $3e
    ld a, [de]
    or a
    jr nz, jr_01a_46e1

    call Call_000_1ab3
    jr nz, jr_01a_46e1

    ld a, $01
    ld e, $3e
    ld [de], a
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $3a
    ld a, $78
    ld [de], a
    inc e
    ld a, $00
    ld [de], a

jr_01a_46e1:
    call Call_000_1a25
    ld b, a
    bit 7, b
    jr z, jr_01a_46fc

    ld e, $3e
    ld a, [de]
    or a
    ld hl, $fd80
    jr z, jr_01a_46f5

    ld hl, $0000

jr_01a_46f5:
    ld e, $0f
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a

jr_01a_46fc:
    bit 5, b
    jr z, jr_01a_470d

    ld e, $0d
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a

jr_01a_470d:
    ld a, b
    and $a0
    jr z, jr_01a_471f

    ld e, $41
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a

jr_01a_471f:
    ld e, $3d
    ld a, [de]
    or a
    jr z, jr_01a_4729

    dec a
    ld [de], a
    jr jr_01a_4736

jr_01a_4729:
    ld bc, $4766
    call Call_000_255b
    ret c

    ld a, [$a05b]
    inc a
    jr nz, jr_01a_4745

jr_01a_4736:
    ld h, d
    ld l, $3a
    ld a, [hl]
    sub $01
    ld [hl+], a
    jr nc, jr_01a_474d

    ld a, [hl]
    sub $01
    ld [hl], a
    jr nc, jr_01a_474d

jr_01a_4745:
    ld e, $03
    ld bc, $4e33
    jp Jump_000_0846


jr_01a_474d:
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_01a_4757

    dec a
    ld [de], a
    jr jr_01a_4765

jr_01a_4757:
    push de
    call Call_000_1aea
    call Call_000_1646
    pop de
    and $7f
    cp $08
    jr z, jr_01a_4745

jr_01a_4765:
    ret


    rst $38
    nop

    db $9b, $4d, $03

    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    inc sp
    ld c, [hl]
    inc bc

    db $17, $ff, $0d, $0f, $46, $00, $19, $00, $08, $19, $01, $08, $19, $02, $08, $19
    db $03, $08, $06, $7a, $47, $17, $ff, $0d, $0f, $27, $00, $0d, $f6, $47, $12, $e3
    db $47, $05, $01, $0d, $f6, $47, $11, $95, $47, $10, $46, $1a, $39, $0f, $46, $00
    db $04, $e6, $72, $0b, $19, $1b, $04, $19, $1a, $03, $19, $19, $02, $19, $18, $02
    db $19, $17, $02, $19, $16, $02, $19, $15, $01, $19, $14, $01, $19, $13, $01, $19
    db $07, $01, $04, $52, $6f, $0b, $19, $07, $03, $19, $08, $03, $0f, $5b, $06, $0d
    db $50, $0f, $1f, $a8, $b2, $0d, $50, $0f, $21, $a8, $b2, $10, $39, $1a, $46, $04
    db $7b, $7b, $0c, $19, $00, $3c, $19, $01, $03, $19, $02, $03, $19, $03, $03, $06
    db $e7, $47

    ld e, $5b
    ld a, [de]
    ld e, a
    ld hl, $db60
    ld a, [hl]
    call Call_000_162a
    and a
    ret z

    ld e, $27
    ld [de], a
    ret


    db $17, $ff, $0d, $0d, $29, $48, $12

    ld a, [de]
    ld c, b

    db $01, $ff, $05, $01, $0d, $29, $48, $11, $12, $48

    add hl, de
    inc b
    inc a
    add hl, de
    dec b
    inc bc
    add hl, de
    ld b, $03
    add hl, de
    rlca
    inc bc
    ld b, $1a
    ld c, b

    ld a, [$db60]
    ld e, a
    inc e
    ld a, [$db6a]

jr_01a_4831:
    rra
    dec e
    jr nz, jr_01a_4831

    ld a, $00
    rla
    ld e, $27
    ld [de], a
    ret


    ld e, $04
    ld a, [de]
    add $05
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    ret


    inc b
    sub d
    ld [hl], e
    ld a, [bc]
    inc bc
    and h
    dec c
    ld b, b
    rlca
    nop
    nop
    ld [$0040], sp
    add hl, de
    ld a, [bc]
    ld a, [bc]
    add hl, de
    dec bc
    ld a, [bc]
    add hl, de
    inc c
    ld a, [bc]
    add hl, de
    dec c
    ld a, [bc]
    add hl, de
    ld c, $0a
    add hl, de
    rrca
    ld a, [bc]
    add hl, de
    db $10
    ld a, [bc]
    add hl, de
    ld de, $190a
    ld [de], a
    ld a, [bc]
    dec c
    ld a, d
    ld c, b
    dec b
    inc a
    dec c
    adc c
    ld c, b
    nop
    push bc
    push de
    ld e, $0c
    ld hl, $42ac
    ld a, $1a
    call Call_000_05cf
    pop de
    pop bc
    ret


    ld a, $07
    ld [$a082], a
    ret


    db $10
    add hl, bc
    inc d
    ld d, b
    sbc a
    ld c, b
    dec c
    cp e
    dec [hl]
    jr jr_01a_489a

jr_01a_489a:
    ld l, c
    nop
    ld b, $a6
    ld c, b
    dec c
    cp e
    dec [hl]
    adc b
    nop
    ld l, c
    nop
    inc e
    db $f4
    ld [hl], h
    ld [$460f], sp
    nop
    db $10
    add hl, bc
    inc d
    ld d, b
    cp c
    ld c, b
    rrca
    ld b, l
    ld b, b
    ld b, $bc
    ld c, b
    rrca
    ld b, l
    ret nz

    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    ld bc, $0d00
    add a
    ld c, d
    ld de, $498a
    inc bc
    db $fd
    inc [hl]
    ld b, b
    dec c
    ld l, b
    dec [hl]
    inc sp
    dec b
    ld bc, $6410
    ld [de], a
    ret nc

    ld c, b
    rrca
    rra
    add b
    dec bc
    ld [hl], a
    ld c, [hl]
    ld bc, $0500
    ld a, [bc]
    ld bc, $0807
    add b
    db $fd
    ld a, [hl+]
    dec a
    inc h
    dec c
    dec b
    ld a, [bc]
    ld bc, $0504
    ld a, [bc]
    ld bc, $0805
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    nop
    dec b
    ld b, $01
    rlca
    ld [$fd80], sp
    ld a, [hl+]
    dec a
    inc h
    dec c
    dec b
    ld a, [bc]
    ld bc, $0504
    ld a, [bc]
    ld bc, $0805
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    nop
    dec b
    ld a, [bc]
    ld bc, $0801
    nop
    cp $2a
    dec c
    inc h
    dec c
    dec b
    jr nz, jr_01a_4949

    ld d, $0d
    ld d, b
    rrca
    xor e
    and b
    or e
    dec c
    ld d, b
    rrca
    xor a
    and b
    or e
    ld bc, $0502
    inc b
    dec c
    ld d, b
    rrca
    xor h
    and b
    or e
    dec c
    ld d, b
    rrca
    or b
    and b
    or e
    ld bc, $0502
    inc b
    dec c
    ld d, b
    rrca

jr_01a_4949:
    xor l
    and b
    or e
    dec c
    ld d, b
    rrca
    or c
    and b
    or e
    ld bc, $0503
    ld [bc], a
    dec c
    ld d, b
    rrca
    xor [hl]
    and b
    or e
    ld a, [hl+]
    inc c
    dec b
    ld b, $01
    inc b
    ld a, [hl+]
    dec c
    dec b
    ld e, $08
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    ld bc, $0501
    ld [$0000], sp
    ld a, [hl+]
    nop
    inc h
    ld c, $05
    rlca
    dec c
    ld d, b
    rrca
    or d
    and b
    or e
    ld bc, $2506
    ld a, [hl+]
    dec b
    inc a
    dec b
    ldh a, [$ff0d]
    add c
    ld c, d
    nop
    inc bc
    db $fd
    inc [hl]
    ld b, b
    dec c
    ld l, b
    dec [hl]
    ld l, $05
    ld bc, $6410
    ld [de], a
    sub d
    ld c, c
    dec c
    ld l, b
    dec [hl]
    cpl
    dec b
    ld bc, $6410
    ld [de], a
    sbc l
    ld c, c
    rrca
    rra
    add b
    dec c
    sub c
    ld c, d
    dec bc
    ld a, [hl]
    ld c, [hl]
    ld bc, $0507
    inc d
    dec h
    dec d
    dec c
    ld d, b
    rrca
    or e
    and b
    or e
    dec b
    ld e, d
    add hl, bc
    ld b, h
    ld bc, $0531
    inc b
    ld bc, $0507
    ld b, $0a
    ld bc, $0531
    inc b
    add hl, bc
    rrca
    ld bc, $0531
    ld [bc], a
    ld bc, $0507
    ld [bc], a
    ld a, [bc]
    ld bc, $0531
    ld [bc], a
    ld bc, $0507
    inc d
    ld bc, $0819
    nop
    db $fd
    ld a, [hl+]
    ld e, d
    dec b
    ld [$1a01], sp
    inc h
    ld e, e
    dec h
    rst $38
    dec b
    ld [$1b01], sp
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec c
    adc b
    dec [hl]
    dec b
    ld e, $09
    ld [bc], a
    ld bc, $051d
    inc b
    ld bc, $051c
    inc b
    ld bc, $051d
    inc b
    ld bc, $051b
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $051d
    ld [bc], a
    ld bc, $051c
    ld [bc], a
    ld bc, $051d
    ld [bc], a
    ld bc, $051b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $051d
    ld bc, $1c01
    dec b
    ld bc, $1d01
    dec b
    ld bc, $1b01
    dec b
    ld bc, $090a
    ld b, $01
    dec e
    dec b
    ld bc, $1c01
    dec b
    ld bc, $090a
    ld b, $01
    ld e, $05
    ld bc, $1f01
    dec b
    ld bc, $0d0a
    ld d, b
    rrca
    cp [hl]
    and b
    or e
    add hl, bc
    add b
    ld bc, $051e
    ld [bc], a
    ld bc, $051f
    ld bc, $2a0a
    or $24
    dec sp
    add hl, bc
    inc b
    dec c
    ld d, b
    rrca
    cp d
    and b
    or e
    dec c
    ld d, b
    rrca
    cp e
    and b
    or e
    dec c
    ld d, b
    rrca
    cp h
    and b
    or e
    dec c
    ld d, b
    rrca
    cp l
    and b
    or e
    ld bc, $0520
    inc d
    ld a, [bc]
    dec c
    and [hl]
    ld c, [hl]
    ld d, $3e
    ld b, $ea
    add d
    and b
    ret


    ld a, [$dd63]
    or $80
    inc a
    ld e, $27
    ld [de], a
    ret


    ld a, $01
    ld [$df16], a
    ret


    or e
    ld c, d
    cp h
    ld c, d
    push bc
    ld c, d
    adc $4a
    rst $10
    ld c, d
    ldh [rWY], a
    jp hl


    ld c, d
    ldh a, [c]
    ld c, d
    ei
    ld c, d
    nop
    ld c, e
    dec b
    ld c, e
    ld a, [bc]
    ld c, e
    rrca
    ld c, e
    inc d
    ld c, e
    ld [bc], a
    ld hl, sp-$08
    ld b, [hl]
    nop
    ld hl, sp+$00
    jr nc, jr_01a_4abd

    ld [bc], a

jr_01a_4abd:
    ld hl, sp-$08
    jr c, jr_01a_4ac1

jr_01a_4ac1:
    ld hl, sp+$00
    ld a, [hl-]
    ld bc, $f802
    nop
    ld l, $00
    ld hl, sp-$08
    jr z, jr_01a_4acf

    ld [bc], a

jr_01a_4acf:
    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    inc a
    ld bc, $f802
    nop
    ld c, $00
    ld hl, sp-$08
    ld b, $01
    ld [bc], a
    ld hl, sp+$00
    ld a, [bc]
    nop
    ld hl, sp-$08
    ld [$0201], sp
    ld hl, sp+$00
    ld [hl], $00
    ld hl, sp-$08
    inc [hl]
    ld bc, $f802
    nop
    ld [bc], a
    nop
    ld hl, sp-$08
    nop
    ld bc, $f401
    db $fc
    add b
    ld bc, $f401
    db $fc
    ld b, b
    ld de, $f401
    db $fc
    ld b, d
    ld de, $ee01
    ld [bc], a
    add b
    ld bc, $ee01
    ld [bc], a
    ld b, b
    ld de, $ee01
    ld [bc], a
    ld b, d
    ld de, $4b7d
    add [hl]
    ld c, e
    adc a
    ld c, e
    sbc b
    ld c, e
    and c
    ld c, e
    xor d
    ld c, e
    or e
    ld c, e
    cp h
    ld c, e
    push bc
    ld c, e
    adc $4b
    rst $10
    ld c, e
    ldh [rWX], a
    jp hl


    ld c, e
    ldh a, [c]
    ld c, e
    ei
    ld c, e
    inc b
    ld c, h
    dec c
    ld c, h
    ld [de], a
    ld c, h
    rla
    ld c, h
    jr nz, jr_01a_4b8d

    add hl, hl
    ld c, h
    ld [hl], $4c
    ld b, e
    ld c, h
    ld d, b
    ld c, h
    ld e, l
    ld c, h
    ld l, d
    ld c, h
    ld [hl], e
    ld c, h
    add h
    ld c, h
    sub l
    ld c, h
    and [hl]
    ld c, h
    or a
    ld c, h
    ret z

    ld c, h
    reti


    ld c, h
    ld [$f74c], a
    ld c, h
    inc b
    ld c, l
    ld de, $1e4d
    ld c, l
    dec hl
    ld c, l
    jr c, jr_01a_4bb6

    ld d, c
    ld c, l
    ld a, d
    ld c, l
    and a
    ld c, l
    ret nc

    ld c, l
    pop af
    ld c, l
    ld a, [bc]
    ld c, [hl]
    dec hl
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld d, l
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld [bc], a
    ld hl, sp-$08
    ld d, b
    nop
    ld hl, sp+$00
    ld d, d
    ld bc, $f802
    ld hl, sp+$54
    nop
    ld hl, sp+$00

jr_01a_4b8d:
    ld d, [hl]
    ld bc, $f802
    ld hl, sp+$58
    nop
    ld hl, sp+$00
    ld e, d
    ld bc, $f802
    ld hl, sp+$5c
    nop
    ld hl, sp+$00
    ld e, [hl]
    ld bc, $f802
    nop
    ld e, b
    ld h, b
    ld hl, sp-$08
    ld e, d
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld d, h
    ld h, b
    ld hl, sp-$08
    ld d, [hl]
    ld h, c
    ld [bc], a
    ld hl, sp+$00

jr_01a_4bb6:
    ld d, b
    ld h, b
    ld hl, sp-$08
    ld d, d
    ld h, c
    ld [bc], a
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    db $10
    ld bc, $f802
    ld hl, sp+$38
    nop
    ld hl, sp+$00
    jr c, jr_01a_4c2f

    ld [bc], a
    ld hl, sp-$08
    jr c, jr_01a_4be3

    ld hl, sp+$00
    jr c, jr_01a_4c48

    ld [bc], a
    ld hl, sp-$08
    call nc, $f800
    nop
    call nc, Call_000_0261
    ld hl, sp-$08

jr_01a_4be3:
    call nc, $f810
    nop
    call nc, Call_000_0271
    ld hl, sp-$08
    sub $00
    ld hl, sp+$00
    sub $21
    ld [bc], a
    ld hl, sp-$08
    ret c

    nop
    ld hl, sp+$00
    ret c

    ld hl, $f802
    ld hl, sp-$36
    nop
    ld hl, sp+$00
    jp z, Jump_000_0221

    ld hl, sp-$08
    jp z, $f810

    nop
    jp z, $0131

    ld hl, sp-$04
    call z, $0101
    ld hl, sp-$04
    call z, Call_000_0211
    xor $fc
    adc $00
    or $fc
    adc $41
    ld [bc], a
    xor $fc
    adc $10
    or $fc
    adc $51
    inc bc
    db $e4
    db $fc
    jp c, $f400

jr_01a_4c2f:
    db $fc
    call c, Call_000_0400
    db $fc
    sbc $01
    inc bc
    db $e4
    db $fc
    ld [$f400], a
    db $fc
    db $ec
    nop
    inc b
    db $fc
    xor $01
    inc bc
    db $e4
    db $fc
    sub d
    nop

jr_01a_4c48:
    db $f4
    db $fc
    sub h
    nop
    inc b
    db $fc
    sub [hl]
    ld bc, $e403
    db $fc
    sub d
    db $10
    db $f4
    db $fc
    sub h
    db $10
    inc b
    db $fc
    sub [hl]
    ld de, $e403
    db $fc
    sbc b
    nop
    db $f4
    db $fc
    sbc d
    nop
    inc b
    db $fc
    sbc h
    ld bc, $f802
    ld hl, sp+$20
    nop
    ld hl, sp+$00
    ld b, b
    ld bc, $f804
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    ld [de], a
    nop
    ret c

    db $fc
    sbc b
    nop
    add sp, -$04
    sbc d
    ld bc, $f804
    nop
    jr nc, jr_01a_4c89

jr_01a_4c89:
    ld hl, sp-$08
    ld c, b
    nop
    ret c

    or $98
    nop
    add sp, -$0a
    sbc d
    ld bc, $f804
    nop
    jr nc, jr_01a_4c9a

jr_01a_4c9a:
    ld hl, sp-$08
    ld c, b
    nop
    ret c

    or $92
    nop
    add sp, -$0a
    sub h
    ld bc, $d804
    or $92
    db $10
    add sp, -$0a
    sub h
    db $10
    ld hl, sp+$00
    and $00
    ld hl, sp-$08
    add sp, $01
    inc b
    ld hl, sp+$00
    jr nc, jr_01a_4cbc

jr_01a_4cbc:
    ld hl, sp-$08
    ld c, b
    nop
    ret c

    or $da
    nop
    add sp, -$0a
    call c, Call_000_0401
    ld hl, sp+$00
    and $00
    ld hl, sp-$08
    add sp, $00
    ret c

    or $ea
    nop
    add sp, -$0a
    db $ec
    ld bc, $d804
    ld sp, hl
    sbc b
    nop
    add sp, -$07
    sbc d
    nop
    ld hl, sp-$08
    cp [hl]
    nop
    ld hl, sp+$00
    ret z

    ld bc, $fa03
    ld [bc], a
    ld [hl+], a
    jr nz, @-$04

    ld a, [$2032]
    ld a, [$42f2]
    ld hl, $fa03
    ldh a, [c]
    ld [hl+], a
    nop
    ld a, [$32fa]
    nop
    ld a, [$4202]
    ld bc, $fa03
    ld [bc], a
    inc b
    jr nz, @-$04

    ld a, [$2014]
    ld a, [$24f2]
    ld hl, $fa03
    ld [bc], a
    ld b, $20
    ld a, [$16fa]
    jr nz, @-$04

    ldh a, [c]
    ld h, $21
    inc bc
    ld a, [$04f2]
    nop
    ld a, [$14fa]
    nop

jr_01a_4d27:
    ld a, [$2402]
    ld bc, $fa03
    ldh a, [c]
    ld b, $00
    ld a, [$16fa]
    nop
    ld a, [$2602]
    ld bc, $e906
    ld [bc], a
    and h
    jr nz, jr_01a_4d27

    ld a, [$20b4]
    jp hl


    ldh a, [c]

jr_01a_4d43:
    call nz, $f920
    ld [bc], a
    and [hl]

jr_01a_4d48:
    jr nz, jr_01a_4d43

    ld a, [$20b6]
    ld sp, hl
    ldh a, [c]
    add $21
    ld a, [bc]
    reti


jr_01a_4d53:
    dec b
    ld [$d920], sp

jr_01a_4d57:
    db $fd
    jr @+$22

    jp hl


    ld [bc], a
    ld a, [bc]
    jr nz, jr_01a_4d48

    ld a, [$201a]
    jp hl


    ldh a, [c]

jr_01a_4d64:
    ld a, [hl+]
    jr nz, @-$05

    ld [bc], a
    inc c
    jr nz, jr_01a_4d64

jr_01a_4d6b:
    ld a, [$201c]
    ld sp, hl

jr_01a_4d6f:
    ldh a, [c]
    inc l
    jr nz, @-$25

    xor $08
    nop
    reti


jr_01a_4d77:
    or $18
    ld bc, $f70b
    cp $34
    jr nz, jr_01a_4d77

    or $44
    jr nz, jr_01a_4d53

    ld b, $a8
    jr nz, jr_01a_4d57

    cp $b8
    jr nz, jr_01a_4d6b

    ld [bc], a
    xor d
    jr nz, jr_01a_4d6f

    ld a, [$20ba]
    rst $28
    ld a, [$20bc]
    rst $18
    ldh a, [c]

jr_01a_4d99:
    xor h
    jr nz, @-$0f

    ldh a, [c]

jr_01a_4d9d:
    xor [hl]
    jr nz, jr_01a_4d6f

    rst $28
    xor b
    nop
    rst $08
    rst $30
    cp b
    ld bc, $fc0a
    ld a, [$2036]
    call nc, $a806
    jr nz, @-$2a

    cp $b8
    jr nz, jr_01a_4d99

    ld [bc], a
    xor d
    jr nz, jr_01a_4d9d

jr_01a_4db9:
    ld a, [$20ba]
    db $f4
    ld a, [$20bc]
    db $e4
    ldh a, [c]

jr_01a_4dc2:
    xor h
    jr nz, jr_01a_4db9

    ldh a, [c]

jr_01a_4dc6:
    xor [hl]
    jr nz, jr_01a_4d9d

    rst $28
    xor b
    nop
    call nc, $b8f7
    ld bc, $c808
    rst $28
    ld a, $00
    ret z

    rst $30
    ld c, [hl]

jr_01a_4dd8:
    nop
    ret c

    rst $28

jr_01a_4ddb:
    jr z, jr_01a_4ddd

jr_01a_4ddd:
    ret c

    rst $30
    ldh [rP1], a
    ret z

    ld b, $3e
    jr nz, @-$36

    cp $4e
    jr nz, jr_01a_4dc2

    ld b, $28
    jr nz, jr_01a_4dc6

    cp $e0
    ld hl, $c406
    cp $0e
    jr nz, @-$3a

    rst $30
    ld c, $00
    call nc, Call_000_1eef
    nop
    call nc, $2ef7
    nop
    call nc, $1e06
    jr nz, jr_01a_4ddb

    cp $2e
    ld hl, $c808
    ld b, $3a
    jr nz, jr_01a_4dd8

    cp $4a
    jr nz, @-$36

    rst $28
    ld a, [hl-]
    nop
    ret z

    rst $30
    ld c, d
    nop
    ret c

    rst $28
    inc a
    nop
    ret c

    rst $30
    ld c, h
    nop
    ret c

    ld b, $3c
    jr nz, @-$26

    cp $4c
    ld hl, $f309
    rst $28
    and b
    nop
    di
    rst $30
    or b
    nop
    di
    rst $38
    ret nz

    nop
    di
    rlca
    ret nc

    nop
    inc bc
    rst $28
    and d
    nop
    inc bc
    rst $30
    or d
    nop
    inc bc
    rst $38
    jp nz, $0300

    rlca
    jp nc, $fb00

    rrca
    sbc [hl]
    ld bc, $f401
    db $fc
    add b
    ld bc, $0006
    rst $28
    sub b
    nop
    nop
    rlca
    add [hl]
    nop
    ldh a, [rIE]
    adc b
    nop
    nop
    rst $38
    adc d
    nop
    ldh a, [$fff7]
    adc h
    nop
    nop
    rst $30
    adc [hl]
    ld bc, $f802
    nop
    ldh [c], a
    nop
    ld hl, sp-$08
    db $e4
    ld bc, $9704
    ld c, d
    ld a, [de]
    ld b, $82
    ld c, [hl]
    inc b
    add hl, de
    ld c, e
    ld a, [de]
    rla
    or $0d
    inc bc
    inc [hl]
    ld d, h
    ld e, d
    add hl, hl
    nop
    ld a, [hl+]
    nop
    jr jr_01a_4e9b

    inc b
    add hl, de
    ld c, e
    ld a, [de]
    rla
    dec b
    ld c, $03
    inc [hl]
    ld d, h
    ld e, d
    add hl, hl

jr_01a_4e9b:
    nop
    ld a, [hl+]
    nop
    jr jr_01a_4ec0

    nop
    nop
    ld hl, $0000
    inc c
    ld hl, $a082
    ld [hl], $03
    ret


    ld e, $39
    jp Jump_000_101a


    ld a, [$a845]
    ld e, $45
    ld [de], a
    cpl
    jr jr_01a_4ec0

    ld a, [$a045]
    ld e, $39
    ld [de], a

jr_01a_4ec0:
    ld e, $04
    ld hl, $db51
    rla
    jr nc, jr_01a_4ee3

    push bc
    ld a, [hl+]
    add $a0
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a
    pop hl
    ld a, c
    sub [hl]
    inc hl
    ld [de], a
    inc e
    ld a, b
    sbc [hl]
    inc hl
    ld [de], a
    ld b, h
    ld c, l
    ret


    ld e, $07
    ld hl, $db53

jr_01a_4ee3:
    ld a, [bc]
    inc bc
    add [hl]
    inc hl
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    adc [hl]
    ld [de], a
    ret


    dec bc
    ld [hl], a
    ld c, [hl]
    ld bc, $0708
    add b
    cp $08
    nop
    ld [bc], a
    add hl, hl
    jr @+$2c

    ldh [rTIMA], a
    ld [$0901], sp
    dec b
    dec b
    ld bc, $050a
    inc bc
    ld d, $0b
    ld [hl], a
    ld c, [hl]
    ld bc, $0708
    and b
    db $fd
    add hl, hl
    ld h, $05
    ld [$0901], sp
    dec b
    dec b
    ld bc, $050a
    inc bc
    ld d, $0b
    ld [hl], a
    ld c, [hl]
    ld bc, $0708

jr_01a_4f23:
    jr nc, jr_01a_4f23

    ld [$fe00], sp
    add hl, hl
    dec e
    ld a, [hl+]
    jr nz, jr_01a_4f32

    ld [$0901], sp
    dec b
    dec b

jr_01a_4f32:
    ld bc, $050a
    inc bc
    ld d, $0b
    ld [hl], a
    ld c, [hl]
    ld bc, $0808
    nop
    db $fd
    ld a, [hl+]
    jr nc, jr_01a_4f47

    ld [$0901], sp
    dec b
    dec b

jr_01a_4f47:
    ld bc, $050a
    inc bc
    ld d, $0b
    ld [hl], a
    ld c, [hl]
    ld bc, $0708
    ret nc

    ld bc, $0008
    cp $29
    db $e3
    ld a, [hl+]
    jr nz, jr_01a_4f61

    ld [$0901], sp
    dec b
    dec b

jr_01a_4f61:
    ld bc, $050a
    inc bc
    ld d, $0b
    ld [hl], a
    ld c, [hl]
    ld bc, $0708
    ld h, b
    ld [bc], a
    add hl, hl
    jp c, $0805

    ld bc, $0509
    dec b
    ld bc, $050a
    inc bc
    ld d, $0b
    ld [hl], a
    ld c, [hl]
    ld bc, $0708
    nop
    ld [bc], a
    ld [$0200], sp
    add hl, hl
    ldh [$ff2a], a
    ldh [rTIMA], a
    ld [$0901], sp
    dec b
    dec b
    ld bc, $050a
    inc bc
    ld d, $0b
    ld [hl], a
    ld c, [hl]
    dec c
    xor l
    ld c, a
    ld bc, $080b
    nop
    db $fd
    ld a, [hl+]
    jr nc, jr_01a_4fa8

    ld [$0c01], sp
    dec b
    dec b

jr_01a_4fa8:
    ld bc, $050d
    inc bc
    ld d, $fa
    ld b, l
    and b
    ld e, $45
    ld [de], a
    ret


    dec bc
    ld a, [hl]
    ld c, [hl]
    dec c
    cp d
    ld c, [hl]
    jr jr_01a_4fbc

jr_01a_4fbc:
    dec c
    sbc $4e
    ld hl, sp-$01
    add hl, bc
    inc bc
    ld bc, $0800
    db $10
    ld bc, $0405
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld bc, $0800
    nop
    nop
    dec b
    ld [$0801], sp
    dec b
    ld [$0901], sp
    dec b
    ld [$0209], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld a, [bc]
    add hl, bc
    inc b
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    ld bc, $050c
    inc b
    ld bc, $050d
    inc b
    add hl, bc
    inc bc
    ld bc, $050e
    inc b
    ld bc, $050f
    inc b
    ld a, [bc]
    inc h
    ld e, a
    dec c
    ld d, b
    rrca
    or h
    and b
    or e
    add hl, bc
    ld [bc], a
    ld bc, $050d
    ld [$0c01], sp
    dec b
    ld [$0d01], sp
    dec b
    ld [$0e01], sp
    dec b
    ld [$0f01], sp
    dec b
    ld [$0d0a], sp
    ld d, b
    rrca
    or l
    and b
    or e
    add hl, bc
    ld [bc], a
    ld bc, $050d
    ld [$0c01], sp
    dec b
    ld [$0d01], sp
    dec b
    ld [$0e01], sp
    dec b
    ld [$0f01], sp
    dec b
    ld [$0d0a], sp
    ld d, b
    rrca
    or [hl]
    and b
    or e
    add hl, bc
    ld [bc], a
    ld bc, $050d
    ld [$0c01], sp
    dec b
    ld [$0d01], sp
    dec b
    ld [$0e01], sp
    dec b
    ld [$0f01], sp
    dec b
    ld [$0d0a], sp
    ld d, b
    rrca
    or a
    and b
    or e
    add hl, bc
    ld [bc], a
    ld bc, $050d
    ld [$0c01], sp
    dec b
    ld [$0d01], sp
    dec b
    ld [$0e01], sp
    dec b
    ld [$0f01], sp
    dec b
    ld [$0d0a], sp
    ld d, b
    rrca
    cp b
    and b
    or e
    add hl, bc
    ld [bc], a
    ld bc, $050d
    ld [$0c01], sp
    dec b
    ld [$0d01], sp
    dec b
    ld [$0e01], sp
    dec b
    ld [$0f01], sp
    dec b
    ld [$0d0a], sp
    ld d, b
    rrca
    cp c
    and b
    or e
    add hl, bc
    inc b
    ld bc, $050d
    ld [$0c01], sp
    dec b
    ld [$0d01], sp
    dec b
    ld [$0e01], sp
    dec b
    ld [$0f01], sp
    dec b
    ld [$090a], sp
    ld [bc], a
    ld bc, $050e
    inc b
    ld bc, $050f
    inc b
    ld a, [bc]
    add hl, bc
    inc bc
    ld bc, $050e
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0514
    inc b
    ld bc, $0515
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0516
    inc b
    ld bc, $0517
    inc b
    ld a, [bc]
    ld bc, $0518
    inc b
    add hl, bc
    ld [bc], a
    ld bc, $0516
    inc b
    ld bc, $0517
    inc b
    ld a, [bc]
    ld bc, $0518
    ld e, $16
    dec bc
    ld a, [hl]
    ld c, [hl]
    dec c
    cp d
    ld c, [hl]
    ld [$0d00], sp
    sbc $4e
    ld hl, sp-$01
    add hl, bc
    inc bc
    ld bc, $0d00
    xor h
    ld c, [hl]
    dec l
    nop
    ld [$0110], sp
    dec b
    inc b
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld bc, $0d08
    xor h
    ld c, [hl]
    nop
    nop
    ld [$0000], sp
    dec b
    ld [$0901], sp
    dec b
    ld [$0209], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    inc h
    ld e, a
    ld d, $0b
    ld a, [hl]
    ld c, [hl]
    dec c
    cp d
    ld c, [hl]
    sbc b
    nop
    dec c
    sbc $4e
    ld hl, sp-$01
    add hl, bc
    inc bc
    ld bc, $0d00
    xor h
    ld c, [hl]
    add b
    cp $08
    db $10
    ld bc, $0405
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld bc, $0d08
    xor h
    ld c, [hl]
    nop
    nop
    ld [$0000], sp
    dec b
    ld [$0901], sp
    dec b
    ld [$0209], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    inc h
    ld e, a
    ld d, $0b
    ld a, [hl]
    ld c, [hl]
    dec c
    cp d
    ld c, [hl]
    ld hl, sp-$01
    dec c
    sbc $4e
    jr jr_01a_51e8

jr_01a_51e8:
    add hl, bc
    inc bc
    ld bc, $0d00
    xor h
    ld c, [hl]
    ld h, h
    nop
    ld [$00aa], sp
    dec b
    inc b
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld bc, $0d08
    xor h
    ld c, [hl]
    nop
    nop
    ld [$0000], sp
    dec b
    ld [$0901], sp
    dec b
    ld [$0209], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    inc h
    ld e, a
    ld d, $0b
    ld a, [hl]
    ld c, [hl]
    dec c
    cp d
    ld c, [hl]
    xor b
    nop
    dec c
    sbc $4e
    jr jr_01a_5245

jr_01a_5245:
    add hl, bc
    inc bc
    ld bc, $0d00
    xor h
    ld c, [hl]
    ld d, b
    cp $08
    xor d
    nop
    dec b
    inc b
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld bc, $0d08
    xor h
    ld c, [hl]
    nop
    nop
    ld [$0000], sp
    dec b
    ld [$0901], sp
    dec b
    ld [$0209], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    inc h
    ld e, a
    ld d, $0b
    ld a, [hl]
    ld c, [hl]
    dec c
    cp d
    ld c, [hl]
    ld hl, sp-$01
    dec c
    sbc $4e
    ld d, d
    nop
    add hl, bc
    inc bc
    ld bc, $0d00
    xor h
    ld c, [hl]
    ld h, b
    nop
    dec b
    inc b
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld bc, $0d08
    xor h
    ld c, [hl]
    nop
    nop
    dec b
    ld [$0901], sp
    dec b
    ld [$0209], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    inc h
    ld e, a
    ld d, $0b
    ld a, [hl]
    ld c, [hl]
    dec c
    cp d
    ld c, [hl]
    xor b
    nop
    dec c
    sbc $4e
    ld d, d
    nop
    add hl, bc
    inc bc
    ld bc, $0d00
    xor h
    ld c, [hl]
    ld c, h
    cp $05
    inc b
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld bc, $0d08
    xor h
    ld c, [hl]
    nop
    nop
    dec b
    ld [$0901], sp
    dec b
    ld [$0209], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    inc h
    ld e, a
    ld d, $0b
    adc a
    ld c, [hl]
    dec c
    ld b, h
    db $10
    cp $ff
    dec c
    ld b, b
    db $10
    ldh [rIE], a
    ld bc, $072f
    ld [hl], b
    rst $38
    ld [$ff00], sp
    ld a, [hl+]
    jr nz, jr_01a_5360

    ld h, h
    ld d, $0b
    adc a
    ld c, [hl]

jr_01a_5360:
    dec c
    ld b, h
    db $10
    cp $ff
    dec c
    ld b, b
    db $10
    ldh [rIE], a
    ld bc, $072f
    or b
    rst $38
    ld [$fe00], sp
    ld a, [hl+]
    jr nz, jr_01a_537a

    ld h, h
    ld d, $0b
    adc a
    ld c, [hl]

jr_01a_537a:
    dec c
    ld b, h
    db $10
    cp $ff
    dec c
    ld b, b
    db $10
    ldh [rIE], a
    ld bc, $072f
    ld d, b
    nop
    ld [$fd80], sp
    ld a, [hl+]
    jr nz, jr_01a_5394

    ld h, h
    ld d, $0b
    adc a
    ld c, [hl]

jr_01a_5394:
    dec c
    ld b, h
    db $10
    cp $ff
    dec c
    ld b, b
    db $10
    ldh [rIE], a
    ld bc, $072f
    sub b
    nop
    ld [$fee0], sp
    ld a, [hl+]
    jr nz, jr_01a_53ae

    ld h, h
    ld d, $0b
    ld a, [hl]
    ld c, [hl]

jr_01a_53ae:
    dec c
    or c
    ld c, [hl]
    ld d, b
    nop
    dec c
    sbc $4e
    ld d, [hl]
    nop
    dec h
    jr z, @+$0b

    ld [bc], a
    ld bc, $0521
    ld [$2201], sp
    dec b
    ld [$090a], sp
    inc b
    ld bc, $0523
    inc b
    ld bc, $0524
    inc b
    ld bc, $0525
    inc b
    ld bc, $0526
    inc b
    ld a, [bc]
    add hl, bc
    inc b
    ld bc, $0527
    inc b
    ld bc, $0528
    ld b, $0a
    ld bc, $0528
    ld b, $01
    add hl, hl
    dec b
    ld [bc], a
    ld bc, $052a
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld bc, $052c
    ld b, $01
    dec l
    dec b
    inc b
    ld a, [bc]
    ld bc, $052c
    db $10
    ld bc, $052b
    ld e, $09
    inc bc
    ld bc, $052c
    ld [$2b01], sp
    dec b
    ld a, [bc]
    ld bc, $052d
    ld [$2b01], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld bc, $082b
    nop
    ld bc, $e02a
    inc h
    ld [hl], $05
    ld [$2d01], sp
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    dec hl
    ld a, [hl+]
    ret nc

    dec b
    inc b
    ld bc, $052c
    ld a, [de]
    ld d, $cd
    add b
    inc c
    call Call_000_0c91
    jp Jump_000_0da4


    ld b, h
    rst $38
    nop
    nop
    cp $23
    nop
    adc b
    nop
    ld bc, $f002
    nop
    nop
    adc b
    nop
    dec bc
    ld [bc], a
    db $fc
    nop
    ret nz

    inc a
    nop
    dec de
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, $01
    ld a, l
    ld [bc], a
    rra
    nop
    rst $38
    nop
    ld a, [$f505]
    ld a, [bc]
    ld [$5415], a
    xor e
    and b
    ld e, a
    ld b, b
    cp a
    add l
    nop
    ld e, b
    ld b, d
    nop
    rst $38
    inc de
    dec b
    rst $38
    ld a, [bc]
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $0aff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    dec hl
    nop
    ld bc, $000f
    adc h
    nop
    ld a, a
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    or c
    nop
    add b
    nop
    ld bc, $008c
    ld b, e
    rlca
    ld a, [$f405]
    dec bc
    add sp, $17
    ret nc

    cpl
    add e
    nop
    ld e, h
    dec b
    add c
    ld a, a
    ld [bc], a
    rst $38
    add b
    ld a, a
    add l
    nop
    ld l, d
    ld b, $55
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    add [hl]
    nop
    rst $10
    ld a, [bc]
    cp a
    rst $38
    ld a, a
    rst $38
    db $fc
    db $fc
    ldh a, [$fff0]
    ret nz

    ret nz

    ld a, a
    ld [hl+], a
    rst $38
    dec b
    db $fc
    db $fc
    ldh [$ffe0], a
    add b
    add b
    dec h
    nop
    ld [bc], a
    rlca
    nop
    rra
    ld b, d
    nop
    ccf
    dec b
    nop
    rra
    nop
    inc bc
    nop
    nop
    ld b, [hl]
    nop
    rst $38
    ld bc, $1f00
    ld c, [hl]
    nop
    rst $38
    ld bc, $f800
    or b
    nop
    rst $38
    nop
    nop
    adc b
    nop
    xor a
    dec b
    rlca
    nop
    ld c, $01
    rra
    nop
    add e
    nop
    ld l, h
    inc b
    dec d
    rst $38
    cpl
    rst $38
    ld e, a
    add [hl]
    nop
    push hl
    add e
    nop
    add sp, $08
    ld hl, sp-$08
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    add b
    nop
    add $01
    rrca
    inc bc
    ld a, a
    nop
    rst $38
    nop
    ret


    ld bc, $0486
    inc bc
    nop
    rrca
    nop
    ccf
    ld b, d
    nop
    ld a, a
    add e
    ld bc, $8e01
    ld bc, $ad0f
    ld bc, $00a0
    db $fc
    and h
    nop
    xor a
    nop
    ldh a, [$ff8e]
    ld bc, $8745
    ld bc, $834e
    nop
    or d
    inc b
    ld a, $01
    dec a
    ld [bc], a
    ld a, d
    add h
    nop
    pop bc
    ld bc, $0ff0
    add e
    nop
    call nz, $8506
    ld a, a
    dec bc
    rst $38
    rla
    rst $38
    cpl
    add h
    nop
    db $db
    rlca
    ld e, [hl]
    cp $bc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    adc c
    ld bc, $0276
    nop
    nop
    rst $38
    sub d
    nop
    dec [hl]
    add e
    nop
    ld b, [hl]
    db $10
    ld c, $01
    dec e
    ld [bc], a
    ld a, [de]
    dec b
    inc a
    inc bc
    and c
    ld e, a
    jp nz, $853f

    ld a, a
    ld b, e
    cp a
    add a
    add h
    ld bc, $02f1
    ld c, $fe
    ld a, b
    add [hl]
    ld [bc], a
    ld bc, $0289
    ld b, $02
    rlca
    nop
    ccf
    adc b
    ld bc, $0083
    rrca
    and e
    ld [bc], a
    ld c, a
    adc b
    ld bc, $02af
    cp $00
    ldh [$ff8c], a
    nop
    ei
    ld [bc], a
    rrca
    nop
    nop
    adc [hl]
    ld bc, $000d
    nop
    or b
    ld [bc], a
    ld l, a
    jr jr_01a_55f6

    dec b
    ld [hl], h
    dec bc
    ld l, b
    rla
    ldh a, [rIF]
    jp hl


    rla
    ret nc

    cpl
    and c
    ld e, a
    jp nc, $1e2f

    cp $3c
    db $fc
    ld e, h
    db $fc
    cp b
    ld hl, sp+$70
    ld [hl+], a
    ldh a, [rP1]
    ld h, b
    ld [hl+], a
    ldh [rP1], a
    rlca
    adc d
    ld bc, $009f
    ld a, $a6
    nop
    ccf
    and e
    nop
    ld c, b
    nop
    ld hl, sp-$7a
    nop
    rla
    ld b, c
    inc bc
    nop
    dec c
    ld b, $01
    rlca
    nop
    ld b, $01

jr_01a_55f6:
    dec b
    ld [bc], a
    ld c, $01
    dec c
    ld [bc], a
    and l
    ld e, a
    add e
    ld [bc], a
    ld [hl], $09
    ld c, e
    cp a
    sub a
    ld a, a
    ld l, $fe
    ld d, $fe
    inc l
    db $fc
    add e
    ld bc, $0178
    add b
    add b
    adc l
    nop
    jr c, jr_01a_5616

jr_01a_5616:
    ccf
    jp $9b01


    sub h
    ld [bc], a
    ld a, c
    ld bc, $001f
    adc h
    ld bc, $004d
    rrca
    adc b
    inc bc
    dec l
    ld [bc], a
    add b
    nop
    ldh [$ffa5], a
    ld bc, $0281
    rrca
    nop
    ld a, a
    xor b
    nop
    rlca
    ld [hl+], a
    nop
    ld bc, $f881
    and e
    inc bc
    rla
    dec h
    nop
    inc b
    jr jr_01a_5643

jr_01a_5643:
    ld a, [hl]
    nop
    rst $38
    and h
    ld [bc], a
    adc $c9
    nop
    adc l
    nop
    add b
    xor [hl]
    inc bc
    ld [hl], b
    nop
    nop
    adc b
    ld [bc], a
    ld c, h
    add e
    inc bc
    ld d, e
    xor a
    inc bc
    adc l
    ld [hl+], a
    nop
    rra
    ld a, [bc]
    dec b
    inc e
    inc bc
    jr jr_01a_566c

    inc d
    dec bc
    add hl, sp
    rlca
    jr nc, jr_01a_567a

jr_01a_566b:
    add hl, hl

jr_01a_566c:
    rla
    ld [hl-], a
    rrca
    ld e, h
    db $fc
    jr c, jr_01a_566b

    ld a, b
    ld hl, sp-$50
    ldh a, [rSVBK]
    ldh a, [$ffe0]

jr_01a_567a:
    ldh [$ff60], a
    ldh [$ffc0], a
    ret nz

    add a
    ld [bc], a
    ld d, e
    ld b, $c1
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    rst $38
    adc b
    nop
    nop
    ld [bc], a
    add [hl]
    rst $38
    rst $08
    inc h
    rst $38
    ld bc, $e700
    xor [hl]
    inc bc
    ldh [c], a
    add [hl]
    nop
    nop
    ld [bc], a
    sbc b
    rst $38
    db $fd
    add l
    inc bc
    db $eb
    ld [bc], a
    ldh [rP1], a
    ei
    ld b, c
    nop
    rst $38
    nop
    nop
    and a
    inc bc
    reti


    ld [bc], a
    ret nz

    nop
    ldh a, [$ff87]
    ld bc, $03af
    ret nz

    rst $38
    db $fc
    rst $38
    adc b
    nop
    dec a
    nop
    rst $08
    adc h
    ld [bc], a
    add a
    and a
    ld bc, $1090
    rst $38
    jr nz, jr_01a_56d8

    ld d, c
    dec b
    inc hl
    dec bc

jr_01a_56ce:
    ld b, l
    dec d
    ld [hl+], a
    ld a, [bc]
    ld b, c
    ld bc, $0202
    nop
    nop

jr_01a_56d8:
    inc hl
    ret nz

    add a
    inc bc
    nop
    add l
    nop
    ld hl, sp+$02
    inc a
    nop
    rst $38
    inc [hl]
    nop
    add h
    inc b
    ld [hl], d
    ld bc, $1f00
    adc e
    inc bc
    ld d, c
    xor a
    inc b
    adc l
    ld [bc], a
    nop
    nop
    nop
    add hl, hl
    rst $38
    dec b
    ldh [rIE], a
    nop
    rst $38
    jr nc, jr_01a_56ce

    daa
    rst $38
    dec b
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $87fe
    inc b
    xor a
    ld [bc], a
    add b
    rst $38
    nop
    xor d
    inc b
    ret


    add e
    inc b
    ret z

    dec b
    ld h, b
    sbc a
    nop
    rst $38
    inc bc
    db $fc
    add e
    inc b
    xor a
    nop
    ld hl, sp-$7c
    inc b
    ret


    ld bc, $ef10
    rst $00
    inc bc
    db $e4
    ld bc, $ff00
    add e
    inc b
    ld hl, sp+$01
    ld [bc], a
    db $fd
    and e
    dec b
    ld b, $00
    nop
    and h
    dec b
    ld bc, $8002
    ld a, a
    nop
    ret


    inc bc
    rst $20
    adc [hl]
    ld bc, $0220
    rst $38
    rst $38
    rrca
    adc h
    ld bc, $0110
    push de
    push de
    adc l
    dec b
    jr nc, jr_01a_5759

    ld d, l
    ld d, l
    cp d
    cp d
    rst $38
    rst $38

jr_01a_5759:
    rrca
    call z, $0704
    nop
    rst $38
    adc d
    dec b
    cpl
    inc hl
    rst $38
    inc bc
    xor $ee
    cp e
    cp e
    add a
    inc bc
    db $fc
    nop
    add b
    call nz, $d604
    inc bc
    sbc e

jr_01a_5773:
    sbc e
    cp $fe
    add [hl]
    inc bc
    db $fc

jr_01a_5779:
    add h
    inc b
    xor a
    ld bc, $9f9f
    ret


    inc b
    or a
    nop
    ldh [$ffc6], a
    inc b
    cp d
    inc bc
    dec sp
    dec sp
    xor $ee
    add a
    inc bc
    sbc $04
    jr jr_01a_5779

    inc a
    jp $8618


    inc bc
    pop af
    and e
    inc b
    db $ec
    inc c
    inc bc
    db $fc
    jr nc, @-$2f

    ld a, b
    add a
    jr nc, jr_01a_5773

    nop
    rst $38
    inc c
    di
    nop
    adc b
    dec b
    xor a
    ld c, b
    nop
    rst $38
    ld bc, $ea15
    ld b, e
    nop
    rst $38
    rlca
    ld [bc], a
    db $fd
    dec d
    ld [$55aa], a
    ld d, l
    xor d
    add a
    dec b
    add sp, -$7d
    dec b
    db $fc
    add l
    dec b
    db $fc
    ld bc, $fe01
    add e
    ld b, $08
    adc c
    ld b, $08
    xor e
    ld b, $14
    add hl, bc
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    or l
    ld b, $22
    ld [bc], a
    ld b, b
    cp a
    xor d
    add [hl]
    ld b, $21
    inc bc
    xor b
    ld d, a
    ld b, b
    cp a
    adc c
    dec b
    or b
    sub e
    dec b
    jp c, Jump_000_0583

    ld b, $a3
    nop
    ld h, h
    inc bc
    ld bc, $0afe
    push af
    sub l
    ld b, $22
    add e
    ld b, $58
    ld bc, $55aa
    add e
    nop
    ld h, d
    ld b, l
    nop
    rst $38
    nop
    ld a, [hl+]
    call nz, $e100
    and h
    dec b
    adc c
    ld [bc], a
    rst $38
    db $fc
    db $fc
    adc c
    ld b, $b4
    ld bc, $f8f8
    add e
    nop
    ld hl, sp+$01
    ld a, a
    rst $38
    rst $00
    dec b
    xor c
    adc e
    inc b
    xor d
    ld bc, $c0c0
    adc a
    inc bc
    adc b
    nop
    rra
    add [hl]
    ld bc, $0495
    nop
    nop
    rlca
    nop
    ld a, a
    adc c
    ld [bc], a
    add e
    sub b
    ld bc, $000d
    nop
    adc h
    ld [bc], a
    ld e, a
    nop
    rst $38
    add e
    ld b, $ff
    adc h
    ld [bc], a
    ld d, l
    ld [bc], a
    nop
    nop
    nop
    xor d
    ld bc, $0181
    ldh a, [rP1]
    and l
    inc b
    pop de
    ld b, e
    rst $38
    rst $00
    ld h, $ff
    ld b, c
    ld de, $00ff
    ld bc, $07ca
    ld l, b
    inc b
    ld bc, $1fff
    rst $38
    inc bc
    jp Jump_01a_7807


    add e
    ld b, $d6
    dec l
    nop
    inc b
    ld a, a
    nop
    ccf
    nop
    rrca
    adc [hl]
    nop
    sub c
    inc b
    rst $38
    nop
    rst $38
    nop
    rlca
    ret nc

    ld [bc], a
    sub e
    nop
    rra
    and e
    rlca
    xor e
    or e
    inc bc
    inc hl
    nop
    nop
    push bc
    ld b, $bf
    inc bc
    cp a
    cp a
    db $ec
    db $ec
    rst $00
    inc b
    or c
    nop
    cp $a6
    ld b, $d0
    inc bc
    rst $20
    rst $20
    nop
    nop
    add a
    rlca
    ldh [$ffce], a
    inc b
    or l
    ld [bc], a
    nop
    db $fc
    db $fc
    jr z, @+$01

    ld bc, $ff18
    jp $1205


    nop
    db $10
    ret z

    ld [$0016], sp
    add c
    ld b, d
    rst $38
    adc b
    jp Jump_000_2608


    nop
    ld hl, sp-$70
    rlca
    ld de, $c000
    xor b
    ld b, $f7
    add $03
    xor b
    ret z

    rlca
    ld c, a
    add e
    ld [bc], a
    sbc d
    add l
    ld b, $50
    ld bc, $bf40
    xor b
    dec b
    ld c, b
    ld [bc], a
    rst $38
    ld d, h
    xor e
    ld b, l
    nop
    rst $38
    nop
    xor d
    sub b
    dec b
    ld hl, $ff2d
    add e
    dec b
    ret nc

    xor e
    dec b
    adc $02
    nop
    rst $38
    ret nz

    adc h
    ld bc, $ffa0
    cpl
    nop
    cpl
    rst $38
    ld b, d
    nop
    inc bc
    add hl, bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld b, a
    nop
    rst $38
    inc hl
    rst $38
    inc b
    ld bc, $1f01
    rra
    inc bc
    ret


    nop
    ld c, b
    dec b
    rst $38
    ld de, $8311
    add e
    rst $00
    jp z, $5800

    ld bc, $8181
    ld [hl+], a
    rra
    jp z, $6800

    daa
    rra
    ld bc, $0101
    call nz, $1100
    ld [bc], a
    ldh [rP1], a
    db $fc
    adc d
    nop
    jr nc, @+$27

    nop
    nop
    ldh a, [$ff8e]
    nop
    adc b
    ld [bc], a
    nop
    nop
    ldh [rLY], a
    nop
    rst $38
    nop
    pop af
    ld [hl+], a
    rst $38
    add hl, bc
    rrca
    rrca
    rlca
    inc b
    rlca
    ld b, $03
    ld [bc], a
    ld bc, $c4ff
    nop
    ld [hl], h
    nop
    ldh [rSCY], a
    rst $38
    nop
    ld bc, $00fe
    rlc b
    ld b, e
    dec c
    adc a
    nop
    ld h, e
    ld h, b
    ldh a, [$fff0]
    ldh [$ffe0], a
    ld hl, sp+$78
    cp $0e
    rst $38
    inc bc
    adc l
    nop
    sbc e
    ld bc, $0300
    add [hl]
    nop
    ld l, $06
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    adc e
    nop
    jr c, jr_01a_59b2

    rst $38
    ld bc, $f1f1
    dec h
    ldh a, [$ff29]
    rst $38
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    push bc
    nop
    ld [hl], l
    ld a, [bc]
    jr jr_01a_59ba

    ld [$0008], sp
    nop
    db $10
    db $10
    jr @+$1a

    rst $38
    and [hl]
    nop
    ccf
    daa
    db $e3
    nop
    rst $38

jr_01a_59b2:
    adc [hl]
    nop
    ld [$00c8], a
    sub d
    nop
    ccf

jr_01a_59ba:
    ret nc

    nop
    xor b
    jp $fb00


    ld [bc], a
    ld bc, $0000
    rst $08
    nop
    ld a, $01
    inc bc
    inc bc
    inc hl
    ld bc, $8101
    add c
    daa
    add b
    ld b, e
    db $fc
    nop
    nop
    cp $42
    add b
    rst $38
    dec bc
    add b
    pop de
    ret nc

    pop af
    ldh a, [$ff61]
    ld h, b
    ld bc, $0300
    nop
    adc a
    ld c, c
    nop
    rst $38
    or b
    ld bc, $867f
    nop
    ret


    inc b
    db $fc
    nop
    ldh a, [rP1]
    ldh [$ffa4], a
    ld bc, $027c
    ld hl, sp+$00
    add b
    dec hl
    nop
    dec h
    ld hl, sp+$23
    db $fc
    inc hl
    cp $84
    nop
    or [hl]
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $9301
    nop
    ld [$0183], sp
    ld a, [hl+]
    and l
    nop
    ld d, b
    nop
    adc b
    call nz, Call_000_3602
    ld bc, $8888
    adc $00
    ld de, $0304
    nop
    rrca
    nop
    ccf
    ld b, c
    nop
    rra
    adc d
    nop
    ld a, [hl+]
    nop
    nop
    push bc
    ld bc, $0795
    inc bc
    ld [bc], a
    rlca
    ld b, $0f
    inc c
    rra
    jr @-$7b

    ld bc, $49aa
    rst $38
    nop
    nop
    cp $84
    ld bc, $00e4
    ld hl, sp+$42
    nop
    rst $38
    ld [bc], a
    ldh a, [rIF]
    inc c
    ld b, c
    inc bc
    ld [bc], a
    dec b
    ld b, e
    ld b, d
    inc hl
    ld [hl+], a
    nop
    db $fc
    ld b, c
    nop
    ld hl, sp-$56
    ld [bc], a
    ld d, d
    and [hl]
    ld [bc], a
    ld h, c
    jp $e300


    inc bc
    ldh a, [$fff0]
    ld hl, sp-$08
    add e
    ld bc, $832c
    ld [bc], a
    db $10
    ld [bc], a
    rlca
    rlca
    inc bc
    call nz, Call_01a_6802
    ld bc, $c000
    adc l
    nop
    jr nc, jr_01a_5a7f

    nop

jr_01a_5a7f:
    inc bc
    ld c, e
    nop
    rst $38
    add hl, bc
    inc bc
    rst $38
    rrca
    rst $38
    inc a
    db $fc
    ld a, a
    ld h, b
    rst $38
    ret nz

    rlc d
    ld a, [hl]
    dec e
    ldh a, [rP1]
    pop bc
    ld bc, $0080
    adc b
    adc b
    add h
    add h
    jp nz, $c142

    ld b, c
    db $e3
    inc hl
    rla
    inc d
    rrca
    inc c
    adc a
    adc b
    ld e, a
    ld d, b
    ccf
    jr nz, jr_01a_5b2c

    ld b, b
    rst $38
    add b
    adc $00
    db $10
    ld [bc], a
    ld bc, $7f00
    adc h
    ld [bc], a
    ld b, d
    adc c
    nop
    adc l
    nop
    inc bc
    xor b
    nop
    add h
    ld [bc], a
    rlca
    nop
    rrca
    adc e
    nop
    ld l, $0a
    inc c
    db $fc
    inc b
    db $fc
    ld b, $fe
    ld [bc], a
    cp $03
    rst $38
    ld bc, $008e
    ld [$0283], a
    or h
    inc b
    ld b, b
    ret nz

    add b
    rst $38
    ret nz

    call nz, $2c03
    add hl, bc
    jr nc, @+$41

    jr jr_01a_5b08

    ld [$0c0f], sp
    rrca
    nop
    cp $c3
    ld [bc], a
    adc e
    sub b
    nop
    add [hl]
    ld [bc], a
    nop
    nop
    add b
    add e
    nop
    add d
    nop
    nop
    add $00

Call_01a_5b00:
    db $10
    sub e
    nop
    and b
    and e
    inc bc

Call_01a_5b06:
    ld e, h
    adc d

jr_01a_5b08:
    nop
    xor b
    inc b
    cp $00
    ld hl, sp+$00
    ldh a, [$ff8a]
    ld bc, $006e
    rlca
    ret nc

    nop
    sub [hl]
    nop
    ld a, a
    and e
    ld bc, $07ea
    ld h, b
    ldh [$ff30], a
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp-$7d
    inc bc
    ld [hl], b
    add e
    inc bc
    halt

jr_01a_5b2c:
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $018d
    ld e, b
    add l
    inc bc
    sub b
    ld [bc], a
    ld h, b
    ld a, a
    ld sp, $00ab
    add l
    ld b, $ff
    ld [hl], b
    rst $38
    ld hl, sp-$21
    nop
    db $fc
    ret nc

    ld bc, $008e
    nop
    and e
    nop
    inc h
    ld bc, $f800
    push bc
    ld bc, $b666
    inc bc
    ld b, b
    adc c
    ld bc, $005b
    db $fc
    jp Jump_01a_6a04


    ld b, h
    nop
    ret nz

    ld [bc], a
    ld bc, $017f
    rst $00
    nop
    dec l
    and h
    inc b
    sub l
    add a
    inc bc
    adc b
    add l
    inc b
    db $10
    add hl, de
    ld [$17f8], sp
    rra
    rra
    inc e
    rrca
    inc c
    rrca
    inc b
    rrca
    inc c
    rrca
    add hl, bc
    rra
    inc de
    ccf
    daa
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$ff3f]
    ldh [$ff7f], a
    ld b, c
    ldh [rIE], a
    inc bc
    ld hl, sp-$01
    sbc [hl]
    sbc a
    xor d
    inc bc
    dec b
    inc b
    rst $38
    rrca
    rst $38
    ld a, a
    cp $8e
    nop
    ld [hl], $8c
    ld bc, $837f
    inc b
    jp c, $04c3

    sub [hl]
    sub d
    nop
    add h
    ld [bc], a
    ret nz

    nop
    ldh a, [$ff90]
    inc b
    ld l, d
    nop
    jp Jump_000_008c


    sbc h
    nop
    inc a
    sub b
    inc b
    ld l, d
    add a
    ld [bc], a
    db $db
    nop
    inc bc
    adc e
    ld bc, $0502
    ld [$0ff8], sp
    db $fd
    rrca
    rst $38
    add h
    inc b
    pop de
    inc c
    pop hl
    ld a, a
    db $e3
    ld a, a
    rst $08
    ld a, [hl]
    ld c, [hl]
    db $fc
    sbc h
    ld hl, sp+$38
    ld hl, sp+$70
    dec h
    ldh [$ff03], a
    ld [hl], b
    ldh [rTAC], a
    rlca
    add e
    ld [bc], a
    ld h, h
    inc bc
    ld b, $06
    inc b
    inc b
    add [hl]
    ld bc, $01fa
    ldh a, [$ffc0]
    and [hl]
    inc b
    dec h
    dec b
    jr nz, jr_01a_5c1d

    ld d, b
    ld d, b
    db $10
    db $10
    add hl, hl
    nop
    ld b, $40
    ld b, b
    and b
    and b
    jr nz, @+$22

    inc a
    and e
    dec b
    add [hl]
    ld bc, $0103
    add e
    inc b
    inc h
    adc h
    inc b
    dec hl
    rlca
    ld hl, sp-$01
    cp $ff
    rlca

jr_01a_5c1d:
    rlca
    ld bc, $cd01
    ld [bc], a
    ld a, a
    nop
    ret nz

    add a
    nop
    ret z

    ld [bc], a
    ldh a, [rP1]
    add b
    adc c
    ld bc, $015a
    nop
    ld bc, $0190
    ld d, [hl]
    ld [bc], a
    ld a, a
    nop
    ccf
    sub b
    inc bc
    ld a, [$04a4]
    adc a
    ld [bc], a
    ld a, h
    rst $38
    jr c, @-$33

    nop
    adc e
    ld [$3800], sp
    ldh [$ff3c], a
    ldh a, [$ff3e]
    ldh a, [$ff1f]
    db $10
    ld b, c
    rra
    add hl, de
    inc hl
    rrca
    add a
    inc bc
    add h
    inc hl
    add b
    rlca
    adc a
    nop
    sbc a
    nop
    jr nc, jr_01a_5c81

    pop hl
    pop hl
    ld [hl+], a
    db $e3
    ld bc, $c3c3
    add $05
    dec sp
    inc bc
    ld h, b
    ld h, b
    ret nz

    ret nz

    and a
    ld [bc], a
    inc d
    inc bc
    rra
    nop
    rra
    nop
    xor a
    inc bc
    cpl
    ld bc, $7f60
    add e
    inc bc
    sbc b

jr_01a_5c81:
    ld [bc], a
    jr jr_01a_5ca3

    inc e
    ld b, c
    rrca
    inc a
    ld [bc], a
    rrca
    ld a, h
    rra
    adc [hl]
    ld b, $81
    nop
    ldh a, [$ffb0]
    inc bc
    ret nz

    adc e
    inc bc
    inc sp
    ld [bc], a
    rra
    nop
    rst $38
    ld b, c
    nop
    rrca
    ld bc, $0f00
    xor d
    dec b

jr_01a_5ca3:
    ld [de], a
    ld [bc], a
    db $fc
    nop
    db $fc
    and a
    ld [bc], a
    ld d, h
    sub b
    ld bc, $0250
    add b
    nop
    ld hl, sp-$7d
    ld [bc], a
    add $2b
    inc bc
    nop
    ld c, $8e
    ld b, $81
    inc bc
    nop
    nop
    ld a, a
    ld a, $22
    ld a, a
    ld [bc], a
    ld [hl], c
    ld a, a
    ld h, c
    ld b, c
    ld a, $22
    ld bc, $1c1c
    xor l
    ld b, $af
    nop
    rlca
    adc $06
    cp a
    ld bc, $c0c0
    xor b
    inc bc
    or e
    nop
    inc bc
    and e
    ld [bc], a
    cp h
    ld [bc], a
    rrca
    inc bc
    ld a, b
    add l
    inc b
    pop de
    jp Jump_000_3904


    call nz, $e301
    ret c

    dec b
    jr nc, jr_01a_5cf1

jr_01a_5cf1:
    ld hl, sp-$7c
    rlca
    halt
    and l
    dec b
    rst $18
    ld [bc], a
    add c
    nop
    nop
    jp nc, $b803

    call nz, $d706
    nop
    ld bc, $02ae
    ld [hl], b
    add h
    ld [bc], a
    or d
    add e
    ld [bc], a
    or l
    nop
    ret nz

    add e
    dec b
    adc h
    inc bc
    ld [hl], b
    ldh a, [$ff1f]
    inc e
    call nz, $9903
    nop
    ld h, b
    ld b, e
    ld a, a
    ld b, b
    dec b
    ldh a, [rSVBK]
    ld hl, sp+$18
    db $fc
    inc c
    and e
    rlca
    sub $a4
    rlca
    ld h, a
    rlca
    ld bc, $031f
    ccf
    inc bc
    ld a, $07
    ld a, [hl]
    ld b, c
    rlca
    db $fc
    dec b
    rrca
    ld hl, sp+$1f
    ld hl, sp-$61
    nop
    add h
    ld bc, $a3a0
    nop
    inc l
    jp nc, Jump_01a_6601

    xor c
    inc bc
    ld d, a
    ld bc, $7eff
    inc hl
    rst $38
    ld bc, $ffc7
    adc e
    dec b
    pop hl
    ret nc

    nop
    ld b, e
    add e
    ld bc, $051f
    nop
    add b
    nop
    add b
    nop
    ret nz

    sub d
    nop
    sub [hl]
    add h
    rlca
    adc a
    ld bc, $ff30
    xor d
    ld b, $a6
    and h
    rlca
    ld [hl], c
    dec b
    nop
    rrca
    nop
    rra
    nop
    ccf
    ld c, e
    nop
    rst $38
    ld bc, $f800
    adc a
    ld [bc], a
    jp nc, $3808

    ldh a, [$ff3c]
    ld hl, sp+$1e
    db $fc
    rrca
    cp $07
    adc [hl]
    nop
    add sp, $07
    ret nz

    add b
    ldh a, [$ffe0]
    rst $38
    db $fc
    ccf
    rst $38
    jp $da07


    ld b, c
    ccf
    jr nz, jr_01a_5da6

    ccf
    jr nc, jr_01a_5de1

    db $10
    rst $38
    inc c
    rst $38

jr_01a_5da6:
    cp $ce
    rlca
    cp a
    inc b
    inc bc
    ldh a, [$ffbf]
    ldh [rIE], a
    add e
    ld b, $72
    call nz, Call_01a_5b06
    xor c
    ld bc, $007d
    rra
    add [hl]
    ld bc, $027a
    nop
    rst $38
    ld hl, sp-$5d
    ld [bc], a
    ld sp, hl
    ld bc, $30ff
    adc h
    nop
    ld sp, $3807
    cp a
    inc a
    ccf
    inc a
    rst $38
    db $fc
    rst $38
    jp $4e04


    nop
    rrca
    adc l
    ld bc, $06d3
    ret nz

    rst $38
    ei
    rst $38

jr_01a_5de1:
    cp $1f
    rst $38
    add e
    ld [$05b8], sp
    add e
    ld a, a
    ld b, e
    inc a
    inc a
    ret nz

    add [hl]
    ld [$8447], sp
    inc b
    inc [hl]
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    adc [hl]
    ld [$88e0], sp
    inc b
    adc h
    ld [bc], a
    ld hl, sp+$00
    db $fc
    add e
    dec b
    db $ec
    rlc [hl]
    or b
    inc bc
    db $10
    db $10
    jr c, @+$01

    adc h
    ld b, $b4
    nop
    rra
    add e
    ld b, $14
    xor h
    ld [$0504], sp
    rst $38
    rrca
    rst $38
    rlca
    cp $03
    add a
    inc bc
    ld [hl], a
    ld b, $f8
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ld bc, $0487
    ld sp, $7f08
    ld [hl], c
    ccf
    ccf
    rst $38
    adc a
    db $fc
    db $fc
    ld hl, sp-$56
    add hl, bc
    or c
    sub b
    inc bc
    jp z, $0100

    adc h
    inc bc
    ld h, d
    nop
    ldh a, [$ffc8]
    ld [$00c0], sp
    rst $38
    and e
    ld b, $90
    ld bc, $0c0c
    sub e
    ld bc, $87d1
    inc bc
    push hl
    inc b
    ldh [rP1], a
    nop
    nop
    db $fc
    jp Jump_01a_6a04


    ld bc, $c000
    jr nc, jr_01a_5e64

jr_01a_5e64:
    add [hl]
    ld [bc], a
    ld h, d
    ld bc, $ce03
    ld b, c
    rst $38
    rst $08
    ld b, d
    db $fc
    add a
    ld b, c
    cp $ff
    ld a, [bc]
    cp $01
    rst $38
    pop bc
    rst $38
    di
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    and l
    nop
    add $03
    ldh a, [$ff7f]
    ld hl, sp+$1f
    add h
    ld [$a6b5], sp
    rlca
    ld h, [hl]
    rlca
    ld a, b
    rst $38
    ld a, b
    rst $28
    ld hl, sp-$31
    ld hl, sp-$38
    ld b, c
    db $fc
    adc h
    ld b, c
    cp $06
    jp z, $8008

    and a
    inc bc
    cp c
    ld b, $f8
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$4b
    dec b
    ld a, [de]
    ld bc, $0f0e
    adc b
    ld a, [bc]
    or [hl]
    nop
    db $fc
    xor d
    ld bc, $8404
    dec b
    rst $30
    inc bc
    jr nc, jr_01a_5eee

    jr c, jr_01a_5ef8

    adc b
    ld [$007a], sp
    rlca
    and [hl]
    ld a, [bc]
    and [hl]
    nop
    ret nz

    and l
    ld a, [bc]
    sbc b
    add a
    inc bc
    and h
    inc bc
    ld c, $0e
    rlca
    rlca
    and [hl]
    ld [$84f6], sp
    rlca
    or c
    xor a
    ld b, $7e
    dec b
    rlca
    rlca
    dec c
    rrca
    inc c
    rrca
    add h
    ld b, $94
    inc b
    rra
    inc c
    rrca
    ld c, $0f

jr_01a_5eee:
    push bc
    rlca
    ld l, e
    ld [bc], a
    ld a, a
    ldh a, [$ff7f]
    and e
    ld a, [bc]
    ld [hl], l

jr_01a_5ef8:
    nop
    ldh [$ff8c], a
    inc bc
    ld [bc], a
    inc b
    inc c
    rst $38
    rlca
    rst $38
    rlca
    adc d
    nop
    ld sp, $0405
    rst $38
    add h
    rst $38
    db $e4
    cp $42
    rlca
    rst $38
    dec bc
    ld b, $ff
    nop
    rst $38
    adc c
    rst $38
    sbc c
    rst $38
    cp a
    nop
    rst $38
    ldh [$ffc6], a
    add hl, bc
    ld e, a
    nop
    add b
    xor c
    dec b
    db $eb
    jp Jump_01a_6a0a


    call z, Call_000_1501
    ld [bc], a
    ldh [rIE], a
    cp $8a
    dec bc
    adc c
    ld bc, $ff30
    and e
    add hl, bc
    add hl, hl
    nop
    cp a
    inc h
    rst $38
    inc b
    inc a
    rst $38
    ld a, $ff
    ld a, a
    and h
    add hl, bc
    ld b, e
    ld bc, $80ff
    add a
    ld bc, $02cc
    ldh a, [rIE]
    cp $c5
    inc b
    db $ec
    ld [bc], a
    ld [bc], a
    rst $38
    ld b, $89
    dec b
    db $e4
    dec b

jr_01a_5f5a:
    ldh [$ff7f], a
    ldh a, [$ff1f]
    ld hl, sp+$0f
    add e
    ld a, [bc]
    ld b, $05
    ld e, $fe
    inc a
    db $fc
    jr nc, jr_01a_5f5a

    ld b, c
    ld h, b
    ldh [rSB], a
    ld h, b
    ldh [$ff87], a
    inc bc
    or e
    nop
    ret nz

    and e
    inc b
    xor b
    adc [hl]
    ld b, $ae
    dec bc
    ld [$0608], sp
    ld b, $10
    db $10
    ld [$0c08], sp
    inc c
    ld b, $06
    dec h
    ld [bc], a
    ld bc, $0404
    add e
    ld [bc], a
    add $ab
    ld [$85f4], sp
    dec bc
    ld [hl], l
    ld bc, $00ff
    ret z

    dec bc
    ld a, e
    ld [bc], a
    inc bc
    cp $0e
    add h
    rlca
    and $c4
    add hl, bc
    or d
    ldh [rNR43], a
    db $fc
    nop
    ccf
    inc a
    scf
    inc [hl]
    dec de
    jr jr_01a_5fb4

    nop
    rrca
    rrca

jr_01a_5fb4:
    ld hl, sp-$08
    sub c
    ld de, $0808
    or $f7
    sub $d7
    ld h, a
    ld h, a
    rlca
    dec b
    rst $08
    call Call_000_3e3f
    sbc a
    sub b
    inc hl
    jr nz, jr_01a_5fd2

    add h
    inc c
    ld c, b
    add hl, bc
    rrca
    rst $38
    sbc a

jr_01a_5fd2:
    rst $38
    sbc [hl]
    cp $dc
    db $fc
    db $fd
    db $fd
    and e
    ld [bc], a
    jp nz, $f223

    inc bc
    ldh a, [$fff0]
    jr c, jr_01a_601b

    inc hl
    rra
    add e
    ld bc, $0f2a
    dec a
    dec a
    jr c, @+$3a

    ld a, b
    ld a, b
    ld hl, sp-$08
    pop af
    pop af
    db $e3
    db $e3
    rst $38
    cp $ff
    cp $83
    nop
    inc de
    adc $01
    rla
    add hl, bc
    add c
    rst $38
    add e
    rst $38
    rst $18
    rst $38
    adc $ff
    ret nz

    rst $38
    xor b
    ld b, $30
    ld b, $ff
    inc c
    rst $38
    ld c, $ff
    ld b, $fc
    add e
    add hl, bc
    or d
    jp z, $ef08

jr_01a_601b:
    inc b
    jr nc, @-$0e

    ccf
    rst $38
    rra
    ld b, c
    cp $07
    ld bc, $83fe
    call nz, $ba0c
    rst $38
    dec c
    ld l, l
    ld h, c
    rla
    or $0d
    dec c
    dec a
    ld h, c
    dec b
    ld bc, $670d
    db $10
    add hl, bc
    dec b
    add hl, de
    nop
    db $10
    add hl, de
    rst $38
    ld [$0d0a], sp
    rst $00
    db $10
    inc l
    add hl, de
    inc bc
    ld b, b
    dec c
    rst $00
    db $10
    add hl, hl
    add hl, de
    inc b
    jr nz, jr_01a_605e

    add b
    db $10
    dec b
    ld [$ff01], sp
    dec c
    ld h, b
    ld h, c
    ld c, $07
    ld l, b
    ld h, b

jr_01a_605e:
    ld [hl], l
    ld h, b
    add d
    ld h, b
    call z, $d960
    ld h, b
    and $60
    dec b
    ld bc, $560d
    ld h, c
    ld de, $6068
    dec b
    ldh a, [rTMA]
    or $60
    add hl, bc
    inc e
    dec bc
    sub c
    ld l, c
    dec b
    ld [hl+], a
    ld a, [bc]
    dec b
    ldh a, [rTMA]
    or $60
    inc bc
    xor h
    ld h, b
    ld e, d
    add hl, hl
    ld bc, $0005
    add hl, hl
    nop
    dec b
    ld bc, $560d
    ld h, c
    ld de, $608c
    add hl, hl
    push af
    dec b
    rla
    add hl, hl
    nop
    dec c
    and l
    ld h, b
    dec b
    inc a
    rrca
    dec b
    ld b, $06
    or $60
    xor a
    ld hl, $a077
    ld [hl+], a
    ld [hl], a
    ret


    ld e, $11
    ld a, [de]
    ld c, a
    rla
    sbc a
    ld b, a
    ld hl, $a077
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, [$db3d]
    dec a
    ld hl, $db52
    cp [hl]
    jr nz, jr_01a_60cb

    ld a, $01
    ld [$df24], a

jr_01a_60cb:
    ret


    add hl, bc
    inc e
    dec bc
    sub c
    ld l, c
    dec b
    ccf
    ld a, [bc]
    dec b
    ldh a, [rTMA]
    or $60
    dec b
    ld bc, $560d
    ld h, c
    ld de, $60d9
    dec b
    ld h, h
    ld b, $f6
    ld h, b
    add hl, bc
    inc e
    dec c
    ld d, b
    rrca
    rst $00
    xor b
    or d
    dec b
    ld c, d
    ld a, [bc]
    dec b
    ldh a, [rTMA]
    or $60
    dec c
    add b
    ld h, c
    dec b
    ld bc, $510d
    ld h, c
    ld de, $60f9
    dec c
    ld e, e
    ld h, c
    inc d
    ld c, $0e
    ld h, c
    dec b
    inc a
    dec c
    ld h, a
    ld h, c
    ld d, $0d
    rst $00
    db $10
    dec l
    add hl, bc
    ld [$0119], sp
    ld [$ff19], sp
    inc b
    ld a, [bc]
    dec c
    jr z, jr_01a_617f

    add hl, de
    ld [bc], a
    inc a
    dec c
    ld sp, $0d61
    ld h, a
    ld h, c
    ld d, $21
    ld a, h
    ld a, h
    ld a, $03
    call Call_000_05cf
    ret


    ld a, [$db60]
    call Call_000_0663
    ld hl, $db6c
    or [hl]
    ld [hl], a
    ret


    ld hl, $a019
    set 5, [hl]
    ld l, $1c
    set 5, [hl]
    ld l, $1f
    set 5, [hl]
    ret


    ld a, $01
    ld [$df24], a
    ret


    ld a, [$df22]
    jr jr_01a_6163

    ld a, [$df24]
    jr jr_01a_6163

    ld a, [$df23]
    jr jr_01a_6163

    ld a, [$db60]

jr_01a_6163:
    ld e, $27
    ld [de], a
    ret


    ld a, $05
    ld [$a082], a
    ret


    ld a, [$db60]
    or a
    ld e, $0a
    jr nz, jr_01a_6177

    ld e, $10

jr_01a_6177:
    xor a
    ld hl, $df22

jr_01a_617b:
    ld [hl+], a
    dec e
    jr nz, jr_01a_617b

jr_01a_617f:
    ret


    push bc
    ld e, $1a
    ld bc, $618b
    call Call_000_0c3a
    pop bc
    ret


    inc e
    ld b, e
    ld l, l
    ld [$0a0d], sp
    ld h, d
    inc e
    db $f4
    ld [hl], h
    ld [$0d18], sp
    ld e, e
    ld h, c
    inc d
    ld c, $be
    ld h, c
    db $10
    ld [hl], c
    ld c, $04
    xor d
    ld h, c
    xor a
    ld h, c
    or h
    ld h, c
    cp c
    ld h, c
    ld bc, $0600
    nop
    ld h, d
    ld bc, $0602
    nop
    ld h, d
    ld bc, $0608
    nop
    ld h, d
    ld bc, $0605
    nop
    ld h, d
    db $10
    ld [hl], c
    ld [de], a
    rst $08
    ld h, c
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    ld bc, $061e
    nop
    ld h, d
    inc bc
    db $fd
    inc [hl]
    ld b, b
    dec c
    ld c, e
    ld h, d
    dec b
    ld bc, $6410
    ld [de], a
    sub $61
    rrca
    rra
    add b
    db $10
    ld [hl], c
    ld c, $04
    db $ec
    ld h, c
    db $ec
    ld h, c
    di
    ld h, c
    ld a, [$0461]
    sbc l
    ld a, h
    ld a, [de]
    ld b, $fe
    ld h, c
    inc b
    cp b
    ld a, h
    ld a, [de]
    ld b, $fe
    ld h, c
    inc b
    db $db
    ld a, h
    ld a, [de]
    ld bc, $0d00
    inc b
    ld h, d
    nop
    ld a, $01
    ld [$df22], a
    ret


    push bc
    ld a, [$db60]
    ld hl, $6221
    add a
    add l
    ld l, a
    jr nc, jr_01a_6217

    inc h

jr_01a_6217:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    call Call_000_35bb
    pop bc
    ret


    cpl
    ld h, d
    inc sp
    ld h, d
    scf
    ld h, d
    dec sp
    ld h, d
    ccf
    ld h, d
    ld b, e
    ld h, d
    ld b, a
    ld h, d
    ld d, b
    nop
    ld l, c
    nop
    ld d, b
    nop
    ld l, c
    nop
    ld d, b
    nop
    ld e, c
    nop
    ld d, b
    nop
    ld l, c
    nop
    ld d, b
    nop
    ld l, c
    nop
    ld d, b
    nop
    ld l, c
    nop
    ld d, b
    nop
    ld l, c
    nop
    ld a, [$a071]
    add $2f
    ld [$df11], a
    ld hl, $748b
    ld a, $07
    call Call_000_05cf
    ret


    dec c
    ld h, b
    ld h, d
    ld d, $1e
    ld b, [hl]
    ld a, [de]
    ld [$df21], a
    ret


    dec c
    ld h, b
    ld h, d
    rla
    or $0d
    rrca
    dec a
    rst $38
    rrca
    inc a
    ld bc, $b10b
    ld h, d
    dec c
    ld [$1463], sp
    inc b
    and d
    ld h, d
    ld bc, $1f00
    ret c

    ld h, d
    dec b
    inc b
    add hl, de
    inc bc
    jr jr_01a_6293

    sub c
    ld l, c
    add hl, de
    inc b
    ld [$0319], sp
    jr z, jr_01a_629e

    db $f4
    ld h, d

jr_01a_6293:
    ld de, $62a8
    dec c
    db $fd
    ld h, d
    ld [de], a
    add h
    ld h, d
    add hl, de
    inc bc

jr_01a_629e:
    ld [$7606], sp
    ld h, d
    dec bc
    or c
    ld h, d
    ld b, $76
    ld h, d
    add hl, de
    inc bc
    ld [$4b0d], sp
    ld h, c
    ld bc, $0000
    add hl, de
    nop
    ld [$3c10], sp
    ld c, $03
    cp [hl]
    ld h, d
    jp $c862


    ld h, d
    add hl, bc
    ld bc, $ca06
    ld h, d
    add hl, bc
    ld [bc], a
    ld b, $ca
    ld h, d
    add hl, bc
    inc bc
    add hl, de
    nop
    ld b, $19
    ld bc, $1902
    ld [bc], a
    rlca
    add hl, de
    ld bc, $0a02
    inc c
    ld a, [$df27]
    ld h, $14
    cp $08
    jr c, jr_01a_62ef

    ld h, $10
    cp $0f
    jr c, jr_01a_62ef

    ld h, $0c
    cp $15
    jr c, jr_01a_62ef

    ld h, $08

jr_01a_62ef:
    ld a, h
    ld e, $24
    ld [de], a
    ret


    ld a, [$df27]
    sub $1c
    ld e, $27
    ld [de], a
    ret


    ld e, $3c
    ld a, [de]
    ld h, a
    dec a
    ld [de], a
    ld a, h
    ld e, $27
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    inc a
    cp $10
    jr c, jr_01a_6311

    xor a

jr_01a_6311:
    ld [de], a
    add a
    add a
    ld h, a
    call Call_000_0647
    and $03
    add h
    ld hl, $6331
    add l
    ld l, a
    jr nc, jr_01a_6323

    inc h

jr_01a_6323:
    ld a, [hl]
    ld e, $27
    ld [de], a
    cp $04
    jr c, jr_01a_632d

    sub $04

jr_01a_632d:
    ld e, $3c
    ld [de], a
    ret


    nop
    nop
    ld bc, $0501
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    dec c
    ld a, d
    ld h, e
    ld [de], a
    db $eb
    ld l, [hl]
    ld b, $f6
    ld l, c
    ld e, $03
    call Call_000_063b
    or a
    jr z, jr_01a_6384

    ld a, $01

jr_01a_6384:
    ld [$df2a], a
    cp $01
    jr nz, jr_01a_639c

    ld hl, $df29
    ld a, [hl]
    cp $0e
    jr nc, jr_01a_6396

jr_01a_6393:
    inc [hl]
    jr jr_01a_63a8

jr_01a_6396:
    xor a

jr_01a_6397:
    ld [$df2a], a
    jr jr_01a_63a8

jr_01a_639c:
    ld hl, $df28
    ld a, [hl]
    cp $07
    jr c, jr_01a_6393

    ld a, $01
    jr jr_01a_6397

jr_01a_63a8:
    ld e, $27
    ld a, [$df2a]
    ld [de], a
    ret


    dec c
    ld h, b
    ld h, d
    rla
    or $0d
    rrca
    ld h, b
    ld a, [de]
    rrca
    ld h, c
    nop
    rrca
    ld e, [hl]
    inc b
    rrca
    ld e, a
    inc b
    rrca
    ld c, d
    nop
    rrca
    ld c, e
    nop
    rrca
    ld c, h
    ld bc, $ae03
    ld l, b
    ld e, d
    rrca
    ld a, [hl-]
    nop
    dec c
    ld a, d
    ld l, c
    sub b
    nop
    dec c
    add c
    ld l, c
    ld l, b
    nop
    dec c
    ld a, d
    ld l, c
    sub b
    nop
    dec c
    add c
    ld l, c
    ld l, b
    nop
    add hl, bc
    inc b
    ld bc, $0800
    ret nz

    rst $38
    dec b
    inc b
    ld bc, $0501
    inc b
    ld bc, $0800
    ld b, b
    nop
    dec b
    inc b
    ld bc, $0501
    inc b
    ld a, [bc]
    ld [$fe00], sp
    add hl, bc
    dec b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld a, [bc]
    ld bc, $0804
    nop
    nop
    dec b
    inc b
    dec c
    ld a, d
    ld l, c
    sub b
    nop
    dec c
    add c
    ld l, c
    jr jr_01a_641d

jr_01a_641d:
    rrca
    ld a, [hl-]
    ld bc, $0409
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    ld [hl+], a
    xor d
    ld h, h
    ld a, [de]
    dec c
    ld a, d
    ld l, c
    sub b
    nop
    dec c
    add c
    ld l, c
    jr jr_01a_6439

jr_01a_6439:
    rlca
    nop
    nop
    add hl, hl
    ld hl, sp+$09
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    rlca
    nop
    rst $38
    add hl, hl
    nop
    add hl, bc
    inc c
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    add hl, hl
    ld [$0409], sp
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    rlca
    nop
    nop
    add hl, hl
    nop
    dec c
    ld a, d
    ld l, c
    stop
    dec c
    add c
    ld l, c
    jr jr_01a_6475

jr_01a_6475:
    rlca
    nop
    nop
    add hl, hl
    ld [$0409], sp
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    rlca
    nop
    ld bc, $0029
    add hl, bc
    inc c
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    add hl, hl
    ld hl, sp+$09
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld a, [bc]
    rlca
    nop
    nop
    add hl, hl
    nop
    ld b, $2f
    ld h, h
    rrca
    add hl, sp
    rst $38
    rra
    cp a
    ld h, h
    dec bc
    sub c
    ld l, c
    dec c
    db $f4
    ld h, d
    ld [de], a
    xor l
    ld h, h
    dec b
    ld a, b
    dec c
    ld c, e
    ld h, c
    nop
    ld e, $39
    ld a, [de]
    inc a
    ld [de], a
    ld hl, $64d1
    add l
    ld l, a
    jr nc, jr_01a_64cc

    inc h

jr_01a_64cc:
    ld a, [hl]
    ld e, $25
    ld [de], a
    ret


    ld a, b
    ld c, b
    ld c, b
    ld a, b
    ld c, b
    ld c, b
    ld a, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld d, b
    ld [hl-], a
    ld [hl-], a
    ld d, b
    ld [hl-], a
    ld [hl-], a
    ld d, b
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    rla
    or $0d
    rrca
    ld h, b
    ld a, [de]
    rrca
    ld h, c
    nop
    rrca
    ld e, [hl]
    dec b
    rrca
    ld e, a
    rlca
    rrca
    ld c, d
    nop
    rrca
    ld c, e
    nop
    rrca
    ld c, h
    ld bc, $be03
    ld l, b
    ld e, d
    dec c
    ld a, d
    ld l, c
    stop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    dec c
    ld a, d
    ld l, c
    stop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    ld bc, $0707
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, b
    ld bc, $0808
    nop
    db $fc
    ld a, [hl+]
    ld hl, $3d05
    dec c
    ld a, d
    ld l, c
    stop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, bc
    ld [bc], a
    ld bc, $0709
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $070a
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $070b
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $070c
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $070d
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $070e
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $070f
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $0710
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $0711
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $0712
    add b
    rst $38
    dec b
    ld [bc], a
    ld a, [bc]
    inc h
    ld [hl], $09
    ld b, $01
    add hl, bc
    rlca
    nop
    ld bc, $0205
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld a, [bc]
    ld bc, $0509
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    dec c
    ld a, d
    ld l, c
    sub b
    nop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    rlca
    ld b, b
    rst $38
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    inc h
    rla
    add hl, bc
    inc b
    ld bc, $0509
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050d

Jump_01a_6601:
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld a, [bc]
    ld bc, $0509
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0511
    ld bc, $1724
    ld bc, $0711
    ld b, b
    rst $38
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    dec b
    ld bc, $0409
    ld bc, $0510
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $0509
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld a, [bc]
    ld bc, $0510
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    dec c
    ld a, d
    ld l, c
    stop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    inc h
    rla
    rlca
    ret nz

    nop
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    add hl, bc
    inc b
    ld bc, $0510
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0509
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld a, [bc]
    ld bc, $0510
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0512
    ld bc, $1724
    ld bc, $0712
    ret nz

    nop
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    dec b
    ld bc, $0409
    ld bc, $0509
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld a, [bc]
    ld bc, $0509
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    dec c
    ld a, d
    ld l, c
    sub b
    nop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    inc h
    rla
    add hl, bc
    ld [bc], a
    ld bc, $0709
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $0712
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $0711
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $0710
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $070f
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $070e
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $070d
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $070c
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $070b
    add b
    nop
    dec b
    ld [bc], a
    ld bc, $070a
    add b
    rst $38
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    nop
    rst $38
    inc h
    ld [hl], $09
    ld b, $01
    add hl, bc
    dec b
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld a, [bc]
    ld bc, $0509
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    dec c
    ld a, d
    ld l, c
    stop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    rlca
    ret nz

    nop
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    inc h
    rla
    add hl, bc
    inc b
    ld bc, $0509
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld a, [bc]
    ld bc, $0509
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld bc, $1724
    ld bc, $070b
    ret nz

    nop
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    dec b
    ld bc, $0409
    ld bc, $050c
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0509
    ld [bc], a

Call_01a_6802:
    ld bc, $050a
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld a, [bc]
    ld bc, $050c
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    dec c
    ld a, d
    ld l, c
    sub b
    nop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    rlca
    ld b, b
    rst $38
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    inc h
    rla
    add hl, bc
    inc b
    ld bc, $050c
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld bc, $0509
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld a, [bc]
    ld bc, $050c
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050a
    ld bc, $1724
    ld bc, $070a
    ld b, b
    rst $38
    ld [$fd7b], sp
    ld a, [hl+]
    rrca
    dec b
    ld bc, $0409
    ld bc, $0509
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0511
    ld [bc], a
    ld bc, $0510
    ld [bc], a
    ld bc, $050f
    ld [bc], a
    ld bc, $050e
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    ld bc, $050c
    ld [bc], a
    ld bc, $050b
    ld [bc], a
    ld bc, $050a
    ld [bc], a
    ld a, [bc]
    ld bc, $0509
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    dec c
    ld a, d
    ld l, c
    stop
    dec c
    add c
    ld l, c
    ld h, h
    nop
    inc h
    rla
    ld b, $33
    ld h, l
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_01a_68be

    xor a
    ld [de], a
    ld a, $e9
    ld [$db78], a
    ld [$cd00], a

jr_01a_68be:
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld bc, $68da
    call Call_000_255b
    ld a, [$df24]
    or a
    ret z

    ld e, $03
    ld bc, $4e33
    jp Jump_000_0846


    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    jr c, jr_01a_6902

    or $0d
    inc b
    inc sp
    ld a, c
    ld a, [de]
    dec c
    xor e
    ld l, [hl]
    dec c
    ld hl, $0969
    ld [bc], a
    ld bc, $0504
    ld b, $01
    dec b
    dec b
    ld b, $0a

jr_01a_6902:
    ld bc, $0506
    ld b, $01
    rlca
    dec b
    ld b, $01
    ld [$0605], sp
    ld bc, $050d
    ld b, $0d
    ld d, b
    rrca
    ret z

    xor b
    or d
    ld bc, $0506
    ld b, $01
    dec b
    dec b
    ld b, $16
    ld e, $03
    call Call_01a_6cfb
    ld hl, $692c
    jp Jump_01a_6d77


    stop
    ld [hl], b
    nop
    jr nc, jr_01a_6932

jr_01a_6932:
    ld [hl], b
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    sub b
    nop
    ld [hl], b
    nop
    dec c
    add c
    ld l, c
    ld d, [hl]
    nop
    dec c
    and l
    ld l, c
    ld [de], a
    db $eb
    ld l, [hl]
    ld b, $f6
    ld l, c
    dec c
    add c
    ld l, c
    ld [hl], b
    nop
    rla
    or $0d
    inc b
    inc sp
    ld a, c
    ld a, [de]
    dec c
    xor e
    ld l, [hl]
    ld bc, $0504
    ld b, $01
    ld b, $05
    ld b, $01
    add hl, bc
    dec b
    ld b, $01
    ld a, [bc]
    dec b
    ld b, $01
    dec bc
    dec b
    ld b, $01
    inc c
    dec b
    ld b, $01
    dec b
    dec b
    ld b, $16
    ld e, $04
    ld hl, $db51
    jr jr_01a_6986

    ld e, $07
    ld hl, $db53

jr_01a_6986:
    ld a, [bc]
    inc bc
    add [hl]
    inc hl
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    adc [hl]
    ld [de], a
    ret


    dec c
    and l
    ld l, c
    ld [de], a
    sbc [hl]
    ld l, c
    dec c
    ld d, b
    rrca
    pop bc
    xor b
    or d
    inc c
    dec c
    ld d, b
    rrca
    jp nz, $b2a8

    inc c
    ld hl, $df27
    inc [hl]
    ld hl, $df2b
    ld a, [hl]
    or a
    jr z, jr_01a_69bb

    ld [hl], $00
    ld hl, $df2a
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_01a_69ce

jr_01a_69bb:
    call Call_000_0647
    and $01
    ld hl, $df2a
    ld e, [hl]
    ld [hl], a
    cp e
    jr nz, jr_01a_69ce

    ld a, $01
    ld [$df2b], a
    ld a, e

jr_01a_69ce:
    cp $01
    jr nz, jr_01a_69e3

    ld hl, $df29
    ld a, [hl]
    cp $0e
    jr nc, jr_01a_69dd

jr_01a_69da:
    inc [hl]
    jr jr_01a_69ef

jr_01a_69dd:
    xor a

jr_01a_69de:
    ld [$df2a], a
    jr jr_01a_69ef

jr_01a_69e3:
    ld hl, $df28
    ld a, [hl]
    cp $0e
    jr c, jr_01a_69da

    ld a, $01
    jr jr_01a_69de

jr_01a_69ef:
    ld e, $27
    ld a, [$df2a]
    ld [de], a
    ret


    rla
    rst $38
    dec c
    rrca
    ld h, b
    nop
    rrca
    ld h, c
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp

Jump_01a_6a04:
    ld [$4a0f], sp
    nop
    rrca
    ld c, e

Jump_01a_6a0a:
    nop
    rrca
    ld c, h
    ld bc, $b203
    ld l, [hl]
    ld e, d
    dec c
    ld h, b
    ld h, c
    ld c, $07
    inc hl
    ld l, d
    ld a, [hl+]
    ld l, l
    sbc h
    ld l, l
    xor e
    ld l, l
    ld d, a
    ld l, [hl]
    ld a, d
    ld l, [hl]
    inc h
    ld a, [de]
    dec c
    xor e
    ld l, [hl]
    inc b
    ld l, l
    halt
    ld a, [de]
    rrca
    add hl, sp
    ld c, $0d
    ldh [$ff35], a
    ld h, h
    nop
    ld e, b
    nop
    dec c
    db $e3
    ld l, h
    ld c, $04
    ld b, e
    ld l, d
    call c, Call_01a_7d6a
    ld l, e
    ld sp, $016c
    dec b
    rlca
    ld b, b
    rst $38
    ld [$fe70], sp
    ld a, [hl+]
    ld b, $05
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld d, $01
    dec b
    rlca
    ld b, b
    rst $38
    ld [$fe00], sp
    ld a, [hl+]
    ld [de], a
    dec b
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    dec c
    jr nz, jr_01a_6b94

    ld bc, $0805
    nop
    cp $2a
    dec c
    dec b
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld d, $01
    dec b
    rlca
    nop
    db $fd
    ld [$0400], sp
    ld a, [hl+]
    ld [$0405], sp
    dec c
    jr nz, @+$6f

    ld bc, $0706
    ld b, b
    rst $38
    ld [$fcf8], sp

jr_01a_6b94:
    ld a, [hl+]
    jr jr_01a_6b9c

    inc b
    ld bc, $0507
    inc b

jr_01a_6b9c:
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    dec c
    jr nz, jr_01a_6c44

    ld bc, $0806
    ld hl, sp-$04
    ld a, [hl+]
    jr jr_01a_6be4

    inc b
    ld bc, $0507
    inc b

jr_01a_6be4:
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    dec c
    jr nz, @+$6f

    ld bc, $0806
    nop
    db $fd
    ld a, [hl+]
    jr jr_01a_6c2c

    inc b
    ld bc, $0507
    inc b

jr_01a_6c2c:
    ld bc, $0508
    inc b
    ld d, $01
    dec b
    rlca
    ld b, b
    rst $38
    ld [$0100], sp
    ld a, [hl+]
    db $10
    dec b
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507

jr_01a_6c44:
    inc b
    dec c
    jr nz, jr_01a_6cb5

    ld bc, $0808
    ld hl, sp-$02
    ld a, [hl+]
    jr nz, jr_01a_6c55

    inc b
    ld bc, $0505
    inc b

jr_01a_6c55:
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    dec c
    jr nz, jr_01a_6ccd

    ld bc, $0808
    add b
    rst $38
    ld a, [hl+]
    nop
    dec b
    inc b
    ld bc, $0805
    add b
    nop
    dec b
    inc b
    dec c
    jr nz, @+$6f

    ld bc, $0806
    nop
    nop
    dec b
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505

jr_01a_6cb5:
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507

jr_01a_6ccd:
    inc b
    ld bc, $0508
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld d, $1e
    inc bc
    call Call_01a_6cec
    ld e, $27
    ld [de], a
    ret


Call_01a_6cec:
    ld hl, $df26
    call Call_000_063b
    inc a
    add [hl]
    inc e
    cp e
    jr c, jr_01a_6cf9

    sub e

jr_01a_6cf9:
    ld [hl], a
    ret


Call_01a_6cfb:
    ld hl, $df26
    call Call_000_063b
    inc a
    add [hl]
    inc e
    inc e

jr_01a_6d05:
    cp e
    jr c, jr_01a_6d09

    sub e

jr_01a_6d09:
    ld hl, $df25
    cp [hl]
    jr nz, jr_01a_6d16

    ld a, [$df26]
    add e
    dec a
    jr jr_01a_6d05

jr_01a_6d16:
    push af
    ld a, [$df26]
    ld [hl], a
    pop af
    ld [$df26], a
    ret


    ld e, $39
    ld a, [de]
    ld e, a
    push bc
    call Call_000_10aa
    pop bc
    ret


    dec c
    xor e
    ld l, [hl]
    dec c
    ld b, h
    ld l, l
    inc b
    db $ec
    halt
    ld a, [de]
    ld h, $c0
    nop
    add hl, bc
    dec c
    add hl, de
    nop
    ld b, $19
    ld bc, $1906
    ld [bc], a
    ld b, $0a
    ld d, $1e
    dec b
    call Call_01a_6cec
    ldh [$ff84], a
    ld hl, $6d5f
    call Call_01a_6d77
    ldh a, [$ff84]
    cp $03
    ld a, $40
    jr c, jr_01a_6d5b

    ld a, $c0

jr_01a_6d5b:
    ld e, $45
    ld [de], a
    ret


    ld hl, sp-$01
    jr z, jr_01a_6d63

jr_01a_6d63:
    ld hl, sp-$01
    ld c, b
    nop
    ld hl, sp-$01
    ld l, b
    nop
    xor b
    nop
    jr z, jr_01a_6d6f

jr_01a_6d6f:
    xor b
    nop
    ld c, b
    nop
    xor b
    nop
    ld l, b
    nop

Call_01a_6d77:
Jump_01a_6d77:
    push bc
    add a
    add a
    add l
    ld l, a
    jr nc, jr_01a_6d7f

    inc h

jr_01a_6d7f:
    ld e, $04
    ld bc, $db51
    ld a, [bc]
    inc bc
    add [hl]
    inc hl
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    adc [hl]
    inc hl
    ld [de], a
    inc e
    inc e
    ld a, [bc]
    inc bc
    add [hl]
    inc hl
    ld [de], a
    inc e
    ld a, [bc]
    adc [hl]
    ld [de], a
    pop bc
    ret


    rrca
    ld h, b
    ld a, [de]
    rrca
    ld h, c
    nop
    add hl, de
    nop
    ld [$0119], sp
    ld [$a206], sp
    ld l, l
    dec c
    xor e
    ld l, [hl]
    inc b
    dec c
    ld [hl], a
    ld a, [de]
    dec c
    cpl
    ld l, [hl]
    dec c
    jp z, Jump_000_0d6f

    ld c, [hl]
    ld l, [hl]
    ld c, $03
    jp $d96d


    ld l, l
    ld [de], a
    ld l, [hl]
    ld bc, $0800
    nop
    ld bc, $7105
    inc h
    ld b, c
    ld h, $40
    nop
    ld [$fe88], sp
    ld a, [hl+]
    ld e, $05
    jr jr_01a_6ddd

    dec h
    ld l, [hl]
    ld bc, $0800
    nop

jr_01a_6ddd:
    ld [bc], a
    dec b
    dec b
    ld bc, $0800
    nop
    nop
    dec b
    ld [$0409], sp
    ld bc, $2600
    nop
    ld bc, $0008
    nop
    dec b
    ld [bc], a
    ld h, $00
    rst $38
    dec b
    ld [bc], a
    ld a, [bc]
    ld h, $00
    nop
    ld bc, $0800
    add b
    ld bc, $4405
    inc h
    ld b, c
    ld h, $40
    nop
    ld [$fdf0], sp
    ld a, [hl+]
    ld de, $3c05
    ld b, $25
    ld l, [hl]
    ld bc, $0800
    nop
    ld [bc], a
    dec b
    jr c, jr_01a_6e3e

    ld b, c
    ld h, $40
    nop
    ld [$fe00], sp
    ld a, [hl+]
    ld a, [hl+]
    dec b
    jr jr_01a_6e3e

    rrca
    rra
    add b
    ld a, [hl+]
    nop
    dec de
    inc sp
    ld c, [hl]
    inc bc
    ld e, $03
    call Call_01a_6cfb
    ld hl, $6e3a
    jp Jump_01a_6d77


    stop
    ld hl, sp-$01

jr_01a_6e3e:
    jr nc, jr_01a_6e40

jr_01a_6e40:
    ld hl, sp-$01
    ld d, b
    nop
    ld hl, sp-$01
    ld [hl], b
    nop
    ld hl, sp-$01
    sub b
    nop
    ld hl, sp-$01
    ld e, $03
    call Call_000_063b
    ld e, $27
    ld [de], a
    ret


    inc h
    dec [hl]
    rrca
    ld h, b
    ld a, [de]
    rrca
    ld h, c
    nop
    dec c
    xor e
    ld l, [hl]
    inc b
    jr jr_01a_6edc

    ld a, [de]
    dec c
    add c
    ld l, c
    jr jr_01a_6e6b

jr_01a_6e6b:
    ld bc, $0813
    nop
    ld [bc], a
    dec b
    ld a, [hl+]
    ld bc, $0814
    nop
    nop
    dec b
    inc b
    ld d, $0d
    xor e
    ld l, [hl]
    inc b
    inc sp
    ld a, c
    ld a, [de]
    ld [$fe00], sp
    ld a, [hl+]
    ld [$0209], sp
    ld bc, $0503
    db $10
    ld bc, $0502
    db $10
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0501
    db $10
    ld bc, $0500
    db $10
    ld a, [bc]
    ld bc, $0501
    ld [$500d], sp
    rrca
    ret


    xor b
    or d
    ld bc, $0501
    ld [bc], a
    ld d, $fa
    ld hl, $1edf
    ld b, [hl]
    ld [de], a
    ret


    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld a, [$db60]
    cp $02
    ld bc, $6edd
    jr z, jr_01a_6ecc

    cp $04
    jr z, jr_01a_6ecc

    ld bc, $6ecf

jr_01a_6ecc:
    jp Jump_000_255b


    rst $38
    nop
    sbc e
    ld c, l
    inc bc
    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a

jr_01a_6edc:
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rst $38
    dec c
    inc b
    ld a, b
    ld [hl], l
    inc c
    rrca
    ld h, b
    ld [$610f], sp
    ret nz

    rrca
    ld e, [hl]
    ld [$5f0f], sp
    ld [$e103], sp
    ld l, a
    ld e, d
    dec c
    ld h, b
    ld h, c
    ld c, $07
    inc de
    ld l, a
    dec de
    ld l, a
    dec h
    ld l, a
    dec hl
    ld l, a
    sbc h
    ld l, a
    sbc $6f
    inc h
    ld a, [de]
    rrca
    add hl, sp
    ld b, c
    ld b, $2f
    ld l, d
    dec c
    ld b, h
    ld l, l
    ld h, $c0
    nop
    add hl, de
    nop
    rst $38
    ld d, $0f
    ld b, [hl]
    nop
    ld bc, $0000
    dec c
    cpl
    ld l, [hl]
    dec c
    jp z, Jump_000_0d6f

    ld c, [hl]
    ld l, [hl]
    ld c, $03
    inc a
    ld l, a
    ld e, h
    ld l, a
    ld a, h
    ld l, a
    ld bc, $0800
    nop
    ld bc, $7105
    inc h
    ld b, c
    ld h, $10
    nop
    ld [$fe80], sp
    ld a, [hl+]
    inc c
    dec b
    inc a
    inc h
    ld b, c
    ld h, $10
    nop
    ld [$fe80], sp
    ld a, [hl+]
    inc de
    dec b
    inc a
    ld d, $01
    nop
    ld [$0180], sp
    dec b
    ld c, e
    inc h
    ld b, c
    ld h, $60
    nop
    ld [$fe00], sp
    ld a, [hl+]
    add hl, de
    dec b
    jr z, jr_01a_6f94

    ld b, c
    ld h, $40
    nop
    ld [$fe80], sp
    ld a, [hl+]
    inc de
    dec b
    inc a
    ld d, $01
    nop
    ld [$0200], sp
    dec b
    jr c, jr_01a_6fa8

    ld b, c
    ld h, $60
    nop
    ld [$fe00], sp
    ld a, [hl+]
    add hl, de
    dec b
    jr z, jr_01a_6fb4

    ld b, c
    ld h, $40
    nop

jr_01a_6f94:
    ld [$fe80], sp
    ld a, [hl+]
    inc de
    dec b
    inc a
    ld d, $24
    ld a, [de]
    dec c
    add c
    ld l, c
    jr jr_01a_6fa3

jr_01a_6fa3:
    dec c
    jp z, Jump_000_016f

    dec d

jr_01a_6fa8:
    ld [$0200], sp
    dec b
    dec hl
    inc h
    ld b, c
    ld bc, $2615
    ld h, b
    nop

jr_01a_6fb4:
    ld [$fe80], sp
    ld a, [hl+]
    inc de
    dec b
    jr z, jr_01a_6fe0

    ld b, c
    ld bc, $2615
    ld b, b
    nop
    ld [$ff00], sp
    ld a, [hl+]
    inc c
    dec b
    ld d, b
    ld d, $fa
    ld d, c
    db $db
    add $50
    ld h, a
    ld e, $04
    ld a, [de]
    sub h
    ld a, $40
    jr c, jr_01a_6fda

    ld a, $c0

jr_01a_6fda:
    ld e, $45
    ld [de], a
    ret


    ld b, $81

jr_01a_6fe0:
    ld l, [hl]
    xor a
    ld e, $15
    ld [de], a
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld bc, $701a
    call Call_000_255b
    ld a, [$dd2c]
    bit 3, a
    ret z

    ld e, $10
    call Call_000_10aa
    ld hl, $7cd8
    ld a, $03
    call Call_000_05cf
    ld hl, $df23
    inc [hl]
    ld a, [$db60]
    ld c, a
    ld b, $00
    ld hl, $df2c
    add hl, bc
    inc [hl]
    ld h, d
    jp Jump_000_0bba


    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    nop
    ld bc, $000f
    ld b, h
    rrca
    rlca
    inc bc
    ld a, a
    nop
    rst $38
    ccf
    ld b, d
    rst $38
    ld [hl], b
    ld [bc], a
    rst $38
    ccf
    ld a, a
    ld h, $00
    rlca
    di
    nop
    rst $38
    db $e3
    rst $38
    ld [hl], a
    rst $38
    rst $20
    push bc
    nop
    ld a, [hl+]
    ld b, c
    rst $38
    ld [hl], a
    ld bc, $7fff
    call nz, Call_000_3600
    ld h, $00
    inc bc
    rst $38
    nop
    rst $38
    rst $20
    ld b, c
    rst $38
    ld [hl], a
    add $00
    ld c, d
    nop
    ld a, $85
    nop
    ld [hl-], a
    adc h
    nop
    ld a, [hl-]
    ld c, $3b
    rst $38
    cp e
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    add hl, sp
    rst $38
    nop
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    add h
    nop
    ld [hl], $00
    ld [hl], e
    adc d
    nop
    inc a
    inc c
    cp c
    rst $38
    cp e
    rst $38
    cp c
    rst $38
    cp b
    rst $38
    di
    rst $38
    nop
    rst $38
    sbc a
    ld b, d
    rst $38
    cp b
    ld bc, $9fff
    add a
    nop
    inc a
    inc de
    db $fc
    nop
    db $fc
    ld hl, sp-$04
    ret nz

    db $fc
    ldh a, [$fffc]
    ld a, b
    db $fc
    ldh a, [rIE]
    nop
    rst $38
    cp a
    rst $38
    jr c, @+$01

    ccf
    jp $b600


    nop
    rst $38
    ld [hl-], a
    nop
    ld b, $c0
    nop
    ret nz

    add b
    ret nz

    nop
    add b
    add [hl]
    nop
    rst $08
    nop
    nop
    ld b, [hl]
    nop
    ld bc, $00d3
    rst $08
    ld [bc], a
    nop
    rst $38
    db $fc
    and h
    nop
    ld [hl-], a
    inc bc
    db $fc
    rst $38
    ldh [$ffe1], a
    sub l
    nop
    db $ed
    inc b
    cp $ff
    ldh [rIE], a
    db $fc
    jp Jump_000_2601


    nop
    rst $38
    sbc l
    nop
    db $ed
    ld bc, $ffee
    sbc h
    ld bc, $020d
    pop af
    ldh [$fff1], a
    sub l
    nop
    db $ed
    nop
    ld a, [hl]
    ld b, d
    rst $38
    ldh [rSB], a
    rst $38
    ld a, [hl]
    sbc b
    ld bc, $434c
    jr c, @+$7e

    ld [hl-], a
    nop
    inc b
    ccf
    nop
    ccf
    ld e, $3f
    ld b, e
    ld c, $1f
    sub l
    nop
    db $ed
    ld b, e
    xor $ff
    nop
    ld a, h
    sub e
    nop
    cp h
    nop
    cp $88
    ld bc, $0201
    cp $e0
    ldh a, [$ff95]
    nop
    db $ed
    and [hl]
    nop
    ld d, e
    ld bc, $eeff
    sbc h
    ld bc, $032c
    xor $ff
    db $fc
    cp $99
    ld bc, $01cd
    ld a, h
    cp $83
    ld bc, $b7a9
    ld bc, $00ed
    ld [hl], b
    cp h
    ld [bc], a
    ld b, [hl]
    nop
    ld a, $bb
    ld bc, $01e4
    ld hl, sp+$00
    and a
    ld bc, $b5c6
    ld bc, $ffca

Jump_01a_714e:
    inc hl
    nop
    nop
    db $10
    inc hl
    jr c, jr_01a_7181

    ld a, h
    rlca
    jr c, jr_01a_71d5

    jr c, @+$3a

    db $10
    jr c, jr_01a_715e

jr_01a_715e:
    nop
    and [hl]
    nop
    nop
    and [hl]
    nop
    ld de, $0801
    inc e
    add hl, sp
    nop
    ld bc, $ff7e
    add hl, sp
    nop
    add hl, bc
    inc bc
    nop
    dec bc
    inc c
    scf
    jr c, jr_01a_71a6

    jr nc, @+$19

    jr @+$43

    dec bc
    inc c
    ld [$1817], sp
    cpl

jr_01a_7181:
    jr nc, jr_01a_719e

    inc e
    dec b
    ld b, $01
    jr z, jr_01a_7189

jr_01a_7189:
    inc bc
    ld hl, sp+$10
    ld hl, sp+$20
    ld b, c
    ld hl, sp+$40
    ld b, c
    ld hl, sp-$80
    nop
    ld hl, sp-$38
    nop
    adc a
    ld bc, $18f0
    add h
    nop

jr_01a_719e:
    ld h, b
    inc d
    inc bc
    ld c, h
    ld c, a
    ld [hl-], a
    ccf
    inc [hl]

jr_01a_71a6:
    ccf
    ld c, h
    ld a, a
    ld e, c
    ld a, [hl]
    and e
    db $fc
    add a
    ld hl, sp-$24
    and e
    sub b
    rst $28
    add b
    rst $38
    ld b, c
    ld b, b
    ld a, a
    rrca
    jr nz, @+$41

    jr jr_01a_71dc

    rlca
    rlca
    ldh [$ffe0], a
    sbc b
    ld a, b
    inc b
    db $fc
    jp nz, $823e

    ld a, [hl]
    ld b, c
    add c
    ld a, a
    ld b, d
    ld bc, $abff
    nop
    or h
    rst $38
    ldh [$ff2c], a

jr_01a_71d5:
    nop
    nop
    dec b
    rlca
    jr @+$21

    inc bc

jr_01a_71dc:
    inc e
    ld l, h
    ld [hl], e
    db $10
    ld l, a
    db $e3
    call c, $db24
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38

jr_01a_71eb:
    ld b, b
    ld a, a
    ld b, e
    ld a, a
    ld h, h
    ld a, h
    ld a, b
    ld a, b
    jr nc, jr_01a_7225

    nop
    nop
    ret nz

    ret nz

    jr nc, jr_01a_71eb

    adc b
    ld a, b
    ld [hl], h
    sbc h
    dec bc
    rst $38
    dec bc
    ld b, c
    db $fd
    inc bc
    inc bc
    db $fd
    ld c, $fe
    inc c
    ld [hl+], a
    db $fc
    dec hl
    nop
    ld b, $05
    rlca
    db $10
    rra
    inc bc
    inc a
    inc l
    add e
    nop
    add hl, bc
    inc c
    db $fc
    nop
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    inc e
    rra

jr_01a_7225:
    inc bc
    inc bc
    daa
    nop
    rrca
    add b
    add b
    ld h, b
    ldh [$ff90], a
    ld [hl], b
    ld l, b
    sbc b
    inc d
    db $ec
    inc b
    db $fc
    sub d
    ld a, [hl]
    ld a, [bc]
    cp $85
    nop
    inc l
    rlca
    ld d, $fe
    ld hl, sp-$08
    jr nc, jr_01a_7274

    nop
    nop
    add [hl]
    nop
    nop
    nop
    inc a
    add e
    nop
    ld [$c303], sp
    db $fc
    inc b
    ei
    add e
    nop
    db $10
    add hl, bc
    ld b, d
    ld a, a
    ld bc, $333f
    ccf
    rrca
    rrca
    ld bc, $8901
    nop
    ld h, b
    dec d
    ld c, b
    cp b
    ld [$04f8], sp
    db $fc
    inc h
    db $fc
    inc d
    db $fc

jr_01a_726f:
    ld d, $fa
    ld b, $fa
    inc c

jr_01a_7274:
    db $f4
    jr jr_01a_726f

    ldh [$ffe0], a
    add b
    add b
    rst $38
    dec de
    ld a, a
    ld a, a
    ld h, [hl]
    ld e, c
    ld h, e
    ld e, h
    inc sp
    inc l
    ld sp, $112e
    ld e, $1b
    inc d
    rra
    db $10
    ld c, $09
    inc c
    dec bc
    inc b
    rlca
    ld b, $05
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc hl
    ld bc, $fe00
    ld b, c
    cp $1a
    ld b, $f6
    inc [hl]
    db $ec
    or h
    ld l, h
    add sp, $78
    ld b, c
    add sp, -$08
    ld b, c
    ld [hl], b
    ldh a, [rSTAT]
    ld h, b
    ldh [rNR44], a
    ret nz

    inc hl
    add b
    rst $38
    ld a, [hl+]
    nop
    ld b, c
    ld [bc], a
    nop
    nop
    ld [$0041], sp
    ld c, h
    dec c
    ld [$4842], sp
    ld b, $48
    ld [hl], $7c
    add e
    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    ld b, c
    ld b, $f9
    ld b, c
    nop
    rst $38
    ldh [rNR51], a
    jp $66bd


    db $db
    inc h
    rst $38
    and l
    ld a, [hl]
    add c
    ld a, [hl]
    inc a
    rst $20
    jr @+$01

    jp $ffff


    inc a
    inc a
    jp Jump_01a_7e00


    jr c, jr_01a_732e

    ld a, l
    ld b, [hl]
    rst $38
    adc d
    cp $87
    rst $38
    add l
    push af
    adc $78
    ld a, e
    nop
    ld bc, $20e4
    nop
    ld c, $80
    ld e, $de
    xor a
    ld [hl], e
    rst $28
    sub c
    ld a, a
    pop bc
    ccf
    pop hl
    ld a, [hl-]
    and $1c
    db $f4
    call Call_01a_5b00
    ld b, c
    ld bc, $081e
    ld [bc], a
    dec e
    dec b
    dec de
    ld a, [$7c07]
    rlca
    ld [hl], h
    ld b, c
    rrca
    jr c, jr_01a_7324

jr_01a_7324:
    rrca
    ld b, c
    jr jr_01a_7357

    add hl, bc
    inc d
    ld l, a
    inc e
    ld h, a
    ld a, [de]

jr_01a_732e:
    rst $20
    dec e
    inc bc
    ld e, $01
    ld b, c
    rra
    nop
    sbc c
    nop
    ld c, [hl]
    add hl, bc
    ld a, [hl]
    add c
    ld a, [hl]
    rst $38
    add e
    rst $38
    rlca
    db $fc
    inc c
    ld a, [$0c41]
    ld hl, sp+$04
    inc c
    ld a, [$fc07]
    inc bc
    ld b, [hl]
    rst $38
    nop
    ld bc, $81ff
    ld b, c
    rst $38
    ld a, [hl]
    nop

jr_01a_7357:
    add c
    jr nc, jr_01a_735a

jr_01a_735a:
    ld b, c
    and b
    nop
    inc b
    add b
    add b
    nop
    add b
    jr z, jr_01a_73a5

    add b
    ld a, b
    rlca
    ret z

jr_01a_7368:
    or d
    ld l, b
    jp nc, $e038

    jr c, @-$1c

    ld b, d
    jr jr_01a_7368

    add l
    nop
    adc c
    dec d
    nop
    inc b
    nop
    ld b, $00
    rla
    inc b
    inc de
    inc b
    inc bc
    dec b
    ld [bc], a
    rlca
    add hl, de
    ld b, $5b
    inc c
    ld [hl], a
    ld c, h
    scf
    jr c, @+$51

    ld b, c
    jr jr_01a_73be

    adc e
    nop
    db $e4
    ld b, c
    nop
    rst $38
    nop
    inc h
    add h
    nop
    rst $18
    nop
    ld [$0088], sp
    scf
    dec c
    ld [$1d0f], sp
    ld b, $37

jr_01a_73a5:
    ld a, [bc]
    jr c, jr_01a_73af

    dec de
    dec b
    ld bc, $0002
    inc bc
    sub l

jr_01a_73af:
    nop
    ld c, [hl]
    rlca
    add b
    ld bc, $03c0

jr_01a_73b6:
    ldh [rTAC], a
    ldh a, [rIF]
    add e
    nop
    db $dd
    ld [bc], a

jr_01a_73be:
    cp l
    ld a, [hl]
    jp $ff46


    nop
    ld a, [hl+]
    nop
    inc bc
    ld h, [hl]
    add c
    ld h, [hl]
    jp $c342


    add c
    inc b
    jp Jump_01a_7ea5


    jp $903c


    ld bc, $a39b
    nop
    adc d
    ld c, $c0
    add b
    add b
    nop
    stop
    jr c, jr_01a_73f3

jr_01a_73e3:
    jr nc, jr_01a_7401

    inc a
    ld e, b
    db $ec
    jr c, jr_01a_73b6

    ld b, d
    ld hl, sp+$0c

jr_01a_73ed:
    inc c
    ld hl, sp+$10
    db $fc
    jr jr_01a_73e3

jr_01a_73f3:
    jr nz, jr_01a_73ed

    ld d, b
    ldh [$ffa0], a
    ret nz

    add b
    ld b, b
    dec a
    nop
    inc bc
    ld e, $1e
    dec a

jr_01a_7401:
    inc hl
    ld b, c
    ld a, a
    ld b, c
    rlca
    ld b, a
    ld a, a
    ld a, a
    ld a, c
    ld c, $1f
    inc c
    rla
    ld b, d
    jr @+$11

    inc bc
    dec de
    rrca
    ld d, $0d
    call nz, Call_000_2302
    nop
    jr jr_01a_745e

    rra
    db $10
    dec b
    ld e, $11
    dec d
    dec de
    ld c, $0e
    cp c
    nop
    ld e, b
    ld h, d
    ld bc, $0506
    ld b, $0b
    inc c
    rlca
    inc b
    rra
    ld b, c
    jr jr_01a_7444

    inc bc
    add hl, de
    rrca
    dec de
    ld c, $41
    rra
    dec c

jr_01a_743d:
    inc de
    rlca
    ld e, $0f
    ld b, $07
    ld a, [bc]

jr_01a_7444:
    inc bc
    dec b
    rlca
    inc b
    ld c, $0b
    rra
    ld de, $203f
    ld e, [hl]
    ld h, c
    ld a, a
    ld a, a
    sub e
    nop
    ld e, [hl]
    ldh [$ff2b], a
    ld b, b
    and b
    ldh [$ffd0], a
    jr nc, jr_01a_743d

    ld a, b

jr_01a_745e:
    ldh a, [$fffc]
    add b
    add b
    ld b, b
    add h
    nop
    add h
    ld a, [bc]
    adc [hl]
    ld d, h
    cp $8c
    halt
    db $fc
    and $1c
    ld [$0cfe], sp
    ld hl, sp+$18
    db $f4
    jr nc, @-$16

    ldh [$ffd0], a
    ld d, d
    or d
    ld a, a
    db $ed
    cp a
    pop bc
    cp $02
    db $fc
    db $fc
    jr nc, jr_01a_7485

jr_01a_7485:
    rrca
    adc c
    nop
    nop
    inc b
    ld hl, $0001
    dec c
    add h
    cpl
    ld a, [bc]
    rlca
    inc b
    rra
    and b
    jr @+$43

    nop
    ld a, [hl]
    ld c, c
    nop
    rst $38
    push bc
    ld [bc], a
    push hl
    nop
    nop
    sub l
    ld [bc], a
    and b
    ld bc, $a040
    and a
    nop
    ld c, [hl]
    rlca
    add hl, bc
    rst $38
    ld l, c
    sbc a
    ld bc, $1eff
    di
    ld b, c
    sbc a
    cp $03
    xor [hl]
    db $dd
    sbc h
    db $e3
    ld b, c
    add b
    rst $38
    dec bc
    ldh [rIE], a
    rst $18
    cp a
    rra
    jr nz, jr_01a_7504

    ld [hl+], a
    inc a
    inc h
    jr c, jr_01a_7503

    ld sp, $0d00
    ccf
    ld b, b
    cp a
    ld a, a
    adc $f1
    nop
    rst $38
    ld [$1cf7], sp
    ei
    dec c
    rst $38
    add e
    inc bc
    jr nz, @+$0b

    add c
    rst $38
    add d
    rst $38
    rst $28
    db $f4
    db $f4
    dec sp
    ld hl, sp+$4f
    ld b, c
    ld hl, sp+$0f
    dec c
    ldh a, [$ff1f]
    ldh [rIE], a
    cp a
    ld a, a
    ccf
    ld b, b
    add a
    add a
    add l

jr_01a_74f9:
    add [hl]
    inc bc
    inc bc
    rst $38
    dec c
    rlca
    rlca
    ld a, c
    ld a, [hl]
    ld [hl], a

jr_01a_7503:
    ld e, b

jr_01a_7504:
    ld [hl], a
    ld a, b
    ld c, a
    ld [hl], b
    cp [hl]
    pop bc
    cp l
    jp $fb41


    add a
    dec de
    cp e
    rst $00
    cp l
    jp Jump_01a_714e


    ld [hl], a
    ld a, b
    ld [hl], a
    ld e, b
    ld a, c
    ld a, [hl]
    rlca
    rlca
    nop
    nop
    ld h, e
    ld h, e
    ld a, l
    ld e, [hl]
    scf
    jr c, jr_01a_7556

    jr nc, jr_01a_7568

    jr nz, @+$61

    ld h, c
    ld b, c
    ld a, a
    ld b, e
    dec bc
    ld e, a
    ld h, e
    ccf
    ld hl, $302f
    scf
    jr c, jr_01a_75b6

    ld e, [hl]
    ld h, e
    ld h, e
    ld sp, $0700
    ld hl, sp-$08
    ld b, $fe
    ld sp, hl
    rlca
    cp $01
    ld b, e
    rst $38
    nop
    dec h
    nop
    dec bc
    rlca
    rlca
    jr @+$21

    daa
    jr c, jr_01a_75b3

    ld h, b
    cp a

jr_01a_7556:
    ret nz

    ld a, a
    add b
    ld b, [hl]
    rst $38
    nop
    dec h
    nop
    add hl, bc
    inc bc
    inc bc
    inc c
    rrca
    inc sp
    inc a
    ld c, a
    ld [hl], b
    ld e, a

jr_01a_7568:
    ld h, b
    ld b, l
    cp a
    ret nz

    ld b, c
    ld e, a
    ld h, b
    ld bc, $203f
    ld b, d
    cpl
    jr nc, jr_01a_74f9

    nop
    adc h
    sbc c
    nop
    ld l, h
    rlca
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $5d
    ld h, e
    ld b, c
    cp l
    jp $ba05


    add $44
    ld a, h
    jr c, jr_01a_75c6

    dec hl
    nop
    add e
    nop
    add [hl]
    inc bc
    inc de
    inc e
    rla
    jr jr_01a_75dc

    cpl
    jr nc, jr_01a_75a1

    rla
    jr @+$15

    inc e
    inc c

jr_01a_75a1:
    rrca
    push bc
    nop
    add a
    xor c
    nop
    nop
    dec c
    dec a
    jp $e3dd


    rst $28
    pop af
    rst $28
    ld sp, $33ed

jr_01a_75b3:
    db $dd
    db $e3
    ld [hl-], a

jr_01a_75b6:
    adc $b4
    nop
    jr jr_01a_75c3

    add $fe
    ldh [c], a
    cp $22
    ld a, [$fc26]

jr_01a_75c3:
    call nz, Call_000_00b5

jr_01a_75c6:
    ld [hl], $07
    rrca
    rrca
    ld [hl], b
    ld a, a
    adc a
    ldh a, [$ff7f]
    add b
    sub e
    nop
    or h
    add a
    nop
    ldh [c], a
    ld bc, $3827
    add a
    nop
    and [hl]

jr_01a_75dc:
    add l
    nop
    adc [hl]
    xor c
    nop
    jp nz, $9a03

    and $bd
    jp Jump_000_0090


    xor [hl]
    db $e4
    jr nz, jr_01a_75ed

jr_01a_75ed:
    rst $38
    ld hl, sp+$75
    dec d
    halt
    ld a, [hl-]
    halt
    ld b, a
    halt
    ld h, b
    halt
    rlca
    ld hl, sp+$17
    inc c
    nop
    ld hl, sp+$0f
    ld a, [bc]
    nop
    ld hl, sp+$07
    ld [$f800], sp
    rst $38
    ld b, $00
    ld hl, sp-$09
    inc b
    nop
    ld hl, sp-$11
    ld [bc], a
    nop
    ld hl, sp-$19
    nop
    ld bc, $fd09
    ld a, [de]
    inc l
    nop
    db $fd
    ld [de], a
    ld a, [de]
    nop
    db $fd
    ld a, [bc]
    jr jr_01a_7622

jr_01a_7622:
    db $fd
    ld [bc], a
    ld [de], a
    nop
    db $fd
    ld a, [$0016]
    db $fd
    ldh a, [c]
    inc d
    nop
    db $fd
    ld [$0012], a
    db $fd
    ldh [c], a
    stop
    db $fd
    jp c, $010e

    inc bc
    db $fd
    inc bc
    jr nz, jr_01a_763f

jr_01a_763f:
    db $fd
    ei
    ld e, $00
    db $fd
    di
    inc e
    ld bc, $fd06
    dec c
    ld h, $00
    db $fd
    dec b
    inc h
    nop
    db $fd
    db $fd
    ld [hl+], a
    nop
    db $fd
    push af
    ld [de], a
    nop
    db $fd
    push hl
    ld c, $00
    db $fd
    db $ed
    inc d
    ld bc, $fd03
    ld b, $2c
    nop
    db $fd
    cp $2a
    nop
    db $fd
    or $28
    ld bc, $767f
    adc h
    halt
    sbc c
    halt
    and [hl]
    halt
    or a
    halt
    ret z

    halt
    pop de
    halt
    jp c, $e376

    halt
    inc bc
    dec bc
    cp $00
    nop
    db $ed
    dec b
    nop
    nop
    db $ed
    ld a, [$0100]
    inc bc
    dec bc
    cp $00
    nop
    pop af
    inc b
    ld [bc], a
    nop
    pop af
    ld sp, hl
    ld [bc], a
    ld bc, $0a03
    db $fd
    ld [bc], a
    nop
    pop af
    inc b
    inc b
    nop
    pop af
    ld sp, hl
    inc b
    ld bc, $0904
    db $fd
    ld [$0900], sp
    push af
    ld b, $00
    db $ed
    dec b
    nop
    nop
    db $ed
    ld a, [$0100]
    inc b
    add hl, bc
    ei
    ld [$0900], sp
    di
    ld b, $00
    db $ed
    dec b
    nop
    nop
    db $ed
    ld a, [$0100]
    ld [bc], a
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$08
    ld a, [bc]
    ld bc, $f802
    nop
    inc c
    ld b, b
    ld hl, sp-$08
    ld a, [bc]
    ld b, c
    ld [bc], a
    ld hl, sp-$08
    inc c
    ld h, b
    ld hl, sp+$00

jr_01a_76e1:
    ld a, [bc]
    ld h, c
    ld [bc], a
    ld hl, sp-$08
    inc c
    jr nz, jr_01a_76e1

    nop
    ld a, [bc]
    ld hl, $76f2
    ei
    halt
    inc b
    ld [hl], a
    ld [bc], a
    ld hl, sp+$00
    ld [bc], a
    nop
    ld hl, sp-$08
    nop
    ld bc, $f802
    nop
    ld b, $00
    ld hl, sp-$08
    inc b
    ld bc, $f802
    nop
    ld a, [bc]
    nop
    ld hl, sp-$08
    ld [$0f01], sp
    ld [hl], a
    ld [bc], a
    ld hl, sp+$00
    ld [bc], a
    nop
    ld hl, sp-$08
    nop
    ld bc, $7742
    ld e, e
    ld [hl], a
    ld [hl], h
    ld [hl], a
    adc l
    ld [hl], a
    and [hl]
    ld [hl], a
    cp a
    ld [hl], a
    ret c

    ld [hl], a
    pop af
    ld [hl], a
    ld a, [bc]
    ld a, b
    inc hl
    ld a, b
    inc a
    ld a, b
    ld d, l
    ld a, b
    ld l, [hl]
    ld a, b
    add a
    ld a, b
    and b
    ld a, b
    cp c
    ld a, b
    jp nc, $eb78

    ld a, b
    inc b
    ld a, c
    dec e
    ld a, c
    ld a, [hl+]
    ld a, c
    ld b, $f1
    db $f4
    ld [de], a
    nop
    pop af
    inc b
    stop
    ld bc, $0404
    jr nz, jr_01a_7751

    db $f4

jr_01a_7751:
    inc b

jr_01a_7752:
    nop
    ld a, [$02fc]
    nop
    ld [$00fc], a
    ld bc, $f106
    inc b
    ld [de], a
    jr nz, jr_01a_7752

    db $f4
    db $10
    jr nz, jr_01a_7766

    inc b

jr_01a_7766:
    inc b
    jr nz, jr_01a_776a

    db $f4

jr_01a_776a:
    inc b
    nop
    ld a, [$02fc]
    nop
    ld [$00fc], a
    ld hl, $ff06
    db $f4
    ld [de], a
    ld b, b
    rst $38
    inc b
    db $10
    ld b, b
    ld b, $fc
    nop
    ld b, b
    rst $28
    db $f4
    ld b, $20
    rst $28
    inc b
    ld b, $00
    or $fc
    inc d
    ld b, c
    ld b, $ff
    inc b
    ld [de], a
    ld h, b
    rst $38
    db $f4
    db $10
    ld h, b
    ld b, $fc
    nop
    ld h, b
    rst $28
    db $f4
    ld b, $20
    rst $28
    inc b
    ld b, $00
    or $fc
    inc d
    ld b, c
    ld b, $ef
    inc b
    ld d, $60
    rst $28
    db $f4
    ld d, $40
    rst $38
    db $f4
    ld [de], a
    ld b, b
    rst $38
    inc b
    db $10
    ld b, b
    ld b, $fc
    nop
    ld b, b
    or $fc
    inc d
    ld b, c
    ld b, $00
    db $f4
    ld a, [bc]
    nop
    nop
    db $fc
    jr @+$62

    nop
    inc b
    ld [$f060], sp
    inc b
    ld a, [bc]
    ld h, b
    ldh a, [$fffc]
    jr jr_01a_77d4

jr_01a_77d4:
    ldh a, [$fff4]
    ld [$0601], sp
    nop
    inc b
    ld a, [bc]
    jr nz, jr_01a_77de

jr_01a_77de:
    db $fc
    jr jr_01a_7821

    nop
    db $f4
    ld [$f040], sp
    db $f4
    ld a, [bc]
    ld b, b
    ldh a, [$fffc]
    jr jr_01a_780d

    ldh a, [rDIV]
    ld [$0621], sp
    db $fd
    inc bc
    ld a, [hl+]
    nop
    db $ed
    inc bc
    jr z, jr_01a_77fa

jr_01a_77fa:
    db $fd
    ei
    ld [hl], $00
    db $fd
    di
    ld h, $00
    db $ed
    ei
    inc [hl]
    nop
    db $ed

Jump_01a_7807:
    di
    inc h
    ld bc, $ed06
    inc b

jr_01a_780d:
    jr z, jr_01a_780f

jr_01a_780f:
    db $ed
    db $fc
    inc [hl]
    nop
    db $fd
    inc b
    jr nc, jr_01a_7817

jr_01a_7817:
    db $fd
    db $fc
    ld [hl-], a
    nop
    db $fd

jr_01a_781c:
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $f4

jr_01a_7821:
    jr nz, @+$03

    ld b, $f3
    db $fc
    ld a, [de]
    jr nz, jr_01a_781c

    db $f4
    ld e, $60
    di
    inc b
    ld e, $40
    inc bc
    inc b
    ld e, $00
    inc bc
    db $f4
    ld e, $20
    inc bc
    db $fc
    ld c, $21
    ld b, $f3
    inc b
    inc e
    nop
    di
    db $fc
    inc c
    nop
    di
    db $f4
    ld e, $60
    inc bc
    db $f4
    ld e, $20
    inc bc
    inc b
    ld e, $00
    inc bc
    db $fc
    ld c, $01
    ld b, $f3
    db $fc
    ld c, $40
    ldh a, [$ff03]
    jr z, jr_01a_785e

jr_01a_785e:
    inc bc
    db $fc
    ld c, $00
    nop
    inc bc
    jr nc, jr_01a_7866

jr_01a_7866:
    di
    db $f4
    ld e, $60
    inc bc
    db $f4
    ld e, $21
    ld b, $03
    db $fc
    ld c, $00
    ld b, $03
    jr z, jr_01a_78b7

    di
    db $fc
    ld c, $40
    or $03
    jr nc, jr_01a_78bf

    inc bc
    db $f4
    ld e, $20
    di
    db $f4
    ld e, $61
    ld b, $03
    inc b
    inc e
    ld b, b
    inc bc
    db $fc
    inc c
    ld b, b
    inc bc
    db $f4
    ld e, $20
    di
    db $f4
    ld e, $60
    di
    inc b
    ld e, $40
    di
    db $fc
    ld c, $41
    ld b, $03
    db $fc
    ld a, [de]
    ld h, b
    inc bc
    db $f4
    ld e, $20
    inc bc
    inc b
    ld e, $00
    di
    inc b
    ld e, $40
    di
    db $f4
    ld e, $60
    di
    db $fc

jr_01a_78b7:
    ld c, $61
    ld b, $03
    db $f4
    inc e
    ld h, b
    inc bc

jr_01a_78bf:
    db $fc
    inc c
    ld h, b
    inc bc
    inc b
    ld e, $00
    di
    inc b
    ld e, $40
    di
    db $f4
    ld e, $60
    di
    db $fc
    ld c, $61
    ld b, $03
    db $fc
    ld c, $20
    ld b, $f5
    jr z, jr_01a_793b

    di
    db $fc
    ld c, $60
    or $f5
    jr nc, jr_01a_7943

    inc bc
    inc b
    ld e, $00
    di
    inc b
    ld e, $41
    ld b, $f3
    db $fc
    ld c, $60
    ldh a, [$fff5]
    jr z, @+$22

    inc bc
    db $fc
    ld c, $20
    nop
    push af
    jr nc, @+$22

    di

jr_01a_78fd:
    inc b
    ld e, $40
    inc bc

jr_01a_7901:
    inc b
    ld e, $01
    ld b, $f3
    db $f4
    inc e
    jr nz, jr_01a_78fd

    db $fc
    inc c
    jr nz, jr_01a_7901

    inc b
    ld e, $40
    inc bc
    inc b
    ld e, $00
    inc bc
    db $f4
    ld e, $20
    inc bc
    db $fc
    ld c, $21
    inc bc
    db $f4
    db $f4
    ld l, $00
    db $f4
    inc b
    ld l, $00
    db $fc
    db $fc
    ld l, $01
    ld [bc], a
    db $f4
    db $ec
    inc l
    nop
    db $f4
    inc c
    inc l
    ld hl, $794f
    ld e, b
    ld a, c
    ld h, c
    ld a, c
    ld l, d
    ld a, c

jr_01a_793b:
    ld [hl], e
    ld a, c
    ld a, h
    ld a, c
    add l
    ld a, c
    adc [hl]
    ld a, c

jr_01a_7943:
    sub a
    ld a, c
    xor b
    ld a, c
    cp c
    ld a, c
    jp z, $db79

    ld a, c
    db $ec
    ld a, c
    ld [bc], a
    ld hl, sp+$00
    stop
    ld hl, sp-$08
    nop
    ld bc, $f802
    nop
    ld [de], a
    nop
    ld hl, sp-$08
    ld [bc], a
    ld bc, $f802
    nop
    db $10
    ld b, b
    ld hl, sp-$08
    nop
    ld b, c
    ld [bc], a
    ld hl, sp+$00
    ld [de], a
    ld b, b
    ld hl, sp-$08

jr_01a_7971:
    ld [bc], a
    ld b, c
    ld [bc], a
    ld hl, sp+$00
    inc b
    jr nz, jr_01a_7971

    ld hl, sp+$04
    ld bc, $f802
    nop
    inc d
    jr nz, @-$06

    ld hl, sp+$14
    ld bc, $f802
    nop
    ld b, $20
    ld hl, sp-$08
    ld b, $01
    ld [bc], a
    ldh a, [rP1]
    ld d, $20
    ldh a, [$fff8]
    ld d, $01
    inc b
    ld hl, sp+$00
    ld a, [bc]
    jr nz, @-$16

    nop

jr_01a_799e:
    ld [$f820], sp
    ld hl, sp+$0a
    nop
    add sp, -$08
    ld [$0401], sp
    ldh a, [$fff0]
    inc c
    jr nz, jr_01a_799e

    ld [$000c], sp
    ld hl, sp+$00
    jr jr_01a_79d5

    ld hl, sp-$08
    jr jr_01a_79ba

    inc b

jr_01a_79ba:
    xor $ee
    inc c
    jr nz, @-$10

    ld a, [bc]
    inc c
    nop
    ld hl, sp+$00
    jr jr_01a_79e6

    ld hl, sp-$08
    jr jr_01a_79cb

    inc b

jr_01a_79cb:
    db $ec
    db $ec
    ld a, [de]
    nop
    db $ec
    inc c
    ld a, [de]
    nop
    ld hl, sp+$00

jr_01a_79d5:
    ld b, $20
    ld hl, sp-$08
    ld b, $01
    inc b
    db $ec
    db $eb
    ld a, [de]
    nop
    db $ec
    dec c
    ld a, [de]
    nop
    ld hl, sp+$00

jr_01a_79e6:
    ld b, $20
    ld hl, sp-$08
    ld b, $01
    inc b
    ldh a, [rP1]
    ld d, $20
    ldh a, [$fff8]
    ld d, $00
    ldh [rP1], a
    ld c, $20
    ldh [$fff8], a
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    dec l
    inc sp
    dec a
    ld [hl+], a
    ccf
    jr nz, jr_01a_7a3f

    jr nc, @+$19

    jr jr_01a_7a2b

    jr jr_01a_7a25

    ld [$0f0b], sp
    ld b, $05
    ld b, $05
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_01a_7a25:
    dec bc
    inc c
    rla
    jr jr_01a_7a49

    db $10

jr_01a_7a2b:
    cpl
    jr nc, jr_01a_7a6d

    jr nz, jr_01a_7a6f

    ld [hl+], a
    ccf
    ld hl, $203f
    rra
    db $10
    inc de
    inc e
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop

jr_01a_7a3f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08

jr_01a_7a49:
    halt
    adc [hl]
    db $fd
    dec hl
    cp $29
    add hl, sp
    xor $ff
    nop
    rst $38
    db $10
    rst $38
    db $10
    ld a, l
    add e
    cp $ff
    nop
    rst $38
    nop
    rst $38
    jp $c3bd


    rst $38
    jr @+$01

    srl h
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c

jr_01a_7a6d:
    rst $38
    ld b, d

jr_01a_7a6f:
    rst $38
    ld b, d
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop

jr_01a_7a7f:
    nop
    nop

jr_01a_7a81:
    nop
    nop

jr_01a_7a83:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b

jr_01a_7a90:
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    jr nz, jr_01a_7a7f

    jr nz, jr_01a_7a81

    jr nz, jr_01a_7a83

    db $10
    ldh a, [$ffd0]
    jr nc, jr_01a_7a90

    jr @-$06

    ld [$0cf4], sp
    db $fc
    inc b
    db $fc
    ld b, h
    db $fc
    add h
    db $fc
    inc b
    ld hl, sp+$08
    ret z

    jr c, jr_01a_7aea

    ldh a, [$ffc0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101

jr_01a_7aea:
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    rlca
    inc e
    dec de
    inc a
    inc hl
    ld a, h
    ld b, e
    ld [hl], b
    ld c, a
    ld a, h
    ld b, e
    inc a
    inc sp
    ld c, $0f
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    dec e
    dec hl
    ld [hl], $3f
    jr nz, jr_01a_7b5b

    jr nz, jr_01a_7b4d

    jr nc, @+$3e

    inc sp
    ld e, a
    ld l, b
    ld a, e
    ld c, h
    db $fd
    add $3e
    db $e3
    rra
    pop af
    ld l, l
    sbc [hl]
    di
    ld c, a
    ldh a, [$ffcf]
    ld h, b
    sbc a
    nop
    rst $38
    inc bc
    cp $07
    db $fc
    ld b, $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ld a, e
    ld h, h
    rra
    rra
    nop
    nop
    nop
    nop

jr_01a_7b4d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ld hl, sp+$18
    db $fc
    inc b

jr_01a_7b5b:
    cp $a2
    db $fd
    and e
    rst $20
    cp c
    cp $01
    rst $38
    nop
    ld a, [$e945]
    rra
    cp $f7
    db $ec
    rra
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$ff3f], a
    ldh a, [$ff1f]
    or b
    ld e, a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $6ffe
    sub e
    db $fc
    db $fc
    nop
    nop
    nop
    nop

jr_01a_7b8d:
    nop
    nop

jr_01a_7b8f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_01a_7b8d

    jr nz, jr_01a_7b8f

    db $10
    ldh a, [rNR32]
    db $ec
    ld e, $e2
    rra
    pop hl

jr_01a_7bb7:
    rlca
    ld sp, hl
    rra
    pop hl
    ld e, $e6
    jr c, jr_01a_7bb7

    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld [$090f], sp
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_01a_7c26

    add hl, hl
    ld a, $2b
    inc a
    dec sp
    inc a
    add hl, sp
    ld a, $1c
    rra
    rrca
    rrca
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rrca
    ld [$080f], sp
    add hl, bc
    ld c, $05
    ld b, $05
    ld b, $03
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld h, e
    ld h, e
    db $dd
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    rst $30
    cp [hl]
    rst $30
    cp [hl]
    rst $30
    ret


    ld [$7eff], sp
    adc c
    rst $38

jr_01a_7c26:
    nop
    rst $38
    nop
    inc h
    db $db
    ld h, [hl]
    sbc c
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    push de
    rst $38
    ld l, d
    push de
    rst $38
    nop
    rst $38
    inc d
    rst $38
    inc d
    sbc h
    ld [hl], a
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    ld a, $c1
    inc e
    rst $38
    rst $30
    rst $30
    nop
    nop
    ld h, b
    ld h, b
    and b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$ffe0], a
    ldh [$ff90], a
    ldh a, [$ffd0]
    ldh a, [$ff88]
    ld hl, sp-$38
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    add d
    ld a, [hl]
    jp z, $ea3e

    ld e, $ee
    ld e, $ce
    ld a, $9c
    ld a, h
    ld a, b
    ld hl, sp-$60
    ldh [$ffa0], a
    ldh [$ffc0], a
    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    xor b
    ld e, b
    ldh a, [rSVBK]
    db $10
    ldh a, [rNR10]
    ldh a, [$ffe0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    ld a, h
    ld b, $fd
    inc b
    ld a, [bc]
    nop
    db $ed
    inc b
    ld [$fd00], sp
    db $fc
    ld b, $00
    db $ed
    db $fc
    inc b
    nop
    db $fd
    db $f4
    ld [bc], a
    nop
    db $ed
    db $f4
    nop
    ld bc, $7cba
    ld [$08ff], sp
    ld c, $00
    rst $28
    ld [$000c], sp
    rst $38
    nop
    ld a, [bc]
    nop
    rst $28
    nop
    ld [$ff00], sp
    ld hl, sp+$06
    nop
    rst $28
    ld hl, sp+$04
    nop
    rst $38
    ldh a, [rSC]
    nop
    rst $28
    ldh a, [rP1]
    ld bc, $7cdd
    ld b, $fd
    inc b
    ld a, [bc]
    nop
    db $ed
    inc b
    ld [$fd00], sp
    db $fc
    ld b, $00
    db $ed
    db $fc
    inc b
    nop
    db $fd
    db $f4
    ld [bc], a
    nop
    db $ed
    db $f4
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01a_7d6a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_01a_7e42

jr_01a_7e42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7ea5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_7f16

jr_01a_7f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
