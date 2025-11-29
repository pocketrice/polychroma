; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    INCBIN "gfx/image_009_4000.2bpp"

    INCBIN "gfx/image_009_4400.2bpp"

    db $00, $00, $80, $00, $a0, $c0, $d0, $e0, $f0, $60, $e8, $b0, $f8, $b0, $f8, $f0
    db $f8, $f0, $f8, $f0, $e8, $f0, $f0, $e0, $d0, $e0, $a0, $c0, $80, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $d0, $e0, $f4, $78
    db $3d, $7e, $df, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $ff, $ff, $ff, $fd, $fe
    db $f4, $f8, $d0, $e0, $40, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $f0, $7c
    db $5e, $3f, $1f, $8f, $0b, $e7, $c1, $3f, $77, $0f, $e7, $1f, $0f, $ff, $0f, $ff
    db $07, $ff, $03, $ff, $3f, $ff, $c1, $3f, $0f, $ff, $00, $ff, $c7, $3f, $1f, $8f
    db $3d, $1c, $23, $61, $07, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $02, $01, $01, $00, $00, $00, $00, $00, $07, $00, $1f, $00, $e0, $1f
    db $30, $0f, $0c, $03, $03, $00, $00, $00, $01, $00, $02, $01, $04, $03, $0f, $00
    db $00, $00, $80, $80, $a0, $60, $d0, $30, $f0, $90, $e8, $58, $f8, $48, $f8, $08
    db $f8, $08, $f8, $08, $e8, $18, $f0, $10, $d0, $30, $a0, $60, $80, $80, $00, $00
    db $03, $03, $0d, $0e, $1f, $18, $1f, $10, $2f, $30, $7f, $60, $7f, $40, $bf, $c0
    db $bf, $c0, $bf, $c0, $4f, $78, $33, $3c, $3c, $3f, $47, $7f, $41, $7f, $3e, $3e
    db $07, $07, $1b, $1c, $3f, $30, $3f, $20, $3f, $20, $7f, $40, $7f, $40, $7f, $60
    db $7e, $61, $ef, $f1, $b1, $ff, $9f, $fe, $8b, $fc, $4f, $7f, $30, $30, $00, $00
    db $00, $00, $07, $07, $0b, $0c, $1f, $10, $3f, $30, $7f, $40, $bf, $c0, $ff, $80
    db $ff, $80, $bf, $c0, $7f, $48, $3f, $30, $1b, $1c, $17, $1f, $08, $0f, $07, $07
    db $07, $07, $0b, $0c, $3f, $30, $77, $48, $bf, $c0, $ff, $80, $bf, $c0, $9f, $e0
    db $67, $78, $2f, $30, $3f, $30, $57, $78, $4d, $7e, $23, $3f, $11, $1f, $0e, $0e
    db $00, $00, $fe, $01, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $7e, $81, $00, $00
    db $00, $00, $e0, $ff, $0f, $f0, $fb, $fc, $1f, $e0, $cf, $f0, $7f, $80, $ff, $00
    db $3f, $c0, $0f, $f0, $80, $ff, $3f, $c0, $e7, $f8, $81, $fe, $f8, $ff, $00, $00
    db $00, $00, $0f, $0f, $01, $01, $ff, $ff, $e0, $ff, $3f, $3f, $fe, $ff, $f9, $fe
    db $c0, $ff, $fc, $ff, $3f, $3f, $07, $07, $00, $00, $01, $01, $07, $07, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $00, $00, $03, $03, $7f, $7f
    db $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $07, $07, $0b, $0c, $0f, $08, $7f, $78, $97, $f8, $af, $f0, $bf, $e0, $bf, $e0
    db $bf, $e0, $6f, $70, $3f, $30, $17, $18, $1b, $1c, $16, $1f, $11, $1f, $0e, $0e
    db $c0, $c0, $70, $f0, $ec, $5c, $fa, $46, $7e, $82, $fd, $03, $ff, $01, $ff, $21
    db $ff, $29, $fd, $4b, $fe, $12, $fd, $83, $f3, $0d, $d6, $3a, $ec, $ec, $00, $00
    db $00, $00, $3c, $3c, $5a, $66, $fd, $c3, $ff, $01, $f2, $0e, $fe, $02, $fe, $02
    db $fe, $02, $fe, $02, $fe, $02, $f6, $0e, $fe, $0e, $d9, $3f, $61, $ff, $df, $df
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $0d, $0e, $17, $18, $2f, $30
    db $3f, $20, $3f, $20, $7f, $60, $bf, $e0, $9f, $f0, $97, $f8, $4b, $7c, $37, $37
    db $03, $03, $0d, $0e, $16, $19, $1b, $17, $2f, $37, $3f, $2f, $39, $3e, $57, $78
    db $57, $78, $39, $3e, $3f, $2f, $2f, $37, $1b, $17, $16, $19, $0d, $0e, $03, $03
    db $f0, $f0, $a0, $60, $e0, $e0, $e0, $e0, $f0, $f0, $20, $e0, $e0, $20, $ff, $3f
    db $ff, $3f, $e0, $20, $20, $e0, $f0, $f0, $e0, $e0, $e0, $e0, $a0, $60, $f0, $f0
    db $80, $80, $70, $f0, $f8, $58, $b8, $48, $fc, $14, $fc, $14, $fc, $14, $fa, $06
    db $fe, $02, $fe, $0a, $fa, $06, $f4, $0c, $dc, $3c, $e2, $fe, $42, $7e, $3c, $3c
    db $1f, $1f, $2b, $36, $5d, $62, $7f, $40, $7f, $40, $5f, $60, $2f, $30, $3f, $20
    db $3f, $20, $3f, $20, $2f, $30, $17, $18, $19, $1e, $27, $3f, $41, $7f, $3e, $3e
    db $03, $03, $07, $04, $0f, $08, $0f, $08, $13, $1c, $2f, $30, $3f, $20, $3f, $20
    db $7f, $60, $af, $f0, $9f, $f0, $9b, $fc, $96, $f7, $61, $61, $00, $00, $00, $00
    db $0e, $0e, $1d, $13, $3e, $21, $3e, $21, $2f, $30, $5f, $60, $7f, $40, $7f, $40
    db $7f, $40, $5f, $60, $2f, $30, $37, $38, $1d, $1e, $13, $1f, $08, $0f, $07, $07
    db $3b, $3b, $75, $4e, $fb, $84, $ff, $80, $bf, $c0, $5f, $60, $7f, $40, $7f, $40
    db $7f, $60, $2f, $30, $3f, $30, $57, $78, $4d, $7e, $23, $3f, $11, $1f, $0e, $0e
    db $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0, $d8, $38, $f4, $0c, $fe, $06
    db $fd, $03, $ff, $01, $ff, $01, $d5, $3b, $ee, $1e, $d9, $3f, $61, $ff, $9e, $9e
    db $00, $00, $00, $00, $0d, $0d, $13, $1f, $1f, $1f, $3a, $3d, $7f, $58, $7f, $58
    db $bf, $f8, $fb, $bc, $fb, $bc, $fd, $bf, $fe, $be, $9c, $fc, $70, $70, $40, $40
    db $00, $00, $00, $00, $e0, $e0, $58, $b8, $d4, $ec, $fe, $f2, $fd, $7b, $f9, $3f
    db $ff, $1f, $d8, $38, $60, $e0, $c0, $c0, $60, $60, $60, $60, $30, $30, $30, $30
    db $00, $00, $01, $01, $0e, $0f, $37, $3b, $5e, $67, $6d, $5e, $bd, $de, $df, $bc
    db $fb, $bc, $bb, $fc, $ff, $ff, $89, $89, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $03, $0f, $0f, $13, $1e, $27, $3e, $25, $3e, $2d, $3e, $2d, $3e, $2d, $3e
    db $2d, $3e, $15, $1e, $15, $1e, $0d, $0f, $0b, $0f, $05, $05, $01, $01, $01, $01
    db $01, $01, $03, $02, $05, $07, $0b, $0e, $0f, $0a, $15, $1e, $1f, $14, $1f, $14
    db $15, $1e, $17, $1e, $0b, $0e, $07, $07, $0e, $0d, $0b, $0e, $06, $07, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01
    db $0e, $0f, $35, $3b, $4f, $7e, $ff, $b0, $5f, $6f, $3f, $30, $0e, $0f, $01, $01
    db $00, $00, $0f, $0f, $35, $3b, $cc, $fc, $63, $9f, $de, $fe, $4f, $bf, $fc, $fc
    db $f2, $0e, $ff, $ff, $1e, $fe, $9e, $e6, $61, $7f, $1f, $1f, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $07, $06, $0d, $0b, $1e, $17
    db $3f, $2c, $2f, $38, $57, $79, $7b, $77, $bd, $de, $7b, $4f, $ac, $fc, $d0, $d0

    ldh [$ffe0], a
    ret nc

    jr nc, jr_009_493d

    ret z

    call c, $ee24
    ld [de], a
    ldh a, [c]
    ld c, $f9
    rlca
    ld sp, hl
    daa

jr_009_4910:
    ld sp, hl
    ld b, a
    di
    rrca
    rst $20
    rra
    rrca
    rst $38
    ld e, $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$ffe0], a
    rlca
    rlca
    rrca
    inc c
    inc e
    rra
    dec sp
    inc a
    ld [hl], a
    ld a, b
    ld c, a
    ld [hl], b
    rst $08
    ldh a, [$ffcf]
    db $f4
    rst $08
    ldh a, [c]
    rst $00
    ld hl, sp-$1d
    db $fc
    ldh a, [rIE]
    ld a, b
    ld a, a
    ccf
    ccf
    rra

jr_009_493d:
    rra
    rlca
    rlca
    nop
    nop
    ldh [$ffe0], a
    ldh a, [$fff0]
    jr c, jr_009_4910

    call c, $ea24
    ld d, $f6
    ld a, [bc]
    or $0a
    ldh a, [c]
    ld l, [hl]
    ldh a, [c]
    ld c, $e2
    ld e, $c6
    ld a, $0e
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    nop
    nop
    rra
    rra
    ccf
    ccf
    ld [hl], b
    ld a, a
    db $e3
    db $fc
    rst $00
    ld sp, hl
    rst $08
    pop af
    rst $08
    ldh a, [$ffcf]
    ldh a, [$ffc7]
    ld hl, sp+$63
    ld a, h
    ld [hl], c
    ld a, [hl]
    jr c, jr_009_49b9

    rra
    rra
    rrca
    rrca

jr_009_497e:
    inc bc
    inc bc
    ret nz

    ret nz

    ldh a, [$fff0]
    jr jr_009_497e

    inc e
    db $fc
    xor $1e
    rst $30
    adc a
    ei
    dec b
    ei
    dec b
    ei
    dec b
    ei
    dec b
    push af
    adc e
    xor $12
    call c, Call_000_1824
    add sp, $30
    ldh a, [$ffc0]
    ret nz

    rrca
    rrca
    rra
    rra
    inc a
    ccf
    ld a, b
    ld a, a
    ld [hl], c
    ld a, [hl]
    db $e3
    db $fc
    rst $20
    ld sp, hl
    rst $20
    ld hl, sp-$19
    ld hl, sp-$19
    ld sp, hl
    rst $20
    ld hl, sp+$73
    ld a, h
    ld a, c

jr_009_49b9:
    ld a, [hl]
    inc a
    ccf
    ld e, $1f
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld c, $1f
    jr @+$21

    db $10
    cpl
    jr nc, jr_009_4a6a

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld c, a
    ld a, b
    inc sp
    inc a
    inc a
    ccf
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e
    rlca
    rlca
    dec de
    inc e
    ccf
    jr nc, @+$41

    jr nz, jr_009_4a48

    jr nz, jr_009_4a8a

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, [hl]
    ld h, c
    rst $28
    pop af
    or c
    rst $38
    sbc a
    cp $8b
    db $fc
    ld c, a
    ld a, a
    jr nc, jr_009_4a4e

    nop
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nc, jr_009_4aaa

    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld c, b
    ccf
    jr nc, @+$1d

    inc e
    rla
    rra
    ld [$070f], sp
    rlca
    rlca
    rlca
    dec bc
    inc c
    ccf
    jr nc, jr_009_4abe

    ld c, b

jr_009_4a48:
    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

jr_009_4a4e:
    sbc a
    ldh [$ff67], a
    ld a, b
    cpl
    jr nc, jr_009_4a94

    jr nc, jr_009_4aae

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $c0
    ret nz

    or b
    ld [hl], b
    add sp, $18
    cp $4e
    rst $30
    xor l

jr_009_4a6a:
    rst $38
    and l
    push af
    rrca
    ld a, [$e90e]
    ld e, a
    pop af
    rra
    pop af
    rra
    jp nc, $bc3e

    ld a, h
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    dec sp
    dec sp
    ld [hl], l
    ld c, [hl]
    ei
    add h
    rst $38
    add c
    cp a
    ret nz

jr_009_4a8a:
    ld e, a
    ld h, b
    ld a, h
    ld b, e
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld a, a
    ld h, b

jr_009_4a94:
    cpl
    jr nc, @+$59

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld e, $1e
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $38
    ret c

    jr z, @-$02

    inc d

jr_009_4aaa:
    db $fc
    inc d
    db $fc
    inc d

jr_009_4aae:
    ld a, [$fa06]
    ld b, $fa
    ld d, $fa
    ld b, $f4
    inc c
    call c, $e23c
    cp $41
    ld a, a

jr_009_4abe:
    ld a, $3e
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    inc c
    inc de
    inc e
    dec l
    ld [hl-], a
    ccf
    jr nz, jr_009_4b4e

    ld h, b
    cp a
    ldh [$ffaf], a
    ldh a, [$ff9f]
    ldh a, [$ff9b]
    db $fc
    and [hl]
    rst $20
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $aadc
    halt
    db $dd
    inc hl
    rst $38
    ld bc, $03fd
    ldh a, [c]
    ld c, $fe
    ld [bc], a
    cp $02
    or $0e
    cp $0e
    reti


    ccf
    pop hl
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_009_4b8c

    ld [hl], b
    sub a
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp+$4f
    ld a, b
    inc sp
    inc a
    dec c
    ld c, $03
    inc bc
    nop
    nop
    ld [$1408], sp
    inc e
    ld a, $22
    ld a, a
    ld b, c
    rst $38
    add c
    cp a
    pop bc
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, d
    db $fc
    adc h
    ldh a, [$fff0]
    nop
    nop
    nop
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
    dec c
    ld c, $1f
    jr @+$21

    db $10
    cpl
    jr nc, @+$81

    ld h, b
    ld a, a
    ld b, b

jr_009_4b4e:
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld c, a
    ld a, b
    inc sp
    inc a
    inc a
    ccf
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e
    rlca
    rlca
    dec de
    inc e
    ccf
    jr nc, @+$41

    jr nz, jr_009_4ba8

    jr nz, jr_009_4bea

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, [hl]
    ld h, c
    rst $28
    pop af
    or c
    rst $38
    sbc a
    cp $8b
    db $fc
    ld c, a
    ld a, a
    jr nc, jr_009_4bae

    nop
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nc, jr_009_4c0a

    ld b, b

jr_009_4b8c:
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld c, b
    ccf
    jr nc, @+$1d

    inc e
    rla
    rra
    ld [$070f], sp
    rlca
    rlca
    rlca
    dec bc
    inc c
    ccf
    jr nc, @+$79

    ld c, b

jr_009_4ba8:
    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

jr_009_4bae:
    sbc a
    ldh [$ff67], a
    ld a, b
    cpl
    jr nc, jr_009_4bf4

    jr nc, jr_009_4c0e

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $00
    nop
    nop
    nop
    sbc [hl]
    rst $38
    ld e, a
    ld h, b
    scf
    jr c, jr_009_4bd9

    rrca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_4bd9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$32

    ld hl, sp-$38
    ld a, h
    add h
    cp $02
    db $fd
    inc bc

jr_009_4bea:
    or $0e
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_4bf4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    inc c
    inc c

jr_009_4c0a:
    dec bc
    rrca
    inc b
    rlca

jr_009_4c0e:
    dec b
    ld b, $c2
    jp $7979


    daa
    ccf
    ld de, $0b1f
    rrca
    rlca
    rlca
    add hl, de
    ld e, $e7
    ld hl, sp+$18
    rra
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    ld de, $271f
    ccf
    ld a, c
    ld a, c
    jp nz, Jump_000_05c3

    ld b, $04
    rlca
    dec bc
    rrca
    inc c
    inc c
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld sp, $2931
    add hl, sp
    ld h, $3f
    or e
    cp [hl]
    ld [hl], e
    cp $99
    ld a, [hl]
    ld h, c
    sbc [hl]
    ld a, e
    add h
    cp a
    ret nz

    xor a
    ret nc

    sbc a
    ldh [$ff9f], a
    ld h, b
    cp a
    ld b, b
    ccf
    ret nz

    inc a
    jp $c0bf


    sbc a
    ldh [$ff8f], a
    ldh a, [rSCX]
    cp h
    ld h, b
    sbc a
    sbc c
    ld a, [hl]
    ld a, l
    cp $bd
    cp [hl]
    inc [hl]
    scf
    ld d, d
    ld [hl], e
    ld h, d
    ld h, e
    ld b, c
    ld b, c
    pop bc
    pop bc
    add c
    add c
    add c
    add c
    add e
    add e
    add d
    add d
    ld b, [hl]
    add $4a
    adc $ac
    ld l, h
    or l
    ld a, l
    and [hl]
    ld a, a
    reti


    ld a, $c6
    add hl, sp
    ld e, $e1
    db $ed
    inc de
    db $fd
    inc bc
    db $fd

jr_009_4c9b:
    inc bc
    db $fc
    sub e
    rst $38
    ld d, b
    rst $38
    ld d, b
    ldh a, [c]
    dec c
    db $fd
    ld [hl], e
    db $fd
    inc bc
    ld sp, hl
    rlca
    ldh [c], a
    dec e
    ld b, $f9
    add hl, sp
    cp $7e
    rst $38
    ld a, l
    db $fd
    ld h, h
    db $fc
    sub h
    sbc h
    adc h
    adc h
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3008], sp
    jr nc, jr_009_4c9b

    ldh a, [rNR41]
    ldh [$ffa0], a
    ld h, b
    ld b, e
    jp $9e9e


    db $e4
    db $fc
    adc b
    ld hl, sp-$70
    ldh a, [$ffe0]
    ldh [$ffe0], a
    ldh [rNR23], a
    ld hl, sp+$03
    inc bc
    dec c
    ld c, $1f
    jr @+$21

    db $10
    cpl
    jr nc, @+$81

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld c, a
    ld a, b
    inc sp
    inc a
    inc a
    ccf
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e
    rlca
    rlca
    dec de
    inc e
    ccf
    jr nc, @+$41

    jr nz, jr_009_4d48

    jr nz, jr_009_4d8a

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, [hl]
    ld h, c
    rst $28
    pop af
    or c
    rst $38
    sbc a
    cp $8b
    db $fc
    ld c, a
    ld a, a
    jr nc, jr_009_4d4e

    nop
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nc, jr_009_4daa

    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld c, b
    ccf
    jr nc, @+$1d

    inc e
    rla
    rra
    ld [$070f], sp
    rlca
    rlca
    rlca
    dec bc
    inc c
    ccf
    jr nc, @+$79

    ld c, b

jr_009_4d48:
    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

jr_009_4d4e:
    sbc a
    ldh [$ff67], a
    ld a, b
    cpl
    jr nc, jr_009_4d94

    jr nc, jr_009_4dae

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf

jr_009_4d5c:
    ld de, $0e1f
    ld c, $e7
    rra
    jr jr_009_4d5c

    ldh [$ffe0], a
    ret nc

    ldh a, [$ff88]
    ld hl, sp-$1c
    db $fc
    sbc [hl]
    sbc [hl]
    ld b, e
    jp Jump_009_60a0


    jr nz, @-$1e

    ret nc

    ldh a, [$ff30]
    jr nc, @+$0a

    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $2101
    ld hl, $1010
    jr jr_009_4da0

    inc c
    inc c

jr_009_4d8a:
    ld b, $06
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop

jr_009_4d94:
    nop
    nop
    ld bc, $e001
    ldh [$ff38], a
    jr c, @+$21

    rra
    inc b
    rlca

jr_009_4da0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_4daa:
    nop
    nop
    nop
    nop

jr_009_4dae:
    ld c, $0e
    ld de, $161f
    add hl, de
    rla
    jr jr_009_4dc2

    inc c
    ld a, [bc]
    dec c
    add hl, bc
    ld c, $31
    ld a, $5b
    ld h, h
    nop
    nop

jr_009_4dc2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_009_4e04

    ld d, h
    ld l, h
    ld d, h
    ld l, h
    cp e
    rst $00
    ld a, a
    add b
    rst $08

jr_009_4dd5:
    jr nc, jr_009_4dd5

    ld bc, $00ff
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $ff00


    ret


    rst $30
    ld a, [hl+]
    ld [hl], $22
    ld a, $1c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld b, h
    ld b, e
    ld a, h

jr_009_4e04:
    ld sp, $093e
    ld c, $0e
    add hl, bc
    rla
    jr jr_009_4e24

    jr jr_009_4e20

    rra
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_4e20:
    nop
    nop
    nop
    nop

jr_009_4e24:
    inc bc
    inc bc
    inc c
    rrca
    rla
    jr jr_009_4e5a

    jr nc, @+$61

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add c
    ld sp, hl
    add [hl]
    xor a
    ret nc

    ld [hl], a
    ld a, b
    ld c, l
    ld a, [hl]
    add d

jr_009_4e3d:
    rst $38
    db $fd
    db $fd
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ret c

    jr c, jr_009_4e3d

    inc c
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld bc, $89ff
    ei
    ld d, l
    db $fd
    inc bc
    db $fd
    inc hl

jr_009_4e5a:
    or $2e
    jp hl


    rra
    or $f6

    db $ec, $ec, $de, $32, $ff, $01, $fd, $13, $fd, $a3, $f6, $0a, $ff, $41, $ff, $41
    db $fd, $03, $fe, $02, $fa, $06, $e4, $1c, $1a, $fe, $e1, $ff, $31, $3f, $0e, $0e
    db $3b, $3b, $55, $6e, $bf, $c0, $ff, $83, $ff, $80, $b9, $c6, $5f, $60, $7f, $40
    db $5f, $60, $5f, $60, $2f, $30, $33, $3c, $4c, $7f, $83, $ff, $8c, $fc, $70, $70
    db $00, $00, $00, $00, $00, $00, $e0, $00, $f8, $00, $fc, $00, $fe, $00, $fe, $00
    db $ff, $00, $ff, $10, $ff, $a0, $ff, $a0, $fe, $00, $fa, $0e, $e1, $ff, $3e, $3e
    db $00, $00, $00, $00, $00, $00, $07, $00, $1f, $00, $3f, $00, $7f, $00, $7f, $00
    db $ff, $00, $ff, $01, $ff, $00, $ff, $00, $7f, $00, $6f, $78, $87, $ff, $7c, $7c
    db $00, $00, $00, $00, $00, $00, $00, $e0, $00, $f8, $c0, $fc, $f0, $fe, $f8, $fe
    db $fc, $ff, $fc, $ef, $fc, $5f, $f8, $5f, $e0, $fe, $0e, $f4, $ff, $1e, $3e, $00
    db $00, $00, $00, $00, $00, $00, $00, $07, $00, $1f, $03, $3f, $0f, $7f, $1f, $7f
    db $3f, $ff, $3f, $fe, $3f, $ff, $1f, $ff, $07, $7f, $78, $17, $ff, $78, $7c, $00
    db $01, $01, $01, $01, $22, $23, $1a, $1b, $10, $1f, $03, $0c, $07, $08, $27, $38
    db $c7, $f8, $37, $38, $03, $0c, $10, $1f, $18, $19, $21, $21, $00, $00, $00, $00
    db $03, $03, $0d, $0e, $1f, $18, $1f, $10, $2f, $30, $7f, $60, $7f, $40, $bf, $c0
    db $bf, $c0, $bf, $c0, $4f, $78, $33, $3c, $3c, $3f, $47, $7f, $41, $7f, $3e, $3e
    db $07, $07, $1b, $1c, $3f, $30, $3f, $20, $3f, $20, $7f, $40, $7f, $40, $7f, $60
    db $7e, $61, $ef, $f1, $b1, $ff, $9f, $fe, $8b, $fc, $4f, $7f, $30, $30, $00, $00
    db $00, $00, $07, $07, $0b, $0c, $1f, $10, $3f, $30, $7f, $40, $bf, $c0, $ff, $80
    db $ff, $80, $bf, $c0, $7f, $48, $3f, $30, $1b, $1c, $17, $1f, $08, $0f, $07, $07
    db $07, $07, $0b, $0c, $3f, $30, $77, $48, $bf, $c0, $ff, $80, $bf, $c0, $9f, $e0
    db $67, $78, $2f, $30, $3f, $30, $57, $78, $4d, $7e, $23, $3f, $11, $1f, $0e, $0e

    ldh [$ffe0], a
    ret c

    jr c, @-$0a

    inc c
    cp $12
    db $fd
    dec bc
    rst $38
    add hl, bc
    rst $18
    inc hl
    ld a, [$fc06]
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, [$ee06]
    ld e, $f0
    ldh a, [$ff08]
    ld hl, sp-$08
    ld hl, sp+$07
    rlca
    dec de
    inc e
    cpl
    jr nc, @+$81

    ld [hl], b
    or a
    ret z

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld l, a
    ld [hl], b
    ccf
    jr nz, jr_009_5064

    ld [hl], b
    ld d, a
    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $00
    nop
    nop
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
    ld b, b
    ret nz

    add b
    ld b, b
    and b
    ld h, b
    and b
    ld h, b
    add b
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
    nop
    nop
    ld c, $0e
    jr nz, jr_009_506d

    ld e, a
    ld h, b
    ccf
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    ccf
    ld b, b
    ld e, a
    ld h, b
    jr nz, jr_009_507b

    ld c, $0e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    db $10
    ldh a, [$ffe4]
    inc e
    ld hl, sp+$04
    ld a, [$fc06]
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    ld [bc], a
    ld a, [$f806]

jr_009_5057:
    inc b
    db $e4
    inc e
    db $10

jr_009_505b:
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_009_5064:
    ld [$270f], sp
    jr c, @+$21

jr_009_5069:
    jr nz, @+$61

    ld h, b
    ccf

jr_009_506d:
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    ccf
    ld b, b
    ld e, a
    ld h, b
    rra
    jr nz, jr_009_50a0

    jr c, @+$0a

jr_009_507b:
    rrca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_009_5064

    ret nz

    jr nz, jr_009_5057

    jr nc, jr_009_5069

    db $10
    add sp, $18
    add sp, $18
    add sp, $18
    add sp, $18
    add sp, $18
    add sp, $18
    ldh [rNR10], a
    ret nc

    jr nc, jr_009_505b

    jr nz, jr_009_50bd

    ldh [$ffc0], a
    ret nz

jr_009_50a0:
    inc bc
    inc bc
    dec c
    ld c, $1f
    jr @+$21

    db $10
    cpl
    jr nc, jr_009_512a

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld c, a
    ld a, b
    inc sp
    inc a
    inc a
    ccf
    ld b, a
    ld a, a
    ld b, c

jr_009_50bd:
    ld a, a
    ld a, $3e
    rlca
    rlca
    dec de
    inc e
    ccf
    jr nc, @+$41

    jr nz, jr_009_5108

    jr nz, jr_009_514a

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, [hl]
    ld h, c
    rst $28
    pop af
    or c
    rst $38
    sbc a
    cp $8b
    db $fc
    ld c, a
    ld a, a
    jr nc, jr_009_510e

    nop
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nc, @+$81

    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld c, b
    ccf
    jr nc, @+$1d

    inc e
    rla
    rra
    ld [$070f], sp
    rlca
    rlca
    rlca
    dec bc
    inc c
    ccf
    jr nc, @+$79

    ld c, b

jr_009_5108:
    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

jr_009_510e:
    sbc a
    ldh [$ff67], a
    ld a, b
    cpl
    jr nc, jr_009_5154

    jr nc, @+$59

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $01
    ld bc, $0302
    ld bc, $0502
    ld b, $03
    inc b

jr_009_512a:
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    inc bc
    inc b
    dec b
    ld b, $01
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $3f01
    ccf
    ld e, a
    ld h, b
    xor e
    rst $18
    db $dd
    and d
    db $dd
    and d

jr_009_514a:
    ld a, [$da85]
    and l
    db $f4
    xor e
    call nc, $e8ab
    sub a

jr_009_5154:
    ld hl, sp-$69
    jp c, $feaf

    xor a
    cp a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf

    INCBIN "gfx/image_009_5160.2bpp"

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $80, $80, $80, $80, $80, $80, $80, $80, $60, $e0, $19, $f9, $36, $ee
    db $11, $ff, $01, $ff, $02, $fe, $7e, $86, $fe, $02, $fe, $02, $fc, $04, $fc, $04
    db $f4, $0c, $f4, $0c, $f4, $0c, $e8, $18, $f0, $f0, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $03, $03, $0d, $0e, $17, $18, $1f, $10, $3f, $20
    db $3f, $20, $7f, $40, $7f, $40, $7f, $40, $5f, $60, $3b, $24, $2e, $33, $13, $1f
    db $0e, $0f, $0c, $0f, $0c, $0f, $13, $1f, $10, $1f, $20, $3f, $21, $3e, $3f, $20
    db $23, $3c, $21, $3e, $10, $1f, $0c, $0f, $03, $03, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $0d, $0e, $17, $18, $1f, $10
    db $3f, $20, $3f, $20, $7f, $40, $7f, $40, $7f, $40, $5f, $60, $3b, $24, $2e, $33
    db $13, $1f, $0e, $0f, $0c, $0f, $0c, $0f, $13, $1f, $10, $1f, $20, $3f, $21, $3e
    db $3f, $20, $23, $3c, $20, $3f, $18, $1f, $07, $07, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80, $60, $e0, $19, $f9
    db $00, $00, $00, $00, $05, $07, $00, $0f, $33, $3c, $78, $7f, $01, $1e, $70, $7f
    db $3b, $3c, $60, $7f, $39, $3e, $0d, $1e, $30, $3f, $03, $07, $00, $00, $00, $00
    db $02, $03, $08, $0f, $47, $78, $01, $3e, $70, $7f, $e3, $fc, $5f, $60, $18, $7f
    db $f8, $ff, $33, $3c, $7f, $60, $d0, $ff, $00, $1f, $60, $7f, $08, $1f, $03, $03
    db $c0, $c0, $30, $f0, $c0, $38, $f4, $0c, $3a, $c6, $fc, $02, $fd, $03, $3f, $c1
    db $fe, $01, $fd, $03, $fc, $02, $3a, $c6, $70, $8c, $c8, $38, $20, $f0, $80, $c0
    db $00, $00, $00, $00, $00, $00, $e0, $e0, $d8, $38, $f4, $0c, $fc, $04, $fa, $4e
    db $fd, $2b, $fe, $29, $ff, $00, $fe, $25, $ff, $1f, $fc, $13, $ec, $33, $c0, $ff
    db $20, $ff, $20, $ff, $40, $ff, $b0, $cf, $77, $88, $7f, $90, $ff, $12, $ff, $0c
    db $ff, $00, $ff, $00, $7f, $80, $1f, $e0, $ff, $ff, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0, $d8, $38, $f4, $0c, $fc, $04
    db $fa, $4e, $fd, $2b, $fe, $29, $ff, $00, $fe, $25, $ff, $1f, $fc, $13, $ec, $33
    db $c0, $ff, $20, $ff, $20, $ff, $40, $ff, $b0, $cf, $77, $88, $7f, $90, $ff, $12
    db $ff, $0c, $ff, $00, $ff, $00, $3f, $c0, $ff, $ff, $00, $00, $00, $00, $00, $00
    db $26, $fe, $11, $ff, $01, $ff, $02, $fe, $7c, $84, $fc, $04, $fe, $02, $fc, $04
    db $f8, $08, $f8, $08, $f8, $08, $f0, $10, $e0, $e0, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $80, $c0, $e0, $30, $e0, $18, $f8, $08, $fc, $04, $78, $84
    db $fc, $04, $78, $84, $f0, $08, $e8, $18, $d0, $30, $40, $c0, $00, $00, $00, $00

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    add l
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e301
    db $e3
    rst $18

jr_009_5885:
    ccf
    cp $4f
    rst $38
    ld a, $fd
    ld a, $ff
    inc a
    rst $38
    rlca
    db $fd
    inc bc
    rst $18
    inc hl
    rst $38
    ccf
    ldh a, [$ff2f]
    ld [hl], b
    rst $08
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add sp, -$28
    xor b
    ret c

    ld l, b
    sbc b
    ld hl, sp+$18
    ld hl, sp+$18
    ret c

    jr c, jr_009_5885

    jr c, @-$26

    cp b
    ld hl, sp-$08
    jr c, jr_009_58ec

    ld [$3cea], a
    db $fc
    jp $c2bf


    cp $02
    cp $06
    ld a, [$0000]
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    ld c, $13
    inc e
    rra
    db $10
    inc de
    inc e
    ld de, $081e
    rrca
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop

jr_009_58ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_58fc:
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    jr jr_009_58fc

    ld [$38f8], sp
    ret z

    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    inc b
    ld a, h
    add h
    db $fc
    add h
    ld a, [$fe86]
    ld [bc], a
    cp $02
    cp $02
    db $fc
    inc b
    ld e, a
    ld h, b
    rst $08
    ldh a, [$ff63]
    db $fc
    ret c

    cp a
    rst $30
    rst $08
    ld a, [$efe6]
    di
    db $fd
    di
    db $fd
    di
    push af
    ei
    rst $38
    rst $38
    adc c
    adc c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld bc, $0e01
    rrca
    scf
    dec sp
    ld e, [hl]
    ld h, a
    ld l, l
    ld e, [hl]
    cp l
    sbc $df
    cp h
    ei
    cp h
    cp e
    db $fc
    ei
    rst $38
    ld c, l
    ld c, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0e01
    rrca
    inc sp
    dec a
    ld l, a
    ld [hl], e
    ld e, a
    ld h, a
    rst $30
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    xor a
    rst $18
    rst $38
    rst $38
    sub c
    sub c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    rlca
    rlca
    dec de
    inc e
    cpl
    ld sp, $605f
    ld a, a
    ld b, b
    cp h
    jp $80ff


    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    inc hl
    inc a
    jr jr_009_59bd

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
    nop
    nop
    jr jr_009_59d2

    jr c, jr_009_59e4

    ld a, b

jr_009_59bd:
    ld a, b
    add sp, -$08
    rlca
    rlca
    jr c, @+$41

    add $fd
    add $3f
    add b
    ld a, a
    inc bc
    db $fc
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop

jr_009_59d2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_009_59e4:
    ld a, a
    add b
    rst $38
    rst $38
    add l
    rst $38
    ld b, l
    ld a, a
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    inc b
    ld hl, sp+$08
    or b
    ld [hl], b
    ret nz

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
    ld c, a
    ld [hl], b
    and e
    cp h
    ld a, b
    rst $38
    rst $28
    rst $18
    ld a, d
    and $b6
    ld a, d
    cp l
    ld a, e
    ei
    dec a
    rst $18
    dec a
    db $dd
    ccf
    rst $18
    rst $38
    or d
    or d
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld bc, $0e01
    rrca
    ccf
    dec a
    ld [hl], l
    ld a, e
    ld l, a
    ld [hl], e
    rst $18
    db $e3
    ei
    rst $00
    cp a
    rst $00
    cp a
    rst $00
    rst $38
    rst $38
    and e
    and e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0e01
    rrca
    ccf
    inc a
    ld a, e
    ld a, h
    ld [hl], a
    ld a, b
    rst $38
    ldh a, [$ffef]
    ldh a, [rIE]
    ldh [$ffef], a
    ldh a, [$ffef]
    rst $38
    ld e, c
    ld e, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $58
    db $f4
    xor h
    db $fc
    and h
    and $1a

jr_009_5a8e:
    cp $62
    cp $22
    cp $02
    ld a, [$f406]
    inc c
    db $e4
    inc e
    adc b
    ld a, b
    jr nc, jr_009_5a8e

    ret nz

    ret nz

    nop
    nop
    dec sp
    dec sp
    ld e, l
    ld h, [hl]
    or a
    ret z

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_009_5ae4

    jr nc, jr_009_5af6

    jr nc, jr_009_5ae4

    inc a
    daa
    ccf
    inc de
    rra
    ld c, $0e
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_009_5b06

    jr nc, @+$81

    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld [hl], a
    ld c, b
    ccf
    jr c, jr_009_5af6

    db $10
    dec bc
    inc c
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_009_5ae4:
    nop
    nop
    nop
    nop
    nop
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
    add b
    rst $38

jr_009_5af6:
    ld [hl], $c9
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$ff1f], a

jr_009_5b06:
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    cp $01
    inc a
    jp $e7d9


    rst $38
    rst $38

jr_009_5b18:
    sbc l
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
    ret nz

    ret nz

    jr nz, jr_009_5b18

    db $10
    ldh a, [rOBP0]
    cp b
    inc b
    db $fc
    dec d
    db $ed
    ld b, $fe
    ld h, e
    rst $38
    ld h, d
    sbc $0a
    or $0a
    or $1a
    and $3a
    add $f4
    inc c
    db $e4
    inc e
    db $e4
    inc e
    ld c, b
    cp b
    db $10
    ldh a, [rNR41]
    ldh [$ffc0], a
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
    inc bc
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    ld de, $3e1f
    ccf
    inc a
    ccf
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    scf
    ld a, $3f
    ccf
    rra
    rra
    ld c, $0f
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop

jr_009_5b9f:
    nop
    jr c, jr_009_5bda

    db $f4
    db $ec
    db $fc
    inc d
    db $fc
    inc c
    db $fc
    inc l
    db $fc
    inc l
    db $fc
    inc l
    ld a, [$fe06]
    ld [bc], a
    cp $12
    ld a, [$f406]
    inc c
    ret c

    jr c, jr_009_5b9f

    db $fc
    add h
    db $fc
    ld a, b
    ld a, b
    ret nz

    ret nz

    or b
    ld [hl], b
    ld hl, sp+$18
    cp $0e
    rst $30
    ld e, l
    rst $38
    ld d, l
    db $fd
    ld d, a
    ld a, [$fa06]
    ld h, $fa
    ld h, $fe
    ld b, $e9
    rra
    or c
    ld a, a

jr_009_5bda:
    and $fe
    inc a
    db $fc
    ret nz

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

jr_009_5bf2:
    nop
    nop
    ret nc

    ret nc

    inc [hl]
    db $f4
    jr jr_009_5bf2

    ret nc

    jr nc, jr_009_5c65

    sbc b
    inc a
    call z, $ec14
    ld [hl-], a
    adc $7a
    add [hl]
    ld a, [$fa06]
    ld b, $e2
    ld e, $02
    cp $02
    cp $04
    db $fc
    ld d, h
    db $fc
    cp b
    ld hl, sp+$70
    ldh a, [$ffe0]
    ldh [$ffc0], a
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
    inc bc
    inc bc
    rlca
    rlca
    inc c
    rrca
    jr jr_009_5c5b

    dec a
    ccf
    ld a, $3f
    ld a, h
    ld a, a
    ld a, l
    ld a, [hl]
    ld c, c
    ld a, [hl]
    ld c, b
    ld a, a
    ld d, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, h

jr_009_5c4f:
    ld a, a
    ld a, $3f
    ccf

jr_009_5c53:
    ccf
    rra

jr_009_5c55:
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc

jr_009_5c5b:
    inc bc
    nop

jr_009_5c5d:
    nop
    nop
    nop
    nop

jr_009_5c61:
    nop
    nop
    nop
    nop

jr_009_5c65:
    nop
    nop
    nop
    nop
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
    ld sp, hl
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    add c
    rst $38
    jr nz, jr_009_5c5d

    ld h, b
    sbc a
    jr nz, jr_009_5c61

    jr nc, jr_009_5c53

    jr nc, jr_009_5c55

    jr c, jr_009_5c4f

    ld a, h
    add e
    cp $01
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    ld hl, $80de
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld hl, sp-$01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    or b
    ret nc

    db $fc
    adc h
    rst $38
    add e
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, c
    ld e, a
    ld h, b
    cpl
    ld sp, $1c1b
    rlca
    rlca
    add c
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    push hl
    rra
    push hl
    rra
    ld [$f21e], a
    ld c, [hl]
    ld a, d
    and $9c
    sbc h
    ld a, [bc]
    ld a, [bc]
    nop
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
    ld a, [de]
    dec e
    cpl
    jr nc, jr_009_5d86

    ld l, h
    ld a, a
    ld b, b
    cp [hl]
    push bc
    cp a
    ret


    rst $38
    add c
    rst $38
    add c
    cp $83
    cp $83
    cp [hl]
    jp $427f


    ld e, a
    ld h, e
    dec hl
    scf
    dec e
    dec e
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$090f], sp
    ld c, $11
    ld e, $23
    inc a
    rra
    jr jr_009_5d64

    ld [$0407], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop

jr_009_5d64:
    nop
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
    ld b, b
    ldh [$ffe0], a
    db $10
    ldh a, [rNR23]
    add sp, -$08
    adc b
    ld a, b
    adc b
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    ld h, h
    db $fc
    sub h
    ld a, [$ee16]
    ld [de], a

jr_009_5d86:
    cp $02
    cp $02
    cp $02
    cp $02
    ld a, [$fc06]
    inc b
    db $f4
    inc c
    ld hl, sp+$08
    ret nc

    jr nc, @+$62

    ldh [$ffc0], a
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
    ccf
    ccf
    ret nz

    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, c
    cp [hl]
    db $e3
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add h
    ccf
    add $99
    ld sp, hl
    ld b, h
    ld a, h
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $07
    inc b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    inc b
    dec b
    ld b, $03
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
    ld bc, $0701
    ld b, $0b
    inc c
    ccf
    jr nc, jr_009_5e76

    ld h, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_009_5e38

    inc e
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
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc c
    rrca
    add hl, de
    rra

jr_009_5e38:
    ldh [c], a
    rst $38
    ldh [$ff9f], a
    pop hl
    sbc [hl]
    jp $8ffc


    ldh a, [$ff3f]
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$ff1f]
    ldh [rIE], a
    nop
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp-$3f
    cp $30
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$390f], sp
    ld a, $21
    ld a, $13
    inc e
    rrca
    ld [$080f], sp

jr_009_5e76:
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add h
    dec a
    add $9b
    ei
    ld c, b
    ld a, b
    inc h
    inc a
    jr jr_009_5eb4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_009_5eb4:
    ld [hl], b
    ldh a, [$ffdc]
    inc a
    adc $32
    adc $32
    add d
    ld a, [hl]
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    push hl
    rra
    push hl
    rra
    ld [$f21e], a
    ld c, [hl]
    ld a, [$5d66]
    db $dd
    add l
    add l
    nop
    nop
    nop

jr_009_5ed9:
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_5edf:
    nop
    ldh [$ffe0], a
    ret c

    jr c, jr_009_5ed9

    inc c
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    rst $38
    add c
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    db $fd
    inc bc
    cp $02
    ld a, [$f406]
    inc c
    ret c

    jr c, jr_009_5edf

jr_009_5eff:
    ldh [rP1], a
    nop
    jr jr_009_5f1c

    inc h
    inc a
    ld a, $22
    ld a, [hl]
    ld b, d
    cp l
    jp $81ff


    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $4bf5
    cp $12
    ld a, [$f426]
    inc c

jr_009_5f1c:
    ret c

jr_009_5f1d:
    jr c, jr_009_5eff

    ldh [rP1], a
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_009_5f1d

    db $10
    ldh a, [rNR10]
    ldh a, [$ff90]
    ldh a, [$ff50]
    ret nc

    ld [hl], b
    cp b
    ld hl, sp-$3c
    db $fc
    inc e
    db $e4
    ld a, b
    adc b
    adc $3e
    ld de, $21ff
    rst $38
    ld [bc], a
    cp $0e
    cp $01
    rst $38

jr_009_5f4a:
    rlca
    ld sp, hl
    ld a, $c2
    db $fc
    inc c

jr_009_5f50:
    jr jr_009_5f4a

    inc b
    db $fc
    inc b
    db $fc
    jr jr_009_5f50

    ldh [$ffe0], a
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
    dec b
    ld b, $0f
    add hl, bc
    rla
    ld a, [de]
    rra
    ld [de], a
    ld c, $09
    dec bc
    inc c
    dec bc
    inc c
    rla
    jr jr_009_5f80

    inc c
    rlca
    ld b, $03
    inc bc
    ld b, $07
    inc c
    rrca
    db $10
    rra

jr_009_5f80:
    and h
    cp a
    ld c, b
    ld a, a
    ldh [$ffdf], a
    ld a, a
    ld b, b
    ccf
    jr nz, jr_009_5faa

    db $10
    rra
    inc d
    rra
    inc d
    rra
    inc de
    rla
    jr jr_009_5fa0

    inc c
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_009_5fa0:
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

jr_009_5faa:
    ld b, a
    rst $00
    sbc $5a
    ld a, a
    rst $20
    rst $28
    sbc e
    db $db
    scf
    or [hl]
    ld l, a
    ld a, c
    cp $e7
    ld sp, hl
    sbc d
    and $75
    adc l
    adc $3f
    db $10
    rst $38
    ld hl, $47ff
    rst $38
    inc e
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
    jp Jump_000_07fe


    nop
    rst $38
    ld bc, $06ff
    cp $78
    ld hl, sp-$40
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
    ld bc, $0101
    ld bc, $0302
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0706
    ld [$100f], sp
    rra
    xor h
    or a
    ld c, h
    ld a, a
    ldh [$ffdf], a
    ld a, a
    ld b, b
    dec sp
    inc h
    rra
    jr jr_009_602c

    add hl, de
    rra
    ld d, $1f
    db $10
    rla
    jr jr_009_6020

    inc c
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_009_6020:
    nop
    nop
    rra
    rra
    ld l, [hl]
    ld [hl], c
    cp a
    ret nz

    ld a, a
    ret nc

    rst $38
    and b

jr_009_602c:
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    ld b, $ff
    jr jr_009_60a6

    ldh a, [$ff8f]
    pop af
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$3c
    jp Jump_000_0ff0


    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    rst $38
    nop
    cp $01
    ldh [$ff1f], a
    ret nz

    ccf
    add b
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    halt
    adc [hl]
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    inc b
    ld a, e
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $18
    ld h, [hl]
    cp a
    ld a, b
    ld l, a
    ldh a, [$ff8e]
    pop af
    ld bc, $00ff
    rst $38
    ld bc, $07fe
    ld hl, sp+$1c
    db $e3
    ld [hl], b
    adc a
    ldh [$ff1f], a
    ldh [$ff1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$07
    ldh [$ff1f], a
    ret nz

    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

Jump_009_60a0:
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_60a6:
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    ldh [$ffe0], a
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    inc a
    inc a
    ret z

    ld hl, sp+$30
    ldh a, [$ffc0]
    ret nz

    sbc a
    sbc a
    ldh [c], a
    cp $3c
    call z, $38f8
    rst $38
    rst $38
    add [hl]
    cp $18
    ld hl, sp+$60
    ldh [$ff80], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    rst $20
    rst $38
    sbc c
    db $db
    and l
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    db $db
    and l
    rst $38
    sbc c
    rst $20
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    nop
    nop
    inc b
    nop
    jr jr_009_61a1

jr_009_61a1:
    nop
    ld bc, $0701
    rlca
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc a
    ccf
    jr c, jr_009_61f5

    jr jr_009_61d7

    jr @+$21

    inc c
    rrca
    rlca
    rlca
    inc hl
    inc hl
    rra
    rra
    inc e
    rra
    jr jr_009_61e5

    ldh [rIE], a
    ld b, b
    ld a, a
    jr nz, jr_009_620b

    db $e3
    db $fc
    ld e, a
    ld h, b
    ld b, a
    ld a, b
    ld b, e
    ld a, h
    pop hl
    cp $20

jr_009_61d7:
    ccf
    jr c, @+$41

    ld a, [hl-]
    ccf
    rlca
    rlca
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop

jr_009_61e5:
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b

jr_009_61f5:
    ret nz

    ld b, b
    ret nz

    add b
    add b
    db $10
    db $10
    ld h, b
    ld h, b
    ldh [$ffe0], a
    ld h, b
    ldh [rNR34], a
    cp $0c
    db $fc
    inc b
    db $fc
    ld d, $fe

jr_009_620a:
    inc de

jr_009_620b:
    rst $38
    ld [bc], a
    cp $f2
    ld c, $ff
    rlca
    add sp, $5c
    db $fc
    ld e, h
    sbc $be
    jr nc, jr_009_620a

    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    rrca
    rst $38
    nop
    rst $38
    call c, Call_000_00ff
    cp $11
    cp $19
    ld a, l
    sbc d
    cp e
    ld c, h
    db $db
    inc h
    db $db
    inc h
    db $db
    inc h
    cp b
    ld b, a
    ld [hl], b
    adc [hl]
    nop
    rst $38
    ld b, $f9
    add d
    ld a, l
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38
    nop
    ld b, d
    nop
    nop
    nop
    ld bc, $0601
    rlca
    jr c, jr_009_62a0

    ld c, c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    inc a
    ld b, e
    dec de
    inc h
    rla
    jr z, @+$19

    jr z, @+$09

    jr jr_009_627e

    inc e
    nop
    rrca

jr_009_627e:
    nop
    ld b, $00
    add a
    ld bc, $0076
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    ld bc, $1f3e
    jr nz, jr_009_6298

    ld hl, sp+$03
    inc a
    ld bc, $001e
    rra

jr_009_6298:
    nop
    rra
    nop
    ccf
    nop
    dec [hl]
    nop
    ld b, b

jr_009_62a0:
    nop
    nop
    ldh a, [$fff0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    cp $e7
    ld a, h
    rst $30
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, a
    rst $38
    cp $fe
    pop af
    rst $38
    ld b, $f9
    add d
    ld a, l
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $807f
    nop
    rst $38
    db $db
    ei
    ld de, $0011
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    db $10
    cp $10
    db $fc
    nop
    cp $80
    ld a, a
    ldh a, [$ff0e]
    cp b
    ld b, a
    and b
    ld e, b
    ld h, b
    sbc h
    ret nz

    inc a
    add b
    ld h, [hl]
    nop
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    rrca
    ld [$080f], sp
    dec bc
    inc c
    dec b
    ld b, $0c
    rrca
    ld de, $231e
    inc a
    daa
    jr c, jr_009_6374

    ld a, b
    ld b, a
    ld a, b
    ld l, a
    ld d, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    daa
    jr c, jr_009_635c

    inc a
    ld de, $0c1e
    rrca
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
    cp $fe
    ld a, l
    add e
    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec b

jr_009_635c:
    rst $08
    jr nc, @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop bc
    ccf
    ldh [$ff1f], a

jr_009_6374:
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    inc bc
    inc bc
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    dec bc
    inc c
    rlca
    dec b
    inc bc
    inc bc
    dec b
    rlca
    ld [$080f], sp
    rrca
    jr @+$19

    ld e, $11
    rra
    db $10
    ccf
    jr nz, jr_009_63ee

    jr nz, jr_009_63f0

    jr nz, jr_009_63f2

    jr nz, jr_009_63e6

    ld l, $10
    rra
    db $10
    rra
    ld [$060f], sp
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, c
    pop bc
    ldh a, [c]
    ldh a, [c]
    inc c
    db $fc
    inc bc
    rst $38
    add $ba
    rst $08
    pop af

jr_009_63e6:
    rrca
    pop af
    rra
    pop hl
    rra
    pop hl
    ld a, a
    add c

jr_009_63ee:
    cp $02

jr_009_63f0:
    cp $02

jr_009_63f2:
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$ff60], a
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
    inc c
    inc c
    ld [hl+], a
    ld a, $5c
    ld h, d
    dec a
    ld b, e
    cp l
    jp $c3bd


    cp h
    jp nz, $463a

    ld b, h
    ld a, h
    jr nc, jr_009_644a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_009_6440

    inc h
    inc a
    jr jr_009_6450

    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    jr jr_009_645a

    inc h
    inc a
    jr jr_009_6452

    nop
    nop
    nop
    nop

jr_009_643e:
    nop
    nop

jr_009_6440:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_644a:
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_6450:
    nop
    nop

jr_009_6452:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b

jr_009_645a:
    and b
    ld h, b
    jr nz, jr_009_643e

    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ld b, b
    ld h, b
    ldh [rNR10], a
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    or h
    db $fc
    ld b, $fe
    db $f4
    inc c
    cp $0e
    add sp, $18
    ret nc

    jr nc, jr_009_64dd

    ldh [$ff80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    halt
    adc [hl]
    db $fd
    inc bc
    cp $01
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $30
    dec bc
    db $fc
    rrca
    db $ec
    sbc e
    ld [hl], h
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$ff1f], a
    rst $38
    nop
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

    rlca
    ld hl, sp+$01
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    ld b, d
    ld a, [hl]
    cp l
    jp $c3bd


    ld b, d
    ld a, [hl]
    jr @+$1a

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_64dd:
    nop
    nop
    nop

    db $00, $00, $01, $01, $03, $02, $07, $04, $07, $04, $07, $04, $04, $07, $18, $1f
    db $20, $3f, $60, $5f, $40, $7f, $c0, $bf, $c0, $bf, $80, $ff, $c3, $bf, $c5, $be
    db $87, $fc, $c5, $be, $c3, $bf, $80, $ff, $c0, $bf, $c0, $bf, $40, $7f, $60, $5f
    db $20, $3f, $18, $1f, $04, $07, $07, $04, $07, $04, $07, $04, $03, $02, $01, $01
    db $00, $00, $01, $01, $03, $02, $03, $02, $07, $04, $07, $04, $04, $07, $18, $1f
    db $30, $2f, $70, $4f, $40, $7f, $e0, $9f, $e0, $9f, $81, $ff, $e3, $9e, $e2, $9f
    db $83, $fe, $e2, $9f, $e3, $9e, $81, $ff, $e0, $9f, $e0, $9f, $40, $7f, $70, $4f
    db $30, $2f, $18, $1f, $04, $07, $07, $04, $07, $04, $03, $02, $03, $02, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0
    db $e0, $e0, $d0, $30, $f8, $08, $f4, $ec, $d4, $3c, $f8, $08, $fc, $24, $fc, $a4
    db $fc, $a4, $e6, $1a, $fe, $42, $fa, $46, $f4, $0c, $d8, $38, $f4, $ec, $f4, $0c
    db $d8, $38, $e0, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $03
    db $04, $07, $05, $06, $09, $0e, $08, $0f, $08, $0f, $18, $1f, $38, $27, $24, $3b
    db $3c, $23, $24, $3b, $38, $27, $18, $1f, $08, $0f, $08, $0f, $04, $07, $04, $07
    db $02, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $80, $80, $e0, $60, $d0, $30, $70, $90, $78, $88, $06, $fe, $01, $ff
    db $18, $f7, $3c, $db, $3d, $c3, $1b, $e6, $03, $fe, $07, $fc, $87, $fd, $8d, $7b
    db $8e, $7b, $8e, $7b, $8d, $fb, $07, $fd, $07, $fc, $03, $fe, $03, $fe, $01, $ff
    db $00, $ff, $01, $ff, $06, $fe, $78, $88, $70, $90, $d0, $30, $e0, $60, $80, $80
    db $00, $00, $c0, $c0, $e0, $20, $f0, $10, $70, $90, $78, $88, $06, $fe, $01, $ff
    db $0c, $fb, $1e, $ed, $1e, $e1, $0d, $f3, $03, $fe, $83, $fe, $c5, $7e, $c7, $3d
    db $c7, $3d, $c7, $3d, $c7, $7d, $85, $fe, $03, $fe, $03, $fe, $01, $ff, $00, $ff
    db $00, $ff, $01, $ff, $06, $fe, $78, $88, $70, $90, $f0, $10, $e0, $20, $c0, $c0
    db $00, $00, $80, $80, $e0, $60, $d0, $30, $70, $90, $78, $88, $06, $fe, $01, $ff
    db $06, $fd, $0f, $f6, $0f, $f0, $06, $f9, $01, $ff, $03, $fe, $83, $fe, $87, $7c
    db $87, $7d, $87, $7d, $87, $fc, $03, $fe, $03, $fe, $01, $ff, $00, $ff, $00, $ff
    db $00, $ff, $01, $ff, $06, $fe, $78, $88, $70, $90, $d0, $30, $e0, $60, $80, $80
    db $00, $00, $30, $30, $78, $48, $78, $48, $d8, $a8, $c6, $be, $01, $ff, $00, $ff
    db $c3, $bf, $ed, $de, $df, $30, $bf, $63, $3d, $ee, $77, $d8, $7f, $d1, $ef, $b0
    db $ff, $a0, $fc, $a3, $ef, $b0, $7f, $d0, $77, $d8, $3d, $ee, $3f, $e3, $17, $f8
    db $0d, $fe, $03, $ff, $81, $ff, $c6, $be, $d8, $a8, $78, $48, $78, $48, $30, $30
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $70, $f0, $e8, $98, $f8, $08, $f8, $38, $d8, $68, $bc, $c4, $7c, $94, $fc, $14
    db $fe, $12, $fe, $02, $fe, $0a, $7e, $82, $bc, $c4, $d4, $6c, $f8, $38, $f8, $08
    db $e8, $98, $f0, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $40, $c0, $70, $f0, $e8, $98, $f8, $08, $f8, $38, $d4, $6c, $bc, $c4, $7c, $a4
    db $fa, $16, $fe, $12, $7e, $82, $be, $ca, $dc, $64, $f8, $38, $f8, $08, $e8, $98
    db $70, $f0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $40, $c0, $20, $e0, $70, $f0, $e8, $98, $f8, $08, $f8, $38, $dc, $64, $bc, $c4
    db $7a, $a6, $7e, $92, $be, $c2, $da, $66, $fc, $3c, $f8, $08, $e8, $98, $70, $f0
    db $40, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $06, $07
    db $0e, $0d, $18, $17, $20, $3f, $30, $2f, $70, $4f, $40, $7f, $e0, $9f, $e0, $9f
    db $80, $ff, $e0, $9f, $e0, $9f, $40, $7f, $70, $4f, $30, $2f, $20, $3f, $18, $17
    db $0e, $0d, $06, $07, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $80, $80, $e0, $60, $d0, $30, $70, $90, $78, $88, $06, $fe, $19, $f7
    db $3c, $db, $3d, $c3, $1b, $e6, $03, $fe, $07, $fc, $07, $fc, $8f, $f9, $8f, $79
    db $8f, $79, $8f, $79, $8f, $f9, $07, $fc, $07, $fc, $03, $fe, $03, $fe, $01, $ff
    db $00, $ff, $01, $ff, $06, $fe, $78, $88, $70, $90, $d0, $30, $e0, $60, $80, $80
    db $f8, $f8, $ff, $07, $00, $ff, $00, $ff, $0f, $f2, $00, $ff, $f0, $ff, $f0, $0f
    db $f0, $0f, $f0, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $ff, $07, $f8, $f8
    db $00, $00, $01, $01, $07, $07, $1e, $19, $38, $27, $70, $4f, $80, $ff, $e1, $9f
    db $e1, $9f, $80, $ff, $70, $4f, $38, $27, $1e, $19, $07, $07, $01, $01, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $70, $f0, $e8, $98, $f8, $08, $f8, $38, $fc, $4c, $fc, $a4, $fe, $12, $fe, $02
    db $fc, $04, $f8, $08, $f8, $08, $f8, $08, $fc, $84, $fc, $44, $f8, $38, $f8, $08
    db $e8, $98, $f0, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $1c, $1c, $3e, $22, $7f, $41, $f7, $89, $83, $7d, $01, $ff
    db $00, $ff, $00, $ff, $0f, $f3, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $03, $ff, $07, $f8, $0e, $f1, $1f, $f1, $1a, $f7, $0c, $ff, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $83, $7d, $f7, $89, $7f, $41, $3e, $22, $1c, $1c, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0
    db $f0, $90, $f0, $10, $f0, $30, $f8, $48, $f8, $88, $f0, $90, $e0, $20, $e0, $20
    db $e0, $20, $e0, $20, $e0, $20, $f0, $90, $f8, $88, $f8, $48, $f0, $30, $f0, $10
    db $f0, $90, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $c0, $c0, $3c, $fc, $9a, $76, $3e, $e2, $7e, $ce, $7f, $c1
    db $3d, $e3, $1e, $fe, $02, $fe, $0c, $fc, $30, $f0, $c0, $c0, $00, $00, $00, $00
    db $03, $ff, $07, $f9, $0e, $f3, $1c, $e7, $38, $ef, $30, $ff, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $c1, $3f, $f7, $89, $7e, $62, $1c, $1c, $00, $00, $00, $00
    db $18, $18, $18, $18, $18, $00, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $2d, $f3, $1e, $fe, $02, $fe, $02, $fe, $02, $fe, $02, $fe, $04, $fc, $04, $fc
    db $08, $f8, $30, $f0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $60, $e0, $10, $f0, $8c, $7c, $1a, $f6, $3e, $e2, $7c, $c4, $7e, $ce, $5f, $e1
    db $2d, $f3, $9e, $fe, $82, $fe, $02, $fe, $02, $fe, $04, $fc, $04, $fc, $08, $f8
    db $10, $f0, $60, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $c0, $c0, $e0, $20, $f0, $10, $70, $90, $78, $88, $06, $fe, $01, $ff
    db $1c, $e3, $3e, $c9, $3e, $c9, $1c, $e3, $00, $ff, $80, $ff, $c0, $7f, $c0, $3f
    db $00, $00, $c0, $c0, $e0, $20, $f0, $10, $70, $90, $78, $88, $06, $fe, $01, $ff
    db $0c, $f3, $1e, $ed, $1e, $e1, $0c, $f3, $00, $ff, $80, $ff, $c0, $7f, $c0, $3f
    db $00, $00, $c0, $c0, $e0, $20, $f0, $10, $70, $90, $78, $88, $06, $fe, $01, $ff
    db $00, $ff, $00, $ff, $00, $ff, $07, $f9, $00, $ff, $80, $ff, $c0, $7f, $c0, $3f
    db $c0, $3f, $c0, $3f, $c0, $7f, $80, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $01, $ff, $06, $fe, $78, $88, $70, $90, $f0, $10, $e0, $20, $c0, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $80, $80, $40, $c0, $30, $f0, $68, $d8, $b8, $c8, $f8, $88, $f0, $90, $f0, $90
    db $f0, $90, $f0, $90, $f0, $90, $f0, $90, $f8, $88, $b8, $c8, $68, $d8, $30, $f0
    db $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $28, $38, $18, $64, $4e, $72
    db $3c, $22, $4c, $74, $10, $38, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $03, $0c, $0f, $07, $04, $0e, $0f
    db $1d, $1e, $08, $0f, $06, $07, $02, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $05, $07, $00, $0f, $33, $3c, $78, $7f, $01, $1e, $70, $7f
    db $3b, $3c, $60, $7f, $39, $3e, $0d, $1e, $30, $3f, $03, $07, $00, $00, $00, $00
    db $02, $03, $08, $0f, $47, $78, $01, $3e, $70, $7f, $e3, $fc, $5f, $60, $18, $7f
    db $f8, $ff, $33, $3c, $7f, $60, $d0, $ff, $00, $1f, $60, $7f, $08, $1f, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $60, $e0, $10, $f0, $0c, $fc, $1a, $f6, $3e, $e2, $3c, $e4, $5c, $e4, $78, $c8
    db $78, $c8, $78, $c8, $5c, $e4, $3c, $e4, $3e, $e2, $1a, $f6, $0c, $fc, $10, $f0
    db $60, $e0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $40, $c0, $20, $e0, $10, $f0, $88, $f8, $0e, $fe, $15, $fb, $7f, $e1, $fa, $86
    db $fc, $8c, $fa, $86, $7f, $e1, $15, $fb, $0e, $fe, $08, $f8, $10, $f0, $20, $e0
    db $40, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $40, $c0, $50, $b0, $e0, $10, $70, $88
    db $f8, $08, $e0, $10, $e0, $30, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $80, $c0, $e0, $30, $e0, $18, $f8, $08, $fc, $04, $78, $84
    db $fc, $04, $78, $84, $f0, $08, $e8, $18, $d0, $30, $40, $c0, $00, $00, $00, $00
    db $c0, $c0, $30, $f0, $c0, $38, $f4, $0c, $3a, $c6, $fc, $02, $fd, $03, $3f, $c1
    db $fe, $01, $fd, $03, $fc, $02, $3a, $c6, $70, $8c, $c8, $38, $20, $f0, $80, $c0

    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    cp [hl]
    adc $77
    ld a, c
    cp $ff
    ld a, a
    ld a, a
    db $fc
    add e
    db $fc
    add e
    ld a, a
    ld a, a
    cp $ff
    ld [hl], a
    ld a, c
    cp [hl]
    adc $f0
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rrca
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rrca
    rrca
    inc b
    rlca
    rlca
    inc b
    rst $38
    db $fc
    rst $38
    db $fc
    rlca
    inc b
    inc b
    rlca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $0f
    rrca
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld a, b
    adc b
    ld b, $fe
    ld bc, $00ff
    rst $38
    ld b, $f9
    dec c
    or $0f
    or $06
    ld sp, hl
    add b
    rst $38
    ret nz

    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $78
    adc b
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld a, b
    adc b
    ld b, $fe
    ld bc, $00ff
    rst $38
    rrca
    or $00
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    jp $c37e


    ld a, $c3
    ld a, $c3
    ld a, $c3
    ld a, [hl]
    add c
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $78
    adc b
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld a, b
    adc b
    ld b, $fe
    ld bc, $00ff
    rst $38
    inc bc
    db $fc
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    inc bc
    db $fc
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $78
    adc b
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$38
    sbc $e6
    ld a, l
    rst $38
    ld a, l
    rst $38
    sbc $e6
    ld hl, sp+$38
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    ld l, b
    sbc b
    ret c

    add sp, -$0c
    db $ec
    db $fc
    db $f4
    sbc h
    ld a, h
    ld [$ea1e], a
    ld e, $9c
    ld a, h

jr_009_6d34:
    db $fc
    db $f4
    db $f4
    db $ec
    ret c

    add sp, $68
    sbc b
    or b
    ld [hl], b
    ret nz

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
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_009_6d34

    db $10
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp+$7c
    db $fc
    cp d
    add $fe
    ld [bc], a
    cp h
    ld a, h
    cp $02
    cp d
    add $7c
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rLCDC], a
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

jr_009_6d8c:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_009_6d8c

    ld [hl], h
    call z, $87ff
    ei
    inc e
    rst $38
    ccf
    rst $38
    ccf
    db $dd
    ld h, e
    rst $18
    ld h, b
    db $dd
    ld h, e
    rst $38
    ccf
    rst $38
    ccf
    ei
    inc e
    rst $38
    add a
    ld [hl], h
    call z, $f838
    ld b, b
    ret nz

    add b
    add b

jr_009_6db4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    jr nz, jr_009_6db4

    sub b
    ld [hl], b
    adc [hl]
    cp $1d
    di
    ccf
    pop hl
    ld e, l
    db $e3
    ld a, e
    rst $00
    ld a, e
    rst $00
    ld e, l
    db $e3
    ccf
    pop hl
    dec e
    di
    ld c, $fe
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
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
    add b
    add b
    ldh [$ff60], a
    ld a, b
    sbc b
    or $ee
    db $fd
    rst $38
    push af
    rrca
    db $fd
    rst $38
    or $ee
    ld a, b
    sbc b
    ldh [$ff60], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0203
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$0c0f], sp
    dec bc
    inc c
    dec bc
    db $10
    rra
    add hl, de
    rla
    add hl, de
    rla
    ld hl, $313f
    cpl
    ld sp, $312f
    cpl
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ld b, a
    jr c, jr_009_6edd

    jr jr_009_6ecf

    ld [$070f], sp
    ld b, $01
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
    add b
    add b
    ld b, b

jr_009_6ecf:
    ret nz

    ld b, b
    ret nz

    and b
    ld h, b
    and b
    ld h, b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    db $10
    ldh a, [$ff08]

jr_009_6edd:
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    ld a, [hl-]
    and $5e
    ldh [c], a
    ld [hl], h
    call z, $c878
    ld [hl], h
    call z, $e25e
    ld l, $f2
    inc e
    db $fc
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [$ffc0], a
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
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$180f], sp
    rla
    db $10
    rra
    jr nc, jr_009_6f49

    jr nc, jr_009_6f4b

    ld b, e
    ld a, a
    ld b, l
    ld a, [hl]
    ld h, a
    ld e, h
    push hl
    sbc [hl]
    rst $20
    sbc h
    add e
    rst $38
    add b
    rst $38
    ldh [$ff9f], a
    ldh [$ff9f], a
    add b
    rst $38
    add b
    rst $38
    ldh [$ff9f], a
    ld h, b
    ld e, a
    jr nc, jr_009_6f67

    rra
    ld e, $01
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

jr_009_6f49:
    nop
    nop

jr_009_6f4b:
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$180f], sp
    rla
    db $10
    rra
    jr nc, jr_009_6f89

    ld sp, $422f
    ld a, a
    ld b, a
    ld a, h
    ld h, l
    ld e, [hl]
    rst $20
    sbc h
    db $e3
    sbc a
    add b

jr_009_6f67:
    rst $38
    add b
    rst $38
    ldh [$ff9f], a
    ldh [$ff9f], a
    add b
    rst $38
    add b
    rst $38
    ldh [$ff9f], a
    ld h, b
    ld e, a
    jr nc, jr_009_6fa7

    rra
    ld e, $01
    ld bc, $0000
    nop
    nop
    ldh [$ffe0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    cp b
    ld c, b
    cp h

jr_009_6f89:
    ld b, h
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld b, $fb
    rlca
    ei
    add a
    ld hl, sp-$39
    ld a, b
    ld h, e
    cp h
    ldh [$ff1f], a
    ld h, b
    sbc a
    ldh [$ff1f], a
    ldh [rIE], a
    nop
    rst $38
    nop

jr_009_6fa7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_009_6fb6:
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, a
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    jr nz, jr_009_6fb6

    and b
    ld h, b
    sub b
    ld [hl], b
    sbc h
    ld a, h
    cp d
    ld h, [hl]
    ld a, [hl]
    jp nz, $8cfc

    db $fc
    sbc h
    cp [hl]
    jp nz, $e25e

    inc a
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$10f8], sp
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
    ldh [$ffe0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    cp h
    ld b, h
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0e
    di
    rrca
    di
    rrca
    ldh a, [$ff8f]
    ldh a, [$ff87]
    ld a, b
    add l
    ld a, d
    add h
    ld a, e
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $f4
    adc h
    call c, Call_000_0324
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0e
    di
    rrca
    di
    adc a
    ldh a, [$ffcf]
    ld [hl], b
    rst $00
    jr c, @-$79

    ld a, d
    add c
    ld a, [hl]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_70b6

    jr c, jr_009_70c0

    inc a
    inc a
    inc c
    inc a
    ld b, $3e
    ld h, $1e
    ld h, $1e
    ld b, $3e
    inc c
    inc a
    inc a
    inc a
    jr c, jr_009_70d2

    jr nc, jr_009_70cc

    nop
    nop
    nop
    nop
    jr nz, jr_009_70c2

    jr nc, jr_009_70d4

    jr c, jr_009_70de

    inc e
    inc a
    inc c
    inc a
    ld c, $3e
    ld h, $1e
    ld h, $1e
    ld h, $1e
    ld h, $1e
    ld c, $3e

jr_009_70b6:
    inc c
    inc a
    inc e
    inc a
    jr c, @+$3a

    jr nc, jr_009_70ee

    jr nz, jr_009_70e0

jr_009_70c0:
    nop
    nop

jr_009_70c2:
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld a, b
    adc b

jr_009_70cc:
    ld b, $fe
    ld bc, $00ff
    rst $38

jr_009_70d2:
    ld b, $f9

jr_009_70d4:
    dec c
    or $0f
    or $06
    ld sp, hl
    add b
    rst $38
    ret nz

    ld a, a

jr_009_70de:
    pop bc
    ccf

jr_009_70e0:
    pop bc
    ccf
    pop bc
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_009_70ee:
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $78
    adc b
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld a, b
    adc b
    ld b, $fe
    ld bc, $00ff
    rst $38
    rrca
    or $00
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    jp $c37e


    ld a, $c3
    ld a, $c3
    ld a, $c3
    ld a, [hl]
    add c
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $78
    adc b
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ld a, b
    adc b
    ld b, $fe
    ld bc, $00ff
    rst $38
    ld b, $f9
    rrca
    or $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop bc
    ld a, a
    jp nz, $c33f

    ld a, $c2
    ccf
    pop bc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $78
    adc b
    ld [hl], b
    sub b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

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
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    jr c, jr_009_720e

    inc e
    ld a, h
    inc e
    ld a, h
    ld c, [hl]
    ld a, $4e
    ld a, $4e
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    inc a
    ld a, h
    inc e
    ld a, h

jr_009_71b4:
    ld e, $7e
    ld c, $7e
    ld c, [hl]
    ld a, $47
    ccf
    ld h, a
    rra
    ld h, a
    rra
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    jr nz, jr_009_71b4

    db $10
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp+$7c
    db $fc
    cp d
    add $fe
    ld [bc], a
    cp h
    ld a, h
    cp $02
    cp d
    add $7c
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rLCDC], a
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

jr_009_720e:
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$ffd0], a
    or b
    ldh a, [rNR10]
    db $fc
    inc a
    cp $3e
    and $3e
    di
    ld c, a
    di
    ld c, a
    di
    ld c, a
    and $3e
    cp $3e
    db $fc
    inc a
    ldh a, [rNR10]
    ret nc

    or b
    ld h, b
    ldh [rLCDC], a
    ret nz

    add b
    add b

jr_009_7234:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    jr nz, jr_009_7234

    db $10
    ldh a, [$ff08]
    ld hl, sp+$1c
    db $fc
    ld a, d
    and $be
    jp nz, $04fc

    ret c

    jr c, @-$02

    inc b
    cp [hl]
    jp nz, $e67a

    inc e
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
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
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld a, b
    ld hl, sp+$38
    ld hl, sp+$1c
    db $fc
    inc e
    db $fc
    ld c, $fe
    adc [hl]
    ld a, [hl]
    adc [hl]
    ld a, [hl]
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld [hl], b
    ldh a, [$ff38]
    ld hl, sp+$38
    ld hl, sp+$1c
    db $fc
    inc e
    db $fc
    adc [hl]
    ld a, [hl]
    adc [hl]
    ld a, [hl]
    adc [hl]
    ld a, [hl]
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf

    db $00, $00, $00, $00, $00, $00, $18, $18, $1c, $14, $1f, $13, $0d, $0b, $08, $0f
    db $f4, $f7, $e8, $9f, $71, $4f, $30, $2f, $10, $1f, $08, $0f, $19, $1f, $70, $6f
    db $f0, $8f, $70, $6f, $19, $1f, $10, $1f, $30, $2f, $70, $4f, $e9, $9f, $f4, $f7
    db $08, $0f, $0c, $0b, $1f, $13, $1c, $14, $18, $18, $00, $00, $00, $00, $00, $00
    db $20, $20, $70, $50, $70, $50, $79, $49, $7a, $4b, $7c, $47, $ed, $d7, $42, $ff
    db $00, $ff, $07, $f8, $0f, $f2, $8f, $f0, $c7, $78, $e0, $3f, $f0, $9f, $b0, $cf
    db $f0, $0f, $b0, $cf, $f0, $9f, $e0, $3f, $c0, $7f, $80, $ff, $00, $ff, $00, $ff
    db $42, $ff, $ed, $d7, $7c, $47, $7a, $4b, $79, $49, $70, $50, $70, $50, $20, $20
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $20, $e0, $20, $e0
    db $20, $e0, $30, $f0, $d8, $68, $78, $c8, $b4, $dc, $fc, $94, $f8, $98, $f0, $90
    db $f0, $90, $f8, $98, $fc, $94, $b4, $dc, $78, $c8, $58, $e8, $30, $f0, $20, $e0
    db $20, $e0, $20, $e0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $30, $30, $78, $48, $fd, $85, $ee, $93, $00, $ff
    db $00, $ff, $00, $ff, $0f, $f3, $00, $ff, $c0, $ff, $e0, $3f, $f0, $9f, $90, $6f
    db $f0, $0f, $90, $6f, $f0, $9f, $e0, $3f, $c0, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $ee, $93, $fd, $85, $78, $48, $30, $30, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $0c, $0b, $08, $0f
    db $38, $37, $78, $47, $70, $4f, $30, $2f, $10, $1f, $10, $1f, $30, $2f, $70, $4f
    db $70, $4f, $30, $2f, $10, $1f, $10, $1f, $30, $2f, $70, $4f, $78, $47, $38, $37
    db $08, $0f, $0c, $0b, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $80, $80, $84, $84, $9c, $9c, $e8, $f8, $88, $f8, $10, $f0
    db $30, $f0, $38, $e8, $f8, $48, $ef, $5f, $b6, $da, $fc, $94, $f8, $98, $f0, $90
    db $f0, $90, $f8, $98, $fc, $94, $b6, $da, $6f, $df, $78, $c8, $38, $e8, $30, $f0
    db $10, $f0, $88, $f8, $e8, $f8, $9c, $9c, $84, $84, $80, $80, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $04, $00
    db $84, $00, $ce, $00, $6e, $00, $7d, $0e, $6d, $33, $ff, $c0, $ff, $00, $7f, $80
    db $ff, $00, $7f, $80, $ff, $00, $ff, $c0, $6d, $33, $7d, $0e, $6e, $00, $ce, $00
    db $84, $00, $04, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $00, $07, $03, $07, $03, $0e, $07, $0e, $07, $08, $07, $10, $0f
    db $20, $1f, $60, $3f, $40, $3f, $c4, $7b, $c2, $7d, $83, $7e, $c7, $79, $c3, $7f
    db $87, $79, $c3, $7f, $c7, $79, $83, $7e, $c2, $7d, $c4, $7b, $40, $3f, $60, $3f
    db $20, $1f, $10, $0f, $08, $07, $0e, $07, $0e, $07, $07, $03, $07, $03, $03, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $80, $00, $40, $80, $38, $c0, $3c, $d8, $7c, $b8, $7f, $bb, $fe, $75, $fe, $75
    db $fe, $75, $fe, $75, $fe, $75, $7f, $bb, $7c, $b8, $3c, $d8, $38, $c0, $40, $80
    db $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $38, $38, $b4, $cc, $fe, $02, $1d, $e3, $ef, $11
    db $df, $21, $ef, $11, $1d, $e3, $fe, $02, $b4, $cc, $38, $38, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2b, $2b, $57, $7c, $fc, $d7
    db $ff, $d4, $d4, $ff, $57, $7c, $2b, $2b, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $20, $00, $c0, $00, $c0, $00, $80, $00, $80, $80, $00, $c0, $f0, $40
    db $fe, $40, $f0, $40, $00, $c0, $80, $80, $80, $00, $c0, $00, $c0, $00, $20, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $f0, $f0, $e0, $60, $00, $c0, $40, $80
    db $40, $80, $40, $80, $00, $c0, $e0, $60, $f0, $f0, $00, $00, $00, $00, $00, $00
    db $00, $00, $80, $00, $c0, $80, $e0, $c0, $e0, $c0, $f0, $e0, $0c, $f0, $03, $fc
    db $1c, $ff, $3e, $ff, $3e, $f7, $3e, $ff, $1c, $ff, $00, $ff, $80, $7f, $80, $ff
    db $80, $ff, $80, $ff, $80, $7f, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $03, $fc, $0c, $f0, $f0, $e0, $e0, $c0, $e0, $c0, $c0, $80, $80, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $40, $c0, $30, $f0, $e8, $d8, $f8, $08, $f4, $3c, $fe, $42, $9d, $e3, $ef, $11
    db $9f, $61, $ef, $11, $1d, $e3, $fe, $82, $f4, $4c, $f8, $38, $68, $98, $f0, $f0
    db $40, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $80, $80, $40, $c0, $20, $e0, $f0, $f0, $68, $98, $e8, $18, $b0, $70, $c0, $c0
    db $00, $00, $00, $00, $c0, $c0, $b0, $70, $f8, $08, $68, $98, $f0, $f0, $40, $c0
    db $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $20
    db $21, $21, $33, $33, $37, $37, $ec, $f3, $61, $5e, $c0, $3f, $38, $c7, $c4, $3b
    db $08, $f7, $c4, $3b, $38, $c7, $c0, $3f, $61, $5e, $ec, $f3, $37, $37, $33, $33
    db $21, $21, $20, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    jr nz, @+$81

    ld e, c
    ld a, a
    ld d, d
    ld a, a
    ld b, h
    ld a, [hl]
    ld c, c
    ld a, l
    ld d, d
    ld a, e
    ld b, h
    ld [hl], a
    ld c, b
    ld l, [hl]
    ld d, c
    ld a, h
    ld b, e
    ld a, b
    ld b, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    halt
    ld c, c
    ld a, h
    ld b, e
    ld a, b
    ld b, a
    ld a, c
    ld c, [hl]
    ld a, a
    ld e, h
    ld a, a
    ld e, b
    ld l, a
    ld d, b
    jr nz, jr_009_76f9

    rra
    rra
    nop
    nop
    nop
    nop

jr_009_76c0:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    inc hl
    cp c
    ld b, a
    ld [hl], b
    adc a
    ldh [$ff1f], a
    rst $00
    jr c, @-$6f

    ld [hl], b
    rrca
    di
    rrca
    di
    rrca
    ldh a, [$ffc7]
    jr c, jr_009_76c0

    inc e
    ld h, e
    sbc h
    ldh [$ff1f], a
    ld h, c
    sbc [hl]
    and $19
    call $1b32
    db $e4
    ccf
    ret nz

    ld a, [hl]
    add c
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ld sp, hl
    rra
    di
    ccf
    nop

jr_009_76f9:
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, jr_009_7788

    ld b, b
    ld a, a
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, h
    ld b, e
    jr c, jr_009_7739

    ld de, $1e1f
    rra
    db $10
    rra
    ld a, b
    ld a, a
    db $e4

jr_009_771b:
    sbc a
    db $e3
    sbc a
    db $e3
    sbc a
    db $e3
    sbc a
    db $e3
    sbc a
    db $e3
    sbc a
    and $9f
    xor $9f
    db $fc
    sbc a
    ld a, a
    ld a, a
    db $10
    rra
    jr c, jr_009_7759

    ld a, h
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    ld b, d
    ccf

jr_009_7739:
    ld h, $1b
    ld a, [de]
    ld bc, $0001
    nop
    nop
    nop
    ldh a, [$fff0]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    ld a, [hl]
    add d
    ld a, $c2
    ld e, $e2
    ld c, $f2
    db $fc
    db $fc
    ret z

    jr c, jr_009_771b

    inc a
    adc h

jr_009_7759:
    ld a, h
    ld a, [hl-]
    or $de
    ldh [c], a
    db $fc
    call nz, $88f8
    ld hl, sp-$78
    db $fc
    cp h
    ld b, [hl]
    ld a, [$fa86]
    ld b, $fa
    ld c, $f2
    sbc [hl]
    ldh [c], a
    ld a, h
    call nz, $f838
    and b
    ldh [$ffc0], a
    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c

jr_009_7788:
    ld [hl+], a
    ld a, $5c
    ld h, d
    dec a
    ld b, e
    cp l
    jp $c3bd


    cp h
    jp nz, $463a

    ld b, h
    ld a, h
    jr nc, jr_009_77ca

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_009_77c0

    inc h
    inc a
    jr jr_009_77d0

    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    jr jr_009_77da

    inc h
    inc a
    jr jr_009_77d2

    nop
    nop
    nop
    nop
    nop
    nop

jr_009_77c0:
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $fc
    inc b
    cp $92

jr_009_77ca:
    cp $2a
    cp $5a
    ld a, [hl]
    cp d

jr_009_77d0:
    cp [hl]
    ld a, d

jr_009_77d2:
    sbc $3a
    adc $3a
    add $3a
    adc $32

jr_009_77da:
    sub [hl]
    ld l, d
    ld l, $d2
    ld e, [hl]
    and d
    cp [hl]
    ld b, d
    halt
    adc d
    and $1a
    add $3a
    add [hl]
    ld a, d
    ld c, $fa
    ld e, $fa
    ld a, $f2
    ld a, [hl]
    ldh [c], a
    cp $c2
    cp $8a
    cp $1a
    inc b
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    jp $e7c3


    inc h
    rst $28
    jr z, @+$01

    jr c, jr_009_7833

    rst $38
    inc h
    rst $38
    ld b, d
    rst $38
    add e
    db $fd
    rlca
    ld hl, sp+$0f
    di
    rrca
    di
    rlca
    ld hl, sp-$31
    rst $38
    rst $30
    jr c, @+$75

    xor h
    ldh a, [rVBK]
    ld [hl], b
    rst $08
    pop af
    ld c, a
    ldh [c], a
    rst $18
    ld b, h
    rst $38
    add hl, sp
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    rst $38

jr_009_7833:
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
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
    jr @+$1a

    ld b, d
    ld a, [hl]
    cp l
    jp $c3bd


    ld b, d
    ld a, [hl]
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

    INCBIN "gfx/image_009_7860.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    nop
    nop
    nop
    nop
    stop
    ld bc, $0000
    ld [bc], a
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
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    or b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$4000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
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
    nop
    nop
    nop
    stop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    ld [$0008], sp
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $18
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
    jr nz, jr_009_7f31

jr_009_7f31:
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    nop
    add hl, bc
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
    nop
    nop
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
    jr nz, jr_009_7fa4

jr_009_7fa4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    nop
    nop
    nop
