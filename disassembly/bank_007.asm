; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ld a, $01
    ld [$da3b], a
    ld a, $02
    ld [$da3a], a
    ld hl, $da3c
    ld bc, $bc00
    ld [hl], c
    inc hl
    ld [hl], b
    xor a
    ld hl, $da30
    ld [hl+], a
    ld [hl], a
    ld [$da0e], a
    ret


    ld hl, $d900

jr_007_4020:
    ld b, $08

jr_007_4022:
    rrc l
    rla
    dec b
    jr nz, jr_007_4022

    ld [hl+], a
    inc a
    jr nz, jr_007_4020

    ret


    dec sp
    dec a
    rst $38
    ld [bc], a
    rst $38
    ld [hl], b
    sbc b
    ld c, b
    ld l, b
    cp b
    cp d
    inc a
    dec sp
    rst $38
    ld [bc], a
    rst $38
    jr jr_007_409f

    jr @+$3a

    cp c
    cp b
    dec sp
    inc c
    rst $38
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    dec b
    nop
    rst $38
    ld h, b
    ld hl, sp+$68
    and b
    ret nc

    jr nc, jr_007_4085

    or b
    ldh a, [rP1]
    add b
    ret nc

    xor b
    ld hl, sp+$30
    ld h, b
    cp b
    ld e, b
    cp b
    add sp, $28
    ld e, b
    adc b
    jr jr_007_407f

    cp b
    cp b
    add b
    ld d, b
    ld d, b
    nop
    nop
    ld b, h
    sbc b
    ld b, h
    jr c, jr_007_40c3

    ld d, b
    ld h, b
    ld d, b
    jr nc, jr_007_40e8

    jr z, jr_007_40ea

    ld b, b
    ld h, b
    jr nc, jr_007_40c6

    ld h, b

jr_007_407f:
    ld e, b
    jr nc, jr_007_40ba

    jr nc, jr_007_40ec

    ld d, b

jr_007_4085:
    ld d, b
    ld l, b
    ld d, b
    ld l, b
    jr c, jr_007_40c3

    ld l, b
    ld d, b
    jr c, @+$6a

    ld b, b
    ld h, b
    ld h, h
    ld l, b
    inc a
    cp b
    cp e
    cp e
    cp e
    cp e
    cp e
    cp h
    cp h
    cp h
    cp e
    cp h

jr_007_409f:
    cp h
    cp e
    cp e
    cp e
    cp e

jr_007_40a4:
    cp e
    cp h
    cp h
    cp e
    cp e
    cp e
    cp e
    cp e
    cp h
    cp h
    cp e
    cp e
    cp e

jr_007_40b1:
    cp h
    cp e
    cp h
    cp e
    cp h
    cp h
    ccf
    dec sp
    rst $38

jr_007_40ba:
    ld [bc], a
    rst $38
    ld h, b
    ld h, b
    jr z, @+$3a

    adc $b8
    ld b, b

jr_007_40c3:
    dec sp
    rst $38
    inc bc

jr_007_40c6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc b
    sbc b
    ld h, b
    ld c, b
    ld e, b
    jr c, jr_007_40a4

    db $d3
    cp b
    ld b, c
    dec sp
    rst $38
    ld [bc], a
    rst $38
    adc b
    ld h, b
    ld l, b
    jr c, jr_007_40b1

    cp b

    ld hl, $cc00
    ld a, [$db5f]

jr_007_40e8:
    inc a
    ld b, a

jr_007_40ea:
    jr jr_007_40f3

jr_007_40ec:
    ld a, [hl+]
    sub $bd
    cp $10
    jr c, jr_007_40f9

jr_007_40f3:
    dec b
    jr nz, jr_007_40ec

    ld a, [$db60]

jr_007_40f9:
    add $24
    ld e, a
    ld hl, $6002
    ld a, $1e
    call Call_000_05cf
    ret


    ld a, [$db61]
    cp $08
    jr nz, jr_007_4120

    ld a, [$db60]
    ld hl, $4121
    add l
    ld l, a
    jr nc, jr_007_4117

    inc h

jr_007_4117:
    ld e, [hl]
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf

jr_007_4120:
    ret


    db $04, $00, $05

    ld [$0000], sp
    add hl, bc

    ld a, [$deff]
    or a
    ret nz

    ld hl, $cc00
    ld a, [$db5f]
    inc a
    ld b, a
    jr jr_007_413c

jr_007_4137:
    ld a, [hl+]
    cp $b2
    jr z, jr_007_4141

jr_007_413c:
    dec b
    jr nz, jr_007_4137

    jr jr_007_4155

jr_007_4141:
    ld a, [$db60]
    call Call_000_0663
    ld hl, $dd63
    and [hl]
    jr nz, jr_007_4155

    ld a, $12
    ld [$db6f], a
    ld e, a
    jr jr_007_41ad

jr_007_4155:
    ld a, [$db73]
    or a
    ld a, $ff
    jr nz, jr_007_417b

    ld a, [$db60]
    ld hl, $41b6
    add a
    add l
    ld l, a
    jr nc, jr_007_4169

    inc h

jr_007_4169:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db61]
    sub $08
    jr nc, jr_007_4175

    ld a, $02

jr_007_4175:
    add l
    ld l, a
    jr nc, jr_007_417a

    inc h

jr_007_417a:
    ld a, [hl]

jr_007_417b:
    ld [$db6f], a
    ld a, [$db38]
    or a
    jr z, jr_007_418a

    xor a
    ld [$db38], a
    jr jr_007_41b5

jr_007_418a:
    ld a, [$db6f]
    ld e, a
    ld a, [$db61]
    cp $08
    jr nc, jr_007_41ad

    ld a, [$a071]
    or a
    jr nz, jr_007_41a4

    ld a, [$dde4]
    inc a
    cp e
    jr z, jr_007_41b5

    jr jr_007_41ad

jr_007_41a4:
    ld hl, $41d8
    add l
    ld l, a
    jr nc, jr_007_41ac

    inc h

jr_007_41ac:
    ld e, [hl]

jr_007_41ad:
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf

jr_007_41b5:
    ret


    db $c4, $41, $c7, $41, $ca, $41

    call $d041
    ld b, c
    db $d3
    ld b, c
    sub $41

    db $03, $13, $05, $0a, $13, $08, $0c

    inc de

    db $1f

    ld [hl+], a
    inc de
    ld hl, $1323
    ld bc, $1324
    ld h, $11
    rst $38
    db $10

    db $14, $09, $0b

    ld hl, $db51
    ld a, [hl+]
    ld [$da01], a
    sub $10
    ld c, a
    ld a, [hl+]
    ld b, a
    jr nc, jr_007_41eb

    dec b

jr_007_41eb:
    ld a, [hl+]
    ld [$da00], a
    sub $10
    ld e, a
    ld d, [hl]
    jr nc, jr_007_41f6

    dec d

jr_007_41f6:
    call Call_000_15e3
    push hl
    call Call_000_15fc
    pop bc
    ld d, $0d
    ld e, $0b
    jr jr_007_421e

jr_007_4204:
    ld a, c
    add $10
    ld c, a
    jr c, jr_007_4213

    ld a, l
    add $40
    ld l, a
    jr nc, jr_007_421e

    inc h
    jr jr_007_421e

jr_007_4213:
    ld a, [$db3d]
    add b
    ld b, a
    ld h, $98
    ld a, l
    and $1f
    ld l, a

jr_007_421e:
    push bc
    push hl
    push de
    jr jr_007_4236

jr_007_4223:
    inc c
    ld a, c
    and $0f
    jr z, jr_007_422d

    inc l
    inc l
    jr jr_007_4236

jr_007_422d:
    ld a, c
    sub $10
    ld c, a
    inc b
    ld a, l
    and $e0
    ld l, a

jr_007_4236:
    ld a, [bc]
    push bc
    ld c, a
    ld b, $c5
    ld a, [bc]

Jump_007_423c:
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl], a
    inc b
    ld a, l
    add $1f
    ld l, a
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl], a
    ld a, l
    sub $21
    ld l, a
    pop bc
    dec d
    jr nz, jr_007_4223

    pop de
    pop hl
    pop bc
    dec e
    jr nz, jr_007_4204

    ret


    ld hl, $db51
    ld a, [hl+]
    ld [$da01], a
    sub $10
    ld c, a
    ld a, [hl+]
    ld b, a
    jr nc, jr_007_4268

    dec b

jr_007_4268:
    ld a, [hl+]
    ld [$da00], a
    sub $10
    ld e, a
    ld d, [hl]
    jr nc, jr_007_4273

    dec d

jr_007_4273:
    ld a, e
    and $f0
    ld h, a
    ld a, [$db56]
    sub h
    jr z, jr_007_4294

    push bc
    push de
    rla
    jr nc, jr_007_4289

    ld a, e
    add $a0
    ld e, a
    jr nc, jr_007_4289

    inc d

jr_007_4289:
    ld a, h
    ld [$db56], a
    ld a, $0d
    call Call_007_42bc
    pop de
    pop bc

jr_007_4294:
    ld a, c
    and $f0
    ld h, a
    ld a, [$db55]
    sub h
    jr z, jr_007_42bb

    rla
    jr nc, jr_007_42a8

    ld a, c
    add $b0
    ld c, a
    jr nc, jr_007_42a8

    inc b

jr_007_42a8:
    ld a, h
    ld [$db55], a
    push bc
    ld bc, $0400

jr_007_42b0:
    dec bc
    ld a, b
    or c
    jr nz, jr_007_42b0

    pop bc
    ld a, $0b
    call Call_007_4318

jr_007_42bb:
    ret


Call_007_42bc:
Jump_007_42bc:
    ldh [$ff84], a
    ldh [$ff80], a
    call Call_000_15fc
    push hl
    call Call_000_15e3
    ld b, h
    ld c, l
    pop de
    ld a, [$da22]
    ld l, a
    ld a, [$da28]
    ld h, a
    jr jr_007_42e9

jr_007_42d4:
    ldh [$ff84], a
    inc c
    ld a, c
    and $0f
    jr z, jr_007_42e0

    inc e
    inc e
    jr jr_007_42e9

jr_007_42e0:
    ld a, c
    sub $10
    ld c, a
    inc b
    ld a, e
    and $e0
    ld e, a

jr_007_42e9:
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld a, [bc]
    push bc
    ld c, a
    ld b, $c5
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    pop bc
    ldh a, [$ff84]
    dec a
    jr nz, jr_007_42d4

    ld a, l
    ld [$da22], a
    ld a, [$da28]
    ld hl, $da23
    rra
    jr nc, jr_007_4313

    ld hl, $da24

jr_007_4313:
    ldh a, [$ff80]
    add [hl]
    ld [hl], a
    ret


Call_007_4318:
    ldh [$ff84], a
    ldh [$ff80], a
    call Call_000_15fc
    push hl
    call Call_000_15e3
    ld b, h
    ld c, l
    pop de
    ld a, [$da22]
    ld l, a
    ld a, [$da28]
    ld h, a
    jr jr_007_434c

jr_007_4330:
    ldh [$ff84], a
    ld a, c
    add $10
    ld c, a
    jr c, jr_007_4341

    ld a, e
    add $40
    ld e, a
    jr nc, jr_007_434c

    inc d
    jr jr_007_434c

jr_007_4341:
    ld a, [$db3d]
    add b
    ld b, a
    ld d, $98
    ld a, e
    and $1f
    ld e, a

jr_007_434c:
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld a, [bc]
    push bc
    ld c, a
    ld b, $c5
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    pop bc
    ldh a, [$ff84]
    dec a
    jr nz, jr_007_4330

    ld a, l
    ld [$da22], a
    ld a, [$da28]
    ld hl, $da23
    rra
    jr nc, jr_007_4376

    ld hl, $da24

jr_007_4376:
    ldh a, [$ff80]
    add [hl]
    ld [hl], a
    ret


    push bc
    push de
    push hl
    call Call_000_15e3
    ld b, h
    ld c, l
    pop hl
    ldh a, [$ff80]
    ld e, a
    jr jr_007_4394

jr_007_4389:
    inc c
    ld a, c
    and $0f
    jr nz, jr_007_4394

    ld a, c
    sub $10
    ld c, a
    inc b

jr_007_4394:
    ld a, [hl+]
    ld [bc], a
    dec e
    jr nz, jr_007_4389

    ldh a, [$ff80]
    pop de
    pop bc
    jp Jump_007_42bc


    ld hl, $db51
    ld a, [hl+]
    sub $10
    ld c, a
    ld a, [hl+]
    ld b, a
    jr nc, jr_007_43ac

    dec b

jr_007_43ac:
    ld a, [hl+]
    sub $10
    ld e, a
    ld d, [hl]
    jr nc, jr_007_43b4

    dec d

jr_007_43b4:
    ld a, $0b

jr_007_43b6:
    push af
    push bc
    push de
    ld a, $0d
    call Call_007_441e
    pop hl
    ld de, $0010
    add hl, de
    ld d, h
    ld e, l
    pop bc
    pop af
    dec a
    jr nz, jr_007_43b6

    ret


    ld hl, $db51
    ld a, [hl+]
    sub $10
    ld c, a
    ld a, [hl+]
    ld b, a
    jr nc, jr_007_43d7

    dec b

jr_007_43d7:
    ld a, [hl+]
    sub $10
    ld e, a
    ld d, [hl]
    jr nc, jr_007_43df

    dec d

jr_007_43df:
    ld a, e
    and $f0
    ld h, a
    ld a, [$db7e]
    sub h
    jr z, jr_007_4400

    push bc
    push de
    rla
    jr nc, jr_007_43f5

    ld a, e
    add $a0
    ld e, a
    jr nc, jr_007_43f5

    inc d

jr_007_43f5:
    ld a, h
    ld [$db7e], a
    ld a, $0d
    call Call_007_441e
    pop de

Jump_007_43ff:
    pop bc

jr_007_4400:
    ld a, c
    and $f0
    ld h, a
    ld a, [$db7d]
    sub h
    jr z, jr_007_441d

    rla
    jr nc, jr_007_4414

    ld a, c
    add $c0
    ld c, a
    jr nc, jr_007_4414

    inc b

jr_007_4414:
    ld a, h
    ld [$db7d], a
    ld a, $0b
    call Call_007_4493

jr_007_441d:
    ret


Call_007_441e:
    swap a
    ldh [$ff80], a
    ld a, [$db3e]
    dec a
    cp d
    ret c

    ld a, d
    ldh [$ff83], a
    ld a, e
    and $f0
    ld e, a
    ld a, c
    and $f0
    ld c, a

Jump_007_4433:
jr_007_4433:
    ld a, [$db3d]
    dec a
    cp b
    jr nc, jr_007_4445

    ldh a, [$ff80]
    add c
    ret nc

    ldh [$ff80], a
    inc b
    ld c, $00
    jr jr_007_4433

jr_007_4445:
    ld a, b
    ldh [$ff82], a
    ld hl, $cd35
    ld a, d
    add l
    ld l, a
    ld a, b
    rlca
    add [hl]
    ld l, a
    ld h, $cd
    ld a, [hl+]
    ld d, a
    ld l, [hl]
    ldh a, [$ff80]
    add c
    ld b, $ff
    jr c, jr_007_4461

    ld b, a
    dec b
    xor a

jr_007_4461:
    ldh [$ff80], a
    inc d
    jr jr_007_4480

jr_007_4466:
    ld h, $cb
    ld a, [hl]
    and $f0
    cp e
    jr nz, jr_007_447f

    ld h, $ca
    ld a, [hl]
    cp c
    jr c, jr_007_447f

    scf
    sbc b
    jr nc, jr_007_447f

    ld h, $bb
    ld a, [hl]
    or a
    call z, Call_007_4508

jr_007_447f:
    inc l

jr_007_4480:
    dec d
    jr nz, jr_007_4466

    ldh a, [$ff80]
    or a
    ret z

    ldh a, [$ff83]
    ld d, a
    ldh a, [$ff82]
    ld b, a
    inc b
    ld c, $00
    jp Jump_007_4433


Call_007_4493:
    swap a
    ldh [$ff80], a
    ld a, [$db3d]
    dec a
    cp b
    ret c

    ld a, b
    ldh [$ff82], a
    ld a, c
    and $f0
    ld c, a
    ld a, e
    and $f0
    ld e, a

Jump_007_44a8:
jr_007_44a8:
    ld a, [$db3e]
    dec a
    cp d
    jr nc, jr_007_44ba

    ldh a, [$ff80]
    add e
    ret nc

    ldh [$ff80], a
    inc d
    ld e, $00
    jr jr_007_44a8

jr_007_44ba:
    ld a, d
    ldh [$ff83], a
    ld hl, $cd35
    ld a, d
    add l
    ld l, a
    ld a, b
    rlca
    add [hl]
    ld l, a
    ld h, $cd
    ld a, [hl+]
    ld b, a
    ld l, [hl]
    ldh a, [$ff80]
    add e
    ld d, $ff
    jr c, jr_007_44d6

    ld d, a
    dec d
    xor a

jr_007_44d6:
    ldh [$ff80], a
    inc b
    jr jr_007_44f5

jr_007_44db:
    ld h, $ca
    ld a, [hl]
    and $f0
    cp c
    jr nz, jr_007_44f4

    ld h, $cb
    ld a, [hl]
    cp e
    jr c, jr_007_44f4

    scf
    sbc d
    jr nc, jr_007_44f4

    ld h, $bb
    ld a, [hl]
    or a
    call z, Call_007_4508

jr_007_44f4:
    inc l

jr_007_44f5:
    dec b
    jr nz, jr_007_44db

    ldh a, [$ff80]
    or a
    ret z

    ldh a, [$ff82]
    ld b, a
    ldh a, [$ff83]
    ld d, a
    inc d
    ld e, $00
    jp Jump_007_44a8


Call_007_4508:
    push bc
    push de
    push hl
    ld h, $ca
    ld c, [hl]
    ld h, $cb
    ld e, [hl]
    ldh a, [$ff82]
    ld b, a
    ldh a, [$ff83]
    ld d, a
    ld h, $cc
    ld l, [hl]
    ld h, $7a
    push hl
    ld a, [hl]
    ld hl, $a8b2
    call Call_000_07c4
    ld d, h
    pop hl
    ld a, d
    or a
    jr z, jr_007_4580

    inc h
    ld e, $5c
    ld a, [hl]
    swap a
    and $0f
    ld [de], a
    ld e, $5b
    ld a, [hl]
    and $0f
    ld [de], a
    inc h
    ld e, $4c
    ld a, [hl]
    ld [de], a
    inc h
    ld e, $4a
    ld a, [hl]
    ld [de], a
    inc h
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $62
    ld a, $ff
    ld [de], a
    inc h
    ld a, [hl]
    ld bc, $0005
    ld hl, $db7f
    jr jr_007_4557

jr_007_4556:
    add hl, bc

jr_007_4557:
    cp [hl]
    jr nz, jr_007_4556

    inc hl
    ld e, $46
    ld a, [hl+]
    ld [de], a
    ld e, $18
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl]
    ld [de], a
    ld e, $5e
    ld a, $08
    ld [de], a
    inc e
    ld [de], a
    ld e, $60
    xor a
    ld [de], a
    inc e
    ld [de], a
    pop hl
    ld [hl], $01
    ld e, $49
    ld a, l
    ld [de], a
    pop de
    pop bc
    ret


jr_007_4580:
    pop hl
    pop de
    pop bc
    ret


    ld a, [$db57]
    ld b, a
    ld hl, $dbcf
    ld d, $bb

jr_007_458d:
    inc hl

jr_007_458e:
    ld a, [hl+]
    or a
    ret z

    ld a, [hl+]
    cp b
    jr nz, jr_007_458d

    ld a, [hl+]
    ld e, a
    ld a, $01
    ld [de], a
    jr jr_007_458e

    inc e
    ld hl, $dbd0
    ld b, h
    ld c, l

jr_007_45a2:
    ld a, [hl+]
    or a
    jr z, jr_007_45b7

    cp e
    jr nz, jr_007_45ad

    inc hl
    inc hl
    jr jr_007_45a2

jr_007_45ad:
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    jr jr_007_45a2

jr_007_45b7:
    xor a
    ld [bc], a
    ld a, c
    ld [$dcfd], a
    ld a, b
    ld [$dcfe], a
    ret


    db $0f, $4c, $00, $17, $f6, $0d, $10, $51, $0e, $16, $f9, $45, $1a, $47, $42, $47
    db $5c, $47

    add [hl]
    ld b, a

    db $b9, $47, $ed, $47, $6f, $48

    sbc d
    ld b, a
    or h
    ld b, [hl]

    db $be, $49

    jr z, jr_007_462e

    ld b, l
    ld c, d
    db $da
    ld c, d

    db $11, $4b, $5c, $4b, $ca, $47

    sub d
    ld c, e
    sub [hl]
    ld c, e
    and b
    ld c, e
    call $d94b
    ld c, e
    db $16

    db $03, $a4, $0d, $40, $04, $46, $72, $0b, $01, $00, $0d, $11, $46, $05, $03, $0d
    db $62, $46, $05, $03, $18, $05, $08, $16

    call Call_000_0647
    ld e, $45
    ld [de], a
    and $e0
    swap a
    rra
    ld e, $3a
    ld [de], a
    ld hl, $4658
    add l
    ld l, a
    jr nc, jr_007_4627

    inc h

jr_007_4627:
    ld a, [hl]
    ld l, a
    rla
    sbc a
    ld h, a
    ld e, $07

jr_007_462e:
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    ld e, $3a
    ld a, [de]
    ld hl, $465a
    add l
    ld l, a
    jr nc, jr_007_4640

    inc h

jr_007_4640:
    ld a, [hl]
    ld l, a
    rla
    sbc a
    ld h, a
    ld e, $04
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    call Call_007_4662
    ld e, $3a
    ld a, [de]
    add $0a
    ld [de], a
    ret


    db $fa, $fb, $00, $05, $06, $05, $00, $fb, $fa, $fb

Call_007_4662:
    ld e, $3a
    ld a, [de]
    ld hl, $4689
    add a
    add l
    ld l, a
    jr nc, jr_007_466e

    inc h

jr_007_466e:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $3a
    ld a, [de]
    ld hl, $468d
    add a
    add l
    ld l, a
    jr nc, jr_007_4681

    inc h

jr_007_4681:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    db $00, $fd, $00, $fe, $00, $00, $00, $02, $00, $03, $00, $02, $00, $00, $00, $fe
    db $00, $fd, $00, $fe, $00, $fe, $80, $fe, $00, $00, $80, $01, $00, $02, $80, $01
    db $00, $00, $80, $fe, $00, $fe, $80, $fe, $17, $f6, $0d, $03, $a4, $0d, $40, $04
    db $46, $72, $0b, $01, $00, $0d, $c7, $46, $05, $0c, $18, $05, $04, $16

    call Call_000_0647
    ld e, $45
    ld [de], a
    and $e0
    swap a
    rra
    ld hl, $46d8
    jp Jump_007_46ec


    db $00, $ff, $4b, $ff, $00, $00, $b5, $00, $00, $01, $b5, $00, $00, $00, $4b, $ff
    db $00, $ff, $4b, $ff

Call_007_46ec:
Jump_007_46ec:
    add a
    add l
    ld l, a
    jr nc, jr_007_46f2

    inc h

jr_007_46f2:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc hl
    inc hl
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    add a
    add l
    ld l, a
    jr nc, jr_007_4709

    inc h

jr_007_4709:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc hl
    inc hl
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    db $03, $a4, $0d, $40, $04, $89, $76, $0b, $19, $00, $02, $19, $01, $02, $19, $02
    db $02, $0f, $47, $10, $05, $02, $0f, $47, $00, $19, $03, $02, $19, $04, $02, $19
    db $05, $02, $0f, $47, $10, $05, $02, $16, $03, $a4, $0d, $40, $04, $89, $76, $0b
    db $19, $06, $02, $19, $07, $02, $19, $08, $02, $19, $09, $02, $0f, $47, $10, $05
    db $02, $16, $03, $80, $47, $47, $04, $52, $6f, $0b, $26, $00, $ff, $08, $00, $00
    db $2a, $f0, $0f, $47, $10, $19, $04, $02, $0f, $47, $00, $05, $02, $19, $05, $02
    db $0f, $47, $10, $05, $02, $16

    call Call_000_0c91
    jp Jump_000_0da4


    inc bc
    and h
    dec c
    ld b, b
    inc b
    ld d, d
    ld l, a
    dec bc
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
    ld d, $03
    and h
    dec c
    ld b, b
    inc b
    ld d, d
    ld l, a
    dec bc
    ld h, $00
    ld bc, $8008
    rst $38
    add hl, bc
    inc b
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    ld a, [bc]
    jr @+$1b

    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    db $16

    db $04, $52, $6f, $0b, $0f, $47, $10, $19, $06, $04, $19, $05, $04, $19, $04, $04
    db $16, $0f, $47, $10, $04, $83, $77, $0b, $09, $02, $19, $00, $02, $19, $01, $02
    db $19, $02, $02, $19, $03, $02, $19, $04, $02, $19, $05, $02, $19, $06, $02, $19
    db $07, $02, $0a, $16, $04, $86, $54, $08, $08, $00, $ff, $0d, $04, $48, $03, $37
    db $48, $47, $19, $13, $0a, $19, $14, $10, $01, $15, $00

    ld e, $04
    call Call_000_0647
    and $0f
    sub $08
    ld l, a
    rla
    sbc a
    ld h, a
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    ld e, $07
    ld a, [de]
    sub $04
    ld [de], a
    inc e
    ld a, [de]
    sbc $00
    ld [de], a
    ld e, $39
    call Call_000_0647
    and $03
    ld [de], a
    ld e, $3a
    ld a, $01
    ld [de], a
    ld a, [$a083]
    ld e, $46
    ld [de], a
    ret


    call Call_000_0da4
    call Call_000_1ab3
    jr z, jr_007_4843

    ld h, d
    jp Jump_000_0bba


jr_007_4843:
    ld e, $3a
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld a, $08
    ld [de], a
    ld e, $39
    ld a, [de]
    inc a
    and $03
    ld [de], a
    ld hl, $4867
    add a
    add l
    ld l, a
    jr nc, jr_007_485c

    inc h

jr_007_485c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $0d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    db $80, $00, $20, $00, $80, $ff, $e0, $ff, $04, $86, $54, $08, $0d, $8c, $48, $24
    db $1f, $03, $a4, $0d, $40, $19, $16, $02, $19, $17, $04, $19, $18, $04, $19, $19
    db $04, $19, $1a, $04, $16

    ld e, $07
    ld a, [de]
    and $f0
    ld [de], a
    ld a, [$a083]
    ld e, $46
    ld [de], a
    ret


    db $17, $f6, $0d, $03, $a4, $0d, $40, $04, $52, $6f, $0b, $0f, $3a, $00, $0d, $c9
    db $48, $05, $03, $19, $07, $03, $0d, $c9, $48, $19, $08, $03, $19, $09, $03, $0d
    db $c9, $48, $19, $0a, $03, $19, $07, $03, $04, $46, $72, $0b, $19, $00, $08, $16

    ld e, $3a
    ld a, [de]
    ld hl, $48e4
    add a
    add l
    ld l, a
    jr nc, jr_007_48d5

    inc h

jr_007_48d5:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $39
    ld a, [de]
    call Call_007_46ec
    ld e, $3a
    ld a, [de]
    inc a
    ld [de], a
    ret


    db $ea, $48, $fe, $48, $12, $49, $00, $fa, $c2, $fb, $00, $00, $3e, $04, $00, $06
    db $3e, $04, $00, $00, $c2, $fb, $00, $fa, $c2, $fb, $00, $fd, $e1, $fd, $00, $00
    db $1f, $02, $00, $03, $1f, $02, $00, $00, $e1, $fd, $00, $fd, $e1, $fd, $80, $fe
    db $f1, $fe, $00, $00, $0f, $01, $80, $01, $0f, $01, $00, $00, $f1, $fe, $80, $fe
    db $f1, $fe, $17, $f6, $0d, $03, $b5, $49, $47, $04, $52, $6f, $0b, $22, $9a, $49
    db $07, $10, $39, $0e, $03, $3f, $49, $68, $49, $75, $49, $07, $00, $00, $08, $00
    db $fe, $29, $00, $2a, $3a, $05, $0a, $07, $80, $00, $08, $80, $ff, $29, $00, $2a
    db $00, $05, $04, $07, $00, $04, $08, $00, $01, $29, $c0, $2a, $00, $05, $14, $2a
    db $e0, $05, $28, $16, $07, $00, $fe, $08, $00, $fe, $29, $10, $2a, $30, $05, $28
    db $16, $07, $00, $04, $08, $00, $fe, $29, $8e, $2a, $36, $05, $0a, $07, $80, $00
    db $08, $80, $ff, $29, $00, $2a, $00, $05, $04, $07, $00, $fc, $08, $00, $02, $29
    db $30, $2a, $d0, $05, $32, $16, $19, $01, $03, $19, $02, $03, $19, $0b, $03, $19
    db $0c, $03, $19, $0d, $03, $19, $0e, $03, $19, $0f, $03, $19, $10, $03, $06, $9a
    db $49

    call Call_000_0c80
    call Call_000_0c91
    jp Jump_000_0da4


    db $0f, $4c, $01, $0d, $d3, $49, $03, $a4, $0d, $40, $04, $57, $56, $0a, $19, $05
    db $02, $19, $06, $02, $16

    push bc
    ld h, d
    call Call_000_0647
    and $1f
    ld e, a
    sub $10
    ld c, a
    rla
    sbc a
    ld b, a
    ld l, $07
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    call Call_000_0647
    and $1f
    sub $10
    ld c, a
    rla
    sbc a
    ld b, a
    ld l, $04
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, e
    rra
    rra
    rra
    and $03
    inc b
    ld b, $00
    jr nz, jr_007_4a0b

    ld b, $04
    xor $03

jr_007_4a0b:
    add b
    ld hl, $4a14
    call Call_007_46ec
    pop bc
    ret


    db $00, $fe, $96, $fe, $00, $00, $6a, $01, $00, $02, $6a, $01, $00, $00, $96, $fe
    db $00, $fe, $96, $fe

    rrca
    ld c, h
    ld bc, $b804
    ld e, l
    ld a, [bc]
    dec c
    dec [hl]
    ld c, d
    dec b
    ld [bc], a
    ld d, $1e
    ld c, b
    ld a, [de]
    ld h, a
    ld l, $39
    ld a, [hl]
    ld e, $15
    ld [de], a
    ld l, $45
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    rrca
    ld c, h
    ld bc, $4804
    ld h, h
    ld a, [bc]
    dec c
    ld d, d
    ld c, d
    dec b
    ld [bc], a
    ld d, $1e
    ld c, b
    ld a, [de]
    ld h, a
    ld l, $3a
    ld a, [hl]
    ld e, $15
    ld [de], a
    ld l, $45
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    db $0f, $4c, $00, $17, $f6, $0d, $03, $a4, $0d, $40, $0d, $93, $4a, $11, $7d, $4a
    db $04, $46, $72, $0b, $05, $02, $01, $00, $05, $24, $16, $04, $52, $6f, $0b, $05
    db $02, $09, $03, $19, $07, $03, $19, $08, $03, $19, $09, $03, $19, $0a, $03, $0a
    db $16

    push bc
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $3d
    ld c, [hl]
    dec l
    ld b, [hl]
    dec l
    push bc
    call Call_000_0647
    and $1f
    ld e, a
    ld a, [hl]
    sub $40
    sub $0f
    add e
    ldh [$ff84], a
    call Call_000_291c
    call Call_000_28e0
    ldh a, [$ff9a]
    ld d, a
    ld e, $0d
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    pop bc
    ldh a, [$ff84]
    call Call_000_291e
    call Call_000_28e0
    ldh a, [$ff9a]
    ld d, a
    ld e, $0f
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    call Call_000_0647
    and $03
    ld e, $27
    ld [de], a
    pop bc
    ret


    rla
    ld b, d
    inc bc
    jr nz, jr_007_4adf

jr_007_4adf:
    nop
    ld hl, $0000
    inc h
    ld b, b
    inc bc
    add h
    ld c, e
    ld b, a
    add hl, bc
    ld [bc], a
    ld hl, $fffe
    dec b
    ld [bc], a
    ld hl, $0001
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld hl, $ffff
    dec b
    ld [bc], a
    ld hl, $0001
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld hl, $ffff
    dec b
    ld [bc], a
    ld hl, $0000
    dec b
    ld [bc], a
    ld a, [bc]
    db $16

    db $17, $42, $03, $20, $00, $00, $21, $00, $00, $24, $40, $03, $84, $4b, $47, $09
    db $02, $20, $01, $00, $21, $01, $00, $05, $02, $20, $fe, $ff, $21, $00, $00, $05
    db $02, $20, $00, $00, $21, $ff, $ff, $05, $02, $20, $02, $00, $21, $00, $00, $05
    db $02, $20, $ff, $ff, $21, $01, $00, $05, $02, $20, $ff, $ff, $21, $ff, $ff, $05
    db $02, $20, $01, $00, $21, $ff, $ff, $05, $02, $0a, $16, $17, $42, $03, $20, $00
    db $00, $21, $00, $00, $03, $84, $4b, $47, $09, $02, $21, $ff, $ff, $05, $02, $21
    db $01, $00, $05, $02, $0a, $09, $02, $21, $ff, $ff, $05, $02, $21, $00, $00, $05
    db $02, $0a, $16

    ld hl, $da06
    ld e, $07
    ld a, [de]
    add [hl]
    ld [hl+], a
    ld e, $04
    ld a, [de]
    add [hl]
    ld [hl], a
    ret


    dec de
    ld b, b
    ld c, [hl]
    inc bc
    ld h, $40
    cp $0d
    ld [hl-], a
    db $10
    jr @+$08

    and a
    ld c, e
    ld h, $c0
    ld bc, $320d
    db $10
    add sp, $03
    call nz, $474b
    inc b
    ld d, d
    ld l, a
    dec bc
    ld [$fd00], sp
    ld a, [hl+]
    jr nz, jr_007_4bce

    inc b
    inc b
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
    ld b, $16
    call Call_000_0c80
    call Call_000_0c91
    jp Jump_000_0da4


    dec c

jr_007_4bce:
    db $d3
    ld c, e
    ld b, $d9
    ld c, e
    ld e, $45
    ld a, [de]
    cpl
    ld [de], a
    ret


    inc bc
    dec e
    ld c, h
    ld b, a
    ld [$0400], sp
    dec b
    ld b, $16
    jr jr_007_4c0f

    ldh [rNR52], a
    ld b, b
    ld [bc], a
    dec c
    ld [hl-], a
    db $10
    xor $03
    call nz, $474b
    dec c
    and l
    ld a, [de]
    ld [de], a
    dec b
    ld c, h
    inc b
    ld d, d
    ld l, a
    dec bc
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    inc bc
    add hl, de
    inc b
    inc bc
    ld d, $04
    add [hl]
    ld d, h
    ld [$160d], sp
    ld c, h
    add hl, de
    inc d
    ld [bc], a

jr_007_4c0f:
    add hl, de
    dec d
    inc bc
    add hl, de
    inc d
    inc bc
    ld d, $fa
    add e
    and b
    ld e, $46
    ld [de], a
    ret


    call Call_000_0da4
    ld hl, $ffaf
    ld a, $03
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    call Call_000_1c88
    jr nc, jr_007_4c39

    ld e, $07
    ld bc, $4be3
    jp Jump_000_0846


jr_007_4c39:
    ret


    db $0f, $39, $07, $0f, $3a, $07, $17, $ff, $0d, $10, $5a, $0e, $1e, $51, $4d, $bb
    db $4d

    ld a, [$fa4e]
    ld c, [hl]
    ld a, [$fa4e]
    ld c, [hl]

    db $56, $4e, $fa, $4e, $a4, $4f

    ld hl, $2b50
    ld d, c
    ld c, e
    ld d, d

    db $c7, $52

    inc l
    ld d, e

    db $d4, $53

    add hl, bc
    ld d, h
    add hl, hl
    ld d, h
    sbc e
    ld d, h
    add $54
    db $fd
    ld d, c

    db $a9, $52, $b8, $52

    adc h
    ld d, l
    or l
    ld c, l
    jp nc, $db55

    ld d, l
    pop hl
    ld d, l
    ei
    ld d, l
    xor a
    ld c, l
    ld c, l
    ld c, [hl]

    db $0f, $46, $00, $18, $0f, $4c, $00, $10, $5a, $0e, $1e, $ca, $4c, $ca, $4c

    jp z, $ca4c

    ld c, h
    jp z, $ca4c

    ld c, h

    db $ca, $4c, $ca, $4c, $ca, $4c

    jp z, $ca4c

    ld c, h
    db $ca
    ld c, h

    db $ca, $4c

    db $ca
    ld c, h

    db $e5, $4c

    jp z, $ca4c

    ld c, h
    jp z, $ca4c

    ld c, h
    db $ca
    ld c, h

    db $ca, $4c, $ca, $4c

    jp z, $ca4c

    ld c, h
    jp z, $ca4c

    ld c, h
    jp z, $ca4c

    ld c, h
    jp z, $ca4c

    ld c, h

    db $03, $a4, $0d, $40, $04, $52, $6f, $0b, $0f, $47, $10, $19, $06, $04, $19, $05
    db $04, $19, $04, $04, $16, $18, $29, $00, $06, $ec, $4c, $26, $00, $02, $0d, $32
    db $10, $f0, $0f, $5a, $06, $0f, $4c, $02, $0f, $39, $10, $0f, $3a, $10, $03, $39
    db $4d, $47, $24, $11, $0f, $47, $00, $04, $83, $77, $0b, $19, $00, $02, $19, $01
    db $02, $19, $02, $02, $19, $03, $02, $19, $04, $02, $19, $05, $02, $19, $06, $02
    db $19, $07, $02, $19, $00, $02, $19, $01, $02, $19, $02, $02, $19, $03, $02, $0f
    db $47, $10, $19, $04, $02, $19, $05, $02, $19, $06, $02, $19, $07, $02, $16

    call Call_000_0c80
    call Call_000_0da4
    call Call_007_4d97
    call Call_000_197f
    jr nc, jr_007_4d50

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a

jr_007_4d50:
    ret


    db $0f, $4c, $01, $03, $76, $4d, $47, $04, $52, $6f, $0b, $01, $03, $26, $00, $04
    db $05, $08, $26, $00, $01, $05, $03, $26, $80, $00, $05, $02, $26, $55, $00, $05
    db $02, $18, $05, $08, $16

    call Call_000_0da4
    call Call_007_4d90
    jr nc, jr_007_4d82

    ld h, d
    jp Jump_000_0bba


jr_007_4d82:
    call Call_000_197f
    jr nc, jr_007_4d8f

    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_4d8f:
    ret


Call_007_4d90:
    call Call_000_1aea
    ld a, $ff
    jr jr_007_4d9d

Call_007_4d97:
    call Call_000_1aea

Call_007_4d9a:
    ld a, [$a05b]

jr_007_4d9d:
    ld [$df15], a
    call Call_000_3b8f
    jr c, jr_007_4daa

    ldh a, [$ff9a]
    ld d, a
    and a
    ret


jr_007_4daa:
    ldh a, [$ff9a]
    ld d, a
    scf
    ret


    rrca
    ld c, h
    ld a, [bc]
    ld b, $c4
    ld c, l
    rrca
    ld c, h
    inc b
    ld b, $c4
    ld c, l

    db $0f, $4c, $0a, $0d, $a5, $1a, $12

    dec b
    ld c, [hl]

    db $03, $de, $4d, $47, $04, $52, $6f, $0b, $26, $00, $04, $19, $07, $03, $19, $08
    db $03, $19, $09, $03, $19, $0a, $03, $06, $cf, $4d

    call Call_000_0da4
    call Call_007_4d90
    jr nc, jr_007_4dea

    ld h, d
    jp Jump_000_0bba


jr_007_4dea:
    call Call_000_197f
    jr nc, jr_007_4e04

    ld e, $2e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_4e04:
    ret


    jr jr_007_4e0a

    ld e, $4e
    ld b, a

jr_007_4e0a:
    inc b
    ld d, d
    ld l, a
    dec bc
    add hl, bc
    ld a, [bc]
    add hl, de
    rlca
    inc bc
    add hl, de
    ld [$1903], sp
    add hl, bc
    inc bc
    add hl, de
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld d, $1e
    inc b
    ld bc, $0030
    call Call_000_0d35
    call Call_000_0da4
    call Call_007_4d90
    jr nc, jr_007_4e32

    ld h, d
    jp Jump_000_0bba


jr_007_4e32:
    call Call_000_197f
    jr nc, jr_007_4e4c

    ld e, $2e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_4e4c:
    ret


    rrca
    ld c, h
    inc d
    rrca
    ld e, d
    ld b, $06
    ld e, a
    ld c, [hl]

    db $0f, $4c, $14, $0d, $a5, $1a, $12, $a6, $4e, $03, $85, $4e, $47, $04, $52, $6f
    db $0b, $26, $00, $04, $19, $01, $03, $19, $02, $03, $19, $0b, $03, $19, $0c, $03
    db $19, $0d, $03, $19, $0e, $03, $19, $0f, $03, $19, $10, $03, $06, $6a, $4e

    call Call_000_0da4
    call Call_007_4d90
    call Call_000_197f
    jr nc, jr_007_4ea5

    ld e, $26
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_4ea5:
    ret


    db $18, $03, $cb, $4e, $47, $04, $52, $6f, $0b, $09, $05, $19, $01, $03, $19, $02
    db $03, $19, $0b, $03, $19, $0c, $03, $19, $0d, $03, $19, $0e, $03, $19, $0f, $03
    db $19, $10, $03, $0a, $16

    ld e, $04
    ld bc, $0030
    call Call_000_0d35
    call Call_000_0da4
    call Call_007_4d90
    jr nc, jr_007_4edf

    ld h, d
    jp Jump_000_0bba


jr_007_4edf:
    call Call_000_197f
    jr nc, jr_007_4ef9

    ld e, $26
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_4ef9:
    ret


    db $0f, $4c, $03, $03, $8a, $4f, $47, $04, $68, $59, $0a, $24, $1e, $0d, $23, $4f
    db $19, $03, $02, $19, $04, $02, $19, $03, $02, $19, $04, $02

    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    db $16

    push bc
    ld a, [$a070]
    or a
    ld c, $00
    jr z, jr_007_4f2e

    ld c, $03

jr_007_4f2e:
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $39
    ld a, [hl]
    add c
    ld hl, $4f66
    add a
    add l
    ld l, a
    jr nc, jr_007_4f3f

    inc h

jr_007_4f3f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld e, $45
    ld a, [de]
    rla
    jr nc, jr_007_4f56

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_007_4f56:
    ld e, $0d
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    pop bc
    ret


    db $72, $4f, $76, $4f, $7a, $4f

    ld a, [hl]
    ld c, a
    add d
    ld c, a
    add [hl]
    ld c, a

    db $d0, $01, $28, $ff, $00, $02, $00, $00, $d0, $01, $d8, $00

    ld [hl], h
    nop
    jp z, $80ff

    nop
    nop
    nop
    ld [hl], h
    nop
    ld [hl], $00

    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_4f96

    ld h, d
    jp Jump_000_0bba


jr_007_4f96:
    call Call_000_197f
    jr nc, jr_007_4fa3

    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_4fa3:
    ret


    db $0f, $4c, $05, $03, $07, $50, $47, $04, $1a, $61, $0a, $0d, $a5, $1a, $12, $c1
    db $4f, $26, $a0, $01, $19, $03, $02, $19, $04, $02, $06, $b8, $4f, $26, $80, $00
    db $19, $03, $02, $19, $04, $02, $19, $03, $02, $19, $04, $02, $0f, $39, $05, $0f
    db $3a, $05, $19, $05, $02, $19, $06, $02, $19, $05, $02, $19, $06, $02, $0f, $39
    db $03, $0f, $3a, $03, $19, $07, $02, $19, $08, $02, $19, $07, $02, $19, $08, $02
    db $0f, $39, $02, $0f, $3a, $02, $19, $09, $02, $19, $0a, $02, $19, $09, $02, $19
    db $0a, $02, $16

    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_5013

    ld h, d
    jp Jump_000_0bba


jr_007_5013:
    call Call_000_197f
    jr nc, jr_007_5020

    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_5020:
    ret


    rrca
    ld c, h
    inc bc
    inc bc
    db $db
    ld d, b
    ld b, a
    inc b
    or [hl]
    ld d, l
    ld a, [bc]
    dec c
    and l
    ld a, [de]
    ld [de], a
    ld h, b
    ld d, b
    rrca
    dec sp
    nop
    ld h, $00
    inc b
    dec b
    ld [$0026], sp
    inc bc
    dec b
    ld [$8026], sp
    ld bc, $0805
    ld h, $80
    nop
    dec b
    ld [$b003], sp
    ld d, b
    ld b, a
    ld h, $80
    rst $38
    dec b
    ld [$8026], sp
    cp $05
    ld [$0026], sp
    db $fd
    dec b
    ld [$0026], sp
    db $fc
    nop
    rrca
    dec sp
    ld bc, $0026
    ld [bc], a
    dec b
    db $10
    ld h, $80
    ld bc, $1005
    ld h, $c0
    nop
    dec b
    db $10
    ld h, $40
    nop
    dec b
    db $10
    inc bc
    or b
    ld d, b
    ld b, a
    ld h, $c0
    rst $38
    dec b
    db $10
    ld h, $40
    rst $38
    dec b
    db $10
    ld h, $80
    cp $05
    db $10
    ld h, $00
    cp $00
    inc h
    ld b, c
    inc bc
    inc c
    ld d, c
    ld b, a
    dec c
    and l
    ld a, [de]
    ld [de], a
    and l
    ld d, b
    ld a, [hl+]
    ld b, b
    ld h, $ab
    cp $08
    nop
    cp $05
    inc d
    ld d, $2a
    db $10
    ld h, $56
    rst $38
    ld [$ff00], sp
    dec b
    jr z, jr_007_50c6

    call Call_000_0da4
    ld hl, $a009
    ld e, l
    ld a, [de]
    sub [hl]
    add $08
    cp $10
    jr nc, jr_007_50de

    ld l, $0b
    ld e, l
    ld a, [de]
    sub [hl]
    add $08

jr_007_50c6:
    cp $10
    jr nc, jr_007_50de

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    jp Jump_000_0bba


    call Call_000_0da4

jr_007_50de:
    ld e, $3b
    ld a, [de]
    or a
    ld e, $15
    ld a, [$da0e]
    jr nz, jr_007_50ee

    and $06
    rrca
    jr jr_007_50f2

jr_007_50ee:
    and $0c
    rrca
    rrca

jr_007_50f2:
    add $03
    ld [de], a
    call Call_007_4d97
    jr nc, jr_007_50fe

    ld h, d
    jp Jump_000_0bba


jr_007_50fe:
    call Call_000_197f
    jr nc, jr_007_510b

    ld e, $07
    ld bc, $508e
    jp Jump_000_0846


jr_007_510b:
    ret


    call Call_000_0c91
    call Call_000_0c94
    call Call_000_0da4
    ld e, $15
    ld a, [$da0e]
    and $0c
    rrca
    rrca
    add $03
    ld [de], a
    call Call_007_4d97
    jr nc, jr_007_512a

    ld h, d
    jp Jump_000_0bba


jr_007_512a:
    ret


    rla
    or $0d
    rrca
    ld c, h
    inc b
    inc bc
    sub h
    ld d, c
    ld b, a
    inc b
    ld c, h
    ld e, h
    ld a, [bc]
    ld h, $00
    inc b
    rrca
    add hl, bc
    ret nz

    dec c
    ld l, h
    ld d, c
    ld [hl+], a
    ld h, c
    ld d, c
    rlca
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    inc bc
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $03
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1903], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    inc bc
    ld b, $46
    ld d, c
    ld a, [hl+]
    db $10
    ld [$ff00], sp
    dec b
    jr nz, jr_007_5193

    ldh a, [rP1]
    ld d, $c5
    ld h, d
    ld l, $45
    ld a, [hl]
    rla
    ld a, $e0
    ld bc, $000a
    jr nc, jr_007_517e

    ld a, $20
    ld bc, $fff6

jr_007_517e:
    ld l, $11
    ld [hl], a
    ld l, $3b
    ld a, $80
    ld [hl+], a
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld a, $80
    ld [hl+], a
    ld a, $f8
    ld [hl+], a
    ld [hl], $ff
    pop bc

jr_007_5193:
    ret


    call Call_007_51c0
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    call Call_007_51ce
    call Call_007_4d97
    ld hl, $a009
    ld e, l
    ld a, [de]
    sub [hl]
    add $08
    cp $10
    jr nc, jr_007_51bf

    ld a, $01
    ld [$a07c], a
    ld e, $07
    ld bc, $516b
    jp Jump_000_0846


jr_007_51bf:
    ret


Call_007_51c0:
    ld e, $03
    ld h, d
    ld l, $3b
    ld c, $06

jr_007_51c7:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_007_51c7

    ret


Call_007_51ce:
Jump_007_51ce:
    ld hl, $a003
    ld e, $3b
    ld b, d
    ld c, l
    ld a, [bc]
    ld [de], a
    add [hl]
    ld [bc], a
    inc e
    inc l
    inc c
    ld a, [bc]
    ld [de], a
    adc [hl]
    ld [bc], a
    inc e
    inc l
    inc c
    ld a, [bc]
    ld [de], a
    adc [hl]
    ld [bc], a
    inc e
    inc l
    inc c
    ld a, [bc]
    ld [de], a
    add [hl]
    ld [bc], a
    inc e
    inc l
    inc c
    ld a, [bc]
    ld [de], a
    adc [hl]
    ld [bc], a
    inc e
    inc l
    inc c
    ld a, [bc]
    ld [de], a
    adc [hl]
    ld [bc], a
    ret


    rla
    or $0d
    rrca
    ld c, h
    inc b
    inc bc
    inc a
    ld d, d
    ld b, a
    inc b
    ld c, h
    ld e, h
    ld a, [bc]
    ld h, $00
    ld [bc], a
    dec c
    ld l, h
    ld d, c
    ld [hl+], a
    ld hl, $0752
    ld a, [hl+]
    db $10
    ld [$ff80], sp
    dec b
    db $10
    ld a, [hl+]
    ldh a, [rTIMA]
    db $10
    ld d, $19
    inc bc
    ld [bc], a
    add hl, de
    inc b
    inc bc
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $03
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1903], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    inc bc
    ld b, $21
    ld d, d
    call Call_007_51c0
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    jp Jump_007_51ce


    rrca
    ld c, h
    inc b
    inc bc
    ld [hl], d
    ld d, d
    ld b, a
    inc b
    jp nz, Jump_000_0a62

    ld h, $33
    ld bc, $0319
    ld b, $19
    inc b
    ld b, $19
    dec b
    ld b, $0f
    ld a, [hl-]
    inc c
    add hl, de
    ld b, $06
    rrca
    ld a, [hl-]
    db $10
    add hl, de
    rlca
    ld b, $19
    ld [$1623], sp
    call Call_000_0da4
    ld e, $15
    ld a, [de]
    cp $07
    jr nc, jr_007_5285

    call Call_007_4d97
    jr nc, jr_007_52a8

jr_007_5281:
    ld h, d
    jp Jump_000_0bba


jr_007_5285:
    ld h, d
    ld bc, $0000
    ld de, $fff9
    call Call_000_1ad9
    call Call_007_4d9a
    push af
    ld h, d
    ld bc, $0000
    ld de, $0007
    call Call_000_1ad9
    call Call_007_4d9a
    jr nc, jr_007_52a5

    pop af
    jr jr_007_5281

jr_007_52a5:
    pop af
    jr c, jr_007_5281

jr_007_52a8:
    ret


    db $26, $80, $00, $08, $b7, $ff, $0d, $32, $10, $14, $2a, $f2, $06, $ce, $52, $26
    db $80, $00, $08, $49, $00, $0d, $32, $10, $14, $2a, $0e, $06, $ce, $52, $26, $80
    db $00, $0d, $32, $10, $19, $0f, $3c, $00, $0f, $4c, $02, $03, $f7, $52, $47, $04
    db $0c, $6a, $0a, $19, $03, $01, $19, $04, $02, $19, $05, $03, $19, $06, $02, $19
    db $07, $01, $19, $08, $02, $19, $09, $03, $19, $0a, $02, $06, $dc, $52

    call Call_000_0c91
    call Call_000_0c80
    call Call_000_0c83
    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_530c

    ld h, d
    jp Jump_000_0bba


jr_007_530c:
    call Call_000_197f
    jr nc, jr_007_5319

    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_5319:
    call Call_000_1ab3
    jr nz, jr_007_532b

    ld e, $3c
    ld a, [de]
    inc a
    ld [de], a
    cp $10
    jr c, jr_007_532b

    ld h, d
    jp Jump_000_0bba


jr_007_532b:
    ret


    rrca
    ld c, h
    ld [bc], a
    inc bc
    rst $00
    ld d, e
    ld b, a
    inc b
    ld [hl], h
    ld e, l
    ld a, [bc]
    dec c
    ld e, b
    ld d, e
    dec c
    ld d, c
    ld d, e
    ld [de], a
    ld c, l
    ld d, e
    add hl, bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld bc, $0319
    ld bc, $190a
    ld [bc], a
    ld bc, $1916
    ld [bc], a
    ld bc, $fa16
    ld [hl], b
    and b
    ld e, $27
    ld [de], a
    ret


    push bc
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $39
    ld b, [hl]
    ld e, $45
    ld a, [de]
    rla
    ld hl, $5387
    jr nc, jr_007_536c

    ld hl, $53a7

jr_007_536c:
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_007_5373

    inc h

jr_007_5373:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld bc, $000e
    add hl, bc
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    pop bc
    ret


    nop
    ld hl, sp-$64
    ld hl, sp+$58
    ld a, [$fcf0]
    nop
    nop
    db $10
    inc bc
    xor b
    dec b
    ld h, h
    rlca
    nop
    nop
    db $10
    inc bc
    xor b
    dec b
    ld h, h
    rlca
    nop
    ld [$0764], sp
    xor b
    dec b
    db $10
    inc bc
    nop
    ld hl, sp-$64
    ld hl, sp+$58
    ld a, [$fcf0]
    nop
    nop
    db $10
    inc bc
    xor b
    dec b
    ld h, h
    rlca
    nop
    nop
    ldh a, [$fffc]
    ld e, b
    ld a, [$f89c]
    nop
    ld hl, sp-$64
    ld hl, sp+$58
    ld a, [$fcf0]
    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_53d3

    ld h, d
    jp Jump_000_0bba


jr_007_53d3:
    ret


    db $0f, $4c, $04, $03, $e5, $53, $47, $04, $b9, $63, $0a, $26, $00, $02, $01, $04
    db $00

    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_53f5

jr_007_53ed:
    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_53f5:
    call Call_000_197f
    jr nc, jr_007_5402

    ld e, $07
    ld bc, $4cdf
    jp Jump_000_0846


jr_007_5402:
    ldh a, [$ffa6]
    bit 1, a
    jr nz, jr_007_53ed

    ret


    rrca
    ld c, h
    ld [bc], a
    inc bc
    ld e, h
    ld d, h
    ld b, a
    inc b
    db $ed
    ld l, e
    ld a, [bc]
    ld [$0400], sp
    rrca
    dec sp
    db $10
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld [$0602], sp
    ld a, [de]
    ld d, h
    rrca
    ld c, h
    ld [bc], a
    inc bc
    ld e, h
    ld d, h
    ld b, a
    inc b
    db $ed
    ld l, e
    ld a, [bc]
    ld [$0400], sp
    rrca
    dec sp
    db $10
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld b, $3a
    ld d, h
    inc bc
    adc [hl]
    ld d, h
    ld b, a
    jr jr_007_5468

    ld a, [bc]
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
    ld d, $16
    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_5468

    ld h, d
    jp Jump_000_0bba


jr_007_5468:
    call Call_000_197f
    jr nc, jr_007_5475

    ld e, $07
    ld bc, $5449
    jp Jump_000_0846


jr_007_5475:
    ld e, $3b
    ld a, [de]
    dec a
    jr nz, jr_007_547f

    ld h, d
    jp Jump_000_0bba


jr_007_547f:
    ld [de], a
    call Call_000_1ab3
    jr nz, jr_007_548d

    ld e, $07
    ld bc, $545b
    jp Jump_000_0846


jr_007_548d:
    ret


    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_549a

    ld h, d
    jp Jump_000_0bba


jr_007_549a:
    ret


    rrca
    ld c, h
    ld [$ac03], sp
    ld d, h
    ld b, a
    inc b
    ld l, $70
    ld a, [bc]
    ld bc, $2600
    nop
    inc b
    nop
    call Call_000_0da4
    call Call_007_4d97
    jr nc, jr_007_54b8

    ld h, d
    jp Jump_000_0bba


jr_007_54b8:
    call Call_000_197f
    jr nc, jr_007_54c5

    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_54c5:
    ret


    rrca
    ld c, h
    ld [bc], a
    dec c
    rst $18
    ld d, h
    inc bc
    ld h, l
    ld d, l
    ld b, a
    inc b
    rst $20
    ld l, h
    ld a, [bc]
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    ld d, $16
    push bc
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $15
    ld a, [hl]
    dec a
    ld l, $45
    bit 7, [hl]
    jr z, jr_007_54f2

    sub $05
    cpl
    inc a

jr_007_54f2:
    ldh [$ff84], a
    ld hl, $5541
    add l
    ld l, a
    jr nc, jr_007_54fc

    inc h

jr_007_54fc:
    ld a, [hl]
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $04
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ldh a, [$ff84]
    ld hl, $5547
    add l
    ld l, a
    jr nc, jr_007_5514

    inc h

jr_007_5514:
    ld a, [hl]
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
    ldh a, [$ff84]
    ld hl, $554d
    add a
    add l
    ld l, a
    jr nc, jr_007_552d

    inc h

jr_007_552d:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld bc, $000a
    add hl, bc
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    pop bc
    ret


    ld [$0203], sp
    cp $fd
    ld hl, sp+$08
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    ld [$0000], sp
    dec l
    ld bc, $01e7
    rst $20
    ld bc, $012d
    nop
    nop
    nop
    ld [bc], a
    sbc [hl]
    ld bc, $009e
    ld h, d
    rst $38
    ld h, d
    cp $00
    cp $cd
    and h
    dec c
    call Call_007_4d97
    jr nc, jr_007_5571

    ld h, d
    jp Jump_000_0bba


jr_007_5571:
    call Call_000_197f
    jr nc, jr_007_557e

    ld e, $07
    ld bc, $4c83
    jp Jump_000_0846


jr_007_557e:
    call Call_000_1ab3
    jr nz, jr_007_558b

    ld e, $07
    ld bc, $54de
    jp Jump_000_0846


jr_007_558b:
    ret


    rrca
    ld c, h
    ld a, [bc]
    inc bc
    or h
    ld d, l
    ld b, a
    inc b
    add [hl]
    ld l, b
    dec c
    jr jr_007_55bb

    and l
    ld d, l
    rlca
    dec c
    ld [hl-], a
    db $10
    inc e
    dec b
    db $10
    add hl, hl
    nop
    nop
    add hl, de
    dec bc
    inc bc
    add hl, de
    inc c
    inc bc
    add hl, de
    dec c
    inc bc
    add hl, de
    ld c, $03
    ld b, $a5
    ld d, l
    ld e, $3b
    ld a, [de]
    inc a
    ld [de], a
    and $02

jr_007_55bb:
    jr z, jr_007_55bf

    ld a, $10

jr_007_55bf:
    ld e, $47
    ld [de], a
    call Call_000_0c80
    call Call_000_0da4
    call Call_007_4d90
    jr nc, jr_007_55d1

    ld h, d
    jp Jump_000_0bba


jr_007_55d1:
    ret


    ld h, $80
    ld [bc], a
    ld [$fe80], sp
    ld b, $e7
    ld d, l
    ld h, $80
    inc bc
    ld b, $e7
    ld d, l
    ld h, $80
    ld [bc], a
    ld [$0180], sp
    rrca
    ld c, h
    ld a, [bc]
    inc bc
    and h
    dec c
    ld b, b
    inc b
    dec h
    ld b, a
    db $10
    add hl, de
    ld [de], a
    ld [bc], a
    add hl, de
    inc de
    ld [bc], a
    ld b, $f2
    ld d, l
    rrca
    ld c, h
    inc d
    inc bc
    inc hl
    ld d, [hl]
    ld b, a
    inc b
    ld [hl], a
    ld c, d
    db $10
    jr @+$24

    inc d
    ld d, [hl]
    rlca
    dec c
    ld [hl-], a
    db $10
    ld b, b
    dec b
    ld [$0029], sp
    nop
    add hl, de
    rlca
    inc bc
    add hl, de
    ld [$1903], sp
    rlca
    inc bc
    add hl, de
    ld b, $03
    ld b, $14
    ld d, [hl]
    call Call_000_0c80
    jp Jump_000_0da4


    db $5a, $6b, $0c, $00, $40, $0c, $70, $6b, $0c, $74, $40, $0c, $05, $6d, $0c, $65
    db $42, $0c, $57, $6d, $0c, $4d, $43, $0c, $ac, $6f, $0c, $c8, $4a, $0c, $f1, $6e
    db $0c, $ef, $45, $0c, $6a, $6f, $0c, $fb, $46, $0c, $cd, $6f, $0c, $18, $4b, $0c

    db $10
    ld [hl], b
    inc c
    db $dd
    ld c, e
    inc c
    add [hl]
    ld d, h
    ld [$47d1], sp
    inc c

    db $7c, $70, $0c, $2e, $49, $0c

    call z, Call_000_0c70
    rrca
    ld c, d
    inc c

    db $f8, $70, $0c, $74, $4c, $0c, $0e, $71, $0c, $96, $4c, $0c, $45, $71, $0c, $6a
    db $4d, $0c, $92, $71, $0c, $22, $4e, $0c, $53, $72, $0c, $ce, $4f, $0c, $d0, $74
    db $0c, $cc, $55, $0c, $45, $73, $0c, $cb, $52, $0c, $21, $75, $0c

    cp e
    ld d, a
    rlca

    db $42, $75, $0c

    cp e
    ld d, a
    rlca

    db $63, $75, $0c

    cp e
    ld d, a
    rlca

    db $78, $75, $0c

    cp e
    ld d, a
    rlca
    sbc c
    ld [hl], l
    inc c
    adc e
    ld d, [hl]
    inc c
    sbc $75
    inc c
    add h
    ld d, a
    inc c
    adc [hl]
    ld [hl], a
    inc c
    di
    ld e, c
    inc c
    jp z, $0c78

    ld b, $5c
    inc c

    db $0e, $7a, $0c, $63, $5f, $0c, $3f, $7b, $0c

    cp e
    ld d, a
    rlca

    db $7b, $7b, $0c, $6d, $63, $0c

    db $db
    ld a, e
    inc c
    ld sp, $0c63

    db $52, $6f, $0b

    cp e
    ld d, a
    rlca

    db $ee, $7b, $0c, $f8, $63, $0c

    ld a, [de]
    ld a, l
    inc c
    ld b, h
    ld h, a
    inc c

    db $23, $7e, $0c, $f6, $69, $0c, $4f, $7e, $0c, $a1, $6a, $0c

    sbc a
    ld [hl], d
    dec c
    add h
    ld c, a
    dec c

    db $e1, $72, $0d, $07, $50, $0d

    ld a, d
    ld h, h
    dec c
    nop
    ld b, b
    dec c
    add [hl]
    ld l, b
    dec c
    ld a, h
    ld b, e
    dec c
    ldh [c], a
    ld l, d
    dec c
    ld c, c
    ld b, a
    dec c
    ld [bc], a
    ld [hl], b
    dec c
    and a
    ld c, h
    dec c

    db $0d, $73, $0d, $ab, $50, $0d

    ld a, e
    ld [hl], e
    dec c
    ld e, d
    ld d, c
    dec c
    dec h
    ld b, a
    db $10
    ld e, b
    ld d, a
    dec c
    or h
    ld d, c
    db $10
    ld l, l
    ld e, e
    dec c

    db $00, $52, $10, $49, $5c, $0d, $2c, $52, $10, $cc, $5c, $0d, $06, $53, $10, $42
    db $5d, $0d

    ld [hl], h
    ld d, e
    db $10
    inc [hl]
    ld e, [hl]
    dec c
    db $f4
    ld d, e
    db $10
    reti


    ld e, [hl]
    dec c
    ld a, e
    ld d, h
    db $10
    ld a, b
    ld e, a
    dec c

    db $2c, $55, $10, $42, $60, $0d

    ld e, a
    ld d, l
    db $10
    cp e
    ld h, b
    dec c

    db $54, $55, $10, $9d, $60, $0d, $6a, $55, $10, $f5, $60, $0d, $79, $77, $0d, $4c
    db $61, $0d

    ldh [$ff58], a
    ld [$6437], sp
    dec c
    ld h, c
    ld d, a
    ld [$644b], sp
    dec c
    xor $75
    ld a, [de]
    jr z, @+$72

    ld a, [de]
    db $ec
    halt
    ld a, [de]
    db $d3
    ld [hl], c
    ld a, [de]
    ld l, l
    halt
    ld a, [de]
    ld c, [hl]
    ld [hl], c
    ld a, [de]

    db $bb, $57, $07

    cp e
    ld d, a
    rlca
    dec c
    ld [hl], a
    ld a, [de]
    ld a, h
    ld [hl], d
    ld a, [de]
    jr @+$79

    ld a, [de]
    or [hl]
    ld [hl], d
    ld a, [de]
    inc sp
    ld a, c
    ld a, [de]
    db $fd
    ld [hl], h
    ld a, [de]
    and e
    ld d, l
    db $10
    add b
    ld b, [hl]
    db $10
    rst $38

    ld de, $d700
    ld hl, $0000
    jr jr_007_57cf

jr_007_57c4:
    ld a, e
    add a
    ld c, a
    ld a, $00
    adc $00
    ld b, a
    inc bc
    add hl, bc
    inc e

jr_007_57cf:
    ld a, h
    ld [de], a
    inc d
    ld a, l
    ld [de], a
    dec d
    ld a, e
    inc a
    jr nz, jr_007_57c4

    ret


    ld a, a
    add b

    INCBIN "gfx/image_007_57dc.2bpp"

    db $ff, $ff, $ff, $c0, $fe, $81, $fc, $83, $f8, $87, $f8, $87, $f0, $8f, $f1, $8e
    db $e3, $9c, $e3, $9c, $e7, $98, $e7, $98, $f3, $8c, $f9, $86, $ff, $c0, $ff, $ff
    db $ff, $ff, $ff, $03, $7f, $81, $3f, $c1, $1f, $e1, $1f, $e1, $0f, $f1, $8f, $71
    db $c7, $39, $c7, $39, $e7, $19, $e7, $19, $cf, $31, $9f, $61, $ff, $03, $ff, $ff

    INCBIN "gfx/image_007_585c.2bpp"

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    ld hl, sp-$79
    ldh a, [$ff8f]
    ldh [$ff9f], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ldh [$ff9f], a
    ldh a, [$ff8f]
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $e11f
    rrca
    pop af
    rlca
    ld sp, hl
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    rlca
    ld sp, hl
    rrca
    pop af
    rst $38
    ld bc, $03ff
    rst $38
    rst $38

    db $ff, $ff, $ff, $c0, $ff, $80, $f1, $8e, $f8, $87, $fc, $83, $fc, $83, $fe, $81
    db $fe, $81, $fc, $83, $fc, $83, $f8, $87, $f1, $8e, $ff, $80, $ff, $c0, $ff, $ff
    db $ff, $ff, $ff, $03, $ff, $01, $ff, $01, $7f, $81, $1f, $e1, $0f, $f1, $07, $f9
    db $07, $f9, $0f, $f1, $1f, $e1, $7f, $81, $ff, $01, $ff, $01, $ff, $03, $ff, $ff
    db $ff, $ff, $ff, $c0, $ff, $80, $fd, $82, $fd, $82, $fc, $83, $fc, $83, $dc, $a3
    db $cc, $b3, $c4, $bb, $c0, $bf, $e0, $9f, $e0, $9f, $ff, $80, $ff, $c0, $ff, $ff
    db $ff, $ff, $ff, $03, $ff, $01, $ff, $01, $fb, $05, $fb, $05, $f3, $0d, $73, $8d
    db $63, $9d, $23, $dd, $03, $fd, $03, $fd, $03, $fd, $ff, $01, $ff, $03, $ff, $ff

    INCBIN "gfx/image_007_595c.2bpp"

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    ldh [$ff9f], a
    ret z

    or a
    pop de
    xor [hl]
    jp nz, $c5bd

    cp d
    res 6, h
    rst $10
    xor b
    adc $b1
    call $e0b2
    sbc a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $f907
    or e
    ld c, l
    ld [hl], e
    adc l
    db $eb
    dec d
    db $d3
    dec l
    and e
    ld e, l
    ld b, e
    cp l
    adc e
    ld [hl], l
    inc de
    db $ed
    rlca
    ld sp, hl
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    pop af
    adc [hl]
    db $f4
    adc e
    adc $b1
    rst $18
    and b
    adc $b1
    ld [$c195], a
    cp [hl]
    ret nz

    cp a
    ret nc

    xor a
    ret c

    and a
    call z, $e0b3
    sbc a
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rlca
    ld sp, hl
    inc sp
    call $e51b
    dec bc
    push af
    inc bc
    db $fd
    add e
    ld a, l
    rst $00
    add hl, sp
    db $e3
    dec e
    ld c, e
    or l
    inc de
    db $ed
    cpl
    pop de
    adc a
    ld [hl], c
    rst $38
    inc bc
    rst $38
    rst $38
    push de
    ld hl, $cd4d
    ld [hl], $00
    inc l
    ld a, [$dd30]
    ld [hl+], a
    ld a, [$dd31]
    ld [hl+], a
    ld [hl], $00
    inc l
    ld [hl], $cf
    ld a, [$dd2f]
    ld l, a
    ld h, $00
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    ld de, $5629
    add hl, de
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld [$dd52], a
    ld a, [hl+]
    ld [$dd53], a
    ld a, [hl]
    ld [$dd37], a
    ld a, $01
    ld [$dd58], a
    ld hl, $dd57
    ld a, $2b
    ld [hl-], a
    ld [hl], $2c
    ld hl, $dd35
    ld a, $4e
    ld [hl+], a
    ld [hl], $dd
    ld hl, $da14
    ld a, $51
    ld [hl+], a
    ld [hl], $2b
    ld hl, $da16
    ld a, $51
    ld [hl+], a
    ld [hl], $2b
    ld a, $50
    ldh [rLYC], a
    ld [$da29], a
    pop de
    ret


    ld hl, $dedb
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $dee0
    ld [hl], a
    ld hl, $dee1
    ld [hl], a
    ld hl, $dee9
    ld [hl], a
    ld hl, $deea
    ld [hl], a
    ld hl, $dee3
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $05
    ld hl, $deeb
    ld [hl], a
    ld hl, $deec
    ld [hl], a
    ret


    ld hl, $da29
    ld a, b
    ld [hl+], a
    ldh [rLYC], a
    ld a, c
    ld [hl], a
    ld hl, $da16
    ld a, $e0
    ld [hl+], a
    ld [hl], $02
    ld a, $01
    ld [$da2b], a
    ld hl, $ff41
    set 6, [hl]
    ld hl, $8ff0
    ld bc, $0010
    ld a, $ff
    call Call_000_062f
    ld hl, $9c00
    ld bc, $0400
    ld a, $ff
    call Call_000_062f
    ld a, $47
    ldh [rLCDC], a
    ret


    xor a
    ld [$da2b], a
    ld hl, $da16
    ld a, $aa
    ld [hl+], a
    ld [hl], $02
    ld hl, $da14
    ld a, $aa
    ld [hl+], a
    ld [hl], $02
    ld a, $7f
    ldh [rLYC], a
    ld [$da29], a
    xor a
    ld hl, $ff42
    ld [hl+], a
    ld [hl], a
    ld [$da01], a
    ld [$da00], a
    ld a, $47
    ldh [rLCDC], a
    ret


    ld hl, $da29
    ld a, b
    ld [hl], a
    ldh [rLYC], a
    ld hl, $da16
    ld a, $0c
    ld [hl+], a
    ld [hl], $03
    ld hl, $ff41
    set 6, [hl]
    ret


    ld a, $67
    ldh [rLCDC], a
    ld a, $58
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ret


    ld hl, $da14
    ld a, $aa
    ld [hl+], a
    ld [hl], $02
    ld hl, $da16
    ld a, $aa
    ld [hl+], a
    ld [hl], $02
    ld a, $7f
    ldh [rLYC], a
    ld [$da29], a
    ld c, $14
    ld de, $5b5d
    ld hl, $9c00

jr_007_5b47:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_007_5b47

    ld hl, $9c20

jr_007_5b50:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_007_5b50

    ld hl, $dede
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    db $7f, $7b, $6f, $6f, $6f, $6f, $6f, $6f, $7f, $67, $67, $67, $67, $67, $67, $67
    db $7f, $69, $6b, $7f, $7f, $70, $70, $70, $70, $70, $70, $70, $7f, $7c, $70, $70
    db $7f, $65, $66, $70, $7f, $6a, $6c, $7f

    ld hl, $dede
    ld b, [hl]
    bit 7, b
    jp nz, $5bba

    bit 1, b
    call nz, Call_007_5cc6
    bit 2, b
    call nz, Call_007_5e92
    bit 3, b
    call nz, Call_007_5ec8
    bit 5, b
    call nz, Call_007_5e06
    bit 6, b
    call nz, Call_007_5e6a
    ld hl, $dedf
    bit 0, [hl]
    jr nz, @+$08

    bit 0, b
    call nz, Call_007_5c6d
    ret


    db $cb, $60, $c4, $13, $5f, $c9, $21, $e9, $de, $7e, $a7, $28, $03, $3d, $77, $c9
    db $11, $e6, $de, $1a, $6f, $1c, $1a, $67, $1c, $1a, $c3, $cf, $05, $c9

    ld hl, $dedf
    bit 0, [hl]
    call nz, $5c12
    ld hl, $dedf
    bit 1, [hl]
    jr nz, @+$0a

    ld de, $a04c
    ld hl, $dee3
    jr jr_007_5bef

    db $11, $72, $a0, $21, $e5, $de

jr_007_5bef:
    ld a, [de]
    cp [hl]
    ret z

    jr nc, jr_007_5c01

    ld a, [de]
    ld [hl], a
    ld hl, $deeb
    xor a
    ld [hl], a
    ld hl, $dede
    set 1, [hl]
    ret


jr_007_5c01:
    ld hl, $deeb
    ld a, [hl]
    and a
    jr z, jr_007_5c0b

    dec a
    ld [hl], a
    ret


jr_007_5c0b:
    ld a, $05
    ld [hl], a
    call Call_007_5d36
    ret


    db $cd, $39, $5c, $21, $e4, $de, $be, $c8, $30, $0c, $77, $21, $ec, $de, $af, $77
    db $21, $de, $de, $cb, $e6, $c9, $21, $ec, $de, $7e, $a7, $28, $03, $3d, $77, $c9
    db $3e, $05, $77, $cd, $bb, $5d, $c9, $c5, $e5, $af, $47, $57, $21, $85, $a0, $7e
    db $87, $30, $01, $04, $87, $cb, $10, $6f, $60, $87, $cb, $10, $85, $4f, $78, $8c
    db $47, $21, $86, $a0, $5e, $79, $4f, $93, $30, $05, $05, $cb, $78, $20, $03, $14
    db $18, $f4, $79, $a7, $7a, $28, $01, $3c, $e1, $c1, $c9

Call_007_5c6d:
    ld a, $07
    call Call_000_0675
    ret c

    push bc
    ld de, $9c21
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld c, $70
    ld de, $dedb
    ld a, [de]
    ld b, a
    inc de
    ld b, a
    swap a
    and $0f
    add c
    ld [hl], a
    inc l
    ld a, b
    and $0f
    add c
    ld [hl], a
    inc l
    ld a, [de]
    inc de
    ld b, a
    swap a
    and $0f
    add c
    ld [hl], a
    inc l
    ld a, b
    and $0f
    add c
    ld [hl], a
    inc l
    ld a, [de]
    ld b, a
    swap a
    and $0f
    add c
    ld [hl], a
    inc l
    ld a, b
    and $0f
    add c
    ld [hl], a
    inc l
    ld a, c
    ld [hl], a
    inc l
    ld a, l
    ldh [$ff92], a
    pop bc
    ld hl, $dede
    res 0, b
    ld [hl], b
    ret


Call_007_5cc6:
    ld a, $07
    call Call_000_0675
    ret c

    ld de, $9c01
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld [hl], $7b
    inc l
    ld de, $dedf
    ld a, [de]
    bit 1, a
    jr nz, jr_007_5d13

    ld de, $a04c
    ld a, [de]
    ld d, $06

jr_007_5cec:
    and a
    jr z, jr_007_5cff

    sub $02
    jr c, jr_007_5cfb

    ld [hl], $64
    inc l
    dec d
    jr nz, jr_007_5cec

    jr jr_007_5d09

jr_007_5cfb:
    dec d
    ld [hl], $6e
    inc l

jr_007_5cff:
    ld a, d
    and a
    jr z, jr_007_5d09

    ld [hl], $63
    inc l
    dec d
    jr nz, jr_007_5cff

jr_007_5d09:
    ld a, l
    ldh [$ff92], a
    ld hl, $dede
    res 1, b
    ld [hl], b
    ret


jr_007_5d13:
    ld a, [$a072]
    ld d, $06
    and a
    jr z, jr_007_5d22

jr_007_5d1b:
    ld [hl], $64
    inc l
    dec d
    dec a
    jr nz, jr_007_5d1b

jr_007_5d22:
    ld a, d
    and a
    jr z, jr_007_5d2c

jr_007_5d26:
    ld [hl], $63
    inc l
    dec d
    jr nz, jr_007_5d26

jr_007_5d2c:
    ld a, l
    ldh [$ff92], a
    ld hl, $dede
    res 1, b
    ld [hl], b
    ret


Call_007_5d36:
    ld a, $07
    call Call_000_0675
    jr nc, jr_007_5d43

    ld hl, $deeb
    ld [hl], $00
    ret


jr_007_5d43:
    ld de, $9c01
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld [hl], $7b
    inc l
    ld de, $dedf
    ld a, [de]
    bit 1, a
    jr nz, jr_007_5d91

    ld de, $dee3
    ld a, [de]
    inc a
    inc a
    ld [de], a
    ld d, $06

jr_007_5d66:
    and a
    jr z, jr_007_5d79

    sub $02
    jr c, jr_007_5d75

    ld [hl], $64
    inc l
    dec d
    jr nz, jr_007_5d66

    jr jr_007_5d83

jr_007_5d75:
    dec d
    ld [hl], $6e
    inc l

jr_007_5d79:
    ld a, d
    and a
    jr z, jr_007_5d83

    ld [hl], $63
    inc l
    dec d
    jr nz, jr_007_5d79

jr_007_5d83:
    ld a, l
    ldh [$ff92], a
    ld e, $12
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ret


jr_007_5d91:
    ld de, $dee5
    ld a, [de]
    inc a
    ld [de], a
    ld d, $06

jr_007_5d99:
    and a
    jr z, jr_007_5da3

    ld [hl], $64
    inc l
    dec a
    dec d
    jr nz, jr_007_5d99

jr_007_5da3:
    ld a, d
    and a
    jr z, jr_007_5dad

    ld [hl], $63
    inc l
    dec d
    jr nz, jr_007_5da3

jr_007_5dad:
    ld a, l
    ldh [$ff92], a
    ld e, $12
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ret


    ld a, $07
    call Call_000_0675
    ret c

    ld de, $9c21
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld [hl], $7a
    inc l
    ld de, $dee4
    ld a, [de]
    inc a
    ld [de], a
    ld d, $06

jr_007_5ddb:
    and a
    jr z, jr_007_5dee

    sub $02
    jr c, jr_007_5dea

    ld [hl], $6f
    inc l
    dec d
    jr nz, jr_007_5ddb

    jr jr_007_5df8

jr_007_5dea:
    dec d
    ld [hl], $6e
    inc l

jr_007_5dee:
    ld a, d
    and a
    jr z, jr_007_5df8

    ld [hl], $6d
    inc l
    dec d
    jr nz, jr_007_5dee

jr_007_5df8:
    ld a, l
    ldh [$ff92], a
    ld e, $12
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ret


Call_007_5e06:
    ld a, $07
    call Call_000_0675
    ret c

    ld de, $9c09
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld de, $dee1
    ld a, [de]
    and a
    jr z, jr_007_5e4b

    ld [hl], $68
    inc l
    dec a
    jr z, jr_007_5e4e

    ld [hl], $68
    inc l
    dec a
    jr z, jr_007_5e51

    ld [hl], $68
    inc l
    dec a
    jr z, jr_007_5e54

    ld [hl], $68
    inc l
    dec a
    jr z, jr_007_5e57

    ld [hl], $68
    inc l
    dec a
    jr z, jr_007_5e5a

    ld [hl], $68
    inc l
    dec a
    jr z, jr_007_5e5d

    ld [hl], $68
    inc l
    jr jr_007_5e60

jr_007_5e4b:
    ld [hl], $67
    inc l

jr_007_5e4e:
    ld [hl], $67
    inc l

jr_007_5e51:
    ld [hl], $67
    inc l

jr_007_5e54:
    ld [hl], $67
    inc l

jr_007_5e57:
    ld [hl], $67
    inc l

jr_007_5e5a:
    ld [hl], $67
    inc l

jr_007_5e5d:
    ld [hl], $67
    inc l

jr_007_5e60:
    ld a, l
    ldh [$ff92], a
    ld hl, $dede
    res 5, b
    ld [hl], b
    ret


Call_007_5e6a:
    ld a, $01
    call Call_000_0675
    ret c

    ld de, $9c2f
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $01
    inc l
    ld a, [$db60]
    inc a
    ld e, $70
    add e
    ld [hl], a
    inc l
    ld a, l
    ldh [$ff92], a
    ld hl, $dede
    res 6, b
    ld [hl], b
    ret


Call_007_5e92:
    ld a, $03
    call Call_000_0675
    ret c

    ld de, $9c29
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $03
    inc l
    ld [hl], $7c
    inc l
    ld de, $a084
    ld a, [de]
    ld d, $70
    ld e, a
    swap a
    and $0f
    add d
    ld [hl], a
    inc l
    ld a, e
    and $0f
    add d
    ld [hl], a
    inc l
    ld a, l
    ldh [$ff92], a
    ld hl, $dede
    res 2, b
    ld [hl], b
    ret


Call_007_5ec8:
    ld a, $40
    call Call_000_0675
    ret c

    push bc
    ld de, $9690
    ldh a, [$ff92]
    ld c, a
    ld b, $c4
    ld a, e
    ld [bc], a
    inc c
    ld a, d
    ld [bc], a
    inc c
    ld a, $40
    ld [bc], a
    inc c
    ld de, $dee0
    ld a, [de]
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    ld l, a
    sla l
    rl h
    sla l
    rl h
    ld a, $07
    call Call_000_05dd
    ld de, $57dc
    add hl, de
    ld d, $40

jr_007_5f02:
    ld a, [hl+]
    ld [bc], a
    inc c
    dec d
    jr nz, jr_007_5f02

    ld a, c
    ldh [$ff92], a
    pop bc
    ld hl, $dede
    res 3, b
    ld [hl], b
    ret


    ld a, $07
    call Call_000_0675
    ret c

    ld de, $9c21
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld [hl], $7a
    inc l
    call $5c39
    ld d, $06

jr_007_5f30:
    and a
    jr z, jr_007_5f43

    sub $02
    jr c, jr_007_5f3f

    ld [hl], $6f
    inc l
    dec d
    jr nz, jr_007_5f30

    jr jr_007_5f4d

jr_007_5f3f:
    dec d
    ld [hl], $6e
    inc l

jr_007_5f43:
    ld a, d
    and a
    jr z, jr_007_5f4d

    ld [hl], $6d
    inc l
    dec d
    jr nz, jr_007_5f43

jr_007_5f4d:
    ld a, l
    ldh [$ff92], a
    ld hl, $dede
    res 4, b
    ld [hl], b
    ret


    ld hl, $deea
    ld [hl], $04
    ld a, $07
    call Call_000_0675
    ret c

    ld de, $9c09
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld [hl], $68
    inc l
    ld [hl], $68
    inc l
    ld [hl], $68
    inc l
    ld [hl], $68
    inc l
    ld [hl], $68
    inc l
    ld [hl], $68
    inc l
    ld [hl], $68
    inc l
    ld a, l
    ldh [$ff92], a
    ld hl, $dee9
    ld [hl], $14
    ld hl, $dee6
    ld [hl], $9a
    inc hl
    ld [hl], $5f
    inc hl
    ld [hl], $07
    ret


    ld a, $07
    call Call_000_0675
    ret c

    ld de, $9c09
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $07
    inc l
    ld [hl], $67
    inc l
    ld [hl], $67
    inc l
    ld [hl], $67
    inc l
    ld [hl], $67
    inc l
    ld [hl], $67
    inc l
    ld [hl], $67
    inc l
    ld [hl], $67
    inc l
    ld a, l
    ldh [$ff92], a
    ld hl, $deea
    ld a, [hl]
    and a
    jp z, Jump_007_5fe2

    dec a
    ld [hl], a
    ld hl, $dee9
    ld [hl], $0a
    ld hl, $dee6
    ld [hl], $5c
    inc hl
    ld [hl], $5f
    inc hl
    ld [hl], $07
    ret


Jump_007_5fe2:
    ld hl, $dede
    res 7, [hl]
    xor a
    ld hl, $dee9
    ld [hl+], a
    ld [hl], a
    ret


    ld hl, $df00
    ld a, $3e
    ld [hl+], a
    ld [hl], $06
    ld hl, $6107
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $697d
    ld de, $9800
    call Call_000_0708
    ld a, $0b
    ld hl, $68a0
    ld de, $8000
    call Call_000_060d
    ld a, $09
    ld hl, $4000
    ld de, $8100
    ld bc, $0280
    call Call_000_05bf
    ld a, $09
    ld hl, $4280
    ld de, $8380
    ld bc, $0220
    call Call_000_05bf
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $f8
    ld hl, $a0b3
    call Call_000_07c4
    xor a
    ld [$df02], a
    ld hl, $cd09
    ld a, $e4
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $e4
    ld [hl], a
    ld e, $ff
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld e, $06
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    call Call_000_1584
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    ld e, $08
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld de, $0004
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf
    ld e, $06
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    ld a, $20

jr_007_609a:
    push af
    call Call_000_0496
    ld hl, $086b
    ld a, $00
    call Call_000_05cf
    call Call_000_04ae
    call Call_000_0343
    call Call_000_0357
    pop af
    dec a
    jr nz, jr_007_609a

jr_007_60b3:
    call Call_000_0496
    ld hl, $086b
    ld a, $00
    call Call_000_05cf
    call Call_000_0647
    call Call_000_04ae
    call Call_000_0343
    call Call_000_0357
    ld a, [$df02]
    or a
    jr nz, jr_007_60e8

    ld hl, $df00
    ld a, [hl]
    sub $01
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl-], a
    or [hl]
    jr nz, jr_007_60b3

    ld hl, $5e92
    ld a, $08
    call Call_000_05cf
    jr jr_007_60ef

jr_007_60e8:
    xor a
    ld [$deff], a
    jp Jump_000_0437


jr_007_60ef:
    ld e, $00
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    ld de, $0004
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    jp Jump_000_0437


    db $32

    nop

    db $41

    jr c, @+$02

    db $02

    ld sp, hl
    nop
    add hl, sp

    db $41

    nop
    dec sp

    db $24

    nop

    db $0a

    ld hl, sp+$00
    ret c

    nop
    call c, $8c00
    nop
    cp $00
    adc [hl]

    db $23

    nop

    db $44

    nop
    db $e0

    db $01

    nop
    db $fc

    db $24

    nop

    db $41

    ret nz

    nop

    db $00

    db $c3

    db $41

    nop
    db $c6

    db $01

    nop
    di

    db $24

    nop

    db $41

    inc c
    nop

    db $00

    rst $28

    db $41

    nop
    ld l, h

    db $01

    nop
    rst $28

    db $28

    nop

    db $03

    adc a
    nop
    reti


    nop

    db $cb, $00, $69, $06

    ld [hl], $00
    cp b
    nop
    or b
    nop
    db $30

    db $28

    nop

    db $00

    ld a, l

    db $41

    nop
    db $cc

    db $01

    nop
    ld a, h

    db $88, $00, $3e, $00

    rst $20

    db $84, $00, $88, $00

    rst $00

    db $28

    nop

    db $00

    sbc e

    db $c4, $00, $28, $00

    sbc b

    db $aa, $00, $6e, $06

    ld l, h
    nop
    add hl, sp
    nop
    add hl, de
    nop
    db $31

    db $a4, $00, $50, $83, $00, $75, $00

    scf

    db $41

    nop
    or [hl]

    db $ca, $00, $a6, $04

    db $ec
    nop
    ld l, h
    nop
    ld h, a

    db $28

    nop

    db $00

    add b

    db $c5, $00, $80, $ae, $00, $2e, $00

    rlca

    db $a3, $00, $3e, $45

    nop
    inc bc

    db $24

    nop

    db $0a

    dec de
    nop
    sbc b
    nop
    db $db
    nop
    ld a, e
    nop
    dec sp
    nop
    dec de

    db $88, $00, $b0, $00

    ld a, [hl]

    db $42

    nop
    ld h, [hl]

    db $24

    nop

    db $0a

    ld h, b
    nop
    di
    nop
    ld h, [hl]
    nop
    ld h, a
    nop
    ld h, [hl]
    nop
    ld h, e

    db $26

    nop

    db $08

    call $6f00
    nop
    db $ec
    nop
    inc c
    nop
    db $cc

    db $a6, $00, $e2, $85, $00, $67, $00

    reti


    db $a6, $00, $4c, $02

    add b
    nop
    sbc [hl]

    db $42

    nop
    or e

    db $01

    nop
    sbc [hl]

    db $86, $00, $fe, $03

    ld b, $00
    dec b
    nop

    db $c9, $01, $77, $02

    rst $08
    nop
    daa

    db $41

    nop
    rst $20

    db $01

    nop
    daa

    db $86, $00, $9c, $00

    db $3e

    db $41

    nop
    ld [hl], a

    db $05

    nop
    ccf
    nop
    rlca
    nop
    db $06

    db $24

    nop

    db $04

    ld a, a
    nop
    ld [hl], b
    nop
    ld a, [hl]

    db $84, $00, $f2, $00

    ld a, [hl]

    db $c4, $00, $41, $00

    db $fc

    db $23

    db $ee

    db $02

    db $fc
    db $fc
    db $e0

    db $a5, $00, $fd, $00

    nop

    db $27

    db $ee

    db $00

    ld a, h

    db $85, $00, $8d, $0a

    nop
    ld a, [hl]
    ld a, [hl]
    ldh a, [$fff0]
    ld a, h
    ld a, h
    ld e, $1e
    db $fc
    db $fc

    db $89, $01, $bc, $00

    db $fe

    db $ca, $01, $e6, $01

    cp $fe

    db $27

    db $38

    db $cb, $01, $d1, $01

    cp $fe

    db $c3, $01, $e3, $8b, $01, $ae, $01

    xor $ee

    db $31

    nop

    db $00

    db $01

    db $ca, $02, $2e, $01

    ld h, b
    ld h, b

    db $41

    ldh a, [$ff90]

    db $01

    db $01
    db $01

    db $cd, $02, $2f, $22

    inc e

    db $02

    inc d
    inc e
    inc e

    db $35

    nop

    db $03

    rrca
    rrca
    nop
    ccf

    db $29

    nop

    db $05

    rlca
    rlca
    inc c
    rrca
    adc b
    adc a

    db $ab, $02, $24, $05

    ld b, b
    ret nz

    jr nz, @-$1e

    nop
    nop

    db $8d, $02, $70, $29

    nop

    db $00

    rst $38

    db $41

    rst $38
    nop

    db $00

    rst $38

    db $89, $02, $26, $05

    add d
    add e
    ld h, a
    and $16
    rst $30

    db $c5, $02, $3b, $09

    db $fc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld d, l
    xor d

jr_007_62ad:
    xor d
    ld d, l

    db $a9, $02, $72, $05

    jr jr_007_62ad

    ld d, h
    xor h
    xor l
    ld d, l

    db $ad, $02, $60, $01

    sbc b
    db $f8

    db $83, $02, $2c, $2b

    inc bc

    db $83, $02, $ec, $03

    xor b
    ld e, b
    ld e, b
    xor b

    db $41

    ld hl, sp+$08

    db $03

    db $fc
    inc b
    db $fc
    add h

    db $89, $02, $47, $01

    inc c
    inc de

    db $41

    rlca
    db $08

    db $a5, $00, $4e, $03

    jr nz, @+$52

    ld h, b
    sub b

    db $41

    ldh [rNR10], a

    db $01

    ldh a, [$ff0c]

    db $a6, $00, $e4, $00

    nop

    db $22

    ld [hl], b

    db $00

    ld d, b

    db $c3, $03, $39, $0b

    inc [hl]
    rst $08
    db $fd
    ld [bc], a
    ld a, d
    add l
    ld c, c
    or [hl]
    ld c, e
    or h
    inc sp
    db $fc

    db $41

    ccf
    db $30

    db $07

    ld e, b
    rst $18
    ld d, l
    jp c, Jump_007_75fa

    ld a, a

jr_007_630f:
    db $f0

    db $42

    rst $38
    ld h, b

    db $0b

    rst $38
    ld b, b
    ld hl, $62e1
    and e
    add $45
    call $cf4e
    ld c, h

    db $41

    adc a
    adc h

    db $0b

    adc a
    adc [hl]
    db $dd
    jp c, $fd3a

    cp a
    ld e, h
    ld e, a
    cp a
    rst $30
    rla

    db $41

    di
    inc de

    db $01

    ei
    dec bc

    db $c6, $02, $cf, $00

    db $06

    db $41

    rst $38
    rlca

    db $0b

    db $fd
    dec b
    rst $38
    ld b, $57
    or [hl]
    xor a
    ld e, a
    ei
    dec bc
    ld sp, hl
    add hl, bc

    db $41

    ld hl, sp+$08

    db $41

    ldh a, [rNR10]

    db $03

    rst $38
    nop
    rst $38
    db $01

    db $43

    rst $38
    pop bc

    db $07

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    inc bc
    rst $38
    add e

    db $41

    rst $38
    db $c3

    db $03

    ld a, a
    ld b, e
    rst $38
    add e

    db $41

    db $fd
    dec b

    db $1f

    INCBIN "gfx/image_007_636e.2bpp"

    db $42

    db $fc
    add h

    db $08

    ld hl, sp-$38
    rst $38
    rst $38
    ldh [rIE], a
    xor d
    push de
    push de

    db $aa, $02, $df, $05

    ret nz

    ret nz

    and b
    ld h, a
    ld d, c
    or d

    db $83, $00, $c0, $41

    db $10
    db $28

    db $07

    jr jr_007_63d2

    inc a
    jp Jump_000_00ff


    cp $01

    db $41

    inc bc
    inc b

    db $05

    rlca
    ld [$110e], sp
    db $08
    db $16

    db $c5, $00, $14, $05

    ld hl, sp+$06
    cp $01
    ldh [rNR34], a

    db $41

    ld h, b
    sub b

    db $41

    jr nz, jr_007_641e

    db $03

    nop
    jr nz, jr_007_63de

jr_007_63d2:
    inc c

    db $41

    ld e, $12

    db $00

    inc c

    db $a7, $00, $7d, $02

    ret nz

    ccf

jr_007_63de:
    db $38

    db $43

    rra
    db $18

    db $01

    rra

jr_007_63e4:
    inc e

    db $41

    rrca
    inc c

    db $42

    rst $38
    db $01

    db $03

    cp $02
    rst $38
    db $01

    db $42

    rst $38
    nop

    db $44

    rlca
    db $06

    db $05

    add a
    add a
    jp $e343


    inc hl

    db $44

    ei
    dec bc

    db $42

    rst $38
    rlca

    db $43

    rst $38
    nop

    db $41

    rst $38
    inc b

    db $41

    rst $38
    db $06

    db $42

    pop hl
    db $21

    db $41

    pop af
    db $11

    db $01

    ld sp, hl
    add hl, bc

    db $84, $04, $78, $00

    add b

    db $a7, $03, $a2, $42

jr_007_641e:
    cp $02

    db $05

    ld sp, hl
    add hl, bc

jr_007_6423:
    db $fd
    dec b
    db $fc
    add h

    db $43

    cp $c2

    db $03

    rst $38
    jp $80ff


    db $43

    rst $38
    ret nz

    db $07

    rst $38
    pop bc
    rst $38
    add c
    cp $82
    pop af
    db $11

    db $41

    db $e3
    inc hl

    db $03

    jp $8343


    add e

    db $25

    inc bc

    db $84, $02, $ab, $04

    ld b, $ff
    ld c, $ff
    rrca

    db $83, $03, $8a, $03

    cp $82
    ldh a, [rNR11]

    db $42

    ld hl, sp+$08

    db $09

    ldh a, [rNR10]
    ldh [$ffe0], a
    ret nz

    ret nz

    ld bc, $7e01
    add c

    db $41

    ld a, $41

    db $05

    inc sp
    ld c, h
    jr nz, @+$55

    nop
    ld h, b

    db $ad, $02, $2c, $05

    inc c
    inc c
    rra
    inc de
    rra
    ld [de], a

    db $a7, $02, $85, $83, $03, $32, $09

    ret nz

    ret nz

    ldh [rNR41], a
    ld b, b
    and b
    ld h, b
    sbc h
    ld a, b
    add h

    db $41

    ldh a, [$ff08]

    db $05

    ld a, b
    add h
    ld b, b
    cp h
    nop
    ret nz

    db $41

    rrca
    inc c

    db $01

    rrca
    db $0e

    db $88, $04, $60, $83, $04, $7f, $04

    db $10
    rst $38
    ld [$0cff], sp

    db $83, $04, $e6, $05

    ei
    dec bc
    db $fd
    dec b
    di
    inc de

    db $84, $04, $78, $00

    inc bc

    db $84, $04, $50, $02

    add c
    push de
    pop bc

    db $86, $04, $7a, $84, $04, $a5, $03

    xor e
    add e
    db $d4
    db $c4

    db $85, $03, $88, $09

    db $fd
    dec b
    ld d, h
    inc b
    xor b
    adc b
    ldh a, [$fff0]
    ldh [$ffe0], a

    db $84, $05, $64, $0b

    add e
    rst $38
    add e
    rst $10
    jp $e4ec


    ld a, b
    ld a, b
    jr nc, @+$32

    rst $38

    db $84, $04, $df, $05

    xor d
    add b
    db $fd
    db $fc
    rst $38
    rst $38

    db $a3, $01, $ba, $85, $03, $ba, $09

    xor e
    dec bc
    ld a, e
    dec sp
    db $e3
    db $e3
    add e
    add e
    db $01
    db $01

    db $42

    cp $82

    db $41

    db $fc
    inc b

    db $85, $05, $88, $07

    dec e
    dec e
    ccf
    inc hl
    ld a, [hl]
    ld b, d
    ld a, a
    ld b, c

    db $84, $03, $aa, $04

    ldh [$ff7f], a
    ld h, b
    cp $82

    db $a6, $04, $a4, $02

    ld b, c
    rst $38
    add c

    db $83, $04, $54, $03

    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

    db $8b, $02, $2e, $a5, $05, $f0, $a9, $02, $50, $01

    rrca
    inc c

    db $42

    rrca
    db $08

    db $03

    rst $20
    db $e4
    db $e3
    and e

    db $83, $01, $ba, $43

    ldh a, [rNR10]

    db $03

    ldh [rNR41], a
    ret nz

    ret nz

    db $91, $02, $1e, $01

    ld c, $0f

    db $cb, $02, $fb, $83, $02, $d8, $89, $05, $c6, $0b

    rst $28
    rst $28
    db $10
    rra
    jr nz, jr_007_659d

    db $eb
    db $e3
    ld a, h
    ld a, h
    jr c, @+$3a

    db $a7, $02, $76, $03

    db $10
    ldh a, [$fff8]
    db $f8

    db $c5, $02, $ed, $06

    jr c, jr_007_65aa

    ld b, h
    ld a, h
    call nz, $c4fc

    db $86, $01, $db, $03

    ld c, $0e
    add hl, de
    rra

    db $41

    db $31
    ccf

    db $01

    ld [hl], c
    ld a, a

    db $87, $02, $4a, $01

    ld h, $3e

    db $41

    ld h, d
    ld a, [hl]

    db $03

    ldh [c], a
    cp $00
    nop

    db $8d, $02, $f0, $84, $02, $ea, $44

    ld hl, sp+$08

    db $00

jr_007_659d:
    db $f8

    db $c9, $02, $d9, $0d

    ld e, $1e
    inc sp
    ccf
    ld hl, $7f3f
    ld [hl], b

jr_007_65aa:
    ld a, [hl-]
    jr c, @+$21

    ld e, $0f
    rrca

    db $a5, $06, $2a, $07

    ld e, $1e
    cp $02
    xor h
    inc b
    ld e, b
    db $18

    db $83, $05, $8c, $05

    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]

    db $a9, $02, $86, $41

    db $08
    rrca

    db $01

    jr jr_007_65ee

    db $85, $02, $76, $03

    jr c, @+$41

    ld b, b
    ld a, a

    db $42

    add b
    rst $38

    db $85, $02, $d4, $01

    dec e
    db $fd

    db $85, $04, $df, $02

    ld b, b
    rst $38
    db $30

    db $84, $07, $07, $41

    add c
    rst $38

    db $00

jr_007_65ee:
    ret nz

    db $41

    rst $38
    ld [hl], b

    db $00

    rst $38

    db $a3, $06, $5c, $01

    inc b
    db $fc

    db $c7, $03, $e5, $04

    dec bc
    ei
    ld h, b
    ld a, a
    ld h, b

    db $42

    ld a, a
    ld h, c

    db $00

    ld a, a

    db $a5, $04, $59, $05

    db $10
    ldh a, [$ff31]
    pop af
    pop hl
    pop hl

    db $23

    pop bc

    db $00

    ld h, e

    db $41

    db $e3
    inc hl

    db $00

    db $e3

    db $43

    add d
    db $fe

    db $42

    db $01
    rst $38

    db $04

    ld de, $71ff
    ld a, a
    ld [hl], b

    db $44

    ld a, a
    ld h, b

    db $06

    ld a, a
    ld h, d
    ld a, a
    ldh [c], a
    cp $c2
    db $fe

    db $c3, $03, $a7, $87, $07, $68, $01

    ld [bc], a
    inc bc

    db $43

    ld b, $07

    db $01

    inc b
    rlca

    db $41

    inc c
    rrca

    db $44

    db $10
    db $f0

    db $01

    jr nz, @-$1e

    db $41

    db $21
    pop hl

    db $41

    ld h, c
    ld a, a

    db $02

    ld b, c
    ld a, a
    pop bc

    db $a6, $05, $66, $05

    adc b
    rst $38
    ld [hl-], a
    ld a, $21
    ccf

    db $c3, $07, $44, $43

    ldh [rIE], a

    db $01

    ld b, d
    ld a, [hl]

    db $43

    db $c2
    db $fe

    db $05

    ld b, d
    cp $43
    rst $38
    inc bc
    rst $38

    db $a7, $01, $fc, $a7, $07, $66, $c3, $04, $43, $06

    inc a
    ccf
    ld a, $3f
    rst $18
    rst $18
    ccf

    db $84, $07, $2f, $0c

    ret nz

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    inc e
    rra
    inc c
    rrca
    ld c, $0f
    db $06

    db $22

    rlca

    db $09

    ld [hl], b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc l
    rst $28

    db $41

    inc d
    rst $30

    db $04

    inc c
    rst $38
    jr nc, @+$01

    db $38

    db $42

    rst $38
    db $18

    db $42

    rst $38
    inc e

    db $86, $05, $64, $02

    ld b, b
    rst $38
    ld h, b

    db $84, $08, $1f, $0c

    dec a
    cp $80
    rst $38
    pop hl
    rst $38
    ld h, c
    ld a, a
    pop hl
    rst $38
    ld h, c
    rst $38
    db $21

    db $a3, $04, $8a, $06

    cp a
    ld c, [hl]
    rst $08
    ret nc

    rst $18
    and b
    cp a

    db $c3, $07, $74, $06

    db $fc
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    db $10

    db $88, $04, $80, $00

    db $10

    db $a4, $08, $29, $00

    ldh [c], a

    db $41

    rst $38
    db $c2

    db $0d

    rst $38

jr_007_66ec:
    jp Jump_007_43ff


jr_007_66ef:
    rst $38
    ld l, e
    rst $10
    ld [hl], h
    db $ec
    ld a, b
    ld hl, sp+$11
    rst $38
    db $10

    db $a4, $05, $54, $0d

    ldh a, [rIE]
    cp d
    or l
    dec a
    dec sp
    ld e, $1e
    inc c

jr_007_6706:
    rrca
    adc h
    adc a
    adc b
    adc a

    db $42

    sbc b
    sbc a

    db $07

    db $10
    rra
    jr nc, @+$41

    daa
    rst $20
    jr z, jr_007_6706

    db $41

    ld d, b
    rst $18

    db $08

    ld e, b
    rst $18
    ld c, [hl]
    rst $08
    inc a
    rst $38
    ld b, $ff
    db $08

    db $8c, $08, $61, $03

    cp b
    ld a, a
    ldh [rIE], a

    db $41

    or b
    cp a

    db $44

    ld [hl], b
    rst $38

    db $01

    db $01
    rst $38

    db $a5, $07, $24, $41

    pop bc
    rst $38

    db $07

    pop hl
    rst $38
    push af
    db $eb
    ret nz

    rst $38
    pop hl
    rst $38

    db $42

    ld h, c
    ld a, a

    db $01

    ld b, c
    ld a, a

    db $41

    db $c2
    db $fe

    db $02

    inc b
    db $fc
    add d

    db $86, $04, $b6, $41

    db $c3
    rst $38

    db $01

    add d
    rst $38

    db $87, $06, $42, $87, $02, $40, $02

    inc c
    rst $38
    db $08

    db $a6, $07, $87, $07

    ret nz

    rst $38
    db $eb
    push de
    or $ee
    inc e
    rst $38

    db $41

    ld h, $e7

    db $05

    ld b, a
    add $47
    rst $00
    add c
    add c

    db $23

    nop

    db $09

    ld l, $ef
    rla
    rst $30
    or e
    ld d, e
    ld d, b
    or b
    ldh [$ffe0], a

    db $85, $06, $2a, $06

    ld [$f575], a
    ld a, [$7f7f]
    ccf

    db $88, $02, $6f, $07

    xor [hl]
    ld e, l
    ld e, a
    cp [hl]
    rst $20
    rst $20
    db $c3
    db $c3

    db $87, $02, $74, $07

    cp l
    ld a, d
    ld e, [hl]
    db $dd
    adc a
    adc a
    ld b, $06

    db $27

    nop

    db $01

    ld [hl], b
    db $f0

    db $ad, $02, $42, $01

    inc c
    inc c

    db $2d

    nop

    db $07

    jr nc, @+$41

    dec a
    ld a, [hl-]
    ccf
    ccf
    rra
    rra

    db $a7, $06, $c4, $07

    inc bc
    cp $57
    xor e
    and a
    rst $18
    db $fc
    db $fc

    db $c7, $02, $ed, $05

    ld e, l
    jp c, $ddde

    adc a
    adc a

    db $a9, $06, $c0, $05

    ld [hl], l
    ld a, [$fdfb]
    sbc a
    sbc a

    db $c7, $06, $87, $07

    nop
    nop
    cp e
    or a
    cp a
    cp a
    dec e
    dec e

    db $89, $09, $06, $01

    db $c2
    db $fe

    db $a5, $07, $86, $08

    push de
    xor d
    ld [$ffd5], a
    rst $38
    ld a, [hl]
    ld a, [hl]
    add d

    db $84, $04, $88, $04

    ld [$70ff], sp
    cp a
    db $e0

    db $84, $04, $c2, $03

    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b

    db $91, $06, $2d, $01

    rlca

jr_007_6815:
    db $08

    db $42

    inc bc
    inc b

    db $01

    ld b, $09

    db $83, $02, $89, $0d

    add b
    ld b, b
    ret nz

    jr c, jr_007_6815

    ld [$30c0], sp
    ret nz

    ld [hl+], a
    ld b, d
    xor l
    rlca
    dec b

    db $cc, $02, $9d, $00

    add b

    db $2d

    nop

    db $01

    ld c, $0e

    db $c3, $09, $0d, $89, $09, $06, $03

    nop
    nop
    db $fc
    add h

    db $42

    cp $02

    db $07

    cp $06
    rst $38
    adc c
    ld a, a
    ld a, c
    ld b, $06

    db $a6, $0a, $20, $08

    inc b
    rlca
    jr c, @+$21

    jr nz, jr_007_6860

    jr @+$05

    inc c

    db $85, $02, $87, $03

jr_007_6860:
    add b
    ld a, b
    ldh a, [$ff08]

    db $42

    ldh [rNR10], a

    db $85, $02, $f2, $03

    ccf
    ccf
    ld a, a
    ld h, a

    db $41

    ld a, [hl]
    ld b, d

    db $01

    ld a, [hl]
    ld h, [hl]

    db $85, $09, $16, $00

    db $fc

    db $24

    rst $38

    db $01

    ccf
    ccf

    db $ac, $06, $2a, $00

    ret nz

    db $84, $00, $e6, $ae, $0a, $03, $07

    ld c, a
    or b
    rlca
    ld l, b
    dec b
    ld a, [bc]
    nop
    dec b

    db $88, $00, $df, $02

    ld b, b
    nop
    add b

    db $8f, $0a, $3e, $22

    inc bc

    db $00

    ld [bc], a

    db $87, $0a, $ae, $a3, $03, $3a, $ab, $0a, $54, $41

    inc bc
    inc b

    db $02

    ld [bc], a
    dec b
    nop

    db $88, $09, $67, $05

    ldh a, [$ff08]
    db $10
    add sp, $00
    db $18

    db $95, $0a, $ea, $23

    nop

    db $01

    cp h
    cp h

    db $a4, $02, $40, $d1, $0a, $f3, $0e

    add b
    nop
    jr jr_007_68e6

    ld h, [hl]
    ld a, [hl]
    add c
    rrca
    rrca
    ld a, d
    ld [hl], l
    push de
    xor d
    adc b
    ld [hl], a

    db $43

    nop
    rst $38

    db $0a

    rst $38
    nop
    rst $38
    ldh [$ff5f], a
    cp b
    adc a
    ld [hl], h
    inc bc

jr_007_68e6:
    cp $03

    db $84, $07, $67, $86, $0a, $e0, $84, $0a, $21, $a3, $0b, $14, $01

    db $08
    rrca

    db $83, $06, $5c, $02

    ld h, b
    ld a, a
    ret nz

    db $a6, $04, $58, $02

    ld [bc], a
    cp $04

    db $c4, $03, $0e, $83, $07, $a8, $c3, $06, $03, $43

    nop
    rst $38

    db $02

    ldh [rIE], a
    db $fe

    db $22

    rst $38

    db $00

    rst $38

    db $45

    rst $38
    nop

    db $c3, $03, $eb, $02

    rst $38
    add b
    add b

    db $44

    ld b, b
    ret nz

    db $83, $05, $0e, $07

    inc a
    jp Jump_007_423c


    inc h
    ld e, d
    nop
    halt

    db $a8, $0a, $b4, $25

    nop

    db $07

    ld [$1408], sp
    inc c
    ld [de], a
    ld e, $21
    ccf

    db $8d, $06, $2b, $02

    ldh a, [$ffc0]
    db $20

    db $41

    nop
    rst $38

    db $0b

    ld c, $ff
    ld a, a
    rst $38
    rst $20
    rst $20
    add [hl]
    add a
    ld b, $07
    inc c
    rrca

    db $45

    db $01
    rst $38

    db $41

    ld [bc], a
    db $fe

    db $c5, $04, $5b, $03

    inc b
    db $fc
    inc c
    db $fc

    db $85, $04, $7f, $89, $05, $0e, $05

    add b
    add b
    ld a, b
    ld hl, sp+$07
    rst $38

    db $cf, $02, $6d, $03

    cp $fe
    ld a, b
    ld a, b

    db $2b

    nop

    db $ff, $e4, $29, $00, $00, $23, $37, $00, $6b, $25, $31, $00, $6f, $31, $00, $ab
    db $2e, $00, $6f, $41, $00, $b5, $2e, $00, $6f, $51, $62, $be, $2c, $00, $6d, $61
    db $01, $00, $6f, $62, $b6, $2b, $00, $00, $22, $6f, $70, $01, $c1, $c2, $2c, $00
    db $00, $24, $6f, $80, $01, $b9, $ba, $2d, $00, $6f, $90, $00, $c3, $af, $00, $2a
    db $01, $a0, $00, $62, $a1, $00, $00, $64, $a4, $03, $00, $00, $a9, $aa, $62, $bb
    db $2f, $00, $64, $ac, $09, $00, $00, $b1, $b2, $00, $b3, $b4, $00, $c5, $c6, $e4
    db $31, $00, $63, $1b, $01, $00, $1d, $62, $1f, $00, $1f, $e4, $30, $00, $62, $17
    db $02, $19, $1a, $0f, $6d, $01, $94, $01, $d0, $66, $10, $e4, $2f, $00, $ff

    ld hl, $2a6a
    ld l, d
    inc sp
    ld l, d
    inc a
    ld l, d

    db $45, $6a

    ld c, [hl]
    ld l, d
    ld d, e
    ld l, d
    ld e, h
    ld l, d

    db $65, $6a, $6e, $6a, $77, $6a

    add b
    ld l, d
    adc c
    ld l, d
    sub d
    ld l, d
    sbc e
    ld l, d
    and h
    ld l, d
    xor l
    ld l, d
    or [hl]
    ld l, d
    cp a
    ld l, d
    ld [bc], a
    ld hl, sp+$00
    jr nc, jr_007_6a26

jr_007_6a26:
    ld hl, sp-$08
    ld b, [hl]
    ld bc, $f802
    nop
    ld [de], a
    nop
    ld hl, sp-$08
    ld c, h
    ld bc, $f802
    nop
    ld [hl-], a
    nop
    ld hl, sp-$08
    ld c, d
    ld bc, $f802
    nop
    stop
    ld hl, sp-$08
    ld c, b
    db $01

    db $02, $f8, $00, $0a, $00, $f8, $f8, $08, $01

    ld bc, $00f8

jr_007_6a51:
    ld d, $01
    ld [bc], a
    ld hl, sp+$00
    inc b
    jr nz, jr_007_6a51

    ld hl, sp+$0c
    ld hl, $f802
    nop
    ld l, $00
    ld hl, sp-$08
    jr z, @+$03

    db $02, $f8, $00, $36, $00, $f8, $f8, $34, $01, $02, $f8, $00, $0e, $00, $f8, $f8
    db $06, $01, $02, $f8, $00, $02, $00, $f8, $f8, $00, $01

    ld [bc], a
    ld hl, sp-$08
    ld [de], a
    jr nz, @-$06

    nop

jr_007_6a87:
    ld c, h
    ld hl, $f802
    ld hl, sp+$32
    jr nz, jr_007_6a87

    nop

jr_007_6a90:
    ld c, d
    ld hl, $f802
    ld hl, sp+$10
    jr nz, jr_007_6a90

    nop

jr_007_6a99:
    ld c, b
    ld hl, $f802
    ld hl, sp+$30
    jr nz, jr_007_6a99

    nop

jr_007_6aa2:
    ld b, [hl]
    ld hl, $f802
    ld hl, sp+$0e
    jr nz, jr_007_6aa2

    nop

jr_007_6aab:
    ld b, $21
    ld [bc], a
    ld hl, sp-$08
    ld [bc], a
    jr nz, jr_007_6aab

    nop

jr_007_6ab4:
    nop
    ld hl, $f802
    ld hl, sp+$0a
    jr nz, jr_007_6ab4

    nop
    ld [$0221], sp
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    inc c
    db $01

    db $04, $68, $59, $0a, $03, $0b, $6b, $47, $0f, $3a, $00, $19, $00, $06, $19, $01
    db $04, $01, $02, $0f, $39, $01, $0f, $3a, $01, $0d, $af, $0f, $07, $10, $04, $05
    db $06, $0d, $00, $6b, $06, $e1, $6a, $03, $0b, $6b, $47, $0f, $3a, $00, $19, $01
    db $04, $19, $00, $06, $1b, $0a, $40, $02

    ld e, $39
    ld a, [de]
    inc a
    cp $03
    jr c, jr_007_6b09

    xor a

jr_007_6b09:
    ld [de], a
    ret


    ld hl, $7ea8
    ld a, $02
    call Call_000_05cf
    call Call_000_378b
    call Call_000_37a8
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_007_6b2d

    ldh a, [$ffa5]
    and $02
    jr nz, jr_007_6b2d

    ld e, $07
    ld bc, $6aef
    jp Jump_000_37f4


jr_007_6b2d:
    jp Jump_000_37f7


    inc bc
    ld e, l
    ld l, e
    ld b, a
    rrca
    ld a, [hl-]
    nop
    inc b
    ld [hl], $5d
    ld a, [bc]
    inc h
    ld c, l
    add hl, de
    nop
    ld b, $19
    ld bc, $1903
    nop
    inc bc
    add hl, de
    ld bc, $0f08
    ld a, [hl-]
    ld bc, $0119
    ld d, $03
    ld e, l
    ld l, e
    ld b, a
    rrca
    ld a, [hl-]
    nop
    add hl, de
    nop
    dec b
    dec de
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld hl, $7ea8
    ld a, $02
    call Call_000_05cf
    call Call_000_378b
    call Call_000_37a8
    ld e, $15
    ld a, [de]
    cp $01
    jr nz, jr_007_6b7d

    ld a, $08
    ld hl, $6b94
    call Call_000_3aaa
    call Call_000_3ae4

jr_007_6b7d:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_007_6b91

    ldh a, [$ffa5]
    and $02
    jr nz, jr_007_6b91

    ld e, $07
    ld bc, $6b4f
    jp Jump_000_37f4


jr_007_6b91:
    jp Jump_000_37f7


    inc bc
    db $f4
    nop
    ld c, $09
    inc bc
    ret z

    ld l, e
    ld b, a
    inc b
    ld [hl], h
    ld e, l
    ld a, [bc]
    rrca
    add hl, sp
    nop
    add hl, bc
    ld [$1d24], sp
    dec c
    xor a
    rrca
    dec c
    ld a, [bc]
    dec b
    add hl, de
    nop
    ld [bc], a
    dec c
    xor a
    rrca
    dec c
    ld a, [bc]
    dec b
    add hl, de
    ld bc, $0d02
    jp nz, Jump_000_0a6b

    dec de
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld e, $39
    ld a, [de]
    inc a
    ld [de], a
    ret


    ld hl, $7ea8
    ld a, $02
    call Call_000_05cf
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    inc bc
    inc d
    ld l, h
    ld b, a
    rrca
    ld a, [hl-]
    rrca
    rrca
    add hl, sp
    ld [bc], a
    inc b
    cp b
    ld e, l
    ld a, [bc]
    inc h
    ld b, h
    add hl, de
    nop
    ld b, $01
    ld bc, $770d
    rrca
    dec bc
    dec c
    ld a, [$056b]
    ld [bc], a
    ld b, $ee
    ld l, e
    ld e, $39
    ld a, [de]
    inc a
    cp $0b
    jr c, jr_007_6c04

    ld a, $02

jr_007_6c04:
    ld [de], a
    ret


    inc bc
    inc d
    ld l, h
    ld b, a
    rrca
    ld a, [hl-]
    nop
    add hl, de
    nop
    ld b, $1b
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld hl, $7ea8
    ld a, $02
    call Call_000_05cf
    call Call_000_378b
    call Call_000_37a8
    ld e, $15
    ld a, [de]
    cp $01
    jr nz, jr_007_6c34

    ld a, $02
    ld hl, $6c52
    call Call_000_3aaa
    call Call_000_3ae4

jr_007_6c34:
    ld e, $3a
    ld a, [de]
    dec a
    jr nz, jr_007_6c4e

    ld a, [$a070]
    or a
    jr nz, jr_007_6c46

    ldh a, [$ffa5]
    and $02
    jr nz, jr_007_6c4f

jr_007_6c46:
    ld e, $07
    ld bc, $6c06
    jp Jump_000_37f4


jr_007_6c4e:
    ld [de], a

jr_007_6c4f:
    jp Jump_000_37f7


    dec b
    nop
    nop
    ld [de], a
    inc de

    db $04, $1a, $61, $0a, $03, $77, $6c, $47, $19, $00, $04, $19, $01, $04, $0d, $af
    db $0f, $08, $10, $00, $24, $1e, $19, $02, $08, $19, $00, $04, $1b, $10, $53, $02

    ld hl, $7ee2
    ld a, $02
    call Call_000_05cf
    call Call_007_6c88
    call Call_000_37a8
    jp Jump_000_37f7


Call_007_6c88:
    call Call_000_378b
    ret nc

    ld e, $3f
    xor a
    ld [de], a
    scf
    ret


    inc bc
    and [hl]
    ld l, h
    ld b, a
    rrca
    ld a, [hl-]
    nop
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $1904
    nop
    inc b
    dec de
    db $10
    ld d, e
    ld [bc], a
    ld hl, $7ee2
    ld a, $02
    call Call_000_05cf
    ld hl, $581e
    ld a, $02
    call Call_000_05cf
    call Call_000_3765
    jr nc, jr_007_6cc3

    ld e, $02
    ld bc, $60a3
    jp Jump_000_37f4


jr_007_6cc3:
    call Call_000_377c
    jr nc, jr_007_6cd0

    ld e, $02
    ld bc, $619e
    jp Jump_000_37f4


jr_007_6cd0:
    jp Jump_000_37f7


    inc b
    jp nz, Jump_000_0a62

    inc bc
    ld [hl], a
    ld l, h
    ld b, a
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $2404
    ld d, l
    dec c
    xor a
    rrca
    dec bc
    stop
    add hl, de
    ld [bc], a
    ld a, [bc]
    add hl, de
    nop
    inc b
    dec de
    db $10
    ld d, e
    ld [bc], a

    db $03, $20, $6d, $47, $0f, $3a, $00, $04, $4d, $63, $0a, $24, $4d, $19, $00, $04
    db $19, $01, $02, $19, $00, $02, $19, $01, $08, $0f, $3a, $01, $19, $01, $16, $03
    db $20, $6d, $47, $0f, $3a, $00, $19, $00, $04, $1b, $10, $53, $02

    ld hl, $7ee2
    ld a, $02
    call Call_000_05cf
    call Call_007_6c88
    call Call_000_37a8
    ld e, $15
    ld a, [de]
    cp $01
    jr nz, jr_007_6d40

    ld a, $06
    ld hl, $6d57
    call Call_000_3aaa
    call Call_000_3ae4

jr_007_6d40:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_007_6d54

    ldh a, [$ffa5]
    and $02
    jr nz, jr_007_6d54

    ld e, $07
    ld bc, $6d12
    jp Jump_000_37f4


jr_007_6d54:
    jp Jump_000_37f7


    db $03, $00, $00, $0c, $0d, $03, $8d, $6d, $47, $0f, $3a, $00, $0d, $af, $0f, $0e
    db $10, $00, $0d, $73, $6d, $19, $01, $04, $1b, $10, $53, $02

    ld a, [$db76]
    or a
    ret z

    ld a, [$da36]
    or a
    ret nz

    ld hl, $db78
    ld a, [hl+]
    ld [$cd00], a
    ld a, [hl+]
    ld [$cd01], a
    ld a, [hl]
    ld [$cd02], a
    ret


    ld hl, $7ee2
    ld a, $02
    call Call_000_05cf
    call Call_000_3765
    jr nc, jr_007_6da2

    ld e, $02
    ld bc, $60a3
    jp Jump_000_37f4


jr_007_6da2:
    call Call_000_377c
    jr nc, jr_007_6daf

    ld e, $02
    ld bc, $619e
    jp Jump_000_37f4


jr_007_6daf:
    jp Jump_000_37f7


    db $04, $0c, $6a, $0a, $03, $de, $6d, $47, $24, $3f, $19, $00, $04, $19, $01, $04
    db $0d, $af, $0f, $0c, $10, $fd, $0d, $af, $0f, $14, $10, $f6, $0d, $af, $0f, $15
    db $10, $04, $19, $02, $0a, $19, $01, $04, $1b, $40, $67, $02

    ld hl, $7f1c
    ld a, $02
    call Call_000_05cf
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    inc bc
    inc de
    ld l, [hl]
    ld b, a
    inc b
    add hl, hl
    ld h, l
    ld a, [bc]
    add hl, de
    nop
    ld b, $24
    ld c, l
    inc b
    or l
    ld l, d
    ld a, [bc]
    add hl, de
    rlca
    ld b, $19
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    rrca
    ld a, $1e
    add hl, de
    nop
    ld [$401b], sp
    ld h, a
    ld [bc], a
    ld hl, $7f1c
    ld a, $02
    call Call_000_05cf
    ld hl, $6d18
    ld a, $02
    call Call_000_05cf
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    rrca
    ld a, $00
    inc bc
    inc de
    ld l, [hl]
    ld b, a
    inc b
    or l
    ld l, d
    ld a, [bc]
    add hl, de
    rlca
    ld b, $04
    add hl, hl
    ld h, l
    ld a, [bc]
    add hl, de
    nop
    ld b, $1b
    ld b, b
    ld h, a
    ld [bc], a
    inc bc
    add b
    ld l, [hl]
    ld b, a
    rrca
    add hl, sp
    ld a, [bc]
    ld [hl+], a
    ld l, c
    ld l, [hl]
    rlca
    inc b
    db $ed
    ld l, e
    ld a, [bc]
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    ld b, $54
    ld l, [hl]
    inc h
    dec e
    dec c
    xor a
    rrca
    rrca
    inc bc
    db $10
    dec b
    inc b
    inc h
    dec e
    dec c
    xor a
    rrca
    db $10
    inc bc
    db $10
    dec b
    inc b
    ld b, $69
    ld l, [hl]
    ld hl, $7f1c
    ld a, $02
    call Call_000_05cf
    ld a, $03
    ld hl, $6ea9
    call Call_000_3aaa
    call Call_000_3ae4
    call Call_000_378b
    call Call_000_37a8
    call Call_007_6eae
    jr nc, jr_007_6ea6

    ld e, $02
    ld bc, $6740
    jp Jump_000_37f4


jr_007_6ea6:
    jp Jump_000_37f7


    inc bc
    inc b
    ld [$0808], sp

Call_007_6eae:
    ld e, $39
    ld a, [de]
    or a
    jr z, jr_007_6eb8

    dec a
    ld [de], a

jr_007_6eb6:
    and a
    ret


jr_007_6eb8:
    ldh a, [$ffa5]
    and $02
    jr nz, jr_007_6eb6

    scf
    ret


    db $10, $50, $0e, $01, $c7, $6e

    db $16

    db $04, $46, $72, $0b, $01, $01, $0f, $4a, $01, $0f, $4b, $00, $1b, $9b, $4d, $03
    db $0f, $47, $00, $10, $71, $0e, $04, $e6, $6e

    adc a
    ld [hl], b

    db $af, $71, $c0, $72, $0f, $51, $02, $10, $5b, $0e, $07, $fb, $6e, $ad, $6f

    bit 5, a
    db $e3
    ld l, a
    db $fd
    ld l, a

    db $1e, $70

    ld c, h
    ld [hl], b

    db $01, $20, $09, $04, $0f, $47, $00, $05, $02, $0f, $47, $10, $05, $02, $0a, $24
    db $3e, $0f, $47, $00, $19, $20, $01, $04, $14, $52, $0a, $19, $01, $01, $04, $40
    db $4f, $0a, $0f, $47, $10, $19, $20, $01, $04, $14, $52, $0a, $0f, $47, $00, $19
    db $00, $01, $04, $40, $4f, $0a, $19, $20, $01, $04, $14, $52, $0a, $19, $03, $01
    db $04, $40, $4f, $0a, $0f, $47, $10, $19, $20, $01, $04, $14, $52, $0a, $0f, $47
    db $00, $19, $02, $01, $19, $01, $01, $19, $00, $01, $19, $03, $01, $19, $02, $01
    db $19, $01, $01, $04, $40, $4f, $0a, $0f, $47, $10, $19, $20, $01, $04, $14, $52
    db $0a, $0f, $47, $00, $19, $00, $01, $04, $40, $4f, $0a, $19, $20, $01, $04, $14
    db $52, $0a, $19, $03, $01, $22, $70, $70, $07, $04, $40, $4f, $0a, $0f, $47, $10
    db $19, $20, $02, $04, $14, $52, $0a, $0f, $47, $00, $19, $02, $01, $04, $40, $4f
    db $0a, $19, $20, $04, $19, $04, $10, $19, $1e, $01, $0d, $77, $0f, $02, $19, $1e
    db $17, $1d, $04, $78, $52, $0a, $19, $0e, $02, $19, $0f, $02, $19, $10, $02, $19
    db $11, $02, $19, $12, $06, $19, $13, $02, $0d, $77, $0f, $02, $19, $14, $0a, $1d

    add hl, bc
    inc b
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    add hl, de
    nop
    inc b
    inc b
    ld c, b
    ld d, l
    ld a, [bc]
    add hl, de
    nop
    inc b
    ld a, [bc]
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    inc d
    dec e
    inc b
    or [hl]
    ld d, l
    ld a, [bc]
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0d02
    xor a
    rrca
    add hl, bc
    ld b, $00
    add hl, de
    ld [bc], a
    ld a, [bc]
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    inc d
    dec e
    inc b
    inc bc
    ld d, [hl]
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, $1904
    ld [bc], a
    inc b
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    add hl, de
    inc bc
    db $10
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $1d04

    db $04, $57, $56, $0a, $19, $00, $0a, $09, $03, $0d, $77, $0f, $0a, $19, $01, $02
    db $0d, $77, $0f, $0a, $19, $02, $02, $0d, $77, $0f, $0a, $19, $03, $02, $0d, $77
    db $0f, $0a, $19, $04, $02, $0a, $0d, $77, $0f, $02, $19, $00, $14, $1d

    inc b
    and h
    ld d, [hl]
    ld a, [bc]
    add hl, de
    nop
    dec b
    add hl, bc
    inc bc
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
    ld a, [bc]
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    add hl, de
    nop
    ld a, [bc]
    dec e

    db $0d, $92, $0f, $03, $fa, $00, $05, $04, $0d, $92, $0f, $03, $fa, $fc, $05, $04
    db $0d, $92, $0f, $03, $fa, $04, $05, $04, $0d, $92, $0f, $03, $fa, $00, $00

    db $10
    ld e, e
    ld c, $07
    and c
    ld [hl], b
    reti


    ld [hl], b
    db $fd
    ld [hl], b
    dec d
    ld [hl], c
    ld [hl-], a
    ld [hl], c
    ld c, h
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    inc b
    ld l, b
    ld e, c
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, HeaderLogo
    ld [bc], a
    rrca
    add hl, sp
    ld bc, $af0d
    rrca
    rlca
    db $10
    inc b
    dec b
    ld b, $0f
    add hl, sp
    ld [bc], a
    dec c
    xor a
    rrca
    rlca
    db $10
    inc b
    dec b
    ld b, $0f
    add hl, sp
    nop
    dec c
    xor a
    rrca
    rlca
    db $10
    inc b
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    ld b, $19
    ld bc, $1904
    nop
    ld b, $1d
    inc b
    push hl
    ld e, c
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, $0d06
    ld [hl], a
    rrca
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    inc b
    inc b
    add hl, de
    dec b
    inc b
    ld a, [bc]
    add hl, de
    ld bc, $1906
    nop
    ld b, $1d
    add hl, bc
    inc b
    inc b
    inc l
    ld d, a
    ld a, [bc]
    add hl, de
    ld [bc], a
    inc b
    inc b
    bit 3, d
    ld a, [bc]
    add hl, de
    nop
    inc b
    ld a, [bc]
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    inc d
    dec e
    inc b
    ld c, h
    ld e, h
    ld a, [bc]
    add hl, de
    nop
    ld [$0101], sp
    dec c
    xor a
    rrca
    inc de
    nop
    nop
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    add hl, de
    ld [bc], a
    jr nz, jr_007_7145

    ld bc, $1904
    nop
    ld [$041d], sp
    ld [hl], $5d
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, $1903
    nop
    inc bc
    add hl, de
    ld bc, $0d08
    ld [hl], a
    rrca

jr_007_7145:
    ld [bc], a
    dec b
    inc d
    add hl, de
    nop
    dec b
    dec e
    inc b
    ld [hl], h
    ld e, l
    ld a, [bc]
    rrca
    add hl, sp
    nop
    add hl, bc
    ld [$af0d], sp
    rrca
    dec c
    ld a, [bc]
    dec b
    add hl, de
    nop
    ld [bc], a
    dec c
    xor a
    rrca
    dec c
    ld a, [bc]
    dec b
    add hl, de
    ld bc, $0d02
    ld a, b
    ld [hl], c
    ld a, [bc]
    inc b
    inc l
    ld d, a
    ld a, [bc]
    ld bc, $0d02
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    inc d
    dec e
    ld e, $39
    ld a, [de]
    inc a
    ld [de], a
    ret


    rrca
    add hl, sp
    ld [bc], a
    inc b
    cp b
    ld e, l
    ld a, [bc]
    add hl, de
    nop
    ld b, $01
    ld bc, $0509
    dec c
    ld [hl], a
    rrca
    dec bc
    dec c
    and e
    ld [hl], c
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    inc l
    ld d, a
    ld a, [bc]
    ld bc, $0d02
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    inc d
    dec e
    ld e, $39
    ld a, [de]
    inc a
    cp $0b
    jr c, jr_007_71ad

    ld a, $02

jr_007_71ad:
    ld [de], a
    ret


    db $10, $5b, $0e, $07, $c1, $71

    db $dd
    ld [hl], c
    db $fd
    ld [hl], c
    dec d
    ld [hl], d

    db $32, $72, $4a, $72

    adc e
    ld [hl], d

    db $04, $1a, $61, $0a, $19, $00, $04, $19, $01, $04, $0d, $af, $0f, $08, $10, $00
    db $01, $02, $0d, $77, $0f, $02, $05, $14, $19, $00, $04, $1d

    inc b
    cp e
    ld h, c
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, $1904
    ld [bc], a
    inc b
    add hl, de
    inc bc
    ld [$770d], sp
    rrca
    ld [bc], a
    dec b
    inc d
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $1904
    nop
    inc b
    dec e
    add hl, bc
    inc b
    inc b
    sbc c
    ld e, [hl]
    ld a, [bc]
    add hl, de
    ld [bc], a
    inc b
    inc b
    dec sp
    ld h, d
    ld a, [bc]
    add hl, de
    ld bc, $0a04
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    inc d
    dec e
    inc b
    jp nz, Jump_000_0a62

    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $2404
    ld d, l
    dec c
    xor a
    rrca
    dec bc
    stop
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    add hl, de
    ld [bc], a
    inc d
    add hl, de
    nop
    inc b
    dec e

    db $04, $4d, $63, $0a, $19, $00, $04, $19, $01, $02, $19, $00, $02, $0d, $77, $0f
    db $02, $19, $01, $14, $19, $00, $04, $1d, $04, $99, $5e, $0a, $19, $02, $06, $04
    db $b9, $63, $0a, $19, $00, $04, $0d, $77, $0f, $02, $03, $79, $72, $47, $09, $05
    db $19, $02, $02, $19, $03, $02, $0a, $0f, $1f, $80, $0d, $82, $72, $0d, $af, $0f
    db $0e, $10, $00, $19, $01, $04, $1d

    ld hl, $5ccf
    ld a, $02
    call Call_000_05cf
    ret


    ld hl, $6d73
    ld a, $07
    call Call_000_05cf
    ret


    inc b
    sbc c
    ld e, [hl]
    ld a, [bc]
    ld bc, $0f02
    ld a, [hl-]
    ld [bc], a
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    add hl, bc
    dec b
    rrca
    ld b, a
    db $10
    dec c
    ld [hl], a
    rrca
    inc c
    dec c
    or h
    ld [hl], d
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec c
    ld [hl], a
    rrca
    inc c
    dec c
    or h
    ld [hl], d
    dec b
    ld [bc], a
    ld a, [bc]
    dec e
    ld e, $3a
    ld a, [de]
    inc a
    cp $0b
    jr c, jr_007_72be

    ld a, $02

jr_007_72be:
    ld [de], a
    ret


    db $10, $5b, $0e, $07

    jp nc, $f672

    ld [hl], d
    add hl, hl
    ld [hl], e

    db $3f, $73

    ld h, [hl]
    ld [hl], e
    add l
    ld [hl], e
    cp l
    ld [hl], e
    inc b
    add b
    ld h, a
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld b, $0d
    ld [hl], a
    rrca
    ld [bc], a
    add hl, bc
    dec b
    add hl, de
    ld bc, $1902
    nop
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld b, $1d
    inc b
    pop de
    ld h, a
    ld a, [bc]
    add hl, de
    ld [$1904], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld [$0d02], sp
    ld [hl], a
    rrca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [$0019], sp
    ld [bc], a
    add hl, de
    ld bc, $1901
    ld [bc], a
    ld bc, $0319
    ld [bc], a
    add hl, de
    inc b
    ld bc, $0519
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld bc, $0919
    ld b, $19
    ld [$1d04], sp
    inc b
    cpl
    ld l, c
    ld a, [bc]
    add hl, de
    inc b
    ld b, $19
    dec b
    inc b
    add hl, de
    ld b, $04
    ld bc, $0d00
    ld [hl], a
    rrca
    ld [bc], a
    dec b
    inc d
    dec e

    db $04, $0c, $6a, $0a, $19, $00, $04, $19, $01, $04, $0d, $77, $0f, $02, $0d, $af
    db $0f, $0c, $10, $fd, $0d, $af, $0f, $14, $10, $f6, $0d, $af, $0f, $15, $10, $04
    db $19, $02, $14, $19, $01, $04, $1d

    inc b
    add hl, hl
    ld h, l
    ld a, [bc]
    add hl, de
    nop
    ld b, $04
    or l
    ld l, d
    ld a, [bc]
    add hl, de
    rlca
    ld b, $19
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    add hl, de
    nop
    inc d
    add hl, de
    rlca
    ld b, $1d
    inc b
    db $ed
    ld l, e
    ld a, [bc]
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    ld [hl+], a
    xor d
    ld [hl], e
    rlca
    add hl, bc
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    ld a, [bc]
    rrca
    inc e
    add b
    dec e
    dec c
    xor a
    rrca
    rrca
    inc bc
    db $10
    dec b
    inc b
    dec c
    xor a
    rrca
    db $10
    inc bc
    db $10
    dec b
    inc b
    ld b, $aa
    ld [hl], e
    inc b
    rst $20
    ld l, h
    ld a, [bc]
    dec c
    ld [hl], a
    rrca
    ld [bc], a
    add hl, de
    nop
    inc b
    ld [hl+], a
    add sp, $73
    rlca
    add hl, de
    ld bc, $190d
    ld [bc], a
    dec c
    add hl, de
    inc bc
    dec c
    add hl, de
    inc b
    dec c
    add hl, de
    dec b
    dec c
    add hl, de
    ld b, $0d
    rrca
    inc e
    add b
    dec c
    push af
    ld [hl], e
    add hl, de
    nop
    inc b
    dec e
    inc h
    ld e, $0d
    xor a
    rrca
    ld [de], a
    nop
    nop
    dec b
    ld b, $06
    add sp, $73
    ld e, $15
    ld a, [de]
    cp $04
    ret c

    ld e, $45
    ld a, [de]
    xor $80
    ld [de], a
    ret


    db $01, $02, $00, $fe, $ff, $02, $00, $fe

    ld h, d
    ld a, [$a076]
    or a
    jr nz, jr_007_7420

    ld l, $19
    set 5, [hl]
    ld l, $1c
    set 5, [hl]
    ld l, $1f
    set 5, [hl]
    call Call_000_0e2c

jr_007_7420:
    ld bc, $a076
    ld a, [bc]
    ld hl, $7402
    add a
    add l
    ld l, a
    jr nc, jr_007_742d

    inc h

jr_007_742d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $09
    ld a, [de]
    add h
    ld [de], a
    ld e, $0b
    ld a, [de]
    add l
    ld [de], a
    ld a, [bc]
    inc a
    ld [bc], a
    cp $04
    ret c

    ld h, d
    ld l, $19
    res 5, [hl]
    ld l, $1c
    res 5, [hl]
    ld l, $1f
    res 5, [hl]
    ld l, $6c
    res 0, [hl]
    ret


    call Call_007_7458
    jp Jump_007_748b


Call_007_7458:
    ld a, [$a071]
    ld hl, $7468
    add l
    ld l, a
    jr nc, jr_007_7463

    inc h

jr_007_7463:
    ld a, [hl]
    ld [$df11], a
    ret


    db $00, $09, $12, $1b

    call Call_007_7472
    jp Jump_007_748b


Call_007_7472:
    ld a, [$a071]
    ld hl, $7487
    add l
    ld l, a
    jr nc, jr_007_747d

    inc h

jr_007_747d:
    ld a, [hl]
    ld hl, $a05b
    add [hl]
    inc a
    ld [$df11], a
    ret


    db $01, $0a, $13, $1c

Jump_007_748b:
    ld a, [$df11]
    push bc
    ld h, $00
    ld l, a
    ld b, h
    ld c, l
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    ld bc, $74bb
    add hl, bc
    ld e, $65
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $67
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $6a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, $01
    ld e, $64
    ld [de], a
    pop bc
    ret


    db $00, $81, $00, $40, $09, $80, $02, $80, $83, $80, $42, $09, $20, $02, $80, $83
    db $a0, $44, $09, $e0, $01, $80, $83, $80, $46, $09, $80, $02

    add b
    add e
    nop
    ld c, c
    add hl, bc
    ld h, b
    ld bc, $8380
    ld h, b
    ld c, d
    add hl, bc
    and b
    ld bc, $8380
    nop
    ld c, h
    add hl, bc
    ld h, b
    ld [bc], a

    db $80, $83, $60, $4e, $09, $60, $01

    add b
    add e
    ret nz

    ld c, a
    add hl, bc
    and b
    db $01

    db $00, $81, $60, $51, $09, $c0, $02, $c0, $83, $20, $54, $09, $40, $02, $c0, $83
    db $60, $56, $09, $00, $02

    ret nz

    add e
    ld h, b
    ld e, b
    add hl, bc
    ld b, b
    ld [bc], a
    ret nz

    add e
    and b
    ld e, d
    add hl, bc
    nop
    ld [bc], a
    ret nz

    add e
    ldh [$ff5c], a
    add hl, bc
    ld b, b
    ld [bc], a
    ret nz

    add e
    jr nz, jr_007_7587

    add hl, bc
    ret nz

    ld bc, $83c0
    ld h, b
    ld h, c
    add hl, bc
    and b
    ld bc, $83c0
    nop
    ld h, e
    add hl, bc
    ldh [rSB], a

    db $00, $81, $e0, $64, $09, $c0, $02, $c0, $83, $a0, $67, $09, $40, $02, $c0, $83
    db $e0, $69, $09, $20, $02

    ret nz

    add e
    nop
    ld l, h
    add hl, bc
    jr nz, jr_007_7557

    ret nz

    add e

jr_007_7557:
    ld b, b
    ld l, [hl]
    add hl, bc
    ld b, b
    ld [bc], a
    ret nz

    add e
    add b
    ld [hl], b
    add hl, bc
    ld b, b
    ld [bc], a

    db $c0, $83, $c0, $72, $09, $80, $01, $c0, $83, $40, $74, $09, $40, $02

    ret nz

    add e
    add b
    halt
    add hl, bc
    ldh [rSB], a

    db $00, $81, $60, $78, $09, $00, $03, $00, $84, $00, $40, $0a, $00, $02

    nop

jr_007_7587:
    add h
    nop
    ld b, d
    ld a, [bc]
    ldh [rSB], a
    nop
    add h
    nop
    ld b, h
    ld a, [bc]
    nop
    ld [bc], a
    nop
    add h
    nop
    ld b, [hl]
    ld a, [bc]
    ldh [rSB], a

    db $00, $84, $00, $48, $0a, $c0, $01

    nop
    add h
    ret nz

    ld c, c
    ld a, [bc]
    add b
    ld bc, $8400
    ret nz

    ld c, e
    ld a, [bc]
    add b
    ld bc, $8400
    ld b, b
    ld c, l
    ld a, [bc]
    nop
    ld [bc], a

    db $00, $81, $00, $40, $0b, $a0, $03

    ld h, b
    adc b
    and b
    ld b, e
    dec bc
    nop
    dec b
    ld h, b
    adc b
    and b
    ld c, b
    dec bc
    add b
    dec b
    ld h, b
    adc b
    jr nz, jr_007_761e

    dec bc
    ld b, b
    dec b
    ld b, b
    adc d
    and b
    ld b, e
    dec bc
    nop
    dec b
    ld b, b
    adc d
    and b
    ld c, b
    dec bc
    add b
    dec b
    ld b, b
    adc d
    jr nz, jr_007_7633

    dec bc
    ld b, b
    dec b
    nop
    add c
    and b
    ld b, e
    dec bc
    nop
    dec b
    nop
    add c
    and b
    ld c, b
    dec bc
    add b
    dec b
    nop
    add c
    jr nz, jr_007_7648

Jump_007_75fa:
    dec bc
    ld b, b
    dec b
    nop
    add b
    ld [hl], c
    ld h, l
    stop
    ld b, $60
    adc b
    ld [hl], c
    ld l, e
    db $10
    and b
    ld b, $00
    add b
    db $fd
    ld a, c
    ld a, [de]
    ret nz

    nop
    nop
    add b
    call Call_000_1a7a
    nop
    ld bc, $8000
    call $1a7b

jr_007_761e:
    ret nz

    nop
    add b
    add e
    ld de, $1072
    ret nz

    nop
    ret nz

    add e
    add b
    halt
    add hl, bc
    ldh [rSB], a
    nop
    add c
    ld h, b
    ld a, b
    add hl, bc

jr_007_7633:
    nop
    inc bc
    nop
    add h
    nop
    ld b, b
    ld a, [bc]
    nop
    ld [bc], a
    nop
    add h
    nop
    ld b, d
    ld a, [bc]
    ldh [rSB], a
    nop
    add h
    nop
    ld b, h
    ld a, [bc]

jr_007_7648:
    nop
    ld [bc], a
    nop
    add h
    nop
    ld b, [hl]
    ld a, [bc]
    ldh [rSB], a
    nop
    add h
    nop
    ld c, b
    ld a, [bc]
    ret nz

    ld bc, $8400
    ret nz

    ld c, c
    ld a, [bc]
    add b
    ld bc, $8400
    ret nz

    ld c, e
    ld a, [bc]
    add b
    ld bc, $8400
    ld b, b
    ld c, l
    ld a, [bc]
    nop
    ld [bc], a
    nop
    add c
    nop
    ld b, b
    dec bc
    and b
    inc bc
    ld h, b
    adc b
    and b
    ld b, e
    dec bc
    nop
    dec b
    ld h, b
    adc b
    and b
    ld c, b
    dec bc
    add b
    dec b
    ld h, b
    adc b
    jr nz, jr_007_76d4

    dec bc
    ld b, b
    dec b
    ld b, b
    adc d
    and b
    ld b, e
    dec bc
    nop
    dec b
    ld b, b
    adc d
    and b
    ld c, b
    dec bc
    add b
    dec b
    ld b, b
    adc d
    jr nz, jr_007_76e9

    dec bc
    ld b, b
    dec b
    nop
    add c
    and b
    ld b, e
    dec bc
    nop
    dec b
    nop
    add c
    and b
    ld c, b
    dec bc
    add b
    dec b
    nop
    add c
    jr nz, jr_007_76fe

    dec bc
    ld b, b
    dec b
    nop
    add b
    ld [hl], c
    ld h, l
    stop
    ld b, $60
    adc b
    ld [hl], c
    ld l, e
    db $10
    and b
    ld b, $00
    add b
    db $fd
    ld a, c
    ld a, [de]
    ret nz

    nop
    nop
    add b
    call Call_000_1a7a
    nop
    ld bc, $8000
    call $1a7b

jr_007_76d4:
    ret nz

    nop
    add b
    add e
    ld de, $1072
    ret nz

    nop
    ld b, b
    ld [hl], h
    add hl, bc
    ld b, b
    ld [bc], a
    ret nz

    add e
    add b
    halt
    add hl, bc
    ldh [rSB], a

jr_007_76e9:
    nop
    add c
    ld h, b
    ld a, b
    add hl, bc
    nop
    inc bc
    nop
    add h
    nop
    ld b, b
    ld a, [bc]
    nop
    ld [bc], a
    nop
    add h
    nop
    ld b, d
    ld a, [bc]
    ldh [rSB], a

jr_007_76fe:
    nop
    add h

    db $01, $40, $01, $c2, $45, $07, $3a, $4c, $07, $c0, $6e, $07

    add hl, bc
    ld d, h
    inc bc

    db $37, $54, $03, $e3, $55, $03

    nop
    ld b, b
    inc bc

    db $34, $40, $03, $28, $63, $03, $9f, $65, $03, $09, $66, $03, $f1, $44, $03, $0a
    db $48, $03, $e5, $5b, $03, $ca, $40, $04

    add hl, sp
    ld b, d
    inc b

    db $00, $40, $01, $1b, $5f, $03, $ef, $5f, $03, $78, $61, $0e

    nop
    ld l, b
    inc bc
    ld a, l
    ld l, b
    inc bc

    db $12, $70, $03, $91, $71, $03, $2d, $4b, $05, $8f, $4b, $05, $3c, $4d, $05, $f1
    db $73, $03, $66, $79, $03, $2c, $43, $1a, $ac, $45, $1a, $bf, $45, $1a, $c8, $45
    db $1a

    dec b
    ld b, [hl]
    ld a, [de]

    db $99, $48, $07, $b1, $46, $07, $26, $49, $07, $2d, $7c, $04, $83, $7d, $04, $dd
    db $7a, $03, $31, $7d, $03, $2b, $7d, $03

    inc l
    ld a, l
    inc bc

    db $33, $53, $08

    inc bc
    ld d, [hl]
    ld [$5782], sp
    db $08

    db $1f, $46, $1a

    inc e
    ld e, b
    inc bc
    or c
    ld e, b
    inc bc

    db $9f, $40, $05, $c2, $42, $05, $83, $50, $05, $53, $57, $05

    adc b
    ld e, e
    dec b

    db $8f, $5d, $05, $e5, $5d, $05, $8e, $60, $05

    cp h
    ld h, e
    dec b

    db $0d, $65, $05

    adc [hl]
    ld h, [hl]
    dec b
    sub h
    ld h, [hl]
    dec b

    db $e9, $6a, $05, $21, $6c, $05, $19, $6e, $05, $41, $6f, $05

    or $72
    dec b
    add hl, bc
    ld a, c
    dec b

    db $86, $6c, $03, $1e, $63, $0e, $99, $63, $0e

    ld l, $6e
    inc bc
    ld d, h
    ld [hl], l
    dec b
    dec hl
    ld [hl], a
    dec b
    ld [hl], e
    ld [hl], a
    dec b
    call Call_000_0577
    ld h, $78
    dec b

    db $98, $67, $1c, $40, $68, $1c, $9c, $68, $1c, $f9, $68, $1c, $f7, $69, $1c

    ld e, $6a
    inc e

    db $4a, $6a, $1c, $67, $6a, $1c, $c5, $6a, $1c, $d2, $6b, $1c

    db $eb
    ld l, e
    inc e
    ld d, b
    ld l, h
    inc e
    ld l, e
    ld l, h
    inc e

    db $90, $6c, $1c, $ab, $6c, $1c

    add $6c
    inc e
    ld l, c
    ld l, l
    inc e
    adc $6d
    inc e
    inc h
    ld l, [hl]
    inc e
    ld e, e
    ld l, [hl]
    inc e
    or d
    ld l, [hl]
    inc e
    inc hl
    ld l, a
    inc e
    ld l, b
    ld l, a
    inc e
    add e
    ld l, a
    inc e
    and c
    ld l, a
    inc e
    dec d
    ld [hl], c
    inc e
    add [hl]
    ld [hl], c
    inc e
    xor e
    ld [hl], c
    inc e
    dec c
    ld [hl], d
    inc e
    ld l, $72
    inc e

jr_007_7841:
    ld c, a

jr_007_7842:
    ld [hl], d
    inc e

jr_007_7844:
    ld a, c
    ld [hl], d
    inc e
    sub [hl]
    ld [hl], d
    inc e
    dec hl
    ld [hl], h
    inc e
    ld h, e
    ld [hl], h
    inc e
    sub h
    ld [hl], h
    inc e
    push bc
    ld [hl], h
    inc e
    jr nc, jr_007_78cd

    inc e
    ld d, l
    ld [hl], l
    inc e
    or [hl]
    ld [hl], l
    inc e
    dec l
    halt
    inc e
    or h
    halt
    inc e
    jp z, Jump_000_0e5b

    ld de, $0e5c
    dec a
    ld e, h
    ld c, $69
    ld e, h
    ld c, $de
    ld e, a
    ld c, $95
    ld e, h
    ld c, $da
    ld e, h
    ld c, $f8
    ld e, h
    ld c, $16
    ld e, l
    ld c, $6f
    ld e, l
    ld c, $99
    ld e, l
    ld c, $bd
    ld e, l
    ld c, $e1
    ld e, l
    ld c, $05
    ld e, [hl]
    ld c, $0c
    ld h, c
    ld c, $29
    ld e, [hl]
    ld c, $94
    ld e, [hl]
    ld c, $df
    ld e, [hl]
    ld c, $28

jr_007_789c:
    ld e, a
    ld c, $a9
    ld e, a
    ld c, $04

jr_007_78a2:
    ld l, [hl]

jr_007_78a3:
    jr jr_007_789c

    ld [hl], h
    jr jr_007_78c7

    ld [hl], l

jr_007_78a9:
    jr @+$45

    ld [hl], l
    jr jr_007_7919

    ld [hl], l
    jr jr_007_7844

    ld [hl], l
    jr @-$1d

    ld [hl], l

jr_007_78b5:
    jr jr_007_7842

    halt
    jr jr_007_7841

    ld l, [hl]
    jr @-$08

    ld [hl], d
    jr jr_007_78a3

    ld [hl], b
    jr jr_007_78a9

    ld [hl], e
    jr jr_007_78d8

    ld [hl], h

jr_007_78c7:
    jr jr_007_792c

    ld [hl], e
    jr jr_007_78a2

    ld [hl], c

jr_007_78cd:
    db $18

    db $e6, $44, $0f, $e3, $47, $0f, $1d, $45, $0f

    ld d, h

jr_007_78d8:
    ld b, l
    rrca

    db $93, $6c, $08, $be, $6c, $08, $84, $5f, $08, $74, $47, $1a, $e0, $5e, $08, $b5
    db $60, $08, $62, $4a, $07, $89, $47, $1a, $07, $48, $1a

    ld l, e
    ld h, a
    rrca

    db $20, $69, $0f, $16, $6c, $0f

    ld b, a
    ld l, h
    rrca
    xor $4e
    ld a, [de]
    ld [$1a4f], sp
    dec e
    ld c, a
    ld a, [de]
    scf
    ld c, a
    ld a, [de]
    ld c, h
    ld c, a
    ld a, [de]
    ld h, [hl]
    ld c, a
    ld a, [de]
    ld a, e
    ld c, a
    ld a, [de]
    sub l
    ld c, a
    ld a, [de]

jr_007_7919:
    or h
    ld c, a
    ld a, [de]
    ld hl, $1a51
    ld a, [hl]
    ld d, c
    ld a, [de]
    db $db
    ld d, c
    ld a, [de]
    jr c, @+$54

    ld a, [de]
    sub l
    ld d, d
    ld a, [de]
    db $ec

jr_007_792c:
    ld d, d
    ld a, [de]
    ld b, e
    ld d, e
    ld a, [de]
    ld e, l
    ld d, e
    ld a, [de]
    ld [hl], a
    ld d, e
    ld a, [de]
    sub c
    ld d, e
    ld a, [de]
    xor e
    ld d, e
    ld a, [de]
    dec hl
    ld h, b
    ld a, [de]
    ld e, h
    ld h, d
    ld a, [de]
    or $69
    ld a, [de]
    db $eb
    ld l, [hl]
    ld a, [de]
    ld h, a
    ld h, d
    ld a, [de]
    ld [hl], c
    ld h, e
    ld a, [de]
    xor a
    ld h, e
    ld a, [de]
    db $ec
    ld h, h
    ld a, [de]
    add sp, $68
    ld a, [de]
    ld b, b
    ld l, c
    ld a, [de]
    ld c, [hl]
    ld l, c
    ld a, [de]
    add a
    ld b, c
    ld b, $c1
    ld b, [hl]
    ld b, $24
    ld b, c
    ld c, $2c
    ld c, c
    db $0e

    db $19, $5d, $0f, $44, $5d, $0f

    cp [hl]
    ld e, l
    rrca
    ret nc

    ld e, e
    ld b, $11
    ld e, h
    ld b, $30
    ld [hl], d
    ld b, $c8
    ld b, b
    dec e
    ld hl, $1d49
    add hl, sp
    ld c, l
    dec e
    ld b, l
    ld e, h
    dec e
    push bc
    ld h, e
    dec e
    cp a
    ld [hl], h
    dec e
    ld a, c
    ld b, e
    add hl, de
    add hl, bc
    ld b, h
    add hl, de
    dec c
    ld b, h
    add hl, de
    ld a, a
    ld b, h
    add hl, de
    scf
    ld b, h
    add hl, de
    inc de
    ld b, l
    add hl, de
    ld c, b
    ld b, l
    add hl, de
    ld d, b
    ld c, h
    add hl, de
    ld [hl], c
    ld b, l
    add hl, de
    sbc l
    ld c, h
    add hl, de
    cp c
    ld c, h
    add hl, de
    push de
    ld c, h
    add hl, de
    pop af
    ld c, h
    add hl, de
    dec c
    ld c, l
    add hl, de
    add hl, hl
    ld c, l
    add hl, de
    ld b, l
    ld c, l
    add hl, de
    ld h, c
    ld c, l
    add hl, de
    ld a, l
    ld c, l
    add hl, de
    sbc c
    ld c, l
    add hl, de
    or l
    ld c, l
    add hl, de
    pop de
    ld c, l
    add hl, de
    db $ed
    ld c, l
    add hl, de
    add hl, bc
    ld c, [hl]
    add hl, de
    dec h
    ld c, [hl]
    add hl, de
    ld b, c
    ld c, [hl]
    add hl, de
    ld e, l
    ld c, [hl]
    add hl, de
    adc e
    ld c, [hl]
    add hl, de
    db $ed
    ld a, d
    add hl, de
    inc l
    ld h, [hl]
    ld c, $03
    ld l, l
    db $0e

    db $e7, $58, $08

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    inc b

    db $06, $06, $06, $06, $05

    dec b

    db $05, $05

    inc b

    db $08

    db $08

    db $0c, $0e

    db $0e

    db $0f

    rrca
    db $11

    db $12

    ld [de], a

    db $12

    ld [de], a

    db $09

    add hl, bc

    db $0a

    ld a, [bc]

    db $14

    inc d
    dec d
    dec d
    dec d
    dec d
    rla
    rla

    db $17, $17, $17

    rla
    rla
    rla
    rla
    rla
    rla
    rla
    jr jr_007_7a46

    jr jr_007_7a48

    jr jr_007_7a4a

    jr jr_007_7a4c

    db $18

    jr @+$1e

    inc e
    inc e
    inc e
    inc e
    inc e

    db $1e, $1e, $1e, $19

    add hl, de

    db $19

    add hl, de

    db $1b

    dec de

    db $26

jr_007_7a46:
    db $26

    db $1b

jr_007_7a48:
    dec de

    db $26

jr_007_7a4a:
    db $26

    db $17

jr_007_7a4c:
    db $28

    db $28, $28, $28

    jr nc, jr_007_7a82

    ld h, $26
    ld h, $26
    ld h, $26

    db $32, $a1, $a2, $a5, $a5, $a5

    and l
    and l
    and l
    and l
    and l

    db $a6, $26

    ld h, $26
    db $26

    db $28, $28, $28, $28, $34, $34, $35

    dec [hl]
    dec [hl]
    dec [hl]
    jp z, Jump_000_17cc

    pop de

jr_007_7a76:
    call nc, Call_000_3636
    ld [hl], $36

    db $37

    scf

    db $39

    add hl, sp
    sub $d8
    ld [hl+], a

jr_007_7a82:
    ld e, $1e
    ld a, [hl-]
    ld a, [hl-]

    db $3b

    dec sp
    dec a
    dec a

    db $40

    ld b, b
    ld b, b
    ld b, b

    db $40

    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d

    db $45

    ld b, l

    db $45

    ld b, l
    ld a, $3e

    db $3e, $3e, $3f, $3f, $2c, $29

    ld l, $2e
    dec b
    dec b
    dec b
    dec b

    db $1c

    inc e

    db $1c

    inc e

    db $1c

    inc e

    db $44

    ld b, h
    ld b, h
    ld b, h

    db $2a

    ld b, a
    ld b, a
    ld b, a
    ld b, a
    dec l
    cp a
    ret nz

    jp $c1c4


    db $11

    ld de, $1111

    db $11

    db $11
    db $11

    db $11, $11

    db $11
    db $11

    db $11

    ld de, $1111
    ld de, $c02b
    push bc
    ret nz

    db $09, $08

    add $2e
    dec d
    dec d
    dec d
    dec d
    dec d
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
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    nop

    db $00, $10, $01, $11, $00

    db $10

    db $01, $11

    nop

    db $00

    nop

    db $00, $00

    db $10

    db $00

    nop
    nop

    db $00

    db $10

    db $01

    db $11

    db $00

    db $10

    db $00

    db $01

    db $00

    stop
    stop
    stop
    db $10

    db $01, $11, $02

    ld [de], a
    inc bc
    inc de
    inc b
    inc d
    dec b
    dec d
    nop
    db $10
    ld bc, $0211
    ld [de], a
    inc bc
    inc de

    db $04

    inc d
    nop
    db $10
    ld bc, $0201
    ld [de], a

    db $01, $02, $03, $00

    db $10

    db $01

    db $11

    db $00

    db $10

    db $00

    db $10

    db $01

    db $11

    db $01

    db $11

    db $06

    nop

    db $10, $20, $31

    nop
    db $10
    ld [bc], a
    ld [de], a
    inc bc
    inc de
    inc b
    inc d

    db $00, $00, $00, $00, $01, $02

    inc bc
    inc b
    dec b
    ld b, $07

    db $00, $05

    dec d
    ld b, $16

    db $01, $11, $21, $31, $00, $10, $00

    db $10
    ld bc, $0011
    nop
    rst $38
    nop
    nop
    nop
    db $10
    db $01
    db $11

    db $00

    db $10

    db $00

    stop
    nop
    nop
    nop
    inc b
    nop
    db $01

    db $00

    stop
    db $10

    db $00

    nop
    db $01
    db $01

    db $10

    stop
    db $10
    ld bc, $0211
    ld [de], a

    db $00

    db $10

    db $01

    ld de, $1000

    db $01, $11, $00, $10, $00, $00

    nop
    nop
    ld [bc], a
    ld [de], a
    inc bc
    inc de

    db $03

    inc de

    db $04

    inc d

    db $05

    dec d

    db $00

    db $10
    db $01
    db $11

    db $00

    nop
    db $10
    ld bc, $0011
    nop
    nop
    nop
    nop
    nop

    db $00

    nop
    nop
    nop

    db $00

    nop
    nop

    db $00, $00

    nop
    nop

    db $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $11, $01

    nop
    ld bc, $1101
    ld hl, $4131
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
    jr nz, jr_007_7bf2

jr_007_7bf2:
    ld [bc], a
    nop
    add b
    nop
    adc b
    nop
    ld bc, $1000
    inc b
    ld [$0800], sp
    nop
    db $01

    db $01, $01, $01, $01, $01

    db $01

    db $01, $01

    db $01

    db $01

    db $01

    db $3c, $01

    db $01

    db $01

    db $01
    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    ld bc, $ffff
    rst $38
    rst $38
    db $01
    db $01

    db $01, $01, $01

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

    db $01

    ld bc, $0101
    ld bc, $0101
    db $01

    db $01, $01, $01, $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $1e

    db $1e

    db $01

    db $01

    db $1e

    db $1e

    db $01

    nop

    db $00, $00, $00

    ld bc, $1e01
    ld e, $1e
    ld e, $1e
    db $1e

    db $3c, $00, $00, $00, $00, $00

    nop
    nop
    nop
    nop
    nop

    db $00, $1e

    ld e, $1e
    db $1e

    db $01, $01, $01, $01, $01, $01, $01

    ld bc, $0101
    inc hl
    inc a
    ld bc, $3c28
    ld bc, $0101
    db $01

    db $01

    db $01

    db $01

    ld bc, $7878
    nop
    ld bc, $0101
    db $01

    db $01

    ld bc, $0101

    db $01

    ld bc, $0101

    db $01

    ld bc, $0101
    ld bc, $0101
    db $01

    db $01

    db $01

    db $01

    ld bc, $0101

    db $01, $01, $01, $01, $00, $00

    ld b, b
    ret nz

    ld bc, $0101
    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $01

    ld bc, $0101

    db $00

    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop

    db $00

    nop
    nop
    nop

    db $00

    nop
    nop

    db $00, $00

    nop
    nop

    db $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $01, $01

    nop
    ld b, b
    rst $38
    rst $38
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
    add b
    nop
    jr nz, jr_007_7ce9

jr_007_7ce9:
    nop
    nop
    nop
    add b
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

    db $10, $10, $10, $10, $10

    db $10

    db $10, $10

    nop

    db $20

    db $20

    db $00, $20

    db $20

    db $20

    jr nz, @+$02

    db $20

    db $20

    db $20

    db $20

    db $20

    db $20

    db $10

    db $10

    db $20

    jr nz, jr_007_7d1d

jr_007_7d1d:
    nop
    nop
    nop
    nop
    nop

    db $00, $00, $00

    nop
    nop
    nop
    nop

jr_007_7d29:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7d30:
    nop
    nop
    nop
    nop

    db $00

jr_007_7d35:
    nop
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    db $00, $00, $00, $10

    db $10

    db $10

    db $10

    db $20

    db $20

    db $50

    ld d, b

    db $20

    db $20

    db $50

    ld d, b

    db $00

    nop

    db $00, $00, $00

    jr nz, @+$22

    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b

    db $50, $00, $00, $00, $00, $00

    nop
    nop
    nop
    nop
    nop

    db $00, $50

    ld d, b
    ld d, b
    ld d, b

    db $00, $00, $00, $00, $20, $20, $20

    jr nz, jr_007_7d91

    jr nz, jr_007_7d73

jr_007_7d73:
    nop
    nop
    ld d, b
    ld d, b
    jr nz, jr_007_7d99

    jr nz, jr_007_7d9b

    db $10

    db $10

    db $50

    ld d, b
    nop
    nop
    nop
    nop
    nop
    dec d
    dec d

    db $10

    db $10
    ld [hl], l
    ld [hl], l

    db $10

    db $10
    db $10
    db $10

    db $10

    stop

jr_007_7d91:
    nop
    nop
    nop
    nop
    nop

    db $20

    db $20

    db $20

jr_007_7d99:
    jr nz, @+$07

jr_007_7d9b:
    dec b

    db $10, $10, $20, $20, $00, $00

    nop
    nop
    db $10
    db $10
    db $10
    db $10

    db $20

    db $20

    db $20

    db $20

    db $20

    db $20

    db $10

    db $10
    db $10
    db $10

    db $00

    jr nz, jr_007_7dd5

    jr nz, jr_007_7dd7

    nop
    nop

jr_007_7db9:
    nop
    nop
    nop
    nop

    db $00

    nop

jr_007_7dbf:
    nop
    nop

    db $00

    nop
    nop

    db $00, $00

    nop
    nop

    db $00

    nop
    nop

jr_007_7dcb:
    nop
    nop

jr_007_7dcd:
    nop
    nop
    nop
    nop

    db $20, $20

    nop
    nop

jr_007_7dd5:
    nop
    nop

jr_007_7dd7:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    stop
    nop
    nop
    ld [$3400], sp
    nop
    nop
    adc b
    nop
    jr nz, jr_007_7dee

jr_007_7dee:
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

    db $00, $00, $00, $00, $00

    nop

    db $00, $00

    nop

    db $00

    nop

    db $05, $00

    nop

    db $00

    nop
    nop

    db $00

    nop

    db $00

    nop

    db $00

    nop

    db $00

    nop

    db $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $00, $00, $00

    nop

    db $00

    nop

    db $00

    nop

    db $01

    db $01

    db $00

    nop

    db $01

    db $01

    db $00

    nop

    db $00, $00, $00

    nop
    nop
    ld bc, $0101
    ld bc, $0101

    db $07, $00, $00, $00, $00, $00

    nop
    nop
    nop
    nop
    nop

    db $00, $01

    ld bc, $0101

    db $00, $00, $00, $00, $00, $00, $00

    nop
    nop
    nop
    dec b
    stop
    ld [bc], a
    ld [de], a
    nop
    nop
    nop
    nop

    db $00

    nop

    db $00

    nop
    ld d, b
    dec h
    nop
    nop
    nop
    nop
    nop

    db $00

    nop
    nop
    nop

    db $00

    nop
    nop
    nop

    db $00

    nop
    ld bc, $0101
    ld bc, $0101

    db $00

    nop

    db $00

    nop
    nop
    nop

    db $00, $00, $00, $00, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop

    db $00

    nop

    db $00

    nop

    db $00

    nop

    db $00

    nop
    nop
    nop

    db $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00

    nop
    nop
    nop

    db $00

    nop
    nop

    db $00, $00

    nop
    nop

    db $00

    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc

    db $00, $00, $00, $00, $01

    db $01

    db $01, $01

    dec bc

    db $02

    ld [bc], a

    db $03, $05

    dec b

    db $06

    ld b, $13

    db $0a

    ld a, [bc]

    db $0a

    ld a, [bc]

    db $04

    inc b

    db $00

    nop

    db $07

    rlca
    ld [$0808], sp
    ld [$0c0c], sp

    db $0c, $0c, $0c

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

    db $0c

    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca

    db $11, $11, $11, $0d

    dec c

    db $0d

    dec c

    db $0e

    db $0e

    db $10

    db $10

    db $0e

    db $0e

    db $12

    ld [de], a

    db $0c

    inc de

    db $14, $15, $16

    rla
    rla
    jr @+$1a

    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]

    db $1b, $1c, $1f, $1d, $1d, $1d

    dec e
    dec e
    dec e
    dec e
    dec e

    db $1d, $20

    jr nz, @+$23

    db $21

    db $13, $14, $15, $16, $22, $22, $23

    inc hl
    inc hl
    inc hl
    ld h, $27
    inc c
    jr z, @+$2b

    inc h
    inc h
    inc h
    inc h

    db $25

    dec h

    db $2a

    ld a, [hl+]
    dec hl
    inc l
    rra
    ld de, $2d11
    dec l

    db $2e

    ld l, $2f
    cpl

    db $30

    jr nc, @+$32

    db $30

    db $30

    jr nc, jr_007_7fc2

    ld sp, $3232
    inc sp
    inc sp

    db $34

    inc [hl]

    db $34

    inc [hl]
    dec [hl]
    dec [hl]

    db $36, $36, $37, $37, $1f, $38

    add hl, sp
    add hl, sp
    ld bc, $0101
    db $01

    db $0f

    rrca

    db $0f

    rrca

    db $0f

    rrca

    db $00

    nop
    nop
    nop

    db $1f

    scf
    scf
    scf
    scf
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc c
    inc c

    db $3e

    ld a, $3e
    db $3e

    db $3e

jr_007_7fc2:
    ld a, $3e

    db $3e, $3e

    ld a, $3e

    db $3e

    ld a, $3e
    ld a, $3e
    rra
    ccf
    ld b, b
    ld b, c

    db $04, $02

    ld b, b
    add hl, sp
    ld [$0808], sp
    ld [$ff08], sp
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
    ld b, b
    add b
    nop
    nop
    nop
    jr nz, jr_007_7fec

jr_007_7fec:
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
