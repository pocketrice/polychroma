; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    ld bc, $0101
    ld bc, $0101
    add a
    ld a, b
    rla
    and a
    ld a, a
    ld [de], a
    jp $084b


    nop
    nop
    ld b, b
    cpl
    inc bc
    inc h
    db $18, $ca
    nop
    dec d
    ld [$1a18], sp
    inc [hl]
    jr jr_013_4039

    inc [hl]
    jr jr_013_403c

    inc [hl]
    add a
    nop
    ld a, [de]
    rlca
    ld hl, $1835
    ld hl, $1835
    ld hl, $8735
    nop
    ld a, [de]
    rlca
    dec de
    dec de
    dec e
    dec de
    dec de
    dec e

jr_013_4039:
    ld a, d
    dec de
    adc c

jr_013_403c:
    nop
    ld a, [hl-]
    inc hl
    dec de
    ld bc, $1b76
    sub $00
    ld hl, $1804
    dec e
    dec e
    jr jr_013_4069

    rlc b
    ld [hl], l
    inc bc
    dec de
    dec de
    jr @+$1d

    jp $8500


    ret nc

    nop
    ld de, $4100
    db $e4
    ld h, e
    inc bc
    rst $38
    ld d, $2f
    ld bc, $03ff
    inc b
    inc b
    dec b
    dec b

jr_013_4069:
    inc bc
    rst $38
    ld c, b
    ld l, b
    ret z

    jr z, jr_013_40c8

    cp b
    ld hl, sp+$78
    cp b
    jr c, jr_013_407e

    ld l, b
    jr @-$16

    add sp, -$18
    jr c, @-$26

    ret c

jr_013_407e:
    sbc b
    ld a, b
    ret z

    jr c, @-$56

    ret z

    ret z

    jr jr_013_40df

    jr nc, jr_013_40f1

    jr z, jr_013_40ab

    ld c, b
    ld l, b
    ld c, b
    ld e, b
    jr z, jr_013_40a9

    ld a, b
    ld c, b
    ld h, b
    sbc b
    ld e, b
    jr z, jr_013_40c8

    ld c, b
    ld c, b
    ld l, b
    ld c, a
    adc b
    dec b

jr_013_409e:
    ld b, $a4
    dec b
    and h
    dec b
    ld [$0608], sp
    ld [$05a4], sp

jr_013_40a9:
    dec b
    dec b

jr_013_40ab:
    and h
    ld [$0605], sp
    and h
    ld [$88a4], sp
    ld b, $01
    ld bc, $5501
    rlca
    jp Jump_000_1561


    ld h, b
    ld b, b
    inc de
    jp z, $084b

    nop
    nop
    ld d, [hl]
    ld a, $74
    nop

jr_013_40c8:
    halt
    push bc
    nop
    jr nz, jr_013_40cf

    halt
    ld [hl], h

jr_013_40cf:
    ld [hl], h
    push bc
    nop
    jr z, jr_013_40d7

    ld a, b
    ld a, b
    ld [hl], h

jr_013_40d7:
    ld [hl], h
    ld h, d
    jr c, jr_013_409e

    nop
    jr nc, jr_013_40de

jr_013_40de:
    ld a, b

jr_013_40df:
    add a
    nop
    inc l
    add h
    nop
    jr c, jr_013_40e7

    ld c, c

jr_013_40e7:
    ld c, e
    add e
    nop
    inc sp
    add e
    nop
    inc sp
    add h
    nop
    inc l

jr_013_40f1:
    ld [bc], a
    db $10
    dec b
    ld b, $84
    nop
    ld hl, $4a01
    ld c, e
    ld h, d
    ld c, c
    rlca
    ld c, c
    ld c, e
    db $10
    dec c
    dec c
    ld c, $78
    ld [hl], h
    ld h, d
    jr jr_013_412f

    dec b
    nop
    dec c
    add e

Call_013_410d:
    nop
    ld l, b
    inc bc
    halt
    halt
    dec de
    halt
    add hl, hl
    dec c
    nop
    ld c, $22
    ld [hl], h
    ld bc, $741c
    jr z, jr_013_412c

    inc b
    ld l, a
    inc de
    halt
    dec sp
    inc a
    add h
    nop
    adc [hl]
    nop
    ld l, a
    inc h
    dec d

jr_013_412c:
    ld [bc], a
    inc de
    halt

jr_013_412f:
    ld e, $85
    nop
    adc h
    ld bc, $136f
    ld h, $74
    add hl, bc
    rra
    ld [hl], h
    ld [hl], h
    dec de
    jr jr_013_414c

    dec c
    ld c, $39
    ld a, [hl-]
    add l
    nop
    jr nz, jr_013_414a

    ld hl, $7474

jr_013_414a:
    inc e
    add e

jr_013_414c:
    nop
    ld a, a
    nop
    ld de, $7822
    ld h, d
    jr c, jr_013_41b7

    jr @-$7b

    nop
    adc l
    rst $00
    nop
    ld a, c
    ld [bc], a
    ld de, $1b76
    adc h
    nop
    ld a, h
    nop
    ld c, $84
    nop
    ld [$00da], a
    jr nz, @+$65

    ld b, b
    ld [bc], a
    ld [hl], h
    ld [hl], h
    halt
    add e
    nop
    ld c, e
    adc c
    nop
    ld h, $01
    halt
    ld a, b
    adc b
    ld bc, $c617
    nop
    ld b, b
    ld bc, $3c3b
    adc l
    nop
    inc de
    adc e
    nop
    ld [hl+], a
    ld h, d
    ld b, b
    ld bc, $7476
    rst $00
    nop
    ccf
    add h
    ld bc, $0141
    ld a, b
    ld a, b
    inc h
    halt
    ld h, d
    jr jr_013_419c

jr_013_419c:
    halt
    add h
    ld bc, $8470
    nop
    ld l, e
    ld [bc], a
    ld [hl], h
    dec sp
    inc a
    add [hl]
    nop
    cp $01
    jr jr_013_41c6

    add [hl]
    nop
    db $fc
    nop
    inc e
    add h
    ld bc, $0380
    ld [hl], h

jr_013_41b7:
    halt
    dec de
    ld a, b
    call nz, $af00
    ld bc, $1c74
    jp Jump_000_0001


    ld b, $3b
    inc a

jr_013_41c6:
    ld [hl], h
    inc e
    add hl, de
    ld a, [de]
    inc e
    add e
    nop
    cp c
    ld bc, $741c
    call nz, $8f00
    ld [bc], a
    ld [hl], h
    inc e
    dec de
    push bc
    nop
    rst $08
    ld bc, $741b
    add $01
    xor b
    ld b, c
    dec de
    ld [hl], h
    ld bc, $2174
    ret z

    ld bc, $00bb
    dec de
    ld b, c
    inc e
    ld [hl], h
    ld bc, $2176
    add $01
    rlc b
    halt
    adc a
    ld bc, $01de
    ld [hl], h
    dec de
    db $e4
    inc h
    ld [hl], h
    add h
    nop
    daa
    add h
    ld bc, $0019
    ld [hl], h
    adc a
    ld bc, $2a31
    ld [hl], h
    nop
    ld c, c
    call nz, Call_000_3202
    add h
    nop
    inc e
    add e
    ld bc, $0376
    ld [hl], h
    inc b
    dec b
    ld de, $0086
    rst $38
    ld a, [bc]
    ld a, b
    halt
    dec de
    halt
    ld a, b
    ld [hl], h
    inc c
    dec c
    dec c
    ld de, $8474
    ld bc, $8374
    ld bc, $02a0
    ld a, b
    dec sp
    inc c
    add e
    nop
    pop hl
    nop
    ld a, [de]
    add l
    ld bc, $83a8
    ld bc, $00ba
    inc c
    call nz, $8300
    add e
    nop
    adc h
    jp $a901


    nop
    halt
    add l
    ld [bc], a
    adc d
    add h
    nop

jr_013_4253:
    adc e
    inc b
    ld a, b
    ld [hl], h
    dec de
    ld [hl], h
    ld e, $8a
    ld [bc], a
    sbc d
    add e
    ld bc, $00e8
    rra
    add l
    ld [bc], a
    adc d
    ld bc, $3c3b
    add h
    ld [bc], a
    and [hl]
    ld [bc], a
    dec de
    ld [hl], h
    ld hl, $0288
    sbc d
    ld [bc], a
    dec de
    ld [hl], h
    rra
    adc c
    ld [bc], a
    or [hl]
    ld bc, $7674
    add h
    ld [bc], a
    add $83
    ld bc, $8fea
    ld [bc], a
    db $db
    add h
    ld [bc], a
    sbc e
    ldh a, [rNR52]
    ld [bc], a
    ld bc, $0183
    ld a, [de]
    ld [bc], a
    ld [hl], h
    ld [hl], h
    halt
    ret


    ld [bc], a
    ld b, h
    add a
    ld bc, $8330
    ld [bc], a
    dec hl
    adc [hl]
    ld bc, HeaderCartridgeType
    ld [hl], h
    ld [hl], h
    add a
    nop
    ld c, a
    nop
    halt
    add [hl]
    ld [bc], a
    ld c, c
    ld [bc], a
    jr @+$1b

    ld a, [de]
    add a
    inc bc
    ld d, e
    add e
    nop
    rst $20
    ld [bc], a
    ld a, b
    ld a, b
    dec de
    dec h
    halt
    nop
    ld a, b
    call nz, $e102
    inc b
    ld de, $4a49
    dec e
    ld c, e
    add $02
    ld c, h
    nop
    jr jr_013_4253

    nop
    ldh [rSB], a
    dec b
    ld de, $0283
    ld c, d
    nop
    ld a, b
    ld a, [hl+]
    dec c
    inc b
    dec b
    dec b
    ld b, $74
    ld [hl], h
    inc l
    dec c
    nop
    ld c, $8f
    inc bc
    xor [hl]
    ld bc, $3a39
    sbc l
    inc bc
    or b
    nop
    halt
    adc [hl]
    inc bc
    rst $18
    nop
    halt
    sbc c
    ld bc, $8f06
    ld [bc], a
    dec de
    nop
    ld [hl], h
    sub b
    inc bc
    dec hl
    inc b
    ld [hl], h
    ld a, b
    ld [hl], h
    ld b, b
    ld b, c
    add h
    inc bc
    ld d, h
    sub d
    ld [bc], a
    rla
    ld h, e
    ld b, b
    adc b
    inc bc
    dec l
    ld [bc], a
    jr c, jr_013_4349

    ld a, [hl-]
    adc c
    ld [bc], a
    ld a, [hl-]
    add h
    ld bc, $0179
    ld a, b
    ld c, c
    add h
    inc bc
    ld a, d
    ld bc, $7676
    add h
    inc bc
    ld h, [hl]
    inc b
    ld [hl], h
    ld [hl], h
    db $10
    dec b
    ld b, $85
    nop
    ld c, a
    ld bc, $761b
    ld b, c
    ld [hl], h
    ld c, c
    inc bc
    db $10
    dec c
    dec c
    ld c, $85
    nop
    dec h
    inc bc
    inc e

Call_013_433c:
    ld [hl], h
    ld [hl], h
    inc b
    add l
    nop
    ld [hl], l
    add l
    inc bc
    ld h, e
    inc bc
    dec de
    ld [hl], h
    ld [hl], h

jr_013_4349:
    inc c
    add a
    nop
    add l
    nop
    ld a, b
    jp $aa01


    adc d
    inc b
    or c
    inc bc
    ld [hl], h
    inc e
    ld [hl], h
    jr c, @-$74

    inc b
    or b
    nop
    ld a, b
    add l
    inc b
    cp h
    ld bc, $0c76
    adc b
    inc bc
    ld hl, sp+$02
    inc e
    ld [hl], h
    halt
    adc l
    inc b
    ldh [rSB], a
    ld [hl], h
    halt
    ldh a, [rNR50]
    ld [bc], a
    inc b
    add l
    ld bc, $8419
    nop
    ld hl, $4201
    ld b, e
    adc c
    inc bc
    cpl
    ld [bc], a
    ld d, c
    ld b, b
    ld b, c
    adc e
    inc b
    ld d, $01
    ld a, b
    ld d, b
    add h
    nop
    inc hl
    adc b
    inc bc
    ld d, e
    ld [bc], a
    jr jr_013_43ae

    ld a, [de]
    add e
    ld [bc], a
    dec sp
    adc c
    inc bc
    cpl
    add e
    nop
    cp $02
    halt
    ld c, c
    halt
    ld h, d
    jr c, @-$7b

    ld bc, $8579
    ld [bc], a
    sub l
    add e
    ld [bc], a
    ld e, d

jr_013_43ae:
    add [hl]
    ld bc, $0389
    ld a, [de]
    dec de
    dec sp
    inc a
    add h
    ld [bc], a
    adc c
    dec b
    ld de, $7449
    halt
    ld [hl], h
    ld a, b
    add e
    ld bc, $86c0
    ld [bc], a
    adc b
    rlca
    dec b
    ld b, $78
    ld [hl], h
    ld [hl], h
    inc e
    ld [hl], h
    dec de
    add a
    dec b
    sbc l
    add e
    nop
    pop bc
    add [hl]
    dec b
    sbc c
    ld bc, $0c39
    add l
    inc b
    push hl
    adc [hl]
    dec b
    xor b
    nop
    ld a, b
    add a
    dec b
    sbc b
    nop
    halt

jr_013_43e8:
    add [hl]
    dec b
    pop de
    add e
    ld [bc], a
    sub l
    ld [bc], a
    dec de
    halt
    halt
    adc a
    dec b
    rst $18
    nop
    ld e, e
    rst $38
    ld hl, $113e
    rst $38
    inc bc
    rst $38
    add b
    jr jr_013_4461

    ld [hl], b
    jr jr_013_443c

    ld h, [hl]
    add $82
    ld bc, $0101
    ld bc, $0101
    add a
    ld a, b
    rla
    ld hl, sp+$43
    inc de
    pop de
    ld c, e
    ld [$0000], sp
    ld b, b
    cpl
    inc bc
    inc h
    jr jr_013_43e8

    nop
    dec d
    nop
    inc hl
    ld [hl+], a
    dec e
    ld bc, $341a
    ld [hl+], a
    dec e
    nop
    ld [hl+], a
    dec h
    inc bc
    nop
    rlca
    ld [hl+], a
    dec de
    ld bc, $3521
    ld [hl+], a
    dec de
    nop
    ld b, $25
    inc bc
    nop
    dec b

jr_013_443c:
    daa
    dec de
    nop
    inc b
    adc c
    nop
    dec hl
    ld bc, $1b1b
    sub b
    nop
    scf
    nop
    ld a, d
    adc [hl]
    nop
    ld c, c
    ld [bc], a
    halt
    dec de
    ld b, $df
    nop
    jr nz, jr_013_4456

jr_013_4456:
    ld b, c
    db $e4
    ld h, e
    inc bc
    rst $38
    dec h
    add hl, sp
    inc hl
    ld [bc], a
    nop
    inc c

jr_013_4461:
    ld [hl+], a
    rst $38
    ld [bc], a
    inc b

jr_013_4465:
    ld [bc], a
    ld bc, $0005
    rst $38
    xor b
    jr z, jr_013_4465

    sbc b
    ld l, b
    jr c, jr_013_44c1

    ldh [$ffc8], a
    xor b
    nop
    ld [hl], b
    ld hl, sp+$38
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    jr c, jr_013_44e6

    ld c, b
    ld c, b
    ld h, b
    ld h, b
    ld e, b
    ld e, b
    jr z, jr_013_44e6

    ld a, e
    and d
    ld a, e
    ld l, [hl]
    ld a, [bc]
    and d
    ld bc, $2001
    jr nz, jr_013_44fd

    ld l, h
    ld a, [bc]
    jr nz, @+$08

    ld bc, $0101
    ld d, l
    ld bc, $5ac6
    dec d
    ld e, e
    ld b, h
    inc de
    ret c

    ld c, e
    ld [$0000], sp
    ld a, [hl]
    dec sp
    ld h, [hl]
    ld bc, $7170
    add h
    nop
    ld a, [de]
    jr nc, jr_013_4516

    ld bc, $8d8c
    adc d
    nop
    ld hl, $8c06
    adc l
    adc h
    sub b
    adc a
    ld h, [hl]
    adc b
    dec h
    ld h, [hl]
    ld [bc], a

jr_013_44c1:
    ld [hl], d
    ld h, [hl]
    adc h
    ld [hl+], a
    sub b
    inc b
    adc a
    ld h, [hl]
    adc h
    sub b
    adc l
    add [hl]
    nop
    cpl
    inc hl
    sub b
    rlca
    adc l
    adc h
    sub b
    sub b
    sub a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_013_44fd

    nop
    inc c
    sub b
    sub b
    adc a
    adc [hl]
    sub b
    sub b
    sub a
    sub [hl]
    sub b

jr_013_44e6:
    sub b
    adc l
    ld h, [hl]
    ld hl, $6822
    ld a, [hl+]
    add hl, bc
    ld bc, $210a
    ld [hl+], a
    nop
    ld a, [hl+]
    ld de, $1200
    add e
    nop
    adc h
    db $e4
    ld e, a
    inc bc

jr_013_44fd:
    db $e4
    daa
    ld h, [hl]
    ld bc, $7170
    add e
    nop
    ld d, $84
    nop
    rra
    sub d
    ld bc, $001e
    ld l, l
    adc [hl]
    nop
    add hl, hl
    inc bc
    adc h
    adc l
    ld h, [hl]
    ld h, [hl]

jr_013_4516:
    push bc
    nop
    ld d, b
    rlca
    nop
    jr nz, jr_013_455f

    ld d, h
    ld d, a
    ld b, d
    scf
    ld b, l
    ld [hl+], a
    nop
    rla
    ld c, $09
    add hl, bc
    ld a, [bc]
    ld [hl], e
    ld l, b
    ld hl, $9c57
    ld d, [hl]
    scf
    scf
    ld b, e
    ld b, d
    ld b, e
    ld c, $16
    ld de, $1211
    ld bc, $2100
    inc b
    ld h, $09
    nop
    ld d, $83
    nop
    sbc b
    ld [bc], a
    inc b
    nop
    ld hl, $112b
    ld bc, $1012
    db $e4
    ld e, a
    inc bc
    sub e
    ld bc, $f016
    dec l
    ld bc, $000e
    ld [hl], d
    add e
    ld [bc], a
    dec sp
    ret z

    ld [bc], a
    ld b, l

jr_013_455f:
    add e
    ld bc, $005b
    ld l, l
    add a
    ld bc, $0346
    ld l, l
    ld l, l
    ld h, [hl]
    ld [hl], h
    add h
    ld bc, $0269
    rrca
    nop
    nop
    add l
    ld bc, $0268
    rrca
    ld bc, $8374
    ld bc, $047a
    rla
    rrca
    nop
    ld d, b
    nop
    add h
    ld [bc], a
    ld [hl], d
    ld [bc], a
    add hl, bc
    dec b
    dec e
    inc hl
    ld de, $1e00
    ld h, d
    ld [$1d00], sp
    add [hl]
    ld bc, $8599
    ld bc, $869a
    ld [bc], a
    sub b
    db $e4
    ld e, a
    inc bc
    ldh a, [$ff30]
    ld bc, $8800
    ld [bc], a
    ld b, b
    ld bc, $8d8c
    add a
    ld [bc], a
    ld a, $01
    ld [hl], b
    ld [hl], c
    add l
    nop
    ld b, c
    adc b
    ld [bc], a
    ccf
    ld [bc], a
    adc h
    sub h
    sub b
    add h
    nop
    ld h, a
    ld [bc], a
    ld h, [hl]
    adc b
    adc h
    inc hl
    nop
    nop
    ld [$0925], sp
    nop
    rrca
    add l
    ld [bc], a
    ld h, d
    ld [bc], a
    ld b, d
    ld c, l
    db $10
    dec h
    ld de, $1e02
    jr nz, jr_013_45f1

    add l
    ld [bc], a
    add l
    nop
    db $10
    add a
    nop
    sub l
    nop
    db $10
    add l
    ld [bc], a
    sub l
    adc c
    inc bc
    add h
    ldh a, [$ff82]
    ld [bc], a
    sbc [hl]
    ld bc, $7170
    sub c
    nop
    ld h, $85
    nop
    ld c, e

jr_013_45f1:
    add e
    nop
    dec e
    inc b
    ld l, l
    adc h
    sub h
    sub b
    adc a
    adc c
    inc b
    jr nc, jr_013_4601

    ld a, [hl-]
    dec sp
    sub b

jr_013_4601:
    sub l
    add e
    inc b
    ld b, e
    ld bc, $9790
    add h
    nop
    ld c, b
    ld [bc], a
    ld a, [hl-]
    ld l, a
    ld l, a
    add h
    inc bc
    ld l, c
    adc b
    inc bc
    ld h, a
    ld bc, $0509
    add h
    inc bc
    ld a, c
    adc b
    inc bc
    ld [hl], a
    ld bc, $1211
    add h
    inc bc
    adc c
    add [hl]
    inc bc
    add a
    adc a
    inc b
    ld a, h
    add e
    nop
    sbc b
    db $e4
    ld e, a
    inc bc
    dec l
    ld h, [hl]
    inc bc
    db $10
    ld de, $6666
    adc e
    ld [bc], a
    add hl, sp
    ld bc, $1110
    add l
    nop
    ld a, [de]
    add hl, bc
    ld a, [hl-]
    dec sp
    ld h, [hl]
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ld [hl], b
    db $10
    ld de, $0584

jr_013_464d:
    dec h
    ld b, $3a
    ld l, a
    ld l, a
    dec sp
    ld a, [hl-]
    ld h, b
    dec sp
    add e
    dec b
    inc c
    add h
    dec b
    dec [hl]
    inc bc
    ld l, a
    ld l, a
    ld [hl-], a
    inc sp
    ld [hl+], a
    ld a, [hl+]
    inc bc
    dec sp
    ld a, [hl-]
    db $10
    ld de, $6f22
    ld [hl+], a
    ld a, [hl+]
    rrca
    ld [hl], l
    ld [bc], a
    ld [bc], a
    halt
    ld [hl], l
    halt

jr_013_4673:
    ld bc, $1001
    ld de, $7675
    ld [hl], l
    ld [bc], a
    halt
    ld [hl], l
    dec h
    ld [bc], a
    inc bc
    halt
    ld [hl], l
    db $10
    ld de, $022d
    ld [bc], a
    db $10
    ld de, $2b04
    add hl, bc
    inc bc
    dec b
    db $10
    ld de, $8d10
    ld bc, $0092
    ld a, a
    db $e4
    ld e, a
    inc bc
    rst $38
    ld a, [hl-]
    ld a, [hl+]
    dec l
    inc e
    inc c
    rra
    ld c, $34
    rst $38
    inc bc
    inc bc
    inc b
    nop
    dec bc
    rrca
    add hl, bc
    nop
    rst $38
    ld c, b
    ld c, b
    ld hl, sp-$48
    ld l, b
    sub b
    ret z

    jr z, jr_013_464d

    xor b
    jr c, jr_013_46f0

    xor b
    jr c, jr_013_4673

    cp b
    cp b
    ret z

    ret z

    adc b
    ld c, b
    cp b
    add sp, $28
    cp b
    cp b
    ret z

    adc b
    adc b
    ld c, b
    ld [$3888], sp
    ld c, b
    jr c, jr_013_4708

    ld l, b
    adc b
    ld c, b
    ld [$4838], sp
    ret z

    jr c, jr_013_4711

    ret z

    adc b
    ld l, b
    ld [hl], b
    ld [hl], b
    ld c, b
    ld c, b
    ld l, b
    ld c, b
    ld c, b
    xor b
    cp b
    jr @-$36

    ld e, b
    ld l, b
    ld a, b
    ld [$08b8], sp
    ld [$1858], sp

jr_013_46f0:
    jr jr_013_475a

    ld a, b
    ld [$a8c8], sp
    ld [$2008], sp
    cp b
    ld l, b
    ret z

    xor b
    jr jr_013_4707

    ld [$c808], sp
    ld l, b
    cp b
    cp b
    xor b
    or a

jr_013_4707:
    or a

jr_013_4708:
    ld a, l
    add l
    add h
    ld a, l
    ld e, c
    ld a, l
    jr nz, jr_013_4731

    and b

jr_013_4711:
    and b
    ld b, e
    and b
    and b
    and b
    and b
    or a
    ld b, e
    or a
    or a
    and b
    ld b, e
    ld b, e
    and b
    and b
    or a
    sub [hl]
    sbc b
    or a
    or a
    add h
    and b
    ld b, e
    and b
    and b
    ld b, e
    or a
    or a
    or a
    and b
    ld b, e
    ld b, e

jr_013_4731:
    and b
    and b
    inc b
    ld [bc], a
    ld bc, $2601
    rla
    inc de
    ld d, b
    rla
    sbc d
    ld b, [hl]
    inc de
    push hl
    ld c, e
    ld [$0001], sp
    sub d
    db $e4
    ld hl, $2410
    inc de
    ret


    nop
    ld h, $00
    ld de, $0022
    ld b, $74
    ld [hl], c
    nop
    ld [hl], h
    ld [hl], e
    nop
    inc h
    add l

jr_013_475a:
    nop
    dec l
    ld [bc], a
    ld [hl], h
    ld [hl], e
    ld [hl], h
    jp Jump_000_3b00


    inc bc
    nop
    ld [hl], e
    ld [hl], h
    inc h
    add e
    nop
    ld a, [hl+]
    ld [bc], a
    ld de, $7700
    inc hl
    nop
    ld bc, $7271
    ld [hl+], a
    nop
    ld bc, $0080
    add l
    nop
    ld d, b
    nop
    inc c
    ld [hl+], a
    dec c
    nop
    inc hl
    add e
    nop
    ld e, d
    add e
    nop
    ld e, a
    inc bc
    ld [hl], c
    ld c, l
    nop
    rrca
    inc hl
    db $10
    inc b
    inc hl
    ld [hl], d
    nop
    add b
    ld [hl], c
    add e
    nop
    jr nc, jr_013_4799

jr_013_4799:
    ld c, a
    add l
    nop
    ld [hl], l
    nop
    db $10
    inc hl
    dec c
    add e
    nop
    ld b, b
    ld [bc], a
    ld [hl], a
    nop
    rrca
    ld a, [hl+]
    db $10
    ld bc, $0011
    adc a
    nop
    sub h
    ld [bc], a
    ld [hl], a
    ld [hl], c
    ld [de], a
    adc d
    nop
    inc hl
    ld [bc], a
    ld de, $7700
    jp $3a00


    dec b
    ld [hl], d
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    add [hl]
    nop
    ld e, a
    ld b, $00
    ld [hl], c
    ld [hl], a
    ld [hl], h
    nop
    ld [hl], e
    ld c, a
    adc b
    nop
    ld l, l
    add l
    nop
    jp c, Jump_013_7702

    ld [hl], c
    ld [hl], d
    add l
    nop
    ld e, a
    dec bc
    ld [hl], d
    ld [hl], c
    ld [hl], d
    ld [hl], a
    nop
    ld [hl], c
    ld [hl], d
    ld c, h
    nop
    nop
    ld [hl], d
    db $10
    ldh a, [$ff2a]
    nop
    ld bc, $0085
    add hl, hl
    nop
    dec h
    add e
    nop
    rlc e
    add b
    nop
    nop
    add b
    add e
    nop
    ld b, a
    dec b
    inc h
    inc de
    dec h
    nop
    ld [hl], e
    ld [hl], h
    add hl, hl
    nop
    ld bc, $8071
    dec h
    nop
    call nz, Call_000_3a01
    ld [bc], a
    ld [hl], c
    ld [hl], d
    ld [hl], c
    add e
    ld bc, $035b
    ld [hl], d
    ld [hl+], a
    dec c
    ccf
    inc hl
    dec c
    ld [bc], a
    ccf
    dec c
    inc hl
    add h
    ld bc, $0555
    ld [hl+], a
    db $10
    db $10
    ld b, b
    db $10
    db $10
    add h
    ld bc, $0474
    inc hl
    nop
    dec c
    dec c
    dec c
    dec hl
    stop
    dec c
    ldh a, [$ff2b]
    ld bc, $2303
    inc de
    add e
    nop
    ld b, [hl]
    ld [bc], a
    ld [hl], e
    nop
    ld [hl], d
    jr z, jr_013_4847

jr_013_4847:
    inc b
    ld [hl], a
    nop
    nop
    nop
    ld [hl], a
    add [hl]
    ld bc, $8343
    nop
    ld hl, sp-$35
    ld bc, $05d4
    ld [hl], a
    nop
    ld [hl], e
    nop
    ld c, h
    ld [hl], d
    adc e
    ld bc, $01e2
    ld [hl], c
    nop
    ld [hl+], a
    db $10
    ldh a, [$ff2a]
    ld bc, $2600
    db $10
    dec bc
    dec h
    ld [hl], e
    nop
    nop
    add b
    add b
    ld [hl], h
    nop
    nop
    rrca
    db $10
    inc h
    ld [hl+], a
    inc de
    nop
    dec h
    add e
    nop
    ld c, c
    add hl, bc
    ld [hl], e
    ld [hl], h
    nop
    ld a, e
    ld [hl], c
    rrca
    stop
    add b
    ld [hl], h
    add l
    ld bc, $0850
    add b
    add b
    ld [hl], c
    ld a, c
    nop
    rrca
    stop
    ld [hl], h
    add [hl]
    ld bc, $005f
    dec c
    add l
    nop
    adc h
    ld [bc], a
    ld [hl], h
    add b
    ld [hl], c
    add e
    ld bc, $cb70
    ld bc, $028b
    dec c
    dec c
    dec c
    inc hl
    db $10
    ld [bc], a
    db $10
    db $10
    db $10
    ldh a, [$ff2e]
    ld bc, $0100
    inc de
    inc de
    jp Jump_013_7100


    add h
    ld bc, $26c0
    nop
    ld bc, $100f
    add [hl]
    ld bc, $01e0
    ld [hl], e
    ld c, a
    call nz, Call_013_4902
    dec b
    rrca
    db $10
    ld c, l
    ld [hl], c
    ld [hl], d
    nop
    add a
    ld bc, $01e0
    ld [hl], e
    ld [hl], h
    add h
    ld [bc], a
    adc $00
    ld [hl], d
    adc c
    ld bc, $02f0
    rrca
    db $10
    db $10
    ld l, $03
    nop
    db $10
    dec l
    nop
    adc a
    inc bc
    rrca
    adc a
    inc bc
    rrca
    adc a
    inc bc
    rrca
    adc a
    inc bc
    rrca
    adc a
    inc bc
    rrca
    adc a
    inc bc
    rrca
    adc a
    inc bc
    rrca

Call_013_4902:
    ldh a, [$ff71]
    inc bc
    rrca
    add [hl]
    nop
    ld d, c
    nop
    ld c, l
    add $01
    rst $28
    add e
    nop
    adc c
    add hl, bc
    ccf
    inc hl
    nop
    ld [hl+], a
    ccf
    inc hl
    ld [hl], c
    ld [hl+], a
    ccf
    inc hl
    add l
    ld [bc], a
    ld [hl], l
    inc b
    ld b, b
    db $10
    dec c
    db $10
    ld b, b
    jp Jump_000_2704


    ld bc, $0d10
    sub [hl]
    nop
    rrca
    adc c
    nop
    rra
    ld [bc], a
    db $10
    db $10
    ld de, $7822
    inc b
    rrca
    db $10
    db $10
    ld de, $248e
    adc d
    adc a
    inc b
    ld d, b
    sbc b
    inc b
    ld d, b
    ld bc, $1f10
    ld [hl+], a
    ld a, b
    inc b
    ld e, $0d
    db $10
    db $10
    ld hl, $7822
    nop
    jr nz, jr_013_4977

    inc de
    nop
    ld hl, $048c
    ld d, e
    dec h
    adc d
    adc a
    inc b
    sbc [hl]
    sub d
    inc b
    sbc [hl]
    nop
    db $10
    dec h
    dec c
    ldh a, [$ff27]
    ld [bc], a
    add b
    call nz, $e402
    add [hl]
    ld bc, $0349
    ld c, l
    ld [hl], c
    nop
    nop
    add e

jr_013_4977:
    inc b
    inc d
    adc e
    inc b
    inc d
    ld [bc], a
    ld b, b
    db $10
    dec c
    sbc h
    inc b
    inc hl
    call z, Call_013_4f04
    ld [hl+], a
    inc de
    add l
    inc b
    xor b
    ldh a, [$ff29]
    inc b
    sbc [hl]
    ld [bc], a
    dec c
    dec c
    rra
    ldh a, [$ff7e]
    inc b
    add e
    ld bc, $0000
    adc c
    dec b
    nop
    ld bc, $100f
    adc c
    dec b
    db $10
    add h
    ld [bc], a
    jp z, $048a

    inc hl
    inc bc
    ld c, $00
    ld [hl], c
    ld [hl], d
    adc h
    nop
    sub [hl]
    inc bc
    ld [hl], c
    scf
    nop
    rrca
    adc d
    dec b
    ccf
    nop
    ld de, $0283
    rlc b
    db $10
    adc c
    inc b
    ret z

    nop
    ld de, $0422
    adc h
    ld b, $4e
    ld [bc], a
    ld a, b
    ld a, b
    ld a, b
    adc a
    ld b, $5e
    ld bc, $100f
    adc c
    dec b
    add b
    add l
    inc b
    add d
    ldh a, [$ff6f]
    inc b
    sub b
    ldh a, [$ffef]
    inc bc
    stop
    sub b
    ld l, $03
    rst $38
    ld d, $3e
    rst $38
    inc bc
    rst $38
    ld c, b
    xor b
    ld a, b
    ld e, b
    ld e, b
    jr z, jr_013_4a42

    ld c, a
    jp $0101


    ld bc, $0401
    ld bc, $5ac6
    dec d
    rst $20
    ld c, c
    inc de
    jp hl


    ld c, e
    ld [$0100], sp
    ld a, l
    ld de, $1241
    db $10
    ld bc, $2312
    ld b, c
    db $10
    ld [de], a
    dec b
    db $10
    ld de, $0311
    add hl, de
    add hl, de

jr_013_4a18:
    ld b, c
    rlca
    ld b, $01
    rlca
    inc h
    ld b, c
    ld b, $07
    ld b, $06
    add hl, de
    add hl, de
    inc bc
    add hl, bc
    add hl, bc
    dec b
    inc hl
    ld [hl], a
    nop
    ld d, l
    inc hl
    ld [hl], a
    nop
    inc b
    call nz, $2100
    nop
    rlca
    ld [hl+], a
    ld [hl], a
    ld [bc], a
    ld d, a
    sbc l
    ld d, [hl]
    ld [hl+], a
    ld [hl], a
    adc d
    nop
    inc e
    nop

jr_013_4a42:
    ld c, h
    adc d
    nop
    jr z, jr_013_4a6f

    ld d, l
    add [hl]
    nop

jr_013_4a4a:
    inc e
    inc b
    nop

jr_013_4a4d:
    ld l, b
    nop
    nop
    ld l, b
    jp Jump_013_6600


    add [hl]
    nop
    inc l
    jr z, jr_013_4aa9

    add e
    nop
    inc e
    ld l, $09
    nop
    inc bc
    dec l
    ld de, $7f00
    db $e4
    ld h, b
    inc bc
    rst $38
    ld b, $22

jr_013_4a6a:
    ld c, $34
    inc c
    inc hl
    rst $38

jr_013_4a6f:
    inc b
    rlca
    inc bc
    ld [bc], a
    dec b
    nop
    rst $38
    jr c, jr_013_4ae0

jr_013_4a78:
    jr c, jr_013_4a6a

    ld b, b
    sub b
    ld b, b
    ld h, b
    jr nz, jr_013_4a78

    ld b, b
    jr jr_013_4aab

    jr z, jr_013_4a4d

    ld l, b
    ret z

    nop
    add b
    jr z, jr_013_4ae3

    ld hl, sp-$38
    sbc b
    jr c, jr_013_4a18

    jr c, jr_013_4a4a

    add sp, -$18
    ld a, b
    ld c, b
    ret c

    ld e, b
    sbc b
    jr c, jr_013_4ac3

    jr z, jr_013_4af5

    ld e, b
    ld c, b
    ld c, b
    rrca
    rrca
    rrca
    ld l, h
    ld b, e
    ld l, h
    sbc b
    sub [hl]
    sub [hl]

jr_013_4aa9:
    rrca
    ld l, h

jr_013_4aab:
    ld b, h
    rrca
    rrca
    dec [hl]
    rrca
    dec [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    inc bc
    ld [bc], a
    ld bc, $1b01
    rrca
    add a
    ld a, b
    rla
    ld l, b
    ld c, d
    inc de

jr_013_4ac1:
    ldh a, [rWX]

jr_013_4ac3:
    ld [$0301], sp
    ld a, [hl]
    inc h
    dec h
    ld sp, $2242
    inc hl
    add l
    nop
    inc bc
    ld b, c
    ld [hl+], a
    inc hl
    ld b, d
    inc h
    dec h
    ld bc, $0922
    ld b, c
    dec h
    inc h
    inc bc
    inc h
    dec h
    inc h

jr_013_4ae0:
    ld [$2342], sp

jr_013_4ae3:
    ld [hl+], a
    ld bc, $0c09
    inc hl
    dec e
    ld bc, $2322
    add l
    nop
    ld a, [de]
    inc bc
    dec h
    inc h
    inc c
    ld b, l
    inc hl

jr_013_4af5:
    dec de
    ld bc, $0824
    add l
    nop
    ld a, [hl+]
    ld bc, $1d1d
    add e

Call_013_4b00:
    nop

Call_013_4b01:
    dec sp
    dec b
    jr c, jr_013_4b3d

    ld [hl+], a
    add hl, bc
    inc c
    ld b, l
    dec hl
    dec de
    ld bc, $0724
    adc h
    nop
    ld d, e
    ld [bc], a
    dec de
    ld [hl+], a
    dec b
    add hl, hl
    dec de
    dec b
    dec bc
    dec b
    inc b
    dec b
    inc h
    rlca
    adc c
    nop
    ld [hl], e
    add e
    nop
    dec de
    ld bc, $0504
    adc b
    nop
    halt
    add h
    nop
    ld a, [hl+]
    ld [bc], a
    inc h
    rlca
    dec de
    inc hl
    add hl, de
    ld bc, $061b
    add [hl]
    nop
    jr c, jr_013_4ac1

    nop
    sub b
    ld [bc], a

jr_013_4b3d:
    inc b
    inc hl
    dec e
    add h
    nop
    dec sp
    add a
    nop

jr_013_4b45:
    add b
    ld bc, $2506
    dec h
    ld e, $01
    inc b
    dec b
    add l
    nop
    and d
    ld bc, $2304
    inc hl
    inc e
    ld bc, $2322
    adc c
    nop
    ret nz

    inc hl
    inc e
    ld bc, $0824
    adc c
    nop
    or b
    inc h
    inc e
    nop
    inc h
    ld b, a
    inc hl
    ld [hl+], a
    inc b
    dec h
    inc h
    ld [$0809], sp
    add [hl]
    nop
    inc sp
    add e
    ld bc, $0214
    dec e
    dec e
    dec c
    adc b
    nop
    ld b, c
    rlca
    ld b, $08
    inc hl
    dec e
    dec de
    dec de
    ld b, h
    dec c
    add a
    nop
    ld d, d
    inc bc
    inc b
    add hl, bc
    inc c
    inc a
    ld [hl+], a
    dec de
    nop
    ld b, h
    add l
    nop
    ld c, d
    dec b
    dec de
    dec de
    ld b, $07
    ld b, l
    ld a, $86
    ld bc, $0145
    dec de
    dec de
    add h
    nop
    xor l
    dec l
    dec de
    dec b
    ld b, $08
    dec b
    add hl, de
    inc b
    ld a, [bc]
    add l
    nop
    ld a, b
    inc hl
    jr c, @+$08

    inc b
    add hl, bc
    rlca
    dec de
    inc h
    ld [$840a], sp
    nop
    adc c
    inc hl
    jr c, jr_013_4b45

    ld bc, $036c
    dec e
    dec c
    ld [$8305], sp
    nop
    add hl, hl
    add l
    ld bc, $0038
    rlca
    add e
    ld bc, $8330
    nop
    jr c, @-$76

    ld bc, $0467
    dec de
    dec de
    ld b, h
    dec e
    dec e
    adc c
    ld bc, $0035
    dec de
    dec hl
    ld e, $03
    inc h
    dec h
    ld e, $1e
    daa
    inc e
    ld b, d
    ld [hl+], a
    inc hl
    ld [bc], a
    inc e
    inc e
    inc hl
    add [hl]
    ld bc, $85d2
    nop
    inc sp
    ld bc, $1c1c
    add a
    nop
    inc hl
    nop
    dec h
    ld h, $1c
    push bc
    ld bc, $2904
    inc bc
    add h
    ld bc, $0018
    inc hl
    add hl, hl
    inc bc
    add e
    nop
    dec l
    nop
    add hl, bc
    jp z, Jump_000_1002

    inc bc
    dec de
    dec de
    inc a
    dec c
    adc e
    ld [bc], a
    inc d
    inc b
    dec de
    dec de
    ld a, $44
    ld b, $8c
    ld [bc], a
    dec h
    ld [bc], a
    dec de
    dec de
    inc b
    adc d
    ld [bc], a
    dec d
    ld [hl+], a
    add hl, de
    nop
    inc b
    adc l
    ld [bc], a
    inc h
    ld [bc], a
    dec de
    ld b, $08
    sbc a
    ld [bc], a
    ld d, l
    sbc l
    ld [bc], a
    ld d, l
    adc h
    ld [bc], a
    inc sp
    add e
    ld bc, $cbc8
    ld [bc], a
    ld de, $0084
    jp c, Jump_000_2300

    adc l
    ld [bc], a
    add $9b
    ld [bc], a
    call nz, Call_000_0089
    and b
    dec h
    inc e
    adc [hl]
    nop
    ldh a, [rP1]
    inc e
    adc e
    nop
    ldh [$ff03], a
    jr jr_013_4c82

    inc e
    inc e
    add [hl]
    nop
    ret nc

    adc a
    inc bc
    rla
    sbc c
    inc bc
    rlca
    nop

jr_013_4c72:
    ld [$0542], sp
    inc b
    nop
    add hl, bc
    add [hl]
    nop

jr_013_4c7a:
    inc hl
    nop
    dec b
    ld b, [hl]
    inc h
    dec h
    nop
    inc h

jr_013_4c82:
    db $e4
    ld a, a
    inc bc

jr_013_4c85:
    ld b, e
    inc h
    dec h
    db $e4
    ld [hl+], a
    inc e
    nop
    jr jr_013_4c72

    inc sp
    inc e
    sub b
    ld bc, $f000
    adc [hl]
    inc bc
    ld [hl], c
    add e
    ld [bc], a
    ldh [$fff0], a
    dec sp
    ld [bc], a
    call nz, Call_000_029f
    ldh [rTIMA], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    add hl, bc
    dec h
    adc l
    ld [bc], a
    ld b, $01
    dec h
    ld a, a
    db $e4
    adc c
    inc bc
    rst $38
    rlca
    dec [hl]
    inc d
    rla
    inc b
    dec c
    ld d, $2e
    ld a, [bc]
    inc c
    rst $38
    nop
    dec b
    inc bc
    ld bc, $0602
    inc b
    rst $38
    ld a, b
    ld a, b
    ld a, b
    or b
    ld b, b
    or b
    jr c, jr_013_4c85

    adc b
    jr nc, jr_013_4d38

    jr z, jr_013_4c7a

    ld c, b
    xor b
    ld c, b
    ret z

    ld c, b
    xor b
    ld c, b
    xor b
    adc b
    ld l, b
    ld c, b
    ld a, b
    ld a, b
    ld c, b
    sbc b
    add sp, -$30
    ret nc

Jump_013_4ce4:
    ld h, b
    sbc b
    ld hl, sp-$08
    ret z

    ret z

    sbc b
    jr z, jr_013_4d45

    ld e, b
    jr z, jr_013_4d0a

    ld a, [de]
    ld a, [de]
    sbc d
    sbc d
    ld c, l
    ld d, b
    pop de
    ccf
    ld c, a
    ccf
    add a
    inc d
    ld c, e
    ld c, e
    inc d
    add a
    inc d
    inc d
    ld c, e
    ld c, e
    ld bc, $0107
    ld bc, $6704

jr_013_4d0a:
    jp Jump_000_1561


    or d
    ld c, h
    inc de
    nop
    ld c, h
    ld [$0000], sp
    ld d, e
    dec l
    dec c
    ld bc, $0d03
    add [hl]
    nop
    ld bc, $00c7
    ld d, $00
    dec c
    add [hl]
    nop
    ld bc, $00c7
    ld h, $00
    dec c
    add [hl]
    nop
    ld bc, $00c7
    ld [hl], $00
    dec c
    add [hl]
    nop
    ld bc, $00c7

jr_013_4d38:
    ld b, [hl]
    nop
    dec c
    add [hl]
    nop
    ld bc, $00c7
    ld d, [hl]
    nop
    dec c
    add [hl]
    nop

jr_013_4d45:
    ld bc, $00c7
    ld h, [hl]
    nop
    dec c
    add [hl]
    nop
    ld bc, $00c7
    halt
    nop
    dec c
    add [hl]
    nop
    ld bc, $00c7
    add [hl]
    nop
    dec c
    ldh a, [$ff8f]
    nop
    ld bc, $0d24
    ld [bc], a
    ld l, a
    dec d
    ld l, [hl]
    adc e
    nop
    add hl, bc
    inc bc
    ld l, a
    inc de
    ld d, c
    ld [de], a
    adc e
    nop
    add hl, bc
    inc b
    ld c, $00
    ld d, b
    nop
    inc c
    adc h
    ld bc, $003a
    inc hl
    adc c
    ld bc, $0348
    ld l, a
    dec d
    dec d
    inc de
    ld [hl+], a
    nop
    ld bc, $1512
    add e
    ld bc, $0227
    inc bc
    dec c
    ld l, a
    add e
    ld bc, $0165
    nop
    inc hl
    inc hl
    nop
    dec b
    ld [de], a
    ld l, [hl]
    dec c
    inc bc
    dec c
    ld c, $63
    ld b, b
    ld h, $00
    nop
    inc c
    add e
    ld bc, $247e
    nop
    nop
    inc hl
    ld h, d
    dec a
    adc b
    ld bc, $628b
    dec a
    ld bc, $0051
    ld h, e
    ld b, b
    adc c
    ld bc, $008d
    ld d, b
    adc d
    ld bc, $6288
    dec a

jr_013_4dc1:
    ld h, d
    inc b
    add e
    ld bc, $88a2
    ld bc, $028d
    ld [de], a
    dec d
    inc de
    adc b
    ld bc, $0389
    ld a, $3f
    inc hl
    nop
    add [hl]
    ld bc, $8373
    ld bc, $018d
    dec c
    ld de, $0024
    add e
    ld bc, $0098
    db $10
    add l
    nop
    dec c

jr_013_4de8:
    nop
    dec b
    add e
    ld bc, $03c7
    nop
    inc b
    dec b
    dec b
    adc b
    ld bc, $045c
    ld d, $00
    inc hl
    nop
    inc d
    adc h
    ld bc, $006a
    nop
    adc c

Call_013_4e01:
    ld bc, $0278
    nop
    dec sp
    inc a
    add e
    ld bc, $8c75
    ld bc, $23c9
    nop
    ld bc, $3c3b
    add h
    ld bc, $83fc
    ld bc, $0055
    inc b
    inc hl
    dec b
    add [hl]
    ld [bc], a
    ld a, [bc]
    nop
    ld c, $62
    ld b, c
    nop
    inc d
    inc hl
    dec d
    ld [bc], a
    dec d
    dec d
    ld l, [hl]
    add a
    ld [bc], a
    ld c, l
    ld [bc], a
    dec a
    ld a, $3f
    add l
    ld [bc], a
    jr z, jr_013_4dc1

    ld [bc], a
    ld a, $00
    nop
    adc h
    ld bc, $83eb
    ld bc, $01f7
    nop
    inc c
    jp z, Jump_013_6002

    inc b
    ld b, $00
    inc hl
    nop
    inc c
    add [hl]
    ld bc, $235e
    dec d
    nop
    ld d, $83
    ld bc, $8c8a
    ld [bc], a
    ld e, $00
    inc hl
    adc c
    ld bc, $01bc
    nop
    nop
    adc [hl]
    ld [bc], a
    jr c, jr_013_4de8

    ld bc, $8598
    ld bc, $04fb
    ld c, $3e
    ccf
    inc b
    dec b
    adc e
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    inc hl
    nop
    inc c
    adc e
    nop
    dec b
    dec b
    ld c, $00
    nop
    inc c
    dec c
    ld l, a
    adc d
    ld [bc], a
    ld h, a
    inc b
    inc hl
    nop
    inc c
    ld l, a
    inc de
    adc e
    ld [bc], a
    daa
    ld [bc], a
    nop
    inc d
    ld d, $8a
    ld [bc], a
    sub [hl]
    ld bc, $230e
    adc l
    ld [bc], a
    add e
    nop
    ld c, $86
    ld [bc], a
    push hl
    ld bc, $0604
    adc h
    ld bc, $00eb
    db $10
    add e
    ld bc, $8a54
    ld [bc], a
    sbc l
    dec b
    dec c
    dec c
    ld c, $3d
    ld a, $0c
    adc e
    nop
    ld c, $02
    ld c, $00
    inc hl
    adc d
    inc bc
    ld a, l
    inc b
    ld l, a
    dec d
    ld d, $00
    nop
    adc c
    inc bc
    ld a, l
    add e
    ld bc, $8a71
    inc bc
    adc e
    inc b
    ld l, a
    inc de
    dec a
    ld a, $3f
    adc c
    inc bc
    sbc e
    add [hl]
    ld [bc], a
    ld hl, $1000
    adc b
    ld bc, $625d
    dec a
    inc bc
    db $10
    dec b
    dec b
    dec c
    adc d
    ld [bc], a
    dec e
    nop
    db $10
    add l
    ld [bc], a
    or c
    add h
    ld bc, $83df
    inc bc
    push hl
    add [hl]
    ld bc, $8370
    ld bc, $888f
    inc bc
    db $f4
    ld h, d
    dec a
    add h
    ld [bc], a
    rst $38
    ld [bc], a
    inc b
    dec b

Call_013_4f04:
    dec c
    add a
    ld [bc], a
    ld b, b
    add h
    ld bc, $02bf
    inc d
    dec d
    ld l, [hl]
    add a
    ld [bc], a
    ret nc

    add [hl]
    inc bc
    ccf
    nop
    ld [de], a
    add l
    ld bc, $01f0
    dec a
    nop
    add a
    ld bc, $869f
    inc b
    ld [hl], $00
    nop
    add e
    ld bc, $84ef
    ld bc, $0098
    ld [de], a
    add l
    ld [bc], a
    and c
    add l
    ld bc, $00ff
    ld de, $018a
    ld h, [hl]
    inc h
    dec c
    nop
    ld de, $0183
    rst $30
    ld [bc], a
    nop
    ld [de], a
    ld l, [hl]
    adc b
    nop
    ld c, $03
    ld de, $0000
    nop
    adc e
    inc bc
    sbc e
    inc bc
    dec c
    ld de, $0000
    adc l
    inc bc
    ld a, e
    ld bc, $0605
    add h
    inc bc
    ld l, e
    add e
    ld [bc], a
    or c
    add [hl]
    ld [bc], a
    or e
    adc e
    ld bc, $838b
    ld [bc], a
    ld c, b
    ld bc, $2300
    add [hl]
    ld bc, $018d
    dec sp
    inc a
    adc d
    ld bc, $0186
    ld l, a
    dec bc
    ld [hl+], a
    ld e, b
    ld bc, $2323
    jp $e604


    nop
    add hl, bc
    add a
    ld [bc], a
    dec l
    nop
    nop
    sub b
    ld bc, $8586
    ld [bc], a
    ld b, [hl]
    add l
    inc b
    db $dd
    add h
    inc b
    rst $20
    add e
    inc b
    db $e4
    ld bc, $6e09
    adc l
    inc b
    cp [hl]
    nop
    nop
    ldh a, [rNR51]
    inc b
    call $0585
    dec h
    ld bc, $0000
    sub b
    dec b
    dec hl
    nop
    dec sp
    sbc e
    dec b
    dec c
    ld [bc], a
    nop
    dec sp
    inc a
    add [hl]
    ld bc, $838c
    inc b
    jp nc, Jump_000_028a

    add a
    nop
    ld b, $28
    inc hl
    inc b
    inc b
    dec c
    dec c
    inc bc
    dec c
    adc d
    dec b
    ld d, b
    nop
    inc c
    add l
    nop
    dec c
    ld [bc], a
    ld de, $3c3b
    add a
    inc bc
    rst $00
    add h
    nop
    ld c, $01
    ld l, a
    dec bc
    add h
    ld bc, $0175
    add hl, bc
    ld l, [hl]
    add [hl]
    nop
    inc c
    nop
    ld c, $87
    dec b
    add [hl]
    adc e
    dec b
    call c, Call_000_0003
    nop
    nop
    inc c
    sbc b
    dec b
    call z, Call_000_3b04
    inc a
    nop
    nop
    nop
    adc a
    dec b
    ld [$3b00], a
    sbc c
    dec b
    ei
    ld [bc], a
    nop

Call_013_5004:
    dec sp

jr_013_5005:
    inc a
    sub b
    ld b, $18
    ld [bc], a
    dec sp
    inc a
    inc c
    sbc e
    dec b
    call z, Call_000_0589
    ld hl, sp+$03
    ld l, a
    inc de
    dec sp
    inc a
    add [hl]
    ld [bc], a
    daa

jr_013_501b:
    adc b
    dec b
    xor l
    ld h, d
    inc b
    inc bc
    dec sp
    inc a
    nop
    inc c
    adc b
    dec b
    xor l
    add e
    ld bc, $00d6
    nop
    adc d
    ld b, $9b
    ld [bc], a
    dec sp
    inc a
    nop
    adc h
    ld b, $a9
    adc b
    ld b, $55
    add e
    dec b
    xor a
    add h
    inc b
    call nc, $0691
    cp b
    adc a
    ld b, $ba
    add e
    ld bc, $018b
    ld d, a
    inc bc
    rst $38
    inc b
    dec b
    ld b, $00
    rlca
    ld d, $1c
    rst $38
    ld [bc], a
    inc bc
    dec b
    ld b, $00
    rst $38
    jr z, jr_013_5005

    adc b
    ld l, b
    ld c, b
    jr c, jr_013_50ca

    sbc b
    ld c, b
    adc b
    add b
    ld l, b
    ld d, b
    ld l, b
    jr nz, jr_013_501b

    ld a, b
    ld a, b
    add sp, $78
    add sp, -$48
    ld a, b
    cp b
    ld [$7808], sp
    ld hl, sp+$78
    ld [$c8c8], sp
    ld d, $16
    dec c
    rrca
    dec c
    jr jr_013_509c

    jr jr_013_50ef

    ld l, e
    jr jr_013_50e0

    jr jr_013_50a3

    ld a, [de]
    ld a, [de]
    ld bc, $0105
    ld bc, $3d02
    sbc h
    ld c, b
    ld d, $4d
    ld d, b
    inc de
    dec c
    ld c, h
    ld [$0300], sp

jr_013_509c:
    jp c, Jump_000_0202

    ld h, l
    inc hl
    ld [bc], a
    nop

jr_013_50a3:
    ld h, c
    inc hl
    ld bc, $0322
    add e
    nop
    ld b, $00
    ld h, d
    add [hl]
    nop
    ld b, $00
    ld h, e
    add e
    nop
    dec c
    dec bc
    ld h, c
    ld bc, $0155
    ld h, d
    ld h, c
    ld bc, $6301
    ld h, h
    ld h, e
    nop
    ld [hl+], a
    inc bc
    inc b
    ld h, c
    ld bc, $0063
    ld h, h

jr_013_50ca:
    ld h, d
    ld [hl], c
    inc b
    ld h, e
    ld e, a
    nop
    nop
    ld e, e
    jp Jump_000_0f00


    add e
    nop
    jr c, @+$08

    ld [hl], h
    add c
    ld [hl], l
    ld e, e
    ld bc, $5b5c

jr_013_50e0:
    add e
    nop
    inc c
    nop
    ld h, e
    add e
    nop
    ld c, b
    inc bc
    ld e, h
    ld e, a
    ld e, e
    ld bc, $0086

jr_013_50ef:
    add hl, bc
    nop
    ld e, e
    dec hl
    ld bc, $00c4
    rrca
    ld bc, $5a59
    adc e
    nop
    ld h, h
    inc b
    ld e, d
    ld e, c
    nop
    nop
    ld e, d
    adc d
    nop
    ld h, l
    ld [hl+], a
    add e
    nop
    ld a, $84
    nop
    add e
    nop
    ld [hl], c
    ld [hl+], a
    ld [hl], d
    ld [hl+], a
    inc bc
    ld [hl+], a
    add c
    ld b, $75
    nop
    nop
    ld e, d
    ld d, l
    ld e, c
    ld [hl], h
    push bc
    nop
    and d
    inc l
    nop
    ld bc, $0303
    rst $00
    nop
    cp l
    push bc
    nop
    push bc
    ld bc, $0303
    ld hl, sp+$20
    nop
    call Call_000_0024
    ld [bc], a
    inc a
    add e
    ld a, $87
    nop
    cp b
    rlca
    ld e, h
    nop
    nop
    ld e, e
    ld e, h
    ld [hl], h
    add c
    ld [hl], l
    add a
    nop
    cp b
    add e
    nop
    ld c, c
    add e
    nop
    ld d, d
    inc b
    nop
    nop
    nop
    nop
    ld e, e
    jp z, Jump_013_6f00

    inc bc
    ld e, h
    ld e, e
    ld e, h
    ld e, e
    call nz, Call_013_7000
    sub b
    nop
    ld h, c
    ld bc, $0101
    ld b, c
    ld bc, $028e
    ld bc, $6463
    add [hl]
    nop
    ld l, e
    ld b, c
    ld h, e
    ld h, h
    dec b
    ld bc, $6301
    nop
    nop
    ld h, h
    add e
    nop
    inc c
    ld bc, $6364
    inc hl
    nop
    add l
    ld bc, $0060
    ld h, h
    add h
    nop
    adc l
    ld [bc], a
    ld a, $00
    adc h
    ld [hl+], a
    nop
    ld [bc], a
    adc h
    nop
    inc a
    call nz, $9100
    add h
    nop
    and c
    ld [hl+], a
    adc h
    ld [bc], a
    nop
    nop
    ld [hl], h
    add l
    nop
    xor e
    ld bc, $5c5b
    adc h
    nop
    or e
    add a
    ld bc, $8d12
    ld bc, $8418
    ld bc, $8b17
    ld bc, $832b
    ld bc, $0028
    ld bc, $0197
    inc l
    nop
    ld d, l
    add e
    nop
    daa
    ld [bc], a
    ld d, l
    ld h, e
    ld h, h
    add [hl]
    ld bc, $002c
    ld h, e
    add e
    ld bc, $8765
    ld bc, $0268
    ld bc, $6301
    add l
    ld bc, $8773
    ld bc, $0109
    ld h, e
    adc h
    ret z

    ld [bc], a
    dec bc
    add e
    nop
    inc l
    ld bc, $0063
    adc l
    ld [bc], a
    ld [de], a
    nop
    ld e, h
    add l
    ld bc, $0283
    adc h
    adc h
    adc h
    add [hl]
    ld bc, $000a
    ld e, h
    adc l
    nop
    or d
    ld [bc], a
    ld bc, $5c01
    adc [hl]
    ld [bc], a
    ld b, e
    add e
    ld bc, $8ca2
    ld [bc], a
    ld d, [hl]
    add l
    ld [bc], a
    ld h, b
    adc h
    ld [bc], a
    ld l, c
    inc bc
    adc [hl]
    ld bc, $5c01
    adc e
    ld bc, $021a
    ld h, e
    ld h, h
    ld bc, $0086
    ld c, c
    add h
    ld bc, $8351
    ld bc, $8658
    nop
    add hl, bc
    nop
    ld h, e
    daa
    nop
    ld [bc], a
    ld h, h
    ld h, e
    ld h, h
    adc $02
    ld d, b
    ld bc, $6400
    sub l
    nop
    xor l
    inc bc
    adc h
    nop
    nop
    nop
    call z, $e502
    ld bc, $5f8c
    adc c
    ld [bc], a
    ld b, $07
    ld e, h
    nop
    nop
    ld e, a
    ld e, e
    adc [hl]
    ld e, h
    adc h
    adc h
    ld bc, $0308
    ld bc, $5c8e
    ld e, e
    adc h
    ld [bc], a
    adc c
    ld b, $8e
    ld bc, $0101
    ld e, h
    ld e, e
    ld bc, $0389
    dec e
    add h
    ld bc, $0237
    ld bc, $0303
    pop de
    inc bc
    dec a
    ld bc, $6463
    adc h
    inc bc
    inc sp
    nop
    ld h, e
    add h
    ld [bc], a
    or a
    nop
    ld bc, $02ca
    ld [hl], l
    ld bc, $0a08
    add h
    ld [bc], a
    and [hl]
    ld bc, $1a18
    add [hl]
    inc bc
    ld l, e
    ld bc, $1210
    add h
    ld bc, $0163
    db $10
    ld [hl+], a
    adc e
    inc bc
    ld a, e
    add e
    inc bc
    add b
    nop
    ld h, h
    adc [hl]
    inc bc
    adc h
    ld bc, $6400
    adc [hl]
    inc bc
    sbc l
    nop
    nop
    adc a
    inc bc
    xor l
    add e
    nop
    xor l
    ld bc, $1a08
    add [hl]
    inc bc
    sub e
    ld bc, $0a18
    add h
    nop
    cp h
    ld a, [bc]
    jr nz, jr_013_52db

    ld [hl+], a
    ld e, h
    ld e, a
    ld e, e
    ld e, h
    nop
    db $10
    jr nz, jr_013_52d4

    add a
    inc bc
    call c, $0104
    ld bc, $0189
    ld e, h
    add [hl]
    inc bc
    jp hl


    dec bc
    dec a
    jr nz, jr_013_52f4

    ld [hl+], a
    ld [hl], d

jr_013_52d4:
    ld [hl], d
    adc e
    ld [hl], d
    ld [hl], d
    jr nz, jr_013_52fa

    ld [de], a

jr_013_52db:
    jp Jump_000_0004


    inc bc
    add c
    dec b
    ld b, $06
    inc hl
    add b
    inc b
    add c
    dec b
    dec b
    ld b, $81
    add a
    inc bc
    db $ed
    ld [bc], a
    ld h, e
    ld h, h
    ld h, e
    adc e
    inc bc

jr_013_52f4:
    add sp, -$7d
    ld bc, $8a61
    inc bc

jr_013_52fa:
    add sp, $01
    ld [de], a
    nop
    adc a
    inc b
    dec [hl]
    add [hl]
    inc b
    dec [hl]
    nop
    db $db
    db $e4
    and d
    inc bc
    rst $38
    rlca
    dec [hl]
    rst $38
    inc bc
    nop
    rst $38
    ld a, b
    ld b, b
    or b
    ld a, b
    ld l, b
    ld l, b
    ld a, [de]
    sbc d
    sbc d
    ld bc, $0102
    ld bc, $0b04
    jp Jump_000_1561


    ld a, [bc]
    ld d, e
    inc de
    ld de, $084c
    nop
    nop
    ld d, e
    dec l
    dec c
    nop
    inc bc
    dec h
    dec c
    ld [bc], a
    ld l, a
    dec d
    ld l, [hl]
    adc e
    nop
    add hl, bc
    inc b
    ld l, a
    inc de
    ld d, c
    ld [de], a
    ld l, [hl]
    adc d
    nop
    ld a, [bc]
    inc b
    ld c, $00
    ld d, b
    nop
    inc c
    adc h
    nop
    ld a, [hl+]
    nop
    inc hl
    adc c
    nop
    jr c, jr_013_5353

    ld l, a
    dec d
    dec d

jr_013_5353:
    inc de
    ld [hl+], a
    nop
    ld bc, $1512
    add e
    nop
    rla
    ld [bc], a
    inc bc
    dec c
    ld l, a
    add e
    nop
    ld d, l
    ld bc, $2300
    inc hl
    nop
    dec b
    ld [de], a
    ld l, [hl]
    dec c
    inc bc
    dec c
    ld c, $63
    ld b, b
    ld h, $00
    nop
    inc c
    add e
    nop
    ld l, [hl]
    inc h
    nop
    nop
    inc hl
    ld h, d
    dec a
    adc b
    nop
    ld a, e
    ld h, d
    dec a
    ld bc, $0051
    ld h, e
    ld b, b
    adc c
    nop
    ld a, l
    nop
    ld d, b
    adc d
    nop
    ld a, b
    ld h, d
    dec a
    ld h, d
    inc b
    add e
    nop
    sub d
    adc b
    nop
    ld a, l
    ld [bc], a
    ld [de], a
    dec d
    inc de
    adc b
    nop
    ld a, c
    inc bc
    ld a, $3f
    inc hl
    nop
    add [hl]
    nop
    ld h, e
    add e

jr_013_53aa:
    nop
    ld a, l
    ld bc, $110d
    inc h
    nop
    add e
    nop
    adc b
    nop
    db $10
    add l
    nop
    dec c
    nop
    dec b
    add e
    nop
    or a
    inc bc
    nop
    inc b
    dec b
    dec b
    adc b
    nop
    ld c, h
    inc b
    ld d, $00
    inc hl
    nop
    inc d
    adc h
    nop
    ld e, d
    nop
    nop
    adc c
    nop
    ld l, b
    ld [bc], a
    nop
    dec sp
    inc a
    add e
    nop
    ld h, l
    adc h
    nop
    cp c
    inc hl
    nop
    inc b
    dec sp
    inc a
    nop
    inc c
    ld d, a
    db $e4
    ret nz

    inc bc
    rst $38
    rra
    jr c, jr_013_542b

    rst $38
    ld [bc], a
    ld bc, $88ff
    add b
    jr z, @+$6a

    and h
    jr jr_013_53aa

    and c
    rst $00
    ld bc, $0102
    ld bc, $0b05
    ld b, $67
    dec d
    ld [$1353], a
    ld e, $4c
    ld [$0000], sp
    inc d
    cpl
    inc bc
    dec l
    inc b
    ld [bc], a
    inc bc
    inc bc
    inc b
    dec hl
    rlca
    add e
    nop
    ld e, $2b
    ld b, $85
    nop
    ld l, $22
    inc b
    nop
    inc h
    ret


    nop
    ld b, a
    ld b, $05
    dec b
    inc b
    rlca
    rlca

jr_013_542b:
    ld c, $06
    rlc b
    ld d, [hl]
    inc bc

jr_013_5431:
    ld b, $06
    inc c
    ld b, $cb
    nop
    ld h, [hl]
    ld [hl+], a
    inc b
    call z, Call_013_7700
    ld [bc], a
    inc b
    rlca
    rlca
    call $8700
    ld bc, $0606
    call $9700
    ld [bc], a
    ld b, $08
    add hl, bc
    call $a600
    ld bc, $0b0a

jr_013_5454:
    adc l
    nop
    sbc c
    nop
    ld b, $cd
    nop
    rst $00
    ld bc, $0504
    call $d700
    ld bc, $0604
    db $db
    nop
    rst $20
    inc bc
    rlca
    rlca
    ld [hl-], a
    ld b, $c9
    ld bc, $2307
    ld b, $01
    inc h
    ld b, $c9
    ld bc, $8417
    nop
    push hl
    nop
    inc b
    jp Jump_000_2701


    jp nc, Jump_000_1300

    nop
    inc de
    db $e4
    cpl
    inc bc
    db $e4
    adc a
    nop
    rst $38
    ld a, $14
    ld c, $ff
    inc bc
    rst $38
    ld c, b
    ld e, b
    ld a, b
    jr z, jr_013_54ff

    ld l, b
    add $4d
    ld b, a
    ld bc, $0301
    ld bc, $0103
    ld d, $47
    jr jr_013_5431

    ld d, h
    inc de
    dec h
    ld c, h
    ld [$0200], sp
    inc bc
    inc bc
    ld c, h
    ld b, h
    ld [hl+], a
    ld e, $02
    ld [hl+], a
    inc bc
    inc bc
    call z, Call_000_0f00
    nop
    ld e, $23
    inc bc
    ld bc, $6b1e
    ld b, e
    ld h, $25
    add [hl]
    nop

jr_013_54c5:
    inc c
    nop
    inc hl
    ld h, d
    ld l, b
    inc h
    jr z, jr_013_54cd

jr_013_54cd:
    jr nz, jr_013_5454

    nop
    dec e
    nop
    rra
    ld h, d
    ld [hl], b
    inc h
    jr z, jr_013_54d8

jr_013_54d8:
    inc e
    add [hl]
    nop
    dec l
    dec h
    jr z, jr_013_54df

jr_013_54df:
    dec sp
    adc b
    nop
    dec sp
    dec h
    jr z, jr_013_54e6

jr_013_54e6:
    jr c, @-$77

    nop
    ld c, e
    nop
    ld e, $43
    ld a, [de]
    add hl, de
    nop
    ld h, [hl]
    rst $18
    nop
    ld [hl+], a
    nop
    ld c, l
    db $e4
    ld h, c
    inc bc
    rst $38
    ld d, $3e
    ld a, [hl+]
    inc [hl]
    cpl

jr_013_54ff:
    rst $38

Jump_013_5500:
    add hl, bc
    ld b, $ff
    cp b
    ret c

    ld hl, sp-$08
    jr z, jr_013_5531

    ld a, b
    ld c, b
    ld c, b
    ret z

    ld a, b
    jr c, @-$56

    xor b
    jr jr_013_557b

    jr c, jr_013_54c5

    ld e, b
    xor b
    jr z, jr_013_5591

    cp b
    ld l, b
    xor b
    ld a, b
    ld l, b
    cp b
    ld l, b
    jr c, jr_013_5571

    ld c, a
    ld c, a
    ld c, a
    ld c, a
    cp a
    ld a, l
    sub [hl]
    adc b
    ld c, a
    ld a, l
    ld c, a
    sub [hl]
    adc b
    ld c, a
    ld [bc], a

jr_013_5531:
    ld bc, $0101

jr_013_5534:
    inc d
    dec b
    ld d, c
    ld c, h
    jr jr_013_5534

    ld d, h
    inc de
    ld [hl-], a
    ld c, h
    ld [$0001], sp
    ld e, [hl]
    ld [hl+], a
    nop
    ld bc, $4849
    inc hl
    nop
    nop
    ld c, c
    inc h
    ld bc, $0006
    ld c, c
    ld c, b
    ld c, c
    ld bc, $4801
    add a
    nop
    ld [$0100], sp
    add [hl]
    nop
    add hl, de
    ld [bc], a
    ld c, b
    nop
    ld b, a
    dec l
    ld bc, $0083
    ld [de], a
    ld h, d
    dec bc
    inc h
    ld bc, $4600
    add [hl]
    nop
    add hl, hl
    ld h, d
    inc de

jr_013_5571:
    adc l
    nop
    ld [hl+], a
    nop
    inc e
    adc d
    nop
    ld sp, $0083

jr_013_557b:
    dec sp
    nop
    inc e
    jr z, @+$03

    ld bc, $4746
    add e
    nop
    ld c, e
    inc bc
    inc e
    ld bc, $4764
    add h
    nop
    ld b, c
    inc bc
    ld b, [hl]
    nop

jr_013_5591:
    nop
    ld b, a
    ld b, c
    ld bc, $051c
    ld b, [hl]
    ld d, b
    nop
    ld b, a
    ld bc, $2546
    nop
    ld [bc], a
    ld b, a
    inc e
    ld d, $22
    inc h
    add hl, hl
    inc b
    ld [bc], a
    inc hl
    inc h
    ld l, $22
    inc l
    add hl, hl
    dec b
    nop
    inc sp
    inc h
    inc [hl]
    cpl
    ld hl, $392f
    ccf
    inc bc
    adc e
    nop
    ld l, [hl]
    inc bc
    ld bc, $0101
    inc bc
    adc h
    nop
    cpl
    ld [bc], a
    ld bc, $0301
    adc e
    nop
    ld b, b
    add e
    ld bc, $050c
    dec bc
    inc c
    dec c
    ld bc, $4948
    add a
    nop
    ld b, b
    inc b
    ld b, [hl]
    inc bc
    inc de
    inc d
    dec d
    add [hl]
    ld bc, $0738
    nop
    nop
    ld b, a
    ld b, [hl]
    nop
    inc bc
    ld bc, $851c
    nop
    add h
    add [hl]
    nop
    sub e
    ld [bc], a
    inc bc
    ld bc, $6255
    ld [$0029], sp
    dec b
    inc bc
    ld b, [hl]
    add hl, de
    db $10
    ld de, $8a12
    ld bc, $4165
    nop
    add hl, de
    ld a, [hl+]
    nop
    inc bc
    inc bc
    inc h
    inc h
    rrca
    adc h
    ld bc, $0483
    inc l
    inc l
    cpl
    inc h
    dec h
    add hl, hl
    inc b
    nop
    inc bc
    inc hl
    inc [hl]
    nop
    dec [hl]
    add hl, hl
    dec b
    nop
    inc bc
    ld l, $21
    adc $00
    ldh [rP1], a
    ld e, a
    db $e4
    jr nz, jr_013_562e

    rst $38
    rra
    dec e

jr_013_562e:
    rst $38
    ld b, $01
    rst $38
    cp b
    ld a, b
    ld l, b
    cp b
    ld hl, sp-$48
    ld [$6838], sp
    sbc b
    xor b
    ld l, b
    ld a, b
    sbc b
    ld e, d
    ld e, h
    ld e, e
    ld e, l
    ld e, [hl]
    ld h, e
    ld e, a
    ld [bc], a
    ld bc, $0101
    inc c
    ld b, $84
    ld [hl], e
    ld d, $2c
    ld d, [hl]
    inc de
    dec sp
    ld c, h
    ld [$0400], sp
    ld l, b
    nop
    nop
    ld d, a
    ld d, [hl]
    dec h
    nop
    nop
    ld d, a
    inc hl
    ld bc, $0084
    add hl, bc
    nop
    ld d, [hl]
    adc b
    nop
    rlca
    ld b, $33
    nop
    nop
    dec a
    ld bc, $3c01
    add l
    nop
    ld [$3c03], sp
    dec a
    inc sp
    dec [hl]
    add l
    nop
    db $10
    rra
    ld d, a
    ld d, [hl]
    ld d, a
    ld bc, $2401
    nop
    nop
    dec [hl]
    ld bc, $5700
    ld bc, $2829
    ld bc, $3d3c
    ld bc, $3301
    ld e, c
    dec l
    nop
    dec a
    ld bc, $0157
    jr nz, jr_013_56c8

    ld a, [hl+]
    inc a
    add h
    nop
    ld a, [bc]
    inc e
    ld d, h
    cpl
    ld hl, $2500
    inc sp
    ld e, c
    daa
    ld [bc], a
    ld h, $2d
    nop
    ld e, a
    ld d, c
    inc sp
    ld e, c
    dec sp
    ld d, d
    ld b, [hl]
    dec l
    nop
    ld bc, $022b
    jr nc, jr_013_56f3

    cpl
    nop
    ld h, d
    ld h, d
    jr jr_013_56c3

jr_013_56c3:
    ld a, [de]
    ld h, d
    ld a, [de]
    ld d, $66

jr_013_56c8:
    ld e, c
    dec sp
    inc hl
    ld [bc], a
    jr nc, jr_013_56cf

    dec l

jr_013_56cf:
    ld l, d
    dec e
    ld e, $1e
    ld [hl], b
    rla
    rla
    rra
    ld l, d
    ld l, $01
    dec sp
    ld a, [hl-]
    ld a, $0b
    ld [hl+], a
    inc c
    db $10
    ld [de], a
    rla
    ld l, h
    rla
    inc de
    inc c
    inc c
    ld c, a
    ld c, [hl]
    ld b, [hl]
    ld bc, $0f0e
    ld h, b
    db $10
    db $10
    inc d
    ld [hl+], a

jr_013_56f3:
    dec d
    dec b
    ld d, $10
    db $10
    ld [bc], a
    jr nc, @+$38

    ld h, d
    ld c, $00
    ld l, d
    inc hl
    stop
    ld h, h
    inc hl
    db $10
    inc b
    ld [bc], a
    ld a, [hl-]
    ld c, $0f
    ld e, e
    ld [hl+], a
    dec b
    nop
    ld b, $c3
    nop
    cp b
    ld [bc], a
    db $10
    ld e, e
    dec b
    inc hl
    rlca
    ld [hl+], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    rlca
    add e
    nop
    ret nc

    ld sp, $2f0a
    inc bc
    nop
    inc a
    add e
    nop
    dec bc
    ld bc, $003c
    jr z, @+$05

    add l
    ld bc, $8901
    ld bc, $0006
    ld bc, $0083
    add hl, sp
    adc l
    ld bc, $0315
    inc sp
    nop
    nop
    ld d, a
    adc e
    ld bc, $0217
    ld bc, $5756
    ret


    ld bc, $0320
    inc sp
    ld e, c
    ld e, d
    dec [hl]
    rlc c
    ld [hl+], a
    dec b
    dec a
    dec hl
    ld a, [hl+]
    ld bc, $3d3c
    adc c
    ld bc, $0646
    inc l
    dec sp
    ld h, $2d
    inc l
    dec l
    dec [hl]
    jr z, jr_013_576b

    dec b
    ld l, $01

jr_013_576b:
    ld a, $2f
    ld d, l
    ld a, [hl+]
    adc c
    ld bc, $0646
    inc c
    dec c
    ld bc, $3247
    ld h, $27
    jr z, jr_013_577f

    ld b, $6e
    db $10

jr_013_577f:
    ld de, $4058
    ld b, c
    ld b, c
    jr z, jr_013_5789

    inc bc
    ld l, d
    db $10

jr_013_5789:
    db $10
    ld de, $018b
    ld d, h
    add e
    nop
    add $02
    ld de, $0101
    rlc b
    ld hl, sp+$23
    rlca
    adc $00
    ld hl, sp+$00
    ld l, c
    jr c, jr_013_57a4

    rst $38
    ld h, $ff

jr_013_57a4:
    ld bc, $98ff
    ld c, b
    ld [hl], d
    ld bc, $0101
    ld bc, $0101
    jp Jump_000_1570


    and d
    ld d, a
    inc de
    sub [hl]
    ld c, h
    ld [$0400], sp
    ld a, [hl+]
    db $10
    ld de, $0c0b
    dec h
    nop
    nop
    inc b
    inc hl
    inc bc
    dec b
    inc b
    inc de
    inc d
    ld c, $0f

jr_013_57cb:
    nop
    add e
    nop
    ld bc, $0085
    ld a, [bc]
    nop
    inc l

jr_013_57d4:
    add h
    nop
    inc bc
    add e
    nop
    ld de, $0a01
    inc hl
    inc hl
    inc bc
    ld b, $2b
    ld c, $0f
    ld d, $17
    nop
    nop
    ld h, d
    db $10
    ld bc, $240d
    add $00

jr_013_57ee:
    rrca
    ld h, d
    jr jr_013_57f2

jr_013_57f2:
    nop
    ld h, d
    inc de
    add l
    nop
    ld a, [bc]
    ld a, [bc]
    dec l
    ld e, $00
    dec de
    inc e
    nop
    dec e
    ld e, $00
    rra
    jr nz, jr_013_57cb

    nop
    db $10
    ld bc, $0706
    inc h

jr_013_580b:
    nop
    ld bc, $2221
    add h
    nop
    dec bc
    nop
    ld l, $24
    dec b
    ret


    nop
    ld [hl], l
    dec hl
    inc b
    adc [hl]
    nop
    ld a, h
    nop
    add hl, hl
    db $e4
    ld h, e
    inc bc
    rst $38
    scf
    ld bc, $2a0c
    inc b

jr_013_5829:
    cpl
    jr nc, jr_013_5866

    rst $38
    ld [bc], a
    inc b
    dec b
    ld [$ff09], sp
    add sp, -$48
    ret nz

    ld c, b
    ret nz

    jr jr_013_585a

    ld [hl], b
    ld c, b
    ret nc

    ldh a, [rSVBK]
    jr z, jr_013_5829

    ld a, b
    ld l, b
    add sp, -$18
    jr nz, @-$76

    ld [hl], b
    ret nz

    adc b
    jr c, jr_013_57d4

    jr nz, jr_013_5886

    jr c, jr_013_5898

    ld c, b
    ld a, b
    jr z, jr_013_588c

    jr c, @+$3a

    jr c, @+$7a

    jr c, jr_013_58c2

jr_013_585a:
    jr z, jr_013_5894

    adc b
    adc b
    adc b
    jr nc, jr_013_58c1

    ld l, b
    jr nc, jr_013_5894

    jr nc, jr_013_57ee

jr_013_5866:
    ld h, b
    ld h, b
    jr nc, jr_013_57f2

    jr nc, jr_013_580b

    dec b
    ld h, $9f
    ld a, l
    ld d, $7d
    ld a, l
    adc b
    ld a, l
    adc d
    dec b
    dec b
    or a
    or a
    or a
    inc h
    inc h
    adc h
    inc h
    dec b
    dec b
    or a
    inc h
    inc h
    dec b
    or a

jr_013_5886:
    inc h
    dec b
    ld bc, $0101
    ld b, l

jr_013_588c:
    ld bc, $4000
    ld d, $24
    ld e, b
    inc de
    sub a

jr_013_5894:
    ld c, h
    ld [$0000], sp

jr_013_5898:
    cp [hl]
    db $e4
    dec h
    ld bc, $5401
    ld d, l
    add e
    nop
    dec h
    add hl, hl
    ld bc, $5c08
    ld e, l
    ld bc, $5c01
    nop
    ld d, l
    ld d, h
    ld d, l
    adc b
    nop
    ld [hl+], a
    ld [bc], a
    ld bc, $5401
    ld [hl+], a
    nop
    nop
    ld e, l
    add e
    nop
    dec h
    ld [bc], a
    ld d, h
    nop
    ld e, l
    add h

jr_013_58c1:
    nop

jr_013_58c2:
    ld d, c
    ld [hl+], a
    nop
    nop
    ld d, l
    add [hl]
    nop
    ld e, c
    nop
    ld d, h
    dec h
    nop
    ld bc, $0066
    dec l
    inc c
    ld bc, $0ccc
    cpl
    inc d
    cpl
    inc e
    db $e4
    ld e, a
    inc bc
    nop
    ld bc, $008d
    add hl, hl
    add h
    nop
    ld c, b
    nop
    ld e, l
    adc h
    nop
    ld e, $01
    ld e, h
    ld e, l
    add h
    nop
    inc h
    ld bc, $5554
    adc b
    ld bc, $0110
    ld d, h
    ld d, l
    add [hl]
    nop
    ld c, e
    ld [bc], a
    ld e, h
    nop
    ld d, l
    add e
    nop
    ld d, c
    dec b
    ld h, [hl]
    nop
    dec bc
    inc c
    call z, Call_013_410d
    ld d, l
    ld d, h
    dec bc
    dec bc
    call z, Call_013_6654
    ld e, l
    ld e, h
    ld h, [hl]
    nop
    inc de
    inc d
    inc d
    dec d
    inc hl
    nop
    inc bc
    inc de
    inc d
    nop
    ld h, [hl]
    add e
    ld bc, $0342
    dec de
    inc e
    inc e
    dec e
    inc hl
    nop
    ld bc, $1c1b
    jp $7f00


    dec b
    call z, Call_000_0d0c
    nop
    nop
    dec bc
    inc hl
    inc c
    ld bc, $000d
    dec h
    inc d
    inc bc
    dec d
    nop
    nop
    inc de
    add l
    ld bc, $2582
    inc e
    inc bc
    dec e
    nop
    nop
    dec de
    add l
    ld bc, $e492
    ld e, a
    inc bc
    add h
    nop
    ld c, b
    adc e
    nop
    ccf
    add e
    nop
    ld c, d
    ld [bc], a
    ld e, l
    ld bc, $8550
    ld bc, $0010
    ld d, b
    add e
    nop
    inc [hl]
    add h
    nop
    ld h, h
    add l
    nop
    ld d, e
    nop
    nop
    add l
    ld bc, HeaderDestinationCode
    dec c
    nop
    adc b
    nop
    ld h, d
    nop
    dec c
    add e
    ld bc, $025c
    dec d
    nop
    nop
    add a
    ld [bc], a
    inc sp
    nop
    dec d
    add e
    ld bc, $006c
    dec e
    add [hl]
    ld [bc], a
    ld b, c
    inc bc
    ld e, l
    ld e, h
    nop
    dec e
    add h
    ld [bc], a
    ld e, e
    add [hl]
    ld [bc], a
    ld d, c
    add e
    nop
    ld d, e
    add h
    nop
    scf
    ld b, c
    ld e, l
    ld e, h
    add h
    ld bc, $0179
    inc c
    ld d, l
    add l
    nop
    inc h
    inc bc
    ld d, h
    ld d, l
    ld d, h
    inc de
    push bc
    ld bc, $0084
    ld d, l
    add e
    nop
    ld c, d
    inc b
    xor h
    nop
    nop
    nop
    dec de
    ldh a, [$ff67]
    nop
    sbc e
    sub b
    ld bc, $0101
    ld bc, $8d5c
    ld bc, $0314
    ld bc, $d601
    sub $87
    nop
    dec hl
    nop
    nop
    add h
    nop
    inc a
    ld bc, $d1d6
    add h
    nop
    ld d, l
    ld [bc], a
    ld bc, $01d6
    add h
    ld [bc], a
    ld h, e
    inc b
    ld d, l
    pop de
    sbc [hl]
    nop
    ld d, l
    add e
    nop
    ld [hl], $09
    pop de
    ld d, l
    ld d, l
    ld bc, $005c
    ld h, [hl]
    nop
    sbc [hl]
    sbc [hl]
    add e
    ld bc, $0660
    ld d, l
    ld d, h
    sbc [hl]
    ld e, l
    nop
    ld d, l
    ld d, h
    add [hl]
    inc bc
    ld d, e
    inc hl
    nop
    nop
    sbc [hl]
    call nz, $8002
    inc b
    call z, $9e0d
    sbc [hl]
    dec bc
    jp Jump_013_7e00


    ld [bc], a
    dec c
    sbc [hl]
    dec bc
    add l

jr_013_5a1e:
    ld bc, $0181
    sbc [hl]
    sbc [hl]
    add l
    ld bc, $0189
    sbc [hl]
    inc de
    add l
    ld bc, $0191
    sbc [hl]
    sbc [hl]
    add l
    ld bc, $0199
    sbc [hl]
    dec de
    db $e4
    ld e, a
    inc bc
    adc d
    ld bc, $8410
    nop
    ld e, d
    adc [hl]
    inc b
    ld bc, $5d00
    add a
    ld bc, $8721
    inc b
    add hl, de
    add e
    inc bc
    inc hl
    add e

jr_013_5a4d:
    ld bc, $0311
    sub $5c
    nop
    ld [hl], l
    add e
    nop
    ld d, l
    add h
    inc b
    jr nc, jr_013_5a1e

    inc bc
    ld b, c
    dec b
    ld d, h
    dec bc
    ld a, b
    dec c
    ld d, l
    ld d, h
    jp $3003


    nop
    push de
    inc hl
    ld bc, $d100
    add l
    ld [bc], a
    ld b, d
    jp Jump_013_5500


    nop
    sbc [hl]
    add h
    inc bc
    ld e, d
    add l
    ld [bc], a

jr_013_5a7a:
    ld d, d
    nop
    nop
    add h
    inc bc
    ld a, e
    add e
    inc bc
    ld a, e
    adc b
    ld bc, $0679
    dec d
    sbc [hl]
    inc de
    inc d
    inc d
    dec d
    sbc [hl]
    adc b
    ld bc, $0589
    dec e
    sbc [hl]
    dec de
    inc e
    inc e
    dec e
    add [hl]
    inc bc
    sub a
    nop
    or a
    db $e4
    ld e, a
    inc bc
    rst $38
    ld a, [bc]
    nop
    ld bc, $0806
    scf
    inc c
    ld d, $ff
    inc b
    inc b
    inc b
    add hl, bc
    rlca
    ld b, $ff
    ret c

    adc b
    sbc b
    ldh a, [rBCPS]
    ld b, b
    sbc b
    ld d, b

jr_013_5ab9:
    ret c

    ret nz

    ld a, b
    ld [$f860], sp
    jr nz, jr_013_5ab9

    ret z

    ld l, b
    jr c, jr_013_5a4d

    db $10
    ld c, b
    jr z, jr_013_5b21

    adc b
    add sp, -$68
    cp b
    ld e, b
    cp b
    ld l, b
    jr jr_013_5a7a

    adc b
    xor b
    cp b
    adc b
    ld l, b
    adc b
    ld [hl], b
    ld l, b
    xor b
    jr c, @-$56

    ld l, b
    adc b
    xor b
    adc b
    ld e, b
    ld e, b
    jr nc, jr_013_5b1d

    xor b
    adc b
    xor b
    adc b
    jr nc, jr_013_5b43

    jr nc, jr_013_5b1d

    adc b
    ld e, b
    or b
    or b
    sub b
    ld e, b
    sub b
    adc b
    ld [de], a
    ld bc, $0505
    rrca
    dec b
    rlca
    inc e
    dec b
    inc e
    rlca
    sbc a

Jump_013_5b01:
    dec h
    ld l, e
    dec b
    dec b
    dec b
    dec b
    inc d
    inc d
    inc h
    ld l, e
    dec b
    dec b
    dec b
    dec b
    ld l, e
    dec b
    ld c, a
    ld c, a
    ld c, a
    dec b
    ld c, a
    ld c, a
    ld b, $01
    ld bc, $5501
    rlca

jr_013_5b1d:
    sbc h
    ld c, b
    ld d, $a1

jr_013_5b21:
    ld e, d
    inc de
    sbc [hl]
    ld c, h
    ld [$0000], sp
    jp c, Jump_013_4ce4

    ld [bc], a
    nop
    ld h, l
    daa
    ld [bc], a
    ld [$0265], sp
    ld [bc], a
    ld h, c
    ld h, d
    ld h, l
    ld h, c
    ld bc, $8462
    nop
    ld e, c
    inc b
    ld h, d
    ld h, c
    ld d, l
    ld h, d
    ld h, c

jr_013_5b43:
    dec h
    ld bc, $610a
    ld bc, $6301
    ld h, h
    ld d, l
    ld h, e
    nop
    ld h, h
    ld h, e
    ld h, h
    inc h
    ld bc, $6402
    ld d, l
    ld h, e
    daa
    nop
    inc b
    ld h, h
    ld d, l
    ld bc, $5501
    inc l
    nop
    nop
    ld h, h
    add h
    nop
    add d
    ld bc, $d3d2
    dec hl
    nop
    dec b
    ld c, $00
    call nc, $d2d5
    db $d3
    call nz, $b200
    ld b, $08
    add hl, de
    ld a, [bc]
    ld c, $00
    ld d, $00
    ld b, c
    call nc, $0ad5
    ld [$0a19], sp
    jp nc, $10d3

    ld hl, $1612
    nop
    rla
    ld h, d
    ld [$d606], sp
    rst $10
    db $10
    ld hl, $d612
    rst $10
    ld h, d
    db $10
    ld [bc], a
    rla
    nop
    nop
    ld h, d
    db $10
    add h
    nop
    ldh [$ff85], a
    nop
    ldh [$ff8f], a
    nop
    ldh [$ff3a], a
    ld [bc], a
    add e
    nop
    ld e, h
    nop
    ld h, c
    daa
    ld [bc], a
    nop
    ld h, c
    add h
    nop
    ld l, b
    ld bc, $6355
    add l
    ld bc, $8617
    nop
    ld l, b
    inc bc
    ld h, e
    nop
    push bc
    ld [bc], a
    add a
    ld bc, $8335
    ld bc, $042c
    push bc
    push bc
    nop
    ld h, c
    ld bc, $0188
    ld b, h
    ld bc, $c500
    ld [hl+], a
    nop
    daa
    ld bc, $6307
    nop
    nop
    push bc
    nop
    nop
    nop
    nop
    adc d
    ld bc, $8645
    ld bc, $006b
    ld h, e
    adc b
    nop
    add b
    nop
    push bc
    add l
    nop
    sbc d
    ld b, c
    ld [$860a], sp
    ld bc, $0086
    push bc
    add e
    nop
    and d
    ld b, c
    db $10
    ld [de], a
    daa
    nop
    ld [$d4c5], sp
    push de
    nop
    db $10
    db $e4
    and $12
    nop
    rst $00
    ld bc, $009f
    call nc, Call_000_1862
    inc b
    ld [de], a
    db $10
    jr @+$1b

    ld a, [bc]
    add h
    nop
    or a
    inc c
    ld c, $00
    sub $10
    ld hl, $1222
    db $10
    jr nz, jr_013_5c48

    ld [de], a
    nop
    rla
    ld [hl+], a
    push bc
    add h
    nop
    rst $18
    add e
    ld bc, $01d3
    ld de, $8612
    ld bc, $8d98
    ld bc, $00e0
    nop
    add h
    ld bc, $024f
    ld d, l
    ld bc, $2862
    ld [bc], a
    nop
    ld d, l

jr_013_5c48:
    add e
    ld bc, $043b
    ld h, h
    ld bc, $6162
    ld h, d
    add l
    nop
    ld c, [hl]
    ld [bc], a
    nop
    ld h, h
    ld h, e
    add [hl]
    nop
    adc b
    add e
    ld [bc], a
    dec b
    inc bc
    ld h, l
    ld [bc], a
    push bc
    push bc
    adc c
    nop
    add l
    inc bc
    ld h, d
    ld h, c
    ld bc, $8862
    ld bc, $86b7
    nop
    ld [hl], a
    nop
    adc b
    jp $8f01


    adc d
    nop
    add e
    ld bc, $008b
    adc e
    ld [bc], a
    ld d, c
    ld [bc], a
    nop
    ld h, h
    push bc
    call nz, $7f01
    inc b
    nop
    push bc
    push bc
    nop
    nop
    call Call_013_6e02
    rlc d
    add c
    inc hl
    nop
    add h
    ld bc, $ca92
    ld [bc], a
    sub l
    adc l
    ld bc, $01a2
    push bc
    nop
    add [hl]
    ld bc, $c5b2
    nop
    or d
    ld [bc], a
    jp nc, Jump_000_08d3

    add a
    ld bc, $01c2
    rla
    nop
    ld [hl+], a
    push bc
    ld bc, $d7d6
    add a
    ld bc, $00d1
    push bc
    add h
    ld bc, $00b9
    nop
    adc a
    ld bc, $88f0
    ld bc, $e4e0
    dec l
    ld [bc], a
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, l
    rlc b
    ld e, c
    rlca
    ld h, c
    ld bc, $0162
    ld h, d
    ld h, c
    ld bc, $8962
    ld bc, $8324
    nop
    ld [hl], c
    ld [bc], a
    ld bc, $6201
    add [hl]
    ld bc, $8435
    ld [bc], a
    db $10
    ld bc, $6400
    add [hl]
    ld bc, $0446
    ld h, h
    ld h, e
    nop
    ld h, h
    ld d, l
    add l
    nop
    add a
    ld [bc], a
    ld h, e
    ld h, h
    ld h, e
    ld h, d
    ld [$c501], sp
    push bc
    adc d
    ld [bc], a
    ld [hl], a
    add l
    nop
    db $ec
    nop
    ldh [$ff86], a
    nop
    and c
    inc b
    ld [$1a09], sp
    ld de, $8312
    nop
    and d
    ld h, e
    jp nc, Jump_000_0285

    push hl
    add hl, bc
    ld de, $0012
    call nc, Call_000_00d5
    call nc, Call_000_08d5
    add hl, bc
    add e
    nop
    ret


    inc bc
    ld de, $1122
    db $e4
    add l
    inc bc
    xor h
    ld h, d
    db $10
    ld bc, $d5d4
    adc b
    inc bc
    and a
    add h
    nop
    jp c, $d601

    rst $10
    add l
    inc bc
    and a
    ld [bc], a
    sub $08
    add hl, bc
    adc b
    nop
    ldh [rP1], a
    ld [hl+], a
    add l
    nop
    db $e3
    adc a
    inc bc
    ldh [rP1], a
    ld [bc], a
    sub $00
    ld d, [hl]
    nop
    ld h, c
    adc d
    ld [bc], a
    dec b
    add [hl]
    ld bc, $8334
    nop
    ld h, d
    add e
    nop
    ld d, [hl]
    nop
    ld h, c
    ld a, [hl+]
    ld bc, $0383
    ccf
    ld bc, $5501
    dec hl
    ld bc, $0385
    ld l, d
    add [hl]
    inc bc
    ld c, h
    ld [bc], a
    ld d, l
    ld bc, $8863
    ld [bc], a
    ld b, h
    add h
    nop
    add c
    nop
    ld h, h
    inc l
    push bc
    inc bc
    ld [$0a09], sp
    nop
    add l
    inc bc
    adc h
    ld [bc], a
    nop
    nop
    ldh [$ff86], a
    inc bc
    add [hl]
    adc e
    nop
    sbc a
    inc b
    db $10
    ld de, $d218
    db $d3
    add e
    inc bc
    sub [hl]
    nop
    push de
    add l
    nop
    and c
    ld [bc], a
    db $10
    ld de, $8320
    ld bc, $02b0
    ld de, $d522
    add e
    nop
    or c
    ld [bc], a
    nop
    nop
    and $86
    inc b
    xor [hl]
    ld [bc], a
    ld [de], a
    rst $10
    ld d, $84
    inc b
    cp b
    inc b
    db $10
    ld de, $0a20
    rst $10
    add h
    nop
    pop hl
    nop
    rla
    add h
    inc b
    ld a, l
    inc bc
    db $10
    ld de, $1220
    adc c
    nop
    ldh [$ff8f], a
    inc b
    db $db
    add h
    inc b
    xor e
    adc e
    inc b
    inc b
    add e
    nop
    ld l, c
    adc b
    inc b
    inc d
    add [hl]

jr_013_5de4:
    ld bc, $8635

jr_013_5de7:
    ld bc, $8827
    ld bc, $0042
    ld h, c
    call Call_013_5004
    inc l
    ld bc, $6302
    nop
    ld h, h
    adc l
    inc b
    ld b, a
    add a
    ld [bc], a
    ld c, b
    inc bc
    ld d, l
    ld h, e
    ld h, h

Jump_013_5e01:
    ld h, e
    adc c
    nop
    sub h
    dec b
    ld d, l
    ld h, e
    nop
    nop
    push bc
    nop
    sub c
    ld [bc], a
    ld a, b
    add h
    ld bc, $016b
    add hl, bc
    ld a, [bc]
    adc l
    ld [bc], a
    ld a, [hl]
    inc bc
    ld de, $0012
    push bc
    add h
    ld bc, $8669
    dec b
    and d
    add l
    ld bc, $04e7
    jp nc, $88d3

    jp nc, $87d3

    dec b
    sbc e
    rlca
    jp nc, $c5d3

    call nc, $8bd5
    call nc, $84d5
    ld bc, $839e
    inc bc
    jp c, $d703

    nop
    sub $d7
    add e
    dec b
    jp nc, Jump_000_0005

    sub $d7
    nop
    ld de, $2c12
    nop
    adc a
    dec b
    rst $18
    nop
    db $db
    rst $38
    ld de, $3e20
    rst $38
    inc bc
    rst $38
    ld h, b
    sub b
    jr jr_013_5de7

    ld b, b
    jr jr_013_5de4

    ld h, h
    cp a
    ld bc, $0101
    ld bc, $0201
    nop
    ld b, b
    ld d, $55
    ld e, [hl]
    inc de
    xor e
    ld c, h
    ld [$0000], sp
    add $22
    ld bc, $5407
    ld d, l
    ld bc, $5401
    nop
    nop
    inc b
    inc hl
    inc bc
    nop
    inc b
    ld [hl+], a
    ld bc, $5c04
    ld e, l
    ld bc, $5c01
    adc b
    nop
    add hl, bc
    add e
    nop
    inc b
    add e
    nop
    ld b, $00
    ld e, l
    add [hl]
    nop
    dec bc
    ld [bc], a
    ld e, h
    ld e, l
    ld bc, $0084
    ld de, $00c6
    ld de, $0105
    ld d, b
    ld bc, $5554
    ld d, b
    add e
    nop
    ld bc, $0085
    dec bc
    ld [bc], a
    ld d, h
    ret z

    db $db
    ld [hl+], a
    nop
    ld [bc], a
    ld d, l
    ld d, b
    ld d, h
    add [hl]
    nop
    ld a, [bc]
    add hl, bc
    dec bc
    jp z, Jump_000_0d0c

    nop
    nop
    dec bc
    inc c
    inc c
    dec c
    add l
    nop
    dec bc
    dec b
    inc de
    inc d
    inc d
    dec d
    adc h
    adc h
    add e
    nop
    ld [hl], c
    add l
    nop
    dec bc
    add hl, bc
    dec de
    inc e
    inc e
    jp c, Jump_000_0c0c

    ret c

    inc e
    inc e
    dec e

jr_013_5ee5:
    add $00
    jr nc, jr_013_5eea

    ld e, h

jr_013_5eea:
    nop

jr_013_5eeb:
    add e
    nop
    ld [hl], c

jr_013_5eee:
    ld [bc], a
    ld e, l

jr_013_5ef0:
    ld d, c
    ld e, h
    add a
    nop
    dec bc
    ld [$1b5c], sp
    inc e
    inc e
    dec e
    ld d, l
    ld bc, $c701
    db $e4
    ld d, e

Call_013_5f01:
    inc bc
    rst $38
    inc d
    inc e
    ld a, [hl-]
    ld a, [bc]
    scf
    nop
    inc c
    ld [bc], a
    rlca
    ld d, $01
    inc b
    rst $38
    add hl, bc
    ld c, $08
    rst $38
    jr z, jr_013_5eee

    ld e, b
    xor b
    add b
    ld e, b
    xor b
    jr c, jr_013_5ee5

    xor b
    jr c, @-$36

    add b
    jr c, jr_013_5eeb

    ld e, b
    xor b
    ld e, b
    jr c, jr_013_5ef0

    xor b
    ld e, b
    ret z

    xor b
    ld e, b
    xor b
    ld a, b
    ld e, b
    xor b
    ret c

    ld e, b
    jr c, jr_013_5f5d

    xor b
    xor b
    ld a, b
    jr z, jr_013_5f62

    ldh a, [$ffb0]
    add sp, -$78
    adc b
    xor b
    ret c

    ret c

    jr c, jr_013_5f7c

    ret z

    sbc b
    sbc b
    ret z

    add sp, $18
    ld e, b
    add sp, -$18
    ld l, b
    sbc b
    sbc b
    ld e, b
    ld e, b
    ld l, c
    ld e, c
    or a
    or a
    ld [de], a
    sbc [hl]
    sbc a
    jr @+$1a

    dec h
    ld a, [bc]

jr_013_5f5d:
    ld a, [bc]
    ld a, [de]
    inc d
    inc d
    or a

jr_013_5f62:
    or a
    or a
    ld l, e
    ld l, e
    or a
    inc h
    dec b
    or a
    or a
    or a
    ld bc, $2424
    ld d, $b7
    ld bc, $0103
    ld bc, $2705
    nop
    ld b, b
    ld d, $03
    ld e, a

jr_013_5f7c:
    inc de
    or d
    ld c, h
    ld [$0300], sp
    or [hl]
    nop
    nop
    ld d, l
    ld [hl+], a
    ld bc, $5403
    ld d, l
    ld bc, $245c
    nop
    ld bc, $005c
    add h
    nop
    ld bc, $5c02
    ld e, l
    ld bc, $0084
    add hl, bc
    rlca
    ld e, l
    ld bc, $665c
    nop
    nop
    ld d, l
    ld d, h
    add h
    nop
    inc bc
    ld b, $00
    db $e4
    ld e, l
    ld bc, $5455
    ld h, [hl]
    inc hl
    nop
    db $10
    xor a
    ld d, h
    ld d, l
    ld d, h
    nop
    nop
    and $55
    ld bc, $0c0c
    inc b
    inc c
    inc c
    ld l, b
    inc c
    inc c
    rst $00
    nop
    ld b, a
    inc h
    inc d
    ld [bc], a
    ldh [c], a
    inc d
    inc d
    rst $00
    nop
    ld d, a
    inc h
    inc e
    ld [bc], a
    adc $1c
    inc e
    rst $00
    nop
    ld h, a
    inc h
    nop
    inc bc
    sbc e
    nop
    dec bc
    dec c
    push bc
    nop
    halt
    nop
    ld e, l
    ld b, c
    ld e, l
    ld e, h
    ld b, $00
    sub e
    nop
    inc de
    dec d
    nop
    sub e
    add h
    nop
    inc e
    add e
    nop
    ld b, $07
    xor [hl]
    sbc e
    nop
    dec de
    dec e
    nop
    sbc e
    xor a
    add e
    nop
    rla

Jump_013_6002:
    dec bc
    ld bc, $005c
    ld d, l
    ld e, h
    sbc e
    dec bc
    inc c
    inc c
    dec c
    sbc e
    ld e, l
    dec h
    ld bc, $5c08
    ld e, l
    ld d, h
    sub e
    inc de
    inc d
    inc d
    dec d
    sub e
    add l
    nop
    dec h
    add e
    nop
    add hl, hl
    dec b
    sbc e
    dec de
    inc e
    inc e
    dec e
    sbc e
    ld h, d
    dec bc
    nop
    ld d, l
    add l
    nop
    ld b, $84
    nop
    ld a, d
    nop
    sbc e
    ld h, d
    inc de
    nop
    xor a
    add h
    nop
    ld d, $01
    xor [hl]
    sub e
    add e
    nop
    halt
    nop
    sub e
    ld h, d
    dec de
    add e
    nop
    sbc l
    rrca
    ld d, b
    ld d, h
    nop
    sbc e
    nop
    inc de
    dec d
    xor l
    sbc e
    nop
    nop
    ld e, l
    ld d, h
    ld d, l
    ld bc, $6254
    dec bc
    add e
    nop
    sub l
    ld [$9bac], sp
    nop
    nop
    ld d, l
    ld e, h
    ld e, l
    ld d, h
    nop
    ld h, d
    inc de
    dec b
    sub e
    ld e, l
    ld e, h
    xor l
    nop
    sub e
    add h
    nop
    ei
    ld bc, $0000
    ld h, d
    dec de
    ld [$559b], sp
    ld d, h
    ld d, l
    xor [hl]
    sbc e
    xor a
    ld d, c
    ld d, h
    add e
    nop
    inc e
    ld [bc], a
    ld e, h
    ld e, l
    xor [hl]
    add l
    nop
    and l
    add hl, bc
    nop
    ld d, l
    ld e, h
    xor l
    ld e, l
    ld e, l
    ld d, b
    ld d, h
    xor h
    nop
    add l
    nop
    or l
    dec b
    nop
    nop
    ld d, l
    ld d, b
    ld bc, $8354
    nop
    and [hl]
    add a
    nop
    push bc
    inc bc
    inc c
    dec c
    ld d, l
    nop
    add e
    nop
    or [hl]
    add e
    nop
    ld a, d
    ld bc, $9bad
    add e
    nop
    or [hl]
    add e
    ld bc, $0120
    inc e
    dec e
    add e
    nop
    push hl
    ld bc, $93ac
    add e
    nop
    add $25
    nop
    ld b, $9b
    xor l
    inc de
    dec d
    nop
    sbc e
    xor l
    ld h, $00
    inc bc
    ld h, [hl]
    nop
    sbc e
    xor h
    add e
    nop
    sub a
    nop
    xor h
    push bc
    ld bc, $8393
    nop
    add d
    add e
    nop
    and [hl]
    nop
    sub e
    add h
    ld bc, $05a0
    nop
    ld e, l
    ld bc, $0054
    sbc e
    add l
    ld bc, $8461
    nop
    jr @+$04

    ld d, l
    ld bc, $86ae
    nop
    call nz, $0183
    ld c, h
    dec b
    ld bc, $0000
    xor h
    nop
    nop
    add l
    nop
    push hl
    add h
    nop
    ld de, $0004
    dec bc
    inc c
    call z, $830d
    nop
    push af
    inc bc
    nop
    sbc e
    dec bc
    call z, $0189
    ld e, l
    ld bc, $1d1b
    add l
    ld bc, $01b4
    nop
    ld e, h
    add e
    ld bc, $8571
    ld bc, $84a5
    ld bc, $037b
    ld bc, $5c51
    nop
    add a
    ld bc, $03b4
    nop
    xor a
    ld e, h
    ld e, l
    add e
    nop
    ret nc

    add a
    nop
    call nz, Call_000_0d07
    ld e, l
    ld d, h
    ld d, l
    ld e, h
    ld e, l
    ld bc, $8650
    nop
    db $e4
    ld bc, $1513
    add e
    ld [bc], a
    cpl
    inc bc
    ld bc, $0b54
    dec c
    add l
    ld bc, $0085
    dec de
    add h
    nop
    db $ed
    inc bc
    ld bc, $13ae
    dec d
    add l
    ld bc, $8595
    nop
    db $fc
    ld [bc], a
    ld d, l
    ld e, h
    dec de
    add [hl]
    ld [bc], a
    inc b
    nop
    xor a
    add e
    nop
    and b
    inc bc
    xor [hl]
    nop
    ld d, l
    ld e, h
    add [hl]
    ld bc, $09b4
    xor a
    ld d, h
    ld d, l
    ld e, h
    nop
    ld e, h
    xor l
    ld e, l
    ld bc, $89ae
    nop
    push bc
    nop
    ld e, h
    add h
    nop
    ldh a, [$ff83]
    nop
    push hl
    ld bc, $93ad
    add h
    nop
    db $db
    add [hl]
    ld bc, $0300
    inc de
    dec d
    xor h
    sbc e
    add h
    nop
    db $eb
    ld [bc], a
    ld d, h
    nop
    inc de
    add a
    ld bc, $02f3
    nop
    ld e, l
    ld d, c
    add e
    nop
    add hl, de
    nop
    dec de
    add e
    ld bc, $c473

jr_013_61bf:
    nop
    adc l
    nop
    ld d, l
    add l
    nop
    xor [hl]
    add h
    nop
    db $d3
    inc bc
    xor l
    nop
    sbc e
    nop
    add [hl]
    nop
    xor e
    add e
    nop
    sub e
    add e
    ld [bc], a
    add d
    nop
    xor a
    daa
    ld bc, $5c02
    sbc e
    ld e, l
    add h
    ld [bc], a
    ldh a, [c]
    ld [hl+], a
    ld bc, $bf00
    rst $38
    ld l, $0c
    rla
    ld d, $13
    inc sp
    ld [hl-], a
    ld sp, $01ff
    dec b
    dec b
    dec b
    ld bc, $d8ff
    ld e, b
    ld hl, sp-$58
    xor b
    ld [$8868], sp
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ret z

    ld hl, sp-$78
    jr jr_013_61bf

    ld a, b
    jr c, @+$3a

    jr jr_013_6264

    ld l, b
    ld h, h
    ld h, h
    ld a, b
    jr c, jr_013_626e

    jr z, @+$2a

    jr z, jr_013_623e

    jr z, jr_013_6240

    add [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    ld d, b
    ld c, a
    ld c, a
    ld c, h
    ld d, b
    ld c, a
    sub h
    sub h
    sub d
    sub b
    sub d
    ld d, b
    dec b
    ld bc, $0101
    ld b, l
    ld bc, $4000
    ld d, $e7
    ld h, c
    inc de
    or [hl]
    ld c, h
    ld [$0000], sp
    cp [hl]
    ld l, $01
    inc bc

jr_013_623e:
    ld a, [hl-]
    dec sp

jr_013_6240:
    jp $2bc4


    ld bc, $4201
    ld b, e
    ld h, $01
    add [hl]
    nop
    ld [de], a
    inc bc
    ld [bc], a
    ld [bc], a
    add hl, hl
    dec sp
    add e
    nop
    daa
    ld bc, $3b3a
    add l
    nop
    inc h
    ld [hl+], a
    ld [bc], a
    inc bc
    ld b, e
    ld bc, $2d01
    add a
    nop
    rra

jr_013_6264:
    nop
    dec l
    inc hl
    ld [bc], a
    inc bc
    dec sp
    ld a, [hl-]
    ld [bc], a
    add hl, hl
    add e

jr_013_626e:
    nop
    ld d, d
    ld [bc], a
    dec sp
    ld a, [hl-]
    add hl, hl
    inc h
    ld [bc], a
    ld bc, $4243
    add l
    nop
    ld h, b
    add e
    nop
    ld h, h
    ld bc, $bbbb
    ld [hl+], a
    inc b
    add hl, hl
    cp e
    nop
    inc b
    cpl
    inc d
    cpl
    nop
    db $e4
    ld e, a
    inc bc
    ld sp, $8c01
    nop
    ld [de], a
    nop
    jp $018f


    dec bc
    nop
    call nz, Call_000_0085
    inc c
    ld bc, $0101
    ld [hl+], a
    inc b
    inc h
    ld bc, $008b
    ld b, h
    jp $3c00


    ld [bc], a
    ld bc, $023a
    ld [hl+], a
    inc b
    add l
    nop
    ld e, d
    inc b
    dec sp
    inc b
    inc b
    ld b, e
    dec l
    adc d
    nop
    ld h, l
    inc b
    ld b, e
    dec l
    ld b, d
    inc b
    inc b
    rlc b
    ld a, e
    ld bc, $bbbb
    ldh a, [$ff8f]
    nop
    add b
    nop
    call nz, $0192
    ld b, $83
    nop
    ld [hl], $8b
    nop
    ld b, $83
    nop
    ld e, $03
    dec l
    ld bc, $c4c3
    adc b
    ld bc, $003f
    ld a, [hl-]
    ld [hl+], a
    ret nz

    add $01
    ld d, b
    nop
    inc b
    add e
    nop
    ld d, a
    nop
    inc b
    ld [hl+], a
    ld [bc], a
    inc bc
    inc b
    ld bc, $3a01
    add e
    nop
    ld d, e
    add e
    ld [bc], a
    ld d, [hl]
    add h
    ld [bc], a
    ld d, l
    dec b
    inc b
    dec l
    ld b, d
    ld [bc], a
    ld b, e
    ld b, d
    add l
    ld bc, $f076
    sbc c
    ld bc, $9376
    ld [bc], a
    ld [de], a
    sub e
    ld bc, $0300
    ld a, d
    ld bc, $3b3a
    add a
    ld bc, $001c
    ld a, d
    add h
    ld bc, $074b
    ld b, d
    ld b, e
    ld a, d
    dec l
    ld bc, $3b01
    ld a, d
    add e
    nop
    ld e, e
    inc h
    inc b
    rlca
    ld [bc], a
    add hl, hl
    ld [bc], a
    dec sp
    ld a, d
    ld b, e
    dec l
    ld b, d
    ld a, [hl+]
    inc b
    ld [bc], a
    ld b, e
    dec l
    cp e
    dec l
    inc b
    nop
    inc b
    ldh a, [$ff97]
    ld [bc], a
    add b
    ld bc, $c4c3
    sub d
    ld bc, $0009
    dec l
    adc e
    ld [bc], a
    ld c, $22
    dec b
    nop
    ld [bc], a
    ret z

    ld bc, $0a50
    dec l
    ld bc, $4305
    cp h

jr_013_635f:
    ld b, d
    dec b
    ld b, e
    ld bc, $293a

jr_013_6365:
    add h
    nop
    ld e, c
    add hl, bc
    ld [bc], a
    add hl, hl
    dec b
    ret nz

    ld a, b
    ret nz

    dec b
    ld [bc], a
    dec sp
    ld b, d
    add a

jr_013_6374:
    nop
    ld l, b
    nop
    ld [bc], a
    ld [hl+], a
    ret nz

    inc bc
    ld [bc], a
    ld [bc], a
    ld b, e
    inc b
    ld a, [hl+]
    cp e
    ldh a, [rNR43]
    ld bc, $007c
    or a
    db $e4
    ld e, a
    inc bc
    rst $38
    ld d, $0c
    ld bc, $133a
    inc [hl]
    nop
    rst $38
    dec b
    rlca
    inc b
    inc bc
    nop
    rlca
    rlca
    ld bc, $78ff
    sbc b
    ld e, b
    sbc b
    ld e, b
    xor b
    ld hl, sp-$08
    xor b
    ld l, b
    xor b
    ld hl, sp+$48
    adc b
    ld c, b
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    ret c

    ld l, b
    ld l, b
    jr c, jr_013_63ec

    jr c, @+$0a

    cp b
    adc b
    add sp, -$78
    jr jr_013_6374

    cp b
    jr @+$5a

    ld l, b
    ld c, b
    ld c, b
    ld l, b
    ld hl, sp-$28
    ret c

    ld hl, sp-$18
    xor b
    adc b
    xor b
    add sp, -$08
    ld hl, sp+$48
    ld e, b
    ld l, b
    adc b
    jr c, jr_013_640c

    adc b
    jr z, jr_013_635f

    ret z

    jr z, @+$3a

    ret z

    jr c, jr_013_6365

    adc b
    adc b
    ret z

    ld c, a
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    rlca
    rlca
    or a
    or a
    ld c, a
    ld c, a
    ld l, b

jr_013_63ec:
    ld c, a
    ld c, a
    rlca
    or a
    daa
    ld c, a
    ld h, $96
    rlca
    or a
    or a
    ld c, a
    rlca
    or a
    ld c, a
    or a
    or a
    rlca
    sub [hl]
    rlca
    or a
    xor a
    inc b
    ld [bc], a
    ld bc, $3401
    rla
    inc de
    ld d, b
    rla
    adc e

jr_013_640c:
    ld h, e
    inc de
    cp l
    ld c, h
    ld [$0001], sp
    and h
    db $e4
    dec hl
    ld bc, $9c02
    sbc b
    sbc c
    inc h
    ld bc, $0084
    ld l, $02
    sbc b
    sbc c
    sbc b
    ld [hl+], a
    nop
    add h
    nop
    ld sp, $0004
    sbc e
    ld bc, $9801
    ld [hl+], a
    nop
    add [hl]
    nop
    dec a
    dec b
    sbc d
    add b
    and c
    ld bc, $8098
    adc c
    nop
    ld c, d
    inc b
    sbc b
    and e
    ld bc, $9a01
    dec h
    nop
    inc bc
    sbc e
    ld bc, $9c01
    add h
    nop
    ld b, h
    nop
    and b
    dec h
    nop
    nop
    and c
    add e
    nop
    ld c, b
    nop
    and e
    add h
    nop
    ld d, b
    inc b
    sbc a
    nop
    nop
    sbc a
    sbc e
    add l
    nop
    ld c, b
    add l
    nop
    cpl
    ld [bc], a
    sbc d
    sbc e
    ld bc, $0087
    ld h, [hl]
    nop
    and c
    add hl, hl
    ld bc, $0084
    ld l, b
    nop
    sbc c
    jp z, Jump_000_2d00

    ld bc, $00a2
    adc b
    nop
    sub c
    ld bc, $9998
    add a
    nop
    sbc l
    nop
    sbc a
    add e
    nop
    ld b, [hl]
    nop
    sbc [hl]
    add h
    nop
    sub e
    nop
    sbc b
    add l
    nop
    push de
    add h
    nop
    pop hl
    ld b, $00
    sbc e
    sbc b
    sbc [hl]
    nop
    nop
    sbc e
    add [hl]
    nop
    sub [hl]
    ld [bc], a
    sbc l
    ld bc, $289d
    ld bc, $9800
    add l
    nop
    ld l, d
    adc [hl]
    ld bc, $8d00
    ld bc, $8300
    nop
    and l
    ld [bc], a
    sbc [hl]
    sbc c
    ld bc, $0088
    halt
    inc bc
    sbc e
    ld bc, $0101
    add l
    nop
    and h
    inc bc
    sbc d
    nop
    nop
    sbc e
    add h
    nop
    sbc e
    inc bc
    ld bc, $9b9f
    ld bc, $0087
    ld [hl], b
    add h
    nop
    ld sp, $0184
    inc b
    adc b
    nop
    sub d
    ld bc, $a201
    adc b
    nop
    xor l
    add h
    ld bc, $0130
    sbc b
    nop
    adc l
    ld bc, $0122
    sbc d
    ld [hl], a
    adc c
    ld bc, $8423
    nop
    db $f4
    nop
    and [hl]
    adc b
    nop
    cp a
    ld bc, $a59b
    add e
    nop
    inc sp
    nop
    and l
    add [hl]
    nop
    ld b, a
    ld [$9d9b], sp
    ld bc, $01a5
    sbc b
    nop
    sbc e
    and l
    add l
    nop
    add a
    add e
    nop
    and l
    dec b
    and l
    ld bc, $009a
    sbc c
    and l
    add l
    nop
    xor l
    ld [bc], a
    and a
    ld bc, $8401
    ld bc, $01b9
    nop
    sub a
    push bc
    ld bc, $8303
    ld bc, $05cf
    sub [hl]
    sbc [hl]
    nop
    nop
    add hl, bc
    ccf
    dec h
    ld bc, $0183
    xor d
    nop
    ld [hl], a
    ld [hl+], a
    nop
    ld bc, $0724
    db $e4
    jr nz, jr_013_6549

    adc e

jr_013_6549:
    nop
    ld l, $87
    nop
    ld b, c
    ld [bc], a
    ld bc, $9e98
    add a
    nop
    and h
    dec b
    and d
    nop
    and c
    ld bc, $9e98
    adc c
    nop
    sub c
    ld bc, $9b00
    add e
    nop
    ld c, b
    adc c
    nop
    jp $9b00


    add e
    nop
    ret nz

    adc d
    ld bc, $0094
    sbc c
    add h
    ld bc, $8807
    ld bc, $0347
    ld bc, $9e00
    nop
    adc e
    nop
    and c
    dec b
    sbc b
    sbc e
    sbc d
    nop
    sbc a
    sbc a
    add a
    ld [bc], a
    ld a, b
    rlca
    ld bc, $9a01
    ld bc, $9d01
    ld bc, $2da5
    ld bc, $0101
    and l
    ret nc

    ld [bc], a
    or e
    adc c
    nop
    daa
    inc b
    sbc b
    sbc c
    ld bc, $a501
    add [hl]
    ld bc, $83f3
    nop
    ld a, h
    ld [bc], a
    add hl, bc
    nop
    sbc c
    add l
    ld [bc], a
    db $d3
    add [hl]
    ld [bc], a
    ld b, h
    dec bc
    dec h
    nop
    nop
    sbc [hl]
    sub a
    sbc h
    ld bc, $9601
    nop
    nop
    nop
    add e
    ld [bc], a
    sub h
    adc l
    nop
    rst $38
    ld bc, $039b
    adc l
    inc bc
    ld bc, $0101
    inc bc
    adc l
    inc bc
    ld de, $0385
    ld e, $02
    sbc h
    ld bc, $87a0
    nop
    and c
    nop
    inc bc
    add h
    nop
    ld b, c
    nop
    sbc c
    add a
    inc bc
    daa
    ld bc, $0301
    add h
    nop
    jp c, Jump_000_0083

    ld e, c
    nop
    add b
    add h
    nop
    db $f4
    inc bc
    inc bc
    sbc b
    nop
    nop
    adc e
    ld [bc], a
    ld d, h
    inc bc
    inc bc
    and d

Jump_013_6600:
    nop
    nop
    adc d
    ld [bc], a
    ld h, h
    ld bc, $0398
    adc l
    inc bc
    ld [hl], c
    ld b, $00
    inc bc
    sbc a
    nop
    nop
    sbc e
    sbc d
    add a
    nop
    and d
    ld [bc], a
    and d
    nop
    inc bc
    add h
    nop
    sbc d
    ld [bc], a
    sbc d
    sbc e
    sbc d
    add l
    nop
    ld l, a
    ld [bc], a
    nop
    inc bc
    ld bc, $008d
    rst $38
    nop
    inc bc
    adc [hl]
    nop
    cp b
    nop
    inc bc
    sub a
    inc bc
    nop
    ld [bc], a
    ld bc, $9f9a
    adc d
    inc bc
    dec de
    ld bc, $9998
    add [hl]
    nop
    sbc b
    inc b
    inc bc
    nop
    nop
    sbc a
    sbc e
    adc e
    ld [bc], a
    dec de
    add h
    ld bc, $8a57
    ld [bc], a
    inc sp
    nop
    sbc e
    add [hl]

Call_013_6654:
    inc b
    inc de
    add e
    inc b
    nop
    nop
    ld bc, $038b
    ldh [rP1], a
    sbc e
    dec l
    ld bc, $9d00
    sbc c
    ld [bc], a
    ld c, $00
    ld bc, $048d
    ld [de], a
    adc d
    ld bc, $8901
    inc b
    inc bc
    ld bc, $9e98
    adc b
    ld [bc], a
    ld [hl], a
    dec b
    sbc b
    sbc [hl]
    nop
    and e
    ld bc, $849a
    nop
    sub e
    nop
    ld e, a
    add a
    ld bc, $0205
    sbc c
    ld bc, $839d
    nop
    sbc e
    ld [bc], a
    sub l
    ld bc, $2501
    dec c
    ld bc, $9923
    call nz, Call_000_3503
    ld [bc], a
    sub l
    ld bc, $269c
    db $10
    add h
    inc b
    or h
    inc bc
    sbc b
    sub l
    sbc [hl]
    nop
    add hl, hl
    db $10
    inc h
    dec c
    nop
    ld c, $2e
    stop
    ld de, $048f
    ldh [$ff87], a
    ld bc, $03f0
    and b
    add hl, bc
    ccf
    add hl, bc
    add [hl]
    nop
    ld c, h
    nop
    and l
    add h
    ld bc, $02d8
    inc h
    rlca
    dec h
    adc c
    dec b
    inc c
    inc bc
    sub [hl]
    sbc [hl]
    nop
    nop
    adc b
    nop
    ld c, d
    inc bc
    and l
    sbc b
    sbc [hl]
    ld [hl], a
    adc e
    inc bc
    ld [hl], d
    ld bc, $9aa5
    add e
    dec b
    add hl, bc
    ld b, c
    sbc e
    sbc d
    add l
    nop
    di
    nop
    and l
    add e
    dec b
    jr @-$79

    nop
    and $07
    sbc c
    ld bc, $01a5
    ld bc, $0096
    nop
    add a
    nop
    db $dd
    add h
    ld bc, $05cd
    and [hl]
    nop
    nop
    nop
    nop
    and e
    add [hl]
    nop
    ret nz

    inc bc
    and l
    ld bc, $969c
    add e
    nop
    jp Jump_000_0386


    ld b, h
    ld bc, $a500
    add a
    dec b
    ld [$9b07], sp
    sbc d
    nop
    ld [hl+], a
    ld c, $00
    nop
    and l
    add l
    dec b
    jr jr_013_6730

    sbc a
    sbc e
    ld bc, $00a0
    rrca
    ld de, $9304

jr_013_6730:
    sub [hl]
    adc c
    ld bc, $0509
    sbc d
    rrca
    ld de, $7a78
    ld [hl], a
    adc d
    nop
    jp $0f06


    db $10
    dec c
    dec c
    ccf
    inc c
    inc hl
    adc b
    dec b
    ld h, h
    nop
    inc h
    ld [hl+], a
    inc de
    ld [bc], a
    ld b, b
    rrca
    ld de, $058b
    add h
    inc bc
    nop
    ld b, b
    rrca

jr_013_6758:
    ld de, $002f
    dec b
    add hl, bc
    ccf
    add hl, bc
    sbc c
    ld bc, $86a6
    inc b
    scf
    add h
    ld bc, $03fb
    dec h
    sbc e
    ld bc, $85a5
    ld bc, $00e4
    ld bc, $0184
    ld b, a
    ld bc, $019d
    rst $00
    dec b
    rla
    nop
    sbc b
    add [hl]
    ld [bc], a
    ld a, c
    ld bc, $969c
    add l
    ld [bc], a
    ldh [c], a
    nop
    sbc d
    add [hl]
    inc b
    add c
    inc b
    add hl, bc
    ccf
    add hl, bc
    and c
    and l
    add [hl]
    nop
    jr z, jr_013_6758

    ld [bc], a
    add e
    inc b
    inc h
    rlca
    dec h
    sbc c
    and l
    adc d
    ld bc, $8322
    nop
    adc e
    add e
    dec b
    inc de
    nop
    ld bc, $038a
    ld [hl], d
    adc h
    ld b, $6b
    nop
    sbc c
    add [hl]
    ld b, $36
    ld [bc], a
    nop
    inc c
    inc hl
    add l
    ld [bc], a
    ld a, [$0683]
    ld b, [hl]
    dec b
    sbc c
    and l
    ld bc, $0f04
    ld de, $0386
    adc b
    add hl, bc
    inc h
    rlca
    dec h
    and e
    and l
    ld bc, $0f78
    ld de, $8800
    nop
    adc $08
    nop
    sub a
    ld bc, $100d
    ld de, $0000
    sbc [hl]
    add a
    ld [bc], a
    ld [hl], b
    inc b
    ld [hl], a
    sbc c
    inc de
    inc de
    dec h
    push bc
    ld [bc], a
    add l
    ld [hl+], a
    nop
    inc bc
    ld [hl+], a
    ld c, $3f
    inc c
    dec hl
    nop
    inc bc
    rrca
    ld de, $0f40
    adc a
    ld b, $e0
    add h
    ld [bc], a
    inc sp
    ld [bc], a
    sbc [hl]
    nop
    and e
    ret z

    inc bc
    ld h, $01
    sbc b
    sbc [hl]
    adc c
    nop
    jp $0103


    ld bc, $9e03
    add a
    ld b, $63
    add l
    rlca
    nop
    ld b, $03
    sbc a
    nop
    sbc e
    sbc d
    sbc e
    sbc d
    add a
    ld [bc], a
    ld [hl-], a
    ld bc, $039b
    adc c
    nop
    db $fd
    dec b
    sbc d
    sbc e
    sbc d
    sbc e
    ld bc, $2e03
    ld bc, $0388
    rrca
    add l
    nop
    or a
    ld bc, $0398
    adc b
    inc b
    ld [de], a
    add l
    ld bc, $007a
    inc bc
    adc d
    inc b
    ld [hl+], a
    add l
    inc bc
    xor e
    nop
    ld e, a
    add a
    inc bc
    and e
    ld bc, $7b98
    add h
    inc bc
    cp h
    nop
    sub l
    adc b
    inc b
    ld [de], a
    nop
    ld a, c
    add a
    rlca
    sbc h
    inc b
    sbc h
    ld bc, $9801
    ld [hl+], a
    dec h
    dec c
    dec b
    inc bc
    ld bc, $0195

jr_013_686a:
    sbc b
    ld [hl+], a
    ret


    inc b
    call c, $0300
    call $dd04
    ld bc, $0310
    inc hl
    db $10
    add e
    rlca
    call nc, $07d2
    and $22
    db $10
    ld bc, $0390
    rst $38
    inc e
    add hl, sp
    inc c
    rst $38

jr_013_6889:
    ld [bc], a
    inc b
    rlca
    inc bc
    inc bc
    rst $38
    jr c, jr_013_6889

    cp b
    cp b
    ld l, b
    ld l, b
    ld e, b
    ld [$f808], sp
    ld hl, sp-$58
    xor b
    cp b
    add sp, $48
    jr c, @-$66

    db $10
    ld c, b
    ld l, b
    jr z, @+$6a

    ld l, b
    jr z, jr_013_68f1

    jr z, jr_013_6913

    jr z, jr_013_6915

    ld l, b
    jr z, jr_013_68e8

    ld c, b
    ld c, b
    ld c, b
    jr c, jr_013_68fd

    ld e, c
    and e
    dec h
    ld c, e
    dec h
    ld c, e
    dec h
    dec h
    dec h
    ld c, e
    ld c, e
    dec h
    dec h
    and e
    jr z, jr_013_6910

    jr z, jr_013_686a

    dec h
    dec b
    ld bc, $0101

jr_013_68cc:
    ld b, l
    ld bc, $4000
    ld d, $85

jr_013_68d2:
    ld l, b
    inc de
    jp z, Jump_000_084c

    nop
    nop
    add $24
    inc b
    add hl, hl
    and a
    nop
    inc b
    adc h
    nop
    ld bc, $ec00
    add [hl]
    nop
    rrca

jr_013_68e8:
    dec bc
    pop af
    ld hl, sp-$07
    and a
    ldh a, [$fff1]
    ld hl, sp-$04

jr_013_68f1:
    add sp, -$13
    inc b
    inc b
    ld [hl+], a
    add a
    rla
    add sp, -$0b
    ld a, [$eefb]

jr_013_68fd:
    db $f4
    push af
    ld a, [$e8f6]
    rst $30
    inc b
    inc b
    add l
    cp h
    add l
    add sp, -$18
    rst $28
    di
    ldh a, [c]
    add sp, -$18
    rst $28

jr_013_6910:
    ld [hl+], a
    add sp, $04

jr_013_6913:
    inc b
    inc b

jr_013_6915:
    add e
    res 0, e
    ld [hl+], a
    add sp, $07
    rst $30
    or $e8
    add sp, $04
    add l
    add l
    cp h
    dec h
    inc b
    dec h
    add sp, $03
    inc b
    dec l
    dec l
    sla l
    inc b
    ld [hl+], a
    jp hl


    add $00
    ld a, b
    cpl
    inc d
    cpl
    nop
    db $e4
    ld e, a
    inc bc
    dec [hl]
    and a
    nop
    db $ec
    adc b
    nop
    rla
    add a
    nop
    jr z, jr_013_68cc

    nop
    jr z, @-$77

    nop
    jr c, jr_013_68d2

    nop
    jr c, @-$77

    nop
    ld c, b
    add a
    nop
    ld c, b
    inc b
    add l
    add l
    inc b
    add sp, -$18
    add [hl]
    nop
    ld d, l
    inc hl
    add sp, $02
    dec l
    dec l
    inc b
    inc l
    add sp, $02
    inc b
    inc b
    inc b
    inc l
    jp hl


    ldh a, [$ffcf]
    nop
    add b
    ld [bc], a
    rst $30
    or $e8
    add [hl]
    ld bc, $3553
    add sp, $22
    jp hl


    ldh a, [$ffe5]
    ld bc, $0273
    inc b
    inc b
    inc b
    ldh a, [$ffda]
    ld [bc], a
    ld e, h
    inc h
    inc b
    adc c
    ld bc, $063c
    inc b
    inc b
    add a
    db $eb
    add a
    inc b
    inc b
    adc b
    ld bc, $0655
    inc b
    inc b
    add l
    ld a, b
    add l
    inc b
    inc b
    ldh a, [rSTAT]
    ld [bc], a
    ld e, l
    nop
    or a
    db $e4
    ld e, a
    inc bc
    rst $38
    ld de, $3e08
    rst $38
    inc b
    nop
    rst $38
    adc b
    ld a, b
    sbc b
    jr z, @+$5a

    ld l, b
    ld l, b
    jr z, jr_013_69f5

    inc e
    inc e
    pop bc
    ld [bc], a
    ld bc, $0101
    ld b, $02
    ld b, $67
    dec d
    and a
    ld l, c
    inc de
    jp c, Jump_000_084c

    nop
    nop
    inc d
    cpl
    inc bc
    ld l, $04
    add l
    nop
    db $10
    ld [hl+], a
    rlca
    rlc b
    daa
    nop
    rlca
    ld [hl+], a
    ld b, $c9
    nop
    scf
    ld bc, $0707
    inc hl
    ld b, $c9
    nop
    ld b, a
    ld a, [hl+]
    ld b, $83
    nop
    ld e, $00
    rlca
    add e
    nop
    ld e, h
    ld bc, $0406
    ret z

jr_013_69f5:
    nop
    ld h, a
    add e
    nop
    ld e, e
    ld b, c
    rlca
    inc h
    inc b
    rlca
    inc b
    ld b, $0e
    ld b, $85
    nop
    ld l, a
    add [hl]

jr_013_6a07:
    nop
    dec [hl]
    ld [bc], a
    ld b, $0c
    ld b, $83
    nop
    rra
    adc b
    nop
    ld d, c
    ld [bc], a
    inc b
    inc b
    inc b
    adc h
    nop
    adc a
    jp $1400


    db $e4
    ld d, l
    inc bc
    inc h
    nop
    rst $00
    ld bc, $c70a
    ld bc, $c712
    ld bc, $c71a
    ld bc, $c722
    ld bc, $c72a
    ld bc, $c732
    ld bc, $c73a
    ld bc, $c742
    ld bc, $f84a
    ld c, h
    ld bc, $0052
    inc de
    ldh a, [$ff5e]
    ld bc, $ff11
    rra
    jr c, jr_013_6a89

    rst $38
    inc bc
    rst $38
    xor b
    ld d, b
    jr z, @+$5a

    ld d, h
    jr z, jr_013_6a07

    and c
    rst $00
    ld bc, $0101
    ld bc, $0204
    ld b, $67
    dec d
    ld c, b
    ld l, d
    inc de
    pop hl
    ld c, h
    ld [$0000], sp
    inc d
    db $e4
    ld [hl+], a
    inc bc
    ld [hl+], a
    inc b
    nop
    inc bc
    jp z, $2600

    nop
    inc b
    ld [hl+], a
    rlca
    nop
    inc b
    ret


    nop
    ld [hl], $01
    inc b
    rlca
    ld [hl+], a
    ld b, $03
    ld l, $06
    ld b, $0e
    add [hl]
    nop
    ld a, [hl-]

jr_013_6a89:
    ld [$0604], sp
    ld [$0609], sp
    jr nz, jr_013_6a97

    ld b, $0c
    rst $00
    nop
    ld d, e
    ld [bc], a

jr_013_6a97:
    ld b, $0a
    dec bc
    add e
    nop
    ld d, [hl]
    ld bc, $060f
    add a
    nop
    dec sp
    ld [hl+], a
    ld b, $03
    inc b
    ld b, $06
    ld b, $f8
    ld [hl-], a
    nop
    inc sp
    nop
    inc de
    db $e4
    ld d, b
    inc bc
    rst $38
    ld [de], a
    ld a, $11
    rst $38
    inc bc
    rst $38
    jr c, jr_013_6ad4

    ld h, b
    ld [hl], b
    ld [$4a28], sp
    cp l
    dec a
    ld bc, $0101
    ld bc, $0101
    add $5a
    dec d
    or h
    ld l, d
    inc de
    add sp, $4c
    ld [$0100], sp

jr_013_6ad4:
    ld a, [hl]
    dec hl
    ld b, e
    ld bc, $0300
    ld a, [hl+]
    nop
    inc bc
    inc bc
    call z, Call_000_0d00
    ld [bc], a
    nop
    inc bc
    inc bc
    sub $00
    dec e
    ld bc, $0d2c
    adc l
    nop
    rla
    ld bc, $1513
    adc l
    nop
    rlca
    ld bc, $9a98
    adc e
    nop
    rla
    nop
    add d
    adc [hl]
    nop
    ld b, h
    inc bc
    sub d
    nop
    inc de
    dec d
    adc b
    nop
    rla
    nop
    add hl, bc
    ld b, c
    ld a, [bc]
    inc b
    nop
    dec b
    ld b, c
    inc b
    ld a, [bc]
    nop
    inc b
    call nz, $8000
    nop
    ld de, $1244
    stop
    ld a, a
    db $e4
    ld h, e
    inc bc
    rst $38
    ld a, [de]
    ld a, $1f
    rst $38
    inc bc
    rst $38
    adc b
    ld [$7068], sp
    ld [$5748], sp
    add $81
    ld bc, $0101
    ld bc, $0101
    add e
    ld e, l
    rla
    ld hl, $136b
    rst $28
    ld c, h
    ld [$0000], sp
    xor d
    ld a, [hl+]
    ld b, $23
    inc bc
    ld [bc], a
    ld b, $07
    ld c, c
    inc hl
    ld bc, $4803
    ld c, c
    ld bc, $8605
    nop
    dec bc
    rlca
    ld h, b
    ld d, h
    ld c, c
    ld c, b
    ld d, h
    ld h, c
    ld h, b
    ld d, h
    add a
    nop
    ld a, [de]
    rlca
    ld a, [hl+]
    ld h, e
    daa
    cpl
    ld h, e
    add hl, hl
    ld a, [hl+]
    ld h, e
    adc b
    nop
    ld a, [hl+]
    ld b, $75
    dec hl
    inc hl
    nop
    add hl, hl
    ld a, [hl+]
    nop
    adc b
    nop
    ld a, [hl+]
    nop
    ld a, l
    adc [hl]
    nop
    ld b, h
    nop
    nop
    adc l
    nop
    ld b, h
    inc bc
    ld [hl-], a
    inc sp
    inc l
    inc h
    ld h, e
    jr nc, jr_013_6b89

jr_013_6b89:
    dec b
    rst $08
    nop
    db $10
    adc a
    nop
    ld a, e
    nop
    xor e
    db $e4
    ld h, e
    inc bc
    rst $38
    add hl, de
    ld de, $ff3e
    inc bc
    rst $38
    adc b
    ld h, b
    jr @+$72

    jr z, jr_013_6baa

    ld d, l
    inc a
    call nz, $0101
    ld bc, $0101

jr_013_6baa:
    ld bc, $5ac6
    dec d
    sub [hl]
    ld l, e
    inc de
    or $4c
    ld [$0100], sp
    ld a, [hl]
    ld a, [hl+]
    ld b, e
    nop
    ld bc, $2b03
    nop
    inc bc
    inc bc
    call z, Call_000_0d00
    ld [bc], a
    nop
    inc bc
    inc bc
    sub $00
    dec e
    ld bc, $2d0b
    adc l
    nop
    rla
    ld bc, $1513
    adc l
    nop
    rlca
    ld bc, $9a98
    sub b
    nop
    scf
    nop
    add d
    adc e
    nop
    add hl, bc
    inc bc
    inc de
    dec d
    nop
    sub d
    add [hl]
    nop
    add hl, de
    nop
    add hl, bc
    ld b, c
    dec b
    ld [$0501], sp
    inc b
    ld b, c
    dec b
    ld [$00c4], sp
    add b
    nop
    ld de, $1244
    stop
    ld a, a
    db $e4
    ld h, e
    inc bc
    rst $38
    rra
    ld d, $0c
    rst $38
    rlca
    ld b, $04
    rst $38
    jr z, jr_013_6c34

    ld l, b
    add sp, -$58
    add sp, -$58
    xor b
    add sp, $28
    jr z, jr_013_6c7e

    ret z

    jr z, jr_013_6c81

    ld [$5848], sp
    ld l, b
    ld l, b
    ld l, b
    ld e, b
    ld h, b
    ld h, b
    ld e, b
    ld l, b
    ld h, b
    ld e, b
    ld l, b
    ld h, b
    ld e, b
    ld l, b
    ld h, b
    ld h, b
    and b
    and b
    and b
    and b
    and b
    ld c, a
    ld c, a
    and b

jr_013_6c34:
    and b
    ld c, a
    and b
    and b
    ld c, e
    and b
    and b
    jr nz, jr_013_6c5e

    inc bc
    ld bc, $0101
    inc h
    inc bc
    inc de
    ld d, b
    rla
    ld [bc], a
    ld l, h
    inc de
    db $fd
    ld c, h
    ld [$0201], sp
    sub d
    db $10
    ld de, $0f62
    ld bc, $100f
    add [hl]
    nop
    ld bc, $1001
    db $10
    adc a
    nop

jr_013_6c5e:
    ld bc, $0098
    ld bc, $2003
    inc de
    ld hl, $2320
    inc de
    nop
    ld hl, $0085
    ld a, [hl-]
    nop
    jr @+$27

    ld a, b
    inc bc
    adc a
    adc [hl]
    adc d
    sub h
    dec hl
    adc d
    inc bc
    adc a
    adc [hl]
    adc d
    ld a, d

jr_013_6c7e:
    dec hl
    adc d
    add hl, bc

jr_013_6c81:
    dec c
    dec c
    rra
    ld e, $0d
    rra
    ld e, $0d
    dec c
    ld d, $25
    ld a, b
    adc c
    nop
    db $10
    add l
    nop
    ld [hl], e
    nop
    db $10
    ldh a, [$ff2e]
    nop
    ld bc, $3fe4
    inc bc
    add [hl]
    nop
    dec b
    nop
    db $10
    adc e
    nop
    inc b
    nop
    ld de, $0083
    dec a
    nop
    ld hl, $0086
    ld b, $88
    nop
    ld b, [hl]
    nop
    rla
    add h
    ld bc, $0017
    jr jr_013_6ce5

    ld a, b
    ld bc, $1317
    cpl
    ld a, b
    ccf
    adc d
    cpl
    ld a, b
    nop
    ld d, $2c
    ld a, b
    ld [bc], a
    dec d

jr_013_6cc9:
    dec c
    ld de, $0088
    halt
    inc bc
    dec d
    dec c
    dec c
    rra
    adc b
    nop

jr_013_6cd5:
    add e
    inc bc
    dec c
    dec c
    rra
    rrca
    add h
    nop
    db $10
    adc [hl]
    ld bc, $f000
    ld b, b
    nop
    cp a

jr_013_6ce5:
    adc a
    nop
    or c
    adc a
    nop
    or c
    adc a
    nop
    or c
    inc b
    inc de
    ld hl, $1320
    ld hl, $008a
    or [hl]
    adc b
    ld bc, $8525
    nop
    ld a, [hl-]
    nop
    inc bc
    adc d

Jump_013_6d00:
    ld bc, $0366

jr_013_6d03:
    ld a, h
    ld a, b
    ld a, [de]
    rlca
    adc e
    ld [bc], a
    ld c, a
    inc b
    ld a, d
    ld a, b
    ld a, [de]
    rlca
    inc bc
    adc b
    ld bc, $8595
    nop
    ld [hl], e
    dec b
    inc bc
    dec c
    rra
    ld e, $0d
    rra
    adc d
    ld [bc], a
    dec b
    ldh a, [$ff2d]
    ld [bc], a
    nop
    nop
    sub b
    db $e4
    ld b, b
    inc bc
    rst $38
    ld d, $00
    scf

jr_013_6d2d:
    ld b, $22
    inc c
    rst $38
    inc bc
    ld bc, $0202
    dec b
    inc b
    ld b, $03
    rst $38
    jr c, jr_013_6d74

    ret c

    sbc b
    ld e, b
    jr c, jr_013_6cc9

    ld [hl], b
    sbc b
    jr z, jr_013_6d2d

    sbc b
    sbc b
    ret c

    ld l, b
    jr c, jr_013_6d03

    jr jr_013_6cd5

    and b
    cp b
    ret nc

    ld c, b
    xor b
    cp b
    ld e, b
    jr c, jr_013_6d7e

    ret c

    cp b
    sbc b
    ld l, b
    ld e, b
    ret nc

    ret c

    cp b
    sbc b
    ret nz

    xor b
    sbc b
    ld l, b
    ld l, b
    sbc b
    ret nz

    sbc b
    sbc b
    sbc b
    sbc b
    ret nz

    ld l, b
    ld l, b
    ld e, b
    ld l, e
    inc bc
    xor a
    xor a
    xor a
    or h

jr_013_6d74:
    rrca
    ld c, a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h

jr_013_6d7e:
    ld l, h
    jr nz, jr_013_6ded

    ld l, h
    ld l, h
    ld l, h
    ld hl, $6c6c
    rrca
    ld [$0101], sp
    ld bc, $0775
    ld d, b
    ld [hl], h
    dec d
    ld a, [hl+]
    ld l, l
    inc de
    ld a, [bc]
    ld c, l
    ld [$0001], sp
    add $25
    nop
    nop
    ld e, [hl]
    ld [hl+], a
    ld bc, $5900
    inc hl
    ld bc, $5e01
    ld e, l
    add a
    nop
    inc bc
    ld [bc], a
    ld e, e
    nop
    ld e, h
    inc h
    ld bc, $5d04
    nop
    nop
    nop
    ld e, h
    add l
    nop
    rra
    add h
    nop
    inc e
    ld bc, $ce5b
    add [hl]
    nop
    inc hl
    ld [bc], a
    ld e, d
    ld e, l
    ld e, [hl]
    add e
    nop
    ld e, $85
    nop
    ld de, $0125
    adc h
    nop
    dec e
    daa
    ld bc, $5b01
    nop
    add [hl]
    nop
    inc hl
    nop
    ld e, e
    adc b
    nop
    inc e
    nop
    ld e, [hl]
    add h
    nop
    inc a
    nop
    ld e, l
    add e
    nop
    ld b, a
    add e
    nop
    ld a, c
    nop
    ld e, [hl]

jr_013_6ded:
    jr nc, jr_013_6df0

    nop

jr_013_6df0:
    ld e, e
    add a
    nop
    ld d, a
    nop
    ld e, h
    add a
    nop
    ld c, l
    nop
    ld e, h
    add e
    nop
    ld l, h
    ld bc, $5c5b
    add e

Call_013_6e02:
    nop
    xor b
    adc b
    nop
    ld h, b
    nop
    ld e, e
    dec h
    nop
    ld [bc], a
    ld e, h
    ld e, c
    ld e, e
    jr z, jr_013_6e11

jr_013_6e11:
    cpl
    inc l
    cpl
    ld hl, $c42f
    ccf
    ld bc, $5b01
    ld e, h
    adc h
    nop
    sub e
    inc bc
    ld bc, $005d
    ld e, h
    adc h
    nop
    add c
    ld bc, $005b
    adc l
    nop
    add l
    ld [bc], a
    ld e, l
    nop
    ld e, h
    daa
    ld bc, $008f
    ld a, [hl]
    ld bc, $5c5b
    adc l
    nop
    sub d
    ld bc, $5e5d
    add a
    nop
    and d
    nop
    ld e, c
    add a
    nop
    sub c
    inc b
    ld e, c
    ld e, e
    ld bc, $5b59
    add l
    nop
    inc hl
    add hl, bc
    ld e, e
    ld e, h
    ld e, e
    nop
    ld c, $2c
    inc l
    ld e, e
    nop
    nop
    adc b
    nop
    cp b
    inc bc
    ld c, $2d
    ld hl, $8321
    ld bc, $019c
    inc l
    rrca
    add h
    ld bc, $01b0
    inc l
    dec l
    ld [hl+], a
    call nz, $0183
    xor h
    inc b
    jp $c0d8


    db $db
    push bc
    add [hl]
    nop
    db $ed
    add e
    ld bc, $04bc
    inc e
    dec de
    nop
    dec h
    inc h
    daa
    call nz, $018f
    pop de
    adc [hl]
    ld bc, $84d1
    nop
    ccf
    adc c
    nop
    ld d, h
    ld bc, $011a
    adc l
    ld [bc], a
    nop
    ld [bc], a
    ld a, [de]
    ld bc, $8359
    nop
    rra
    adc b
    nop
    ld b, h
    ld bc, $5b08
    adc e
    nop
    ld [hl], $86
    nop
    daa
    adc h
    nop
    sub b
    add [hl]
    nop
    dec sp
    ld [bc], a
    ld e, e
    ld e, h
    ld e, e
    add e
    nop
    jp nz, Jump_013_5b01

    ld bc, $0288
    ld d, h
    dec h
    nop
    nop
    ld e, c
    add a
    nop
    ld e, $86
    ld bc, $07b1
    nop
    ld e, h
    ld e, e
    ld e, h
    ld e, c
    ld e, e
    nop
    nop
    add a
    ld bc, $8bc0
    ld bc, $83b4
    ld bc, $8bd4
    ld bc, $83c4
    ld bc, $87d4
    ld bc, $8fd4
    ld [bc], a
    xor b
    add [hl]
    ld bc, $00e0
    inc c
    adc [hl]
    ld [bc], a
    or b
    nop
    ld c, $9e
    ld [bc], a
    or b
    ld bc, $2425
    ld l, $c4
    adc a
    inc bc
    nop
    nop
    ld [de], a
    inc hl

Jump_013_6f00:
    add hl, de
    ld a, [hl+]
    call nz, Call_000_0800
    inc hl
    ld de, $1200
    add hl, hl
    add hl, de
    add l
    ld [bc], a
    ld a, [hl+]
    nop
    ld d, $22
    ld [$1402], a
    inc d
    rla
    ld [hl+], a
    ld de, $0084
    inc e
    inc b
    ld e, c
    ld e, e
    xor $00
    xor $84
    nop
    inc h
    nop
    ld e, b
    add e
    nop
    xor b
    ld [bc], a
    ld e, e
    ld c, $2c
    ld [hl+], a
    db $ec
    ld bc, $0f2c
    add e
    ld bc, $2483
    inc l
    nop
    dec l
    inc h
    ld hl, $2b05
    rrca
    nop
    nop
    ld e, h
    push bc
    adc c
    nop
    db $ec
    ld bc, $463c
    ld [hl+], a
    ld l, $8a
    ld bc, $01d8
    inc a
    dec sp
    ld [hl+], a
    ld b, $8f
    inc bc
    sub b
    nop
    rst $18
    jr z, @+$1b

    ld [bc], a
    call nz, Call_013_433c
    ld [hl+], a
    ld b, $02
    inc d
    inc d
    ld [$1426], a
    dec bc
    dec d
    call nz, $574b
    ld b, $06
    inc l
    inc l
    db $ec
    inc l
    rrca
    ld c, $83
    ld bc, $0eb3
    dec e
    inc h
    call nz, $4c4b
    ld c, h
    push bc
    ld hl, $c321
    dec de
    dec h
    push bc
    jp $831b


    inc bc
    reti


    inc bc
    call nz, $4141
    inc h
    add e
    ld bc, $06d2
    dec h
    inc h
    inc e
    dec de
    nop
    dec e
    inc h
    db $e4
    inc sp
    call nz, $1901
    add hl, de
    call $2e03
    ld bc, $1111
    ret z

    inc bc
    jr nz, jr_013_6fa8

jr_013_6fa8:
    db $10
    inc hl
    ld de, $0102
    ld bc, $8608
    inc b
    ld b, d
    inc b
    db $10
    add hl, bc
    ld bc, $5801
    add h
    ld [bc], a
    dec bc
    add h
    ld bc, $06d8
    inc e
    jr @+$03

    ld bc, $5c5b
    ld e, e
    adc e
    inc b
    ld h, b
    add e
    nop
    ld h, e
    inc b
    adc d
    adc h
    cpl
    scf
    ld b, h
    add h
    inc bc
    add a
    ld bc, $8b36
    inc hl
    ld l, $04
    ld b, $76
    ld [hl], b
    ld d, b
    ld [hl-], a
    inc hl
    add hl, sp
    ld [bc], a
    jr nc, jr_013_7036

    ld [hl], l
    inc h
    ld b, $03
    ld [hl], h
    rlca
    rlca
    ld d, b
    inc hl
    ld sp, $5102
    ld [hl], c
    ld [hl], e
    dec h
    ld b, $01
    ld [hl], h
    ld [hl], c
    inc hl
    rlca
    ld bc, $7371
    add hl, hl
    ld b, $02

Call_013_7000:
    ld [hl], h
    ld [hl], e
    ld [hl], h
    adc b
    inc b
    cp c
    cpl
    ld c, h
    cpl
    ld b, c
    db $e4
    ccf
    call nz, Call_000_192d
    ld bc, $c4c4
    ld [hl+], a
    ld de, $1600
    add a
    inc bc
    ld c, b
    add e
    inc b
    ld b, b
    add e
    ld bc, $018c
    xor $ee
    add a
    nop
    ld d, l
    ld bc, $1208
    add e
    ld [bc], a
    ld [hl], a
    add a
    inc bc
    ld l, b
    add e
    ld [bc], a
    inc c
    ld [bc], a
    nop
    ld c, $2d
    adc b

jr_013_7036:
    inc bc
    ld [hl], a
    add e
    ld [bc], a
    inc c
    ld [bc], a
    ld l, $47
    ld b, h
    adc b
    inc bc
    add a
    add e
    inc b
    add b
    ld bc, $4506
    add l
    inc b
    add h
    rlca
    dec sp
    halt
    ld [hl], l
    ld b, $06
    halt
    rlca
    ld d, b
    adc b
    dec b
    sub b
    ld b, $74
    ld [hl], c
    ld [hl], d
    ld [hl], l
    ld [hl], h
    rlca
    rlca
    add a
    dec b
    sub b
    nop
    ld b, e
    add e
    inc b
    jp nz, Jump_000_0604

    ld [hl], h
    ld [hl], c
    ld d, [hl]
    ld c, l
    dec h
    call nz, Call_013_4b01
    ld d, a
    dec h
    ld b, $00
    ld c, l
    daa
    call nz, Call_013_4b00
    dec h
    ld c, h
    add hl, hl
    call nz, $0485
    ld [$47e4], a
    call nz, $05ce
    scf
    nop
    db $10
    ld h, $11
    nop
    ld d, $89
    inc b
    ld d, h
    add l
    ld bc, $8b8a
    inc b
    ld h, h
    add e
    ld [bc], a
    ld [hl], a
    adc e
    inc b
    ld [hl], h
    add e
    ld bc, $8bab
    inc b
    add h
    add e
    dec b
    add b
    adc h
    inc b
    sub h
    ld [bc], a
    ld b, l
    ld b, h
    call nz, Call_000_0488
    and h
    ld b, c
    halt
    ld [hl], l
    dec b
    ld b, l
    ld b, h
    call nz, $0707
    ld [hl], b
    add l
    inc b
    or a
    ld b, $74
    rlca
    rlca
    ld [hl], e
    ld b, l
    ld b, h
    call nz, Call_000_0489
    call nz, Call_013_7405
    ld [hl], e
    ld d, [hl]
    ld c, l
    call nz, $2bc4
    ld c, h
    inc bc
    ld c, l
    call nz, $c4c4
    ldh a, [rWX]
    inc b
    db $e4
    inc bc
    call nz, $c4c4
    call nz, Call_000_05cf
    inc a
    ld bc, $1f14
    inc h
    ld de, $1e00
    add h
    inc bc
    pop bc
    ld [bc], a
    dec d
    call nz, $84c4
    nop
    jp nz, Jump_000_0083

    cp h

jr_013_70f5:
    ld [bc], a
    xor $00
    ld e, a
    add e
    ld bc, $28d6
    inc l
    ld b, $ec

Jump_013_7100:
    inc l
    or b
    inc l
    dec l
    call nz, $8cc4
    nop
    db $e3
    db $e4
    add c
    call nz, $c700
    rst $38
    dec b
    inc b
    rlca
    ld [bc], a
    rst $38
    ld bc, $0005
    ld bc, $0004
    rst $38
    ldh [$ff88], a
    ld e, b
    jr z, jr_013_7178

    ret nc

    ldh [$ff88], a
    jr z, jr_013_70f5

    ld e, b
    jr z, jr_013_7180

    adc b
    ld e, b
    ld hl, sp+$28
    ret z

    sbc b
    sbc b
    ret z

    ld l, b
    dec c
    pop de
    dec c
    ld a, [de]
    jp nc, $1ad2

    dec c
    jp nc, Jump_000_1ad1

    inc bc
    ld [bc], a
    inc bc
    ld bc, $161e
    inc de
    ld d, b
    rla
    rrca
    ld [hl], c
    inc de
    ld de, $084d
    ld bc, $0304
    inc bc
    sub d
    db $10
    ld de, $0f62
    nop
    rrca
    add l
    nop
    inc bc
    dec b
    db $10
    inc bc
    inc bc
    db $10
    db $10
    inc d
    ld h, d
    ld [de], a
    dec bc
    ld [de], a
    inc de
    ld hl, $1320
    ld hl, $1320
    inc bc
    inc bc
    inc de
    inc d
    inc h
    or d
    nop
    xor a
    inc hl
    cp l
    ld [$b2ac], sp

jr_013_7178:
    inc bc
    inc bc
    dec c
    ld c, $b2
    or d
    or b
    add e

jr_013_7180:
    nop
    jr z, jr_013_7193

    xor h
    xor l
    xor h
    or d
    or d
    inc bc
    inc bc
    db $10
    ld de, $b0b2
    or b
    inc c
    jp nz, $07c3

jr_013_7193:
    ld [$0662], sp
    nop
    ld b, $83
    nop
    jr nz, jr_013_71be

    or b
    inc bc
    dec bc
    xor c
    xor b
    or c
    inc h
    or e
    add e
    nop
    jr nc, jr_013_71ad

    or b
    and a
    and [hl]
    add hl, bc
    xor e

jr_013_71ad:
    xor d
    inc hl
    or e
    ld bc, $b6b7
    add e
    nop
    ld b, b
    rrca
    and a
    and l
    and l
    ld a, [bc]
    cp h
    cp h
    xor d

jr_013_71be:
    inc c
    ld [$0706], sp
    jp nz, $0303

    inc de
    ld hl, $a522
    nop
    pop bc
    ld [hl+], a
    cp h
    ld [$aec1], sp
    xor a
    cp l
    cp l
    inc bc
    inc bc
    dec c
    push bc
    ld [hl+], a
    and l
    nop
    ret nz

    ld [hl+], a
    cp h
    inc b
    ret nz

    cp l
    cp l
    and l
    cp l
    add e
    nop
    ld b, b
    dec bc
    and l
    and l
    sub [hl]
    ld a, [bc]
    xor c
    xor b
    xor c
    ld a, [bc]
    cp l
    and l
    and l
    call nz, Call_000_0084
    add b
    ld [bc], a
    sub [hl]
    or b
    dec bc
    ld [hl+], a
    or c
    nop
    dec bc
    add e
    nop
    add h
    add h
    nop
    sub b
    ld [bc], a
    and [hl]
    or b
    add hl, bc
    ld [hl+], a
    or c
    inc b
    add hl, bc
    sub a
    and l
    and l
    ret nz

    adc e
    nop
    or b
    ld bc, $97b0
    add l
    nop
    cp [hl]
    inc bc
    sub [hl]
    or b
    or b
    add b
    ld [hl+], a
    or c
    inc b
    add b
    or b
    and a
    and l
    add $83
    nop
    ld b, b
    nop
    or b
    add [hl]
    nop
    push hl
    dec b
    and a
    and l
    and l
    add $11
    rrca
    dec h
    db $10
    add a
    nop
    inc bc
    ld bc, $1214
    ld h, $13
    inc b
    ld hl, $1320
    inc d
    ld [de], a
    add l
    nop
    ld [hl+], a
    inc bc
    xor a
    cp l
    xor [hl]
    xor a
    add e
    nop
    dec hl
    ld bc, $b2b2
    adc c
    nop
    inc h
    ld [hl+], a
    cp l
    nop
    xor [hl]
    inc hl
    or d
    ld [bc], a
    rlca
    ld [$2406], sp
    rlca
    add a
    nop
    ld c, b
    ld bc, $b7b3
    ld h, $be
    nop
    or h
    add h
    nop
    ld l, d
    nop
    cp [hl]
    add l
    ld bc, $0151
    or h
    or l
    add [hl]
    ld bc, $0159
    cp [hl]
    jp $0183


    ld b, a
    nop
    rlca
    add l
    nop
    ld c, d
    inc bc
    rlca
    jp nz, $c5c3

    add l
    ld bc, $0136
    xor a
    xor [hl]
    add e
    ld bc, $8324
    nop
    adc b
    inc l
    cp l
    inc bc
    cp h
    cp h
    ret nz

    jp nz, Jump_000_0184

    ld [hl], b
    add h
    ld bc, $00a0
    push bc
    ld [hl+], a
    cp h
    nop
    ld a, [bc]
    ld [hl+], a
    cp h
    ld [bc], a
    cp [hl]
    or h
    or l
    inc h
    cp [hl]
    add h
    nop
    add a
    add e
    ld bc, $0fb1
    or e
    or e
    or l
    cp [hl]
    and l
    cp [hl]
    cp [hl]
    ret nz

    cp h
    xor b
    xor c
    ret nz

    cp h
    cp h
    xor b
    add hl, bc
    ld [hl+], a
    add b
    inc de
    ret z

    and l
    and l
    cp [hl]
    dec bc
    xor b
    or c
    or c
    dec bc
    cp h
    cp h
    xor d
    ld a, [bc]
    nop
    nop
    sbc e
    ld a, [bc]
    and l
    and l
    sub [hl]
    add h
    nop
    rst $20
    add hl, bc
    cp h
    cp h
    xor b
    dec bc
    nop
    ld a, e
    and c
    pop bc
    and l
    sub [hl]
    add l
    nop
    and $87
    nop
    dec b
    nop
    db $10
    ld h, $00
    add [hl]
    nop
    dec d
    adc b
    ld [bc], a
    rlca
    ld bc, $b2b2
    add e
    ld bc, $028b
    cp h
    jr nz, jr_013_731a

    add a
    ld [bc], a
    add hl, de
    nop
    xor a
    add h
    ld bc, $019a
    call nz, Call_000_260d
    nop
    add h
    ld bc, $02a8
    xor b
    xor c

jr_013_731a:
    rrca
    add a
    ld [bc], a
    ld [$be22], sp
    inc b
    pop de
    xor b
    or c
    or c
    ld [de], a
    add a
    ld [bc], a
    jr z, jr_013_7331

    and l
    cp [hl]
    cp [hl]
    ret nc

    or c
    or c
    xor e

jr_013_7331:
    inc c
    add a
    ld [bc], a
    jr c, jr_013_733c

    and l
    and l
    cp [hl]
    ld a, [bc]
    or c
    xor e

jr_013_733c:
    cp h
    adc b
    ld [bc], a
    ld b, a
    ld b, $a5
    and l
    sub [hl]
    dec bc
    or c
    xor c
    xor b
    adc c
    ld [bc], a
    ld d, a
    nop
    sub [hl]
    add h
    nop

jr_013_734f:
    add $89
    ld [bc], a
    ld h, a
    dec b
    and [hl]
    or b
    ld a, [bc]
    xor e
    xor d
    xor e
    adc d
    ld [bc], a
    ld [hl], a
    inc b
    and [hl]
    ret


    cp h
    xor b
    xor c
    adc c
    ld [bc], a
    ld d, a
    inc bc
    and l
    and l

jr_013_7369:
    ret z

    xor b
    adc d
    ld [bc], a
    sub l
    nop
    sub a
    jp $bd00


    adc d
    ld [bc], a
    ld d, l
    inc bc
    or b
    sub a
    sub [hl]
    add b
    adc e
    ld [bc], a
    sub h
    add [hl]
    nop
    db $f4
    adc b
    ld [bc], a
    ld b, a
    add [hl]
    nop
    ld d, b
    ld [$ab80], sp

jr_013_738a:
    xor d
    or c
    add b
    sub a
    and l
    and l
    add $84
    nop
    ld h, b
    rlca
    or b
    and a
    add hl, bc
    cp h
    cp h
    xor d
    add hl, bc
    and a
    add l
    nop
    call Call_000_1405
    or b
    or b
    sub a
    dec bc
    xor c
    call nz, $8900
    ld bc, $c996
    add l
    inc bc
    db $10
    add hl, bc
    or b
    add hl, bc
    or c
    xor c
    cp h
    ret nz

    and l
    sub [hl]
    or b
    ret z

    add [hl]
    nop
    ldh a, [$ff83]
    ld [bc], a
    ld [hl], e
    nop
    ld a, [bc]
    ld h, d
    and l
    nop
    jr nz, jr_013_734f

    nop
    ld d, b
    nop
    xor e
    push bc
    nop
    adc c
    nop
    cp [hl]
    adc c
    inc bc

jr_013_73d3:
    db $10
    jp $9800


    ld bc, $bebe
    add h
    nop
    ldh a, [rTMA]
    and a
    and l
    ld a, [bc]
    cp l
    cp h
    cp h
    jr nz, jr_013_7369

    nop
    ld c, b
    add h
    nop
    ld d, b
    ld a, [bc]
    sub a
    and l
    pop bc
    cp l
    cp l
    cp h
    xor h
    xor l
    cp l
    cp l
    xor [hl]
    add l
    nop
    ld h, b
    inc b
    and l
    ret nz

    cp l
    cp l
    xor h
    add h
    nop
    jr z, jr_013_738a

    nop

Call_013_7405:
    ld [hl], b
    ld [bc], a
    jr nz, jr_013_73d3

    res 0, l
    ld bc, $8679
    nop
    add b

jr_013_7410:
    add h
    ld bc, $8358
    ld bc, $83b5
    nop
    sub b
    ld bc, $a5a5
    add a
    ld bc, $0158
    cp [hl]
    or h
    add e
    nop
    db $10
    inc bc
    push bc
    call nz, $0e0d
    ld h, d
    inc c
    rlca
    inc c
    dec c
    push bc
    call nz, Call_000_030d
    inc bc
    db $10
    adc h
    nop
    inc bc
    cpl
    inc bc
    add hl, bc
    cp h
    xor b
    or c
    add hl, bc
    sbc e
    ld a, c
    ld bc, $a5c0
    and [hl]
    add l
    nop
    and $0a
    cp l
    xor d
    xor e
    jr nz, jr_013_7410

    add hl, de
    jp $a521


    and l
    and [hl]
    add h
    nop
    rst $00
    jr z, @-$41

    ld b, $a5
    and l
    pop bc
    xor d
    xor e
    xor d
    ret


    add e
    nop
    dec hl
    inc bc
    xor l
    cp l
    cp l
    cp l
    add [hl]
    nop
    sub h
    nop
    ret z

    add l
    nop
    ld c, b
    add h
    ld bc, $06a0
    ld hl, $bcbc
    cp [hl]
    ld a, [bc]
    cp [hl]
    or h
    adc b
    ld bc, $0550
    cp [hl]
    cp h
    cp [hl]
    or h
    dec bc
    or h
    add h
    inc bc
    cp d
    add [hl]
    ld bc, $03b3
    or h
    or e
    add hl, bc
    ld b, $84
    ld bc, $8640
    inc b
    ld b, d
    ld [bc], a
    ld [$1406], sp
    add l
    nop
    daa
    inc bc
    xor [hl]
    or d
    or d
    xor l
    add l
    ld bc, $0082
    xor [hl]
    add [hl]
    nop
    add hl, hl
    add l
    inc b
    add a
    ld bc, $bdbd
    add h
    ld bc, $8871
    inc b
    ld [hl], h
    inc bc
    jp nz, $b4c3

    or l
    add [hl]
    ld bc, $8657
    ld bc, $0150
    or e
    or a
    add [hl]
    inc b
    or e
    ld bc, $b5b3
    add h
    inc b
    ld h, l
    ld bc, $0c0e
    dec h
    dec c
    add a
    inc bc
    sub $8f
    ld bc, $2f00
    inc bc
    ld b, $b0
    and a
    and [hl]
    add b
    or c
    xor e
    xor d
    adc b
    ld [bc], a
    ld d, a
    ld b, $a7
    and l
    and l
    add hl, bc
    xor e
    cp h
    cp h
    adc d
    ld [bc], a
    ld h, a
    add e
    nop
    add [hl]
    nop
    xor b
    adc e
    ld [bc], a
    or a
    inc bc
    ret nz

    cp h
    xor b
    or c
    adc e
    dec b
    rla
    ld [bc], a
    ld a, [bc]
    cp h
    xor d
    adc c
    ld [bc], a
    or $05
    sub a
    and l
    and l
    ret


    cp h
    xor b
    adc h
    ld [bc], a
    sub $01
    ret z

    xor b
    adc l
    ld [bc], a
    push hl
    inc bc
    ld a, [bc]
    xor d
    xor e
    xor d
    adc b
    ld [bc], a
    ld b, a
    nop
    or d
    add e
    nop
    ld d, l
    adc d
    ld [bc], a
    dec h

jr_013_7528:
    inc b
    and [hl]
    or b
    or b
    add hl, bc
    xor e
    adc e
    ld [bc], a

jr_013_7530:
    dec [hl]
    dec b
    ld [$1406], sp
    cp h
    cp h
    cp [hl]

jr_013_7538:
    adc d
    ld [bc], a
    ld b, a
    ld b, $b6
    or a
    xor b
    or l
    or h
    ld [de], a
    inc de
    adc c
    ld [bc], a
    ld c, c
    add e
    ld bc, $8859
    ld [bc], a
    ld h, a
    add l
    inc bc
    push de
    nop
    call nz, $0288
    rlca
    add a
    nop
    dec b
    nop
    sub b
    ld [hl], $00
    rst $38
    ld b, $07
    dec b
    inc h
    ld d, $22
    inc c
    inc e
    rst $38
    inc bc
    ld b, $0f
    ld b, $ff
    ld a, b
    ld a, b
    ld a, b
    cp b
    jr c, jr_013_7528

    ld e, b
    sbc b
    jr c, jr_013_75ac

    cp b
    ld a, b
    jr c, jr_013_7530

    cp b
    jr c, @+$6a

    adc b
    ld a, b
    cp b
    jr c, jr_013_7538

    jr c, jr_013_75fa

    ld a, b
    ld a, b
    ld a, b
    ld a, b
    cp b
    jr c, jr_013_75f1

    sbc b
    ret z

    cp b
    ld c, b
    ld c, b
    sbc b
    sbc b
    cp b
    sub b
    sub b
    ld [$2828], sp
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ret z

    ret z

    ret z

    ld hl, sp-$08
    xor b
    cp b
    ret c

    ret z

    ld b, b
    add b
    add b
    rrca
    ld a, [de]
    dec c
    ld a, d
    ld c, a
    ld c, a

jr_013_75ac:
    ld a, c
    ld a, c
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    inc [hl]
    inc [hl]
    inc [hl]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld e, c
    ld a, d
    ld a, d
    ld a, d
    ld bc, HeaderLogo
    ld bc, $3704
    nop
    ld b, b
    ld d, $5c
    ld [hl], l
    inc de
    jr jr_013_761f

    ld [$0000], sp
    add $2d
    inc b
    ld bc, $0403
    adc a
    nop
    ld bc, $0400
    inc h
    ld bc, $5003
    ld d, h
    nop
    ld d, l
    add $00
    inc hl
    inc b
    ld bc, $5401
    ld d, l
    ld d, h
    ld [hl+], a

jr_013_75f1:
    nop
    nop
    ld e, l
    add a
    nop
    dec hl
    ld [bc], a
    ld d, h
    nop

jr_013_75fa:
    nop
    ld [hl+], a
    sub b
    adc c
    nop
    add hl, hl
    nop
    ld e, h
    ld h, $00
    ld bc, $5455
    add h
    nop
    dec c
    add l
    nop
    dec [hl]
    add h
    nop
    ld d, e
    add l
    nop
    dec c
    inc b
    sub b
    sub b
    sub b
    inc b
    inc b
    ret


    nop
    halt
    nop
    ld d, h
    add h

jr_013_761f:
    nop
    jr c, @+$04

    ld bc, $5c51
    add [hl]
    nop
    ld l, e
    ld a, [bc]
    nop
    nop
    ld e, l
    ld d, h
    ld d, l
    ld d, b
    ld d, h
    ld d, l
    ld d, h
    nop
    nop
    adc b
    nop
    dec c
    ld bc, $9090
    ret


    nop
    and [hl]
    ld [bc], a
    ld d, c
    ld bc, $8501
    nop
    add d
    add $00
    ld h, e
    add e
    nop
    ld h, $06
    nop
    nop
    ld d, l
    ld d, b
    ld d, h
    nop
    ld e, l
    sub h
    nop
    ld l, l
    add e
    nop
    ld d, d
    inc b
    ld d, l
    ld bc, $0054
    nop
    add [hl]
    nop
    rlc l
    ld d, b
    ld d, h
    nop
    xor l
    nop
    xor h
    add e
    nop
    ld d, a
    add l
    nop
    cp h
    dec b
    sub b
    ld h, [hl]
    sub b
    inc b
    sub b
    ld h, [hl]
    ret


    ld bc, $0506
    ld h, [hl]
    sub b
    ld h, [hl]
    inc b
    ld h, [hl]
    sub b
    reti


    ld bc, $0616
    nop
    ld e, l
    ld d, c
    inc b
    ld e, l
    ld d, c
    xor [hl]
    add e
    ld bc, $8735
    nop
    xor l
    add e
    nop
    ld b, c
    inc bc
    inc b
    ld bc, $5c01
    add a
    nop
    dec l
    rlca
    inc b
    xor h
    nop
    nop
    inc b
    ld d, l
    ld bc, $9401
    nop
    sbc l
    inc b
    ld bc, $0101
    ld e, h
    nop
    adc e
    nop
    scf
    add e
    ld bc, $0372
    xor l
    nop
    xor a
    ld bc, $018a
    ld a, e
    inc b
    ld bc, $5c01
    ld e, l
    ld d, h
    add a
    nop
    ld e, e
    ld h, $01
    adc b
    nop
    adc d
    inc bc
    ld d, l
    ld d, b
    ld bc, $8354
    ld bc, $00a2
    xor [hl]
    add a
    nop
    adc h
    ld bc, $ac00
    add e
    nop
    add $01
    ld d, h
    nop
    push bc
    ld bc, $4332
    sub b
    ld h, [hl]
    adc d
    ld bc, $020a
    sub b
    ld h, [hl]
    sub b
    db $db
    ld bc, $86e6
    nop
    ld h, l
    ld bc, $5dad
    add [hl]
    ld bc, $012d
    ld e, h
    ld e, l
    add e
    nop
    add a
    add a
    nop

Call_013_7700:
    ld a, [hl-]
    ld [bc], a

Jump_013_7702:
    ld e, l
    ld bc, $8501
    ld bc, $01b5
    ld bc, $8954
    ld bc, $027d
    ld e, l
    ld bc, $8701
    ld bc, $2a4a
    ld a, d
    add [hl]
    nop
    dec e
    inc bc
    ld a, d
    ld bc, $7a01
    reti


    ld [bc], a
    ld d, [hl]
    nop
    ld bc, $00c4
    daa
    ld b, c
    ld d, h
    ld d, l
    add $00
    jp nz, $ae01

    ld d, l
    add h
    ld bc, $0295
    ld e, h
    nop
    ld d, l
    add a
    ld bc, $05bd
    ld d, l
    ld bc, $0150
    ld bc, $8854
    nop
    adc e
    add e
    ld bc, $01c3
    ld d, l
    ld d, h
    rst $00
    ld [bc], a
    inc b
    ld a, [hl+]
    sub b
    add l
    nop
    db $fd
    add h
    nop
    ld b, l
    reti


    ld [bc], a
    add $00
    ld e, h
    add hl, hl
    nop
    add a
    nop
    ld a, l
    rlca
    nop
    ld e, l
    ld e, h
    xor l
    nop
    nop
    ld e, l
    ld e, h
    add a
    ld bc, $03bd
    ld e, l
    ld bc, $0101
    adc b
    ld [bc], a
    add hl, de
    ld [hl+], a
    ld h, [hl]
    inc h
    inc b
    ld [bc], a
    ld a, d
    ld a, d
    ld a, d
    adc a
    inc bc
    dec c
    add h
    nop
    dec c
    inc b
    xor l
    nop
    nop
    ld d, l
    ld bc, $01cb
    sub a
    rlca

jr_013_778b:
    ld e, h
    nop
    nop
    xor h
    ld d, l
    ld d, h
    ld d, l
    ld d, b
    sub [hl]
    ld bc, $8f5b
    nop
    and d
    nop
    ld d, h
    inc h
    nop
    inc b
    xor l
    nop
    nop
    ld d, l
    ld bc, $0189
    db $fd
    nop
    ld d, c
    add h
    inc bc
    ld b, d
    adc h
    inc bc
    dec c
    add l
    ld [bc], a
    cp d
    pop de
    inc bc
    sbc [hl]
    inc bc
    nop

jr_013_77b6:
    nop
    nop
    ld d, l
    adc h
    ld bc, $83a6
    nop

jr_013_77be:
    ld e, b
    ld [bc], a
    cp h
    ld d, h
    ld d, l
    adc e
    ld [bc], a
    sbc d
    ld b, $00
    ld a, b
    nop
    nop
    nop
    nop
    nop

jr_013_77ce:
    ld hl, sp+$20
    nop
    ld hl, $c701
    nop
    rst $38
    rrca
    scf
    ld bc, $040d
    inc de

jr_013_77dc:
    ld d, $25
    inc e
    rst $38
    ld b, $0e
    inc c

jr_013_77e3:
    rst $38
    or b
    ld b, b
    sub b
    ldh [rSVBK], a
    jr nz, jr_013_778b

    ld d, b
    jr c, jr_013_77ce

    ldh [$ffb0], a
    ldh [$ffe0], a
    ldh [$ff60], a
    add b
    sbc b
    jr nz, jr_013_7830

    ldh [$ffe0], a
    or b
    ld b, b
    jr c, jr_013_77b6

    sub b
    ld [hl], b
    ret nz

    jr nc, @+$52

    ret z

    sbc b
    sbc b
    ld hl, sp-$48
    ret z

    ld h, b
    ld hl, sp-$68
    jr jr_013_77be

    jr c, @+$3a

    ldh [$ff78], a
    ld [$c838], sp
    ld l, b
    ld b, b
    add sp, $60
    jr z, jr_013_77e3

    ld a, b
    ld c, b
    jr jr_013_7867

    cp b
    ld b, b
    ret z

    jr jr_013_77dc

    ld [hl], $9e
    sbc [hl]
    dec b
    ccf
    ld d, $9e
    ccf
    ld c, h
    ld c, a
    ld c, a
    ccf

jr_013_7830:
    dec b
    dec b
    dec b
    ld [hl], $36
    sbc [hl]
    ld d, $4c
    dec b
    ld c, a
    ccf
    ccf
    ld a, e
    ld a, e
    ccf
    ld [hl], $16
    ld c, h
    ld [hl], $59
    ld bc, $0103
    ld bc, $2705
    sbc h
    ld c, b
    ld d, $d6
    ld [hl], a
    inc de
    inc e
    ld c, l
    ld [$0000], sp
    sub c
    dec l
    inc bc
    ld bc, $0300
    dec l
    ld bc, $0004
    inc bc
    ld bc, $5a59
    adc h
    nop
    inc d
    inc bc

jr_013_7867:
    ld e, c
    nop
    nop
    ld e, d
    adc e
    nop
    dec d
    dec b
    ld [$1b09], sp
    ld a, [hl+]
    ld a, [hl+]
    inc e

jr_013_7875:
    add a
    nop
    ld hl, $0007
    inc bc
    db $10
    ld de, $2b23
    dec hl
    inc h
    add e
    nop
    ld sp, $008a
    ld c, e
    dec b
    dec c
    nop
    nop
    nop
    nop
    ld e, d
    adc b
    nop
    ld c, h
    inc b
    jr jr_013_78ad

    dec de
    ld a, [hl+]
    inc c
    add h
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    inc bc
    db $10
    jr z, jr_013_78c9

    dec hl
    jr nz, jr_013_78c4

    inc hl
    dec hl
    inc d
    add e
    nop
    ld l, b
    dec b
    ld e, c
    nop
    inc bc

jr_013_78ad:
    db $10
    jr nc, jr_013_78e1

    add h
    nop
    add h
    add e
    nop
    ld h, [hl]
    ld [$9595], sp
    nop
    inc bc
    db $10
    jr @+$1b

    dec de
    inc e
    add l
    nop
    ld [hl], d
    nop

jr_013_78c4:
    inc c
    add h
    nop
    sbc l
    inc bc

jr_013_78c9:
    jr nz, jr_013_78f3

    add hl, hl
    inc h
    add l
    nop
    add d
    nop
    inc d
    add l
    nop
    xor l
    ld [bc], a
    jr nc, jr_013_7909

    inc l
    add l
    nop
    sub d
    nop
    dec c
    add l
    nop
    xor l

jr_013_78e1:
    nop
    jr jr_013_7867

    nop
    ld b, d
    inc b
    ld a, [hl+]
    inc e
    ld de, $1523
    add l
    nop
    xor l
    nop
    jr nz, jr_013_7875

    nop

jr_013_78f3:
    ld d, d
    inc b
    dec hl
    inc h
    jr z, jr_013_7922

    dec c
    adc e
    nop
    db $dd
    ld [bc], a
    inc l
    jr nc, @+$33

    adc c
    nop
    call c, Call_000_0085
    db $d3
    add e
    nop

jr_013_7909:
    xor h
    nop
    nop
    add h
    nop
    pop hl
    add l
    nop
    db $e3
    nop
    inc d
    add h
    ld bc, $030d
    jr @+$0b

    ld a, [de]
    add hl, hl
    add l
    nop
    db $e3
    nop
    dec c
    add l

jr_013_7922:
    ld bc, $050d
    ld de, $3122
    jr nz, jr_013_793b

    ld [hl-], a
    ld [hl+], a
    dec hl
    nop

jr_013_792e:
    dec d
    add [hl]
    ld bc, $832d
    nop
    and d
    inc bc
    inc hl
    dec hl
    jr @+$1e

    add [hl]

jr_013_793b:
    ld bc, $082c
    jr z, jr_013_7960

    ld de, $2432
    add hl, hl
    dec hl
    jr nz, jr_013_7969

    add [hl]
    ld bc, $083c
    jr nc, jr_013_796d

    ld de, $2c32
    ld sp, $202b
    ld [hl+], a
    add l
    ld bc, $082c
    jr @+$1b

    inc e
    ld de, $3432
    jr jr_013_7979

jr_013_7960:
    inc e
    add a
    ld bc, $085b
    ld de, $2822
    add hl, hl

jr_013_7969:
    inc l
    jr nz, @+$13

    ld [hl+], a

jr_013_796d:
    ld [hl+], a
    adc b

jr_013_796f:
    ld bc, $052c
    jr nc, jr_013_79a5

    inc [hl]
    jr nz, @+$13

    ld [hl+], a
    add a

jr_013_7979:
    ld bc, $045b
    ld [$1b19], sp
    inc e
    inc l
    add e
    ld bc, $0042
    ld a, [bc]
    add a
    ld bc, $020d
    ld [hl-], a
    inc h
    inc [hl]
    add e
    ld bc, $0052
    ld [de], a
    adc b
    ld bc, $03ad
    inc l
    inc l
    jr nz, jr_013_79ca

    adc c
    ld bc, $00ba
    jr z, @-$7a

    nop
    db $d3
    nop
    inc e
    adc b

jr_013_79a5:
    ld bc, $00bb
    jr nc, jr_013_792e

    nop
    db $e3
    ld [bc], a
    inc h
    ld de, $8712
    ld bc, $846d
    nop
    db $e3
    ld [bc], a
    inc l
    ld de, $8722
    ld bc, $842d
    ld bc, $88d3
    ld bc, $010a
    ld de, $8422
    ld bc, $87e3

jr_013_79ca:
    ld bc, $841a
    nop
    jp nc, $1c02

    ld de, $8a23
    ld bc, $00aa
    inc hl
    add e
    nop
    add sp, -$76
    ld bc, $00ba
    inc hl
    add e
    nop
    ld hl, sp+$00
    jr nz, jr_013_796f

    ld bc, $04eb
    ld [hl-], a
    dec hl
    jr jr_013_79f6

    dec de
    adc b
    ld bc, $07da
    ld de, $2922
    dec hl

jr_013_79f6:
    jr nz, jr_013_7a09

    inc hl
    inc h
    adc c
    ld [bc], a
    ld e, e
    ld bc, $2b31
    add h
    ld bc, $8403
    ld bc, $85ac
    nop
    ld b, c

jr_013_7a09:
    ld [bc], a
    jr nz, jr_013_7a1d

    inc hl
    add a
    ld bc, $84ba
    nop
    ld d, d
    add [hl]
    ld bc, $0003
    inc c
    add [hl]
    ld [bc], a
    adc a
    ld [bc], a
    inc l

jr_013_7a1d:
    jr nz, jr_013_7a47

    add h
    ld bc, $0225
    inc d
    nop
    nop
    add e
    nop
    add c
    rlca
    dec hl
    inc [hl]
    jr nz, @+$32

    ld sp, $2820
    adc c
    add e
    nop
    ld h, l
    add e
    nop
    sub c
    add h
    ld [bc], a
    inc hl
    inc b
    jr nz, @+$32

    adc e
    dec hl
    dec d
    add l
    ld [bc], a
    ld a, a
    add e
    nop
    and l

jr_013_7a47:
    add e
    ld [bc], a
    rlca
    add a
    ld [bc], a
    sbc l
    inc bc
    inc h
    ld de, $2b23
    add l
    ld [bc], a
    rla
    cpl
    nop
    nop
    sub b
    rst $38
    rrca
    dec l
    ld [$2f24], sp
    inc c
    ld d, $ff
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    ld [bc], a
    rst $38
    ret c

    sbc b
    cp b
    jr c, jr_013_7a8f

    and b
    ldh a, [$ff50]
    cp b
    ld c, b
    ret nc

    ld [$a8a8], sp
    ld [hl], b
    ldh [rOBP0], a
    jr z, jr_013_7add

    sbc b
    ret nc

    sbc b
    sbc b
    ld c, b
    ld a, b
    ld a, b
    ld e, b
    ld [hl], b
    ld l, b
    jr nc, @+$62

    ld h, b
    ld [hl], b
    jr nc, jr_013_7af5

    jr z, jr_013_7ab7

jr_013_7a8f:
    adc b
    ld e, b
    ld e, b
    jr z, jr_013_7abc

    jr c, jr_013_7aae

    jr c, jr_013_7af0

    ld c, b
    ld a, b
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add h
    inc e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add h
    ld [hl], a
    inc e
    xor h
    xor h
    adc b
    jr z, jr_013_7ad3

    xor h
    xor h
    xor b
    xor d

jr_013_7aae:
    xor h
    ld l, e
    ld [hl], $36
    rlca
    ld bc, $0101
    ld h, l

jr_013_7ab7:
    ld bc, $4000
    ld d, $5a

jr_013_7abc:
    ld a, d
    inc de
    jr nz, jr_013_7b0d

    ld [$0000], sp
    cp [hl]
    ld a, [hl+]
    ld bc, $5c02
    nop
    ld d, l
    ld [hl+], a
    ld bc, $0090
    ld bc, $0126
    ld b, $54

jr_013_7ad3:
    ld d, l
    ld bc, $5c01
    ld e, l
    ld d, l
    add l
    nop
    ld h, $00

jr_013_7add:
    ld d, b
    add [hl]
    nop
    ld a, [bc]
    db $10
    ld [hl-], a
    nop
    ld d, l
    ld d, h
    ld d, l
    ld bc, $005c
    ld d, a
    ld d, l
    inc hl
    ld d, h
    ld e, [hl]
    ld e, a

jr_013_7af0:
    ld d, l
    ld d, b
    ld b, d
    inc hl
    nop

jr_013_7af5:
    ld b, $55
    ld d, h
    ld e, [hl]
    ld e, a
    jr c, jr_013_7afe

    add hl, sp
    ld [hl+], a

jr_013_7afe:
    nop
    ld bc, $0238
    dec h
    inc b
    ld [$0000], sp
    ld b, b
    ld [bc], a
    ld b, c
    nop
    nop
    nop

jr_013_7b0d:
    ld b, b
    add [hl]
    nop
    ld e, a
    ld bc, $0c0c
    ld [hl+], a
    ld d, $00
    inc c
    add e
    nop
    halt
    dec h
    rlca
    add hl, hl
    inc d
    cpl
    nop
    db $e4
    ld e, a
    inc bc
    ld [hl-], a
    ld bc, $5441
    ld d, l
    ld bc, $0150
    ld h, $05
    add h
    nop
    add hl, bc
    nop
    ld d, a
    add e
    nop
    ld d, d
    ld bc, $6800
    inc hl
    add a
    dec bc
    inc sp
    ld bc, $5450
    ld e, [hl]
    ld e, a
    nop
    ld d, [hl]
    ld d, a
    nop
    nop
    ld [hl], b
    inc hl
    inc l
    ld bc, $5443
    inc hl
    nop
    add hl, bc
    ld [hl+], a
    ld e, [hl]
    nop
    ld d, a
    nop
    ld [hl], b
    inc l
    dec b
    dec b
    inc l
    add [hl]
    nop
    ld e, c
    inc bc
    add hl, sp
    ld e, [hl]
    ld e, a
    nop
    inc hl
    dec b
    inc b
    inc l
    ld [bc], a
    ld b, c
    nop
    dec b
    add h
    nop
    ld h, a
    dec h
    dec b
    call nz, Call_013_5f01
    ld [bc], a
    inc c
    ld d, $16
    jr z, jr_013_7b7d

    add e
    nop
    add d
    ret z

    nop

jr_013_7b7d:
    adc b
    ld [hl+], a
    rlca
    ldh a, [$ff7f]
    nop
    sub b
    cpl
    dec b
    inc bc
    add a
    ld l, b
    add [hl]
    dec b
    jp Jump_000_2e01


    add $02
    ld h, $04
    add a
    inc l
    ld [hl], b
    ld h, b
    dec b
    jp Jump_000_3e01


    add $02
    ld [hl], $00
    inc l
    add e
    ld bc, $036f
    inc l
    inc l
    dec b
    dec b
    ret z

    ld [bc], a
    ld b, [hl]
    add e
    ld [bc], a
    dec l
    ld [bc], a
    inc l
    add [hl]
    dec b
    ret z

    ld [bc], a
    ld d, [hl]
    add h
    ld bc, $013b
    ld h, b
    dec b
    rst $00
    ld [bc], a
    ld h, [hl]
    cpl
    dec b
    ld h, $07
    ldh a, [$ff83]
    ld bc, $0287
    ld e, h
    nop
    ld d, l
    add a
    ld [bc], a
    ld c, $00
    ld d, l
    adc b
    nop
    rlca
    call nz, Call_000_2e01
    ld bc, $5d00
    add a
    nop
    jr z, jr_013_7bdb

jr_013_7bdb:
    ld bc, $01c4
    ld a, $00
    ld e, l
    add a
    nop
    add hl, bc
    ld bc, $3332
    call nz, Call_013_4e01
    ld a, [bc]
    ld d, l
    ld d, h
    ld d, l
    inc hl
    ld d, h
    nop
    nop
    ld d, l
    ld d, b
    ld b, d
    ld b, e
    jp Jump_013_5e01


    ld [bc], a
    nop
    nop
    nop
    add a
    nop
    ld e, b
    nop
    ld [bc], a
    add $01
    ld l, [hl]
    nop
    ld b, b
    add l
    ld bc, $0160
    ld [bc], a
    ld [bc], a
    adc $01
    ld a, [hl]
    nop
    ld d, $ce
    ld bc, $f08e
    ld [hl], c
    nop
    adc a
    inc bc
    ld e, h
    nop
    nop
    ld e, l
    adc h
    nop
    rlca
    ld bc, $5d5c
    sub l
    nop
    dec b
    nop
    ld d, b
    add l
    inc b
    ld de, $5000
    add [hl]
    nop
    ld [hl-], a
    nop
    ld d, h
    add l
    inc bc
    ld a, [hl-]
    add hl, bc
    ld d, h
    nop
    ld d, l
    inc hl
    ld d, b
    ld e, h
    nop
    ld d, a
    xor h
    nop

jr_013_7c41:
    add l
    inc bc
    ld c, d
    nop
    add hl, sp
    add e
    ld bc, $0354
    xor h
    ld e, [hl]
    ld e, a
    dec bc
    ld [hl+], a
    inc c
    inc b
    dec c
    jr c, jr_013_7c56

    ld [bc], a
    ld b, c

jr_013_7c56:
    add [hl]
    nop
    ld h, a
    nop
    inc de
    ld [hl+], a
    inc d
    inc b
    dec d
    ld b, b
    ld [bc], a
    ld [bc], a
    ld d, $83
    nop
    ld [hl], a
    inc bc
    dec c
    nop
    nop
    dec de
    ld [hl+], a
    inc e
    inc bc
    dec e
    ld e, $1e
    rra
    inc h
    inc d
    nop
    dec d
    jr z, jr_013_7c78

jr_013_7c78:
    nop
    inc de
    inc h
    nop
    nop
    ld h, $28
    nop
    nop
    dec h
    db $e4
    ld e, a
    inc bc
    inc [hl]
    ld bc, $5402
    ld d, l
    ld d, b
    adc d
    dec b
    dec c
    add h
    ld bc, $8721
    dec b
    ld d, $83
    nop
    ld b, l
    ld b, $01
    ld bc, $5f5c
    nop
    nop
    ld d, l
    add h
    nop
    add hl, hl
    add e
    ld bc, $8433
    inc bc
    ld b, a
    ld bc, $5d00
    add e
    nop
    dec bc
    nop
    inc hl
    add [hl]
    ld bc, $0751
    dec b
    nop
    ld h, [hl]
    ld d, l
    dec b
    ld d, h
    nop
    jr c, jr_013_7c41

    nop
    ld l, c
    ld [bc], a
    dec b
    ld [bc], a
    ld b, c
    add e
    inc bc
    ld d, e
    nop
    dec b
    add e
    dec b
    ld h, d
    add e
    nop
    ld a, d
    nop
    dec b
    add [hl]
    ld bc, $8375
    dec b
    ld [hl], d
    call nz, $8900
    add [hl]
    ld bc, $0285
    inc d
    inc d
    rlca
    ldh a, [$ff7d]
    nop
    adc a
    ld [bc], a
    ld d, h
    nop
    nop
    add h
    nop
    ld h, $28
    dec b
    ld bc, $0000
    add e
    nop
    dec [hl]
    nop
    ld e, h
    add l
    ld bc, $112a
    add a
    ld l, b
    ld e, l
    ld e, h
    xor l
    ld e, h
    nop
    ld d, a
    ld bc, $5c01
    ld [hl], b
    inc l
    inc l
    ld [hl], a
    inc l
    inc l
    ld [hl], b
    add l
    dec b
    dec a
    rlca
    ld d, l
    inc hl
    ld d, h
    ld [hl], b
    inc l
    inc l
    ld a, b
    inc l
    add h
    inc bc
    ld b, d
    nop
    add hl, sp
    add h
    ld bc, $0053
    ld [hl], b
    add h
    ld [bc], a
    ld b, b
    nop
    ld [hl], b
    jp Jump_013_6d00


    add h
    nop
    ld h, [hl]
    adc b
    ld b, $17
    ld [bc], a
    nop
    ld d, $0c
    adc e
    ld bc, $0374
    inc c
    inc c
    inc d
    inc d
    adc e
    ld bc, $9084
    nop
    adc [hl]
    nop
    or a
    db $e4
    ld e, a
    inc bc
    rst $38
    dec b
    inc c
    rst $38
    ld bc, $0800
    ld b, $00
    nop
    rst $38
    ld c, b
    add sp, -$38
    xor b
    adc b
    add sp, -$38
    xor b
    adc b
    ld [$2848], sp
    ld [$2848], sp
    cp b
    ld a, b
    ld e, b
    jr c, jr_013_7d7d

    ld a, b
    ld e, b
    jr c, @+$1a

    sbc b
    ret c

    cp b
    sbc b
    ret c

    cp b
    dec c
    cpl
    cpl
    cpl
    cpl
    inc sp
    inc sp
    inc sp
    inc sp
    cpl
    inc sp
    inc sp
    inc sp
    cpl

jr_013_7d7d:
    cpl
    ld [bc], a
    inc bc
    ld bc, $1501
    daa
    ld d, b
    ld [hl], h
    dec d
    ld b, a
    ld a, l
    inc de
    daa
    ld c, l
    ld [$0001], sp
    add $e4
    and c
    nop
    ld bc, $19c4
    call z, $a300
    nop
    call nz, Call_000_1062
    nop
    call nz, Call_000_008b
    xor b
    ld [bc], a
    add hl, bc
    sbc $08
    adc d
    nop
    or l
    inc b
    inc e
    jr jr_013_7dae

    or b

jr_013_7dae:
    ld bc, $008a
    push bc
    ld [bc], a
    call nz, $3f28
    ld [hl+], a
    ld bc, $4f00
    adc e
    nop
    rst $10
    ld b, $0b
    ld e, b
    ld bc, $0801
    ld [de], a
    call nz, Call_000_07e5
    nop
    inc b
    call nz, Call_000_0b28
    ld bc, $8d01
    nop
    push de
    inc bc
    dec bc
    ld bc, $5801
    adc d
    ld [bc], a
    add hl, bc
    sub d
    ld [bc], a
    inc bc
    nop
    ccf
    sub c
    ld [bc], a
    ld b, $00
    ld e, b
    sub b
    ld [bc], a
    ld [$0103], sp
    ld c, a
    ld [de], a
    nop
    adc [hl]
    ld [bc], a
    dec e
    ld bc, $0000
    adc l
    ld [bc], a
    ccf
    nop
    nop
    adc l
    ld [bc], a
    ld [hl], b
    ld bc, $0001
    adc [hl]
    ld [bc], a
    add b
    nop

Jump_013_7e00:
    nop
    adc l
    ld [bc], a
    sub b
    ld bc, $003f
    adc [hl]
    ld [bc], a
    and b
    ld l, $00
    ldh a, [$ff80]
    nop
    ld a, [$008f]
    ld a, [$008f]
    ld sp, hl
    adc a
    nop
    ld hl, sp-$71
    nop
    rst $30
    adc a
    nop
    or $02
    ld bc, $5c5b
    adc h
    nop
    ld hl, sp+$02
    dec bc
    ld e, l
    ld e, [hl]
    adc h
    nop
    rst $30
    ldh a, [rNR43]
    ld [bc], a
    dec d
    nop
    dec bc
    adc l
    inc bc
    and b
    dec b
    call nz, Call_000_0b28
    ld e, l
    nop
    ld e, h
    pop af
    dec c
    nop
    ld hl, sp+$01
    ld e, l
    ld e, [hl]
    sub c
    ld [bc], a
    ld [$32f0], sp
    ld [bc], a
    dec hl
    ld bc, $241a
    adc h
    ld [bc], a
    ld h, b
    ld bc, $2a0a
    adc e
    nop
    or [hl]
    ld [bc], a
    jr z, jr_013_7e83

    ld a, [hl+]
    adc l
    nop
    and l
    nop
    ld hl, $82f0
    nop
    ld a, [$c700]
    rst $38
    ld [hl+], a
    inc c
    rst $38
    nop
    ld bc, $0806
    nop
    nop
    rst $38
    cp b
    ld hl, sp-$28
    cp b
    cp b
    ret c

    ld hl, sp+$38
    jr jr_013_7ef3

jr_013_7e7b:
    ld e, b
    jr jr_013_7eb6

    ld e, b
    ld a, b
    ret c

    sbc b
    cp b

jr_013_7e83:
    ret c

    ret c

    cp b
    sbc b
    ld e, b
    ld a, b
    jr jr_013_7ec3

    ld a, b
    ld e, b
    jr c, jr_013_7ea7

    ld l, h
    jr nc, @+$32

    jr nc, @+$30

    ld l, $2e
    jr nc, @+$32

    jr nc, jr_013_7eca

    ld l, $2e
    ld l, $2e
    ld [bc], a
    inc bc
    ld bc, $1501
    daa
    ld d, b
    ld [hl], h
    dec d

jr_013_7ea7:
    ld h, a
    ld a, [hl]
    inc de
    cpl
    ld c, l
    ld [$0001], sp
    add $e5
    xor b
    nop
    ld bc, $3904

jr_013_7eb6:
    call z, $aa01
    nop
    inc b
    ld h, d
    jr nc, jr_013_7ebe

jr_013_7ebe:
    inc b
    adc e
    ld bc, $02af

jr_013_7ec3:
    sbc d
    adc a
    ld d, b
    adc c
    ld bc, $07bc

jr_013_7eca:
    inc b
    jr nc, jr_013_7f1e

    rlca
    or c
    rlca
    ld b, d
    ld b, h
    adc d
    ld bc, $04d0
    rlca
    rlca
    ld d, d
    ld c, d
    inc b
    adc d
    ld bc, $02e0
    ld [hl], b
    ld d, d
    ld c, d
    ld hl, sp+$61
    ld bc, $8eaa
    ld bc, $01fd
    inc b
    jr nc, jr_013_7e7b

    ld [bc], a
    ld h, c
    nop
    ld d, c
    adc [hl]
    ld [bc], a

jr_013_7ef3:
    ld [hl], c
    nop
    rlca
    adc l
    ld [bc], a
    ld [hl], d
    ld bc, $0770
    adc l
    ld [bc], a
    add d
    ld bc, $0707
    adc [hl]
    ld [bc], a
    and c
    nop
    ld d, d
    adc d
    ld bc, $22c0
    rlca
    ld bc, $4a9b
    sbc d
    ld bc, $83df
    ld bc, $97eb
    ld bc, $00e0
    ld [hl], b
    ldh a, [$ff2b]
    ld [bc], a
    db $db

jr_013_7f1e:
    add e
    ld [bc], a
    res 2, [hl]
    ld [bc], a
    db $fc
    nop
    nop
    adc l
    ld bc, $01e7
    nop
    nop
    adc [hl]

jr_013_7f2d:
    inc bc
    ld d, c
    nop
    nop
    adc [hl]
    inc bc
    ld h, c
    inc bc
    nop
    ld [hl], b
    rlca

jr_013_7f38:
    sbc e
    adc h
    ld bc, $00fc
    rlca
    adc [hl]

jr_013_7f3f:
    ld bc, $8ffb
    ld bc, $00fb
    ld c, d
    ld hl, sp+$52
    ld [bc], a
    ld l, [hl]
    add e
    ld [bc], a
    sbc e
    ld bc, $7007
    ldh a, [$ff2c]
    ld [bc], a
    db $dd
    adc c
    inc bc
    add d
    ld bc, $383c
    adc l
    inc bc
    ld d, d
    ld [bc], a
    inc b
    ld c, b
    ld d, e
    add e
    ld bc, $89eb
    ld bc, $02ac
    inc b
    ld c, b
    ld c, c
    adc l
    ld bc, $01fc
    inc b
    ld b, c
    ld sp, hl
    adc c
    ld bc, $00aa
    rst $00
    rst $38
    inc e
    inc de

jr_013_7f7a:
    ld d, $15
    ld [bc], a
    inc c
    inc d
    dec b
    ld a, [bc]
    rlca
    ld b, $39
    rst $38
    ld [$060b], sp
    ld [$ff02], sp
    ret c

    ld b, b
    ret nz

    add b
    add b
    ld b, b
    ret nz

    jr z, @-$7e

    add b
    add b
    ldh [rNR41], a
    jr nz, jr_013_7f7a

    ret nz

    ldh [rNR41], a
    ld b, b
    ld e, b
    jr nc, @-$7e

    ret nc

    add b
    xor b
    ldh [$ff80], a
    ld e, b
    xor b
    jr nz, @-$1e

    add b

jr_013_7fab:
    jr nz, jr_013_7f2d

    ld a, b
    jr z, jr_013_7f38

    adc b
    adc b
    ret z

    ret z

    ret z

    jr z, jr_013_7f3f

    xor b
    ld l, b
    cp b
    sbc b
    cp b
    ld e, b
    ld l, b
    sbc b
    ld e, b
    ld l, b
    jr jr_013_7fab

    add sp, -$18
    xor b
    jr @+$5a

    cp b
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld l, b
    ld e, b
    jr c, @-$36

    ld e, c
    ld c, h
    ld c, h
    ld c, h
    ld c, a
    ld c, a
    ld c, a
    ld c, [hl]
    jp nc, $d2d2

    inc [hl]
    ld c, a
    ld c, a
    ld c, h
    ld c, l
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld c, [hl]
    ld c, h
    ld c, a
    inc hl
    inc [hl]
    jp nc, $3434

    inc [hl]
    dec c
    ld [de], a
    ld a, [de]
    rrca
    inc [hl]
    call nc, $0000
    nop
    nop
    ld [$0040], sp
    ld bc, $0001
    stop
