; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    db $28, $3f, $3e, $3f, $1f, $1f, $2d, $33, $7e, $41, $7f, $40, $5f, $60, $2f, $30
    db $3f, $38, $17, $18, $37, $38, $3f, $38, $2b, $3c, $24, $3f, $13, $1f, $0e, $0e
    db $e8, $18, $b0, $70, $f0, $f0, $d8, $e8, $d4, $2c, $ec, $94, $fc, $94, $f8, $98
    db $f8, $98, $f0, $90, $d0, $30, $e0, $20, $a0, $60, $60, $e0, $c0, $c0, $80, $80
    db $ff, $00, $ff, $00, $7f, $80, $ff, $ff, $d6, $3b, $ff, $0a, $ff, $00, $f7, $0e
    db $ff, $0e, $ff, $0e, $ff, $0e, $f6, $0d, $03, $ff, $fc, $fc, $78, $78, $00, $00
    db $28, $3f, $3e, $3f, $0f, $0f, $1e, $11, $3f, $20, $3f, $20, $2f, $30, $13, $1c
    db $0f, $08, $0f, $08, $1f, $1c, $17, $1c, $12, $1f, $11, $1f, $09, $0f, $06, $06
    db $e8, $18, $b0, $70, $e0, $e0, $90, $70, $f0, $10, $b0, $50, $d0, $30, $e0, $a0
    db $e0, $a0, $e0, $a0, $e0, $a0, $c0, $40, $40, $c0, $80, $80, $00, $00, $00, $00
    db $08, $0f, $1c, $1f, $27, $3f, $3d, $3f, $03, $03, $07, $04, $0b, $0c, $0b, $0c
    db $09, $0e, $04, $07, $03, $03, $04, $07, $03, $03, $00, $00, $00, $00, $00, $00
    db $c8, $38, $30, $f0, $c0, $c0, $80, $80, $e0, $60, $e0, $20, $d0, $30, $30, $d0
    db $f0, $10, $a0, $60, $e0, $e0, $10, $f0, $e0, $e0, $00, $00, $00, $00, $00, $00
    db $28, $3f, $3e, $3f, $0f, $0f, $1d, $1e, $2e, $31, $5f, $60, $7f, $40, $7f, $40
    db $5f, $60, $3f, $30, $37, $38, $4f, $78, $4b, $7c, $44, $7f, $3b, $3b, $00, $00
    db $ff, $00, $7f, $80, $ff, $ff, $b6, $5b, $ff, $0a, $ff, $20, $ff, $10, $ff, $1f
    db $ff, $10, $ff, $20, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $79, $87, $ff, $ff
    db $19, $1e, $28, $3f, $26, $3f, $3f, $3f, $11, $1f, $2f, $30, $2f, $30, $2f, $30
    db $17, $18, $09, $0e, $0b, $0c, $14, $1f, $13, $1f, $11, $1f, $0e, $0e, $00, $00
    db $f8, $08, $e8, $18, $b0, $70, $c0, $c0, $80, $80, $80, $80, $40, $c0, $40, $c0
    db $40, $c0, $40, $c0, $80, $80, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $00, $7f, $80, $ff, $ff, $ff, $89, $ff, $05, $cf, $30, $ff, $07, $ff, $0f
    db $ef, $1f, $ff, $1f, $ff, $1f, $ff, $1f, $ff, $0e, $3d, $c3, $fe, $fe, $38, $38
    db $18, $18, $18, $18, $18, $00, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $00, $00, $ff, $d5, $ff, $aa, $d5, $ff, $00, $ff, $09, $ff, $05, $e7, $18
    db $ff, $02, $5f, $e0, $80, $ff, $3e, $ff, $e3, $e3, $00, $00, $00, $00, $00, $00
    db $e8, $18, $b0, $70, $e0, $e0, $50, $f0, $e8, $18, $f8, $88, $f4, $8c, $ec, $94
    db $f4, $9c, $f8, $98, $d0, $30, $f0, $30, $b0, $70, $50, $f0, $e0, $e0, $00, $00
    db $ff, $00, $7f, $80, $ff, $ff, $b6, $5b, $ff, $0a, $ff, $20, $ff, $1f, $ff, $10
    db $ff, $10, $ff, $20, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $79, $87, $ff, $ff

    nop
    nop
    nop
    nop
    ld b, $0f
    ld h, c
    ld l, a
    ld a, b
    ld a, a
    inc a
    ccf
    ld a, h
    ld a, a
    ld a, [hl]
    ld [hl], c
    ld a, $31
    ld c, h
    ld [hl], e
    inc bc
    ld a, h
    ld bc, $0c7e
    ld [hl], e
    rlca
    ld a, b
    inc bc
    ld a, h
    rrca
    db $10
    rlca
    dec bc
    inc sp
    dec c
    rrca
    nop
    rlca
    nop
    ld bc, $1f06
    ld bc, $0007
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $e80f
    rst $28
    db $fc
    rst $38
    ld a, h
    ld a, a
    cp $f3
    db $fc
    db $e3
    ld a, h
    ld [hl], e
    ld l, b
    ld [hl], a
    db $10
    ld a, a
    nop
    ld a, a
    ld b, d
    ld a, l
    jr nz, @+$41

    nop
    ld a, a
    nop
    ld a, a
    inc bc
    inc a
    ld de, $001e
    rrca
    inc b
    rlca
    nop
    rra
    inc bc
    inc b
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
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld a, b
    ld hl, sp+$38
    ld hl, sp-$68
    ld hl, sp-$74
    db $fc
    adc h
    db $fc
    add h
    ld a, h
    ldh [rNR32], a
    db $f4
    ld [$40fc], sp
    cp $68
    cp $f8
    cp $fc
    rra
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    cp $27
    cp $17
    cp $17
    cp $02
    cp $06
    db $fc
    inc c
    ld hl, sp-$08
    ldh a, [$ffe0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0e0f], sp
    rrca
    ld de, $221f
    ccf
    inc a
    ccf
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_42d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ffa0]
    ldh a, [$fff0]
    cp b
    ld e, b
    db $f4
    inc c
    db $fc
    sub h
    ld a, [$fe56]
    ld d, d
    cp $02
    ld a, [$fc66]
    ld b, h
    db $f4
    inc c
    ret c

    jr c, jr_00a_42d9

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, d
    cp $21
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    inc hl
    sbc $31
    adc $3d
    jp nz, $c03f

    rst $38
    inc c
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ccf
    db $fc

jr_00a_431f:
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a

jr_00a_4328:
    ldh [$ff7f], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$ff7f]
    db $fc
    rra
    rst $38
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00a_4328

    add hl, de
    rst $38
    inc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    jr nc, @-$2f

    jr c, jr_00a_431f

    ld e, $e1
    rst $08
    jr nc, jr_00a_43dc

    add b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ld h, b
    inc bc
    inc e
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
    ld b, b
    adc b
    ret z

    sbc b
    ld hl, sp+$08
    ld hl, sp-$74
    db $fc
    add h
    db $fc
    add h
    db $fc
    nop
    db $fc
    ld [$88f4], sp
    ld [hl], h
    ret c

    inc h
    ld hl, sp+$07
    ld a, [$fe05]
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $25
    cp $15
    cp $15
    cp $00
    db $fc
    ld [bc], a
    db $fc
    nop
    ldh a, [$ff08]
    nop
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
    rst $38
    ld a, [bc]
    ld a, a
    sbc a
    or $fd
    ld l, e
    db $f4
    ld e, a
    ldh [rIE], a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_00a_4404

    jr nc, jr_00a_43f2

    inc e
    rlca
    rlca
    nop
    nop

jr_00a_43dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_43f2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    adc c
    rst $38

jr_00a_4404:
    ld b, h
    rst $38
    ldh a, [rIE]
    db $eb
    rst $38
    db $fd
    rst $00
    rst $38
    add a
    ld sp, hl
    rlca
    ei
    rlca
    ldh a, [$ff8f]
    ld h, b
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $81ff
    rst $38
    nop
    cp $01
    ld a, e
    add a
    db $fc
    db $fc
    ld h, b
    ldh [$ffc0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [hl-], a
    inc sp
    ld a, a
    ld a, a
    ld h, h
    ld a, a
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld d, b
    ld a, a
    jr nc, jr_00a_4493

    jr nz, jr_00a_4495

    jr nz, jr_00a_4497

    jr nz, jr_00a_4499

    jr nz, jr_00a_449b

    jr nz, jr_00a_449d

    ld [de], a
    rra
    inc c
    rrca
    ld [$0e0f], sp
    rrca
    inc de
    rra
    dec l
    ld [hl-], a
    ccf
    jr nz, jr_00a_44ac

    jr nz, jr_00a_449e

    jr nc, jr_00a_4490

    db $10
    rla
    jr jr_00a_4494

    ld e, $11
    rra
    db $10
    rra
    ld [$070f], sp
    rlca
    nop
    nop
    sbc h
    sbc h
    ld [hl], e
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00a_4490:
    nop
    rst $38
    nop

jr_00a_4493:
    rst $38

jr_00a_4494:
    nop

jr_00a_4495:
    rst $38
    nop

jr_00a_4497:
    rst $38
    nop

jr_00a_4499:
    rst $38
    nop

jr_00a_449b:
    rst $38
    nop

jr_00a_449d:
    rst $38

jr_00a_449e:
    nop
    rst $38
    ld [bc], a
    rst $38
    sub d
    rst $38
    sub e
    rst $38
    cp $ff
    ld d, a
    xor b
    rst $38
    nop

jr_00a_44ac:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add hl, sp
    ld b, l
    rst $38
    add $fe
    call nz, $38fc
    jr c, jr_00a_44bf

jr_00a_44bf:
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    rlca
    dec b
    rlca
    dec b
    dec b
    rlca
    rrca
    dec bc
    ld c, $0b
    ld a, [bc]
    rrca
    ld e, $17
    rra
    ld d, $17
    ld e, $3f
    ld l, $3f
    ld l, $2f
    ld a, $35
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_44e8:
    nop
    nop

jr_00a_44ea:
    ld bc, $0e01
    rrca
    dec e
    dec de
    ld l, $33
    ld [hl], a
    ld l, [hl]
    ld l, l
    ld e, [hl]
    rst $38
    call c, $dcff
    rst $38
    rst $38
    adc c
    adc c
    ld bc, $0001
    nop
    add b

jr_00a_4503:
    add b
    ld b, b
    ret nz

    jr nz, jr_00a_44e8

    jr nz, jr_00a_44ea

    ret nc

    ldh a, [$fff0]
    ld [hl], b
    ldh a, [rSVBK]
    call c, Call_000_18bc
    ld hl, sp+$38
    ret z

    ld hl, sp+$08
    ret c

    jr z, @-$66

    ld l, b
    ld hl, sp+$08
    add sp, $18
    ret nc

    jr nc, jr_00a_4503

    ldh [rP1], a
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

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
    nop
    nop
    rlca
    rlca
    inc e
    rra
    ld a, $3f
    inc sp
    ccf
    inc hl
    ccf
    dec h
    ccf
    dec h
    ccf
    add hl, de
    rra
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ldh a, [rIE]
    add b
    rst $38
    ld [hl], d
    ld a, a
    ld h, a
    ld a, a
    rra
    rra
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld c, $0b
    rlca
    dec b
    rlca
    inc b
    dec c
    ld c, $0b
    rrca
    ld a, [bc]
    rrca
    ld b, $07
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    ld l, $ee
    ccf
    rst $38
    ld h, a
    rst $38
    add e
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    cp $0c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$30
    ldh a, [$ffc0]
    ret nz

    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    rlca
    ld c, $0b
    rla
    ld e, $1f
    ld d, $3d
    ld [hl], $3f
    inc l
    ld a, a
    ld l, h
    ld a, a
    ld a, a
    ld c, c
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_45e8:
    nop
    nop
    ld bc, $0e01
    rrca
    dec a
    dec sp
    ld a, [hl]
    ld h, a
    ld a, l
    ld c, [hl]
    rst $38
    call c, $dcff
    rst $38
    rst $38
    adc c
    adc c
    ld bc, $0101
    ld bc, $0000
    ld sp, $ea31
    ei
    inc h
    rst $38
    nop
    rst $38
    jr nc, @+$01

    inc e
    rst $38
    ld a, [hl]
    rst $30
    ld a, $f1
    ld a, c
    rst $38
    ld a, a
    add c
    rst $38
    ld bc, $33cc
    call c, $ff23
    nop
    rst $38
    nop
    ccf
    ret nz

    ld d, l
    rst $38
    rst $38
    rst $38
    rst $18
    jr nz, jr_00a_45e8

    ld b, b
    ld a, a
    adc b
    ld a, a
    add l
    ld a, a
    add b
    ld a, a
    add b
    add b
    rst $38
    ret nz

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
    ld sp, $ea31
    ei
    inc h
    rst $38
    nop
    rst $38
    jr nc, @+$01

    inc e
    rst $38
    ld a, [hl]
    rst $30
    ld a, $f7
    ld a, [hl]
    ld sp, hl
    ld bc, $7fff
    add b
    call z, $cc33
    inc sp
    call c, $ff23
    nop
    rst $38
    nop
    ccf
    ret nz

    ld d, l
    rst $38
    rst $38
    rst $38
    rst $18
    jr nz, @-$3f

    ld b, b
    ld a, a
    adc b
    ld a, a
    add l
    ld a, a
    add b
    ld a, a
    add b
    add b
    rst $38
    ret nz

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
    rrca
    rrca
    inc b
    rlca
    ld a, $3f
    db $10
    rra
    ld [$040f], sp
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_00a_46d3

    jr nc, jr_00a_46d5

    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, c
    ld a, [hl]
    ld hl, $183e
    rra
    inc c
    rrca
    rrca
    rrca
    inc b
    rlca
    add hl, bc
    ld c, $13
    inc e
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    ld c, e
    cp $de
    ld hl, $40bf
    ld a, a
    add b
    ld a, a
    add l
    ld a, a
    add l
    ccf

jr_00a_46d3:
    push bc
    rra

jr_00a_46d5:
    ldh [rIF], a
    ldh a, [$ff80]
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$060f], sp
    rlca
    ld bc, $0101
    ld bc, $0203
    rlca
    inc b
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    rrca

jr_00a_46f7:
    rrca
    rlca

jr_00a_46f9:
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    jr nc, @+$32

    ret nc

    ldh a, [$ff8c]
    db $fc
    ld [$10f8], sp
    ldh a, [rSVBK]
    ldh a, [$fff0]
    ret nc

    ld hl, sp+$18
    inc [hl]
    db $fc
    ld [$f71e], a
    rrca
    sbc e
    ld h, a
    db $db
    daa
    ld a, [$f206]
    ld c, $cc
    inc a
    ld a, b
    ld hl, sp-$60
    ldh [rSVBK], a
    sub b
    cp b
    ld c, b
    ret z

    cp b
    ret z

    jr c, jr_00a_46f7

    jr c, jr_00a_46f9

    jr c, jr_00a_476b

    ld hl, sp+$70
    ldh a, [$ffe0]

jr_00a_4737:
    ldh [rP1], a

jr_00a_4739:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    ret nc

    ldh a, [$ff8c]
    db $fc
    ld [$10f8], sp
    ldh a, [rSVBK]
    ldh a, [$fff0]
    ret nc

    ld hl, sp-$28
    ld hl, sp+$38
    adc h
    db $fc
    db $e4
    inc e
    sbc [hl]
    ld h, [hl]
    sbc d
    ld h, [hl]
    jp c, $fa26

    ld b, $f4
    inc c
    call z, Call_00a_703c
    ldh a, [$ffa0]
    ldh [rSVBK], a
    sub b
    cp b
    ld c, b
    ret z

jr_00a_476b:
    cp b
    ret z

    jr c, jr_00a_4737

    jr c, jr_00a_4739

    jr c, jr_00a_47ab

    ld hl, sp+$70
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
    rrca
    rrca
    inc b
    rlca
    ld a, $3f
    db $10
    rra
    inc c
    rrca
    ld b, $07
    inc c
    rrca
    db $10
    rra
    jr nz, jr_00a_47d3

    ld b, b
    ld a, a
    db $f4
    rst $38
    ld sp, hl
    cp $f1
    cp $21
    ld a, $20
    ccf
    jr @+$21

    rrca

jr_00a_47a3:
    rrca
    inc b
    rlca
    add hl, bc
    ld c, $13
    inc e
    inc e

jr_00a_47ab:
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR10]
    ldh [$ff60], a
    add b

jr_00a_47c5:
    add b
    add b

jr_00a_47c7:
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    or b
    ld d, b
    ret nc

    jr nc, @-$2e

    jr nc, jr_00a_47a3

jr_00a_47d3:
    jr nc, jr_00a_47c5

    jr nc, jr_00a_47c7

    ld [hl], b
    ldh [$ffe0], a
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $00, $dc, $dc, $33, $ff, $22, $ff, $00, $ff, $00, $ff, $38, $ff, $fd, $ef
    db $7d, $ef, $fd, $f2, $43, $ff, $7f, $e0, $f2, $fd, $d6, $e9, $bf, $e0, $ff, $80
    db $a0, $60, $c0, $c0, $80, $80, $60, $e0, $d0, $30, $f0, $10, $f0, $10, $d0, $30
    db $60, $a0, $e0, $a0, $e0, $e0, $20, $e0, $20, $e0, $40, $c0, $80, $80, $00, $00
    db $63, $7c, $38, $3f, $17, $1f, $27, $3e, $3d, $3e, $0b, $0c, $0b, $0c, $0f, $08
    db $0b, $0c, $07, $04, $05, $06, $02, $03, $01, $01, $00, $00, $00, $00, $00, $00
    db $03, $03, $04, $07, $02, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $07, $07, $0f, $0f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $07, $07, $3e, $3f, $7f, $7f, $3f, $3f, $0f, $0f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0
    db $e0, $e0, $f8, $f8, $7f, $7f, $78, $7f, $30, $3f, $18, $1f, $06, $07, $01, $01
    db $00, $00, $00, $00, $00, $00, $20, $20, $70, $70, $70, $70, $f0, $f0, $f8, $f8
    db $f8, $f8, $e4, $fc, $63, $7f, $40, $7f, $20, $3f, $18, $1f, $06, $07, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $e0, $e0, $1c, $fc, $02, $fe, $0c, $fc, $f0, $f0
    db $00, $00, $c0, $c0, $40, $c0, $78, $f8, $10, $f0, $20, $e0, $e0, $e0, $f0, $b0
    db $f8, $b8, $c4, $7c, $0a, $f6, $cf, $33, $7f, $93, $7e, $96, $de, $3e, $f8, $38
    db $00, $00, $00, $00, $03, $03, $04, $07, $08, $0f, $10, $1f, $20, $3f, $20, $3f
    db $41, $7f, $40, $7f, $40, $7f, $80, $ff, $80, $ff, $81, $ff, $87, $ff, $43, $7d
    db $ff, $00, $fe, $7f, $9d, $e3, $7f, $80, $ff, $20, $ff, $19, $ff, $15, $ff, $10
    db $ff, $22, $bf, $42, $fe, $31, $49, $ff, $86, $ff, $8e, $ff, $71, $71, $00, $00
    db $80, $80, $60, $e0, $18, $f8, $04, $fc, $82, $fe, $42, $7e, $41, $7f, $21, $3f
    db $21, $3f, $21, $3f, $42, $7e, $42, $7e, $cc, $fc, $f8, $f8, $e0, $e0, $80, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $05, $07, $05, $07, $09, $0f
    db $11, $1f, $21, $3f, $c2, $fe, $02, $fe, $04, $fc, $18, $f8, $60, $e0, $80, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $fc, $fc, $02, $fe, $04, $fc, $18, $f8, $e0, $e0

    jr z, @+$41

    ld c, [hl]
    ld a, a
    sub e
    rst $38
    cp $ff
    inc b
    rlca
    dec c
    ld c, $3b
    inc [hl]
    ld a, e
    ld h, h
    db $fd
    add [hl]
    db $fc
    rst $38
    ld [$1d0f], sp
    inc de
    ccf
    daa
    ld l, d
    ld e, e
    push af
    or [hl]
    rst $00
    call nz, Call_000_090f
    rla
    dec de
    dec e
    dec d
    add hl, hl
    add hl, sp
    inc sp
    inc sp
    ld h, e
    ld h, e
    ld b, e
    ld b, e
    inc bc
    inc bc
    rlca
    rlca
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    nop

jr_00a_49f9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $18
    or b
    ld [hl], b
    ldh [$ffe0], a
    ld h, b
    ldh [$ffb0], a
    ld [hl], b
    ret nc

    jr nc, jr_00a_49f9

    inc e
    and $1e
    rst $18
    ld sp, $3fff
    or b
    ld [hl], b
    ld l, b
    ld hl, sp-$5c
    db $fc
    inc l
    db $f4
    sbc $3a
    sub $b6
    pop de
    or c
    ldh a, [$ffd0]
    add sp, -$28
    ld hl, sp-$18
    ld hl, sp-$18
    ret c

    ret c

    ret z

    ret z

    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    and l
    rst $38
    ld e, d
    and l
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    nop
    ccf
    ret nz

    add [hl]
    ld sp, hl
    rst $38
    jp nz, $c3ff

    sbc $e2
    jp c, $3ae6

    ld h, $3a
    ld h, $2c
    inc [hl]
    inc e
    inc d
    inc e
    inc d
    inc e
    inc d
    inc c
    inc c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_00a_4ac1

    ld c, [hl]
    ld a, a
    sub e
    rst $38
    cp $ff
    inc b
    rlca
    dec c
    ld c, $1b
    inc d
    dec de
    inc d
    dec c
    ld a, [bc]
    inc b
    rlca
    ld a, [bc]
    dec c
    rrca
    ld [$131d], sp
    cpl
    scf
    add hl, sp
    add hl, hl
    inc sp
    inc sp
    inc bc
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
    nop
    nop
    nop
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

jr_00a_4ac1:
    nop
    ld a, a
    add b
    rst $38
    rst $38
    and l
    rst $38
    ld e, d
    and l
    rst $38
    nop
    rst $38

jr_00a_4acd:
    add hl, bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    nop
    ccf
    ret nz

    add [hl]
    ld sp, hl
    rst $38
    db $e3
    ld a, a
    db $e3
    ld l, a
    di
    db $eb
    rst $30
    ei

jr_00a_4ae1:
    rst $30
    ei
    rst $30
    db $fd
    push af
    db $dd
    push de
    db $dd
    push de
    sbc h
    sub h
    sub h
    sbc h
    inc d
    inc e
    inc d
    inc e
    inc d
    inc e
    ld [$0808], sp

jr_00a_4af7:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    add sp, $18
    or b

jr_00a_4b03:
    ld [hl], b
    ldh [$ffe0], a
    ld h, b
    ldh [$ffa0], a
    ld h, b
    ret nc

jr_00a_4b0b:
    jr nc, @-$16

    jr jr_00a_4af7

    jr jr_00a_4ae1

    jr nc, jr_00a_4b03

    jr nc, jr_00a_4acd

    ld a, b
    ld a, h
    cp h
    ret c

    jr c, jr_00a_4b0b

    db $10
    add sp, -$68
    ld e, b
    ld l, b
    jr c, jr_00a_4b5a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_4b5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [de]
    rst $38
    dec [hl]
    ccf
    ldh [$fff8], a
    add a
    ld h, a
    rra
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, [hl]
    cp a
    ld a, a
    cp a
    ld a, a
    ld e, a
    ccf
    ld b, a
    ccf
    jr c, @+$09

    rlca
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$58
    ld b, b
    ldh a, [$ffc0]
    inc a
    ldh a, [$ff0c]
    ld hl, sp+$06
    ld hl, sp+$06
    db $fc
    inc bc
    db $fc
    inc hl
    db $fc
    and e
    db $fc
    and e
    ld hl, sp+$06
    ldh a, [$ff0e]
    ret nz

    inc a
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    add hl, de
    ld e, $3c
    scf
    ld a, a
    ld h, a
    ld a, a
    ld a, h
    rlca
    rlca
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld bc, $0305
    ld a, e
    inc bc
    inc hl
    ld b, $16
    ld c, $0e
    ld c, $0f
    dec b
    rlca
    inc bc
    rlca
    ld bc, $0009
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0101
    nop
    ld bc, $0200
    ld bc, $0105
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    ld bc, $0200
    nop
    inc b
    nop
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $8001
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ldh [$ffe0], a
    ld h, b
    ldh [$ffa0], a
    ldh [$ff60], a
    ldh [$ffe0], a
    ldh [$ffc0], a
    ret nz

    ret nz

    ret nz

    nop
    ld hl, sp-$80
    sub b
    nop
    jr nz, jr_00a_4c7d

jr_00a_4c7d:
    ld b, b
    nop
    add b
    nop
    inc bc
    inc bc
    inc c
    inc c
    db $10
    db $10
    jr nz, @+$22

    ld b, c
    inc hl
    ld b, a
    ld b, a
    add a
    ld b, a
    adc a
    ld b, a
    adc a
    ld b, a
    add a
    inc hl
    ld b, a
    jr nz, jr_00a_4cd9

    db $10
    jr nz, jr_00a_4ca7

    db $10
    inc bc
    inc c
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    inc c

jr_00a_4ca7:
    db $10
    ld de, $1722
    jr nz, @+$28

    ld c, c
    inc l
    ld b, e
    inc l
    ld b, e
    ld h, $49
    rla
    jr nz, jr_00a_4cc8

    ld [hl+], a
    inc c
    db $10
    inc bc
    inc c
    nop
    inc bc
    nop
    nop
    ld hl, sp-$58
    ldh a, [$ff50]
    ld hl, sp+$00
    inc a
    ret nz

jr_00a_4cc8:
    call z, $f6f0
    ld hl, sp-$0e
    db $fc
    ld a, [$fadc]
    ld e, h
    ld a, [$f45c]
    ld hl, sp-$34
    ldh a, [$ff30]

jr_00a_4cd9:
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld e, $24
    ccf
    ld b, a
    ld a, a
    ld a, b
    ld a, a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [de]
    push af
    ccf
    daa
    ld hl, sp-$61
    ldh [$ff3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld a, b
    nop
    rra
    nop
    rlca
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    ret nz

    nop
    jr nz, jr_00a_4d29

jr_00a_4d29:
    stop
    jr nz, jr_00a_4d2d

jr_00a_4d2d:
    ld b, b
    nop
    and b
    nop
    db $10
    ret nz

    ret z

    ret nz

    call nz, $d8c0
    add b
    ldh [rP1], a

jr_00a_4d3b:
    add b
    nop
    nop

jr_00a_4d3e:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_00a_4d3e

    inc a
    db $fc
    inc e
    db $fc
    ld [hl], h
    db $fc
    db $f4
    call c, $dcf4
    ld hl, sp+$38
    adc b
    ld hl, sp-$38
    jr c, jr_00a_4d3b

    inc e
    sub h
    ld l, h
    call nc, $f42c
    inc c
    ld hl, sp+$08
    add sp, $18
    sub b
    ld [hl], b
    ldh [$ffe0], a
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
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
    add hl, sp
    ld a, $26
    ccf
    rra
    rra
    inc d
    dec de
    cpl
    jr nc, jr_00a_4dca

    jr nz, jr_00a_4dbc

    jr nc, jr_00a_4da6

    jr @+$0b

    ld c, $0b
    inc c
    inc d
    rra
    inc de
    rra
    ld de, $0e1f
    ld c, $00
    nop
    nop
    nop
    add hl, sp
    ld a, $26
    ccf
    rra
    rra

jr_00a_4da6:
    dec [hl]
    ld a, [hl-]
    cpl
    jr nc, jr_00a_4dda

    jr nc, jr_00a_4ddc

    jr nc, jr_00a_4dc6

    jr jr_00a_4dc4

    inc e
    dec bc
    inc c
    inc b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop

jr_00a_4dbc:
    nop
    nop
    nop
    nop
    ld [$0c0f], sp
    rrca

jr_00a_4dc4:
    rla
    rra

jr_00a_4dc6:
    inc e
    rra
    dec bc
    inc c

jr_00a_4dca:
    dec bc
    inc c
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_00a_4dda:
    nop
    nop

jr_00a_4ddc:
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    dec a
    jp Jump_000_00ff


    rst $38
    ld [hl-], a
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    dec a
    jp $fffe


    ld d, c
    rst $18
    adc [hl]
    adc [hl]
    nop
    nop

Jump_00a_4e00:
    ld de, $2c1e
    ccf
    scf
    ccf

Jump_00a_4e06:
    inc c
    rrca
    add hl, bc
    ld c, $0b
    inc c
    rla
    jr jr_00a_4e26

    jr jr_00a_4e28

    jr jr_00a_4e26

    inc e
    ld [$060f], sp
    rlca
    dec b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_4e26:
    inc bc
    inc bc

jr_00a_4e28:
    dec bc
    inc c
    rlca
    ld [$101f], sp
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rlca
    ld [$0c0b], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $18
    sub b
    ld [hl], b
    ldh [$ffe0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b

jr_00a_4e53:
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_4e5d:
    nop
    nop
    nop
    db $e4
    inc e
    ret z

    jr c, jr_00a_4e5d

    ld hl, sp+$58
    cp b
    add sp, $18
    add sp, $18
    add sp, $18
    ret nc

    jr nc, @-$2e

    jr nc, jr_00a_4e53

    jr nz, @-$5e

    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    ret nz

    xor d
    rst $38
    push de
    dec sp
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $30
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $f6
    dec c
    inc bc
    rst $38
    db $fc
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    ret nz

    xor d
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $eb
    ld [hl], $ff
    inc d
    rst $38
    nop
    rst $28
    inc e
    rst $38
    inc e
    cp $1d
    dec sp
    rst $18
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf

jr_00a_4ec3:
    ret nz

    xor d
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    push af
    dec de
    rst $38
    ld a, [bc]
    rst $38
    nop
    dec sp
    call nz, $eedf
    ld sp, $0031
    nop
    nop
    nop
    nop
    nop
    ret c

    jr c, jr_00a_4ec3

    ldh [$ff80], a
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
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
    add hl, bc
    ld c, $17
    jr @+$11

    db $10
    cpl
    jr nc, @+$41

    jr nz, @+$41

    jr nz, @+$31

    jr nc, jr_00a_4f24

    db $10
    rla
    jr jr_00a_4f22

    ld c, $03
    inc bc
    nop
    nop
    nop
    nop
    jr jr_00a_4f3a

jr_00a_4f22:
    ld e, d
    ld h, [hl]

jr_00a_4f24:
    inc a
    ld b, d
    rst $38
    add c
    rst $38
    add c
    inc a
    ld b, d
    ld e, d
    ld h, [hl]
    jr @+$1a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_4f3a:
    nop
    nop
    nop
    nop
    nop
    nop

    db $90, $4f, $99, $4f, $a2, $4f, $ab, $4f, $b4, $4f, $bd, $4f

    add $4f

    db $cb, $4f, $d0, $4f, $d5, $4f, $de, $4f, $e7, $4f, $f0, $4f, $f9, $4f, $02, $50
    db $0b, $50, $14, $50, $1d, $50, $26, $50, $37, $50, $50, $50, $69, $50, $82, $50
    db $9b, $50, $b4, $50, $cd, $50, $e6, $50, $ff, $50, $18, $51, $31, $51, $4a, $51
    db $53, $51, $5c, $51, $65, $51, $7e, $51, $97, $51

    or b
    ld d, c
    ret


    ld d, c
    ldh [c], a
    ld d, c
    ei
    ld d, c

    db $02, $f8, $f8, $46, $00, $f8, $00, $30, $01, $02, $f8, $f8, $4c, $00, $f8, $00
    db $12, $01, $02, $f8, $f8, $4a, $00, $f8, $00, $32, $01, $02, $f8, $f8, $48, $00
    db $f8, $00, $10, $01, $02, $f8, $f8, $08, $00, $f8, $00, $0a, $01, $02, $f0, $f8
    db $08, $00, $f0, $00, $0a, $01

    ld bc, $fcf8
    ld d, $01

    db $01, $f8, $f8, $16, $21, $01, $f8, $00, $16, $01, $02, $f8, $00, $0c, $00, $f8
    db $f8, $04, $01, $02, $f8, $f8, $0c, $20, $f8, $00, $04, $21, $02, $f8, $00, $0c
    db $40, $f8, $f8, $04, $41, $02, $f8, $f8, $0c, $60, $f8, $00, $04, $61, $02, $f8
    db $f8, $4c, $00, $f8, $00, $14, $01, $02, $f8, $f8, $4c, $00, $f8, $00, $3a, $01
    db $02, $f8, $f8, $4c, $00, $f8, $00, $10, $01, $02, $f8, $00, $4c, $20, $f8, $f8
    db $26, $21, $02, $f8, $f8, $28, $00, $f8, $00, $2e, $01, $04, $00, $00, $54, $00
    db $00, $f8, $44, $00, $f0, $00, $52, $00, $f0, $f8, $42, $01, $06, $01, $f4, $3c
    db $20, $01, $04, $3c, $00, $f1, $fc, $1a, $00, $01, $fc, $1c, $00, $f1, $f4, $2a
    db $00, $f1, $04, $18, $01, $06, $f1, $04, $22, $00, $f1, $fc, $1a, $00, $f1, $f4
    db $20, $00, $01, $f4, $3c, $20, $01, $04, $3c, $00, $01, $fc, $1c, $01, $06, $01
    db $f4, $56, $20, $01, $04, $40, $00, $f1, $fc, $1a, $00, $01, $fc, $1c, $00, $f1
    db $04, $18, $00, $f1, $f4, $2a, $01, $06, $f0, $04, $22, $00, $f0, $fc, $1a, $00
    db $00, $fc, $4e, $00, $00, $04, $1e, $00, $00, $f4, $1e, $20, $f0, $f4, $20, $01
    db $06, $f1, $04, $38, $00, $f1, $fc, $1a, $00, $01, $fc, $1c, $00, $01, $04, $3c
    db $00, $01, $f4, $3c, $20, $f1, $f4, $2a, $01, $06, $01, $f4, $3c, $20, $01, $04
    db $3c, $00, $f1, $fc, $1a, $00, $01, $fc, $1c, $00, $f1, $f4, $2a, $00, $f1, $04
    db $24, $01, $06, $01, $04, $1e, $00, $f1, $fc, $1a, $00, $01, $fc, $1c, $00, $f1
    db $f4, $2a, $00, $01, $f4, $2c, $00, $f1, $04, $18, $01, $06, $00, $04, $1e, $00
    db $f0, $04, $22, $00, $f0, $fc, $1a, $00, $00, $fc, $1c, $00, $f0, $f4, $20, $00
    db $00, $f4, $2c, $01, $06, $01, $04, $1e, $00, $f1, $fc, $1a, $00, $01, $fc, $1c
    db $00, $f1, $f4, $2a, $00, $01, $f4, $2c, $00, $f1, $04, $24, $01, $06, $01, $f4
    db $50, $00, $01, $fc, $3e, $00, $01, $04, $1e, $00, $f1, $fc, $1a, $00, $f1, $f4
    db $2a, $00, $f1, $04, $18, $01, $06, $01, $04, $50, $20, $01, $f4, $1e, $20, $01
    db $fc, $3e, $20, $f1, $fc, $1a, $00, $f1, $f4, $2a, $00, $f1, $04, $18, $01, $02
    db $f8, $f8, $34, $00, $f8, $00, $36, $01, $02, $f8, $f8, $06, $00, $f8, $00, $0e
    db $01, $02, $f8, $f8, $00, $00, $f8, $00, $02, $01, $06, $01, $f2, $3c, $20, $01
    db $02, $3c, $00, $f1, $fa, $1a, $00, $01, $fa, $1c, $00, $f1, $f2, $2a, $00, $f1
    db $02, $24, $01, $06, $01, $f1, $3c, $20, $01, $01, $3c, $00, $f1, $f9, $1a, $00
    db $01, $f9, $1c, $00, $f1, $f1, $2a, $00, $f1, $01, $24, $01, $06, $01, $f1, $3c
    db $20, $01, $01, $3c, $00, $f1, $f9, $1a, $00, $01, $f9, $1c, $00, $f1, $f1, $2a
    db $00, $f1, $01, $18, $01

    ld b, $01
    db $f4
    ld d, b
    nop
    ld bc, $3efc
    nop
    ld bc, $1e04
    nop
    pop af
    db $fc
    ld a, [de]
    nop
    pop af
    db $f4
    ld a, [hl+]
    nop
    pop af
    inc b
    jr c, @+$03

    ld b, $01
    inc b
    ld d, b
    jr nz, jr_00a_51d0

    db $f4

jr_00a_51d0:
    ld e, $20
    ld bc, $3efc
    jr nz, @-$0d

    db $fc
    ld a, [de]
    nop
    pop af
    db $f4
    ld a, [hl+]
    nop
    pop af
    inc b
    jr c, @+$03

    ld b, $01
    db $f4
    ld d, b
    nop
    ld bc, $3efc
    nop
    ld bc, $1e04
    nop
    pop af
    db $fc
    ld a, [de]
    nop
    pop af
    db $f4
    ld a, [hl+]
    nop
    pop af
    inc b
    inc h

jr_00a_51fa:
    ld bc, $0106
    inc b
    ld d, b
    jr nz, jr_00a_5202

    db $f4

jr_00a_5202:
    ld e, $20
    ld bc, $3efc
    jr nz, jr_00a_51fa

    db $fc
    ld a, [de]
    nop
    pop af
    db $f4
    ld a, [hl+]
    nop
    pop af
    inc b
    inc h
    db $01

    db $1c, $52, $35, $52, $4a, $52, $63, $52, $06, $f8, $eb, $42, $00, $00, $f3, $40
    db $00, $f0, $f3, $3e, $00, $00, $fb, $3c, $00, $f0, $fb, $3a, $00, $f8, $03, $38
    db $01, $05, $f8, $e2, $54, $00, $f8, $ea, $52, $00, $f8, $f2, $50, $00, $f8, $fa
    db $4e, $00, $f8, $02, $44, $01, $06, $f8, $eb, $42, $40, $f0, $f3, $40, $40, $00
    db $f3, $3e, $40, $f0, $fb, $3c, $40, $00, $fb, $3a, $40, $f8, $03, $38, $01, $05
    db $f8, $e2, $54, $40, $f8, $ea, $52, $40, $f8, $f2, $50, $40, $f8, $fa, $4e, $40
    db $f8, $02, $44, $01, $c0, $52, $d1, $52, $e2, $52, $f3, $52, $04, $53

    dec d
    ld d, e

    db $26, $53

    scf
    ld d, e

    db $48, $53, $59, $53, $6a, $53, $7b, $53, $8c, $53

    sbc l
    ld d, e

    db $ae, $53, $bf, $53, $d0, $53, $e1, $53, $f2, $53, $03, $54, $14, $54, $25, $54
    db $36, $54

    ld b, a
    ld d, h

    db $58, $54

    ld l, c
    ld d, h
    halt
    ld d, h

    db $83, $54

    sub b
    ld d, h
    and c
    ld d, h
    jp nz, $e354

    ld d, h
    inc b
    ld d, l
    dec d
    ld d, l
    ld h, $55
    scf
    ld d, l

    db $04, $f8, $f8, $46, $00, $e8, $f5, $54, $00, $e8, $fd, $54, $20, $f8, $00, $30
    db $01, $04, $f8, $00, $44, $00, $f8, $f8, $48, $00, $e8, $f6, $54, $00, $e8, $fe
    db $54, $21, $04, $f8, $f8, $4a, $00, $e9, $f1, $50, $00, $e9, $f9, $52, $00, $f8
    db $00, $32, $01, $04, $f8, $00, $12, $00, $f8, $f8, $4c, $00, $e9, $ed, $50, $00
    db $e9, $f5, $52, $01, $04, $e8, $ef, $50, $00, $e8, $f7, $52, $00, $f8, $f8, $06
    db $00, $f8, $00, $0e, $01

    inc b
    ld hl, sp-$08
    ld c, d
    nop
    jp hl


jr_00a_531b:
    or $54
    nop
    jp hl


    cp $54
    jr nz, jr_00a_531b

    nop
    ld [hl-], a
    db $01

    db $04, $f8, $00, $3a, $00, $f8, $f8, $38, $00, $e8, $fc, $52, $20, $e8, $04, $50
    db $21

    inc b
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    ld c, $00
    db $eb
    ld [$405e], a
    ld [$5ef2], a
    db $21

    db $04, $f8, $f8, $08, $00, $ef, $ef, $50, $00, $ef, $f7, $52, $00, $f8, $00, $0a
    db $01, $04, $f8, $00, $4e, $00, $f8, $f8, $3e, $00, $f9, $10, $5a, $00, $fd, $18
    db $5c, $01, $04, $f8, $f8, $3e, $00, $f8, $00, $4e, $00, $f8, $0b, $5a, $00, $fc
    db $13, $5c, $01, $04, $f8, $00, $3c, $00, $f8, $f8, $3e, $00, $ea, $07, $5e, $00
    db $eb, $0f, $5e, $61, $04, $f8, $00, $44, $00, $f8, $f8, $48, $00, $e8, $f6, $56
    db $00, $e8, $fe, $56, $21

    inc b
    ld hl, sp-$08
    ld [$0400], sp
    add sp, $5e
    nop
    dec b
    ldh a, [$ff5e]
    ld h, b
    ld hl, sp+$00
    ld a, [bc]
    db $01

    db $04, $f8, $00, $4e, $00, $f8, $f8, $3e, $00, $05, $08, $5e, $40, $04, $10, $5e
    db $21, $04, $f8, $00, $4e, $00, $f8, $f8, $3e, $00, $f7, $07, $5a, $00, $f7, $0f
    db $5a, $21, $04, $f8, $00, $3c, $00, $f8, $f8, $3e, $00, $eb, $06, $5e, $00, $ec
    db $0e, $5e, $61, $04, $f8, $00, $3c, $00, $f8, $f8, $3e, $00, $e9, $fc, $58, $00
    db $e9, $04, $58, $21, $04, $f8, $00, $36, $00, $f8, $f8, $34, $00, $e9, $fd, $58
    db $00, $e9, $05, $58, $21, $04, $f8, $00, $36, $00, $f8, $f8, $34, $00, $e4, $fc
    db $56, $00, $e4, $04, $56, $21, $04, $f8, $00, $36, $00, $f8, $f8, $34, $00, $e8
    db $fc, $54, $00, $e8, $04, $54, $21, $04, $f8, $00, $4e, $00, $f8, $f8, $3e, $00
    db $fa, $16, $40, $20, $fa, $0e, $42, $21, $04, $f8, $00, $4e, $00, $f8, $f8, $3e
    db $00, $fa, $10, $40, $20, $fa, $08, $42, $21

    inc b
    ld hl, sp-$08
    jr z, jr_00a_544c

jr_00a_544c:
    ld hl, sp+$00
    ld l, $00
    inc b
    dec b
    ld e, [hl]
    ld b, b
    inc bc
    dec c
    ld e, [hl]
    db $21

    db $04, $f1, $f8, $08, $00, $e8, $ef, $50, $00, $e8, $f7, $52, $00, $f1, $00, $0a
    db $01

    inc bc
    ld hl, sp-$04
    ld d, $00
    ld [$52fa], a
    nop
    ld [$50f2], a
    ld bc, $f803
    ld hl, sp+$16
    jr nz, @-$14

    ld a, [$2052]
    ld [$5002], a
    db $21

    db $03, $f8, $00, $16, $00, $ea, $fe, $52, $00, $ea, $f6, $50, $01

    inc b
    ld hl, sp+$00
    inc d
    nop
    ld hl, sp-$08
    ld c, h
    nop
    add sp, -$0d
    ld d, h
    nop
    add sp, -$05
    ld d, h
    ld hl, $f108
    db $f4
    ld a, [hl+]
    nop
    ld bc, $2cf4
    nop
    pop af
    db $fc
    ld a, [de]
    nop
    ld bc, $1cfc
    nop
    pop af
    inc b
    inc h
    nop
    ld bc, $1e04
    nop
    db $e3
    db $f4
    ld d, d
    nop
    db $e3
    db $ec
    ld d, b
    ld bc, $f108
    db $f4
    ld a, [hl+]
    nop
    ld bc, $2cf4
    nop
    pop af
    db $fc
    ld a, [de]
    nop
    ld bc, $1cfc
    nop
    ld bc, $1e04
    nop
    pop af
    inc b
    jr jr_00a_54db

jr_00a_54db:
    ldh [c], a
    ldh a, [rHDMA4]
    nop
    ldh [c], a
    ld hl, sp+$54
    ld hl, $f008
    db $f4
    ld a, [hl+]
    nop
    nop
    db $f4
    inc l
    nop
    ldh a, [$fffc]
    ld a, [de]
    nop
    nop

jr_00a_54f1:
    db $fc
    inc e
    nop
    nop
    inc b
    ld e, $00
    pop hl
    ldh a, [rHDMA4]
    nop
    pop hl
    ld hl, sp+$54
    jr nz, jr_00a_54f1

    inc b
    ld [hl+], a
    ld bc, $f804
    ld hl, sp-$7a
    nop
    ld b, $f4
    ld e, [hl]
    ld h, b
    dec b
    db $ec
    ld e, [hl]
    nop
    ld hl, sp+$00
    sub [hl]
    ld bc, $f804
    ld hl, sp-$78
    nop
    inc b
    db $ec
    ld e, [hl]
    nop
    dec b
    db $f4
    ld e, [hl]
    ld h, b
    ld hl, sp+$00
    sbc b
    ld bc, $f804
    ld hl, sp-$7a
    nop
    ld b, $f4
    ld e, [hl]
    ld h, b
    dec b
    db $ec
    ld e, [hl]
    nop
    ld hl, sp+$00
    adc d
    ld bc, $f804
    ld hl, sp-$78
    nop
    inc b
    db $ec
    ld e, [hl]
    nop
    dec b
    db $f4
    ld e, [hl]
    ld h, b
    ld hl, sp+$00
    sbc d
    ld bc, $555c
    ld h, l
    ld d, l
    ld l, [hl]
    ld d, l
    ld [hl], a
    ld d, l
    add b
    ld d, l
    adc c
    ld d, l
    sub d
    ld d, l
    sbc e
    ld d, l
    and h
    ld d, l
    xor l
    ld d, l
    ld [bc], a
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ld hl, sp+$00
    jr c, jr_00a_5566

    ld [bc], a

jr_00a_5566:
    ld hl, sp-$08
    ld a, $00
    ld hl, sp+$00
    inc a
    ld bc, $f802
    ld hl, sp+$42
    nop
    ld hl, sp+$00
    ld b, b
    ld bc, $f802
    ld hl, sp+$3e
    ld b, b
    ld hl, sp+$00
    inc a
    ld b, c
    ld [bc], a
    ld hl, sp+$00
    ld a, [hl-]
    ld h, b
    ld hl, sp-$08
    jr c, @+$63

    ld [bc], a
    ld hl, sp+$00
    ld a, $60
    ld hl, sp-$08
    inc a
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld b, d
    ld h, b
    ld hl, sp-$08
    ld b, b
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld a, $20
    ld hl, sp-$08
    inc a
    ld hl, $f802
    rst $30
    ld a, [hl-]
    nop
    ld hl, sp-$01
    jr c, jr_00a_55ae

    ld [bc], a

jr_00a_55ae:
    ld hl, sp-$07
    ld a, [hl-]
    nop
    ld hl, sp+$01
    jr c, @+$03

    call nz, $d155
    ld d, l
    sbc $55
    rst $20
    ld d, l
    db $ec
    ld d, l
    push af
    ld d, l
    ld a, [$0355]
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ld hl, sp+$00
    jr c, jr_00a_55cd

jr_00a_55cd:
    ld [$44f7], a
    ld b, c
    inc bc
    ld hl, sp-$08
    ld a, $00
    ld hl, sp+$00
    inc a
    nop
    jp hl


    ei
    ld b, h
    ld b, c
    ld [bc], a
    ld hl, sp-$08
    ld b, d
    nop
    ld hl, sp+$00
    ld b, b
    ld bc, $fb01
    or $44
    ld hl, $f002
    rst $38
    ld d, b
    ld b, b
    ldh a, [$fff7]
    ld c, [hl]
    ld b, c
    ld bc, $02f4
    ld b, h
    ld b, c
    ld [bc], a
    nop
    ld sp, hl
    ld d, b
    jr nz, jr_00a_5600

jr_00a_5600:
    ld bc, $214e
    dec bc
    ld d, [hl]
    inc d
    ld d, [hl]
    dec e
    ld d, [hl]
    ld [hl], $56
    ld [bc], a
    ld hl, sp-$08
    ld b, [hl]
    nop
    ld hl, sp+$00
    jr nc, jr_00a_5615

    ld [bc], a

jr_00a_5615:
    ld hl, sp-$08
    ld e, d
    nop
    ld hl, sp+$00
    ld e, h
    ld bc, $0006
    inc b
    ld d, d
    ld h, b
    ldh a, [rDIV]
    ld e, b
    ld h, b
    ldh a, [$fff4]
    ld d, d
    nop
    ldh a, [$fffc]
    ld d, h
    nop
    nop
    db $fc
    ld d, [hl]
    nop
    nop
    db $f4
    ld e, b
    ld bc, $0008
    ld [$004e], sp
    ldh a, [$ff08]
    ld b, h
    nop
    nop
    ld hl, sp+$3e
    nop
    ldh a, [$fff8]
    inc a
    nop
    nop
    ldh a, [$ff3a]
    nop
    ldh a, [$fff0]
    jr c, jr_00a_564f

jr_00a_564f:
    nop
    nop
    ld b, d
    nop
    ldh a, [rP1]
    ld b, b
    db $01

    db $65, $56, $6e, $56, $77, $56, $80, $56, $89, $56, $92, $56, $9b, $56, $02, $f8
    db $f8, $3a, $00, $f8, $00, $38, $01, $02, $f8, $f7, $3e, $00, $f8, $ff, $3c, $01
    db $02, $f8, $f9, $42, $00, $f8, $01, $40, $01, $02, $f8, $f9, $3e, $00, $f8, $01
    db $3c, $01, $02, $f8, $f9, $42, $00, $f8, $01, $40, $01, $02, $f8, $00, $44, $60
    db $f8, $f8, $44, $01, $02, $f8, $f8, $44, $40, $f8, $00, $44, $21

    or h
    ld d, [hl]
    cp l
    ld d, [hl]
    adc $56
    rst $18
    ld d, [hl]
    ldh a, [rRP]
    ld bc, $1257
    ld d, a
    inc hl
    ld d, a
    ld [bc], a
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ld hl, sp+$00
    jr c, jr_00a_56be

    inc b

jr_00a_56be:
    or $0a
    ld a, $00
    or $12
    inc a
    nop
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ld hl, sp+$00
    jr c, jr_00a_56cf

    inc b

jr_00a_56cf:
    ld hl, sp+$10
    ld b, d
    nop
    ld hl, sp+$18
    ld b, b
    nop
    ld hl, sp-$09
    ld a, [hl-]
    nop
    ld hl, sp-$01
    jr c, jr_00a_56e0

    inc b

jr_00a_56e0:
    ld hl, sp+$16
    ld b, d
    ld b, b
    ld hl, sp+$1e
    ld b, b
    ld b, b
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ld hl, sp+$00
    jr c, jr_00a_56f1

    inc b

jr_00a_56f1:
    ld hl, sp+$19
    ld b, d
    nop
    ld hl, sp+$21
    ld b, b
    nop
    ld hl, sp-$09

Jump_00a_56fb:
    ld a, [hl-]
    nop
    ld hl, sp-$01
    jr c, jr_00a_5702

    inc b

jr_00a_5702:
    ld hl, sp+$1c
    ld c, [hl]
    nop
    ld hl, sp+$24
    ld b, h
    nop
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ld hl, sp+$00
    jr c, jr_00a_5713

    inc b

jr_00a_5713:
    ld hl, sp+$20
    ld c, [hl]
    nop
    ld hl, sp+$28
    ld b, h
    nop
    ld hl, sp-$09
    ld a, [hl-]
    nop
    ld hl, sp-$01
    jr c, jr_00a_5724

    ld [bc], a

jr_00a_5724:
    ld hl, sp+$00
    ld d, b
    ld h, b
    ld hl, sp-$08
    ld d, b
    db $01

    db $3a, $57, $53, $57, $6c, $57, $85, $57, $9e, $57, $b7, $57, $d0, $57, $06, $fc
    db $04, $32, $00, $fc, $fc, $22, $00, $fc, $f4, $12, $00, $ec, $04, $30, $00, $ec
    db $fc, $20, $00, $ec, $f4, $10, $01, $06, $ee, $04, $30, $00, $ee, $f4, $14, $00
    db $fe, $f4, $16, $00, $fe, $04, $36, $00, $fe, $fc, $26, $00, $ee, $fc, $24, $01
    db $06, $ef, $03, $30, $00, $ef, $f3, $18, $00, $ff, $f3, $1a, $00, $ff, $03, $3a
    db $00, $ff, $fb, $2a, $00, $ef, $fb, $28, $01, $06, $ff, $03, $2e, $00, $ff, $fb
    db $1e, $00, $ef, $03, $2c, $00, $ef, $fb, $1c, $00, $ff, $f3, $38, $00, $ef, $f3
    db $34, $01, $06, $ff, $f5, $2e, $20, $ff, $fd, $1e, $20, $ef, $f5, $2c, $20, $ef
    db $fd, $1c, $20, $ff, $05, $38, $20, $ef, $05, $34, $21, $06, $ef, $03, $30, $00
    db $ef, $f3, $18, $00, $ff, $f3, $1a, $00, $ff, $03, $3a, $00, $ff, $fb, $2a, $00
    db $ef, $fb, $28, $01, $06, $ef, $05, $30, $00, $ef, $f5, $18, $00, $ff, $f5, $1a
    db $00, $ff, $05, $3a, $00, $ff, $fd, $2a, $00, $ef, $fd, $28, $01, $03, $58, $1c
    db $58, $35, $58, $4e, $58, $67, $58, $80, $58

    sbc c
    ld e, b
    or d
    ld e, b
    db $d3
    ld e, b
    db $f4
    ld e, b
    dec d
    ld e, c
    ld [hl], $59
    ld c, a
    ld e, c

    db $06, $ff, $04, $4a, $00, $ef, $04, $48, $00, $ff, $fc, $56, $00, $ff, $f4, $46
    db $00, $ef, $fc, $54, $00, $ef, $f4, $44, $01, $06, $ff, $fc, $2a, $00, $ff, $f4
    db $1a, $00, $ef, $f4, $18, $00, $ff, $04, $52, $00, $ef, $04, $50, $00, $ef, $fc
    db $40, $01, $06, $ff, $f9, $2a, $00, $ff, $f1, $1a, $00, $ef, $f1, $18, $00, $ff
    db $01, $52, $00, $ef, $01, $50, $00, $ef, $f9, $40, $01, $06, $ff, $f4, $1a, $00
    db $ef, $f4, $18, $00, $ef, $fc, $28, $00, $ff, $fc, $42, $00, $ff, $04, $3e, $00
    db $ef, $04, $3c, $01, $06, $fe, $04, $5e, $00, $fe, $fc, $4e, $00, $fe, $f4, $1a
    db $00, $ee, $f4, $18, $00, $ee, $fc, $28, $00, $ee, $04, $3c, $01, $06, $ff, $f6
    db $1a, $00, $ef, $f6, $18, $00, $ef, $fe, $28, $00, $ff, $fe, $42, $00, $ff, $06
    db $3e, $00, $ef, $06, $3c, $01

    ld b, $04
    dec b
    ld e, d
    nop
    inc b
    db $fd
    ld e, h
    nop
    inc b
    push af
    ld c, h
    nop
    db $f4
    db $f4
    jr jr_00a_58aa

jr_00a_58aa:
    db $f4
    db $fc
    jr z, jr_00a_58ae

jr_00a_58ae:
    db $f4
    inc b
    inc a
    ld bc, $ff08
    inc b
    ld c, d
    nop
    rst $28
    inc b
    ld c, b
    nop
    rst $38
    db $fc
    ld d, [hl]
    nop
    rst $38
    db $f4
    ld b, [hl]
    nop
    rst $28
    db $fc
    ld d, h
    nop
    rst $28
    db $f4
    ld b, h
    nop
    inc bc
    ld [de], a
    sub d
    nop

jr_00a_58cf:
    rst $30
    ld a, [bc]
    sbc [hl]
    ld b, c
    ld [$1305], sp
    sub h
    jr nz, jr_00a_58cf

    ld c, $94
    ld b, b
    rst $38
    inc b
    ld c, d
    nop
    rst $28
    inc b
    ld c, b
    nop
    rst $38
    db $fc
    ld d, [hl]
    nop
    rst $38
    db $f4
    ld b, [hl]
    nop
    rst $28
    db $fc
    ld d, h
    nop
    rst $28
    db $f4
    ld b, h
    ld bc, $ff08
    inc b
    ld c, d
    nop
    rst $28
    inc b
    ld c, b
    nop
    rst $38
    db $fc
    ld d, [hl]
    nop
    rst $38
    db $f4
    ld b, [hl]
    nop
    rst $28
    db $fc
    ld d, h
    nop
    rst $28
    db $f4
    ld b, h
    nop
    db $f4
    ld [de], a
    sub d
    ld b, b
    ld bc, $9e0a
    ld bc, $0308
    ld c, $94
    nop
    di
    inc d
    sub h
    ld b, b
    rst $38
    inc b
    ld c, d
    nop
    rst $28
    inc b
    ld c, b
    nop
    rst $38
    db $fc
    ld d, [hl]
    nop
    rst $38
    db $f4
    ld b, [hl]
    nop
    rst $28
    db $fc
    ld d, h
    nop
    rst $28
    db $f4
    ld b, h
    ld bc, $ff06
    push af
    ld a, [de]
    nop
    rst $28
    push af
    jr jr_00a_593f

jr_00a_593f:
    rst $28
    db $fd
    jr z, jr_00a_5943

jr_00a_5943:
    rst $38
    db $fd
    ld b, d
    nop
    rst $38
    dec b
    ld a, $00
    rst $28
    dec b
    inc a
    ld bc, $ff06
    di
    ld a, [de]
    nop
    rst $28
    di
    jr jr_00a_5958

jr_00a_5958:
    rst $28
    ei
    jr z, jr_00a_595c

jr_00a_595c:
    rst $38
    ei
    ld b, d
    nop
    rst $38
    inc bc
    ld a, $00
    rst $28
    inc bc
    inc a
    db $01

    db $76, $59, $8f, $59, $a8, $59, $c1, $59, $ca, $59

    db $d3
    ld e, c
    db $dc
    ld e, c

    db $06, $ef, $04, $30, $00, $ef, $f4, $18, $00, $ff, $f4, $1a, $00, $ff, $04, $3a
    db $00, $ff, $fc, $2a, $00, $ef, $fc, $28, $01, $06, $ff, $04, $3e, $00, $ff, $fc
    db $52, $00, $ff, $f4, $42, $00, $ef, $04, $3c, $00, $ef, $fc, $50, $00, $ef, $f4
    db $40, $01, $06, $ff, $05, $58, $00, $ff, $fd, $56, $00, $ff, $f5, $46, $00, $ef
    db $05, $48, $00, $ef, $fd, $54, $00, $ef, $f5, $44, $01, $02, $f8, $00, $5a, $00
    db $f8, $f8, $4a, $01, $02, $f8, $00, $5a, $50, $f8, $f8, $4a, $51

    ld [bc], a
    ld hl, sp+$00
    ld c, [hl]
    nop
    ld hl, sp-$08
    ld c, h
    ld bc, $f802
    nop
    ld c, [hl]
    ld d, b
    ld hl, sp-$08
    ld c, h
    ld d, c
    pop af
    ld e, c
    ld a, [bc]
    ld e, d
    daa
    ld e, d
    ld d, b
    ld e, d
    ld a, c
    ld e, d
    and d
    ld e, d
    ld b, $ef
    inc b
    jr nc, jr_00a_59f6

jr_00a_59f6:
    rst $28
    db $f4
    jr jr_00a_59fa

jr_00a_59fa:
    rst $38
    db $f4
    ld a, [de]
    nop
    rst $38
    inc b
    ld a, [hl-]
    nop
    rst $38
    db $fc
    ld a, [hl+]
    nop
    rst $28
    db $fc
    jr z, jr_00a_5a0b

    rlca

jr_00a_5a0b:
    rst $28
    db $f4
    jr jr_00a_5a0f

jr_00a_5a0f:
    rst $18
    inc b
    ld d, b
    nop
    rst $28
    inc b
    ld b, b
    nop
    rst $28
    db $fc
    ld a, $00
    rst $38
    db $f4
    ld a, [de]
    nop
    rst $38
    inc b
    ld a, [hl-]
    nop
    rst $38
    db $fc
    ld a, [hl+]
    ld bc, $e50a
    ld b, $58
    nop
    reti


    ld c, $5e
    nop
    reti


    ld b, $4e
    nop
    push hl
    cp $4a
    nop
    inc b
    inc b
    ld d, [hl]
    nop
    db $f4
    inc b
    ld b, [hl]
    nop
    inc b
    db $fc
    ld d, h
    nop
    inc b
    db $f4
    ld b, h
    nop
    db $f4
    db $fc
    ld d, d
    nop
    db $f4
    db $f4
    ld b, d
    ld bc, $e50a
    ld b, $48
    nop
    jp c, $5e0e

    nop
    jp c, Jump_00a_4e06

    nop
    push hl
    cp $5c
    nop
    dec b
    inc b
    ld d, [hl]
    nop
    push af
    inc b
    ld b, [hl]
    nop
    dec b
    db $fc
    ld d, h
    nop
    dec b
    db $f4
    ld b, h
    nop
    push af
    db $fc
    ld d, d
    nop
    push af
    db $f4
    ld b, d
    ld bc, $060a
    db $fc
    inc a
    nop
    and $fe
    ld e, d
    nop
    ret c

    ld c, $5e
    nop
    ret c

    ld b, $4e
    nop
    ld b, $04
    ld d, [hl]

jr_00a_5a8d:
    nop
    or $04
    ld b, [hl]
    nop
    ld b, $f4
    ld b, h
    nop
    or $fc
    ld d, d
    nop
    or $f4
    ld b, d
    nop
    and $06
    ld e, d
    ld hl, $e50a
    ld b, $5c
    jr nz, jr_00a_5a8d

    cp $4c
    nop
    ret c

    ld c, $5e
    nop
    ret c

    ld b, $4e
    nop
    dec b
    inc b
    ld d, [hl]
    nop
    push af
    inc b
    ld b, [hl]
    nop
    dec b
    db $fc
    ld d, h
    nop
    dec b
    db $f4
    ld b, h
    nop
    push af
    db $fc
    ld d, d
    nop
    push af
    db $f4
    ld b, d
    ld bc, $5ae1
    ld [bc], a
    ld e, e
    inc hl
    ld e, e
    ld b, h
    ld e, e
    ld h, l
    ld e, e
    add [hl]
    ld e, e
    and a
    ld e, e
    ret z

    ld e, e
    jp hl


    ld e, e
    ld a, [bc]
    ld e, h
    dec hl
    ld e, h
    ld [$00e6], sp
    ld c, h
    nop
    and $f8
    inc a
    nop
    db $fd
    db $f4
    ld d, [hl]
    nop
    db $ed
    db $f4
    ld d, h
    nop
    db $fd
    inc b
    ld d, d
    nop
    db $fd
    db $fc
    ld b, d
    nop
    db $ed
    inc b
    ld d, b
    nop
    db $ed
    db $fc
    ld b, b
    ld bc, $e508
    nop
    ld c, h
    nop
    push hl
    ld hl, sp+$3c
    nop
    db $fd
    db $fc
    ld e, d
    nop
    db $fd
    db $f4
    ld c, d
    nop
    db $ed
    db $fc
    ld e, b
    nop
    db $ed
    db $f4
    ld c, b
    nop
    db $fd
    inc b
    ld b, [hl]
    nop
    db $ed
    inc b
    ld b, h
    ld bc, $e608
    nop
    ld c, [hl]
    nop
    and $f8
    ld a, $00
    push af
    db $fc
    ld e, d
    ld b, b
    push af
    db $f4
    ld c, d
    ld b, b
    dec b
    db $fc
    ld e, b
    ld b, b
    dec b
    db $f4
    ld c, b
    ld b, b
    push af
    inc b
    ld b, [hl]
    ld b, b
    dec b
    inc b
    ld b, h
    ld b, c
    ld [$00e5], sp
    ld c, [hl]
    nop
    push hl
    ld hl, sp+$3e
    nop
    push af
    db $f4
    ld d, [hl]
    ld b, b
    dec b
    db $f4
    ld d, h
    ld b, b
    push af
    inc b
    ld d, d
    ld b, b
    push af
    db $fc
    ld b, d
    ld b, b
    dec b
    inc b
    ld d, b
    ld b, b
    dec b
    db $fc
    ld b, b
    ld b, c
    ld [$00e6], sp
    ld c, h
    nop
    and $f8
    inc a
    nop
    push af
    inc b
    ld d, [hl]
    ld h, b
    dec b
    inc b
    ld d, h
    ld h, b
    push af
    db $f4
    ld d, d
    ld h, b
    push af
    db $fc
    ld b, d
    ld h, b
    dec b
    db $f4
    ld d, b
    ld h, b
    dec b
    db $fc
    ld b, b
    ld h, c
    ld [$00e5], sp
    ld c, h
    nop
    push hl
    ld hl, sp+$3c
    nop
    push af
    db $fc
    ld e, d
    ld h, b
    push af
    inc b
    ld c, d
    ld h, b
    dec b
    db $fc
    ld e, b
    ld h, b
    dec b
    inc b
    ld c, b
    ld h, b
    push af
    db $f4
    ld b, [hl]
    ld h, b
    dec b
    db $f4
    ld b, h

jr_00a_5ba6:
    ld h, c
    ld [$00e6], sp

jr_00a_5baa:
    ld c, [hl]
    nop
    and $f8
    ld a, $00
    db $fd
    db $fc

jr_00a_5bb2:
    ld e, d
    jr nz, jr_00a_5bb2

    inc b
    ld c, d
    jr nz, jr_00a_5ba6

    db $fc
    ld e, b
    jr nz, jr_00a_5baa

    inc b

jr_00a_5bbe:
    ld c, b
    jr nz, jr_00a_5bbe

    db $f4
    ld b, [hl]

jr_00a_5bc3:
    jr nz, jr_00a_5bb2

    db $f4
    ld b, h
    ld hl, $e508
    nop
    ld c, [hl]
    nop
    push hl
    ld hl, sp+$3e
    nop
    db $fd
    inc b

jr_00a_5bd3:
    ld d, [hl]
    jr nz, jr_00a_5bc3

    inc b

jr_00a_5bd7:
    ld d, h
    jr nz, jr_00a_5bd7

    db $f4

jr_00a_5bdb:
    ld d, d
    jr nz, jr_00a_5bdb

    db $fc
    ld b, d
    jr nz, @-$11

    db $f4
    ld d, b
    jr nz, jr_00a_5bd3

    db $fc
    ld b, b
    ld hl, $e508
    ei
    ld c, [hl]
    nop
    push hl
    di
    ld a, $00
    db $fd
    di
    ld d, [hl]
    nop
    db $ed
    di
    ld d, h
    nop
    db $fd
    inc bc
    ld d, d
    nop
    db $fd
    ei
    ld b, d
    nop
    db $ed
    inc bc
    ld d, b
    nop
    db $ed
    ei
    ld b, b
    ld bc, $e408
    db $fd
    ld c, [hl]
    nop
    db $e4
    push af
    ld a, $00
    db $fd
    push af
    ld d, [hl]
    nop
    db $ed
    push af
    ld d, h
    nop
    db $fd
    dec b
    ld d, d
    nop
    db $fd
    db $fd
    ld b, d
    nop
    db $ed
    dec b
    ld d, b
    nop
    db $ed
    db $fd
    ld b, b
    ld bc, $e908
    ld sp, hl
    ld c, [hl]
    nop
    jp hl


    pop af
    ld a, $00
    db $fd
    di
    ld d, [hl]
    nop
    db $ed
    di
    ld d, h
    nop
    db $fd
    inc bc
    ld d, d
    nop
    db $fd
    ei
    ld b, d
    nop
    db $ed
    inc bc
    ld d, b
    nop
    db $ed
    ei
    ld b, b
    ld bc, $5c68
    ld a, l
    ld e, h
    sbc d
    ld e, h
    xor a
    ld e, h
    cp b
    ld e, h
    pop bc
    ld e, h
    jp z, $d35c

    ld e, h
    call c, $e55c
    ld e, h
    xor $5c
    rst $30
    ld e, h
    inc c
    ld e, l
    ld hl, $055d
    cp $00
    ld b, [hl]
    nop
    xor $00
    ld b, h
    nop
    cp $f8
    ld d, d
    nop
    xor $f8
    ld d, b
    nop
    ld sp, hl
    ldh a, [rLCDC]
    ld bc, $ec07
    cp $5e
    ld b, b
    db $ec
    or $4e
    ld b, b
    db $fd
    inc bc
    ld e, d
    nop
    db $fd
    ei
    ld c, d
    nop
    db $ed
    inc bc
    ld e, b
    nop
    db $ed
    ei
    ld c, b
    nop
    rst $30
    di
    ld d, h
    ld bc, $ff05
    inc b
    ld e, d
    nop
    rst $38
    db $fc
    ld c, d
    nop
    rst $28
    inc b
    ld e, b
    nop
    rst $28
    db $fc
    ld c, b
    nop
    ld sp, hl
    db $f4
    ld d, h
    ld bc, $f802
    ld bc, $005c
    ld hl, sp-$07
    ld c, h
    ld bc, $f902
    ld bc, $005e
    ld sp, hl
    ld sp, hl
    ld c, [hl]

jr_00a_5cc0:
    ld bc, $f902
    nop
    inc a
    jr nz, jr_00a_5cc0

    ld hl, sp+$3c

jr_00a_5cc9:
    ld bc, $f902
    rst $30
    ld e, [hl]
    jr nz, jr_00a_5cc9

    rst $38

jr_00a_5cd1:
    ld c, [hl]
    ld hl, $f802
    rst $30
    ld e, h
    jr nz, jr_00a_5cd1

    rst $38
    ld c, h
    ld hl, $f702
    rst $30
    ld e, [hl]
    ld h, b
    rst $30
    rst $38
    ld c, [hl]
    ld h, c
    ld [bc], a
    rst $30
    nop
    inc a
    ld h, b
    rst $30
    ld hl, sp+$3c
    ld b, c
    ld [bc], a
    rst $30
    ld bc, $405e
    rst $30
    ld sp, hl
    ld c, [hl]
    ld b, c
    dec b
    rst $38
    inc bc
    ld e, d
    nop
    rst $38
    ei
    ld c, d
    nop
    rst $28
    inc bc
    ld e, b
    nop
    rst $28
    ei
    ld c, b
    nop
    ld sp, hl
    di
    ld d, h
    ld bc, $ff05
    dec b
    ld e, d
    nop
    rst $38
    db $fd
    ld c, d
    nop
    rst $28
    dec b
    ld e, b
    nop
    rst $28
    db $fd
    ld c, b
    nop
    ld sp, hl
    push af
    ld d, h
    ld bc, $fe05
    db $fc
    ld d, [hl]
    nop
    cp $04
    ld a, $00
    ld hl, sp-$0c
    ld b, d
    nop
    xor $04

jr_00a_5d30:
    ld e, b
    nop
    xor $fc
    ld c, b
    ld bc, $5d3a

jr_00a_5d38:
    ld d, e
    ld e, l
    ld b, $00
    db $fd
    ld c, [hl]
    jr nz, jr_00a_5d30

    db $fd
    ld c, h
    jr nz, jr_00a_5d44

jr_00a_5d44:
    dec b
    ld c, d
    jr nz, jr_00a_5d38

    dec b
    ld c, b
    jr nz, jr_00a_5d4c

jr_00a_5d4c:
    push af

jr_00a_5d4d:
    ld a, $20
    ldh a, [$fff5]

jr_00a_5d51:
    inc a
    ld hl, $0008
    db $eb
    ld d, [hl]
    jr nz, jr_00a_5d59

jr_00a_5d59:
    di
    ld b, [hl]
    jr nz, jr_00a_5d4d

jr_00a_5d5d:
    db $eb
    ld d, h
    jr nz, jr_00a_5d51

jr_00a_5d61:
    di
    ld b, h
    jr nz, jr_00a_5d65

jr_00a_5d65:
    ei
    ld d, d
    jr nz, jr_00a_5d69

jr_00a_5d69:
    inc bc
    ld b, d
    jr nz, jr_00a_5d5d

    ei
    ld d, b
    jr nz, jr_00a_5d61

    inc bc
    ld b, b
    ld hl, $5d7c
    sub l
    ld e, l
    xor [hl]
    ld e, l
    or e
    ld e, l
    ld b, $ff
    inc b
    ld b, [hl]
    nop
    rst $28
    inc b
    ld b, h
    nop
    rst $38
    db $fc
    ld d, d
    nop
    rst $38
    db $f4
    ld b, d
    nop
    rst $28
    db $fc
    ld d, b
    nop
    rst $28
    db $f4
    ld b, b
    ld bc, $ff06
    db $fc
    ld c, d
    nop
    rst $28
    db $fc
    ld c, b
    nop
    rst $38
    inc b
    ld d, h
    nop
    rst $28
    inc b
    ld a, $00
    rst $38
    db $f4
    ld c, [hl]
    nop
    rst $28
    db $f4
    ld c, h
    ld bc, $f801
    db $fc
    inc a
    ld bc, $f801
    db $fc
    inc a
    ld hl, $5dce
    rst $20
    ld e, l
    nop
    ld e, [hl]
    ld de, $225e
    ld e, [hl]
    inc sp
    ld e, [hl]
    ld b, h
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    adc b
    ld e, [hl]
    ld b, $fc
    inc b
    ld c, d
    nop
    db $ec
    inc b
    ld c, b
    nop
    db $fc
    db $fc
    ld d, [hl]
    nop
    db $fc
    db $f4
    ld b, [hl]
    nop
    db $ec
    db $fc
    ld d, h
    nop
    db $ec
    db $f4
    ld b, h
    ld bc, $fc06
    db $f4
    ld a, $00
    db $ec
    db $f4
    inc a
    nop
    db $fc
    inc b
    ld d, d
    nop
    db $fc
    db $fc
    ld b, d
    nop
    db $ec
    inc b
    ld d, b
    nop
    db $ec
    db $fc
    ld b, b
    ld bc, $0a04
    ei
    ld c, h
    nop
    ld hl, sp+$0b
    ld c, h
    nop
    ld hl, sp-$15
    ld c, h
    nop
    and $fb
    ld c, h
    ld bc, HeaderLogo
    add hl, bc
    ld c, h
    nop
    jp hl


    inc bc
    ld c, h
    nop
    rlca
    di
    ld c, h
    nop
    rst $28
    db $ed
    ld c, h
    ld bc, $0704
    inc bc
    ld c, h
    nop
    rst $28
    add hl, bc
    ld c, h
    nop
    ld bc, $4ced
    nop
    jp hl


    di
    ld c, h
    ld bc, $0a04
    ei
    ld c, [hl]
    nop
    ld hl, sp+$0b
    ld c, [hl]
    nop
    ld hl, sp-$15
    ld c, [hl]
    nop
    and $fb
    ld c, [hl]
    ld bc, HeaderLogo
    add hl, bc
    ld c, [hl]
    nop
    jp hl


    inc bc
    ld c, [hl]
    nop
    rlca
    di
    ld c, [hl]
    nop
    rst $28
    db $ed
    ld c, [hl]
    ld bc, $ef04
    add hl, bc
    ld c, [hl]
    nop
    rlca
    inc bc
    ld c, [hl]
    nop
    ld bc, $4eed
    nop
    jp hl


    di
    ld c, [hl]
    ld bc, $e604
    ei
    ld e, b
    nop
    ld [$58fb], sp
    nop
    ld hl, sp+$0b
    ld e, b
    nop
    ld hl, sp-$15
    ld e, b
    ld bc, $e904
    inc bc
    ld e, b
    nop
    ld bc, $5809
    nop
    rlca
    di
    ld e, b
    nop
    rst $28
    db $ed
    ld e, b
    ld bc, $ef04
    add hl, bc
    ld e, b
    nop
    rlca
    inc bc
    ld e, b
    nop
    ld bc, $58ed
    nop
    jp hl


    di
    ld e, b
    db $01

    db $ad, $5e, $c6, $5e, $df, $5e, $f8, $5e, $11, $5f, $2a, $5f, $43, $5f, $5c, $5f
    db $75, $5f, $8e, $5f, $06, $00, $04, $32, $00, $00, $fc, $22, $00, $00, $f4, $12
    db $00, $f0, $04, $30, $00, $f0, $fc, $20, $00, $f0, $f4, $10, $01, $06, $00, $04
    db $36, $00, $00, $fc, $26, $00, $00, $f4, $16, $00, $f0, $04, $34, $00, $f0, $fc
    db $24, $00, $f0, $f4, $14, $01, $06, $00, $f4, $12, $00, $f0, $f4, $10, $00, $00
    db $04, $3a, $00, $00, $fc, $2a, $00, $f0, $04, $38, $00, $f0, $fc, $28, $01, $06
    db $00, $04, $1a, $00, $f0, $04, $18, $00, $00, $fc, $2e, $00, $00, $f4, $1e, $00
    db $f0, $fc, $2c, $00, $f0, $f4, $1c, $01, $06, $00, $f4, $1a, $20, $f0, $f4, $18
    db $20, $00, $fc, $2e, $20, $00, $04, $1e, $20, $f0, $fc, $2c, $20, $f0, $04, $1c
    db $21, $06, $00, $03, $36, $00, $00, $fb, $26, $00, $00, $f3, $16, $00, $f0, $03
    db $34, $00, $f0, $fb, $24, $00, $f0, $f3, $14, $01, $06, $00, $05, $36, $00, $00
    db $fd, $26, $00, $00, $f5, $16, $00, $f0, $05, $34, $00, $f0, $fd, $24, $00, $f0
    db $f5, $14, $01, $06, $fd, $05, $32, $00, $fd, $fd, $22, $00, $fd, $f5, $12, $00
    db $ed, $05, $30, $00, $ed, $fd, $20, $00, $ed, $f5, $10, $01, $06, $ff, $04, $36
    db $00, $ff, $fc, $26, $00, $ff, $f4, $16, $00, $ef, $04, $34, $00, $ef, $fc, $24
    db $00, $ef, $f4, $14, $01, $06, $00, $f3, $12, $00, $f0, $f3, $10, $00, $00, $03
    db $3a, $00, $00, $fb, $2a, $00, $f0, $03, $38, $00, $f0, $fb, $28, $01, $c1, $5f
    db $da, $5f, $f3, $5f, $0c, $60, $25, $60, $3e, $60, $57, $60

    ld h, h
    ld h, b
    add l
    ld h, b
    and [hl]
    ld h, b
    rst $00
    ld h, b
    add sp, $60
    db $01
    ld h, c

    db $06, $00, $fc, $22, $00, $f0, $fc, $20, $00, $00, $04, $4a, $00, $f0, $04, $48
    db $00, $00, $f4, $12, $00, $f0, $f4, $10, $01, $06, $00, $f4, $12, $00, $f0, $f4
    db $10, $00, $00, $04, $52, $00, $00, $fc, $42, $00, $f0, $04, $50, $00, $f0, $fc
    db $40, $01, $06, $00, $f1, $12, $00, $f0, $f1, $10, $00, $00, $01, $52, $00, $00
    db $f9, $42, $00, $f0, $01, $50, $00, $f0, $f9, $40, $01, $06, $00, $04, $5e, $00
    db $00, $fc, $4e, $00, $00, $f4, $3e, $00, $f0, $04, $5c, $00, $f0, $fc, $4c, $00
    db $f0, $f4, $3c, $01, $06, $ff, $04, $5a, $00, $ff, $fc, $56, $00, $ff, $f4, $3e
    db $00, $ef, $04, $5c, $00, $ef, $fc, $4c, $00, $ef, $f4, $3c, $01, $06, $00, $06
    db $5e, $00, $00, $fe, $4e, $00, $00, $f6, $3e, $00, $f0, $06, $5c, $00, $f0, $fe
    db $4c, $00, $f0, $f6, $3c, $01, $03, $00, $04, $54, $00, $00, $fc, $44, $00, $00
    db $f4, $46, $01

    ld [$1102], sp
    sub d
    nop
    or $09
    sbc [hl]
    ld b, b
    nop
    db $fc
    ld [hl+], a
    nop
    ldh a, [$fffc]
    jr nz, jr_00a_6075

jr_00a_6075:
    nop
    inc b
    ld c, d
    nop
    ldh a, [rDIV]
    ld c, b
    nop
    nop
    db $f4
    ld [de], a

jr_00a_6080:
    nop
    ldh a, [$fff4]
    db $10
    ld bc, $0408
    ld [de], a
    sub h
    jr nz, jr_00a_6080

    dec c
    sub h
    ld b, b
    nop
    db $fc
    ld [hl+], a
    nop
    ldh a, [$fffc]
    jr nz, jr_00a_6096

jr_00a_6096:
    nop
    inc b
    ld c, d
    nop
    ldh a, [rDIV]
    ld c, b
    nop
    nop
    db $f4
    ld [de], a
    nop
    ldh a, [$fff4]
    db $10
    ld bc, $f308
    ld de, $4092
    nop
    add hl, bc
    sbc [hl]
    nop
    nop
    db $fc
    ld [hl+], a
    nop
    ldh a, [$fffc]
    jr nz, jr_00a_60b7

jr_00a_60b7:
    nop
    inc b
    ld c, d
    nop
    ldh a, [rDIV]
    ld c, b
    nop
    nop
    db $f4
    ld [de], a
    nop
    ldh a, [$fff4]
    db $10
    ld bc, $0208
    dec c
    sub h
    nop
    ldh a, [c]
    inc de
    sub h
    ld b, b
    nop
    db $fc
    ld [hl+], a
    nop
    ldh a, [$fffc]
    jr nz, jr_00a_60d8

jr_00a_60d8:
    nop
    inc b
    ld c, d
    nop
    ldh a, [rDIV]
    ld c, b
    nop
    nop
    db $f4
    ld [de], a
    nop
    ldh a, [$fff4]
    db $10
    ld bc, $0006
    inc bc
    ld e, [hl]
    nop
    nop
    ei
    ld c, [hl]
    nop
    nop
    di
    ld a, $00
    ldh a, [$ff03]
    ld e, h
    nop
    ldh a, [$fffb]
    ld c, h
    nop
    ldh a, [$fff3]
    inc a
    ld bc, $0006
    dec b
    ld e, [hl]
    nop
    nop
    db $fd
    ld c, [hl]
    nop
    nop
    push af
    ld a, $00
    ldh a, [rTIMA]
    ld e, h
    nop
    ldh a, [$fffd]
    ld c, h
    nop
    ldh a, [$fff5]
    inc a
    db $01

    db $30, $61, $49, $61, $62, $61, $7b, $61, $84, $61, $8d, $61, $96, $61, $9f, $61
    db $a8, $61, $b1, $61, $b6, $61, $06, $00, $04, $46, $00, $f0, $04, $44, $00, $00
    db $fc, $42, $00, $f0, $fc, $3c, $00, $00, $f4, $16, $00, $f0, $f4, $14, $01, $06
    db $00, $04, $52, $00, $f0, $04, $50, $00, $f0, $fc, $3e, $00, $00, $fc, $42, $00
    db $00, $f4, $16, $00, $f0, $f4, $14, $01, $06, $00, $04, $56, $00, $f0, $04, $54
    db $00, $00, $fc, $42, $00, $f0, $fc, $40, $00, $00, $f4, $16, $00, $f0, $f4, $14
    db $01, $02, $f8, $00, $5c, $00, $f8, $f8, $4e, $01, $02, $f8, $00, $5c, $40, $f8
    db $f8, $4e, $41, $02, $f8, $00, $5a, $00, $f8, $f8, $4c, $01, $02, $f8, $00, $5a
    db $40, $f8, $f8, $4c, $41, $02, $f8, $00, $58, $00, $f8, $f8, $4a, $01, $02, $f8
    db $00, $58, $40, $f8, $f8, $4a, $41, $01, $f8, $fc, $48, $01, $01, $f8, $fc, $48
    db $41

    jp $dc61


    ld h, c
    ld sp, hl
    ld h, c
    ld a, [de]
    ld h, d
    ld b, $00
    push af
    ld d, $00
    ldh a, [$fff5]
    inc d
    nop
    nop
    dec b
    ld d, d
    nop
    nop
    db $fd
    ld b, d
    nop
    ldh a, [rTIMA]
    ld d, b
    nop
    ldh a, [$fffd]
    ld b, b
    ld bc, $f807
    inc c
    ld e, h
    nop
    nop
    db $f4
    ld d, $00
    ldh a, [$fff4]
    inc d
    nop
    nop
    inc b
    ld d, [hl]
    nop
    nop
    db $fc
    ld b, [hl]
    nop
    ldh a, [rDIV]
    ld d, h
    nop
    ldh a, [$fffc]
    ld b, h
    ld bc, $f808
    inc d
    ld c, h
    nop
    ld hl, sp+$0c
    inc a
    nop
    nop
    db $f4
    ld d, $00
    ldh a, [$fff4]
    inc d
    nop
    nop
    inc b
    ld e, d
    nop
    nop
    db $fc
    ld c, d
    nop
    ldh a, [rDIV]
    ld e, b
    nop
    ldh a, [$fffc]
    ld c, b
    ld bc, $f808
    inc d
    ld c, [hl]
    nop
    ld hl, sp+$0c
    ld a, $00
    nop
    db $f4
    ld d, $00
    ldh a, [$fff4]
    inc d
    nop
    nop
    inc b
    ld e, d
    nop
    nop
    db $fc
    ld c, d
    nop
    ldh a, [rDIV]
    ld e, b
    nop
    ldh a, [$fffc]
    ld c, b
    ld bc, $6245
    ld e, [hl]
    ld h, d
    ld [hl], a
    ld h, d
    sub b
    ld h, d
    xor c
    ld h, d
    ld b, $00
    inc b
    ld b, [hl]
    nop
    ldh a, [rDIV]
    ld b, h
    nop
    nop
    db $fc
    ld d, d
    nop
    nop
    db $f4
    ld b, d
    nop
    ldh a, [$fffc]
    ld d, b
    nop
    ldh a, [$fff4]
    ld b, b
    ld bc, $fd06
    db $fc
    ld e, d
    nop
    db $fd
    db $f4
    ld c, d
    nop
    db $ed
    db $fc
    ld e, b
    nop
    db $ed
    db $f4
    ld c, b
    nop
    db $fd
    inc b
    ld d, [hl]
    nop
    db $ed
    inc b
    ld d, h
    ld bc, $fd06
    inc b
    ld d, [hl]
    nop
    db $ed
    inc b
    ld d, h
    nop
    db $fd
    db $fc
    ld e, [hl]
    nop
    db $fd
    db $f4
    ld c, [hl]
    nop
    db $ed
    db $fc
    ld e, h
    nop
    db $ed
    db $f4
    ld c, h
    ld bc, $0006
    inc bc
    ld b, [hl]
    nop
    ldh a, [$ff03]
    ld b, h
    nop
    nop
    ei
    ld d, d
    nop
    nop
    di
    ld b, d
    nop
    ldh a, [$fffb]
    ld d, b
    nop
    ldh a, [$fff3]
    ld b, b
    ld bc, $0006
    dec b
    ld b, [hl]
    nop
    ldh a, [rTIMA]
    ld b, h
    nop
    nop
    db $fd
    ld d, d
    nop
    nop
    push af
    ld b, d
    nop
    ldh a, [$fffd]
    ld d, b
    nop
    ldh a, [$fff5]
    ld b, b
    ld bc, $62d4
    db $ed
    ld h, d
    ld b, $63
    rra
    ld h, e
    inc h
    ld h, e
    add hl, hl
    ld h, e
    ld [hl-], a
    ld h, e
    dec sp
    ld h, e
    ld b, h
    ld h, e
    ld b, $fe
    db $f4
    ld d, $00
    xor $f4
    inc d
    nop
    cp $04
    ld d, d
    nop
    cp $fc
    ld b, d
    nop
    xor $04
    ld d, b
    nop
    xor $fc
    ld b, b
    ld bc, $fe06
    db $f4
    ld d, $00
    xor $f4
    inc d
    nop
    cp $04
    ld d, [hl]
    nop
    cp $fc
    ld b, [hl]
    nop
    xor $04
    ld d, h
    nop
    xor $fc
    ld b, h
    ld bc, $fe06
    db $f4
    ld d, $00
    xor $f4
    inc d
    nop
    cp $04
    ld e, d
    nop
    cp $fc
    ld c, d
    nop
    xor $04
    ld e, b
    nop
    xor $fc
    ld c, b
    ld bc, $f801
    db $fc
    inc a
    ld bc, $f801
    db $fc
    ld a, $01
    ld [bc], a
    nop
    db $fc
    ld c, h
    ld b, b
    ldh a, [$fffc]
    ld c, h
    ld bc, $0002
    db $fc
    ld c, [hl]
    ld b, b
    ldh a, [$fffc]
    ld c, [hl]
    ld bc, $0002
    db $fc
    ld e, h
    ld b, b
    ldh a, [$fffc]
    ld e, h
    ld bc, $0002
    db $fc
    ld e, [hl]
    ld b, b
    ldh a, [$fffc]
    ld e, [hl]
    db $01

    db $55, $63, $6e, $63

    add a
    ld h, e
    and b
    ld h, e

    db $06, $00, $04, $46, $00, $f0, $04, $44, $00, $00, $fc, $4a, $00, $f0, $fc, $48
    db $00, $00, $f4, $4e, $00, $f0, $f4, $4c, $01, $06, $00, $f4, $3e, $00, $f0, $f4
    db $3c, $00, $00, $04, $52, $00, $00, $fc, $42, $00, $f0, $04, $50, $00, $f0, $fc
    db $40, $01

    ld b, $00
    di
    ld a, $00
    ldh a, [$fff3]
    inc a
    nop
    nop
    inc bc
    ld d, d
    nop
    nop
    ei
    ld b, d
    nop
    ldh a, [$ff03]
    ld d, b
    nop
    ldh a, [$fffb]
    ld b, b
    ld bc, $0006
    push af
    ld a, $00
    ldh a, [$fff5]
    inc a
    nop
    nop
    dec b
    ld d, d
    nop
    nop
    db $fd
    ld b, d
    nop
    ldh a, [rTIMA]
    ld d, b
    nop
    ldh a, [$fffd]
    ld b, b
    db $01

    db $c3, $63, $dc, $63, $f5, $63, $1a, $64, $3f, $64, $06, $00, $f4, $16, $00, $f0
    db $f4, $14, $00, $00, $fc, $26, $00, $f0, $fc, $24, $00, $00, $04, $56, $00, $f0
    db $04, $54, $01, $06, $00, $04, $5a, $00, $f0, $04, $58, $00, $00, $f4, $12, $00
    db $f0, $f4, $10, $00, $00, $fc, $2a, $00, $f0, $fc, $28, $01, $09, $f8, $14, $4c
    db $00, $00, $0c, $3e, $00, $f0, $0c, $3c, $00, $00, $04, $46, $00, $f0, $04, $44
    db $00, $00, $fc, $52, $00, $00, $f4, $42, $00, $f0, $fc, $50, $00, $f0, $f4, $40
    db $01, $09, $f8, $14, $4e, $00, $00, $0c, $5e, $00, $f0, $0c, $5c, $00, $00, $04
    db $46, $10, $f0, $04, $44, $10, $00, $fc, $52, $10, $00, $f4, $42, $10, $f0, $fc
    db $50, $10, $f0, $f4, $40, $11, $02, $f8, $f8, $4a, $00, $f8, $00, $48, $01

    ld e, [hl]
    ld h, h
    ld [hl], a
    ld h, h
    sub b
    ld h, h
    and c
    ld h, h
    or d
    ld h, h
    jp $d464


    ld h, h
    push hl
    ld h, h
    or $64
    rlca
    ld h, l
    jr @+$67

    ld b, $00
    inc b
    ld c, d
    nop
    ldh a, [rDIV]
    ld c, b
    nop
    nop
    db $fc
    ld d, [hl]
    nop
    nop
    db $f4
    ld b, [hl]
    nop
    ldh a, [$fffc]
    ld d, h
    nop
    ldh a, [$fff4]
    ld b, h
    ld bc, $0006
    db $f4
    ld a, $00
    ldh a, [$fff4]
    inc a
    nop
    nop
    inc b
    ld d, d
    nop
    nop
    db $fc
    ld b, d
    nop
    ldh a, [rDIV]
    ld d, b
    nop
    ldh a, [$fffc]
    ld b, b
    ld bc, $f804
    dec bc
    ld c, h
    nop
    ld hl, sp-$15
    ld c, h
    nop
    ld a, [bc]
    ei
    ld c, h
    nop
    and $fb
    ld c, h
    ld bc, HeaderLogo
    add hl, bc
    ld c, h
    nop
    rlca
    di
    ld c, h
    nop
    rst $28
    db $ed
    ld c, h
    nop
    jp hl


    inc bc
    ld c, h
    ld bc, $0704
    inc bc
    ld c, h
    nop
    rst $28
    add hl, bc
    ld c, h
    nop
    ld bc, $4ced
    nop
    jp hl


    di
    ld c, h
    ld bc, $0a04
    ei
    ld c, [hl]
    nop
    ld hl, sp+$0b
    ld c, [hl]
    nop
    ld hl, sp-$15
    ld c, [hl]
    nop
    and $fb
    ld c, [hl]
    ld bc, HeaderLogo
    add hl, bc
    ld c, [hl]
    nop
    rlca
    di
    ld c, [hl]
    nop
    rst $28
    db $ed
    ld c, [hl]
    nop
    jp hl


    inc bc
    ld c, [hl]
    ld bc, $ef04
    add hl, bc
    ld c, [hl]
    nop
    rlca
    inc bc
    ld c, [hl]
    nop
    ld bc, $4eed
    nop
    jp hl


    di
    ld c, [hl]
    ld bc, $0a04
    ei
    ld e, b
    nop
    ld hl, sp-$15
    ld e, b
    nop
    ld hl, sp+$0b
    ld e, b
    nop
    and $fb
    ld e, b
    ld bc, HeaderLogo
    add hl, bc
    ld e, b
    nop
    rlca
    di
    ld e, b
    nop
    rst $28
    db $ed
    ld e, b
    nop
    jp hl


    inc bc
    ld e, b
    ld bc, $ef04
    add hl, bc
    ld e, b
    nop
    rlca
    inc bc
    ld e, b
    nop
    ld bc, $58ed
    nop
    jp hl


    di
    ld e, b
    db $01

    db $39, $65, $52, $65, $6b, $65, $84, $65, $9d, $65, $b6, $65, $cf, $65, $e8, $65
    db $06, $01, $04, $32, $00, $01, $fc, $22, $00, $01, $f4, $12, $00, $f1, $04, $30
    db $00, $f1, $fc, $20, $00, $f1, $f4, $10, $01, $06, $00, $04, $36, $00, $00, $fc
    db $26, $00, $00, $f4, $16, $00, $f0, $04, $34, $00, $f0, $fc, $24, $00, $f0, $f4
    db $14, $01, $06, $f0, $fc, $20, $00, $00, $04, $3a, $00, $00, $fc, $2a, $00, $00
    db $f4, $1a, $00, $f0, $04, $38, $00, $f0, $f4, $18, $01, $06, $00, $04, $3e, $00
    db $00, $fc, $2e, $00, $00, $f4, $1e, $00, $f0, $04, $3c, $00, $f0, $fc, $2c, $00
    db $f0, $f4, $1c, $01, $06, $00, $f4, $3e, $20, $00, $fc, $2e, $20, $00, $04, $1e
    db $20, $f0, $f4, $3c, $20, $f0, $fc, $2c, $20, $f0, $04, $1c, $21, $06, $f1, $04
    db $28, $00, $f1, $fc, $24, $00, $f1, $f4, $14, $00, $01, $04, $3e, $00, $01, $fc
    db $2e, $00, $01, $f4, $1e, $01, $06, $01, $03, $32, $00, $01, $fb, $22, $00, $01
    db $f3, $12, $00, $f1, $03, $30, $00, $f1, $fb, $20, $00, $f1, $f3, $10, $01, $06
    db $01, $05, $32, $00, $01, $fd, $22, $00, $01, $f5, $12, $00, $f1, $05, $30, $00
    db $f1, $fd, $20, $00, $f1, $f5, $10, $01, $1b, $66, $34, $66, $4d, $66, $66, $66
    db $7f, $66, $98, $66, $b1, $66

    jp z, $eb66

    ld h, [hl]
    inc c
    ld h, a
    dec l
    ld h, a
    ld c, [hl]
    ld h, a
    ld h, a
    ld h, a

    db $06, $ff, $f4, $52, $00, $ff, $04, $54, $00, $ff, $fc, $44, $00, $ef, $04, $28
    db $00, $ef, $fc, $24, $00, $ef, $f4, $14, $01, $06, $ff, $04, $48, $00, $ff, $fc
    db $56, $00, $ff, $f4, $46, $00, $ef, $fc, $20, $00, $ef, $04, $38, $00, $ef, $f4
    db $18, $01, $06, $ff, $01, $48, $00, $ff, $f9, $56, $00, $ff, $f1, $46, $00, $ef
    db $f9, $20, $00, $ef, $01, $38, $00, $ef, $f1, $18, $01, $06, $fe, $04, $42, $00
    db $fe, $fc, $50, $00, $fe, $f4, $40, $00, $ee, $04, $30, $00, $ee, $fc, $20, $00
    db $ee, $f4, $10, $01, $06, $fd, $04, $5c, $00, $fd, $fc, $5e, $00, $fd, $f4, $4e
    db $00, $ed, $fc, $20, $00, $ed, $04, $38, $00, $ed, $f4, $18, $01, $06, $fe, $06
    db $42, $00, $fe, $fe, $50, $00, $fe, $f6, $40, $00, $ee, $06, $30, $00, $ee, $fe
    db $20, $00, $ee, $f6, $10, $01, $06, $00, $04, $4c, $00, $00, $fc, $5a, $00, $00
    db $f4, $4a, $00, $f0, $04, $30, $00, $f0, $fc, $20, $00, $f0, $f4, $10, $01

    ld [$0a07], sp
    sub d
    nop
    ei
    ld [bc], a
    sbc [hl]
    ld b, b
    rst $38
    db $f4
    ld d, d
    nop
    rst $38
    inc b
    ld d, h
    nop
    rst $38
    db $fc
    ld b, h
    nop
    rst $28
    inc b
    jr z, jr_00a_66e3

jr_00a_66e3:
    rst $28
    db $fc
    inc h
    nop
    rst $28
    db $f4
    inc d
    ld bc, $0908
    dec bc
    sub h
    jr nz, @-$04

    ld b, $94
    ld b, b
    rst $38
    db $f4
    ld d, d
    nop
    rst $38
    inc b
    ld d, h
    nop
    rst $38
    db $fc
    ld b, h
    nop
    rst $28
    inc b
    jr z, jr_00a_6704

jr_00a_6704:
    rst $28
    db $fc
    inc h
    nop
    rst $28
    db $f4
    inc d
    ld bc, $f808
    ld a, [bc]
    sub d
    ld b, b
    dec b
    ld [bc], a
    sbc [hl]
    nop
    rst $38
    db $f4
    ld d, d
    nop
    rst $38
    inc b
    ld d, h
    nop
    rst $38
    db $fc
    ld b, h
    nop
    rst $28
    inc b
    jr z, jr_00a_6725

jr_00a_6725:
    rst $28
    db $fc
    inc h
    nop
    rst $28
    db $f4
    inc d
    ld bc, $0708
    ld b, $94
    nop
    rst $30
    inc c
    sub h
    ld b, b
    rst $38
    db $f4
    ld d, d
    nop
    rst $38
    inc b
    ld d, h
    nop
    rst $38
    db $fc
    ld b, h
    nop
    rst $28
    inc b
    jr z, jr_00a_6746

jr_00a_6746:
    rst $28
    db $fc
    inc h
    nop
    rst $28
    db $f4
    inc d
    ld bc, $fe06
    inc bc
    ld b, d
    nop
    cp $fb
    ld d, b
    nop
    cp $f3
    ld b, b
    nop
    xor $03
    jr nc, jr_00a_675f

jr_00a_675f:
    xor $fb
    jr nz, jr_00a_6763

jr_00a_6763:
    xor $f3
    db $10
    ld bc, $fe06
    dec b
    ld b, d
    nop
    cp $fd
    ld d, b
    nop
    cp $f5
    ld b, b
    nop
    xor $05
    jr nc, jr_00a_6778

jr_00a_6778:
    xor $fd
    jr nz, jr_00a_677c

jr_00a_677c:
    xor $f5
    db $10
    ld bc, $6786
    sbc a
    ld h, a
    cp b
    ld h, a
    ld b, $00
    inc b
    ld c, d
    nop
    ldh a, [rDIV]
    ld c, b
    nop
    nop
    db $fc
    ld d, d
    nop
    nop
    db $f4
    ld b, d
    nop
    ldh a, [$fffc]
    ld d, b
    nop
    ldh a, [$fff4]
    ld b, b
    ld bc, $0006
    inc b
    ld e, d
    nop
    ldh a, [rDIV]
    ld e, b
    nop
    nop
    db $fc
    ld d, [hl]
    nop
    nop
    db $f4
    ld b, [hl]
    nop
    ldh a, [$fffc]
    ld d, h
    nop
    ldh a, [$fff4]
    ld b, h
    ld bc, $fd06
    inc bc
    ld c, [hl]
    nop
    db $fd
    ei
    ld e, h
    nop
    db $fd
    di
    ld c, h
    nop
    db $ed
    inc bc
    jr nc, jr_00a_67c9

jr_00a_67c9:
    db $ed
    ei
    jr nz, jr_00a_67cd

jr_00a_67cd:
    db $ed
    di
    db $10
    ld bc, $67e5
    ld b, $68
    daa
    ld l, b
    ld c, b
    ld l, b
    ld l, c
    ld l, b
    adc d
    ld l, b
    xor e
    ld l, b
    call z, $ed68
    ld l, b
    ld c, $69
    ld [$00e1], sp
    ld c, [hl]
    jr nz, @-$1d

    ld hl, sp+$4e
    nop

jr_00a_67ee:
    ld bc, $3204
    nop
    ld bc, $22fc
    nop
    ld bc, $12f4
    nop
    pop af
    inc b
    jr nc, jr_00a_67fe

jr_00a_67fe:
    pop af
    db $fc
    jr nz, jr_00a_6802

jr_00a_6802:
    pop af
    db $f4
    db $10
    ld bc, $e208
    nop
    ld e, [hl]
    jr nz, jr_00a_67ee

    ld hl, sp+$5e
    nop

jr_00a_680f:
    ld [bc], a
    inc b
    ld a, $00
    ld [bc], a
    db $fc
    ld l, $00
    ld [bc], a
    db $f4
    ld e, $00
    ldh a, [c]
    inc b
    inc a
    nop
    ldh a, [c]
    db $fc
    inc l
    nop
    ldh a, [c]
    db $f4
    inc e
    ld bc, $e208
    nop
    ld e, [hl]
    jr nz, jr_00a_680f

    ld hl, sp+$5e

jr_00a_682f:
    nop
    ld [bc], a
    db $f4
    ld a, $20
    ld [bc], a
    db $fc
    ld l, $20
    ld [bc], a
    inc b
    ld e, $20
    ldh a, [c]
    db $f4
    inc a
    jr nz, @-$0c

    db $fc
    inc l
    jr nz, @-$0c

    inc b
    inc e
    ld hl, $e108
    nop
    ld c, [hl]
    jr nz, jr_00a_682f

    ld hl, sp+$4e

jr_00a_6850:
    nop
    ld bc, $32f4
    jr nz, jr_00a_6857

    db $fc

jr_00a_6857:
    ld [hl+], a
    jr nz, jr_00a_685b

    inc b

jr_00a_685b:
    ld [de], a
    jr nz, @-$0d

    db $f4
    jr nc, jr_00a_6881

    pop af
    db $fc
    jr nz, jr_00a_6885

    pop af
    inc b
    db $10

jr_00a_6868:
    ld hl, $e108
    nop
    ld c, [hl]
    jr nz, jr_00a_6850

    ld hl, sp+$4e
    nop
    ld bc, $5604
    jr nz, jr_00a_6868

    inc b

jr_00a_6878:
    ld d, h
    jr nz, jr_00a_687c

    db $f4

jr_00a_687c:
    ld d, d
    jr nz, jr_00a_6880

    db $fc

jr_00a_6880:
    ld b, d

jr_00a_6881:
    jr nz, @-$0d

    db $f4
    ld d, b

jr_00a_6885:
    jr nz, jr_00a_6878

    db $fc

jr_00a_6888:
    ld b, b
    ld hl, $e008
    nop
    ld e, h
    jr nz, @-$1e

    ld hl, sp+$5c
    nop
    nop

jr_00a_6894:
    inc b
    ld b, [hl]
    jr nz, jr_00a_6888

jr_00a_6898:
    inc b
    ld b, h
    jr nz, jr_00a_689c

jr_00a_689c:
    db $f4
    ld e, d
    jr nz, jr_00a_68a0

jr_00a_68a0:
    db $fc
    ld c, d
    jr nz, jr_00a_6894

    db $f4
    ld e, b
    jr nz, jr_00a_6898

    db $fc
    ld c, b
    ld hl, $e008
    nop
    ld e, h
    jr nz, @-$1e

    ld hl, sp+$5c

jr_00a_68b3:
    nop
    nop
    db $f4
    ld b, [hl]
    nop
    ldh a, [$fff4]
    ld b, h
    nop
    nop
    inc b
    ld e, d
    nop
    nop
    db $fc
    ld c, d
    nop
    ldh a, [rDIV]
    ld e, b
    nop
    ldh a, [$fffc]
    ld c, b
    ld bc, $e108
    nop
    ld c, [hl]
    jr nz, jr_00a_68b3

    ld hl, sp+$4e
    nop
    ld bc, $56f4
    nop
    pop af
    db $f4
    ld d, h
    nop
    ld bc, $5204
    nop
    ld bc, $42fc
    nop
    pop af
    inc b
    ld d, b
    nop
    pop af
    db $fc
    ld b, b
    ld bc, $e008
    nop
    ld c, h
    jr nz, @-$1e

    ld hl, sp+$4c
    nop
    nop
    inc b
    ld [hl], $00
    nop
    db $fc
    ld h, $00
    nop
    db $f4
    ld d, $00
    ldh a, [rDIV]
    inc [hl]
    nop
    ldh a, [$fffc]
    inc h
    nop
    ldh a, [$fff4]
    inc d
    ld bc, $e008
    nop
    ld e, [hl]
    jr nz, @-$1e

    ld hl, sp+$5e
    nop
    ldh a, [$fffc]
    jr nz, jr_00a_691b

jr_00a_691b:
    nop
    inc b
    ld a, [hl-]
    nop
    nop
    db $fc
    ld a, [hl+]
    nop
    nop
    db $f4
    ld a, [de]
    nop
    ldh a, [rDIV]
    jr c, jr_00a_692b

jr_00a_692b:
    ldh a, [$fff4]
    jr jr_00a_6930

    dec a

jr_00a_6930:
    ld l, c
    ld d, [hl]
    ld l, c
    ld l, a
    ld l, c
    adc b
    ld l, c
    and c
    ld l, c
    cp d
    ld l, c
    db $e3
    ld l, c
    ld b, $00
    db $f4
    ld c, [hl]
    nop
    nop
    inc b
    ld e, h
    nop
    nop
    db $fc
    ld c, h
    nop
    ldh a, [rDIV]
    jr nc, jr_00a_694e

jr_00a_694e:
    ldh a, [$fffc]
    jr nz, jr_00a_6952

jr_00a_6952:
    ldh a, [$fff4]
    db $10
    ld bc, $0206
    push af
    ld e, d
    nop
    ldh a, [c]
    push af
    ld e, b
    nop
    ld [bc], a
    dec b
    ld d, d
    nop
    ld [bc], a
    db $fd
    ld b, d
    nop
    ldh a, [c]
    dec b
    ld d, b
    nop
    ldh a, [c]
    db $fd
    ld b, b
    ld bc, $0206
    di
    ld e, d
    nop
    ldh a, [c]
    di
    ld e, b
    nop
    ld [bc], a
    inc bc
    ld d, d
    nop
    ld [bc], a
    ei
    ld b, d
    nop
    ldh a, [c]
    inc bc
    ld d, b
    nop
    ldh a, [c]
    ei
    ld b, b
    ld bc, $0206
    db $f4
    ld c, d
    nop
    ldh a, [c]
    db $f4
    ld c, b
    nop
    ld [bc], a
    inc b
    ld d, [hl]
    nop
    ld [bc], a
    db $fc
    ld b, [hl]
    nop
    ldh a, [c]
    inc b
    ld d, h
    nop
    ldh a, [c]
    db $fc
    ld b, h
    ld bc, $0006
    inc b
    ld [hl-], a
    nop
    nop
    db $fc
    ld [hl+], a
    nop
    nop
    db $f4
    ld [de], a
    nop
    ldh a, [rDIV]
    jr nc, jr_00a_69b2

jr_00a_69b2:
    ldh a, [$fffc]
    jr nz, jr_00a_69b6

jr_00a_69b6:
    ldh a, [$fff4]
    db $10
    ld bc, $090a
    inc b
    add b
    ld b, b

jr_00a_69bf:
    add hl, bc
    push af
    add b
    ld h, b
    rst $30
    inc b
    add b
    jr nz, jr_00a_69bf

    push af
    add b
    nop
    xor $04
    jr c, jr_00a_69cf

jr_00a_69cf:
    xor $f4
    jr jr_00a_69d3

jr_00a_69d3:
    cp $03
    ld a, $00
    cp $fb
    ld l, $00
    cp $f3
    ld e, $00
    xor $fc
    jr nz, jr_00a_69e4

    ld a, [bc]

jr_00a_69e4:
    dec c
    ld [$6080], sp
    dec c
    ldh a, [$ff80]
    ld b, b
    db $f4
    ld [$2080], sp
    db $f4
    ldh a, [$ff80]
    nop
    nop
    di
    ld c, d
    nop
    nop
    inc bc
    ld d, d
    nop
    nop
    ei
    ld b, d
    nop
    ldh a, [rDIV]
    jr nc, jr_00a_6a04

jr_00a_6a04:
    ldh a, [$fffc]
    jr nz, jr_00a_6a08

jr_00a_6a08:
    ldh a, [$fff4]
    db $10
    db $01

    db $22, $6a, $3b, $6a, $54, $6a, $6d, $6a, $76, $6a, $7f, $6a, $88, $6a, $91, $6a
    db $9a, $6a, $a3, $6a, $ac, $6a, $06, $00, $04, $32, $00, $00, $fc, $22, $00, $00
    db $f4, $12, $00, $f0, $04, $30, $00, $f0, $fc, $20, $00, $f0, $f4, $10, $01, $06
    db $f0, $fc, $20, $00, $00, $04, $3a, $00, $00, $fc, $2a, $00, $00, $f4, $1a, $00
    db $f0, $04, $38, $00, $f0, $f4, $18, $01, $06, $00, $fc, $54, $00, $00, $f4, $44
    db $00, $00, $04, $42, $00, $f0, $f4, $52, $00, $f0, $04, $50, $00, $f0, $fc, $40
    db $01, $02, $f8, $04, $56, $00, $f8, $fc, $46, $01, $02, $f8, $04, $58, $00, $f8
    db $fc, $48, $01, $02, $f8, $fc, $5a, $00, $f8, $f4, $4a, $01, $02, $f8, $fc, $4e
    db $00, $f8, $f4, $4c, $01, $02, $f8, $f4, $56, $60, $f8, $fc, $46, $61, $02, $f8
    db $f4, $58, $60, $f8, $fc, $48, $61, $02, $f8, $fc, $5a, $60, $f8, $04, $4a, $61
    db $02, $f8, $fc, $4e, $60, $f8, $04, $4c, $61

    push bc
    ld l, d
    ld [$0f6a], a
    ld l, e
    inc [hl]
    ld l, e
    ld e, c
    ld l, e
    ld a, [hl]
    ld l, e
    and e
    ld l, e
    ret z

    ld l, e
    add hl, bc
    db $10
    inc b
    ld b, [hl]
    nop
    nop
    inc b
    ld b, h
    nop
    db $10
    db $fc
    ld d, d
    nop
    db $10
    db $f4
    ld b, d
    nop
    nop
    db $fc
    ld d, b
    nop
    nop
    db $f4
    ld b, b
    nop
    ldh a, [rDIV]
    jr nc, jr_00a_6ae2

jr_00a_6ae2:
    ldh a, [$fffc]
    jr nz, jr_00a_6ae6

jr_00a_6ae6:
    ldh a, [$fff4]
    db $10
    ld bc, $ef09
    inc b
    inc [hl]
    nop
    rst $28
    db $fc
    inc h
    nop
    rst $28
    db $f4
    inc d
    nop
    rrca
    inc b
    ld b, [hl]
    nop
    rst $38
    inc b
    ld b, h
    nop
    rrca
    db $fc
    ld d, d
    nop
    rrca
    db $f4
    ld b, d
    nop
    rst $38
    db $fc
    ld d, b
    nop
    rst $38
    db $f4
    ld b, b
    ld bc, $f009
    inc b
    jr c, jr_00a_6b14

jr_00a_6b14:
    ldh a, [$fff4]
    jr jr_00a_6b18

jr_00a_6b18:
    db $10
    inc b
    ld b, [hl]
    nop
    nop
    inc b
    ld b, h
    nop
    db $10
    db $fc
    ld d, d
    nop
    db $10
    db $f4
    ld b, d
    nop
    nop
    db $fc
    ld d, b
    nop
    nop
    db $f4
    ld b, b
    nop
    ldh a, [$fffc]
    jr nz, jr_00a_6b35

    add hl, bc

jr_00a_6b35:
    ldh a, [rDIV]
    inc a
    nop
    ldh a, [$fffc]
    inc l
    nop
    ldh a, [$fff4]
    inc e
    nop
    db $10
    inc b
    ld b, [hl]
    nop
    nop
    inc b
    ld b, h
    nop
    db $10
    db $fc
    ld d, d
    nop
    db $10
    db $f4

jr_00a_6b4f:
    ld b, d
    nop
    nop
    db $fc

jr_00a_6b53:
    ld d, b
    nop
    nop
    db $f4
    ld b, b
    ld bc, $f009
    db $f4
    inc a
    jr nz, jr_00a_6b4f

    db $fc
    inc l
    jr nz, jr_00a_6b53

    inc b
    inc e
    jr nz, jr_00a_6b77

    db $f4
    ld b, [hl]
    jr nz, jr_00a_6b6b

jr_00a_6b6b:
    db $f4
    ld b, h
    jr nz, @+$12

    db $fc
    ld d, d
    jr nz, jr_00a_6b83

    inc b
    ld b, d
    jr nz, jr_00a_6b77

jr_00a_6b77:
    db $fc
    ld d, b
    jr nz, jr_00a_6b7b

jr_00a_6b7b:
    inc b
    ld b, b
    ld hl, $ef09
    inc b
    jr z, jr_00a_6b83

jr_00a_6b83:
    rst $28
    db $fc
    inc h
    nop
    rst $28
    db $f4
    inc d
    nop
    rrca
    inc b
    ld b, [hl]
    nop
    rst $38
    inc b
    ld b, h
    nop
    rrca
    db $fc
    ld d, d
    nop
    rrca
    db $f4
    ld b, d
    nop
    rst $38
    db $fc
    ld d, b
    nop
    rst $38
    db $f4
    ld b, b
    ld bc, $1109
    inc b
    ld b, [hl]
    nop
    ld bc, $4404
    nop
    ld de, $52fc
    nop
    ld de, $42f4
    nop
    ld bc, $50fc
    nop
    ld bc, $40f4
    nop
    pop af
    inc b
    jr nc, jr_00a_6bc0

jr_00a_6bc0:
    pop af
    db $fc
    jr nz, jr_00a_6bc4

jr_00a_6bc4:
    pop af
    db $f4
    db $10
    ld bc, $0f09
    inc b
    ld d, [hl]
    nop
    rst $38
    inc b
    ld d, h
    nop
    rrca
    db $fc
    ld c, d
    nop
    rst $38
    db $fc
    ld c, b
    nop
    rrca
    db $f4
    ld c, [hl]
    nop
    rst $38
    db $f4
    ld c, h
    nop
    rst $28
    inc b
    jr c, jr_00a_6be5

jr_00a_6be5:
    rst $28
    db $f4
    jr jr_00a_6be9

jr_00a_6be9:
    rst $28
    db $fc
    jr nz, jr_00a_6bee

    add hl, bc

jr_00a_6bee:
    ld l, h
    ld [hl+], a
    ld l, h
    dec sp
    ld l, h
    ld d, h
    ld l, h
    ld l, l
    ld l, h
    add [hl]
    ld l, h
    sbc a
    ld l, h
    xor b
    ld l, h
    or c
    ld l, h
    cp d
    ld l, h
    jp $cc6c


    ld l, h
    push de
    ld l, h
    sbc $6c
    ld b, $00
    db $f4
    ld d, d
    nop
    nop
    inc b
    ld d, b
    nop
    nop
    db $fc
    ld b, b
    nop
    ldh a, [rDIV]
    jr nc, jr_00a_6c1a

jr_00a_6c1a:
    ldh a, [$fffc]
    jr nz, jr_00a_6c1e

jr_00a_6c1e:
    ldh a, [$fff4]
    db $10
    ld bc, $0006
    db $fc
    ld d, h
    nop
    nop
    db $f4
    ld b, h
    nop
    nop
    inc b
    ld b, d
    nop
    ldh a, [rDIV]
    jr nc, jr_00a_6c33

jr_00a_6c33:
    ldh a, [$fffc]
    jr nz, jr_00a_6c37

jr_00a_6c37:
    ldh a, [$fff4]
    db $10
    ld bc, $0006
    db $f4
    ld d, d
    nop
    nop
    inc b
    ld d, b
    nop
    nop
    db $fc
    ld b, b
    nop
    ldh a, [rDIV]
    inc [hl]
    nop
    ldh a, [$fffc]
    inc h
    nop
    ldh a, [$fff4]
    inc d
    ld bc, $0006
    db $fc
    ld d, h
    nop
    nop
    db $f4
    ld b, h
    nop
    nop
    inc b
    ld b, d
    nop
    ldh a, [rDIV]
    inc [hl]
    nop
    ldh a, [$fffc]
    inc h
    nop
    ldh a, [$fff4]
    inc d
    ld bc, $0006
    db $f4
    ld d, d
    nop
    nop
    inc b
    ld d, b
    nop
    nop
    db $fc
    ld b, b
    nop
    ldh a, [$fff4]
    jr jr_00a_6c7e

jr_00a_6c7e:
    ldh a, [$fffc]
    jr nz, jr_00a_6c82

jr_00a_6c82:
    ldh a, [rDIV]
    jr c, @+$03

    ld b, $00
    db $f4
    ld b, h
    nop
    nop
    db $fc
    ld d, h
    nop
    nop
    inc b
    ld b, d
    nop
    ldh a, [$fff4]
    jr jr_00a_6c97

jr_00a_6c97:
    ldh a, [$fffc]
    jr nz, jr_00a_6c9b

jr_00a_6c9b:
    ldh a, [rDIV]
    jr c, jr_00a_6ca0

    ld [bc], a

jr_00a_6ca0:
    ld hl, sp+$00
    ld d, [hl]
    nop
    ld hl, sp-$08
    ld b, [hl]
    ld bc, $f802
    ld hl, sp+$48
    db $10
    ld hl, sp+$00

jr_00a_6caf:
    ld c, d
    ld de, $f802
    ld hl, sp+$56
    jr nz, jr_00a_6caf

    nop

jr_00a_6cb8:
    ld b, [hl]
    ld hl, $f802
    nop
    ld c, b
    jr nc, jr_00a_6cb8

    ld hl, sp+$4a
    ld sp, $f802
    nop
    ld c, h
    jr nz, @-$06

    ld hl, sp+$4c
    ld bc, $f802
    nop
    ld c, [hl]
    jr nz, @-$06

    ld hl, sp+$4e
    ld bc, $f802
    ld hl, sp+$4c
    nop
    ld hl, sp+$00
    ld c, h
    ld hl, $f802
    ld hl, sp+$4e
    nop
    ld hl, sp+$00
    ld c, [hl]
    ld hl, $6cfb
    inc d
    ld l, l
    dec l
    ld l, l
    ld b, [hl]
    ld l, l
    ld e, a
    ld l, l
    ld a, b
    ld l, l
    sub c
    ld l, l
    xor d
    ld l, l
    xor a
    ld l, l
    cp b
    ld l, l
    ld b, $00
    ldh a, [c]
    ld c, h
    nop
    nop
    ld [bc], a
    ld e, d
    nop
    nop
    ld a, [$004a]
    ldh a, [$fffb]
    jr nz, jr_00a_6d0c

jr_00a_6d0c:
    ldh a, [$ff03]
    jr c, jr_00a_6d10

jr_00a_6d10:
    ldh a, [$fff3]
    jr @+$03

    ld b, $00
    db $fc
    ld d, h
    nop
    nop
    db $f4
    ld b, h
    nop
    nop
    inc b
    ld b, d
    nop
    ldh a, [rDIV]
    ld b, b
    nop
    ldh a, [$fffc]
    jr nz, jr_00a_6d29

jr_00a_6d29:
    ldh a, [$fff4]
    db $10
    ld bc, $0006
    inc b
    ld d, b
    nop
    nop
    db $fc
    ld d, [hl]
    nop
    nop
    db $f4
    ld b, [hl]
    nop
    ldh a, [rDIV]
    jr nc, jr_00a_6d3e

jr_00a_6d3e:
    ldh a, [$fffc]
    jr nz, jr_00a_6d42

jr_00a_6d42:
    ldh a, [$fff4]
    db $10
    ld bc, $0006
    inc b
    ld d, d
    nop
    nop
    db $fc
    ld e, b
    nop
    nop
    db $f4
    ld c, b
    nop
    ldh a, [rDIV]
    inc a
    nop
    ldh a, [$fffc]
    inc l
    nop
    ldh a, [$fff4]

jr_00a_6d5d:
    inc e
    ld bc, $0006

jr_00a_6d61:
    db $f4
    ld d, d
    jr nz, jr_00a_6d65

jr_00a_6d65:
    db $fc
    ld e, b
    jr nz, jr_00a_6d69

jr_00a_6d69:
    inc b
    ld c, b
    jr nz, jr_00a_6d5d

    db $f4
    inc a
    jr nz, jr_00a_6d61

    db $fc
    inc l
    jr nz, jr_00a_6d65

    inc b

jr_00a_6d76:
    inc e
    ld hl, $0006
    db $f4
    ld d, b
    jr nz, jr_00a_6d7e

jr_00a_6d7e:
    db $fc
    ld d, [hl]
    jr nz, jr_00a_6d82

jr_00a_6d82:
    inc b
    ld b, [hl]
    jr nz, jr_00a_6d76

    db $f4
    jr nc, jr_00a_6da9

    ldh a, [$fffc]
    jr nz, jr_00a_6dad

    ldh a, [rDIV]

jr_00a_6d8f:
    db $10
    ld hl, $0006

jr_00a_6d93:
    db $fc
    ld d, h
    jr nz, jr_00a_6d97

jr_00a_6d97:
    inc b
    ld b, h
    jr nz, jr_00a_6d9b

jr_00a_6d9b:
    db $f4
    ld b, d
    jr nz, jr_00a_6d8f

    db $f4
    ld b, b
    jr nz, jr_00a_6d93

    db $fc
    jr nz, jr_00a_6dc6

    ldh a, [rDIV]
    db $10

jr_00a_6da9:
    ld hl, $fc01
    db $fc

jr_00a_6dad:
    ld e, [hl]
    ld bc, $f802
    nop
    ld c, [hl]
    jr nz, jr_00a_6dad

    ld hl, sp+$4e
    ld bc, $f802
    nop
    ld e, h
    jr nz, @-$06

    ld hl, sp+$5c
    db $01

    db $c9, $6d

    ldh [c], a
    ld l, l
    ei

jr_00a_6dc6:
    ld l, l
    inc d
    ld l, [hl]

    db $06, $00, $f4, $0a, $00, $f0, $f4, $08, $00, $00, $fc, $06, $00, $f0, $fc, $04
    db $00, $00, $04, $02, $00, $f0, $04, $00, $01

    ld b, $00
    db $f4
    ld d, $00
    ldh a, [$fff4]
    inc d
    nop
    nop
    db $fc
    ld [de], a
    nop
    ldh a, [$fffc]
    stop
    nop
    inc b
    ld c, $00
    ldh a, [rDIV]
    inc c
    ld bc, $0006
    db $f4
    ld [hl+], a
    nop
    ldh a, [$fff4]
    jr nz, jr_00a_6e04

jr_00a_6e04:
    nop
    db $fc
    ld e, $00
    ldh a, [$fffc]
    inc e
    nop
    nop
    inc b
    ld a, [de]
    nop
    ldh a, [rDIV]
    jr @+$03

    ld b, $00
    db $f4
    ld a, [bc]
    nop
    ldh a, [$fff4]
    ld [$0000], sp
    db $fc
    ld b, $00
    ldh a, [$fffc]
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    ldh a, [rDIV]
    inc h
    db $01

    db $35, $6e, $4e, $6e

    ld h, a
    ld l, [hl]

    db $80, $6e, $06, $00, $f4, $0a, $00, $f0, $f4, $08, $00, $00, $fc, $06, $00, $f0
    db $fc, $04, $00, $00, $04, $02, $00, $f0, $04, $00, $01, $06, $f8, $f4, $16, $00
    db $e8, $f4, $14, $00, $f8, $fc, $12, $00, $e8, $fc, $10, $00, $f8, $04, $0e, $00
    db $e8, $04, $0c, $01

    ld b, $00
    db $f4
    ld [hl+], a
    nop
    ldh a, [$fff4]
    jr nz, jr_00a_6e70

jr_00a_6e70:
    nop
    db $fc
    ld e, $00
    ldh a, [$fffc]
    inc e
    nop
    nop
    inc b
    ld a, [de]
    nop
    ldh a, [rDIV]
    jr @+$03

    db $06, $f0, $f4, $26, $00, $f0, $fc, $24, $00, $00, $f4, $0a, $00, $00, $fc, $06
    db $00, $00, $04, $02, $00, $f0, $04, $00, $01, $a1, $6e

    cp d
    ld l, [hl]
    db $d3
    ld l, [hl]
    db $ec
    ld l, [hl]

    db $06, $00, $f4, $0a, $00, $f0, $f4, $08, $00, $00, $fc, $06, $00, $f0, $fc, $04
    db $00, $00, $04, $02, $00, $f0, $04, $00, $01

    ld b, $00
    db $f4
    ld d, $00
    ldh a, [$fff4]
    inc d
    nop
    nop
    db $fc
    ld [de], a
    nop
    ldh a, [$fffc]
    stop
    nop
    inc b
    ld c, $00
    ldh a, [rDIV]
    inc c
    ld bc, $0006
    db $f4
    ld [hl+], a
    nop
    ldh a, [$fff4]
    jr nz, jr_00a_6edc

jr_00a_6edc:
    nop
    db $fc
    ld e, $00
    ldh a, [$fffc]
    inc e
    nop
    nop
    inc b
    ld a, [de]
    nop
    ldh a, [rDIV]
    jr @+$03

    ld b, $f0
    db $fc
    ld h, $00
    ldh a, [rDIV]
    inc h
    nop
    nop
    db $f4
    ld a, [bc]
    nop
    ldh a, [$fff4]
    ld [$0000], sp
    db $fc
    ld b, $00
    nop
    inc b
    ld [bc], a
    db $01

    db $0b, $6f, $24, $6f, $3d, $6f, $06, $fe, $f4, $0a, $00, $ee, $f4, $08, $00, $fe
    db $fc, $06, $00, $ee, $fc, $04, $00, $fe, $04, $02, $00, $ee, $04, $00, $01, $06
    db $f8, $f4, $16, $00, $e8, $f4, $14, $00, $f8, $fc, $12, $00, $e8, $fc, $10, $00
    db $f8, $04, $0e, $00, $e8, $04, $0c, $01, $06, $00, $fc, $1e, $00, $f0, $fc, $1c
    db $00, $00, $f4, $22, $00, $f0, $f4, $20, $00, $00, $04, $1a, $00, $f0, $04, $18
    db $01

    ld e, h
    ld l, a
    ld [hl], l
    ld l, a
    adc [hl]
    ld l, a
    ld b, $fe
    db $f4
    ld a, [bc]
    nop
    xor $f4
    ld [$fe00], sp
    db $fc
    ld b, $00
    xor $fc
    inc b
    nop
    cp $04
    ld [bc], a
    nop
    xor $04
    nop
    ld bc, $f806
    db $f4
    ld d, $00
    add sp, -$0c
    inc d
    nop
    ld hl, sp-$04
    ld [de], a
    nop
    add sp, -$04
    stop
    ld hl, sp+$04
    ld c, $00
    add sp, $04
    inc c
    ld bc, $0006
    db $fc
    ld e, $00
    ldh a, [$fffc]
    inc e
    nop
    nop
    db $f4
    ld [hl+], a
    nop
    ldh a, [$fff4]
    jr nz, jr_00a_6f9f

jr_00a_6f9f:
    nop
    inc b
    ld a, [de]
    nop
    ldh a, [rDIV]
    jr jr_00a_6fa8

    or c

jr_00a_6fa8:
    ld l, a

    db $c2, $6f

    db $db
    ld l, a
    ld hl, sp+$6f
    ld de, $0470

jr_00a_6fb2:
    ei
    inc b
    ld [de], a
    jr nz, jr_00a_6fb2

    db $f4
    ld [de], a
    nop
    ei
    db $fc
    ld [hl+], a
    nop
    db $eb
    db $fc
    jr nz, @+$03

    db $06, $03, $04, $36, $00, $03, $fc, $26, $00, $03, $f4, $16, $00, $f3, $04, $34
    db $00, $f3, $fc, $24, $00, $f3, $f4, $14, $01

    rlca
    rst $28
    db $ec
    stop
    ei
    db $fc
    ld [hl+], a
    nop
    ei
    inc b
    ld b, h
    nop
    db $eb
    inc b
    ld b, d
    nop
    db $eb
    db $fc
    ld b, b
    nop
    ei
    db $f4
    ld [hl-], a
    nop
    db $eb
    db $f4
    jr nc, @+$03

    ld b, $fb
    db $fc
    ld [hl+], a
    nop
    ei
    inc b
    ld a, [hl-]
    nop
    ei
    db $f4
    ld a, [de]
    nop
    db $eb
    inc b
    jr c, jr_00a_7009

jr_00a_7009:
    db $eb
    db $fc
    jr z, jr_00a_700d

jr_00a_700d:
    db $eb
    db $f4
    jr jr_00a_7012

    rlca

jr_00a_7012:
    rst $28
    db $ec
    ld a, [hl+]
    nop
    ei
    inc b
    ld a, $00
    ei
    db $fc
    ld l, $00
    ei
    db $f4
    ld e, $00
    db $eb
    inc b
    inc a
    nop
    db $eb
    db $fc
    inc l
    nop
    db $eb
    db $f4
    inc e
    ld bc, $7044
    ld c, l
    ld [hl], b
    ld d, [hl]
    ld [hl], b
    ld e, a
    ld [hl], b
    ld l, b
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld a, d
    ld [hl], b

Call_00a_703c:
    add e
    ld [hl], b
    adc h
    ld [hl], b
    sub l
    ld [hl], b
    sbc [hl]
    ld [hl], b
    ld [bc], a
    ld hl, sp+$00
    ld a, [hl]
    ld h, b
    ld hl, sp-$08
    ld a, [hl]
    ld bc, $f802
    rst $38
    ld a, d
    ld h, b
    ld hl, sp-$09
    ld a, d
    ld bc, $f702
    ld hl, sp+$7a
    ld d, b
    rst $30
    nop
    ld a, d
    ld sp, $f802
    ld sp, hl
    ld a, d
    ld b, b
    ld hl, sp+$01
    ld a, d
    ld hl, $f902
    nop
    ld a, d
    ld [hl], b
    ld sp, hl
    ld hl, sp+$7a
    ld de, $f802
    nop
    ld a, h
    ld h, b
    ld hl, sp-$08
    ld a, h
    ld bc, $f802
    ld hl, sp+$7c
    ld d, b
    ld hl, sp+$00
    ld a, h
    ld sp, $f802
    ld hl, sp+$7c
    ld b, b
    ld hl, sp+$00
    ld a, h
    ld hl, $f802
    nop
    ld a, h
    ld [hl], b
    ld hl, sp-$08
    ld a, h
    ld de, $f802
    rst $38
    ld l, $00
    ld hl, sp-$09
    jr z, jr_00a_709f

    ld [bc], a

jr_00a_709f:
    ld hl, sp+$01
    ld l, $10
    ld hl, sp-$07
    jr z, @+$13

    db $e9, $70, $f2, $70, $03, $71, $1c, $71, $35, $71, $4e, $71, $5f, $71, $78, $71
    db $89, $71

    and d
    ld [hl], c
    cp e
    ld [hl], c

    db $cc, $71, $d5, $71, $e6, $71, $ff, $71, $18, $72, $31, $72, $42, $72, $5b, $72
    db $6c, $72

    add l
    ld [hl], d
    sbc [hl]
    ld [hl], d

    db $af, $72, $b8, $72, $c9, $72, $e2, $72, $fb, $72, $14, $73, $25, $73, $3e, $73
    db $4f, $73

    ld l, b
    ld [hl], e
    add c
    ld [hl], e

    db $02, $e8, $f0, $08, $00, $e8, $f8, $0a, $01, $04, $e8, $f0, $08, $00, $e8, $f8
    db $0a, $00, $f8, $00, $60, $20, $f8, $f8, $60, $01, $06, $e8, $f0, $08, $00, $e8
    db $f8, $0a, $00, $f0, $00, $80, $30, $00, $f8, $80, $60, $f8, $00, $62, $20, $f8
    db $f8, $64, $21, $06, $e8, $f0, $08, $00, $e8, $f8, $0a, $00, $ec, $04, $80, $20
    db $04, $f4, $80, $70, $f8, $00, $60, $60, $f8, $f8, $60, $41, $06, $e8, $f0, $08
    db $00, $e8, $f8, $0a, $00, $ea, $06, $80, $30, $06, $f2, $80, $60, $f8, $f8, $62
    db $40, $f8, $00, $64, $41, $04, $e8, $f0, $08, $00, $e8, $f8, $0a, $00, $e8, $08
    db $80, $20, $08, $f0, $80, $71, $06, $e8, $f0, $08, $00, $e8, $f8, $0a, $00, $e8
    db $08, $80, $30, $08, $f0, $80, $60, $f8, $00, $60, $20, $f8, $f8, $60, $01, $04
    db $e8, $f0, $08, $00, $e8, $f8, $0a, $00, $f8, $00, $62, $20, $f8, $f8, $64, $21
    db $06, $e8, $f0, $08, $00, $e8, $f8, $0a, $00, $ec, $f4, $80, $10, $04, $04, $80
    db $40, $f8, $00, $60, $60, $f8, $f8, $60, $41

    ld b, $e8
    ldh a, [$ff08]
    nop
    add sp, -$08
    ld a, [bc]
    nop
    ld [$80f2], a
    nop
    ld b, $06
    add b
    ld d, b
    ld hl, sp-$08
    ld h, d
    ld b, b
    ld hl, sp+$00
    ld h, h
    ld b, c
    inc b
    add sp, -$10
    ld [$e800], sp
    ld hl, sp+$0a
    nop
    add sp, -$10
    add b
    db $10
    ld [$8008], sp
    ld b, c

    db $02, $f4, $00, $08, $00, $f4, $08, $0a, $01, $04, $f4, $00, $08, $00, $f4, $08
    db $0a, $00, $f8, $00, $60, $20, $f8, $f8, $60, $01, $06, $f4, $00, $08, $00, $f4
    db $08, $0a, $00, $f0, $00, $80, $30, $00, $f8, $80, $60, $f8, $00, $62, $20, $f8
    db $f8, $64, $21, $06, $f4, $00, $08, $00, $f4, $08, $0a, $00, $ec, $04, $80, $20
    db $04, $f4, $80, $70, $f8, $00, $60, $60, $f8, $f8, $60, $41, $06, $f4, $00, $08
    db $00, $f4, $08, $0a, $00, $ea, $06, $80, $30, $06, $f2, $80, $60, $f8, $f8, $62
    db $40, $f8, $00, $64, $41, $04, $f4, $00, $08, $00, $f4, $08, $0a, $00, $e8, $08
    db $80, $20, $08, $f0, $80, $71, $06, $f4, $00, $08, $00, $f4, $08, $0a, $00, $e8
    db $08, $80, $30, $08, $f0, $80, $60, $f8, $00, $60, $20, $f8, $f8, $60, $01, $04
    db $f4, $00, $08, $00, $f4, $08, $0a, $00, $f8, $00, $62, $20, $f8, $f8, $64, $21
    db $06, $f4, $00, $08, $00, $f4, $08, $0a, $00, $ec, $f4, $80, $10, $04, $04, $80
    db $40, $f8, $00, $60, $60, $f8, $f8, $60, $41

    ld b, $f4
    nop
    ld [$f400], sp
    ld [$000a], sp
    ld [$80f2], a
    nop
    ld b, $06
    add b
    ld d, b
    ld hl, sp-$08
    ld h, d
    ld b, b
    ld hl, sp+$00
    ld h, h
    ld b, c
    inc b
    db $f4
    nop
    ld [$f400], sp
    ld [$000a], sp
    add sp, -$10
    add b
    db $10
    ld [$8008], sp
    ld b, c

    db $02, $f8, $f8, $08, $00, $f8, $00, $0a, $01, $04, $f8, $f8, $08, $00, $f8, $00
    db $0a, $00, $f8, $00, $60, $20, $f8, $f8, $60, $01, $06, $f8, $f8, $08, $00, $f8
    db $00, $0a, $00, $f0, $00, $80, $30, $00, $f8, $80, $60, $f8, $00, $62, $20, $f8
    db $f8, $64, $21, $06, $f8, $f8, $08, $00, $f8, $00, $0a, $00, $ec, $04, $80, $20
    db $04, $f4, $80, $70, $f8, $00, $60, $60, $f8, $f8, $60, $41, $06, $f8, $f8, $08
    db $00, $f8, $00, $0a, $00, $ea, $06, $80, $30, $06, $f2, $80, $60, $f8, $f8, $62
    db $40, $f8, $00, $64, $41, $04, $f8, $f8, $08, $00, $f8, $00, $0a, $00, $e8, $08
    db $80, $20, $08, $f0, $80, $71, $06, $f8, $f8, $08, $00, $f8, $00, $0a, $00, $e8
    db $08, $80, $30, $08, $f0, $80, $60, $f8, $00, $60, $20, $f8, $f8, $60, $01, $04
    db $f8, $f8, $08, $00, $f8, $00, $0a, $00, $f8, $00, $62, $20, $f8, $f8, $64, $21
    db $06, $f8, $f8, $08, $00, $f8, $00, $0a, $00, $ec, $f4, $80, $10, $04, $04, $80
    db $40, $f8, $00, $60, $60, $f8, $f8, $60, $41

    ld b, $f8
    ld hl, sp+$08
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    ld [$80f2], a
    nop
    ld b, $06
    add b
    ld d, b
    ld hl, sp-$08
    ld h, d
    ld b, b
    ld hl, sp+$00
    ld h, h
    ld b, c
    inc b
    ld hl, sp-$08
    ld [$f800], sp
    nop
    ld a, [bc]
    nop
    add sp, -$10
    add b
    db $10
    ld [$8008], sp
    ld b, c
    sbc $73
    di
    ld [hl], e
    ld [$4174], sp
    ld [hl], h
    ld a, d
    ld [hl], h
    or e
    ld [hl], h
    db $ec
    ld [hl], h
    ld bc, $1275
    ld [hl], l
    rla
    ld [hl], l
    inc l
    ld [hl], l
    ld b, c
    ld [hl], l
    ld d, [hl]
    ld [hl], l
    ld l, e
    ld [hl], l
    add b
    ld [hl], l
    sub l
    ld [hl], l
    and [hl]
    ld [hl], l
    or a
    ld [hl], l
    call z, $e175
    ld [hl], l
    or $75
    dec bc
    halt
    jr nz, jr_00a_7436

    ld sp, $4676
    halt
    ld e, e
    halt
    ld [hl], b
    halt
    xor c
    halt
    ldh [c], a
    halt
    dec de
    ld [hl], a
    ld d, h
    ld [hl], a
    ld l, l
    ld [hl], a
    add [hl]
    ld [hl], a
    sbc a
    ld [hl], a
    cp b
    ld [hl], a
    pop de
    ld [hl], a
    ld [$0377], a
    ld a, b
    dec b
    ld hl, sp-$08
    stop
    ld hl, sp+$00
    jr nz, jr_00a_73e7

jr_00a_73e7:
    add sp, -$18
    jr nc, jr_00a_73eb

jr_00a_73eb:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    ld bc, $f805
    rst $30
    ld [de], a
    nop
    ld hl, sp-$01
    ld [hl+], a
    nop
    ld hl, sp-$19
    ld a, [hl-]
    nop
    ld hl, sp-$11
    ld c, d
    nop
    ld hl, sp-$21
    ld c, b
    ld bc, $f90e
    rst $30
    inc d
    nop
    ld sp, hl
    rst $38
    inc h
    nop
    ld hl, sp+$10
    jr c, jr_00a_7415

jr_00a_7415:
    add sp, $08
    ld [hl], $00
    add sp, $10
    ld b, [hl]
    nop
    ldh [$fff8], a
    inc [hl]
    nop
    ldh [rP1], a
    ld b, h
    nop
    ld [$3608], sp
    ld b, b
    ld [$4610], sp
    ld b, b
    db $10
    ld hl, sp+$34
    ld b, b
    stop
    ld b, h
    ld b, b
    dec bc

jr_00a_7436:
    push af
    ld c, h
    nop
    ld b, $ef
    inc a
    nop
    ld [bc], a
    db $ec
    ld a, $01
    ld c, $f9
    ld sp, hl
    ld d, $00
    ld sp, hl
    ld bc, $0026
    ld hl, sp+$18
    jr c, jr_00a_744e

jr_00a_744e:
    add sp, $10
    ld [hl], $00
    add sp, $18
    ld b, [hl]
    nop
    ldh [rP1], a
    inc [hl]
    nop
    ldh [$ff08], a
    ld b, h
    nop
    stop
    inc [hl]
    ld b, b
    db $10
    ld [$4044], sp
    ld [$3610], sp
    ld b, b
    ld [$4618], sp
    ld b, b
    rlca
    add hl, bc
    ld c, h
    nop
    ld bc, $3c03
    ld b, b
    ld de, $3efd
    ld bc, $f70e
    ld sp, hl
    jr jr_00a_747f

jr_00a_747f:
    rst $30
    ld bc, $0028
    ld hl, sp+$18
    jr c, jr_00a_7487

jr_00a_7487:
    add sp, $10
    ld [hl], $00
    add sp, $18
    ld b, [hl]
    nop
    ld [$3610], sp
    ld b, b
    ld [$4618], sp
    ld b, b
    ldh [rP1], a
    inc [hl]
    nop
    ldh [$ff08], a
    ld b, h
    nop
    stop
    inc [hl]
    ld b, b
    db $10
    ld [$4044], sp
    xor $06
    ld c, h
    nop
    push af
    inc c
    inc a
    nop
    cp $10
    ld a, $01
    ld c, $f7
    ld hl, sp+$1a
    nop
    rst $30
    nop
    ld a, [hl+]
    nop
    ld hl, sp+$18
    jr c, jr_00a_74c0

jr_00a_74c0:
    add sp, $10
    ld [hl], $00
    add sp, $18
    ld b, [hl]
    nop
    ldh [rP1], a
    inc [hl]
    nop
    ldh [$ff08], a
    ld b, h
    nop
    ld [$3610], sp
    ld b, b
    ld [$4618], sp
    ld b, b
    stop
    inc [hl]
    ld b, b
    db $10
    ld [$4044], sp
    db $eb
    ld hl, sp+$4c
    nop
    db $e3
    ld [bc], a
    inc a
    ld b, b
    push af
    ld a, [bc]
    ld a, $01
    dec b
    ld [$32f8], a
    nop
    ld hl, sp-$08
    ld e, $00
    ld hl, sp+$00
    ld l, $00
    ld [$30e8], a
    nop
    xor $f0
    ld b, b
    ld bc, $da04
    ld hl, sp+$4e
    nop
    ld [$50f8], a
    nop
    ld hl, sp-$08
    inc e
    nop
    ld hl, sp+$00
    inc l
    ld bc, $fe01
    db $fc
    ld d, d
    ld bc, $ea05
    add sp, $30
    db $10
    xor $f0
    ld b, b
    db $10
    ld hl, sp-$08
    ld e, h
    nop
    ld hl, sp+$00
    ld e, d
    nop
    ld [$32f8], a
    ld de, $ed05
    ld hl, sp+$42
    nop
    ld hl, sp-$08
    stop
    ld hl, sp+$00
    jr nz, jr_00a_7539

jr_00a_7539:
    push hl
    add sp, $30
    nop
    jp hl


    ldh a, [rLCDC]
    ld bc, $f805
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$d000], sp
    or $4e
    nop
    ldh [$fff6], a
    ld d, b
    nop
    add sp, -$06
    ld d, h
    ld bc, $f805
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$e800], sp
    ld a, [$0054]
    sub $f9
    ld c, [hl]
    nop
    and $f9
    ld d, b
    ld bc, $f805
    nop
    ld [bc], a
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    add sp, $00
    ld d, h
    nop
    jp nc, Jump_00a_56fb

    nop
    ldh [c], a
    ei
    ld e, b
    ld bc, $f805
    nop
    ld [bc], a

jr_00a_7584:
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    add sp, $00
    ld d, h
    nop
    pop de
    db $fd
    ld d, [hl]
    nop
    pop hl
    db $fd
    ld e, b
    ld bc, $f804
    nop
    inc b
    nop
    ld hl, sp-$08
    inc c
    nop

jr_00a_759e:
    pop de
    rst $38
    ld c, [hl]
    jr nz, jr_00a_7584

    rst $38
    ld d, b
    ld hl, $f804
    nop
    inc b
    nop
    ld hl, sp-$08
    inc c
    nop
    rst $08
    ld bc, $204e
    rst $18
    ld bc, $2150
    dec b
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    ld c, $00
    push de
    ld c, $30
    jr nz, jr_00a_759e

    ld b, $40
    jr nz, @-$21

    cp $42
    ld hl, $f805
    nop
    ld b, $00
    ld hl, sp-$08
    ld c, $00
    push de
    ld [de], a
    jr nc, jr_00a_75f9

    reti


    ld a, [bc]
    ld b, b
    jr nz, @-$21

    ld [bc], a
    ld b, d
    ld hl, $ea05

jr_00a_75e3:
    db $10
    jr nc, jr_00a_7616

    xor $08
    ld b, b
    jr nc, jr_00a_75e3

    nop
    ld e, h
    jr nz, @-$06

    ld hl, sp+$5a
    jr nz, @-$14

    nop
    ld [hl-], a
    ld sp, $0605
    db $10

jr_00a_75f9:
    jr nc, @+$72

    ld [bc], a
    ld [$7040], sp
    ld hl, sp+$00
    ld e, h
    ld h, b
    ld hl, sp-$08
    ld e, d
    ld h, b
    ld b, $00
    ld [hl-], a
    ld [hl], c
    dec b
    ld b, $e8
    jr nc, jr_00a_7660

jr_00a_7610:
    ld [bc], a
    ldh a, [rLCDC]
    ld d, b
    ld hl, sp-$08

jr_00a_7616:
    ld e, h
    ld b, b
    ld hl, sp+$00
    ld e, d
    ld b, b
    ld b, $f8
    ld [hl-], a
    ld d, c
    inc b
    jp c, Jump_00a_4e00

    jr nz, jr_00a_7610

jr_00a_7626:
    nop
    ld d, b
    jr nz, @-$06

    nop
    inc e
    jr nz, jr_00a_7626

    ld hl, sp+$2c
    ld hl, $ea05
    nop
    ld [hl-], a
    jr nz, @-$06

    nop
    ld e, $20
    ld hl, sp-$08
    ld l, $20
    ld [$3010], a
    jr nz, @-$10

    ld [$2140], sp
    dec b
    ld b, $00
    ld [hl-], a
    ld h, b
    ld hl, sp+$00
    ld e, $60
    ld hl, sp-$08
    ld l, $60
    ld b, $10
    jr nc, @+$62

    ld [bc], a
    ld [$6140], sp
    dec b
    ld b, $f8
    ld [hl-], a
    ld b, b

jr_00a_7660:
    ld hl, sp-$08
    ld e, $40
    ld hl, sp+$00
    ld l, $40
    ld b, $e8
    jr nc, jr_00a_76ac

    ld [bc], a
    ldh a, [rLCDC]
    ld b, c
    ld c, $f9
    rst $30
    inc d
    nop
    ld sp, hl
    rst $38
    inc h
    nop
    ld hl, sp+$10
    jr c, jr_00a_768d

    add sp, $08
    ld [hl], $10
    add sp, $10
    ld b, [hl]
    db $10
    ldh [$fff8], a
    inc [hl]
    db $10
    ldh [rP1], a
    ld b, h
    db $10

jr_00a_768d:
    ld [$3608], sp
    ld d, b
    ld [$4610], sp
    ld d, b
    db $10
    ld hl, sp+$34
    ld d, b
    stop
    ld b, h
    ld d, b
    dec bc
    push af
    ld c, h
    db $10
    ld b, $ef
    inc a
    db $10
    ld [bc], a
    db $ec
    ld a, $11
    ld c, $f9
    ld sp, hl

jr_00a_76ac:
    ld d, $00
    ld sp, hl
    ld bc, $0026
    ld hl, sp+$18
    jr c, jr_00a_76c6

    add sp, $10
    ld [hl], $10
    add sp, $18
    ld b, [hl]
    db $10
    ldh [rP1], a
    inc [hl]
    db $10
    ldh [$ff08], a
    ld b, h
    db $10

jr_00a_76c6:
    stop
    inc [hl]
    ld d, b
    db $10
    ld [$5044], sp
    ld [$3610], sp
    ld d, b
    ld [$4618], sp
    ld d, b
    rlca
    add hl, bc
    ld c, h
    db $10
    ld bc, $3c03
    ld d, b
    ld de, $3efd
    ld de, $f70e
    ld sp, hl
    jr jr_00a_76e7

jr_00a_76e7:
    rst $30
    ld bc, $0028
    ld hl, sp+$18
    jr c, jr_00a_76ff

    add sp, $10
    ld [hl], $10
    add sp, $18
    ld b, [hl]
    db $10
    ld [$3610], sp
    ld d, b
    ld [$4618], sp
    ld d, b

jr_00a_76ff:
    ldh [rP1], a
    inc [hl]
    db $10
    ldh [$ff08], a
    ld b, h
    db $10
    stop
    inc [hl]
    ld d, b
    db $10
    ld [$5044], sp
    xor $06
    ld c, h
    db $10
    push af
    inc c
    inc a
    db $10
    cp $10
    ld a, $11
    ld c, $f7
    ld hl, sp+$1a
    nop
    rst $30
    nop
    ld a, [hl+]
    nop
    ld hl, sp+$18
    jr c, jr_00a_7738

    add sp, $10
    ld [hl], $10
    add sp, $18
    ld b, [hl]
    db $10
    ldh [rP1], a
    inc [hl]
    db $10
    ldh [$ff08], a
    ld b, h
    db $10

jr_00a_7738:
    ld [$3610], sp
    ld d, b
    ld [$4618], sp
    ld d, b
    stop
    inc [hl]
    ld d, b
    db $10
    ld [$5044], sp
    db $eb
    ld hl, sp+$4c
    db $10
    db $e3
    ld [bc], a
    inc a
    ld d, b
    push af
    ld a, [bc]
    ld a, $11
    ld b, $f8
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_775d

jr_00a_775d:
    add sp, -$18
    jr nc, jr_00a_7761

jr_00a_7761:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    add sp, -$18
    ld c, h
    ld bc, $f806
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_7776

jr_00a_7776:
    add sp, -$18
    jr nc, jr_00a_777a

jr_00a_777a:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    rst $20
    rst $20
    ld c, h
    ld de, $f806
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_778f

jr_00a_778f:
    add sp, -$18
    jr nc, jr_00a_7793

jr_00a_7793:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    db $e4
    db $e4
    ld c, h
    ld bc, $f806
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_77a8

jr_00a_77a8:
    add sp, -$18
    jr nc, jr_00a_77ac

jr_00a_77ac:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    ldh [c], a
    ldh [c], a
    ld c, h
    ld de, $f806
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_77c1

jr_00a_77c1:
    add sp, -$18
    jr nc, jr_00a_77c5

jr_00a_77c5:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    pop hl
    ldh [$ff3c], a
    ld bc, $f806
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_77da

jr_00a_77da:
    add sp, -$18
    jr nc, jr_00a_77de

jr_00a_77de:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    rst $18
    sbc $3c
    ld de, $f806
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_77f3

jr_00a_77f3:
    add sp, -$18
    jr nc, jr_00a_77f7

jr_00a_77f7:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    sbc $dc
    ld a, $01
    ld b, $f8
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    jr nz, jr_00a_780c

jr_00a_780c:
    add sp, -$18
    jr nc, jr_00a_7810

jr_00a_7810:
    db $ec
    ldh a, [rLCDC]
    nop
    add sp, -$08
    ld [hl-], a
    nop
    call c, Call_000_3eda
    db $11

    db $01, $04, $01, $01, $01, $2d, $4b, $7a, $0a, $3e, $7e, $0a

    nop
    nop
    nop

    db $00, $00, $69, $27, $00, $00, $07, $86, $00, $03, $05, $11, $12, $00, $2c, $00
    db $00, $62, $04, $85, $00, $09, $03, $07, $19, $18, $12, $22, $00, $63, $0c, $86
    db $00, $04, $01, $19, $1a, $22, $00, $63, $14, $8b, $00, $04, $03, $50, $1d, $1e
    db $08, $87, $00, $0b, $00, $25, $22, $00, $03, $40, $41, $11, $12, $85, $00, $04
    db $02, $02, $02, $03, $23, $01, $02, $0b, $02, $1b, $85, $00, $04, $01, $0a, $0a
    db $23, $09, $83, $00, $71, $85, $00, $04, $00, $21, $83, $00, $33, $83, $00, $31
    db $00, $25, $25, $00, $00, $1a, $25, $00, $00, $2d, $88, $00, $02, $00, $2c, $24
    db $00, $86, $00, $59, $05, $00, $07, $01, $01, $0b, $03, $84, $00, $66, $00, $01
    db $85, $00, $04, $01, $09, $09, $86, $00, $73, $00, $0a, $86, $00, $04, $01, $11
    db $47, $84, $00, $84, $01, $2b, $19, $85, $00, $04, $02, $4a, $59, $1a, $83, $00
    db $4a, $02, $28, $29, $4c, $85, $00, $04, $01, $52, $61, $84, $00, $5a, $02, $30
    db $31, $54, $85, $00, $04, $00, $0b, $86, $00, $61, $01, $01, $01, $87, $00, $6b
    db $c7, $00, $c8, $87, $00, $1b, $01, $10, $1a, $2c, $00, $84, $00, $32, $02, $08
    db $00, $24, $86, $00, $03, $00, $2b, $27, $00, $86, $00, $ea, $01, $01, $0b, $85
    db $01, $04, $01, $0b, $02, $86, $00, $bb, $86, $01, $12, $88, $00, $c9, $00, $48
    db $83, $00, $33, $02, $24, $11, $12, $86, $00, $da, $00, $08, $85, $01, $41, $02
    db $19, $18, $12, $87, $00, $04, $00, $37, $c4, $01, $85, $01, $19, $1a, $87, $00
    db $ab, $25, $01, $01, $0b, $03, $8b, $00, $bb, $02, $09, $09, $0a, $86, $00, $ca
    db $01, $36, $37, $24, $00, $02, $37, $19, $2e, $26, $00, $02, $36, $3f, $00, $84
    db $00, $e5, $00, $44, $86, $01, $7b, $02, $46, $12, $3e, $83, $00, $f5, $01, $51
    db $3e, $f0, $26, $00, $fb, $00, $26, $84, $01, $23, $00, $3f, $87, $00, $02, $02
    db $11, $2f, $1a, $c3, $01, $d2, $00, $36, $87, $00, $59, $00, $19, $84, $00, $e3
    db $02, $00, $11, $2e, $8d, $01, $9a, $01, $13, $02, $8d, $01, $aa, $00, $0a, $87
    db $01, $b9, $01, $50, $39, $85, $01, $2d, $00, $2e, $a5, $00, $4a, $02, $00, $40
    db $41, $83, $01, $93, $03, $08, $11, $10, $10, $86, $00, $04, $00, $3e, $85, $02
    db $34, $01, $26, $2e, $8b, $00, $04, $01, $19, $27, $87, $02, $39, $09, $08, $11
    db $12, $36, $00, $00, $11, $2f, $10, $12, $87, $02, $1b, $06, $10, $12, $00, $37
    db $19, $10, $2f, $86, $01, $9a, $06, $27, $10, $2e, $10, $12, $11, $12, $86, $01
    db $99, $07, $00, $07, $10, $2f, $1a, $19, $26, $2f, $88, $01, $24, $05, $07, $19
    db $1a, $00, $00, $19, $89, $02, $14, $01, $07, $37, $86, $02, $27, $00, $08, $c5
    db $00, $a8, $02, $07, $28, $29, $85, $00, $31, $00, $11, $86, $01, $ca, $01, $30
    db $31, $c4, $01, $96, $01, $11, $26, $86, $02, $6a, $00, $00, $41, $11, $12, $02
    db $00, $00, $19, $c7, $01, $33, $05, $11, $26, $2f, $2e, $2f, $12, $29, $00, $01
    db $10, $2f, $23, $10, $02, $12, $00, $3e, $30, $00, $00, $68, $e4, $a3, $00, $ff
    db $ee, $7b, $0a, $ff, $03, $80, $80, $26, $40, $23, $80, $e0, $26, $05, $02, $02
    db $20, $80, $08, $28, $48, $26, $20, $40, $22, $80, $0a, $2a, $4a, $24, $22, $26
    db $26, $80, $0c, $2c, $80, $44, $46, $36, $2d, $58, $4c, $41, $26, $80, $80, $26
    db $0e, $2e, $4e, $42, $41, $26, $80, $03, $05, $80, $80, $32, $83, $00, $32, $0e
    db $16, $05, $16, $31, $80, $80, $16, $20, $40, $22, $41, $20, $40, $22, $42, $42
    db $20, $40, $07, $05, $41, $22, $3d, $22, $35, $22, $55, $25, $26, $0b, $20, $40
    db $26, $3d, $26, $35, $26, $55, $26, $1d, $31, $26, $e4, $96, $80, $01, $26, $50
    db $23, $80, $13, $15, $12, $12, $30, $80, $18, $38, $80, $26, $30, $50, $26, $17
    db $1a, $3a, $80, $34, $26, $52, $52, $23, $80, $12, $54, $56, $3c, $1c, $5a, $5c
    db $26, $26, $80, $80, $41, $1e, $3e, $5e, $26, $26, $06, $15, $80, $c4, $01, $07
    db $03, $15, $80, $06, $80, $83, $00, $69, $09, $06, $80, $30, $50, $41, $52, $30
    db $50, $42, $52, $42, $30, $50, $07, $15, $15, $37, $52, $25, $52, $45, $52, $25
    db $26, $0a, $30, $50, $37, $26, $25, $26, $45, $26, $0d, $26, $26, $f0, $96, $00
    db $69, $1a, $01, $00, $00, $80, $07, $27, $80, $06, $03, $04, $00, $80, $09, $29
    db $49, $26, $21, $26, $00, $80, $0b, $2b, $4b, $25, $23, $43, $00, $83, $01, $31
    db $0f, $45, $47, $37, $0d, $59, $4d, $26, $26, $80, $15, $42, $0f, $2f, $4f, $26
    db $26, $84, $01, $38, $05, $15, $80, $80, $06, $15, $80, $c4, $01, $40, $11, $80
    db $80, $21, $41, $23, $43, $21, $42, $23, $43, $21, $3c, $21, $34, $21, $54, $06
    db $06, $42, $23, $43, $07, $26, $3c, $26, $34, $26, $54, $21, $1c, $26, $26, $f0
    db $98, $01, $66, $02, $11, $10, $10, $23, $80, $13, $16, $13, $14, $10, $80, $19
    db $39, $80, $26, $26, $51, $10, $80, $1b, $3b, $80, $35, $33, $53, $10, $c3, $00
    db $08, $0f, $55, $57, $3d, $1d, $5b, $5d, $26, $41, $05, $80, $26, $1f, $3f, $5f
    db $26, $42, $83, $00, $3a, $83, $00, $33, $83, $00, $69, $c3, $00, $41, $11, $80
    db $80, $41, $51, $33, $53, $42, $51, $33, $53, $36, $51, $24, $51, $44, $51, $42
    db $16, $42, $33, $53, $07, $36, $26, $24, $26, $44, $26, $2d, $51, $28, $26, $00
    db $31, $e4, $94, $80, $28, $00, $01, $03, $03, $e4, $5c, $00, $01, $fd, $fe, $e4
    db $94, $00, $ff, $63, $05

    rst $38
    jr @-$23

    ld h, [hl]
    rst $38
    add c

    db $43

    rst $38
    nop

    db $01

    ld a, [hl]
    add c

    db $22

    db $18

    db $8c, $00, $03, $03

    sbc c
    ld h, [hl]
    rst $20
    db $18

    db $45

    rst $38
    nop

    db $07

    cp a
    ld b, b
    rra
    ldh [rIF], a
    ldh a, [$ff03]
    db $fc

    db $c4, $00, $07, $02

    ld a, [hl]
    jr @+$1a

    db $8b, $00, $30, $08

    rst $20
    ld a, [hl]
    rst $38
    jr @+$09

    nop
    rra
    nop
    ccf

    db $41

    nop
    ld a, a

    db $42

    nop
    rst $38

    db $00

    nop

    db $ce, $00, $5e, $28

    nop

    db $0e

    jr jr_00a_7c36

jr_00a_7c36:
    jr c, jr_00a_7c38

jr_00a_7c38:
    ld a, h
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld e, $00
    inc c

    db $26

    nop

    db $04

    ld bc, $0300
    nop
    rlca

    db $45

jr_00a_7c4c:
    nop
    rrca

    db $43

    nop
    adc a

    db $ce, $00, $97, $c3, $00, $86, $04

    inc a
    nop
    ld a, h
    nop
    db $f8

    db $a4, $00, $83, $00

    db $10

    db $2a

    nop

    db $01

    ldh [$ff1f], a

    db $41

    ldh a, [rIF]

    db $41

    ldh [$ff1f], a

    db $04

    pop bc
    ld a, $c7
    jr c, @+$01

    db $86, $00, $89, $83, $00, $8e, $00

    rra

    db $84, $00, $a9, $83, $00, $92, $00

    db $0e

    db $88, $00, $85, $01

    nop
    nop

    db $8d, $00, $00, $01

    inc a
    db $c3

    db $8d, $00, $10, $03

    inc a
    jp $3cc3


    db $47

    rst $38
    nop

    db $05

    rst $30
    ld [$1fe0], sp
    add b
    ld a, a

    db $87, $00, $38, $87, $01, $30, $f4, $27, $00, $48, $43

    rra
    nop

    db $00

    inc e

    db $2c

    nop

    db $85, $00, $52, $00

    rst $38

    db $a6, $00, $e9, $02

    ret nz

    nop
    add a

    db $c4, $00, $ed, $a3, $00, $be, $02

    inc e
    nop
    inc e

    db $ac, $00, $89, $00

    rst $38

    db $c5, $01, $8d, $89, $00, $f7, $00

    nop

    db $41

    ld a, a
    add b

    db $41

jr_00a_7cd9:
    ccf
    ret nz

    db $41

    db $01
    db $fe

    db $01

    inc bc
    db $fc

    db $f4, $2f, $00, $d0, $8b, $00, $8a, $02

    rra
    nop
    ccf

    db $83, $00, $53, $8c, $00, $55, $df, $02, $1e, $89, $01, $62, $00

    db $e0

    db $a6, $01, $97, $a3, $00, $9e, $00

    di

    db $4b

    nop
    rst $38

    db $a6, $01, $81, $00

    db $f8

    db $a5, $00, $a7, $a8, $00, $6d, $86, $01, $58, $88, $00, $a9, $00

    db $f0

    db $86, $01, $51, $00

    db $3e

    db $44

    nop
    db $1e

    db $01

    nop
    db $3e

    db $84, $00, $7b, $06

    ld hl, sp+$00
    pop af
    nop
    db $e3
    nop
    rst $00

    db $88, $00, $ad, $02

    jr c, jr_00a_7d34

jr_00a_7d34:
    db $38

    db $a3, $02, $9f, $c3, $02, $77, $b4, $01, $bb, $87, $00, $e2, $00

    inc bc

    db $88, $00, $65, $00

    rrca

    db $86, $01, $97, $00

    db $3e

    db $a4, $01, $77, $02

    rrca
    nop
    ld a, a

    db $8f, $02, $63, $02

    jr jr_00a_7d5a

jr_00a_7d5a:
    db $1e

    db $c6, $00, $bd, $00

    db $10

    db $8e, $03, $0f, $d1, $03, $11, $f4, $24, $02, $3f, $85, $02, $d2, $83, $00, $d0
    db $c5, $01, $d9, $06

    pop af
    ld c, $f3
    inc c
    rst $38
    nop
    rst $38

    db $ce, $02, $43, $00

jr_00a_7d7f:
    add e

    db $ac, $02, $05, $00

    ld a, h

    db $49

    nop
    inc a

    db $c8, $03, $99, $00

    pop af

    db $a7, $00, $ab, $f4, $20, $03, $5f, $f4, $2f, $02, $e0, $0d

    rst $38
    nop
    rst $20
    jr jr_00a_7d7f

    ld e, $83
    ld a, h
    jp $e13c


    ld e, $ef
    db $10

    db $84, $04, $0e, $09

    nop
    pop hl
    nop
    add e
    nop
    jp $e100


    nop
    rst $28

    db $d2, $04, $11, $00

    rst $38

    db $a8, $02, $29, $00

    add b

    db $aa, $00, $8d, $00

    db $e0

    db $a4, $03, $87, $00

    rst $00

    db $88, $00, $25, $02

    add $00
    ret nz

    db $ce, $04, $59, $00

    adc [hl]

    db $86, $00, $07, $00

    ld b, b

    db $86, $02, $49, $02

    ldh [rP1], a
    add b

    db $2c

    nop

    db $00

    rlca

    db $41

    nop
    ccf

    db $01

    nop
    ccf

    db $32

    nop

    db $02

    ld b, b
    nop
    db $f0

    db $84, $01, $53, $05

    ld a, h
    nop
    jr c, jr_00a_7df9

jr_00a_7df9:
    stop

    db $f4, $20, $03, $df, $24

    nop

    db $02

    add hl, sp
    nop
    ccf

    db $ce, $02, $f9, $00

    ld [hl], c

    db $f4, $48, $01, $f9, $bf, $04, $42, $00

    sbc a

    db $88, $01, $6f, $00

    rlca

    db $83, $00, $8d, $01

    nop
    rrca

    db $cc, $05, $6b, $f4, $26, $01, $df, $97, $01, $e6, $f4, $22, $04, $bf, $00

    ld h, b

    db $43

    nop
    db $e0

    db $01

    nop
    db $f8

    db $c5, $04, $b9, $c9, $05, $eb, $e4, $32

    nop

    db $ff, $13, $14, $16, $00, $2e, $15, $01, $ff, $03, $03, $01, $00, $ff, $60, $60
    db $60, $70, $50, $60, $70, $50, $a0, $f0, $a8, $f8, $40, $30, $68, $69, $4f, $01
    db $86, $6a, $05

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
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
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_00a_7f4f

jr_00a_7f4f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    nop
    nop
    jr nz, jr_00a_7f89

    nop

jr_00a_7f89:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fd
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    nop
