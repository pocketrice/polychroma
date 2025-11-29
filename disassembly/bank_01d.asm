; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    rst $38
    ld [bc], a
    nop
    nop
    nop
    dec c
    ld c, c
    dec e
    nop
    nop
    nop
    dec c
    ld c, c
    dec e
    ldh a, [c]
    ld c, $f1
    ld c, $10
    add b
    ld [bc], a
    ld hl, $2340
    ld b, b
    dec h
    ld b, b
    jr z, jr_01d_405d

    dec hl
    ld b, b
    jr nc, jr_01d_4061

    nop
    rst $38
    inc bc
    rst $38
    ld bc, $ff02
    ld [bc], a
    ld bc, $03ff
    ld [bc], a
    nop
    ld bc, $00ff
    ld bc, $0203
    rst $38
    dec a
    ld b, b
    ld b, a
    ld b, b
    ld d, d
    ld b, b
    ld e, h
    ld b, b
    nop
    inc bc
    inc b
    dec b
    ld [bc], a
    inc b
    ld bc, $0706
    rst $38
    nop
    ld b, $09
    ld b, $0a
    inc bc
    ld b, $08
    inc b
    ld [$06ff], sp
    rlca
    rlca
    dec b
    dec b
    inc b
    inc b
    ld bc, $ff01
    nop

jr_01d_405d:
    ld [bc], a
    ld [bc], a
    ld b, $08

jr_01d_4061:
    inc b
    rlca
    dec b
    rst $38
    inc e
    inc c
    inc c
    inc b
    ld b, b
    nop
    add b
    nop
    db $fc
    ld hl, sp+$18
    nop
    inc bc
    rst $38
    ld [bc], a
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
    inc bc
    rst $38
    ld [hl+], a
    nop
    nop
    nop
    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    ei
    ld b, $fd
    inc b
    cp $03
    cp $03
    db $10
    jr nc, jr_01d_40e9

    jr jr_01d_409b

jr_01d_409b:
    inc bc
    nop
    ld bc, $0302
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0100
    nop
    inc b
    ldh a, [rP1]
    nop
    ldh [$ffc0], a
    inc bc
    ldh a, [$ffc0]
    nop
    ldh [$ff60], a
    inc bc
    add sp, -$80
    ld bc, $60e0
    inc bc
    ldh [rP1], a
    inc bc
    ldh [rNR22], a
    or $0d
    rrca
    ld b, h
    rst $38
    dec c
    ldh [$ff35], a
    adc b
    nop
    jr nc, jr_01d_40d5

jr_01d_40d5:
    dec c
    rrca
    jr nz, jr_01d_40df

    ld c, $3f
    daa
    inc bc
    db $fd
    ld b, b

jr_01d_40df:
    ld e, l
    add hl, bc
    inc b
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    add hl, de

jr_01d_40e9:
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    inc bc
    inc c
    ld b, c
    ld e, l
    dec c
    ld e, a
    jr nz, @+$14

    ld b, b
    ld bc, $0001
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    ld bc, $400e
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0d
    call Call_000_0f7a
    ldh a, [$ff9a]
    ld d, a
    ld e, $1d
    ld bc, $4131
    jp Jump_000_0846


    dec c
    and $22
    push de
    inc c
    dec c
    and $22
    push de
    dec c
    inc h
    ld b, b
    jr jr_01d_414e

    ld b, e
    nop
    dec c
    ld e, a
    ld [hl+], a
    dec c
    ld [hl], d
    ld [hl+], a
    inc bc
    db $fd
    ld b, b
    ld e, l
    daa
    add hl, de
    nop

jr_01d_414e:
    jr nz, jr_01d_415b

    daa
    ld b, d
    rrca
    ld h, b
    dec l
    dec c
    add b
    ld b, c
    dec c
    and h
    ld b, c

jr_01d_415b:
    inc d
    rst $38
    ld d, l
    ld b, c
    dec c
    cp d
    ld b, c
    dec c
    adc $41
    ld c, $0b
    ld bc, $6242
    ld b, e
    ld l, c
    ld b, d
    pop hl
    ld b, h
    ret nc

    ld b, [hl]
    ld a, e
    ld b, a
    db $10
    ld b, l
    ld c, d
    ld b, [hl]
    ld e, a
    ld b, l
    ret nz

    ld b, [hl]
    ret z

    ld b, [hl]
    ld b, $58
    ld b, c
    call Call_000_0647
    and $01
    ld h, d
    ld l, $43
    add [hl]
    ld hl, $4015
    rlca
    add l
    ld l, a
    jr nc, jr_01d_4192

    inc h

jr_01d_4192:
    ld e, $3d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $43
    ld a, [de]
    inc a
    cp $03
    jr c, jr_01d_41a2

    xor a

jr_01d_41a2:
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    cp $ff
    ret z

    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld e, $27
    ld a, [de]
    rlca
    ld hl, $4035
    add l
    ld l, a
    jr nc, jr_01d_41c6

    inc h

jr_01d_41c6:
    ld e, $3f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $3f
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    cp $ff
    ret z

    ld e, $3f
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld bc, $4000
    call Call_000_255b
    ld a, [$dee4]
    cp $0c
    ret c

    ld e, $60
    ld a, $2d
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $40
    inc l
    ld [hl], $fd
    ret


    inc bc
    db $fd
    ld b, b
    ld e, l
    daa
    add hl, de
    nop
    jr nz, @+$0d

    daa
    ld b, d
    jr z, jr_01d_4221

    ld b, b
    ld h, d
    ld b, c
    dec bc
    daa
    ld b, d
    jr z, jr_01d_4229

    add b
    ld h, d
    ld b, c
    dec bc
    daa
    ld b, d
    jr z, jr_01d_4231

    ret nz

    ld h, d
    ld b, c

jr_01d_4221:
    dec bc
    daa
    ld b, d
    ld b, $62
    ld b, c
    dec c
    ld e, c

jr_01d_4229:
    ld b, d
    ld [de], a
    ld [hl], $42
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de

jr_01d_4231:
    inc d
    ld [bc], a
    ld b, $3f
    ld b, d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    dec c
    ld h, d
    ld b, d
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    add hl, bc
    inc bc
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    inc c
    ld hl, $5e9d
    ld a, $06
    call Call_000_05cf
    ret


    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    inc bc
    db $fd
    ld b, b
    ld e, l
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld h, l
    ld b, b
    dec c
    ld e, c
    ld b, d
    ld [de], a
    add b
    ld b, d
    add hl, de
    nop
    inc b
    ld b, $88
    ld b, d
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    ld bc, $0f00
    ld b, c
    ld [$d903], sp
    ld b, d
    ld e, l
    ld h, $00
    ld bc, $0008
    nop
    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, de
    ld bc, $0d04
    ld [hl-], a
    db $10
    ldh [$ff08], a
    nop
    rst $38
    ld a, [hl+]
    ld b, b
    nop
    dec c
    ld e, c
    ld b, d
    ld de, $428b
    inc bc
    reti


    ld b, d
    ld e, l
    ld h, $00
    ld bc, $0008
    nop
    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, de
    inc bc
    inc b
    ld bc, $0d02
    ld h, d
    ld b, d
    dec c
    ld [hl-], a
    db $10
    jr nz, jr_01d_42cf

    nop
    rst $38
    ld a, [hl+]
    ld b, b
    nop
    inc bc
    db $fd
    ld b, b

jr_01d_42cf:
    ld e, l
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    ld b, $62
    ld b, c
    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_4345

    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr z, jr_01d_42eb

    call Call_000_1ee6

jr_01d_42eb:
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $400e
    call Call_000_24cd
    bit 7, a
    jr nz, jr_01d_4310

    ld e, $41
    ld a, [de]
    or a
    ret z

    call Call_01d_434d
    ret nc

    xor a
    ld e, $41
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1ef9


jr_01d_4310:
    ld e, $d5
    ld a, $0e
    call Call_000_2319
    ld e, $41
    ld a, [de]
    or a
    jr z, jr_01d_433d

    dec a
    jr z, jr_01d_4335

    ld [de], a
    cp $04
    jr z, jr_01d_432d

    ld e, $1d
    ld bc, $428b
    jp Jump_000_0846


jr_01d_432d:
    ld e, $1d
    ld bc, $42a6
    jp Jump_000_0846


jr_01d_4335:
    ld e, $1d
    ld bc, $4162
    jp Jump_000_0846


jr_01d_433d:
    ld e, $1d
    ld bc, $42cc
    jp Jump_000_0846


jr_01d_4345:
    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


Call_01d_434d:
    ld e, $0e
    ld a, [de]
    rlca
    ld hl, $db51
    ld e, $04
    ld a, [de]
    jr c, jr_01d_435e

    sub [hl]
    cp $93
    ccf
    ret


jr_01d_435e:
    sub [hl]
    cp $0d
    ret


    inc bc
    dec h
    ld b, h
    ld e, l
    jr jr_01d_4392

    ldh a, [$ff0d]
    ld e, c
    ld b, d
    ld [de], a
    add c
    ld b, e
    dec c
    ld [hl-], a
    db $10
    inc b
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    ld b, $8e
    ld b, e
    dec c
    ld [hl-], a
    db $10
    db $fc
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    dec c
    ld h, d
    ld b, d
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de

jr_01d_4392:
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    add hl, bc
    inc bc
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    jr jr_01d_43d5

    sub e
    ld b, h
    ld de, $43d0
    ld h, $c0
    nop
    add hl, bc
    inc b
    add hl, de
    ld [bc], a
    ld [bc], a

jr_01d_43d5:
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    dec c
    ld hl, sp+$44
    ld b, b
    ld [de], a
    add hl, de
    ld b, h
    inc bc
    dec hl
    ld b, h
    ld e, l
    ld [$0000], sp
    ld h, $c0
    nop
    rrca
    ld b, c
    ld b, $19
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    dec c
    call z, Call_000_1144
    ld a, [$0743]
    nop
    nop
    ld b, $1c
    ld b, h
    ld h, $80
    nop
    ld a, [hl+]
    db $10
    inc bc
    ld c, [hl]
    ld b, h
    ld e, l
    ld bc, $0001
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_4446

    call Call_01d_434d
    ret nc

    xor a
    call Call_01d_4efd
    ld e, $1d
    ld bc, $441c
    jp Jump_000_0846


jr_01d_4446:
    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_448b

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $400e
    call Call_000_24cd
    bit 7, a
    jr nz, jr_01d_446d

    call Call_01d_434d
    ret nc

    jp Jump_01d_4efd


jr_01d_446d:
    ld e, $0d
    call Call_000_0f7a
    ld e, $d5
    ld a, $0c
    call Call_000_2319
    ld e, $d5
    ld a, $0d
    call Call_000_2319
    ldh a, [$ff9a]
    ld a, d
    ld e, $1d
    ld bc, $4162
    jp Jump_000_0846


jr_01d_448b:
    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


    ld hl, $db51
    ld e, $45
    ld a, [de]
    rlca
    ld e, $04
    ld a, [de]
    jr c, jr_01d_44b4

    add $38
    sub [hl]
    cp $98
    jr nc, jr_01d_44b1

    ld h, $a0
    ld l, $04
    cp [hl]
    jr nc, jr_01d_44b1

    ld a, $01
    jr jr_01d_44c8

jr_01d_44b1:
    xor a
    jr jr_01d_44c8

jr_01d_44b4:
    sub $38
    jr c, jr_01d_44b1

    sub [hl]
    jr c, jr_01d_44b1

    cp $08
    jr c, jr_01d_44b1

    ld h, $a0
    ld l, $04
    cp [hl]
    jr c, jr_01d_44b1

    ld a, $01

jr_01d_44c8:
    ld e, $27
    ld [de], a
    ret


    push bc
    ld hl, $5ab0
    ld a, $04
    call Call_000_05cf
    ld l, $41
    ld h, d
    dec [hl]
    jr nz, jr_01d_44df

    ld l, $27
    ld [hl], $01

jr_01d_44df:
    pop bc
    ret


    dec c
    ld hl, sp+$44
    ld c, c
    ld [de], a
    ldh a, [rLY]
    jr z, jr_01d_44fd

    ret nz

    ld h, d
    ld b, e
    ld b, $69
    ld b, d
    jr z, jr_01d_4505

    ld b, b
    ld h, d
    ld b, e
    ld b, $69
    ld b, d
    ld a, [bc]
    ld e, a
    inc bc
    ld h, $a0

jr_01d_44fd:
    ld l, $07
    ld a, [hl]
    ld hl, $db53
    sub [hl]
    cp e

jr_01d_4505:
    jr c, jr_01d_450b

    ld a, $01
    jr jr_01d_450c

jr_01d_450b:
    xor a

jr_01d_450c:
    ld e, $27
    ld [de], a
    ret


    inc bc
    db $fd
    ld b, b
    ld e, l
    dec c
    ld e, c
    ld b, d
    ld [de], a
    jr nz, jr_01d_455f

    add hl, de
    nop
    inc b
    ld b, $28
    ld b, l
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld h, a
    ld b, b
    add hl, bc
    inc bc
    add hl, de
    nop
    ld bc, $0219
    ld [bc], a
    add hl, de
    ld [de], a
    ld b, $19
    ld [bc], a
    ld [bc], a
    add hl, de
    nop
    ld bc, $1019
    inc b
    ld a, [bc]
    db $10
    ld e, h
    ld [de], a
    ld e, c
    ld b, l
    add hl, de
    nop
    ld bc, $0119
    ld [bc], a
    add hl, de
    ld [de], a
    ld b, $19
    ld bc, $1902
    nop
    ld bc, $1019
    inc b
    add hl, de
    nop
    db $10
    ld b, $62
    ld b, c

jr_01d_455f:
    dec c
    ld e, c
    ld b, d
    ld [de], a
    ld l, e
    ld b, l
    add hl, de
    nop
    inc b
    ld b, $73
    ld b, l
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    ld bc, $0700
    nop
    nop
    ld [$fe00], sp
    ld a, [hl+]
    db $10
    inc bc
    inc b
    ld b, [hl]
    ld e, l
    add hl, de
    ld bc, $0820
    nop
    ld [bc], a
    ld a, [hl+]
    nop
    ld bc, $0003
    dec c
    and $22
    push de
    inc c
    dec c
    and $22
    push de
    dec c
    dec c
    ld [hl], a
    rrca
    ld c, $03
    db $fd
    ld b, b
    ld e, l
    ld [$0000], sp
    dec c
    and $22
    push de
    nop
    add hl, de
    ld de, $1904
    inc bc
    ld b, $19
    ld de, $1902
    inc bc
    inc d
    daa
    inc bc
    inc de
    ld b, [hl]
    ld e, l
    ld a, [hl+]
    ldh a, [$ff09]
    inc b
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    ld [$0000], sp
    ld a, [hl+]
    nop
    add hl, bc
    db $10
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    ld h, $80
    nop
    ld a, [hl+]
    db $10
    ld bc, $0001
    dec c
    and $22
    push de
    inc c
    dec c
    and $22
    push de
    dec c
    inc bc
    db $fd
    ld b, b
    ld e, l
    add hl, de
    nop
    db $10
    ld b, $62
    ld b, c
    call Call_01d_4622
    ret c

    bit 7, a
    ret z

    ld e, $1d
    ld bc, $458a
    jp Jump_000_0846


    call Call_01d_4622
    ret c

    bit 7, a
    ret z

    ld e, $1d
    ld bc, $45f0
    jp Jump_000_0846


Call_01d_4622:
    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_4640

    call Call_000_1ed3
    call Call_000_0da4
    call Call_01d_434d
    jr nc, jr_01d_4638

    call Call_01d_4efd

jr_01d_4638:
    ld bc, $400e
    call Call_000_24cd
    or a
    ret


jr_01d_4640:
    ld e, $1d
    ld bc, $48e5
    call Call_000_0846
    scf
    ret


    inc bc
    db $fd
    ld b, b
    ld e, l
    dec c
    ld e, c
    ld b, d
    ld [de], a
    ld e, d
    ld b, [hl]
    add hl, de
    nop
    inc b
    ld b, $62
    ld b, [hl]
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    ld bc, $1900
    db $10
    inc c
    rlca
    nop
    nop
    ld [$ff00], sp
    ld a, [hl+]
    ld b, b
    ld bc, $0301
    ld [hl], h
    ld b, [hl]
    ld e, l
    nop
    call Call_01d_4622
    ret c

    bit 7, a
    ret z

    ld e, $1d
    ld bc, $4683
    jp Jump_000_0846


    dec c
    ld [hl], a
    rrca
    dec c
    inc bc
    db $fd
    ld b, b
    ld e, l
    add hl, de
    db $10
    ld [bc], a
    dec c
    and $22
    push de
    dec b
    add hl, de
    nop
    jr nz, @+$1b

    inc bc
    inc b
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    ld [$fe00], sp
    ld a, [hl+]
    db $10
    inc bc
    or c
    ld b, [hl]
    ld e, l
    add hl, de
    inc b
    inc d
    add hl, de
    inc bc
    inc b
    ld bc, $0001
    call Call_01d_4622
    ret c

    bit 7, a
    ret z

    ld e, $1d
    ld bc, $4162
    jp Jump_000_0846


    jr z, @+$15

    ret nz

    ld e, a
    ld b, l
    ld b, $4a
    ld b, [hl]
    jr z, jr_01d_46dd

    ld b, b
    ld e, a
    ld b, l
    ld b, $4a
    ld b, [hl]
    inc bc
    db $fd
    ld b, b
    ld e, l
    ld [$0000], sp
    dec c
    ld e, c
    ld b, d
    ld [de], a
    db $e3
    ld b, [hl]

jr_01d_46dd:
    add hl, de
    nop
    inc b
    ld b, $eb
    ld b, [hl]
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    ld bc, $2200
    dec sp
    ld e, a
    dec e
    add hl, bc
    inc b
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    rrca
    inc e
    add b
    add hl, de
    rlca
    ld [$570d], sp
    ld b, a
    add hl, bc
    inc d
    dec c
    ld h, d
    ld b, a
    dec c
    db $d3
    jr nz, jr_01d_477b

    ld b, b
    dec c
    dec d
    ld hl, $406d
    inc bc
    ld l, $47
    ld e, l
    add hl, de
    ld [bc], a
    ld bc, $1419
    ld bc, $0219
    ld bc, $1519
    ld bc, $2224
    ld a, [bc]
    ld b, $69
    ld b, d
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_474f

    call Call_01d_434d
    ret nc

    call Call_01d_4f04
    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $47
    inc l
    ld [hl], $31
    ret


jr_01d_474f:
    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


    ld hl, $409c
    ld e, $41
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    push bc
    ld e, $41
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, h
    ld [de], a
    dec e
    ld a, l
    ld [de], a
    ld a, b
    add $06
    ld e, $d5
    call Call_000_2319
    pop bc
    ret


jr_01d_477b:
    inc bc
    db $fd
    ld b, b
    ld e, l
    dec c
    ld e, c
    ld b, d
    ld [de], a
    adc e
    ld b, a
    add hl, de
    nop
    inc b
    ld b, $93
    ld b, a
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    ld bc, $1900
    nop
    inc b
    jr jr_01d_47c1

    nop
    ld a, [hl+]
    ld hl, sp+$03
    ld h, e
    ld c, b
    ld e, l
    add hl, bc
    ld b, $19
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    nop
    add hl, bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca

jr_01d_47c1:
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    jr jr_01d_47d9

    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca

jr_01d_47d9:
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    jr jr_01d_4811

    nop
    inc bc
    db $fd
    ld b, b
    ld e, l
    add hl, bc
    inc bc
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    db $10
    ld e, h
    ld [de], a
    ld a, [de]
    ld c, b
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d

jr_01d_4811:
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    dec c
    ld [hl-], a
    db $10
    inc c
    inc bc
    ld h, e
    ld c, b
    ld e, l
    add hl, bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    add hl, hl
    nop
    inc bc
    adc a
    ld c, b
    ld e, l
    add hl, bc
    inc c
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    push de
    rrca
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    rlca
    nop
    nop
    dec c
    ld e, a
    jr nz, @+$71

    ld b, b
    ld bc, $0303
    cp [hl]
    ld c, b
    ld e, l
    nop
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_4887

    call Call_01d_434d
    ret nc

    call Call_01d_4f04
    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $48
    inc l
    ld [hl], $66
    ret


jr_01d_4887:
    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_48b6

    call Call_000_203d
    ld e, $0e
    ld a, [de]
    jr c, jr_01d_48b1

    rlca
    jr nc, jr_01d_48a9

jr_01d_48a5:
    call Call_01d_434d
    ret nc

jr_01d_48a9:
    ld e, $1d
    ld bc, $4854
    jp Jump_000_0846


jr_01d_48b1:
    rlca
    jr c, jr_01d_48a9

    jr jr_01d_48a5

jr_01d_48b6:
    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_01d_48dd

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $400e
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $458a
    jp Jump_000_0846


jr_01d_48dd:
    ld e, $1d
    ld bc, $48e5
    jp Jump_000_0846


    rrca
    ld b, c
    ld bc, $fd03
    ld c, b
    ld e, l
    inc e
    ld a, [$047c]
    add hl, bc
    ld b, $19
    ld b, $02
    add hl, de
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, c
    nop
    nop
    call Call_000_2323
    ret nz

    ld e, $4c
    ld a, [de]
    cp $1f
    ret nc

    ld a, $01
    ld e, $5c
    ld [de], a
    ret


    dec c
    jr jr_01d_4959

    inc e
    add l
    ld b, a
    inc bc
    dec c
    ld h, a
    inc hl
    ld d, $21
    db $e4
    ld c, h
    ld a, $03
    call Call_000_05cf
    ret


    rla
    rst $38
    dec c
    rrca
    ld h, c
    nop
    rrca
    ld c, h
    ld bc, $0204
    ld [hl], b
    dec c
    dec c
    ld sp, hl
    rra
    dec c
    rrca
    jr nz, jr_01d_493d

    ld [$1008], sp
    ld e, e
    ld c, $10
    ld e, h
    ld c, c

jr_01d_493d:
    dec h
    ld c, d
    ld e, d
    ld c, d
    add a
    ld c, d
    ldh [rWY], a
    and $4a
    ld b, b
    ld c, e
    ld b, b
    ld c, e
    ld b, b

jr_01d_494c:
    ld c, e
    ld b, b
    ld c, e
    sub b
    ld c, e
    or e
    ld c, e
    or a
    ld c, e
    db $dd
    ld c, e
    db $e3
    ld c, e

jr_01d_4959:
    ld c, $4c
    ld d, $0d
    push af
    ld c, c
    ld hl, sp+$0d
    and $22
    push de
    ld bc, $e60d
    ld [hl+], a
    push de
    ld [bc], a
    rrca
    ld c, e
    nop
    rrca
    ld c, d
    dec b
    dec c
    rrca
    jr nz, jr_01d_4978

    rlca
    scf
    inc bc
    or l

jr_01d_4978:
    ld c, c
    ld e, l
    ld [$0240], sp
    add hl, de
    inc c
    inc b
    ld [$0040], sp
    ld a, [hl+]
    ldh a, [rTIMA]
    ld [$0008], sp
    nop
    ld a, [hl+]
    nop
    rra
    dec d
    ld c, d
    rlca
    nop
    ld bc, $0105
    add hl, bc
    ld [bc], a
    rlca
    nop
    rst $38
    dec b
    ld [bc], a
    rlca
    nop
    ld bc, $0205
    ld a, [bc]
    rlca
    nop
    rst $38
    dec b
    ld bc, $0007
    nop
    inc h
    ld b, a
    inc bc
    pop bc
    ld c, c
    ld e, l
    dec c
    ld e, a
    jr nz, jr_01d_494c

    ld b, b
    nop
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4072
    jp Jump_000_255b


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4072
    call Call_000_255b
    ret c

    ld bc, $408e
    call Call_000_24cd
    bit 7, a
    ret z

    ld a, $03
    ld e, $d5
    call Call_000_2319
    ld a, $04
    ld e, $d5
    call Call_000_2319
    ld e, $2e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld h, a
    jp Jump_000_0bba


    ld h, $a0
    ld l, $04
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, [bc]
    inc bc
    push bc
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $07
    ld hl, $db53
    ld a, c
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, b
    adc [hl]
    ld [de], a
    pop bc
    ret


    ld hl, $4096
    ld e, $5b
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_01d_4a20

    inc h

jr_01d_4a20:
    ld e, $24
    ld a, [hl]
    ld [de], a
    ret


    dec c
    ld l, $4a
    dec c
    ld [hl], $4a
    ld b, $6a
    ld c, c
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, e
    ld a, [hl]
    ld [de], a
    ret


    call Call_000_0647
    and $08
    add $18
    ldh [$ff80], a
    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    cp $20
    ldh a, [$ff80]
    ld e, $04
    jr c, jr_01d_4a53

    ld l, a
    ld a, [de]
    sub l
    ld [de], a
    ret


jr_01d_4a53:
    add $20
    ld l, a
    ld a, [de]
    add l
    ld [de], a
    ret


    dec c
    ld l, $4a
    dec c
    ld h, e
    ld c, d
    ld b, $6a
    ld c, c
    call Call_000_0647
    and $08
    add $18
    ldh [$ff80], a
    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    cp $80
    ldh a, [$ff80]
    ld e, $04
    jr nc, jr_01d_4a80

    ld l, a
    ld a, [de]
    add l
    ld [de], a
    ret


jr_01d_4a80:
    add $20
    ld l, a
    ld a, [de]
    sub l
    ld [de], a
    ret


    dec c
    ld l, $4a
    dec c
    pop de
    rra
    inc b
    inc b
    ld h, $60
    nop
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    xor b
    ld c, d
    ld e, l
    dec c
    rrca
    jr nz, @+$06

    inc b
    cp a
    ld [$fe80], sp
    ld a, [hl+]
    jr jr_01d_4aa7

    dec c

jr_01d_4aa7:
    nop
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4072
    call Call_000_255b
    ret c

    ld bc, $4092
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $4ac6
    jp Jump_000_0846


    ld h, $40
    nop
    ld [$0000], sp
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    rst $10
    ld c, d
    ld e, l
    dec b
    jr nz, jr_01d_4aed

    call Call_000_0da4
    ld bc, $4072
    jp Jump_000_255b


    dec c
    ld h, d
    ld b, d
    ld b, $87
    ld c, d
    rrca
    ld c, e
    nop
    rrca
    ld c, d
    dec b
    rrca

jr_01d_4aed:
    ld h, b
    ccf
    dec c
    pop de
    rra
    jr jr_01d_4afb

    inc bc
    ld h, $4b
    ld e, l
    add hl, de
    ld c, $08

jr_01d_4afb:
    add hl, de
    rrca
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    rrca
    jr jr_01d_4b08

    inc l
    ld c, e
    ld e, l

jr_01d_4b08:
    ld h, $00
    inc bc
    dec c
    ld [hl-], a
    db $10
    ld hl, sp+$0f
    ld h, $50
    inc h
    inc c
    dec c
    and $22
    push de
    ld a, [bc]
    add hl, bc
    inc b
    dec c
    and $22
    push de
    dec bc
    dec b
    ld [bc], a
    ld a, [bc]
    ld b, $14
    ld c, e
    ld bc, $4072
    jp Jump_000_255b


    ld e, $26
    ld a, [de]
    or a
    jr z, jr_01d_4b37

    dec a
    ld [de], a
    call Call_000_1ee6

jr_01d_4b37:
    call Call_000_0da4
    ld bc, $4072
    jp Jump_000_255b


    inc h
    inc e
    dec c
    rrca
    jr nz, jr_01d_4b4a

    inc b
    cp a
    dec c
    pop de

jr_01d_4b4a:
    rra
    inc c
    cp $0d
    halt
    ld c, e
    inc bc
    ld h, a
    ld c, e
    ld e, l
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    ld d, $cd
    and $1e
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4080
    jp Jump_000_255b


    ld hl, $40b0
    ld e, $5b
    ld a, [de]
    sub $06
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_01d_4b87

    inc h

jr_01d_4b87:
    call Call_000_20f9
    call Call_000_2123
    jp Jump_000_20be


    inc bc
    xor l
    ld c, e
    ld e, l
    dec c
    pop de
    rra
    ld [$0808], sp
    ret nz

    db $fd
    ld a, [hl+]
    jr nz, jr_01d_4bc5

    and b
    nop
    add hl, de
    dec c
    dec bc
    dec c
    ld h, d
    ld b, d
    dec b
    add hl, bc
    ld d, $cd
    and $1e
    call Call_000_1ed3
    jp Jump_000_0da4


    dec de
    or c
    ld e, b
    inc b
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    dec c
    pop de
    rra
    dec bc
    ld [de], a
    ld h, $40

jr_01d_4bc5:
    ld bc, $320d
    db $10
    ldh a, [$ff08]
    ret nz

    db $fd
    ld a, [hl+]
    db $10
    inc bc
    xor d
    ld c, e
    ld e, l
    add hl, de
    inc b
    inc b
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [$0d16], sp
    ld h, d
    ld b, d
    ld b, $b7
    ld c, e
    inc h
    ld [hl+], a
    dec c
    ld h, d
    ld b, d
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    dec c
    pop de
    rra
    db $10
    ld c, $26
    nop
    ld bc, $320d
    db $10

jr_01d_4bfa:
    ldh a, [$ff08]
    nop
    nop
    ld a, [hl+]
    ret c

    inc bc
    xor d
    ld c, e
    ld e, l
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    inc bc
    ld d, $0d
    pop de
    rra
    ldh a, [$ff0c]
    ld [$0200], sp
    ld h, $00
    rst $38
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    rla
    ld [hl], e
    ld b, h
    add hl, de
    rst $38
    db $10
    ld d, $ff
    ld [bc], a
    nop
    nop
    nop
    dec hl
    ld e, e
    dec e
    nop
    nop
    nop
    dec hl
    ld e, e
    dec e
    ldh a, [$ff0e]
    or $09
    nop
    ld bc, $0204
    inc bc
    ld bc, $0300
    ld [bc], a
    nop
    ld bc, $0aff
    ld c, a
    ld c, h
    ld d, l
    ld c, h
    ld e, l
    ld c, h
    ld h, [hl]
    ld c, h
    inc bc
    ld bc, $0805
    add hl, bc
    rst $38
    ld [bc], a
    ld b, $07
    inc b
    dec b
    ld [bc], a
    ld c, $ff
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    rlca
    dec c
    rst $38
    ld [bc], a
    ld c, $07
    inc bc
    ld [bc], a
    dec c
    ld [$c0ff], sp
    add b
    jr nz, jr_01d_4c72

jr_01d_4c72:
    inc bc
    jr nc, jr_01d_4c75

jr_01d_4c75:
    inc bc
    add b
    db $fd
    jr nz, jr_01d_4bfa

    cp $18
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    db $fc
    jr nz, jr_01d_4c85

jr_01d_4c85:
    cp $8e
    ld c, h
    sub a
    ld c, h
    sbc a
    ld c, h
    and a
    ld c, h
    ld bc, $0200
    nop
    inc bc
    inc b
    nop
    inc b
    rst $38
    ld [bc], a
    nop
    inc b
    nop
    inc bc
    nop
    dec b
    rst $38
    ld bc, $0502
    inc bc
    inc b
    dec b
    dec b
    rst $38
    ld bc, $0505
    ld [bc], a
    inc b
    dec b
    rst $38
    rst $38
    ld [bc], a
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
    inc bc
    rst $38
    ld [de], a
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
    inc bc
    rst $38
    ld [de], a
    nop
    nop
    nop
    ld c, [hl]
    ld b, e
    dec b
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc e
    ldh a, [$ffa8]
    ld h, b
    ld bc, $f420
    and h
    nop
    ld bc, $0020
    and b
    nop
    nop
    jr nz, jr_01d_4cf9

    and h
    nop
    rst $38
    jr nz, jr_01d_4d02

    xor b
    and b
    cp $eb
    db $ec
    ld [bc], a
    ld [bc], a

jr_01d_4cf9:
    push af
    add sp, $02
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [de], a

jr_01d_4d02:
    inc c
    ld [bc], a
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
    ld [de], a
    rrca
    ld [bc], a
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    ld [bc], a
    add hl, de
    ld a, [$0202]
    ld [de], a
    db $ed
    inc bc
    inc bc
    ld b, $e5
    inc b
    inc b
    ld sp, hl
    push hl
    inc bc
    inc b
    stop
    ld [bc], a
    nop
    rst $38
    db $10
    stop
    dec c
    rst $00
    db $10
    dec c
    rla
    or $0d
    rrca
    ld b, h
    rst $38
    dec c
    ldh [$ff35], a
    ld a, b
    nop
    ld h, c
    nop
    dec c
    and a
    ld c, l
    dec c
    rrca
    jr nz, jr_01d_4d57

    db $10
    ccf
    rrca
    ld h, c
    nop
    dec c

jr_01d_4d57:
    ld e, a
    ld [hl+], a
    dec c
    ld [hl], d
    ld [hl+], a
    daa
    dec bc
    ld c, [hl]
    ld c, [hl]
    rrca
    ld h, b
    dec l
    dec c
    or d
    ld c, l
    dec c
    cp l
    ld c, l
    daa
    dec c
    ld [de], a
    ld c, [hl]
    ld [de], a
    cp d
    ld d, l
    dec c
    db $fc
    ld c, l
    ld c, $10
    ld h, $4e
    ld c, b
    ld c, [hl]
    ld a, a
    ld c, [hl]
    add a
    ld c, [hl]
    ld b, e
    ld c, a
    ld [hl], $50
    ld d, $51
    scf
    ld d, d
    ld [hl], d
    ld d, l
    add d
    ld d, l
    adc [hl]
    ld d, l
    sub [hl]
    ld d, l
    sbc [hl]
    ld d, l
    and [hl]
    ld d, l
    db $db
    ld d, h
    xor [hl]
    ld d, l
    ld b, $66
    ld c, l
    ld bc, $4c28
    call Call_000_251b
    ret nc

    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    xor a
    ld [$dd12], a
    ld e, $4c
    ld a, [de]
    ld [$dd13], a
    ret


    ld hl, $4c3a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    cp $04
    jr nz, jr_01d_4dd2

    ld a, [$dd12]
    set 0, a
    ld [$dd12], a
    ld a, [hl+]

jr_01d_4dd2:
    cp $ff
    jr nz, jr_01d_4de0

    ld a, [hl+]
    cpl
    inc a
    add l
    ld l, a
    ld a, $ff
    adc h
    ld h, a
    ld a, [hl+]

jr_01d_4de0:
    ldh [$ff80], a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ldh a, [$ff80]
    rlca
    ld hl, $4c47
    add l
    ld l, a
    jr nc, jr_01d_4df4

    inc h

jr_01d_4df4:
    ld e, $3f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $3f
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    cp $ff
    ret z

    ld e, $3f
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld hl, $dd12
    bit 0, [hl]
    jr z, jr_01d_4e21

    bit 1, [hl]
    jr z, jr_01d_4e21

    ld a, $01
    jr jr_01d_4e22

jr_01d_4e21:
    xor a

jr_01d_4e22:
    ld e, $27
    ld [de], a
    ret


    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    jr jr_01d_4e56

    inc de
    add b
    ld l, c
    ld c, l
    add hl, de
    ld bc, $2828
    inc de
    ret nz

    ld l, c
    ld c, l
    add hl, de
    nop
    jr @+$2a

    inc de
    ret nz

    ld l, c
    ld c, l
    add hl, de
    ld bc, $0628
    ld l, c
    ld c, l
    dec bc
    ld c, [hl]
    ld c, [hl]
    ld b, $69
    ld c, l
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, bc
    ld [bc], a
    add hl, de
    nop

jr_01d_4e56:
    jr @+$0f

    and $22
    rst $10
    nop
    add hl, de
    ld bc, $0a28
    add hl, de
    nop
    jr jr_01d_4e7d

    ld bc, $190c
    rlca
    db $10
    add hl, bc
    inc bc
    add hl, de
    rlca
    inc b
    add hl, de
    rrca
    inc b
    ld a, [bc]
    add hl, de
    ld bc, $1908
    nop
    ld [$0119], sp
    ld [$0019], sp

jr_01d_4e7d:
    jr jr_01d_4e8b

    jr z, jr_01d_4e94

    add b
    ld h, $4e
    ld b, $48
    ld c, [hl]
    rrca
    ld b, c
    inc b
    inc bc

jr_01d_4e8b:
    or [hl]
    ld c, [hl]
    ld e, l
    dec bc
    sbc d
    ld c, [hl]
    dec c
    jr nz, jr_01d_4ee3

jr_01d_4e94:
    ld de, $4e8a
    ld b, $69
    ld c, l
    ld h, $40
    ld bc, $0029
    ld [$ff80], sp
    ld a, [hl+]
    ld [$0219], sp
    db $10
    dec c
    ld [hl-], a
    db $10
    db $ec
    add hl, de
    inc bc
    db $10
    rlca
    nop
    nop
    add hl, hl
    nop
    dec b
    ld [bc], a
    inc c
    call Call_000_1ee6
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_4ef5

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4c36
    call Call_000_24cd
    bit 7, a
    jr nz, jr_01d_4ee9

    call Call_01d_4f0b
    ret nc

    call Call_01d_4efd
    ld e, $41
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l

jr_01d_4ee3:
    ld [hl], $4e
    inc l
    ld [hl], $b9
    ret


jr_01d_4ee9:
    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $4d
    inc l
    ld [hl], $98
    ret


jr_01d_4ef5:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


Call_01d_4efd:
Jump_01d_4efd:
    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ret


Call_01d_4f04:
Jump_01d_4f04:
    call Call_01d_4efd
    ld e, $11
    ld [de], a
    ret


Call_01d_4f0b:
    ld e, $0e
    ld a, [de]
    rlca
    ld hl, $db51
    ld e, $04
    ld a, [de]
    jr c, jr_01d_4f1c

    sub [hl]
    cp $97
    ccf
    ret


jr_01d_4f1c:
    sub [hl]
    cp $09
    ret


    ld e, $41
    ld a, [de]
    dec a
    jr z, jr_01d_4f3f

    ld [de], a
    cp $03
    jr nc, jr_01d_4f3a

    ld hl, $4c6e
    dec a
    add l
    ld l, a
    jr nc, jr_01d_4f34

    inc h

jr_01d_4f34:
    call Call_000_0647
    cp [hl]
    jr c, jr_01d_4f3f

jr_01d_4f3a:
    xor a

jr_01d_4f3b:
    ld e, $27
    ld [de], a
    ret


jr_01d_4f3f:
    ld a, $01
    jr jr_01d_4f3b

    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    db $10
    add hl, de
    ld c, $10
    inc h
    rla
    dec c
    cp b
    ld c, a
    ld b, b
    ld de, $4f5c
    ld h, $b8
    nop
    ld b, $5f
    ld c, a
    ld h, $68
    ld bc, $0d01
    ld [$fd00], sp
    ld a, [hl+]
    db $10
    add hl, hl
    nop
    inc bc
    ld l, l
    ld c, a
    ld e, l
    nop
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_4fb0

    call Call_000_1ed3
    call Call_000_0da4
    call Call_01d_4f0b
    jr nc, jr_01d_4f83

    call Call_01d_4efd

jr_01d_4f83:
    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_000_203d
    ld e, $45
    ld a, [de]
    jr nc, jr_01d_4fa5

    rlca
    jr c, jr_01d_4fa8

jr_01d_4f94:
    ld e, $04
    ld b, $10
    call Call_000_1f9c
    jr c, jr_01d_4fa8

    ld e, $1d
    ld bc, $4fd6
    jp Jump_000_0846


jr_01d_4fa5:
    rlca
    jr c, jr_01d_4f94

jr_01d_4fa8:
    ld e, $1d
    ld bc, $4fcd
    jp Jump_000_0846


jr_01d_4fb0:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    ld a, [bc]
    inc bc
    push bc
    ld e, $04
    ld b, a
    call Call_000_1f9c
    jr c, jr_01d_4fc9

    xor a

jr_01d_4fc4:
    ld e, $27
    ld [de], a
    pop bc
    ret


jr_01d_4fc9:
    ld a, $01
    jr jr_01d_4fc4

    inc bc
    sbc b
    ld c, l
    ld e, l
    rlca
    nop
    nop
    dec b
    inc c
    inc bc
    ldh [rVBK], a
    ld e, l
    dec c
    ld e, a
    jr nz, jr_01d_504e

    ld c, h
    nop
    call Call_01d_4fef
    ret c

    bit 7, a
    ret z

    ld e, $1d
    ld bc, $5017
    jp Jump_000_0846


Call_01d_4fef:
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_500d

    call Call_000_21eb
    call Call_000_0da4
    call Call_01d_4f0b
    jr nc, jr_01d_5005

    call Call_01d_4efd

jr_01d_5005:
    ld bc, $4c36
    call Call_000_24cd
    or a
    ret


jr_01d_500d:
    ld e, $1d
    ld bc, $5ada
    call Call_000_0846
    pop hl
    ret


    dec c
    ld [hl], a
    rrca
    ld c, $0d
    and $22
    rst $10
    ld bc, $e60d
    ld [hl+], a
    rst $10
    ld [bc], a
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    ld c, $10
    add hl, de
    dec c
    inc b
    daa
    add hl, de
    nop
    jr nz, jr_01d_503a

    ld l, c
    ld c, l
    rrca
    ld b, c
    nop
    dec c

jr_01d_503a:
    cp b
    ld c, a
    ld b, b
    ld [de], a
    and a
    ld d, b
    daa
    inc bc
    ld c, e
    ld d, b
    ld e, l
    dec bc
    sbc d
    ld c, [hl]
    ld b, $39
    ld d, b
    call Call_01d_5057

jr_01d_504e:
    ret c

    ld e, $1d
    ld bc, $50a7
    jp Jump_000_0846


Call_01d_5057:
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_509d

    ld e, $41
    ld a, [de]
    or a
    jr nz, jr_01d_5068

    call Call_000_1ee6

jr_01d_5068:
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4c36
    call Call_000_24cd
    bit 7, a
    jr nz, jr_01d_5086

    call Call_01d_4f0b
    jr nc, jr_01d_509b

    call Call_01d_4f04
    ld h, d
    ld l, $41
    inc [hl]
    scf
    ret


jr_01d_5086:
    ld e, $41
    ld a, [de]
    or a
    jr nz, jr_01d_5099

    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $4d
    inc l
    ld [hl], $98
    scf
    ret


jr_01d_5099:
    or a
    ret


jr_01d_509b:
    ccf
    ret


jr_01d_509d:
    ld e, $1d
    ld bc, $5ada
    call Call_000_0846
    pop hl
    ret


    ld h, $00
    ld bc, $8008
    db $fd
    ld a, [hl+]
    jr z, jr_01d_50d9

    nop
    ld [hl+], a
    jp c, $1d50

    inc bc
    db $e4
    ld d, b
    ld e, l
    dec b
    jr nz, jr_01d_50c9

    ld [hl], a
    rrca
    dec c
    dec c
    and $22
    rst $10
    inc bc
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_01d_50c9:
    dec c
    ld [hl-], a
    db $10
    ld a, [$0409]
    dec c
    and $22
    rst $10
    inc b
    dec b
    ld [$060a], sp
    ld l, c

jr_01d_50d9:
    ld c, l
    add hl, de
    ld [bc], a
    ld [$0319], sp
    ld a, [bc]
    add hl, de
    inc b
    jr nc, jr_01d_50e4

jr_01d_50e4:
    call Call_000_1ee6
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_510e

    call Call_000_1ed3
    call Call_000_0da4
    call Call_01d_4f0b
    jr nc, jr_01d_5108

    call Call_01d_4efd
    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $50
    inc l
    ld [hl], $e7

jr_01d_5108:
    ld bc, $4c36
    jp Jump_000_24cd


jr_01d_510e:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    rrca
    ld b, c
    nop
    dec c
    cp b
    ld c, a
    jr z, @+$14

    scf
    ld d, c
    daa
    inc bc
    dec hl
    ld d, c
    ld e, l
    dec bc
    sbc d
    ld c, [hl]
    ld b, $19
    ld d, c
    call Call_01d_5057
    ret c

    ld e, $1d
    ld bc, $5137
    jp Jump_000_0846


    daa
    inc bc
    ld [hl], a
    ld d, c
    ld e, l
    add hl, de
    nop
    ld [$0119], sp
    ld [$ba0d], sp
    ld [hl+], a
    rst $10
    dec d
    inc h
    jr jr_01d_516c

    ld l, l
    ld d, c
    dec e
    add hl, bc
    jr z, jr_01d_5169

    rlca
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    ld a, [bc]
    dec c
    add [hl]
    ld d, c
    ld [de], a
    sub [hl]
    ld d, c
    dec c
    adc $54
    inc h
    rst $38
    rrca
    inc e
    add b
    add hl, de
    ld bc, $1910
    nop

jr_01d_5169:
    ld [$6906], sp

jr_01d_516c:
    ld c, l
    dec c
    and $22
    rst $10
    dec b
    dec b
    ld [$6d06], sp
    ld d, c
    ld bc, $4c28
    call Call_000_251b
    ret nc

    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    ld hl, $dd12
    bit 2, [hl]
    jr nz, jr_01d_5190

    xor a
    jr jr_01d_5192

jr_01d_5190:
    ld a, $01

jr_01d_5192:
    ld e, $27
    ld [de], a
    ret


    ld [hl+], a
    ld l, l
    ld d, c
    dec e
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    ld b, $9a
    ld d, c
    dec c
    ld [de], a
    ld c, [hl]
    ld de, $51ad
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    dec c
    inc e
    ld d, d
    inc h
    rst $38
    add hl, de
    dec b
    inc b
    add hl, de
    ld b, $20
    dec c
    ld [hl+], a
    ld d, d
    inc h
    dec de
    dec c
    ld hl, sp+$51
    ld h, $00
    cp $0d
    ld [hl-], a
    db $10
    jr nz, jr_01d_51d0

    nop
    nop
    inc bc
    db $e3
    ld d, c
    ld e, l
    add hl, de
    rrca

jr_01d_51d0:
    inc l
    add hl, de
    ld bc, $0f10
    ld h, b
    dec l
    rrca
    ld h, c
    nop
    dec c
    ld [de], a
    ld c, [hl]
    ld [de], a
    ret


    ld d, l
    ld b, $69
    ld c, l
    call Call_000_1ee6
    call Call_000_0da4
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    call z, Call_01d_4f04
    call Call_01d_4f0b
    ret nc

    jp Jump_01d_4f04


    push bc
    ld e, $01
    ld bc, $5544
    call Call_000_0c3a
    ld a, $80
    ld [$a054], a
    ld l, $04
    ld e, l
    ld a, [de]
    add $04
    ld [hl+], a
    inc e
    ld a, [de]
    adc $00
    ld [hl], a
    ld l, $07
    ld e, l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    pop bc
    ret


    ld hl, $dd12
    res 2, [hl]
    ret


    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $50
    jr c, jr_01d_5231

    ld a, $c0
    jr jr_01d_5233

jr_01d_5231:
    ld a, $40

jr_01d_5233:
    ld e, $45
    ld [de], a
    ret


    dec bc
    ld d, b
    ld d, d
    db $10
    ld c, h
    inc de
    dec a
    ld c, b
    ld d, d
    jr z, @+$15

    ret nz

    adc [hl]
    ld d, d
    ld b, $5c
    ld d, e
    jr z, jr_01d_525d

    ret nz

    ld e, h
    ld d, e
    ld b, $8e
    ld d, d
    dec c
    cp d
    ld [hl+], a
    rst $10
    ld b, $03
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    db $10
    inc bc

jr_01d_525d:
    ld a, b
    ld d, d
    ld e, l
    rlca
    nop
    nop
    ld [$ff00], sp
    ld a, [hl+]
    db $10
    add hl, de
    inc bc
    db $10
    add hl, de
    add hl, bc
    inc b
    add hl, de
    ld [$030c], sp
    sbc b
    ld c, l
    ld e, l
    dec b
    db $10
    inc c
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_5286

    call Call_000_1ed3
    jp Jump_000_0da4


jr_01d_5286:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    rrca
    ld b, c
    nop
    rrca
    ld h, $03
    dec c
    cp b
    ld c, a
    jr nc, jr_01d_52ab

    db $db
    ld d, d
    daa
    inc bc
    jp z, Jump_01d_5d52

    dec bc
    xor [hl]
    ld d, d
    dec c
    sub $52
    db $10
    ld h, $11
    db $db
    ld d, d

jr_01d_52ab:
    ld b, $94
    ld d, d
    ld h, $40
    ld bc, $0029
    ld [$ff80], sp
    ld a, [hl+]
    ld [$0819], sp
    db $10
    dec c
    ld [hl-], a
    db $10
    db $ec
    add hl, de
    add hl, bc
    db $10
    rlca
    nop
    nop
    add hl, hl
    nop
    dec b
    ld [bc], a
    inc c
    call Call_01d_5057
    ret c

    ld e, $1d
    ld bc, $52db
    jp Jump_000_0846


    ld h, d
    ld l, $26
    dec [hl]
    ret


    dec c
    ld hl, sp+$44
    ld d, b
    ld de, $5433
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    add hl, bc
    inc b
    add hl, de
    ld [$2410], sp
    ld b, [hl]
    add hl, de
    ld d, $01
    add hl, de
    dec d
    ld bc, $1419
    ld bc, $1319
    ld bc, $1219
    ld bc, $770d
    rrca
    ld c, $0d
    and $22
    rst $10
    rlca
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld de, $1902
    dec bc
    ld [bc], a
    add hl, de
    ld de, $0702
    nop
    nop
    ld [$fe00], sp
    ld a, [hl+]
    jr nz, jr_01d_531e

    ld b, b
    ld d, e
    ld e, l

jr_01d_531e:
    add hl, de
    ld [de], a
    ld bc, $1319
    ld bc, $1419
    ld bc, $1519
    ld bc, $1619
    ld bc, $0919
    dec bc
    dec c
    adc $54
    add hl, de
    inc bc
    db $10
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    db $10
    ld b, $69
    ld c, l
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_5354

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4c36
    jp Jump_000_24cd


jr_01d_5354:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    rrca
    ld b, c
    nop
    rrca
    ld h, $03
    dec c
    cp b
    ld c, a
    jr c, jr_01d_5379

    adc b
    ld d, e
    daa
    inc bc
    ld a, h
    ld d, e
    ld e, l
    dec bc
    xor [hl]
    ld d, d
    dec c
    sub $52
    db $10
    ld h, $11
    adc b
    ld d, e

jr_01d_5379:
    ld b, $62
    ld d, e
    call Call_01d_5057
    ret c

    ld e, $1d
    ld bc, $5388
    jp Jump_000_0846


    dec c
    ld hl, sp+$44
    ld d, b
    ld de, $5433
    jr jr_01d_53ba

    nop
    inc bc
    ld e, $54
    ld e, l
    add hl, de
    add hl, bc
    inc b
    add hl, de
    ld [$2610], sp
    ret nz

    nop
    inc h
    ld b, [hl]
    add hl, de
    ld d, $01
    add hl, de
    dec d
    ld bc, $1419
    ld bc, $1319
    ld bc, $320d
    db $10
    ldh [rNR24], a
    ld [de], a
    ld bc, $9803
    ld c, l
    ld e, l
    dec c
    ld [hl], a

jr_01d_53ba:
    rrca
    dec c
    dec c
    and $22
    rst $10
    rlca
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld de, $1902
    dec bc
    ld [bc], a
    add hl, de
    ld de, $0302
    ld e, $54
    ld e, l
    add hl, de
    ld [de], a
    ld bc, $1319
    ld bc, $1419
    ld bc, $c026
    nop
    inc h
    ld b, [hl]
    add hl, de
    dec d
    inc b
    dec c
    ld [hl-], a
    db $10
    ldh [rNR24], a
    inc d
    ld bc, $1319
    ld bc, $1219
    ld bc, $9803
    ld c, l
    ld e, l
    dec c
    ld [hl], a
    rrca
    dec c
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld de, $1902
    dec bc
    ld [bc], a
    add hl, de
    ld de, $1902
    ld [de], a
    ld bc, $1319
    ld bc, $1419
    ld bc, $1519
    inc b
    add hl, de
    add hl, bc
    inc b
    dec c
    adc $54
    add hl, de
    inc bc
    ld [$0019], sp
    db $10
    ld b, $69
    ld c, l
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4c28
    call Call_000_251b
    ret nc

    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    inc h
    rla
    rlca
    nop
    nop
    ld [$fd00], sp
    ld a, [hl+]
    db $10
    inc bc
    ld b, b
    ld d, e
    ld e, l
    add hl, de
    add hl, bc
    jr nc, jr_01d_5448

    sbc b
    ld c, l
    ld e, l

jr_01d_5448:
    add hl, de
    ld [$0308], sp
    ld h, e
    ld d, h
    ld e, l
    inc h
    ld b, [hl]
    add hl, de
    ld d, $01
    add hl, de
    dec d
    ld bc, $1419
    ld bc, $1319
    ld bc, $1219
    ld bc, $1101
    nop
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_5482

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4c36
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $548a
    jp Jump_000_0846


jr_01d_5482:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    inc bc
    sbc b
    ld c, l
    ld e, l
    dec c
    ld [hl], a
    rrca
    ld c, $0d
    and $22
    rst $10
    rlca
    add hl, bc
    inc b
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld de, $0a02
    rlca
    nop
    nop
    ld [$fe00], sp
    ld a, [hl+]
    jr nz, jr_01d_54ac

    ld b, b
    ld d, e
    ld e, l

jr_01d_54ac:
    add hl, de
    ld [de], a
    ld bc, $1319
    ld bc, $1419
    ld bc, $1519
    ld bc, $1619
    ld bc, $0919
    dec bc
    dec c
    adc $54
    add hl, de
    inc bc
    db $10
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    db $10
    ld b, $69
    ld c, l
    push bc
    ld e, $48
    ld a, [de]
    ld h, a
    call Call_000_0bba
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    dec bc
    ld d, b
    ld d, d
    dec c
    ld hl, sp+$44
    ld d, b
    ld de, $5504
    add hl, de
    add hl, bc
    ld [$0819], sp
    jr nc, jr_01d_5505

    add hl, bc
    ld [bc], a
    dec c
    adc $54
    dec c
    and $22
    rst $10
    ld [$5c24], sp
    add hl, de
    ld [bc], a
    jr nz, jr_01d_5515

    inc bc
    inc b
    add hl, de
    nop
    db $10
    ld b, $69
    ld c, l
    inc h

jr_01d_5505:
    rla
    inc bc
    ccf
    ld d, l
    ld e, l
    ld [$fdc0], sp
    ld a, [hl+]
    db $10
    add hl, de
    add hl, bc
    inc h
    inc bc
    sbc b
    ld c, l

jr_01d_5515:
    ld e, l
    add hl, de
    ld [$0320], sp
    ccf
    ld d, l
    ld e, l
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld d, $01
    add hl, de
    dec d
    ld bc, $1419
    ld bc, $1319
    ld bc, $1219
    ld bc, $ce0d
    ld d, h
    dec c
    and $22
    rst $10
    add hl, bc
    inc h
    ld e, h
    add hl, de
    ld [bc], a
    ld [$0301], sp
    nop
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_555e

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4c36
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $5566
    jp Jump_000_0846


jr_01d_555e:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    inc h
    ld [hl+], a
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    jr jr_01d_5576

    ld l, c
    ld c, l
    jr z, jr_01d_5587

    ld b, b
    ld b, e

jr_01d_5576:
    ld c, a
    inc de
    add b
    ld [hl], $50
    inc de
    ret nz

    ld d, $51
    ld b, $37
    ld d, d
    jr z, @+$15

    ld h, b
    add a
    ld c, [hl]

jr_01d_5587:
    inc de
    ldh [rSCX], a
    ld c, a
    ld b, $37
    ld d, d
    jr z, jr_01d_55a3

    and b
    ld b, e
    ld c, a
    ld b, $36
    ld d, b
    jr z, jr_01d_55ab

    and b
    ld d, $51
    ld b, $37
    ld d, d
    jr z, jr_01d_55b3

    and b
    ld [hl], $50

jr_01d_55a3:
    ld b, $43
    ld c, a
    jr z, jr_01d_55bb

    and b
    scf
    ld d, d

jr_01d_55ab:
    ld b, $16
    ld d, c
    jr z, jr_01d_55c3

    ld b, b
    scf
    ld d, d

jr_01d_55b3:
    inc de
    ret nz

    db $db
    ld d, h
    ld b, $43
    ld c, a
    inc h

jr_01d_55bb:
    inc c
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    dec bc
    rra
    ld d, [hl]

jr_01d_55c3:
    dec bc
    ld h, [hl]
    ld d, [hl]
    dec c
    rst $20
    ld d, l
    daa
    dec c
    inc b
    ld d, [hl]
    ld c, $06
    ld a, c
    ld d, [hl]
    cp h
    ld d, [hl]
    db $f4
    ld d, [hl]
    dec sp
    ld e, b
    inc h
    ld e, c
    jp z, Jump_000_0f5a

    ld b, a
    nop
    rrca
    inc e
    add b
    dec c
    add hl, de
    ld d, [hl]
    ld b, $70
    ld c, l
    call Call_000_0647
    and $01
    ld l, a
    ld e, $5c
    ld a, [de]
    dec a
    rlca
    add l
    rlca
    ld hl, $4c86
    add l
    ld l, a
    jr nc, jr_01d_55fc

    inc h

jr_01d_55fc:
    ld a, [hl+]
    ld e, [hl]
    ld hl, $dd14
    ld [hl+], a
    ld [hl], e
    ret


    ld hl, $dd14
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    cp $ff
    ret z

    ld a, l
    ld e, h
    ld hl, $dd14
    ld [hl+], a
    ld [hl], e
    ret


    ld hl, $dd12
    res 1, [hl]
    ret


    rlca
    nop
    nop
    ld [$ff00], sp
    ld a, [hl+]
    jr nz, jr_01d_562b

    dec sp
    ld d, [hl]
    ld e, l

jr_01d_562b:
    add hl, bc
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    rlca
    ld [$0219], sp
    inc b
    add hl, de
    nop
    ld [$0c0a], sp
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_565e

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4c36
    call Call_000_24cd
    bit 7, a
    ret z

    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $4d
    inc l
    ld [hl], $98
    ret


jr_01d_565e:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, bc
    ld [$e60d], sp
    ld [hl+], a
    rst $10
    rrca
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $0a04
    inc c
    jr z, jr_01d_568d

    add a
    ld d, [hl]
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    dec bc
    rra
    ld d, [hl]
    ld b, $c9
    ld d, l
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    dec bc
    ld h, [hl]

jr_01d_568d:
    ld d, [hl]
    ld b, $c9
    ld d, l
    dec c
    and $22
    rst $10
    rrca
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    dec c
    and $22
    rst $10
    rrca
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    ld b, $91
    ld d, [hl]
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    rrca
    ld b, c
    inc b
    inc bc
    or [hl]
    ld c, [hl]
    ld e, l
    dec bc
    db $d3
    ld d, [hl]
    dec c
    jr nz, @+$51

    ld de, $56c3
    ld b, $c9
    ld d, l
    dec c
    and $22
    rst $10
    db $10
    ld h, $00
    ld [bc], a
    add hl, hl
    nop
    ld [$ff80], sp
    ld a, [hl+]
    db $10
    add hl, de
    ld [bc], a
    ld [$320d], sp
    db $10
    ldh [rNR24], a
    inc bc
    ld [$0007], sp
    nop
    add hl, hl
    nop
    dec b
    ld [bc], a
    inc c
    rrca
    ld b, c
    nop
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, bc
    inc b
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $0a04
    inc h
    rla
    ld h, $b8
    nop
    ld bc, $0803
    nop
    db $fd
    ld a, [hl+]
    db $10
    add hl, hl
    nop
    inc bc
    dec de
    ld d, a
    ld e, l
    nop
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_575e

    call Call_000_1ed3
    call Call_000_0da4
    call Call_01d_4f0b
    jr nc, jr_01d_5731

    call Call_01d_4f04

jr_01d_5731:
    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_000_203d
    ld e, $45
    ld a, [de]
    jr nc, jr_01d_5753

    rlca
    jr c, jr_01d_5756

jr_01d_5742:
    ld e, $04
    ld b, $20
    call Call_000_1f9c
    jr c, jr_01d_5756

    ld e, $1d
    ld bc, $5776
    jp Jump_000_0846


jr_01d_5753:
    rlca
    jr c, jr_01d_5742

jr_01d_5756:
    ld e, $1d
    ld bc, $5766
    jp Jump_000_0846


jr_01d_575e:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    sbc b
    ld c, l
    ld e, l
    rlca
    nop
    nop
    dec b
    inc c
    rrca
    ld b, c
    ld bc, $270f
    nop
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    adc h
    ld d, a
    ld e, l
    dec c
    ld e, a
    jr nz, jr_01d_57f8

    ld c, h
    add hl, de
    ld [bc], a
    ld [$0401], sp
    nop
    call Call_01d_4fef
    ret c

    bit 7, a
    ret z

    ld hl, $dd12
    set 7, [hl]
    ld e, $1d
    ld bc, $57a0
    jp Jump_000_0846


    dec c
    and $22
    rst $10
    jr jr_01d_57b3

    ld [hl], a
    rrca
    ld c, $14
    ld [bc], a
    rst $38
    ld d, a
    dec c
    db $dd
    ld d, a
    dec c
    xor $57

jr_01d_57b3:
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    cp h
    ld d, a
    ld e, l
    nop
    call Call_01d_4fef
    ret c

    bit 7, a
    ret z

    ld hl, $dd12
    set 7, [hl]
    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $1d
    ld bc, $57a9
    jp Jump_000_0846


    ld hl, $4c76
    ld e, $27
    ld a, [de]
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_01d_57eb

    inc h

jr_01d_57eb:
    jp Jump_000_20be


    ld h, d
    ld l, $27
    ld a, [hl]
    inc [hl]
    rlca
    ld hl, $4c7c
    add l

jr_01d_57f8:
    ld l, a
    jr nc, jr_01d_57fc

    inc h

jr_01d_57fc:
    jp Jump_000_20f9


    dec c
    and $22
    rst $10
    db $10
    dec c
    daa
    ld e, b
    ld [$0000], sp
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    ld e, $54
    ld e, l
    dec b
    db $10
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1904
    nop
    ld [bc], a
    add hl, de
    ld bc, $0604
    ret


    ld d, l
    ld e, $41
    ld a, [de]
    ld e, a
    rlca
    add e
    ld hl, $4c80
    add l
    ld l, a
    jr nc, jr_01d_5835

    inc h

jr_01d_5835:
    call Call_000_20f9
    jp Jump_000_2123


    rrca
    ld b, c
    nop
    dec c
    cp b
    ld c, a
    jr z, @+$14

    ld e, h
    ld e, b
    daa
    inc bc
    ld d, b
    ld e, b
    ld e, l
    dec bc
    db $d3
    ld d, [hl]
    ld b, $3e
    ld e, b
    call Call_01d_5057
    ret c

    ld e, $1d
    ld bc, $585c
    jp Jump_000_0846


    daa
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    rst $00
    ld e, b
    ld e, l
    ld h, $40
    nop
    ld [$0000], sp
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $0d08
    cp d
    ld [hl+], a
    rst $10
    dec d
    inc h
    jr jr_01d_5882

    ld e, $0d
    and $22
    rst $10
    ld de, $0719
    ld [bc], a

jr_01d_5882:
    add hl, de
    rrca
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    ld a, [bc]
    dec c
    add [hl]
    ld d, c
    ld [de], a
    sub [hl]
    ld d, c
    inc h
    rst $38
    dec c
    adc $54
    daa
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    dec b
    inc b
    add hl, de
    ld b, $20
    inc h
    dec de
    dec c
    and $22
    rst $10
    ld [de], a
    ld h, $00
    cp $0d
    ld [hl-], a
    db $10
    jr nz, jr_01d_58b8

    and $58
    ld e, l

jr_01d_58b8:
    add hl, de
    rrca
    db $10
    inc bc
    sbc b
    ld c, l
    ld e, l
    dec b
    inc e
    add hl, de
    ld bc, $0610
    ret


    ld d, l
    call Call_000_0da4
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_58de

    call Call_01d_4f0b
    ret nc

    ld e, $1d
    ld bc, $5892
    jp Jump_000_0846


jr_01d_58de:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_58fb

    call Call_01d_4f0b
    ret nc

    jp Jump_01d_4f04


jr_01d_58fb:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    dec c
    and $22
    rst $10
    ld de, $0719
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    ld b, $07
    ld e, c
    add hl, de
    ld bc, $1910
    nop
    ld [$c906], sp
    ld d, l
    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    dec bc
    ld d, b
    ld d, d
    rrca
    ld b, c
    nop
    rrca
    ld h, $03
    dec c
    cp b
    ld c, a
    jr c, jr_01d_5948

    ld [hl], e
    ld e, c
    daa
    inc bc
    ld c, e
    ld e, c
    ld e, l
    dec bc
    ld d, a
    ld e, c
    dec c
    sub $52
    db $10
    ld h, $11
    ld [hl], e
    ld e, c

jr_01d_5948:
    ld b, $31
    ld e, c
    call Call_01d_5057
    ret c

    ld e, $1d
    ld bc, $5973
    jp Jump_000_0846


    ld h, $00
    ld [bc], a
    add hl, hl
    nop
    ld [$ff80], sp
    ld a, [hl+]
    db $10
    add hl, de
    ld [$0d08], sp
    ld [hl-], a
    db $10
    ldh [rNR24], a
    add hl, bc
    ld [$0007], sp
    nop
    add hl, hl
    nop
    dec b
    ld [bc], a
    inc c
    dec c
    ld hl, sp+$44
    ld d, b
    ld de, $5a0e
    jr jr_01d_59a5

    nop
    inc bc
    ld e, $54
    ld e, l
    add hl, de
    add hl, bc
    inc b
    add hl, de
    ld [$2610], sp
    nop
    ld bc, $4624
    add hl, de
    ld d, $01
    add hl, de
    dec d
    ld bc, $1419
    ld bc, $1319
    ld bc, $320d
    db $10
    ret nc

    add hl, de
    ld [de], a
    ld bc, $9803
    ld c, l
    ld e, l
    dec c
    ld [hl], a

jr_01d_59a5:
    rrca
    dec c
    dec c
    and $22
    rst $10
    inc de
    dec c
    and $22
    rst $10
    ld a, [de]
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld de, $1902
    dec bc
    ld [bc], a
    add hl, de
    ld de, $0302
    ld e, $54
    ld e, l
    add hl, de
    ld [de], a
    ld bc, $1319
    ld bc, $1419
    ld bc, $0026
    ld bc, $4624
    add hl, de
    dec d
    inc b
    dec c
    ld [hl-], a
    db $10
    ret nc

    add hl, de
    inc d
    ld bc, $1319
    ld bc, $1219
    ld bc, $9803
    ld c, l
    ld e, l
    dec c
    ld [hl], a
    rrca
    dec c
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld de, $1902
    dec bc
    ld [bc], a
    add hl, de
    ld de, $1902
    ld [de], a
    ld bc, $1319
    ld bc, $1419
    ld bc, $1519
    inc b
    add hl, de
    add hl, bc
    inc b
    dec c
    adc $54
    add hl, de
    inc bc
    ld [$0019], sp
    db $10
    ld b, $c9
    ld d, l
    inc h
    rla
    rlca
    nop
    nop
    ld [$fd00], sp
    ld a, [hl+]
    db $10
    inc bc
    ld b, b
    ld d, e
    ld e, l
    add hl, de
    add hl, bc
    jr nc, jr_01d_5a23

    sbc b
    ld c, l
    ld e, l

jr_01d_5a23:
    add hl, de
    ld [$0308], sp
    ld d, [hl]
    ld e, d
    ld e, l
    inc h
    ld b, [hl]
    add hl, de
    ld d, $01
    add hl, de
    dec d
    ld bc, $1419
    ld bc, $1319
    ld bc, $1219
    ld bc, $1119
    ld [$1219], sp
    ld bc, $1319
    ld bc, $1419
    ld bc, $1519
    inc b
    add hl, de
    inc d
    ld bc, $1319
    ld bc, $1219
    ld bc, $1101
    nop
    ld bc, $4c28
    call Call_000_251b
    jr c, jr_01d_5a75

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4c36
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $5a7d
    jp Jump_000_0846


jr_01d_5a75:
    ld e, $1d
    ld bc, $5ada
    jp Jump_000_0846


    ld [hl+], a
    sub c
    ld d, [hl]
    dec e
    inc bc
    sbc b
    ld c, l
    ld e, l
    dec c
    ld [hl], a
    rrca
    ld c, $0d
    and $22
    rst $10
    inc de
    dec c
    and $22
    rst $10
    ld a, [de]
    add hl, bc
    inc b
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld de, $0a02
    rlca
    nop
    nop
    ld [$fe00], sp
    ld a, [hl+]
    jr nz, jr_01d_5aa8

    ld b, b
    ld d, e
    ld e, l

jr_01d_5aa8:
    add hl, de
    ld [de], a
    ld bc, $1319
    ld bc, $1419
    ld bc, $1519
    ld bc, $1619
    ld bc, $0919
    dec bc
    dec c
    adc $54
    add hl, de
    inc bc
    db $10
    inc bc
    sbc b
    ld c, l
    ld e, l
    add hl, de
    nop
    db $10
    ld b, $c9
    ld d, l
    jr z, jr_01d_5adf

    ld b, b
    db $f4
    ld d, [hl]
    inc de
    add b
    dec sp
    ld e, b
    inc de
    ret nz

    inc h
    ld e, c
    ld b, $bc
    ld d, [hl]
    rrca
    ld b, c
    ld bc, $fb03

jr_01d_5adf:
    ld e, d
    ld e, l
    inc e
    ld a, [$047c]
    add hl, bc
    ld b, $19
    db $10
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, c
    nop
    dec c
    push af
    ld e, d
    nop
    ld hl, $dd12
    res 3, [hl]
    ret


    call Call_000_2323
    ret nz

    ld b, $00
    ld e, $4c
    ld a, [de]
    cp $5b
    ret nc

    inc b
    cp $2e
    jr nc, jr_01d_5b0d

    inc b

jr_01d_5b0d:
    ld e, $5c
    ld a, b
    ld [de], a
    ld hl, $dd12
    bit 1, [hl]
    ret nz

    ld e, $4c
    ld a, [de]
    add $14
    ld hl, $dd13
    cp [hl]
    jr c, jr_01d_5b23

    ret nz

jr_01d_5b23:
    ld a, [de]
    ld [hl], a
    ld hl, $dd12
    set 1, [hl]
    ret


    dec c
    inc a
    ld e, h
    inc e
    add l
    ld b, a
    inc bc
    ld a, [de]
    ld b, [hl]
    inc b
    ld a, e
    ld [hl], e
    dec c
    rrca
    ld h, b
    ld a, [de]
    rrca
    ld h, c
    nop
    dec c
    rst $30
    ld h, l
    dec c
    and d
    ld e, e
    ld de, $5bb6
    inc bc
    add a
    ld e, e
    ld e, l
    jr jr_01d_5b56

    dec b
    add hl, de
    dec de
    ld [bc], a
    add hl, de
    dec e
    ld [bc], a
    ld a, [bc]
    add hl, de

jr_01d_5b56:
    dec de
    inc d
    ld h, $40
    nop
    add hl, de
    inc e
    ld e, $07
    nop
    nop
    add hl, bc
    ld b, $19
    inc e
    ld [bc], a
    add hl, de
    ld e, $02
    ld a, [bc]
    add hl, de
    inc e
    inc d
    ld h, $40
    nop
    add hl, de
    dec de
    ld e, $07
    nop
    nop
    ld b, $4c
    ld e, e
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

jr_01d_5b84:
    nop
    nop
    nop
    call Call_000_0da4
    ld bc, $5b79
    call Call_000_255b
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $50
    ret nz

    ld e, $1d
    ld bc, $5bf1
    jp Jump_000_0846


    ld hl, $db53
    ld e, $07
    ld a, [de]
    sub [hl]
    cp $60
    jr c, jr_01d_5bb1

    ld a, $01
    jr jr_01d_5bb2

jr_01d_5bb1:
    xor a

jr_01d_5bb2:
    ld e, $27
    ld [de], a
    ret


    inc bc
    add $5b
    ld e, l
    ld bc, $181f
    dec c
    ld e, a
    jr nz, jr_01d_5b84

    ld e, e
    nop
    jr nz, @-$7e

    ld bc, $ebcd
    ld hl, $a4cd
    dec c
    ld bc, $5b79
    call Call_000_255b
    ld hl, $db53
    ld e, $07
    ld a, [de]
    sub [hl]
    cp $60
    ret c

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $1d
    ld bc, $5b47
    jp Jump_000_0846


    inc bc
    ld a, [hl+]
    ld e, h
    ld e, l
    add hl, de
    inc e
    ld [$2224], sp
    add hl, bc
    inc b
    add hl, de
    rra
    inc b
    add hl, de
    jr nz, @+$06

    ld a, [bc]
    add hl, bc
    ld [$1f19], sp
    ld [$2119], sp
    inc b
    ld a, [bc]
    add hl, de
    rra
    ld [hl-], a
    rrca
    rra
    add b
    dec c
    jr nc, jr_01d_5c71

    dec c
    ld h, a
    inc hl
    dec b
    ld bc, $350d
    ld e, h
    ld de, $5c18
    inc b
    add hl, de
    ld c, e
    ld a, [de]
    rrca
    ld b, [hl]
    nop
    ld bc, $002e
    ld bc, $5b79
    jp Jump_000_255b


    xor a
    ld [$df16], a
    ret


    ld a, [$df16]
    ld e, $27
    ld [de], a
    ret


    ld hl, $4ce4
    ld a, $03
    call Call_000_05cf
    ret


    rla
    rst $38
    dec c
    rrca
    ld h, c
    nop
    rrca
    ld c, h
    ld bc, $7b04
    ld [hl], e
    dec c
    dec c
    ld sp, hl
    rra
    dec c
    rrca
    jr nz, jr_01d_5c61

    ld [$1008], sp
    ld e, e
    ld c, $1b
    sub [hl]
    ld e, h

jr_01d_5c61:
    rst $00
    ld e, h
    rst $10
    ld e, h
    rst $20
    ld e, h
    dec c
    ld e, l
    ld b, d
    ld e, l
    ld a, l
    ld e, l
    or c
    ld e, l
    or $5d

jr_01d_5c71:
    add a
    ld e, [hl]
    ldh [$ff5e], a
    ei
    ld e, [hl]
    inc b
    ld e, a
    dec c
    ld e, a
    push hl
    ld e, [hl]
    ld a, e
    ld e, a
    call z, Call_000_3e5f
    ld e, l
    rst $28
    ld e, a
    ld a, l
    ld h, b
    jr jr_01d_5cea

    jr nz, @+$63

    ld a, e
    ld h, c
    or c
    ld h, d
    ld c, [hl]
    ld h, d
    xor l
    ld h, d
    db $f4
    ld h, d
    ld d, $24
    ld d, d
    inc bc
    jr c, jr_01d_5cf8

    ld e, l
    dec c
    pop de
    rra
    ld b, $f0
    ld h, $80
    nop
    ld [$ffc0], sp
    dec c
    ld [hl-], a
    db $10
    ld hl, sp+$0f
    ld b, l
    ld b, b
    add hl, de
    ld a, [de]
    jr nz, jr_01d_5cbf

    ret nz

    ld e, h
    dec b
    db $10
    add hl, bc
    inc b
    add hl, de
    rst $38
    ld [bc], a
    add hl, de
    ld a, [de]
    ld [bc], a
    ld a, [bc]

jr_01d_5cbf:
    ld d, $1e
    ld de, $2f1a
    inc a
    ld [de], a
    ret


    rrca
    ld b, l
    ld b, b
    dec c
    pop de
    rra
    or $00
    rlca
    add b
    cp $29
    db $10
    ld b, $bd
    ld e, l
    rrca
    ld b, l
    ld b, b
    dec c
    pop de
    rra
    ld a, [bc]
    nop
    rlca
    add b
    ld bc, $f029
    ld b, $bd
    ld e, l
    dec c
    pop de
    rra

jr_01d_5cea:
    db $10
    ld [$4604], sp
    ld [hl], d
    dec bc
    rrca
    ld b, [hl]
    nop
    ld h, $00
    ld [bc], a
    dec c
    ld [hl-], a

jr_01d_5cf8:
    db $10
    ldh [$ff08], a
    nop
    cp $2a
    jr nz, jr_01d_5d03

    dec [hl]
    ld e, l
    ld e, l

jr_01d_5d03:
    add hl, de
    nop
    db $10
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld [$0d16], sp
    pop de
    rra
    db $f4
    inc c
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    dec [hl]
    ld e, l
    ld e, l
    ld h, $80
    rst $38
    ld [$ffc0], sp
    ld a, [hl+]
    ld hl, sp+$19
    dec b
    inc b
    dec c
    ld [hl-], a
    db $10
    jr nz, jr_01d_5d46

    inc b
    ld [bc], a
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    ld d, $cd
    db $d3
    ld e, $cd
    and $1e
    jp Jump_000_0da4


    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc b
    ld b, [hl]
    ld [hl], d
    dec bc

jr_01d_5d46:
    rrca
    ld b, [hl]
    nop
    dec c
    ld d, h
    ld e, l
    inc bc
    jr c, jr_01d_5dac

    ld e, l
    add hl, de
    nop

Jump_01d_5d52:
    inc c
    ld d, $c5
    call Call_000_0647
    ld b, a
    ld c, $05
    call Call_000_2885

Jump_01d_5d5e:
    ld hl, $4cdc
    ld a, b
    rlca
    rlca
    add b
    add l
    ld l, a
    jr nc, jr_01d_5d6a

    inc h

jr_01d_5d6a:
    ld b, h
    ld c, l
    call Call_000_1fd1
    ld h, b
    ld l, c
    call Call_000_2123
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    pop bc
    ret


    dec c
    rrca
    jr nz, jr_01d_5d83

    ld [bc], a
    cp a

jr_01d_5d83:
    inc bc
    adc b
    ld e, l
    ld e, l
    nop
    ld bc, $4cf5
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $15
    ld a, [hl]
    sub $08
    ret c

    rlca
    rlca
    add c
    ld c, a
    jr nc, jr_01d_5d9c

    inc b

jr_01d_5d9c:
    call Call_000_24e8
    call Call_01d_5da8
    ld bc, $4cae
    jp Jump_000_255b


Call_01d_5da8:
    ld e, $5e
    ld a, [bc]
    ld [de], a

jr_01d_5dac:
    inc bc
    inc e
    ld a, [bc]
    ld [de], a
    ret


    dec c
    pop de
    rra
    jr nz, jr_01d_5dbe

    ld h, $00
    ld bc, $320d
    db $10
    ldh a, [rIF]

jr_01d_5dbe:
    ld h, b
    nop
    ld [$fe80], sp
    ld a, [hl+]
    db $10
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    rst $20
    ld e, l
    ld e, l
    add hl, bc
    ld [bc], a
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    inc bc
    ldh a, [$ff5d]
    ld e, l
    add hl, de
    ld [$1626], sp
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4cae
    jp Jump_000_255b


    ld [$fd00], sp
    ld a, [hl+]
    jr jr_01d_5e22

    ret nz

    nop
    ld [hl+], a
    ld d, h
    ld e, [hl]
    dec e
    inc bc
    ld a, e
    ld e, [hl]
    ld e, l
    add hl, bc
    rlca
    dec c
    and $22
    rst $10
    ld a, [bc]
    dec b
    ld [$0f0a], sp
    inc e
    add b
    dec c
    rrca
    jr nz, jr_01d_5e23

    inc c
    cp a
    inc bc
    add c
    ld e, [hl]
    ld e, l
    inc b
    add e
    ld [hl], a
    dec bc
    rrca

jr_01d_5e22:
    ld b, [hl]

jr_01d_5e23:
    nop
    inc h
    ld de, $470f
    db $10
    add hl, bc
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    dec c
    and $22
    rst $10
    dec bc
    dec c
    and $22
    rst $10
    inc c
    dec c
    and $22
    rst $10
    dec c
    ld d, $0f
    ld b, a
    db $10
    add hl, de
    add hl, de
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    jr jr_01d_5e62

    rrca
    ld b, a

jr_01d_5e62:
    db $10
    add hl, de
    rla
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    add hl, de
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    jr jr_01d_5e74

    rrca
    ld b, a

jr_01d_5e74:
    nop
    add hl, de
    rla
    ld [bc], a
    ld b, $54
    ld e, [hl]
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4cae
    jp Jump_000_255b


    ld h, $c0
    ld bc, $c008
    ld bc, $5422
    ld e, [hl]
    dec e
    inc bc
    sbc a
    ld e, [hl]
    ld e, l
    dec c
    and $22
    rst $10
    ld a, [bc]
    dec b
    ld [$9506], sp
    ld e, [hl]
    call Call_000_0da4
    ld bc, $4cae
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $5eb7
    jp Jump_000_0846


    rrca
    ld h, b
    cp a
    rlca
    nop
    nop
    ld [$fe80], sp
    ld a, [hl+]
    db $10
    inc bc
    jp z, Jump_01d_5d5e

    dec de
    ld d, d
    ld b, e
    dec b
    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_01d_5edd

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4cae
    jp Jump_000_255b


jr_01d_5edd:
    jp Jump_000_0bba


    dec c
    pop de
    rra
    ld hl, sp+$00
    dec c
    ld l, $4a
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    ld [bc], a
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    ld d, $08
    nop
    rst $38
    ld h, $80
    nop
    ld b, $13
    ld e, a
    ld [$fe80], sp
    ld h, $60
    nop
    ld b, $13
    ld e, a
    ld [$ff40], sp
    ld h, $e0
    rst $38
    dec c
    ld l, $4a
    dec c
    rrca
    jr nz, jr_01d_5f1e

    inc b
    ld [$5f0d], sp

jr_01d_5f1e:
    jr nz, jr_01d_5f51

    ld c, l
    rrca
    ld h, $02
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    ld c, b
    ld e, a
    ld e, l
    inc b
    ld b, [hl]
    ld [hl], d
    dec bc
    rrca
    ld b, [hl]
    nop
    ld bc, $0d00
    and $22
    rst $10
    ld c, $00

    db $0f, $47, $10, $05, $02, $0f, $47, $00, $05, $02, $06, $3b, $5f

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4cbc

jr_01d_5f51:
    call Call_000_255b
    ret c

    ld bc, $4cd8
    call Call_000_24cd
    bit 7, a
    ret z

    ld h, d
    ld l, $26
    dec [hl]
    jr z, jr_01d_5f77

    ld e, $0d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    sra a
    ld [de], a
    dec e
    ld a, l
    rra
    ld [de], a
    ld hl, $4d34
    jp Jump_000_20be


jr_01d_5f77:
    ld h, d
    jp Jump_000_0bba


    dec c
    cp d
    ld e, a
    ld [de], a
    adc c
    ld e, a
    dec c
    pop de
    rra
    ld a, [$06f4]
    adc [hl]
    ld e, a
    dec c
    pop de
    rra
    inc c
    nop
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    ld h, $40
    rst $38
    ld [$fd80], sp
    ld a, [hl+]
    jr z, jr_01d_5fa1

    or h
    ld e, a
    ld e, l

jr_01d_5fa1:
    add hl, de
    inc b
    ld b, $19
    dec b
    ld [bc], a
    add hl, de
    rst $38
    ld bc, $0519
    ld bc, $ff19
    ld bc, $0519
    ld bc, $cd16
    db $d3
    ld e, $c3
    and h
    dec c
    ld hl, $dd12
    bit 7, [hl]
    jr nz, jr_01d_5fc4

    xor a
    jr jr_01d_5fc8

jr_01d_5fc4:
    res 7, [hl]
    ld a, $01

jr_01d_5fc8:
    ld e, $27
    ld [de], a
    ret


    dec c
    pop de
    rra
    db $f4
    ld c, $04
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    ld h, $80
    rst $38
    ld [$ffc0], sp
    ld a, [hl+]
    ld hl, sp+$03
    dec [hl]
    ld e, l
    ld e, l
    add hl, de
    inc b
    inc b
    dec c
    ld [hl-], a
    db $10
    ld b, b
    add hl, de
    dec b
    inc b
    ld d, $0f
    ld h, b
    cp a
    dec c
    pop de
    rra
    inc b
    nop
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    ld h, $80
    ld bc, $320d
    db $10
    ld a, [$3b22]
    ld e, a
    dec e
    inc bc
    ld h, l
    ld h, b
    ld e, l
    ld bc, $0905
    ld [$e60d], sp
    ld [hl+], a
    rst $10
    inc d
    dec b
    ld [$0f0a], sp
    inc e
    add b
    dec c
    and $22
    rst $10
    dec bc
    dec c
    and $22
    rst $10
    inc c
    dec c
    and $22
    rst $10
    ld d, $0d
    rrca
    jr nz, jr_01d_603b

    inc c
    cp a
    ld h, $80
    nop
    ld [$0000], sp
    ld a, [hl+]
    db $fc
    inc bc
    ld [hl], c

jr_01d_603b:
    ld h, b
    ld e, l
    inc b
    add e
    ld [hl], a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc h
    ld de, $470f
    db $10
    add hl, bc
    ld [$0019], sp
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    ld d, $cd
    and $1e
    call Call_000_0da4
    ld bc, $4cca
    jp Jump_000_255b


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4cca
    jp Jump_000_255b


    rrca
    ld h, b
    cp a
    dec c
    pop de
    rra
    jr nz, @+$0a

    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    ld h, $80
    ld bc, $320d
    db $10
    ldh a, [$ff08]
    add b
    cp $2a
    db $10
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    and e
    ld h, b
    ld e, l
    ld bc, $0005
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4cca
    call Call_000_255b
    ret c

    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ret nz

    ld e, $1d
    ld bc, $60c1
    jp Jump_000_0846


    dec c
    rrca
    jr nz, jr_01d_60d1

    inc c
    cp a
    inc bc
    ld [hl], c
    ld h, b
    ld e, l
    ld h, $20
    nop
    ld [$fe00], sp

jr_01d_60d1:
    ld a, [hl+]
    ld [$8304], sp
    ld [hl], a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc h
    ld de, $470f
    db $10
    add hl, bc
    inc bc
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    nop
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    dec de
    db $fc
    ld h, b
    dec e
    dec c
    pop de
    rra
    ld a, [$0607]
    pop de
    ld e, a
    inc bc
    dec h
    ld h, c
    ld e, l
    nop
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $4c
    ld a, [hl]
    or a
    jr nz, jr_01d_6133

    ld h, d
    jp Jump_000_0bba


jr_01d_6133:
    ld hl, $dd12
    bit 3, [hl]
    ret nz

    call Call_000_2809
    ret c

    ld bc, $4d37
    call Call_000_24e8
    ld e, $04
    ld b, $18
    call Call_000_1f9c
    ret nc

    ld e, $07
    ld b, $18
    call Call_000_1f9c
    ret nc

    ld hl, $dd12
    set 2, [hl]
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $60
    ld [hl], $bf
    ld l, $61
    ld [hl], $c0
    ld e, $01
    ld bc, $5490
    call Call_000_0c3a
    ld a, $80
    ld [$a054], a
    ld e, $48
    ld a, [de]
    ld [$a048], a
    ld h, d
    jp Jump_000_0bba


    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    rrca
    ld h, b
    cp a
    dec c
    ld l, $4a
    ld h, $00
    ld [bc], a
    inc bc
    xor d
    ld h, c
    ld e, l
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    rrca
    ld [bc], a
    add hl, de
    db $10
    ld [bc], a
    ld b, $8f
    ld h, c
    call Call_000_0da4
    ld bc, $4cae
    call Call_000_255b
    ret c

    call Call_01d_4f0b
    ret nc

    ld e, $1d
    ld bc, $61c0
    jp Jump_000_0846


    dec c
    and $22
    rst $10
    add hl, de
    rrca
    ld b, a
    nop
    rrca
    ld h, b
    nop
    ld h, $00
    rst $38
    ld [$fd00], sp
    ld a, [hl+]
    jr jr_01d_61d7

    and $61
    ld e, l

jr_01d_61d7:
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    ld b, $d7
    ld h, c
    call Call_01d_61f4
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $6207
    jp Jump_000_0846


Call_01d_61f4:
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4cae
    call Call_000_255b
    jr c, jr_01d_6205

    jp Jump_000_1a25


jr_01d_6205:
    pop hl
    ret


    inc h
    ld b, c
    ld h, $60
    rst $38
    ld [$fe80], sp
    ld a, [hl+]
    jr jr_01d_6234

    ld b, h
    ld h, d
    dec e
    inc bc
    inc e
    ld h, d
    ld e, l
    ld b, $d7
    ld h, c
    call Call_01d_61f4
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $622a
    jp Jump_000_0846


    inc h
    ld b, c
    ld [hl+], a
    ld b, h
    ld h, d
    dec e
    inc bc
    ld a, $62
    ld e, l

jr_01d_6234:
    add hl, de
    rlca
    jr z, jr_01d_6247

    inc e
    add b
    dec de
    ld h, [hl]
    ld c, c
    inc bc
    ld bc, $4cae
    jp Jump_000_255b


    dec c
    and $22

jr_01d_6247:
    rst $10
    rla
    dec b
    inc b
    ld b, $44
    ld h, d
    rrca
    ld h, b
    cp a
    inc b
    add e
    ld [hl], a
    dec bc
    rrca
    ld b, [hl]
    nop
    dec c
    pop de
    rra
    db $10
    ld [$0026], sp
    ld bc, $320d
    db $10
    db $10
    ld [$fe00], sp
    ld a, [hl+]
    jr nz, jr_01d_626d

    rst $20
    ld e, l
    ld e, l

jr_01d_626d:
    rrca
    ld b, a
    db $10
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    rrca
    ld b, a
    nop
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld h, b
    nop
    ld [hl+], a
    ld b, h
    ld h, d
    dec e
    inc bc
    ld a, $62
    ld e, l
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [hl+], a
    rrca
    inc e
    add b
    dec de
    ld h, [hl]
    ld c, c
    inc bc
    dec de
    ld h, [hl]
    ld c, c
    inc bc
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    dec c
    db $db
    ld h, d
    db $d3
    ld h, d
    rlca
    nop
    nop
    ld [$fe00], sp
    ld a, [hl+]
    db $10
    inc bc
    or h
    ld e, a
    ld e, l
    add hl, de
    inc b
    inc bc
    add hl, de
    dec b
    inc bc
    add hl, de
    inc b
    ld [bc], a
    ld d, $f8
    db $fc
    cp $f8
    ld [bc], a
    ld hl, sp+$08
    db $fc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld b, h
    ld c, l
    call Call_000_0647
    and $03
    rlca
    add c
    ld c, a
    jr nc, jr_01d_62ef

    inc b

jr_01d_62ef:
    call Call_000_24e8
    pop bc
    ret


    rrca
    ld h, b
    nop
    dec c
    pop de
    rra
    jr nz, @+$0a

    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    ld h, $80
    nop
    ld [$fe00], sp
    ld a, [hl+]
    db $10
    inc bc
    ld e, $63
    ld e, l
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    ld b, $0f
    ld h, e
    call Call_01d_61f4
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $632c
    jp Jump_000_0846


    inc h
    ld b, c
    ld h, $40
    nop
    ld [$ff00], sp
    ld a, [hl+]
    db $10
    ld [hl+], a
    ld b, h
    ld h, d
    dec e
    inc bc
    ld b, c
    ld h, e
    ld e, l
    ld b, $0f
    ld h, e
    call Call_01d_61f4
    bit 7, a
    ret z

    ld e, $1d
    ld bc, $634f
    jp Jump_000_0846


    inc h
    ld b, c
    ld [hl+], a
    ld b, h
    ld h, d
    dec e
    inc bc
    ld a, $62
    ld e, l
    add hl, de
    rlca
    jr nz, jr_01d_636c

    inc e
    add b
    dec de
    ld h, [hl]
    ld c, c
    inc bc
    rst $38
    ld [bc], a
    nop
    nop
    nop
    cp d
    ld l, e
    dec e
    nop

jr_01d_636c:
    nop
    nop
    cp d
    ld l, e
    dec e
    nop
    dec bc
    inc bc
    inc b
    ld [$040b], sp
    add hl, bc
    rlca
    ld a, [bc]
    dec bc
    rlca
    inc b
    inc bc
    dec c
    dec bc
    inc b
    inc bc
    inc b
    dec b
    ld bc, $0507
    ld bc, $0304
    ld b, $05
    inc b
    ld [bc], a
    dec bc
    inc b
    ld [bc], a
    rrca
    dec bc
    ld c, $03
    dec b
    rlca
    ld bc, $0604
    ld [bc], a
    dec bc
    inc b
    ld b, $07
    inc bc
    ld bc, $0b02
    inc b
    ld b, $01
    rlca
    inc c
    dec bc
    ld c, $07
    inc bc
    ld b, $06
    ld [bc], a
    dec bc
    ld b, $06
    rlca
    inc b
    rlca
    ld b, $06
    inc b
    rlca
    ld [bc], a
    dec bc
    inc b
    rlca
    ld b, $06
    ld b, $04
    rlca
    ld [bc], a
    rst $38
    daa
    dec c
    or [hl]
    db $10
    daa
    rla
    or $0d
    rrca
    ld b, h
    rst $38
    dec c
    ldh [$ff35], a
    adc h
    nop
    sub b
    nop
    rrca
    ccf
    jr jr_01d_63e8

    ld hl, $0d65
    ldh [c], a
    ld h, h
    dec c
    rla
    ld h, l
    nop
    db $fd
    dec c
    ld [de], a
    ld h, l

jr_01d_63e8:
    dec c
    rrca
    jr nz, jr_01d_63f4

    inc c
    ccf
    ld [hl+], a
    dec b
    ld h, h
    dec e
    inc bc
    rrca

jr_01d_63f4:
    ld h, h
    ld e, l
    rlca
    nop
    nop
    ld [$fe00], sp
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$fc06], sp
    ld h, e
    dec c
    and $22
    reti


    jr @+$07

    ld b, $06
    dec b
    ld h, h
    call Call_01d_64b0
    call Call_000_0da4
    ld e, $07
    ld a, [de]
    ld hl, $db53
    sub [hl]
    ld b, a
    inc e
    ld a, [de]
    inc hl
    sbc [hl]
    ret nc

    ld a, b
    cp $e8
    ret nc

    ld e, $1d
    ld bc, $642e
    jp Jump_000_0846


    ld [$0000], sp
    inc bc
    ld b, e
    ld h, h
    ld e, l
    dec b
    db $10
    ld [$0040], sp
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$3a06], sp
    ld h, h
    call Call_01d_64b0
    call Call_000_0da4
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    ld b, a
    inc e
    inc hl
    ld a, [de]
    sbc [hl]
    ret c

    ld a, b
    cp $18
    ret c

    ld e, $1d
    ld bc, $6462
    jp Jump_000_0846


    rrca
    ld h, b
    dec l
    ld [$0000], sp
    dec c
    ld e, a
    ld [hl+], a
    dec c
    ld [hl], d
    ld [hl+], a
    dec c
    ld h, $65
    ld [hl], c
    ld h, e
    dec c
    rst $30
    ld h, l
    dec c
    jr nc, jr_01d_64de

    ld c, $10
    ld b, [hl]
    ld h, l
    ld a, [de]
    ld h, [hl]
    inc bc
    ld h, a
    ld d, d
    ld l, b
    sub l
    ld l, b
    ret c

    ld l, c
    push af
    ld l, c
    ld b, b
    ld l, d
    and $6a
    ldh a, [c]
    ld l, d
    ld a, [$986a]
    ld h, a
    ld b, $6b
    ld c, $6b
    ld a, [de]
    ld l, e
    ld [hl+], a
    ld l, e
    ld b, $6e
    ld h, h
    call Call_01d_64b0
    ld bc, $6363
    call Call_000_233c
    ret nc

    ld e, $1d
    ld bc, $6b2a
    jp Jump_000_0846


Call_01d_64b0:
    ld hl, $a07a
    bit 7, [hl]
    jr z, jr_01d_64cb

    ld hl, $dd19
    ld a, [hl]
    add $90
    ld [hl], a
    jr nc, jr_01d_64cb

    ld hl, $a079
    ld a, [hl]
    add $01
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a

Jump_01d_64cb:
jr_01d_64cb:
    ld hl, $dd17
    ld a, [$db53]
    sub [hl]
    ld [$dd18], a
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $07
    ld a, [de]
    add c
    ld [de], a

jr_01d_64de:
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ld a, [$db53]
    ld [$dd17], a
    ret


Call_01d_64e9:
    ld hl, $dd19
    ld a, [hl]
    add $08
    ld [hl], a
    jp nc, Jump_01d_64cb

    ld hl, $a079
    ld a, [hl]
    add $01
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    jp Jump_01d_64cb


Call_01d_6501:
    ld a, [$dd18]
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $07
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ret


    ld a, d
    ld [$dd27], a
    ret


    ld hl, $a079
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    xor a
    ld [$dd16], a
    ret


    ld e, $3d
    ld a, [bc]
    ld [de], a
    inc bc
    inc e
    ld a, [bc]
    ld [de], a
    inc bc
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    cp $ff
    ret z

    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    dec c
    ld a, h
    ld h, a
    ld [de], a
    ld d, d
    ld l, b
    rrca
    ld b, c
    nop
    dec bc
    adc a
    ld h, l
    dec c
    ld h, c
    ld h, l
    ld e, l
    ld h, l
    ld de, $654f
    ld b, $73
    ld h, h
    add b
    nop
    ret nz

    nop
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    cp $02
    jr nc, jr_01d_6589

    push hl
    rlca
    ld h, d
    ld l, $41
    add [hl]
    inc [hl]
    pop hl
    add l
    ld l, a
    jr nc, jr_01d_657b

    inc h

jr_01d_657b:
    ld a, [hl]
    or a
    jr z, jr_01d_6589

    ld e, a
    call Call_000_0647
    cp e
    jr c, jr_01d_6589

    xor a
    jr jr_01d_658b

jr_01d_6589:
    ld a, $01

jr_01d_658b:
    ld e, $27
    ld [de], a
    ret


    inc bc
    cp l
    ld h, l
    ld e, l
    rlca
    nop
    nop
    ld [$ff80], sp
    ld a, [hl+]
    ld [$0119], sp
    ld [$0219], sp
    ld [$0119], sp
    ld [$0219], sp
    ld [$f82a], sp
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$0119], sp
    ld [$0201], sp
    dec b
    ld bc, $0c0d
    ld h, [hl]
    ld de, $65b4
    inc c

Call_01d_65bd:
    call Call_01d_64b0
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6363
    call Call_000_233c
    ret nc

    ld e, $1d
    ld bc, $6b2a
    call Call_000_0846
    scf
    ret


Call_01d_65d7:
    ld hl, $dd16
    bit 0, [hl]
    ret z

    ld e, $15
    ld a, [de]
    ld hl, $65eb
    add l
    ld l, a
    jr nc, jr_01d_65e8

    inc h

jr_01d_65e8:
    ld a, [hl]
    ld [de], a
    ret


    inc bc
    inc b
    dec b
    inc bc
    inc b
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    dec bc

Jump_01d_65f7:
    ld hl, $db51
    ld e, $04
    ld a, [de]
    sub [hl]
    cp $50
    jr c, jr_01d_6606

    ld a, $c0
    jr jr_01d_6608

jr_01d_6606:
    ld a, $40

jr_01d_6608:
    ld e, $45
    ld [de], a
    ret


    call Call_01d_6763
    jr c, jr_01d_6614

    xor a
    jr jr_01d_6616

jr_01d_6614:
    ld a, $01

jr_01d_6616:
    ld e, $27
    ld [de], a
    ret


    dec c
    ld [hl], d
    ld h, [hl]
    dec c
    and h
    ld h, [hl]
    db $10
    ld b, c
    ld a, [de]
    ccf
    dec c
    sbc $66
    ld h, $40
    ld bc, $320d
    db $10
    ldh a, [$ff03]
    ld a, $66
    ld e, l
    add hl, bc
    dec b
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    ld a, [bc]
    ld b, $73
    ld h, h
    call Call_01d_64b0
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $6363
    call Call_000_233c
    jr c, jr_01d_6660

    call Call_01d_65d7
    call Call_01d_674e
    ret nc

    call Call_01d_4f04
    call Call_01d_6763
    ret nc

    jp Jump_01d_6668


jr_01d_6660:
    ld e, $1d
    ld bc, $6b2a
    jp Jump_000_0846


Jump_01d_6668:
    xor a
    ld e, $12
    ld [de], a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


    push bc
    ld hl, $dd17
    ld e, $07
    ld a, [de]
    sub [hl]
    ld b, a
    ld e, $41
    sub $18
    jr nc, jr_01d_6683

    cpl
    inc a

jr_01d_6683:
    cp $08
    jr c, jr_01d_668b

    ld a, $18
    ld [de], a
    inc e

jr_01d_668b:
    ld a, b
    sub $40
    jr nc, jr_01d_6692

    cpl
    inc a

jr_01d_6692:
    cp $08
    jr c, jr_01d_669f

    ld a, $40
    ld [de], a
    ld a, e
    cp $42
    jr z, jr_01d_66a2

    inc e

jr_01d_669f:
    ld a, $68
    ld [de], a

jr_01d_66a2:
    pop bc
    ret


    call Call_000_0647
    cp $80
    jr c, jr_01d_66b9

    call Call_000_0647
    and $01
    ld e, $41
    add e
    ld e, a
    ld a, [de]
    ld e, $41
    ld [de], a
    ret


jr_01d_66b9:
    push bc
    ld b, $a0
    ld c, $07
    ld hl, $db53
    ld a, [bc]
    sub [hl]
    ld b, a
    ld e, $41
    ld a, [de]
    sub b
    jr nc, jr_01d_66cc

    cpl
    inc a

jr_01d_66cc:
    ld c, a
    inc e
    ld a, [de]
    sub b
    jr nc, jr_01d_66d4

    cpl
    inc a

jr_01d_66d4:
    cp c
    jr c, jr_01d_66d8

    dec e

jr_01d_66d8:
    ld a, [de]
    ld e, $41
    ld [de], a
    pop bc
    ret


    ld e, $07
    ld a, [de]
    ld hl, $dd17
    sub [hl]
    ld h, d
    ld l, $41
    sub [hl]
    jr c, jr_01d_66f0

    ld hl, $ff00
    jr jr_01d_66f5

jr_01d_66f0:
    ld hl, $0100
    cpl
    inc a

jr_01d_66f5:
    cp $3c
    jr c, jr_01d_66fb

    sla h

jr_01d_66fb:
    ld e, $0f
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld h, $00
    ld [bc], a
    ld [$0000], sp
    inc bc
    ld sp, $5d67
    add hl, de
    inc b
    ld b, $19
    dec b
    ld b, $19
    inc b
    ld b, $19
    dec b
    ld b, $19
    inc c
    inc c
    dec c
    ld h, d
    ld b, d
    add hl, de
    ld bc, $1906
    ld [bc], a
    ld b, $19
    ld bc, $1906
    ld [bc], a
    ld b, $0d
    sub d
    ld h, a
    ld b, $73
    ld h, h
    call Call_01d_64b0
    call Call_000_0da4
    ld bc, $6363
    call Call_000_233c
    jr c, jr_01d_6746

    call Call_01d_674e
    ret nc

    jp Jump_01d_4efd


jr_01d_6746:
    ld e, $1d
    ld bc, $6b2a
    jp Jump_000_0846


Call_01d_674e:
    ld e, $0e
    ld a, [de]
    rlca
    ld hl, $db51
    ld e, $04
    ld a, [de]
    jr c, jr_01d_675f

    sub [hl]
    cp $8b
    ccf
    ret


jr_01d_675f:
    sub [hl]
    cp $15
    ret


Call_01d_6763:
    ld e, $10
    ld a, [de]
    rlca
    ld hl, $db53
    ld e, $07
    ld a, [de]
    jr c, jr_01d_6776

    sub [hl]
    ld h, d
    ld l, $3f
    cp [hl]
    ccf
    ret


jr_01d_6776:
    sub [hl]
    ld h, d
    ld l, $3f
    cp [hl]
    ret


    ld hl, $dd16
    bit 0, [hl]
    jr nz, jr_01d_6786

    xor a
    jr jr_01d_6788

jr_01d_6786:
    ld a, $01

jr_01d_6788:
    ld e, $27
    ld [de], a
    ret


    ld hl, $dd16
    set 0, [hl]
    ret


    ld hl, $dd16
    res 0, [hl]
    ret


    dec c
    ld a, h
    ld h, a
    ld [de], a
    ld [hl], e
    ld h, h
    dec c
    adc h
    ld h, a
    inc bc
    cp l
    ld h, l
    ld e, l
    rlca
    nop
    nop
    ld [$ff80], sp
    ld a, [hl+]
    ld [$0019], sp
    jr nz, jr_01d_67db

    ld hl, sp+$19
    inc c
    inc b
    add hl, de
    inc bc
    inc e
    ld a, [hl+]
    ld [$1624], sp
    dec c
    cp d
    ld [hl+], a
    reti


    nop
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    dec c
    adc $54
    add hl, de
    db $10
    jr jr_01d_67fe

    ld hl, sp+$19
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a

jr_01d_67db:
    inc bc
    db $ed
    ld h, a
    ld e, l
    add hl, de
    inc bc
    db $10
    dec b
    ld bc, $0c0d
    ld h, [hl]
    ld de, $67e2
    ld b, $73
    ld h, h
    call Call_01d_65bd
    ret c

    call Call_000_228d
    ret nc

    ld e, $1d
    ld bc, $67fd
    jp Jump_000_0846


    inc bc

jr_01d_67fe:
    sbc [hl]
    ld h, h
    ld e, l
    inc h
    ld a, [hl-]
    dec c
    cp d
    ld [hl+], a
    reti


    nop
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    dec c
    adc $54
    add hl, de
    db $10
    jr @+$1b

    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    inc bc
    dec l
    ld l, b
    ld e, l
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    inc b
    ld b, $24
    ld l, b
    call Call_01d_64b0
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6363
    call Call_000_233c
    jr c, jr_01d_684a

    call Call_01d_6763
    ret nc

    ld e, $1d
    ld bc, $6473
    jp Jump_000_0846


jr_01d_684a:
    ld e, $1d
    ld bc, $6b2a
    jp Jump_000_0846


    rrca
    ld b, c
    nop
    dec bc
    ld h, a
    ld l, b
    dec c
    ld h, c
    ld h, l
    ld h, e
    ld l, b
    ld de, $6855
    ld b, $73
    ld h, h
    add b
    nop
    ret nz

    nop
    inc bc
    cp l
    ld h, l
    ld e, l
    rlca
    nop
    nop
    ld [$ff80], sp
    ld a, [hl+]
    ld [$0419], sp
    ld [$0519], sp
    ld [$0419], sp
    ld [$0519], sp
    ld [$f82a], sp
    add hl, de
    inc b
    ld [$0519], sp
    ld [$0419], sp
    ld [$0501], sp
    dec b
    ld bc, $0c0d
    ld h, [hl]
    ld de, $688c
    inc c
    rrca
    ld b, d
    nop
    dec c
    call Call_000_1268
    xor b
    ld l, b
    rlca
    nop
    nop
    inc bc
    cp l
    ld l, b
    ld e, l
    add hl, de
    inc bc
    db $10
    ld bc, $0f03
    ld h, $00
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    sbc [hl]
    ld h, h
    ld e, l
    inc h
    ld a, [bc]
    dec c
    and $22
    reti


    ld bc, $cd00
    cp l
    ld h, l
    ret c

    call Call_000_228d
    ret nc

    ld e, $1d
    ld bc, $6915
    jp Jump_000_0846


    ld e, $07
    ld hl, $dd17
    ld a, [de]
    sub [hl]
    cp $2c
    jr c, jr_01d_68f9

    cp $54
    jr nc, jr_01d_6900

    ld a, $01
    ld e, $42
    ld [de], a
    call Call_000_0647
    cp $40
    jr c, jr_01d_6900

    cp $80
    jr c, jr_01d_68f9

    ld a, $01
    ld e, $27
    ld [de], a
    ld a, $ff
    ld e, $42
    ld [de], a
    jp Jump_01d_6668


jr_01d_68f9:
    ld hl, $690f
    ld a, $01
    jr jr_01d_6904

jr_01d_6900:
    ld hl, $6912
    xor a

jr_01d_6904:
    ld e, $41
    ld [de], a
    call Call_000_20be
    xor a
    ld e, $27
    ld [de], a
    ret


    nop
    ld [bc], a
    ldh [rP1], a
    cp $20
    inc bc
    dec a
    ld l, c
    ld e, l
    inc h
    ld a, [hl-]
    dec c
    cp d
    ld [hl+], a
    reti


    nop
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    dec c
    adc $54
    add hl, de
    db $10
    jr @+$1b

    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld bc, $0603
    xor b
    ld l, b
    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_01d_6948

    call Call_01d_65bd
    ret c

jr_01d_6948:
    ld h, d
    ld l, $1f
    ld [hl], $5d
    inc l
    ld [hl], $64
    inc l
    ld [hl], $9e
    ret


    rrca
    ld b, a
    nop
    inc bc
    sbc [hl]
    ld h, h
    ld e, l
    dec c
    cp l
    ld l, c
    inc h
    ld a, $0d
    cp d
    ld [hl+], a
    reti


    nop
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    ld c, $02
    dec c
    adc $54
    ld h, $00
    rst $38
    dec c
    ld [hl-], a
    db $10
    db $10
    dec c
    sbc l
    ld l, c
    inc bc
    add hl, de
    ld l, d
    ld e, l
    add hl, de
    add hl, bc
    db $10
    add hl, bc
    inc b
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    ld [$0000], sp
    add hl, bc
    inc b
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    ld b, $73
    ld h, h
    ld e, $42
    ld a, [de]
    cp $ff
    jp z, Jump_01d_6668

    ld hl, $69b9
    ld e, $41
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_01d_69b1

    inc h

jr_01d_69b1:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    add b
    nop
    add b
    rst $38
    push bc
    ld e, $42
    ld a, [de]
    cp $ff
    jr nz, jr_01d_69c9

    ld a, $06
    jr jr_01d_69d1

jr_01d_69c9:
    rlca
    ld b, a
    ld e, $41
    ld a, [de]
    add b
    add $07

jr_01d_69d1:
    ld e, $d9
    call Call_000_2319
    pop bc
    ret


    jr jr_01d_69dd

    sbc [hl]
    ld h, h
    ld e, l

jr_01d_69dd:
    add hl, bc
    inc bc
    dec bc
    and $69
    ld a, [bc]
    ld b, $73
    ld h, h
    add hl, de
    inc bc
    inc b
    dec c
    and $22
    reti


    dec bc
    add hl, de
    rrca
    inc b
    add hl, de
    inc b
    inc c
    inc c
    add hl, bc
    inc bc
    dec c
    ld [hl], d
    ld h, [hl]
    dec c
    and h
    ld h, [hl]
    db $10
    ld b, c
    ld a, [de]
    ccf
    dec c
    sbc $66
    ld h, $40
    ld bc, $320d
    db $10
    ldh a, [$ff03]
    add hl, de
    ld l, d
    ld e, l
    dec bc
    and $69
    dec bc
    and $69
    ld a, [bc]
    ld b, $73
    ld h, h
    call Call_01d_64b0
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $6363
    call Call_000_233c
    jr c, jr_01d_6a38

    call Call_01d_674e
    ret nc

    call Call_01d_4f04
    call Call_01d_6763
    ret nc

    jp Jump_01d_6668


jr_01d_6a38:
    ld e, $1d
    ld bc, $6b2a
    jp Jump_000_0846


    inc bc
    sbc [hl]
    ld h, h
    ld e, l
    add hl, bc
    ld b, $19
    rrca
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    ld a, [bc]
    inc h
    inc c
    inc bc
    sbc c
    ld l, d
    ld e, l
    dec c
    or h
    ld l, d
    ld h, $00
    inc b
    dec c
    ld [hl-], a
    db $10
    ldh a, [$ff0d]
    pop de
    ld l, d
    adc l
    ld l, d
    add hl, bc
    ld [$0419], sp
    inc b
    add hl, de
    dec b
    inc b
    ld a, [bc]
    ld h, $00
    cp $29
    nop
    dec c
    pop de
    ld l, d
    sub e
    ld l, d
    add hl, de
    add hl, bc
    ld b, b
    dec c
    ld [hl-], a
    db $10
    jr nz, jr_01d_6a85

    nop
    nop
    ld a, [hl+]
    nop
    add hl, bc
    inc b
    add hl, de
    inc b

jr_01d_6a85:
    inc b
    add hl, de
    dec b
    inc b
    ld a, [bc]
    ld b, $73
    ld h, h
    ld b, b
    rst $38
    ld b, $c0
    nop
    ld a, [$0240]
    xor $c0
    db $fd
    ld [de], a
    call Call_01d_64b0
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6363
    call Call_000_233c
    ret nc

    ld e, $1d
    ld bc, $6b2a
    jp Jump_000_0846


    ld e, $07
    ld hl, $dd17
    ld a, [de]
    sub [hl]
    cp $2c
    jr c, jr_01d_6acc

    cp $54
    jr nc, jr_01d_6ac8

    call Call_000_202b
    jr c, jr_01d_6acc

jr_01d_6ac8:
    ld a, $01
    jr jr_01d_6acd

jr_01d_6acc:
    xor a

jr_01d_6acd:
    ld e, $41
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $41
    ld a, [de]
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jp nc, Jump_000_20be

    inc h
    jp Jump_000_20be


    jr z, @+$15

    ld b, b
    ld b, b
    ld l, d
    inc de
    add b
    inc bc
    ld h, a
    ld b, $1a
    ld h, [hl]
    jr z, @+$15

    add b
    ld d, d
    ld l, b
    ld b, $1a
    ld h, [hl]
    jr z, @+$15

    add b
    ld d, d
    ld l, b
    inc de
    ret nz

    ld a, [de]
    ld h, [hl]
    ld b, $03
    ld h, a
    jr z, @+$15

    add b
    inc bc
    ld h, a
    ld b, $f5
    ld l, c
    jr z, @+$15

    add b
    ld b, b
    ld l, d
    inc de
    ret nz

    inc bc
    ld h, a
    ld b, $1a
    ld h, [hl]
    jr z, jr_01d_6b2f

    add b
    ld b, b
    ld l, d
    ld b, $d8
    ld l, c
    jr z, @+$15

    add b
    ld a, [de]
    ld h, [hl]
    ld b, $03
    ld h, a
    dec c
    or h
    ld l, e
    rrca
    ld b, c

jr_01d_6b2f:
    ld bc, $4503
    ld l, e
    ld e, l
    inc e
    ld a, [$047c]
    add hl, bc
    ld b, $19
    rlca
    ld [bc], a
    add hl, de
    ld [$0a02], sp
    rrca
    ld b, c
    nop
    nop
    call Call_01d_64b0
    call Call_01d_65d7
    call Call_01d_6b67
    ret nz

    ld hl, $dd16
    res 4, [hl]
    ld b, $00
    ld e, $4c
    ld a, [de]
    cp $5b
    ret nc

    inc b
    cp $3d
    jr nc, jr_01d_6b62

    inc b

jr_01d_6b62:
    ld e, $5c
    ld a, b
    ld [de], a
    ret


Call_01d_6b67:
    ld bc, $6363
    call Call_000_255b
    ld e, $41
    ld a, [de]
    or a
    ret nz

    call Call_01d_6b9d
    call Call_000_0c71
    call Call_01d_6b86
    ld h, d
    ld l, $60
    ld [hl], $3f
    ld l, $44
    ld [hl], $18
    xor a
    ret


Call_01d_6b86:
    ld hl, $dd21
    ld e, $03
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


Call_01d_6b9d:
    ld hl, $dd21
    ld e, $03
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    ret


    ld hl, $dd16
    set 4, [hl]
    ret


    dec c
    xor b
    ld [hl], h
    rrca
    ld h, b
    ccf
    ld [hl+], a
    rst $28
    ld l, h
    dec e
    inc bc
    sbc [hl]
    ld h, h
    ld e, l
    inc h
    ld a, [bc]
    dec c
    or [hl]
    db $10
    rst $38
    add hl, de
    dec bc
    ld b, b
    rrca
    inc e
    add b
    inc e
    adc h
    ld b, a
    inc bc
    dec c
    or [hl]
    db $10
    ld c, $04
    dec h
    ld b, a
    db $10
    rrca
    ld b, b
    nop
    rrca
    ld h, $00
    inc bc
    ld [hl+], a
    ld l, h
    ld e, l
    add hl, bc
    inc b
    add hl, de
    rst $38
    ld [bc], a
    add hl, de
    ld [de], a
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc b
    add hl, de
    inc de
    ld [bc], a
    add hl, de
    ld [de], a
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [$1319], sp
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_01d_6c14

    sbc b
    ld l, h
    inc bc
    ld c, h
    ld l, h
    ld e, l
    add hl, de
    dec d
    ld bc, $1419
    inc bc
    add hl, de

jr_01d_6c14:
    rla
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    dec c
    db $db
    ld l, h
    ld de, $6c0d
    ld b, $06
    ld l, l
    call Call_01d_64b0
    ld bc, $6363
    call Call_000_255b
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_01d_6c34

    dec a
    ld [de], a
    ret


jr_01d_6c34:
    ld a, $08
    ld [de], a
    ld e, $40
    ld a, [de]
    add $14
    ld e, $d9
    call Call_000_2319
    ld e, $40
    ld a, [de]
    inc a
    cp $04
    jr c, jr_01d_6c4a

    xor a

jr_01d_6c4a:
    ld [de], a
    ret


    call Call_01d_64b0
    call Call_000_21d8
    call Call_000_21c5
    call Call_000_0da4
    ld bc, $6363
    call Call_000_255b
    ld hl, $db51
    ld e, $04
    ld a, [de]
    sub [hl]
    cp $50
    ld e, $3c
    ld a, [de]
    jr c, jr_01d_6c79

    rlca
    jr c, jr_01d_6c7c

jr_01d_6c6f:
    ld hl, $dd16
    set 2, [hl]
    call Call_01d_4f04
    jr jr_01d_6c7c

jr_01d_6c79:
    rlca
    jr c, jr_01d_6c6f

jr_01d_6c7c:
    ld hl, $db53
    ld e, $07
    ld a, [de]
    sub [hl]
    cp $40
    ld e, $3a
    ld a, [de]
    jr c, jr_01d_6c94

    rlca
    ret c

jr_01d_6c8c:
    ld hl, $dd16
    set 3, [hl]
    jp Jump_01d_6668


jr_01d_6c94:
    rlca
    ret nc

    jr jr_01d_6c8c

    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $50
    jr nc, jr_01d_6ca7

    ld a, $40
    jr jr_01d_6ca9

jr_01d_6ca7:
    ld a, $c0

jr_01d_6ca9:
    ld e, $45
    ld [de], a
    ld hl, $6cd8
    call Call_000_21a5
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    cp $40
    ld hl, $6cd8
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld e, $39
    jr c, jr_01d_6cd2

    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl]
    cpl
    adc $00
    ld [de], a
    ret


jr_01d_6cd2:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    stop
    ld [bc], a
    ld hl, $dd16
    bit 2, [hl]
    jr z, jr_01d_6cea

    bit 3, [hl]
    jr z, jr_01d_6cea

    ld a, $01
    jr jr_01d_6ceb

jr_01d_6cea:
    xor a

jr_01d_6ceb:
    ld e, $27
    ld [de], a
    ret


    dec c
    rst $30
    ld l, h
    dec b
    inc b
    ld b, $ef
    ld l, h
    push bc
    call Call_000_0647
    and $07
    add $0c
    ld e, $d9
    call Call_000_2319
    pop bc
    ret


    inc bc
    sbc [hl]
    ld h, h
    ld e, l
    add hl, de
    inc d
    inc b
    ld bc, $0317
    rla
    ld l, l
    ld e, l
    dec c
    jr nc, jr_01d_6d83

    nop
    call Call_01d_64b0
    ld bc, $6363
    call Call_000_255b
    call Call_000_2422
    ld a, [$cd4d]
    or a
    ret nz

    ld e, $1d
    ld bc, $6dde
    jp Jump_000_0846


    push bc
    ld hl, $cd4d
    ld [hl], $01
    inc l
    ld a, $60
    ld [hl+], a
    ld a, $88
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld [hl], $80
    inc l
    ld [hl], $06
    pop bc
    ret


    rst $38
    ld [bc], a
    nop
    nop
    nop
    add a
    ld [hl], h
    dec e
    nop
    nop
    nop
    add a
    ld [hl], h
    dec e
    adc d
    ld l, l
    sub e
    ld l, l
    sbc h
    ld l, l
    and a
    ld l, l
    or d
    ld l, l
    cp a
    ld l, l
    call z, $d56d
    ld l, l
    dec bc
    rlca
    ld bc, $0405
    dec bc
    ld b, $01
    ld [$0b04], sp
    ld b, $04
    rlca
    ld bc, $070b
    inc bc
    ld [$0704], sp
    ld bc, $060b
    ld bc, $0305

jr_01d_6d83:
    dec bc
    ld b, $02
    ld b, $04
    rst $38
    ld [hl+], a
    ld c, $00
    ld bc, $02ff
    nop
    inc bc
    nop
    rst $38
    ld c, $00
    ld bc, $03ff
    nop
    ld [bc], a
    nop
    rst $38
    ld c, $01
    ld [bc], a
    rst $38
    inc b
    dec b
    nop
    ld b, $07
    ld bc, $0eff
    ld bc, $ff02
    ld b, $07
    nop
    inc b
    dec b
    ld bc, $0eff
    ld [bc], a
    inc bc
    dec b
    add hl, bc
    inc c
    ld [$0b00], sp
    dec c
    ld a, [bc]
    nop
    rst $38
    ld c, $02
    inc bc
    dec b
    dec bc
    dec c
    ld a, [bc]
    nop
    add hl, bc
    inc c
    ld [$ff00], sp
    ld c, $02
    inc bc
    inc b
    ld [$090c], sp
    nop
    rst $38
    ld c, $02
    inc bc
    inc b
    ld a, [bc]
    dec c
    dec bc
    nop
    rst $38
    rrca
    ld c, d
    nop
    rrca
    ld c, e
    nop
    rrca
    ld e, e
    ld bc, $4c0f
    ld a, b
    dec c
    ld e, a
    ld [hl+], a
    dec c
    ld [hl], d
    ld [hl+], a
    dec c
    ldh [$ff35], a
    ld d, b
    nop
    ld b, b
    nop
    dec c
    ld hl, $0d65
    ld l, d
    ld l, [hl]
    dec c
    rla
    ld h, l
    stop
    dec c
    and $22
    reti


    inc hl
    inc b
    ld [hl], a
    ld c, d
    db $10
    inc bc
    ld e, b
    ld l, [hl]
    ld e, l
    add hl, de
    ld h, $10
    daa
    add hl, de
    daa
    ld [$0519], sp
    ld [$0119], sp
    ld [$0f0d], sp
    jr nz, jr_01d_6e2b

    ld a, [bc]
    dec l
    dec c
    ld h, $65
    ld l, b
    ld l, l
    dec c
    ld [hl], b
    ld l, [hl]
    inc d

jr_01d_6e2b:
    rst $38
    ld [hl+], a
    ld l, [hl]
    dec c
    cp a
    ld l, [hl]
    dec c
    ld e, e
    ld l, a
    dec c
    db $d3
    ld l, [hl]
    ld c, $0e
    rst $30
    ld l, [hl]
    rst $30
    ld l, [hl]
    ld d, b
    ld [hl], b
    add h
    ld [hl], b
    sub [hl]
    ld [hl], b
    xor [hl]
    ld [hl], b
    add $70
    sbc $70
    or $70
    ld c, $71
    ld h, $71
    ld a, $71
    ld d, [hl]
    ld [hl], c
    sub c
    ld [hl], c
    ld b, $27
    ld l, [hl]

Call_01d_6e58:
    call Call_01d_64e9
    ld bc, $6d4a
    call Call_000_233c
    ret nc

    ld e, $1d
    ld bc, $7434
    jp Jump_000_0846


    ld a, $11
    ld [$dd1a], a
    ret


    push bc
    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a

Jump_01d_6e78:
jr_01d_6e78:
    ld a, [hl+]
    cp $ff
    jr nz, jr_01d_6e82

    ld e, $27
    ld [de], a
    pop bc
    ret


jr_01d_6e82:
    cp $0b
    jr nz, jr_01d_6e90

    call Call_000_0647
    and $01
    ld e, $43
    ld [de], a
    jr jr_01d_6e78

jr_01d_6e90:
    cp $05
    jr nc, jr_01d_6eb9

    or a
    jr z, jr_01d_6ead

    sub $01
    rlca
    ld c, a
    ld e, $5c
    ld a, [de]
    or a
    jr nz, jr_01d_6ea7

    ld e, $43
    ld a, [de]
    add c
    jr jr_01d_6ead

jr_01d_6ea7:
    call Call_000_0647
    and $01
    add c

jr_01d_6ead:
    ld e, $27
    ld [de], a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    pop bc
    ret


jr_01d_6eb9:
    ld [$dd1b], a
    jp Jump_01d_6e78


    ld e, $27
    ld a, [de]
    rlca
    ld hl, $6d58
    add l
    ld l, a
    jr nc, jr_01d_6ecb

    inc h

jr_01d_6ecb:
    ld a, [hl+]
    ld e, $3f
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $3f
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    cp $0e
    jr nz, jr_01d_6eec

    ld a, [hl+]
    ld [$dd1c], a
    ld a, [hl+]
    ld [$dd1d], a
    ld a, [hl+]
    ld [$dd1e], a
    ld a, [hl+]

jr_01d_6eec:
    ld e, $27
    ld [de], a
    ld e, $3f
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    dec c
    ld d, l
    ld l, a
    dec c
    reti


    ld l, a
    dec c
    db $d3
    ld l, a
    ld de, $3703
    ld l, a
    ld e, l
    add hl, de
    nop
    ld b, $19
    ld [bc], a
    ld a, [bc]
    dec c
    ld e, c
    ld b, d
    ld [de], a
    rla
    ld l, a
    add hl, de
    nop
    inc bc
    ld b, $1d
    ld l, a
    add hl, de
    inc bc
    inc bc
    dec c
    ld h, d
    ld b, d
    add hl, de
    nop
    inc bc
    add hl, de
    ld bc, $0d0a
    ld h, c
    ld l, a
    ld c, $06
    call z, Call_000_3071
    ld [hl], d
    ld [hl], l
    ld [hl], d
    jr nz, @+$75

    dec sp
    ld [hl], e
    db $eb
    ld [hl], e
    ld b, $31
    ld l, [hl]
    call Call_01d_64e9
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    call Call_01d_6f9c
    ld bc, $6d4a
    call Call_000_233c
    ret nc

    ld e, $1d
    ld bc, $7434
    jp Jump_000_0846


    ld hl, $dd16
    res 0, [hl]
    ret


    ld hl, $dd16
    set 0, [hl]
    ret


    ld a, [$dd16]
    bit 0, a
    jr z, jr_01d_6f96

    ld hl, $dd1b
    ld a, [hl+]
    cp $05
    jr z, jr_01d_6f96

    cp $09
    jr c, jr_01d_6f8c

    jr z, jr_01d_6f85

    call Call_000_0647
    ld e, $00

jr_01d_6f7b:
    sub $56
    jr c, jr_01d_6f82

    inc e
    jr jr_01d_6f7b

jr_01d_6f82:
    ld a, e
    jr jr_01d_6f8e

jr_01d_6f85:
    call Call_000_0647
    and $01
    jr jr_01d_6f8e

jr_01d_6f8c:
    sub $06

jr_01d_6f8e:
    add l
    ld l, a
    jr nc, jr_01d_6f93

    inc h

jr_01d_6f93:
    ld a, [hl]
    jr jr_01d_6f98

jr_01d_6f96:
    ld a, $ff

jr_01d_6f98:
    ld e, $27
    ld [de], a
    ret


Call_01d_6f9c:
    ld a, [$dd1a]
    cp $11
    ret nz

    ld hl, $db51
    ld e, $04
    ld a, [de]
    sub [hl]
    cp $50
    ld e, $0e
    ld a, [de]
    jr c, jr_01d_6fb8

    rlca
    jr c, jr_01d_6fbb

jr_01d_6fb3:
    call Call_01d_4f04
    jr jr_01d_6fbb

jr_01d_6fb8:
    rlca
    jr c, jr_01d_6fb3

jr_01d_6fbb:
    ld hl, $db53
    ld e, $07
    ld a, [de]
    sub [hl]
    cp $40
    ld e, $10
    ld a, [de]
    jr c, jr_01d_6fce

    rlca
    ret c

jr_01d_6fcb:
    jp Jump_01d_6668


jr_01d_6fce:
    rlca
    ret nc

    jp Jump_01d_6668


    ld a, [bc]
    inc bc
    ld [$dd1a], a
    ret


    ld a, [$dd1a]
    ld h, a
    and $0f
    dec a
    rlca
    ld l, a
    rlca
    add l
    ld l, a
    ld a, h
    swap a
    and $0f
    sub $02
    swap a
    ld h, a
    rrca
    add h
    add l
    ld hl, $7008
    add l
    ld l, a
    jr nc, jr_01d_6ffa

    inc h

jr_01d_6ffa:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $11
    ld a, [hl+]
    ld [de], a
    jp Jump_000_20be


    nop
    nop
    stop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @-$7e

    nop
    nop

jr_01d_7026:
    nop
    nop
    jr @-$7e

    rst $38
    nop
    nop
    nop
    add sp, -$80
    nop
    nop
    nop
    nop
    add sp, -$80
    rst $38
    nop
    add b
    ld bc, $0000
    nop
    jr @-$7e

    ld bc, $0000
    nop
    add sp, -$80
    cp $00
    nop
    nop
    jr jr_01d_6fcb

    cp $00
    nop
    nop
    add sp, $0d
    ld h, d
    ld [hl], b
    ld e, h
    ld [hl], b
    dec c
    db $d3
    ld l, a
    ld hl, $0106
    ld l, a
    nop
    cp $10
    nop
    nop
    nop
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$dd1a]
    cp $11
    jr z, jr_01d_7076

    ld a, $06
    add l
    ld l, a
    jr nc, jr_01d_7076

    inc h

jr_01d_7076:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $11
    ld a, [hl+]
    ld [de], a
    jp Jump_000_20be


    dec c
    ld h, d
    ld [hl], b
    sub b
    ld [hl], b

jr_01d_7089:
    dec c
    db $d3
    ld l, a
    ld [hl+], a
    ld b, $01
    ld l, a
    nop
    ld [bc], a
    ldh a, [rP1]
    nop
    nop
    dec c
    ld h, d
    ld [hl], b
    and d
    ld [hl], b
    dec c
    db $d3
    ld l, a
    ld sp, $0106
    ld l, a
    nop
    db $fd
    jr jr_01d_7026

    rst $38
    nop
    nop
    ld bc, $00f0
    rst $38
    nop
    dec c
    ld h, d
    ld [hl], b
    cp d
    ld [hl], b
    dec c
    db $d3
    ld l, a
    ld [hl-], a
    ld b, $01

jr_01d_70b9:
    ld l, a
    nop
    db $fd
    jr @-$7e

    nop
    nop
    nop
    rst $38
    stop
    ld bc, $0d00
    ld h, d
    ld [hl], b
    jp nc, Jump_000_0d70

    db $d3
    ld l, a
    inc sp
    ld b, $01
    ld l, a
    nop
    inc bc
    add sp, -$80
    rst $38
    nop
    nop
    ld bc, $00f0
    rst $38
    nop
    dec c
    ld h, d
    ld [hl], b
    ld [$0d70], a
    db $d3
    ld l, a
    inc [hl]
    ld b, $01
    ld l, a
    nop
    inc bc
    add sp, -$80
    nop
    nop
    nop
    rst $38
    stop
    ld bc, $0d00
    ld h, d
    ld [hl], b
    ld [bc], a
    ld [hl], c
    dec c
    db $d3
    ld l, a
    ld b, c
    ld b, $01
    ld l, a
    add b
    cp $00
    nop
    db $fd
    jr jr_01d_7089

    cp $18
    add b
    cp $00
    dec c
    ld h, d
    ld [hl], b
    ld a, [de]
    ld [hl], c
    dec c
    db $d3
    ld l, a
    ld b, d
    ld b, $01
    ld l, a
    add b
    cp $00
    nop
    inc bc
    add sp, -$80
    cp $18
    add b
    ld bc, $0d00
    ld h, d
    ld [hl], b
    ld [hl-], a
    ld [hl], c
    dec c
    db $d3
    ld l, a
    ld b, e
    ld b, $01
    ld l, a
    add b
    ld bc, $0000
    db $fd
    jr jr_01d_70b9

    ld bc, $80e8
    cp $00
    dec c
    ld h, d
    ld [hl], b
    ld c, d
    ld [hl], c
    dec c
    db $d3
    ld l, a
    ld b, h
    ld b, $01
    ld l, a
    add b
    ld bc, $0000
    inc bc
    add sp, -$80
    ld bc, $80e8
    ld bc, $0d00
    ld l, [hl]
    ld [hl], c
    ld h, d
    ld [hl], c
    dec c
    db $d3
    ld l, a
    ld d, c
    ld b, $01
    ld l, a
    add b
    cp $18
    add b
    ld bc, $8000
    cp $18
    add b
    cp $00
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$dd1a]
    dec a
    and $01
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_01d_7183

    inc h

jr_01d_7183:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $11
    ld a, [hl+]
    ld [de], a
    jp Jump_000_20be


    dec c
    ld l, [hl]
    ld [hl], c
    sbc l
    ld [hl], c
    dec c
    db $d3
    ld l, a
    ld d, d
    ld b, $01
    ld l, a
    add b
    ld bc, $80e8
    ld bc, $8000
    ld bc, $80e8
    cp $00
    inc bc
    ld e, b
    ld l, [hl]
    ld e, l
    add hl, de
    nop
    ld b, $19
    ld [bc], a
    ld a, [bc]
    dec c
    ld e, c
    ld b, d
    ld [de], a
    cp a
    ld [hl], c
    add hl, de
    nop
    inc bc
    ld b, $c5
    ld [hl], c
    add hl, de
    inc bc
    inc bc
    dec c
    ld h, d
    ld b, d
    add hl, de
    nop
    inc bc
    add hl, de
    ld bc, $0c0a
    dec bc
    xor c
    ld [hl], c
    inc bc
    ld e, b
    ld l, [hl]
    ld e, l
    add hl, bc
    inc bc
    add hl, de
    nop
    inc b
    add hl, de
    inc bc
    inc b
    dec c
    ld h, d
    ld b, d
    add hl, de
    nop
    inc b
    dec c
    ld h, d
    ld b, d
    add hl, de
    dec hl
    inc b
    ld a, [bc]
    daa
    db $10
    ld b, l
    ld a, [de]
    ld b, d
    rrca
    ld h, $00
    rrca
    ld b, c
    nop
    inc bc
    ld [de], a
    ld [hl], d
    ld e, l
    add hl, de
    nop
    jr nz, @+$1b

    inc bc
    ld [$620d], sp
    ld b, d
    add hl, de
    nop
    jr nc, jr_01d_7211

    ld h, d
    ld b, d
    add hl, de
    dec hl
    ld [$0019], sp
    jr nz, jr_01d_7218

    xor c
    ld [hl], c
    ld b, $31

jr_01d_7211:
    ld l, [hl]
    call Call_01d_6e58
    ld e, $26
    ld a, [de]

jr_01d_7218:
    or a
    jr z, jr_01d_721e

    dec a
    ld [de], a
    ret


jr_01d_721e:
    ld a, $08
    ld [de], a
    ld e, $41
    ld a, [de]
    cp $10
    ret nc

    inc a
    ld [de], a
    ld a, $1a
    ld e, $d9
    jp Jump_000_2319


    dec bc
    xor c
    ld [hl], c
    inc bc
    ld e, b
    ld l, [hl]
    ld e, l
    dec c
    ld d, l
    ld [hl], d
    add hl, de
    ld [bc], a
    jr jr_01d_724b

    ld h, h
    ld [hl], d
    add hl, de
    dec b
    jr nz, jr_01d_724d

    inc b
    add hl, de
    nop
    ld b, $19
    ld [bc], a
    ld a, [bc]

jr_01d_724b:
    add hl, de
    nop

jr_01d_724d:
    ld b, $19
    ld bc, $0a0a
    ld b, $31
    ld l, [hl]
    ld a, [$dd1a]
    swap a
    and $0f
    cp $03
    jp c, Jump_000_1ec0

    jp Jump_01d_65f7


    push bc
    ld a, $1b

jr_01d_7267:
    push af
    ld e, $d9
    call Call_000_2319
    pop af
    inc a
    cp $1f
    jr c, jr_01d_7267

    pop bc
    ret


    dec bc
    xor c
    ld [hl], c
    inc bc
    ld e, b
    ld l, [hl]
    ld e, l
    dec c
    rst $30
    ld h, l
    dec c
    sub a
    ld [hl], d
    add hl, de
    inc b
    ld [$f90d], sp
    ld [hl], d
    add hl, bc
    inc bc
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $0a04
    ld de, $7282
    ld b, $31
    ld l, [hl]
    push bc
    ld a, [$dd1a]
    ld e, a
    swap a
    and $0f
    sub $03
    ld l, a
    cp $02
    jr z, jr_01d_72c5

    ld a, e
    and $0f
    dec a
    and $01
    rlca
    ld e, a
    ld a, l
    rlca
    rlca
    add e
    ld bc, $72db
    add c
    ld c, a
    jr nc, jr_01d_72bb

    inc b

jr_01d_72bb:
    ld hl, $dd1f
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    pop bc
    ret


jr_01d_72c5:
    ld e, $10
    ld a, [de]
    rlca
    jr c, jr_01d_72d0

    ld bc, $72f6
    jr jr_01d_72d3

jr_01d_72d0:
    ld bc, $72f3

jr_01d_72d3:
    ld hl, $dd1f
    ld a, c
    ld [hl+], a
    ld [hl], b
    pop bc
    ret


    db $e3
    ld [hl], d
    add sp, $72
    db $ed
    ld [hl], d
    ldh a, [$ff72]
    nop
    ld bc, $0302
    rst $38
    inc bc
    ld [bc], a
    ld bc, $ff00
    ld [bc], a
    inc bc
    rst $38
    ld bc, $ff00
    ld bc, $ff02
    ld [bc], a
    ld bc, $21ff
    rra
    db $dd
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_01d_730a

    ld a, $01
    ld e, $27
    ld [de], a
    ret


jr_01d_730a:
    push bc
    ld b, h
    ld c, l
    ld hl, $dd1f
    ld [hl], c
    inc hl
    ld [hl], b
    add $1f
    ld e, $d9
    call Call_000_2319
    xor a
    ld e, $27
    ld [de], a
    pop bc
    ret


    dec c
    add hl, hl
    ld [hl], e
    ld [de], a
    ld a, b
    ld [hl], d
    ld b, $75
    ld [hl], d
    ld hl, $dd16
    bit 4, [hl]
    jr nz, jr_01d_7335

    set 4, [hl]
    xor a
    jr jr_01d_7337

jr_01d_7335:
    ld a, $01

jr_01d_7337:
    ld e, $27
    ld [de], a
    ret


    dec c
    rst $30
    ld h, l
    inc bc
    ld e, b
    ld l, [hl]
    ld e, l
    add hl, de
    nop
    inc bc
    add hl, de
    ld [bc], a
    dec b
    add hl, de
    nop
    inc bc
    add hl, de
    ld bc, $0d05
    and $22
    reti


    inc h
    dec c
    call c, Call_000_0973
    inc b
    dec c
    and $22
    reti


    daa
    ld a, [bc]
    dec c
    call c, Call_000_1973
    dec b
    inc bc
    add hl, de
    daa
    ld bc, $2619
    inc bc
    add hl, de
    daa
    ld bc, $e60d
    ld [hl+], a
    reti


    dec h
    add hl, de
    dec b
    inc bc
    add hl, de
    daa
    ld bc, $e60d
    ld [hl+], a
    reti


    dec h
    add hl, de
    ld h, $03
    add hl, de
    daa
    ld bc, $0c24
    ld [hl+], a
    pop hl
    ld [hl], e
    dec e
    inc bc
    di
    ld [hl], e
    ld e, l
    dec c
    ld c, $74
    ld h, $80
    ld [bc], a
    add hl, hl
    nop
    ld a, [hl+]
    nop
    ld [$0000], sp
    add hl, de
    dec b
    ld [$d10d], sp
    ld l, d
    ret nc

    ld [hl], e
    add hl, de
    dec b
    jr nz, jr_01d_73b3

    ld [hl-], a
    db $10
    ret c

    dec c
    pop de
    ld l, d
    sub $73
    add hl, de
    dec b
    db $10
    rrca
    inc e

jr_01d_73b3:
    add b
    add hl, de
    nop
    inc bc
    add hl, de
    ld [bc], a
    dec b
    add hl, de
    nop
    inc bc
    add hl, de
    ld bc, $2905
    nop
    add hl, de
    nop
    jr nz, @+$0a

    nop
    nop
    ld a, [hl+]
    nop
    add hl, de
    nop
    ld [$3106], sp
    ld l, [hl]
    add b
    rst $38
    ld [$0080], sp
    ld hl, sp-$80
    ld bc, $80f4
    cp $0c
    xor a
    ld [$dd28], a
    ret


    dec c
    and $22
    reti


    ld h, $05
    ld [bc], a
    ld b, $e1
    ld [hl], e
    jr z, @+$15

    add b
    dec sp
    ld [hl], e
    ld b, $31
    ld l, [hl]
    call Call_01d_64e9
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6d4a
    call Call_000_233c
    ret nc

    ld e, $1d
    ld bc, $7434
    jp Jump_000_0846


    ld a, [$dd1a]
    swap a
    and $0f
    cp $05
    jr z, jr_01d_7426

    ld e, $07
    ld hl, $dd17
    ld a, [de]
    sub [hl]
    cp $40
    jr c, jr_01d_742f

    jr jr_01d_742b

jr_01d_7426:
    call Call_000_202b
    jr c, jr_01d_742f

jr_01d_742b:
    ld a, $01
    jr jr_01d_7430

jr_01d_742f:
    xor a

jr_01d_7430:
    ld e, $41
    ld [de], a
    ret


    rrca
    ld b, c
    ld bc, $5203
    ld [hl], h
    ld e, l
    inc e
    ld a, [$047c]
    add hl, bc
    inc bc
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    nop
    ld bc, $0119
    ld [bc], a
    add hl, de
    nop
    ld bc, $0f0a
    ld b, c
    nop
    nop
    call Call_01d_64e9
    call Call_01d_7468
    ret nz

    ld b, $00
    ld e, $4c
    ld a, [de]
    cp $3d
    jr nc, jr_01d_7463

    inc b

jr_01d_7463:
    ld e, $5c
    ld a, b
    ld [de], a
    ret


Call_01d_7468:
    ld bc, $6d4a
    call Call_000_255b
    ld e, $41
    ld a, [de]
    or a
    ret nz

    call Call_01d_6b9d
    call Call_000_0c71
    call Call_01d_6b86
    ld h, d
    ld l, $60
    ld [hl], $3f
    ld l, $44
    ld [hl], $16
    xor a
    ret


    rrca
    ld c, h
    nop
    dec c
    sbc l
    ld [hl], h
    dec c
    rla
    ld h, l
    nop
    nop
    dec c
    xor b
    ld [hl], h
    inc e
    add l
    ld b, a
    inc bc
    dec c
    ld h, a
    inc hl
    ld d, $c5
    ld bc, $5000
    ld h, $04
    call Call_000_30e0
    pop bc
    ret


    ld hl, $4ce4
    ld a, $03
    call Call_000_05cf
    ret


    rst $38
    ld [bc], a
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
    inc bc
    rla
    rst $38
    dec c
    rrca
    ld h, c
    nop
    rrca
    ld c, h
    ld bc, $f90d
    rra
    dec c
    rrca
    jr nz, jr_01d_74d7

    ld [$1000], sp
    ld e, e
    inc de
    ld a, [de]
    sbc $74

jr_01d_74d7:
    inc b
    ld [hl], a
    ld c, d
    db $10
    ld b, $e2
    ld [hl], h
    inc b
    dec h
    ld b, a
    db $10
    ld c, $29
    scf
    ld [hl], l
    ld d, e
    ld [hl], l
    rst $08
    ld [hl], l
    rst $08
    ld [hl], l
    rst $08
    ld [hl], l
    rst $08
    ld [hl], l
    inc sp
    halt
    sub e
    halt
    and d
    halt
    xor d
    halt
    ld [$ca76], a
    ld [hl], a
    ei
    ld [hl], a
    ei
    ld [hl], a
    ei
    ld [hl], a
    ei
    ld [hl], a
    ei
    ld [hl], a
    ei
    ld [hl], a
    ei
    ld [hl], a
    ei
    ld [hl], a
    ld b, d
    ld a, b
    ld b, d
    ld a, b
    ld b, d
    ld a, b
    ld b, d
    ld a, b
    rst $08
    ld a, l
    inc b
    ld a, [hl]
    sbc l
    ld a, b
    ld d, h
    ld a, c
    inc bc
    ld a, d
    ld d, l
    ld a, d
    and a
    ld a, d
    db $10
    ld a, e
    db $10
    ld a, e
    db $10
    ld a, e
    db $10
    ld a, e
    ld d, $7c
    xor d
    ld a, h
    sub $7c
    ld b, $7d
    ld h, [hl]
    ld a, l
    adc b
    ld a, [hl]
    ld d, $0d
    rrca
    jr nz, @+$0a

    ld c, $3f
    inc bc
    ld b, d
    ld [hl], l
    ld e, l
    nop
    call Call_01d_6501
    ld bc, $7551
    call Call_000_24e8
    ld bc, $74b1
    jp Jump_000_255b


    rla
    cp $0d
    rrca
    jr nz, jr_01d_755d

    rlca
    ccf
    dec c
    pop de
    rra
    inc bc

jr_01d_755d:
    rst $20
    rrca
    ld b, b
    nop
    rrca
    ld h, $00
    inc bc
    sub l
    ld [hl], l
    ld e, l
    add hl, bc
    inc b
    add hl, de
    rst $38
    ld [bc], a
    add hl, de
    ld [de], a
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc b
    add hl, de
    inc de
    ld [bc], a
    add hl, de
    ld [de], a
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc b
    add hl, de
    inc de
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    ld a, [bc]
    dec c
    cp a
    ld [hl], l
    ld de, $758e
    dec b
    ld bc, $8306
    ld [hl], l
    dec c
    sub e
    inc hl
    dec e
    ld d, h
    ld l, c
    ld d, $cd
    ld bc, $0165
    or c
    ld [hl], h
    call Call_000_255b
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_01d_75a7

    dec a
    ld [de], a
    ret


jr_01d_75a7:
    ld a, $04
    ld [de], a
    ld e, $40
    ld a, [de]
    add $02
    ld e, $d9
    call Call_000_2319
    ld e, $40
    ld a, [de]
    inc a
    cp $04
    jr c, jr_01d_75bd

    xor a

jr_01d_75bd:
    ld [de], a
    ret


    ld hl, $dd16
    bit 4, [hl]
    jr nz, jr_01d_75c9

    xor a
    jr jr_01d_75cb

jr_01d_75c9:
    ld a, $01

jr_01d_75cb:
    ld e, $27
    ld [de], a
    ret


    dec c
    db $fd
    ld [hl], l
    rst $18
    ld [hl], l
    ld [bc], a
    add hl, de
    ld de, $0304
    rst $30
    ld [hl], l
    ld e, l
    dec b
    ld [bc], a
    ld d, $00
    ld bc, $0100
    ld a, [$00f8]
    rst $38
    nop
    ld bc, $f806
    nop
    ld bc, $ff00
    ld a, [$0008]
    rst $38
    nop
    rst $38
    ld b, $08
    call Call_01d_6501
    jp Jump_000_0da4


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    inc bc
    push bc
    ld c, a
    ld e, $5b
    ld a, [de]
    sub c
    rlca
    ld b, a
    rlca
    add b
    add l
    ld l, a
    jr nc, jr_01d_7614

    inc h

jr_01d_7614:
    call Call_000_20f9
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld b, h
    ld c, l
    call Call_000_1fd1
    pop bc
    ret


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
    ld h, $40
    nop
    dec c
    ld [hl-], a
    db $10
    jr nz, jr_01d_7648

    rrca
    jr nz, jr_01d_7644

    rlca
    nop
    dec c
    pop de
    rra
    rrca

jr_01d_7644:
    cp $22
    dec sp
    ld e, a

jr_01d_7648:
    dec e
    inc bc
    ld a, [hl]
    halt
    ld e, l
    dec c
    and $22
    reti


    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $e60d
    ld [hl+], a
    reti


    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $0029
    ld a, [hl+]
    nop
    dec c
    and $22
    reti


    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $6d06
    halt
    call Call_01d_6501
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $7625
    call Call_000_255b
    jp Jump_01d_7765


    ld [$0180], sp
    ld a, [hl+]
    call nc, $4026
    nop
    dec c
    ld [hl-], a
    db $10
    inc d
    ld b, $3a
    halt
    ld [$fe80], sp
    ld a, [hl+]
    inc l
    ld b, $98
    halt
    dec c
    rrca
    jr nz, jr_01d_76b4

    rlca
    nop
    dec c
    pop de
    rra
    rrca

jr_01d_76b4:
    cp $22
    dec sp
    ld e, a
    dec e
    inc bc
    ld a, [hl]
    halt
    ld e, l
    ld h, $40
    nop
    dec c
    ld [hl-], a
    db $10
    jr jr_01d_76cd

    ret nz

    cp $2a
    jr z, @+$0f

    and $22
    reti


jr_01d_76cd:
    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $e60d
    ld [hl+], a
    reti


    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $f82a
    ld b, $27
    ld [hl], a
    dec c
    rrca
    jr nz, jr_01d_76f4

    rlca
    nop
    dec c
    pop de
    rra
    rrca

jr_01d_76f4:
    cp $22
    dec sp
    ld e, a
    dec e
    inc bc
    ld a, [hl]
    halt
    ld e, l
    ld h, $40
    nop
    dec c
    ld [hl-], a
    db $10
    jr jr_01d_770d

    ld b, b
    ld bc, $d82a
    dec c
    and $22
    reti


jr_01d_770d:
    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $e60d
    ld [hl+], a
    reti


    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $082a
    inc bc
    ld e, c
    ld [hl], a
    ld e, l
    add hl, bc
    inc b
    dec c
    and $22
    reti


    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $290a
    nop
    inc bc
    ld a, [hl]
    halt
    ld e, l
    add hl, bc
    inc b
    dec c
    and $22
    reti


    add hl, de
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    inc de
    dec b
    add hl, de
    dec d
    ld bc, $0d0a
    ld e, b
    ld [hl+], a
    ld b, $42
    ld [hl], a
    call Call_01d_6501
    call Call_000_0da4
    ld bc, $7625
    call Call_000_255b

Jump_01d_7765:
    ld a, [$dd2c]
    bit 1, a
    ret z

    ldh [$ff80], a
    ld bc, $0010
    ld h, $02
    call Call_000_30e0
    ldh a, [$ff80]
    bit 3, a
    jr nz, jr_01d_77b8

    call Call_000_1ec0
    cpl
    ld [de], a
    ld e, $26
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld bc, $77c1
    call Call_000_0faf
    jr z, jr_01d_77b8

    ld l, $46
    ld e, l
    ld a, [de]
    ld [hl], a
    ld bc, $77c4
    call Call_000_0faf
    jr z, jr_01d_77b8

    ld l, $46
    ld e, l
    ld a, [de]
    ld [hl], a
    ld bc, $77c7
    call Call_000_0faf
    jr z, jr_01d_77b8

    ld l, $46
    ld e, l
    ld a, [de]
    ld [hl], a
    ld h, d
    jp Jump_000_0bba


jr_01d_77b8:
    ld h, d
    ld e, $03
    ld bc, $4966
    jp Jump_000_0849


    jr jr_01d_77c3

jr_01d_77c3:
    nop
    add hl, de
    nop
    nop
    ld a, [de]
    nop
    nop
    inc h
    ld b, d
    dec c
    rrca
    jr nz, jr_01d_77d5

    ld [bc], a
    cp a
    dec c
    pop de
    rra

jr_01d_77d5:
    rlca
    ld b, $26
    nop
    ld [bc], a
    dec c
    ld [hl-], a
    db $10
    jr nz, jr_01d_7801

    dec sp
    ld e, a
    dec e
    inc bc
    db $ec
    ld [hl], a
    ld e, l
    add hl, de
    ld d, $10
    add hl, hl
    nop
    nop
    call Call_01d_6501
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $74b1
    jp Jump_000_255b


    dec c
    db $fd
    ld [hl], l
    ld [de], a
    ld a, b
    inc c

jr_01d_7801:
    inc bc
    rst $30
    ld [hl], l
    ld e, l
    add hl, de
    dec d
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    ld [de], a
    ld [bc], a
    add hl, de
    ld de, $1602
    nop
    cp $00
    nop
    di
    cp $00
    ld [bc], a
    nop
    nop
    dec bc
    cp $00
    nop
    nop
    cp $ff
    ldh a, [c]
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld a, [bc]
    sub [hl]
    cp $96
    cp $f5
    db $f4
    sub [hl]
    cp $6a
    ld bc, $08f5
    ld l, d
    ld bc, $fe96
    add hl, bc
    db $f4
    ld l, d
    ld bc, $016a
    add hl, bc
    ld [$6f0d], sp
    ld a, b
    inc bc
    ld bc, $5d65
    add hl, de
    ld de, $1902
    ld [de], a
    ld [bc], a
    inc bc
    ld h, e
    ld a, b
    ld e, l
    add hl, de
    dec d
    inc b
    add hl, de
    inc d
    inc b
    add hl, de
    dec d
    inc bc
    add hl, de
    ld [de], a

jr_01d_785e:
    inc bc
    add hl, de
    ld de, $1602
    call Call_01d_6501
    call Call_000_1ee6
    call Call_000_1ed3
    jp Jump_000_0da4


    push bc
    ld e, $5b
    ld a, [de]
    sub $14
    rlca
    rlca
    ld hl, $788d
    add l
    ld l, a
    jr nc, jr_01d_787f

    inc h

jr_01d_787f:
    call Call_000_2123
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld b, h
    ld c, l
    call Call_000_1fd1
    pop bc
    ret


    jr c, @+$3a

    rst $18
    sbc $c8
    ret z

    add hl, de
    jr jr_01d_785e

    jr c, @+$1b

    sbc $38
    ret z

    rst $18
    jr jr_01d_78c2

    dec bc
    dec c
    rrca
    jr nz, jr_01d_78a5

    ld [bc], a
    ccf

jr_01d_78a5:
    inc bc
    or b
    ld a, b
    ld e, l
    dec c
    cp h
    ld a, b
    dec c
    rst $30
    ld a, b
    nop
    call Call_01d_6501
    call Call_000_0da4
    ld bc, $74b1
    jp Jump_000_255b


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $42

jr_01d_78c2:
    ld a, [hl]
    ld e, $45
    ld [de], a
    ld l, $41
    ld a, [hl]
    dec a
    cp $05
    jr c, jr_01d_78d8

    cp $0d
    jr nc, jr_01d_78d8

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_01d_78d8:
    ld a, [hl]
    dec a
    ld hl, $78e7
    add l
    ld l, a
    jr nc, jr_01d_78e2

    inc h

jr_01d_78e2:
    ld a, [hl]
    ld e, $15
    ld [de], a
    ret


    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld l, $2d
    inc l
    dec c
    inc l
    dec l
    ld l, $1e
    ld c, b
    ld a, [de]
    ld h, a
    ld l, $41
    ld a, [hl]
    dec a
    ld hl, $7914
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_01d_7909

    inc h

jr_01d_7909:
    call Call_000_20f9
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    nop
    inc b
    nop
    nop
    or d
    inc bc
    add a
    ld bc, $02d4
    call nc, $8702
    ld bc, $03b2
    nop
    nop
    nop
    inc b
    add a
    ld bc, $03b2
    call nc, $d402
    ld [bc], a
    or d
    inc bc
    add a
    ld bc, $0400
    nop
    nop
    or d
    inc bc
    ld a, c
    cp $d4
    ld [bc], a
    inc l
    db $fd
    add a
    ld bc, $fc4e
    nop
    nop
    nop
    db $fc
    add a
    ld bc, $fc4e
    call nc, Call_000_2c02
    db $fd
    or d
    inc bc
    ld a, c
    cp $0d
    rrca
    jr nz, jr_01d_795c

    inc b
    nop
    dec c
    pop de

jr_01d_795c:
    rra
    nop
    db $f4
    inc bc
    xor [hl]
    ld a, c
    ld e, l
    ld [$ff00], sp
    add hl, de
    rlca
    inc c
    ld [$0000], sp
    add hl, bc
    inc bc
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0719], sp
    ld [$240a], sp
    add hl, bc
    ld [hl+], a
    and h
    ld a, c
    dec e
    ld h, $80
    ld bc, $0008
    cp $2a
    inc d
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0719], sp
    ld [$0619], sp
    ld [$0719], sp
    ld [$0819], sp
    ld [$002a], sp
    dec de
    or $7a
    dec e
    dec c
    and $22
    reti


    jr z, @+$07

    ld [$a406], sp
    ld a, c
    call Call_01d_6501
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $7625
    call Call_000_255b
    ld a, [$dd2c]
    bit 1, a
    ret z

    ldh [$ff80], a
    ld bc, $0020
    ld h, $02
    call Call_000_30e0
    ldh a, [$ff80]
    bit 3, a
    jr nz, jr_01d_79f7

    call Call_000_1ec0
    cpl
    inc a
    ld [de], a
    ld bc, $7a00
    call Call_000_0faf
    jr z, jr_01d_79f7

    ld l, $46
    ld e, l
    ld a, [de]
    ld [hl], a
    ld e, $50
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    jp Jump_000_0bba


jr_01d_79f7:
    ld h, d
    ld e, $03
    ld bc, $4966
    jp Jump_000_0849


    dec de
    nop
    nop
    dec c
    rrca
    jr nz, jr_01d_7a0b

    inc b
    nop
    dec c
    pop de

jr_01d_7a0b:
    rra
    or $fa
    inc bc
    xor [hl]
    ld a, c
    ld e, l
    ld h, $30
    rst $38
    ld [$ff80], sp
    add hl, de
    rlca
    inc c
    jr @+$0b

    rlca
    add hl, de
    ld b, $04
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    rlca
    inc b
    ld a, [bc]
    inc h
    add hl, bc
    ld [hl+], a
    and h
    ld a, c
    dec e
    ld h, $00
    ld [bc], a
    ld [$ff80], sp
    ld a, [hl+]
    db $10
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0719], sp
    ld [$580d], sp
    ld [hl+], a
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$f61b], sp
    ld a, d
    dec e
    dec c
    rrca
    jr nz, jr_01d_7a5d

    inc b
    nop
    dec c
    pop de

jr_01d_7a5d:
    rra
    or $06
    inc bc
    xor [hl]
    ld a, c
    ld e, l
    ld h, $30
    rst $38
    ld [$0080], sp
    add hl, de
    rlca
    inc c
    jr @+$0b

    add hl, bc
    add hl, de
    ld b, $04
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    rlca
    inc b
    ld a, [bc]
    inc h
    add hl, bc
    ld [hl+], a
    and h
    ld a, c
    dec e
    ld h, $00
    ld [bc], a
    ld [$0080], sp
    ld a, [hl+]
    ldh a, [rNR24]
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0719], sp
    ld [$580d], sp
    ld [hl+], a
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$f61b], sp
    ld a, d
    dec e
    dec c
    rrca
    jr nz, jr_01d_7aaf

    inc b
    nop
    dec c
    pop de

jr_01d_7aaf:
    rra
    nop
    inc c
    inc bc
    xor [hl]
    ld a, c
    ld e, l
    ld [$0100], sp
    add hl, de
    rlca
    inc c
    ld [$0000], sp
    add hl, bc
    dec b
    add hl, de
    ld b, $04
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    rlca
    inc b
    ld a, [bc]
    inc h
    add hl, bc
    ld [hl+], a
    and h
    ld a, c
    dec e
    ld h, $80
    ld bc, $0008
    ld [bc], a
    ld a, [hl+]
    db $ec
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0719], sp
    ld [$0619], sp
    ld [$0719], sp
    ld [$0819], sp
    ld [$002a], sp
    ld b, $f6
    ld a, d
    rrca
    inc e
    add b
    inc bc
    ld bc, $5d7b
    dec de
    ld d, d
    ld b, e
    dec b
    call Call_01d_6501
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $7625
    jp Jump_000_255b


    rla
    or $0d
    inc h
    ld c, [hl]
    dec c
    rrca
    jr nz, jr_01d_7b21

    ld [$033f], sp
    ld c, l
    ld a, e
    ld e, l
    add hl, bc
    inc bc

jr_01d_7b21:
    dec c
    ldh [c], a
    ld a, e
    ld c, $05
    ld [bc], a
    dec c
    ldh [c], a
    ld a, e
    rrca
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc bc
    dec c
    ldh [c], a
    ld a, e
    db $10
    dec b
    ld [bc], a
    dec c
    ldh [c], a
    ld a, e
    ld de, $0205
    ld a, [bc]
    add hl, bc
    inc bc
    dec c
    ldh [c], a
    ld a, e
    ld [de], a
    dec b
    ld [bc], a
    dec c
    ldh [c], a
    ld a, e
    inc de
    dec b
    ld [bc], a
    ld a, [bc]
    ld d, $cd

jr_01d_7b4e:
    ld bc, $1e65
    ccf
    ld a, [de]
    srl a
    cp $01
    jr z, jr_01d_7b5f

    jp c, Jump_01d_7b65

jr_01d_7b5c:
    jp Jump_01d_7bb4


jr_01d_7b5f:
    call Call_01d_7b65
    jp Jump_01d_7bb4


Call_01d_7b65:
Jump_01d_7b65:
    ld bc, $7b8c

Jump_01d_7b68:
    ld e, $5b
    ld a, [de]
    sub $1f
    rlca
    ld e, a
    rlca
    rlca
    add e
    add c
    ld c, a
    jr nc, jr_01d_7b77

    inc b

jr_01d_7b77:
    ld a, $05

jr_01d_7b79:
    push af
    call Call_000_24e8
    push bc
    ld bc, $74b1
    call Call_000_255b
    pop bc
    pop af
    dec a
    jr nz, jr_01d_7b79

    jp Jump_01d_7bfa


    ld [$10f8], sp
    add sp, $18
    ret c

    jr nz, jr_01d_7b5c

    jr z, jr_01d_7b4e

    ld [$18f8], sp
    ldh a, [$ff28]
    add sp, $38
    ldh [rOBP0], a
    ret c

    ld [$1808], sp
    db $10
    jr z, jr_01d_7bbe

    jr c, jr_01d_7bc8

    ld c, b
    jr z, @+$0a

    ld [$1810], sp
    jr jr_01d_7bd8

    jr nz, jr_01d_7bea

    jr z, jr_01d_7bfc

Jump_01d_7bb4:
    ld bc, $7bba
    jp Jump_01d_7b68


    jr nc, @-$56

    jr c, @-$66

jr_01d_7bbe:
    ld b, b
    adc b

jr_01d_7bc0:
    ld c, b
    ld a, b
    ld d, b
    ld l, b
    ld e, b
    ret nc

    ld l, b
    ret z

jr_01d_7bc8:
    ld a, b
    ret nz

    adc b
    cp b
    sbc b
    or b
    ld e, b
    jr nc, jr_01d_7c39

    jr c, jr_01d_7c4b

    ld b, b
    adc b
    ld c, b
    sbc b
    ld d, b

jr_01d_7bd8:
    jr nc, jr_01d_7c32

    jr c, @+$6a

    ld b, b
    ld a, b
    ld c, b
    adc b
    ld d, b
    sbc b
    ld e, $5b
    ld a, [de]
    sub $1f
    rlca
    ld l, a
    rlca

jr_01d_7bea:
    add l
    ld l, a
    ld a, [bc]
    inc bc
    ld h, a
    add l
    ld e, $15
    ld [de], a
    ld a, h
    sub $0e
    ld e, $3f
    ld [de], a
    ret


Jump_01d_7bfa:
    ld e, $5b

jr_01d_7bfc:
    ld a, [de]
    sub $1f
    rlca
    ld bc, $7c0e
    add c
    ld c, a
    jp nc, Jump_000_24e8

    jr nc, jr_01d_7c0b

    inc b

jr_01d_7c0b:
    jp Jump_000_24e8


    jr z, jr_01d_7bc0

    ld d, b
    ret c

    ld d, b
    jr z, jr_01d_7c3d

    ld d, b
    rrca
    ld c, h
    nop
    inc b
    sub d
    ld [hl], e
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    inc bc
    ld c, e
    ld a, h
    ld e, l
    ld bc, $0808
    nop
    nop
    dec c
    ld d, h
    ld a, h
    add hl, bc
    ld [bc], a
    rrca
    ld b, a
    db $10
    dec b

jr_01d_7c32:
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    ld a, [bc]

jr_01d_7c39:
    dec c
    and $22
    reti


jr_01d_7c3d:
    inc hl
    add hl, de
    rst $38
    ld [bc], a
    add hl, de
    ld [$1902], sp
    rst $38
    ld [bc], a
    add hl, de
    ld [$1602], sp

jr_01d_7c4b:
    call Call_01d_6501
    call Call_000_1ed3
    jp Jump_000_0da4


    push bc
    ld e, $48
    ld a, $ff
    ld [de], a
    call Call_000_0647
    and $03
    ld l, a
    cp $02
    jr c, jr_01d_7c72

    ld a, [$dd27]
    ld b, a
    ld c, $4c
    ld a, [bc]
    or a
    jr nz, jr_01d_7c74

    ld a, l
    sub $02
    ld l, a

jr_01d_7c72:
    ld b, $a0

jr_01d_7c74:
    ld e, $45
    ld c, e
    ld a, [bc]
    ld [de], a
    ld a, l
    ld hl, $7c96
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_01d_7c86

    inc h

jr_01d_7c86:
    call Call_000_20f9
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld a, b
    ld b, h
    ld c, l
    ld h, a
    call Call_000_24ec
    pop bc
    ret


    add b
    nop
    ret c

    inc b
    ld b, $40
    rst $38
    ret c

    db $fc
    ld b, $40
    ld bc, $08d8
    db $10
    ret nz

    cp $d8
    ld hl, sp+$10
    inc bc
    ld bc, $5d65
    dec c
    pop de
    rra
    ld b, $00
    inc b
    add e
    ld [hl], a
    dec bc
    rrca
    ld b, [hl]
    nop
    rrca
    ld b, a
    db $10
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld d, $04
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    rrca
    ld b, a
    db $10
    inc bc
    ld h, b
    ld a, l
    ld e, l
    dec c
    ld a, [hl+]
    ld a, l
    ld h, $00
    cp $19
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld bc, $0519
    ld [bc], a
    add hl, de
    inc b
    ld bc, $0519
    ld bc, $0419
    inc bc
    ld d, $04
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    rrca
    ld b, a
    db $10
    inc bc
    ld h, b
    ld a, l
    ld e, l
    dec c
    ld a, [hl+]
    ld a, l
    ld h, $00
    cp $19
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld bc, $0519
    ld bc, $0419
    ld [bc], a
    ld d, $c5
    ld hl, $dd28
    ld a, [hl]
    cp $06
    jr nc, jr_01d_7d3f

    inc [hl]
    ld hl, $7d52
    add l
    ld l, a
    jr nc, jr_01d_7d3c

    inc h

jr_01d_7d3c:
    ld a, [hl]
    jr jr_01d_7d44

jr_01d_7d3f:
    call Call_000_0647
    and $03

jr_01d_7d44:
    ld bc, $7d58
    rlca
    add c
    ld c, a
    jr nc, jr_01d_7d4d

    inc b

jr_01d_7d4d:
    call Call_000_24e8
    pop bc
    ret


    nop
    ld bc, $0102
    ld [bc], a
    inc bc
    nop
    db $f4
    or $fa
    or $06
    nop
    inc c
    call Call_01d_6501
    jp Jump_000_0da4


    dec c
    ld [hl], h
    ld a, l
    ld c, $04
    ld a, l
    ld a, l
    sbc e
    ld a, l
    cp c
    ld a, l
    call nz, Call_000_167d
    ld hl, $dd28
    ld a, [hl]
    inc [hl]
    ld e, $27
    ld [de], a
    ret


    dec c
    pop de
    rra
    nop
    db $f4
    ld [$fc80], sp
    ld h, $00
    rst $38
    inc bc
    ld h, b
    ld a, l
    ld e, l
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    ld b, $8c
    ld a, l
    dec c
    pop de
    rra
    or $fa
    ld [$fe80], sp
    ld h, $e0
    db $fc
    inc bc
    ld h, b
    ld a, l
    ld e, l
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld b, $aa
    ld a, l
    dec c
    pop de
    rra
    or $06
    ld [$0180], sp
    ld b, $a3
    ld a, l
    dec c
    pop de
    rra
    nop
    inc c
    ld [$0380], sp
    ld b, $85
    ld a, l
    ld [$0280], sp
    inc bc
    rst $30
    ld [hl], l
    ld e, l
    rrca
    ld b, a
    db $10
    add hl, de
    ld bc, $0f02
    ld b, a
    nop
    add hl, de
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    ld bc, $0f02
    ld b, a
    nop
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902
    rst $38
    ld bc, $0219
    ld bc, $ff19
    ld bc, $0119
    ld bc, $ff19
    ld bc, $0219
    ld bc, $0d16
    daa
    ld a, [hl]
    inc bc
    ld h, e
    ld a, b
    ld e, l
    add hl, de
    inc de
    ld bc, $1219
    ld bc, $1319
    ld bc, $1219
    ld [bc], a
    add hl, de
    inc de
    ld bc, $1219
    ld [bc], a
    add hl, de
    ld de, $1901
    inc de
    ld bc, $1119
    ld b, $16
    push bc
    call Call_000_0647
    and $07
    rlca
    rlca
    rlca
    ld hl, $7e48
    add l
    ld l, a
    jr nc, jr_01d_7e38

    inc h

jr_01d_7e38:
    call Call_000_20f9
    call Call_000_2123
    call Call_000_20be
    ld b, h
    ld c, l
    call Call_000_24e8
    pop bc
    ret


    nop
    cp $10
    nop
    nop
    nop
    ld a, [$9600]
    cp $0b
    sub [hl]
    cp $0b
    db $fc
    db $fc
    sub [hl]
    cp $0b
    ld l, d
    ld bc, $fcf5
    inc b
    nop
    nop
    nop
    nop
    cp $10
    nop
    ld a, [$0000]
    nop
    nop
    ld [bc], a
    ldh a, [rP1]
    ld b, $6a
    ld bc, $96f5
    cp $0b
    inc b
    db $fc
    ld l, d
    ld bc, $6af5
    ld bc, $04f5
    inc b
    nop
    ld [bc], a
    ldh a, [rP1]
    nop
    nop
    ld b, $00
    dec c
    ld l, $4a
    ld [hl+], a
    sbc a
    ld a, [hl]
    dec e
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    ld a, [bc]
    ld d, $0f
    ld b, a
    nop
    dec b
    ld bc, $470f
    db $10
    dec b
    ld bc, $9f06
    ld a, [hl]
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    ld a, [bc]
    ld d, $0f
    ld b, a
    nop
    dec b
    ld bc, $470f
    db $10
    dec b
    ld bc, $b706
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    nop
    ld a, [bc]
    ld [bc], a
    nop
    jr nz, jr_01d_7ee7

jr_01d_7ee7:
    ld b, b
    db $10
    add b
    ld b, d
    nop
    add b
    ld bc, $0800
    nop
    nop
    nop
    stop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $2000
    jr jr_01d_7f45

    db $10
    jr z, jr_01d_7f8c

    add hl, bc
    nop
    add hl, bc
    add b
    ld [bc], a
    db $10
    add b
    ld c, d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_7f45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    ld d, b
    add $24
    ld [bc], a
    nop
    stop
    nop
    nop
    nop
    inc b
    ld h, b
    ldh [rNR23], a
    ld d, b
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_7f8c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc d
    nop
    call z, Call_000_0850
    sub b
    nop
    nop
    ld hl, $0900
    nop
    ld [$0c08], sp
    ld b, b
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [bc], a
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    nop
    jr nz, @+$3a

    ld [bc], a
    jr nz, jr_01d_7fe7

jr_01d_7fe7:
    ld c, b
    ld [bc], a
    add h
    jr nz, @+$52

    add hl, bc
    nop
    inc l
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01d_7ff8

jr_01d_7ff8:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
