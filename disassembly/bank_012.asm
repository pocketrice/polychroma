; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

Call_012_4000:
    rra
    ld [hl+], a
    inc e
    dec d
    rst $38
    ld [$130d], sp
    ld bc, $0d07
    inc c
    ld [$58ff], sp
    ld e, b
    ld e, b
    add sp, -$08
    add sp, -$18
    add sp, $58
    cp b
    ld [$b8c8], sp
    xor b
    ld l, b
    ld e, b
    ld c, b
    ret z

    ret z

    ret z

    cp b
    ld [$2818], sp
    ld [$0808], sp
    ret c

    ld a, b
    adc b
    adc b
    adc b
    ret z

    ret z

    ret z

    add sp, -$28
    ret z

    jr jr_012_404e

    ld l, b
    ld l, b

jr_012_4038:
    ld e, b
    ld l, b
    ld a, b
    ld e, b
    ld e, b
    ld e, b
    xor b
    xor b
    ld e, b
    cp b
    cp b
    ld l, b
    ld l, b
    ld l, b
    ret z

    cp b
    xor b
    xor b
    add sp, $08
    jr jr_012_4066

jr_012_404e:
    ld [$1808], sp
    jr z, jr_012_40bb

    ld a, b
    ld a, b
    ld [$6888], sp
    ld l, b
    ld e, b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    sbc b
    adc b
    ld a, b
    sbc b
    sbc b
    ld l, b
    ld e, b

jr_012_4066:
    ld c, b
    cp b
    ld e, b
    sbc b
    ld c, b
    ld c, b
    ld c, b
    xor b
    xor b
    xor b
    ret z

    cp b
    xor b
    cp b
    ret z

    ret z

    ret z

    ld l, b
    ld e, b
    ld c, b
    ld e, b
    cp b
    ret z

    cp b
    xor b
    sbc b
    adc b
    ld a, b
    ld c, b
    ld c, b
    ld c, b
    cp b
    ld e, b
    adc b
    xor b
    sbc b
    jr c, jr_012_40c4

    cp b
    xor b
    jr c, jr_012_40b8

    jr jr_012_40da

    xor b
    jr jr_012_40ed

    ld c, b
    jr c, @-$46

    cp b
    cp b
    ld [$b808], sp
    xor b
    jr jr_012_4038

    ld [$0808], sp
    ld e, b
    ld e, b
    ld c, b
    xor b
    ld e, b
    cp b
    ld c, b
    cp b
    ld e, b
    ld c, b
    jr c, @-$56

    cp b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b

jr_012_40b8:
    ld l, h
    ld l, h
    and b

jr_012_40bb:
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b

jr_012_40c4:
    ld l, h
    and b
    and b
    and b
    and b
    and b
    and b
    ld l, h
    ld l, h
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    ld l, h
    ld l, h
    ld e, c
    ld l, h

jr_012_40da:
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    ld l, h
    ld l, h
    ld l, h
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    ld c, [hl]

jr_012_40ed:
    and b
    ld l, h
    ld l, h
    and b
    and b
    and b
    and b
    and b
    and b
    ld l, h
    and b

jr_012_40f8:
    and b
    and b
    ld l, h
    and b
    and b
    and b
    and b
    ld l, h

Call_012_4100:
    and b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $1731
    inc de
    ld d, b
    rla
    nop
    ld b, b
    ld [de], a
    ld [bc], a
    ld c, d
    ld [$0101], sp
    inc bc
    adc c
    cpl
    inc bc
    nop
    ld e, $2c
    dec c
    ld [bc], a
    inc bc
    inc bc
    rrca
    inc l
    db $10
    adc h
    nop
    jr nz, jr_012_4146

    inc de
    adc e
    nop
    jr nz, jr_012_412c

    ld de, $8a8e

jr_012_412c:
    adc d
    adc a
    nop
    ld b, b
    add e
    nop
    jr nz, jr_012_415b

    inc de
    nop
    ld hl, $0085
    ld c, l
    ld bc, $8e11
    add hl, hl
    adc d
    nop
    adc h
    adc l
    nop
    ld [hl], b
    nop
    adc h

jr_012_4146:
    adc l
    nop
    ld a, a
    nop
    adc h
    add h
    nop
    adc [hl]
    nop
    db $10
    jr z, jr_012_415f

    ld [bc], a
    rra
    add [hl]
    add [hl]
    adc l
    nop
    jr nz, jr_012_40f8

    nop

jr_012_415b:
    ld e, $02
    db $10
    db $10

jr_012_415f:
    db $10
    sbc a
    nop
    ret nz

    cpl
    inc bc
    cpl
    dec c
    adc h
    nop
    inc sp
    ld bc, $1010
    adc b
    nop
    ld h, e
    ld bc, $2113
    ld [hl+], a
    add a
    ld [bc], a
    rrca
    db $10
    inc de
    jr z, @-$74

    inc hl
    adc l
    adc h
    nop
    ld [hl], d
    add l
    ld bc, $004a
    adc h
    adc e
    ld bc, $8350
    ld bc, $875d
    nop
    ld [de], a
    nop
    rra
    add e
    ld bc, $034a
    db $10
    rra

jr_012_4196:
    adc h
    rrca
    add [hl]
    ld bc, $0028
    ld de, $0184
    ld a, d
    ld bc, $8c11
    ld h, d
    rrca
    ld [hl+], a
    add a
    ld a, [bc]
    jr nz, jr_012_41bd

    ld hl, $8d8d
    adc e
    jr nz, @+$12

    ld de, $0f86
    add h
    ld bc, $0988
    adc l
    adc e
    adc e
    adc l
    adc e
    adc e

jr_012_41bd:
    adc a
    rrca
    ld de, $850d
    ld bc, $2587
    adc e
    add hl, bc
    adc a
    rrca
    ld de, $1010
    db $10
    ld de, $8d8d
    adc e
    adc [hl]
    ld bc, $00b7
    adc l
    add [hl]
    nop
    ld [de], a
    nop
    db $10
    add a
    ld bc, $8bcf
    nop
    ld [hl+], a
    add e
    ld bc, $8789
    nop
    ld h, d
    nop
    ld hl, $29f0
    ld bc, $8400
    ld bc, $0228
    db $10
    inc de
    inc de
    adc l
    ld bc, $0130
    adc d
    adc d
    adc l
    ld bc, $0040
    adc d
    adc l
    ld [bc], a
    ld b, b
    ld [bc], a
    rrca
    adc d

Call_012_4205:
    adc d
    adc h
    ld bc, $0260
    jr nz, jr_012_4196

    adc h
    add a
    ld bc, $0470
    rra
    adc [hl]
    adc d
    adc d
    adc l
    add e
    nop
    sbc h
    nop
    rrca
    adc c
    nop
    ld b, [hl]
    add h
    nop
    sbc e
    nop
    jr nz, jr_012_4249

    inc de
    add a
    ld [bc], a
    adc d
    adc b
    ld bc, $24c6
    dec c
    nop
    adc h
    add a
    ld [bc], a
    and b
    nop
    adc a
    add l
    nop
    ld [hl+], a
    nop
    adc h
    add h
    ld [bc], a
    or b
    nop
    adc h
    adc b
    ld [bc], a
    or a
    ld [hl+], a
    add [hl]
    ld b, $1e
    dec c
    rra
    adc h
    adc h

jr_012_4249:
    adc e
    ld e, $25
    db $10
    ld [hl+], a
    rlca
    ld [bc], a
    db $10
    db $10
    ld de, $0289
    add b
    add e
    ld bc, $853a
    ld [bc], a
    db $e4
    sbc a
    nop
    ld a, [$1f00]
    adc $01
    inc b
    nop
    ld de, $038f
    dec de
    sbc a
    inc bc
    dec de
    inc h

jr_012_426d:
    inc bc
    ret


    ld bc, $8537
    inc bc
    ld a, [hl+]
    inc h
    adc d
    ld [hl+], a
    ld a, b
    nop
    rrca
    adc h
    inc bc
    ld l, c
    nop
    ld a, h
    adc [hl]
    inc bc
    ld [hl], a
    nop
    ld a, d
    add e
    inc bc
    ld [hl], a
    adc h
    ld bc, $020b
    db $10
    db $10
    ld de, $44f0
    inc bc
    dec de
    adc a
    inc bc
    jr nz, @-$6a

    nop
    jr nz, jr_012_429b

    inc de
    inc de

jr_012_429b:
    inc de
    adc e
    nop
    jr z, @-$7b

    ld bc, $0093
    jr nz, jr_012_426d

    inc bc
    ld h, [hl]
    adc b
    ld bc, $24a1
    adc e
    ld [bc], a
    inc bc
    inc bc
    rrca
    add l
    ld bc, $8db2
    inc b
    add hl, sp
    nop
    adc e
    adc [hl]
    inc b
    ld c, b
    ld bc, $1e8d
    adc c
    nop
    add hl, de
    adc h
    ld bc, $83e2
    nop
    jr nz, jr_012_42cb

    ld hl, $8d8a

jr_012_42cb:
    adc l
    adc d
    inc b
    jr z, jr_012_42d3

    ld de, $8a8e

jr_012_42d3:
    adc d
    add $01
    ld c, c
    sub b
    nop
    ld l, [hl]
    adc a
    nop
    ld l, a
    nop
    adc d
    add e
    nop
    and b
    sbc l
    nop
    inc d
    nop
    jr nz, jr_012_4314

    inc de
    jp nc, Jump_000_0f01

    nop
    ld de, $018a
    ld c, d
    nop
    adc l
    adc [hl]
    dec b
    nop
    ld [bc], a
    adc d
    inc de
    inc de
    add l
    ld bc, $0198
    ld de, $858e
    ld [bc], a
    ld h, b
    ld bc, $8b8b
    add [hl]
    ld bc, $00a8
    rra
    add h
    ld [bc], a
    ld [hl], b
    nop
    rra
    adc c
    ld bc, $84c6

jr_012_4314:
    ld [bc], a
    add b
    nop
    ld de, $058f
    ld b, b
    adc b
    ld bc, $8518
    dec b
    ld c, c
    ret


    nop
    ld c, h
    add [hl]
    dec b
    ld c, c
    adc c
    ld bc, $8430
    ld [bc], a
    add b
    nop
    ld hl, $8a2a
    ld bc, $8c8c
    adc l
    nop
    ld [hl], d
    adc l
    dec b
    sbc e
    nop
    adc h
    add l
    dec b
    xor d
    adc e
    nop
    and h
    inc bc
    add [hl]
    rrca
    db $10
    dec c
    call z, $2901
    ld [bc], a
    db $10
    db $10
    db $10
    ld [hl+], a
    inc de
    sbc h
    inc b
    db $e3
    ld [bc], a
    adc l
    adc l
    adc l
    adc h
    ld [bc], a
    di
    adc a
    ld b, $00
    nop
    adc d
    add h
    ld b, $01
    adc c
    ld [bc], a
    sub b
    add l
    ld b, $00
    ld bc, $8c8c
    jp z, Jump_012_4f04

    dec b
    rrca
    db $10
    ld de, $8c8c
    adc h
    adc a
    ld b, $39
    nop
    adc h
    adc e
    ld b, $3a
    ld [bc], a
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    nop
    ld [de], a
    add e
    ld bc, $cbe4
    dec b
    sbc $02
    adc d
    adc l
    adc l
    adc h
    inc b
    ldh [c], a
    ld [bc], a
    adc d
    adc d
    adc l
    db $e4
    inc l
    adc d
    sbc e
    ld [bc], a
    stop
    db $10
    sbc l
    dec b
    db $dd
    ldh a, [$ff2c]
    inc bc
    dec sp
    nop
    inc de
    add h
    inc bc
    add hl, hl
    ret


    inc b
    ld d, c
    ld bc, $0f8f
    adc a
    rlca
    ld a, [hl+]
    adc d
    rlca
    ld a, [hl+]
    nop
    adc h
    adc c
    rlca
    ld [hl], $02
    dec c
    dec c
    dec c
    add l
    ld [bc], a
    call nc, $038a
    add hl, hl
    add e
    dec b
    ld c, c
    nop
    rrca
    adc d
    inc bc
    ld e, c
    inc bc
    ld hl, $8c8c
    adc h
    adc h
    inc bc
    ld a, b
    nop
    adc d
    adc [hl]
    rlca
    add [hl]
    adc [hl]
    rlca
    add l
    inc bc
    adc h
    adc h
    adc h
    adc h
    adc e
    inc bc
    sbc b
    add e
    dec b
    ret


    nop
    rrca
    adc e
    inc bc
    add hl, hl
    ld [bc], a
    dec c
    dec c
    dec c
    adc e
    rlca
    jr @-$68

    ld bc, $00f9
    adc b
    inc hl
    inc bc
    rst $38
    ld d, $3e
    rst $38
    ld b, $ff
    ld a, b
    ld h, b
    sub b
    sbc b
    ld e, b
    jr z, @+$52

    ld e, b
    ld e, b
    ld [hl], b
    ld [hl], b
    jr c, @+$51

    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ret z

    ld bc, $0101
    ld [bc], a
    inc b

jr_012_4417:
    dec b
    ld d, $47
    jr jr_012_4417

    ld b, e
    ld [de], a
    ld b, $4a
    ld [$2f01], sp
    inc bc
    nop
    ld c, a
    ld b, [hl]
    ld hl, $0322
    inc bc
    ld hl, $3022
    ld b, e
    dec h
    ld h, $01
    dec h
    ld hl, $00c3
    ld hl, $3001
    inc l
    jr z, jr_012_4464

    nop
    ld c, d
    add e
    nop
    dec e
    nop
    rra
    jr z, jr_012_446d

    ld b, $3c
    jr z, jr_012_4469

jr_012_4449:
    ld hl, $2203
    inc hl
    jr z, @+$2a

    rlca
    add hl, sp
    jr z, @+$1e

    ld [hl+], a
    inc bc
    ld hl, $2a2e
    jr z, jr_012_4482

    ld bc, $6648
    jp Jump_000_2000


    ld [bc], a
    ld l, $19
    ld c, c

jr_012_4464:
    inc h
    jr z, jr_012_4469

    add hl, hl
    add hl, de

jr_012_4469:
    ld h, [hl]
    add h
    nop
    dec e

jr_012_446d:
    ld h, d
    ld hl, $0424
    nop
    inc e
    add $00
    add e
    ld [$2122], sp
    rra
    dec b
    dec b
    ld a, [hl-]
    dec b
    dec b
    jr nz, jr_012_4449

    nop

jr_012_4482:
    sub e
    dec b
    inc hl
    dec b
    dec b
    dec [hl]
    dec b
    dec b
    adc c
    nop
    adc d
    ld bc, $322e
    ld [hl+], a
    dec b
    ld bc, $6642
    adc b
    nop
    sbc e
    ld [$2e21], sp
    add hl, de
    ld a, [de]
    add hl, de
    ld h, [hl]
    ld hl, $2122
    ret nc

    nop
    ld hl, $4e00
    db $e4
    jr nz, jr_012_44ad

    rst $38
    ld a, $38

jr_012_44ad:
    rra
    rst $38
    ld [bc], a
    ld bc, $0000
    rst $38
    ld l, b
    ret nz

    ld c, b
    jr c, jr_012_446d

    xor b
    rst $00
    and c
    or d
    ld [bc], a
    ld [bc], a
    ld bc, $0d01
    ld [$6706], sp
    dec d
    xor e
    ld b, h
    ld [de], a
    inc de
    ld c, d
    ld [$0000], sp
    inc d
    db $e4
    inc hl
    inc bc
    ld a, [hl+]
    inc b
    add l
    nop
    jr nz, @+$2b

    rlca
    add l
    nop
    jr nz, jr_012_4506

    ld b, $87
    nop
    ld b, b
    ld [hl+], a
    inc b
    ld bc, $1a1a
    adc b
    nop
    dec l
    ld b, $06
    dec b
    inc b
    rlca
    rlca
    ld b, $06
    ret z

    nop
    scf
    ld [bc], a
    ld b, $06
    inc b
    rlc b
    ld c, e
    add e
    nop
    ld h, l
    ld [bc], a
    dec b

Call_012_4500:
    ld b, $04
    add e
    nop
    ld h, l
    add l

jr_012_4506:
    nop
    inc hl
    add h
    nop
    halt
    ld bc, $0707
    add h
    nop
    ld a, l
    inc bc
    inc b
    rlca
    dec c
    rlca
    add h
    nop
    add [hl]
    ld bc, $0606
    add l
    nop
    adc l
    ld bc, $0c06
    push bc
    nop
    ld a, e
    inc b
    ld h, $27
    ld b, $06
    inc b
    adc b
    nop
    inc hl
    dec b
    ld b, $06
    ld a, [bc]
    dec bc
    ld b, $06
    jp Jump_000_2500


    call z, $8400
    add a
    nop
    dec e
    rst $18
    nop
    inc l
    inc hl
    nop
    jp Jump_000_0b01


    adc a
    ld bc, $0200
    inc b
    inc b
    inc b
    adc h
    ld bc, $0103
    rlca
    rlca
    adc l
    ld bc, $0122
    ld b, $06
    adc a
    ld bc, $8d32
    ld bc, $0022
    dec b
    sbc a
    ld bc, $9141
    ld bc, $0241
    inc b
    inc b
    inc b
    adc e
    ld bc, $0356
    rlca
    rlca
    rlca
    inc b
    adc e
    ld bc, $0336
    ld b, $06
    ld b, $04
    adc e
    ld bc, $8316
    ld bc, $0192
    inc bc
    inc bc
    rst $18
    ld bc, $f81f
    daa
    ld bc, $e41f
    rst $28
    nop
    ld h, $03
    nop
    inc de
    db $e4
    rst $30
    nop
    rst $38

    db $1f, $1d, $ff, $05, $00, $ff, $88, $58, $88, $b8, $88, $38, $68, $b8, $68, $78
    db $5a, $5b, $5d, $5c, $63, $02, $01, $01, $01, $06, $07, $b4, $67, $16, $96, $45
    db $12, $1c, $4a, $08, $01, $00, $44, $22, $00, $00, $30, $22, $01, $02, $2d, $31
    db $32, $22, $00, $03, $31, $01, $32, $00, $84, $00, $01, $03, $2d, $00, $30, $2d
    db $83, $00, $0c, $05, $2d, $01, $32, $00, $31, $32, $86, $00, $0e, $06, $31, $01
    db $2d, $00, $01, $01, $36, $22, $01, $09, $2e, $01, $36, $32, $00, $31, $01, $01
    db $32, $00, $83, $00, $05, $06, $30, $2d, $00, $30, $01, $25, $26, $84, $00, $34
    db $02, $01, $01, $37, $85, $00, $28, $03, $29, $49, $27, $2d, $84, $00, $03, $86
    db $00, $37, $03, $01, $28, $01, $33, $84, $00, $02, $03, $2c, $2b, $01, $50, $64
    db $17, $00, $54, $83, $00, $0f, $10, $01, $2d, $00, $2a, $2b, $5a, $1c, $1d, $56
    db $1e, $1f, $5a, $2e, $2d, $00, $00, $2d, $22, $00, $62, $0d, $05, $48, $58, $48
    db $13, $0e, $14, $22, $00, $23, $3f, $62, $10, $22, $45, $02, $15, $11, $16, $22
    db $3f, $25, $3c, $64, $20, $24, $3c, $03, $0b, $07, $08, $3d, $23, $3c, $00, $52
    db $23, $3c, $02, $3e, $09, $0a, $22, $0c, $00, $04, $83, $00, $c1, $00, $5c, $83
    db $00, $cc, $00, $05, $27, $0c, $04, $04, $0b, $06, $0b, $05, $34, $0c, $00, $2d
    db $e4, $2e, $00, $00, $31, $2e, $00, $00, $01, $87, $01, $31, $c7, $01, $47, $9e
    db $01, $31, $00, $30, $e4, $2e, $00, $00, $3f, $2e, $00, $00, $3c, $2e, $00, $00
    db $0b, $be, $01, $61, $8f, $01, $d0, $00, $43, $2e, $00, $ff

    add hl, hl
    rst $38
    ld bc, $80ff
    ld l, b
    halt
    ld bc, $0101
    ld bc, $0101
    db $ec
    ld d, [hl]
    dec d
    or d
    ld b, [hl]
    ld [de], a
    ld e, e
    ld c, d
    ld [$0000], sp
    dec bc
    ld b, h
    ld b, $07
    nop
    ld b, $23
    inc bc
    ld b, l
    dec b
    inc b
    inc hl
    inc bc
    nop
    rlca
    sbc a
    nop
    ld bc, $3ef0
    nop
    ld bc, $092b
    inc hl
    inc bc
    ld a, [hl+]
    ld [$0a00], sp
    db $e4
    ld h, e
    inc bc
    rst $38
    cpl
    nop
    ld b, $37
    rlca
    ld [bc], a
    ld bc, $ff08
    ld [bc], a
    inc b
    inc b
    inc bc
    inc bc
    rst $38
    ret nc

    ld hl, sp+$68
    ld a, b
    ld h, b

Call_012_4700:
    ld [$7838], sp
    ld hl, sp-$48
    ret nc

    xor b
    jr c, jr_012_4771

    xor b
    jr z, @+$4a

    ld a, b
    jr c, @+$6a

    ld e, b
    ld a, b
    jr c, @+$42

    ld b, b
    ld c, b

jr_012_4715:
    jr c, @+$6a

    jr c, jr_012_4771

    jr c, @+$6a

    adc b
    xor [hl]
    rrca
    sbc [hl]
    ld bc, $1a1a
    sbc [hl]
    sbc [hl]
    jp nc, $9e88

    ld a, [de]
    rlca
    inc e
    sbc [hl]
    dec b

jr_012_472c:
    ld bc, $0101
    ld b, d
    ld bc, $5118
    jr @-$12

    ld b, [hl]
    ld [de], a
    ld e, h
    ld c, d
    ld [$0000], sp
    ld e, [hl]
    db $e4
    inc h
    ld bc, $2102
    ld bc, $2830
    ld bc, $0083
    jr z, jr_012_474a

jr_012_474a:
    inc h
    adc [hl]
    nop
    jr @+$06

    cpl
    ld [hl+], a
    inc hl
    ld bc, $c901
    nop
    dec [hl]
    inc bc
    inc h
    cpl
    dec h
    ld h, $22
    ld bc, $0087
    ld b, a
    add hl, bc
    ld hl, $2f2f
    ld a, [hl+]
    dec hl
    ld bc, $0130
    dec h
    ld h, $87
    nop
    ld c, a
    ld [hl+], a
    cpl

jr_012_4771:
    ld [hl+], a
    ld bc, $5a03
    ld e, e
    ld bc, $2801
    scf
    ld b, $38
    ccf
    ld b, c
    ld [hl], $38
    ccf
    ld b, c
    jr z, jr_012_47be

    ld b, d
    dec sp

jr_012_4786:
    add hl, sp
    nop
    dec sp
    db $e4
    ld e, a
    inc bc
    db $e4
    jr nz, jr_012_4790

    nop

jr_012_4790:
    jr nc, jr_012_4715

    nop
    ld a, [hl+]
    rst $10
    ld bc, $8425
    nop
    ld b, a
    inc b
    rra
    ld e, $1e
    ld e, $1f
    add l
    nop
    ld e, d
    add h
    nop
    ld d, a
    nop
    jr nz, jr_012_472c

    ld bc, $8350
    ld bc, $084c
    jr nc, jr_012_47b2

    ld e, d

jr_012_47b2:
    dec hl
    ld bc, $1e1f
    ld c, [hl]
    ld e, $83
    ld bc, $0661
    rra
    ld e, d

jr_012_47be:
    ld e, e
    ld [hl+], a
    inc hl
    ld a, [hl+]
    cpl
    ld b, h
    ld bc, $0620
    ld e, d
    ld e, e
    dec h
    ld h, $2f
    cpl
    ld [hl], $83
    nop
    add a
    ld [bc], a
    ld b, d
    ld b, d
    ld b, c
    add a
    ld bc, $0080
    add hl, sp
    add e
    nop
    sub a

jr_012_47dd:
    ld [bc], a
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    add [hl]
    ld bc, $f090
    ld [hl], e
    nop
    sbc a
    nop
    jr nc, @-$76

    ld bc, $dc0f
    ld [bc], a
    inc e
    ld bc, $5401
    ld h, $01
    nop
    rra
    add a
    ld [bc], a
    dec [hl]
    add [hl]
    ld [bc], a
    dec sp
    nop
    jr nz, jr_012_4786

    ld bc, $2340
    ld e, $06
    rra
    jr nc, jr_012_484b

    ld b, d
    ld b, c
    ccf
    ld b, [hl]
    add h
    ld bc, $0052
    ld d, c
    add e
    ld bc, $0650
    ld b, e
    ld b, h
    ld a, [hl-]
    dec sp
    add hl, sp
    ld c, b
    ld b, [hl]
    add e
    ld bc, $0053
    ld d, b
    add e
    ld bc, $0050
    ld c, c
    add h
    ld bc, $0591
    ld c, b
    ld b, c
    ld h, b
    ld h, b
    ccf
    ld b, d
    add e
    ld [bc], a
    add a
    add a
    ld bc, $0290
    ld bc, $3901
    add h
    ld [bc], a
    sub [hl]
    db $e4
    ld e, a
    inc bc
    ld h, $01
    ldh a, [$ff29]
    ld bc, $0200
    ld bc, $3001
    adc [hl]

jr_012_484b:
    ld bc, $001a
    rra
    ld l, $01
    ld [bc], a
    jr nz, @+$03

    jr nc, jr_012_47dd

    nop
    ld c, e
    rlca
    jr nc, @+$03

    ld bc, $4143
    ccf
    ld b, d
    ld b, [hl]
    dec h
    ld bc, $4305
    ld b, [hl]
    ld bc, $4301
    ld b, h
    add e
    ld [bc], a
    add e
    nop
    ld b, [hl]
    add e
    inc bc
    ld l, e
    dec b
    ld b, e
    ld b, h
    ld c, b
    ld b, [hl]
    ld bc, $8544
    ld bc, $0392
    ccf
    ld b, h
    ld c, b
    ld b, c
    add e
    ld [bc], a
    add b
    nop
    ccf
    adc [hl]
    ld bc, $f091
    ld l, l
    ld [bc], a
    sbc a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    adc h
    ld bc, $021a
    inc bc
    inc bc
    inc bc
    adc c
    nop
    ld c, d
    nop
    jr nc, @-$74

    inc b
    dec bc
    ld [bc], a
    jr nc, jr_012_48a4

    ld d, c

jr_012_48a4:
    adc $04
    inc sp
    ld [bc], a
    ld d, b
    ld bc, $cc1f
    inc b
    ld de, $1f02
    ld bc, $8420
    inc b
    dec bc
    add l
    inc bc
    ld e, c
    ld [bc], a
    rra
    ld bc, $8620
    inc b
    ld e, c
    ld b, $43
    ld b, [hl]
    ld bc, $1f01
    ld bc, $8820
    inc b
    ld h, a
    inc b
    ld b, h
    ld c, b
    ld b, c
    ld bc, $8a20
    inc b
    ld [hl], l
    ld [bc], a
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    adc b
    ld bc, $0070
    ld e, a
    db $e4
    ld h, d
    inc bc
    rst $38
    ld de, $ff3e
    ld [bc], a
    rst $38
    adc b
    jr z, jr_012_4950

    ld c, b
    inc a
    jp nz, $0101

    ld bc, $0101
    ld bc, $6c83
    dec d
    ldh [rOBP0], a
    ld [de], a
    ld l, c
    ld c, d
    ld [$0000], sp
    adc e
    ld a, [hl+]
    nop
    inc b

Call_012_4900:
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    adc a
    nop
    ld bc, $0024
    nop
    rrca
    ld [hl+], a
    dec d
    nop

jr_012_490f:
    ld c, $85
    nop
    dec bc
    add e
    nop
    ld h, $01
    dec d
    ld d, $22
    ld c, a
    nop
    rlca
    add l
    nop
    dec bc
    dec b
    ld [$744f], sp
    ld c, a
    ld c, a
    ld c, [hl]
    ld [hl+], a
    ld [hl], $87
    nop
    ld a, [hl-]
    inc b
    ld [hl], $4d
    ld [hl], $36
    ld e, [hl]
    adc c
    nop
    ld b, a
    nop
    ld b, l
    inc hl
    ld b, [hl]
    nop
    inc h
    add e
    nop
    ld b, a
    adc d
    nop
    dec bc
    add e
    nop
    ld h, c
    nop
    ld b, h
    rst $18
    nop
    jr nz, jr_012_494a

jr_012_494a:
    adc h
    db $e4
    ld h, e
    inc bc
    rst $38
    rla

jr_012_4950:
    ld bc, $ff0a
    ld [bc], a
    inc b
    inc bc
    ld b, $02
    rst $38
    adc b
    ret z

    ld e, b
    add sp, -$68
    ld [$e878], sp
    jr z, jr_012_496b

    ret z

    ld l, b
    jr z, jr_012_490f

    add sp, $78
    jr c, @+$7a

jr_012_496b:
    ld a, b
    ld l, b
    ld e, b
    ld e, b
    ld l, b
    ld c, b
    ld l, b
    ld c, b
    jr z, jr_012_499d

    ld c, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld c, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec b
    dec b
    dec b
    ld d, b
    ld d, b
    ld d, b
    inc d
    dec b
    dec b
    ld bc, $0101
    ld b, c
    ld bc, $6c83
    dec d
    ld c, a
    ld c, c
    ld [de], a
    ld [hl], b
    ld c, d
    ld [$0000], sp

jr_012_499d:
    sub e
    cpl
    ld bc, $3362
    adc c
    nop
    ld a, [bc]
    sub b
    nop
    ld a, [bc]
    inc hl
    ld bc, $2d01
    ld bc, $00c9
    inc [hl]
    jp $1100


    inc b
    ld l, $34
    dec [hl]
    ld l, $2d
    add l
    nop
    jr nc, @+$1f

    ld bc, $3c3b
    ld bc, $2e2d
    ld bc, $2e01
    ld l, $3b
    inc a
    dec l
    ld l, $3b
    inc a
    dec sp
    ld [bc], a
    ld [bc], a
    inc a
    ld l, $2e
    dec l
    dec sp
    cpl
    jr nc, @+$04

    ld [bc], a
    ld l, $2e
    dec h
    ld [bc], a
    ld [hl+], a
    ld l, $02
    ld [bc], a
    ld sp, $8432
    nop
    ld l, b
    ld h, d
    inc b
    dec hl
    dec b
    inc bc
    ld b, $07
    nop
    ld [$002b], sp
    inc bc
    ld [$0007], sp
    ld [$5fe4], sp
    inc bc
    jr z, jr_012_49fc

    sbc c

jr_012_49fc:
    nop
    ld bc, $2d00
    add a
    nop
    db $10
    add e
    nop
    ld [hl], $04
    inc [hl]
    dec [hl]
    dec l
    ld l, $2d
    add [hl]
    nop
    ld l, $00
    ld l, $62
    inc sp
    ld [bc], a
    inc a
    ld bc, $c32e
    nop
    ld d, a
    call nz, Call_012_5e00
    add e
    ld bc, HeaderNewLicenseeCode
    ld [bc], a
    inc a
    ld h, d
    ld l, $01
    inc a
    dec sp
    add l
    nop
    ld l, a
    rlca
    inc a
    dec sp
    inc b
    ld [bc], a
    ld [bc], a
    ld l, $31
    ld [hl-], a
    add e
    nop
    ld a, h
    ld [bc], a
    sub l
    sub b
    sub b
    ld h, e
    inc b
    ld bc, $9595
    add h
    ld bc, $0a6b
    nop
    ld [$2e02], sp

jr_012_4a48:
    ld l, $07
    nop
    ld [$0207], sp
    ld [bc], a
    add e
    ld bc, $8f7b
    ld bc, $8976
    ld bc, $e476
    ld e, a
    inc bc
    db $e4
    ld hl, $0001
    dec l
    ld h, d
    inc sp
    nop
    dec l
    adc b
    nop
    dec l
    ld bc, $0101
    jp Jump_000_3c01


    ld bc, $752f
    push bc
    ld bc, $0238
    ld bc, $3c33
    ld b, c
    ld bc, $022e
    dec l
    ld sp, $8377
    nop
    db $10
    rlca
    cpl
    jr nc, jr_012_4a86

    dec sp

jr_012_4a86:
    dec b
    ld b, $90
    adc l
    add e
    ld bc, $0b6b
    dec sp
    inc a
    ld bc, $3101
    ld [hl-], a
    dec sp
    ld [bc], a
    nop
    ld [$3b2e], sp
    add e

jr_012_4a9b:
    ld bc, $037b
    ld [bc], a
    ld [bc], a
    inc a

jr_012_4aa1:
    dec sp
    add e
    nop
    halt
    inc bc
    nop
    ld [$022e], sp
    add l
    ld [bc], a
    ld h, h
    ld bc, $1802
    ld [hl+], a
    dec b
    nop
    rra
    add a
    ld [bc], a
    ld [hl], b
    inc bc
    inc b
    dec b
    dec b
    inc e
    ld [hl+], a
    nop
    nop
    jr nz, jr_012_4a48

    ld [bc], a
    ld [hl], b
    nop
    rlca
    ld h, $00
    db $e4
    ld e, a
    inc bc
    sbc l
    ld bc, $9105
    nop
    ld bc, $3401
    dec [hl]
    adc c
    ld [bc], a
    inc e
    inc hl
    ld bc, $3c00
    add [hl]
    nop
    cpl
    ld [bc], a
    ld l, $01
    dec l
    add e
    ld [bc], a
    ld e, b
    inc bc
    ld bc, $3c02
    dec sp
    add e
    ld [bc], a
    ld b, b
    inc bc
    ld bc, $3c2e
    ld l, $83
    ld [bc], a
    ld l, b
    nop
    inc a
    inc hl
    ld [bc], a
    dec b
    inc a
    ld l, $3c
    dec sp
    ld l, $02
    add [hl]
    nop
    ld l, e
    inc bc
    inc b
    dec b
    rra
    ld [bc], a
    add e
    nop
    ld a, e
    ld [bc], a
    dec b
    dec b
    rra
    add e
    inc bc
    ld [hl], b
    inc bc
    ld b, $07
    nop
    jr nz, jr_012_4a9b

    nop
    adc d
    ld [bc], a
    nop
    nop
    jr nz, jr_012_4aa1

    inc bc
    add b
    ld bc, $0708
    add [hl]
    nop
    sbc b
    add h

jr_012_4b27:
    nop
    sbc c
    ldh a, [$ff6d]
    ld [bc], a
    sbc [hl]
    ld bc, $0303
    pop de
    inc b
    dec c
    adc e
    nop
    inc de
    add e
    inc b
    inc c
    ld [bc], a
    ld bc, $2d01
    adc l
    inc b
    inc bc
    add e
    ld [bc], a
    inc a
    ld b, $34
    dec [hl]
    add hl, sp
    ld a, [hl-]
    ld bc, $3901
    add h
    inc b
    inc c
    ld bc, $302f
    ld [hl+], a
    ld bc, $3904
    ld h, c
    nop
    ld a, [hl-]
    add hl, sp
    add h
    ld [bc], a
    sbc a
    rlca
    inc a
    ld sp, $3932
    ld a, [hl-]
    add hl, sp
    nop
    ld h, e
    add a
    ld [bc], a
    sbc h
    ld [bc], a
    ld [bc], a
    ld sp, $2232
    nop
    ld [bc], a
    ld a, [de]
    dec b
    dec e
    add [hl]
    ld [bc], a
    sbc l
    add e
    nop
    adc c
    inc b
    nop
    nop
    dec de
    nop
    ld hl, $0286
    sbc l
    call nz, $9200
    nop
    nop
    add h
    nop
    adc l
    nop
    adc h
    db $e4
    ld h, e
    inc bc
    rst $38
    rra
    add hl, de
    ld a, $ff
    inc bc
    rst $38
    jr z, jr_012_4b27

    jr c, jr_012_4bc1

    ld [hl], b
    jr z, @-$7d

    ld d, h
    add $01
    ld bc, $0101
    ld bc, $8701
    ld a, b
    rla
    adc a
    ld c, e
    ld [de], a
    ld [hl], a
    ld c, d
    ld [$0000], sp
    ld a, [hl]
    ld b, h
    inc b
    dec b
    nop
    inc h
    inc hl
    inc bc
    ld bc, $0904
    ld b, e
    dec h

jr_012_4bbc:
    inc h
    ld bc, $0508
    inc hl

jr_012_4bc1:
    inc bc
    ld bc, $0706
    daa
    dec e
    ld bc, $0706
    add h
    nop
    inc c
    nop
    dec b
    daa
    dec de
    nop
    inc b
    add [hl]
    nop
    dec de
    daa
    dec de
    add a
    nop
    ld a, [hl+]
    ld b, c
    add hl, sp
    dec de
    ld [hl+], a
    add hl, sp
    adc [hl]
    nop
    add hl, sp
    ld bc, $1b7a
    adc l
    nop
    ld a, [hl+]
    nop
    halt
    add a
    nop
    add hl, sp
    nop
    ld [$0543], sp
    inc b
    nop
    add hl, bc
    add h
    nop
    dec hl
    nop
    dec b
    ld b, h
    inc h
    dec h

jr_012_4bfd:
    nop
    ld a, a
    db $e4
    ld h, e
    inc bc
    rst $38
    dec b
    scf
    ld bc, $1c0a
    inc c
    rst $38
    ld [bc], a
    inc b
    inc bc
    ld b, $03
    dec b
    rst $38
    ret z

    jr c, jr_012_4bbc

    ld e, b
    cp b
    ld c, b
    jr jr_012_4c31

    add sp, -$48
    add sp, $18
    add sp, -$80
    ld e, b
    ld c, b
    add b
    cp b
    jr z, jr_012_4bfd

    cp b
    ld l, b
    ld c, b
    ld c, b
    ld c, b
    db $10
    db $10
    and b
    and b
    add sp, $78
    xor b

jr_012_4c31:
    ldh a, [rNR23]
    ld c, b
    ld a, b
    cp b
    sub b
    ret nc

    sbc b
    ld h, b
    jr nz, jr_012_4ca4

    adc b
    ld h, b
    ld b, b
    dec c
    dec c
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    ld b, $06
    ld b, $9e
    ld b, $06
    ld b, $14
    sbc [hl]
    sbc [hl]
    inc d
    sbc [hl]
    sbc [hl]
    ld e, c
    inc hl
    sbc [hl]
    sbc [hl]
    ld bc, $0106
    ld bc, $5705
    jr jr_012_4caf

    jr jr_012_4c63

    ld c, h
    ld [de], a
    ld a, [hl]

jr_012_4c63:
    ld c, d
    ld [$0000], sp
    ld e, [hl]
    dec [hl]
    ld bc, $3000
    add l
    nop
    dec bc
    add $00
    dec e
    add a
    nop
    inc bc
    ld hl, sp+$22
    nop
    inc hl
    sub c
    nop
    ld a, [bc]
    ld bc, $5430
    add a
    nop
    ld de, $5400
    db $e4
    ld [hl+], a
    ld bc, $0605
    ld b, $0c
    ld bc, $070b
    inc hl
    ld bc, $050b
    inc c
    ld bc, $060b
    ld b, $09
    add hl, bc
    ld c, $06
    dec c
    dec e
    inc hl
    ld bc, $1805
    ld c, $06
    dec c

jr_012_4ca4:
    add hl, bc
    add hl, bc
    inc hl
    ld [de], a
    nop
    dec de

jr_012_4caa:
    dec h
    ld bc, $1a00
    inc hl

jr_012_4caf:
    ld [de], a
    ld h, $01
    ld bc, $0c0b
    adc h
    nop
    ld [de], a

jr_012_4cb8:
    inc bc
    dec bc
    dec c
    ld c, $0c
    add [hl]
    nop
    adc d
    nop
    inc c
    add e
    nop
    ld d, $03
    rrca
    add hl, bc
    add hl, bc
    db $10
    add e
    nop
    dec d
    ld [bc], a
    dec bc
    ld b, $09
    add h
    nop
    ret c

    inc bc
    jr jr_012_4ce0

    add hl, bc
    dec e
    add h
    nop
    db $d3
    ld bc, $0909
    add h

jr_012_4ce0:
    nop
    ldh a, [rSC]
    jr nc, @+$1c

    dec de
    add [hl]
    nop
    ld a, [$1202]

jr_012_4ceb:
    add hl, bc
    add hl, bc
    add a
    nop
    ret c

    add h
    ld bc, $010c
    ld bc, $8719
    ld bc, $8311
    nop
    db $fd
    ld [bc], a
    inc e
    ld bc, $8501
    ld bc, $8920
    ld bc, $8428
    ld bc, $0030
    db $10
    add h
    nop
    db $e4
    ld bc, $301c
    add a
    nop
    or l
    dec b
    rla
    ld bc, $1601
    ld [de], a
    dec de
    sbc c
    nop
    dec e
    nop
    jr nc, jr_012_4caa

    nop
    stop
    jr nc, @-$78

    nop
    jp nz, Jump_000_008a

    dec d
    nop
    jr nc, jr_012_4cb8

    nop
    push de
    add [hl]
    ld bc, $0316
    add hl, bc
    add hl, bc
    ld c, $0c
    adc h
    ld bc, $8b9c
    ld bc, $00a7
    rrca
    dec h
    add hl, bc
    nop
    db $10

jr_012_4d44:
    daa
    ld bc, $1800
    dec h
    add hl, bc
    nop
    dec e
    adc b
    ld bc, $007c
    ld a, [de]
    adc c
    nop
    or b
    nop

jr_012_4d55:
    ld b, $8b
    ld bc, $0288
    ld bc, $060b
    adc e
    ld bc, $00a8
    jr nc, jr_012_4ceb

    nop
    db $fd
    inc bc
    ld d, h
    ld bc, $5401
    add [hl]
    ld bc, $030a
    ld [de], a
    add hl, bc
    ld c, $0c
    add h
    ld [bc], a
    dec d
    add e
    ld [bc], a
    inc c
    add e
    nop
    cp [hl]
    add hl, bc
    add hl, de
    add hl, bc
    ld c, $06
    rlca
    ld bc, $0501
    ld b, $0d
    add [hl]
    ld bc, $094b
    ld a, [de]
    ld [de], a
    ld [de], a
    inc de
    ld bc, $1101
    ld [de], a
    ld [de], a
    inc e
    sbc h
    nop
    ld b, h
    nop
    jr nc, @-$73

    nop
    ld de, $0b01
    inc c
    dec h
    ld bc, $008d
    rst $08
    adc b
    ld [bc], a
    ld l, d
    inc bc
    rrca
    add hl, bc
    add hl, bc
    db $10
    dec hl
    ld bc, $0083
    or $2c
    ld bc, $1a01
    dec de
    add e
    nop
    inc d
    sub h
    nop
    ld c, $00
    jr nc, jr_012_4d44

    ld bc, $0286

jr_012_4dc2:
    ld bc, $0c0b
    adc h
    nop
    rst $08
    add e
    nop
    sub $00

jr_012_4dcc:
    jr nc, jr_012_4d55

    ld bc, $01bf
    db $10
    ld bc, $0284
    sub l
    adc c
    ld [bc], a
    and b
    adc h
    ld [bc], a
    and h
    ld bc, $1b1a
    add l
    ld [bc], a
    or e
    sub a
    ld bc, $8f69
    nop
    call nz, Call_000_0184
    sub h
    adc h
    ld bc, $89f1
    ld [bc], a
    sub [hl]
    ld bc, $0c06
    adc l
    ld [bc], a
    and d
    add l
    ld bc, $0201
    ld bc, $1b1a
    add [hl]
    nop
    ld d, $8c

Jump_012_4e02:
    ld bc, $03a7
    jr nc, @+$03

    ld bc, $8c12
    ld bc, $83a7
    ld bc, $902f
    inc bc
    sub c
    ld bc, $0909
    adc l
    inc bc
    ld c, b
    add e
    ld bc, $0143
    dec b
    rlca
    adc d
    nop
    rrca
    inc b
    ld a, [de]
    ld [de], a
    rla
    ld de, $8b13
    nop
    ld [de], a

jr_012_4e2a:
    ld [bc], a
    dec b
    rlca
    dec bc
    adc h
    ld bc, $02f0
    ld de, $0f13
    adc [hl]
    inc bc
    sub d
    nop
    jr jr_012_4dc2

    ld bc, $0211
    ld b, $0c
    jr nc, jr_012_4dcc

    ld bc, $043e
    ld bc, $0901
    ld c, $0c
    adc d
    ld bc, $834e
    inc bc
    ld a, [hl]
    adc e
    ld [bc], a
    adc b
    ld bc, $0101
    adc e
    ld bc, $83b7
    nop
    db $ec
    add h
    ld bc, $8dc7
    ld bc, $01ac
    add hl, bc
    ld a, [bc]
    adc l
    inc b
    ld d, [hl]
    ld bc, $1d09
    add e
    nop
    inc d
    adc b
    ld bc, $030a
    add hl, bc
    inc e
    ld bc, $8930
    ld bc, $0226
    add hl, bc
    add hl, bc
    inc e
    adc c
    ld bc, $0215
    inc e
    jr nc, jr_012_4e85

    add [hl]

jr_012_4e85:
    ld [bc], a
    ld c, e
    dec b
    dec b
    rlca
    rrca
    add hl, bc
    add hl, bc
    inc e
    adc c
    nop
    ld e, c
    ld bc, $1311
    adc h
    ld bc, $0559
    dec bc
    ld b, $0c
    dec b
    rlca
    jr nc, jr_012_4e2a

    ld bc, $029c
    db $10
    ld de, $8c13
    ld bc, $009c

jr_012_4ea9:
    inc e
    adc d
    nop
    inc de
    ld [bc], a
    rrca
    add hl, bc
    add hl, bc
    adc h
    ld [bc], a
    ld c, h
    ld [bc], a
    ld d, $12
    dec de
    sub c
    nop
    dec bc
    nop
    jr nc, @-$78

    inc bc
    ld e, d
    adc l
    ld [bc], a
    ld a, b
    add e
    inc b
    rra
    adc d
    dec b
    rrca
    ld bc, $0101
    adc a
    inc bc
    sub c
    inc b
    ld [de], a
    add hl, bc
    add hl, bc
    ld c, $0c
    push bc
    nop
    ld h, d
    sub c
    inc bc
    sbc e
    nop
    ld d, c

jr_012_4edd:
    adc [hl]
    inc bc
    sbc l
    nop
    ld d, b
    adc b
    inc bc
    sbc h
    add l
    nop
    sub l
    ld [bc], a
    ld b, $06
    rlca
    add a
    ld [bc], a
    ccf
    add e
    dec b
    adc h
    inc bc
    ld de, $1212

jr_012_4ef6:
    inc de
    add a
    nop
    dec d
    inc bc
    ld de, $1212
    inc de
    ldh a, [$ff27]

Call_012_4f01:
    nop
    add hl, bc
    nop

Jump_012_4f04:
    jr nc, jr_012_4ef6

    add hl, hl
    nop
    jr nc, jr_012_4f0a

jr_012_4f0a:
    ld e, a
    rst $38
    add hl, sp
    dec h
    dec c
    ld bc, $2e16
    rrca
    rlca
    inc c
    rst $38
    ld bc, $0304
    ld b, $01
    rst $38
    jr jr_012_4f1e

jr_012_4f1e:
    ld h, b
    jr nc, jr_012_4ea9

    ld [$7808], sp
    jr jr_012_4f9e

    ret c

    jr jr_012_4fa1

    ret c

    ld a, b
    jr jr_012_4fa5

    ld a, b
    ld a, b
    jr @+$6a

    jr c, @+$1a

    ld e, b
    ld e, b
    ld e, b
    ld a, b
    ld a, b
    ld a, b
    jr z, jr_012_4edd

    ld a, e
    ld a, e
    ccf
    and h
    ld c, a
    and h
    and h
    add [hl]
    ld [hl], $1a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    and d
    dec b
    ld bc, $0101
    ld b, l
    ld bc, $5118
    jr jr_012_4f5f

    ld c, a
    ld [de], a
    add d
    ld c, d
    ld [$0000], sp
    ld e, [hl]
    db $e4
    ld hl, $004d

jr_012_4f5f:
    ld e, h
    adc d
    nop
    dec c
    rst $10
    nop
    ld l, $00

jr_012_4f67:
    ld e, h
    add [hl]
    nop
    dec e
    add e
    nop
    jr nz, jr_012_4f67

    ld a, [hl+]
    nop
    dec [hl]
    ld bc, $4d56
    cpl
    ld b, d
    cpl
    ld a, [hl-]
    db $e4
    ld e, a
    inc bc
    ld hl, sp+$29
    nop
    inc sp
    nop
    ld e, h
    ld hl, sp+$2a
    nop
    dec hl
    nop
    ld e, h
    add [hl]
    nop
    ld a, c
    nop
    ld e, h
    add e
    nop
    ld a, h
    rst $00
    nop
    ld a, a
    ld bc, $5656
    ret


    ld bc, $0868
    ld d, [hl]
    ld c, l
    ld c, l
    ccf

jr_012_4f9e:
    ld b, d
    ld b, d
    ld b, c

jr_012_4fa1:
    ld bc, $2801
    ld b, d

jr_012_4fa5:
    ld b, $41
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    ld bc, $2801
    ld a, [hl-]
    nop
    dec sp
    add l
    ld bc, $e48a
    ld e, a
    inc bc
    adc [hl]
    nop
    ld [$3ff8], sp
    nop
    ld b, [hl]
    nop
    ld l, b
    add [hl]
    ld bc, $846d
    nop
    inc hl
    inc bc
    ld e, c
    ld e, c
    ld c, l
    ld l, c
    rlc c
    ld [hl], b
    ld b, $59
    ld e, c
    ld h, b
    ld l, h
    rra
    ld bc, $8301
    ld bc, $867a
    ld [bc], a
    ld h, a
    inc b
    ld bc, $202f
    ld bc, $8301
    ld bc, $008a
    ccf
    add e
    ld bc, $0386
    ld e, c
    ld e, c
    ccf
    ld b, d
    add [hl]
    ld [bc], a
    add b
    nop
    add hl, sp
    add e
    ld bc, $0296
    ld e, c
    ld e, c
    add hl, sp
    ldh a, [rSVBK]
    nop
    sbc a
    sub h

Call_012_5000:
    nop
    ld d, $00
    ld l, b
    ret


    ld [bc], a
    ld c, a
    nop
    ld l, b
    add e
    nop
    inc hl
    ld bc, $6969
    add a
    ld [bc], a
    ld c, e
    nop
    ld e, h
    add h
    ld [bc], a
    ld e, a
    ld bc, $6a6a
    add h
    inc bc
    inc a
    add e
    ld [bc], a
    ld c, a
    nop
    ld l, d
    add e
    ld [bc], a
    ld e, e
    nop
    ld l, d
    add l
    inc bc
    ld d, b
    jp Jump_012_5f02


    jp $6f02


    inc b
    ld h, b
    ld l, h
    ld l, h
    ld h, b
    ld e, c
    add $03
    ld l, b
    jp $7f02


    inc b
    ld bc, $2f2f
    ld bc, $c659
    inc bc
    ld a, b
    add h
    ld [bc], a
    adc d
    add [hl]
    ld [bc], a
    adc c
    add e
    ld [bc], a
    adc d
    add h
    ld [bc], a
    sbc d
    add [hl]
    ld [bc], a
    sbc c
    add e
    ld [bc], a
    sbc d
    db $e4
    ld e, a
    inc bc
    ld [hl+], a
    ld c, l
    ldh a, [$ff2f]
    nop
    ld bc, $5d00
    add h
    nop
    rra
    ret z

    inc b
    inc sp
    ld bc, $5059
    add h
    nop
    ld hl, $5001
    ld e, c
    inc hl
    ld bc, $4d04
    ld c, l
    ld c, l
    ld e, c
    ld e, c
    add a
    ld [bc], a
    ld [hl], a
    inc b
    ld bc, $0130
    ld c, l
    ld bc, $0141
    ld hl, $0101
    rra
    push bc
    inc b
    ld h, l
    inc bc
    ld e, c
    ld e, c
    ld c, l
    ld bc, $0141
    inc h
    ld bc, $2001
    push bc
    inc b
    ld [hl], l
    inc bc
    ld e, c
    ld e, c
    ld c, l
    ccf
    ld a, [hl+]
    ld b, d
    inc b
    ld b, c
    ld e, c
    ld e, c
    ld c, l
    add hl, sp
    ld a, [hl+]
    ld a, [hl-]
    inc bc
    dec sp
    ld e, c
    ld e, c
    ld e, a
    db $e4
    ld e, a
    inc bc
    rst $38
    jr nz, @+$13

    ld a, $ff
    inc bc
    rst $38
    sbc b
    sbc b
    ld h, b
    ld [hl], b
    jr c, jr_012_5115

    ld h, h
    ld a, $bf
    ld bc, $0101
    ld bc, $0102
    add e
    ld l, h
    dec d
    or c

jr_012_50ca:
    ld d, b
    ld [de], a
    adc a
    ld c, d
    ld [$0000], sp
    adc e
    dec hl
    nop
    ld [hl+], a

jr_012_50d5:
    inc bc
    inc l
    dec d
    ld [hl+], a
    inc bc
    inc bc
    ld a, [hl+]
    dec hl
    sbc b
    sbc e
    ld b, d
    sbc b
    sbc c
    ld [bc], a
    sbc b
    ld a, [hl+]
    dec hl
    ld [hl+], a
    inc bc
    inc bc
    rlca
    ld [$63a0], sp
    ld b, d
    and b
    and c
    ld [bc], a
    and b
    rlca
    ld [$0084], sp
    dec l
    ld bc, $4398
    add h
    nop
    inc h
    ld bc, $9843
    add [hl]
    nop

Call_012_5102:
    dec sp
    ld bc, $a1a0
    adc [hl]
    nop
    inc [hl]
    ld b, e
    sbc c
    sbc b
    add h
    nop
    dec sp
    ld bc, $1614
    adc b
    nop
    ld d, d

jr_012_5115:
    ld bc, $1614
    ld [hl+], a
    inc bc
    inc l

jr_012_511b:
    dec b
    adc $00
    rrca
    nop
    adc h
    db $e4
    ld h, d
    inc bc
    rst $38
    dec [hl]
    inc d
    ld d, $ff
    nop
    inc c
    rlca
    add hl, bc
    ld b, $ff
    ld a, b
    ld c, b
    ld c, b
    jr nc, jr_012_5184

    ld [hl], b
    sub b
    ld b, b
    add b
    jr nc, jr_012_50ca

    ld h, b
    adc b
    jr c, jr_012_5176

    adc b
    ld h, b
    ld h, b
    ld h, b
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld h, b
    jr nc, jr_012_5179

    sub b
    sub b

jr_012_514b:
    jr c, jr_012_50d5

    ld h, b
    ld h, b
    ld b, b
    add b
    sbc b
    sbc b
    ld c, b
    jr jr_012_516e

    jr jr_012_5170

    ret nz

    ret nz

    ld [hl], h
    ld [hl], h
    ld [hl], b
    cp b
    cp b
    ld e, b
    ld e, b
    jr z, jr_012_514b

    adc b
    ret c

    ret c

    ld a, b
    ld a, b
    ld c, b
    jr jr_012_511b

    or b
    jr jr_012_51a6

jr_012_516e:
    jr c, @+$6a

jr_012_5170:
    ld [$9898], sp
    sbc d
    sbc d
    ld c, l

jr_012_5176:
    sbc d
    sbc d
    sbc d

jr_012_5179:
    sbc d
    sbc d
    sbc d
    ld c, a
    ld c, a
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d

jr_012_5184:
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    ld c, a
    ld c, a
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    ld bc, $0105
    db $10
    ld bc, $8347
    ld l, h
    dec d
    dec h
    ld d, c
    ld [de], a
    sub [hl]
    ld c, d
    ld [$e400], sp

jr_012_51a6:
    rst $28
    inc bc
    dec bc
    adc e
    ld [$0807], sp
    add hl, hl
    rlca
    ld [$0729], sp
    ld [$0007], sp
    inc hl
    inc bc
    add hl, bc
    nop
    ld [$1210], sp
    inc de
    db $10
    ld [de], a
    inc de
    db $10
    ld [de], a
    add l
    nop
    ld a, [$1101]
    ld [de], a
    daa
    ld c, a
    nop
    db $10
    call nz, $1001
    ld bc, $6f6e
    daa
    ld e, c
    nop
    ld l, l
    call nz, Call_000_2001
    ld bc, $2846
    inc h
    ld e, c
    inc b
    ld l, c
    ld e, c
    ld e, c
    daa
    ld b, [hl]
    add l
    ld bc, $240c
    ld e, c
    ld [bc], a
    ld c, l
    ld e, c
    ld e, c
    adc c
    ld bc, $031a
    add hl, hl
    ld e, c
    ld e, c
    add hl, hl
    adc c
    ld bc, $0328
    ld b, e
    ld b, e
    ld h, h
    ld b, e
    jp $6501


    add a
    ld bc, $073a
    inc [hl]
    dec [hl]
    ld h, h
    ld bc, $6401
    ld bc, $8701
    ld bc, $031a
    ld b, e
    ld b, e
    inc de
    ld bc, $01c3
    add l
    add a
    ld bc, $232a
    ld bc, $3362
    nop
    ld bc, $0187
    ld a, [hl-]
    dec h
    ld bc, $0188
    ld a, b
    ld bc, $6f6e
    dec h
    ld b, e
    ld bc, $6e6d
    add [hl]
    ld bc, $022b
    inc sp
    inc [hl]
    dec [hl]
    inc hl
    ld bc, $018e
    sbc c
    ld bc, $3433
    add a
    ld bc, $221a
    ld bc, $6d00
    add e
    ld bc, $f0e1
    ld h, $01
    adc d
    nop
    ld l, a
    add e
    ld bc, $03e8
    ld l, [hl]
    ld l, a
    ld bc, $8a33
    ld bc, $8c8a
    ld bc, $01c5
    inc [hl]
    dec [hl]
    adc l
    ld bc, $84a4
    ld bc, $03e0
    ld bc, $6e6d
    ld l, [hl]
    adc c
    ld bc, $038b
    inc sp
    inc [hl]
    dec [hl]
    ld bc, $0190
    ld sp, hl
    sbc e
    ld bc, $83da
    ld bc, $f095
    ld a, [hl+]
    ld [bc], a
    ld a, [hl+]
    adc [hl]
    ld bc, $02c5
    inc sp
    inc [hl]
    dec [hl]
    sbc d
    ld [bc], a
    ld h, a
    nop
    dec [hl]
    add [hl]
    ld bc, $89d3
    ld bc, $969a
    ld [bc], a
    sub h
    ldh a, [$ff28]
    ld bc, $86eb
    ld bc, $f0e4
    jr z, jr_012_52a0

    cp e

jr_012_52a0:
    ld b, $6d
    ld l, a
    ld l, l
    ld l, a
    ld bc, $6d01
    ldh a, [rNR51]
    ld [bc], a
    xor e
    ld b, $6e
    ld l, [hl]
    ld l, a
    add hl, hl
    ld bc, $2901
    adc c
    ld [bc], a
    ld c, b
    add l
    ld bc, $8b72
    ld bc, $84c8
    ld bc, $0074
    inc sp
    adc d
    ld bc, $047a
    ld b, e
    ld b, e
    inc de
    ld b, e
    ld b, e
    adc b
    ld [bc], a
    jp c, $0101

    ld bc, $0191
    push bc
    ld h, d
    inc sp
    sbc b
    ld bc, $06da
    inc sp
    inc [hl]
    dec [hl]
    ld bc, $0101
    ld bc, $029f
    ld [$3bf0], a
    ld bc, $9aba
    inc bc
    sub $01
    ld l, [hl]
    ld l, [hl]

jr_012_52ee:
    add h
    ld [bc], a
    db $10
    rst $00
    inc b
    add e
    nop
    ld b, [hl]
    add a
    ld bc, $00c0
    daa
    push bc
    inc b
    sub c
    ld bc, $1511

Call_012_5301:
    add [hl]
    ld bc, $00a1
    db $10
    rst $00
    inc b
    and c
    inc b
    jr z, @+$03

    ld bc, $9c9c
    adc a
    inc b
    sub a
    ld bc, $3433
    adc e
    inc b
    xor c
    nop
    ld bc, $0489
    sub [hl]
    ld [bc], a
    nop
    nop
    ld [$0462], sp
    ld h, e
    inc b
    ld bc, $0000
    add [hl]
    inc b
    call c, Call_000_0703
    nop
    ld [$8307], sp
    inc b
    pop af
    nop
    adc h
    inc hl
    inc bc
    rst $38
    inc e
    inc de
    cpl
    rst $38
    nop
    ld bc, $0101
    rst $38
    cp b
    ld l, b
    adc b
    jr c, jr_012_52ee

    and b
    ld e, c
    ld c, h
    adc b
    ld [bc], a
    ld [bc], a
    ld bc, $1401
    dec d
    add e
    ld l, h
    dec d
    jr c, jr_012_53a8

    ld [de], a
    sbc l
    ld c, d
    ld [$0700], sp
    adc e
    ld h, h
    ld h, h
    ld c, a
    ld h, h
    ld h, h
    ld c, a
    ld h, h
    add $00
    rlca
    add hl, bc
    ld c, a
    ld l, [hl]
    or e
    or d
    ld l, [hl]
    or e
    or d
    ld l, [hl]
    or e
    or d
    add [hl]
    nop
    db $10
    ld bc, $b16e
    ld [hl+], a
    ld c, a
    dec b
    or b
    ld l, [hl]
    or c
    or b
    ld l, [hl]
    or c
    add h
    nop
    dec h
    ld bc, $644f
    ld [hl+], a
    ld [hl], $8c
    nop
    dec b
    ld [hl+], a
    ld [hl], $8c
    nop
    dec d
    ld [hl+], a
    ld [hl], $25
    ld [hl], d
    add h
    nop
    ld [hl+], a
    add h
    nop
    ld b, b
    dec h
    ld e, b
    add h
    nop
    ld b, d
    adc c
    nop
    ld h, $04
    or c
    ld [hl], $67
    ld [hl], $b0

jr_012_53a8:
    pop de
    nop
    ld b, b
    adc c
    nop
    ld de, $3602
    ld h, a
    ld [hl], $83
    nop
    ld e, $cb
    nop
    ld e, l
    sub e
    nop
    ld e, [hl]
    ld [bc], a
    ld [hl], $67
    ld [hl], $9d
    nop
    dec h
    nop
    ld h, a
    sub e
    nop
    ld b, h
    add a
    nop
    ld [hl+], a
    adc [hl]
    nop
    ld bc, $0300
    adc [hl]
    nop
    ld de, $0300
    adc c
    nop
    ld [hl], c
    add h
    nop
    ld [hl+], a
    nop
    inc bc
    adc d
    nop
    add c
    ld bc, $3669
    adc h
    ld bc, $020d
    ld [hl], $4d
    ld [hl], $83
    ld bc, $221d
    ld c, a
    dec h
    ld c, [hl]
    add h
    nop
    xor e
    nop
    inc bc
    add e
    nop
    ld b, c
    dec h
    ld e, [hl]
    add h
    nop
    ld b, d
    nop
    inc bc
    adc [hl]
    nop
    pop bc
    nop
    inc bc
    adc [hl]
    nop
    ld sp, $0300
    adc [hl]
    nop
    pop hl
    ld bc, $b103
    rlc c
    ld e, h
    sub e
    ld bc, $8d5d
    nop
    ld [hl], d
    nop
    inc bc
    adc [hl]
    nop
    add c
    nop
    inc bc
    adc [hl]
    nop
    sub c
    nop
    inc bc
    add [hl]
    ld bc, $8826
    ld bc, $8757
    nop
    ld h, b
    add l
    nop
    ld b, d
    ld bc, $6eb2
    adc h
    nop
    ld [hl], e
    ld [bc], a
    or c
    ld c, a
    ld [hl], h
    adc h
    nop
    add e
    ld [bc], a
    ld h, h
    ld [hl], $4d
    adc b
    nop
    sub e
    add h
    nop
    ld b, e
    ld bc, $3636
    adc d
    nop
    ld [hl], e
    ld [hl+], a
    ld c, a
    ld bc, $6736
    adc d
    ld [bc], a
    jr nc, jr_012_5478

    ld [hl], $01
    ld [hl], $36
    adc d
    nop
    ld [hl], b
    inc b
    or b
    ld l, [hl]
    or c
    ld e, [hl]
    ld e, [hl]
    call Call_000_0f00
    ld bc, $5e5e
    adc l
    nop
    db $10
    ld [bc], a
    ld e, [hl]
    ld e, [hl]
    ld l, [hl]
    adc c
    ld bc, $22f0
    ld c, [hl]
    ld bc, $5e5e

jr_012_5478:
    add e
    ld [bc], a
    inc sp
    adc c
    ld bc, $0160
    ld e, [hl]
    ld e, [hl]
    adc l
    ld [bc], a
    ld h, b
    nop
    or b
    rst $08
    nop
    db $10
    ld [$364f], sp
    ld h, h
    ld h, h
    ld [hl], $64
    ld h, h
    ld [hl], $64
    rst $00
    ld [bc], a
    rst $10
    ccf
    inc bc
    adc c
    ld [bc], a
    and c

jr_012_549b:
    add l
    ld bc, $016a
    ld c, a
    or b
    adc h
    nop
    ret nz

    nop
    inc bc
    adc $02
    ld l, $02
    inc bc
    ld [hl], $b2
    adc h
    nop
    ld b, b
    nop
    inc bc
    jp Jump_012_4e02


    adc h
    inc bc
    inc d
    ld [hl+], a
    ld [hl], $8b
    inc bc
    inc [hl]
    nop
    ld e, [hl]
    adc l
    ld [bc], a
    or d
    nop
    inc bc
    adc $02
    ld a, [hl]
    ld bc, $5e03
    adc [hl]
    ld bc, $0011
    ld e, [hl]
    adc d
    ld bc, $83a4
    inc bc
    ld l, h
    nop
    ld e, [hl]
    adc b
    ld bc, $8f64
    ld bc, $051a
    or b
    ld l, [hl]
    or c
    or b
    ld l, [hl]
    inc bc
    adc a
    ld bc, $8d00
    ld [bc], a
    pop de
    nop
    adc h
    db $e4
    jr nz, @+$05

    rst $38
    inc b
    ld a, $17
    dec b
    ld a, [bc]
    rlca
    ld [bc], a
    rst $38
    rlca
    rst $38
    jr z, jr_012_5564

    xor b
    xor b
    jr z, @+$2a

Call_012_5500:
    xor b

Jump_012_5501:
    jr c, jr_012_549b

    jr c, @-$66

    ld l, b
    sbc b
    ld l, b
    pop de
    cp l
    ld d, b
    dec c
    ld [de], a
    ld a, [de]
    jp nc, $0101

    ld bc, $0201
    ld b, $83
    ld l, h
    dec d
    ldh a, [rHDMA4]
    ld [de], a
    and a
    ld c, d
    ld [$0700], sp
    sub e
    rlca
    nop
    nop
    ld [$0007], sp
    ld [$0083], sp
    ld bc, $0100
    ld [hl+], a
    inc bc
    dec bc
    ld bc, $1510
    dec d
    ld d, $14
    ld a, [bc]
    ld d, $14
    dec d
    dec d
    ld [de], a
    add h
    nop
    inc c
    inc bc
    or b
    ld l, [hl]
    ld l, [hl]
    cp c
    ld [hl+], a
    or l
    inc bc
    cp b
    ld l, [hl]
    ld l, [hl]
    or c
    add h
    nop
    inc c
    dec b
    ld h, h
    ld [hl], e
    ld [hl], e
    ld h, h
    or l
    or l
    ret


    nop
    dec [hl]
    ld a, [bc]
    or d
    ld l, [hl]
    ld l, [hl]
    cp e
    or l
    or a
    or l
    cp d
    ld l, [hl]
    ld l, [hl]
    or e

jr_012_5564:
    ldh a, [$ff2f]
    nop
    inc e
    ldh a, [$ff29]
    nop
    inc e
    nop
    cp h
    adc c
    nop
    ld b, a
    ld b, $2a
    ld b, [hl]
    ld b, [hl]
    dec hl
    or l
    ld c, l
    or l
    add e
    nop

jr_012_557b:
    or c
    add h
    nop
    inc c

jr_012_557f:
    add e
    nop
    ld bc, $2a02
    ld b, [hl]
    dec hl
    adc b
    nop
    ld [$008f], sp
    ld bc, $008a
    ld bc, $9400
    ld [hl-], a
    inc bc
    rst $38
    dec [hl]
    rla
    dec b
    ld l, $16
    ld b, $ff
    nop
    ld b, $05
    ld [bc], a
    nop
    ld bc, HeaderLogo
    rst $38
    ret c

    sbc b
    nop
    ld c, b
    sbc b
    ret c

    and b
    jr nc, jr_012_55dd

    ld b, b
    ld a, b
    jr c, @+$52

    or b
    jr nc, @+$72

    ld b, b
    jr nz, jr_012_557f

    ld e, b
    ld l, b
    cp b
    sbc b
    sbc b
    sbc b
    ld a, b
    ld c, b
    ld [hl], b
    xor b
    sbc b
    ret nc

    ret c

    jr @+$3a

    jr c, jr_012_55d0

    ld [$9a08], sp
    sbc d
    ld d, b
    dec c
    add [hl]
    ld d, b

jr_012_55d0:
    sbc d
    sbc d
    ld c, a
    rrca
    ld d, b
    dec c
    rrca
    add [hl]
    ld d, b
    ld d, b
    sbc d
    sbc d
    add a

jr_012_55dd:
    inc b
    ld [bc], a
    ld bc, $3501
    rrca
    jr jr_012_5636

    jr jr_012_557b

    ld d, l
    ld [de], a
    xor [hl]
    ld c, d
    ld [$0000], sp
    ld h, [hl]
    db $e4
    ld l, $09
    dec l
    ld [de], a
    add hl, bc
    add hl, bc
    add hl, bc
    rlca
    dec b
    rlca
    ld bc, $2f01
    ld bc, $2521

Jump_012_5600:
    ld bc, $191c
    add hl, bc
    ld a, [bc]
    ld [$010a], sp
    ld bc, $212f
    inc h
    ld [hl+], a
    inc hl
    ld bc, $3001
    ld bc, $1a01
    ld a, [bc]
    ld [$300a], sp
    ld bc, $242f
    cpl
    dec h
    ld h, $30
    inc h
    ld bc, $1304
    ld de, $0113
    ld bc, $2f22
    ld bc, $5b5a
    call nz, $6e00
    nop
    ld bc, $062a
    nop
    inc c
    ld [hl+], a

jr_012_5636:
    ld bc, $2200
    ld a, [hl+]
    add hl, bc
    dec b
    ld c, $0c
    ld bc, $2501
    add hl, bc
    adc l
    nop
    sub b
    ld bc, $095a
    adc l
    nop
    and b
    adc l
    nop
    xor a
    ld [bc], a
    add hl, bc
    ld c, $06
    db $e4
    ld a, e
    add hl, bc
    ld [hl+], a
    ld [de], a
    nop
    dec de
    rst $00
    nop
    inc sp
    add e
    ld bc, $004c
    jr nc, @+$28

    ld bc, $1a05
    ld [de], a
    ld [de], a
    dec de

jr_012_5668:
    ld bc, $2730
    ld bc, $0101
    jr nc, jr_012_569b

    ld bc, $2300
    inc l
    ld bc, $3003
    ld hl, $3026
    adc h
    ld bc, $0070
    inc h
    add e
    nop
    ld a, c
    nop
    rra
    jr z, jr_012_56a4

    ld bc, $2f1f
    add e
    nop
    ld a, c
    nop
    jr nz, jr_012_56b7

    ld bc, $2003
    cpl
    ld b, $0c
    add l
    ld bc, $03b2
    jr nc, @+$03

jr_012_569b:
    ld bc, $230b
    ld b, $02
    add hl, bc
    ld c, $0c
    add a

jr_012_56a4:
    ld bc, $00b3
    rrca
    add a
    nop
    ret z

    add l
    nop
    adc c
    ld bc, $1601
    ret


    nop
    inc sp
    add e
    nop
    sbc e

jr_012_56b7:
    add e
    nop
    ld e, b
    ld [bc], a
    jr nz, jr_012_56be

    add hl, bc

jr_012_56be:
    ldh a, [$ff34]
    nop
    ld bc, $02ca
    add hl, bc
    add h
    ld bc, $0068
    add hl, de
    adc d
    ld [bc], a
    scf
    ld bc, $0101
    adc e
    ld [bc], a
    ld b, e
    add a
    ld bc, $0291
    ld a, [de]
    ld [de], a
    ld [de], a
    adc d
    ld [bc], a
    ld c, e
    inc bc
    ld hl, $0101
    jr nc, jr_012_5668

    ld [bc], a
    ld b, l
    add e
    ld bc, $02a3
    rra
    ld bc, $8724
    ld bc, $075f
    ld [de], a
    ld bc, $2120
    ld bc, $0120
    cpl
    adc c
    ld bc, $016d
    jr nz, jr_012_5722

    add e
    ld [bc], a
    sub e
    nop
    rra
    add a
    ld bc, $8471
    ld bc, $00cb
    inc c
    ret


    ld bc, $00bf
    dec c
    add a
    ld bc, $02de
    ld b, $0c
    ld bc, $008d
    adc h
    nop
    db $10
    add e
    nop
    ld a, e
    nop
    dec h
    adc c

jr_012_5722:
    nop
    ld a, [hl+]
    nop
    rla
    inc hl
    ld bc, $2a01
    ld a, [de]
    call nz, Call_012_5301
    ld bc, $2001
    add l
    ld [bc], a
    ld [hl], e
    ld bc, $2f01
    db $e4
    ld a, a
    add hl, bc
    rst $08
    nop
    jr nc, @+$03

    ld bc, $8e19
    inc bc
    add d
    adc [hl]
    inc bc
    sub b
    inc bc
    ld bc, $0130
    ld a, [de]
    adc e
    ld [bc], a
    ld [hl-], a
    nop
    inc hl
    add h
    ld bc, $896f
    ld [bc], a
    ld b, h
    ld bc, $0126
    adc c
    ld bc, $235d
    ld [de], a
    nop
    dec hl
    add h
    ld bc, $00c9
    inc c
    add l
    ld bc, $0668
    dec b
    rlca
    dec b
    cpl
    ld bc, $0d0b
    add l
    nop
    sbc c
    dec b
    ld bc, $3051
    ld [$080a], sp
    db $e4
    ld a, a
    add hl, bc
    db $e4
    ld a, a
    inc bc
    adc c
    nop
    sub h
    ld bc, $2625
    adc e
    ld bc, $01fc
    ld c, $0c
    add e
    nop
    ld a, b
    ld bc, $2120
    adc d
    nop
    push bc
    inc b
    ld b, $0c
    ld bc, $2420
    adc l
    nop
    and b
    ld bc, $2f20
    adc [hl]
    nop
    pop bc
    ldh a, [$ff29]
    nop
    rst $08
    ld hl, sp-$7a
    dec b
    ld b, $c3
    dec b
    rra
    rlca
    jr nz, @+$24

    inc hl
    jr nz, @+$03

    ld bc, $2421
    add e
    ld bc, $00ca
    inc h
    add e
    ld b, $04
    ld b, $25
    ld h, $20
    ld bc, $2401
    cpl
    add e
    inc bc
    ldh a, [c]
    nop
    cpl
    add e
    ld b, $14
    ld [bc], a
    ld e, d
    ld e, e
    jr nz, @-$7b

    ld bc, $00ca
    dec c
    call nz, Call_012_4205
    ld bc, $2b2a
    add e
    ld b, $24
    ld bc, $0d0b
    rst $00
    dec b
    ld d, l
    dec h
    ld b, $00
    dec c
    ld h, $09
    ldh a, [$ffaf]
    dec b
    ld d, b
    ld [bc], a
    ld b, $06
    dec c
    add a
    nop
    sub a
    inc b
    ld d, b
    ld bc, $1311
    ld de, $0588
    ld hl, $06c4
    ld b, [hl]
    nop
    ld b, $f0
    ld e, a
    nop
    rst $08
    nop
    ld h, a
    db $e4
    ld a, a
    inc bc
    rst $38
    jr jr_012_5824

    rst $38
    ld [bc], a
    rst $38
    add b
    jr c, jr_012_5889

    jr c, @+$54

    dec a
    ld bc, $0101
    ld bc, $0101
    add e
    ld l, h

jr_012_5824:
    dec d
    ld de, $1258
    or l
    ld c, d
    ld [$0000], sp
    adc e
    add hl, hl
    ld h, h
    nop
    nop
    inc hl
    inc bc
    nop
    nop
    inc h
    rla
    jp z, $1500

    nop
    inc l
    dec h
    ld c, a
    nop
    cp l
    rst $00
    nop
    ld [hl+], a
    nop
    ld h, h
    dec h
    ld [hl], $00
    ld l, d
    rst $00
    nop
    ld [hl-], a
    inc b
    ld h, h
    ld [hl], $67
    ld [hl], $36
    call z, Call_012_4500
    ld [bc], a
    ld [hl], $36
    ld h, [hl]
    rlc b
    ld d, l
    inc hl
    or l
    jp z, $6500

    nop
    rla
    inc hl
    or l
    jp z, Jump_012_7500

    inc h
    ld h, l
    call nz, $8500
    rst $08
    nop
    stop
    adc h
    db $e4
    ld h, e
    inc bc
    rst $38
    ld [hl+], a
    ld c, $34
    ld d, $14

jr_012_587c:
    dec [hl]
    rst $38
    inc b
    ld [$0907], sp
    ld [$ff04], sp
    ret c

    xor b
    xor b
    ret c

jr_012_5889:
    ld hl, sp-$48
    jr c, jr_012_5895

    ld a, b

jr_012_588e:
    and b
    ret nc

    ldh [$ff98], a

jr_012_5892:
    cp b
    cp b
    xor b

jr_012_5895:
    ld e, b
    ret c

    ld e, b
    sbc b
    ld c, b
    ld l, b

jr_012_589b:
    jr z, jr_012_589d

jr_012_589d:
    xor b
    ld e, b
    xor b
    ld c, b
    adc b
    ld c, b
    ld hl, sp+$70
    ld h, b
    jr nc, @-$26

    ld [$5828], sp
    ld a, b
    jr z, jr_012_58e6

    adc b
    cp b
    cp b
    ld l, b
    ld l, b
    ld a, b
    cp b
    ld l, b
    jr c, jr_012_58f0

    jr c, jr_012_5892

    jr nc, jr_012_587c

    ld a, b
    ret z

    xor b
    xor b
    add b
    jr nc, jr_012_589b

    xor b
    jr z, jr_012_588e

    ld a, b
    xor b
    ret nz

    ld l, b
    ld l, b
    cp b
    jr c, jr_012_5906

    jr c, jr_012_5938

    ld l, b
    cp b
    cp b
    ld l, b
    jr c, jr_012_5942

    ld b, h
    sub a
    sub a
    ld l, h
    ld l, h
    ld b, h
    sub a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    sub [hl]
    ld c, a
    ld l, h
    ld l, h
    ld l, h

jr_012_58e6:
    sbc b
    sub [hl]
    ld l, h
    ld c, l
    sub [hl]
    sbc b
    sbc d
    ld l, h
    ld l, h
    sub [hl]

jr_012_58f0:
    ld l, h
    ld l, h
    ld l, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld l, h
    ld l, h
    ld b, h
    ld b, h
    ld l, h
    ld l, h
    ld b, $01
    ld bc, $5501
    rlca
    add e
    ld l, h
    dec d

jr_012_5906:
    ld [hl], a

jr_012_5907:
    ld e, b
    ld [de], a
    cp h
    ld c, d
    ld [$0001], sp
    adc e
    jr z, jr_012_5911

jr_012_5911:
    dec b
    ld [$0807], sp
    ld [hl], $07
    ld [$1529], sp
    nop
    ld [de], a
    add h
    nop
    dec bc
    ld bc, $2846
    jr z, jr_012_5973

    ld b, $10
    ld [de], a
    ld [hl], $10
    ld [de], a
    dec d
    ld [de], a
    jr z, jr_012_5964

    inc b
    daa
    jr z, jr_012_5968

    daa
    jr z, jr_012_5959

    ld b, [hl]
    nop
    inc h

jr_012_5938:
    inc h
    ld [hl], $03
    rlca
    ld b, l
    ld b, [hl]
    ld b, h
    push bc
    nop
    ld a, [bc]

jr_012_5942:
    nop
    ld [$3824], sp
    inc b
    db $10
    ld c, $00
    rrca
    ld [de], a
    add l
    nop
    dec b
    dec h
    scf
    inc bc
    db $10
    dec d
    ld [de], a
    scf
    add a
    nop
    ld h, b

jr_012_5959:
    nop
    ld e, d
    ld h, $37
    ld b, c
    dec d
    inc c
    ld bc, $c015
    add hl, hl

jr_012_5964:
    scf
    ld b, c
    add hl, hl
    inc de

jr_012_5968:
    rlc b
    sub d
    ld b, d
    dec h
    ld b, [hl]
    ld bc, $2825
    daa
    scf

jr_012_5973:
    add a
    nop
    inc bc
    rlca
    daa
    jr z, @+$39

    daa
    jr z, jr_012_59b4

    daa
    jr z, jr_012_5907

    nop
    inc bc
    rlca
    db $10
    ld [de], a
    add hl, hl
    db $10
    ld [de], a
    add hl, hl
    db $10
    ld [de], a
    adc c
    nop
    or b
    inc bc
    inc de
    daa
    jr z, @+$15

    adc c
    nop
    cp [hl]
    add e
    nop
    ld c, e
    inc bc
    ld b, l
    ld b, [hl]
    ld b, h
    ld b, l
    adc b
    nop
    inc bc
    ld h, $00
    add l
    nop
    ld hl, sp+$02
    ld [$0765], sp
    add e
    ld bc, $0305
    nop
    ld [$1065], sp
    add l
    nop

jr_012_59b4:
    dec d
    ld bc, $1013
    add e
    ld bc, $0215
    dec d
    ld [de], a
    inc de
    ld h, $4f
    ld [bc], a
    ld [hl], d
    ld c, a
    ld c, a
    call nz, $2801
    nop
    ld [hl], d
    ld h, $36
    inc b
    ld e, b
    ld [hl], $36
    ld [hl], $58
    ret z

    ld bc, $003a
    inc b
    add hl, hl
    dec b
    inc h
    jr c, @+$06

    rlca
    rrca
    dec d
    ld c, $00
    add e
    ld bc, $0056
    rrca
    push bc
    nop
    add b
    inc b
    rlca
    ld [$074f], sp
    nop
    add e
    ld bc, $0166
    ld [$844f], sp
    nop
    halt
    add e
    nop
    ld c, e
    nop
    nop
    add e
    ld bc, $0176
    ld b, l
    ld b, [hl]
    inc h
    scf
    nop
    pop bc
    add h
    nop
    add b
    nop
    dec d
    ld b, c
    dec d
    inc c
    adc c
    nop
    adc h
    ld [bc], a
    scf
    scf
    scf
    add l
    ld bc, $0097
    daa
    adc b
    nop
    and d
    ld b, $27
    dec h
    ld b, [hl]
    scf
    daa
    jr z, jr_012_5a2d

    adc b
    nop
    ld h, b
    dec b
    rlca
    nop
    nop

jr_012_5a2d:
    add hl, hl
    db $10
    ld [de], a
    adc h
    ld bc, $00b3
    inc de
    adc [hl]
    ld bc, $02b1
    ld b, [hl]
    ld b, h
    ld [$018c], sp
    or e
    ld bc, $0000
    adc l
    ld bc, $00e2
    rlca
    adc b
    nop
    inc b
    nop
    rlca
    add h
    nop
    push af
    nop
    db $10
    adc b
    nop
    inc d
    dec b
    db $10
    dec d
    dec d
    ld [de], a
    db $10
    dec d
    daa
    ld c, a
    ld bc, $0807
    dec h
    ld c, a
    daa
    ld [hl], $01
    rlca
    ld [$3625], sp
    ld bc, $0605
    add a
    ld [bc], a
    ld [hl-], a
    nop
    inc hl
    add h
    nop
    ld b, e
    nop
    ld c, $85
    nop
    ld d, l
    inc b
    jr c, jr_012_5a8c

    ld [de], a
    db $10
    dec d
    add e
    ld [bc], a
    ld d, b
    nop
    rlca
    add [hl]
    nop
    ld h, l
    inc bc
    scf
    or b
    ld l, [hl]
    or c

jr_012_5a8c:
    add e
    ld [bc], a
    ld h, b
    nop

jr_012_5a90:
    ld b, h
    add a
    ld [bc], a
    ld h, c
    ld b, $64
    scf
    ld h, h
    db $10
    ld [de], a
    scf
    scf
    adc b
    nop
    add h
    ld b, $b2
    ld l, [hl]
    or e
    daa
    ld b, [hl]
    jr z, jr_012_5b01

    adc e
    nop
    sub h
    inc bc
    db $10
    dec d

jr_012_5aad:
    ld [de], a
    ld e, d
    adc e
    nop
    and h
    jp Jump_012_7b00


    add e
    nop
    rlca
    ld [bc], a
    or b
    ld l, [hl]
    or c
    adc h
    ld [bc], a
    and a
    ld [bc], a
    ld h, h
    scf
    ld h, h
    adc h
    ld [bc], a
    and a
    ld [bc], a
    or d
    ld l, [hl]
    or e
    adc h
    ld [bc], a
    and a
    nop
    daa
    jr z, @+$48

    ld bc, $2728
    adc e
    nop
    db $f4
    add h
    nop
    push af
    ld bc, $0708
    add a
    ld [bc], a
    dec b
    add h
    nop
    ld b, $02
    dec d
    ld [de], a
    db $10
    add a
    ld [bc], a
    dec d
    add h
    nop
    ld d, $8d
    ld [bc], a
    ld [hl+], a
    ld bc, $4f4f
    adc l
    ld [bc], a
    ld [hl-], a
    inc hl
    ld [hl], $83
    ld [bc], a
    ld c, d
    add a
    ld [bc], a
    jr c, jr_012_5b00

    inc b

jr_012_5b00:
    dec b

jr_012_5b01:
    add h
    ld bc, $0353
    ld [de], a
    db $10
    ld [de], a
    jr c, jr_012_5a90

    ld bc, $0250
    scf
    scf
    rlca
    adc d
    ld [bc], a
    or e
    add e
    ld [bc], a
    ld h, b
    ld bc, $1210
    adc c

jr_012_5b1a:
    ld [bc], a
    call nz, $0705
    ld b, l
    ld e, d
    daa
    ld b, [hl]
    jr z, jr_012_5aad

    ld [bc], a
    call nc, $c105
    dec d
    ld e, d
    db $10
    dec d
    ld [de], a
    call z, $9b02
    ld a, [hl+]
    scf
    add e
    ld bc, $01a3
    ld e, d
    scf
    adc d
    ld [bc], a
    ld h, d
    adc $02
    jp nc, $038c

    cp h
    inc bc
    or d
    ld l, [hl]
    or e
    rlca
    jp $c200


    adc d
    ld [bc], a
    db $e4
    nop
    rlca
    sub b
    ld [bc], a
    ldh a, [rSB]
    nop
    nop
    adc b
    ld bc, $8607
    ld bc, $8800
    ld bc, $8617
    ld bc, $cf10
    ld bc, $cf2f
    ld bc, $293f
    dec b
    add l
    ld [bc], a
    ld b, c
    adc b
    ld bc, $8657
    ld [bc], a
    ld d, b
    adc b
    ld bc, $8667
    ld [bc], a
    ld h, b
    adc b
    ld bc, $0077
    ld b, h
    add e
    nop
    ld [hl], l
    rlc c
    sub c
    ld [bc], a
    ret nz

    scf
    scf
    jp nc, $a201

    ld [bc], a
    ld b, [hl]
    dec h
    jr z, jr_012_5b1a

    ld bc, $8aa0
    ld bc, $83e7
    nop
    or [hl]
    adc l
    inc b
    xor a
    ld [bc], a
    db $10
    ld [de], a
    add hl, hl
    adc [hl]
    inc b
    or b
    nop
    inc de
    adc h
    inc b
    or b
    ld [bc], a
    rlca
    ld b, l
    ld b, [hl]
    adc l
    inc b
    ldh [rTIMA], a
    nop
    nop
    rlca
    ld [$0736], sp
    adc d
    ld [bc], a
    di
    add e
    inc b
    rst $38
    ld [bc], a
    rlca
    ld [$2910], sp
    dec d
    add e
    nop
    dec hl
    add [hl]
    inc bc
    rra
    inc b
    ld c, a
    ld [hl], h
    ld c, a
    daa
    ld b, [hl]
    add h
    nop
    dec sp
    ld h, $36
    inc bc
    ld c, l
    ld [hl], $10
    dec d
    add e
    nop
    ld c, e
    nop
    ld [$0387], sp
    dec a
    ld [hl+], a
    ld b, [hl]
    add e
    nop
    ld e, e
    add l
    inc bc
    ld d, a
    add l

jr_012_5be6:
    nop
    ld hl, sp+$00
    scf
    adc b
    inc bc
    sub c
    nop
    rlca
    rlc b
    or h
    nop
    ld e, d
    adc [hl]
    dec b
    ld l, b
    add e
    ld bc, $c482
    nop
    add h
    sub a
    nop
    add a
    nop
    daa
    add [hl]
    nop
    and b
    add h
    nop
    cp b
    adc b
    ld bc, $01b0

jr_012_5c0c:
    nop
    nop
    add h
    nop
    ret z

    adc b
    ld bc, $01c0
    nop
    nop
    add h
    nop
    ret c

    nop
    inc de
    adc c
    dec b
    or [hl]
    nop
    ld b, h
    add e
    nop
    jp hl


    inc bc
    ld b, [hl]

jr_012_5c26:
    ld b, h
    ld [$2607], sp
    nop
    adc [hl]
    nop
    ldh a, [rP1]
    adc h
    rst $38
    dec c
    cpl
    rla
    ld d, $30
    dec h
    ld [bc], a
    inc e
    rst $38
    ld [bc], a
    ld b, $03
    ld [bc], a
    inc bc
    rst $38
    ldh a, [rBCPS]
    jr c, jr_012_5c0c

    jr nz, jr_012_5be6

    ld h, b
    sbc b
    ld [$68c8], sp
    sbc b
    ld [$a800], sp
    cp b

jr_012_5c50:
    adc b
    adc b
    ld l, b
    xor b
    ret nz

    adc b
    adc b
    ld c, b
    ld c, b
    ld l, b
    ld l, b
    adc b
    jr c, jr_012_5cd6

    ld e, b
    ld a, b
    ccf
    adc b
    ld d, b
    ld d, b
    ld c, a
    ccf
    adc [hl]
    ld a, e
    ld a, [bc]
    ccf
    adc [hl]
    ccf
    adc b
    ld d, b
    ld a, [bc]
    ld e, c
    dec b
    ld bc, $0101
    ld b, l
    rlca
    jr jr_012_5cc9

    jr @+$33

    ld e, h
    ld [de], a
    jp Jump_000_084a


    nop
    nop
    ld e, [hl]
    db $e4
    daa
    ld bc, $3000
    add e
    nop
    ld hl, $00c4
    dec l
    nop
    ld bc, $00d9
    ld sp, $3000
    sub e
    nop
    dec [hl]
    nop

jr_012_5c98:
    jr nc, jr_012_5c26

    nop
    inc hl
    inc b
    ld hl, $0101
    ld [hl+], a
    inc hl
    jr z, @+$03

    ld b, $1f
    ld bc, $0124
    ld bc, $2625
    jr z, @+$03

    ld b, $20
    ld bc, $012f
    ld bc, $5b5a
    add h
    nop
    ld a, e
    inc hl
    ld e, $0b
    ld c, [hl]
    ld bc, $012f
    rra
    ld e, d
    dec hl
    rra
    ld bc, $2322
    jr nz, jr_012_5c50

jr_012_5cc9:
    nop
    adc e
    ld b, $20
    ld e, d
    cpl
    jr nz, jr_012_5cd2

    dec h

jr_012_5cd2:
    ld h, $83
    nop
    xor d

jr_012_5cd6:
    nop
    ccf
    dec hl
    ld b, d
    inc bc
    ld b, c
    ld bc, $3901
    dec hl
    ld a, [hl-]
    nop
    dec sp
    adc a
    nop
    call z, Call_000_0093
    call z, Call_000_29f0
    nop
    ld [$25f8], sp
    nop
    ld h, d
    add [hl]
    nop
    ld h, $03
    rra
    ld e, $1e
    rra
    adc e
    nop
    dec sp
    ld [bc], a
    jr nz, @+$03

    jr nc, @-$39

    nop
    adc a
    add $00
    sbc [hl]
    ld bc, $0120
    jp z, $9000

    nop
    jr nz, jr_012_5c98

    ld bc, $0075
    jr nc, jr_012_5c98

    nop
    sbc e
    ld [$1e1e], sp
    ld c, [hl]
    ld e, $1e
    ld c, [hl]
    ld e, $1e
    rra
    adc [hl]
    ld bc, $037e
    jr nz, @+$03

    ld bc, $8341
    nop
    cp h
    ld [bc], a
    ld b, c
    ld bc, $8320
    ld bc, $03b2
    ccf
    ld b, d
    ld b, c
    ld h, b
    add h
    nop
    db $db
    ld [bc], a
    dec sp
    ld bc, $8320
    ld bc, $83c2
    ld bc, $02c3
    dec sp
    ld h, b
    ld h, b

jr_012_5d48:
    adc h
    ld bc, $90c3
    ld bc, $8dc0
    ld bc, $f0c1
    add hl, sp
    nop
    ld [bc], a
    sub e
    nop
    ld c, l
    ld bc, $0154
    ret z

    ld [bc], a
    ld c, [hl]
    nop
    rra
    ld [hl+], a
    ld e, $c7
    ld bc, $0173
    jr nc, jr_012_5d69

    adc e

jr_012_5d69:
    ld bc, $8578
    nop
    sbc c
    ret


    nop
    sbc a
    ld bc, $2001
    call nz, $6c02
    call nz, $8702
    adc h
    ld [bc], a

jr_012_5d7c:
    ld a, [hl]
    inc bc
    jr nc, jr_012_5dbf

    ld b, d
    ld b, c
    add [hl]

jr_012_5d83:
    ld bc, $0163
    ld bc, $853f
    nop
    jp z, Jump_000_3b03

    ld bc, $6060
    adc b
    ld [bc], a
    and a
    nop
    ld bc, $0183
    db $fc
    add h
    ld [bc], a
    or l
    adc a
    ld [bc], a
    or l
    sbc a
    ld [bc], a
    or l
    add [hl]
    ld [bc], a
    or l
    add e
    ld bc, $f0fc
    jr nc, jr_012_5daa

jr_012_5daa:
    ld bc, $0091
    ld c, h
    nop
    ld d, h
    daa
    ld bc, $02d1
    ld h, e
    nop

jr_012_5db6:
    jr nc, jr_012_5d7c

    ld [bc], a
    ld [hl], b
    add e
    ld [bc], a
    ld h, l
    ld l, $01

jr_012_5dbf:
    nop
    jr nz, jr_012_5d48

    nop
    ld sp, $028f
    ld h, b
    nop
    ccf
    add h
    ld bc, $05b1
    ld h, b
    ld h, b
    ld h, e
    ld h, b
    ld h, b
    ccf
    add e
    ld [bc], a

jr_012_5dd5:
    sbc [hl]
    nop
    add hl, sp
    add [hl]
    ld [bc], a
    or l
    inc b
    jr nz, @+$03

    ld bc, $3b39
    adc a
    inc bc
    sbc h
    ld bc, $3001
    add [hl]

jr_012_5de8:
    inc bc
    sbc [hl]
    nop
    jr nc, jr_012_5d83

    inc bc
    and [hl]
    nop
    ld h, b
    adc c
    inc bc
    sbc [hl]
    inc bc
    jr nc, jr_012_5df8

    add hl, sp

jr_012_5df8:
    dec sp
    sub e
    inc bc
    sbc h
    push bc
    ld bc, $f831

Call_012_5e00:
    inc sp
    inc bc
    ld [hl-], a
    add h
    nop
    dec h
    add h
    nop
    dec h
    ld hl, sp+$26
    nop
    ld d, e
    nop
    ld h, b
    daa
    ld bc, $0384
    sbc d
    inc b
    ld h, b
    ld bc, $0151
    ld h, b
    add e
    ld bc, $86ae
    inc bc
    xor b
    ld [bc], a
    ld h, b
    ld bc, $8350
    inc b
    ld l, d
    ld bc, $303b
    add l
    inc bc
    xor b
    nop
    jr nc, jr_012_5db6

    inc b
    ld l, c
    nop
    dec sp
    add e
    inc b
    add c
    adc d
    ld bc, $85fe
    inc b
    and b
    add e
    nop
    add hl, hl
    nop
    jr nc, jr_012_5dd5

    inc b
    sbc e
    ld a, [bc]
    jr nc, jr_012_5e49

    dec sp

jr_012_5e49:
    ld bc, $0160
    add hl, sp
    dec sp
    ld bc, $0101
    sbc h
    inc b
    sbc c
    jr z, jr_012_5e57

    nop

jr_012_5e57:
    ld e, a
    rst $38
    ld de, $3e10
    rst $38
    inc bc
    rst $38
    ld c, b
    or b
    ld c, b
    xor b
    ld [hl], b
    jr c, jr_012_5de8

    ld b, [hl]
    pop bc
    ld bc, $0101
    ld bc, $0404
    add e
    ld l, h
    dec d
    ld e, c
    ld e, [hl]
    ld [de], a
    rst $00
    ld c, d
    ld [$0100], sp
    adc e
    ld [$012a], sp
    inc bc
    rlca
    nop
    inc bc
    nop
    adc c
    nop
    ld bc, $3301
    inc [hl]
    add l
    nop
    dec c
    ld h, d
    inc sp
    adc a
    nop
    ld b, $00
    dec l
    add e
    nop
    ld [hl+], a
    add [hl]
    nop
    dec bc
    add e
    nop
    inc h
    ld bc, $2d2e
    adc c
    nop
    jr jr_012_5ee3

    dec l
    ld bc, $2e00
    jp Jump_012_5600


    ld bc, $2d01
    add h
    nop
    dec c
    ld a, [bc]
    ld l, $01
    ld l, $2d
    ld l, $2e
    ld bc, $752f
    ld bc, $872e
    nop
    ld e, l
    ld [hl+], a

jr_012_5ebf:
    ld l, $02
    ld bc, $7731
    add h
    nop
    ld l, e
    ld b, $05
    dec b
    ld b, $67
    ld l, h
    ld h, a
    inc b
    add l
    nop
    add c
    jp $8100


    ld bc, $0800
    ld [hl+], a
    ld [hl], $08
    rlca
    nop
    ld [$6836], sp
    ld [hl], $07
    nop

jr_012_5ee3:
    nop
    adc d
    nop
    adc a
    nop
    ld l, d
    add a
    nop
    sbc e
    inc bc
    inc hl
    ld b, [hl]
    inc h
    rlca
    add h
    nop
    or c
    add [hl]
    nop
    sbc h
    inc bc
    rlca
    nop
    ld [$8507], sp
    nop
    pop bc
    ld bc, $8c00

Jump_012_5f02:
    db $e4
    jr nc, jr_012_5f08

    rst $38
    scf
    rla

jr_012_5f08:
    inc b
    ld d, $35
    ld a, [hl+]
    dec h
    dec b
    ld [bc], a
    rst $38
    ld bc, $0204
    dec b
    inc bc
    inc bc
    rst $38
    xor b
    jr c, @+$5a

    cp b
    ret z

    ret c

    jr z, jr_012_5ebf

    ld d, b
    ldh a, [$ff78]
    ret z

    ld hl, sp+$48
    ret nz

    jr c, jr_012_5f60

    jr c, @+$4a

    ld e, b
    ld [hl], b
    jr c, jr_012_5f96

    ld c, b
    ld l, b
    ld [hl], b
    jr z, jr_012_5f5b

    jr z, @+$2a

    jr z, jr_012_5faf

    jr nz, @+$2a

    ld a, b
    ld d, b
    or h
    ld d, b
    or h
    or h
    ld d, b
    ld d, $50
    ld c, a
    sbc d
    sbc d
    sbc d
    sbc d
    ld a, l
    ld a, e
    dec c
    jp nc, $d2d2

    ld b, $01
    ld bc, $5501
    ld bc, $6c83
    dec d
    ld b, $5f
    ld [de], a
    rst $08
    ld c, d

jr_012_5f5b:
    ld [$0000], sp
    sub e
    scf

jr_012_5f60:
    ld bc, $3362
    adc b
    nop
    inc de
    adc d
    nop
    ld [de], a
    adc c
    nop
    inc e
    sub l
    nop
    inc e
    ld b, $3c
    ld bc, $3901
    inc a
    ld bc, $8501
    nop
    ld d, c
    add hl, bc
    add hl, sp
    inc a
    ld bc, $3c41
    add hl, sp
    nop
    ld b, c
    inc a
    add hl, sp
    add l
    nop
    ld h, c
    ld b, $00
    ld b, c
    inc a
    nop
    ld b, c
    ld a, $00
    ld b, c
    ld a, $41
    ld bc, $003e

jr_012_5f96:
    add l
    nop
    ld [hl], b
    cpl
    dec b
    cpl
    nop
    db $e4
    ld e, a
    inc bc
    sub [hl]
    nop
    dec b
    ldh a, [$ff2b]
    nop
    inc de
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    inc l
    ld bc, $3900

jr_012_5faf:
    adc e
    nop
    ld d, b
    inc bc
    add hl, sp
    inc a
    add hl, sp
    ld d, b
    adc e
    nop
    ld h, b
    inc bc
    ld a, $41
    ld a, $50
    add l
    nop
    ld [hl], b
    ld h, d
    inc b
    ld bc, $0000
    adc c
    nop
    ld a, a
    ld b, $06
    rlca
    nop
    ld [$0504], sp
    ld b, $28
    nop
    ld b, $08
    rlca
    nop
    ld [$0007], sp
    ld [$5fe4], sp
    inc bc
    ldh a, [rHDMA5]
    ld bc, $6200
    inc b
    ld [hl+], a
    and e
    ld h, d
    inc b
    nop
    ld b, e
    add l
    nop
    ld h, [hl]
    add hl, bc
    rlca
    nop
    ld [$3c39], sp
    ld bc, $0007
    ld [$853c], sp
    ld bc, $027a
    rlca
    nop
    ld [$0285], sp
    ld h, e
    nop
    ld b, c
    add l
    ld bc, $028a
    rlca
    nop
    ld [$0285], sp
    ld [hl], e
    ld bc, $0704
    add a
    ld bc, $2298
    nop
    add e
    ld bc, $e49a
    ld e, a
    inc bc
    ld bc, $0701
    dec l
    nop
    inc bc
    ld bc, $0007
    rrca
    dec hl
    dec d
    add e
    ld [bc], a
    ld l, e
    adc h
    nop
    dec c
    add a
    inc bc
    ld hl, $5201
    ld d, d
    add l
    nop
    jr jr_012_603b

    rlca
    nop

jr_012_603b:
    ld [$018b], sp
    ld b, d
    nop
    ld b, e
    ld h, d
    inc d
    inc b
    ld b, e
    ld b, e
    inc b
    dec b
    ld b, $85
    ld [bc], a
    ld e, d
    add e
    ld [bc], a
    ld e, a
    ld [bc], a
    ld b, c
    inc a
    add hl, sp
    add e
    ld [bc], a
    ld h, [hl]
    add l
    ld [bc], a
    ld h, l
    add e
    nop
    halt
    ld bc, $3e41
    add h
    ld [bc], a
    halt
    inc b
    rlca
    nop
    ld [$413e], sp
    adc b
    ld bc, $0184
    ld a, b
    ld a, b
    add e
    ld bc, $008a
    dec b
    adc b
    ld bc, $8594
    ld [bc], a
    sbc d
    ldh a, [$ff60]
    nop
    sbc a
    nop
    nop
    adc l
    inc bc
    ld [hl+], a
    ld bc, $0e01
    adc d
    inc bc
    ld b, d
    ld h, d
    inc sp
    inc bc
    add hl, sp
    rlca
    nop
    ld [$0088], sp
    ld d, $03
    add hl, sp
    inc a
    add hl, sp
    ld h, c
    adc d
    inc bc
    ld hl, $3907
    nop
    ld b, c
    nop
    ld h, e
    rlca
    nop
    ld [$0086], sp
    add hl, de
    ld [bc], a
    add hl, sp
    nop
    ld a, [de]
    ld [hl+], a
    dec b
    ld h, d
    inc d
    add l
    nop
    ld e, c
    ld b, $39
    nop
    ld a, [de]
    inc e
    nop
    nop
    nop
    add [hl]
    nop
    ld h, [hl]
    add e
    inc b
    ld c, h
    inc b
    inc e
    nop
    nop
    nop
    nop
    add l
    nop
    halt
    ld bc, $1c1a
    call $9700
    nop
    inc e
    jr z, jr_012_60d2

jr_012_60d2:
    ldh a, [rSVBK]
    nop
    sub b
    nop
    rlca
    add e
    ld bc, $8996
    inc bc
    ld bc, $3c04
    rlca
    rrca
    dec d
    ld c, $8a
    dec b
    dec b
    inc b
    ld b, c
    rlca
    ld [$074f], sp
    adc d
    dec b
    dec b
    inc b
    nop
    rlca
    ld [hl], b
    ld l, [hl]
    ld [hl], c
    adc d
    dec b
    dec b
    nop
    ld b, $8e
    dec b
    ld hl, $0803
    rlca
    ld [$8c36], sp
    dec b
    ld b, h
    adc [hl]
    dec b
    ld sp, $0800
    sub b
    dec b
    ld b, c
    ld [bc], a
    ld b, l
    ld b, [hl]
    ld b, h
    adc e
    dec b
    ld b, l
    adc l

jr_012_6116:
    dec b
    ld bc, $8c00
    db $e4
    ld e, a
    inc bc
    rst $38

jr_012_611e:
    ld d, $0a
    inc [hl]
    ld [$221f], sp
    inc de
    inc d
    inc e
    ld c, $ff
    inc b
    ld b, $04
    nop
    inc c
    ld [bc], a
    rst $38
    cp b
    ld a, b
    jr c, jr_012_61ac

    add sp, -$38
    ld [$a848], sp
    jr z, jr_012_6173

    cp b
    ld a, b
    ld a, b
    ld a, b
    adc b
    jr c, jr_012_614a

    add sp, $48
    ld a, b
    xor b
    cp b
    nop
    ldh a, [rBCPS]

jr_012_614a:
    xor b
    xor b
    xor b
    add sp, -$48
    adc b
    jr c, jr_012_61ca

    jr c, jr_012_618c

    jr c, jr_012_61ce

    cp b
    cp b
    adc b
    add sp, -$48
    cp b
    jr z, jr_012_6116

    cp b
    ld l, b
    ld l, b
    ld l, b
    jr z, jr_012_618c

    jr z, jr_012_611e

    sbc b
    xor b
    ld c, a
    inc d
    inc d
    inc d
    sbc b
    sub [hl]
    sbc b
    sbc b
    sbc b
    sub [hl]
    ld c, a

jr_012_6173:
    dec e
    dec e
    dec e
    and b
    and b
    ld l, h
    ld l, h
    ld l, h
    ld c, a
    ld c, a
    ld c, a
    ld l, h
    ld c, h
    ld c, l
    and b
    ld e, c
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $2401
    rla
    add e
    ld l, h

jr_012_618c:
    dec d
    ld e, $61
    ld [de], a
    sub $4a
    ld [$0001], sp
    ld e, h
    cpl
    inc bc
    inc bc
    daa
    ld b, [hl]
    jr z, jr_012_61c4

    ld a, [hl+]
    ld b, [hl]
    inc b
    inc bc
    rlca
    rrca
    ld [de], a
    db $10
    ld a, [hl+]
    ld a, [bc]
    ld [bc], a
    inc bc
    db $10
    ld [de], a
    inc l

jr_012_61ac:
    ld [hl], e
    ld [bc], a
    inc bc
    daa
    inc h
    inc l
    ld [hl], $02
    inc bc
    rlca
    ld [$008f], sp
    ld b, e
    adc l
    nop
    ld b, e
    ld bc, $1210
    adc l
    nop
    ld b, e
    nop

jr_012_61c4:
    inc hl
    add l
    nop
    ld b, d
    add h
    nop

jr_012_61ca:
    add c
    ld b, $23
    inc h

jr_012_61ce:
    inc hl
    inc bc
    rlca
    ld [$225e], sp
    ld l, h
    ld [bc], a
    ld e, [hl]
    rlca
    ld [$8822], sp
    ld [bc], a
    rlca
    ld [$8710], sp
    nop
    ld [hl], b
    add h
    nop
    ld [hl], c
    ld [bc], a
    rlca
    ld [$8a73], sp
    nop
    add b
    inc b
    adc b
    ld [hl], $07
    ld [$8936], sp
    nop
    sub b
    add h
    nop
    xor d
    nop
    ld [hl], $8e
    nop
    and b
    adc d
    nop
    ld a, a
    ld [hl+], a

Call_012_6201:
Jump_012_6201:
    ld c, h
    adc h
    nop
    cp l
    dec b
    ld a, [hl+]
    ld b, [hl]
    dec hl
    rlca
    ld [$2f5e], sp
    inc bc
    cpl
    ld b, [hl]
    cpl
    ld a, [bc]
    cpl
    ld [hl], e
    db $e4
    cpl
    ld [hl], $04
    ld c, h
    ld [hl], $36
    ld [hl], $4c
    adc c
    ld bc, $056b
    ld [hl], $46
    inc h
    ld h, $23
    ld b, [hl]
    add h
    nop
    adc c
    add l
    ld bc, $0980
    ld a, [bc]
    ld [de], a
    inc de
    db $10
    ld a, [bc]
    ld [de], a
    ld [hl], $6c
    ld [hl], $10
    add h
    ld bc, $0090
    ld [de], a
    add l
    ld bc, $023a
    ld [hl], $36
    ld [hl], $99
    ld bc, $8339
    ld bc, $0383
    ld l, h
    ld [hl], $23
    ld b, [hl]
    add a
    nop
    ld b, d
    ld [bc], a
    rlca
    nop
    ld [$0184], sp
    ret nc

    add a
    nop
    ld d, d
    ld [bc], a
    db $10
    ld a, [bc]
    ld [de], a
    add l
    ld bc, $23e0
    ld [hl], $00
    ld e, [hl]
    add h
    ld bc, $01a7
    ld e, [hl]
    ld e, [hl]
    add $01
    or $9b
    nop
    rst $38
    inc bc
    daa
    ld b, [hl]
    jr z, jr_012_627b

    call z, $3000

jr_012_627b:
    ld [bc], a
    ld c, $08
    inc bc
    call z, Call_012_4000
    ld [bc], a
    db $10
    ld [de], a
    inc bc
    call z, Call_012_5000
    ld bc, $2827
    adc l
    ld [bc], a
    ld a, $01
    rlca
    ld [$028f], sp
    ld c, [hl]
    adc l
    ld [bc], a
    ld a, $08
    db $10
    ld [de], a
    inc bc
    inc bc
    inc hl
    inc h
    ld [hl], $36
    ld [hl], $88
    nop
    add c

jr_012_62a5:
    ld bc, $0303
    add [hl]
    nop
    sbc b
    nop
    ld e, [hl]
    ld [hl+], a
    adc b
    add hl, bc
    ld e, [hl]
    rlca
    ld [$0303], sp
    rlca
    ld [$3636], sp
    ld [hl], $88
    nop
    and c
    add e
    ld [bc], a
    sbc [hl]
    adc a
    ld [bc], a
    add d
    ld [bc], a
    ld [hl], $88
    ld [hl], $9c
    ld [bc], a
    sub l
    ld [hl+], a
    ld c, h
    adc h
    ld [bc], a
    add l
    ld [bc], a
    ld a, [hl+]
    ld b, [hl]
    dec hl
    adc d
    ld [bc], a

jr_012_62d5:
    sub l
    adc c
    nop
    and b
    ld [$0a10], sp
    ld [de], a
    rlca
    ld [$0336], sp
    daa
    inc h
    ret


    ld bc, $0244
    rlca
    ld [$8438], sp
    nop
    ld d, b
    nop
    ld l, h
    adc b
    ld [bc], a
    ld d, l
    nop
    scf
    adc d
    nop
    ld [hl], b
    dec bc
    ld l, h
    ld [hl], $07
    ld [$0327], sp
    daa
    ld b, [hl]
    inc h
    inc hl
    ld b, [hl]
    inc h
    add l
    ld bc, $0083
    db $10
    jp $a200


    nop
    ld a, [bc]
    add e
    inc bc
    add hl, bc
    add l
    ld bc, $0593
    inc hl
    ld b, [hl]
    ld b, [hl]
    inc bc
    daa
    jr z, jr_012_62a5

    ld bc, $0239
    rlca
    nop
    nop
    adc d
    nop
    ld d, b
    inc b
    ld l, h
    ld [hl], $07
    nop
    rrca
    adc h
    nop
    ld d, b
    ld [bc], a
    rlca
    nop
    ld [$0286], sp
    xor a
    inc h
    ld b, [hl]
    nop
    inc h
    adc b
    inc bc
    adc l
    nop
    rlca
    inc h
    nop
    inc bc
    ld [$0a10], sp
    ld [de], a
    add [hl]
    ld [bc], a
    adc a
    add l
    inc bc
    and a
    ld [bc], a
    daa
    ld b, [hl]
    jr z, jr_012_62d5

    ld [bc], a
    rst $18
    add [hl]
    inc bc
    and [hl]
    ld [bc], a
    rlca
    nop
    ld b, l
    add l
    ld [bc], a
    rst $28
    adc b
    inc bc
    add $05
    nop
    inc bc
    db $10
    ld [de], a
    db $10
    ld a, [bc]
    add [hl]
    nop
    inc hl
    add e
    nop
    inc hl
    cpl
    inc bc
    add e
    inc bc
    sub l
    add e
    ld bc, $8784
    inc b
    nop
    dec b
    jr c, jr_012_6381

    rrca
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [hl+], a
    jr c, jr_012_638a

jr_012_6381:
    db $10
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    jr c, jr_012_63c0

    scf
    rlca

jr_012_638a:
    ld [$3728], sp
    add e
    inc b
    ld hl, $2805
    rlca
    ld b, l
    ld b, [hl]
    ld b, [hl]
    jr z, jr_012_63ba

    scf
    ld b, $27
    ld b, [hl]
    ld b, [hl]
    ld b, h
    ld [$2827], sp
    add h
    nop
    inc hl
    nop
    ld [de], a
    ld [hl+], a
    scf
    add h
    inc b
    ld b, c
    inc b
    db $10
    ld [de], a
    ld b, [hl]
    ld b, [hl]
    jr z, @+$2a

    scf
    add e
    nop
    inc d
    ld bc, $0000
    adc d

jr_012_63ba:
    inc b
    ld [hl+], a
    ld [hl+], a
    nop
    ld [bc], a
    ld a, [bc]

jr_012_63c0:
    ld a, [bc]
    ld [de], a
    jr z, jr_012_63fb

    add e
    inc b
    add hl, de
    add h
    inc b
    ld [hl], $00
    jr z, jr_012_63ef

    ld e, d
    nop
    daa
    add h
    inc b
    inc [hl]
    nop
    rlca
    add h
    inc b
    ld l, c
    nop
    ld [$7b22], sp
    ld [bc], a
    rlca
    nop
    ld [$0486], sp
    adc h
    ld b, $10
    ld a, [bc]
    ld [de], a
    ld a, e
    xor d
    ld a, e
    db $10
    add l
    inc b
    ld b, h
    add l

jr_012_63ef:
    inc b
    add b
    inc bc
    ld a, e
    and [hl]
    ld a, e
    daa
    add a
    inc b
    inc [hl]
    inc bc
    ld b, [hl]

jr_012_63fb:
    ld b, h
    nop
    ld [$ab22], sp
    ld [bc], a
    rlca
    nop
    ld b, l
    add e
    inc b
    ret nz

    add h
    inc bc
    and a
    adc c
    inc bc
    jp nc, $0000

    add h
    inc bc
    rst $20
    adc b
    inc bc
    ldh [c], a
    sub c
    inc bc
    xor $00
    rlca
    add e
    inc bc
    xor h
    adc h
    ld [bc], a
    and l
    adc c
    ld bc, $023b
    daa
    jr z, jr_012_642a

    adc c
    nop
    ld d, b

jr_012_642a:
    ld [bc], a
    adc b
    ld [hl], $36
    add l
    ld [bc], a
    sbc h
    ld bc, $6c36
    adc e
    ld [bc], a
    ld [hl], h
    ld bc, $1210
    add e
    ld bc, $8686
    inc bc
    ld b, d
    rlca
    jr z, jr_012_6446

    inc bc
    ld b, [hl]
    inc h

jr_012_6446:
    ld [hl], $6c
    ld [hl], $88
    inc bc
    ld d, c
    inc bc
    inc bc
    inc bc
    nop
    ld [$0189], sp
    and [hl]
    rlca
    daa
    jr z, @+$05

    inc bc
    nop
    ld [$6c36], sp
    adc e
    ld [bc], a
    ld d, h
    ld bc, $0800
    adc l
    ld [bc], a
    ld d, d
    ld bc, $0800
    add [hl]
    inc bc
    sub [hl]
    ld bc, $4a36
    add h
    ld [bc], a
    ld e, e
    ld bc, $120a
    add [hl]
    inc bc
    and [hl]
    ld bc, $4d36
    add h
    ld [bc], a
    ld e, e
    ld bc, $2846
    add [hl]
    inc bc
    and [hl]
    ld [bc], a
    adc b
    adc b
    adc b
    add l
    dec b
    ld a, h
    add [hl]
    inc bc
    and [hl]
    ld [bc], a
    ld c, h
    ld c, h
    ld c, h
    adc h
    dec b
    cp h
    ld [bc], a
    ld a, [hl+]
    ld b, [hl]
    dec hl
    add e
    dec b
    sbc h
    adc d
    inc bc
    db $e4
    ld [bc], a
    ld [de], a
    db $10
    ld [de], a
    cpl
    inc bc
    ld bc, $035d
    rst $38
    rra
    ld a, $38
    inc c
    rst $38
    inc bc
    ld bc, $78ff
    jr z, jr_012_6504

    nop
    and b
    ld e, b
    ld [hl], h
    ld [hl], h
    or d
    rst $00
    and c
    ld c, e
    ld [bc], a
    ld bc, $0101
    ld a, [bc]
    rlca
    ld b, $67
    dec d
    xor c
    ld h, h
    ld [de], a
    ldh [rWY], a
    ld [$0000], sp
    inc d
    db $e4
    ld h, $03
    ld [hl+], a
    inc b
    call z, Call_000_2900
    ld [bc], a
    inc b
    rlca
    rlca
    call Call_000_3900
    inc bc
    ld b, $0e
    ld b, $04
    adc c
    nop
    inc hl
    inc b
    inc b
    inc b
    ld b, $0c
    ld b, $85
    nop
    add hl, hl
    nop
    inc b
    inc h
    rlca
    inc b
    jr z, jr_012_64fc

    dec b
    ld b, $36
    ld [hl+], a
    rlca
    add e

jr_012_64fc:
    nop
    ld b, [hl]
    inc b
    ld [$0609], sp
    ld b, $1c

jr_012_6504:
    ld [hl+], a
    ld b, $00
    inc [hl]
    ld [hl+], a
    ld b, $83
    nop
    ld b, [hl]
    ld bc, $0b0a
    add e
    nop
    halt
    nop
    dec b
    add e
    nop
    ld a, e
    ld b, $0f
    inc bc
    inc bc
    inc b
    ld b, $06
    ld b, $8c
    nop

jr_012_6522:
    halt
    add [hl]
    nop
    ld d, e
    ld bc, $0605
    adc e
    nop
    add hl, hl
    ld [bc], a
    inc b
    ld b, $06
    call nz, Call_012_4900
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ret z

    nop
    pop bc
    ret nc

    nop
    jr c, jr_012_6522

    ld [hl], d
    inc bc
    adc a
    nop
    jp c, Jump_000_008d

    ld a, [hl-]
    ld bc, $0303
    adc l
    nop
    cp d
    inc bc
    inc bc
    inc bc
    rrca
    ld b, $90
    ld bc, $f862
    ld h, b
    ld bc, $005f
    inc de
    ld a, [hl+]
    inc bc
    rst $38
    rra
    dec e
    rst $38
    ld b, $00
    rst $38
    sbc b
    ld e, b
    ret c

    ret z

    ld l, b
    sbc b
    jr z, @+$5a

    ld e, b
    sbc b
    sbc b
    ld l, b
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, l
    ld e, h
    ld h, e
    ld [bc], a
    ld bc, $0101
    ld [$c506], sp
    ld l, l
    ld d, $5d
    ld h, l
    ld [de], a
    rst $20
    ld c, d
    ld [$0000], sp
    ld c, a
    inc h
    ld bc, $3962
    add e
    nop
    dec b
    add a
    nop
    ld [bc], a
    nop
    ld bc, $3c62
    add e
    nop
    dec d
    ld bc, $0101
    add l
    nop
    inc d
    ld [bc], a
    dec l
    ld [bc], a
    ld l, $84
    nop
    dec b
    dec bc
    dec l
    ld [bc], a
    ld l, $3a
    ld b, c
    ld bc, $3501
    ld [hl], $01
    ld b, b
    ld b, c
    add [hl]
    nop
    ld a, [de]
    ld bc, $433d
    inc h
    ld bc, $4205
    ld b, e
    ld bc, $2701
    cpl
    inc h
    ld bc, $2904
    ld a, [hl+]
    ld bc, $2501
    daa
    ld bc, $2507
    ld bc, $2b01
    inc l
    daa
    ld d, b
    ld h, $64
    ld [$0103], sp
    ld d, [hl]
    jr c, jr_012_6601

    add e
    nop
    ld h, b
    ld a, [bc]
    ld bc, $265c
    db $10
    ld de, $1358
    inc d
    ld bc, $015c
    add e
    nop
    ld l, a
    inc d
    dec c
    ld c, $0e
    inc h
    jr jr_012_660d

    ld e, d
    dec de
    inc e
    inc hl
    ld c, $0e
    rrca
    ld e, a
    inc sp
    inc [hl]
    dec d
    ld e, $1e

jr_012_6601:
    jr nz, jr_012_6625

    ld [hl+], a
    ld c, $0b
    ld a, [de]
    ld hl, $1e1e
    rla
    jr z, jr_012_6635

jr_012_660d:
    jr nc, jr_012_662c

    ld e, $1e
    ld d, d
    inc h
    ld e, $03
    ld d, h
    ld e, $1e
    rra
    inc hl
    inc b
    inc b
    ld b, $1e
    ld e, h
    ld e, $07
    add l
    nop
    or e
    nop

jr_012_6625:
    inc b
    inc h
    dec b
    inc b
    inc b
    inc b
    inc b

jr_012_662c:
    dec b
    dec b
    jp $c800


    db $e4
    ld hl, $2f05

jr_012_6635:
    inc bc
    ld bc, $0101
    call Call_000_0001
    ld [bc], a
    dec l
    ld [bc], a
    ld l, $9c
    nop
    di
    ld [bc], a
    ld bc, $3a40
    adc l
    nop
    di
    ld bc, $3d42
    sbc l
    ld bc, $0113
    ld bc, $9e01
    ld bc, $0043
    ld e, [hl]
    inc l
    inc bc
    ld [bc], a
    ld sp, $0032
    inc l
    inc bc
    ld bc, $2828
    call $a001
    ld [bc], a
    inc b
    inc b
    inc b
    rst $08
    nop
    db $fc
    add [hl]
    ld bc, $d5b3
    ld bc, $02c8
    dec b
    dec b
    ld c, [hl]
    inc a
    inc bc
    rst $38
    jr z, @+$01

    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc b
    ld l, b
    ld [hl], l
    ld bc, $0108
    ld bc, $0101
    sub $41
    jr @+$7c

    ld h, [hl]
    ld [de], a
    inc [hl]
    ld c, e
    ld [$0200], sp
    add hl, sp
    ld d, $17
    ld b, d
    inc d
    dec d
    ld [bc], a
    ld d, $17
    ld d, $23
    nop
    dec hl
    dec l
    add [hl]
    nop
    inc c
    ld bc, $3736
    add e
    nop
    ld hl, $00d6
    ld [hl+], a
    ld [bc], a
    dec l

jr_012_66b5:
    dec l
    dec [hl]
    ld [hl+], a
    dec l
    adc $00
    ld b, l
    inc bc
    dec [hl]
    dec l
    dec l
    dec l
    sbc b
    nop
    add hl, hl
    adc l
    nop
    ld [de], a
    nop
    rla
    adc [hl]
    nop
    ld bc, $002a
    nop
    jr c, jr_012_66b5

    xor l
    nop
    ld bc, $0706
    dec hl
    nop
    inc bc
    ld b, $07
    inc bc
    inc bc
    xor e
    nop
    sub b
    ld bc, $031d
    adc h
    ld bc, $045a
    inc h
    dec h
    inc bc
    inc bc
    inc bc
    adc a
    nop
    ld a, h
    db $e4
    cp c
    nop
    ld [bc], a
    ld a, [de]
    dec de
    dec b
    inc l
    nop
    inc bc
    ld [hl+], a
    inc hl
    inc bc
    inc b
    adc h
    ld [bc], a
    ld c, b
    nop
    dec hl
    ld [hl+], a
    inc bc
    nop
    inc b
    ld a, [hl+]

jr_012_6707:
    nop
    ld bc, $2a33
    ldh a, [$ffcb]
    ld bc, $0179
    jr @+$1b

    dec l
    nop
    ld bc, $2120
    inc l
    nop
    inc bc
    ld a, [bc]
    inc bc
    inc bc
    dec bc
    dec hl
    nop
    inc bc
    ld [de], a
    inc bc
    inc bc
    inc de
    inc hl
    nop
    ldh a, [$ffc6]
    ld bc, $027c
    ld b, $28
    add hl, hl
    adc l
    ld bc, HeaderComplementCheck
    jr nc, @+$33

    jp z, Jump_012_5501

    ld [hl+], a
    inc bc
    nop
    inc l
    call Call_012_7601
    nop
    ld [hl-], a
    and e
    inc b
    ld h, h
    ldh a, [$ffc7]
    inc bc
    ld a, b
    adc l
    ld [bc], a
    ld e, c
    ld [bc], a
    nop
    nop
    inc bc
    adc [hl]
    ld [bc], a
    ld e, b
    ld [hl+], a
    inc bc
    ld bc, $1f1e
    adc l
    inc b
    ld h, l
    ld bc, $2726
    ld a, [hl+]
    nop
    ld [bc], a
    dec d
    inc d
    dec d
    add a
    nop
    ld bc, $1400
    and $73
    nop
    rst $38
    scf
    nop
    inc c
    dec b
    ld b, $2e
    inc d
    ld d, $ff
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    rst $38
    xor b
    ld hl, sp+$68
    ldh [$ff38], a
    ldh [rLCDC], a
    or b
    cp b
    db $10
    jr jr_012_6707

    ld e, b
    ld [$48a8], sp
    ld l, b
    ld a, b
    jr c, jr_012_6807

    ld a, b
    ld c, b
    ld l, b
    ld c, b
    ld l, b
    ld c, b
    ld a, b
    jr @+$6a

    ld l, b
    sbc a
    sbc a
    xor [hl]
    sbc [hl]
    ld bc, $0d20
    jr nz, jr_012_67b1

    jr nz, @-$78

    jr nz, jr_012_67f3

    ld c, a
    ld c, a
    dec b
    ld bc, $0101
    ld b, l
    ld bc, $5ac6
    dec d

jr_012_67b1:
    ld l, h
    ld h, a
    ld [de], a
    dec [hl]
    ld c, e
    ld [$0000], sp
    ld a, [hl]
    db $e4
    ld a, [hl+]
    nop
    ld bc, $3938
    add l
    nop
    jr z, @-$66

    nop
    add hl, de
    ld [hl+], a
    nop
    rlca
    ld [hl], h
    nop
    nop
    ld [hl], e
    ld [hl], h
    nop
    nop
    ld a, c
    add l
    nop
    ld d, d
    inc c
    nop
    ld [hl], e
    halt
    ld [hl], h
    ld [hl], e
    ld bc, $7401
    ld [hl], e
    ld bc, $017a
    ld a, b
    add h
    nop
    ld h, l
    nop
    ld [bc], a
    ld b, c
    halt
    ld [hl], l
    dec b
    halt
    ld bc, $7675
    ld [hl], l
    ld [bc], a
    add h
    nop

jr_012_67f3:
    ld [hl], l
    cpl
    add hl, bc
    cpl
    ld de, $5fe4
    inc bc
    ldh a, [$ff30]
    nop
    ld bc, $009a
    rla

Jump_012_6802:
    add e
    nop
    ld a, [hl+]
    nop
    ld [hl], h

jr_012_6807:
    adc c
    nop
    ld [hl-], a
    ld b, $0e
    add hl, bc
    add hl, bc
    ld a, [bc]
    nop
    ld a, b
    ld [hl], h
    add e
    nop
    ld d, e
    add hl, bc
    nop
    ld c, $0a
    ld [hl], e
    ld [hl], h
    dec e
    ld de, $1211
    ld [hl], h
    add e
    nop
    ld [hl], b
    dec bc
    ld [hl], h
    ld a, c
    ld [$1216], sp
    ld bc, $1078
    ld de, $1211
    ld a, b
    ld [hl+], a
    add hl, bc
    ld [bc], a
    dec b
    halt
    ld bc, $1062
    ld bc, $0275
    add e
    ld bc, $007b
    inc b
    ld [hl+], a
    ld de, $1202
    ld [bc], a
    halt
    ld h, d
    stop
    ld [bc], a
    add h
    ld bc, $008a
    db $10
    db $e4
    ld e, a
    inc bc
    nop
    nop
    ldh a, [rSCX]
    ld bc, $8b00
    nop
    ld [hl-], a
    inc bc
    ld l, b
    nop
    nop
    ld l, b
    add h
    ld [bc], a
    ld c, a
    ld bc, $0a08
    ld [hl+], a
    ld l, b
    call nz, Call_012_5102
    ld bc, $7961
    add e
    nop
    add hl, hl
    dec d
    db $10
    ld [de], a
    ld [hl], h
    nop
    ld a, c
    nop
    ld [hl], h
    ld d, b
    nop
    ld [hl], e
    ld h, b
    ld a, b
    ld [hl], h
    ld d, b
    ld [hl], e
    ld a, d
    db $10
    ld [de], a
    halt
    ld a, d
    ld a, b
    ld [hl], h
    jr z, jr_012_6893

    inc bc
    dec b
    db $10
    ld [de], a
    inc b
    adc e
    nop
    adc l
    ld b, c

jr_012_6893:
    ld [de], a
    db $10
    ldh a, [$ff89]
    nop
    sbc l
    ld bc, $3938
    sbc b
    nop
    rla
    adc l
    nop
    ld [hl-], a
    ld [hl+], a
    ld l, b
    ld [bc], a
    ld [$0a09], sp
    ld h, $68
    ld bc, $0a08
    jp Jump_012_6802


    ld h, d
    stop
    ld a, d
    add e
    ld [bc], a
    ld l, h
    rlca
    nop
    ld a, c
    db $10
    ld [de], a
    nop
    nop
    ld [hl], e
    ld [hl], l
    add e
    ld bc, $8386
    ld [bc], a
    ld a, h
    inc b
    ld [hl], e
    ld [hl], l
    db $10
    ld [de], a
    ld [hl], h
    add e
    ld [bc], a
    add a
    ld [bc], a
    ld de, $0412
    add a
    ld [bc], a
    add h
    nop
    halt
    add e
    ld bc, $029c
    ld de, $1012
    add a
    ld [bc], a
    sub h
    nop
    ld [bc], a
    db $e4

jr_012_68e5:
    ld e, a
    inc bc
    db $e4
    inc a
    nop
    nop
    ld h, c
    add e
    nop
    inc l
    inc b
    ld [$000a], sp
    jr c, jr_012_692e

    add h
    inc bc
    ld e, l
    ld bc, $6000
    inc hl
    nop
    ld bc, $1210
    add h
    inc b
    ld c, a
    add e
    inc b
    ccf
    ld [hl+], a
    add hl, bc
    adc b
    inc b
    ld d, b
    add e
    inc b
    ld c, a
    ld [hl+], a
    ld de, $6800
    add e
    inc b
    ld d, c
    ld b, $68
    ld [hl], e
    db $10
    ld [de], a
    ld [hl], h
    ld l, b
    ld [hl], e
    add e
    ld [bc], a
    sbc h
    ld b, $7a
    ld [hl], h
    db $10
    ld [de], a
    ld [hl], e
    ld a, d
    ld a, b
    add h
    ld [bc], a
    ld a, d
    add e
    ld [bc], a
    sbc h

jr_012_692e:
    ld a, [bc]
    halt
    ld bc, $1210
    ld bc, $0275
    db $10
    ld [de], a
    ld [bc], a
    ld a, e
    add e
    ld bc, $008a
    ld a, a
    db $e4
    ld e, a
    inc bc
    rst $38
    ld de, $3e12
    rst $38
    inc bc
    rst $38
    ld h, b
    add b
    jr z, jr_012_68e5

    ld [hl], b
    jr z, @+$3e

    ld c, d
    cp l
    ld bc, $0101
    ld bc, $0301
    add $5a
    dec d
    ld b, e
    ld l, c
    ld [de], a
    ld b, d
    ld c, e
    ld [$0100], sp
    ld a, [hl]
    ld a, [hl+]
    daa
    ld [hl], a
    ld bc, $002a
    inc hl
    inc bc
    nop
    nop
    inc h
    ld a, [hl+]
    rlc b
    dec d
    ld bc, $4200
    ld [hl+], a
    ld [hl], a
    ld [bc], a
    ld b, e
    jr c, jr_012_69b5

    add a
    nop
    ld a, [bc]
    rlca
    ld b, a
    ld [hl], a
    ld [hl], a
    ld b, l
    ld b, h
    ld d, l
    ld c, l
    ld b, e
    add a
    nop
    ld a, [bc]
    ld b, $42

jr_012_698d:
    ld [hl], a
    ld [hl], a
    ld b, e
    jr nc, jr_012_69c3

    ld b, h
    adc b
    nop
    add hl, bc
    ld b, $77
    ld d, h
    ld [hl], a
    ld [hl], a
    ld c, l
    ld b, e
    ld b, d
    adc b
    nop
    add hl, bc
    inc bc
    ld b, l
    add d
    ld b, h
    ld d, l
    adc e
    nop
    ld b, $04
    nop
    add b
    jr nc, jr_012_69ae

jr_012_69ae:
    ld b, h
    adc b
    nop
    rlca
    ld bc, $2a1f

jr_012_69b5:
    inc hl
    rra
    rlc b
    add l
    ld [hl+], a
    ld d, b
    nop
    nop
    ret


    nop
    sub l
    dec hl
    add hl, bc

jr_012_69c3:
    inc hl
    inc bc
    ld a, [hl+]
    ld de, $7f00
    db $e4
    ld b, e
    inc bc
    rst $38
    jr nc, jr_012_69db

    ld [bc], a
    inc de
    ld a, [bc]
    cpl
    ld a, [hl+]
    ld d, $01
    rst $38
    inc bc
    inc b
    inc bc
    ld [bc], a

jr_012_69db:
    inc bc
    inc b
    ld bc, $ff04
    xor b
    ldh a, [$fffc]
    ld c, b
    inc d
    ld hl, sp-$78
    ret z

    ld hl, sp-$68
    ld e, b
    jr z, jr_012_698d

    sbc b
    ldh [$fff8], a
    or b
    ret c

    sbc b
    ret nz

    ld e, b
    and b
    db $10
    ldh [$ffa8], a
    ld l, b
    add sp, -$58
    add sp, $38
    xor b
    ld c, b
    jr c, jr_012_6a6a

Jump_012_6a02:
    ld l, b
    ld c, b
    ld [$8888], sp
    db $10
    and b
    ld [hl], b
    ld d, b
    ld d, b
    ld b, b
    jr @+$2a

    ld [$8a8a], sp
    inc [hl]
    adc d
    jp nc, $144c

    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, l
    inc h
    add hl, hl
    ld [hl+], a
    ld c, a
    ld [hl+], a
    ld sp, $0505
    dec b
    dec b
    ld a, l
    inc b
    ld [bc], a
    ld bc, $3501
    rla
    add $5a
    dec d
    call Call_000_1269
    ld c, c
    ld c, e
    ld [$0b00], sp
    ld a, l
    ld de, $1012
    ld de, $1211
    inc h
    db $10
    ld [de], a
    ld b, $07
    ld h, d
    db $10
    inc de
    ld b, $11
    ld de, $0612
    add hl, de
    add hl, de
    rlca
    inc hl
    db $10
    ld [de], a
    dec h
    daa
    ld b, $19
    rlca
    dec h
    ld de, $1211
    ld b, c
    dec h
    daa
    dec bc
    inc h
    db $10
    ld [de], a
    inc b
    add hl, bc
    dec b
    inc b
    add hl, bc
    add hl, bc
    add hl, de

jr_012_6a6a:
    add hl, de
    rlca
    add e
    nop
    ld a, [hl+]
    dec bc
    dec b
    db $10
    ld [de], a
    ld b, $19
    rlca
    db $10
    ld de, $0911
    add hl, bc
    dec b
    add e
    nop
    ld a, [hl-]
    inc c
    ld [de], a
    ld b, $1a
    ld b, h
    ld b, l
    ld b, h
    ld b, $19
    add hl, de
    ld de, $1211
    inc hl
    ld h, e
    inc b
    rrca
    ld b, l
    nop
    ld sp, $4200
    ld b, e
    ld b, d
    ld [hl], a
    add hl, de
    add hl, de
    rlca
    inc h
    db $10
    ld [de], a
    ld [hl], a
    ld [hl], a
    ld b, c
    ld b, e
    ld b, d
    inc hl
    ld [hl], a
    nop
    add hl, bc
    add e
    nop
    ld b, b
    nop
    rlca
    daa
    ld [hl], a
    ld bc, $8686
    ld [hl+], a
    ld de, $1202
    ld [hl], a
    ld [hl], a
    adc a
    nop
    halt
    ld h, $77
    add h
    nop
    dec l
    inc bc
    add hl, de
    rlca
    ld [hl], a
    ld [hl], a
    ld b, c
    ld b, l
    ld b, h
    rla
    ld [hl], a
    dec h
    daa
    db $10
    ld de, $2711
    dec h
    daa
    ld [hl], a
    ld [hl], a
    ld b, l
    jr c, jr_012_6b0f

    nop
    ld [$0909], sp
    dec b
    jr jr_012_6af6

    add hl, de
    add hl, bc
    dec b
    ld [hl+], a
    ld [hl], a
    nop
    ld b, e
    ld h, d
    ld [$1806], sp
    add hl, de
    add hl, de
    ld a, [de]
    nop
    ld b, h
    ld [hl], a
    add l
    nop
    add d
    ld h, d
    db $10
    dec b
    jr z, jr_012_6b1f

jr_012_6af6:
    nop
    nop
    ld sp, $8542
    nop
    rst $08
    inc b
    ld a, [hl+]
    ld b, $19
    rlca
    nop
    add h
    nop
    ld e, e
    ld bc, $1977
    add h
    nop
    ld [hl], l
    ld [bc], a
    add [hl]
    ld [hl], a

jr_012_6b0f:
    ld [hl], a
    add l
    nop
    ld l, d
    nop
    ld [hl], a
    add e
    nop
    dec sp
    ld [bc], a
    ld de, $1012
    add [hl]
    nop
    db $10

jr_012_6b1f:
    inc bc
    db $10
    ld de, $2726
    add a
    ld bc, $0002
    inc b
    add h
    nop
    cp d
    ld bc, $2a05
    add e
    nop
    inc de
    add l
    ld bc, $040a
    ld de, $4212
    ld b, e
    ld [de], a
    add l
    nop
    sbc d
    ld bc, $2305
    add h
    ld bc, $0221
    ld [hl], a
    ld [hl], a
    rlca
    add h
    nop
    db $d3
    ld [bc], a
    ld de, $8412

jr_012_6b4f:
    add e
    ld bc, $021a
    ld a, [hl+]

jr_012_6b54:
    ld b, l
    ld b, h
    inc hl
    ld [hl], a
    add e
    nop
    inc de
    ld bc, $0624
    add l
    nop
    jr nc, jr_012_6b85

    ld [hl], a
    nop
    ld c, a
    add h
    nop
    cp b
    dec b
    dec h
    daa
    ld [hl], a
    ld b, $19
    ld a, [de]
    ld [hl+], a
    ld [hl], a
    inc bc
    ld b, l
    ld sp, $1846
    add l
    nop
    and c
    ld [hl+], a
    nop
    nop
    ld [hl], a
    add [hl]
    nop
    rst $30
    add e
    nop
    or c
    nop
    ld b, e

jr_012_6b85:
    ld [hl+], a
    nop
    add e
    nop
    pop bc
    add h
    ld bc, $074e
    ld c, a
    ld c, [hl]
    ld b, h
    ld b, l
    nop
    jr c, jr_012_6bce

    ld [de], a
    add l
    ld bc, $0280
    ld d, l
    ld [hl], a
    ld b, e
    dec h
    nop
    nop
    rlca
    add e
    ld bc, $0b1a
    ld [hl], a
    ld [hl], a
    ld c, h
    add [hl]
    ld [hl], a
    ld c, a
    jr c, jr_012_6be6

    nop
    nop
    nop
    ld [hl], a
    add l
    ld bc, $033a
    ld [hl], a
    ld d, l
    ld [hl], a
    ld c, a
    inc h
    nop
    ld bc, $7777
    ld h, d
    dec h
    inc bc
    inc b
    dec b
    ld [hl], a
    ld c, h
    add l
    ld bc, $00a8
    jr c, jr_012_6b4f

    ld bc, $008a

jr_012_6bce:
    jr jr_012_6b54

    nop
    ld [hl-], a
    ld bc, $0a09
    ld [hl+], a
    nop
    ld bc, $7786
    add e
    ld bc, $009c
    ld b, h
    add h
    nop
    ld a, [hl-]
    nop
    ld [de], a
    ld [hl+], a
    ld l, b

jr_012_6be6:
    inc bc
    ld de, $1012
    ld [de], a
    dec hl
    nop
    inc bc
    add hl, de
    ld a, [de]
    jr jr_012_6c0c

    dec l
    nop
    nop
    ld l, e
    jr z, jr_012_6bf8

jr_012_6bf8:
    add e
    ld bc, $00bb
    ld b, e
    adc $02
    inc hl
    ld bc, $4f77
    adc l
    ld [bc], a
    ld [hl-], a
    inc bc
    dec h
    add hl, hl
    ld [$830a], sp

jr_012_6c0c:
    ld [bc], a
    ld a, [hl+]
    daa
    nop
    ld bc, $0504
    adc l
    ld [bc], a
    ld [de], a
    add e
    ld [bc], a
    ld [bc], a
    adc a
    ld [bc], a
    ld h, h
    dec hl
    nop
    adc a
    ld [bc], a
    ld [de], a
    ld bc, $2000
    inc l
    nop
    ld [bc], a
    jr c, jr_012_6c29

jr_012_6c29:
    ld [hl+], a
    ld l, $00
    ld bc, $0a08
    inc l
    nop
    nop
    add hl, sp
    adc [hl]
    ld [bc], a
    ld [de], a
    dec b
    ld [$0a09], sp
    nop
    nop
    nop
    adc c
    ld [bc], a
    ld d, h
    ld [bc], a
    jr jr_012_6c5c

    ld a, [de]
    db $e4
    ld h, b
    nop
    ld bc, $3938
    db $e4
    dec [hl]
    nop
    sub e
    inc bc
    ld d, h
    nop
    add hl, sp
    sub l
    inc bc
    halt
    ld bc, $3938
    db $e4
    ld b, [hl]
    nop
    inc bc

jr_012_6c5c:
    add hl, bc
    add hl, bc
    dec b
    ld [hl], a
    add $00
    ld hl, sp+$07
    ld [hl], a
    ld d, h
    ld [hl], a
    ld [hl], a
    ld b, l
    ld de, $1211
    add a
    inc b
    inc bc
    inc b
    ld e, e
    sbc h
    ld e, d
    ld [hl], a
    ld c, a
    add e
    ld bc, $0617
    dec b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld b, l
    ld c, [hl]
    ld b, h
    ld h, d
    dec h
    ld bc, $4377
    add e
    ld bc, $830b
    inc b
    ld [hl+], a
    rlca
    ld b, e
    jr z, jr_012_6cb5

    daa
    ld a, [hl+]
    inc b
    add hl, bc
    ld a, [bc]
    add h
    nop
    ld [hl], c
    nop
    ld b, $83
    nop
    ld [hl-], a
    add e
    nop
    ld d, e
    ld bc, $0719
    add [hl]
    ld bc, $0317
    ld b, $19
    ld a, [de]
    inc h
    add h
    nop
    ld [hl], h
    add [hl]
    nop
    db $10
    inc b
    ld [hl], a
    ld b, e
    nop
    ld c, [hl]

jr_012_6cb5:
    ld b, h
    jp $c801


    add l
    ld bc, $85c2
    ld bc, $017a
    nop
    ld b, h
    add hl, hl
    ld [hl], a
    dec b
    ld b, e
    ld sp, $4600
    nop
    ld b, a
    ld a, [hl+]
    ld [hl], a
    inc b
    ld b, e
    ld b, d
    ld [hl], a
    ld b, e
    ld b, d
    add hl, sp
    ld [hl], a
    ld [bc], a
    inc b
    add hl, bc
    dec b
    adc d
    inc b
    or b
    add h
    nop
    call nc, Call_012_7703
    ld [hl], a
    inc b
    dec b
    add [hl]
    nop
    jp nc, Jump_000_0486

    add $01
    db $10
    ld [de], a
    adc a
    inc b
    rst $08
    sub b
    inc b
    rst $08
    nop
    ld b, h
    add h
    inc b
    ld a, b
    ld b, $42
    ld [hl], a
    inc b
    dec b
    db $10

jr_012_6cfe:
    ld de, $8712
    ld [bc], a
    jr z, jr_012_6d0b

    ld b, a
    ld [hl], a
    ld [hl], a
    ld b, $07
    ld b, $19

jr_012_6d0b:
    ld a, [de]
    add [hl]
    ld [bc], a
    ld d, l
    ld bc, $4231
    add h
    inc b
    or [hl]
    ld bc, $0a04
    ld [hl+], a
    ld l, b
    ld bc, $0a08
    add h
    dec b
    inc de
    dec b
    ld [hl], a
    ld b, $19
    rlca
    ld b, $1a
    add h
    ld [bc], a
    ld l, l
    ld [bc], a
    ld [$420a], sp
    add [hl]
    nop
    sbc b
    add e
    ld bc, $02ec
    ld b, $07
    db $10
    add [hl]
    nop
    add e
    ld [bc], a
    ld b, $19
    ld a, [de]
    ld [hl+], a
    ld l, b
    add e
    dec b
    ld d, $02
    ld [hl], a
    ld [hl], a
    ld a, [hl+]
    add e
    inc b
    rlc c
    dec h
    add hl, hl
    add e
    ld bc, $017d
    ld b, l
    ld c, [hl]
    add l
    inc b
    ld a, l
    ld [bc], a
    db $10
    ld [de], a
    inc b
    add e
    ld bc, $03ec
    ld b, l
    nop
    nop
    ld sp, $0185

jr_012_6d65:
    ld c, a
    ld bc, $181a
    add e
    dec b
    ld e, h
    add hl, bc
    ld c, a
    nop
    ld b, [hl]
    nop
    nop
    ld c, [hl]
    ld b, h
    inc b
    add hl, bc
    ld a, [bc]
    add l
    ld [bc], a
    jr nz, jr_012_6cfe

    inc b
    sbc c
    ld [bc], a
    nop
    nop
    ld b, d

jr_012_6d81:
    add h
    dec b
    ld a, [bc]
    inc bc
    ld l, e
    jr c, jr_012_6dc1

    nop
    add e
    inc b
    call z, Call_012_4f01
    ld [$0583], sp
    add hl, bc
    ld [bc], a
    jr z, @+$28

    add hl, hl
    add e
    dec b
    ld e, l
    dec b
    db $10
    ld [de], a
    ld b, l
    nop
    db $10
    ld [de], a
    ld h, d
    db $10
    add l
    ld [bc], a
    ldh [$ff03], a
    ld [hl], a
    db $10
    ld [de], a
    ld b, e
    add l
    dec b
    call nz, Call_000_1062
    ld [hl+], a
    ld d, b
    add e
    inc b
    call c, $4300
    add a
    dec b
    push de
    ld h, d
    ld [$0484], sp
    call c, Call_000_0587
    push de

jr_012_6dc1:
    ld [bc], a
    db $10
    ld de, $8d12
    ld [bc], a
    pop bc
    inc bc
    jr c, jr_012_6e04

    db $10
    ld [de], a
    add e
    inc bc
    adc d
    sub e
    ld [bc], a
    ld h, [hl]
    ld bc, $3938
    add [hl]
    ld [bc], a
    adc h
    sub h
    ld [bc], a
    db $d3
    inc h
    nop
    nop
    jr nc, jr_012_6d65

    ld [bc], a
    xor $85
    inc bc
    adc b
    sub c
    ld [bc], a
    cp d
    nop
    jr nc, jr_012_6d81

    ld [bc], a
    ld a, h
    adc c
    ld [bc], a
    ld d, [hl]
    inc b
    ld c, $0f
    nop
    nop
    ld l, e
    adc d
    ld b, $85

jr_012_6dfa:
    ld bc, $1e1d
    adc c
    ld [bc], a
    jr nz, jr_012_6e02

    dec e

jr_012_6e02:
    ld e, $85

jr_012_6e04:
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    jr z, jr_012_6e32

    jr nz, @-$7a

    ld [bc], a
    ldh [$ff0a], a
    db $10

jr_012_6e0f:
    ld [de], a
    nop
    ld b, d
    db $10
    ld [de], a
    ld b, e
    ld b, [hl]
    ld [$220a], sp
    add e
    ld [bc], a
    ldh a, [$ff03]
    ld b, [hl]
    db $10
    ld [de], a
    ld b, a
    add [hl]
    dec b
    ldh a, [rSB]
    ld [$8305], sp
    nop
    ld hl, sp+$02
    db $10
    ld [de], a
    ld b, d
    add a
    dec b
    ldh a, [$ff85]

jr_012_6e32:
    nop
    pop de
    ld b, $12
    ld b, l
    ld b, h
    db $10
    ld [de], a
    ld [hl], a
    ld b, l
    adc c
    ld b, $e0
    add e
    ld [bc], a
    ld l, [hl]
    nop
    ld b, l
    adc [hl]
    inc bc
    ld a, a
    add [hl]
    inc bc
    or d
    ldh a, [rNR52]
    inc bc
    ld a, c
    nop
    ld h, c
    add h
    ld [bc], a
    add hl, hl
    ret


    ld b, $4f
    dec b
    ld h, b
    nop
    jr nc, jr_012_6e5b

jr_012_6e5b:
    nop
    nop
    call nz, Call_012_6f06
    jr nc, jr_012_6e62

jr_012_6e62:
    ld bc, $0f0e

jr_012_6e65:
    add e
    rlca
    ld d, e
    adc l
    ld b, $92
    nop
    nop
    adc l
    ld b, $a1
    nop
    jr nc, jr_012_6dfa

    ld b, $88
    ld bc, $1210
    add e
    ld [bc], a
    ld l, [hl]
    adc l
    ld b, $a2
    ld bc, $1210
    add e
    dec b
    sub c
    nop
    jr nc, jr_012_6e0f

    rlca
    sub e
    dec b
    db $10
    ld [de], a
    ld b, d
    ld [hl], a
    ld b, e
    nop
    adc c
    rlca
    and d
    add h
    inc b
    db $dd
    ld b, $43
    ld b, [hl]
    nop
    db $10
    ld [de], a
    ld b, e
    ld b, d
    add l
    ld b, $d8
    add h
    nop
    and [hl]
    nop
    ld b, e
    add l
    dec b
    pop af
    add e
    ld b, $ee
    ld [$0000], sp
    ld l, b
    ld b, d
    ld [hl], a
    ld b, l
    db $10
    ld [de], a
    ld [hl], a
    add [hl]
    dec b
    ret nz

    add e
    dec b
    inc b
    ld bc, $7c45
    rst $38
    inc de
    inc c
    nop
    ld [$3106], sp
    inc e
    ld a, [bc]
    rst $38
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc b
    rst $38
    ret nc

    adc b
    jr @+$6a

    cp b
    ld hl, sp+$18
    ld l, b
    ld e, b
    cp b
    ret z

    ret z

    jr jr_012_6e65

    jr nz, jr_012_6f37

    ld e, b
    ld d, b
    ld b, b
    jr @+$1a

    jr jr_012_6efe

    jr jr_012_6f40

    ld c, b
    jr jr_012_6f03

    ld c, h
    jr nz, jr_012_6f0e

    jr nz, @+$22

    ld bc, $1c1c
    rrca
    inc b
    sub b
    ld e, c
    inc d
    inc b
    dec b
    ld bc, $0101
    ld b, l

jr_012_6efe:
    ld bc, $50f8
    ld d, $c0

jr_012_6f03:
    ld l, [hl]
    ld [de], a
    ld d, [hl]

Call_012_6f06:
    ld c, e
    ld [$0300], sp
    adc h
    ld [$0709], sp

jr_012_6f0e:
    inc h
    ld [$0904], sp
    rlca
    add hl, bc
    add l
    add l
    jp Jump_000_0a00


    ld bc, $0a09
    inc h
    dec bc
    nop
    inc c
    add l
    nop
    ld a, [bc]
    ld [bc], a
    dec bc
    dec bc
    inc hl
    ld h, $84
    add l
    nop
    ld a, [bc]
    ld [bc], a
    dec b
    ld b, $25
    ld h, $85
    rlca
    jr nz, jr_012_6f41

    add [hl]
    add [hl]

jr_012_6f37:
    ld a, [bc]
    inc hl
    ld [$2709], sp
    add l
    rlca
    inc h
    add h

jr_012_6f40:
    add l

jr_012_6f41:
    add l
    add h
    dec h
    ld [$2d09], sp
    add l
    ld bc, $0c0b
    dec l
    add l
    inc hl
    dec b
    nop
    ld c, $26
    add l
    inc bc
    dec c
    ld c, $85
    add l
    add h
    nop
    dec b
    ld [bc], a
    add l
    add l
    dec c
    add e
    nop
    ld [hl], e
    ld bc, $0907
    adc b
    nop
    ld a, [hl]
    ld [bc], a
    rlca
    ld [$8509], sp
    nop
    adc d
    db $e4
    ld e, a
    inc bc
    nop
    rlca
    daa
    ld [$0086], sp
    ld [bc], a
    nop
    ld a, [bc]
    daa
    dec bc
    nop
    inc c
    add l
    nop
    inc bc
    add hl, hl
    add h
    nop
    jr nz, @+$25

    dec bc
    jp z, $6000

    nop
    inc h
    inc h
    add h
    db $e4
    add hl, hl
    add l
    ld [bc], a
    dec c
    dec b
    ld c, $8a
    ld bc, $8562
    nop
    sub l
    ld bc, $1412
    adc b
    ld bc, $8475
    nop

jr_012_6fa4:
    sub [hl]
    inc b
    dec d
    rla
    rlca
    ld [$8c09], sp
    ld bc, $e483
    ld e, a
    inc bc
    ld b, $09
    add l
    rlca
    ld [$0908], sp
    add l
    add [hl]
    nop
    inc bc
    ld bc, $8585
    adc a
    ld [bc], a
    nop
    ld b, $23
    add l
    jr nz, jr_012_6fd2

    dec bc
    inc hl
    add l
    add l
    ld bc, $032a
    inc hl
    add l
    add l
    dec h

jr_012_6fd2:
    add e
    ld bc, $0039
    dec h
    add [hl]
    ld bc, $0039
    dec h
    db $e4

jr_012_6fdd:
    ld [hl+], a
    add l
    dec b
    add [hl]
    add l
    add l
    add l
    add l
    add [hl]
    add a
    ld bc, $8366
    ld [bc], a
    ld h, c
    ld bc, $1412
    add h
    ld [bc], a
    ld [hl], b
    ld bc, $0785
    add [hl]
    nop
    ld b, b
    ld bc, $1715
    add h
    ld [bc], a
    add b
    adc a
    ld [bc], a

Call_012_7000:
    ld a, d
    ld [bc], a
    add l
    rlca
    ld [$62f0], sp
    nop
    sbc l
    add [hl]
    ld [bc], a
    ld a, d
    add l
    ld [bc], a
    ld a, e
    ld [bc], a
    rlca
    ld [$8f09], sp
    inc bc
    nop
    ld bc, $2085
    add e
    ld [bc], a
    inc l
    add l
    inc bc
    jr nz, jr_012_6fa4

    inc bc
    jr nz, jr_012_7023

jr_012_7023:
    inc h

jr_012_7024:
    add e
    ld [bc], a
    inc a
    add l
    inc bc
    jr nc, jr_012_702e

    add l
    inc h
    add h

jr_012_702e:
    dec h
    ldh a, [rNR50]
    ld bc, $0049
    add [hl]
    add [hl]
    ld [bc], a
    ld l, d
    ld [bc], a
    dec c
    dec b
    ld c, $f0
    jr nz, jr_012_7042

    nop
    adc l
    inc bc

jr_012_7042:
    ld bc, $60f8
    ld [bc], a
    nop
    adc b
    inc bc
    inc b
    nop
    add l
    add l
    ld [bc], a
    ld b, $8f
    inc b
    nop
    adc b
    inc bc
    inc h
    ld [bc], a
    add l
    add l
    jr nz, jr_012_6fdd

    ld bc, $8a2c
    inc bc
    ld a, [hl-]
    inc bc
    inc h
    add h
    add h
    inc b
    call z, Call_012_7000
    inc bc
    ld [hl], b
    add l
    rlca
    ld [$852b], sp
    inc bc
    ld a, b
    add l
    ld a, [bc]
    dec bc
    adc b
    inc bc
    ld h, h
    ld [bc], a
    add [hl]
    add l
    dec c
    jp $7300


    ldh a, [rNR43]
    inc b
    nop
    adc e
    inc b
    inc bc
    nop
    adc e
    db $e4
    ld e, a
    inc bc
    rst $38
    cpl
    dec d
    inc de
    ld a, $ff
    dec b
    rst $38
    ld b, b
    or b
    ld b, b
    or b
    ld a, b
    ld b, b
    ld b, b
    ld l, b
    ld l, b
    jr c, jr_012_7024

    adc b
    ld c, [hl]
    ld c, h
    cp [hl]
    ld bc, $0101
    ld bc, HeaderLogo
    add $5a
    dec d
    adc d
    ld [hl], b
    ld [de], a
    ld e, d
    ld c, e
    ld [$0000], sp
    ld h, l
    cpl
    inc bc
    ld b, d
    inc b
    dec b
    nop
    inc hl
    ld b, d
    inc b
    dec b
    ld [hl+], a
    inc bc
    ld b, d
    ld b, $07
    nop
    inc h
    ld b, d
    ld b, $07
    add h
    nop
    ld c, $23
    ld [hl], a
    nop
    ld d, l
    inc hl
    ld [hl], a
    add [hl]
    nop
    inc e
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
    inc l
    nop
    ld c, h
    adc l
    nop
    jr c, jr_012_7105

    ld [hl], a
    add h
    nop
    ld c, c
    ldh a, [rNR43]
    nop
    ld c, $2c
    inc bc
    nop
    ld h, h
    db $e4
    ld h, b
    inc bc
    rst $38
    rlca
    ld d, $01
    rrca
    ld l, $37
    nop
    rst $38
    inc b
    inc b
    dec b
    dec b
    inc b
    rst $38
    ret c

    adc b
    jr jr_012_716d

jr_012_7105:
    jr nc, @-$5e

    ld c, b
    ld l, b
    jr @+$4a

    ld l, b
    ret c

    ld l, b
    xor b
    adc b
    cp b
    ld e, b
    jr nz, jr_012_7144

    adc b
    cp b
    ret z

    adc b
    jr z, jr_012_7142

    ld c, b
    jr z, @+$2a

    ld c, b
    jr z, jr_012_7198

    ld e, b
    ld a, b
    ld c, b
    jr c, jr_012_715d

    ld a, b
    ld d, h
    jr z, jr_012_7181

    ld e, b
    adc b
    ld l, b
    ld c, b
    ld a, [de]
    ld l, e
    and h
    and h
    xor b
    xor h
    add a
    xor d
    sbc a
    sbc a
    sbc a
    and h
    sbc a
    ld bc, $4f1a
    and h
    ld bc, $9f01
    sbc a

jr_012_7142:
    sbc a
    dec b

jr_012_7144:
    ld bc, $0101
    ld b, l
    inc bc
    ld l, h
    ld d, [hl]
    ld d, $f3
    ld [hl], b
    ld [de], a
    ld h, c
    ld c, e
    ld [$0001], sp
    ld b, l
    inc a
    nop
    ld bc, $2221
    add e
    nop
    inc e

jr_012_715d:
    inc hl
    nop
    nop
    ld [hl-], a
    inc h
    nop
    ld bc, $2a29
    add e
    nop
    inc l
    add [hl]
    nop
    add hl, de
    dec hl

jr_012_716d:
    nop
    ld h, d
    ld de, $0085
    inc sp
    inc bc
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    ld [hl+], a
    nop
    ld h, d
    inc d
    dec h
    nop
    ld [hl+], a
    dec e
    nop

jr_012_7181:
    ld e, $85
    nop
    ld d, h
    nop
    dec de
    add a
    nop
    ld e, e
    ld h, d
    ld de, $0083
    ld d, [hl]
    add e
    nop
    ld h, e
    ld bc, $0c00
    ld [hl+], a
    dec e
    ld h, d

jr_012_7198:
    inc d
    nop
    jr @-$7b

    nop
    ld [hl], a
    ld [hl+], a
    jr jr_012_71a2

    dec h

jr_012_71a2:
    ld c, $22
    ld b, $01
    rlca
    dec b
    add e
    nop
    sub c
    add h
    nop
    sub b

jr_012_71ae:
    nop
    ld c, $23
    add hl, bc
    ld bc, $080a
    add e
    nop
    and c
    add l
    nop
    and b
    adc a
    nop
    sbc a
    nop
    add hl, bc
    db $e4
    ccf
    inc bc
    sub b
    nop
    ld [hl], $83
    nop
    jr nc, jr_012_71ae

    jr nz, jr_012_71cc

jr_012_71cc:
    nop
    ld [hl-], a
    adc a
    ld bc, $0027
    nop
    adc d
    nop
    inc [hl]
    ld bc, $070c
    ld h, d
    dec b
    ld bc, $0b05
    add a
    ld bc, $0210
    inc c
    ld c, $0a
    ld h, d
    ld [$0802], sp
    dec c
    dec bc
    inc h
    nop
    inc bc
    ld b, $06
    ld c, $09
    add h
    ld bc, $0664
    add hl, bc
    dec c
    ld b, $06
    dec bc
    nop
    nop
    add [hl]
    nop
    sbc a
    add l
    nop
    xor h
    ld [bc], a
    dec c
    inc h
    jr @-$72

    ld bc, $0280
    add hl, bc
    dec c
    rlca
    adc l
    ld bc, $0190
    add hl, bc
    ld a, [bc]
    adc a
    ld bc, $e4a0
    ccf
    inc bc
    db $e4
    ld hl, $9100
    ld bc, $0103
    add hl, de
    dec de
    adc l
    nop
    scf
    ld bc, $1e1c
    adc d
    ld bc, $0511
    ld de, $0013
    inc e
    ld de, $8613
    nop
    ld b, e
    add hl, bc
    nop
    nop
    add hl, de
    inc d
    ld d, $00
    inc e
    inc d
    ld d, $00
    add l
    nop
    ld d, h
    rlca
    rla
    rla
    inc e
    inc d
    ld de, $1212
    inc de
    add e
    nop
    ld e, c
    inc c
    inc c
    ld b, $07
    ld d, $1b
    nop
    inc e
    inc d
    inc d
    dec d
    dec d
    ld d, $16
    add e
    nop
    adc h
    dec b
    add hl, bc
    ld a, [bc]
    ld d, $1e
    nop
    dec b
    add a
    nop
    sub c
    ld bc, $090e
    add h
    ld [bc], a
    adc e
    nop
    ld [$0088], sp
    and c
    adc a
    ld [bc], a
    sbc d
    add h
    ld [bc], a
    sbc d
    ld hl, sp+$40
    ld bc, $f000
    ld [hl+], a
    ld [bc], a
    ld de, $0002
    add hl, de
    dec de
    adc l
    ld [bc], a
    inc e
    ld bc, $1e1c
    adc l
    ld bc, $000d
    inc e
    ld h, d
    ld de, $1726
    call nz, Call_012_4700
    nop
    inc e
    adc b
    nop
    ld d, a
    ld bc, $1400
    add e
    inc bc
    ld c, h
    ld bc, $1312
    add h
    nop
    ld e, b
    nop
    inc [hl]
    add e
    nop
    ld d, h
    add l
    nop
    ld d, h
    dec b
    dec d
    ld d, $1a
    dec de
    nop
    dec [hl]
    add h
    inc bc
    ld l, h
    inc bc
    add hl, de
    ld a, [de]
    inc d
    dec d
    add e
    nop
    sub h
    nop
    ld e, $86
    inc bc
    ld a, d
    inc bc
    inc e
    dec e
    inc d
    dec d
    add e
    nop
    and h
    add e
    inc bc
    adc c
    inc b
    add hl, de
    ld a, [de]
    inc d
    add hl, de
    dec de
    adc d
    inc bc
    sub d
    inc b
    inc e
    dec e
    inc d
    inc e
    ld e, $8d
    inc bc
    and d
    db $e4
    ccf
    inc bc
    ccf
    nop
    ld [bc], a
    add hl, de
    ld a, [de]
    dec de
    adc h
    ld [bc], a
    ld a, [de]
    ld bc, $1d1c
    add l
    inc bc
    dec [hl]
    ld bc, $1b19
    add l
    nop
    ld sp, $1202
    inc de
    ld e, $84
    nop
    dec e
    ld [bc], a
    inc e
    ld e, $00
    and h
    nop
    ld e, c
    ld [bc], a
    dec d
    ld d, $1e
    add h
    nop
    dec l
    inc bc
    inc e
    ld e, $00
    ld [hl], b
    add h
    inc b
    ld c, h
    ld [bc], a
    ld de, $1312
    add l
    ld [bc], a
    ld b, b
    add l
    inc b
    ld h, c
    nop
    dec d
    add [hl]
    nop
    ld d, a
    ld bc, $1e1c
    add l
    nop
    ld h, a
    nop
    dec d
    add e
    inc bc
    add e
    nop
    dec bc
    add l
    inc bc
    ld b, d
    ld bc, $1e16
    add h
    inc b
    ld l, [hl]
    inc b
    ld [$0d09], sp
    inc h
    dec a
    add e
    inc bc
    ld d, h
    inc bc
    ld d, $1e
    dec a

jr_012_734e:
    dec a
    add h
    inc b
    sub b
    ld bc, $0f09
    add a
    nop
    sub h
    inc bc
    ld b, $15
    inc d
    dec d
    adc e
    ld [bc], a
    and b
    nop
    ld b, [hl]
    db $e4
    ccf
    inc bc
    rst $38
    ld a, [de]
    ld de, $ff3e
    inc bc
    rst $38
    sub b
    ld d, b
    jr z, jr_012_73e0

    jr z, jr_012_739a

    ld d, [hl]
    add d
    cp [hl]
    ld bc, $0101
    ld bc, $0101
    ld h, $57
    rla
    ld h, [hl]
    ld [hl], e
    ld [de], a
    ld l, b
    ld c, e
    ld [$0500], sp
    adc b
    dec sp
    ld bc, $3a01
    dec sp
    inc hl
    ld bc, $3a01
    dec c
    inc hl
    inc bc
    nop
    rrca
    adc a
    nop
    ld bc, $7704

jr_012_739a:
    ld [hl], h
    ld [hl], h
    halt
    ld [hl], a
    inc hl
    ld [hl], h
    nop
    halt
    add l
    nop
    dec bc
    add hl, bc
    ld a, c
    ld a, h
    ld a, l
    ld a, b
    ld a, c
    ld a, [hl]
    ld [hl], l
    ld a, h
    ld a, l
    ld a, b
    add l
    nop
    dec bc
    add hl, bc
    add hl, de
    ld c, b
    ld c, c
    jr jr_012_73d2

    ld [hl-], a

jr_012_73ba:
    nop
    ld c, b
    ld c, c
    jr jr_012_734e

    nop
    dec sp
    add l
    nop
    dec bc
    add hl, bc
    inc d
    ld b, h
    ld b, l
    inc de
    inc d
    rla
    add h
    ld b, h
    ld b, l
    inc de
    add l
    nop
    dec bc

jr_012_73d2:
    add hl, bc
    ld d, $46
    ld b, a
    dec d
    ld d, $1f
    add [hl]
    ld b, [hl]
    ld b, a
    dec d
    add h
    nop
    dec bc

jr_012_73e0:
    dec hl
    ld b, $23
    inc bc
    ld a, [hl+]
    ld c, $00
    add e
    db $e4
    ld h, e
    inc bc
    rst $38
    ld d, $2e
    inc [hl]
    ld bc, $141c
    inc de
    inc c
    rst $38
    ld bc, $0502
    dec b
    ld bc, $0005
    rst $38
    ldh a, [$ff08]
    ldh a, [rSVBK]
    ldh a, [$ff30]
    jr jr_012_744d

    jr c, @-$76

    ld [hl], b
    jr nc, jr_012_73ba

    add b
    ret c

    jr nz, @-$06

    ld hl, sp+$20
    sub b
    ld e, b
    cp b
    cp b
    and b
    ld l, b
    jr z, jr_012_7440

    ld h, b
    ld b, b
    or b
    or b
    and b
    cp b
    ld l, b
    jr nc, jr_012_7469

    sbc b
    adc b
    ld c, a
    add [hl]
    sub [hl]
    sub [hl]
    ld c, a
    sbc b
    sbc b
    sbc b
    dec b
    dec b
    ld c, a
    ld c, a
    ld c, a
    add [hl]
    ld e, c
    ld c, l
    ld c, h
    ld c, h
    ld hl, $0107
    ld bc, $6501
    dec b
    add a
    ld a, b
    rla
    db $ec

jr_012_7440:
    ld [hl], e
    ld [de], a
    ld [hl], b
    ld c, e
    ld [$0001], sp
    ld a, h
    ld b, [hl]
    dec b
    inc b
    nop
    dec b

jr_012_744d:
    ld b, a
    inc h
    dec h
    nop
    inc b
    sbc a
    nop
    ld bc, $0088
    ld bc, $1d25
    ld b, h
    inc h
    dec h
    dec h
    dec de
    add a
    nop
    ld c, b
    inc bc
    dec e
    dec e
    dec de
    dec de
    add h
    nop

jr_012_7469:
    inc c
    nop
    rlca
    add hl, hl
    dec de
    sub c
    nop
    inc e
    ld bc, $1d1d
    adc h
    nop
    db $10
    ld [bc], a
    rlca
    dec de
    dec de
    ld b, [hl]
    inc b
    dec b
    ld bc, $1b1b
    adc a
    nop
    sub b
    sbc a
    nop
    jr nz, @+$41

    inc bc
    ldh a, [rNR51]
    nop
    jr nz, @+$25

    dec e
    adc c
    nop
    ld c, d
    adc e
    nop
    ld [hl], b
    inc hl
    dec e
    ld bc, $0522
    add e
    nop
    ld e, [hl]
    add l
    nop
    ld e, h
    inc hl
    dec de
    inc b
    ld b, $07
    add hl, de
    add hl, de
    ld b, $84
    nop
    ld [hl], c
    ld [bc], a
    ld b, $25
    inc b
    add e
    ld bc, $8a45
    ld bc, $0145
    inc h
    dec h
    add [hl]
    ld bc, $0052
    dec h
    inc hl
    ld e, $03
    inc h
    dec h
    ld [hl+], a
    inc hl
    add [hl]
    ld bc, $0062
    inc hl
    inc hl
    inc e
    ld h, e
    ld [hl+], a
    add e
    nop
    ld a, d
    add e
    ld bc, $2376
    inc e
    ld bc, $2524
    add e
    nop
    ld l, b
    ld bc, $1d1d
    add a
    ld bc, $0186
    inc e
    inc e
    daa
    dec de
    add l
    ld bc, $0198
    inc e
    inc e
    adc b
    nop
    ld [bc], a
    ld b, d
    inc hl
    ld [hl+], a
    nop
    inc hl
    ldh a, [rVBK]
    nop
    ret nc

    dec b
    ld b, d
    dec e
    ld b, d
    ld b, d
    dec e
    ld b, d
    add hl, hl

Jump_012_7500:
    dec e
    dec h
    jr c, jr_012_752d

    dec de
    add a
    nop
    and [hl]
    adc c
    nop
    ld [hl], h
    adc l
    ld bc, $0130
    dec e
    dec e
    add h
    ld bc, $8840
    ld bc, $2549
    ld e, $00
    inc h
    add [hl]
    ld bc, $c379
    ld bc, $04b1
    ld [hl+], a
    inc hl
    inc e
    inc e
    ld [hl+], a
    add [hl]
    ld bc, $8389
    ld [bc], a
    ld a, [hl]

jr_012_752d:
    inc b
    inc h
    dec h
    inc e
    inc e
    inc h
    add [hl]
    ld bc, $0199
    ld e, $1e
    add a
    ld [bc], a
    add h
    ld bc, $1c1c
    add a
    ld [bc], a
    add h
    ld bc, $2524
    daa
    inc e
    add e
    ld [bc], a
    sub d
    ld b, e
    ld [hl+], a
    inc hl
    nop
    ld [hl+], a
    ldh a, [rRP]
    ld bc, $2fc9
    dec e
    dec a
    dec de
    ld bc, $0504
    dec l
    dec de
    ld bc, $2524
    adc l
    inc bc
    ld b, d
    adc l
    inc bc
    ld l, $03
    ld b, $07

jr_012_7568:
    dec de
    dec de
    adc e
    ld bc, $8560
    nop
    xor h
    add l
    ld [bc], a
    ld [hl], h
    add a
    inc bc
    sub b
    ld bc, $2322
    adc e
    ld [bc], a
    add b
    add e
    ld [bc], a
    sub b
    adc e
    ld [bc], a
    sub b
    ldh a, [rBCPD]
    ld [bc], a
    cp [hl]
    ld bc, $2322
    adc l
    inc bc
    ld a, [hl+]
    ld bc, $0706
    adc e
    ld [bc], a
    ld a, [hl-]
    add h
    ld bc, $0046
    add hl, de
    add e
    nop
    ld l, e
    add a
    nop
    ld d, h
    rlca
    ld b, $07
    dec de
    dec de
    dec de
    inc h
    dec h
    inc h
    adc c
    nop
    ld h, h
    ld [bc], a
    dec de
    dec de
    dec de
    adc l
    inc b

jr_012_75af:
    dec l
    nop
    add hl, de
    add l
    ld bc, $894a
    inc b
    ld a, $83
    ld bc, $0347
    inc h
    rlca
    dec de
    dec de
    adc b
    nop
    ld d, h
    inc b
    ld b, $07
    dec de
    ld [hl+], a
    dec b
    add a
    ld [bc], a
    ld e, [hl]
    add h
    inc b
    ld c, d
    adc l
    inc bc
    ld e, l
    inc bc
    inc h
    dec h
    jr c, jr_012_75f9

    ldh a, [$ff5e]
    nop
    pop bc
    inc bc
    ld b, d
    dec e
    dec e
    jr jr_012_7568

    ld [bc], a
    ld h, b
    ld b, c
    inc b
    dec b
    inc bc
    jr c, jr_012_7604

    dec de
    jr c, @-$73

    ld [bc], a
    ld c, d
    adc c
    ld [bc], a
    ld b, c
    nop
    dec e
    inc hl
    ld b, d
    nop
    dec e
    adc d
    nop

jr_012_75f9:
    ld d, e
    call nz, Call_000_3402
    ld [bc], a
    dec e
    ld [hl+], a
    inc hl

Call_012_7601:
    add a
    inc bc
    inc l

jr_012_7604:
    inc b
    jr c, jr_012_763f

    inc a
    jr c, @+$3a

    adc d
    inc bc
    ld e, l
    dec b
    jr c, jr_012_7648

    ld a, $38
    jr c, @+$1d

    adc b
    inc b
    ld h, h
    nop
    dec de
    add h
    ld [bc], a
    ld sp, $048a
    inc sp
    add e
    ld [bc], a
    ld [hl-], a
    adc d
    inc bc
    ld c, b
    adc c
    ld [bc], a
    ld b, d
    nop
    jr c, jr_012_75af

    ld bc, $0058
    ld b, $84
    nop
    dec de
    ldh a, [$ff65]
    nop
    ret nz

    sbc c
    nop
    ld b, $8f
    inc b
    ret nz

    nop
    ld b, $8f

jr_012_763f:
    nop
    ld de, $069f
    ld b, c
    adc a
    ld b, $41
    adc [hl]

jr_012_7648:
    nop
    ld de, $3ef0
    ld b, $00
    nop
    ld a, l
    ccf
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $0101
    ld bc, HeaderLogo
    ld l, h
    ld d, [hl]
    ld d, $53
    halt
    ld [de], a
    ld [hl], h
    ld c, e
    ld [$0001], sp
    ld b, l
    daa
    nop
    ld bc, $2221
    inc hl
    nop
    nop
    inc bc

jr_012_7671:
    add a
    nop
    rlca
    ld [bc], a
    nop
    add hl, hl
    ld a, [hl+]
    add [hl]
    nop
    dec bc
    add h
    nop
    add hl, de
    nop
    ld l, b
    ld h, $00
    call nz, Call_000_0f00
    inc bc
    nop
    inc hl
    nop
    ld [hl], b
    add [hl]
    nop
    inc b
    nop
    inc bc
    add $00
    ld [hl], $00
    ld [hl], $84
    nop
    ld [hl-], a
    ld bc, $2a29
    rst $00
    nop
    cpl
    nop
    scf
    add a
    nop
    jr z, @+$09

jr_012_76a3:
    ld b, $0b
    nop
    ld l, b
    nop
    inc c
    ld b, $06
    add [hl]
    nop
    ld h, b
    ld b, $03
    add hl, bc
    rrca
    ld l, $40
    ld l, $10
    ld [hl+], a
    add hl, bc
    ld [$3d0f], sp
    ld [hl], b
    dec a
    db $10
    add hl, bc
    inc bc
    add hl, bc
    ld a, [bc]
    ld h, h
    dec b
    ld [bc], a
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [hl+], a
    ld b, $00
    ld [$0083], sp
    ld a, [hl]
    ld h, d
    ld [$0802], sp
    add hl, bc
    add hl, bc
    add l
    nop
    sub b
    nop
    ld b, [hl]
    db $e4
    ld h, b
    inc bc
    rst $38
    ld d, $22
    rrca
    cpl
    nop
    inc b
    ld bc, $00ff
    ld [$0304], sp
    inc bc
    rst $38
    ld l, b
    sbc b
    ret z

    jr c, jr_012_7671

    add b
    ld c, b
    cp b
    ld d, b
    ldh [$ff88], a
    sub b
    adc b
    xor b
    jr nz, @+$5a

    sbc b
    ret z

    ret z

    ret z

    ret nz

jr_012_7701:
    ret nz

    ld l, b

Call_012_7703:
    ld e, b
    ld l, b
    ld l, b
    ld e, b
    jr c, jr_012_7701

    jr c, jr_012_76a3

    ld a, b
    ld e, b
    adc b
    ld a, b
    ld e, b
    ld c, a
    ld c, a
    ld l, l
    ld l, h
    xor d
    adc b
    xor b
    xor h
    jr @+$1a

    ld d, $18
    ld bc, $1801
    ld [$0808], sp
    dec b
    ld bc, $0101
    ld b, l
    rlca
    ld l, h
    ld d, [hl]
    ld d, $de
    halt
    ld [de], a
    add a
    ld c, e
    ld [$0001], sp
    ld b, l
    db $e4
    ld b, c
    nop
    ld bc, $2221
    add hl, hl
    nop
    jp $4300


    ld bc, $2a29
    add hl, hl
    nop
    nop
    add hl, hl
    jr c, jr_012_7748

jr_012_7748:
    ld bc, $2221
    adc $00
    ld l, l
    nop
    ld a, [hl+]
    dec sp
    nop
    nop
    ld [hl], $26
    nop
    nop
    inc c
    ld h, $00
    nop
    scf
    add [hl]
    nop
    xor c
    inc bc
    ld c, $06
    ld b, $07
    ld [hl+], a
    nop
    nop
    dec b
    add l
    nop
    pop bc
    ld bc, $1007
    ld [hl+], a
    add hl, bc
    nop
    ld a, [bc]
    ld [hl+], a
    ld l, $62
    ld [$3d22], sp
    ld [bc], a
    ld [$080a], sp
    add e
    nop
    rst $08
    ld h, l
    dec b
    ld [hl+], a
    ld b, $86
    nop
    call c, $0902
    add hl, bc
    ld a, [bc]
    add l
    nop
    ldh a, [$ff83]
    nop
    call c, Call_000_003e
    nop
    ld hl, $00c4
    ld l, [hl]
    sbc d
    nop
    ld d, l
    nop
    ld [hl+], a
    adc [hl]
    nop
    ld [hl], d
    nop
    ld a, [hl+]
    adc b
    nop
    add d
    sbc d
    nop
    ld [hl], b
    ldh a, [$ff2a]
    nop
    ld [hl], c
    ld bc, $0706
    dec hl
    rla
    inc bc
    dec b
    ld b, $09
    ld a, [bc]
    dec hl
    ld l, $03
    ld [$0909], sp
    ld a, [bc]
    dec hl
    cpl
    nop
    ld [$0085], sp
    ldh [$ff62], a
    dec b
    add l
    ld bc, $83d2
    ld bc, $62be
    ld [$0803], sp
    add hl, bc
    ld a, [bc]
    ld [$0184], sp
    ldh [$ff8e], a
    ld bc, $02de
    ld a, [bc]
    ld [$9709], sp
    ld bc, $0030
    nop
    add $01
    ld d, a
    nop
    ld a, [hl+]
    add hl, hl
    nop
    ldh a, [$ff37]
    nop
    ld h, b
    ld bc, $1b19
    adc l
    nop
    ld [hl], l
    ld bc, $1e1c
    ld [hl+], a
    nop
    ld [bc], a
    ld de, $2a13
    add e
    ld [bc], a
    halt
    adc b
    ld [bc], a
    ld l, a
    ld bc, $1614
    add h
    ld [bc], a
    add l
    add h
    ld [bc], a
    ld l, a
    ld bc, $1311
    add h
    ld [bc], a
    add [hl]
    ld a, [bc]
    add hl, de
    ld a, [de]
    inc d
    ld d, $1b
    dec bc
    nop
    nop
    inc e
    inc d
    ld d, $84
    ld [bc], a
    add [hl]
    ld b, $1c
    dec e
    inc d
    ld d, $1e
    dec c
    dec bc
    adc l
    ld [bc], a
    and d
    ld bc, $0f09
    ld h, d
    dec b
    add e
    ld [bc], a
    and l
    nop
    dec b
    ld [hl+], a
    ld b, $02
    rlca
    ld d, $1e
    add h
    ld bc, $03e0
    ld d, $18
    jr jr_012_7856

    add h
    nop
    sbc $87
    ld [bc], a
    adc $01
    nop
    nop
    adc a
    ld [bc], a
    ret c

    add a
    ld [bc], a
    ret c

    dec h
    nop
    ldh a, [$ff29]
    ld [bc], a

jr_012_7856:
    ld hl, $2101
    ld [hl+], a
    adc b
    nop
    add d
    sbc b
    nop
    add h
    add h
    nop
    ld b, e
    inc bc
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    add [hl]
    ld [bc], a
    ld e, [hl]
    add h
    nop
    ld d, e
    inc bc
    inc e
    dec e
    dec e
    ld e, $89
    ld [bc], a
    ld l, [hl]
    ld bc, $1a19
    add e
    inc bc
    ld l, c
    ld bc, $2221
    add a
    ld [bc], a
    ld [hl], b
    ld b, $1c
    ld de, $1212
    inc de
    ld e, $29
    add h
    ld [bc], a
    ld a, d
    add h
    inc bc
    add e
    ld [bc], a
    inc d
    dec d
    dec d
    add l
    ld [bc], a
    cp $00
    inc d
    add e
    ld [bc], a
    cp $83
    inc bc
    adc b
    adc e
    inc bc
    sbc d
    add e
    inc bc

jr_012_78a4:
    sbc b
    add a
    inc bc
    sbc d
    adc e
    ld bc, $03d2
    nop
    nop
    jr @+$16

    adc e
    ld bc, $02e2
    jr jr_012_78ce

    nop
    adc h
    inc bc
    pop de
    ld bc, $0000
    adc l
    inc bc
    ldh [$ffe4], a
    ld l, $00
    ld bc, $2221
    adc l
    nop
    ld [hl], a
    ld bc, $2a29
    adc h
    nop

jr_012_78ce:
    ld d, c
    nop
    ld l, b
    ld l, $00
    nop
    ld [hl], b
    adc [hl]
    nop
    ld l, a
    nop
    ld [hl], $89
    ld [bc], a
    ld e, a
    ld bc, $2a29
    add e
    nop
    or h
    adc b

jr_012_78e4:
    ld [bc], a
    ld l, a
    add e
    nop
    and h
    adc d
    inc b
    ld a, d
    nop
    ld [hl], $85
    nop
    or h
    ld bc, $0037
    add [hl]
    inc bc
    adc a
    nop
    scf
    adc c
    inc b
    sub [hl]
    ld bc, $1614
    adc b
    inc b
    and d
    ld [bc], a
    dec b
    ld b, $07
    add l
    inc bc
    cp a
    add hl, bc
    nop
    scf
    nop
    inc [hl]
    nop
    scf
    nop
    ld [$0a09], sp
    add l
    inc bc
    rst $28
    ld b, $18
    scf
    jr jr_012_7951

    jr jr_012_7955

    jr jr_012_78a4

    inc bc
    db $db
    add e
    inc bc
    pop de
    inc bc
    nop
    scf
    nop
    dec [hl]
    add a

jr_012_792b:
    inc b
    ret z

    adc [hl]
    inc b

jr_012_792f:
    ldh [rP1], a
    ld b, a
    rst $38
    inc [hl]
    inc hl
    inc d
    rra
    dec l
    rrca
    ld d, $ff
    dec b
    ld b, $09
    rlca
    dec b
    nop
    rst $38
    ldh [$ff90], a
    ld l, b
    cp b
    jr c, @-$16

    ret z

    ret z

    adc b
    ld [$4828], sp
    sbc b
    jr jr_012_7969

jr_012_7951:
    jr jr_012_792b

    cp b
    ld e, b

jr_012_7955:
    jr jr_012_792f

    ret c

    jr c, jr_012_79d2

    jr c, jr_012_78e4

    adc b
    ld a, b
    ld a, b
    and b
    or b
    ret nz

    cp b
    cp b
    ld a, b
    ld a, b
    cp b
    cp b
    adc b

jr_012_7969:
    sbc b
    ld a, b
    ld a, b
    sbc b
    cp b
    ld [hl], b
    jr jr_012_7989

    jr jr_012_79e3

    ld h, b
    and b
    cp b
    ld a, b
    ld l, b
    cp b
    ld c, b
    xor b
    sbc b
    adc b
    sbc b
    adc b
    inc [hl]
    inc l
    inc [hl]
    sub [hl]
    sub [hl]
    ld l, [hl]
    ld l, [hl]
    ld c, l
    sub [hl]
    and b

jr_012_7989:
    and b
    sub [hl]
    ld l, [hl]
    sub [hl]
    sub [hl]
    add h
    xor b
    xor d
    xor h
    add h
    add l
    ld c, a
    sub [hl]
    and b
    and b
    and b
    add l
    and b
    and b
    and b
    and b
    and b
    ld c, a
    ld c, a
    ld c, a
    ld b, $01
    ld bc, $4901
    dec b
    inc de
    ld d, b
    rla
    inc sp
    ld a, c
    ld [de], a
    adc [hl]
    ld c, e
    ld [$0001], sp
    sub c
    inc hl
    nop
    ld [bc], a
    ld [hl], c
    nop
    ld [hl], h
    daa
    nop
    adc [hl]
    nop
    ld bc, $0024
    nop
    ld [hl], e
    adc b
    nop
    rlca
    nop
    ld l, b
    ld [hl+], a
    nop
    ld [bc], a
    nop
    nop
    nop
    call $3300
    add l

jr_012_79d2:
    nop
    rrca
    nop
    ld [hl], d
    add [hl]
    nop
    rrca
    nop
    nop
    ld h, d
    ld d, b
    ld bc, $7271
    add h
    nop
    dec b

jr_012_79e3:
    nop
    ld [hl], c
    call nz, Call_012_4900
    ld h, d
    ld d, e
    ld [hl+], a
    nop
    inc bc
    ld d, b
    ld d, d
    nop
    ld [hl], c
    add e
    nop
    ld h, a
    ld bc, $0404
    ld h, d
    ld d, [hl]
    ld [hl+], a
    inc b
    ld bc, $5e5c
    add h
    nop
    ld [hl], l
    ld [bc], a
    inc b
    ld a, b
    ld a, b
    ld h, d
    ld e, h
    db $e4
    add hl, sp
    ld a, b
    nop
    dec d
    ld l, $0d
    jr nc, jr_012_7a20

    ccf
    inc bc
    add e
    nop
    inc c
    sbc a
    nop
    ld bc, $7104
    ld [hl], d
    nop
    ld [hl], e
    ld [hl], h
    add l
    nop

jr_012_7a20:
    ld b, h
    adc d
    nop
    ld bc, $0085
    ld d, l
    nop
    ld [hl], d
    add [hl]
    nop
    ld [hl+], a
    ret z

    ld bc, $0234
    ld [hl], d
    ld [hl], c
    ld [hl], d
    add h
    nop
    dec l
    nop
    ld [hl], e
    ret


    nop
    dec h
    nop
    ld [hl], d
    jp z, Jump_012_6201

    cpl
    inc b
    adc c
    nop
    cp d
    ld bc, $8e2c
    inc hl
    adc d
    add h
    nop
    cp e
    inc h
    stop
    ld de, $0184
    adc e
    nop
    dec d
    adc b
    nop
    call z, $1100
    inc h
    ld a, b
    ld a, [hl+]
    stop
    ld d, $83
    ld bc, $cbac
    nop
    jp c, Jump_000_0083

    set 6, b
    inc [hl]
    nop
    ret nc

    nop
    ld [hl], e
    ret z

    nop
    rrca
    call z, Call_012_6201
    adc h
    nop
    ld b, $03
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld [hl], h
    adc l
    nop
    ld b, c
    add l
    nop
    ld b, h
    adc l
    nop
    inc bc
    nop
    ld [hl], e
    ld h, d
    ld d, b
    add [hl]
    nop
    inc h
    dec b
    ld [hl+], a
    ccf
    inc hl
    nop
    nop
    ld [hl], c
    add l
    nop
    ld h, d
    dec b
    ld [hl+], a
    dec c
    dec c
    ccf
    db $10
    ld b, b
    jp Jump_012_6a02


    ld bc, $5d5c
    add e
    nop
    ld a, c
    inc b
    rrca
    db $10
    db $10
    ld b, b
    db $10
    add e
    ld [bc], a
    ld [hl], a
    nop
    db $10
    dec h
    adc d
    nop
    rla
    jr z, jr_012_7ac9

    ld h, $8a
    nop
    rrca
    call z, $b701
    ld bc, $7878
    adc [hl]
    ld [bc], a
    sub a
    nop
    dec d
    ret z

jr_012_7ac9:
    nop
    rst $10
    add l
    nop
    ret


    jr z, jr_012_7ae0

    nop
    db $10
    ldh a, [$ff37]
    ld bc, $00d0
    ld [hl], h
    add [hl]
    ld [bc], a
    sub a
    adc b
    nop
    ld e, $01
    rrca

jr_012_7ae0:
    db $10
    inc h
    inc de
    adc b
    ld [bc], a
    inc [hl]
    inc bc
    rrca
    ld de, $7b00
    add $00
    ld c, [hl]
    add e
    ld bc, $0451
    ld [hl+], a

jr_012_7af3:
    db $10
    ld de, $7900
    add h
    ld [bc], a
    ld d, [hl]
    nop
    inc hl
    add e
    ld [bc], a
    ld h, h
    nop

Jump_012_7b00:
    ccf
    add l

jr_012_7b02:
    ld bc, $00c9
    ld c, $83
    inc bc
    scf
    ld [bc], a
    inc b
    inc b
    rrca
    add h
    ld [bc], a
    ld a, b
    ld a, [bc]
    db $10
    inc de
    inc de
    ld hl, $1004
    db $10
    ld de, $7878
    rrca
    adc c
    ld bc, $8695
    inc bc
    ld h, b
    inc hl
    inc de
    nop
    ld l, $89
    inc bc
    ld l, h
    ld [bc], a
    ld de, $8a8e
    ret z

    ld [bc], a
    sub [hl]
    inc b
    ld hl, $7878
    jr nz, @+$30

    adc c
    inc bc
    add a
    adc c
    inc bc
    add [hl]
    inc b
    adc d
    ld h, a
    dec hl
    dec c
    dec c
    adc h
    inc bc
    and b
    nop
    rrca
    jp $d200


    adc d
    nop
    call nz, $32f0
    ld [bc], a
    call Call_000_102f
    nop
    inc de
    add [hl]
    inc b
    ld a, [bc]
    push bc
    inc bc
    rra
    ld [bc], a
    db $10
    inc de
    nop
    add h
    ld [bc], a
    sub a
    nop
    ld de, $0388
    inc hl
    adc a
    inc b
    jr nz, jr_012_7af3

    inc b
    jr nz, jr_012_7b6e

jr_012_7b6e:
    inc c
    add e
    nop
    call z, Call_000_1103
    nop
    inc b
    jr nz, jr_012_7b9b

    inc de
    inc bc
    ld hl, $8282
    jr nz, jr_012_7b02

    inc b
    db $10
    ld [bc], a
    ld de, $8a04
    adc h
    inc bc
    or e
    ld bc, $7811
    adc d
    inc b
    ld h, b
    dec bc
    dec l
    inc de
    inc de
    ld hl, $8a78
    ld h, a
    dec hl
    dec c
    dec c
    inc l
    adc [hl]

jr_012_7b9b:
    adc [hl]

jr_012_7b9c:
    inc b
    ld h, b
    adc c
    inc bc
    and d
    ld bc, $0d0d
    add e
    inc bc
    cp [hl]
    add e
    inc bc
    jp Jump_000_0285


    ret nz

    dec [hl]
    db $10
    ldh a, [$ff39]
    ld [bc], a

jr_012_7bb2:
    add $8f
    nop
    call c, Call_000_1301
    inc de
    adc l
    nop
    sbc $02
    ld a, e
    nop
    rrca
    adc h
    nop
    rst $18
    nop
    ld a, c
    adc [hl]
    dec b
    ld hl, $3700
    adc [hl]
    dec b
    ld hl, $0401
    inc b
    adc l
    dec b
    ld [hl+], a
    ld bc, $7878
    adc a
    dec b
    ld d, d
    adc l
    dec b
    ld [hl+], a
    ld bc, $8a8a
    adc a
    dec b
    ld [hl], d
    adc l
    dec b
    ld [hl+], a
    inc bc
    dec c
    dec c
    db $10
    db $10

jr_012_7bea:
    sbc e
    inc b
    db $f4
    pop de
    dec b
    or e
    ld bc, $9010
    db $e4
    dec hl
    inc bc
    rst $38
    inc e
    inc c
    ld a, [hl+]
    ld l, $2f
    nop
    rlca
    rst $38
    dec b
    inc b
    ld [bc], a
    inc b
    rst $38
    ld l, b
    ld c, b
    ld l, b
    sbc b
    jr c, jr_012_7bb2

    ld c, b
    xor b
    adc b
    sbc b
    ld l, b
    cp b
    ld l, b
    ld l, b
    jr jr_012_7b9c

    ret z

    ld hl, sp+$58
    ld e, b
    ld e, b
    ldh a, [$fff8]
    jr z, jr_012_7c95

    add sp, -$48
    adc b
    ld e, b
    cp b
    ld e, c
    inc [hl]
    dec [hl]
    ld a, l
    ld a, l
    add [hl]
    add [hl]
    adc b
    inc [hl]
    add [hl]
    ld [bc], a
    add [hl]
    ld a, [de]
    add a
    add [hl]
    ld bc, HeaderLogo
    dec b
    ld [bc], a
    scf
    jp Jump_000_1561


    rst $30
    ld a, e
    ld [de], a
    sbc l
    ld c, e
    ld [$e400], sp
    ccf
    inc bc
    nop
    ld d, [hl]
    dec hl
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    adc a
    nop
    ld b, c
    dec h
    nop
    ld h, e
    ld b, b
    sub l
    nop
    ld c, e
    add h
    nop
    ld h, a
    ld [bc], a
    ld d, c
    nop
    nop
    ld h, d
    jr c, jr_012_7bea

jr_012_7c61:
    nop
    ld c, h
    nop
    ld d, b
    adc l
    nop
    ld b, a
    ld h, d
    add hl, bc
    adc d
    nop
    ld c, b
    ld [bc], a
    jr c, jr_012_7ca9

    ld a, [hl-]
    sbc h
    nop
    ld d, [hl]
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    sbc l
    nop
    ld b, [hl]
    add e
    nop
    ld h, a
    sub a
    nop
    sbc b
    add e
    nop
    db $f4
    add l
    nop
    or b
    sbc h
    nop
    xor d
    add l
    nop
    and l
    ld [hl+], a
    inc bc
    nop
    ld b, c
    add h
    nop
    or h
    nop

jr_012_7c95:
    ld [hl], b
    add h
    nop
    ld h, l
    nop
    ld a, [hl-]
    add l
    nop
    ld c, l
    adc c
    nop
    or b
    ld [hl+], a
    inc bc
    ld bc, $1105
    inc h
    nop
    nop

jr_012_7ca9:
    db $10
    inc h
    dec b
    ld [hl+], a
    inc bc
    ld b, $0d
    dec c
    ld de, $2300
    nop
    db $10
    dec h
    dec c
    add h
    ld bc, $046d
    ld c, $39
    ld a, [hl-]
    nop
    inc c
    adc e
    ld bc, $0177
    nop
    nop
    adc [hl]
    ld bc, $0085
    inc hl
    adc a
    ld bc, $0085
    jr c, jr_012_7c61

    ld bc, $0086
    ld [de], a
    adc [hl]
    ld bc, $0197
    nop
    ld [de], a
    inc h
    dec d
    adc b
    ld bc, $018d
    nop
    ld [hl], b
    add a
    nop
    ld c, b
    inc bc
    dec c
    dec c
    dec c
    ld de, $0083
    or d
    adc d
    ld bc, $01e8
    dec c
    ld de, $0187
    ld d, c
    rst $00
    ld bc, $057f
    dec b
    dec b
    ld de, $3938
    ld a, [hl-]
    adc b
    ld bc, $06fb
    dec c
    dec c
    dec c
    ld c, $00
    nop
    nop
    adc h
    ld [bc], a
    dec de
    inc h
    inc hl
    adc b
    ld [bc], a
    dec e
    ld bc, $136f
    add a
    nop
    ld c, b
    dec h
    dec d
    inc b
    inc de
    jr c, jr_012_7d5a

    inc hl
    inc hl
    adc [hl]
    nop
    ld c, e
    add l
    ld [bc], a
    ld a, [bc]
    add h
    nop
    or c
    adc a
    nop
    ld b, l
    ld [bc], a
    db $10
    dec b
    dec b
    add a
    ld bc, $0168
    nop
    nop
    add h
    ld bc, $cd93
    ld [bc], a
    ld b, l
    adc d
    ld [bc], a
    sub l
    dec b
    jr c, jr_012_7d7e

    ld a, [hl-]
    nop
    nop
    ld [de], a
    adc $02
    ld [hl], $01
    nop
    ld [de], a
    jp z, $5502

    nop
    inc hl
    add e
    nop
    or d
    adc [hl]
    nop
    ld b, a

jr_012_7d5a:
    nop
    ld [hl], b
    adc h
    nop
    add a
    inc b
    db $10
    dec b
    dec b
    dec b
    ld de, $0086
    ld c, c
    add a
    ld [bc], a
    and c
    nop
    ld c, $ca
    inc bc
    inc bc
    nop
    ld [de], a
    add e
    ld [bc], a
    ld b, h
    adc e
    ld [bc], a
    ld l, c
    ld [bc], a
    ld [de], a
    dec d
    inc de
    ret


    ld [bc], a

jr_012_7d7e:
    sub h
    nop
    ld de, $0186
    db $e4
    dec b
    db $10

jr_012_7d86:
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    adc b
    ld [bc], a
    ld bc, $1000
    add a
    ld bc, $847a
    ld bc, $0291
    jr c, jr_012_7dd2

    inc c
    adc c
    inc bc
    ld c, d
    adc b
    ld [bc], a
    and b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    add l
    ld [bc], a
    ld b, h
    add e
    inc bc
    ld [hl+], a
    nop
    dec c
    add $01
    pop hl
    ld bc, $0013
    adc b
    ld [bc], a
    ret nz

    add a
    ld [bc], a
    ld l, l
    ld [bc], a
    db $10
    dec b
    ld de, $008a
    ld c, b
    add e
    ld bc, $05a4
    ld c, $00
    inc hl
    jr c, @+$3b

    ld a, [hl-]
    add a
    ld [bc], a
    xor l
    sub b
    inc bc
    dec h
    add e
    inc bc
    sub c

jr_012_7dd2:
    sbc b
    inc bc
    ld a, [hl-]
    nop
    dec c
    ld [hl+], a
    dec b
    rlc e
    push hl
    jr z, jr_012_7deb

    nop
    ld d, a
    ld [hl+], a
    inc bc
    rst $38
    ld a, [bc]
    dec b
    ld b, $1f

jr_012_7de7:
    ld a, $ff
    dec b
    rst $38

jr_012_7deb:
    ld l, b
    jr c, jr_012_7d86

    ld l, b
    ld l, b
    ld c, b
    jr z, jr_012_7e1b

    ld e, b
    ld l, b
    inc d
    dec c
    rrca

jr_012_7df8:
    add c
    ret z

    ld bc, $0101
    ld bc, $0102
    ld d, $47
    jr jr_012_7de7

    ld a, l
    ld [de], a
    and c
    ld c, e
    ld [$0000], sp
    ld a, $2f
    inc bc
    ld a, [hl+]
    ld b, $85
    nop
    inc c
    ld [bc], a
    jr z, jr_012_7e3e

    inc a
    ld [hl+], a
    jr z, jr_012_7e1a

jr_012_7e1a:
    ld d, d

jr_012_7e1b:
    ret z

    nop
    inc hl
    ld [bc], a
    jr z, jr_012_7e49

    add hl, sp
    ld [hl+], a
    jr z, jr_012_7e25

jr_012_7e25:
    ld d, b
    adc d
    nop
    add hl, hl
    ld [hl+], a
    jr z, jr_012_7df8

    nop
    ld b, l
    ld [bc], a
    jr z, jr_012_7e59

    ld b, $dc
    nop
    ld d, l
    add h
    nop
    ld b, h
    ld hl, sp+$22
    nop
    inc hl
    nop
    dec a

jr_012_7e3e:
    db $e4
    ld h, d
    inc bc
    rst $38
    inc de
    ld d, $14
    rst $38
    rlca
    rst $38
    ld c, b

jr_012_7e49:
    ld c, b
    ld c, b
    adc b
    adc b
    adc b
    ld l, b
    xor b
    adc b
    ld l, b
    xor b
    adc b
    ld l, b
    jr jr_012_7ea3

    ld c, h
    ld c, h

jr_012_7e59:
    ld c, a
    ld c, a
    ld c, a
    ld c, l
    ld bc, $0101
    ld bc, $0602
    ld l, h
    ld d, [hl]
    ld d, $42
    ld a, [hl]

jr_012_7e68:
    ld [de], a
    xor [hl]
    ld c, e
    ld [$0001], sp
    ld b, l
    dec hl
    nop
    ld bc, $0303
    call nz, Call_000_0d00
    nop
    inc hl
    adc h
    nop
    dec b
    add e
    nop
    inc d
    nop
    ld l, b
    adc $00
    dec h
    nop
    ld [hl], b
    ret z

    nop
    dec d
    ld [bc], a
    ld b, $06
    rlca
    ld [hl+], a
    rra
    nop
    inc [hl]
    ld [hl+], a
    ld b, c
    nop
    dec b
    call nz, Call_012_4100
    inc c
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [de], a
    ld [de], a
    inc de
    dec [hl]
    ld de, $1212

jr_012_7ea3:
    ld [$0909], sp
    add l
    nop
    ld c, l
    add hl, bc
    dec d
    dec d
    ld d, $35
    inc d
    dec d
    dec d
    ld [$0909], sp
    adc c
    nop
    ld c, l
    ld [bc], a
    ld [de], a
    ld [de], a
    inc de
    sbc a
    nop
    ld e, d
    ldh a, [$ff38]
    nop
    ld e, d

jr_012_7ec2:
    ld h, d
    dec b
    nop
    dec [hl]
    ld h, d
    dec b

jr_012_7ec8:
    adc b
    nop
    ld e, d
    inc bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec [hl]
    add h
    nop
    ldh [rP1], a
    ld b, [hl]
    ld [hl-], a
    inc bc
    rst $38
    ld de, $3e32
    rst $38
    inc bc
    rst $38
    jr nc, jr_012_7e68

    jr jr_012_7f1a

    ld e, b
    jr jr_012_7f23

    sub e
    add $01
    ld bc, $0101
    ld bc, $8701
    ld a, b
    rla
    ret c

    ld a, [hl]
    ld [de], a
    or l
    ld c, e
    ld [$0000], sp
    ld b, b
    cpl
    inc bc
    inc h
    jr jr_012_7ec8

    nop
    dec d
    ld [$1a18], sp
    inc [hl]
    jr jr_012_7f20

    inc [hl]
    jr jr_012_7f23

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

jr_012_7f1a:
    dec de
    dec de
    dec e
    dec de
    dec de
    dec e

jr_012_7f20:
    ld a, d
    dec de
    adc c

jr_012_7f23:
    nop
    ld a, [hl-]
    inc hl
    dec de
    nop
    halt
    adc c
    nop
    ld c, c
    dec b
    jr jr_012_7f4a

    dec de
    dec de
    dec de
    jr jr_012_7ec2

    nop
    ld c, c
    ld bc, $1b1b
    ld hl, sp+$20
    nop
    ld hl, $4100
    db $e4
    ld h, e
    inc bc
    rst $38
    ld de, $3e33
    rst $38
    inc bc
    rst $38
    sub b

jr_012_7f4a:
    ld h, b
    jr jr_012_7f85

    ld e, b
    jr jr_012_7f8d

    sub l
    cp a
    ld bc, $0101
    ld bc, $0101
    add a
    ld a, b
    rla
    ld b, e
    ld a, a
    ld [de], a
    cp h
    ld c, e
    ld [$0000], sp
    ld b, b
    cpl
    inc bc
    inc h
    jr @-$34

    nop
    dec d
    ld [$1a18], sp
    inc [hl]
    jr jr_012_7f8b

    inc [hl]
    jr jr_012_7f8e

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
    inc bc

jr_012_7f85:
    dec de
    dec de
    dec e
    dec de
    rlc b

jr_012_7f8b:
    ld b, l
    inc hl

jr_012_7f8d:
    dec de

jr_012_7f8e:
    call Call_012_5500
    inc b
    dec de
    jr jr_012_7fad

    dec de
    ld a, d
    adc [hl]
    nop
    ld e, c
    ld bc, $1b76
    ld hl, sp+$20
    nop
    ld hl, $4100
    db $e4
    ld h, e
    inc bc
    rst $38
    ld sp, $3e11
    rst $38
    inc bc
    rst $38

jr_012_7fad:
    adc b
    ld h, b
    jr @+$5a

    jr c, jr_012_7fcb

    sub c
    inc a
    cp l
    rst $38
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
    jr nz, jr_012_7fc5

jr_012_7fc5:
    jr nz, jr_012_7fc7

jr_012_7fc7:
    nop
    nop
    nop
    nop

jr_012_7fcb:
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
    ld [bc], a
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
