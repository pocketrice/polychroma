; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    ld bc, $0102
    ld bc, $1704
    ld b, $67
    dec d
    call nc, $147f
    ld [$084f], a
    nop
    nop
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_015_4600
    ld bc, $0c06
    call Call_015_5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    ld l, $06
    dec b
    ld b, $28
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $20
    ld [hl+], a
    ld b, $03
    inc e
    ld b, $0c
    ld b, $c9
    nop
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    ld b, b
    add h
    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313
    rst $38
    ld d, $0a
    ld b, $05
    rlca
    inc b
    ld [bc], a
    rst $38
    inc b
    ld b, $ff
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    ld c, b
    xor b
    xor b
    xor b
    call nc, $94b4
    ld [hl], h
    jr @+$5a

    sbc b
    sbc b
    jr jr_015_410d

    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld [de], a
    rrca
    dec c
    ld a, [de]
    pop de
    jp nc, Jump_000_0201

    ld bc, $0401
    rla
    ld b, $67
    dec d
    sub [hl]
    ld b, b
    dec d
    db $fd
    ld c, a
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_015_4600
    ld bc, $0c06
    call Call_015_5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    jr z, jr_015_4100

    dec b
    ld b, $2e
    rst $00
    nop
    add h

jr_015_4100:
    inc bc

Jump_015_4101:
    ld b, $0c
    ld b, $1c
    ld [hl+], a
    ld b, $03
    jr nz, jr_015_4110

    inc c
    ld b, $c9

jr_015_410d:
    nop
    add c
    nop

jr_015_4110:
    dec b
    adc b
    nop
    ld a, b
    nop
    ld b, c
    add h
    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313
    rst $38
    ld d, $0a
    rlca
    dec b
    ld b, $02
    inc b
    rst $38
    inc b
    ld b, $ff
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    xor b
    xor b
    xor b
    ld c, b
    ld c, b
    call nc, $94b4
    ld [hl], h
    sbc b
    jr jr_015_41c9

    sbc b
    jr jr_015_41cc

    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld [de], a
    ld a, [de]
    dec c
    rrca
    jp nc, Jump_000_01d1

    ld [bc], a
    ld bc, $0401
    rla
    ld b, $67
    dec d
    ld d, l
    ld b, c
    dec d
    db $10
    ld d, b
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_015_4600
    ld bc, $0c06
    call Call_015_5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    ld a, [hl+]
    ld b, $05
    ld b, $2c

Call_015_41bc:
Jump_015_41bc:
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $1a
    ld [hl+], a
    ld b, $03
    jr jr_015_41cf

jr_015_41c9:
    inc c
    ld b, $c9

jr_015_41cc:
    nop
    add c
    nop

jr_015_41cf:
    dec b
    adc b
    nop
    ld a, b
    nop
    ld b, d
    add h
    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005

Jump_015_4200:
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313
    rst $38
    ld l, $ff
    dec b
    nop
    rst $38
    sbc b
    ld a, b
    sbc b
    sbc b
    ld a, b
    cp b
    sbc b
    ld a, b
    jr c, jr_015_427b

    add [hl]
    add [hl]
    add [hl]
    add a
    add [hl]
    ld [bc], a
    ld bc, $0102
    dec b
    rlca
    ld b, a
    ld a, [hl]
    rla
    inc d
    ld b, d
    dec d
    inc hl
    ld d, b
    ld [$0100], sp
    nop
    ld b, b
    ld b, c
    dec b
    inc b
    nop
    dec b
    ld [hl+], a
    ld d, $42
    inc b
    dec b
    nop
    nop
    ld b, c
    ld b, $07
    ld bc, $2506
    ld [hl+], a
    add hl, hl
    ld b, d
    ld b, $07
    nop
    nop
    add h
    nop
    ld a, [bc]
    inc b
    inc hl
    dec e
    ccf
    dec e
    ld [hl+], a
    adc d
    nop
    dec bc
    inc bc
    rlca
    dec de
    ld a, $1b
    adc e
    nop
    ld a, [de]
    nop
    dec b
    ld [hl+], a
    add hl, de
    nop
    inc b
    adc h
    nop
    dec hl
    nop
    dec de
    sbc a
    nop
    add hl, sp
    sbc a
    nop
    add hl, sp
    ldh a, [rKEY1]

jr_015_427b:
    nop
    add hl, sp
    adc [hl]
    nop
    rlca
    nop

Jump_015_4281:
    rlca
    add a
    nop
    rla
    nop
    ld b, c
    db $e4
    rst $38
    nop
    rst $38
    ld d, $05
    rlca
    ld b, $0a
    ld [bc], a
    inc b
    rst $38
    inc b
    ld b, $ff
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    xor b
    xor b
    ld c, b
    xor b
    ld [hl], h
    sub h
    or h
    call nc, $5818
    jr jr_015_4300

    sbc b
    sbc b
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    dec c
    ld a, [de]
    rrca
    ld [de], a
    jp nc, Jump_000_01d1

    ld [bc], a
    ld bc, $0401
    rla
    ld b, $67
    dec d
    adc e
    ld b, d
    dec d
    ld a, [hl+]
    ld d, b
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_015_4600
    ld bc, $0c06
    call Call_015_5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    jr nc, jr_015_42f5

    dec b
    ld b, $32
    rst $00
    nop
    add h

jr_015_42f5:
    inc bc
    ld b, $0c
    ld b, $22
    ld [hl+], a
    ld b, $03
    inc h
    ld b, $0c

jr_015_4300:
    ld b, $c9
    nop
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    ld b, e
    add h
    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d

jr_015_4318:
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36

Jump_015_4339:
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313
    rst $38
    inc l
    ld a, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld c, c
    ld a, b
    rst $00
    ret z

    add b
    call z, $0801
    ld bc, $0101
    ld [hl], a
    jr nc, jr_015_43af

    rla
    ld c, d
    ld b, e
    dec d
    dec a
    ld d, b
    ld [$0000], sp
    ld c, l
    ld a, [hl+]
    ld b, b
    inc hl
    inc bc
    add hl, bc
    ld b, b
    ld b, b
    jr c, jr_015_43b7

    ld b, b
    ld b, b
    jr c, jr_015_43bb

    ld b, b
    ld b, b
    rst $08
    nop
    ld de, $3800
    adc b
    nop
    dec de
    nop
    jr c, jr_015_4318

    nop
    dec b
    inc bc
    ld b, b
    ld b, b
    jr c, jr_015_43cf

    sub $00
    ld b, c
    adc [hl]
    nop
    ld bc, $3803
    ld b, b
    ld b, b
    ld b, b
    push bc
    nop
    ld b, a
    nop
    ld b, b
    sbc h
    nop
    dec hl
    sub a
    nop
    ld e, b
    ld [bc], a
    ld b, b
    jr c, jr_015_43e9

    add l
    nop
    ld b, e
    rlc b
    ld h, d

jr_015_43af:
    adc e
    nop
    sub l
    sbc [hl]
    nop
    ld bc, $3802

jr_015_43b7:
    ld b, b
    ld b, b
    sub h
    nop

jr_015_43bb:
    sub e
    ld hl, sp+$28
    nop
    jp $3800


    add l
    nop
    ld d, d
    ldh a, [$ff29]
    nop
    jr @-$69

    nop
    ldh a, [c]
    add a
    nop
    ld c, b

jr_015_43cf:
    dec hl
    ld b, c
    inc hl
    inc bc
    jr z, jr_015_43d7

    nop
    ld c, b

jr_015_43d7:
    push bc
    ld bc, $0291
    ld [bc], a
    ld c, b
    ld [bc], a
    call z, $9801
    ld bc, $0202
    adc a
    ld bc, $01a2
    ld [bc], a

jr_015_43e9:
    ld c, b
    adc l
    ld bc, $00a4
    ld c, b
    call nz, $c701
    ldh a, [$ff28]
    ld bc, $01a8
    ld c, b
    ld [bc], a
    sbc a
    ld bc, $02d3
    ld [bc], a
    ld [bc], a
    ld c, b
    call z, $a501
    sbc h
    ld bc, $00a3
    ld c, b
    sub [hl]
    ld bc, $c9b1
    ld bc, $f0c3
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    add l
    ld bc, $96c5
    ld [bc], a
    dec hl
    ld hl, sp+$30
    ld [bc], a
    add hl, hl
    nop
    ld c, b
    ldh a, [$ff2b]
    ld [bc], a
    and h
    dec hl
    ld b, d
    inc hl
    inc bc
    nop
    ld a, [hl-]
    ld [hl+], a
    ld b, e
    nop
    ld a, [hl-]
    ld h, $43
    inc hl
    inc bc
    add h
    inc bc
    ld [hl+], a
    adc h
    inc bc
    dec h
    add $03
    ld a, [hl+]
    adc e
    inc bc
    add hl, sp
    nop
    ld a, [hl-]
    add l
    inc bc
    ld b, h
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld b, e
    ld a, [hl-]
    ld b, e
    sub b
    inc bc
    inc sp
    db $dd
    inc bc
    ld b, a
    sub e
    inc bc
    ld [hl-], a
    nop
    ld a, [hl-]
    sbc b
    inc bc
    ld h, a
    ld [bc], a
    ld a, [hl-]
    ld b, e
    ld b, e
    ldh a, [rNR52]
    inc bc
    sub e
    nop
    ld a, [hl-]
    ret z

    inc bc
    ld d, b
    add h
    inc bc
    ld b, h
    ld hl, sp+$21
    inc bc
    ld b, d
    add h
    inc bc
    cp e
    nop
    ld a, [hl-]
    call nz, $da03
    call nc, Call_015_7503
    ldh a, [$ff29]
    inc bc
    dec hl
    adc d
    inc bc
    dec h
    dec hl
    ld b, h
    inc hl
    inc bc
    daa
    ld bc, $4a00
    add $04
    add d
    push bc
    inc b
    adc d
    call z, $9504
    nop
    ld bc, $04c5
    add a
    ret


    inc b
    sub c
    sbc [hl]
    inc b
    sub h
    add [hl]
    inc b
    add l
    inc bc
    ld c, d
    ld bc, $0303
    rst $00
    inc b
    db $dd
    call c, $a504
    add e
    inc b
    or b
    reti


    inc b
    call nc, Call_015_4a00
    sub a
    inc b
    jp nz, $0101

    ld c, d
    ret


    inc b
    adc a
    db $db
    inc b
    push de
    ld b, $01
    ld bc, HeaderDestinationCode
    ld bc, $0101
    ld hl, sp+$29
    inc b
    or d
    nop
    ld bc, $0583
    ld b, h
    ld hl, sp+$27
    dec b
    ld h, e
    add [hl]
    dec b
    nop
    ld hl, sp+$2a
    dec b
    or h
    adc l
    dec b
    ld b, d
    dec hl
    ld b, l
    inc hl
    inc bc
    ld bc, $4b46
    add hl, hl
    ld b, [hl]
    add h
    ld b, $0c
    add h
    ld b, $10
    call $2506
    nop
    ld c, e
    adc b
    ld b, $15
    db $d3
    ld b, $3d
    adc a
    ld b, $12
    ld bc, $4b46
    add $06
    rla
    ld hl, sp+$2a
    ld b, $60
    nop
    ld c, e
    ld hl, sp+$31
    ld b, $74
    ld bc, $464b
    sub $06
    and b
    ld [bc], a
    ld c, e
    ld b, [hl]
    ld b, [hl]
    add h
    ld b, $35
    push de
    ld b, $21
    dec hl
    ld b, a
    inc hl
    inc bc
    dec hl
    nop
    ld bc, $0303
    rst $00
    rlca
    dec e
    push bc
    rlca
    dec h
    ld bc, $0303
    rst $00
    rlca
    dec l
    push bc
    rlca
    dec [hl]
    ld bc, $0303
    rst $00
    rlca
    dec a
    ld hl, sp+$39
    rlca
    ld b, l
    nop
    nop
    ld h, a
    ld [$0401], sp
    dec b
    add l
    rlca
    dec de
    ld h, a
    stop
    ld b, $85
    rlca
    ld a, [de]
    nop
    ld e, $63
    jr jr_015_4572

    ld bc, $0701
    inc e
    add h
    rlca
    dec de
    nop
    ld bc, $2063
    nop
    ld [bc], a
    ld h, d
    dec h
    ld [bc], a
    dec e
    ld e, $18
    inc hl
    inc bc
    nop
    jr z, @+$69

    jr z, jr_015_456b

    rra
    inc h

jr_015_456b:
    ld bc, $0786
    inc c
    rlca
    ld [hl-], a
    inc sp

jr_015_4572:
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    inc [hl]
    dec [hl]
    add a
    rlca
    rlc b
    nop
    ld h, h
    dec sp
    ld bc, $0130
    adc b
    rlca
    db $db
    ld h, $01
    nop
    ld c, [hl]
    inc hl
    inc bc
    rst $38
    inc de
    rra
    ld a, $38
    rst $38

jr_015_4591:
    inc b
    rst $38
    ld a, b
    ld a, b
    jr z, @+$7a

    jr c, @-$46

    ld e, b
    sub h
    ld c, h
    or d
    rst $00
    and c
    ld bc, $0101
    ld [bc], a
    inc b
    ld b, $06
    ld h, a
    dec d
    adc h
    ld b, l
    dec d
    ld a, $50
    ld [$2f00], sp
    inc bc
    nop
    inc d
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, $2600
    inc b
    inc b
    rlca
    dec c
    rlca
    inc b
    adc e
    nop
    ld e, $01
    ld b, $0c
    ret z

    nop
    ld b, [hl]

jr_015_45c9:
    nop
    inc b
    inc hl
    rlca
    ld bc, $0506
    ret


    nop
    ld d, [hl]
    ld a, [hl+]
    ld b, $85
    nop
    ld e, l
    inc b
    dec b
    ld b, $04
    rrca
    rrca
    call z, Call_015_7600
    ld [bc], a
    inc b
    ld b, $06
    jp z, $8600

    ld [bc], a
    ld b, $06
    inc b
    ld h, d
    dec d
    call z, $8500
    ld h, d
    db $10
    sbc h
    nop
    ld a, c
    adc d
    nop
    add [hl]
    daa
    inc b
    call nc, Call_000_2900
    nop
    inc de

Call_015_4600:
    jr nc, jr_015_4605

    rst $38
    rra
    inc e

jr_015_4605:
    jr nz, @+$01

    inc bc
    rst $38
    jr z, jr_015_4683

    ld a, b
    jr z, jr_015_4636

    jr c, jr_015_4591

    ld e, c
    ld h, l
    ld bc, $0101
    ld bc, HeaderLogo
    ld b, $6c
    rla
    inc bc
    ld b, [hl]
    dec d
    ld b, l
    ld d, b
    ld [$0000], sp
    ld a, $2f
    inc bc
    inc l
    ld c, b
    add h
    nop
    ld c, $23
    rlca
    nop
    ld b, d
    jp z, $2600

    inc hl
    dec b
    nop
    ld b, b

jr_015_4636:
    jp z, Jump_000_3600

    inc hl
    dec b
    nop
    ld [hl], h
    adc [hl]
    nop
    jr c, jr_015_4641

jr_015_4641:
    dec b
    sbc a
    nop
    jr c, jr_015_45c9

    nop
    jr c, jr_015_4641

    ld hl, $2200
    nop
    dec a
    db $e4
    ld h, b
    inc bc
    rst $38
    nop
    rst $38
    add hl, bc
    nop
    rst $38
    adc b
    ld a, b
    sbc b
    adc b
    xor b
    ld l, b
    ld a, b
    sbc b
    adc b
    cp b
    sbc b
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld e, b
    ld e, b
    jr c, @+$03

    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    ld b, $07
    ld b, a
    ld a, [hl]
    rla
    ld d, d
    ld b, [hl]
    dec d
    ld c, c
    ld d, b
    ld [$0000], sp

jr_015_4683:
    ld b, b
    ld b, d
    dec b
    inc b
    ld bc, $1605
    ld b, d
    inc b
    dec b
    ld [bc], a
    inc b
    ld b, $07
    ld b, c
    ld b, $25
    ld b, $24
    dec h
    add hl, hl
    inc h
    dec h
    inc h
    rlca
    push bc
    nop
    ld [de], a
    ld [$0423], sp
    inc hl
    dec e
    dec e
    ccf
    dec e
    dec e
    ld [hl+], a
    add [hl]
    nop
    inc c
    rlca
    rlca
    ld b, $07
    dec de
    dec de
    ld a, $1b
    dec de
    ret z

    nop
    inc [hl]
    rlca
    inc b
    dec b
    dec de
    dec de
    add hl, de
    dec de
    dec de
    inc b
    adc e
    nop
    inc l
    nop
    dec de
    adc l
    nop
    add hl, sp
    ld [bc], a
    add hl, de
    dec de
    add hl, de
    sbc e
    nop
    ld c, d
    ld b, c
    add hl, de
    dec de
    nop
    add hl, de
    ldh a, [$ff3a]
    nop
    ld c, e
    sbc a
    nop
    ld b, [hl]
    adc h
    nop
    ld b, $84
    nop
    ld sp, $2900
    add [hl]
    nop
    ldh a, [rP1]
    dec b
    ld l, $00
    nop
    rlca
    adc $01
    rrca
    sub b
    ld bc, $ce00
    ld bc, $902f
    ld bc, $ce00
    ld bc, $904f
    ld bc, $f800

Call_015_4700:
    ld l, a
    ld bc, $2e6f
    nop
    nop
    ld b, c
    ld l, $00
    rst $38
    inc h
    rst $38
    ld a, [bc]
    nop
    rst $38
    ld l, b
    ret z

    ld [hl], b
    ret nz

    ld l, b
    ret z

    ret z

    ld l, b
    ret z

    ld l, b
    or b
    ld [hl], b
    ld d, b
    ld d, b
    ret nc

    or b
    ret nc

    sub b
    sub b
    ld [hl], h
    ld a, c
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, c
    ld a, d
    ld a, c
    ld a, c
    ld [bc], a
    ld bc, $0101
    ld [$4707], sp
    ld a, [hl]
    rla
    ld a, [bc]
    ld b, a
    dec d
    ld d, b
    ld d, b
    ld [$0000], sp
    ld b, b
    ld b, c
    dec b
    inc b
    inc b
    dec b
    ld d, $04
    dec b
    ld d, $84
    nop
    inc b
    ld [bc], a
    inc b
    ld b, $07
    ld b, c
    ld b, $25
    rlca
    add hl, hl
    inc h
    dec h
    add hl, hl
    inc h
    dec h
    add hl, hl
    inc h
    call nz, $1100
    ld [bc], a
    inc hl
    inc b
    inc hl
    ld [hl+], a
    dec e
    nop
    ccf
    ld [hl+], a
    dec e
    ld [bc], a
    ld [hl+], a
    dec b
    inc b
    ld b, d
    ld b, $07
    ld [hl+], a
    dec de
    nop
    ld a, $22
    dec de
    push bc
    nop
    ld [de], a
    ld [bc], a
    dec b
    inc b
    dec b
    ld [hl+], a
    dec de
    nop
    add hl, de
    ld [hl+], a
    dec de
    nop
    inc b
    adc d
    nop
    ld l, $00
    dec de
    sbc a
    nop
    ld a, [hl-]
    sbc a
    nop
    ld a, [hl-]
    ldh a, [rWX]
    nop
    ld a, [hl-]
    adc h
    nop
    ld b, $06
    rlca
    ld b, $07
    add hl, hl
    ld b, $07
    add hl, hl
    add h
    nop
    db $f4
    inc bc
    ld b, $05
    inc b
    dec b
    inc l
    nop
    ld bc, $0607
    call $1001
    ld bc, $0405
    rst $08
    ld bc, $cd20
    ld bc, $0130
    dec b
    inc b
    rst $08
    ld bc, $cd40
    ld bc, $0150
    dec b
    inc b
    rst $08
    ld bc, $cd60
    ld bc, $f070
    ld [hl], c
    ld bc, $0000
    ld b, c
    inc l
    nop
    rst $38
    inc c
    rst $38
    inc b
    nop
    rst $38
    xor b
    xor b
    add b
    ret nc

    cp b
    ld a, b
    ld c, b
    ld c, b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld bc, $0101
    ld a, [bc]
    rlca
    ld b, a
    ld a, [hl]
    rla
    jp nc, Jump_000_1547

    ld d, a
    ld d, b
    ld [$0000], sp
    ld b, b
    ld b, e
    dec b
    inc b
    ld bc, $1605
    add h
    nop
    ld [bc], a
    ld b, c
    ld b, $07
    nop
    ld b, $41
    dec h
    inc h
    ld bc, $2925
    ld b, c
    inc h
    dec h
    nop
    inc h
    add h
    nop
    ld [bc], a
    nop
    inc hl
    inc hl
    dec e
    nop
    ccf
    inc hl
    dec e
    nop
    ld [hl+], a
    ld b, d
    ld b, $07
    inc hl
    dec de
    nop
    ld a, $23
    dec de
    push bc
    nop
    stop
    dec b
    inc hl
    dec de
    nop
    jr jr_015_4851

    dec de
    nop
    inc b
    adc c
    nop
    jr nc, jr_015_4835

jr_015_4835:
    dec e
    adc [hl]
    nop
    dec sp
    nop
    dec de
    adc e
    nop
    ld c, e
    ld bc, $1b18
    add h
    nop
    ld b, [hl]
    adc b
    nop
    ld a, $00
    dec e
    add h
    nop
    ld c, b
    nop
    dec e
    ldh a, [$ff28]
    nop

jr_015_4851:
    ld c, [hl]
    ld bc, $181b
    add e
    nop
    ld b, a
    adc d
    nop
    dec a
    nop
    dec e
    add e
    nop
    ld d, a
    adc h
    nop
    ld c, l
    nop
    dec de
    add l
    nop
    dec sp
    sub e
    nop
    ld bc, $0084
    ld sp, $2900
    add h
    nop
    db $10
    add h
    nop
    ld bc, $002a
    ld [bc], a
    rlca
    ld b, $07
    call z, Call_000_1101
    ld [bc], a
    dec b
    inc b
    dec b
    rst $08
    ld bc, $cc21
    ld bc, $0231
    dec b
    inc b
    dec b
    rst $08
    ld bc, $cc41
    ld bc, $0251
    dec b
    inc b
    dec b
    rst $08
    ld bc, $cc61
    ld bc, $f071
    ld [hl], e
    ld bc, $0000
    ld b, c
    ld a, [hl+]
    nop
    rst $38
    ld sp, $3332
    rst $38
    ld b, $00
    rst $38
    ld l, b
    ret z

    ld l, b
    ret z

    ld l, b
    ret z

    jr c, jr_015_48ed

    ld a, b
    ld a, b
    cp b
    cp b
    sub b
    sub c
    sub e
    sub d
    sub h
    sub l
    ld [bc], a
    ld bc, $0101
    ld [$4707], sp
    ld a, [hl]
    rla
    and [hl]
    ld c, b
    dec d
    ld e, [hl]
    ld d, b
    ld [$0000], sp
    ld b, b
    ld b, c
    dec b
    inc b
    inc b
    dec b
    ld d, $04
    dec b
    ld d, $84
    nop
    inc b
    ld [bc], a
    inc b
    ld b, $07
    ld b, c
    ld b, $25
    rlca
    add hl, hl
    inc h
    dec h
    add hl, hl
    inc h
    dec h
    add hl, hl
    inc h

jr_015_48ed:
    call nz, $1100
    ld [bc], a
    inc hl
    inc b
    inc hl
    ld [hl+], a
    dec e
    nop
    ccf
    ld [hl+], a
    dec e
    ld [bc], a
    ld [hl+], a
    dec b
    inc b
    ld b, d
    ld b, $07
    ld [hl+], a
    dec de
    nop
    ld a, $22
    dec de
    push bc
    nop
    ld [de], a
    ld a, [bc]
    dec b
    inc b
    dec b
    jr jr_015_492b

    dec de
    add hl, de
    dec de
    dec de
    jr jr_015_491a

    add a
    nop
    ld l, $00

jr_015_491a:
    dec e
    inc h
    dec de
    nop
    dec e
    adc b
    nop
    dec a
    nop
    dec de
    add h
    nop
    ld b, a
    ld bc, $041b
    adc d

jr_015_492b:
    nop
    ld l, $00
    dec de
    ldh a, [$ff3f]
    nop
    ld a, [hl-]
    ldh a, [$ff2b]
    nop
    ld a, [hl-]
    adc h
    nop
    ld b, $06
    rlca
    ld b, $07
    add hl, hl
    ld b, $07
    add hl, hl
    add h
    nop
    db $f4
    inc bc
    ld b, $05
    inc b
    dec b
    inc l
    nop
    ld bc, $0607
    call $1001
    ld bc, $0405
    rst $08
    ld bc, $cd20
    ld bc, $0130
    dec b
    inc b
    rst $08
    ld bc, $cd40
    ld bc, $0150
    dec b
    inc b
    rst $08
    ld bc, $cd60
    ld bc, $f070
    ld [hl], c
    ld bc, $0000
    ld b, c
    inc l
    nop
    rst $38
    dec [hl]
    rst $38
    ld [$ff00], sp
    adc b
    xor b
    sbc b
    ld a, b
    cp b
    xor b
    adc b
    sbc b
    or b
    or b
    sub b
    sub b
    sub b
    ld [hl], b
    ld [hl], b
    ld d, b
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    ld [bc], a
    ld bc, $0102
    rlca
    rlca
    ld b, a
    ld a, [hl]
    rla
    halt
    ld c, c
    dec d
    ld h, l
    ld d, b
    ld [$0100], sp
    inc bc
    ld b, b
    ld b, d
    dec b
    inc b
    ld bc, $1605
    ld b, d
    inc b
    dec b
    nop
    inc bc
    ld b, c
    ld b, $07
    dec bc
    ld b, $25
    inc h
    dec h
    add hl, hl
    inc h
    dec h
    inc h
    rlca
    ld b, $07
    inc bc
    add h
    nop
    inc bc
    ld b, $23
    dec e
    dec e
    ccf
    dec e
    dec e
    ld [hl+], a
    adc c
    nop
    dec c
    inc b
    dec de
    dec de
    ld a, $1b
    dec de
    adc c
    nop
    inc e
    dec b
    dec b
    dec de
    dec de
    add hl, de
    dec de
    dec de
    adc c
    nop
    inc c
    nop
    rlca
    inc h
    dec de
    nop
    ld b, $8a
    nop
    dec a
    ld [bc], a
    add hl, de
    dec de
    add hl, de
    sbc e
    nop
    ld c, e
    ld b, c
    add hl, de
    dec de
    nop
    add hl, de
    ldh a, [$ff3a]
    nop
    ld c, h
    sbc a

jr_015_49fc:
    nop
    ld b, a
    adc [hl]
    nop

Call_015_4a00:
    rlca
    inc bc
    rlca
    ld b, $07
    add hl, hl
    ld b, d
    ld b, $07
    ld bc, $0504
    dec l
    nop
    ld bc, $0706
    dec l
    nop
    sbc a
    ld bc, $9f00
    ld bc, $9f00
    ld bc, $f000
    ld [hl], b
    ld bc, $0000
    ld b, c
    dec l
    nop
    rst $38
    inc [hl]
    ld a, $ff
    rlca
    ld [bc], a
    rst $38
    cp b
    ret c

    ld hl, sp-$48
    ret c

    ld hl, sp+$58
    jr jr_015_4a4c

    cp b
    cp b
    cp b
    ld a, b
    ld a, b
    ld a, b
    sbc b
    ld a, b
    cp b
    sub [hl]
    sub [hl]
    sub [hl]
    sbc b
    sbc b
    sbc b
    push bc
    sbc b
    sub [hl]
    ld [bc], a
    ld bc, $0605
    ld c, $06

jr_015_4a4c:
    ld d, $47
    jr jr_015_4a75

    ld c, d
    dec d
    ld l, h
    ld d, b
    ld [$e400], sp
    ld d, e
    inc bc
    nop
    ld c, a
    ld b, h
    ld hl, $0222
    ld hl, $0303
    rst $00
    nop
    ld h, c
    ld b, d
    jr nc, jr_015_4a8d

    inc hl
    inc bc
    ld b, $22

jr_015_4a6c:
    ld hl, $2645
    dec h
    ld h, $17
    ld b, c
    jr z, jr_015_4ada

jr_015_4a75:
    nop
    jr z, jr_015_49fc

    nop
    ld h, b
    ld bc, $4b45
    jr z, jr_015_4aa7

    add h
    nop
    ld [hl], b
    nop
    inc hl
    inc hl
    jr z, @+$06

    ld e, b
    jr z, @+$64

    jr z, @+$62

    add l

jr_015_4a8d:
    nop
    ld a, a
    ld bc, $2a2e
    adc l
    nop
    add a
    dec b
    ld hl, $192e
    ld a, [de]
    add hl, de
    ld e, [hl]
    ld b, c
    jr z, @+$61

    nop

jr_015_4aa0:
    jr z, jr_015_4a6c

    nop
    ld h, e
    ld b, c
    ld a, [de]
    dec l

jr_015_4aa7:
    nop
    ld a, [de]
    add e
    nop
    ld [hl], b
    nop
    ld [hl+], a
    sub h
    nop
    ld d, l
    push bc
    nop
    reti


    db $e4
    ld e, a
    inc bc
    adc a
    nop
    rst $20
    ld bc, $2530
    adc d
    nop
    ld e, c
    ld [hl+], a
    inc bc
    ld b, $65
    jr z, @+$66

    ld h, $25
    ld h, $2f
    adc b
    nop
    xor $24
    jr z, jr_015_4ad2

    dec sp
    dec hl

jr_015_4ad2:
    cpl
    add a
    ld bc, $0768
    ld e, d
    jr z, @+$5e

jr_015_4ada:
    jr z, @+$2a

    jr c, jr_015_4b06

    inc e
    adc h
    ld bc, $0278
    jr z, @+$4a

    ld h, [hl]
    add a
    ld bc, $0668
    ld e, a
    jr z, @+$16

    add hl, de
    ld a, [de]
    add hl, de
    ld h, [hl]
    adc b
    nop
    xor $02
    dec l
    ld a, [de]
    dec l
    add l
    ld bc, $d663
    ld bc, $435f
    ld hl, $0022
    ld c, l
    ld [hl], $03
    rst $38

jr_015_4b06:
    rra
    dec e
    rst $38
    ld [$0000], sp
    nop
    rst $38
    sbc b
    sbc b
    ret z

    adc b
    ld e, b
    ld l, b
    xor b
    ret c

    jr z, jr_015_4aa0

    ld a, b
    cp b
    xor b
    ld a, b
    cp b
    xor b
    ld e, d
    ld h, c
    ld h, b
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [bc], a
    ld [bc], a
    ld bc, $0801
    ld [$44d7], sp
    rla
    ld b, $4b
    dec d
    ld [hl], e
    ld d, b
    ld [$0400], sp
    sub c
    nop
    nop
    dec h
    ld b, $23
    nop
    dec bc
    cpl
    ld bc, $5e92
    ld h, b
    ld bc, $2501
    ld b, $00
    ld h, e
    ld l, $24
    nop
    ld [bc], a
    ld h, e
    daa
    ld h, d
    ld [hl+], a
    ld bc, $1f07
    ld e, e
    ld e, [hl]
    ld b, $00
    nop
    cpl
    sbc b
    add e
    nop
    inc hl
    ld a, [de]
    rra
    ld e, e
    sub a
    ld h, [hl]
    ld e, a
    ld [bc], a
    ld d, l
    ld c, l
    ld a, [de]
    nop
    nop
    ld e, $01
    inc hl
    nop
    dec h
    ld h, $65
    ld hl, $0225
    ld [bc], a
    ld e, d
    ld c, d
    inc [hl]
    dec b
    ld a, [de]
    add e
    nop
    inc de
    dec bc
    ld h, e
    ld l, $00
    dec h
    ld e, l
    ld [bc], a
    ld [bc], a
    ld e, e
    ld d, d
    ld a, $2c
    ld [hl+], a
    ld h, h
    ld [$0014], sp
    nop
    ld e, $5c
    daa
    ld h, d
    ld e, h
    ld [bc], a
    ld h, a
    inc hl
    nop
    db $10
    ld de, $138a
    inc d
    nop
    cpl
    rra
    ld [bc], a
    cpl
    ld h, d
    rra
    ld [$2428], sp
    ld b, $18
    add hl, de
    adc h
    dec de
    inc e
    nop
    ld h, d
    dec h
    ld bc, $2625
    ld h, e
    jr z, jr_015_4bbd

    add h
    ld c, $42
    rlca
    ld b, l
    rrca

jr_015_4bbd:
    add [hl]
    ld h, d
    dec l
    ld bc, $2e63
    ld h, e
    jr nc, jr_015_4bcc

    adc [hl]
    ld d, $15
    adc b
    dec d
    rla

jr_015_4bcc:
    adc [hl]
    ld h, d
    dec [hl]
    ld d, $06
    nop
    nop
    jr c, jr_015_4be6

    ld a, [hl-]
    dec sp
    ld d, $1d
    adc [hl]
    dec e
    rla
    inc a
    dec a
    inc de
    ccf
    ld bc, $0698
    ld b, b
    ld b, c
    add b

jr_015_4be6:
    ld b, e
    inc h
    add hl, sp
    inc de
    ld b, h
    add d
    ld b, [hl]
    ld b, a
    ld bc, $6401
    ld c, b
    ld c, c
    adc [hl]
    ld c, e
    ld e, b
    ld a, h
    ld e, b
    ld a, [hl]
    ld e, b
    ld c, h
    adc [hl]
    ld c, [hl]
    ld c, a
    ld [hl+], a
    ld l, c
    inc bc
    ld d, b
    ld d, c
    sbc d
    ld d, e
    ld b, c
    ld e, c
    adc [hl]
    ld b, $59
    ld d, h
    sbc d
    ld d, [hl]
    ld d, a
    sbc c
    sbc c
    ld h, d
    ld l, d
    jr z, jr_015_4c8c

    ld b, $6d
    ld l, [hl]
    sbc c
    sbc c
    ld [hl], h
    ld [hl], l
    ld a, c
    jr z, jr_015_4c22

    ld bc, $767a
    ld [hl+], a

jr_015_4c22:
    ld bc, $032c
    ld [bc], a
    ld bc, $2e2c
    inc l
    inc bc
    ld [bc], a
    ld l, $25
    ld b, $2c
    inc bc
    ld [bc], a
    ld h, b
    sub d
    sub a
    inc l
    inc bc
    ld [bc], a
    ld e, a
    ld [bc], a
    ld [bc], a
    inc l
    inc bc
    nop
    ld [bc], a
    adc [hl]
    ld bc, $0241
    ld h, c
    sub e
    ld h, d
    inc l
    inc bc
    nop
    ld h, d
    adc [hl]
    ld bc, $0031
    rra
    adc [hl]
    ld bc, $0141
    ld e, $5c
    adc l
    ld bc, $0142
    ld h, e
    ld h, l
    adc l
    ld bc, $0262
    ld b, $00
    ld h, e
    sbc h
    ld bc, $0213
    ld l, b
    ld l, c
    ld l, c
    inc l
    inc bc
    ld [bc], a
    ld l, a
    sbc c
    sbc c
    inc l
    inc bc
    nop
    ld [hl], a
    adc [hl]
    ld bc, $23e1
    sbc c
    nop
    ld h, e
    add [hl]
    nop
    di
    inc bc
    ld a, d
    halt
    ld l, $99
    db $e4
    rst $28
    inc bc
    ld [bc], a
    sbc c
    sbc c
    sub b
    db $e4
    db $fc
    inc bc

jr_015_4c8c:
    rst $38
    ld h, e
    ld c, $f0
    rrca
    ldh [rNR34], a
    ret nz

    inc a
    add b
    ld a, b
    ld bc, $03f0
    ldh [rTAC], a
    ret nz

    rrca
    ld b, h
    add b
    rra

jr_015_4ca1:
    ld [bc], a
    add b
    nop
    cp a
    ld b, c
    nop
    rst $38
    ld bc, $ffff

jr_015_4cab:
    ld [hl+], a
    nop
    ld a, [bc]
    inc bc
    inc bc
    call z, $30cf
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld b, c
    rst $38
    nop
    dec b

jr_015_4cbd:
    inc b
    ei
    ld a, [bc]
    push af
    inc b
    ei
    push bc
    nop
    cpl
    adc e
    nop
    db $10
    dec b
    rlca
    rst $38
    ld hl, sp-$08
    nop
    ld bc, $0162
    rlca
    call nz, Call_000_38c7
    rst $38
    nop
    rst $30
    nop
    db $eb
    jp Jump_015_5b00


    ld b, $00
    ld hl, sp+$07
    nop
    rst $38
    ld bc, $42fe
    nop
    rst $38
    ld b, c
    rlca
    ld hl, sp+$01
    nop
    rst $38
    and l
    nop
    ld a, [hl-]
    inc bc
    nop
    rst $38
    ld hl, sp+$07
    and a
    nop
    ld e, d
    ld c, $c7
    jr c, jr_015_4d01

    call nz, Call_000_0201

jr_015_4d01:
    nop
    ld bc, $0000
    ld hl, sp-$08
    rlca
    rlca
    nop
    ld b, h
    rlca
    ld hl, sp-$20
    ld b, [hl]
    rlca
    rra
    add c
    ld e, $82
    inc e
    add h
    jr jr_015_4ca1

    jr nc, jr_015_4cab

    jr nz, jr_015_4cbd

    ld b, c
    jp nz, $9c83

    ld bc, $02ff
    ld [bc], a
    inc b
    inc b
    ld hl, sp+$09
    ldh a, [rNR11]
    ldh [rNR42], a
    pop bc
    ld b, d
    add e
    sbc h
    rra
    jr nz, jr_015_4d72

    ld b, b
    ld [hl], a
    adc b
    ld [$f415], a
    dec bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$ff1f], a
    ret nz

    ccf
    sub c
    ld l, [hl]
    dec hl
    call nc, $e817
    rrca
    ldh a, [rNR32]
    ldh [c], a
    ccf
    ret nz

    ld a, a
    add b
    cp $01
    db $fc
    inc bc
    jr c, @-$77

    add l
    nop
    call z, Call_000_00a3
    ld h, [hl]
    inc bc
    rst $38
    nop
    ld sp, hl
    inc b

jr_015_4d61:
    ld b, c
    rst $38
    nop
    inc bc
    rst $08
    jr nz, @+$01

    nop
    ld b, d
    nop
    rst $38
    ld bc, $0300
    adc e
    nop
    sub h

jr_015_4d72:
    adc a
    nop
    nop
    add l
    nop
    ld [hl], h
    and l
    nop
    inc [hl]
    ld bc, $00ff
    rst $00
    nop
    ld a, e
    dec b
    di
    inc c
    ret nz

    inc sp
    nop
    ret nz

jr_015_4d88:
    jp Jump_000_2300


    dec bc
    ld sp, hl
    rlca
    ldh a, [c]
    ld c, $e4
    inc e
    ret z

    add hl, sp
    or b
    ld [hl], c
    ret nz

    pop bc
    ld h, d
    ld bc, $7c06
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$0089], sp
    add $83
    nop
    ld h, h
    rlca
    add e
    ld a, h
    ld b, a
    cp b
    adc a
    ld [hl], b
    ccf
    ret nz

    jp Jump_015_6900


    dec b
    cp $01
    di
    inc b
    ccf
    ret nz

    xor c
    nop
    and $0f
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    call c, $ae23
    ld d, c
    rst $18
    jr nz, @+$81

    add b
    inc bc
    ld a, h
    add e
    nop
    adc d
    rla
    ret nz

    pop bc
    jr nc, jr_015_4d88

    jr jr_015_4d61

    inc b
    cp h

jr_015_4ddb:
    ld [bc], a
    cp $01
    rst $38
    pop bc
    add hl, sp
    add e
    ld b, d
    rlca
    add h
    rrca
    adc b
    rra
    sub b
    jr nz, jr_015_4e2a

    and e
    ld bc, $839c
    nop
    jp z, $e307

    rra
    call z, $903c
    ld [hl], b
    jr nz, jr_015_4ddb

    add e
    nop
    xor h

jr_015_4dfd:
    dec b
    rra
    jr nz, @+$39

    ld b, b
    ld l, e
    add b
    add e
    nop
    ld e, [hl]
    and e
    ld bc, $0574
    db $e4
    dec de
    jp z, $8435

    ld a, e
    and a
    ld bc, $097e
    ccf
    ret nz

    ld [hl], e
    adc b
    rst $38
    nop
    inc a
    add e
    ld hl, sp+$07
    adc c
    nop
    and $83
    nop
    inc e
    and l
    nop
    or $a5
    nop

jr_015_4e2a:
    ldh a, [$ffa3]
    nop
    ld h, h
    push bc
    ld bc, $01dd
    sbc b
    daa
    and e
    nop
    call c, $7301
    add h
    jp $d100


    rlca
    ld c, c
    or d
    and a
    ld e, b
    ld b, e
    cp h
    add c
    ld a, [hl]
    add l
    ld [bc], a
    inc b
    inc de
    ld hl, sp+$07
    db $f4
    inc bc
    ld l, d
    add c
    scf
    ld b, b
    rra
    jr nz, jr_015_4e58

    inc e
    add c
    add d

jr_015_4e58:
    ld b, b
    pop bc
    jr nz, jr_015_4dfd

    db $10
    sub c
    add a
    ld bc, $0b98
    rra
    rst $38
    ldh [$ffe0], a
    nop
    inc bc
    inc bc
    inc b
    rlca
    ret z

    rst $08
    jr nc, @-$7b

    ld bc, $0752
    db $eb
    inc d
    rst $30
    ld [$00ff], sp
    ldh [$ff1f], a
    ret


    ld bc, $0135
    rra
    ldh [rSTAT], a
    rst $38
    nop
    inc b
    rst $20
    db $10
    rst $38
    nop
    rst $38
    and h
    nop
    sub h
    ld bc, $807f
    and a
    nop
    db $f4
    and e
    nop
    ld h, d
    add l
    nop
    inc [hl]
    add e
    ld bc, $877e
    nop
    ld a, [hl]
    inc bc
    ld h, a
    sbc b
    inc bc
    ld h, h
    add l
    nop
    adc d
    inc bc
    ldh [$ffe0], a
    rra
    rst $38
    ld b, c
    rra
    add b
    dec c
    rst $18
    ret nz

    ccf
    jr nc, @+$11

    ld [$0704], sp
    ld [bc], a
    inc bc
    ld bc, $8081
    ld a, b
    and e
    nop
    ret nz

    dec b
    ld a, [$f505]
    ld a, [bc]

jr_015_4ec5:
    dec sp
    call nz, $0183
    halt
    dec b
    inc de
    db $ec
    add hl, hl
    sub $10
    rst $28
    add l
    ld bc, $0980
    ld a, h
    inc bc
    cp $01
    di
    ld [$c03f], sp
    ld e, $e1
    xor e
    ld bc, $a7e6
    ld [bc], a
    ld [bc], a
    rlca
    rra
    ldh [$ff3c], a
    pop bc
    rst $38
    nop
    adc $11
    rst $00
    ld bc, $057b
    nop
    rst $38
    ld hl, $53de
    xor h
    adc c
    ld [bc], a
    nop
    ld [$8778], sp
    db $fc
    inc bc
    rst $08
    db $10
    ld a, a
    add b
    ld a, $a6
    ld [bc], a
    di
    dec b
    ld [$94f7], sp
    ld l, e
    ret z

    scf
    add e
    ld [bc], a
    ld b, $16
    call c, $af23
    ld d, b
    ld e, a
    and b
    ccf
    ld b, b
    rra
    jr nz, @+$03

    ld e, $80
    add c

jr_015_4f21:
    ld b, b
    ret nz

    jr nz, jr_015_4ec5

    db $10
    sub b
    inc e
    adc h
    inc bc
    and l
    ld [bc], a
    ld e, l
    and e
    ld [bc], a
    ld b, c
    nop
    nop
    and h
    nop
    ld d, b
    ld [bc], a
    ld h, $e6
    add hl, de
    add a
    nop
    ld e, b
    ld bc, $fc03
    xor c
    ld [bc], a
    ld a, [hl]
    ld bc, $07f8
    and a
    ld bc, $05f4
    cp $01
    rlca
    ld hl, sp+$07
    ld hl, sp-$57
    ld [bc], a
    ld h, h
    ld bc, $07f8
    ret


    nop
    inc sp
    ld bc, $f807
    xor c
    ld [bc], a
    ld c, h
    rlca
    di
    inc c
    ldh [rNR13], a
    ret nz

    jr nz, jr_015_4f66

jr_015_4f66:
    ret nz

    and e
    ld [bc], a
    sbc h
    ld [bc], a
    sbc a
    add b
    ld e, a
    jp $c300


    ld a, [bc]
    db $10
    rrca
    adc b
    inc b
    add a
    ld [bc], a
    add e
    add c
    ld b, c
    ret nz

    jr c, jr_015_4f21

    ld bc, $03c0
    ld d, [hl]
    add c
    cpl
    ret nz

    and a
    nop
    jp z, $8107

    ld a, [hl]
    jp nz, $e53d

    ld a, [de]
    sub d
    ld c, l
    and h
    ld bc, $00da
    ld hl, $00a3
    ldh [rSB], a
    add hl, de
    db $e4
    sub e
    ld [bc], a
    sub $01
    inc e
    pop hl
    adc b
    nop

jr_015_4fa4:
    call c, Call_015_4700
    push bc
    nop
    reti


    dec b
    adc c
    halt
    inc bc
    db $fc
    daa
    ret c

    push bc
    ld bc, $0383
    rst $28
    nop
    sub $01
    and e
    ld [bc], a
    ld a, [hl+]
    dec bc
    pop bc
    add hl, sp
    add d
    ld b, e
    inc b
    add a
    ld [$380f], sp
    scf
    ld hl, sp-$39
    ld b, c
    ld hl, sp+$07
    adc b
    inc bc
    and b
    inc b
    adc h
    inc bc
    add e
    nop
    add b
    and l
    ld bc, $054c
    ei
    inc b
    ld [hl], l
    adc d
    dec sp
    call nz, Call_000_02a5
    db $f4
    adc c
    ld [bc], a
    nop
    dec b
    db $fc
    inc bc
    rst $08
    jr nz, jr_015_506a

    add b
    push bc
    inc b
    ld b, e
    dec b
    pop af
    ld c, $e2
    dec e
    pop bc
    ld a, $83
    nop
    db $ec
    and [hl]
    ld [bc], a
    jr nz, jr_015_4fff

    ret nc

    ld d, a

jr_015_4fff:
    xor b
    add e
    inc bc
    sub b
    and l
    ld bc, $0b8c
    inc bc
    add e
    inc c
    adc a
    jr jr_015_4fa4

    jr c, jr_015_5036

    ld a, b
    ld b, a
    ld hl, sp-$79
    add h
    nop
    db $10
    inc b
    add e
    inc e
    adc h
    db $10
    sub b
    add l
    nop
    xor d
    add e
    ld bc, $0100
    inc bc
    rlca
    and e
    ld [bc], a
    and [hl]
    add l
    nop
    cp d
    add e
    nop
    nop
    dec b
    jp $8c3f


    ld a, h
    db $10
    ldh a, [$ff85]

jr_015_5036:
    ld bc, $86ba
    inc b
    ld [hl], b
    ld [$118c], sp
    sub b
    inc hl
    jr nz, jr_015_5089

    ld b, b
    adc a
    add b
    add l
    inc b
    ld [hl], b
    ld bc, $8c0f
    add a
    ld bc, $8fa8
    inc b
    ld [hl], b
    adc a
    inc b
    db $10
    add [hl]
    ld bc, $06a0
    ld [$303f], sp
    ret nz

    rst $38
    nop
    rst $38
    adc e
    inc b
    ld e, [hl]
    ld [bc], a
    xor $11
    db $fc
    add l
    inc b
    dec c
    inc b

jr_015_506a:
    ld b, d
    inc b
    add h
    ld [$8788], sp
    inc b
    cp b
    adc e
    nop
    nop
    dec b
    rst $20
    ldh [$ff1f], a
    rra
    nop
    nop
    xor c
    nop
    ld d, b
    add l
    nop
    ld e, d
    ld bc, $e01f
    xor c
    nop
    ld [hl], d
    and l

jr_015_5089:
    nop
    ld l, [hl]
    and l
    ld [bc], a
    sbc $83
    ld [bc], a
    ld h, b
    and [hl]
    nop
    ld e, b
    xor d
    nop
    add e
    inc bc
    rra
    rra
    rst $38
    ldh [$ff8c], a
    nop
    inc d
    nop
    rra
    adc l
    ld [bc], a
    ld b, d
    ld bc, $9f1f
    adc l
    dec b
    add d
    adc a
    ld [bc], a
    ld b, b
    inc bc
    rra
    rra
    ldh [$ffe3], a
    adc h
    nop
    sub h
    ld [bc], a
    rra
    ldh [$fffe], a
    adc e
    nop
    inc b
    adc b
    nop
    or b
    nop
    ld sp, $0185
    ld c, d
    add [hl]
    dec b
    db $10
    inc bc
    ld [$3031], sp
    jp Jump_000_0084


    dec bc
    adc b
    nop
    and b
    nop
    or c
    add l
    ld bc, $034a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp $0306


    add a
    ld b, $00
    rst $10
    ld b, $17
    rst $38
    adc l
    ld c, h
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ldh [rLYC], a
    ld de, $1001
    ld a, [hl]
    db $10
    ld e, b
    ld bc, $0224
    ld a, [hl+]
    ld a, [hl+]
    dec d
    ld bc, $0c10
    ld h, $0f
    inc l
    ld a, [hl-]
    db $10
    ld [bc], a
    dec d
    ld c, $02
    ld [de], a
    ld a, [hl]
    inc a
    ld d, e
    ld [de], a
    rla
    ld a, [hl]
    ld h, $2c
    ld a, [hl]
    ld a, $55
    ld de, $2119
    ld a, [hl]
    ld a, [hl]
    ld l, $50
    ld d, a
    rla
    ld a, [hl]
    inc hl
    jr z, jr_015_5135

    ld b, b
    ld l, $19
    jr z, jr_015_5168

    ld de, $0159
    ld e, d
    ld b, b
    ld e, e
    ld b, b
    ld e, h
    ld b, b
    ld d, a
    rrca
    ld a, [hl]
    ld [de], a

jr_015_5135:
    add b
    add b
    ld [de], a
    db $e4
    or l
    add b
    ld h, d
    ld a, l
    ldh [$ff3f], a
    db $10
    ld de, $7e01
    ld c, b
    inc [hl]
    dec de
    ld [bc], a
    inc [hl]
    ld de, $1d11
    ld de, $1d0a
    rrca
    ld [hl], $3b
    ld de, $0501
    dec c
    ld a, [hl]
    ld [bc], a
    ld [de], a
    dec a
    ld b, e
    ld [bc], a
    rlca
    jr nz, @+$80

    ld [hl], $43
    ld a, [hl]
    ld b, l
    ld [de], a
    add hl, bc
    ld [hl+], a
    jr nc, jr_015_51e5

    ld a, [hl]

jr_015_5168:
    ccf
    ld b, a
    ld de, $7e30
    ld [hl-], a
    ld [de], a
    jr c, @+$53

    ld b, l
    ld [hl-], a
    jr c, @+$4f

    ld c, c
    inc [hl]
    ld c, d
    inc [hl]
    ld c, e
    ld bc, $104c
    ld c, l
    ld de, $bef0
    nop
    ld b, h
    ldh [rLY], a
    ld bc, $1110
    ld a, [hl]
    inc d
    dec h
    dec bc
    dec h
    inc bc
    dec hl
    dec hl
    ld d, $10
    inc d
    dec c
    ld a, [hl]
    ld a, [hl]
    dec l
    dec sp
    ld d, d
    inc bc
    ld d, $7e
    inc bc
    inc de
    ld a, [hl]
    dec a
    ld d, h
    inc de
    jr jr_015_51c4

    ld a, [hl]
    dec l
    ld a, [hl]
    ccf
    ld d, [hl]
    ld bc, $2210
    daa
    rra
    cpl
    ld a, [de]
    db $10
    jr jr_015_51da

    db $10
    add hl, hl
    inc de
    ld b, c
    cpl
    db $10
    add hl, hl
    ld c, a
    ld e, a
    dec h
    ld e, l
    dec h
    ld c, [hl]
    ld de, $015e
    ld c, a

jr_015_51c4:
    db $10
    ld a, [hl]
    rra
    add b
    inc bc
    inc bc
    db $e4
    or [hl]
    add b
    add [hl]
    nop
    ld bc, $1c11
    dec [hl]
    inc e
    inc bc
    dec [hl]
    ld a, [hl-]
    ld b, d
    ld e, $04

jr_015_51da:
    inc c
    ld e, $7e
    ld a, [hl]
    inc a
    ld b, d
    db $10
    ld b, $0e
    add e
    ld [bc], a

jr_015_51e5:
    jr jr_015_5202

    ld b, h
    inc bc
    ld [$7e21], sp
    ld a, [hl]
    ld b, h
    ld a, $46
    inc de
    ld de, $3123
    rra
    scf
    ld d, b
    ld de, $3101
    scf
    inc sp
    inc de
    add hl, sp
    ld bc, $3346
    add hl, sp

jr_015_5202:
    ld de, $1c41
    dec [hl]
    dec b
    ld bc, $1010
    ld de, $0111
    ldh a, [$ffba]
    ld [bc], a
    ld b, d
    ld bc, $0000
    call nz, $fd03
    ld b, c
    ld bc, $0684
    ld bc, $8501
    add l
    ld bc, $8480
    inc hl
    ld bc, $8501
    add b
    cpl
    ld bc, $8001
    add [hl]
    inc hl
    ld bc, $870b
    add b
    ld bc, $8601
    ld bc, $8701
    ld bc, $0186
    add a
    ld b, c
    add h
    ld bc, $8701
    add c
    ld b, c
    add a
    add b
    inc bc
    ld bc, $fd01
    cp $e4
    or [hl]
    nop
    rst $38
    ld h, e
    inc b
    inc a
    rst $38
    jp $9cc3


    ld b, e
    add b
    sbc a
    dec bc
    add b
    add e
    add b
    pop bc

jr_015_525c:
    ret nz

    db $fc
    db $fc
    cp $fe
    rlca
    rrca
    inc bc
    ld b, d
    rst $38
    ld bc, $ff02
    nop
    nop
    ld b, l
    nop
    ld bc, $0002
    rst $38
    nop
    ld b, [hl]
    jr jr_015_525c

    inc bc
    jr jr_015_5278

jr_015_5278:
    db $fc
    nop
    ld b, l
    ld [bc], a
    ld hl, sp+$0a
    rlca
    ldh a, [$ff0c]
    rst $20
    jr @-$2f

    jr nc, @-$5f

    ld h, b
    ccf
    ret nz

    ld b, d
    ld a, a
    add b
    ld [bc], a
    nop
    cp $00
    ld b, h
    inc bc
    db $fc
    rlca
    inc bc
    ld hl, sp+$07
    inc a
    rst $38
    rst $00
    jp Jump_015_4339


    rlca
    ld sp, hl
    inc b
    rlca
    pop bc
    ccf
    nop
    rst $38
    adc e
    nop
    ld h, d
    sub c
    nop
    ld c, [hl]
    dec hl
    rst $38
    inc c
    ld hl, sp-$01
    ldh [rIE], a
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $ff42
    nop
    daa
    rst $38
    ld b, c
    ld a, a
    rst $38
    inc bc
    ccf
    sbc a

jr_015_52c6:
    ld a, a
    rlca
    ld [hl+], a
    rst $38
    ld [bc], a
    ccf
    rst $38
    rlca
    ld b, h
    rst $38
    nop
    nop
    rst $38
    add h
    nop
    rst $08
    nop
    rrca
    ld c, c
    rst $38
    nop
    dec b
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    add e
    nop
    nop
    nop
    inc a
    sub b
    nop
    db $eb
    inc bc
    ccf
    nop
    sbc a
    add b
    ld b, d
    rst $08
    ret nz

    cp a
    nop
    add b
    xor a
    nop
    ld b, b
    xor a
    nop
    ld h, b
    ld bc, $7f83
    jp $cb00


    inc bc
    ret nz

    ret nz

    add b
    cp a
    ld b, d
    nop
    ld a, a
    adc a
    ld bc, $bf30
    nop
    jr nz, jr_015_52c6

    nop
    or b
    and a
    nop
    and a
    xor e
    nop
    ret nz

    and e
    ld bc, $a5bb
    nop
    ldh [$fff4], a
    inc h
    nop
    push de
    and e
    nop
    ld hl, sp+$00
    ldh a, [$ff2f]
    nop
    call nz, $c000
    dec b
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld b, d
    di
    rrca
    ld b, l
    nop
    rst $38
    ld [bc], a
    inc bc
    db $fc
    rrca
    xor [hl]
    ld [bc], a
    rra
    ld bc, $07f8
    adc d
    ld bc, $a3f3
    ld bc, $0414
    ld hl, sp+$0f
    ldh a, [$ff1f]
    ldh [$ff85], a
    ld bc, $0512
    rra
    nop
    rrca
    nop
    inc bc
    nop
    adc d
    nop
    rst $20
    and h
    ld [bc], a
    ld e, d
    adc b
    ld [bc], a
    ld h, h
    add l
    ld [bc], a
    ld [$0188], sp
    rrca
    ld b, $1f
    nop
    rlca
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    rst $20
    nop
    inc bc
    and e
    ld [bc], a
    ld [hl], h
    inc l
    nop
    ld bc, $07f8
    push bc
    ld bc, $002f
    add b
    add a
    ld [bc], a
    add h
    ld [bc], a
    ldh a, [rP1]
    ldh [$ff8d], a
    ld [bc], a
    ld [bc], a
    and h
    ld [bc], a
    ld a, [hl-]
    xor b
    nop
    call nc, Call_000_01c3
    dec sp
    ld bc, $f807
    adc c
    ld [bc], a
    sub $01
    nop
    rst $38
    and e
    ld [bc], a
    ldh [$ffa3], a
    ld [bc], a
    ld d, b
    ld bc, $07f8
    add a
    ld bc, $8538
    nop
    ld l, d
    ld [bc], a
    ld hl, sp+$07
    ret nz

    add e
    nop
    ld a, a
    ld [bc], a
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp $1303


    add a
    inc bc
    db $10
    rst $00
    inc bc
    daa
    add a
    inc bc
    db $10
    rst $00
    inc bc
    scf
    add a
    inc bc
    db $10
    rst $00
    inc bc
    ld b, a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    ld d, a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    ld h, a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    ld [hl], a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    add a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    sub a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    and a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    or a
    add a
    inc bc
    db $10
    rst $00
    inc bc
    rst $00
    add a
    inc bc
    db $10
    rst $00
    inc bc
    rst $10
    add a
    inc bc
    db $10
    rst $00
    inc bc
    rst $20
    add a
    inc bc
    db $10
    rst $00
    inc bc
    rst $30
    add a
    inc bc
    db $10
    rst $00
    inc b
    rlca
    add a
    inc bc
    db $10
    rst $00
    inc b
    rla
    add a
    inc bc
    db $10
    rst $00
    inc b
    daa
    add a
    inc bc
    db $10
    rst $00
    inc b
    scf
    add a
    inc bc
    db $10
    rst $00
    inc b
    ld b, a
    add a
    inc bc
    db $10
    rst $00
    inc b
    ld d, a
    add a
    inc bc
    db $10
    rst $00
    inc b
    ld h, a
    add a
    inc bc
    db $10
    rst $00
    inc b
    ld [hl], a
    add a
    inc bc
    db $10
    rst $00
    inc b
    add a
    add a
    inc bc
    db $10
    rst $00
    inc b
    sub a
    pop af
    adc a
    inc bc
    db $10
    rst $38
    ld c, l
    ld d, d
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    dec bc
    nop
    db $10
    ld [de], a
    ld [bc], a
    inc b
    dec d
    jr nz, jr_015_5467

    inc d
    jr nz, @+$0a

    inc d

jr_015_5467:
    inc h
    ld a, a
    ldh [rNR50], a
    ld a, [bc]
    dec c
    ld c, $1c
    ld a, [hl]
    ld [hl+], a
    ld [hl+], a
    cpl
    ld l, $7d
    ld a, [hl]
    ld a, [hl]
    daa
    add b
    jr z, jr_015_549a

    add hl, hl
    dec hl
    daa
    dec bc
    ld a, [hl]
    dec l
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    ld [de], a
    add b
    inc d
    ld a, [hl]
    jr z, jr_015_54ae

    ld a, [bc]
    add b
    ld a, [hl]
    rlca
    db $e4
    push bc
    add b
    ld h, d
    ld a, l
    inc bc
    db $10
    rlca
    inc b
    ld [de], a

jr_015_549a:
    add e
    nop
    ld a, [bc]
    inc bc
    ld b, $14
    jr jr_015_54aa

    inc h
    ld a, a
    ldh [rNR50], a
    ld a, [de]
    ld e, $0c
    dec e

jr_015_54aa:
    ld a, [hl]
    inc hl
    dec l
    ld [hl+], a

jr_015_54ae:
    ld a, l
    ld a, l
    ld a, [hl]
    ld h, $2c
    ld a, [hl+]
    add hl, hl
    rrca
    rra
    ld h, $2c
    dec de
    ld [hl+], a
    cpl
    nop
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    inc b
    add b
    ld [$297e], sp
    dec l
    ld a, [de]
    add b
    nop
    ld a, [hl]
    db $e4
    push bc
    add b
    ld h, d
    ld a, l
    ld d, $01
    ld hl, $0313
    dec b
    inc de
    inc bc
    dec b
    rla
    add hl, de
    add hl, bc
    rla
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [hl]
    ld l, $30
    ld a, [hl]
    ld a, [hl]
    dec h
    inc hl
    ld a, l
    adc b
    ld bc, $0e38
    ld a, [hl]
    inc l
    add hl, hl
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    dec bc
    inc de
    add b
    rla
    ld a, [hl]
    add b
    ld a, l
    ld a, [hl]
    ldh a, [$ffcb]
    nop
    scf
    ld bc, $1611
    add e
    ld [bc], a
    ld b, $0f
    inc de
    add hl, de
    add hl, bc
    rla
    add hl, de
    add hl, bc
    ld a, [de]
    dec e
    dec e
    dec de
    ld a, [de]
    ld [hl+], a
    ld a, l
    ld a, [hl]
    ld a, [hl]
    inc h
    inc hl
    ld a, l
    ld bc, $2430
    adc b
    ld [bc], a
    ld e, $0d
    jr z, jr_015_5542

    ld a, h
    ld a, a
    ld a, a
    ld a, [hl]
    dec de
    dec b
    add b
    add hl, bc
    inc h
    add b
    ld a, l
    ld [hl+], a
    ldh a, [$ffc7]
    ld bc, $2336
    nop
    ld bc, $0101
    db $e4
    inc h
    nop
    ld bc, $fefd
    daa
    ld bc, $0101

jr_015_5542:
    ld bc, $c7e4
    nop
    rst $38
    ld h, e
    inc h
    nop
    dec bc
    ld bc, $0201
    ld bc, $0106
    ld c, $01
    ld e, $1e
    jr nz, jr_015_5575

    ld b, e
    ld h, b
    sbc [hl]
    nop
    ld h, b
    ld b, e
    ld e, $e0
    ld b, c
    nop
    rst $38
    ld b, e
    rst $38
    nop
    ld bc, $0000
    cp a
    nop
    db $10
    ld [bc], a
    ld e, $20
    ld bc, $00c6
    dec c
    ld bc, $0100

jr_015_5575:
    inc hl
    nop
    xor a
    nop
    nop
    ret z

    nop
    ld l, $84
    nop

jr_015_557f:
    ld [hl], b
    ld b, e
    ld e, $e0
    adc b
    nop
    ld [de], a
    nop
    ld h, b
    cp a
    nop
    ld [hl], b
    or b
    nop
    ld d, b
    add h
    nop
    ld h, $0b
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$f403]
    ld [bc], a
    pop hl
    nop
    pop bc
    and a
    nop
    ld e, d
    add e
    nop
    ld e, e
    inc hl
    rst $38
    ldh [$ff38], a
    nop
    nop
    dec b
    nop
    dec bc
    nop
    ld d, $00
    inc l
    nop
    ld e, b
    ld bc, $8330
    jr nz, jr_015_557f

    nop
    rst $28
    ld bc, $03fe
    db $fc
    ld b, $f9
    dec c
    ldh a, [c]
    ld a, [de]
    push hl
    inc [hl]
    sra h
    db $d3
    ld e, b
    and a
    or b
    ld c, a
    ld h, b
    sbc a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $30
    inc b
    db $e3
    inc c
    pop bc
    ld a, [de]
    add b
    inc [hl]
    nop
    ld l, b
    nop
    ret nc

    nop
    and b
    add a
    nop
    db $db
    xor c
    nop
    ld e, d
    inc c
    ld bc, $8300
    ld b, b
    add a
    ret nz

    cpl
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    add a
    nop
    daa
    ld bc, $7e7e
    daa
    ld b, d
    jp $4301


Call_015_5600:
    add a
    ld bc, $c740
    ld bc, $8757
    ld bc, $c740
    ld bc, $8767
    ld bc, $c740
    ld bc, $8777
    ld bc, $c740
    ld bc, $8787
    ld bc, $c740
    ld bc, $8797
    ld bc, $c740
    ld bc, $87a7
    ld bc, $c740
    ld bc, $87b7
    ld bc, $c740
    ld bc, $87c7
    ld bc, $c740
    ld bc, $87d7
    ld bc, $c740
    ld bc, $87e7
    ld bc, $c740
    ld bc, $87f7
    ld bc, $c740
    ld [bc], a
    rlca
    add a
    ld bc, $c740
    ld [bc], a
    rla
    add a
    ld bc, $c740
    ld [bc], a
    daa
    add a
    ld bc, $c740
    ld [bc], a
    scf
    add a
    ld bc, $c740
    ld [bc], a
    ld b, a
    add a
    ld bc, $c740
    ld [bc], a
    ld d, a
    add a
    ld bc, $c740
    ld [bc], a
    ld h, a
    add a
    ld bc, $c740
    ld [bc], a
    ld [hl], a
    add a
    ld bc, $c740
    ld [bc], a
    add a
    add a
    ld bc, $c740
    ld [bc], a
    sub a
    add a
    ld bc, $c740
    ld [bc], a
    and a
    add a
    ld bc, $c740
    ld [bc], a
    or a
    add a
    ld bc, $c740
    ld [bc], a
    rst $00
    add a
    ld bc, $c740
    ld [bc], a
    rst $10
    add a
    ld bc, $c740
    ld [bc], a
    rst $20
    add a
    ld bc, $c740
    ld [bc], a
    rst $30
    add a
    ld bc, $c740
    inc bc
    rlca
    add a
    ld bc, $c740
    inc bc
    rla
    add a
    ld bc, $c740
    inc bc
    daa
    add a
    ld bc, $c740
    inc bc
    scf
    add a
    ld bc, $c740
    inc bc
    ld b, a
    add a
    ld bc, $c740
    inc bc
    ld d, a
    add a
    ld bc, $c740
    inc bc
    ld h, a
    add a
    ld bc, $c740
    inc bc
    ld [hl], a
    add a
    ld bc, $c740
    inc bc
    add a
    add a
    ld bc, $c740
    inc bc
    sub a
    add a
    ld bc, $c740
    inc bc
    and a
    add a
    ld bc, $fa40
    ld [hl], a
    inc bc
    or a
    rst $38
    ld b, a
    ld d, l
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    rlca
    nop
    ld [$8002], sp
    db $10
    ld c, $10
    ld a, h
    db $e4
    di
    add b
    ld h, d
    ld a, l
    rlca
    inc b
    add b
    ld b, $0a
    inc c
    ld [de], a
    inc c
    ld a, [bc]
    db $e4
    di
    add b
    ld h, d
    ld a, l
    rlca
    ld bc, $8005
    rlca
    ld de, $110f
    rlca
    db $e4
    di
    add b
    ld h, e
    ld a, l
    ld b, $09
    inc bc
    dec bc
    dec c
    inc de
    ld a, h
    dec bc
    db $e4
    ldh a, [c]
    add b
    daa
    nop
    inc bc
    ld bc, $fd01
    cp $e4
    ldh a, [c]
    nop
    rst $38
    ld [hl], e
    inc hl
    nop
    dec b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    inc hl
    ld a, a
    ld bc, $ffff
    xor a
    nop
    nop
    ld b, c
    nop
    rst $38
    inc b
    rlca
    rst $38
    rra
    rst $38
    ccf
    ld b, c
    rst $38
    ld a, a
    nop
    rst $38
    xor a
    nop
    ld e, $08
    rst $38
    rst $38
    rrca
    ld [hl], b
    rlca
    jr c, jr_015_5766

    rra
    sbc a
    add [hl]
    nop
    ld h, $af
    nop

jr_015_5766:
    ld a, $83
    nop
    ld c, $01
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp Jump_015_6300


    add a
    nop
    ld h, b
    rst $00
    nop
    ld [hl], a
    add a
    nop
    ld h, b
    rst $00
    nop
    add a
    add a
    nop
    ld h, b
    rst $00
    nop
    sub a
    add a
    nop
    ld h, b
    rst $00
    nop
    and a
    ldh a, [rVBK]
    nop
    ld h, b
    inc bc
    ccf
    ccf
    ld b, b
    ld b, b
    inc hl
    add b
    nop
    adc a
    ld b, e
    add b
    sbc a
    ld c, $80
    sbc [hl]
    pop bc
    sbc a
    ldh [$ff87], a
    ld hl, sp-$7f
    cp $e0
    sbc a
    ld hl, sp-$79
    cp $81
    add l
    nop
    ld c, $05
    jr jr_015_57b0

jr_015_57b0:
    rst $38
    nop
    rst $08
    jr nz, jr_015_57f7

    rst $38
    nop
    ld a, [de]
    ld a, [hl]
    add c
    rra
    ldh [rTAC], a
    ld hl, sp-$7f
    ld a, [hl]
    ldh [$ff1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    add b
    cp $80
    ld hl, sp-$80
    ldh [$ff80], a
    add c
    add b
    add a
    add b
    sbc a
    ld b, d
    add b
    rst $38
    nop
    add b
    adc h
    ld bc, $0214
    nop
    ld a, a
    add b
    sub a
    ld bc, HeaderTitle
    sbc [hl]
    add c
    ld b, e
    sbc a
    ldh [rSB], a
    adc a
    ldh a, [rSTAT]
    add b
    rst $38
    inc d
    ld b, b
    ld a, a

jr_015_57f1:
    ccf
    ccf
    rst $38
    nop
    cp $00

jr_015_57f7:
    ld hl, sp+$00
    ldh [rP1], a
    add c
    nop
    rlca
    nop
    ld e, $01
    ld a, a
    nop
    rst $38
    add [hl]
    ld bc, $0127
    jr jr_015_57f1

    push bc
    nop
    ld [hl-], a
    inc bc
    ccf
    rst $38
    ld b, b
    ret nz

    adc h
    ld bc, $8b04
    ld bc, $0781
    rst $38
    ccf
    rst $38
    rrca
    nop
    ccf
    nop
    ld a, [hl]
    adc b
    ld bc, $0193
    rra
    nop
    and e
    ld bc, $0b8a
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [rNR44]
    ldh [rBGP], a
    ret nz

    add a
    add b
    ld b, c
    rst $08
    nop
    inc b
    rra
    ld h, b
    rlca
    ld a, b
    ld bc, $0187
    add hl, sp
    add h
    nop
    rrca
    nop
    jp Jump_000_0042


    rst $38
    inc bc
    nop
    rst $20
    db $10
    rst $38
    adc h
    ld bc, $00d3
    ld a, a
    or e
    nop
    rst $38
    ld a, [de]
    ld bc, $01f9
    pop hl
    ld bc, $0181
    rlca
    ld bc, $011f
    ld a, a
    ld bc, $01ff
    ld a, a
    add c
    rra
    pop hl
    rlca
    ld sp, hl
    add c
    ld a, a
    pop hl
    rra
    ld sp, hl
    rlca
    and h
    ld bc, $8d4e
    ld [bc], a
    inc sp
    ld bc, $fe00
    adc h
    ld [bc], a
    inc de
    adc e
    ld bc, $0560
    ld a, b
    rlca
    cp $01
    rst $20
    db $10
    add $02
    inc c
    nop
    inc a
    add l
    ld bc, $8baa
    ld [bc], a
    ld b, b
    ld bc, $0779
    or c
    ld bc, $bf7e
    ld bc, $c3b0
    ld [bc], a
    dec h
    ld c, $04
    inc b
    ld [$1008], sp
    db $10
    inc hl
    jr nz, jr_015_58f2

    ld b, b
    add a
    add b
    inc c
    nop
    inc a
    ld b, c
    nop
    ld a, c
    ld b, c
    nop
    di
    ld b, c
    nop
    rst $20
    nop
    nop
    ld b, c
    di
    inc c
    dec b
    ld hl, sp+$01
    ldh [rSB], a
    add b
    ld bc, $0285
    ld a, [de]
    or b
    ld [bc], a
    ret nc

    ld [bc], a
    ret nz

    inc a
    ret nz

    ld b, c
    sbc [hl]
    ld h, b
    ld b, c
    rst $08
    jr nc, @+$43

    rst $20
    jr jr_015_58dc

    adc a
    add b

jr_015_58dc:
    cp a
    adc h
    ld bc, $8541
    ld bc, $0100
    adc l
    add d
    ld b, c
    sbc a
    add b
    ld [de], a
    sub a
    add b
    sbc a
    add b
    rrca
    ldh a, [rTAC]
    cp b

jr_015_58f2:
    inc bc
    sbc h
    ld bc, $408e
    add a
    ld h, b
    add e
    ld [hl], b
    add c
    ld a, b
    and [hl]
    ld bc, $09ff
    ei
    nop
    rst $38
    nop
    rst $28
    db $10
    ccf
    ret nz

    ld e, $e0
    add e
    nop
    ld b, b
    rra
    inc bc
    inc e
    add c
    ld c, $c0
    rlca
    ldh [$ff03], a
    ldh a, [rSB]
    ld hl, sp+$00
    ld a, b
    add a
    ld [hl], b
    adc [hl]
    ld h, b
    sbc h
    ld b, c
    cp b
    inc bc
    ldh a, [rTAC]
    ldh [rIF], a
    ret nz

    rra
    add b
    cp a
    ld a, a
    ld b, b
    ret nz

    adc e
    inc bc
    inc [hl]
    nop
    ld a, a
    adc [hl]
    ld bc, $0061
    nop
    add [hl]
    ld [bc], a
    ld l, e
    call nz, $a603
    jr z, jr_015_5941

jr_015_5941:
    add e
    ld bc, $00dc
    ccf
    ld b, c

jr_015_5947:
    nop
    ld a, a
    nop
    nop
    pop de
    inc bc
    cp [hl]
    nop
    rrca
    ld c, e
    nop
    rst $38
    call nz, $d303
    rrca
    cp $01
    ld hl, sp+$06
    ld sp, hl
    inc b
    pop hl
    jr jr_015_5947

    db $10
    add a
    ld h, b
    sbc a
    ld b, b
    rra
    add b
    and h
    ld bc, $8ad0
    ld bc, $af63
    ld bc, $02e0
    pop af
    ld bc, $8dfd
    ld [bc], a
    ld b, c
    add h
    nop
    rrca
    ld [$00ff], sp
    db $fd
    nop
    rst $38
    nop
    sbc h
    ld h, e
    ld hl, sp-$50
    inc bc
    ld e, a
    xor c
    inc bc
    jr nc, @+$04

    jp hl


    ld bc, $b2f9
    inc bc
    dec a
    cp c
    inc bc
    ld [hl], b
    add l
    inc b
    ld e, d
    ld bc, $01fe
    adc l
    ld [bc], a
    ld h, d
    db $f4
    ld sp, $a003
    nop
    ld hl, sp-$68
    inc bc
    db $d3
    nop
    ld hl, sp-$4e
    inc bc
    db $ed
    ld c, $01
    nop
    ld [bc], a
    nop
    inc b
    nop
    add hl, bc
    nop
    rla
    nop
    daa
    nop
    ld e, a
    nop
    sbc a
    add h
    inc b
    rst $28
    dec bc
    rra
    jr nz, @+$09

    jr @+$09

    ld [$0601], sp
    ld bc, $0002
    ld bc, $0484
    and a
    ld a, [de]
    db $fc
    ld bc, $07f8
    ldh a, [rTAC]
    ldh [$ff1f], a
    ret nz

    rra
    add b
    sbc a
    ld h, b
    ld e, a
    and b
    daa
    ret c

    rla
    add sp, $09
    or $04
    ei

jr_015_59e6:
    ld [bc], a
    db $fd
    ld bc, $84fe
    dec b
    ld hl, $0007
    ld sp, hl
    nop
    rst $30
    nop
    rst $20
    nop
    rst $18
    add h
    dec b

jr_015_59f8:
    dec c
    ld [de], a
    sbc a
    ld h, b
    rst $18
    jr nz, jr_015_59e6

    jr jr_015_59f8

    ld [$06f9], sp
    db $fd
    ld [bc], a
    cp $01
    ld l, a
    nop
    ld e, a
    nop
    cp a
    add h
    ld [bc], a
    ld l, l
    jp Jump_000_3f05


    dec c
    ld a, [$fe05]
    ld bc, $03fc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$ff1f], a
    ret nz

    ccf
    jp Jump_015_6301


    ld b, $01
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    add [hl]
    inc bc
    or a
    ld de, $00ff
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$ff1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    adc $05
    adc [hl]
    nop
    nop
    daa
    jr jr_015_5a4c

    inc h

jr_015_5a4c:
    inc a
    ld b, d
    inc a
    inc h
    ld bc, $4266
    ld b, d
    ld e, d
    ld h, [hl]
    ld bc, $81c3
    ld b, d
    and l
    jp $3307


    inc sp
    ld c, h
    ld c, h
    add e
    add b
    sbc h
    add e
    ld b, c
    ld e, h
    ld b, e
    rlca
    sbc c
    add [hl]
    sub b
    adc a
    add [hl]
    sbc c
    xor a
    sub b
    ld b, c
    ld e, a
    ld b, b
    dec bc
    sbc a
    add b
    add b
    sbc a
    ld c, h
    ld a, a
    inc sp
    inc sp
    ld a, [hl]
    inc a
    ld b, d
    ld b, d
    add h
    dec b
    jp z, $db06

    and l
    db $db
    ld b, d
    ld a, [hl]
    ld a, [hl]
    inc a
    db $f4
    xor a
    dec b
    nop
    sbc a
    nop
    ld h, b
    and e
    dec b
    ret nc

    inc bc
    ld bc, $f907
    rlca
    ld b, c
    ld a, [$0706]
    push af
    rrca
    ld h, c
    sbc a
    add hl, bc
    rst $30
    sbc c
    ld h, a
    ld b, c
    ld a, [hl-]
    add $03
    add hl, sp
    rst $00
    pop bc
    rst $38
    and e
    dec b
    db $ec
    inc b
    ld b, d
    inc a
    add c
    ld b, d
    ld e, $42
    add c
    ld a, $04
    add c
    cp l
    ld b, d
    ld b, d
    inc a
    ldh a, [$ff2f]
    nop
    ld h, b
    rst $38
    inc [hl]
    ld d, a
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    dec e
    dec bc
    ld [bc], a
    rlca
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    inc hl
    dec h
    dec h
    add b
    jr nz, jr_015_5ae0

    ld d, $16
    daa
    inc [hl]

jr_015_5ae0:
    inc [hl]
    dec c
    rra
    rlca
    ld d, $09
    ld a, [hl]
    ld sp, $1f22
    ld c, a
    nop
    inc b
    ld b, c
    rlca
    dec bc
    ldh [rNR42], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    dec bc
    nop
    jr z, jr_015_5b1f

    inc hl
    daa
    ld a, [hl+]
    add b
    ld a, l
    ld d, a

Jump_015_5b00:
    add b
    ld e, b
    jr z, jr_015_5b43

    dec hl
    dec a
    add b
    ld e, b
    ld b, a
    ld a, [hl]
    add b
    ld d, b
    ld b, c
    ld b, [hl]
    add b
    ld d, b
    ld b, c
    ccf
    add b
    add b
    ld [hl+], a
    ccf
    add hl, bc
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, c
    ld d, b
    ld c, e
    ld h, a
    ccf

jr_015_5b1f:
    ld b, [hl]
    ccf
    ld b, d
    ccf
    ld b, c
    ld c, $46
    ld d, b
    ld d, b
    ccf
    ld b, [hl]
    ld a, a
    add b
    ld a, [hl]
    daa
    ld a, a
    ld a, h
    add b
    ld a, [hl]
    ld c, l
    ld e, a
    ld b, c
    add b
    add d
    dec e
    add b
    ld a, l
    dec hl
    dec a
    ld a, [hl+]
    add b
    ld e, b
    ld a, l
    ld d, a
    ccf
    ld a, l

jr_015_5b43:
    add b
    ld e, b
    ld d, a
    add b
    ld a, h
    ld a, h
    ld d, $80
    ld a, a
    add b
    add b
    inc b
    add b
    add d
    ccf
    add b
    ld d, b
    add b
    ld b, c
    add e
    nop
    ld b, d
    inc c
    ccf
    add b
    ld a, l
    ld a, a
    ld d, b
    ccf
    ld b, c
    ccf
    daa
    jr z, jr_015_5b99

    dec h
    add d
    db $e4
    ld h, d
    add b
    ld h, d
    ld a, l
    ldh [$ff4e], a
    db $10
    dec de
    rla
    add hl, de
    db $10
    db $10
    ld [de], a
    inc sp
    inc sp
    dec [hl]
    dec e
    add b
    ld b, $06
    inc d
    ld h, $26
    scf
    rrca
    jr nc, jr_015_5b9a

    ld b, $19
    ld c, $7e
    rrca

jr_015_5b88:
    ld [hl-], a
    ld c, a
    ld [de], a
    inc d
    add hl, de
    dec de
    add hl, de
    db $10
    db $10
    dec de
    db $10
    ld [de], a
    dec de
    ld [de], a
    inc sp
    jr c, jr_015_5bce

jr_015_5b99:
    scf

jr_015_5b9a:
    ld a, [hl-]
    add b
    ld b, a
    ld a, l
    ld c, b
    add b
    jr c, jr_015_5bd1

    dec l
    dec sp
    ld c, b
    add b
    ld a, [hl]
    ld d, a
    ld b, b
    add b
    ld d, [hl]
    ld d, c
    ld b, b
    add b
    cpl
    ld d, c
    add b
    ld b, b
    cpl
    cpl
    ld d, [hl]
    cpl
    ld b, b
    ld b, b
    ld d, c
    add b
    ld c, e
    ld h, a
    ld d, [hl]
    inc hl
    cpl
    ld [de], a
    ld d, c
    cpl
    ld d, c
    ld d, [hl]
    ld d, c
    ld b, b
    ld b, b
    ld d, [hl]
    cpl
    ld a, a
    add b
    ld a, [hl]
    scf
    ld a, a

jr_015_5bce:
    ld a, a
    add b
    ld a, [hl]

jr_015_5bd1:
    ld e, l
    ld e, a
    ld b, c
    add b
    add h
    dec c
    add b
    ld a, l
    dec l
    dec sp
    ld a, [hl-]
    ld c, b
    add b
    ld b, a
    ld a, l
    cpl
    ld a, l
    add b
    ld c, b
    ld b, a
    ld b, c
    add b
    ld b, $83
    nop
    add b
    ld b, $14
    add b
    add h
    cpl
    add b
    add b
    ld b, b
    add h
    ld bc, $0c40
    cpl
    add b
    ld a, l
    ld a, a
    ld b, b
    cpl
    cpl
    ld d, c
    ld h, $33
    scf
    jr c, jr_015_5b88

    db $e4
    ld h, d
    add b
    ld h, d
    ld a, l
    ldh [rLCDC], a
    ld bc, $0c03
    ld a, [bc]
    ld bc, $0303
    inc h
    ld h, $26
    dec e
    ld hl, $0605
    ld b, $24
    ld h, $26
    add hl, hl
    ld b, $08
    ld a, [bc]
    ld a, [bc]
    ld c, $21
    dec b
    ld b, $80
    ld bc, $0805
    ld bc, $0c0c
    ld a, [bc]
    ld a, [bc]
    ld [$0c0a], sp
    ld [$2624], sp
    inc h
    inc h
    add b
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, b
    ld d, a
    inc h
    cpl
    inc l
    ld a, $48
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld b, b
    ld d, [hl]
    add b
    ld d, c
    ld b, b
    cpl
    add b
    add e
    ld bc, $8440
    ld bc, $0b51
    add b
    ld d, c
    ld c, h
    ld l, b
    ld d, [hl]
    cpl
    ld d, c
    ld d, c
    ld b, b
    cpl
    ld b, b
    ld d, [hl]
    add e
    ld bc, $0546
    ld d, c
    ld d, c
    ld a, a
    ldh a, [$fff2]
    db $f4
    add e
    ld bc, $0163
    ld c, [hl]
    ld e, a
    ld b, c
    add b
    add e
    inc bc
    add b
    ld a, l
    inc l
    ld a, $c3
    ld bc, $0534
    ld a, [hl]
    cpl
    ld b, a
    ld c, b
    ld a, l
    ld a, [hl]
    add [hl]
    ld bc, $037b
    ldh a, [rTIMA]
    add b
    add e
    jp $4102


    inc bc
    add b
    ld b, b
    cpl
    add b
    add h
    ld bc, $088e
    cpl
    ld d, c
    ld b, b
    cpl
    inc h
    inc h
    ld h, $26
    add e
    db $e4
    ld h, d
    add b
    ld h, d
    ld a, l
    ldh [$ff28], a
    ld de, $1813
    inc e
    ld de, $1311
    inc [hl]
    inc [hl]
    ld [hl], $1e
    jr nz, jr_015_5cc8

    ld d, $15
    inc [hl]
    inc [hl]
    ld [hl], $16
    add hl, sp
    jr jr_015_5cd3

    ld a, [de]
    ld e, $31
    ld d, $15
    add b
    inc de
    dec d
    ld a, [de]
    inc de
    inc e
    jr jr_015_5ce0

jr_015_5cc8:
    inc e
    jr jr_015_5ce5

    inc e
    ld a, [de]
    inc [hl]
    ld [hl+], a
    ld [hl], $13
    add b
    ld a, [hl-]

jr_015_5cd3:
    ld a, [hl]
    ld d, a
    ld b, a
    ld e, b
    ld [hl], $3f
    ld l, $3c
    ld a, l
    ld e, b
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]

jr_015_5ce0:
    ld d, b
    ld b, c
    add b
    ccf
    ld d, b

jr_015_5ce5:
    add e
    nop
    adc e
    nop
    ld b, [hl]
    inc h
    ccf
    dec de
    add b
    add b
    ld c, h
    ld l, b
    ccf
    ld b, [hl]
    ld b, c
    ld b, c
    ccf
    ld d, b
    ld b, [hl]
    ld d, b
    ccf
    ld d, b
    ld b, [hl]
    ccf
    ld b, c
    ld b, c
    ld a, a
    pop af
    di
    push af
    ld a, h
    ld a, a
    add b
    ld a, [hl]
    ld e, [hl]
    ld e, a
    ld b, c
    add b
    add l
    dec de
    add b
    ld a, l
    ld l, $3c
    add b
    ld a, l
    ld e, b
    ld a, [hl]
    ld d, a
    ccf
    ld d, a
    ld e, b
    ld a, l
    ld a, [hl]
    ld a, h
    ld d, $80
    ld a, h
    add b
    ld a, a
    add b
    pop af
    dec d
    add b
    add l
    ccf
    ld d, b
    add b
    add l
    inc bc
    dec a
    add e
    nop
    sub b
    jp $9700


    inc b
    inc [hl]
    inc [hl]
    ld [hl], $36
    add l
    db $e4
    ld h, c
    add b
    inc hl
    nop
    ld h, $01
    ld [hl+], a
    inc bc
    inc b
    inc b
    dec b
    ld bc, $0101
    add a
    inc bc
    db $fd
    add e
    inc b
    ld a, [bc]
    nop
    ld [bc], a
    dec hl
    ld bc, $0322
    ld [hl+], a
    nop
    inc bc
    jr z, @+$2a

    nop
    nop
    add l
    inc b
    ld a, [hl+]
    inc sp
    nop
    nop
    ld [$04af], sp
    dec a
    ld [hl+], a
    nop
    dec b
    db $fd
    cp $28
    jr z, jr_015_5d9d

    ld bc, $0041
    ld hl, $2822
    adc d
    inc b
    ld [hl], $0b
    db $fd
    cp $fe
    db $fd
    ld b, b

jr_015_5d7b:
    db $10
    ld b, b
    nop
    ld bc, $2100

jr_015_5d81:
    nop
    jr z, jr_015_5dac

    ld [bc], a
    nop
    ld b, b

jr_015_5d87:
    db $10
    inc hl
    jr z, jr_015_5dcc

    ld b, b
    inc bc

jr_015_5d8d:
    ld bc, $1021
    db $e4
    ld h, b
    nop

jr_015_5d93:
    rst $38
    ld [hl], e
    inc hl
    nop
    dec b
    rlca

jr_015_5d99:
    rlca
    rra
    rra
    ccf

jr_015_5d9d:
    ccf
    inc hl
    ld a, a
    ld bc, $ffff
    xor a
    nop
    nop
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa

jr_015_5dac:
    ld b, d
    jp Jump_000_2300


    add a
    nop
    jr nz, jr_015_5d7b

    nop
    scf
    add a
    nop
    jr nz, jr_015_5d81

    nop
    ld b, a
    add a
    nop
    jr nz, jr_015_5d87

    nop

jr_015_5dc1:
    ld d, a
    add a
    nop
    jr nz, jr_015_5d8d

    nop
    ld h, a
    add a
    nop
    jr nz, jr_015_5d93

jr_015_5dcc:
    nop
    ld [hl], a
    add a
    nop
    jr nz, jr_015_5d99

    nop
    add a
    ldh a, [$ff6f]
    nop
    jr nz, @-$1e

    cpl
    ccf
    inc sp
    ld e, l
    ld c, h
    cp c
    ret z

    ld sp, hl
    ld hl, sp-$18
    ld l, a
    call nc, $b34f
    adc a
    cp c
    add a
    rst $38
    db $e3
    sbc l
    ld a, h
    add hl, de
    ld hl, sp-$07
    ld hl, sp+$1e
    add hl, de
    inc [hl]
    rrca
    di
    rrca
    ld sp, hl
    rlca
    db $fc
    add e
    add b
    rst $38
    add c
    rst $38
    cp $7e
    call z, $bc4c
    adc h
    or h
    adc h
    and h
    sbc h
    ld b, c
    jp hl


    sbc b
    rlca
    sbc c
    ld hl, sp-$07
    ld a, b
    ret


    ld c, [hl]
    or h
    adc a
    add e
    ld bc, $1f0c
    db $fc
    inc bc
    nop
    rst $38
    ld bc, $feff
    cp $8e
    adc a
    ld a, [hl]
    rlca
    rlca
    rst $38
    rst $38
    db $fc
    cp h
    add e
    ret nz

    cp a
    pop bc
    ld a, a
    cp $7e
    sbc h
    adc h
    or $8e
    ld [hl], a

jr_015_5e37:
    ld c, a
    ccf
    inc a
    ld b, c
    jp hl


    jr jr_015_5dc1

    ld bc, $0114
    add hl, de
    ld e, $85
    ld bc, $001a
    inc bc
    ld h, d
    inc bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld c, $0a
    inc a
    inc a
    ld e, h
    ld c, h
    or h
    adc h
    db $e4
    add [hl]
    ld bc, $0d2f
    ld a, c
    ld a, b
    add hl, de
    ld e, $04
    rlca
    inc bc
    inc bc
    nop
    nop
    db $fc
    inc bc
    jr nc, jr_015_5e37

    add e
    ld bc, $0c44
    inc e
    inc e
    ld a, h

jr_015_5e6f:
    inc c
    db $f4
    inc c
    db $e4
    inc e
    ret nz

    ret nz

    ldh [rNR41], a
    db $10
    ld [hl+], a
    ldh a, [$ff0c]
    jr @+$1a

    inc [hl]
    inc c
    ldh a, [c]
    ld c, $f9
    rlca
    db $fd
    inc bc
    ld sp, $03cf
    adc d
    ld bc, $8995
    ld bc, $0360
    ld [hl], h
    rrca
    di
    rrca
    add l
    ld bc, $00ae
    ld [bc], a
    ld [hl+], a
    cp $11
    ld e, b

jr_015_5e9d:
    jr c, jr_015_5e6f

    jr nc, jr_015_5ed1

    ldh a, [$ffe0]
    ldh [$ff1f], a
    rra
    ld a, c
    ld a, [hl]
    rst $38
    rst $38
    rst $08
    ldh a, [$ffdf]
    ldh [rSTAT], a
    cp $ff
    ld b, c
    ld l, a
    ld [hl], b
    dec b
    add hl, sp
    ld a, $1f
    inc e
    inc bc
    inc bc
    daa
    nop
    dec bc
    db $fc
    call z, $32f2
    rst $10
    ld sp, $3fd9
    rra
    cp $3b
    ld a, [$f741]
    pop af
    dec de
    rst $38
    rst $20
    reti


jr_015_5ed1:
    jr c, jr_015_5e9d

    add hl, sp
    adc b
    ld a, a
    rra
    rst $38
    inc a
    db $fc
    pop af
    ldh a, [$fff3]
    ldh a, [$fff9]
    rst $30
    adc c
    adc a
    scf
    rlca
    ld a, e
    ld [bc], a
    ei
    ld b, $fb
    rlca
    ld b, c
    di
    rrca
    inc c
    rst $20
    rra
    rst $20
    dec e
    ret


    ccf
    rst $08
    ld a, $9f
    ld a, [hl]
    dec de
    ld sp, hl
    scf
    add e
    ld [bc], a
    dec c
    ld b, $f8
    adc h
    adc a
    ld [hl], $07
    ld a, e
    inc bc
    ld b, c

jr_015_5f07:
    ei
    rlca
    inc bc
    inc bc

jr_015_5f0b:
    rst $38
    rst $38
    db $fc
    add h
    ld [bc], a
    jr nz, jr_015_5f14

    ld b, $7b

jr_015_5f14:
    ld [bc], a
    ld b, c
    ld sp, hl
    dec b
    rla
    ldh a, [c]

jr_015_5f1a:
    adc $fc
    inc a
    inc bc
    inc bc
    dec b
    inc b
    dec bc
    ld [$0f08], sp
    rra
    rra
    jr @+$1a

    ld sp, $f330
    ldh a, [$fff9]
    ld hl, sp-$74
    adc h
    add l
    ld [bc], a
    ld b, h
    rrca
    ld a, [$f206]
    ld c, $f4
    inc c
    push hl
    inc e
    jp hl


    jr jr_015_5f0b

    jr c, jr_015_5f1a

    ccf
    sbc a
    ld a, a
    add e
    ld [bc], a
    ld a, [de]
    ld de, $c0cf
    ld c, a
    ld b, b
    ld h, b
    ld a, a
    jr c, jr_015_5f90

    rra
    rra
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $8d01
    ld [bc], a
    add b
    nop
    di
    ld [hl+], a
    ldh a, [rTIMA]
    adc b
    adc b
    inc [hl]
    inc b
    ld a, d
    ld [bc], a
    ld b, d
    ld a, [$4106]
    di
    rrca
    rlca
    and $1e
    call z, $d83c
    jr c, jr_015_5f07

    ld [hl], b
    and l
    ld bc, $8f8a
    ld [bc], a
    ld [hl], b
    nop
    rst $38
    add e
    nop
    ld c, $00
    rst $38
    ld b, c
    rst $38
    nop
    ld bc, $807f
    push bc
    ld [bc], a
    jp hl


    ld b, c
    rst $38

jr_015_5f90:
    nop
    ld b, c
    nop
    rst $38
    dec b
    rra
    ld h, b
    ld bc, $001e
    inc bc
    or l
    ld [bc], a
    ldh [rSB], a
    rst $38
    nop
    ret z

    ld [bc], a
    jp hl


    call z, Call_000_2003
    ld b, h
    rst $38
    nop
    inc bc
    nop
    rst $38
    ldh [rNR34], a
    and e
    ld [bc], a
    db $fc
    rlca
    rra
    ld h, b
    rrca
    jr nc, jr_015_5fb8

jr_015_5fb8:
    ccf
    inc e
    ld h, e
    ld b, e
    ccf
    ret nz

    ld bc, $631c
    ld b, d
    nop
    ccf
    ld bc, $601f
    ld b, c
    ccf
    ld b, b
    ld bc, $601f
    ld b, c
    nop
    ccf
    adc a
    inc bc
    ld b, h
    ld b, c
    add b
    ccf
    ld bc, $609f
    ld b, c
    cp a
    ld b, b
    inc bc
    sbc a
    ld h, b
    nop
    rra
    adc [hl]
    inc bc
    ld d, d
    nop
    ld bc, $0142
    ld [bc], a
    inc bc
    nop
    ld bc, $0300
    ld b, c
    inc bc
    inc b
    ld bc, $0700
    ld b, c
    nop
    rrca
    ld bc, $1807
    ld b, e
    rrca
    jr nc, jr_015_6001

    rrca
    stop

jr_015_6001:
    rrca
    adc c
    inc bc
    and d
    inc bc
    rlca
    jr jr_015_6009

jr_015_6009:
    rrca
    adc l
    inc bc
    and d
    add e
    inc bc
    cp [hl]
    dec b
    add b
    rrca
    sub b
    rrca
    rst $00
    jr jr_015_6059

    rst $08
    jr nc, @+$04

    rst $20
    jr jr_015_601e

jr_015_601e:
    ld b, c
    nop
    ld [$0003], sp
    dec e
    nop
    ld e, l
    ld b, c
    nop
    ld a, a
    ld bc, $3f00
    ld a, [hl+]
    nop
    and e
    inc bc
    sbc a
    inc bc
    ret nz

    nop
    rst $38
    ld a, [hl]
    ld b, c
    rst $38
    add c
    ld b, c
    ld b, d
    rst $38
    nop
    rst $38
    add $04
    dec b
    ld b, c
    rst $38
    nop
    dec b
    pop bc
    ld a, $00
    rst $38
    ccf
    ret nz

    add e
    ld [bc], a
    ldh [c], a
    xor c
    ld bc, $05e0
    ld a, e
    add a
    ld a, a
    rst $38
    ld a, [hl]
    cp $af

jr_015_6059:
    ld bc, $03f0
    ld hl, sp+$06
    ret nz

    inc a
    xor a
    inc bc
    ld d, h
    db $f4
    ld hl, $4403
    nop
    add hl, sp

jr_015_6069:
    add [hl]
    inc b
    ld d, a
    ld bc, $07f8
    adc l
    inc b
    ld d, b
    ld bc, $07f8
    and e
    inc bc
    sbc d
    ld b, c
    add b
    ld h, b
    add hl, bc
    nop
    ldh a, [$ff60]
    sub b
    ldh [rNR23], a
    ret nz

    jr c, jr_015_6085

jr_015_6085:
    ldh a, [$ffb3]
    inc bc
    or d
    ld bc, $9860
    ld b, e
    ldh a, [$ff0c]
    ld bc, $9860
    sub c
    inc b
    and d
    inc b
    ld [$61f0], sp
    sbc b
    pop af
    ld b, c
    inc c
    di
    ld [bc], a
    inc c
    db $e3
    inc e
    add e
    inc bc
    ldh [rDIV], a
    adc b
    nop
    sbc l
    nop
    db $dd
    add [hl]
    inc bc
    ld de, $0000
    ld b, l
    nop
    rst $38
    inc h
    nop
    ld b, $07
    nop
    rst $38
    nop
    ccf
    nop
    rlca
    jr z, jr_015_60bf

jr_015_60bf:
    ld [bc], a
    ret nz

    nop
    cp $8c
    inc b
    push af
    ld b, $03
    nop
    rst $38
    nop
    rra
    nop
    ld bc, $0023
    adc $05
    ld bc, $0387
    xor $00
    ld hl, sp-$75
    inc b
    push af
    ld b, c
    rrca
    ldh a, [rSC]
    rrca
    rst $20
    jr jr_015_6125

    rst $08
    jr nc, jr_015_6069

    inc bc
    cp h
    nop
    ldh a, [$ff8a]
    dec b
    ld d, c
    ld [bc], a
    rlca
    jr jr_015_60f1

jr_015_60f1:
    add e
    inc bc
    ld c, b
    ld bc, $9c3f
    adc d
    inc bc
    ld b, a
    ld b, c
    ret nz

    ccf
    nop
    ret nz

    add [hl]
    inc bc
    ld [hl], a
    ld bc, $601f
    daa
    jr jr_015_6109

    inc h

jr_015_6109:
    inc a
    ld b, d
    inc a
    inc h
    ld bc, $4266
    ld b, d
    ld e, d
    ld h, [hl]
    ld bc, $81c3
    ld b, d
    and l
    jp $3307


    inc sp
    ld c, h
    ld c, h
    add e
    add b
    sbc h
    add e
    ld b, c
    ld e, h
    ld b, e

jr_015_6125:
    rlca
    sbc c
    add [hl]
    sub b
    adc a
    add [hl]
    sbc c
    xor a
    sub b
    ld b, c
    ld e, a
    ld b, b
    rlca
    sbc a
    add b
    add b
    sbc a
    ld c, h
    ld a, a
    inc sp
    inc sp
    and e
    dec b
    or b
    inc bc
    ld bc, $f907
    rlca
    ld b, c
    ld a, [$0706]
    push af
    rrca
    ld h, c
    sbc a
    add hl, bc
    rst $30
    sbc c
    ld h, a
    ld b, c
    ld a, [hl-]
    add $03
    add hl, sp
    rst $00
    pop bc
    rst $38
    and e
    dec b
    call z, $4204
    inc a
    add c
    ld b, d
    ld e, $42
    add c
    ld a, $04
    add c
    cp l
    ld b, d
    ld b, d
    inc a
    adc c
    inc b
    ldh a, [rSB]
    ld a, a

jr_015_616d:
    nop
    adc b
    ld bc, $07f7
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    ldh [$ff8c], a
    dec b
    dec l
    nop
    rra
    add a
    ld bc, $d2f9
    dec b
    dec sp
    nop
    ret nz

    add h
    dec b
    ld b, e
    and e
    dec b
    jr z, jr_015_618f

    ld h, b

jr_015_618f:
    sbc b
    xor [hl]
    dec b
    ld h, d
    add h
    dec b
    ld h, d
    ld bc, $9867
    ld b, d
    di
    inc c
    ld bc, $1ce0
    xor a
    dec b
    add b
    xor l
    dec b
    ld [hl], b
    ld bc, $07f8
    add a
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld a, [$fb06]
    add h
    ld [bc], a
    cp l
    add a
    ld bc, $0190
    adc h
    adc h
    ld b, c
    ld [hl], h
    inc c
    ld bc, $9ce4
    ldh a, [$ff7f]
    nop
    jr nz, @+$01

    sub h
    ld e, l
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ld [bc], a
    nop
    ld bc, $2201
    nop
    add hl, bc
    ld bc, $0301
    ld b, $06
    inc bc
    add b
    ld a, [bc]
    ld [$830c], sp
    nop
    inc c
    dec c
    ld c, $20
    ld [hl+], a
    inc h
    ld h, $26
    add b
    ld a, [hl+]
    jr z, jr_015_6216

    inc l
    jr nc, jr_015_616d

    ld a, [hl-]
    ld b, c
    add b
    inc a
    add hl, bc
    ld b, a
    ld b, l
    ld h, $2c
    ld b, a
    ld b, l
    ccf
    ld d, l
    add b
    inc a
    ld b, c
    ccf
    ld d, l
    ld [bc], a
    ld b, b
    ccf
    ld b, c
    ld h, h
    ld b, b
    ld [$4342], sp
    ccf
    ld b, h
    ld b, e
    ccf
    ld b, h
    ld b, d
    ld b, e
    inc hl
    add b
    ld bc, $8049
    ld b, c
    add b

jr_015_6216:
    ld a, a
    add hl, bc
    ld a, h
    add d
    add b
    ld a, h
    ld b, $4b
    ld c, a
    add b
    add b
    inc bc
    ld [hl+], a
    add b
    nop
    ld b, d
    add h
    nop
    ld b, h
    ld bc, $8044
    ld h, d
    ld b, b
    inc b
    ld b, d
    add b
    ld a, a
    ld b, $06
    db $e4
    adc a
    add b
    ld h, d
    ld a, l
    ld bc, $1111
    ld [hl+], a
    db $10
    ld a, [bc]
    ld de, $1011
    ld a, [de]
    ld a, [de]
    inc de
    inc de
    ld d, $80
    jr jr_015_6266

    add e
    ld bc, $0c0b
    ld e, $22
    ld [hl-], a
    inc [hl]
    ld [hl], $36
    add b
    ld a, [hl-]
    jr c, jr_015_6294

    inc a
    jr nc, jr_015_6285

    ld b, c
    add b
    inc l
    ld a, [bc]
    add b
    ld d, a
    ld d, l
    ld [hl], $3c
    ld d, a
    ld d, l

jr_015_6266:
    ld b, l
    ccf
    inc l
    add b
    ld b, c
    ld b, l
    ccf
    ld [bc], a
    ld d, b
    ccf
    ld d, c
    ld h, h
    ld d, b
    ld [$3f52], sp
    ld d, e
    ld d, h
    ccf
    ld d, e
    ld d, h
    ld d, d
    ld d, e
    inc hl
    add b
    nop
    ld e, c
    add h
    nop
    ld c, [hl]
    add hl, bc

jr_015_6285:
    ld a, a
    add h
    add b
    add b
    ld a, [de]
    ld c, l
    ld c, a
    add b
    add b
    inc de
    ld [hl+], a
    add b
    nop
    ld d, d
    add h

jr_015_6294:
    ld bc, $0143
    ld d, h
    add b
    ld h, d
    ld d, b
    inc b
    ld d, d
    add b
    ld a, a
    ld a, [de]
    ld a, [de]
    db $e4
    adc a
    add b
    ld h, d
    ld a, l
    rlca
    ld [bc], a
    add hl, bc
    add hl, bc
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    add e
    ld [bc], a
    ld [bc], a
    inc de
    rlca
    dec bc
    add b
    dec c
    dec b
    inc b
    inc b
    dec b
    rrca
    ld hl, $2523
    dec h
    daa
    add hl, hl
    dec hl
    ld h, $2b
    dec l
    add b
    ld b, c
    add b
    dec sp
    ld bc, $3d3e
    ld b, c
    ld c, b
    ld b, [hl]
    ld bc, $2b25
    ld b, c
    ccf
    ld d, [hl]
    inc bc
    add b
    dec sp
    ccf
    ld d, [hl]
    dec hl
    add b
    ld h, d
    ld b, d
    dec d
    ld b, b
    ld b, c
    ld l, $3e
    ld a, $2e
    ld c, d
    add b
    add b
    ld a, a
    ldh a, [$ff7f]
    ld a, a
    add e
    add b
    add b
    add hl, bc
    ld c, h
    ld c, a
    add b
    add b
    ld [bc], a
    dec l
    add b
    inc b
    ldh a, [$ff80]
    ld a, a
    ld e, d
    add hl, bc
    db $e4
    adc a

Call_015_6300:
Jump_015_6300:
    add b

Jump_015_6301:
    ld h, d
    ld a, l
    rlca
    dec e
    dec e
    ld [de], a
    ld [de], a
    dec d
    inc d
    inc d
    dec d
    add e
    inc bc
    ld bc, $1712
    dec de
    add hl, de
    add b
    inc d
    inc d
    dec d
    dec d
    rra
    ld sp, $3533
    dec [hl]
    scf
    add hl, sp
    dec sp
    ld [hl], $3b
    dec a
    ld b, c
    add b
    dec hl
    ld [bc], a
    add b
    dec l
    ld a, $41
    ld e, b
    ld d, [hl]
    ld bc, $3b35
    ld b, c
    ld b, [hl]
    ccf
    inc bc
    dec hl
    add b
    ld b, [hl]
    ccf
    dec hl
    add b
    ld h, d
    ld d, d
    dec d
    ld d, b
    ld d, c
    ld a, $3e
    cpl
    cpl
    ld e, d
    add b
    add b
    ld a, a
    pop af
    ld a, h
    ld a, a
    add l
    add b
    add b
    ld a, h
    ld c, [hl]
    ld c, a
    add b
    ld a, h
    ld a, h
    dec l
    add b
    inc b
    pop af
    add b
    ld a, a
    dec e
    ld e, c
    db $e4
    adc [hl]
    add b
    inc bc
    nop
    nop
    nop
    nop
    dec hl
    ld bc, $0463
    inc hl
    ld bc, $0322
    daa
    nop
    nop
    ld [bc], a
    db $e4
    jr z, jr_015_6372

jr_015_6372:
    rrca
    ld [$0000], sp
    stop
    db $fd
    cp $21
    nop
    cp $fd
    ld sp, $0001
    db $fd
    db $fd
    ld [hl+], a
    nop
    add hl, hl
    jr z, @+$07

    ld b, b
    nop
    ld b, b
    db $10
    ld bc, $e401
    adc [hl]
    nop
    rst $38

    db $73, $41

    rrca
    nop

    db $05

    rst $20
    ldh [rIE], a
    ld hl, sp-$01
    db $fc

    db $41

    rst $38
    db $fe

    db $01

    rst $38
    rst $38

    db $41

    rrca
    nop

    db $05

    rra
    rlca
    rra
    rra
    ccf
    ccf

    db $23

    ld a, a

    db $05

    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]

    db $27

    ld b, d

    db $c3, $00, $23, $87, $00, $20, $c7, $00, $37, $87, $00, $20, $c7, $00, $47, $87
    db $00, $20, $c7, $00, $57, $87, $00, $20, $c7, $00, $67, $87, $00, $20, $c7, $00
    db $77, $87, $00, $20, $c7, $00, $87, $f0, $6f, $00, $20, $03

    db $fc
    rst $38
    rst $20
    db $db

    db $41

    db $c3
    cp h

    db $41

    pop bc
    cp [hl]

    db $41

    ld h, b
    rst $18

    db $41

    ld h, b
    ret nz

    db $41

    pop bc
    add b

    db $41

    db $c3
    add b

    db $09

    rst $20
    jp $fffc


    ld a, a
    rst $38
    add e
    db $fc
    add c
    db $fe

    db $83, $01, $0e, $05

    add c
    add b
    add e
    add b
    ld a, a
    rst $38

    db $41

    ldh a, [rIF]

    db $0a

    ldh [$ff1f], a
    stop
    jr c, jr_015_6419

jr_015_6419:
    inc a
    nop
    ld a, [hl]
    nop
    ld a, a

    db $24

    nop

    db $41

    db $01
    nop

    db $41

    inc bc
    nop

    db $41

    rlca
    nop

    db $84, $00, $10, $00

    nop

    db $89, $01, $36, $41

    rst $38
    nop

    db $41

    cp $01

    db $96, $01, $48, $10

    INCBIN "gfx/image_015_643b.2bpp"

    ld a, a

    db $8d, $01, $50, $19

    INCBIN "gfx/image_015_6450.2bpp"

    ld hl, sp+$07
    ccf
    ccf
    rrca
    rlca
    ld e, $07
    inc de
    inc bc

    db $88, $01, $58, $18

    INCBIN "gfx/image_015_646e.2bpp"

    ld a, a
    ret nz

    add b
    cp a
    ret nz

    cp a
    call z, $ffff

    db $41

    cp a
    ret nz

    db $08

    add b
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld a, a
    ld h, e
    ld [hl+], a

    db $22

    db $3e

    db $04

    ld a, h
    inc e
    ld a, [hl]
    nop
    ld a, a

    db $c6, $01, $53, $0d

    rst $38
    nop
    ei
    nop
    di
    nop
    pop hl
    nop
    di
    ld [hl], e
    ccf
    rst $38
    rst $20
    db $c3

    db $41

    db $c3
    db $01

    db $41

    add e
    db $01

    db $41

    ld b, $03

    db $41

    ld b, $fb

    db $41

    add e
    ld a, l

    db $41

    db $c3
    dec a

    db $01

    rst $20
    db $db

    db $a4, $01, $1e, $01

    db $01
    add c

    db $83, $02, $0b, $05

    ei
    add c
    ld a, a
    pop bc
    ccf
    db $fe

    db $84, $01, $2f, $01

    ld hl, sp+$07

    db $87, $01, $f6, $00

    pop bc

    db $c6, $01, $63, $00

    ld a, a

    db $41

    nop
    ccf

    db $03

    nop
    rra
    nop
    rra

    db $8e, $01, $ef, $01

    pop bc
    nop

    db $41

    nop
    rst $38

    db $41

    add b
    ld a, a

    db $95, $02, $48, $00

    rst $00

    db $b0, $01, $9f, $8d, $01, $f0, $00

    rst $08

    db $ae, $01, $7f, $01

    rra
    db $fe

    db $a7, $01, $c0, $0f

    INCBIN "gfx/image_015_650e.2bpp"

    db $88, $02, $38, $b2, $01, $d1, $0a

    rst $38
    add $c7
    ld a, h
    rst $38
    ld a, h
    ei
    jr c, @-$1d

    nop
    pop bc

    db $8e, $01, $4f, $07

    rst $38
    rst $00
    ld a, a
    ld a, a
    add b
    add b
    cp a
    sbc b

    db $41

    and e
    cp b

    db $03

    and a
    add b
    cp a
    add c

    db $41

    cp [hl]
    add e

    db $00

    cp [hl]

    db $88, $03, $03, $01

    ret nz

    cp a

    db $c3, $00, $1b, $03

    ld h, b
    ld h, b
    rst $18
    db $e0

    db $43

    cp a
    add b

    db $23

    rst $38

    db $43

    cp a
    add b

    db $09

    rst $18
    ldh [$ff60], a
    ld a, a
    ld a, a
    ccf
    ld a, $3e
    ld b, e
    ld b, c

    db $41

    cp l
    add e

    db $05

    cp e
    add a
    or [hl]
    adc [hl]
    db $cd
    cp h

    db $41

    ld a, e
    ld a, b

    db $05

    adc l
    adc [hl]
    or [hl]
    adc a
    cp e
    add a

    db $41

    cp l
    add e

    db $0c

    ld b, c
    ld a, a
    ld a, a
    ld a, $0f
    rrca
    jr nc, jr_015_65c9

    ld c, [hl]
    ld [hl], c
    ld e, c
    ld h, b
    or b

    db $41

    ret nz

    and b

    db $00

    ret nz

    db $41

    sub b
    db $e0

    db $c4, $03, $6c, $08

    ret nz

    ld e, c
    ld h, b
    ld c, [hl]
    ld [hl], c
    ld [hl], b
    ccf
    ld a, a
    rrca

    db $83, $01, $d0, $17

    INCBIN "gfx/image_015_65a8.2bpp"

    and c
    add b
    add e
    add b
    add [hl]
    add c
    db $cd
    add d

    db $85, $03, $1c, $05

    dec l
    dec l
    rst $38
    db $ed
    cp a

jr_015_65c9:
    sbc a

    db $22

    rst $38

    db $00

    ldh a, [c]

    db $84, $03, $a6, $04

    rst $38
    cp a
    sbc a
    rst $38
    push af

    db $83, $03, $b0, $0f

    INCBIN "gfx/image_015_65db.2bpp"

    db $41

    add b
    or b

    db $11

    INCBIN "gfx/image_015_65ef.2bpp"

    ld e, a
    ccf

    db $8f, $01, $80, $83, $01, $b0, $03

    ld b, $07
    rst $38
    inc bc

    db $8c, $02, $c8, $00

    dec de

    db $41

    pop hl
    dec sp

    db $02

    push hl
    inc bc
    db $fd

    db $41

    add e
    dec a

    db $02

    add e
    ld a, l
    inc bc

    db $87, $04, $04, $00

    db $01

    db $c3, $00, $0f, $04

    db $fc
    rlca
    ld b, $fb
    rlca

    db $43

    db $fd
    inc bc

    db $03

    rst $38
    rst $38
    rst $38
    rst $38

    db $43

    db $fd
    inc bc

    db $09

    ei
    rlca
    rlca
    cp $fd
    db $fc
    rst $38
    ld a, h
    add e
    add d

    db $41

    cp l
    add e

    db $05

    db $dd
    db $e3
    ld l, l
    ld [hl], e
    or c
    ld a, a

    db $41

    rst $18
    db $3e

    db $05

    or e
    ld [hl], c
    ld l, l
    db $e3
    db $dd
    db $c3

    db $41

    cp l
    add e

    db $0a

    jp $fdbe


    ld a, h
    rst $38
    ldh a, [rIF]
    db $fc
    ld [hl], e
    adc [hl]
    sbc e

    db $b0, $03, $67, $07

    sbc e
    ld b, $73
    adc [hl]
    dec c
    db $fc
    pop af
    db $f0

    db $83, $02, $d0, $19

    INCBIN "gfx/image_015_6676.2bpp"

    and c
    ld e, a
    ld b, c
    cp a
    add c
    ld a, a
    ld bc, $03ff
    db $fd

    db $83, $04, $1e, $04

    or a
    or h
    rst $38
    or a
    ei

    db $c3, $04, $32, $00

    rrca

    db $84, $04, $a6, $04

    rst $38
    ei
    db $fd
    rst $38
    ld c, a

    db $83, $04, $b0, $13

    INCBIN "gfx/image_015_66ab.2bpp"

    jp $a3fd


    ld a, l

    db $41

    db $e3
    dec a

    db $0d

    and e
    ld a, l
    jp Jump_000_03fd


    db $fd
    dec b
    ei
    rrca
    ldh a, [c]
    push af
    inc c
    ld sp, hl
    db $fc

    db $8f, $02, $80, $ad, $01, $c0, $8e, $01, $ee, $02

    nop
    db $e3
    db $e3

    db $b7, $04, $e0, $a3, $02, $b8, $01

    db $fd
    db $fc

    db $90, $02, $ee, $91, $02, $9f, $06

    db $fc
    rst $28
    ldh [$ff7f], a
    ldh [$ffd0], a
    ret nz

    db $86, $01, $38, $00

    nop

    db $f0, $df, $00, $20, $c7, $06, $3f, $f8, $e7, $06, $47, $ff, $92, $63, $15, $ff
    db $00, $80, $62, $7d, $10, $00, $02, $04, $06, $04, $04, $08, $0a, $7f, $06, $04
    db $0d, $04, $3e, $44, $7f, $7c, $22, $04, $0c, $20, $04, $24, $04, $28, $04, $2c
    db $04, $22, $04, $26, $04, $2a, $22, $04, $0f, $28, $06, $24, $06, $20, $06, $22
    db $06, $26, $06, $2a, $06, $82, $04, $82, $06, $2c, $7f, $15, $04, $36, $80, $82
    db $28, $04, $82, $24, $04, $2c, $06, $82, $20, $04, $82, $22, $04, $80, $80, $82
    db $2a, $04, $e4, $a4, $80, $62, $7d, $10, $10, $12, $14, $16, $14, $14, $18, $1a
    db $7f, $16, $14, $1d, $2e, $41, $14, $7f, $7f, $22, $14, $0c, $30, $14, $34, $14
    db $38, $14, $3c, $14, $32, $14, $36, $14, $3a, $22, $14, $0f, $38, $16, $34, $16
    db $30, $16, $32, $16, $36, $16, $3a, $16, $84, $14, $84, $16, $2c, $7f, $15, $26
    db $14, $80, $84, $38, $14, $84, $34, $14, $3c, $16, $84, $30, $14, $84, $32, $14
    db $80, $80, $84, $3a, $14, $e4, $a4, $80, $62, $7d, $e0, $23, $01, $03, $05, $05
    db $07, $09, $0b, $0c, $7f, $f1, $f1, $0e, $05, $3f, $45, $7f, $7f, $05, $1f, $43
    db $21, $05, $25, $05, $29, $05, $2d, $05, $23, $05, $27, $05, $2b, $05, $07, $09
    db $c4, $02, $1a, $86, $02, $1d, $41, $83, $05, $8d, $01, $37, $14, $80, $80, $83
    db $29, $05, $83, $25, $05, $2d, $05, $83, $21, $05, $83, $23, $05, $80, $80, $83
    db $2b, $05, $e4, $a4, $80, $62, $7d, $e0, $23, $11, $13, $15, $15, $17, $19, $1b
    db $1c, $7f, $f0, $f0, $1e, $2f, $42, $15, $7c, $7f, $0f, $40, $15, $31, $15, $35
    db $15, $39, $15, $3d, $15, $33, $15, $37, $15, $3b, $15, $17, $19, $c4, $03, $19
    db $86, $03, $1c, $41, $85, $15, $2c, $7f, $15, $80, $36, $80, $85, $39, $15, $85
    db $35, $15, $3d, $15, $85, $31, $15, $85, $33, $15, $80, $80, $85, $3b, $15, $e4
    db $a3, $80, $23, $00, $01, $01, $02, $23, $00, $02, $03, $03, $10, $83, $04, $04
    db $03, $03, $03, $fd, $fe, $22, $00, $0e, $61, $00, $51, $00, $71, $00, $41, $00
    db $59, $00, $49, $00, $69, $00, $00, $c6, $04, $19, $85, $04, $1c, $02, $21, $00
    db $21, $2d, $00, $0f, $04, $05, $00, $21, $71, $00, $21, $51, $00, $41, $00, $21
    db $61, $00, $21, $59, $c3, $04, $35, $00, $69, $e4, $a4, $00, $ff

    ld [hl], e
    inc hl
    nop
    dec b
    ldh [$ffe0], a
    ld hl, sp-$08
    db $fc
    db $fc
    inc hl
    cp $01
    rst $38
    rst $38
    xor a
    nop
    nop
    ld a, [bc]
    nop
    nop
    inc bc
    nop
    rst $20
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    add h
    nop
    dec bc
    ld b, c
    ld a, $00
    nop
    rst $18
    and [hl]
    nop
    dec h
    ld bc, $7fff
    ld [hl+], a
    rst $38
    inc b
    nop
    db $fc
    inc bc
    ld hl, sp-$19
    and l
    nop
    scf
    and e
    nop
    inc a
    ld b, c
    pop bc
    ld a, $01
    daa
    rst $18
    adc c
    nop
    scf
    ld a, [bc]
    ld a, a
    rst $38
    add b
    add b
    add e
    cp h
    adc a
    or b
    cp h
    add b
    or b
    call nz, Call_015_6300
    dec bc
    cp $ff
    ld bc, $c103
    inc bc
    dec c
    inc bc
    dec a
    inc bc
    pop af
    rrca
    and e
    nop
    ld l, h
    nop
    nop
    add e
    nop
    ld b, c
    ld b, $07

Jump_015_6900:
    ldh a, [rIF]
    ldh [$ff1f], a
    call nz, $413b
    add e
    ld a, h
    dec c
    nop
    nop
    pop bc
    ld a, $21
    sbc $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$ff1f]
    ldh [$ff83], a
    nop
    rrca
    ld bc, $7e7e
    inc hl
    ld b, d
    add $00
    and a
    nop
    nop
    rst $00
    nop
    xor a
    add $00
    or a
    nop
    nop
    rst $00
    nop
    cp a
    add $00
    rst $00
    ldh a, [$ff2f]
    nop
    sbc a
    inc bc
    nop
    rst $38
    rst $38
    add b
    ld [hl+], a
    ret nz

    ld [$c0c1], sp
    jp $c7c0


    ret nz

    rst $08
    ret nz

    rst $18
    ld b, e
    ret nz

    rst $38
    ld [$f8c7], sp
    rst $08
    ldh a, [$ffd8]
    ldh [$fff0], a
    add b
    ldh [$ff83], a
    nop
    ld c, $1b
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
    nop
    or $00
    db $ec
    nop
    ret c

    nop
    or b
    nop
    ld h, b
    nop
    pop hl
    ldh [rNR13], a
    ldh a, [rIF]
    jr jr_015_6979

    rrca
    nop
    rlca
    daa
    nop
    nop
    inc bc

jr_015_6979:
    jp $4001


    dec b
    nop
    rrca
    ld bc, $80f0
    ldh a, [rSCX]
    add b
    ldh [rSCX], a
    add b
    ldh a, [$ff84]
    ld bc, $0353
    db $e3
    add b
    rst $38
    ret nz

    jp Jump_000_1b00


    adc e
    ld bc, $0260
    rst $38
    ld a, a
    rst $38
    adc h
    ld bc, $026f
    ld a, a
    rst $38
    ccf
    dec h
    rst $38
    ld bc, $c300
    jr z, jr_015_69a9

jr_015_69a9:
    add e
    nop
    jr jr_015_69ae

    rst $38

jr_015_69ae:
    ret nz

    ret


    ld bc, $0268
    rst $38
    ccf
    rst $38
    adc h
    ld bc, $a3a3
    nop
    ld c, b
    adc e
    ld bc, $01a4
    rrca
    ld bc, $01cc
    ld c, h
    nop
    nop
    add e
    nop
    ld h, b
    rla
    add d
    cp l
    add h
    cp d
    adc b
    or h
    sub b
    xor b
    and b
    sub b
    add b
    and b
    add b
    add b
    add c
    add b
    add d
    add b
    add l
    add b
    adc e
    add b
    sub [hl]
    add c
    push bc
    nop
    ld h, d
    nop
    ld bc, $01a6
    rrca
    ld c, $fb
    inc bc
    rst $30
    inc bc
    rst $28
    inc bc
    db $db
    inc bc
    or e
    inc bc
    ld h, e
    inc bc
    db $e3
    db $e3
    inc de
    and h
    ld bc, $0119
    rlca
    ld bc, $0083
    ld c, $04
    ld h, b
    nop
    pop bc
    nop
    add e
    add h
    ld bc, $0449
    rra
    nop
    ccf
    nop
    ld a, a
    ld b, c
    nop
    rst $38
    ld bc, $f807
    db $f4
    ld d, [hl]
    ld bc, $ca39
    ld bc, $c49e
    ld bc, $f495
    ld b, d
    ld bc, $18a0
    inc bc
    ld bc, $0503
    inc bc
    add hl, bc
    inc bc
    dec d
    inc bc
    dec l
    inc bc
    ld e, c
    rlca
    or l
    dec bc
    ld l, c
    rla
    pop de
    cpl
    and c
    ld e, a
    ld b, c
    cp a
    add c
    ld a, a
    add e
    ld [bc], a
    ld a, e
    ld [bc], a
    jr @+$1a

    dec de
    ld b, c
    jr jr_015_6a6a

    inc bc
    jr @+$29

    inc a
    ccf
    ld b, c
    inc h
    ld a, h
    inc bc
    inc h
    ld h, [hl]
    ld b, d
    ld e, d
    ld b, c
    ld h, [hl]
    jp c, $6602

    jp Jump_015_4281


    and l
    jp $ff02


    rst $38
    ret nz

    ld b, h
    add b
    rst $08
    ld [bc], a

jr_015_6a6a:
    add b
    rst $38
    rst $38
    ld b, c
    rst $20
    ld b, b
    ld b, h
    ld h, a
    ret nz

    ld [$40e7], sp
    ld a, a
    rst $38
    pop bc
    rst $38
    cp [hl]
    pop bc
    or c
    ld b, d
    ret nz

    and c
    nop
    ret nz

    ld b, c
    sbc $e1
    add $03
    ld c, h
    ld a, [bc]
    ret nz

    cp [hl]
    pop bc
    pop bc
    rst $38
    ld a, a
    rst $38
    inc a
    inc a
    ld b, d
    ld b, d
    inc h
    add c
    add hl, de
    rst $20
    rst $20
    sbc c
    ld b, d
    ld a, [hl]
    inc a
    inc a
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_015_6ac4

    ret nc

    db $10
    adc b
    ld [$0404], sp
    ld a, [bc]

jr_015_6aab:
    ld [bc], a
    dec e
    ld bc, $003e
    ld a, a
    adc c
    ld bc, $0c23
    ldh [rNR32], a
    ldh a, [$ff08]
    jr jr_015_6abf

    inc c
    ld [bc], a
    ld b, $01

jr_015_6abf:
    inc bc
    nop
    ld bc, $02c6

jr_015_6ac4:
    sub l
    ld de, $7f80
    ld b, b
    ccf
    jr nz, jr_015_6aab

    db $10
    adc a
    ld [$0407], sp
    dec bc
    ld [bc], a
    dec e
    ld bc, $0058
    or b
    add l
    ld [bc], a
    inc hl
    add h
    ld [bc], a
    ld e, c
    dec bc
    rra
    ld bc, $013f
    ld a, a
    ld bc, $03fe
    db $fc
    ld b, $f8
    inc c
    add l
    ld [bc], a
    ld a, [hl-]
    dec de
    ret c

    add b
    or b
    add b
    ldh [$ff80], a
    pop bc
    add b
    add e
    add c
    add a
    add c
    adc a
    add c
    sbc a
    add c
    cp a
    add c
    rst $38
    add c
    cp $83
    db $fc
    add [hl]
    ld hl, sp-$74
    ldh a, [$ff98]
    add e
    ld bc, $0f1c
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_015_6b54

    ret nc

    rra
    adc b
    rrca
    inc b
    rlca
    ld a, [bc]
    inc bc
    dec e
    ld bc, $3e41
    jr jr_015_6b25

    sbc $18

jr_015_6b25:
    db $fc
    and h
    inc bc
    rlca
    ld b, $fc
    inc h
    inc a
    inc h
    ld h, [hl]
    ld b, d
    ld e, e
    xor [hl]
    inc bc
    inc de
    ld bc, $010f
    ld b, h
    di
    dec c
    inc bc
    rst $38
    rst $38
    rst $20
    ld a, [de]
    ld b, h
    and $1b
    ld b, c
    rst $20
    ld a, [de]
    cp a
    inc bc
    ld b, b
    ld [bc], a
    ld a, [hl]
    rst $38
    db $fd
    ld b, d
    add e
    push bc
    ld b, $83
    db $fd
    add e
    add c

jr_015_6b54:
    rst $38
    ld a, [hl]
    rst $38
    adc b
    inc bc
    add b
    ld b, $80
    ei
    add b
    or $80
    db $ec
    add b
    add e
    inc bc
    ret nc

    inc b
    ld h, b

jr_015_6b67:
    ret nz

    ld hl, $1360
    and [hl]
    inc bc
    ret


    add e
    inc bc
    ret nz

    ld b, c
    rst $38
    ld bc, $fd10
    add c
    ei
    add c
    rst $30
    add c
    db $ed
    add c
    reti


    add c
    or c
    add c
    ld h, c
    pop bc
    ld hl, $1361
    and a
    inc bc
    jp hl


    ld de, $0201
    ld [bc], a
    dec b
    inc b
    ld a, [bc]
    ld [$1015], sp
    dec hl
    jr nz, jr_015_6bec

    ld b, b
    xor h
    add b
    ld e, b
    nop
    or b
    adc c
    ld [bc], a
    inc hl
    jp $8c04


    inc bc
    jr @+$62

    jr nc, jr_015_6b67

    xor [hl]
    inc bc
    sub l
    dec bc
    db $fd
    inc b
    ld a, [$f508]
    db $10
    db $eb
    jr nz, @-$28

    ld b, b
    xor h
    add b
    and e
    inc bc
    ldh a, [$ff0d]
    dec b
    db $fc
    ld a, [bc]
    ld hl, sp+$15
    ldh a, [$ff2b]
    ldh [rRP], a
    ret nz

    xor h
    add b
    cp $01
    add a
    nop
    add d
    dec b
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    add e
    ld bc, $0224
    db $fc
    nop
    ld hl, sp-$3a
    ld [bc], a
    ld c, l
    dec b
    add b
    nop
    nop
    ld bc, $0300
    adc h
    ld [bc], a
    add hl, hl
    xor [hl]
    dec b
    db $10
    ld b, c
    rst $38

jr_015_6bec:
    nop
    ld a, [bc]
    ld hl, sp+$07
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, @-$42

    ld b, b
    ld a, b
    ld b, a
    add b
    ld [hl], b
    nop
    add b
    ld b, d
    nop
    rrca
    add hl, bc
    rlca
    ld [$100f], sp
    rra
    jr nz, @+$3e

    ld b, b
    ld a, b
    add b
    ld b, h
    rst $38
    nop
    nop
    ld hl, sp-$7c
    inc b

jr_015_6c13:
    ret c

    call nz, Call_015_7e05
    ld c, b
    nop
    rst $38
    ld bc, $0300
    ld h, $00
    push de
    dec b

jr_015_6c21:
    sbc [hl]
    adc l

jr_015_6c23:
    dec b
    sbc d
    add l
    ld [bc], a
    ld a, [hl+]
    nop
    dec sp
    ld b, c
    nop
    ld a, h
    ld b, c
    nop
    ld a, $01
    nop
    sbc $88
    dec b
    inc de
    ld [bc], a
    nop
    nop
    rst $38
    adc [hl]
    nop
    add c
    ld bc, $3ec1
    adc e
    nop
    sub d
    ld bc, $00ff
    db $f4
    ld b, l
    dec b
    nop
    add hl, bc
    rst $08
    jr nc, @-$37

    jr c, jr_015_6c13

    inc a
    ld bc, $003e
    rra
    ld b, a
    nop
    rrca
    ld b, c
    ld [hl], b
    add b
    dec bc
    db $10
    ldh [$ffc0], a
    jr nc, jr_015_6c21

    jr c, jr_015_6c23

    inc a
    nop
    ld a, $00
    rra
    db $f4
    dec h
    dec b
    sub b
    cp c
    dec b
    halt
    adc $05
    cp [hl]
    adc l
    dec b
    rst $08
    sub d
    dec b
    cp l
    adc [hl]
    dec b
    ldh a, [$ff90]
    dec b
    rst $18
    ldh a, [$ff2f]
    nop
    and b
    rst $38
    sub a
    ld l, b
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ld [bc], a
    nop
    ld [de], a
    ld [de], a
    ld b, c
    dec b
    add b
    nop
    add b
    add e
    nop
    ld [$0503], sp
    add b
    add b
    dec b
    add e
    nop
    dec c
    ldh [rBGP], a
    ld a, [hl]
    ld a, l
    add b
    dec l
    dec hl
    daa
    ld a, [hl+]
    cpl
    add hl, hl
    add hl, hl
    ld c, $0a
    add hl, bc
    dec e
    ld a, [bc]
    dec bc
    add hl, bc
    dec bc
    inc c
    add hl, bc
    inc c
    ld b, h
    ld b, l
    ld b, l
    ld d, [hl]
    ld b, l
    ld d, l
    ld b, a
    ld c, e
    ld c, c
    ld c, h
    ld c, [hl]
    ld hl, sp+$7d
    ld d, c
    ld a, l
    ld d, b
    ld a, l
    ld d, d
    add b
    ld d, b
    ld b, e
    ld a, [hl]
    or $1d
    add b
    add hl, bc
    ld c, [hl]
    add b
    add b
    ld c, h
    ld c, [hl]
    jr nz, jr_015_6d56

    ld c, $4e
    add d
    add b
    add d
    ld a, l
    add d
    ld a, [hl]
    add d
    ld a, l
    add d
    ld c, h
    add d
    ld c, [hl]
    ld a, h
    ld a, a
    ld c, $4c
    ld [hl+], a
    add b
    inc b
    ld a, a
    dec b
    nop
    ld c, h
    or $22
    ld c, h
    rrca
    ld a, a
    or $0b
    add hl, bc
    add hl, bc
    add b
    dec e
    add d
    ld c, [hl]
    ld c, [hl]
    ld d, h
    ld a, l
    ld d, l
    inc h
    ld [hl], $80
    inc hl
    ld c, [hl]
    nop
    add b
    add e
    nop
    inc sp
    ld [hl+], a
    ld c, h
    ldh [rNR50], a
    ld a, l
    inc h
    ld [hl], $4c
    ld a, h
    add b
    inc h
    ld [hl], $7d
    inc h
    ld [hl], $45
    ld a, h
    ld a, l
    inc h
    ld [hl], $7e
    ld d, d
    ld d, e
    or $53
    ld c, $7d
    ld d, d
    or $40
    add b
    or $24
    ld [hl], $7d
    ld a, a
    add b
    add d
    ld c, [hl]
    ld c, [hl]
    ld [hl+], a
    inc hl
    add b
    ld [$090b], sp
    dec b
    dec e
    or $53
    ld d, e
    or $0c
    add e
    nop
    or c
    inc b
    ld c, [hl]
    ld c, [hl]
    add b
    add b
    dec b
    db $e4
    dec a
    add b
    ld h, d
    ld a, l
    dec b
    ld [bc], a
    ld [bc], a
    db $10
    add b
    dec d
    add b
    ld b, c

jr_015_6d56:
    add b
    dec d
    inc hl
    add b
    nop
    dec d
    add e
    ld bc, $e007
    ld [hl+], a
    dec d
    ccf
    ld a, $3b
    dec a
    dec a
    add b
    ld a, l
    ld a, [hl]
    scf
    add hl, sp
    ld e, $09
    ld a, [de]
    dec c
    ld a, [de]
    add hl, bc
    dec de
    dec de
    add hl, bc
    inc e
    inc e
    ld d, h
    ld d, l
    ld b, [hl]
    ld d, l
    ld b, l
    ld d, l
    ld d, a
    ld c, e
    ld e, c
    ld e, h
    ld e, [hl]
    ld sp, hl
    ld b, c
    ld b, c
    ld a, l
    ld b, b
    ldh [rNR42], a
    add b
    ld b, d
    ld a, l
    ld a, [hl]
    ld d, e
    rst $30
    add b
    dec c
    add hl, bc
    ld e, [hl]
    add b
    add b
    ld e, h
    ld e, [hl]
    jr nc, jr_015_6e18

    ld e, $5e
    add h
    add b
    add h
    ld a, l
    add h
    ld a, [hl]
    add h
    ld b, h
    add h
    ld e, h
    add h
    ld e, [hl]
    ld a, a
    ld a, a
    ld e, $5c
    add e
    nop
    ld h, b
    inc bc
    dec d
    db $10
    ld e, h
    rst $30
    ld [hl+], a
    ld e, h
    rrca
    ld a, a
    rst $30
    add hl, bc
    add hl, bc
    dec de
    dec c
    add b
    add h
    ld e, [hl]
    ld e, [hl]
    ld a, l
    ld b, l
    ld a, l
    inc [hl]
    ld [hl], $80
    inc hl
    ld e, [hl]
    nop
    add b
    add e
    ld bc, $2232
    ld e, h
    inc e
    ld a, l
    inc [hl]
    ld [hl], $5c
    add b
    add b
    inc [hl]
    ld [hl], $7d
    inc [hl]
    ld [hl], $55
    ld a, l
    ld a, l
    inc [hl]
    ld [hl], $7e
    ld b, b
    ld b, e
    rst $30
    ld b, e
    ld e, $7d
    ld b, b
    rst $30
    ld d, d
    ld a, l
    rst $30
    inc [hl]
    add e
    nop
    and h
    inc bc
    add h
    ld e, [hl]
    ld e, [hl]
    ld [hl-], a
    inc hl
    add b
    ld de, $1b09
    dec c
    dec d
    rst $30
    ld b, e
    ld b, e
    rst $30
    add hl, bc
    inc e
    dec c
    dec d
    rst $30
    ld e, [hl]
    ld e, [hl]
    add b
    dec d
    add b
    ldh a, [rLCDC]
    nop
    jp nz, $0118

    inc de
    inc de
    dec b
    add b
    ld b, $19
    add hl, de
    inc d

jr_015_6e18:
    ld b, $14
    add b
    rlca
    add hl, de
    add hl, de
    rlca
    ld [$1919], sp
    ld [$3e3f], sp
    dec sp
    ld l, $2c
    ld [hl+], a
    jr z, jr_015_6e2d

    add b
    add b

jr_015_6e2d:
    rrca
    add l
    nop
    db $10
    dec b
    dec b
    dec b
    add b
    dec b
    ld b, l
    ld b, l
    ld b, c
    ld b, l
    ld d, l
    rrca
    ld c, b
    ld e, e
    ld c, d
    ld c, l
    ld c, a
    ld c, a
    ld b, c
    add b
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, d
    ld d, e
    add b
    ld d, e
    jp Jump_000_0001


    ldh [$ff33], a
    ld c, a
    ld sp, hl
    pop af
    di
    push af
    ld hl, $0f7f
    ld c, l
    add e
    add b
    add e
    ld a, l
    add e
    ld a, [hl]
    add e
    ld a, l
    add e
    ld c, l
    add e
    ld c, a
    ld a, a
    ld a, a
    rrca
    ld c, l
    add b
    pop af
    add b
    ld a, a
    dec b
    ld bc, $4f4d
    ld c, l
    di
    ld c, l
    ld a, a
    ld c, a
    rlca
    add hl, de
    add hl, de
    add b
    inc d
    add e
    ld c, l
    di
    ld d, l
    ld a, l
    ld d, l
    dec h
    ld [hl], $80
    inc hl
    ld c, a
    nop
    add b
    add e
    ld [bc], a
    ld sp, $4d22
    inc e
    ld a, l
    dec h
    ld [hl], $4d
    add b
    add b
    dec h
    ld [hl], $7d
    dec h
    ld [hl], $45
    ld a, l
    ld a, l
    dec h
    ld [hl], $7e
    ld b, e
    add b
    ld b, e
    pop af
    rrca
    ld a, l
    ld b, e
    ld b, e
    ld d, e
    ld d, d
    push af
    dec h
    add e
    nop
    and h
    inc bc
    add e
    ld c, a
    push af
    inc hl
    call nz, $c500
    rrca
    inc d
    rlca
    add hl, de
    ld d, e
    ld b, d
    pop af
    ld b, d
    dec b
    inc d
    ld b, $19
    pop af
    ld c, l
    di
    add b
    inc d
    ldh a, [rSTAT]
    nop
    pop bc
    inc de
    inc bc
    inc bc
    ld de, $1580
    add hl, de
    add hl, de
    ld d, $04
    ld d, $80
    inc b
    add hl, de
    add hl, de
    rla
    rla
    add hl, de
    add hl, de
    jr jr_015_6ef9

    ld [hl+], a
    inc a
    rlca
    add b
    add b
    daa
    ld a, [hl+]
    cpl
    jr c, jr_015_6f25

    rra
    ld b, d
    add b
    dec d
    inc b
    dec d
    add b
    dec d
    dec d
    ld d, l
    ld b, c
    ld d, l
    ld b, l
    db $10

jr_015_6ef9:
    ld d, l
    ld e, b
    ld e, e
    ld e, d
    ld e, l
    ld e, a
    ld e, a
    add b
    ld d, c
    ld a, [hl]
    ld d, b
    ld b, e
    ld d, d
    ld a, [hl]
    ld d, c
    ld b, e
    add b
    add e
    ld [bc], a
    ld b, c
    ldh [$ff33], a
    ld e, a
    ld hl, sp-$10
    ldh a, [c]
    db $f4
    ld sp, $1f7f
    ld e, l
    add l
    add b
    add l
    ld a, l
    add l
    ld a, [hl]
    add l
    ld b, l
    add l
    ld e, l
    add l
    ld e, a
    ld a, a

jr_015_6f25:
    ld a, h
    rra
    ld e, l
    add b
    ldh a, [$ff80]
    ld a, a
    dec d
    ld de, $5f5d
    ld e, l
    ldh a, [c]
    ld e, l
    ld a, a
    ld e, a
    add hl, de
    add hl, de
    rla
    inc b
    add b
    add l
    ld e, l
    ldh a, [c]
    ld a, l
    ld b, l
    ld a, l
    dec [hl]
    ld [hl], $80
    inc hl
    ld e, a
    nop
    add b
    add e
    inc bc
    jr nc, jr_015_6f6d

    ld e, l
    inc e
    ld a, l
    dec [hl]
    ld [hl], $5d
    add b
    ld a, h
    dec [hl]
    ld [hl], $7d
    dec [hl]
    ld [hl], $55
    ld a, l
    ld a, h
    dec [hl]
    ld [hl], $7e
    ld d, e
    add b
    ld d, e
    ldh a, [$ff1f]
    ld a, l
    ld d, e
    ld d, e
    ld b, e
    ld b, b
    db $f4
    dec [hl]
    add e
    nop
    and h

jr_015_6f6d:
    inc bc
    add l
    ld e, a
    db $f4
    inc sp
    inc hl
    add b
    ld de, $1504
    add hl, de
    rla
    ld b, e
    ld d, d
    ldh a, [rHDMA2]
    inc b
    dec d
    add hl, de
    ld d, $f0
    ld e, l
    ldh a, [c]
    add b
    dec d
    inc b
    db $e4
    inc a
    add b
    inc hl
    nop
    inc sp
    ld a, c
    ld [hl+], a
    ld a, h
    ld bc, $7979
    ld [hl+], a
    ld a, l
    ret nc

    inc b
    inc c
    dec h
    nop
    nop
    add b
    jp z, $3304

    nop
    ld a, d
    rst $00
    inc b
    ld [bc], a
    ld [bc], a
    ld [$7110], sp
    ld b, l
    nop
    ld hl, $8003
    cp $fd
    ld [hl], c
    ld b, c
    nop
    ld b, b
    inc b
    db $10
    ld a, c
    ld a, c
    ld b, b
    ld a, d
    add e
    inc b
    ld e, h
    nop
    ld a, d
    inc h
    ld a, c
    nop
    ld hl, $0024
    rlca
    ld sp, $0001
    and b
    or b
    xor b
    cp b
    nop
    inc hl
    jr nz, @+$0d

    jr nc, @+$2a

    jr c, @+$22

    ld sp, $0001
    cp $fd
    ld sp, $0001
    add a
    inc b
    add h
    inc de
    nop
    nop
    ld a, d
    nop
    ld [hl], c
    nop
    ld b, b
    ld a, d
    nop
    nop
    ld a, d
    ld sp, $0001
    sub b
    nop
    ld hl, $a0a0
    ld bc, $0483
    ld a, a
    inc hl
    ld bc, $7a01
    nop
    push bc
    inc b
    or c
    ld bc, $407a
    and e
    inc b
    ld sp, $3ce4
    nop
    rst $38
    ld [hl], e
    inc hl
    nop
    dec b
    ldh [$ffe0], a
    ld hl, sp-$08
    db $fc
    db $fc
    inc hl
    cp $01
    rst $38
    rst $38
    xor a
    nop
    nop
    db $e4
    rst $18
    nop
    ld a, [bc]
    ret nz

    ret nz

    ldh a, [$ff30]
    inc a
    inc c
    ld c, $02
    inc bc
    ld bc, $2701
    nop
    add hl, de
    inc bc
    ld [bc], a
    inc b
    inc b
    ld [$3800], sp
    jr nz, jr_015_7076

    ld b, b
    add b
    nop
    add b
    ld b, b
    add b
    ld h, b
    add b
    inc a
    ld b, b
    inc b
    jr c, jr_015_704a

    ld [$0403], sp
    nop
    jp Jump_000_1301


jr_015_704a:
    inc b
    inc a
    inc h
    jp Jump_015_4200


    ld sp, $0700
    jp $bd00


    ld b, d
    inc a
    jp $3c00


    db $f4
    jr nz, jr_015_705f

    db $10

jr_015_705f:
    add [hl]
    ld bc, $410f
    nop
    ld [$0041], sp
    db $10
    ld b, c
    ld [$0210], sp
    inc b
    ld [$a406], sp
    ld bc, $2e69
    nop
    inc b
    inc e

jr_015_7076:
    db $10
    inc hl
    nop
    ld b, c
    ld b, c
    nop
    add b
    ld [bc], a
    nop
    nop
    add b
    ld l, $00
    ld b, c
    add b
    nop
    dec bc
    ret nz

    nop
    ld h, e
    add b
    ld a, a
    add b
    ld a, $41
    inc e
    inc hl
    nop
    inc e
    jr nc, jr_015_7095

jr_015_7095:
    inc b
    inc a
    and l
    ld b, d
    nop
    add c
    inc hl
    nop
    ld [$0081], sp
    rst $20
    nop
    ld a, [hl]
    add c
    cp l
    ld b, d
    nop
    pop de
    ld bc, $04d7
    jr c, jr_015_70d5

    call nz, $8200
    xor a
    ld bc, $f400
    inc [hl]
    ld bc, $b5a0
    ld bc, $0075
    ret nz

    rst $20
    rst $38
    nop
    db $e4
    db $d3
    nop
    rst $38
    add hl, bc
    ld [hl], b
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    jr @+$34

    add b
    add b
    inc bc
    ld bc, $8005
    dec c
    add b

jr_015_70d5:
    ld [$1580], sp
    add b
    add hl, bc
    rrca
    add b
    dec bc
    ld [de], a
    add b
    add b
    rlca
    add b
    inc d
    add b
    ld c, $c3
    nop
    ld [$020c], sp
    ld b, $0d
    add b
    add b
    ld [hl-], a
    add b
    ld a, a
    add b
    ld a, h
    ld [$0180], sp
    daa
    add b
    nop
    ld [hl-], a
    ld h, $80
    adc b
    nop
    ld l, $d7
    nop
    ld b, l
    ld h, $80
    nop
    inc sp
    add a
    nop
    cpl
    rst $00
    nop
    ld l, l
    db $e4
    adc b
    add b
    ld h, e
    ld a, l
    inc bc
    add b
    ld bc, $0305
    add a
    nop
    db $10
    add l
    nop
    dec bc
    dec c
    add b
    ld a, [bc]
    ld de, $0c80
    inc de
    inc bc
    dec b
    add b
    add b
    inc b
    add b
    rrca
    ld [de], a
    jp $0600


    dec b
    add b
    add b
    dec bc
    add hl, bc
    inc bc
    add b
    ldh a, [$ffd0]
    nop
    ld l, $62
    ld a, l
    dec b
    inc sp
    nop
    add b
    inc b
    ld [bc], a
    ld b, $84
    nop
    jr @-$78

    ld bc, $0115
    add b
    dec c
    add h
    ld bc, $0412
    ld [bc], a
    inc b
    ld bc, $8005
    jp Jump_000_0e02


    ld [bc], a
    inc sp
    add b
    ld a, a
    ld [hl+], a
    add b
    ld [bc], a
    rlca
    ld [bc], a
    nop
    sub [hl]
    nop
    ld l, a
    nop
    inc sp
    adc a
    nop
    ld d, a
    sub a
    nop
    cpl
    db $e4
    sub b
    add b
    ld h, e
    ld a, l
    inc bc
    db $10
    ld [bc], a
    ld b, $04
    add [hl]
    ld [bc], a
    ld c, $85
    ld [bc], a
    ld [$0901], sp
    rrca
    add e
    nop
    inc d
    ld [bc], a
    add b
    inc b
    ld b, $83
    ld bc, $0c2c
    ld de, $8013
    add b
    inc sp
    ld a, a
    ld a, h
    add b
    inc c
    ld a, [bc]
    inc b
    db $10
    add b
    ldh a, [$ffce]
    ld [bc], a
    dec l
    inc hl
    nop
    nop
    ld bc, $003d
    nop
    ld bc, $0483
    nop
    ld b, $10
    db $fd
    cp $01
    ld bc, $0101
    db $e4
    rst $08
    nop
    rst $38
    ld a, b
    inc bc
    inc a
    inc a
    ld b, d
    ld b, d
    inc hl
    add c
    dec c
    rst $20
    add c
    rst $38
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    ccf
    ccf
    ld [hl], b
    ld h, c
    ret nz

    ret nz

    inc hl
    add b
    ld [$80c1], sp
    and $80
    cp [hl]
    ret nz

    and a
    ret nz

    pop bc
    ld b, c
    add b
    ret nz

    ld [$a180], sp
    ret nz

    sbc $e1
    ld h, b
    ld a, a
    ccf
    ccf
    cp c
    nop
    db $10
    ld bc, $07fb
    and e
    nop
    inc l
    nop
    ldh a, [$ffc3]
    nop
    ld d, b
    ld [hl+], a
    cp $27
    rst $38
    xor a
    nop
    ld d, b
    ld b, $ff
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    xor a
    nop
    ld h, a
    nop
    ld a, a
    sbc [hl]
    nop
    ld l, c
    jr z, @+$01

    nop
    nop
    ld b, c
    nop
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    add b
    dec b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp-$51
    nop
    or b
    inc b
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    ld b, c
    nop
    add b
    ld h, $00
    adc $00
    sbc $00
    nop
    cp a
    nop
    ret nc

    dec b
    rlca
    ld hl, sp+$1f
    ldh [$ff3f], a
    ret nz

    ld b, c
    ld a, a
    add b
    ld b, d
    rst $38
    nop
    nop
    rst $38
    adc [hl]
    nop
    or c
    cp a
    ld bc, $4210
    inc bc
    nop
    ld b, c
    ld b, $00
    dec b
    inc c
    nop
    jr jr_015_7250

jr_015_7250:
    jr nc, jr_015_7252

jr_015_7252:
    adc $01
    ld e, [hl]
    add [hl]
    ld bc, $8301
    ld bc, $0054
    inc e
    and e
    nop
    rst $28
    adc b
    nop
    rst $38
    ld a, [bc]
    rlca
    ld bc, $061f
    rst $38
    jr @+$01

    ldh [rSB], a
    nop

jr_015_726e:
    ld bc, $0186
    ld d, c
    ld b, $0e
    nop
    inc a
    nop
    ldh a, [rP1]
    ld bc, $0141
    inc bc
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    rrca
    inc b
    rra
    ld [$307f], sp
    rst $38
    ret nz

    ld b, d
    inc bc
    ld bc, $0641
    ld [bc], a
    ld b, c
    inc c
    inc b
    ld b, c
    jr jr_015_729d

    ld b, c
    inc c
    inc b
    inc bc
    ld b, $02
    ld b, $02

jr_015_729d:
    ld b, d
    inc bc
    ld bc, $0183
    and b
    nop
    ld [bc], a
    add h
    ld bc, $08b7
    jr jr_015_72b3

    ld [hl], b
    jr nc, jr_015_726e

    ret nz

    rst $38
    ccf
    ldh a, [$ff98]

jr_015_72b3:
    nop
    inc de
    inc bc
    ldh [$ff7f], a
    rst $38
    ccf
    ld b, d
    nop
    inc bc
    ld b, c
    ld bc, $0306
    inc bc

jr_015_72c2:
    inc c
    rlca
    jr jr_015_7307

    rrca
    jr nc, @+$08

    rlca
    jr @+$05

    inc c
    ld bc, $0106
    adc b
    ld bc, $8d68
    ld [bc], a
    ld [bc], a
    add a
    ld bc, $036f
    ld bc, $0306
    inc e
    add e
    ld bc, $8710
    ld bc, $0740

jr_015_72e5:
    ld sp, hl
    rlca
    and $1f
    jr @+$01

    ldh [rIE], a
    ld b, d
    inc bc
    ld bc, $0700
    add h
    ld bc, $83a5
    ld bc, $01a8
    rra
    ld [$0f41], sp
    inc b
    nop
    rlca
    add $01
    and a
    ld bc, $0103
    db $f4

jr_015_7307:
    adc c
    ld bc, $0170
    ei
    rlca
    and e
    ld bc, $42fc
    db $fd
    inc bc
    ld b, c
    ld a, [$4107]
    db $f4
    rrca
    ld b, c
    add sp, $1f
    ld b, c
    db $f4
    rrca
    ld b, c
    ld a, [$4207]
    db $fd
    inc bc
    ld bc, $0000
    adc l
    inc bc
    ld [bc], a
    db $f4
    ccf
    ld [bc], a
    jr nc, @-$3a

    ld [bc], a
    ld c, a
    ld [bc], a
    ld b, $07
    ld bc, $01d7
    add [hl]
    inc bc
    rst $38
    ret nz

    ld a, a
    jr nc, jr_015_72c2

    ld [bc], a
    ld h, b
    nop
    rlca
    ld b, c
    ld [bc], a
    inc bc
    ld [hl+], a
    ld bc, $01ce
    sbc [hl]
    adc d
    ld bc, $037f
    ld e, $06
    ld hl, sp+$18
    inc hl

jr_015_7354:
    ldh [rSC], a
    ld hl, sp+$18
    ld e, $8a
    inc bc
    ld [hl], l
    inc bc
    ret nz

    ret nz

    ld [hl], b
    jr nc, jr_015_72e5

    ld bc, $02c0
    ld b, $02
    ld [bc], a
    add h
    inc bc
    sbc e
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp $e303


    adc a
    inc bc
    ldh [$fff4], a
    cpl
    inc bc
    nop
    jp $8f01


    inc bc
    and $1f
    ld sp, hl
    rlca
    add a
    ld bc, $c438
    nop
    rst $08
    ld bc, $011c
    adc b
    inc bc
    add [hl]
    cp a
    ld bc, $f450
    adc a
    inc bc
    ld [hl], b
    db $f4
    cpl
    ld [bc], a
    nop
    cp a
    inc b
    jr nc, jr_015_7354

    inc bc
    ldh a, [rSTAT]
    ei
    ld b, $41
    rst $30
    inc c
    ld b, c
    rst $28
    jr jr_015_73ec

    rst $30
    inc c
    ld b, c
    ei
    ld b, $87
    inc bc
    ld a, [de]
    adc l
    dec b
    ld h, d
    adc c
    ld [bc], a
    ld b, b
    inc bc
    rst $20
    ld e, $1f
    ld hl, sp+$41
    rst $38
    ldh [$ff03], a
    rra
    ld hl, sp-$19
    ld e, $88
    inc b
    ld [hl], $91
    inc b
    rst $28
    add [hl]
    ld bc, $0d90
    ld bc, $0106
    ld c, $03
    inc a
    rrca
    ldh a, [rIE]
    ld bc, $03fd
    cp $03
    add e
    inc bc
    ld [$e803], sp
    rra
    or b
    ld a, a
    ld b, c
    ret nz

    rst $38
    ld bc, $7fb0

jr_015_73ec:
    add e
    inc bc
    db $10
    ld c, $fa
    rlca
    cp $03
    db $fd
    inc bc
    rst $38
    ld bc, $f00f
    inc bc
    inc a
    ld bc, $010e
    adc b
    inc bc
    and [hl]
    add e
    dec b
    ret nc

    ld bc, $02ff
    add e
    dec b
    ld l, b
    inc bc
    rst $28
    jr @-$3f

    ld [hl], b
    ld b, c
    rst $38
    ret nz

    ld bc, $70bf
    add e
    dec b
    ld [hl], b
    inc bc
    ei
    ld b, $ff
    ld [bc], a
    add e
    dec b
    db $ec
    ld [bc], a
    rst $38
    inc a
    jp Jump_000_0088


    inc bc
    dec b
    rst $38
    ld b, d
    rst $38
    inc a
    nop
    nop
    ld b, [hl]
    nop
    rst $38
    ld bc, $0000
    add l
    ld bc, $a612
    dec b
    xor b
    db $f4
    ret nc

    dec b
    ld c, a
    sub c
    inc bc
    ldh [$ffcd], a
    ld b, $3f
    xor [hl]
    ld b, $40
    ld hl, sp+$20
    dec b
    nop
    adc a
    inc bc
    ldh [rIE], a
    or d
    ld [hl], c
    dec d
    rst $38
    nop
    add b
    ld h, e
    ld a, l
    ld [$7d7d], sp
    ld a, [hl]
    ld a, l
    dec b
    ld a, l
    ld a, l
    add b
    ld [$8022], sp
    ldh [rHDMA3], a
    inc bc
    inc d
    add b
    ld h, $14
    inc bc
    ld h, $10
    add b
    ld a, l
    ld b, $80
    add b
    inc bc
    ld h, $10
    inc hl
    ld a, l
    ld b, $30
    add b
    add b
    dec a
    dec h
    ld a, l
    inc [hl]
    dec h
    add b
    jr c, jr_015_74e2

    ld c, [hl]
    add b
    rrca
    ld d, a
    add b
    ld b, h
    ld d, a
    dec e
    ld c, [hl]
    dec de
    add b
    ld a, [hl]
    ld b, c
    add b
    ld a, l
    ld sp, hl
    ld hl, sp+$1b
    cpl
    ld a, [hl]
    ld b, c
    dec sp
    ld a, l
    ld b, e
    ld e, [hl]
    ld c, d
    ld a, [hl]
    ld e, c
    ld c, d
    ld a, l
    ld e, h
    add b
    ld hl, sp+$7e
    ld c, b
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld c, e
    ld a, l
    ld a, l
    ld hl, sp+$7d
    ld sp, hl
    ld a, l
    ld a, [$80f9]
    add b
    ld a, l
    db $10
    dec de
    ld a, [hl]
    inc bc
    inc h
    ld a, l
    ld d, $1d
    ld c, [hl]
    db $ec
    db $eb
    db $10
    ld h, $fc
    ld a, [hl]
    db $fd
    ld a, [hl]
    cp $fd
    ld a, l
    ld a, l
    ld hl, sp+$26
    ld a, l
    ld a, [$4d09]
    ld a, l
    ld hl, sp+$4e
    ld [hl+], a
    ld hl, sp-$7d
    nop
    ld e, e
    ld a, [de]
    ld c, a
    or $5f
    ld c, [hl]
    ld e, a
    or $5e

jr_015_74e1:
    ld a, [hl]

jr_015_74e2:
    ld a, l
    ld a, a
    ld a, [$fa7d]
    ld sp, hl
    ld a, [$807d]
    ld a, a
    ld c, e
    db $fc
    db $10
    ld a, [$1480]

jr_015_74f2:
    ld a, l
    ld a, l
    inc bc
    add h
    nop
    ld h, h
    ld [hl+], a
    add b
    nop
    db $eb
    ld b, c
    ld a, l
    dec b
    ld [hl+], a
    ld a, a
    inc bc
    ld a, h

Call_015_7503:
    ld a, [hl]
    ld b, h
    ld a, [hl]
    ld b, d
    ld a, l
    add d
    rlca
    inc bc
    ld a, l
    ld a, l
    db $ec
    db $eb
    add b
    dec h
    add b
    ld b, c
    add b
    ld a, h
    ld [bc], a
    ld a, h
    add b
    ld a, l
    ld b, c
    add d
    add b
    ld bc, $7d7d
    dec h
    add b
    rlca
    db $ec
    db $eb
    ld b, $ec
    db $eb
    add b
    ld a, l
    inc d
    add e
    nop
    ld e, e
    add e
    nop
    ld e, e
    inc bc
    ld a, l
    ld a, l
    add d
    ld h, $41
    add d
    add b
    rlca
    inc bc
    inc bc
    ld h, $26
    db $10
    ld a, l
    ld hl, sp-$08
    add e
    nop
    and [hl]
    ld [bc], a
    add hl, bc
    ld c, l
    ld a, l
    add a
    nop
    nop
    nop
    dec d
    ld [hl+], a
    ld a, l
    nop
    jr jr_015_7574

    add b
    ldh [rLCDC], a
    inc b
    inc de
    add b
    inc b
    ld [hl], $80
    ld [hl], $13
    ld a, l
    add b
    jr nz, jr_015_74e1

    nop
    ld d, $36
    inc de
    ld a, l
    inc sp
    jr nz, @-$7e

    add b
    ld d, $0d
    add b
    inc h
    ld a, l
    dec [hl]
    jr z, jr_015_74f2

    dec [hl]
    ld e, [hl]

jr_015_7574:
    ld c, [hl]
    ld b, a
    rra
    add b
    ld b, a
    ld d, h
    add b
    ld c, [hl]
    dec l
    ld a, [hl]
    add b
    dec hl
    ld a, l
    dec bc
    ld d, c
    add b
    ld a, [$3f7e]
    dec hl
    ld a, l
    add b
    ld d, c
    ld e, [hl]
    ld d, e
    ld c, c
    ld a, [hl]
    ld e, d
    ld c, h
    ld a, l
    ld e, d
    ei
    jr jr_015_75ee

    ld [hl+], a
    ld a, [hl]
    nop
    ld e, e
    ld [hl+], a
    ld a, l
    ldh [$ff28], a
    ld a, [$fb7d]
    ld hl, sp+$7d
    add b
    ei
    add b
    jr nz, jr_015_7625

    ld a, [hl]
    dec hl
    inc de
    ld a, l
    ld a, l
    dec d
    jr nz, @+$7f

    ld c, [hl]
    dec l
    add hl, de
    ld c, l
    ld a, l
    ld [hl], $fe
    ld a, [hl]
    rst $38
    db $fc
    ld a, [hl]
    ld a, l
    rst $38
    ld a, l
    ld a, [$f836]
    ld a, l
    xor $eb
    jr nz, @-$04

    ld c, [hl]
    ld [hl+], a
    ld a, [$0183]
    ld e, d
    dec de
    ld e, a
    rst $30
    ld c, a
    ld c, a
    ld c, [hl]
    ld e, [hl]
    rst $30
    ld a, [hl]
    ld a, l
    ld a, a
    ld hl, sp+$7d
    ld hl, sp-$80
    ld hl, sp+$7d
    add b
    ld a, a
    cp $fe
    ld hl, sp+$20
    inc b
    add b
    ld a, l
    ld a, l
    inc de
    inc de
    add a
    nop
    and h
    ld b, c
    dec d

jr_015_75ee:
    ld a, l
    inc hl
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld d, h
    ld a, [hl]
    ld b, d
    ld a, l
    add h
    inc bc
    inc de
    ld a, l
    ld a, l
    xor $c3
    nop
    xor e

Call_015_7600:
    ld bc, $8035
    add h
    nop
    rst $00
    ld [bc], a
    add h
    add b
    add h
    add a
    nop
    rst $08
    rlca
    inc b
    xor $eb
    add b
    xor $eb
    ld d, $7d
    add e
    ld bc, $8494
    ld bc, $0359
    ld a, l
    ld a, l
    add h
    ld [hl], $41
    add h
    add b
    rlca

jr_015_7625:
    inc de

jr_015_7626:
    inc de
    ld [hl], $36
    ld a, l
    jr nz, jr_015_7626

    ld a, [$0083]
    and [hl]
    nop
    add hl, de
    adc c
    nop
    db $fd
    ld [hl+], a
    ld a, l
    nop
    inc h
    ld [hl+], a
    add b
    ldh [rLCDC], a
    jr z, jr_015_7643

    ld a, l
    dec d
    inc b
    add b

jr_015_7643:
    jr jr_015_76c2

    ei
    ld de, $7d02
    rlca
    add b
    add b
    ld hl, sp-$80
    ld de, $7d80
    rlca
    ld sp, $8080
    inc a
    add b
    ld [hl+], a
    dec [hl]
    add b
    daa
    dec [hl]
    ld a, l
    ld a, [hl]
    ld b, a
    ld a, [hl]
    ld e, b
    ld b, a
    ld a, l
    ld e, e
    inc e
    ld a, [hl]
    inc e
    ld c, $7e
    ld b, d
    add b
    ld a, l
    ld a, l
    jr z, jr_015_768b

    add b
    ld a, [hl]
    ld b, d
    inc a
    ld a, l
    ld b, d
    ld a, l
    add b
    ld l, $5a
    add b
    ld b, l
    ld e, d
    ei
    ld sp, hl
    ld [hl+], a
    ld a, [hl]
    nop
    ld c, c
    ld [hl+], a
    ld a, l
    ld bc, $f94c
    add e
    ld bc, $0891

jr_015_768b:
    ld a, l
    ei
    pop af
    ld a, l
    ld de, $7e1c
    ld a, l
    ld [hl+], a
    jp $0902


    ld d, $1c
    ld a, [hl]
    db $ed
    db $eb
    ld de, $fdf9
    db $fc
    ld a, [hl]
    db $fc
    ld a, l

jr_015_76a3:
    ld a, [hl]
    rst $38
    di
    daa
    ld sp, hl
    ld hl, sp-$80
    ld a, [bc]
    ld c, l
    ld a, l
    daa
    ld a, [hl]
    ld [hl+], a
    ld sp, hl
    add e
    ld [bc], a
    ld e, c
    ld [bc], a
    db $fd
    ld a, [hl]
    ld a, l
    add e
    ld [bc], a
    ld [hl], c
    dec b
    push af
    ld a, l
    ld a, a
    add b
    di
    daa

jr_015_76c2:
    ld b, c
    ld hl, sp-$80
    ld b, $7f
    db $fd
    db $fd
    rlca
    add b
    inc b
    add b
    ld b, c
    ld hl, sp-$0d
    ld b, c
    ld a, l
    inc h
    ld bc, $f180
    push bc
    nop
    xor c
    add h
    ld bc, $01af
    ld a, l
    ld a, [hl]
    ld b, c
    ld a, l
    add e
    dec b
    ld [hl+], a
    add e
    ld a, l
    ld b, l
    ld a, l
    db $ed
    adc d
    ld bc, $02c0
    add e
    daa
    add e
    add h
    nop
    rst $08
    dec bc
    daa
    add b
    jr z, jr_015_76fc

    db $ed
    db $eb
    rlca
    db $ed

jr_015_76fc:
    db $eb
    add b
    di
    add b
    add e
    ld [bc], a
    ld e, c
    add e
    ld [bc], a
    ld e, c
    inc bc
    ld a, l
    ld a, l
    add e
    add b
    add a
    ld [bc], a
    jp z, $1108

    ld a, l
    ld sp, hl
    ld sp, hl
    ld [hl+], a
    ld [hl+], a
    daa
    daa
    ld a, [bc]
    adc e
    ld bc, $e0fc
    halt
    inc [hl]
    ld a, l
    add b
    add b
    jr c, jr_015_76a3

    dec b
    ld a, l
    inc d
    ld [$1480], sp
    ld sp, hl
    ld a, l
    ld a, l
    ld [de], a
    ld hl, $0180
    rla
    add b
    ld a, [$807d]
    ld hl, $8080
    rla
    inc c
    add b
    dec h
    ld [hl-], a
    add b
    dec h
    scf
    add b
    ld a, l
    ld a, [hl]
    ld c, b
    ld a, [hl]
    ld d, a
    ld c, e
    ld a, l
    ld d, a
    ld a, [hl]
    inc l
    ld a, [hl]
    ld e, $2c
    ld a, l
    inc c
    ld d, d
    ld sp, hl
    ei
    ld a, [hl]
    add b
    inc l
    ld a, l
    add b
    ld d, d
    ld a, l
    ld d, d
    ld c, d
    ld a, $80
    ld c, d
    ld d, l
    add b

jr_015_7761:
    ld a, l
    ei
    ld a, [hl]
    ld a, [hl]
    ld e, c
    ld a, [hl]
    ld a, l
    ld a, l
    ld e, h
    ld a, l
    ei
    ld a, [$807d]
    ld a, [$7df9]
    ldh a, [rNR42]
    ld a, l
    ld a, [hl]
    inc l
    ld a, l
    ld [hl-], a
    ld a, l
    ld a, l
    ld hl, $7e34
    inc l
    ld a, [de]
    ld c, l
    ld a, l
    ei
    rst $38
    cp $7e
    ld a, l
    cp $fd
    ld a, [hl]
    ldh a, [c]
    scf
    ei
    add b
    ld a, [$ebef]
    ld hl, $7e37
    ld [hl+], a
    ei
    add e
    inc bc
    ld e, b
    ld [bc], a
    rst $38
    ld a, [hl]
    ld a, l
    add e
    inc bc
    ld [hl], b
    db $10
    db $f4
    ld a, l
    ld a, a
    add b
    ldh a, [c]
    scf
    add b
    add b
    ld a, [$7f80]
    rst $38
    ld e, h
    add b
    rla
    add b
    inc d
    ld b, c
    ld a, [$41f2]
    inc [hl]
    ld a, l
    ld bc, $f080
    add a
    ld [bc], a
    xor b
    nop
    ld a, h
    add h
    ld [bc], a
    or c
    ld [$7d85], sp
    add l
    ld [hl-], a
    add l
    ld a, l
    ld d, l
    ld a, l
    rst $28
    add h
    nop
    pop bc
    ld bc, $7c80
    add e
    nop
    ret z

    ld [bc], a
    add l
    scf
    add l
    add h
    nop
    rst $08
    ld c, $37
    jr c, jr_015_7761

    add b
    rst $28
    db $eb
    add b
    rst $28
    db $eb
    rla
    ldh a, [c]
    inc d
    add b
    ld a, [$84f9]
    inc bc
    ld d, a
    inc bc
    ld a, l
    ld a, l
    add l
    add b
    add a
    inc bc
    ret


    ld a, [bc]
    ld a, l
    ld hl, $fbfb
    ld [hl-], a
    ld [hl-], a
    scf
    scf
    ld a, [de]
    ld c, l
    ld a, l
    inc hl
    nop
    inc bc
    ld bc, $8001
    add b
    daa
    nop
    dec b
    rlca
    nop
    ld b, $07
    nop
    ld b, $83
    inc bc
    db $fd
    inc bc
    nop
    nop
    ld bc, $8700
    inc b
    ld [de], a
    rrca
    ld bc, $0501
    nop
    inc b
    dec b
    nop
    inc b
    add b
    add b
    add a
    add b
    add [hl]
    add a
    add b
    add [hl]
    ld [hl+], a
    add b
    ld b, $01
    add b
    add b
    ld bc, $f080
    nop
    rst $00
    inc b
    add hl, sp
    rlca
    add l
    add b
    add h
    add l
    add b
    add h
    ldh a, [rP1]
    dec h
    add b
    adc c
    inc b
    ld [bc], a
    rrca
    jr nc, jr_015_786e

    and b
    and b
    jr nc, jr_015_7872

    jr nz, @+$32

    jr nz, jr_015_7876

    and b
    and b
    ld sp, $0001
    jr z, @+$29

    add b
    inc bc
    jr c, @+$3a

    ldh a, [$fff0]
    add e
    inc b
    ld l, b
    inc bc
    and b
    jr nz, @+$32

    ldh a, [rNR44]
    jr nz, jr_015_7895

jr_015_786e:
    add b
    ld bc, $1040

jr_015_7872:
    and h
    inc b
    rla
    ld [bc], a

jr_015_7876:
    jr c, @+$42

    db $10
    add e
    inc b
    ld [bc], a
    ld bc, $0101
    ld b, c
    ld b, b
    nop
    rlca
    jr z, @+$2a

    jr c, @+$3a

    ld b, b
    nop
    ld b, b
    ld [bc], a
    add e
    inc b
    and b
    rlca
    db $10
    sub b
    db $fd
    cp $b8
    xor b

jr_015_7895:
    and b
    xor b
    ld b, d
    ld hl, $0000
    xor b
    add e
    inc b
    ld h, a
    ld [hl+], a
    ld bc, $fe05
    db $fd
    nop
    nop
    ldh a, [$fff0]
    ld b, c
    ld hl, $0300
    jr nz, jr_015_78de

jr_015_78ae:
    jr z, jr_015_78e8

    ld [hl+], a
    jr z, jr_015_78b7

    ld bc, $0131
    nop

jr_015_78b7:
    ld sp, $0483
    dec d
    inc hl
    jr z, jr_015_78e1

    jr c, @+$03

    jr z, jr_015_78fa

    ld b, d
    ld hl, $4100
    jr z, jr_015_7900

    ld bc, $2838
    ld b, d
    jr z, jr_015_7906

    ld [bc], a
    ld sp, $0001
    rst $38
    ld [hl], e
    inc hl
    nop
    dec b
    ldh [$ffe0], a
    ld hl, sp-$08
    db $fc
    db $fc
    inc hl

jr_015_78de:
    cp $01
    rst $38

jr_015_78e1:
    rst $38
    xor a
    nop
    nop
    ld b, c
    rst $38
    nop

jr_015_78e8:
    ld [$e0ff], sp
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    xor a
    nop
    dec e
    ld a, [bc]
    ld a, a
    rst $38
    rst $38
    rla

jr_015_78fa:
    cpl
    inc e
    jr c, jr_015_78ae

    and b
    ld h, b

jr_015_7900:
    ld b, b
    daa
    nop
    xor a
    nop
    ld b, b

jr_015_7906:
    dec h
    nop
    add hl, bc
    ret nz

    nop
    ldh [rLCDC], a
    cp b
    and b
    rra
    jr c, jr_015_7929

    cpl
    xor a
    nop
    ld h, b
    inc bc
    inc a
    inc a
    ld b, d
    ld b, d
    inc hl
    add c
    dec c
    rst $20
    add c
    rst $38
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    ccf
    ccf
    ld [hl], b

jr_015_7929:
    ld h, c
    ret nz

    ret nz

    inc hl
    add b
    ld [$80c1], sp
    and $80
    cp [hl]
    ret nz

    and a
    ret nz

    pop bc
    ld b, c
    add b
    ret nz

    ld [$a180], sp
    ret nz

    sbc $e1
    ld h, b
    ld a, a
    ccf
    ccf
    cp c
    nop
    sub b
    ld bc, $07fb
    and e
    nop
    xor h
    ld [bc], a
    rst $38
    inc a
    jp Jump_000_0088


    add e
    rlca
    rst $38
    ld b, d
    rst $38

jr_015_7959:
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp $e300


    adc a
    nop
    ldh [rTAC], a
    nop
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    ld a, a
    ret nz

    add l
    ld bc, $0302
    ld a, a

jr_015_7974:
    rst $38
    ld c, h
    rst $38
    ld b, c
    ld a, a
    call z, $0187
    ld [bc], a
    ld bc, $ff7f
    add e
    ld bc, $0100
    ld c, c
    rst $38
    ld b, e
    ld a, a
    ret


    adc c
    ld bc, $8716
    ld bc, $0918
    rra
    rst $38
    jr nc, jr_015_7974

    ld b, b
    rst $08
    ret nz

    sbc a
    add b
    cp c
    ld b, c
    add b
    or b
    dec d
    add c
    cp b
    add a
    cp h
    add l
    cp [hl]
    add e
    cp a
    add b
    cp a
    ret nz

    sbc a
    ld b, b
    rst $08
    cpl
    ldh a, [$ff1f]
    rst $38
    rlca
    rlca
    inc e
    jr @-$73

    nop
    ld b, h
    add e
    ld bc, $0260
    jr nc, jr_015_79dd

    ld h, b
    ld [hl+], a
    ld b, b
    nop
    ret nz

    ld h, $80
    inc bc
    ret nz

    add b
    ld b, b
    ld b, b
    inc hl
    jr nz, jr_015_7959

    ld bc, $0778
    ld h, b
    ld b, b
    jr c, jr_015_79f3

    rra
    jr jr_015_79dd

    rlca
    adc h
    nop
    ld h, b
    ld [$0718], sp

jr_015_79dd:
    rlca
    ldh [rP1], a
    jr jr_015_79e2

jr_015_79e2:
    dec b
    nop
    adc c
    nop
    ld d, a
    ld bc, $40ff
    jp $1700


    adc d
    ld bc, $01b6
    nop
    rst $38

jr_015_79f3:
    ld b, c
    nop
    cp $08
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, [$fc01]
    inc bc
    xor a
    ld bc, $2bd0
    nop
    ld [bc], a
    add c
    nop
    rst $20
    jp $1100


    ld c, $ff
    add e
    rst $38
    rst $38
    add e
    rst $38
    sbc a
    ld [hl], e
    sbc a
    rst $38
    inc de
    rst $38
    di
    sbc a
    di
    ld b, c
    rst $38
    sub e
    ld b, $ff
    sbc a
    inc bc

jr_015_7a23:
    rst $38
    rst $38
    inc bc
    rst $38
    add h
    nop
    ld e, $03
    rst $38
    rst $38
    inc hl
    rst $38
    ld b, e
    rst $38
    inc hl
    ld [bc], a
    rst $38
    db $e3
    ccf
    ret


    ld [bc], a
    cpl
    jp Jump_000_2402


    and [hl]
    ld bc, $073f
    ld bc, $03fb
    db $fd
    jp $a3fd


    ld a, l
    ld b, c
    db $e3
    dec a
    ld [$7da3], sp
    jp Jump_000_03fd


    db $fd
    dec b
    ei
    ld c, $f4
    ld h, l
    ld bc, $045b
    ret nz

    ld hl, sp-$08
    ldh [$ffc0], a
    adc c
    ld [bc], a
    or [hl]
    ld [bc], a
    jp $3c00


    ld h, $00
    dec b
    jr jr_015_7a6b

jr_015_7a6b:
    and l
    jr @+$44

    cp l
    xor a
    nop
    ld e, b
    adc a
    nop
    ld e, b
    inc bc
    nop
    rlca
    inc b
    ld [$0041], sp
    db $10
    dec bc
    inc b
    jr nz, jr_015_7a89

    jr nz, jr_015_7a93

    ld c, l
    jr nz, @+$5f

    ld hl, sp+$07
    db $f4

jr_015_7a89:
    ld [$e041], sp
    db $10
    rlca
    call nz, $c820
    jr nz, jr_015_7a23

jr_015_7a93:
    ld c, l
    and b
    ld e, l
    inc hl
    nop
    ld b, c
    ld bc, $4100
    inc bc
    nop
    ld b, c
    rlca
    nop
    ld b, c
    rrca
    nop
    ld b, c
    rra
    nop
    nop
    ccf
    ret


    ld bc, $00e9
    nop
    ld b, c
    cp $01
    ld b, c
    db $fc
    inc bc
    ld b, c
    ld hl, sp+$07
    ld b, c
    ldh a, [rIF]
    ld b, c
    ldh [$ff1f], a
    ld b, c
    ret nz

    ccf

jr_015_7ac0:
    ld b, c
    add b
    ld a, a
    nop
    nop
    sbc [hl]
    inc bc
    jr nz, jr_015_7ac9

jr_015_7ac9:
    rst $38
    add [hl]
    ld bc, $04cf
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [$ffa3]
    inc bc
    dec hl
    ld b, d
    nop
    ret nz

    ld b, e
    nop
    add b
    dec b
    nop
    rst $38
    nop
    rrca
    nop
    ld bc, $002a
    ld [bc], a
    rst $38
    nop
    rra
    jp z, Jump_000_2d03

    ld [bc], a
    ld bc, $0000
    ldh a, [$ff2e]
    inc bc
    add b
    adc $03
    cp [hl]
    db $f4
    add d
    ld [bc], a
    rst $38
    cp h
    inc bc
    and d
    db $f4
    jr nz, @+$05

    ret nz

    db $f4
    jr nz, jr_015_7b08

    ldh [$ff9e], a
    inc b

jr_015_7b08:
    and b
    rlca
    ccf
    ccf
    dec l
    dec l
    rst $38
    db $ed
    cp a
    sbc a
    ld [hl+], a
    rst $38
    nop
    ldh a, [c]
    add e
    dec b
    ld b, $8f

jr_015_7b1a:
    nop
    ldh [rTIMA], a
    rst $38
    rst $38
    cp a
    sbc a
    rst $38
    push af
    add e
    dec b
    jr nz, jr_015_7b29

    db $ed
    rst $38

jr_015_7b29:
    ccf
    ret z

    dec b
    ld [bc], a
    ld b, c
    ld [bc], a
    nop
    inc b
    inc b
    nop
    jr jr_015_7b35

jr_015_7b35:
    ldh [$ff86], a
    inc bc
    ld h, b
    add e
    dec b
    jr c, jr_015_7ac0

    inc bc
    inc bc
    ld [bc], a
    jr nz, jr_015_7b42

jr_015_7b42:
    jr nz, jr_015_7b86

    nop
    ld b, b
    adc b
    inc bc
    sub a
    ld [bc], a
    ldh a, [rP1]
    ld c, $87
    inc bc
    and e
    db $d3
    dec b
    ld b, e
    ld b, $00
    add b
    ld a, a
    ld [hl], h
    add b
    nop
    rst $38
    ld b, c
    adc b
    ld b, b
    rrca
    nop
    rst $38
    ld [hl], h
    add b
    add b
    ld a, a
    nop
    ld [hl+], a
    nop
    ccf
    jr nc, jr_015_7bab

    nop
    ld a, a
    dec b
    ld a, [hl-]
    ld b, c
    ld [de], a
    jr z, jr_015_7b74

    rlca

jr_015_7b74:
    jr c, @+$49

    ld [de], a
    jr z, jr_015_7b7d

    ldh a, [c]
    ld [$003a], sp

jr_015_7b7d:
    rrca
    adc d
    ld bc, $42b5
    ld [de], a
    jr z, @+$04

    sub d

jr_015_7b86:
    jr z, jr_015_7b1a

    ld b, d
    jr z, jr_015_7bdd

    ld bc, $d228
    adc [hl]
    dec b
    and c
    ld [bc], a
    rst $38
    ccf
    ldh a, [$ff98]
    nop
    sub e
    inc bc
    ldh [$ff7f], a
    rst $38
    ccf
    and l
    dec b
    nop
    ld bc, $fdfb
    ld [hl+], a
    rst $38
    nop
    rrca
    add e
    ld b, $06
    xor a

jr_015_7bab:
    dec b
    jr nc, jr_015_7bb3

    rst $38
    rst $38
    ei
    db $fd
    rst $38

jr_015_7bb3:
    ld c, a
    add e
    ld b, $20
    and l
    dec b
    ld a, [hl+]
    adc [hl]
    nop
    ldh [$fff4], a
    jr nz, jr_015_7bc5

    ld e, a
    cp [hl]
    dec b
    ld b, b
    db $f4

jr_015_7bc5:
    ld a, d
    dec b
    ld a, a
    dec b
    ei
    rlca
    rlca
    cp $ff
    db $fc
    ldh a, [rNR41]
    nop
    ldh [$ff8e], a
    nop
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_015_7bdd:
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
    inc b
    nop
    nop
    nop
    ld b, b
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
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_015_7cb5

jr_015_7cb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
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
    add b
    nop
    ld b, b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $ff
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
    cp $ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_015_7de3

jr_015_7de3:
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_7e05:
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
    db $fd
    rst $38
    rst $30
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
    rst $38
    rst $38
    nop
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [de], a
    nop
    nop
    nop
    ld bc, $0080
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    add b
    nop
    nop
    ld [bc], a
    add b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_015_7ee7

jr_015_7ee7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fd
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
    add b
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    jr nz, jr_015_7fa5

jr_015_7fa5:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_7fb0

jr_015_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
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
    ld [$0000], sp
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
