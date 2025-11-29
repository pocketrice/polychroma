; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    db $1b

    INCBIN "gfx/image_00f_4001.2bpp"

    rla
    jr jr_00f_4033

    db $10
    cpl
    jr nc, jr_00f_4056

    ld hl, $372b
    ld e, $1e

    db $2f

    nop

    db $0d

    rlca
    rlca
    jr c, @+$41

    jr nc, jr_00f_4055

    ld [hl-], a
    cpl
    ld h, b
    ld e, a
    ld a, b
    ld b, a
    sbc a
    db $e0

    db $41

    adc a
    db $f0

    db $03

    sbc a

jr_00f_4033:
    rst $20
    ei
    cp h

    db $f0, $27, $00, $04, $0c

    nop
    nop
    ccf
    ccf
    ld a, h
    ld c, a
    db $fd
    and [hl]
    db $fd
    add [hl]
    ld sp, hl
    adc $b0

    db $42

    rst $38
    add b

    db $04

    rst $38
    ld b, a
    ld a, a
    ld a, e
    ld a, h

    db $83, $00, $04, $05

jr_00f_4055:
    ld l, a

jr_00f_4056:
    ld [hl], b
    ld [hl], a
    ld e, b
    dec sp
    inc a

    db $9b, $00, $0e, $19

    INCBIN "gfx/image_00f_405f.2bpp"

    ld e, a
    ld h, h
    cp a
    ret nz

    jp hl


    sub [hl]
    rst $08
    or a
    cp e
    db $fc

    db $f0, $29, $00, $42, $25

    nop

    db $0f

    INCBIN "gfx/image_00f_4080.2bpp"

    db $47

jr_00f_4091:
    rst $38
    nop

    db $05

    cp l
    ld a, [hl]
    rst $20
    rst $20
    add c
    add c

    db $33

    nop

    db $0c

    ret nz

    ret nz

    jr nc, jr_00f_4091

    ld [$5df8], sp
    db $fd
    ccf
    and $df
    db $e4
    rst $38

    db $86, $00, $f9, $31

    nop

    db $07

    ldh a, [$fff0]
    ld hl, sp+$08
    db $fc
    add h
    db $fc
    inc h

    db $41

    cp $42

    db $01

    db $fa
    db $06

    db $8d, $01, $20, $0b

    ld a, $fe
    rst $08
    add hl, sp
    db $db
    cp l
    rst $38
    ld h, $5f
    db $e4
    ld a, a
    db $cd

    db $85, $00, $fa, $05

    cp $06
    xor [hl]
    jp c, Jump_00f_76fa

    db $f4, $21, $00, $08, $05

    db $ec
    db $ec
    or h
    db $fc
    inc h
    db $fc

    db $41

    ld [bc], a
    db $fe

    db $04

    sbc a
    rst $38
    ccf
    and $5f

    db $98, $01, $37, $0f

    INCBIN "gfx/image_00f_40f0.2bpp"

    db $a9, $01, $24, $03

    rlca
    inc b
    rrca
    db $08

    db $41

    rra
    db $10

    db $42

    ccf
    db $20

    db $44

    ld a, a
    ld b, b

    db $87, $01, $f4, $45

    rst $38
    add b

    db $89, $01, $fe, $27

    nop

    db $03

    ld bc, $0301
    ld [bc], a

    db $83, $01, $ea, $83, $01, $ec, $89, $01, $ee, $03

    ccf
    jr nz, jr_00f_416d

    db $20

    db $83, $01, $ee, $8d, $02, $04, $83, $01, $fe, $87, $02, $40, $b3, $01, $1a, $03

    rrca
    inc c
    rra
    db $10

    db $93, $02, $02, $89, $02, $14, $04

    rra
    db $10
    rrca
    nop
    inc bc

    db $38

    nop

    db $02

    rrca

jr_00f_4153:
    nop
    rra

    db $41

    nop
    ccf

    db $00

    nop

    db $d1, $02, $ba, $02

    inc a
    nop
    ld a, [hl]

    db $84, $01, $03, $cd, $02, $d4, $03

    inc e
    inc e
    rst $38
    db $e3

    db $5b

jr_00f_416d:
    rst $38
    nop

    db $a5, $01, $4e, $03

    ld a, a
    ld [hl], b
    rst $38
    add b

    db $4a

    rst $38
    nop

    db $03

    ld a, [hl]
    ld a, [hl]
    rst $38
    add c

    db $92, $03, $0c, $38

    nop

    db $03

    cp $fe
    rst $38
    db $01

    db $53

    rst $38
    nop

    db $d7, $03, $70, $02

    ld bc, $8100

    db $41

    nop
    pop bc

    db $41

    nop
    ret nz

    db $01

    nop
    add b

    db $3e

    nop

    db $05

    rlca
    rlca
    ccf
    jr c, @+$01

    ret nz

    db $9d, $03, $80, $00

    db $fe

    db $a8, $02, $b9, $01

    ld hl, sp+$00

    db $cf, $04, $0e, $83, $01, $e6, $03

    rst $08
    call z, Call_000_30ff

    db $48

    rst $38
    nop

    db $02

    ld hl, sp+$00
    db $e0

    db $94, $03, $bf, $08

    add b
    add b
    ldh [$ff60], a
    ldh a, [rNR10]
    ld hl, sp+$00
    db $f8

    db $83, $04, $15, $46

    nop
    db $fe

    db $88, $04, $07, $00

    db $f0

    db $96, $04, $3b, $41

    add c
    nop

    db $02

    add c
    nop
    add c

    db $3a

    nop

    db $00

    ld a, b

    db $86, $04, $5d, $c6, $04, $b6, $b9, $04, $a5, $8c, $01, $c9, $02

    rst $38
    add d
    ld a, a

    db $84, $01, $d9, $e0, $2f

    INCBIN "gfx/image_00f_41fd.2bpp"

    db $c3, $01, $d1, $0f

    INCBIN "gfx/image_00f_4231.2bpp"

    db $88, $02, $06, $00

    add c

    db $87, $04, $fc, $41

    rst $38
    add c

    db $a4, $02, $14, $02

    add d
    db $fc
    add h

    db $a3, $02, $40, $07

    db $fc
    inc d
    cp $22
    db $fc
    ld c, h
    ld hl, sp-$38

    db $87, $01, $de, $05

    rlca
    rlca
    rrca
    add hl, bc
    rra
    db $18

    db $a5, $05, $50, $03

    ccf
    dec hl
    ld c, [hl]
    ld a, l

    db $91, $04, $f4, $15

    INCBIN "gfx/image_00f_4275.2bpp"

    cp b
    ld a, b
    ldh a, [$ff50]
    ldh [$ffe0], a

    db $89, $02, $20, $0b

    ld [bc], a
    inc bc
    dec b
    rlca
    dec bc
    ld c, $17
    ld e, $2f
    jr c, jr_00f_42c1

    inc a

    db $41

    ld b, e
    ld a, [hl]

    db $00

    add e

    db $83, $05, $38, $02

    rst $38
    add [hl]
    db $fe

    db $83, $04, $fe, $02

    ld h, c
    ld a, a
    add c

    db $a4, $05, $b7, $03

    ldh a, [c]
    ld a, [hl]
    ldh a, [c]
    db $1e

    db $41

    db $e4
    inc a

    db $07

    ld hl, sp+$18
    ldh a, [$fff0]
    jr nz, @-$1e

    ld b, b

jr_00f_42c1:
    ret nz

    db $c5, $04, $53, $ff, $e6, $42

    ei
    ld b, d
    inc d
    ld b, e
    dec l
    ld b, e

    db $46, $43, $4b, $43, $94, $43, $dd, $43, $3e, $44

    and a
    ld b, h
    or b
    ld b, h
    cp c
    ld b, h
    jp nz, $cb44

    ld b, h
    call nc, $dd44
    ld b, h

    db $05, $fc, $04, $18, $00, $ec, $04, $14, $00, $fc, $fc, $10, $00, $fb, $f4, $00
    db $00, $ec, $fc, $0e, $01

    ld b, $fc
    db $fc
    stop
    db $fc
    inc b
    jr jr_00f_4304

jr_00f_4304:
    db $ec
    inc b
    inc d
    nop
    db $fc
    db $f4
    inc b
    nop
    db $ec
    db $fc
    ld [de], a
    nop
    db $ec
    db $f4
    ld [bc], a
    ld bc, $fc06
    inc b
    jr jr_00f_4319

jr_00f_4319:
    db $ec
    inc b
    inc d
    nop
    db $fc
    db $fc
    stop
    db $fc
    db $f4
    ld [$ec00], sp
    db $fc
    ld d, $00
    db $ec
    db $f4
    ld b, $01
    ld b, $fc
    inc b
    jr jr_00f_4332

jr_00f_4332:
    db $ec
    inc b
    inc d
    nop
    db $fc
    db $fc
    stop
    db $fc
    db $f4
    inc c
    nop
    db $ec
    db $fc
    ld a, [de]
    nop
    db $ec
    db $f4
    ld a, [bc]
    db $01

    db $01, $f4, $fc, $1c, $01, $12, $2c, $00, $3e, $60, $2c, $08, $2e, $60, $2c, $10
    db $1e, $60, $2c, $f8, $3e, $40, $2c, $f0, $2e, $40, $2c, $e8, $1e, $40, $1c, $10
    db $20, $20, $1c, $08, $30, $00, $1c, $00, $30, $00, $1c, $f8, $30, $00, $1c, $f0
    db $30, $00, $1c, $e8, $20, $00, $0c, $00, $3e, $20, $0c, $08, $2e, $20, $0c, $10
    db $1e, $20, $0c, $f8, $3e, $00, $0c, $f0, $2e, $00, $0c, $e8, $1e, $01, $12, $1c
    db $0c, $40, $20, $1c, $ec, $40, $00, $0c, $f4, $42, $00, $2c, $fc, $34, $40, $0c
    db $fc, $34, $00, $2c, $04, $42, $60, $2c, $0c, $32, $60, $2c, $14, $22, $60, $2c
    db $f4, $42, $40, $2c, $ec, $32, $40, $2c, $e4, $22, $40, $1c, $14, $24, $20, $0c
    db $04, $42, $20, $0c, $0c, $32, $20, $0c, $14, $22, $20, $1c, $e4, $24, $00, $0c
    db $ec, $32, $00, $0c, $e4, $22, $01, $18, $26, $05, $46, $60, $36, $05, $44, $60
    db $26, $f3, $46, $40, $36, $f3, $44, $40, $12, $05, $46, $20, $02, $05, $44, $20
    db $02, $f3, $44, $00, $12, $f3, $46, $00, $26, $15, $28, $60, $36, $15, $26, $60
    db $26, $0d, $38, $60, $36, $0d, $36, $60, $26, $eb, $38, $40, $26, $e3, $28, $40
    db $36, $eb, $36, $40, $36, $e3, $26, $40, $12, $15, $28, $20, $02, $15, $26, $20
    db $12, $0d, $38, $20, $02, $0d, $36, $20, $12, $eb, $38, $00, $12, $e3, $28, $00
    db $02, $eb, $36, $00, $02, $e3, $26, $01, $1a, $24, $04, $4c, $60, $24, $0c, $3c
    db $60, $24, $14, $2c, $60, $34, $04, $4a, $60, $34, $0c, $3a, $60, $34, $14, $2a
    db $60, $24, $fc, $48, $40, $24, $f4, $4c, $40, $24, $ec, $3c, $40, $24, $e4, $2c
    db $40, $34, $f4, $4a, $40, $34, $ec, $3a, $40, $34, $e4, $2a, $40, $14, $04, $4c
    db $20, $14, $0c, $3c, $20, $14, $14, $2c, $20, $04, $04, $4a, $20, $04, $0c, $3a
    db $20, $04, $14, $2a, $20, $14, $fc, $48, $00, $14, $f4, $4c, $00, $14, $ec, $3c
    db $00, $14, $e4, $2c, $00, $04, $f4, $4a, $00, $04, $ec, $3a, $00, $04, $e4, $2a
    db $01

    ld [bc], a
    inc c
    nop
    ld d, b
    nop
    inc c
    ld hl, sp+$4e
    ld bc, $0c02
    nop
    ld d, h
    nop
    inc c
    ld hl, sp+$52
    ld bc, $0c02
    nop
    ld e, b
    nop
    inc c
    ld hl, sp+$56
    ld bc, $0c02
    nop
    ld e, h
    nop
    inc c
    ld hl, sp+$5a
    ld bc, $0c02
    ld hl, sp+$58
    ld h, b
    inc c
    nop
    ld d, [hl]
    ld h, c
    ld [bc], a
    inc c
    ld hl, sp+$54
    ld h, b
    inc c
    nop
    ld d, d
    ld h, c
    ld [bc], a
    inc c
    ld hl, sp+$50
    ld h, b
    inc c
    nop
    ld c, [hl]
    ld h, c

    db $0d, $6c, $49, $17, $f3, $0d, $0f, $43, $20, $0d, $4b, $45, $03, $41, $48, $4f
    db $04, $c6, $42, $0f, $0d, $ef, $48, $0d, $12, $49, $12, $09, $45, $0d, $50, $0f
    db $9c, $a0, $b3, $0f, $40, $00, $08, $00, $00, $2a, $08, $05, $0a, $08, $00, $00
    db $2a, $f8, $05, $0a, $06, $0c, $45, $17, $f6, $0d, $0d, $45, $45, $04, $c6, $42
    db $0f, $0d, $38, $49, $01, $05, $05, $04, $05, $1e, $05, $06, $24, $15, $01, $06
    db $05, $06, $01, $07, $05, $06, $01, $08, $05, $04, $0d, $4b, $45, $16

    db $16

    ld a, $01
    ld [$dd5b], a
    ret


    xor a
    ld [$dd5b], a
    ret


    db $0d, $91, $2b, $16

    rla
    or $0d
    inc b
    add $42
    rrca
    add hl, de
    add hl, bc
    ld [$0c19], sp
    ld [$0e19], sp
    ld [$5b06], sp
    ld b, l

    db $17, $f3, $0d, $03, $18, $48, $4f, $0f, $27, $00, $04, $c6, $42, $0f, $20, $38
    db $00, $21, $24, $00, $20, $38, $00, $21, $24, $00, $07, $33, $01, $08, $f8, $fd
    db $2a, $2b, $05, $28, $07, $00, $00, $08, $00, $00, $2a, $00, $20, $68, $00, $21
    db $5c, $00, $06, $e6, $44

    rla
    di
    dec c
    inc bc
    jr @+$4a

    ld c, a
    rrca
    daa
    nop
    inc b
    add $42
    rrca
    jr nz, jr_00f_4614

    nop
    ld hl, $005c
    jr nz, jr_00f_461a

    nop
    ld hl, $005c
    rlca
    call Call_000_08fe
    ld hl, sp-$05
    ld a, [hl+]
    ld hl, $2805
    rlca
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    jr nz, @+$3a

    nop
    ld hl, $0024
    ld b, $e6
    ld b, h

    db $17, $f3, $0d, $03, $18, $48, $4f, $0f, $27, $00, $04, $c6, $42, $0f, $20, $68
    db $00, $21, $5c, $00, $20, $68, $00, $21, $5c, $00, $07, $33, $01, $08, $00, $fc
    db $2a, $23, $05, $28, $07, $00, $00, $08, $00, $00, $2a, $00, $20, $98, $00, $21
    db $2c, $00, $06, $e6, $44

    rla
    di
    dec c
    inc bc
    jr @+$4a

    ld c, a
    rrca
    daa
    nop
    inc b
    add $42
    rrca

jr_00f_4614:
    jr nz, @-$66

    nop
    ld hl, $002c

jr_00f_461a:
    jr nz, @-$66

    nop
    ld hl, $002c
    rlca
    call Call_000_08fe
    nop
    cp $2a
    jr z, @+$07

    jr z, jr_00f_4632

    nop
    nop
    ld [$0000], sp
    ld a, [hl+]

jr_00f_4631:
    nop

jr_00f_4632:
    jr nz, jr_00f_469c

    nop
    ld hl, $005c
    ld b, $e6
    ld b, h
    rla
    di
    dec c
    inc bc
    jr @+$4a

    ld c, a
    rrca
    daa
    nop
    inc b
    add $42

jr_00f_4648:
    rrca
    jr nz, @-$66

    nop
    ld hl, $002c
    jr nz, @-$66

    nop
    ld hl, $002c
    rlca
    inc sp
    ld bc, $f808
    db $fd
    ld a, [hl+]
    dec hl
    dec b
    jr z, jr_00f_4667

    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_00f_4667:
    jr nz, jr_00f_4631

    nop
    ld hl, $0064
    ld b, $e6
    ld b, h
    rla
    di
    dec c
    inc bc
    jr @+$4a

    ld c, a
    rrca
    daa
    nop
    inc b
    add $42

jr_00f_467d:
    rrca
    jr nz, jr_00f_4648

    nop
    ld hl, $0064
    jr nz, @-$36

    nop
    ld hl, $0064
    rlca
    call Call_000_08fe
    ld hl, sp-$05
    ld a, [hl+]
    ld hl, $2805
    rlca
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_00f_469c:
    jr nz, @-$66

    nop
    ld hl, $002c
    ld b, $e6
    ld b, h
    rla
    di
    dec c
    inc bc
    jr @+$4a

    ld c, a
    rrca
    daa
    nop
    inc b
    add $42
    rrca
    jr nz, jr_00f_467d

    nop
    ld hl, $0064
    jr nz, @-$36

    nop
    ld hl, $0064
    rlca
    inc sp
    ld bc, $f808
    ei
    ld a, [hl+]
    ld hl, $2805
    rlca
    nop

jr_00f_46cb:
    nop
    ld [$0000], sp
    ld a, [hl+]

jr_00f_46d0:
    nop
    jr nz, jr_00f_46cb

    nop
    ld hl, $002c
    ld b, $e6
    ld b, h
    rla
    di
    dec c
    inc bc
    jr @+$4a

    ld c, a
    rrca

jr_00f_46e2:
    daa
    nop
    inc b
    add $42
    rrca

jr_00f_46e8:
    jr nz, jr_00f_46e2

    nop
    ld hl, $002c
    jr nz, jr_00f_46e8

    nop
    ld hl, $002c
    rlca
    call Call_000_08fe
    ld hl, sp-$03
    ld a, [hl+]
    dec hl
    dec b
    jr z, jr_00f_4706

    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_00f_4706:
    jr nz, jr_00f_46d0

    nop
    ld hl, $0064
    ld b, $e6
    ld b, h
    rla
    di
    dec c
    inc bc
    jr jr_00f_475d

    ld c, a
    rrca

jr_00f_4717:
    daa
    nop
    inc b
    add $42
    rrca

jr_00f_471d:
    jr nz, jr_00f_4717

    nop
    ld hl, $002c
    jr nz, jr_00f_471d

    nop
    ld hl, $002c
    rlca
    inc sp
    ld bc, $0008
    cp $2a
    jr z, @+$07

    jr z, jr_00f_473b

    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_00f_473b:
    jr nz, jr_00f_4765

    ld bc, $5c21
    nop
    ld b, $e6
    ld b, h
    rla
    di
    dec c
    inc bc
    jr jr_00f_4792

    ld c, a
    rrca
    daa
    nop
    inc b
    add $42
    rrca
    jr nz, jr_00f_477c

    ld bc, $5c21
    nop
    jr nz, jr_00f_4782

    ld bc, $5c21

jr_00f_475d:
    nop
    rlca
    call Call_000_08fe
    nop
    db $fc
    ld a, [hl+]

jr_00f_4765:
    inc hl
    dec b
    jr z, jr_00f_4770

    nop

jr_00f_476a:
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_00f_4770:
    jr nz, jr_00f_476a

    nop
    ld hl, $002c
    ld b, $e6
    ld b, h
    rla
    di
    dec c

jr_00f_477c:
    inc bc
    jr jr_00f_47c7

    ld c, a
    rrca
    daa

jr_00f_4782:
    nop
    inc b
    add $42
    rrca
    jr nz, jr_00f_47b1

    ld bc, $5c21
    nop
    jr nz, jr_00f_47b7

    ld bc, $5c21

jr_00f_4792:
    nop
    rlca
    inc sp
    ld bc, $f808
    ei
    ld a, [hl+]
    ld hl, $2805
    rlca
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    jr nz, @+$5a

    ld bc, $2421
    nop
    ld b, $e6
    ld b, h
    rla
    di
    dec c

jr_00f_47b1:
    inc bc
    jr @+$4a

    ld c, a
    rrca
    daa

jr_00f_47b7:
    nop
    inc b
    add $42
    rrca
    jr nz, jr_00f_4816

    ld bc, $2421
    nop
    jr nz, @+$5a

    ld bc, $2421

jr_00f_47c7:
    nop
    rlca
    call Call_000_08fe
    ld hl, sp-$03
    ld a, [hl+]
    dec hl
    dec b
    jr z, jr_00f_47da

    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_00f_47da:
    jr nz, @+$2a

    ld bc, $5c21
    nop
    ld b, $e6
    ld b, h

    db $17, $f6, $0d, $03, $37, $48, $4f, $04, $c6, $42, $0f, $18, $01, $ff, $05, $0a
    db $01, $04, $05, $14, $16, $0d, $5d, $49, $0d, $e8, $48, $0e, $0c, $67, $45

    sbc h
    ld b, l

    db $d1, $45

    ld b, $46
    dec sp
    ld b, [hl]
    ld [hl], b
    ld b, [hl]
    and l
    ld b, [hl]
    jp c, Jump_000_0f46

    ld b, a
    ld b, h
    ld b, a
    ld a, c
    ld b, a

jr_00f_4816:
    xor [hl]
    ld b, a

    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld e, $27
    ld a, [de]
    and a
    jr z, jr_00f_482a

    dec a
    ld [de], a
    ret


jr_00f_482a:
    ld a, $04
    ld [de], a
    ld bc, $4834
    call Call_000_0f50
    ret


    db $9b, $a0, $b3

    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ret


    call Call_000_0357
    ldh a, [$ff9a]
    ld d, a
    ld a, [$dd5b]
    and a
    jr nz, jr_00f_4861

    ld e, $43
    ld a, [de]
    and a
    jr z, jr_00f_4857

    dec a
    ld [de], a
    jr jr_00f_4861

jr_00f_4857:
    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_00f_48d4

    bit 3, a
    jr nz, jr_00f_48d4

jr_00f_4861:
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld hl, $db60
    ld a, [hl]
    add a
    ld c, a
    ld a, [$db6a]
    ld hl, $db7b
    cp [hl]
    ret nz

    ld a, [$dd5b]
    and a
    ret nz

    ld e, $40
    ld a, [de]
    cp $10
    jr c, jr_00f_488f

    ldh a, [$ffa5]
    bit 4, a
    jr nz, jr_00f_4892

    bit 5, a
    jr nz, jr_00f_48b0

    ret


jr_00f_488f:
    inc a
    ld [de], a
    ret


jr_00f_4892:
    ld hl, $db6a
    ld b, [hl]
    ld hl, $db60
    ld a, [hl]
    cp $06
    ret z

    inc a

jr_00f_489e:
    and a
    jr z, jr_00f_48aa

    ld e, $00
    srl b
    rl e
    dec a
    jr jr_00f_489e

jr_00f_48aa:
    bit 0, e
    ret z

    inc [hl]
    jr jr_00f_48b9

jr_00f_48b0:
    ld hl, $db60
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    dec c

jr_00f_48b9:
    ld a, c
    cp $0c
    ret nc

    ld [$dd59], a
    push de
    ld e, $56
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    ld e, $0f
    ld bc, $47f8
    jp Jump_000_0846


jr_00f_48d4:
    push de
    ld e, $2d
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    ld e, $0f
    ld bc, $4550
    jp Jump_000_0846


    ld e, $27
    ld a, [$dd59]
    ld [de], a
    ret


    ld e, $15
    ld hl, $a071
    ld a, [hl]
    ld [de], a
    ld a, [$db60]
    ld hl, $6111
    add a
    add a
    add l
    ld l, a
    jr nc, jr_00f_4903

    inc h

jr_00f_4903:
    ld e, $04
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $07
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld hl, $db60
    ld a, [hl]
    cp $06
    jr z, jr_00f_492f

    ld a, [$db6a]
    ld hl, $db7b
    cp [hl]
    jr nz, jr_00f_4929

jr_00f_4923:
    ld e, $27
    ld a, $01
    ld [de], a
    ret


jr_00f_4929:
    ld [hl], a
    ld e, $27
    xor a
    ld [de], a
    ret


jr_00f_492f:
    ld a, [$db6a]
    ld hl, $db7b
    ld [hl], a
    jr jr_00f_4923

    ld a, [$db6a]
    ld e, a
    xor a

jr_00f_493d:
    srl e
    jr nc, jr_00f_4944

    inc a
    jr jr_00f_493d

jr_00f_4944:
    ld hl, $6111
    add a
    add a
    add l
    ld l, a
    jr nc, jr_00f_494e

    inc h

jr_00f_494e:
    ld e, $04
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $07
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    push de
    push bc
    ld e, $07
    ld hl, $6035
    ld a, $1e
    call Call_000_05cf
    pop bc
    pop de
    ret


    push de
    push bc
    ld a, [$da36]
    or a
    jr nz, jr_00f_4980

    ld hl, $db60
    ld e, [hl]
    ld hl, $6035
    ld a, $1e
    call Call_000_05cf

jr_00f_4980:
    pop bc
    pop de
    ret


    db $09

    rlca
    rlca
    jr @+$21

    inc l
    inc sp
    ld e, e
    ld h, h
    ld a, a
    ld b, b

    db $43

    cp a
    ret nz

    db $01

    ld a, a
    ld b, b

    db $41

    ld e, a
    ld h, b

    db $41

    ld c, a
    ld [hl], b

    db $11

    INCBIN "gfx/image_00f_499b.2bpp"

    rrca
    rrca

    db $31

    nop

    db $93, $00, $00, $85, $00, $12, $13

    INCBIN "gfx/image_00f_49b6.2bpp"

    inc c
    rrca
    inc bc
    inc bc

    db $f0, $23, $00, $2e, $87, $00, $56, $05

    cp h
    jp $e996


    add c
    db $fe

    db $83, $00, $26, $03

    jr c, @+$41

    rrca
    rrca

    db $37

    nop

    db $01

    rrca
    rrca

    db $8f, $00, $02, $15

    INCBIN "gfx/image_00f_49e9.2bpp"

    ld sp, $1c3f
    rra
    inc bc
    inc bc

    db $39

    nop

    db $03

    rst $38
    rst $38
    ld a, h
    add e

    db $4a

    rst $38
    nop

    db $11

    INCBIN "gfx/image_00f_4a0a.2bpp"

    sbc b
    sbc a

    db $d3, $00, $41, $03

    ldh [$ffe0], a
    ld a, a
    sbc a

    db $f0, $23, $01, $06, $03

    ld h, b
    rst $38
    sbc h
    sbc a

    db $93, $00, $6c, $07

    ret nz

    ret nz

    ld a, b
    cp b
    rst $38
    rlca
    db $fc
    inc bc

    db $48

    rst $38
    nop

    db $03

    ccf
    ret nz

    add a
    ld a, b

    db $85, $01, $26, $03

    jr c, jr_00f_4a86

    rlca
    rlca

    db $35

    nop

    db $09

    add b
    add b
    ld h, b
    ldh [$ff38], a
    ld hl, sp-$71
    ld a, a
    ld hl, sp+$07

    db $97, $01, $8a, $05

    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]

    db $97, $00, $a6, $ff, $0f

    INCBIN "gfx/image_00f_4a65.2bpp"

    db $41

    rst $38
    add b

    db $0b

    xor a
    ret nc

    ld e, a
    ld [hl], b
    add hl, sp
    ld a, $47
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e

    db $2b

jr_00f_4a86:
    nop

    db $19

    INCBIN "gfx/image_00f_4a88.2bpp"

    cp a
    ldh a, [$ff7f]
    ld a, a
    inc bc
    inc bc
    ccf
    inc a
    ld a, a
    ld d, b

    db $41

    rst $38
    add c

    db $15

    INCBIN "gfx/image_00f_4aa6.2bpp"

    ld de, $091f
    rrca
    ld b, $06

    db $a6, $00, $40, $0a

    ld b, c
    rst $38
    ld b, c
    rst $08
    ld [hl], c
    db $fd
    inc bc
    cp $82
    db $fa
    add [hl]

    db $ad, $00, $52, $05

    nop
    nop
    ld [hl], a
    ld [hl], a
    cp e
    db $cc

    db $42

    rst $38
    add b

    db $13

    INCBIN "gfx/image_00f_4ad9.2bpp"

    inc sp
    ccf
    inc c
    inc c

    db $ae, $00, $80, $08

    ld b, e
    cp $42
    jp c, $fe66

    ld c, $f1
    sbc a

    db $a7, $00, $98, $83, $00, $00, $07

    rla
    jr jr_00f_4b33

    ld sp, $213f
    ld a, a
    ld b, c

    db $c4, $00, $3c, $1c

    INCBIN "gfx/image_00f_4b0d.2bpp"

    db $fc
    sbc $32
    rst $30
    add hl, bc
    rst $38
    ld b, c
    db $fd
    ld b, e
    rst $38
    ld b, c
    rst $38
    db $01

    db $a3, $00, $8e, $41

    db $fa
    db $06

    db $09

    db $f4
    inc c

jr_00f_4b33:
    xor $1e
    ld sp, $c1ff
    rst $38
    ld a, $3e

    db $aa, $00, $00, $04

    ld b, [hl]
    cp $42
    db $fd
    ld b, e

    db $a4, $00, $10, $00

    adc e

    db $bb, $00, $16, $02

    db $fd
    inc bc
    rst $38

    db $84, $00, $e9, $15

    INCBIN "gfx/image_00f_4b54.2bpp"

    ld a, [$fe06]
    ld b, $f9
    ld c, a

    db $41

jr_00f_4b6b:
    pop af
    rra

    db $03

    pop de
    ccf

jr_00f_4b70:
    sub d
    ld a, [hl]

    db $c3, $00, $63, $0c

    add b
    add b
    nop

jr_00f_4b79:
    nop
    inc bc
    inc bc
    rrca
    inc c
    rla
    jr @+$81

    ld [hl], b
    cp a

    db $85, $00, $35, $10

    INCBIN "gfx/image_00f_4b87.2bpp"

    db $0e

    db $ff, $b9, $4b, $c2, $4b, $cb, $4b, $d4, $4b, $dd, $4b

    and $4b
    rst $28
    ld c, e

    db $f8, $4b, $01, $4c, $22, $4c, $43, $4c, $64, $4c, $85, $4c, $8e, $4c, $97, $4c
    db $a0, $4c, $02, $f8, $00, $30, $00, $f8, $f8, $20, $01, $02, $f8, $00, $32, $00
    db $f8, $f8, $22, $01, $02, $f8, $00, $26, $00, $f8, $f8, $24, $01, $02, $f8, $00
    db $2a, $00, $f8, $f8, $28, $01, $02, $f8, $00, $2e, $00, $f8, $f8, $2c, $01

    ld [bc], a
    ld hl, sp+$00
    jr nc, jr_00f_4b6b

    ld hl, sp-$08
    jr nz, jr_00f_4b70

    ld [bc], a
    ld hl, sp+$00
    ld a, [hl+]
    add b
    ld hl, sp-$08
    jr z, jr_00f_4b79

    db $02, $f8, $00, $26, $80, $f8, $f8, $24, $81, $08, $04, $00, $12, $20, $04, $08
    db $02, $20, $f4, $00, $10, $20, $f4, $08, $00, $20, $04, $f8, $12, $00, $04, $f0
    db $02, $00, $f4, $f8, $10, $00, $f4, $f0, $00, $01, $08, $05, $00, $16, $20, $05
    db $08, $06, $20, $f5, $00, $14, $20, $f5, $08, $04, $20, $05, $f8, $16, $00, $05
    db $f0, $06, $00, $f5, $f8, $14, $00, $f5, $f0, $04, $01, $08, $06, $00, $1a, $20
    db $06, $08, $0a, $20, $f6, $00, $18, $20, $f6, $08, $08, $20, $06, $f8, $1a, $00
    db $06, $f0, $0a, $00, $f6, $f8, $18, $00, $f6, $f0, $08, $01, $08, $08, $00, $1e
    db $20, $08, $08, $0e, $20, $f8, $00, $1c, $20, $f8, $08, $0c, $20, $08, $f8, $1e
    db $00, $08, $f0, $0e, $00, $f8, $f8, $1c, $00, $f8, $f0, $0c, $01, $02, $f8, $00
    db $34, $00, $f8, $f8, $36, $01, $02, $f8, $f8, $34, $20, $f8, $00, $36, $21, $02
    db $f8, $00, $34, $40, $f8, $f8, $36, $41, $02, $f8, $00, $36, $60, $f8, $f8, $34
    db $61, $29

    nop

    db $01

    add b
    add b

    db $41

    ld b, b
    ret nz

    db $00

    db $20

    db $22

    db $e0

    db $41

    db $10
    db $f0

    db $05

    jr nz, @-$1e

    ld h, b
    ldh [$ffc0], a
    ret nz

    db $a3, $00, $08, $01

    db $01
    db $01

    db $b9, $00, $04, $87, $00, $22, $07

    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rrca
    db $08

    db $41

    rla

jr_00f_4cd6:
    db $18

    db $41

    rra
    db $10

    db $05

    ld e, $19
    rrca
    rrca
    ld b, $05

    db $42

    db $08
    rrca

    db $01

    add hl, bc
    db $0e

    db $83, $00, $50, $01

    cpl
    db $30

    db $41

    ccf
    db $20

    db $07

    ccf
    ld [hl+], a
    rra
    ld de, $1817
    dec bc

jr_00f_4cf8:
    inc c

    db $83, $00, $3a, $00

    ld [bc], a

    db $84, $00, $3d, $f0, $21, $00, $40, $01

    db $08
    rrca

    db $85, $00, $64, $01

    dec a
    ld [hl+], a

    db $41

    ccf
    inc h

    db $01

    rra
    inc de

    db $93, $00, $72, $23

    nop

    db $09

    ld e, $1e
    dec l
    inc sp
    dec a
    ld [hl+], a
    ccf
    jr nz, @+$31

    db $30

    db $41

    rla
    db $18

    db $03

    rrca
    ld [$0f0b], sp

    db $41

    ld b, $05

    db $02

    inc b
    rlca
    inc b

    db $84, $00, $33, $01

    dec bc
    inc c

    db $88, $00, $64, $0c

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

    db $31

    nop

    db $e0, $2d

    INCBIN "gfx/image_00f_4d4e.2bpp"

    rst $30
    ld [$c4ff], sp
    ccf
    db $e4
    rra
    ld hl, sp+$1f
    ldh a, [$ff97]
    ld hl, sp-$01
    rst $38

    db $23

    nop

    db $0b

    ld hl, sp-$08
    halt
    adc [hl]
    db $fd
    dec hl
    cp $29
    add hl, sp
    xor $ff
    nop

    db $41

    rst $38
    db $10

    db $02

    rst $38
    add c
    db $fe

    db $41

    rst $38
    nop

    db $08

    rst $38
    jp $c3bd


    rst $38
    jr @+$01

    srl h

    db $42

    rst $38
    nop

    db $01

    ld a, [hl]
    add c

    db $41

    rst $38
    ld b, d

    db $01

    rst $38
    add c

    db $42

    rst $38
    nop

    db $00

    rst $38

    db $41

    rst $38
    db $18

    db $02

    rst $38
    rst $20

jr_00f_4db6:
    rst $20

    db $88, $01, $40, $0f

    INCBIN "gfx/image_00f_4dbb.2bpp"

    db $92, $01, $57, $01

    rst $38
    nop

    db $83, $01, $70, $91, $01, $72, $01

    nop
    nop

    db $93, $01, $40, $01

    ld a, l
    add e

    db $8d, $01, $56, $92, $01, $66, $02

    nop
    rst $38
    rst $38

    db $31

    nop

    db $15

    INCBIN "gfx/image_00f_4ded.2bpp"

    and $fa
    ld b, $fa
    ld [bc], a
    db $fe

    db $a5, $01, $28, $01

    ld b, b
    cp a

    db $b3, $01, $30, $87, $00, $04, $85, $00, $0a, $02

    ret nz

    ld b, b
    ret nz

    db $c4, $02, $52, $42

    jr nz, @-$1e

    db $f4, $25, $00, $60, $99, $02, $46, $f4, $29, $00, $a0, $9b, $02, $44, $f4, $23
    db $00, $e6, $84, $01, $12, $00

    db $18

    db $85, $01, $18, $83, $01, $1c, $05

    ld a, a
    ld b, d
    ld a, e
    ld h, a
    inc a
    ccf

    db $8e, $02, $08, $00

    xor h

    db $85, $02, $18, $83, $02, $1c, $05

    rst $38
    rlca
    ei
    db $fd
    inc bc
    db $fd

    db $89, $00, $04, $05

    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a

    db $a3, $00, $4a, $11

    INCBIN "gfx/image_00f_4e60.2bpp"

    db $fc
    inc b

    db $a4, $03, $16, $12

    INCBIN "gfx/image_00f_4e76.2bpp"

    ld a, b
    jr nc, @+$32

    db $25

    nop

    db $07

    ld a, $3e
    db $dd
    db $e3
    ld a, a
    add b
    rst $38
    nop

    db $42

    rst $38
    ld a, [bc]

    db $07

    rst $38
    nop
    rst $38
    jr nz, @-$3f

    ld a, a
    ret nz

    rst $38

    db $41

    add b
    ld a, a

    db $02

    ld b, $fd
    db $06

    db $83, $01, $59, $0a

    inc a
    rst $38
    nop
    rst $28
    db $10
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    db $18

    db $89, $01, $b0, $41

    db $10
    db $f0

    db $01

    ldh [$ffe0], a

    db $ad, $02, $42, $a5, $03, $4a, $00

    rlca

    db $83, $00, $38, $00

    rlca

    db $25

    inc bc

    db $01

    ld [bc], a
    inc bc

    db $a5, $02, $58, $03

    dec b
    ld b, $09
    db $0e

    db $83, $00, $4a, $41

    dec bc
    inc c

    db $04

    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a

    db $86, $00, $79, $ff, $e5, $ff

    nop

    db $ff, $0d, $4f, $22, $4f

    dec sp
    ld c, a

    db $54, $4f, $6d, $4f

    add [hl]
    ld c, a
    sbc e
    ld c, a

    db $b4, $4f

    call $ee4f
    ld c, a
    rrca
    ld d, b
    jr nc, @+$52

    ld d, c
    ld d, b
    ld l, d
    ld d, b
    add e
    ld d, b
    sbc h
    ld d, b

    db $05, $e8, $fe, $52, $00, $e8, $f6, $50, $00, $f8, $04, $4e, $00, $f8, $fc, $3e
    db $00, $f8, $f4, $2e, $01, $06, $f7, $00, $42, $00, $f7, $f8, $32, $00, $f7, $f0
    db $22, $00, $e7, $fe, $40, $00, $e7, $f6, $30, $00, $f7, $08, $20, $01

    ld b, $f8
    inc b
    ld b, [hl]
    nop
    ld hl, sp-$04
    ld [hl], $00
    ld hl, sp-$0c
    ld h, $00
    add sp, $04
    ld b, h
    nop
    add sp, -$04
    inc [hl]
    nop
    add sp, -$0c
    inc h
    db $01

    db $06, $f8, $04, $4a, $00, $f8, $fc, $3a, $00, $f8, $f4, $2a, $00, $e8, $04, $48
    db $00, $e8, $fc, $38, $00, $e8, $f4, $28, $01, $06, $f8, $04, $4e, $00, $f8, $fc
    db $3e, $00, $f8, $f4, $2e, $00, $e8, $04, $4c, $00, $e8, $fc, $3c, $00, $e8, $f4
    db $2c, $01

    dec b
    add sp, -$02
    ld d, d
    add b
    add sp, -$0a
    ld d, b
    add b
    ld hl, sp+$04
    ld c, [hl]
    add b
    ld hl, sp-$04
    ld a, $80
    ld hl, sp-$0c
    ld l, $81
    ld b, $f8
    nop
    ld b, d
    add b
    ld hl, sp-$08
    ld [hl-], a
    add b
    ld hl, sp-$10
    ld [hl+], a
    add b
    add sp, -$02
    ld b, b
    add b
    add sp, -$0a
    jr nc, @-$7e

    ld hl, sp+$08
    jr nz, @-$7d

    db $06, $f8, $04, $46, $80, $f8, $fc, $36, $80, $f8, $f4, $26, $80, $e8, $04, $44
    db $80, $e8, $fc, $34, $80, $e8, $f4, $24, $81

    ld [$0004], sp
    ld [de], a
    jr nz, jr_00f_4fd7

    ld [$2002], sp
    db $f4

jr_00f_4fd7:
    nop
    db $10
    jr nz, @-$0a

    ld [$2000], sp
    inc b
    ld hl, sp+$12
    nop
    inc b
    ldh a, [rSC]
    nop
    db $f4
    ld hl, sp+$10
    nop
    db $f4
    ldh a, [rP1]
    ld bc, $0508
    nop

jr_00f_4ff1:
    ld d, $20
    dec b
    ld [$2006], sp
    push af
    nop
    inc d
    jr nz, jr_00f_4ff1

    ld [$2004], sp
    dec b
    ld hl, sp+$16
    nop
    dec b
    ldh a, [rTMA]
    nop
    push af
    ld hl, sp+$14
    nop
    push af
    ldh a, [rDIV]
    ld bc, $0608
    nop
    ld a, [de]
    jr nz, @+$08

    ld [$200a], sp
    or $00
    jr jr_00f_503c

    or $08
    ld [$0620], sp
    ld hl, sp+$1a
    nop
    ld b, $f0
    ld a, [bc]
    nop
    or $f8
    jr jr_00f_502c

jr_00f_502c:
    or $f0
    ld [$0801], sp
    ld [$1e00], sp
    jr nz, jr_00f_503e

jr_00f_5036:
    ld [$200e], sp
    ld hl, sp+$00
    inc e

jr_00f_503c:
    jr nz, jr_00f_5036

jr_00f_503e:
    ld [$200c], sp
    ld [$1ef8], sp
    nop
    ld [$0ef0], sp
    nop
    ld hl, sp-$08
    inc e
    nop
    ld hl, sp-$10
    inc c
    ld bc, $f806
    ldh a, [c]
    ld e, [hl]
    nop
    add sp, -$0e

jr_00f_5058:
    ld e, h
    nop
    ld hl, sp-$06
    ld e, d
    nop
    add sp, -$06

jr_00f_5060:
    ld e, b
    nop
    ld hl, sp+$02
    ld d, [hl]
    nop
    add sp, $02

jr_00f_5068:
    ld d, h
    ld bc, $f806

jr_00f_506c:
    ld b, $5e
    jr nz, jr_00f_5058

    ld b, $5c
    jr nz, jr_00f_506c

jr_00f_5074:
    cp $5a
    jr nz, jr_00f_5060

    cp $58
    jr nz, jr_00f_5074

    or $56
    jr nz, jr_00f_5068

    or $54
    ld hl, $f806
    ldh a, [c]
    ld e, [hl]
    nop
    add sp, -$0e

jr_00f_508a:
    ld e, h
    nop
    ld hl, sp-$06
    ld e, d
    nop
    add sp, -$06

jr_00f_5092:
    ld e, b
    nop
    ld hl, sp+$02
    ld d, [hl]
    nop
    add sp, $02

jr_00f_509a:
    ld d, h
    ld bc, $f806

jr_00f_509e:
    ld b, $5e
    jr nz, jr_00f_508a

    ld b, $5c
    jr nz, jr_00f_509e

jr_00f_50a6:
    cp $5a
    jr nz, jr_00f_5092

    cp $58
    jr nz, jr_00f_50a6

    or $56
    jr nz, jr_00f_509a

    or $54
    ld hl, $0027
    inc bc
    dec e
    dec e
    dec hl
    ld [hl], $41
    ccf
    jr nz, jr_00f_50cf

    cpl
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

jr_00f_50cf:
    sbc [hl]
    inc hl
    nop
    inc hl
    ld bc, $0241
    inc bc
    ld de, $0704
    inc e
    dec de
    inc a
    inc hl
    ld [hl], b
    ld c, a
    ld a, h
    ld b, e
    inc a
    inc sp
    ld a, [bc]
    dec c
    rlca
    ld b, $01
    ld bc, $0029
    rla
    ldh [$ffe0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $a2
    db $fd
    and e
    rst $20
    cp c
    cp $01
    rst $38
    ld b, b
    ld a, [$e945]
    rra
    cp $f7
    db $ec
    rra
    add l
    nop
    jr z, jr_00f_510c

    inc c
    dec bc
    inc e

jr_00f_510c:
    inc de
    add l
    nop
    jr nc, jr_00f_511a

    ld a, h
    ld b, e
    inc a
    ccf
    ld [bc], a
    inc bc
    ld bc, $0101

jr_00f_511a:
    ld bc, $0033
    and e
    nop
    ld h, $0d
    ld [hl], b
    ldh a, [$ffe8]
    sbc b
    ld hl, sp+$08
    ld hl, sp+$38
    call nc, $bc6c
    call nz, $a47c
    add a
    nop
    ld h, $03
    inc a
    dec sp
    ld a, h
    ld b, e
    add h
    nop
    ld [hl-], a
    inc b
    inc hl
    inc e
    dec de
    ld b, $07
    add e
    nop
    halt
    ccf
    nop
    adc l
    nop
    inc h
    add [hl]
    nop
    xor d
    ld [bc], a
    inc sp
    ld c, $0f
    ldh a, [rNR44]
    nop
    or [hl]
    rla
    ld e, $1e
    dec l
    inc sp
    ccf
    jr nz, @+$31

    ld sp, $705f
    db $f4
    sbc e
    ei
    adc h
    ld a, a
    add $3f
    pop af
    dec c
    cp $03
    rst $38
    ldh a, [$ff6f]
    ld b, c
    nop
    rst $38
    inc bc
    rlca
    db $fc
    ld c, $f9
    jp Jump_000_3201


    dec b
    add b
    ld a, a
    db $db
    and h
    ld a, a
    ld a, a
    rlc b
    ld b, l
    inc d
    dec bc
    inc c
    rla
    jr @+$21

    db $10
    rla
    jr jr_00f_5198

    ld c, $17
    ld a, [de]
    ccf
    ld sp, $784f
    ld b, a
    ld a, h
    adc e
    rst $30
    inc hl
    ld b, e

jr_00f_5198:
    rst $38
    jr nz, jr_00f_519b

jr_00f_519b:
    rst $18
    ld b, c
    inc bc
    cp $41
    ld [bc], a
    rst $38
    nop
    inc bc
    add h
    ld bc, $0737
    ret nz

    ccf
    db $db
    and h
    ld a, e
    ld h, h
    rra
    rra
    dec hl
    nop
    inc bc
    rlca
    rlca
    ld a, [bc]
    dec c
    ld b, c
    rrca
    ld [$0b07], sp
    inc c
    rrca
    inc c
    rla
    ld a, [de]
    ld e, $13
    add e
    ld bc, $8358
    nop
    inc e
    dec c
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
    add e
    ld bc, $0172
    nop
    rst $38
    adc a
    ld bc, $c378
    nop
    or a
    rrca
    rrca
    ld [$1817], sp
    ccf
    jr nz, jr_00f_5248

    ld h, e
    ld a, a
    ld b, b
    ld [hl], a
    ld l, b
    ei
    call c, $e73e
    sub a
    ld bc, $03a0
    add b
    ld a, a
    ret nz

    cp a
    add e
    ld bc, $9b7c
    nop
    db $fc
    ld [de], a
    db $ed
    di
    rst $38
    ld bc, $13fd
    cp $a3
    ei
    and [hl]
    rst $30
    inc c
    rst $38
    jr @+$01

    db $e3
    db $ec
    rra
    ldh a, [rSCY]
    rst $38
    nop
    inc b
    rst $38
    ldh a, [$ff1f]
    cp b
    ld c, a
    add l
    ld [bc], a
    ld a, [hl+]
    inc bc
    ld l, l
    sub d
    rst $38
    rst $38
    dec h
    nop
    dec b
    db $fc
    db $fc
    ld a, d
    add [hl]
    db $fd
    dec hl
    ld b, c
    rst $38
    jr z, jr_00f_5244

    add hl, sp
    add $ff
    db $10
    cp $11
    rst $38
    ld bc, $867b
    rst $08
    db $fc
    or a
    ld a, b
    ld a, e

jr_00f_5244:
    add a
    add a
    ld [bc], a
    ld a, [hl+]

jr_00f_5248:
    and e
    ld bc, $0130
    ldh [$ff3f], a
    ld b, c
    and b
    ld a, a
    nop
    ldh [$ffa6], a
    ld bc, $05ef
    ld l, l
    sub d
    ld l, a
    sub e
    db $fc
    db $fc
    dec hl
    nop
    dec b
    ld a, e
    ld a, e
    db $fd
    add [hl]
    rst $38
    nop
    add h
    ld [bc], a
    ld c, h
    add hl, bc
    xor $ff
    ld bc, $11ff
    ld a, e
    sub [hl]
    or a
    call z, $8afe
    ld [bc], a
    daa
    dec b
    ldh [$ff3f], a
    ldh a, [$ff1f]
    or b
    ld e, a
    adc l
    ld [bc], a
    ld [hl], d
    sub [hl]
    nop

jr_00f_5283:
    ld b, b
    nop
    nop
    add l
    nop
    ld e, b

jr_00f_5289:
    sub l
    ld [bc], a
    and d
    add e
    ld [bc], a
    halt
    add e
    ld [bc], a
    ld a, h
    db $e4
    ld hl, $0100
    add b
    add b
    ld b, c
    ret nz

    ld b, b
    nop
    ret nz

    and h
    nop
    add hl, hl
    inc de
    jr nz, jr_00f_5283

    db $10
    ldh a, [rNR32]
    db $ec
    ld e, $e2
    rlca
    ld sp, hl
    rra
    pop hl
    ld e, $e6
    jr z, jr_00f_5289

    ldh a, [$ff30]
    ret nz

    ret nz

    adc a
    nop
    add d

jr_00f_52b8:
    ld b, $a0
    ld h, b
    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    add h
    inc bc
    ld c, l
    dec b
    ret nc

    ld [hl], b
    sub b
    ldh a, [$ff08]
    ld hl, sp-$7b
    inc bc
    jr z, jr_00f_52d1

    jr jr_00f_52b8

    inc e

jr_00f_52d1:
    db $e4
    add l
    inc bc
    jr nc, jr_00f_52dd

    rra
    pop hl
    ld e, $fe
    jr nz, @-$1e

    ret nz

jr_00f_52dd:
    ld b, b
    db $d3
    nop
    sub c
    ld bc, $8080
    push bc
    inc bc
    ld h, $01
    ld b, b
    ret nz

    add l
    inc bc
    ld d, h
    add e
    inc bc
    ld e, b
    add a

jr_00f_52f1:
    inc bc
    ld h, $03
    ld e, $ee
    rra
    pop hl
    add h
    inc bc
    ld [hl-], a
    ld a, [bc]
    ldh [c], a
    inc e
    db $ec
    jr nc, jr_00f_52f1

    ld b, b
    ret nz

    ret nz

    ld b, b
    add b
    add b
    cp e
    nop
    jp nz, $8002

    add b
    ld b, b
    adc h
    inc bc
    dec h
    add [hl]
    inc bc
    xor d
    ld [bc], a
    and $38
    ld hl, sp-$73
    inc bc
    or [hl]
    rst $38
    inc de
    ld a, [$fe16]
    ld [de], a
    ld a, [hl]
    add d
    cp [hl]
    jp z, $64dc

    ld hl, sp+$38
    ld hl, sp+$08
    add sp, -$68
    ld [hl], b
    ldh a, [$ff80]
    add b
    dec l
    nop
    ld bc, $0707
    ld b, c
    rrca
    ld [$0e0d], sp
    add hl, bc
    rlca
    inc b
    inc c
    rrca
    db $10
    rra
    jr nc, @+$31

    ld [hl], b
    ld c, a
    ld b, b
    ld a, a
    ld b, c
    ldh [$ff9f], a
    rrca
    add b
    rst $38
    pop hl
    sbc a
    db $e3
    sbc [hl]
    add e
    cp $e3
    sbc [hl]
    pop hl
    sbc a
    add c
    rst $38
    ld h, b
    ld e, a
    add e
    nop
    ld [hl-], a
    dec b
    jr nc, @+$31

    jr c, jr_00f_538b

    db $10
    rra
    add e
    nop
    jr z, jr_00f_536b

    inc bc

jr_00f_536b:
    ld [bc], a
    xor c
    nop
    ld [de], a
    inc de
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld a, b
    adc b
    ld b, $fe
    ld bc, $18ff
    rst $30
    inc a
    db $db
    inc a
    jp $e719


    ld b, c
    inc bc
    cp $01
    add l
    cp $41

jr_00f_538b:
    add a
    ld a, l
    ld b, c
    rst $00
    dec a
    ld b, $c5
    ld a, $c3
    cp $03
    cp $01
    ld b, d
    rst $38
    nop
    ld a, [bc]
    rst $38
    inc bc
    rst $38
    cp h
    ld c, h
    call c, $fc24
    add h
    ld a, b
    ld a, b
    push hl
    ld h, c
    nop
    rst $38
    bit 2, e
    db $ec
    ld d, e
    add hl, bc
    ld d, h
    ld h, $54
    ld b, e
    ld d, h
    ld h, h
    ld d, h
    add l
    ld d, h
    and d
    ld d, h
    cp a
    ld d, h
    ldh [rHDMA4], a
    ld bc, $2255
    ld d, l
    ld b, e
    ld d, l
    ld e, h
    ld d, l
    ld [hl], l
    ld d, l
    adc [hl]
    ld d, l
    ld [$08fa], sp
    ld e, [hl]
    nop
    ld a, [$4e00]
    nop
    ld a, [$3ef8]
    nop
    ld a, [$2ef0]
    nop
    ld [$5c08], a
    nop
    ld [$4c00], a
    nop
    ld [$3cf8], a
    nop
    ld [$2cf0], a
    ld bc, $f807
    ld [$0052], sp
    ld hl, sp+$00
    ld b, d
    nop
    ld hl, sp-$08
    ld [hl-], a
    nop
    ld hl, sp-$10
    ld [hl+], a
    nop
    add sp, $08
    ld d, b
    nop
    add sp, $00
    ld b, b
    nop
    add sp, -$08
    jr nc, jr_00f_540a

    rlca

jr_00f_540a:
    ld hl, sp+$08
    ld d, [hl]
    nop
    ld hl, sp+$00
    ld b, [hl]
    nop
    ld hl, sp-$08
    ld [hl], $00
    ld hl, sp-$10
    ld h, $00
    add sp, $06
    ld d, h
    nop
    add sp, -$02
    ld b, h
    nop
    add sp, -$0a
    inc [hl]
    ld bc, $f807
    ld [$005a], sp
    ld hl, sp+$00
    ld c, d
    nop
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ld hl, sp-$10
    ld a, [hl+]
    nop
    add sp, $06
    ld e, b
    nop
    add sp, -$02
    ld c, b
    nop
    add sp, -$0a
    jr c, @+$03

    ld [$00ea], sp
    inc h
    nop
    ld [$20f8], a
    nop
    ld a, [$5e08]
    nop
    ld a, [$4e00]
    nop
    ld a, [$3ef8]
    nop
    ld a, [$2ef0]
    nop
    ld [$5c08], a
    nop
    ld [$2cf0], a
    ld bc, $0208
    ld [$805e], sp
    ld [bc], a
    nop
    ld c, [hl]
    add b
    ld [bc], a
    ld hl, sp+$3e
    add b
    ld [bc], a
    ldh a, [$ff2e]
    add b
    ldh a, [c]
    ld [$805c], sp
    ldh a, [c]
    nop
    ld c, h
    add b
    ldh a, [c]
    ld hl, sp+$3c
    add b
    ldh a, [c]
    ldh a, [$ff2c]
    add c
    rlca
    ld hl, sp+$08
    ld d, d
    add b
    ld hl, sp+$00
    ld b, d
    add b
    ld hl, sp-$08
    ld [hl-], a
    add b
    ld hl, sp-$10
    ld [hl+], a
    add b
    add sp, $08
    ld d, b
    add b
    add sp, $00
    ld b, b
    add b
    add sp, -$08
    jr nc, @-$7d

    rlca
    ld hl, sp+$08
    ld d, [hl]
    add b
    ld hl, sp+$00
    ld b, [hl]
    add b
    ld hl, sp-$08
    ld [hl], $80
    ld hl, sp-$10
    ld h, $80
    add sp, $06
    ld d, h
    add b
    add sp, -$02
    ld b, h
    add b
    add sp, -$0a
    inc [hl]
    add c
    ld [$0004], sp
    ld [de], a
    jr nz, jr_00f_54c9

    ld [$2002], sp
    db $f4

jr_00f_54c9:
    nop
    db $10
    jr nz, @-$0a

    ld [$2000], sp
    inc b
    ld hl, sp+$12
    nop
    inc b
    ldh a, [rSC]
    nop
    db $f4
    ld hl, sp+$10
    nop
    db $f4
    ldh a, [rP1]
    ld bc, $0508
    nop

jr_00f_54e3:
    ld d, $20
    dec b
    ld [$2006], sp
    push af
    nop
    inc d
    jr nz, jr_00f_54e3

    ld [$2004], sp
    dec b
    ld hl, sp+$16
    nop
    dec b
    ldh a, [rTMA]
    nop
    push af
    ld hl, sp+$14
    nop
    push af
    ldh a, [rDIV]
    ld bc, $0608
    nop
    ld a, [de]
    jr nz, @+$08

    ld [$200a], sp
    or $00
    jr jr_00f_552e

    or $08
    ld [$0620], sp
    ld hl, sp+$1a
    nop
    ld b, $f0
    ld a, [bc]
    nop
    or $f8
    jr jr_00f_551e

jr_00f_551e:
    or $f0
    ld [$0801], sp
    ld [$1e00], sp
    jr nz, jr_00f_5530

jr_00f_5528:
    ld [$200e], sp
    ld hl, sp+$00
    inc e

jr_00f_552e:
    jr nz, jr_00f_5528

jr_00f_5530:
    ld [$200c], sp
    ld [$1ef8], sp
    nop
    ld [$0ef0], sp

jr_00f_553a:
    nop
    ld hl, sp-$08
    inc e
    nop
    ld hl, sp-$10
    inc c
    ld bc, $f906
    db $fc
    add sp, $20
    jp hl


    db $fc
    and $20
    ld sp, hl
    inc b

jr_00f_554e:
    db $e4
    jr nz, jr_00f_553a

    inc b
    ldh [c], a
    jr nz, jr_00f_554e

    db $f4
    ldh [rNR41], a
    jp hl


    db $f4
    jr z, jr_00f_557d

    ld b, $f9
    db $fc
    add sp, $00
    jp hl


    db $fc
    and $00
    ld sp, hl
    db $f4
    db $e4
    nop
    jp hl


    db $f4
    ldh [c], a

jr_00f_556c:
    nop
    ld sp, hl
    inc b
    ldh [rP1], a
    jp hl


    inc b
    jr z, @+$03

    ld b, $f9
    ld hl, sp-$18
    jr nz, @-$15

    ld hl, sp-$1a

jr_00f_557d:
    jr nz, @-$05

    nop

jr_00f_5580:
    db $e4
    jr nz, jr_00f_556c

    nop
    ldh [c], a
    jr nz, jr_00f_5580

    ldh a, [$ffe0]
    jr nz, @-$15

    ldh a, [$ff28]
    ld hl, $f906
    db $fc
    add sp, $00
    jp hl


    db $fc
    and $00
    ld sp, hl
    db $f4
    db $e4
    nop
    jp hl


    db $f4
    ldh [c], a
    nop
    ld sp, hl
    inc b
    ldh [rP1], a
    jp hl


    inc b
    jr z, jr_00f_55a8

    db $33

jr_00f_55a8:
    nop

    db $01

    inc bc
    inc bc

    db $41

    inc b
    rlca

    db $41

    db $08
    rrca

    db $00

    inc c

    db $24

    rrca

    db $01

    rlca
    rlca

    db $42

    ld [bc], a
    inc bc

    db $03

    ld bc, $0001
    nop

    db $27

    db $01

    db $27

    nop

    db $01

    db $01
    db $01

    db $41

    ld [bc], a
    inc bc

    db $00

    rlca

    db $41

    rlca
    inc b

    db $16

    INCBIN "gfx/image_00f_55d1.2bpp"

    ld a, h
    ld a, e
    ld a, h
    add hl, sp
    ld a, $04
    rlca

    db $23

    inc bc

    db $02

    inc b
    rlca
    dec bc

    db $c4, $00, $1e, $01

    dec bc
    inc c

    db $41

    dec b
    db $06

    db $03

    inc bc
    ld [bc], a
    inc bc
    inc bc

    db $87, $00, $32, $c3, $00, $77, $15

    INCBIN "gfx/image_00f_5603.2bpp"

    db $10
    rra
    add hl, bc
    ld c, $0b
    inc c

    db $42

    inc de
    inc e

    db $02

    ld de, $081e

    db $84, $00, $23, $07

    ld bc, $0701
    ld b, $0b
    inc c
    rla
    db $18

    db $41

    rra
    db $10

    db $03

    dec c
    dec bc
    ld b, $07

    db $87, $00, $28, $85, $00, $7e, $02

    ld [bc], a
    inc bc
    ld [bc], a

    db $84, $00, $63, $06

    dec b
    rlca
    ld [$090f], sp
    rrca
    db $10

    db $84, $00, $51, $0f

    INCBIN "gfx/image_00f_564d.2bpp"

    db $85, $00, $68, $01

    add hl, bc
    db $0e

    db $87, $00, $70, $41

    inc b
    rlca

    db $cd, $00, $15, $e0, $35

    INCBIN "gfx/image_00f_566e.2bpp"

    add c
    rst $38
    ld a, [hl]
    ld a, [hl]
    or [hl]
    or [hl]

    db $a3, $01, $31, $03

    add b
    rst $38
    db $e3
    rst $38

    db $41

    rst $30
    cp [hl]

    db $0b

    rst $30
    ret


    ld [$7fff], sp
    adc b
    rst $38
    nop
    inc h
    db $db
    ld h, [hl]
    sbc c

    db $43

    rst $38
    nop

    db $05

    nop
    rst $38
    push de
    rst $38
    xor d
    push de

    db $41

    rst $38
    inc d

    db $03

    sbc h
    ld [hl], a
    rst $38
    nop

    db $41

    rst $38
    db $08

    db $41

    rst $38
    nop

    db $0b

    cp [hl]
    pop bc
    inc e
    rst $38
    inc d
    rst $30
    db $e3
    db $e3
    ld h, e
    ld h, e
    db $dd
    rst $38

    db $8f, $01, $42, $01

    ld a, [hl]
    adc c

    db $8b, $01, $54, $83, $01, $62, $01

    db $eb
    push de

    db $83, $01, $5a, $88, $01, $68, $04

    add b
    ld a, a
    ret


    ld a, [hl+]
    rst $30

    db $85, $01, $7a, $01

    nop
    nop

    db $97, $01, $80, $89, $01, $54, $83, $01, $62, $03

    ld l, d
    push de
    rst $38
    nop

    db $8d, $01, $68, $05

    ld a, $c1
    inc e
    rst $38
    rst $30
    rst $30

    db $8d, $01, $00, $15

    INCBIN "gfx/image_00f_571e.2bpp"

    ld a, b
    sbc a
    add c
    rst $38
    ldh a, [$ff8f]

    db $a9, $01, $24, $11

    INCBIN "gfx/image_00f_5738.2bpp"

    ld a, $3e

    db $a5, $00, $14, $01

    ldh a, [$fff0]

    db $a3, $00, $d0, $16

    INCBIN "gfx/image_00f_5754.2bpp"

    rst $28
    rra
    adc $3e
    sub b
    ld [hl], b
    ld h, b

    db $22

    db $e0

    db $01

    sub b
    db $f0

    db $a5, $00, $ae, $01

    add sp, $18

    db $41

    ret nc

    db $30

    db $04

    ldh [rNR41], a
    ldh [$ff60], a

jr_00f_577e:
    ret nz

    db $a6, $00, $27, $11

    INCBIN "gfx/image_00f_5783.2bpp"

    add $fa

    db $41

    inc b
    db $fc

    db $03

    adc b
    ld a, b
    ret z

    db $38

    db $42

    db $c4
    inc a

    db $0f

    INCBIN "gfx/image_00f_57a1.2bpp"

    db $41

    db $fc
    inc b

    db $07

    ret c

    add sp, $30
    ldh a, [rNR41]
    ldh [rNR41], a
    db $e0

    db $a5, $00, $2a, $02

    ld h, b
    ld h, b
    and b

    db $a4, $00, $47, $83, $02, $64, $06

    ret nc

    ldh a, [$ff88]
    ld hl, sp-$38
    ld hl, sp+$04

    db $84, $02, $51, $0b

    jp z, $ea3e

    ld e, $ee
    ld e, $ce
    ld a, $9c
    ld a, h

jr_00f_57e0:
    ld a, b
    db $f8

    db $41

    and b
    db $e0

    db $c3, $02, $bd, $41

    ldh a, [rNR10]

    db $41

    ld hl, sp+$08

    db $03

    xor b
    ld e, b
    ldh a, [rSVBK]

    db $41

    db $10
    db $f0

    db $01

    ldh [$ffe0], a

    db $85, $00, $e0, $85, $00, $28, $a3, $02, $ea, $a5, $02, $ec, $01

    ld a, [bc]
    dec c

    db $85, $00, $46, $01

    inc bc
    inc bc

    db $88, $01, $5e, $8b, $01, $e9, $00

    nop

    db $89, $01, $f6, $9f, $02, $e0, $a3, $00, $40, $07

    inc l
    db $ec
    ld a, $fe
    ld d, $fe
    ld [hl], d
    db $fe

    db $41

    ldh a, [c]
    db $de

    db $0d

    db $f4
    inc a
    adc h
    db $fc
    ret z

    jr c, @-$1a

    inc e
    sub h
    ld l, h
    call nc, $f42c
    inc c

    db $83, $02, $6c, $01

    or b
    ld [hl], b

    db $a3, $00, $46, $02

    ldh [$ff60], a
    and b

    db $c3, $02, $77, $01

    ld h, b
    sub b

    db $42

    ldh a, [rNR10]

    db $00

    db $f0

    db $a7, $00, $fc, $04

    sbc h
    sbc h
    ld [hl], e
    rst $38
    db $11

    db $83, $02, $32, $12

    INCBIN "gfx/image_00f_585f.2bpp"

    inc sp
    db $dc
    inc hl

    db $42

    rst $38
    nop

    db $09

    ld a, a
    add b
    rst $38
    rst $38
    and l
    rst $38
    ld e, [hl]
    and l
    rst $38
    inc h

    db $a3, $01, $72, $01

    ld a, a
    add h

    db $41

    rst $38
    db $01

    db $09

jr_00f_588a:
    ld a, l
    add e
    db $d3
    rst $28
    inc a
    db $fc
    jr jr_00f_588a

    ldh [$ffe0], a

    db $85, $00, $80, $05

    rst $38
    rst $38
    db $f4
    rst $28
    db $f4
    rst $08

    db $41

    db $fa
    add a

    db $04

    ld hl, sp-$79
    ld [hl], b
    ld c, a
    db $30

    db $42

    ccf
    db $20

    db $04

    ccf
    ld hl, $113e

jr_00f_58af:
    db $1e

    db $ff, $09

    jr jr_00f_58d3

    ld b, $07
    ld bc, $0601
    rlca
    dec bc
    inc c

    db $42

    rrca
    db $08

    db $05

    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc bc

    db $27

    db $01

    db $35

    nop

    db $03

    ret nz

    ret nz

    jr nz, jr_00f_58af

    db $42

    db $10
    db $f0

    db $00

jr_00f_58d3:
    db $30

    db $24

    db $f0

    db $01

    ldh [$ffe0], a

    db $42

    ld b, b
    ret nz

    db $a3, $00, $1c, $a7, $00, $16, $e5, $a7

    nop

    db $ff, $06, $59, $1f, $59

jr_00f_58ea:
    ld b, b
    ld e, c

    db $59, $59, $72, $59

    adc e
    ld e, c
    and h
    ld e, c

    db $bd, $59

    sub $59
    rst $30

jr_00f_58f9:
    ld e, c
    jr @+$5c

    add hl, sp
    ld e, d
    ld e, d
    ld e, d
    ld [hl], e
    ld e, d
    adc h
    ld e, d
    and l
    ld e, d

    db $06, $f7, $04, $54, $00, $f7, $fc, $52, $00, $f7, $f4, $50, $00, $e7, $04, $4c
    db $00, $e7, $fc, $3c, $00, $e7, $f4, $2c, $01, $08, $f7, $08, $e4, $00, $e7, $08
    db $e2, $00, $f7, $00, $42, $00, $f7, $f8, $32, $00, $f7, $f0, $22, $00, $e7, $00
    db $40, $00, $e7, $f8, $30, $00, $e7, $f0, $20, $01

    ld b, $f8
    inc b
    ld b, [hl]
    nop
    ld hl, sp-$04
    ld [hl], $00
    ld hl, sp-$0c
    ld h, $00
    add sp, $04
    ld b, h
    nop
    add sp, -$04
    inc [hl]
    nop
    add sp, -$0c
    inc h
    db $01

    db $06, $f8, $04, $4a, $00, $f8, $fc, $3a, $00, $f8, $f4, $2a, $00, $e8, $04, $48
    db $00, $e8, $fc, $38, $00, $e8, $f4, $28, $01, $06, $f7, $04, $4e, $00, $f7, $fc
    db $3e, $00, $f7, $f4, $2e, $00, $e7, $04, $4c, $00, $e7, $fc, $3c, $00, $e7, $f4
    db $2c, $01

    ld b, $f7
    inc b
    ld d, h
    add b
    rst $30
    db $fc
    ld d, d
    add b
    rst $30
    db $f4
    ld d, b
    add b
    rst $20
    inc b
    ld c, h
    add b
    rst $20
    db $fc
    inc a
    add b
    rst $20
    db $f4
    inc l
    add c
    ld b, $f8
    inc b
    ld c, d
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$0c
    ld a, [hl+]
    add b
    add sp, $04
    ld c, b
    add b
    add sp, -$04
    jr c, @-$7e

    add sp, -$0c
    jr z, @-$7d

    db $06, $f8, $04, $46, $80, $f8, $fc, $36, $80, $f8, $f4, $26, $80, $e8, $04, $44
    db $80, $e8, $fc, $34, $80, $e8, $f4, $24, $81

    ld [$0004], sp
    ld [de], a
    jr nz, jr_00f_59e0

    ld [$2002], sp
    db $f4

jr_00f_59e0:
    nop
    db $10
    jr nz, @-$0a

    ld [$2000], sp
    inc b
    ld hl, sp+$12
    nop
    inc b
    ldh a, [rSC]
    nop
    db $f4
    ld hl, sp+$10
    nop
    db $f4
    ldh a, [rP1]
    ld bc, $0508
    nop

jr_00f_59fa:
    ld d, $20
    dec b
    ld [$2006], sp
    push af
    nop
    inc d
    jr nz, jr_00f_59fa

    ld [$2004], sp
    dec b
    ld hl, sp+$16
    nop
    dec b
    ldh a, [rTMA]
    nop
    push af
    ld hl, sp+$14
    nop
    push af
    ldh a, [rDIV]
    ld bc, $0608
    nop
    ld a, [de]
    jr nz, @+$08

    ld [$200a], sp
    or $00
    jr jr_00f_5a45

    or $08
    ld [$0620], sp
    ld hl, sp+$1a
    nop
    ld b, $f0
    ld a, [bc]
    nop
    or $f8
    jr jr_00f_5a35

jr_00f_5a35:
    or $f0
    ld [$0801], sp
    ld [$1e00], sp
    jr nz, jr_00f_5a47

jr_00f_5a3f:
    ld [$200e], sp
    ld hl, sp+$00
    inc e

jr_00f_5a45:
    jr nz, jr_00f_5a3f

jr_00f_5a47:
    ld [$200c], sp
    ld [$1ef8], sp
    nop
    ld [$0ef0], sp
    nop
    ld hl, sp-$08
    inc e
    nop
    ld hl, sp-$10
    inc c
    ld bc, $f806
    db $f4
    ldh [rP1], a
    add sp, -$0c
    ld e, [hl]
    nop
    ld hl, sp-$04
    ld e, h
    nop
    add sp, -$04

jr_00f_5a69:
    ld e, d
    nop
    ld hl, sp+$04
    ld e, b
    nop
    add sp, $04

jr_00f_5a71:
    ld d, [hl]
    ld bc, $f806

jr_00f_5a75:
    inc b
    ldh [rNR41], a
    add sp, $04
    ld e, [hl]
    jr nz, jr_00f_5a75

jr_00f_5a7d:
    db $fc
    ld e, h
    jr nz, jr_00f_5a69

    db $fc

jr_00f_5a82:
    ld e, d
    jr nz, jr_00f_5a7d

    db $f4
    ld e, b
    jr nz, jr_00f_5a71

    db $f4

jr_00f_5a8a:
    ld d, [hl]
    ld hl, $f806

jr_00f_5a8e:
    inc b
    ldh [rNR41], a
    add sp, $04
    ld e, [hl]
    jr nz, jr_00f_5a8e

jr_00f_5a96:
    db $fc
    ld e, h
    jr nz, jr_00f_5a82

    db $fc
    ld e, d
    jr nz, jr_00f_5a96

    db $f4
    ld e, b
    jr nz, jr_00f_5a8a

    db $f4
    ld d, [hl]
    ld hl, $f806
    db $f4
    ldh [rP1], a
    add sp, -$0c
    ld e, [hl]
    nop
    ld hl, sp-$04
    ld e, h
    nop
    add sp, -$04
    ld e, d
    nop
    ld hl, sp+$04
    ld e, b
    nop
    add sp, $04
    ld d, [hl]
    db $01

    db $18, $00, $04

    inc bc
    scf
    ld c, b
    ld c, a
    dec c
    or [hl]
    db $10
    dec de
    ld bc, $0501
    ld b, $01
    inc c
    rlca
    nop
    ld bc, $6a08
    ei
    ld a, [hl+]
    ld d, b
    dec b
    ld a, [bc]
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    ld c, $07
    add b
    nop
    ld a, [hl+]
    jr c, jr_00f_5af2

    ld a, [bc]
    ld bc, $0701
    nop

jr_00f_5af2:
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    dec c
    rlca
    ret nz

    cp $08
    ret nz

    db $fd
    ld a, [hl+]
    inc h
    dec b
    ld [de], a
    ld bc, $290e
    db $10
    ld a, [hl+]
    inc hl
    dec b
    inc b
    ld bc, $050f
    inc b
    ld bc, $050c
    inc b
    ld bc, $050d
    inc b
    ld bc, $050e
    inc b
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    dec b
    ld bc, $070f
    nop
    ld [bc], a
    ld [$fd80], sp
    ld a, [hl+]
    ld b, d
    dec b
    ld [de], a
    ld bc, $070f
    adc b
    rst $38
    ld [$fd80], sp
    ld a, [hl+]
    ld b, d
    dec b
    ld [de], a
    ld bc, $070f
    adc b
    rst $38
    ld [$fd80], sp
    ld a, [hl+]
    ld b, h
    dec b
    ld [de], a
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc c
    ld bc, $0504
    ld e, $0d
    sub c
    dec hl
    nop

    db $03, $37, $48, $4f, $0d, $b6, $10, $1a, $01, $01, $05, $08, $01, $02, $08, $00
    db $fd, $2a, $2b, $05, $14, $01, $03, $08, $00, $00, $2a, $00, $05, $02, $01, $0d
    db $07, $00, $01, $08, $7c, $00, $05, $0a, $01, $0d, $07, $00, $00, $08, $00, $00
    db $05, $04, $01, $0e, $07, $00, $fe, $08, $7c, $00, $05, $0a, $01, $0e, $07, $00
    db $00, $08, $00, $00, $05, $04, $01, $0f, $07, $00, $02, $08, $7c, $00, $05, $0a
    db $01, $0f, $07, $00, $00, $08, $00, $00, $05, $04, $01, $0c, $07, $70, $ff, $08
    db $94, $00, $05, $11, $01, $01, $07, $00, $00, $08, $00, $00, $05, $0c, $01, $04
    db $05, $1e, $0d, $91, $2b, $00

    inc bc
    scf
    ld c, b
    ld c, a
    dec c
    or [hl]
    db $10
    ld a, [de]
    ld bc, $070e
    ld [hl], d
    rst $38
    ld [$fe80], sp
    ld a, [hl+]
    jr z, jr_00f_5bf2

    ld [de], a
    ld bc, $070e
    ld [hl], d

jr_00f_5bf2:
    rst $38
    ld [$fe80], sp
    ld a, [hl+]
    add hl, hl
    dec b
    ld [de], a
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    rlca
    ld bc, $070c
    nop
    ld bc, $a008
    db $fc
    ld a, [hl+]
    inc [hl]
    dec b
    jr nz, @+$03

    ld bc, $0007
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld [bc], a
    ld bc, $070c
    jr c, @+$01

    ld [$fe00], sp
    ld a, [hl+]
    dec a
    dec b
    db $10
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc c
    ld bc, $0504
    ld e, $0d
    sub c
    dec hl
    nop
    inc bc
    scf
    ld c, b
    ld c, a
    dec c
    or [hl]
    db $10
    add hl, de
    ld [$fe00], sp
    ld a, [hl+]
    inc de
    add hl, bc
    ld [bc], a
    ld bc, $050c
    inc b
    ld bc, $050d
    inc b
    ld bc, $050e
    inc b
    ld bc, $050f
    inc b
    ld a, [bc]
    ld bc, $2a0c
    dec d
    dec b
    inc b
    ld bc, $050d
    inc b
    ld bc, $050e
    inc b
    ld bc, $050f
    inc b
    ld bc, $050c
    inc b
    ld bc, $0801
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    dec bc
    ld bc, $0504
    ld e, $0d
    sub c
    dec hl
    nop
    inc bc
    scf
    ld c, b
    ld c, a
    dec c
    or [hl]
    db $10
    add hl, de
    ld bc, $070d
    nop
    ld bc, $6008
    db $fd
    ld a, [hl+]
    ld h, [hl]
    dec b
    inc c
    rlca
    nop
    ld bc, $6008
    db $fd
    ld a, [hl+]
    ld l, b
    dec b
    inc c
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    rlca
    ld bc, $070e
    ret z

    cp $08
    and b
    db $fc
    ld a, [hl+]
    ld d, d
    dec b
    inc b
    ld bc, $050f
    inc b
    ld bc, $050c
    inc b
    ld bc, $050d
    inc b
    ld bc, $050e
    inc b
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc c
    ld bc, $0504
    ld e, $0d
    sub c
    dec hl
    nop
    inc bc
    scf
    ld c, b
    ld c, a
    dec c
    or [hl]
    db $10
    jr jr_00f_5ce9

    nop

jr_00f_5ce9:
    dec b
    ld [bc], a
    ld bc, $0802
    ld d, b
    db $fc
    ld a, [hl+]
    ld a, a
    dec b
    rlca
    ld bc, $0503
    rlca
    ld bc, $0801
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    dec b
    ld bc, $0504
    ld e, $0d
    sub c
    dec hl
    nop

    db $03, $37, $48, $4f, $0d, $b6, $10, $17, $01, $04, $05, $1e, $0d, $91, $2b, $00
    db $0d, $50, $0f, $cf, $a0, $b3, $17, $fc, $0d, $0f, $46, $00, $08, $00, $00, $0d
    db $75, $60, $0d, $6f, $60, $0f, $3e, $00, $03, $5a, $5e, $4f, $0d, $5f, $20, $be
    db $5a, $01, $03, $00, $03, $37, $48, $4f, $05, $24, $16, $17, $f6, $0d, $03, $b9
    db $5e, $4f, $0f, $46, $00, $04, $99, $4b, $0f, $20, $60, $00, $21, $d0, $02, $01
    db $08, $00, $0f, $39, $00, $0f, $3a, $00, $0f, $3b, $00, $03, $f6, $5e, $4f, $00
    db $0f, $3c, $00, $0f, $3d, $00, $0f, $3f, $00, $0f, $27, $00, $0f, $40, $00, $0f
    db $42, $00, $03, $7f, $5e, $4f, $01, $01, $00, $01, $07, $03, $cc, $5e, $4f, $2a
    db $00, $08, $00, $fc, $0d, $1d, $5e, $12

    sbc [hl]
    ld e, l

    db $05, $08, $0f, $3c, $00, $1f, $ac, $5f, $2a, $10, $00

    inc h
    inc d
    rrca
    daa
    nop
    add hl, bc
    inc h
    dec b
    inc b
    dec c
    ld d, b
    rrca
    ret nc

    and b
    or e
    ld a, [bc]
    rrca
    inc a
    nop
    ld a, [hl+]
    db $10
    dec b
    inc b
    dec c
    ld d, b
    rrca
    ret nc

    and b
    or e
    ld b, $b3
    ld e, l
    dec c
    ld sp, hl
    rra
    dec c
    dec l
    ld e, [hl]
    ld bc, $1707
    or $0d
    rrca
    ld b, a
    db $10
    dec b
    db $10
    ld d, $01
    rlca
    rrca
    inc a
    nop
    inc bc
    call z, $4f5e
    ld [$fe00], sp
    ld a, [hl+]
    jr @+$02

    db $03, $3d, $5e, $4f, $0d, $5f, $20, $be, $5a, $01, $03, $00

    jr jr_00f_5e16

    nop
    add hl, bc
    inc b
    add hl, de
    dec b
    inc b
    add hl, de
    ld b, $04
    add hl, de
    dec b
    inc b
    add hl, de
    rlca
    inc b
    ld a, [bc]
    ld b, $cf
    ld e, l

    db $18, $24, $0d, $2a, $00, $19, $01, $10, $19, $00, $40, $0e, $07

    pop bc
    ld e, d

    db $64, $5b

    jp c, $3e5b

    ld e, h
    add l
    ld e, h

jr_00f_5e16:
    rst $18
    ld e, h

    db $09, $5d

    ld b, $09
    ld e, l

    ld e, $3e
    ld a, [de]
    cp $0f
    ld e, $27
    jr z, jr_00f_5e29

    xor a
    ld [de], a
    ret


jr_00f_5e29:
    ld a, $01
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld e, $16
    ld l, e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $0f
    ld bc, $5dff
    jp Jump_000_0846


    call Call_00f_60bc
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld e, $08
    ld a, [de]
    cp $02
    ret nz

    dec e
    ld a, [de]
    cp $c0
    ret c

    ld e, $0f
    ld bc, $5d69
    jp Jump_000_0846


    ld e, $27
    ld a, [de]
    and a
    jr nz, jr_00f_5eb1

    ld e, $3f
    ld a, [de]
    add a
    add a
    ld c, $00

jr_00f_5e8c:
    sub $18
    jr c, jr_00f_5e93

    inc c
    jr jr_00f_5e8c

jr_00f_5e93:
    ld a, $04
    sub c
    ld c, a
    ld e, $3c
    ld a, [de]
    and a
    ld e, $07
    jr nz, jr_00f_5ea8

    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    ret


jr_00f_5ea8:
    ld a, [de]
    sub c
    ld [de], a
    inc e
    ld a, [de]
    sbc $00
    ld [de], a
    ret


jr_00f_5eb1:
    ld e, $0f
    ld bc, $5d82
    jp Jump_000_0846


    ld hl, $a008
    ld a, [hl-]
    cp $02
    ret nz

    ld a, [hl]
    cp $c0
    ret c

    ld e, $0f
    ld bc, $5d5b
    jp Jump_000_0846


    ld hl, $741f
    ld a, $08
    call Call_000_05cf
    call Call_000_0c91
    call Call_000_0da4
    ld e, $10
    ld a, [de]
    bit 7, a
    ret nz

    ld e, $3c
    ld a, [de]
    and a
    jr nz, jr_00f_5eee

    ld e, $0f
    ld bc, $5dde
    jp Jump_000_0846


jr_00f_5eee:
    ld e, $0f
    ld bc, $5dea
    jp Jump_000_0846


    ld e, $3a
    ld a, [de]
    and a
    jr nz, jr_00f_5f14

    ld hl, $a03f
    inc [hl]
    ld a, [hl]
    cp $18
    jr nz, jr_00f_5f2a

    ld e, $3a
    ld a, $01
    ld [de], a
    ld hl, $a042
    ld [hl], a
    ld hl, $a03c
    ld [hl], a
    jr jr_00f_5f2a

jr_00f_5f14:
    ld hl, $a03f
    ld a, [hl]
    dec a
    bit 7, a
    jr z, jr_00f_5f23

    ld e, $3b
    ld a, $01
    ld [de], a
    xor a

jr_00f_5f23:
    ld [hl], a
    ld e, $39
    ld a, [de]
    and a
    jr nz, jr_00f_5f58

jr_00f_5f2a:
    push de
    call Call_000_0357
    pop de
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_00f_5f39

    bit 1, a
    jr z, jr_00f_5f58

jr_00f_5f39:
    ld e, $39
    ld a, $01
    ld [de], a
    inc e
    ld [de], a
    ld hl, $a03f
    ld a, [hl]
    ld l, $3d
    ld [hl], a
    ld hl, $a03c
    ld [hl], $01
    push de
    ld e, $11
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de

jr_00f_5f58:
    ld e, $3b
    ld a, [de]
    and a
    jr nz, jr_00f_5f93

    ld b, $08
    ld hl, $a03f
    ld a, [hl]
    cp $12
    jr nc, jr_00f_5f72

    cp $0c
    jr nc, jr_00f_5f73

    cp $06
    jr nc, jr_00f_5f74

    jr jr_00f_5f75

jr_00f_5f72:
    inc b

jr_00f_5f73:
    inc b

jr_00f_5f74:
    inc b

jr_00f_5f75:
    ld e, $15
    ld a, b
    ld [de], a
    sub $08
    add a
    ld b, a
    ld a, $10
    sub b
    ld b, a
    ld hl, $a007
    ld a, [hl]
    add b
    ld b, a
    inc l
    ld e, $08
    ld a, [hl]
    jr nc, jr_00f_5f8e

    inc a

jr_00f_5f8e:
    ld [de], a
    ld a, b
    dec e
    ld [de], a
    ret


jr_00f_5f93:
    ld hl, $a027
    ld [hl], $01
    push de
    ld e, $45
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    ld e, $0f
    ld bc, $5d3d
    jp Jump_000_0846


    ld h, d
    ld e, $3e
    ld a, [de]
    cp $0f
    jr z, jr_00f_5fef

    ld e, $3d
    ld a, [de]
    cp $18
    jr z, jr_00f_5fef

    cp $17
    jr nc, jr_00f_5ff7

    cp $16
    jr nc, jr_00f_6009

    cp $15
    jr nc, jr_00f_6011

    cp $14
    jr nc, jr_00f_601d

    cp $13
    jr nc, jr_00f_6025

    cp $11
    jr nc, jr_00f_6031

    cp $10
    jr nc, jr_00f_6039

    cp $0e
    jr nc, jr_00f_6045

    cp $0c
    jr nc, jr_00f_604d

    cp $09
    jr nc, jr_00f_6059

    cp $07
    jr nc, jr_00f_6061

    ld a, $01
    ld l, $27
    ld [hl], $06
    jr jr_00f_606b

jr_00f_5fef:
    ld a, $78
    ld l, $27
    ld [hl], $00
    jr jr_00f_606b

jr_00f_5ff7:
    ld e, $42
    ld a, [de]
    and a
    jr nz, jr_00f_6009

    ld a, $6e
    ld l, $3c
    ld [hl], $01
    ld l, $27
    ld [hl], $00
    jr jr_00f_606b

jr_00f_6009:
    ld a, $64
    ld l, $27
    ld [hl], $01
    jr jr_00f_606b

jr_00f_6011:
    ld a, $5a
    ld l, $3c
    ld [hl], $01
    ld l, $27
    ld [hl], $01
    jr jr_00f_606b

jr_00f_601d:
    ld a, $50
    ld l, $27
    ld [hl], $02
    jr jr_00f_606b

jr_00f_6025:
    ld a, $46
    ld l, $3c
    ld [hl], $01
    ld l, $27
    ld [hl], $02
    jr jr_00f_606b

jr_00f_6031:
    ld a, $3c
    ld l, $27
    ld [hl], $03
    jr jr_00f_606b

jr_00f_6039:
    ld a, $32
    ld l, $3c
    ld [hl], $01
    ld l, $27
    ld [hl], $03
    jr jr_00f_606b

jr_00f_6045:
    ld a, $28
    ld l, $27
    ld [hl], $04
    jr jr_00f_606b

jr_00f_604d:
    ld a, $1e
    ld l, $3c
    ld [hl], $01
    ld l, $27
    ld [hl], $04
    jr jr_00f_606b

jr_00f_6059:
    ld a, $14
    ld l, $27
    ld [hl], $05
    jr jr_00f_606b

jr_00f_6061:
    ld a, $0a
    ld l, $3c
    ld [hl], $01
    ld l, $27
    ld [hl], $05

jr_00f_606b:
    ld l, $24
    ld [hl], a
    ret


    ld a, $01
    ld [$a054], a
    ret


    ld a, [$a071]
    cp $03
    jr z, jr_00f_60ae

    cp $02
    jr z, jr_00f_60a0

    cp $01
    jr z, jr_00f_6092

    ld e, $16
    ld a, $0f
    ld [de], a
    inc e
    ld a, $4b
    ld [de], a
    inc e
    ld a, $99
    ld [de], a
    ret


jr_00f_6092:
    ld e, $16
    ld a, $0f
    ld [de], a
    inc e
    ld a, $4e
    ld [de], a
    inc e
    ld a, $ed
    ld [de], a
    ret


jr_00f_60a0:
    ld e, $16
    ld a, $0f
    ld [de], a
    inc e
    ld a, $53
    ld [de], a
    inc e
    ld a, $ab
    ld [de], a
    ret


jr_00f_60ae:
    ld e, $16
    ld a, $0f
    ld [de], a
    inc e
    ld a, $58
    ld [de], a
    inc e
    ld a, $e6
    ld [de], a
    ret


Call_00f_60bc:
    push de
    call Call_000_0357
    pop de
    ld hl, $ffa5
    ld e, $3e
    ld a, [de]
    bit 0, a
    jr z, jr_00f_60d8

    bit 1, a
    jr z, jr_00f_60e2

    bit 2, a
    jr z, jr_00f_60ec

    bit 3, a
    jr z, jr_00f_60f6

    ret


jr_00f_60d8:
    ld e, [hl]
    bit 6, e
    ret z

    set 0, a
    ld e, $3e
    ld [de], a
    ret


jr_00f_60e2:
    ld e, [hl]
    bit 7, e
    ret z

    set 1, a
    ld e, $3e
    ld [de], a
    ret


jr_00f_60ec:
    ld e, [hl]
    bit 6, e
    ret z

    set 2, a

jr_00f_60f2:
    ld e, $3e
    ld [de], a

jr_00f_60f5:
    ret


jr_00f_60f6:
    ld e, [hl]
    bit 0, e
    ret z

    set 3, a
    ld e, $3e
    ld [de], a
    ld e, $15
    ld a, $04
    ld [de], a
    push de
    ld e, $2d
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    ret


    db $38, $00, $24, $00, $68, $00, $5c, $00, $98, $00, $2c, $00

    ret z

    nop
    ld h, h
    nop
    ld hl, sp+$00
    inc l
    nop
    jr z, jr_00f_6128

    ld e, h

jr_00f_6128:
    nop
    ld e, b
    ld bc, $0024

    db $28, $53, $18, $d1, $53, $18, $7d, $54, $18

    add hl, sp
    ld d, l
    jr @-$0c

    ld d, l
    jr @-$32

    ld d, [hl]
    jr jr_00f_60f2

    ld d, a
    jr jr_00f_60f5

    ld d, a
    jr @-$31

    call nz, Call_000_3e62
    inc d

jr_00f_614a:
    push af
    xor a
    ldh [$ffa6], a
    call Call_00f_6169
    pop af
    dec a
    jr nz, jr_00f_614a

jr_00f_6155:
    call Call_00f_6169
    ld hl, $df04
    bit 7, [hl]
    jr z, jr_00f_6155

    res 7, [hl]
    ld a, [hl]
    or a
    jp z, Jump_00f_622c

    jp Jump_00f_61f1


Call_00f_6169:
    call Call_000_0496
    ld hl, $086b
    ld a, $00
    call Call_000_05cf
    call Call_00f_6180
    call Call_000_04ae
    call Call_000_0343
    jp Jump_000_0357


Call_00f_6180:
    ld a, [$da36]
    or a
    jr nz, jr_00f_61b1

    ldh a, [$ffa6]
    ld b, a
    and $09
    jr nz, jr_00f_61d1

    ld a, [$df04]
    bit 6, b
    jr z, jr_00f_619a

    or a
    jr z, jr_00f_61b1

    dec a
    jr jr_00f_61a9

jr_00f_619a:
    bit 7, b
    jr z, jr_00f_61b1

    dec a
    jr z, jr_00f_61b1

    ld a, [$df05]
    or a
    jr z, jr_00f_61b1

    ld a, $01

jr_00f_61a9:
    ld [$df04], a
    ld e, $2c
    call Call_000_10aa

jr_00f_61b1:
    ld a, [$da0e]
    and $04
    or a
    ret z

Call_00f_61b8:
    ld hl, $ff80
    ld [hl], $4e
    inc l
    ld [hl], $00
    inc l
    ld a, [$df04]
    or a
    ld a, $70
    jr z, jr_00f_61cb

    ld a, $7f

jr_00f_61cb:
    ld [hl+], a
    ld [hl], $00
    jp Jump_00f_61df


jr_00f_61d1:
    ld e, $2d
    call Call_000_10aa
    call Call_00f_61b8
    ld hl, $df04
    set 7, [hl]
    ret


Jump_00f_61df:
    xor a
    ld hl, $ff93
    ld [hl+], a
    ld [hl], $70
    inc l
    ld [hl], a
    ld hl, $6746
    ld de, $ff83
    jp Jump_000_051c


Jump_00f_61f1:
    ld de, $0b04
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld a, [$a051]

Jump_00f_6202:
    cp $0d
    jr nz, jr_00f_621b

    ld a, [$a05b]
    ld b, $00
    cp $ff
    jr z, jr_00f_6217

    cp $01
    ld b, $04
    jr z, jr_00f_6217

    ld b, $02

jr_00f_6217:
    ld a, b
    ld [$a051], a

jr_00f_621b:
    ld hl, $10e6
    ld a, $00
    call Call_000_05cf
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    ret


Jump_00f_622c:
    ld de, $0b04
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld e, $09
    ld hl, $602e
    ld a, $1e
    call Call_000_05cf
    ld hl, $1126
    ld a, $00
    call Call_000_05cf
    ld hl, $1134
    ld a, $00
    call Call_000_05cf
    ld a, $7f
    ldh [rLYC], a
    ld [$da29], a
    ld a, $07
    ldh [rWX], a
    ld a, $80
    ldh [rWY], a
    ld a, [$a05b]
    push af
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    pop af
    ld [$a05b], a
    ld c, $04
    ld hl, $df06
    ld de, $db51

jr_00f_627b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_00f_627b

    ld hl, $14ee
    ld a, $00
    call Call_000_05cf
    ld hl, $41dc
    ld a, $07
    call Call_000_05cf
    ld hl, $40e2
    ld a, $07
    call Call_000_05cf
    ld hl, $db78
    ld de, $cd09
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    call Call_000_31cd
    ld a, $67
    ldh [rLCDC], a
    call Call_000_046d
    ld hl, $4044
    ld a, $08
    call Call_000_05cf
    ld e, $04
    ld hl, $424e
    ld a, $1a
    call Call_000_05cf
    ret


    ld e, $2a
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld hl, $1126
    ld a, $00
    call Call_000_05cf
    ld hl, $6399
    ld de, $8700
    call Call_000_0708
    ld a, [$a071]
    or a
    ld b, $24
    jr z, jr_00f_62f7

    add $2a
    ld b, a

jr_00f_62f7:
    ld a, b
    ld [$df11], a
    ld hl, $115f
    ld a, $00
    call Call_000_05cf
    ld hl, $639e
    ld de, $9000
    call Call_000_0708
    ld hl, $667f
    ld de, $9800
    call Call_000_0708
    ld c, $04
    ld hl, $db51
    ld de, $df06

jr_00f_631d:
    ld a, [hl]
    ld [hl], $00
    ld [de], a
    inc hl
    inc de
    dec c
    jr nz, jr_00f_631d

    xor a
    ld [$da01], a
    ld [$da00], a
    ld a, $ff
    ld [$da29], a
    ldh [rLYC], a
    ld hl, $cd09
    ld a, $e4
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $e4
    ld [hl], a
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    ld e, $0f
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld hl, $4028
    ld a, $08
    call Call_000_05cf
    ld a, $a7
    ld h, $a0
    call Call_000_07fc
    xor a
    ld [$df04], a
    ld a, [$db61]
    cp $08
    jr nc, jr_00f_6374

    ld e, a
    ld a, [$db60]
    call Call_000_162a
    jr jr_00f_638a

jr_00f_6374:
    cp $09
    jr nz, jr_00f_6389

    ld a, [$db73]
    or a
    jr nz, jr_00f_6389

    ld a, [$df0a]
    cp $04
    jr nc, jr_00f_6389

    ld a, $01
    jr jr_00f_638a

jr_00f_6389:
    xor a

jr_00f_638a:
    ld [$df05], a
    ld de, $0b04
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf
    ret


    cpl
    rst $38
    cpl
    nop
    rst $38
    ld b, e
    rst $38
    nop
    ld bc, $03ff
    ld b, c
    rst $38
    rrca
    ld bc, $1fff
    adc b
    nop
    nop
    ld [hl+], a
    rst $38
    inc bc
    ret nz

    ret nz

    adc a
    adc a
    daa
    nop
    inc hl
    rst $38
    inc bc
    pop bc
    pop bc
    adc b
    adc b

jr_00f_63bd:
    adc e
    nop
    jr nz, jr_00f_63d3

    adc h
    adc h
    add h
    add h
    rst $38
    nop
    cp $00
    inc bc
    nop
    rlca
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop

jr_00f_63d3:
    ld a, a
    ld [hl+], a
    nop
    nop
    ld bc, $0041
    db $fc
    ld [$0700], sp
    nop
    rrca
    nop
    rra
    nop
    ldh [rP1], a
    add e
    nop
    ld b, b
    nop
    ld bc, $0086
    ld d, c
    ld [bc], a
    db $fc
    nop
    rlca
    add l
    nop
    inc hl
    nop
    nop
    rst $00
    nop
    jr z, jr_00f_63bd

    nop
    ld [de], a
    call $1000
    ld bc, $8f8f
    call nz, $1f00
    ret z

    nop
    dec de
    ld bc, $8888
    call $2f00
    inc bc
    add b
    add b
    adc b
    adc b
    push bc
    nop
    dec a
    call Call_00f_7c00
    add l
    nop
    ld h, h
    ld [$00f8], sp
    ret nz

    nop
    add b
    nop
    ld a, a
    nop
    rst $38
    jp z, Jump_00f_7700

    nop
    rlca
    ld b, d
    nop
    ldh a, [$ffc4]
    nop
    ld e, a
    nop
    rra
    adc d
    nop
    ld [hl], e
    nop
    nop
    ld b, [hl]
    nop
    rst $38
    ld [hl+], a
    rst $38
    inc bc
    ld b, b
    ld b, b
    ld [hl], c
    ld [hl], c
    adc e
    nop
    db $10
    inc bc
    ld b, h
    ld b, h
    call nz, $8bc4
    nop
    jr nz, jr_00f_6451

    ld h, d
    ld h, d
    ld [hl+], a

jr_00f_6451:
    ld [hl+], a
    adc e
    nop
    jr nz, jr_00f_6479

    ld [hl+], a
    inc b
    ld hl, sp+$00
    ldh a, [rP1]
    rra
    and h
    nop
    ld d, e
    add e
    nop
    call nc, Call_000_0001
    rst $38
    adc l
    nop
    ld hl, sp+$06
    nop
    rst $38
    ccf
    nop
    ccf
    nop
    ret nz

    ld b, d
    nop
    add b
    add h
    nop
    inc h
    adc e
    nop

jr_00f_6479:
    ldh a, [$ff83]
    nop
    dec h
    dec h
    ld [hl], c
    adc c
    nop
    sub [hl]
    dec h
    call nz, Call_000_0089
    sub [hl]
    dec b
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, d
    ld h, e
    ld h, e
    adc c
    nop
    and [hl]
    inc hl
    ld [hl+], a
    ld bc, $0606
    sub c
    nop
    or [hl]
    nop
    rst $38
    xor d
    nop
    cp a
    ld [bc], a
    ld a, a
    nop
    ld a, a
    ld b, d
    nop
    ret nz

    inc bc
    nop
    rra
    nop
    rst $38
    add [hl]
    ld bc, $00d5
    rra
    and [hl]
    nop
    rst $20
    ld [bc], a
    nop
    nop
    add b
    rst $00
    ld bc, $c347
    nop
    ld d, l
    nop
    nop
    xor l
    nop
    db $10
    ld bc, $3f3f
    adc e
    nop
    db $10
    rlc b
    dec hl
    nop
    rst $38
    call Call_000_1f02
    add h
    nop
    add hl, de
    ld b, $c7
    rst $00
    ret nz

    ret nz

    nop
    nop
    nop
    call z, Call_000_0301
    ld [bc], a
    rra
    nop
    rra
    add [hl]
    nop
    db $e3
    nop
    ld hl, sp-$7c
    nop
    rst $18
    dec b
    db $fc
    nop
    cp $00
    ld bc, $9100
    ld bc, $00ba
    ld a, a
    and [hl]
    nop
    ld b, c
    ld b, $07
    rlca
    ccf
    ccf
    inc bc
    inc bc
    rst $38
    pop de
    ld [bc], a
    add hl, sp
    adc a
    ld [bc], a
    adc c
    add [hl]
    nop
    halt
    ld bc, $c7c7
    xor h
    ld [bc], a
    add h
    and h
    ld bc, $00d7
    db $fc
    ld b, c
    nop
    cp $a6
    ld bc, $c749
    nop
    ld c, d
    nop
    inc bc
    and h
    ld bc, $cb69
    nop
    pop bc
    dec b
    ld b, h
    ld b, h
    ldh [$ffe0], a
    pop af
    pop af
    adc e
    ld [bc], a
    ldh [rNR44], a
    rst $00
    adc c
    nop
    ld [de], a
    ld bc, $0707
    ld [hl+], a
    rra
    nop
    rra
    sub c
    ld [bc], a
    adc d
    add [hl]
    ld [bc], a
    ld a, d
    ld bc, $0300
    add [hl]
    ld [bc], a
    call c, $0183
    call c, $0700
    and [hl]
    nop
    db $d3
    nop
    add b
    add h
    ld bc, $04df
    ldh [rP1], a
    ld hl, sp+$00
    ld bc, $00c4
    db $d3
    ld de, $000f
    nop
    ld bc, $01e0
    ld b, $01
    nop
    ld bc, $01fe
    ld a, [hl]
    ld bc, $011e
    db $fc
    ld bc, $02cd
    db $ed
    add e
    ld [bc], a
    xor [hl]
    ld bc, $4747
    adc e
    ld [bc], a
    inc e
    add e
    inc bc
    inc c
    jp $1c02


    adc a
    ld [bc], a
    db $10
    ld b, h
    rst $38
    nop
    rst $00
    nop
    ld c, [hl]
    nop
    ld hl, sp-$7c
    ld [bc], a
    rst $10
    nop
    ret nz

    add e
    ld [bc], a
    pop de
    jp z, $c900

    nop
    inc bc
    jp z, $dd00

    add e
    ld [bc], a
    ret nc

    ld b, c
    cp $01
    ld b, $80
    ld bc, $01e0
    ld hl, sp+$01
    db $fc
    and h
    ld bc, $d066
    ld [bc], a
    xor a
    nop
    nop
    push bc
    ld [bc], a
    ld b, e
    inc hl
    ldh a, [rNR44]
    ld hl, sp+$47
    ldh a, [rP1]
    ld b, a
    rrca
    ldh a, [$ff8b]
    inc bc
    and b
    nop
    db $fc
    and h
    ld bc, $005d
    cp $cd
    ld bc, $847e
    inc bc
    ld d, l
    rlca
    ld a, $01
    ld e, $01
    ld b, $01
    ld [bc], a
    ld bc, $02d1
    ld sp, $03cd
    db $fd
    nop
    nop
    and h
    inc b
    ld bc, $0f02
    nop
    rrca
    sub b
    nop
    di
    ret z

    inc b
    ld a, [hl-]
    ld b, d
    ld bc, $00fe
    ld bc, $0047
    rst $38
    ld b, e
    cp $01
    cp a
    inc b
    sub b
    or a
    inc b
    ld [hl], b
    add a
    inc b
    jr jr_00f_664a

    rst $38
    nop
    add a
    nop
    ld de, $0189
    ld d, [hl]
    add l
    inc b
    sub d
    ret c

    dec b
    rrca
    cpl
    nop
    nop
    rst $38
    adc l
    inc b
    ld a, [$7f04]
    add b
    ld a, b
    add b
    rra
    add e
    inc b
    or l
    and h
    inc bc
    db $d3
    ld [bc], a
    ld b, b
    add b
    nop
    ret z

    inc bc
    ld c, c
    jp Jump_00f_6202


    inc b
    rrca
    nop
    rst $38
    nop
    db $fc
    and [hl]
    inc bc
    ld b, e
    call nz, Call_000_3604
    xor b
    ld bc, $03ef
    rra
    nop
    ccf
    nop
    rst $00
    ld bc, $006f
    ld a, [hl]
    and [hl]
    inc b
    ld b, a

jr_00f_664a:
    ld b, c
    ld a, a
    add b
    nop
    ccf
    jp z, $6d02

    add e
    ld bc, $0040
    db $fc
    add e
    ld bc, $0141
    nop
    ld a, a
    call z, Call_00f_6f02
    rst $00
    inc b
    inc l
    and h
    ld [bc], a
    call nz, Call_000_0584
    ld d, l
    nop
    inc bc
    and a
    inc bc
    push de
    inc bc
    rst $38
    ret nz

    nop
    add b
    adc l
    inc b
    push af
    adc d
    dec b
    pop bc
    inc bc
    ret nz

    nop
    nop
    rst $38
    rst $38
    add hl, bc
    ld c, a
    ld d, e
    ld d, e
    ld c, a
    ld c, a
    ld d, e
    ld d, e
    ld c, a
    ld c, a
    ld d, e
    ret


    nop
    add hl, bc
    dec hl
    nop
    adc c
    nop
    ld [bc], a
    push de
    nop
    add hl, hl
    ld [bc], a
    ld d, e
    ld c, a
    ld c, h
    ld b, [hl]
    ld d, h
    ld d, b
    ld bc, $4e51
    adc $00
    jr nz, jr_00f_66a3

jr_00f_66a3:
    ld c, e
    ld b, [hl]
    ld d, b
    ld d, d
    ld [bc], a
    ld c, d
    ld b, b
    ld c, a
    adc l
    nop
    ld d, h
    nop
    ld c, h
    ld b, [hl]
    ld d, d
    ld d, b
    ld bc, $4049
    adc [hl]
    nop
    inc de
    adc a
    nop
    ld h, d
    nop
    ld b, c
    adc a
    nop
    inc sp
    adc [hl]
    nop
    add e
    nop
    ld b, c
    ldh a, [$ff4e]
    nop
    ld d, e
    ld h, e
    ld d, l
    ld h, e
    inc b
    ld h, e
    inc e
    ld h, e
    ld [hl-], a
    adc a
    nop
    or d
    ld h, e
    ld e, c
    ld h, e
    inc c
    ld h, e
    inc h
    ld h, e
    ld a, [hl-]
    adc a
    nop
    jp nc, $5d62

    nop
    rla
    ld h, e
    inc d
    inc b
    dec d
    inc l
    rla
    dec l
    dec d
    ld h, d
    ld b, d
    adc a
    nop
    ld [hl], d
    rlca
    ld b, a
    ld d, b
    ld d, b
    ld c, b
    ld c, b
    ld d, b
    ld d, b
    ld c, b
    add $01
    adc c
    ld bc, $4d48
    sub c
    nop
    inc de
    ld h, e
    nop
    ld h, e
    db $10
    ld h, d
    jr nz, @+$05

    ld [hl+], a
    ld hl, $2221
    sub b
    nop
    inc d
    ld h, e
    ld [$1863], sp
    ld h, d
    jr z, jr_00f_671b

    ld a, [hl+]
    add hl, hl
    add hl, hl

jr_00f_671b:
    ld a, [hl+]
    dec hl
    nop
    inc bc
    ld sp, $3e3e
    ld sp, $0183
    ldh [rP1], a
    inc hl
    ld h, e
    ld l, $01
    ld a, $3f
    sub b
    nop
    rrca
    inc bc
    add hl, sp
    ld b, l
    ld b, l
    add hl, sp
    add e
    ld [bc], a
    nop
    nop
    dec hl
    ld h, e
    ld [hl], $01
    ld b, l
    ld b, [hl]
    ldh a, [$ff30]
    nop
    rrca
    rst $38
    ld b, [hl]
    ld h, a
    add hl, bc
    db $fc
    dec de
    nop
    add b
    db $fc
    inc de
    nop
    add b
    db $fc
    db $db
    nop
    add b
    db $fc
    db $e3
    nop
    add b
    db $fc
    db $eb
    nop
    add b
    db $fc
    dec bc
    nop
    add b
    db $fc
    inc bc
    nop
    add b
    db $fc
    ei
    nop
    add b
    db $fc
    di
    nop
    add c
    rla
    or $0d
    inc bc
    sbc e
    ld l, b
    ld c, a
    db $10
    ld [hl], c
    ld c, $04
    ld a, [hl]
    ld h, a
    add l
    ld h, a
    adc h
    ld h, a
    sub e
    ld h, a
    inc b
    ld h, b
    ld d, e
    dec bc
    ld b, $9a
    ld h, a
    inc b
    inc a
    ld d, [hl]
    dec bc
    ld b, $97
    ld h, a
    inc b
    jr jr_00f_67eb

    dec bc
    ld b, $97
    ld h, a
    inc b
    ld a, h
    ld h, d
    dec bc
    rrca
    ld b, [hl]
    db $10
    jr nz, @+$52

    nop
    ld hl, $0050
    jr nz, @+$52

    nop
    ld hl, $0050
    add hl, bc
    inc bc
    ld bc, $0701
    ld h, b
    nop
    dec b
    ld [$0201], sp
    dec b
    ld a, [bc]
    ld bc, $0503
    ld [$0201], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld bc, $0704
    nop
    nop
    dec b
    inc c
    ld bc, $070a
    ret nz

    cp $08
    ret nz

    ei
    ld a, [hl+]
    ld b, d
    dec b
    inc b
    ld bc, $0509
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $050a
    inc b
    ld bc, $0509
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b

jr_00f_67eb:
    ld bc, $0704
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc c
    ld bc, $0502
    ld [$0209], sp
    ld bc, $070e
    nop
    nop
    add hl, hl
    nop
    dec b
    inc d
    ld bc, $070d
    and b
    cp $29
    ld c, $05
    inc d
    ld a, [bc]
    ld bc, $0700
    nop
    nop
    add hl, hl
    nop
    dec b
    ld a, [bc]
    ld bc, $053a
    inc d
    ld bc, $050b
    inc b
    ld bc, $0535
    inc b
    ld bc, $0511
    inc b
    ld bc, $050c
    inc b
    ld bc, $050b
    ld b, $01
    dec [hl]
    dec b
    ld b, $01
    ld de, $0605
    ld bc, $050c
    ld b, $01
    dec bc
    dec b
    ld [$3501], sp
    dec b
    ld [$1101], sp
    dec b
    ld [$0c01], sp
    dec b
    ld [$0b01], sp
    dec b
    ld a, [bc]
    ld bc, $0535
    db $10
    ld bc, $0511
    jr z, jr_00f_685b

    nop

jr_00f_685b:
    dec b
    inc d
    add hl, bc
    add hl, bc
    ld bc, $0712
    ld c, d
    nop
    dec b
    inc bc
    ld bc, $0513
    inc bc
    ld bc, $0514
    inc bc
    ld bc, $0515
    inc bc
    ld a, [bc]
    ld bc, $0715
    nop
    nop
    dec b
    inc d
    ld bc, $0504
    inc c
    ld bc, $0820
    ld b, b
    db $fc
    ld a, [hl+]
    cpl
    dec b
    inc d
    ld bc, $051f
    inc d
    ld bc, $0804
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    inc c
    ld bc, $0500
    ld e, $06
    and b
    ld h, a
    call Call_000_0c80
    call Call_000_0c91
    jp Jump_000_0da4


    db $01, $60, $db, $08, $62, $db, $01, $6a, $db, $01, $63, $dd, $01, $62, $dd, $01
    db $6c, $db, $01, $6b, $db, $01, $7b, $db, $01, $84, $a0, $01, $4c, $a0, $01, $72
    db $a0, $01, $51, $a0, $01, $5b, $a0, $01, $71, $a0, $03, $db, $de, $00

    call Call_00f_6e0b
    ld a, $20

jr_00f_68d7:
    push af
    xor a
    ldh [$ffa6], a
    call Call_00f_68fe
    pop af
    dec a
    jr nz, jr_00f_68d7

jr_00f_68e2:
    call Call_00f_68fe
    call Call_000_0647
    ld a, [$df0a]
    cp $06
    jr z, jr_00f_68e2

    ld de, HeaderLogo
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ret


Call_00f_68fe:
    call Call_000_0496
    ld hl, $086b
    ld a, $00
    call Call_000_05cf
    call Call_000_04ae
    call Call_000_0343
    jp Jump_000_0357


    dec c
    dec l
    ld l, e
    add hl, de
    rst $38
    inc bc
    dec c
    cp a
    ld l, c
    dec b
    inc bc
    ld b, $33
    ld l, c

    db $0d, $50, $0f, $a9, $a0, $b3, $04, $70, $73, $0f, $17, $f6, $0d, $21, $00, $00
    db $0f, $39, $00, $20, $0e, $00, $0d, $1a, $6a, $0f, $3a, $00, $03, $2e, $6a, $4f
    db $19, $00, $08, $19, $01, $08, $19, $02, $08, $19, $01, $08, $06, $40, $69

    rrca
    ld a, [hl-]
    ld bc, $2e03
    ld l, d
    ld c, a
    add hl, de
    inc b
    jr jr_00f_6973

    inc bc
    jr jr_00f_6963

    ld d, [hl]
    ld l, c
    dec c
    ld d, b
    rrca
    xor d

jr_00f_6963:
    and b
    or e
    add hl, de
    ld bc, $0d20
    ld l, a
    ld l, h
    ld b, $39
    ld l, c
    rrca
    dec sp
    ld bc, $8c06

jr_00f_6973:
    ld l, c

    db $0d, $d9, $69, $11

    add b
    ld l, c

    db $0d, $d2, $69, $06, $40, $69

    rrca
    ld a, [hl-]
    ld [bc], a
    add hl, de
    rst $38
    inc bc
    dec c
    jp $0f69


    dec sp
    nop
    add hl, de
    rst $38
    inc bc
    dec c
    ld b, h
    ld l, e
    dec b
    inc bc
    inc bc
    and c
    ld l, d
    ld c, a
    dec c
    ld sp, hl
    ld l, c
    add hl, de
    rlca
    ld [$ff19], sp
    ld [$9b06], sp
    ld l, c
    add hl, de
    rst $38
    inc bc
    dec c
    dec a
    ld l, e
    dec b
    inc bc
    inc bc
    rst $28
    ld l, d
    ld c, a
    rrca
    dec sp
    nop
    dec c
    rlca
    ld l, d
    add hl, de
    rlca

jr_00f_69b8:
    ld [$ff19], sp
    ld [$b606], sp
    ld l, c
    ld e, $10
    jr jr_00f_69c5

    ld e, $20

jr_00f_69c5:
    push bc
    push de
    ld hl, $602e
    ld a, $1e
    call Call_000_05cf
    pop de
    pop bc
    ret


    ld e, $39
    ld a, [de]
    ld [$df0a], a
    ret


    ld e, $39
    ld a, [de]
    ld hl, $69f3
    add a
    add l
    ld l, a
    jr nc, jr_00f_69e5

    inc h

jr_00f_69e5:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $27
    ld a, [hl+]
    or a
    jr nz, jr_00f_69f1

    ld a, [hl]
    sub $01

jr_00f_69f1:
    ld [de], a
    ret


    db $00, $bf

    inc e
    cp a
    jr c, jr_00f_69b8

Call_00f_69f9:
    ld e, $3b
    ld a, [de]
    or a
    ld a, $2a
    jr z, jr_00f_6a03

    ld a, $78

jr_00f_6a03:
    ld e, $04
    ld [de], a
    ret


Call_00f_6a07:
    ld e, $3b
    ld a, [de]
    ld hl, $6a17
    add l
    ld l, a
    jr nc, jr_00f_6a12

    inc h

jr_00f_6a12:
    ld a, [hl]
    ld e, $04
    ld [de], a
    ret


    ld a, [de]
    ld d, b
    add h

Call_00f_6a1a:
    ld e, $39
    ld a, [de]
    ld hl, $6a2a
    add l
    ld l, a
    jr nc, jr_00f_6a25

    inc h

jr_00f_6a25:
    ld a, [hl]
    ld e, $07
    ld [de], a
    ret


    db $34

    ld c, h
    ld h, h
    ld a, h

    ldh a, [$ffa6]
    ld e, $39
    bit 6, a
    jr nz, jr_00f_6a43

    bit 7, a
    jr nz, jr_00f_6a51

    bit 1, a
    jr nz, jr_00f_6a58

    and $09
    jr nz, jr_00f_6a71

    ret


jr_00f_6a43:
    ld a, [de]
    or a
    ret z

    dec a

jr_00f_6a47:
    ld [de], a
    call Call_00f_6a1a
    ld e, $2c
    call Call_000_10aa
    ret


jr_00f_6a51:
    ld a, [de]
    cp $03
    ret z

    inc a
    jr jr_00f_6a47

jr_00f_6a58:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_00f_6a6b

    ld e, $39
    call Call_000_10aa
    ld e, $0f
    ld bc, $6939
    jp Jump_000_0846


jr_00f_6a6b:
    ld a, $ff
    ld [$df0a], a
    ret


jr_00f_6a71:
    ld a, [de]
    cp $03
    ld e, $3a
    jr z, jr_00f_6a91

    ld a, [de]
    or a
    jr nz, jr_00f_6a89

    ld e, $2d
    call Call_000_10aa
    ld e, $0f
    ld bc, $6974
    jp Jump_000_0846


jr_00f_6a89:
    ld e, $0f
    ld bc, $695f
    jp Jump_000_0846


jr_00f_6a91:
    ld a, [de]
    or a
    ret nz

    ld e, $2d
    call Call_000_10aa
    ld e, $0f
    ld bc, $694f
    jp Jump_000_0846


    ldh a, [$ffa6]
    ld e, $3b
    bit 4, a
    jr nz, jr_00f_6ab6

    bit 5, a
    jr nz, jr_00f_6ac4

    bit 1, a
    jr nz, jr_00f_6aca

    and $09
    jr nz, jr_00f_6ad2

    ret


jr_00f_6ab6:
    ld a, [de]
    or a
    ret nz

    inc a

jr_00f_6aba:
    ld [de], a
    call Call_00f_69f9
    ld e, $2c
    call Call_000_10aa
    ret


jr_00f_6ac4:
    ld a, [de]
    or a
    ret z

    dec a
    jr jr_00f_6aba

jr_00f_6aca:
    ld e, $0f
    ld bc, $6912
    jp Jump_000_0846


jr_00f_6ad2:
    ld a, [de]
    or a
    jr nz, jr_00f_6ae2

    ld e, $39
    ld a, [de]
    ld [$df0a], a
    ld e, $2d
    call Call_000_10aa
    ret


jr_00f_6ae2:
    ld e, $2d
    call Call_000_10aa
    ld e, $0f
    ld bc, $69a4
    jp Jump_000_0846


    ldh a, [$ffa6]
    ld e, $3b
    bit 4, a
    jr nz, jr_00f_6b04

    bit 5, a
    jr nz, jr_00f_6b13

    bit 1, a
    jr nz, jr_00f_6b19

    and $09
    jr nz, jr_00f_6b21

    ret


jr_00f_6b04:
    ld a, [de]
    cp $02
    ret nc

    inc a

jr_00f_6b09:
    ld [de], a
    call Call_00f_6a07
    ld e, $2c
    call Call_000_10aa
    ret


jr_00f_6b13:
    ld a, [de]
    or a
    ret z

    dec a
    jr jr_00f_6b09

jr_00f_6b19:
    ld e, $0f
    ld bc, $696e
    jp Jump_000_0846


jr_00f_6b21:
    ld a, [de]
    add $03
    ld [$df0a], a
    ld e, $2d
    call Call_000_10aa
    ret


    ld a, $29
    ld hl, $6b83
    call Call_00f_6b49
    push bc
    push de
    call Call_00f_6c97
    pop de
    pop bc
    ret


    ld a, $14
    ld hl, $6bfe
    jr jr_00f_6b49

    ld a, $26
    ld hl, $6bc8

Call_00f_6b49:
jr_00f_6b49:
    call Call_000_0675
    ret c

    push bc
    push de
    ld e, $39
    ld a, [de]
    add a
    add l
    ld l, a
    jr nc, jr_00f_6b58

    inc h

jr_00f_6b58:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff92]
    ld c, a
    ld b, $c4

jr_00f_6b60:
    ld a, [hl+]
    cp $ff
    jr z, jr_00f_6b7d

    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    ld e, a
    inc c
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, a
    ld l, d

jr_00f_6b74:
    ld a, [hl+]
    ld [bc], a
    inc c
    dec e
    jr nz, jr_00f_6b74

    pop hl
    jr jr_00f_6b60

jr_00f_6b7d:
    ld a, c

jr_00f_6b7e:
    ldh [$ff92], a
    pop de
    pop bc
    ret


    adc c
    ld l, e
    sbc [hl]
    ld l, e
    or e
    ld l, e
    and b
    sbc b
    ld b, $e8
    ld [hl], e
    ret nz

    sbc b
    ld b, $ee
    ld [hl], e
    add $98
    ld c, $1e
    ld [hl], h
    ldh [$ff98], a
    ld b, $f4
    ld [hl], e
    rst $38
    nop
    sbc c
    ld b, $fa
    ld [hl], e
    jr nz, @-$65

jr_00f_6ba5:
    ld b, $00
    ld [hl], h
    ld h, $99
    ld c, $1e
    ld [hl], h
    ld b, b
    sbc c
    ld b, $06
    ld [hl], h
    rst $38
    ld h, b
    sbc c
    ld b, $0c
    ld [hl], h
    add b
    sbc c
    ld b, $12
    ld [hl], h
    add [hl]
    sbc c
    ld c, $1e
    ld [hl], h
    and b
    sbc c
    ld b, $18
    ld [hl], h
    rst $38
    adc $6b
    sbc $6b
    xor $6b
    and b
    sbc b
    ld b, $2c
    ld [hl], h
    ret nz

    sbc b
    inc d
    ld [hl-], a
    ld [hl], h
    ldh [$ff98], a
    ld b, $46
    ld [hl], h
    rst $38
    nop
    sbc c
    ld b, $4c
    ld [hl], h
    jr nz, jr_00f_6b7e

    inc d
    ld [hl-], a
    ld [hl], h
    ld b, b
    sbc c
    ld b, $66
    ld [hl], h
    rst $38
    ld h, b
    sbc c
    ld b, $6c
    ld [hl], h
    add b
    sbc c
    inc d
    ld [hl-], a
    ld [hl], h
    and b
    sbc c
    ld b, $72
    ld [hl], h
    rst $38
    inc b
    ld l, h
    ld a, [bc]
    ld l, h
    db $10
    ld l, h
    ret nz

    sbc b
    inc d
    ld d, d
    ld [hl], h
    rst $38
    jr nz, jr_00f_6ba5

    inc d
    ld d, d
    ld [hl], h
    rst $38
    add b
    sbc c
    inc d
    ld d, d
    ld [hl], h
    rst $38

    db $04, $70, $73, $0f, $17, $f6, $0d, $20, $21, $00, $21, $7c, $00, $03, $34, $6c
    db $4f, $0f, $39, $06, $05, $18, $0f, $39, $05, $05, $18, $06, $27, $6c

    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $3a
    ld a, [hl]
    or a
    ld a, $ff
    jr nz, jr_00f_6c43

    ld e, $39
    ld a, [de]

jr_00f_6c43:
    ld e, $15
    ld [de], a
    ret


    inc h
    ld de, $8304
    ld [hl], a
    dec bc
    rla
    or $0d
    jr nz, @+$2b

    nop
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
    ld d, $c5
    ld e, $39
    ld a, [de]
    ld e, a
    call Call_00f_6c7f
    call Call_00f_6c97
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


Call_00f_6c7f:
    ld a, e
    ld hl, $bf00
    cp $01
    jr c, jr_00f_6c8f

    ld hl, $bf1c
    jr z, jr_00f_6c8f

    ld hl, $bf38

jr_00f_6c8f:
    ld e, $1c
    xor a

jr_00f_6c92:
    ld [hl+], a
    dec e
    jr nz, jr_00f_6c92

    ret


Call_00f_6c97:
    ld a, $0f
    call Call_000_0675
    ret c

    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld de, $98cc
    ld bc, $bf02
    call Call_00f_6cc1
    ld de, $992c
    ld bc, $bf1e
    call Call_00f_6cc1
    ld de, $998c
    ld bc, $bf3a
    call Call_00f_6cc1
    ld a, l
    ldh [$ff92], a
    ret


Call_00f_6cc1:
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $05
    inc l
    ld a, [bc]
    inc a
    ld [hl], a
    inc l
    ld e, $0a
    ld [hl], e
    inc l
    dec bc
    ld a, [bc]
    and $0f
    call Call_00f_6ce5
    dec bc
    ld a, [bc]
    swap a
    and $0f
    call Call_00f_6ce5
    ld e, $00
    ld a, [bc]
    and $0f

Call_00f_6ce5:
    jr nz, jr_00f_6cea

    ld a, e
    jr jr_00f_6cec

jr_00f_6cea:
    ld e, $00

jr_00f_6cec:
    ld [hl], a
    inc l
    ret


Call_00f_6cef:
    ld c, $03
    ld de, $001c
    ld hl, $bf02

jr_00f_6cf7:
    ld b, $17
    push hl
    ld a, [hl+]

jr_00f_6cfb:
    xor [hl]
    inc hl
    dec b
    jr nz, jr_00f_6cfb

    cp [hl]
    jr nz, jr_00f_6d16

    pop hl
    ld b, $18
    push hl
    ld a, [hl+]

jr_00f_6d08:
    add [hl]
    inc hl
    dec b
    jr nz, jr_00f_6d08

    cp [hl]
    jr nz, jr_00f_6d16

jr_00f_6d10:
    pop hl
    add hl, de
    dec c
    jr nz, jr_00f_6cf7

    ret


jr_00f_6d16:
    pop hl
    push hl
    ld b, $1a
    xor a

jr_00f_6d1b:
    ld [hl+], a
    dec b
    jr nz, jr_00f_6d1b

    jr jr_00f_6d10

    ld a, [$df0a]
    cp $03
    ret nc

    ld de, $bf02
    cp $01
    jr c, jr_00f_6d36

    ld de, $bf1e
    jr z, jr_00f_6d36

    ld de, $bf3a

jr_00f_6d36:
    ld hl, $68a4

jr_00f_6d39:
    ld a, [hl+]
    or a
    jr z, jr_00f_6d50

    ldh [$ff84], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_00f_6d43:
    ld a, [de]
    inc de
    ld [bc], a
    inc bc
    ldh a, [$ff84]
    dec a
    ldh [$ff84], a
    jr nz, jr_00f_6d43

    jr jr_00f_6d39

jr_00f_6d50:
    ld hl, $ffe6
    add hl, de
    ld a, [hl+]
    or [hl]
    ret nz

    ld a, $02
    ld [$a084], a
    ld a, $0c
    ld [$a04c], a
    ld a, $06
    ld [$a072], a
    ld a, $ff
    ld [$a05b], a
    ret


    ld a, [$df0a]
    cp $03
    ret nc

    ld de, $bf02
    cp $01
    jr c, jr_00f_6d81

    ld de, $bf1e
    jr z, jr_00f_6d81

    ld de, $bf3a

jr_00f_6d81:
    ld hl, $68a4

jr_00f_6d84:
    ld a, [hl+]
    or a
    jr z, jr_00f_6d9b

    ldh [$ff84], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_00f_6d8e:
    ld a, [bc]
    inc bc
    ld [de], a
    inc de
    ldh a, [$ff84]
    dec a
    ldh [$ff84], a
    jr nz, jr_00f_6d8e

    jr jr_00f_6d84

jr_00f_6d9b:
    ld hl, $ffe8
    add hl, de
    ld b, $17
    push hl
    ld a, [hl+]

jr_00f_6da3:
    xor [hl]
    inc hl
    dec b
    jr nz, jr_00f_6da3

    ld [hl], a
    pop hl
    ld b, $18
    ld a, [hl+]

jr_00f_6dad:
    add [hl]
    inc hl
    dec b
    jr nz, jr_00f_6dad

    ld [hl], a
    ret


Call_00f_6db4:
    ld a, $03
    ldh [$ff82], a
    ld hl, $bf00

jr_00f_6dbb:
    push hl
    xor a
    ldh [$ff80], a
    ldh [$ff81], a
    ld de, $0003
    add hl, de
    ld b, $0a
    ld c, $02
    call Call_00f_6ded
    ld b, $02
    ld c, $01
    call Call_00f_6ded
    ld b, $01
    ld c, $03
    call Call_00f_6ded
    pop hl
    ldh a, [$ff80]
    ld [hl+], a
    ldh a, [$ff81]
    ld [hl-], a
    ld de, $001c
    add hl, de
    ldh a, [$ff82]
    dec a
    ldh [$ff82], a
    jr nz, jr_00f_6dbb

    ret


Call_00f_6ded:
jr_00f_6ded:
    ld e, [hl]
    inc hl
    ld d, $08

jr_00f_6df1:
    srl e
    call c, Call_00f_6dfd
    dec d
    jr nz, jr_00f_6df1

    dec b
    jr nz, jr_00f_6ded

    ret


Call_00f_6dfd:
    ldh a, [$ff80]
    add c
    daa
    ldh [$ff80], a
    ldh a, [$ff81]
    adc $00
    daa
    ldh [$ff81], a
    ret


Call_00f_6e0b:
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld e, $10
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld hl, $6e8c
    ld de, $8000
    call Call_000_0708
    ld hl, $1150
    ld a, $00
    call Call_000_05cf
    ld hl, $705d
    ld de, $9000
    call Call_000_0708
    ld hl, $72a3
    ld de, $9800
    call Call_000_0708
    call Call_00f_6cef
    call Call_00f_6db4
    call Call_00f_6c97
    call Call_000_1584
    ld a, $ff
    ld [$da29], a
    ldh [rLYC], a
    ld a, $a8
    ld hl, $a0b3
    call Call_000_07c4
    ld e, $2e
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ld hl, $cd09
    ld a, $e4
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $e4
    ld [hl], a
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    ld a, $06
    ld [$df0a], a
    call Call_000_0357
    ld de, HeaderLogo
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf
    ret


    db $0c

    nop
    nop
    rlca
    rlca
    rra
    rra
    inc sp
    ccf
    dec l
    inc sp
    ld l, l
    ld [hl], e
    ld [hl], e

    db $28

    ld a, a

    db $23

    ccf

    db $00

    db $1e

    db $c4, $00, $04, $09

    ld bc, $ea01
    ld [$fcfc], a
    ld a, [$fcfe]
    db $fc

    db $27

    db $fe

    db $0b

    or $fe
    cp $f6
    db $ec
    db $fc
    call c, Call_00f_78ec
    cp b
    ldh [$ffe0], a

    db $25

    nop

    db $08

    inc bc
    inc bc
    rrca
    rrca
    dec de
    rra
    dec d
    dec de
    dec sp

    db $26

    ccf

    db $23

    rra

    db $00

    db $0e

    db $c6, $00, $46, $11

    INCBIN "gfx/image_00f_6ed3.2bpp"

    ld [hl], a
    ld a, b

    db $41

    cpl
    db $30

    db $13

    INCBIN "gfx/image_00f_6ee9.2bpp"

    ccf
    jr nz, @+$81

jr_00f_6efc:
    ld b, b

    db $87, $00, $68, $0d

    scf

Call_00f_6f02:
    jr c, @+$21

    db $10
    scf
    jr c, @+$2f

    ld a, $23
    ccf
    db $10
    rra
    rrca
    rrca

    db $26

    nop

    db $47

    nop
    rst $38

    db $28

    nop

    db $a3, $00, $60, $03

    ld hl, sp+$18
    ld hl, sp+$08

    db $42

    db $fc
    inc d

    db $11

    INCBIN "gfx/image_00f_6f22.2bpp"

    inc a
    inc a

    db $85, $00, $c0, $09

    cp $0e
    rst $30
    xor l
    rst $38
    and l
    db $fd
    and a
    db $fa
    db $06

    db $41

    db $fa
    ld b, [hl]

    db $09

    cp $06
    jp hl


    rra
    or c
    ld a, a
    and $fe
    inc a
    inc a

    db $23

    nop

    db $09

    ld [bc], a
    ld [bc], a
    call nc, $f8d4
    ld hl, sp-$0c
    db $fc
    ld hl, sp-$08

    db $25

    db $fc

    db $05

    db $ec
    db $fc
    ret c

    add sp, -$48
    ret c

    db $a7, $00, $58, $0b

    ld hl, sp-$08
    and $1e
    ld sp, hl
    scf
    rst $38
    dec bc
    ld a, $c3
    cp $07

    db $43

    rst $30
    rrca

    db $1a

    INCBIN "gfx/image_00f_6f7a.2bpp"

    ei
    rlca
    ld a, [$fd35]
    dec bc
    ccf
    jp Jump_000_07fa


    rst $38

    db $88, $01, $2b, $05

    di
    rrca
    adc a
    ei
    db $fc
    db $fc

    db $83, $01, $1a, $05

    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    ccf
    rst $38

    db $41

    rst $18
    ccf

    db $00

    ccf

    db $28

    rst $38

    db $07

    cp $ff
    db $fd

jr_00f_6fb4:
    cp $e7
    ei
    ld a, [hl]
    ld a, [hl]

    db $27

    nop

    db $08

    push af
    push af
    cp $fe

jr_00f_6fc0:
    ld a, l
    rst $38
    cp [hl]
    ld a, [hl]
    ld a, a

    db $24

    rst $38

    db $09

    ei
    rst $38
    or $fa
    xor $f6
    sbc h
    db $fc
    ldh a, [$fff0]

    db $a6, $00, $40, $04

    jr nc, jr_00f_6fc0

    jr @-$06

    db $08

    db $42

    db $fc
    ld d, h

    db $41

    db $fa
    db $06

    db $15

    INCBIN "gfx/image_00f_6fe2.2bpp"

    ret nz

    ret nz

    and b
    ldh [$ffc0], a

jr_00f_6ff7:
    ret nz

    db $27

    db $e0

    db $03

    ld h, b
    ldh [$ffe0], a
    ld h, b

    db $23

    ret nz

    db $01

    add b
    add b

    db $27

    nop

    db $01

    add b
    add b

    db $39

    nop

    db $87, $00, $80, $83, $00, $86, $11

    INCBIN "gfx/image_00f_7012.2bpp"

    jr nc, @+$32

    db $85, $01, $fc, $05

    dec bc
    inc c
    rra
    db $10
    ccf
    db $30

    db $85, $00, $88, $83, $00, $6a, $09

    ld a, a
    ld c, b
    ccf
    jr nc, jr_00f_7055

    inc e
    rla
    rra
    db $08
    rrca

    db $23

    rlca

    db $05

    dec bc
    inc c
    ccf
    jr nc, jr_00f_70be

    ld c, b

    db $85, $00, $68, $0c

    sbc a
    ldh [$ff67], a
    ld a, b
    cpl
    jr nc, jr_00f_7092

    jr nc, @+$59

jr_00f_7055:
    ld a, b
    ld c, l
    ld a, [hl]
    inc hl

    db $84, $00, $7b, $ff, $03

    rst $38
    nop
    rst $38
    ld a, h

    db $41

    rst $38
    db $ee

    db $c6, $00, $06, $41

    nop
    rst $38

    db $00

    ld a, b

    db $43

    rst $38
    db $38

    db $86, $00, $0c, $08

    db $fc
    rst $38
    ld e, $ff
    ld a, h
    rst $38
    ldh a, [rIE]
    db $fe

    db $88, $00, $1c, $02

    ld c, $ff
    ld a, h

    db $ca, $00, $36, $42

    xor $ff

    db $02

    cp $ff
    db $0e

    db $c8, $00, $32, $02

jr_00f_7092:
    ldh [rIE], a
    db $fc

    db $8a, $00, $38, $00

    ld h, b

    db $83, $00, $54, $8a, $00, $08, $83, $00, $49, $04

    inc e
    rst $38
    jr c, @+$01

    ld [hl], b

    db $ca, $00, $12, $00

    ld a, h

    db $8a, $00, $08, $83, $00, $03, $04

    ld a, [hl]
    rst $38
    ld c, $ff
    inc c

    db $49

    rst $38
    nop

    db $2f

jr_00f_70be:
    db $fe

    db $2f

    rra

    db $47

    rst $38
    ret nz

    db $01

    rst $38
    nop

    db $42

    rst $38
    db $e0

    db $c3, $00, $56, $8c, $00, $4c, $02

    ldh [rIE], a
    db $fe

    db $8a, $00, $3c, $04

    ld a, h
    rst $38
    jr c, @+$01

    db $10

    db $88, $00, $3c, $04

    cp h
    rst $38
    cp $ff
    ld a, d

    db $c5, $00, $44, $00

    db $0e

    db $41

    rst $38
    db $3e

    db $01

    rst $38
    ld a, [hl]

    db $42

    rst $38
    ld a, b

    db $02

    rst $38
    inc a
    rst $38

    db $89, $01, $20, $00

    ld [hl], b

    db $41

    rst $38
    ld a, [hl]

    db $00

    rst $38

    db $47

    ld [hl], b
    db $f0

    db $01

    ld c, $0e

    db $23

    db $3e

    db $05

    ld a, [hl]
    ld a, [hl]
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b

    db $23

    ld a, [hl]

    db $26

    rst $38

    db $a7, $00, $2a, $2a

    rst $38

    db $86, $01, $6a, $42

    ret nz

    rst $38

    db $02

    rst $38
    rst $38
    rst $38

    db $29

    nop

    db $01

    ld a, a
    ld a, a

    db $8a, $01, $70, $00

    nop

    db $cb, $01, $a1, $01

    sbc a
    sbc a

    db $84, $01, $a0, $c9, $01, $89, $02

    ret nz

    inc a
    inc a

    db $25

    db $1e

    db $01

    ld a, [hl]
    ld a, [hl]

    db $23

    ld a, h

    db $01

    ld [hl], b
    ld [hl], b

    db $cf, $01, $5f, $02

    ld [hl], b
    rst $38
    ld [hl], b

    db $cb, $01, $3b, $d0, $01, $3f, $ce, $01, $ee, $cd, $01, $6d, $02

    rst $38
    ld hl, sp-$08

    db $8d, $01, $6c, $01

    rrca
    rrca

    db $42

    ld a, a
    rst $38

    db $00

    ld a, a

    db $a8, $00, $14, $01

    db $01
    db $01

    db $23

    rlca

    db $23

    rrca

    db $00

    db $0e

    db $c4, $02, $4a, $27

    db $ce

    db $01

    ld c, $0e

    db $c5, $02, $59, $47

    ld [hl], b
    rst $38

    db $23

    ld [hl], b

    db $8b, $01, $d4, $2f

    nop

    db $c5, $02, $1f, $03

    cp $fe
    db $fc
    db $fc

    db $25

    db $f8

    db $0b

    rlca
    rlca
    add a
    add a
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a

    db $23

    rlca

    db $2f

    inc e

    db $02

    rrca
    rst $38
    rrca

    db $ac, $02, $61, $01

    adc $ff

    db $cc, $02, $d0, $d0, $01, $9e, $8d, $01, $96, $00

    nop

    db $41

    nop
    rst $38

    db $00

    ld a, [hl]

    db $ce, $00, $2a, $00

    db $fe

    db $8e, $00, $14, $00

    ld a, h

    db $85, $00, $44, $ca, $00, $44, $00

    db $ee

    db $c3, $00, $6a, $85, $01, $1a, $47

    nop
    rst $38

    db $8a, $03, $30, $00

    db $e0

    db $86, $00, $0c, $00

    rst $20

    db $83, $00, $04, $ca, $03, $66, $00

    db $ce

    db $41

    rst $38
    rst $28

    db $01

    rst $38
    db $ee

    db $c8, $03, $74, $41

    ld [hl], b
    rst $38

    db $a4, $02, $c0, $c7, $02, $23, $23

    db $fc

    db $83, $02, $1a, $87, $02, $9c, $83, $02, $44, $01

    add a
    add a

    db $85, $03, $a2, $83, $01, $6c, $8b, $01, $b4, $83, $00, $40, $8e, $00, $04, $02

    rst $20
    rst $38
    rst $30

    db $22

    rst $38

    db $00

    rst $28

    db $88, $03, $6a, $00

    ld a, [hl]

    db $a3, $00, $04, $c7, $03, $e6, $8a, $01, $80, $84, $03, $4b, $b2, $03, $c0, $a6
    db $00, $23, $c9, $03, $04, $01

    ld a, a
    ld a, a

    db $89, $01, $b6, $02

    nop
    rst $38
    nop

    db $8b, $01, $74, $84, $02, $eb, $8b, $04, $34, $85, $01, $80, $86, $01, $66, $ca
    db $04, $02, $00

    rst $38

    db $8f, $04, $59, $89, $02, $f9, $00

    rrca

    db $a3, $03, $84, $c7, $04, $86, $03

    rst $38
    nop
    rst $38
    rst $28

    db $84, $02, $cd, $00

    rrca

    db $88, $03, $2a, $00

    rst $00

    db $84, $00, $04, $00

    rst $08

    db $8a, $04, $9a, $83, $03, $d9, $02

    pop hl
    rst $38
    rst $28

    db $8a, $04, $8c, $00

    rst $08

    db $83, $04, $a6, $c8, $03, $62, $02

    nop
    rst $38
    ret nz

    db $ca, $04, $d6, $00

    db $fc

    db $83, $03, $36, $c7, $03, $36, $ff, $09, $34, $28, $28, $34, $34, $28, $28, $34
    db $34, $28, $c9, $00, $09, $6a, $00, $00, $00, $91, $00, $02, $01, $34, $28, $2b
    db $00, $84, $00, $02, $63, $12, $00, $20, $63, $23, $00, $13, $90, $00, $2f, $84
    db $00, $00, $63, $1c, $00, $27, $62, $2b, $01, $27, $1d, $cf, $00, $64, $ca, $00
    db $14, $d5, $00, $89, $0b, $28, $34, $34, $19, $1a, $3b, $43, $44, $44, $43, $43
    db $44, $c5, $00, $ab, $01, $43, $44, $8e, $00, $34, $65, $0b, $03, $0f, $0e, $0a
    db $01, $23, $0a, $02, $11, $0a, $0a, $8e, $00, $54, $62, $16, $05, $47, $46, $46
    db $47, $47, $46, $c5, $00, $eb, $01, $47, $46, $8e, $00, $54, $02, $21, $22, $1b
    db $cd, $00, $b3, $8e, $00, $34, $01, $29, $2a, $86, $00, $c5, $00, $02, $92, $00
    db $cd, $05, $28, $34, $34, $2e, $2f, $3f, $cd, $00, $f3, $f0, $2b, $00, $f4, $04
    db $34, $28, $28, $39, $3a, $86, $00, $c5, $00, $03, $f0, $32, $01, $2d, $05, $28
    db $34, $34, $42, $44, $43, $99, $00, $a6, $03, $34, $28, $28, $0d, $22, $0a, $65
    db $48, $24, $0a, $90, $00, $d2, $02, $45, $46, $47, $8d, $00, $e6, $f8, $20, $00
    db $3f, $2a, $00, $ff, $80, $73, $89, $73, $92, $73

    sbc e
    ld [hl], e
    xor h
    ld [hl], e

    db $bd, $73, $c6, $73

    rst $08
    ld [hl], e

    db $02, $f8, $f8, $24, $00, $f8, $00, $0e, $01, $02, $f8, $f8, $22, $00, $f8, $00
    db $1a, $01, $02, $f8, $f8, $20, $00, $f8, $00, $0c, $01

    inc b
    ld hl, sp+$10
    inc e
    nop
    ld hl, sp+$08
    ld d, $00
    ld hl, sp+$00
    ld [de], a
    nop
    ld hl, sp-$08
    ld b, $01
    inc b
    ld hl, sp+$10
    ld e, $00
    ld hl, sp+$08
    jr jr_00f_73b5

jr_00f_73b5:
    ld hl, sp+$00
    inc d
    nop
    ld hl, sp-$08
    db $08
    db $01

    db $02, $f8, $00, $02, $00, $f8, $f8, $00, $01, $02, $f8, $00, $10, $00, $f8, $f8
    db $04, $01

    ld b, $f8
    add sp, $0a
    db $10
    ld hl, sp+$10
    ld a, [bc]
    db $10
    ld hl, sp+$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    ld a, [bc]
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp-$10
    ld a, [bc]
    ld de, $3428
    inc [hl]
    add hl, de
    ld a, [de]
    dec sp
    jr z, jr_00f_7424

    inc [hl]
    dec bc
    inc c
    dec c
    inc [hl]
    jr z, @+$2a

    ld d, $17
    jr jr_00f_742f

    jr z, jr_00f_7425

    ld hl, $1b22
    jr z, @+$36

    inc [hl]
    add hl, hl
    ld a, [hl+]
    dec c
    jr z, jr_00f_743c

    inc [hl]
    ld l, $2f
    ccf
    inc [hl]
    jr z, jr_00f_7437

    ld hl, $1b22
    inc [hl]
    jr z, jr_00f_743d

    add hl, sp
    ld a, [hl-]
    dec c
    jr z, jr_00f_744e

    inc [hl]
    ld l, $2f
    ccf
    ld c, $0f
    db $10
    rrca
    ld c, $0a

jr_00f_7424:
    ld a, [bc]

jr_00f_7425:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld de, $0a0a
    ld b, h
    ld b, e
    ld b, e

jr_00f_742f:
    ld b, h
    ld b, h
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr nc, jr_00f_7468

jr_00f_7437:
    ld [hl-], a
    inc sp
    ld sp, $0a0a

jr_00f_743c:
    ld a, [bc]

jr_00f_743d:
    ld a, [bc]
    nop
    dec [hl]
    ld sp, $3736
    jr c, jr_00f_744f

    ld a, [bc]
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld b, e
    ld b, h

jr_00f_744e:
    ld b, h

jr_00f_744f:
    ld b, e
    ld b, e
    ld b, h
    ld a, [bc]
    jr nc, jr_00f_7455

jr_00f_7455:
    inc a
    dec a
    ld a, $0a
    ld a, [bc]
    ld c, [hl]
    nop
    jr nc, jr_00f_748e

    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    nop
    dec a
    ld b, b
    ld b, c
    ld a, [bc]
    ld b, a
    ld b, [hl]

jr_00f_7468:
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, e
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld sp, $3332
    ld sp, $0a0a
    ld a, [bc]
    ld a, [bc]
    nop
    dec [hl]
    ld sp, $3736
    jr c, jr_00f_7491

    ld a, [bc]
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a

jr_00f_748e:
    ld b, e
    ld b, h
    ld b, h

jr_00f_7491:
    ld b, e
    ld b, e
    ld b, h
    ld a, [bc]
    jr nc, jr_00f_7497

jr_00f_7497:
    inc a
    dec a
    ld a, $0a
    ld a, [bc]
    ld c, [hl]
    nop
    jr nc, jr_00f_74d0

    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    nop
    dec a
    ld b, b
    ld b, c
    ld a, [bc]
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, e
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
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

jr_00f_74d0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_00f_76fa:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00f_7700:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_00f_78e2

jr_00f_78e2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00f_78ec:
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
    add b
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
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0200
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
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    ld [bc], a
    ld bc, $0000
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
    add b
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

Call_00f_7c00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0000
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$0000], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_00f_7e00

jr_00f_7e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_00f_7f2a

jr_00f_7f2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_00f_7f67

jr_00f_7f67:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_00f_7fad

jr_00f_7fad:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
