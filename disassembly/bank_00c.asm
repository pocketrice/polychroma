; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    db $07

    rlca
    rlca
    jr @+$21

    inc a
    ccf
    ld e, [hl]
    ld h, e

    db $41

    ld a, a
    ld d, c

    db $01

    rst $38
    sub c

    db $41

    rst $38
    add c

    db $16

    INCBIN "gfx/image_00c_4013.2bpp"

    jr nc, @-$0e

    ret z

    jr c, @+$60

    cp [hl]
    inc hl

    db $42

    rst $38
    db $01

    db $05

    rst $38
    ld [bc], a
    cp $0e
    cp $02

    db $aa, $00, $15, $01

    nop
    nop

    db $83, $00, $00, $05

    ld a, $3f
    ld a, l
    ld b, e
    ld a, a
    ld l, c

    db $41

    rst $38
    xor b

    db $0b

    rst $38
    add b
    cp $81
    ld a, c
    ld b, a
    ld a, [hl]
    ld a, a
    ld b, b
    ld a, a
    daa
    ccf

    db $c5, $00, $45, $09

    ldh [$ffe0], a
    ret c

    jr c, @+$46

    cp h
    inc b
    db $fc
    ld [bc], a
    db $fe

    db $42

    add c
    rst $38

    db $09

    and d
    cp $1e
    cp $06
    cp $04
    db $fc
    ret z

    db $f8

    db $c3, $00, $23, $ff, $0b

    ld h, b
    ld h, b
    rst $10
    or a
    ld hl, sp-$61
    ldh [$ffbf], a
    ld b, b
    ld a, a

Call_00c_407f:
    ld h, e
    ld a, a

    db $41

    or a
    db $dc

    db $e0, $35

    INCBIN "gfx/image_00c_4086.2bpp"

    rlca
    rlca
    jr @+$21

    jr nz, @+$41

    db $93, $00, $08, $e0, $25

    INCBIN "gfx/image_00c_40c1.2bpp"

    ld e, h
    db $e4
    cp b
    cp b
    nop
    nop

    db $99, $00, $40, $e0, $25

    INCBIN "gfx/image_00c_40ec.2bpp"

    ld e, d
    and $44
    db $fc
    cp b
    cp b

    db $ff

    dec b
    add b
    add b
    rst $38
    ld a, a
    cp a
    push bc
    ld b, c
    add l
    rst $38
    jp $0300


    ld de, $0000
    ldh a, [$fff0]
    sbc b
    ld a, b
    ld l, h
    db $fc

jr_00c_4129:
    or h
    call c, $fc94
    ld l, h
    db $fc
    jr jr_00c_4129

    ldh a, [$fff0]
    daa
    nop
    add hl, bc
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    pop af
    pop af
    ei
    ei
    jr z, @+$01

    ld b, d
    db $eb
    rst $38
    inc b
    rst $38
    srl h
    ld de, $41fe
    db $10
    rst $38
    ld [bc], a
    ld [$07ff], sp
    ld [hl+], a
    rst $38
    ld bc, $9ff8
    ld b, c
    sub c
    cp $04
    ldh a, [rIE]
    inc c
    rrca
    ld [bc], a
    ld [hl+], a
    inc bc
    ld bc, $0101
    add hl, hl
    nop
    dec b
    jr nc, @+$32

    inc e
    inc e
    ld e, $1e
    inc hl
    rrca
    dec b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    add l
    nop
    ld [hl], h
    dec b
    ccf
    ccf
    ld h, c
    ld e, a
    pop bc
    cp a
    ld b, c
    ld sp, hl
    rst $38
    dec d
    add c
    rst $38
    ld b, c
    ld a, a
    ccf
    ccf
    pop af
    rst $38
    sbc b
    rst $20
    ld l, b
    rst $30
    ret nc

    cp a
    sub e
    rst $38
    ld h, h
    db $fc
    adc h
    db $fc
    ld hl, sp-$08
    ld sp, $a300
    nop
    jr z, jr_00c_41a2

    ld [bc], a

jr_00c_41a2:
    inc bc
    add a
    nop
    ld e, d
    adc a
    nop
    nop
    adc a
    nop
    ld [de], a
    adc a
    nop
    ld b, b
    ld bc, $9ef1
    adc l
    nop
    ld d, h
    adc a
    nop
    add b
    sbc c
    nop
    sub d
    ld bc, $4040
    and e
    nop
    ld e, h
    add e
    nop
    inc c
    ld bc, $e0e0
    add a
    ld bc, $012c
    ret nz

    ret nz

    ld b, c
    ldh [$ffa0], a
    ld b, c
    ldh [$ff60], a
    inc bc
    ldh [$ffa0], a
    ret nz

    ld b, b
    inc hl
    add b
    sub a
    nop
    db $10
    rlca
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    pop hl
    pop hl
    rst $30
    rst $30
    ld h, $ff
    ld b, c
    xor a
    rst $38
    ld c, $ff
    sbc a
    rst $28
    cp a
    rst $28
    adc a
    ld hl, sp-$05
    db $fc
    sbc c
    xor $71
    cp $1f
    ldh [rNR43], a
    rst $38
    sbc h
    nop
    ld c, l
    rlca
    jr nz, jr_00c_4223

    jr c, jr_00c_423d

    ld e, $1e
    rra
    rra
    add a
    nop
    ld [hl], d
    ld [$3f3f], sp
    rra
    rra
    ccf
    ccf
    ld e, h
    ld [hl], e
    ld d, b
    ld b, c
    ld a, a
    ld h, b
    inc b
    ld a, a
    ld d, b
    ld a, a
    cpl
    ccf
    inc hl
    rra
    ldh a, [rNR42]

jr_00c_4223:
    nop
    sub b
    adc l
    nop
    ld l, b
    or l
    nop
    and b
    adc c
    nop
    inc l
    dec b
    db $fc
    db $fc
    sbc [hl]
    cp $ff
    sbc l
    ld b, c
    rst $38
    sbc a
    inc bc
    sbc [hl]
    cp $fc
    db $fc

jr_00c_423d:
    ld sp, $0f00
    ld e, $1e
    ccf
    dec sp
    ld a, a
    ld a, a
    sbc a
    rst $38
    cp a
    rst $08
    halt
    ld c, [hl]
    inc h
    inc a
    jr @+$1a

    cpl
    nop
    ld bc, $e0e0
    and e
    ld bc, $23bc
    cp $a4
    ld bc, $0273
    cpl
    push af
    cpl
    call Call_00c_6d02
    rst $38

    db $e0, $3b

    INCBIN "gfx/image_00c_4267.2bpp"

    ldh a, [c]
    sbc $da
    cp [hl]
    and h
    ld a, h
    jp c, $5ee6

    ldh [c], a
    inc l
    db $f4

    db $c3, $00, $23, $e0, $2c

    INCBIN "gfx/image_00c_42a8.2bpp"

    ld d, $0f
    add hl, bc
    rlca
    ldh a, [rIF]
    rra
    rst $38
    adc a
    ld a, a
    ccf
    rst $38
    rrca

    db $24

    rst $38

    db $0b

    ccf
    rst $38
    sbc a
    ld a, a
    ld a, a
    rst $38
    pop hl
    rra
    dec de
    rlca
    ld [hl], $0f

    db $25

    nop

    db $02

    rlca
    nop
    db $01

    db $22

    nop

    db $08

    ld bc, $1e00
    ld bc, $07fb
    inc a
    inc bc
    rrca

    db $c4, $00, $87, $00

    ccf

    db $2a

    nop

    db $17

    INCBIN "gfx/image_00c_42fe.2bpp"

    or l
    rst $08
    ld a, [$f47e]
    inc c
    ret nc

    db $30

    db $27

    nop

    db $16

    INCBIN "gfx/image_00c_4319.2bpp"

    rst $28
    ldh a, [$ff81]
    cp $1f
    ldh [$fffb], a

    db $a8, $00, $98, $01

    inc bc
    inc bc

    db $85, $00, $e0, $0e

    inc e
    rra
    pop af
    cp $38
    ccf
    ld e, $1f
    rlca
    rlca
    ld bc, $0701
    rlca
    ccf

    db $84, $00, $98, $ff, $23

    nop

    db $00

    db $10

    db $23

    db $38

    db $2c

    ld a, h

    db $07

    jr c, jr_00c_43d4

    jr c, @+$3a

    db $10
    jr c, jr_00c_435d

jr_00c_435d:
    nop

    db $a6, $00, $00, $a6, $00, $11, $01

    db $08
    inc e

    db $39

    nop

    db $01

    ld a, [hl]
    rst $38

    db $3e

    nop

    db $04

    stop
    db $10
    db $10
    db $28

    db $41

    jr c, @+$46

    db $42

    ld a, h
    add d

    db $02

    jr c, @+$46

    nop

    db $86, $00, $1b, $0d

    inc bc
    rlca
    rrca
    rra
    rra
    ccf

jr_00c_4388:
    inc a
    ld a, $18
    cp h
    nop
    add b
    nop
    ld h, b

    db $33

    nop

    db $09

    inc bc
    nop
    dec bc
    inc c
    scf
    jr c, @+$31

    jr nc, @+$19

    db $18

    db $41

    dec bc
    inc c

    db $08

    rla
    jr jr_00c_43d3

    jr nc, @+$1d

    inc e
    dec b
    ld b, $01

    db $28

    nop

    db $03

    ld hl, sp+$10
    ld hl, sp+$20

    db $41

    ld hl, sp+$40

    db $41

    ld hl, sp-$80

    db $00

    db $f8

    db $c8, $00, $cf, $01

    ldh a, [rNR23]

    db $23

    nop

    db $0f

    INCBIN "gfx/image_00c_43c2.2bpp"

    db $41

jr_00c_43d3:
    rst $38

jr_00c_43d4:
    add b

    db $09

    cp a
    ret nz

    ld d, l
    ld l, d
    ld c, d

jr_00c_43db:
    ld [hl], l
    jr nz, @+$41

    rra

jr_00c_43df:
    rra

    db $23

    nop

    db $19

    INCBIN "gfx/image_00c_43e3.2bpp"

    or $0e
    ret z

    jr c, jr_00c_4388

    ld [hl], b
    jr nz, jr_00c_43db

    ret nz

    ret nz

    db $a4, $00, $7e, $14

    INCBIN "gfx/image_00c_4401.2bpp"

    push bc
    add hl, bc
    rst $30
    db $01
    rst $38

    db $41

    ld [bc], a
    db $fe

    db $0f

    INCBIN "gfx/image_00c_441a.2bpp"

    db $41

    add c
    db $fe

    db $42

    add b
    rst $38

    db $ab, $01, $34, $39

    nop

    db $05

    dec de
    dec de
    dec [hl]
    ld l, $7b
    ld c, h

    db $33

    nop

    db $0b

    ld b, $06
    rlca
    dec b
    ld b, $05
    rlca
    inc b

jr_00c_4447:
    scf
    inc [hl]
    ld l, a
    ld e, h

    db $37

    nop

    db $07

    add b
    add b
    ld e, b
    ret c

    db $fc
    ld h, h
    xor [hl]
    ld [hl], d

    db $ab, $01, $ae, $01

    db $01
    db $01

    db $41

    inc bc
    ld [bc], a

    db $41

    dec b
    db $06

    db $41

    rlca
    inc b

    db $41

    dec bc
    inc c

    db $01

    rrca
    db $08

    db $95, $01, $ca, $01

    rrca
    db $08

    db $41

    rla
    db $18

    db $02

    rra
    db $10

jr_00c_4477:
    rra

    db $cc, $00, $69, $09

    inc c
    inc c
    ld c, $0a
    dec c
    dec bc
    ld c, $09
    rrca
    db $08

    db $42

    dec bc
    inc c

    db $41

    rlca
    inc b

    db $93, $01, $a6, $03

    add b
    add b
    ld b, b
    ret nz

    db $41

    and b
    ld h, b

    db $a3, $00, $b0, $a3, $02, $0a, $09

    jr c, jr_00c_44c8

    inc [hl]
    inc l
    ld a, [hl-]
    ld h, $3e
    ld [hl+], a
    dec l
    inc sp

    db $41

    ld l, $31

    db $42

    rra
    db $10

    db $43

    rla
    db $18

    db $95, $02, $24, $a3, $01, $d8, $84, $01, $08, $92, $02, $1f, $05

    inc e
    inc e
    ld e, $12
    rla
    add hl, de

    db $83, $02, $14, $03

jr_00c_44c8:
    dec b
    ld b, $05
    db $06

    db $97, $01, $a2, $07

    ld b, b
    ret nz

    or b
    ld [hl], b
    ret z

    jr c, @-$08

    db $0e

    db $2b

    nop

    db $0b

    ldh [$ffe0], a
    ldh a, [$ff90]
    cp h
    call z, $467a
    ld e, l
    ld h, e
    ld l, $31

    db $83, $00, $aa, $03

    rla
    jr @+$0d

    inc c

    db $9d, $02, $a2, $e0, $2d

    INCBIN "gfx/image_00c_44f4.2bpp"

    rrca
    rrca
    add b
    add b
    ldh [$ff60], a
    pop de
    ld sp, $11f1
    ei
    adc d
    ei
    ld c, d

    db $41

    rst $38
    ld c, [hl]

    db $41

    ei
    ld c, d

    db $e0, $2b

    INCBIN "gfx/image_00c_452a.2bpp"

    rst $38
    jr nz, @-$09

    dec de
    rst $38
    ld c, $ff
    add b
    ld a, [hl]
    ld h, c
    rra
    rra

    db $83, $03, $20, $a3, $01, $dc, $41

    ld hl, sp-$78

    db $01

    ld a, b
    ret z

    db $41

    ld hl, sp+$48

    db $09

    ld a, b
    ret z

    ld hl, sp-$78
    ldh a, [$ff90]
    ldh a, [rNR10]
    ldh [rNR41], a

    db $83, $01, $1a, $03

    rra
    rra
    cpl
    db $30

    db $48

    ld e, a
    ld h, b

    db $03

    ld c, a
    ld [hl], b
    ld b, b
    ld a, a

    db $85, $00, $fa, $01

    rst $38
    rst $38

    db $4a

    rst $38
    nop

    db $c7, $03, $a5, $05

    rst $38
    rst $38
    db $d3
    inc a
    rst $38
    rra

    db $47

    db $f4
    inc c

    db $06

    db $e4
    inc e
    rra
    rst $38
    rra
    ldh a, [rIE]

    db $8e, $00, $49, $07

    inc bc
    inc bc
    ld a, [hl]
    ld a, l
    ei
    add a
    db $fc
    ld a, h

    db $d3, $01, $b9, $03

    rst $38
    rst $38
    db $fa
    dec b

    db $d3, $04, $09, $05

    ldh a, [$fff0]
    ld [$f0f8], sp
    db $f0

    db $39

    nop

    db $07

    rrca
    rrca

jr_00c_45c1:
    scf
    jr c, jr_00c_4623

    ld h, b
    ld a, a
    ld b, b

    db $46

    cp a
    ret nz

    db $83, $03, $94, $c3, $03, $03, $99, $03, $9e, $01

    rst $38
    nop

    db $87, $03, $ba, $05

    rst $10
    jr c, @-$0f

    rra
    add sp, $18

    db $a5, $02, $14, $a9, $01, $f0, $03

    rst $28
    rra
    rla
    db $f8

    db $83, $03, $bc, $ff, $0b

    ldh [$ffe0], a
    jr @-$06

    inc h
    call c, $06fa
    dec c
    di
    ld b, l
    rst $38

    db $42

    ld l, l
    cp e

    db $41

    db $01
    rst $38

    db $09

    ld [bc], a
    cp $cd
    ccf
    ld sp, hl
    rst $38
    ld [hl+], a
    ld a, $1c
    inc e

    db $a3, $00, $00, $09

    jr nc, @+$41

    ld h, c
    ld a, [hl]
    db $e4
    db $db
    ret nc

    xor a
    adc h
    di

    db $41

    add h
    ei

    db $07

    call nz, $46fb
    ld a, c

jr_00c_4623:
    ld l, d
    ld [hl], l
    cp b
    rst $38

    db $a5, $00, $1a, $01

    nop
    nop

    db $97, $00, $00, $07

    db $ec
    db $fc
    db $10
    ldh a, [$ffe0]
    ldh [rP1], a
    nop

    db $97, $00, $20, $05

    dec sp
    ccf
    inc b
    rlca
    inc bc
    inc bc

    db $83, $00, $00, $07

    inc d
    db $ec
    ld a, d
    add [hl]
    rrca
    pop af
    dec h
    ei

    db $42

    ld h, l
    db $db

    db $0b

    ld bc, $09ff
    rst $30
    or $0e
    ld a, h
    sbc h
    ldh a, [$fff0]
    nop
    nop

    db $87, $00, $60, $13

    INCBIN "gfx/image_00c_4663.2bpp"

    ld [hl], c
    ld a, [hl]
    inc a
    ccf

    db $a5, $00, $9a, $1b

    INCBIN "gfx/image_00c_467b.2bpp"

    ld l, l
    db $d3
    rst $08
    or c
    ld a, [de]
    and $2a
    sub $04
    db $fc
    db $08
    db $f8

    db $83, $00, $9a, $02

    rlca
    rlca
    rra

    db $84, $00, $a3, $15

    INCBIN "gfx/image_00c_46a2.2bpp"

    rla
    jr @+$0e

    rrca
    inc bc
    inc bc

    db $c3, $00, $9d, $e0, $25

    INCBIN "gfx/image_00c_46bd.2bpp"

    inc c
    rrca
    jr jr_00c_4700

    dec de
    inc e

    db $41

    inc [hl]
    dec sp

    db $0f

    INCBIN "gfx/image_00c_46e7.2bpp"

    db $a3, $00, $5c, $ff, $01

jr_00c_46fc:
    add b
    add b

    db $42

    ld b, b

jr_00c_4700:
    ret nz

    db $09

    jr c, jr_00c_46fc

    inc a
    db $e4
    ld e, $f2
    ld c, $fa
    ld c, $fe

    db $43

    ld d, h
    db $fc

    db $05

    ld [$30f8], sp
    ldh a, [$ffc0]
    ret nz

    db $a9, $00, $00, $0e

    dec a
    ld h, $7f
    ld b, d
    ld a, [hl]
    ld b, e
    inc a
    daa
    jr c, jr_00c_4763

    jr z, @+$39

    jr nz, jr_00c_4767

    db $20

    db $a6, $00, $19, $23

    nop

    db $0b

    inc c
    inc c
    ld e, $12
    ccf
    ld hl, $e1ff
    ld e, $fa
    inc b
    db $fc

    db $41

    ld [bc], a
    db $fe

    db $0b

    add l
    rst $38
    ld c, c
    rst $38
    add hl, hl
    rst $38
    ld [bc], a
    cp $06
    cp $f8
    db $f8

    db $ac, $00, $40, $0b

    ld c, a
    ld a, $35
    ld c, b
    ld a, a
    ld e, b
    ld h, a
    or b
    rst $08
    and b
    rst $18
    add b

    db $aa, $00, $59, $89, $00, $60, $0d

    db $fc

jr_00c_4763:
    add h
    ld a, b
    ld e, b
    ld h, h

jr_00c_4767:
    ld a, h
    add d
    cp $01
    rst $38
    push bc
    rst $38
    dec hl
    rst $38

    db $b4, $00, $7c, $03

    ld [de], a
    ld [hl], $3e
    ld e, c

    db $85, $00, $73, $ac, $00, $9b, $0d

    ldh [$ffe0], a
    cp b
    ld a, b
    call z, $863c
    ld a, [hl]
    ld a, $ee
    dec sp
    rst $38
    ld a, e
    rst $08

    db $41

    rst $38
    add a

    db $05

    ld a, [hl]
    adc $3c
    db $fc
    ldh a, [$fff0]

    db $26

    nop

    db $0e

    ret nz

    ret nz

    jr nc, @+$32

    ret z

    ld [$04f4], sp
    ld a, [$f806]
    ld [bc], a
    db $fd
    ld [hl-], a
    db $cd

    db $41

    ld a, d
    add l

    db $05

    inc a
    jp nz, Jump_000_0cf0

    nop
    db $f0

    db $23

    add b

    db $17

    INCBIN "gfx/image_00c_47b6.2bpp"

    ret nz

    jr nc, @+$0a

    ld hl, sp+$18
    sbc b
    add h
    add h

    db $23

    nop

    db $ff, $0d

    nop
    nop
    ld bc, $7e01
    ld a, a
    adc a
    ld hl, sp-$69
    ld hl, sp+$5f
    ld [hl], b
    ld l, a
    ld [hl], b

    db $41

    ccf
    db $20

    db $05

    ccf
    jr z, jr_00c_4866

    ld [hl], b
    ld l, a

jr_00c_47e9:
    ld [hl], b

    db $41

    xor a
    db $f0

    db $03

    sub h
    ei
    ld l, a
    ld l, a

    db $83, $00, $00, $03

    ld b, $07
    dec bc
    inc c

    db $41

    rla
    db $18

    db $11

    INCBIN "gfx/image_00c_47fe.2bpp"

    rrca

jr_00c_480f:
    rrca

    db $23

    nop

    db $11

    INCBIN "gfx/image_00c_4813.2bpp"

    db $fd
    inc de

    db $41

    cp $02

    db $03

    db $fc
    inc b
    ld a, b
    sbc b

    db $c3, $00, $43, $05

    ccf
    ccf
    ld e, e
    ld h, [hl]
    cp [hl]
    pop bc

    db $41

    rst $38
    add b

    db $05

    cp a
    ret nz

    ld e, a
    ld h, b
    ld l, a
    ld [hl], b

    db $41

    ld e, a
    ld h, b

    db $0b

    rst $18
    ldh [$ffbf], a
    ldh [$ffaf], a
    ldh a, [$ff93]
    db $fc
    ld c, h
    ld a, a
    scf
    scf

    db $23

    nop

    db $07

    inc bc
    inc bc
    ccf
    dec a
    ld d, a
    ld l, b
    xor a
    ret nc

    db $85, $00, $66, $0d

    rst $28
    ldh a, [$ff97]
    ld hl, sp-$75
    db $fc

jr_00c_4866:
    adc a
    db $fc
    ld b, l
    ld a, [hl]
    inc h
    ccf
    dec de
    dec de

    db $23

    nop

    db $0d

    ld [hl], a
    ld [hl], a
    sbc e
    db $fc
    xor a
    ldh a, [$ffdf]
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    rst $38
    add b

    db $41

    rst $38
    add d

    db $17

    INCBIN "gfx/image_00c_4883.2bpp"

    and $82
    add $82
    ld a, h
    ld b, h
    jr c, @+$3a

    db $33

    nop

    db $83, $00, $c0, $01

    ld l, h
    ld b, h

    db $97, $00, $ca, $88, $00, $40, $0c

    ld b, $fa
    ld b, $fe
    ld d, $fd
    rla
    rst $38
    dec d
    rst $38
    ld bc, $0bfd

    db $a3, $00, $6a, $03

    ld l, h
    sbc h
    ldh a, [$fff0]

    db $8e, $00, $fe, $83, $00, $4b, $02

    add hl, hl
    rst $38
    db $01

    db $83, $00, $52, $03

    ld a, d
    add [hl]
    db $ec
    inc e

    db $8d, $01, $1c, $01

    cp $16

    db $84, $01, $0c, $04

    ld bc, $09ff
    db $fd
    inc bc

    db $89, $01, $36, $0d

    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    inc l
    db $fc
    inc d
    ld a, [$3e16]
    db $c2

    db $43

    rst $38
    db $01

    db $07

jr_00c_48f6:
    cp $02
    ld a, [$e406]
    inc e
    jr c, jr_00c_48f6

    db $c3, $01, $61, $07

    nop
    nop
    db $10
    db $10
    jr c, @+$2a

    db $10
    db $10

    db $3c

    nop

    db $02

    ld e, $00
    ccf

    db $41

    nop
    ld a, a

    db $03

    nop
    ld a, [hl]
    nop
    db $fe

    db $43

    nop
    rst $38

    db $41

    nop
    ld a, [hl]

    db $05

    nop
    inc a
    nop
    nop
    nop
    inc a

    db $41

    nop
    ld a, [hl]

    db $85, $01, $ba, $31

    nop

    db $ff, $01

    ldh [$ffe0], a

    db $41

    ldh [rNR41], a

    db $03

    ldh [$ffe0], a
    ret c

    db $38

    db $22

    db $fe

    db $e0, $34

    INCBIN "gfx/image_00c_493d.2bpp"

    ret z

    ld [hl], b
    ld [hl], b

jr_00c_4970:
    nop
    nop

    db $87, $00, $00, $03

    jr jr_00c_4970

    or h
    ld c, h

    db $83, $00, $0a, $0d

    db $fc
    ld a, h
    ld a, h
    db $fc
    cp [hl]
    jp nz, $c27e

    cp h
    db $fc
    ld e, b
    ld hl, sp-$20
    db $e0

    db $8b, $00, $1e, $05

    or b
    rst $18
    di
    sbc a
    push hl
    cp [hl]

    db $85, $00, $30, $07

    rra
    rra
    dec de
    inc e
    rla
    jr jr_00c_49b0

    rrca

    db $25

    nop

    db $83, $00, $06, $03

    inc b
    db $fc
    inc d
    db $ec

    db $41

    ld [bc], a
    db $fe

    db $22

jr_00c_49b0:
    rst $38

    db $0a

    ld bc, $7fbf
    cp h
    ld a, h
    cp $82
    ld a, [hl]
    cp $c0
    ret nz

    db $25

    nop

    db $06

    inc bc
    inc bc
    inc c
    rrca
    ld [hl], b
    ld a, a
    ret nc

    db $41

    cp a
    db $e0

    db $02

    cp a
    ld h, e
    ld a, a

    db $41

    dec d
    db $1e

    db $01

    rrca
    rrca

    db $a3, $00, $00, $15

    INCBIN "gfx/image_00c_49d8.2bpp"

    ld a, [hl]
    ld b, d
    db $fc
    adc h
    ldh a, [$fff0]

    db $2f

    nop

    db $09

    sbc [hl]
    rst $38
    ld e, a
    ld h, b
    scf
    jr c, jr_00c_4a06

    rrca
    db $01
    db $01

    db $31

    nop

    db $0d

    jr nz, jr_00c_4a30

    ld hl, sp-$38
    ld a, h
    add h
    cp $02

jr_00c_4a06:
    db $fd
    inc bc
    or $0e
    ld hl, sp-$08

    db $31

    nop

    db $ff

    dec b
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_00c_4a58

    cpl
    jr nc, jr_00c_4a2f

    dec hl
    inc a
    rra
    jr @+$79

    ld a, d
    rst $38
    sub d
    rst $18
    or b
    ld [hl], e
    ld e, h
    rst $38
    adc a
    cp l
    bit 2, [hl]
    ld a, e
    scf
    ld a, [hl-]
    dec c

jr_00c_4a2f:
    dec c

jr_00c_4a30:
    dec l
    nop
    ldh [$ff39], a
    rrca
    rrca
    scf
    jr c, jr_00c_4a88

    ld [hl], b
    ld e, a
    ld h, b
    inc a
    ccf
    ld [hl], a
    ld a, b
    rst $38
    sbc a
    or a
    jp c, $6d6d

    ld b, $06
    adc a
    adc c
    ld d, a
    reti


    cp l
    ld [hl], e
    sbc $32
    ld [hl], $fa
    sbc $3a
    xor $1a
    db $ed
    cp e

jr_00c_4a58:
    rst $28
    cp c
    rst $28
    add hl, de
    ld a, l
    ei
    or [hl]
    xor $fc
    inc [hl]
    db $fc
    sbc h
    ldh [$ffe0], a
    ld e, $1e
    dec a
    inc hl
    ld e, a
    ld h, b
    ld a, a
    ld b, b

jr_00c_4a6e:
    ld b, c
    cp a
    ret nz

    ldh [rLY], a
    sbc c
    xor $f7
    ld hl, sp+$6f
    ld [hl], b
    rst $18
    or b
    rst $38
    sub b
    ld a, b
    ld e, a
    ld a, a
    ld c, a
    dec l
    dec sp
    dec a
    dec sp
    ld b, $06
    nop

jr_00c_4a88:
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_00c_4a6e

    ld a, $3d
    di
    db $dd
    inc sp
    xor $1e
    db $ec
    ld e, h
    ld [$ee5e], a
    ld a, [de]
    sbc $3a
    ld a, [$fafe]
    ld c, [hl]
    call c, $b06c
    or b
    rrca
    rrca
    ld e, $11
    ld a, a
    ld h, b
    cp a
    ret nc

    rst $38
    sub b
    ld sp, hl
    sbc [hl]
    rst $30
    sbc b
    cp a
    ret nc

    ld [hl], a
    ld b, c
    ld e, c
    ld l, a
    ld a, [bc]
    ld e, b
    ld h, l
    ld e, [hl]
    ld c, a
    ld a, a
    ld a, [hl-]
    scf
    ld l, $37
    add hl, de
    add hl, de
    rst $38

    db $13

    INCBIN "gfx/image_00c_4ac9.2bpp"

    db $e3
    dec e
    rst $38
    rst $38

    db $2b

    add b

    db $a7, $00, $00, $07

    ld [hl], e
    ld c, h
    and e
    db $dd
    rst $20
    sbc c
    rst $00
    cp c

    db $b1, $00, $10, $22

    ret nz

    db $10

    INCBIN "gfx/image_00c_4af1.2bpp"

    ld a, b

    db $41

    db $cc
    inc [hl]

    db $01

    db $fc
    db $fc

    db $ac, $00, $3c, $07

    dec b
    ld c, $0b
    rrca
    ld a, [bc]
    ld c, $0b
    add hl, de

    db $ae, $00, $51, $ff, $07

    add b
    add b
    ret nz

    ret nz

    db $e4
    db $e4
    db $f4
    db $f4

    db $23

    db $fe

    db $e0, $33

    INCBIN "gfx/image_00c_4b25.2bpp"

    adc a
    rst $38
    ld [hl], b
    ld [hl], b

    db $23

    db $20

    db $03

    ld [hl], d
    ld [hl], d
    or $f6

    db $25

    db $fe

    db $03

    rst $18
    db $e3
    cp a
    rst $10

    db $41

    rst $38
    dec d

    db $15

    INCBIN "gfx/image_00c_4b6b.2bpp"

    rlca
    rlca
    ld [hl], e
    ld [hl], e
    ccf
    ccf

    db $83, $00, $26, $0f

    INCBIN "gfx/image_00c_4b85.2bpp"

    db $23

    nop

    db $05

    db $10
    db $10
    ld h, b
    ld h, b
    ldh [$ffe0], a

    db $23

    ret nz

    db $01

    cp $fe

    db $a5, $00, $6a, $13

    INCBIN "gfx/image_00c_4ba7.2bpp"

    cp h
    cp h
    db $fd
    db $fd

    db $29

    rst $38

    db $0b

    rst $28
    rra
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    ld b, e
    rst $30
    rrca
    rst $38
    rst $38

    db $23

    nop

    db $25

    db $01

    db $25

    inc bc

    db $26

    rlca

    db $00

    db $06

    db $41

    rlca
    dec b

    db $03

    inc bc
    ld [bc], a
    db $01
    db $01

    db $ff

    ld [hl+], a
    rrca
    ld h, d
    inc c
    dec b
    ld b, $07
    inc bc
    inc bc
    rlca
    ld b, $41
    dec c
    ld c, $0f
    inc c
    rrca
    ld a, $3f
    cpl
    ccf
    ccf
    cpl
    ld a, a
    ld a, a
    cp a
    rst $30
    rst $38
    sbc e
    db $fc
    db $fc
    daa
    nop
    dec bc
    rrca
    rrca
    dec de
    inc e
    ccf
    ld a, $3f
    ccf
    ld a, l
    ld h, e
    ld e, d
    ld a, l
    ld b, c
    ld a, a
    ld a, h
    ld h, d
    dec a
    inc d
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    jr nz, jr_00c_4c38

    ld [hl], b
    ld d, b
    ld a, b
    ld c, b
    ld [hl], h
    ld e, h
    xor $fe
    rst $38
    ld a, a
    cp [hl]
    ld a, [hl]
    ldh [$ffe0], a
    dec h
    ldh a, [$ff09]
    ldh [$ffe0], a
    cp h
    db $fc
    ld l, [hl]
    ldh a, [c]
    rst $18
    pop hl
    rst $38
    rst $38
    adc e
    nop
    inc h
    inc hl
    ld a, a

jr_00c_4c38:
    add e
    nop
    jr nc, jr_00c_4c7d

    ccf
    inc a
    add a
    nop
    jr c, jr_00c_4c65

    nop
    dec d
    add b
    add b
    ld b, a
    rst $00
    rst $28
    add hl, hl
    ld a, a
    or c
    cp a
    rst $38
    push af
    ei
    rst $38
    rst $38
    rst $28
    rst $28
    rst $00
    rst $00
    add b
    add b
    cp h
    cp h
    adc c
    nop
    ld e, d
    ld a, [bc]
    nop
    nop
    jr jr_00c_4c7a

    ld l, [hl]
    ld a, [hl]
    halt

jr_00c_4c65:
    ld c, [hl]
    cp a
    rst $08
    rst $18
    ld [hl+], a
    rst $38
    inc hl
    ld a, [hl]
    rst $00
    nop
    and a
    ld bc, $0000
    rst $38

    db $09

    pop bc
    pop bc
    ldh a, [c]
    or e
    ld l, e

jr_00c_4c7a:
    ld e, d
    ld e, a
    ld h, a

jr_00c_4c7d:
    ccf
    cpl

    db $22

    rra

    db $12

    INCBIN "gfx/image_00c_4c82.2bpp"

    ld bc, $0000

    db $ff, $27

    nop

    db $e0, $37

    INCBIN "gfx/image_00c_4c9a.2bpp"

    rrca
    ld [$0f0d], sp
    add hl, bc
    ld c, $07
    rlca

    db $a9, $00, $20, $0b

    add l
    ld a, e
    rrca
    pop af
    dec b
    ei
    and c
    ld a, a
    ld d, d
    cp $dc
    cp h

    db $41

    add sp, $18

    db $17

    INCBIN "gfx/image_00c_4ce6.2bpp"

    rst $28
    sbc c
    cp e
    call nz, Call_00c_407f
    scf
    db $38

    db $41

    rrca
    db $08

    db $83, $00, $62, $e0, $25

    INCBIN "gfx/image_00c_4d06.2bpp"

    jr c, @-$06

    ret z

    jr c, @-$0e

    db $f0

    db $a6, $00, $80, $12

    INCBIN "gfx/image_00c_4d30.2bpp"

jr_00c_4d40:
    ld a, b
    dec bc
    inc c

    db $62

    db $06

    db $06

    rrca
    rlca
    rlca
    ldh a, [$fff0]
    ld l, b
    sbc b

    db $41

    db $f4
    inc c

    db $17

    INCBIN "gfx/image_00c_4d51.2bpp"

    db $e4
    inc e
    adc a
    rst $38
    ld sp, hl
    rlca
    cp $fe

    db $ff, $1b

    INCBIN "gfx/image_00c_4d6b.2bpp"

    rst $20
    rst $38
    daa
    jr c, @+$15

    inc e
    ld de, $0c1e
    rrca
    inc bc
    inc bc

    db $23

    nop

    db $05

    ldh [$ffe0], a
    ld a, $fe
    db $ed
    di

    db $41

    rst $28
    pop af

    db $0f

    INCBIN "gfx/image_00c_4d94.2bpp"

    db $c5, $00, $21, $0b

    ld bc, $0e01
    rrca
    rra
    inc de
    ccf
    inc hl
    dec l
    ld [hl], $39
    db $3e

    db $41

    ld d, e
    ld a, h

    db $0b

    ld [hl], e
    ld e, h
    ld c, e
    ld a, h
    add hl, sp
    ld l, $34
    cpl
    ld a, $27
    add hl, de
    add hl, de

    db $23

    nop

    db $11

    INCBIN "gfx/image_00c_4dc7.2bpp"

    db $fa
    db $16

    db $83, $00, $32, $01

    ld [hl], h
    adc h

    db $87, $00, $38, $0b

    inc bc
    inc bc
    ld l, l
    ld l, a
    rst $18
    cp a
    pop de
    cp a
    jp nc, $a7bd

    db $f8

    db $42

    ld b, a
    ld a, b

    db $09

    inc hl
    inc a
    ld hl, $183e
    rra
    rla
    rra
    add hl, bc
    db $0e

    db $a3, $00, $3a, $1f

    INCBIN "gfx/image_00c_4e01.2bpp"

    db $ff, $09

    rrca
    rrca
    db $10
    rra
    inc hl
    inc a
    cpl
    jr nc, @+$50

    ld a, a

    db $41

    ld e, a
    ld a, [hl]

    db $07

    ld c, a
    ld a, [hl]
    ld c, a
    ld [hl], c
    ld c, a
    ld [hl], b
    ld b, l
    ld a, e

    db $42

    ld b, e
    ld a, a

    db $03

    ld b, b
    ld a, a
    ccf
    ccf

    db $2d

    nop

    db $0a

    ccf
    ccf
    ld c, a
    ld [hl], b
    sbc a
    cp $bf
    cp $9f
    db $e3
    add b

    db $22

    rst $38

    db $03

    pop bc
    cp $7f
    ld a, a

    db $83, $00, $00, $41

    daa
    db $38

    db $49

    ld c, a
    ld [hl], b

    db $03

    daa
    jr c, jr_00c_4e82

    rra

    db $a5, $00, $00, $15

    INCBIN "gfx/image_00c_4e68.2bpp"

    call nz, $8c3c
    ld a, h
    adc [hl]
    ld a, [hl]

    db $a3, $00, $1c, $ff

jr_00c_4e82:
    dec hl
    nop
    ld bc, $0c0c
    inc hl
    rlca
    inc hl
    inc bc
    inc bc
    ccf
    ccf
    rra
    rra
    dec h
    rrca
    inc bc
    ccf
    ccf
    ld d, a
    ld l, a
    ld b, c
    cp e
    rst $00
    rlca
    ld d, a
    ld l, a
    dec a
    ld a, $0b
    inc c
    rlca
    rlca
    add hl, sp
    nop
    add hl, bc

jr_00c_4ea6:
    jr nz, jr_00c_4ec8

    jr nc, jr_00c_4eda

    jr c, jr_00c_4ee4

    cp h
    cp h
    cp $fe
    jr z, @+$01

    ld [bc], a
    ld a, [$faff]
    ret


    nop
    ld e, [hl]
    dec b
    ld a, a
    rst $38
    db $dd
    ld a, $f7
    rst $30
    cpl
    nop
    ld bc, $4040
    daa
    ret nz

    dec h

jr_00c_4ec8:
    ldh [rNR50], a
    ldh a, [rTMA]
    ret nc

    ldh a, [$ffd0]
    ret nc

    ldh a, [rNR41]
    ldh [$ffa5], a
    nop
    inc l
    dec b
    ld bc, $7901

jr_00c_4eda:
    ld a, c
    ld a, $3e
    add e
    nop
    jr jr_00c_4ee4

    rlca
    rlca
    ccf

jr_00c_4ee4:
    ccf
    and e
    nop
    ld d, d
    add e
    nop
    ld d, $87
    nop
    jr nz, jr_00c_4efc

    ld d, [hl]
    ld l, a
    ld a, $3f
    rlca
    inc b
    dec bc
    inc c
    rrca
    ld [$0d0a], sp
    rlca

jr_00c_4efc:
    rlca
    dec a
    nop
    inc hl
    add b
    dec hl
    ret nz

    push bc
    nop
    rst $28
    rlca
    add b
    add b
    ldh [$ffe0], a
    ldh a, [c]
    ldh a, [c]
    ei
    ei
    inc h
    rst $38
    nop
    push af
    jp $6000


    dec l
    rst $38
    dec bc
    ld a, a
    rst $38
    or [hl]
    ld a, d
    ld a, [$5c66]
    db $e4
    db $fc
    call z, Call_00c_7070
    dec a
    nop
    ld bc, $0f0f
    and e
    nop
    ld a, [$0607]
    ld b, $03
    inc bc
    rra
    rra
    dec sp
    daa
    ld b, c
    ld e, l
    ld h, e
    inc bc
    dec hl
    scf
    rra
    rra
    inc hl
    ld bc, $0607
    rlca
    dec bc
    inc c
    rla
    jr @+$21

    db $10
    db $db
    ld bc, $054d
    jr c, jr_00c_4f87

    sbc $de
    rst $28
    rst $28
    scf
    rst $38
    rlca
    ld a, a
    rst $38
    cp a
    ld a, a
    jp nz, $8143

    add c
    cpl
    nop
    inc bc
    adc b
    adc b
    ret c

    ret c

    ld a, [hl+]
    ld hl, sp+$41
    ret c

    ld hl, sp+$00
    ret c

    dec h
    ldh a, [rTIMA]
    call z, Call_00c_7afc
    add [hl]
    db $fc
    db $fc
    and l
    nop
    ld a, h
    and e
    nop
    add b
    inc bc
    rrca
    rrca
    dec d
    dec de
    ld b, c
    ld l, $31
    inc bc
    dec d
    dec de
    rrca

jr_00c_4f87:
    rrca
    and a
    nop
    ld a, [$0001]
    nop
    add e
    ld bc, $04e8
    ld e, $1e
    ccf
    ccf
    ld a, a
    call nc, $a801
    dec bc
    set 6, a
    ld a, a
    ld b, e
    ei
    add a
    cp h
    call nz, $ccb4
    ld a, b
    ld a, b
    sub a
    nop
    sub $01
    ld a, [hl]
    ld a, [hl]
    and e
    nop
    jr @+$05

    rst $28
    rst $28
    cp $fe
    add hl, hl
    db $fc
    ld b, c
    ld hl, sp-$58
    ld bc, $58f8
    ld [hl+], a
    rst $38
    ld a, [bc]
    pop af
    rst $38
    pop hl
    sbc [hl]
    ldh [c], a
    cp h
    call nz, $f898
    ld h, b
    ld h, b
    dec [hl]
    nop
    rst $38

    db $29

    nop

    db $03

    jr nc, jr_00c_5003

    inc e
    inc e

    db $23

    rrca

    db $0b

    rlca
    rlca
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    ccf

    db $25

    ld a, a

    db $0b

    ccf
    ccf
    rlca
    rlca
    dec c
    rrca
    ld [hl], a
    ld a, c
    cp [hl]
    pop bc
    rst $38
    rst $38

    db $37

    nop

    db $07

    ld b, d
    ld b, d
    ld h, d
    ld h, d
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e

    db $2a

    rst $38

    db $02

    push af
    rst $38

jr_00c_5003:
    push af

    db $c9, $00, $5c, $03

    cp $ff
    ld a, d
    ld a, e

    db $62

    add l

    db $00

    add a

    db $2f

    nop

    db $25

    add b

    db $25

    ret nz

    db $01

    ldh [$ffe0], a

    db $25

    db $f0

    db $01

    ldh [$ffe0], a

    db $23

    add b

    db $0d

    ldh a, [rSVBK]
    add sp, $18
    ld hl, sp-$08
    ld bc, $c101
    pop bc
    ld [hl], c
    ld [hl], c
    dec a
    dec a

    db $83, $00, $18, $85, $00, $14, $01

    ld a, a
    ld a, a

    db $a6, $00, $62, $16

    INCBIN "gfx/image_00c_503c.2bpp"

    ld l, d
    add hl, sp
    add hl, hl
    add hl, hl
    add hl, sp
    jr @+$1a

    db $3d

    nop

    db $01

    add b
    add b

    db $29

    ret nz

    db $23

    add b

    db $0b

    ld [$8808], sp
    adc b
    call z, $eccc
    db $ec
    cp $fe
    cp $fe

    db $d5, $00, $66, $05

    cp $fe
    ldh a, [$fff0]
    add b
    add b

    db $41

    ld b, b
    ret nz

    db $02

    ret nz

    ld b, b
    ld b, b

    db $22

    ret nz

    db $35

    nop

    db $09

    ld h, b
    ld h, b
    jr c, @+$3a

    ld e, $1e
    rra
    rra
    rrca
    rrca

    db $8f, $00, $ac, $83, $01, $4e, $09

    rrca
    rrca
    dec bc
    rrca
    dec a
    dec sp
    ld e, [hl]
    ld h, c
    ld a, a
    ld a, a

    db $97, $00, $da, $07

    jp nz, $e2c2

    ldh [c], a
    di
    di
    ei
    ei

    db $2a

    rst $38

    db $02

    db $fd
    rst $38
    db $fd

    db $c9, $01, $9c, $07

    cp $ff
    ld a, e
    ld a, d
    add a
    add h
    add e
    add e

    db $9a, $00, $70, $42

    ld b, b
    ret nz

    db $00

    ret nz

    db $c5, $00, $83, $03

    add b
    add b
    ld [hl], b
    db $f0

    db $83, $00, $9c, $2b

    nop

    db $a9, $00, $8c, $a5, $00, $fa, $a3, $01, $d4, $07

    ld hl, $2321
    inc hl
    ld h, a
    ld h, a
    ld l, a
    ld l, a

    db $38

    rst $38

    db $04

    cp $74
    ld a, e
    ld e, $19

    db $41

    dec c
    dec bc

    db $01

    ld b, $06

    db $f4, $25, $01, $32, $23

    db $fc

    db $42

    ld hl, sp-$58

    db $09

    ei
    ei
    rst $30
    ld [hl], l
    ld a, l
    ei
    jp nz, $bafe

    and [hl]

    db $41

    inc [hl]
    inc l

    db $95, $00, $d0, $e0, $2a

    INCBIN "gfx/image_00c_5109.2bpp"

    rst $08
    ccf
    inc sp
    rrca
    inc c
    inc bc
    inc bc
    nop
    dec e
    inc bc
    inc bc

    db $38

    nop

    db $10

    INCBIN "gfx/image_00c_5137.2bpp"

    rst $10

    db $a4, $00, $65, $00

    ld a, a

    db $2a

    rst $38

    db $00

    ccf

    db $83, $02, $e3, $03

    rst $38
    rst $20
    rra
    inc e

    db $92, $02, $aa, $41

    add b
    nop

    db $11

    INCBIN "gfx/image_00c_5160.2bpp"

    db $fc
    db $fe

    db $62

    db $fd

    db $00

    db $fe

    db $42

    cp $ff

    db $0d

    cp $b7
    cp $d7
    rst $38
    sub $fc
    cp $fe
    db $fc
    db $f4
    ld hl, sp+$10
    db $e0

    db $d1, $01, $41, $e0, $28

    INCBIN "gfx/image_00c_518d.2bpp"

    rrca
    jr nc, jr_00c_51b3

    inc c
    nop
    inc bc

jr_00c_51b3:
    nop
    nop
    nop

    db $94, $02, $aa, $13

    INCBIN "gfx/image_00c_51ba.2bpp"

    adc $31
    rst $28
    db $10

    db $42

    rst $38
    nop

    db $01

    ld a, a
    add b

    db $83, $03, $98, $43

    rst $38
    nop

    db $07

    ccf
    ret nz

    rst $38
    nop
    rlca
    ld a, b
    nop
    rlca

    db $93, $00, $dd, $41

    nop
    ret nz

    db $41

    ld b, b
    and b

    db $41

    ld h, b
    sub h

    db $03

    ldh a, [$ff0c]
    db $f4
    db $08

    db $43

    db $fc
    ld [bc], a

    db $01

    cp $00

    db $41

    cp $01

    db $01

    cp $49

    db $41

    cp $29

    db $41

    db $fc
    ld [bc], a

    db $03

    ldh a, [$ff0c]
    nop
    db $f0

    db $b5, $02, $6c, $00

    db $01

    db $22

    nop

    db $0a

    inc b
    inc bc
    ld a, $01
    ret nz

    ccf
    ld hl, sp+$07
    ld c, $01
    inc bc

    db $ca, $04, $09, $0c

    rlca
    rrca
    inc bc
    rlca
    nop
    rst $38
    sbc a
    ld a, a
    rst $00
    ccf
    ld bc, $07ff

    db $22

    rst $38

    db $0f

    INCBIN "gfx/image_00c_5232.2bpp"

    db $8b, $00, $75, $06

    ret nz

    ldh [rSVBK], a
    ld hl, sp-$43
    ld a, [hl]
    rst $18

    db $2c

    rst $38

    db $83, $03, $00, $09

    and b
    ret nz

    ret nc

    ldh [$fff0], a
    ld h, b
    add sp, -$50
    ld hl, sp-$50

    db $42

    ld hl, sp-$10

    db $09

    ldh [$fff0], a
    ldh a, [$ffe0]
    ret nc

    ldh [$ffa0], a
    ret nz

    ld b, b
    add b

    db $a7, $03, $3a, $00

    db $01

    db $a4, $04, $7d, $05

    rrca
    rrca
    cp $ff
    inc a
    rst $38

    db $cd, $04, $8d, $1e

    INCBIN "gfx/image_00c_527e.2bpp"

    rra
    ldh [rTAC], a
    ld hl, sp+$61
    cp $e7

jr_00c_5295:
    ld hl, sp-$01
    ldh [rP1], a
    rst $18
    add hl, de
    ld a, $63

    db $ab, $04, $3f, $08

    nop
    ld b, b
    and b
    jr nc, jr_00c_52ee

    cp h
    jp nz, Jump_000_20df

    db $45

    rst $38
    nop

    db $84, $00, $7d, $08

    ld b, b
    ret nz

    jr nz, jr_00c_5295

    sub b
    ldh [$ff50], a
    ldh a, [rOBP0]

    db $42

    ldh a, [$ff08]

    db $41

    ldh [rNR10], a

    db $05

    ret nz

    jr nz, @-$7e

    ld b, b
    nop
    add b

    db $e4, $21

    nop

    db $ff, $37

    nop

    db $13

    INCBIN "gfx/image_00c_52ce.2bpp"

    add hl, de
    ld e, $07
    rlca

    db $25

    db $01

    db $41

    inc bc
    ld [bc], a

    db $09

    dec b
    ld b, $0e
    add hl, bc
    ld e, $11

jr_00c_52ee:
    dec e
    inc de
    ld c, $0e

    db $8f, $00, $10, $09

    rrca
    ld [$1817], sp
    rra
    db $10
    rla
    jr @+$0f

    db $0e

    db $c3, $00, $1b, $01

    ld [bc], a
    inc bc

    db $89, $00, $10, $11

    INCBIN "gfx/image_00c_530a.2bpp"

    db $08
    db $08

    db $a4, $00, $14, $1e

    INCBIN "gfx/image_00c_5320.2bpp"

    ld e, h
    dec sp
    inc a
    inc d
    dec sp
    dec de
    scf
    ccf
    ccf
    ld sp, $407f
    ld h, c
    nop
    nop

    db $91, $00, $1e, $0b

    ld [bc], a
    inc bc
    rlca
    ld b, $1b
    inc e
    cpl
    jr nc, jr_00c_5377

    scf
    dec e
    dec e

    db $c6, $00, $65, $14

    INCBIN "gfx/image_00c_5353.2bpp"

    ret nz

    ld h, a
    ld a, b
    rra
    rra

    db $41

    inc b
    rlca

    db $00

    db $06

    db $c3, $00, $77, $00

    inc b

    db $41

    dec b
    db $06

    db $05

    inc bc

jr_00c_5377:
    ld [bc], a
    ld [bc], a
    inc bc
    db $01
    db $01

    db $e4, $23

    nop

    db $07

    ld e, $1e
    ld l, l
    ld [hl], e
    cp a
    ret nz

    ld a, a
    add b

    db $41

    rst $38
    nop

    db $41

    rst $38
    db $01

    db $c6, $01, $20, $04

    nop
    rst $38
    rst $38
    xor e
    ld a, l

    db $42

    cp e
    ld l, l

    db $11

    INCBIN "gfx/image_00c_539b.2bpp"

    ld l, [hl]
    ld [hl], c

    db $83, $01, $16, $01

    rst $38
    db $01

    db $45

    rst $38
    nop

    db $07

    db $fc
    inc bc
    rst $38
    rst $38
    add hl, de
    rst $38
    db $eb
    dec a

    db $2f

    nop

    db $01

    jr nc, @+$32

    db $43

    ld e, b
    ld l, b

    db $02

    ld d, h
    ld l, h
    inc h

    db $22

    inc a

    db $f0, $20, $00, $fe, $45

    nop
    rst $38

    db $12

    INCBIN "gfx/image_00c_53d5.2bpp"

    cp l
    rst $20
    rst $20

    db $a9, $01, $40, $cd, $01, $2a, $17

    INCBIN "gfx/image_00c_53ef.2bpp"

    cp $49
    rst $18
    ld h, h
    xor d
    or a
    dec e
    dec e

    db $e4, $23

    nop

    db $02

    add b
    add b
    ld b, b

    db $a7, $00, $c5, $04

    ld c, h
    cp $42
    db $fd
    ld b, e

    db $a7, $00, $d2, $41

    ldh [rNR41], a

    db $0f

    INCBIN "gfx/image_00c_541e.2bpp"

    db $aa, $00, $c0, $04

    ld e, b
    db $f4
    xor h
    cp $a2

    db $a5, $00, $d0, $04

    add $3e
    ld a, b
    ld hl, sp-$60

    db $a4, $00, $db, $a3, $01, $10, $05

    cp h
    call nz, $fc84
    ld a, b
    ld a, b

    db $27

    nop

    db $f0, $2e, $01, $f0, $06

    inc c
    cp $52
    db $fd
    dec hl
    rst $38
    add hl, hl

    db $85, $02, $26, $05

    ld d, b
    ldh a, [rSVBK]
    ret nc

    ldh a, [$ff50]

    db $41

    add sp, $58

    db $07

    ld a, b
    ret z

    ld hl, sp-$38
    ret z

    ld hl, sp+$30
    db $30

    db $b0, $00, $10, $0a

    ld c, b

jr_00c_5476:
    db $f4
    ld c, h
    db $fc
    ld b, h
    db $f4
    inc c
    jr jr_00c_5476

    ldh [$ffe0], a

    db $85, $02, $12, $0d

    or b
    ld [hl], b
    add sp, $18
    ld a, b
    adc b
    ret z

    ld hl, sp-$50
    ld [hl], b
    and b
    ld h, b
    ret nz

    ret nz

    db $3b

    nop

    db $e0, $23

    INCBIN "gfx/image_00c_5496.2bpp"

    add hl, de
    jr nz, @+$43

    nop

    db $f4, $26, $02, $f0, $04

    or c
    ret z

    ld [hl], b
    di
    db $fc

    db $ad, $03, $1c, $00

    and h

    db $bc, $03, $2b, $0b

    ld [$4808], sp
    ld c, b
    inc e
    inc e
    ld a, $3e
    jp Jump_000_3eff


    pop bc

    db $84, $01, $18, $00

    db $08

    db $41

    rst $38
    dec b

    db $07

    rst $38
    nop
    inc a
    jp $ffc3


    inc a
    rst $38

    db $41

    db $db
    inc a

    db $c3, $03, $a4, $31

    nop

    db $1f

    INCBIN "gfx/image_00c_54f3.2bpp"

    db $c3, $03, $4e, $1b

    INCBIN "gfx/image_00c_5517.2bpp"

    ld b, c
    ccf
    ld l, $1f
    rla
    rrca
    ld hl, $471f
    ccf
    adc [hl]
    ld a, a

    db $88, $03, $80, $09

    nop
    ld [$1440], sp
    ld [$1c22], sp
    rst $38
    inc a
    ld a, [hl]

    db $25

    rst $38

    db $00

    rst $30

    db $41

    rst $38
    db $fa

    db $23

    rst $38

    db $03

    db $db
    inc a
    inc a
    db $c3

    db $41

    db $db
    rst $20

    db $02

    inc a
    db $c3
    db $c3

    db $3e

    nop

    db $e0, $23

    INCBIN "gfx/image_00c_555a.2bpp"

    add hl, sp
    add hl, sp
    ld b, c
    ld b, c

    db $f4, $25, $04, $30, $03

    add hl, sp
    ld sp, hl
    ret z

    cp b

    db $af, $04, $5a, $01

    and h
    cp h

    db $b3, $04, $6c, $a4, $00, $2e, $22

    ret nz

    db $41

    and b
    db $e0

    db $13

    INCBIN "gfx/image_00c_5599.2bpp"

    ld sp, hl
    rlca
    rst $38
    inc bc

    db $41

    add b
    nop

    db $41

    ret nz

    nop

    db $41

    and b
    ld b, b

    db $07

    ret nc

    ld h, b
    ld d, b
    ldh [rBCPS], a
    ldh a, [$ffa8]
    db $f0

    db $41

    db $f4
    db $f8

    db $07

    sbc d
    db $fc
    jp z, $e1fc

    cp $85
    db $fa

    db $ff, $0f

    INCBIN "gfx/image_00c_55cd.2bpp"

    db $4c

    rst $38
    nop

    db $05

    ld hl, sp+$07
    add b
    ld a, a
    rst $38
    rst $38

    db $31

    nop

    db $09

    ld bc, $0701
    ld b, $07
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc bc

    db $83, $00, $48, $03

    inc b
    rlca
    dec b
    db $06

    db $41

    dec bc
    inc c

    db $41

    rla
    db $18

    db $05

    cpl
    jr nc, @+$41

    jr nz, jr_00c_5667

jr_00c_5608:
    ld h, b

    db $42

jr_00c_560a:
    ld a, a
    ld b, b

    db $07

    ld e, a
    ld h, b
    cpl
    jr nc, @+$1d

    inc e
    rlca
    rlca

    db $31

    nop

    db $03

    ret nz

    ret nz

    add b
    add b

    db $a3, $00, $40, $03

    add b
    add b
    ld b, b
    ret nz

    db $a3, $00, $52, $05

    ldh a, [rNR10]
    add sp, $18
    ld hl, sp+$08

    db $a5, $00, $5c, $41

    db $fa
    db $06

    db $0d

    ldh a, [c]
    ld c, $f4
    inc c
    db $e4
    inc e
    adc b
    ld a, b
    db $10
    ldh a, [$ff60]
    ldh [$ff80], a
    add b

    db $2f

    nop

    db $08

    db $fc
    db $fc

jr_00c_5648:
    ei
    rrca
    ld [hl], a
    sbc b
    rst $38
    rst $38
    nop

    db $22

    rst $38

    db $01

    ld a, [hl]
    add c

    db $4d

    rst $38
    nop

    db $03

    ld a, [hl]
    add c
    nop
    rst $38

    db $91, $00, $2e, $83, $00, $4b, $f4, $3b, $00, $84, $2b

jr_00c_5667:
    nop

    db $01

    ldh [$ffe0], a

    db $a3, $00, $56, $41

    ld hl, sp+$08

    db $41

    add sp, $18

    db $09

    ret z

    jr c, jr_00c_5648

    jr nc, jr_00c_560a

    ld [hl], b
    or b
    ld d, b
    ldh a, [rNR10]

    db $41

    ret nc

    db $30

    db $03

    db $10
    ldh a, [rNR41]

jr_00c_5686:
    db $e0

    db $d3, $00, $83, $ff

    dec b
    rlca
    rlca
    rrca
    rrca
    ld e, $11
    ld b, c
    ccf
    ld a, [hl+]
    ldh [$ff35], a
    ccf
    ld a, $41
    ld a, a
    ld a, h
    ld a, a
    ld b, b
    ld a, a
    pop hl
    rst $38
    rst $18
    cp $ff
    ret nz

    ld a, a
    ld b, b
    ccf
    jr nz, @+$13

    rra
    rrca
    rrca
    nop
    nop
    scf
    scf
    ccf
    ccf
    dec a
    inc hl
    ld a, [hl]
    ld d, l
    ld a, a
    ld [hl], h
    adc a
    ld hl, sp-$19
    db $fd
    add a
    rst $38
    ld c, a
    ld a, a
    ld [hl], e
    ld a, a
    ld a, [hl]
    ld b, c
    ld e, a
    ld h, b
    cpl
    jr nc, jr_00c_56e2

    rra
    rlca
    rlca
    jp $2100


    dec c
    ld de, $2c1f
    ccf
    jr nz, @+$41

    ld [hl], c
    ld a, a
    ld c, [hl]
    ld a, a
    cp a
    ret nz

    rst $38
    add b
    ld b, c
    rst $38
    add c

jr_00c_56e2:
    rlca
    rst $38
    add b
    ld a, a
    ld b, b
    ld e, [hl]
    ld h, c
    jr nc, jr_00c_572a

    add a
    nop
    ld e, $03
    ccf
    ld hl, $527f
    add l
    nop
    ld a, [hl+]
    ld bc, $7f73
    ld b, d
    ld [hl], e
    ld a, [hl]
    dec bc
    rst $20
    db $fc
    adc a
    ld hl, sp+$70
    ld a, a
    ccf
    ccf
    ret nz

    ret nz

    ldh a, [$fff0]
    ld [hl+], a
    ld hl, sp+$02
    ld a, b
    db $fc
    ld a, h
    inc hl
    db $fc
    ld b, $fe
    cp $ee
    cp $f7
    ld a, a
    ld sp, hl
    ld b, c
    ccf
    rst $38
    ld [bc], a
    ccf
    cp $7e
    and l
    nop
    ld e, h
    ld bc, $8c8c
    dec h
    cp $85
    nop

jr_00c_572a:
    adc d
    nop
    ld sp, hl
    ld b, c
    rst $38
    db $fd
    ld [hl+], a
    rst $38
    inc bc
    cp $7e
    inc a
    db $fc
    and a
    nop
    inc a
    ld a, [bc]
    db $fc
    inc e
    cp $a6
    cp $86
    rst $38
    rst $08
    ld a, a
    rst $38
    ccf
    ld h, $ff
    rrca
    cp $fe
    ld a, $fe
    ld a, h
    db $fc
    ldh [c], a
    cp $dc
    call c, $0000
    add [hl]
    add [hl]
    rst $28
    rst $28
    add e
    nop
    jp nc, Jump_000_0087

    and [hl]
    dec c
    ld a, [hl]
    cp $ff
    ccf
    rst $18
    ccf
    sbc $3e
    sbc [hl]
    ld a, [hl]
    ld sp, $eeff
    xor $27
    nop
    rrca
    db $10
    ld [$0c30], sp
    ld [hl], b
    ld c, $f0
    rrca
    rrca
    rst $38
    ld c, $7e
    inc c
    inc a
    ld [$2718], sp
    nop
    rst $38
    add hl, bc
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rrca
    ld [$1741], sp
    jr @+$13

    ccf
    jr c, jr_00c_57bd

    inc a
    ld e, e
    ld h, [hl]
    ld a, a
    ld b, d
    db $fd
    add e
    rst $38
    add c
    rst $38
    add b
    cp l
    jp nz, $7e43

    dec h
    ccf
    inc hl
    rra
    rlca
    ld hl, $503f
    ld l, a
    ld b, b
    ld a, a
    ccf
    ccf
    ld sp, $1b00
    ld bc, $7301
    ld [hl], e
    adc [hl]
    rst $38
    or [hl]
    rst $08

jr_00c_57bd:
    rst $38
    add a
    rst $38
    add h
    ei
    add h
    cp e
    call nz, $c4bf
    ld a, a
    ld b, h
    ld e, l
    ld h, [hl]
    dec a
    ld h, $3f
    ld a, $3b
    dec a
    add a
    nop
    ld [hl+], a
    ld bc, $0f0f
    add l
    nop
    jr z, @+$05

    ld b, c
    ld a, a
    ld a, $3e
    ld sp, $0900
    inc e
    inc e
    dec hl
    scf
    ld e, a
    ld l, h
    ld [hl], a
    ld e, b
    sbc a
    ldh a, [rSTAT]
    rst $38
    and b
    inc bc
    xor $b1
    cp e
    rst $30
    cpl
    rst $38
    dec bc
    ld a, a
    ld a, a
    ld a, c
    ld a, a
    ld c, [hl]
    ld a, a
    ld hl, $183f
    rra
    rlca
    rlca
    dec hl
    nop
    inc c
    rrca
    rrca
    jr nc, jr_00c_5849

    ld b, b
    ld a, a
    add b
    rst $38
    add e
    rst $38
    ld a, a
    ld a, a
    jr c, jr_00c_5855

    ccf
    jr nc, jr_00c_581e

    ccf
    ld [hl-], a
    ccf
    inc d
    rra
    inc e
    rra

jr_00c_581e:
    ld e, $41
    rra
    jr jr_00c_5824

    rra

jr_00c_5824:
    inc c
    inc h
    rrca
    inc hl
    rlca
    inc hl
    inc bc
    ld bc, $0101
    pop de
    nop
    ld b, l
    ld b, $fe
    cp $7d
    add e
    rst $38
    nop
    or $41
    dec de
    rst $38
    inc d
    nop
    rst $38
    rra
    db $e3
    ccf
    pop bc
    ld a, a
    ret z

    ld [hl], a
    ret nz

    ld a, a
    pop hl

jr_00c_5849:
    ccf
    ld a, [hl]
    sbc a
    rst $38
    add b
    rst $38
    ret nz

jr_00c_5850:
    rst $38
    and b
    dec hl
    rst $38
    ld b, c

jr_00c_5855:
    ld b, d
    jp $8101


    add c
    cpl
    nop
    dec c
    ld a, b
    ld a, b
    rst $30
    rst $38
    inc a
    rst $38
    ld b, d
    cp l
    nop
    rst $38
    inc e
    rst $38
    rst $38
    db $e3
    ld b, d
    rst $38
    ld a, $01
    db $e3
    ld a, $c3
    ld bc, $034d
    rst $38
    nop
    cp $01
    and h
    nop
    and d
    ld b, e
    rst $38
    cp $04
    rst $38
    ld b, c
    pop bc
    add b
    add b
    inc sp
    nop
    inc d
    rlca
    rlca
    ld hl, sp-$01
    sbc $31
    rst $28
    jr nc, jr_00c_5850

    ld h, b
    rst $38
    ld b, b
    cp $41
    cp a
    pop bc
    cp l
    jp $c7bb


    rst $00
    ld l, $ff
    rlca
    sbc a
    rst $38
    inc e
    db $fc
    ldh a, [$fff0]
    ld b, b
    ret nz

    adc l
    ld bc, $0770
    add b
    add b
    ld b, b
    ret nz

    ld a, b
    ld hl, sp-$01
    rst $38
    xor l
    ld bc, $4360
    ccf
    rst $38
    ld b, $7e
    rst $38
    db $fd
    cp $fc
    rst $38
    db $fd
    add $01
    ld h, a
    add hl, bc
    add a
    rst $38
    inc bc
    rst $38
    add d
    db $fd
    ld h, b
    ld a, a
    rra
    rra
    adc a
    ld bc, $1bb4
    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ldh a, [$ffb0]
    ld c, b
    ld hl, sp-$78
    ld hl, sp+$28
    ret c

    inc c
    db $fc
    call z, $fefc
    ld [hl-], a
    or $1a
    cp $1a
    db $fc
    inc l
    ld hl, sp-$08
    and a
    nop
    ld h, h
    nop
    call nz, Call_000_00b8
    dec hl
    rrca
    nop
    nop
    sbc b
    sbc b
    ld h, h
    db $fc
    ld d, h
    db $ec
    db $fc
    call nz, $44fc
    cp h
    ld b, h
    or h
    ld c, h
    ld b, c
    ld hl, sp+$28
    dec bc
    add sp, $38
    or b
    ld [hl], b
    ldh a, [rSVBK]
    cp b
    ret c

    ld hl, sp-$08
    adc b
    ld hl, sp+$42
    inc b
    db $fc
    ld b, c
    ld [$03f8], sp
    db $10
    ldh a, [$ffe0]
    ldh [$ff35], a
    nop
    dec hl
    add b
    ld [bc], a
    ld [hl], b
    ld [hl], b
    adc b
    ld b, e
    ld hl, sp-$38
    ld b, $f8
    adc b
    ld hl, sp-$30
    ldh a, [$ffe0]
    ldh [$ffc3], a
    ld [bc], a
    adc e
    dec a
    nop
    rlca
    ret nz

    ret nz

    ldh a, [$fff0]
    ret z

    ld hl, sp-$44
    call nz, $fe41
    jp nz, $df1b

    pop hl
    rst $38
    pop hl
    rst $28
    pop af
    rst $30
    ld sp, hl
    xor c
    rst $18
    or $0e
    cp $06
    ld a, [$7e06]
    add d
    db $fd
    add e
    rst $38
    pop bc
    cp a
    and c
    dec d
    dec de
    ld c, $0e

jr_00c_5965:
    sub a
    ld [bc], a
    and [hl]
    and l
    ld [bc], a
    ld [bc], a
    ld bc, $0704
    add e
    nop
    ld l, b
    ld bc, $7f7f
    ld b, d
    cp a
    rst $38
    ld [bc], a
    ld a, a
    ld a, a
    ld a, [hl]
    ld b, d
    ld a, a
    ld a, h
    ld bc, $3e7f
    ld [hl+], a
    ccf
    dec b
    jr jr_00c_59a5

    db $10
    rra
    rrca
    rrca
    dec [hl]
    nop
    ld [hl+], a
    rst $38
    nop
    add c
    ld b, c
    rst $38
    nop
    nop
    ld a, [hl]
    ld l, $ff
    inc bc
    inc a
    rst $38
    nop
    rst $38
    jp $4801


    nop
    jr jr_00c_5965

    inc bc
    ld d, c
    inc b

jr_00c_59a5:
    rst $38
    inc h
    rst $20
    jp $92c3


    inc bc
    ld [hl], $01
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, [hl]
    nop
    rst $38
    sub c
    ld bc, $0530
    ccf
    ccf
    ld e, a
    ld h, b
    xor [hl]
    pop de
    ld b, c
    db $dd
    and d
    ld b, c
    ld a, [$4185]
    db $f4
    adc e
    ld b, c
    add sp, -$69
    ld [de], a
    ret nc

    xor a
    call c, $bfaf
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ret c

    ld hl, sp+$68
    ld b, c
    db $fc
    ld b, h
    ld [$127e], sp
    ld l, [hl]
    ld a, [de]
    ld h, [hl]
    ld a, [de]
    ld h, a
    ld e, $63
    ld b, c
    dec c
    inc sp
    ld b, d
    rrca
    ld sp, $23ff
    nop
    ld bc, $f8f8
    ld b, e
    inc b
    db $fc
    nop
    db $e4
    ld b, c
    db $fc
    db $f4
    nop
    ld a, h
    push bc
    nop
    stop
    inc d
    ret


    nop
    rrca
    inc b
    db $fc
    ld hl, sp-$08
    ldh a, [$fff0]
    ld b, c
    ld [$01f8], sp
    ldh a, [$fff0]
    inc sp
    nop
    nop
    rst $38
    ld b, e
    rst $38
    nop
    ld bc, $38ff
    ld b, c
    rst $38
    ld a, l
    nop
    rst $30
    push bc
    nop
    ld d, b
    ld [bc], a
    ld b, b
    rst $38
    ccf
    ret


    nop
    ld c, l
    ld [bc], a
    rst $38
    rst $00
    rst $00
    ld b, c
    cpl
    add sp, $01
    rst $00
    rst $00
    inc sp
    nop
    inc bc
    ccf
    ccf
    ld e, l
    ld h, d
    ld c, l
    ld a, [hl]
    ld b, c
    dec b
    ld e, h
    ld h, e
    ccf
    ccf
    rra
    rra
    ld b, c
    inc a
    inc hl
    ld bc, $1f1f
    cpl
    nop
    dec c
    inc b
    db $fc
    ld a, $fe
    ld h, c
    rst $18
    pop hl
    sbc a
    cp $1e
    db $fc
    inc a
    ld hl, sp+$78
    sub d
    nop
    ld l, $86
    nop
    ld h, c
    add hl, bc
    pop bc
    pop bc
    pop hl
    ld hl, $f111
    db $10
    ldh a, [$ffe0]
    ldh [$ff2d], a
    nop
    add a
    nop
    and b
    add hl, bc
    ccf
    daa
    rra
    db $10
    inc c
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    adc a
    nop
    or d
    add l
    nop
    ld [hl+], a
    inc bc
    nop
    nop
    add b
    add b
    ld b, c
    ld b, b
    ret nz

    ld bc, $8080
    adc a
    nop
    dec [hl]
    ld bc, $ff3e
    add e
    nop
    call nz, $ff09
    rra
    rst $38
    inc a
    ld hl, sp+$7f
    ldh a, [rIE]
    ccf
    ccf
    sub l
    nop
    ldh a, [c]
    inc hl
    ld bc, $0101
    ld bc, $0023
    sub l
    ld bc, $0312
    ldh [$ffa0], a
    ldh a, [rNR10]
    add l
    nop
    ld a, [hl+]
    sub l
    nop
    jp nc, $df09

    ld d, e
    rst $38
    jr nc, jr_00c_5ae1

    di
    inc e
    ei
    rst $20
    rst $20
    sub a
    nop
    ldh a, [c]
    inc bc
    ccf
    jr nz, @+$1a

    rla
    and e
    nop
    xor $99
    ld bc, $9412
    ld bc, $862a
    nop
    ld h, c
    ld bc, $9dff

jr_00c_5ae1:
    ld b, c
    rst $38
    ret nz

    ld b, c
    ld [hl], b
    rst $28
    ld bc, $9f9f
    adc a
    nop
    db $f4
    dec b
    call c, $ffe3
    cp a
    rst $38
    sbc l
    ld b, c
    ld a, a
    ld b, b
    ld b, c
    jr nc, jr_00c_5b29

    sub c
    nop
    xor [hl]
    inc bc
    db $fc
    db $fc
    ld b, d
    cp [hl]
    ld b, d
    add d
    ld a, [hl]
    ld b, c
    xor d
    ld a, [hl]
    ld bc, $56aa
    push bc
    ld [bc], a
    ld d, b
    ld b, c
    sub d
    ld a, [hl]
    nop
    sub d
    xor b
    nop
    adc b
    inc bc
    ld [bc], a
    cp $fc
    db $fc
    scf
    nop
    inc bc
    ld a, a
    ld a, a
    cp a
    ret nz

    ld c, a
    rst $38
    add b
    ld bc, $c0bf
    rst $10

jr_00c_5b29:
    ld [bc], a
    add l
    ld bc, $fcfc
    ld b, e
    ld [bc], a
    cp $03
    ld a, [$fafe]
    adc [hl]
    jp $cc02


    ld [bc], a
    ldh a, [c]
    cp $0a
    add [hl]
    ld [bc], a
    push bc
    ld bc, $fcfc

jr_00c_5b43:
    adc e
    nop
    ld b, d
    inc bc
    ld a, $ff
    ld a, $e3
    jp $ec02


    ld [bc], a
    rra
    rst $38
    jr nz, @-$76

    nop
    ld e, a
    sbc e
    nop
    add d
    inc bc
    ld e, h
    ld h, e
    ccf
    ccf
    rst $00
    ld bc, $4135
    jr nz, jr_00c_5b43

    ld a, [bc]
    db $10
    ldh a, [$ffd0]
    ldh a, [$ffe8]
    ld hl, sp-$18
    ld a, b
    db $e4
    db $fc
    call nz, $0284
    jp $0100


    ld b, c
    rst $38
    add c
    ld [$86ff], sp
    cp $18
    ld hl, sp+$60
    ldh [$ff80], a
    add b
    add hl, sp
    nop
    dec bc
    rra
    rra
    ld a, a
    ld h, b
    cp $81
    ld hl, sp+$07
    ldh [$ff1f], a
    add c
    ld a, a
    ld b, c
    inc bc
    rst $38
    ld [$ff73], sp
    ld sp, hl
    rst $38
    ld hl, sp-$21
    ld hl, sp-$01
    ld [hl], c
    and h
    ld [bc], a
    adc b
    ld bc, $ff00
    ld b, c
    add b
    ld a, a
    rlca
    pop bc
    ccf
    add $3e
    ld hl, sp+$18
    ldh [$ffe0], a
    scf
    nop
    dec b
    ld bc, $0701
    ld b, $1f
    jr @-$7b

    inc bc
    ld h, [hl]
    ld b, d
    ld hl, sp-$79
    ld b, c
    ld a, h
    ld b, e

jr_00c_5bc1:
    ld b, c
    ld a, $21
    ld b, c
    rra
    db $10
    ld b, c
    rrca
    ld [$0741], sp
    inc b
    ld bc, $0203
    sub e
    ld bc, $c36c
    nop
    pop af
    dec b
    jr jr_00c_5bc1

    db $ec
    inc d
    or $0a
    ld b, e
    ld a, [$0906]
    ld a, [hl]
    add [hl]
    inc c
    db $fc
    jr @-$06

    ldh a, [$fff0]
    ldh [$ffe0], a
    and a
    inc bc
    sbc $05
    rra
    db $10
    ld a, $21
    ld h, l
    ld a, d
    ld b, c
    ld h, e
    ld a, h
    ld [$7e61], sp
    ld h, b
    ld a, a
    ld a, b
    ld a, a
    inc a
    ccf
    ld e, $a6
    inc bc
    ld sp, hl
    rst $38
    cpl
    nop
    ld bc, $0101
    ld b, c
    ld [bc], a
    inc bc
    ld b, d
    inc b
    rlca
    ldh [$ff2d], a
    inc e
    rra
    ld h, $3f
    ld b, e
    ld a, a
    ld b, d
    ld a, a
    ld a, l
    ld a, a
    db $10
    rra
    jr nz, jr_00c_5c60

    ld b, b
    ld a, a
    ld [hl], b
    ld a, a
    cp c
    rst $08
    rst $38
    adc a
    cp h
    rst $08
    ld a, b
    ld a, a
    inc b
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld [$0f0f], sp
    inc e
    inc e
    dec sp
    daa
    ld a, e
    ld h, [hl]
    ld a, e
    ld h, a
    cp e
    rst $20

Call_00c_5c41:
    ld b, c
    cp e
    and $03
    cp e
    rst $20
    cp c
    rst $20
    ld b, c
    sub c
    rst $38
    add hl, bc
    ld c, [hl]
    ld a, a
    ld b, b
    ld a, a
    ld sp, $0f3f
    rrca
    nop
    nop
    add l
    nop
    jr nz, jr_00c_5c70

    jr nz, jr_00c_5c9c

    ld [hl], b
    ld a, a
    cp b

jr_00c_5c60:
    rst $08
    ld sp, hl
    adc a
    cp [hl]
    rst $08
    ld a, c
    ld a, a
    ld [$040f], sp
    rlca
    rrca
    rrca
    rra
    db $10
    rra

jr_00c_5c70:
    rra
    inc hl
    nop
    inc de
    adc a
    rst $38
    adc b
    rst $38
    db $fc
    rst $38
    inc de
    rra
    daa
    inc a
    ccf
    inc a
    ld e, [hl]
    ld h, a
    ld a, l
    ld b, a
    ld e, h
    ld h, a
    jr c, jr_00c_5cc7

    add e
    nop
    ld [hl], h
    ld bc, $1817
    adc c
    nop
    ld a, d
    inc c
    db $f4
    rst $30
    dec de
    rra
    ld [hl+], a
    ccf
    ld a, e
    ld a, [hl]
    ld e, a
    ld h, a

jr_00c_5c9c:
    ld a, a
    ld b, h
    ld e, a
    adc [hl]
    nop
    sub c
    ld [bc], a
    nop
    nop
    rlca
    ld b, d
    rlca
    inc b
    ld [bc], a
    rlca
    inc bc
    inc bc
    add e
    nop
    db $10
    ld bc, $3f3e
    ld b, c
    ld a, [hl]
    ld b, a
    ld d, $7f
    ld b, a
    add hl, sp
    ccf
    rrca
    rrca
    ld [bc], a
    inc bc
    ld bc, $f801
    ld hl, sp+$14
    db $fc
    inc e
    db $f4

jr_00c_5cc7:
    inc [hl]
    db $fc
    cp $fe
    rst $08
    ld sp, hl
    rrca
    ld b, d
    ld sp, hl
    rra
    ld b, $f9
    ld b, $fe
    ld [$f0f8], sp
    ldh a, [$ff33]
    nop
    inc c
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld e, a
    ldh [rVBK], a
    ldh a, [rLCDC]
    ld b, c
    rst $38
    ccf
    ld bc, $fff3
    ld b, c
    rst $38
    nop
    ld bc, $c0ff
    ld b, c
    rst $38
    ccf
    inc b
    ld [$ffff], a
    ccf
    ret nz

    add l
    ld bc, $0020
    nop
    ld [hl+], a
    rst $38
    dec b
    pop bc
    pop bc
    and d
    ld h, e
    db $e3
    db $e3
    adc l
    ld bc, $0220
    ld a, a
    add b
    rst $38
    adc b
    ld bc, $0533
    and c
    ld h, c
    pop hl
    pop hl
    nop
    nop
    sub a
    ld bc, $0540
    and b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    add a
    ld bc, $025e
    cp $ff
    pop hl
    ld b, d
    ccf
    ldh [rSB], a
    rst $38
    ccf
    sub h
    ld bc, $8371
    ld bc, $0636
    ld hl, sp-$51
    cp $ff
    rst $38
    ld bc, $8efe
    ld bc, $0871
    ld e, $1e
    sub d
    sbc [hl]
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    add h
    ld bc, $4121
    add b
    rst $38
    dec d
    sbc b
    rst $38
    ld a, [hl]
    rst $20
    cpl
    pop af
    daa
    ld hl, sp-$70
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    adc a
    rst $38
    ld b, b
    ld a, a
    jr nc, @+$41

    rrca
    rrca
    jp $c500


    db $e4
    inc hl
    nop
    ld bc, $c0c0
    and [hl]
    nop
    ld [hl], h
    nop
    ld [$02c5], sp
    rla
    nop
    ldh a, [rSTAT]

jr_00c_5d80:
    ldh a, [rNR10]
    inc de
    ldh a, [$ff30]
    ldh a, [$ffe8]
    ld hl, sp-$7c
    db $fc
    xor $fe
    db $fd
    inc de
    rst $38
    pop af
    dec e
    di
    ld c, $fe
    db $10
    ldh a, [$ffe0]
    and [hl]
    nop
    ld [hl], l
    add l
    ld [bc], a
    jr nz, jr_00c_5daa

    jr nz, jr_00c_5d80

    ld hl, sp-$08
    adc [hl]
    cp $fd
    di
    rst $38
    ld de, $f3fd

jr_00c_5daa:
    ld e, $84
    nop
    push af
    rlca
    ld hl, sp-$08
    ld a, h
    add h
    db $fc
    db $fc
    nop
    nop
    add a
    ld [bc], a
    ld b, b
    nop
    cp $a4
    nop
    dec l
    dec bc
    db $fd
    inc de
    cp $fe
    ld [$18f8], sp
    ld hl, sp-$02
    cp $df
    pop hl
    push bc
    ld bc, $000f
    ret nz

    ld b, c
    ret nz

    ld b, b
    nop
    ret nz

    dec h
    add b
    dec b
    ld b, b
    ret nz

    ldh [$ffe0], a
    db $10
    ldh a, [rSTAT]
    ld [$03f8], sp
    cp $fe
    db $dd
    db $e3
    adc e
    ld [bc], a
    ld a, d
    ld a, [bc]
    cp $fe
    dec e
    di
    rra
    pop af
    ld e, $f2
    sbc h
    db $fc
    ld [hl], b
    adc [hl]
    ld [bc], a
    sub c
    and l
    nop
    inc c
    nop
    ld h, b
    add h
    ld [bc], a
    adc a
    ld b, c
    inc b
    db $fc
    add hl, bc

jr_00c_5e05:
    ld b, $fe
    rlca
    db $fd
    rra
    db $fd
    rst $38
    push hl
    or $0e
    add e
    nop
    or $02
    jr nc, jr_00c_5e05

    ret nc

    add h
    ld [bc], a
    ld hl, $00a3
    ld a, [hl-]
    sub l
    nop
    ld hl, sp+$00
    rst $38
    add [hl]
    ld bc, $08c9
    ld a, a
    rst $38
    ccf
    ld [$ff3f], a
    cp $c7
    ld hl, sp-$7a
    ld bc, $0231
    inc bc
    rst $38
    inc c
    and h
    nop
    ld e, e
    inc b
    ld [hl], l
    ld [hl], a
    cp d
    rst $08
    ld sp, hl
    and h
    ld [bc], a
    ld sp, $2003
    ccf
    db $10
    rra
    and e
    ld [bc], a
    ld [hl], $01
    ld b, $07
    ld b, d
    inc c
    rrca
    and e
    ld [bc], a
    rst $18
    sub c
    ld bc, $04ea
    ldh a, [$fff0]
    inc c
    db $fc
    ld [bc], a
    ld [hl+], a
    cp $01
    rst $38
    ld bc, $0141
    rst $38
    pop de
    inc bc
    ld bc, $0711
    rlca
    jr jr_00c_5e8a

    jr nz, jr_00c_5eac

    daa
    ccf
    ld c, e
    ld a, h
    ld c, c
    ld a, [hl]
    ld c, b
    ld a, a
    ld h, a
    ld a, a
    ret nz

    ret nz

    ld b, c
    and b
    ld h, b
    dec b
    ldh [$ffe0], a
    ret nc

    ldh a, [rNR10]
    ldh a, [rLY]
    ld [$41f8], sp
    add h
    db $fc
    ld b, d

jr_00c_5e8a:
    add d
    cp $0b
    add h
    db $fc
    ld hl, sp-$08
    db $fc
    ld [hl], h
    db $fc
    inc b
    db $fc
    call nz, Call_000_3838
    push de
    ld bc, $08ff
    rrca
    ld [$383f], sp
    ld e, a
    ld l, a
    cp $ff
    sub h
    ld b, c
    rst $38
    adc h
    inc c
    rst $38
    adc [hl]

jr_00c_5eac:
    ei
    adc a
    rst $38
    adc a
    ei
    adc a
    cp $8f
    ld a, [$fe8f]
    ld b, c
    sub c
    rst $38
    nop
    and c
    ld b, c
    rst $38
    pop bc
    ld [$7dff], sp
    ld a, a
    ld a, a
    ld b, a
    ld a, h
    ld b, h
    ld d, h
    ld l, h
    sub l
    inc bc
    xor d
    ld b, d
    nop
    ld bc, $0041
    inc bc
    ld b, c
    nop
    ld b, $0b
    nop
    inc c
    nop
    inc e
    nop
    jr c, jr_00c_5edd

jr_00c_5edd:
    ld [hl], b
    nop
    ldh [rP1], a
    add b
    inc a
    nop
    inc b
    ld bc, $0700
    nop
    ld a, $ae
    inc b
    jr nc, jr_00c_5ef0

    ldh a, [rP1]

jr_00c_5ef0:
    ld hl, sp+$41
    nop
    db $fc
    ld b, c
    nop
    ld a, [hl]
    ld bc, $7f00
    and e
    inc b
    ld d, d
    jp z, $4804

    inc b
    rrca
    nop
    rlca
    nop
    inc bc
    or e
    inc b
    inc e
    add hl, bc
    add b
    add b
    ld [hl], b
    ldh a, [$ffec]
    inc e
    ld a, [$fd06]
    inc bc
    ld b, c
    ld a, a
    add c
    rlca
    db $fd
    inc bc
    ld a, [$ec06]
    inc e
    ld [hl], b
    ldh a, [$ffc9]
    ld [bc], a
    push bc
    dec b
    rra
    rra
    rla
    jr jr_00c_5f36

    ld c, $a7
    ld [bc], a
    add h
    add e
    nop
    db $10
    ld bc, $0e0d
    add e

jr_00c_5f34:
    nop
    cp b

jr_00c_5f36:
    adc l
    ld [bc], a
    inc b
    inc bc
    jr c, jr_00c_5f34

    and $1e

jr_00c_5f3e:
    ld b, c
    ld a, l
    add e
    inc bc
    and $1e
    jr c, jr_00c_5f3e

    pop de
    ld [bc], a
    ld de, $1f05
    rra
    dec de
    inc e
    ld b, $07
    inc hl
    ld bc, $0605
    rlca
    dec de
    inc e
    rra
    rra
    or l
    nop
    ld a, [$fd41]
    inc bc
    call Call_000_0d05
    rst $38

    db $25

    nop

    db $12

    INCBIN "gfx/image_00c_5f66.2bpp"

    jr nc, jr_00c_5fb7

    ld b, b

    db $84, $00, $11, $83, $00, $18, $0d

    and b
    rst $38
    ldh [rIE], a
    jr nz, jr_00c_5fc5

    ld h, c
    ld a, [hl]
    ld [hl], c
    ld a, a
    ld a, [hl]
    ld a, [hl]
    jr c, @+$3a

    db $31

    nop

    db $16

    INCBIN "gfx/image_00c_5f91.2bpp"

    ld b, b
    ld a, a
    jr nz, jr_00c_5fe4

    db $10
    rra
    ld a, b

    db $41

    ld a, a
    ld [hl], b

    db $04

    ld a, a
    jr nc, @+$41

    jr jr_00c_5fd0

    db $c3, $00, $09, $3b

    nop

    db $03

jr_00c_5fb7:
    rlca
    rlca
    ld [bc], a
    inc bc

    db $83, $00, $0a, $06

    db $10
    rra
    jr nz, @+$41

    ld b, b
    ld a, a

jr_00c_5fc5:
    sub b

    db $84, $00, $1b, $85, $00, $1e, $01

    ret nz

    rst $38

    db $42

jr_00c_5fd0:
    jr nz, jr_00c_6011

    db $05

    db $10
    rra
    dec c
    rrca
    inc bc
    inc bc

    db $3f

    nop

    db $03

    rlca
    rlca
    inc b
    rlca

    db $62

    db $0e

    db $02

    rra

jr_00c_5fe4:
    db $08
    rrca

    db $62

    db $1e

    db $01

    ccf
    db $11

    db $84, $00, $0f, $03

    ld h, b
    ld a, a
    jr jr_00c_6012

    db $85, $00, $8a, $11

    INCBIN "gfx/image_00c_5ff7.2bpp"

    ld [bc], a
    ld [bc], a

    db $29

    nop

    db $0e

    ld a, h
    ld a, h
    jp Jump_000_01ff


jr_00c_6011:
    rst $38

jr_00c_6012:
    nop
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $08
    ld [hl], c
    rst $08
    ld h, b

    db $47

    rst $38
    nop

    db $06

    rst $38
    ccf
    jp Jump_000_0cfc


    ldh a, [$ff30]

    db $b5, $00, $a8, $10

    INCBIN "gfx/image_00c_602a.2bpp"

    inc b

    db $90, $01, $13, $09

    ldh [$ff1f], a
    ld hl, sp-$79
    ld a, b
    ld h, a
    ld e, $1f
    db $01
    db $01

    db $9b, $01, $2c, $42

    nop
    rst $38

    db $06

    inc e
    rst $38
    ld e, $f3
    inc e
    di
    db $08

    db $8a, $01, $13, $01

    add b
    rst $38

    db $c3, $00, $1e, $04

    ldh [rIE], a
    pop bc
    rst $38
    or a

    db $22

    rst $38

    db $01

    halt
    halt

    db $33

    nop

    db $06

    ld b, b
    ld b, b
    and h
    db $e4
    sub [hl]
    or $cd

    db $a4, $01, $07, $09

    rlca
    ld a, [$ff07]
    ld b, a
    ld a, [$bfc0]
    ret nz

    ccf

    db $d1, $01, $62, $02

    nop
    rst $38
    db $20

    db $41

    rst $38
    db $30

    db $05

    rst $38
    xor c
    rst $28
    ld l, a
    ld l, a

jr_00c_6093:
    rlca

    db $86, $00, $f7, $22

    db $e0

    db $0c

    jr nz, @+$22

    ldh [rNR10], a
    ldh a, [$ff28]
    ld hl, sp-$6c
    db $fc
    ld b, d
    cp $0d
    di

    db $42

    dec de
    push hl

    db $09

    ld l, [hl]
    ldh a, [c]
    ld a, $fe
    ld [hl], $fe
    ld a, h
    db $fc
    ldh a, [$fff0]

    db $23

    nop

    db $19

    INCBIN "gfx/image_00c_60b8.2bpp"

    nop
    rst $38
    ld b, d
    ld a, a

jr_00c_60cc:
    ld bc, $333f
    ccf
    rrca
    rrca

    db $85, $00, $64, $07

    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    inc a
    db $fc

    db $41

    inc c
    db $f4

    db $41

    inc b
    db $fc

    db $00

jr_00c_60e5:
    ld c, d

    db $41

    cp $2a

    db $04

    cp $02
    cp $1f
    pop hl

    db $41

    scf

jr_00c_60f1:
    ret


    db $08

    ld e, $e2
    ld b, $fe
    ld [de], a
    cp $11
    rst $38
    scf

    db $98, $01, $ab, $87, $02, $42, $05

    jr nz, jr_00c_60e5

    jr @-$06

    jr jr_00c_60f1

    db $41

    db $08
    db $f8

    db $00

    sub h

    db $41

    db $fc
    ld d, h

    db $04

    db $fc
    inc b
    db $fc
    inc [hl]
    db $cc

    db $41

    ld e, h
    and h

    db $05

    jr c, jr_00c_60e5

    ld [hl], b
    ldh a, [$ff80]
    add b

    db $3f

    nop

    db $03

    ldh a, [$fff0]
    ld hl, sp-$78

    db $85, $02, $90, $11

    INCBIN "gfx/image_00c_612c.2bpp"

    jr nc, @-$0e

    db $41

    ld b, b
    ret nz

    db $01

    ret nz

    ret nz

    db $23

    db $e0

    db $23

    db $f0

    db $05

    and b
    and b
    add b
    add b
    add b
    add b

    db $cd, $00, $6f, $01

    db $08
    rrca

    db $41

    db $10
    rra

    db $02

    inc h
    ccf
    db $38

    db $84, $00, $89, $83, $00, $8c, $41

    ld d, b
    ld a, a

    db $01

    ld [hl], b
    ld a, a

    db $83, $00, $d0, $09

    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    db $01

    db $db, $00, $7d, $06

    jr @+$21

    jr nz, @+$41

    jr nc, @+$41

    db $20

    db $8c, $00, $17, $85, $00, $18, $85, $03, $14, $97, $00, $2a, $c5, $03, $2f, $00

    rlca

    db $84, $03, $49, $03

    ld b, b
    ld a, a
    ld a, b
    ld a, a

    db $89, $03, $50, $00

    ld b, b

    db $86, $00, $51, $41

    db $10
    rra

    db $02

    ld [$0c0f], sp

    db $22

    rrca

    db $d3, $00, $83, $84, $02, $24, $00

    inc e

    db $83, $02, $2a, $04

    db $e3
    call c, $db24
    ret nz

    db $85, $01, $9d, $08

    ld a, a
    ld b, e
    ld a, a
    ld h, h
    ld a, h
    ld a, b
    ld a, b
    jr nc, @+$32

    db $85, $02, $20, $04

    db $10
    rra
    inc bc
    inc a
    inc l

    db $83, $03, $c9, $0a

    db $fc
    nop
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    inc e
    rra

    db $85, $00, $a8, $03

    ld a, h
    ld a, h
    ld b, e
    ld a, a

    db $8b, $01, $da, $0a

    ldh [rIE], a
    ldh a, [$ff9f]
    ldh [$ff9f], a
    ld c, b
    rst $38
    inc b
    rst $38
    ld [bc], a

    db $a5, $01, $9b, $0e

    cp $02
    db $fd
    jr nz, @+$01

    ld de, $14ff
    ei
    cp a
    ld hl, sp-$01
    rst $38
    db $dc
    db $dc

    db $33

    nop

    db $02

    inc a
    inc a
    db $c3

    db $84, $01, $13, $01

    db $31
    rst $38

    db $41

    ld [hl], b
    rst $08

    db $00

    ld [hl], b

    db $8e, $01, $13, $41

    db $01
    db $fe

    db $09

    ld bc, $e1ff
    ccf
    db $e3
    rst $38
    rra
    rra
    ld c, $0e

    db $95, $02, $b6, $04

    dec c
    db $fd
    add e
    rst $38
    ld b, c

    db $83, $01, $13, $96, $01, $85, $09

    pop hl
    sbc a
    ldh [$ff9f], a
    pop af
    rst $38
    adc a
    adc a
    inc bc
    inc bc

    db $d5, $01, $3d, $06

    adc b
    ld a, b
    ld [hl], h
    sbc h
    dec bc
    rst $38
    dec bc

    db $41

    db $fd
    inc bc

    db $00

    db $fd

    db $a3, $00, $5c, $01

    db $fc
    db $fc

    db $af, $03, $3a, $0b

    sub b
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
    db $fe

    db $85, $04, $cc, $03, $16

    cp $f8
    db $f8

    db $83, $03, $de, $07

    ld h, b
    ld h, b
    ret nc

    ldh a, [$ff50]
    ldh a, [$ff08]
    db $f8

    db $a5, $03, $12, $01

    ld c, $fe

    db $41

    ld c, $f2

    db $04

    ld b, $fe
    ld [hl-], a
    cp $42

    db $a4, $00, $51, $41

    db $e4
    inc a

    db $09

    add sp, $78
    ret z

    ld hl, sp+$30
    ldh a, [$ffd0]
    ldh a, [$ffe0]
    db $e0

    db $b7, $00, $a8, $09

    add b
    add b
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp-$6a
    cp $4d
    di

    db $41

    rla
    jp hl


    db $05

    rra
    pop hl
    ld b, $fa
    inc b
    db $fc

    db $a4, $03, $a6, $00

    ret nc

    db $41

    ldh [rNR41], a

    db $07

    ldh [$ff60], a
    and b
    ldh [rNR41], a
    ldh [$ffe0], a
    db $e0

    db $9b, $05, $2c, $83, $02, $46, $03

    and b
    ldh [rNR10], a
    db $f0

    db $a5, $03, $08, $01

    ld c, $fe

    db $41

    ld b, $fa

    db $01

    ld [bc], a
    db $fe

    db $87, $02, $54, $09

    dec c
    di
    sub a
    jp hl


    rst $10
    jp hl


    sbc $e2
    cp h
    cp h

    db $b7, $03, $32, $03

    sub b
    ld [hl], b
    ld c, b
    cp b

    db $83, $05, $0a, $0f

    INCBIN "gfx/image_00c_62fb.2bpp"

    db $c6, $00, $ad, $06

    rrca
    dec d
    dec de
    rra
    ld de, $3b35

    db $25

    ccf

    db $23

    rra

    db $00

    db $0e

    db $8a, $00, $a7, $a3, $05, $e4, $23

    db $f8

    db $25

    db $fc

    db $05

    db $ec
    db $fc
    ret c

    add sp, -$48
    ret c

    db $a7, $05, $f8, $ff

    inc sp
    nop
    dec bc
    jr jr_00c_634e

    inc h
    inc a
    inc a
    inc h
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld b, d
    rst $38
    add c
    ld c, e
    rst $38
    nop
    dec bc
    rst $38
    jr @-$17

    ld h, [hl]
    add c
    add c
    nop
    nop
    rlca
    rlca

jr_00c_634e:
    dec sp
    ld a, h
    ld b, c
    ld a, a
    ld b, b
    dec b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld [$0741], sp
    inc b

Jump_00c_635d:
    ld bc, $0c0b
    ld b, c
    rrca
    ld [$1707], sp
    jr jr_00c_6386

    db $10
    dec d
    dec de
    ld c, $0e
    rst $38

    db $25

    nop

    db $19

    INCBIN "gfx/image_00c_6370.2bpp"

    adc c
    rst $38
    add [hl]
    rst $38
    add b
    rst $38

jr_00c_6386:
    ld a, a
    ld c, [hl]
    db $31
    db $31

    db $89, $00, $00, $0c

    dec e
    ld e, $21
    ld a, $31
    ld a, $79
    ld a, [hl]
    adc c
    cp $88
    rst $38
    adc a

    db $90, $00, $17, $0e

    ld [bc], a
    inc bc
    inc e
    rra
    inc a
    inc hl
    inc l
    inc sp
    ld [hl], h
    ld a, e
    adc h
    ei
    adc l
    ei
    adc e

    db $88, $00, $17, $09

    ld bc, $3301
    ld [hl-], a
    ld a, e
    ld c, d
    ld a, c
    ld c, c
    inc sp
    ld [hl-], a

    db $89, $00, $0a, $04

    cp $f9
    ld sp, hl
    adc a
    rst $38

    db $83, $00, $19, $00

    ld a, a

    db $85, $00, $5e, $05

    ld c, e
    ld a, d
    ld c, c
    ld a, c
    inc sp
    ld [hl-], a

    db $89, $00, $2a, $04

    ld hl, sp-$01
    rst $38
    adc a
    rst $38

    db $88, $00, $59, $07

    ld [hl-], a
    inc sp
    ld a, d
    ld c, e
    ld a, c
    ld c, c
    ld [hl-], a
    inc sp

    db $89, $00, $4a, $04

    db $fd
    ei
    ei
    adc a
    rst $38

    db $86, $00, $19, $3f

    nop

    db $ff, $2f

    nop

    db $23

    db $01

    db $23

    inc bc

    db $23

    rlca

    db $03

    rrca
    rrca
    ld c, $0f

    db $83, $00, $1c, $41

    ld e, $1f

    db $00

    inc a

    db $22

    ccf

    db $01

    inc h
    inc h

    db $31

    nop

    db $06

    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    inc b
    rlca

    db $62

    dec b

    db $42

    inc c
    rrca

    db $11

    INCBIN "gfx/image_00c_6422.2bpp"

    ld h, c
    ld a, a

    db $41

    pop hl
    rst $38

    db $00

    ret nz

    db $22

    rst $38

    db $0c

    and [hl]
    and a
    inc c
    rrca
    rla
    jr jr_00c_6462

    db $10
    rrca
    inc c
    inc bc
    inc bc
    rra

    db $41

    rra
    db $10

    db $04

    rra
    inc e
    rra
    rlca
    rlca

    db $9f, $00, $00, $0d

    ld e, $1f
    inc e
    rra
    inc a
    ccf

Call_00c_645c:
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    rst $38
    rst $38

jr_00c_6462:
    sub c
    sub c

    db $89, $00, $0a, $01

    db $01
    db $01

    db $c3, $00, $13, $39

    nop

    db $83, $00, $12, $83, $00, $1a, $0b

    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld [hl-], a
    cpl
    ld [hl+], a
    ccf

    db $41

    inc de
    rra

    db $06

    inc sp
    ld l, $23
    ld a, $32
    ccf
    inc de

    db $22

    rra

    db $29

    nop

    db $08

    inc a
    inc a
    inc h
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    db $db
    rst $20

    db $41

    db $fd
    db $c3

    db $00

    db $fc

    db $41

    add c
    db $fe

    db $01

    cp a
    rst $38

    db $41

    ccf
    db $ee

    db $02

    rra
    pop af
    db $0e

    db $41

    rst $38
    nop

    db $02

    rst $38
    rra
    rst $38

    db $41

    rrca
    ld sp, hl

    db $0d

    rst $38
    db $fc
    ld d, e
    ld e, a
    ld e, $12
    cpl
    inc sp
    ld e, a
    ld h, e
    ld a, l
    ld b, [hl]
    rst $38
    rst $38

    db $41

    add c
    db $fe

    db $03

    rst $20
    rst $38
    add hl, sp
    add hl, sp

    db $aa, $00, $40, $41

    ret nc

jr_00c_64d3:
    db $30

    db $00

jr_00c_64d5:
    ret nc

    db $22

    db $f8

    db $02

    jr jr_00c_64d3

    db $e8

    db $41

    db $fc
    db $ec

    db $1d

    INCBIN "gfx/image_00c_64e0.2bpp"

    ld c, c
    ret


    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    db $ec
    db $fc
    db $fc
    sub h
    cp $fe

    db $41

    ld a, $c2

    db $03

    and $fe
    jr c, jr_00c_653e

    db $87, $00, $fe, $07

    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, d
    db $db
    cp l
    rst $20
    rst $38

    db $85, $01, $10, $05

    add c
    cp $00
    rst $38
    ccf
    rst $38

    db $89, $01, $1a, $11

    INCBIN "gfx/image_00c_6520.2bpp"

    rst $38
    rst $38

    db $41

    inc bc
    db $fc

    db $03

    adc $ff
    ld [hl], e
    ld [hl], e

    db $8f, $00, $d0, $00

jr_00c_653e:
    db $1e

    db $84, $00, $a3, $00

    db $f8

    db $41

    rst $38
    db $f0

    db $09

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add e
    rst $38
    add b
    rst $38
    nop

    db $22

    rst $38

    db $11

    INCBIN "gfx/image_00c_6555.2bpp"

    ldh [$ffe0], a

    db $b7, $00, $c2, $01

    add b
    add b

    db $c3, $01, $43, $41

    ldh [$ffa0], a

    db $0f

    INCBIN "gfx/image_00c_6574.2bpp"

    db $a3, $00, $ac, $07

    add b
    add b
    ld h, b
    ldh [$ffe0], a
    and b
    ldh a, [$fff0]

    db $41

    ldh a, [rNR10]

    db $03

    jr nc, @-$0e

    ret nz

    ret nz

    db $d1, $00, $c7, $27

    inc bc

    db $25

    rlca

    db $01

    ld b, $07

    db $43

    ld c, $0f

    db $00

    inc e

    db $22

    rra

    db $01

    db $11
    db $11

    db $3f

    nop

    db $86, $02, $10, $00

    ld b, b

    db $83, $01, $44, $03

    ldh a, [$ff90]
    ld [hl], b
    sub b

    db $41

    jr c, @-$36

    db $05

    inc a
    call nz, $e6fe
    sbc [hl]
    ldh [c], a

    db $a3, $00, $aa, $a3, $00, $bc, $02

    ret nz

    ret nz

    and b

    db $23

    db $e0

    db $10

    INCBIN "gfx/image_00c_65d2.2bpp"

    db $fe

    db $41

    add [hl]
    db $fa

    db $01

    ld b, $fa

    db $41

    ld c, $f2

    db $17

    INCBIN "gfx/image_00c_65ed.2bpp"

    dec sp
    push hl
    rst $28
    pop af
    sbc l
    sub e
    ld c, $0e

    db $34

    nop

    db $8a, $01, $21, $01

    ld b, e
    ld b, e

    db $31

    nop

    db $00

    rrca

    db $44

    rst $38
    nop

    db $22

    rst $38

    db $05

    ld de, $0b1f
    inc c
    rlca
    inc b

    db $ab, $02, $3e, $07

    ld a, b
    ld a, b
    ld c, b
    ld a, b
    db $fc
    add h
    db $fc
    cp h

    db $41

    add $fa

    db $05

    rst $00
    ld sp, hl
    rst $08
    rst $38
    sbc a
    pop af

    db $41

    cp a
    db $ee

    db $09

    cp a
    rst $28
    rra
    ldh a, [c]
    rrca
    db $fc
    rlca
    db $fc
    rrca
    ld sp, hl

    db $89, $03, $20, $07

    ld bc, $feff
    rst $38
    add hl, de
    ld e, $06
    rlca

    db $91, $00, $bc, $0c

    inc bc
    inc bc
    ld e, $1f
    rlca
    inc b
    ccf
    dec a
    ld a, [hl]
    ld a, a
    jr c, jr_00c_669c

    db $e0

    db $22

    rst $38

    db $0a

    rst $30
    db $fd
    rst $00
    db $fd
    add e
    cp $fb
    rst $38
    ret nz

    rst $38
    db $f0

    db $84, $00, $65, $01

    inc h
    ccf

    db $41

    rlca
    inc b

    db $03

    dec de
    inc e
    dec b
    db $06

    db $41

    inc bc
    ld [bc], a

    db $00

    ld [bc], a

    db $cc, $00, $da, $83, $00, $bc, $c3, $00, $19, $c3, $00, $e1, $01

    ld a, a
    ld a, a

    db $85, $00, $e2, $01

    add h
    add a

    db $33

    nop

    db $22

    ld a, a

    db $00

    ld b, c

    db $42

    ld a, a

jr_00c_669c:
    ld b, b

    db $41

    ld a, a
    ld b, c

    db $41

    ld b, b
    ld a, a

    db $03

    ld h, a
    ld a, e
    ld e, $1e

    db $8d, $02, $20, $31

    nop

    db $03

    ld hl, sp-$38
    jr c, @-$36

    db $41

    inc e
    db $e4

    db $41

    ld c, $f2

    db $85, $01, $68, $03

    ret nz

    ld b, b
    add b
    add b

    db $9e, $02, $76, $a3, $00, $15, $1c

    INCBIN "gfx/image_00c_66c7.2bpp"

    pop hl
    db $dd
    db $e3
    ld e, [hl]
    and d
    cp $02
    ld a, $e2
    ld [$1cf6], a
    inc e

    db $d1, $04, $43, $e0, $2a

    INCBIN "gfx/image_00c_66e9.2bpp"

    add sp, $18
    ldh a, [rNR10]
    ret nc

    jr nc, @-$3e

    jr nz, @-$0e

    jr nc, @+$02

    db $b0, $03, $71, $11

    INCBIN "gfx/image_00c_6718.2bpp"

    ld b, $06

    db $d3, $02, $0b, $22

    db $fe

    db $00

    db $fa

    db $41

    cp $1e

    db $05

    cp $7a
    cp $f2
    cp $e2

    db $41

    ld [bc], a
    db $fe

    db $03

    sbc [hl]
    xor $78
    ld a, b

    db $ff

    dec hl
    nop
    dec b
    jr c, jr_00c_6781

    ret c

    add sp, -$18
    ld hl, sp+$23
    ldh a, [rNR44]
    ld hl, sp+$0b
    db $fc
    db $fc
    cp $fe
    rst $38
    db $ed
    cp $6e
    db $fc
    ld l, h
    db $fc
    sbc h
    rst $00
    nop
    add hl, de
    dec b
    add sp, -$08
    ret c

    add sp, $38
    jr c, jr_00c_679a

    nop
    add hl, bc
    ld [$1408], sp
    inc e
    inc e
    inc d
    ld l, e
    ld [hl], a
    rst $28
    di
    ld l, $ff
    ld b, d
    db $e3
    rst $38
    nop
    ldh a, [$ff2b]
    rst $38
    dec b
    ld a, a
    ld a, a

jr_00c_6781:
    inc e
    inc d
    inc d
    inc e
    db $d3
    nop
    ld b, a
    and e
    nop
    inc c
    dec b
    ld d, $19
    rrca
    ld [$0d0a], sp
    and e
    nop
    inc d
    add hl, bc
    ccf
    ccf
    ld [hl], a
    ld c, a

jr_00c_679a:
    ei
    add a
    ld a, e
    ld b, a
    daa
    ccf
    push bc
    nop
    sbc e
    dec b
    ld a, [bc]
    dec c
    rrca
    ld [$1916], sp
    or l
    nop
    jr nc, @+$0f

    nop
    nop
    ld b, $06
    ld e, $1a
    ld l, h
    ld [hl], h
    db $f4
    call z, $e8f8
    ld hl, sp-$08
    add a
    nop
    inc d
    add a
    nop
    ld a, [de]
    adc c
    nop
    inc h
    rlca
    ldh [$ffe0], a
    ret nc

    ldh a, [$ffb0]
    ret nc

    ld [hl], b
    ld [hl], b
    cpl
    nop
    inc c
    inc b
    inc b
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    push af
    ei
    ld [hl], a
    ld sp, hl
    rst $38
    ld a, a
    ld a, a
    sub c
    nop
    ld d, c
    nop
    ldh a, [$ff2d]
    rst $38
    dec b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    jr nz, jr_00c_680c

    cpl
    nop
    add hl, bc
    ld c, $0e
    dec c
    dec bc
    dec bc
    inc c
    rlca
    inc b
    dec c
    ld c, $8f
    nop
    sub [hl]
    add e
    nop
    and h
    ld de, $1f1f
    ld a, [bc]
    dec c
    rla
    jr jr_00c_6825

    ld de, $332d
    ld [hl], $2e

jr_00c_680c:
    ld a, b
    ld e, b
    ld h, b
    ld h, b
    nop
    nop
    or h
    ld bc, $003a
    or b
    push bc
    nop
    rst $28
    adc h
    nop
    jr jr_00c_681e

jr_00c_681e:
    inc c
    add a
    nop
    inc h
    ld [hl+], a
    ld hl, sp+$01

jr_00c_6825:
    add sp, -$0c
    or h
    ld bc, $a571
    nop
    ld b, [hl]
    inc bc
    ld d, a
    ld l, a
    rst $18
    rst $20
    sub d
    nop
    ld d, d
    nop
    ldh [$ff87], a
    nop
    ld h, h
    nop
    ld a, a
    call nz, Call_000_1401
    ld bc, $bfbf
    xor l
    ld bc, $1934
    ld e, $1e
    dec e
    inc de
    ld e, $11
    rla
    jr jr_00c_6869

    dec e
    ld l, a
    ld [hl], a
    cp e
    call z, $88ff
    ld a, [hl]
    ld d, c
    ccf
    ccf
    dec d
    dec de
    rra
    ld de, $131d
    push bc
    ld [bc], a
    inc bc
    dec e
    ld e, $1e
    xor $f2
    cp d

jr_00c_6869:
    add $b4
    call z, $fcfc
    ld e, e
    rst $20
    rst $38
    add c
    ld a, [$d686]
    xor $fe
    ld a, [hl-]
    rst $18
    ld sp, $9977
    rst $38
    sbc a
    ldh a, [$ffd0]
    jr nc, jr_00c_68b2

    dec l
    nop
    ld [hl+], a
    ldh a, [rSC]
    ret nc

    ldh a, [$fff0]
    add a
    nop
    ret c

    ld [hl+], a
    cp $00
    ld a, [$fe41]
    jp c, $fe01

    ld h, $c7
    ld [bc], a
    ld e, c
    inc bc
    ldh a, [$ffd0]
    ldh a, [$fff0]
    inc sp
    nop
    dec bc
    jr nc, jr_00c_68d4

    jr c, jr_00c_68ce

    inc a
    inc h
    cpl
    inc sp
    rst $30
    ld sp, hl
    ld a, a
    rst $38
    adc h
    ld bc, $4210

jr_00c_68b2:
    ldh a, [rIE]
    nop
    ld hl, sp-$77
    ld bc, $07e8
    rst $38
    rst $38
    ld a, $3e
    inc a
    inc h
    jr c, jr_00c_68ea

    push de
    ld [bc], a
    add a
    dec d
    rrca
    rrca
    dec bc
    inc c
    dec b
    ld b, $03
    ld [bc], a

jr_00c_68ce:
    inc bc
    inc bc
    rlca
    rlca
    rra
    rra

jr_00c_68d4:
    ld l, e
    ld [hl], a
    cp l
    jp Jump_00c_635d


    inc sp
    ccf
    and e
    nop
    db $ec
    add hl, bc
    rlca
    rlca
    ld [bc], a
    inc bc
    dec b
    ld b, $0b
    inc c
    rrca
    rrca

jr_00c_68ea:
    scf
    nop
    add e
    ld bc, $028a
    ld d, b
    or b
    and b
    ld [hl+], a
    ldh [$ffa3], a
    ld [bc], a
    sub $0d
    ldh a, [$fff0]
    db $ec
    db $fc
    ld a, [$fff6]
    pop de
    ld a, [$f4d6]
    call c, $38e8
    rst $00
    inc bc
    add hl, de
    inc bc
    and b
    ldh [$ff50], a
    or b
    sub e
    nop
    ldh a, [c]
    add hl, bc
    inc c
    inc c
    inc a
    inc [hl]
    ld e, h
    ld h, h
    or l
    call $dfaf
    or b
    nop
    ld d, b
    ld b, c
    add $ff
    nop
    pop hl
    add hl, hl
    rst $38
    rlca
    xor a
    rst $18
    or l
    call Call_00c_645c
    inc a
    inc [hl]
    or c
    ld [bc], a
    cp b
    inc bc
    ld b, $06
    rrca
    dec bc
    ld b, c
    dec e
    inc de
    inc bc
    ccf
    inc hl
    dec hl
    scf
    inc hl
    ld a, a
    dec b
    rst $38
    rst $38
    rst $08
    rst $38
    or a
    rst $08
    jp $1503


    ret


    nop
    rst $28
    ld b, d
    ld hl, sp-$28
    ld bc, $38f8

jr_00c_6955:
    ret


    inc bc
    xor c
    dec hl
    nop
    inc bc
    db $fc
    db $fc
    rst $38
    rst $38
    sbc a
    inc bc
    ld d, b
    jp $cf03


jr_00c_6965:
    add hl, sp
    nop
    ld bc, $0303
    xor e
    nop
    call nc, Call_00c_7f23
    ld bc, $c0c0
    ld b, c
    jr nz, jr_00c_6955

    add hl, bc
    ret nc

    jr nc, @-$0e

    ret nc

    add sp, -$28
    add sp, $18
    ret z

    jr c, jr_00c_69c3

    ld [$41f8], sp
    db $10
    ldh a, [rSC]
    jr nz, @-$1e

    jr nz, @-$6e

    inc bc
    cp l
    nop
    inc bc
    ld b, d
    rst $38
    nop
    ld [bc], a
    rst $38
    dec a
    jp nz, Jump_00c_7f41

    sbc b
    ld b, $7d
    add d
    jr c, jr_00c_6965

    nop
    rst $38
    inc bc
    ld b, c
    rst $38
    rlca
    ld bc, $06ff
    rst $00
    inc b
    ld d, l
    sbc [hl]
    inc bc
    pop af
    ld bc, $0f0c
    ld b, c
    db $10
    rra
    ld b, c
    jr nz, jr_00c_69f5

    ld b, d
    ld b, b
    ld a, a
    adc a
    inc bc
    nop
    adc c
    inc b
    inc a
    dec b
    inc a
    inc a
    ld e, d

jr_00c_69c3:
    ld h, [hl]
    rst $38
    add c
    adc l
    inc bc
    ld b, b
    dec b
    xor c
    reti


    ld [hl], c
    ld [hl], c
    ld bc, $3501
    nop
    jp $f901


    ld b, c
    dec e
    inc de
    inc bc
    add hl, sp
    daa
    ld a, [hl+]
    ld [hl], $83
    nop
    or d
    add hl, bc
    jr nc, @+$32

    ld c, b
    ld a, b
    or h
    call z, $86fa
    ld d, h
    ld l, h
    add a
    nop
    ld [hl-], a
    ld [bc], a
    ret nz

    ret nz

    jr nz, @-$6e

    inc bc
    cpl

jr_00c_69f5:
    rst $38

    db $0b

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $211e
    ccf
    jr nz, jr_00c_6a42

    db $41

    ld b, b
    ld a, a

    db $03

    add b
    rst $38
    add c
    db $fe

    db $41

    add e
    db $fc

    db $41

    ld b, e
    ld a, h

    db $03

    ld sp, $0f3e
    rrca

    db $83, $00, $02, $05

    db $10
    rra
    jr nz, jr_00c_6a5d

    jr nz, jr_00c_6a5f

    db $43

    ld b, b
    ld a, a

    db $01

    ld h, e
    ld a, h

    db $41

    add a
    db $f8

    db $0c

    adc e
    db $fc
    sub a
    rst $30
    ld h, c
    ld h, c
    nop
    nop
    rrca
    rrca
    db $10
    rra
    db $26

    db $86, $00, $0b, $01

    add e
    db $fc

    db $41

    add a
    db $f8

    db $05

    add a

jr_00c_6a42:
    cp $89
    rst $38
    add b
    rst $38

    db $41

    ld b, b
    ld a, a

    db $01

    scf
    ccf

    db $c3, $00, $41, $06

    ld hl, sp-$08
    inc h
    db $fc
    adc [hl]
    or $8e

    db $a4, $00, $0d, $01

    dec a

jr_00c_6a5d:
    db $c3

    db $43

jr_00c_6a5f:
    rst $38
    db $01

    db $07

    cp $02
    ld a, [$fc06]
    inc c
    ldh a, [$fff0]

    db $83, $00, $62, $07

    ld [bc], a
    cp $8a
    cp $4a
    cp $01
    rst $38

    db $87, $00, $6c, $83, $00, $78, $15

    INCBIN "gfx/image_00c_6a7d.2bpp"

    inc c
    db $fc
    ld a, [$fe06]
    ld [bc], a

    db $43

    rst $38
    db $01

    db $41

    rst $38
    add e

    db $05

    rst $38
    add a
    cp $1e
    ld hl, sp-$08

    db $ff, $05

    inc bc
    inc bc
    dec c
    ld c, $17
    db $18

    db $41

    cpl
    db $30

    db $15

    INCBIN "gfx/image_00c_6aac.2bpp"

    ld d, [hl]
    ld a, e
    scf
    ld a, [hl-]
    dec c

jr_00c_6ac1:
    dec c

    db $2d

    nop

    db $e0, $39

    INCBIN "gfx/image_00c_6ac6.2bpp"

    ldh [$ffe0], a
    ld e, $1e
    dec a
    inc hl
    ld e, a
    ld h, b
    ld a, a
    ld b, b

    db $41

    cp a
    ret nz

    db $e0, $44

    INCBIN "gfx/image_00c_6b05.2bpp"

    rst $30
    sbc b
    cp a
    ret nc

    ld [hl], a

    db $41

    ld e, c
    ld l, a

    db $0a

    ld e, b
    ld h, l
    ld e, [hl]
    ld c, a
    ld a, a
    ld a, [hl-]
    scf
    ld l, $37
    add hl, de
    add hl, de

    db $ff, $5e, $6b, $67, $6b, $02, $f8, $00, $00, $20, $f8, $f8, $02, $21, $02, $f8
    db $00, $04, $20, $f8, $f8, $06, $21, $76, $6b, $7f, $6b, $88, $6b, $02, $f8, $00
    db $00, $20, $f8, $f8, $02, $21, $02, $f8, $00, $04, $20, $f8, $f8, $06, $21, $02
    db $f8, $00, $08, $20, $f8, $f8, $0a, $21

    or c
    ld l, e
    jp z, $e36b

    ld l, e
    nop
    ld l, h
    add hl, de
    ld l, h
    ld [hl-], a
    ld l, h
    ld c, e
    ld l, h
    ld h, h
    ld l, h
    ld a, l
    ld l, h
    sub [hl]
    ld l, h
    xor a
    ld l, h
    ret z

    ld l, h
    pop hl
    ld l, h
    ldh a, [c]
    ld l, h
    rst $30
    ld l, h
    db $fc
    ld l, h
    ld b, $fc
    ldh a, [$ff0a]
    nop
    db $fc
    ld hl, sp+$08
    nop
    db $ec
    ld hl, sp+$06
    nop
    db $fc
    nop
    inc b
    nop
    db $ec
    nop
    ld [bc], a
    nop
    db $fc
    ld [$0100], sp
    ld b, $ed
    ld hl, sp+$06
    nop
    db $ed
    nop
    ld [bc], a
    nop
    db $fc
    ldh a, [$ff0a]
    nop
    db $fd
    ld hl, sp+$10
    nop
    db $fd
    nop
    ld c, $00
    db $fd
    ld [$010c], sp
    rlca
    db $fc
    xor $0a
    nop
    db $fc
    or $1c
    nop
    db $ec
    or $1a
    nop
    db $fc
    cp $18
    nop
    db $ec
    cp $16
    nop
    db $fc
    ld b, $14
    nop
    db $ec
    ld b, $12
    ld bc, $fc06
    rst $28
    ld a, [bc]
    nop
    db $fc
    rst $30
    ld [$ec00], sp
    rst $30
    ld b, $00
    db $fc
    rst $38
    inc b
    nop
    db $ec
    rst $38
    ld [bc], a
    nop
    db $fc
    rlca
    nop
    ld bc, $fc06
    pop af
    ld a, [bc]
    nop
    db $fc
    ld sp, hl
    ld [$ec00], sp
    ld sp, hl
    ld b, $00
    db $fc
    ld bc, $0004
    db $ec
    ld bc, $0002
    db $fc
    add hl, bc
    nop
    ld bc, $fc06
    ldh a, [$ff0a]
    nop
    db $fc
    ld hl, sp+$08
    nop
    db $ec
    rst $30
    ld b, $00
    db $fc
    nop
    inc b
    nop
    db $ec
    rst $38
    ld [bc], a
    nop
    db $fc
    ld [$0100], sp
    ld b, $fc
    rst $28
    ld a, [bc]
    nop
    db $fc
    rst $30
    ld [$ec00], sp
    or $06
    nop
    db $fc
    rst $38
    inc b
    nop
    db $ec
    cp $02
    nop
    db $fc
    rlca
    nop
    ld bc, $fc06
    ldh a, [$ff0a]
    nop
    db $fc
    ld hl, sp+$08
    nop
    db $ec
    ld sp, hl
    ld b, $00
    db $fc
    nop
    inc b
    nop
    db $ec
    ld bc, $0002
    db $fc
    ld [$0100], sp
    ld b, $fc
    pop af
    ld a, [bc]
    nop
    db $fc
    ld sp, hl
    ld [$ec00], sp
    ld a, [$0006]
    db $fc
    ld bc, $0004
    db $ec
    ld [bc], a
    ld [bc], a
    nop
    db $fc
    add hl, bc
    nop
    ld bc, $ec06
    nop
    jr nz, jr_00c_6c9b

jr_00c_6c9b:
    db $ec
    ld hl, sp+$1e
    nop
    db $fc
    ldh a, [$ff0a]
    nop
    db $fc
    ld hl, sp+$08
    nop
    db $fc
    nop
    inc b
    nop
    db $fc
    ld [$0100], sp
    ld b, $ec
    rst $38
    jr nz, jr_00c_6cb4

jr_00c_6cb4:
    db $ec
    rst $30
    ld e, $00
    db $fc
    rst $28
    ld a, [bc]
    nop
    db $fc
    rst $30
    ld [$fc00], sp
    rst $38
    inc b
    nop
    db $fc
    rlca
    nop
    ld bc, $ec06
    ld bc, $0020
    db $ec
    ld sp, hl
    ld e, $00
    db $fc
    pop af
    ld a, [bc]
    nop
    db $fc
    ld sp, hl
    ld [$fc00], sp
    ld bc, $0004
    db $fc
    add hl, bc
    nop
    ld bc, $fc04
    ldh a, [$ff0a]
    nop
    db $fc
    ld hl, sp+$08
    nop
    db $fc
    nop
    inc b
    nop
    db $fc
    ld [$0100], sp
    ld bc, $fcfd
    ld [hl+], a
    ld de, $fc01
    db $fc

jr_00c_6cfa:
    inc h
    ld de, $f802
    ld hl, sp+$26
    jr nz, jr_00c_6cfa

Call_00c_6d02:
    nop
    ld h, $01

    db $11, $6d, $1a, $6d

    inc hl
    ld l, l
    jr nc, @+$6f

    dec a
    ld l, l
    ld c, d
    ld l, l

    db $02, $f8, $f8, $00, $20, $f8, $00, $00, $01, $02, $f8, $f8, $02, $20, $f8, $00
    db $02, $01

    inc bc
    ld hl, sp-$10
    ld [$f800], sp
    ld hl, sp+$06
    nop
    ld hl, sp+$00
    inc b
    ld bc, $f803
    ldh a, [$ff0e]
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    ld a, [bc]
    ld bc, $f803
    ldh a, [$ff08]
    ld b, b
    ld hl, sp-$08
    ld b, $40
    ld hl, sp+$00
    inc b
    ld bc, $f803
    ldh a, [$ff0e]
    ld b, b
    ld hl, sp-$08
    inc c
    ld b, b
    ld hl, sp+$00
    ld a, [bc]
    db $01

    db $8b, $6d, $98, $6d, $a5, $6d, $b2, $6d, $c3, $6d, $d4, $6d, $e5, $6d, $f6, $6d

    dec bc
    ld l, [hl]

    db $20, $6e, $29, $6e, $32, $6e, $3b, $6e, $44, $6e, $4d, $6e, $56, $6e, $5f, $6e
    db $68, $6e, $71, $6e, $7a, $6e, $83, $6e, $8c, $6e, $95, $6e, $a6, $6e, $b7, $6e
    db $d4, $6e, $03, $0b, $fe, $00, $10, $ed, $05, $00, $10, $ed, $fa, $00, $11, $03
    db $0b, $fe, $00, $10, $f1, $04, $02, $10, $f1, $f9, $02, $11, $03, $0a, $fd, $02
    db $10, $f1, $04, $04, $10, $f1, $f9, $04, $11, $04, $09, $fd, $0c, $00, $09, $f5
    db $0a, $00, $ed, $05, $00, $10, $ed, $fa, $00, $11, $04, $09, $fb, $0c, $00, $09
    db $f3, $0a, $00, $ed, $05, $00, $10, $ed, $fa, $00, $11, $04, $12, $02, $08, $30
    db $12, $fa, $08, $10, $ee, $07, $02, $10, $e4, $fd, $00, $11, $04, $0c, $02, $08
    db $30, $0c, $fa, $08, $10, $f3, $04, $02, $10, $ec, $fa, $00, $11, $05, $f4, $06
    db $06, $00, $0c, $02, $08, $30, $0c, $fa, $08, $10, $f4, $f8, $08, $10, $f4, $06
    db $08, $31

    dec b
    rst $30
    ld b, $06
    nop
    db $f4
    ld b, $08
    jr nc, @+$0e

    ld [bc], a
    ld [$0c30], sp
    ld a, [$1008]
    db $ec
    ld a, [$1100]

    db $02, $f8, $00, $10, $00, $f8, $f8, $0e, $01, $02, $f8, $00, $14, $20, $f8, $f8
    db $12, $21, $02, $f8, $00, $14, $60, $f8, $f8, $12, $61, $02, $f8, $f8, $14, $40
    db $f8, $00, $12, $41, $02, $f8, $f8, $14, $00, $f8, $00, $12, $01, $02, $f8, $00
    db $16, $20, $f8, $f8, $16, $01, $02, $f8, $00, $1a, $00, $f8, $f8, $18, $01, $02
    db $f8, $00, $1c, $20, $f8, $f8, $1c, $01, $02, $f8, $00, $1e, $20, $f8, $f8, $1e
    db $01, $02, $f8, $00, $22, $00, $f8, $f8, $20, $01, $02, $f8, $00, $26, $00, $f8
    db $f8, $24, $01, $02, $f8, $00, $2a, $00, $f8, $f8, $28, $01, $02, $f8, $00, $2e
    db $00, $f8, $f8, $2c, $01, $04, $f0, $0b, $36, $00, $f0, $03, $34, $00, $f0, $fb
    db $32, $00, $f0, $f3, $30, $01, $04, $ee, $0b, $36, $00, $ee, $03, $34, $00, $ee
    db $fb, $32, $00, $ee, $f3, $30, $01, $07, $17, $15, $42, $00, $fc, $15, $42, $40
    db $13, $0d, $40, $00, $03, $0d, $3e, $00, $0b, $05, $3c, $00, $0b, $fd, $3a, $00
    db $0b, $f5, $38, $01, $07, $17, $15, $42, $00, $fc, $15, $42, $40, $00, $0d, $40
    db $40, $10, $0d, $3e, $40, $09, $05, $48, $00, $09, $fd, $46, $00, $09, $f5, $44
    db $01, $07, $6f

    db $10
    ld l, a
    add hl, de
    ld l, a
    ld [hl+], a
    ld l, a
    dec hl
    ld l, a
    inc [hl]
    ld l, a
    dec a
    ld l, a
    ld b, [hl]
    ld l, a
    ld c, a
    ld l, a
    ld e, b
    ld l, a

    db $61, $6f, $02, $f8, $f8, $02, $00, $f8, $00, $00, $01

    ld [bc], a
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    inc b
    ld bc, $f802
    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    ld [$0201], sp
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    inc c
    ld bc, $f802
    ld hl, sp+$12
    nop
    ld hl, sp+$00
    db $10
    ld bc, $f802
    nop
    ld c, $60
    ld hl, sp-$08
    inc c
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld a, [bc]
    ld h, b
    ld hl, sp-$08
    ld [$0261], sp
    ld hl, sp+$00
    ld c, $60
    ld hl, sp-$08
    inc c
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld [de], a
    ld h, b
    ld hl, sp-$08
    db $10
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld c, $20
    ld hl, sp-$08
    inc c
    db $21

    db $02, $fa, $f8, $0a, $00, $fa, $00, $08, $01, $76, $6f, $7f, $6f, $88, $6f

    sub c
    ld l, a
    sbc d
    ld l, a
    and e
    ld l, a

    db $02, $f8, $f8, $02, $00, $f8, $00, $00, $01, $02, $f8, $f8, $06, $00, $f8, $00
    db $04, $01, $02, $f8, $f8, $0a, $00, $f8, $00, $08, $01

    ld [bc], a
    ld hl, sp-$08
    inc c
    jr nz, @-$06

    nop

jr_00c_6f98:
    inc c
    ld bc, $f802
    ld hl, sp+$0e
    jr nz, jr_00c_6f98

    nop
    ld c, $01
    ld [bc], a
    ld hl, sp-$08
    db $10
    ld h, b
    ld hl, sp+$00
    db $10
    db $01

    db $b2, $6f, $bb, $6f

    db $c4
    ld l, a

    db $02, $f8, $f8, $02, $00, $f8, $00, $00, $01, $02, $f8, $f8, $06, $00, $f8, $00
    db $04, $01

    ld [bc], a
    ld [$02f8], a
    nop
    ld [$0000], a
    db $01

    db $d7, $6f, $e0, $6f, $e9, $6f, $f6, $6f, $03, $70, $02, $f8, $f8, $02, $00, $f8
    db $00, $00, $01, $02, $f8, $f8, $06, $00, $f8, $00, $04, $01, $03, $f8, $f5, $0c
    db $00, $f8, $fd, $0a, $00, $f8, $05, $08, $01, $03, $f8, $f7, $0c, $00, $f8, $ff
    db $0a, $00, $f8, $07, $08, $01, $03, $f8, $f4, $0c, $00, $f8, $fc, $0a, $00, $f8
    db $04, $08, $01

    jr z, @+$72

    ld sp, $3a70
    ld [hl], b
    ld b, e
    ld [hl], b
    ld c, h
    ld [hl], b
    ld d, l
    ld [hl], b
    ld e, [hl]
    ld [hl], b
    ld h, e
    ld [hl], b
    ld l, b
    ld [hl], b
    ld l, l
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [bc], a
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, $fb02
    nop
    nop
    jr nz, @-$03

    ld hl, sp+$00
    ld bc, $f802
    nop
    inc b
    nop
    ld hl, sp-$08
    ld [bc], a
    ld bc, $f802
    db $fd
    inc b
    nop
    ld hl, sp-$0b
    ld [bc], a
    ld bc, $f802
    nop
    ld [$f800], sp
    ld hl, sp+$06
    ld bc, $f802
    db $fd
    ld [$f800], sp
    push af
    ld b, $01
    ld bc, $fcf6
    ld a, [bc]
    ld bc, $f701
    cp $0a
    ld bc, $f901
    cp $0a
    ld bc, $fa01
    db $fc

Call_00c_7070:
    ld a, [bc]
    ld bc, $f901
    ld a, [$010a]
    ld bc, $faf7
    ld a, [bc]
    db $01

    db $8c, $70, $95, $70, $9e, $70, $a7, $70, $b0, $70, $b5, $70, $be, $70, $c3, $70
    db $02, $f8, $f8, $02, $00, $f8, $00, $00, $01, $02, $f8, $f8, $06, $00, $f8, $00
    db $04, $01, $02, $f7, $f6, $02, $00, $f7, $fe, $00, $01, $02, $f8, $f8, $0a, $00
    db $f8, $00, $08, $01, $01, $fa, $f6, $0c, $21, $02, $ef, $00, $10, $40, $ef, $f8
    db $0e, $41, $01, $f6, $02, $0c, $41, $02, $02, $f8, $10, $20, $02, $00, $0e, $21

    call nc, $dd70
    ld [hl], b
    and $70

jr_00c_70d2:
    rst $28
    ld [hl], b
    ld [bc], a
    ld hl, sp+$00
    nop
    jr nz, jr_00c_70d2

    ld hl, sp+$00
    ld bc, $f802
    nop
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$02
    ld bc, $f802
    nop
    inc b
    nop
    ld hl, sp-$08
    ld b, $01
    ld [bc], a
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    db $08
    db $01

    db $fc, $70, $05, $71, $02, $f8, $f8, $00, $00, $f8, $00, $00, $61, $02, $f8, $00
    db $00, $20, $f8, $f8, $00, $41, $18, $71, $21, $71, $2a, $71, $33, $71, $3c, $71
    db $02, $f8, $f8, $04, $20, $f8, $00, $02, $21, $02, $f8, $00, $04, $00, $f8, $f8
    db $02, $01, $02, $f8, $00, $08, $00, $f8, $f8, $06, $01, $02, $f8, $00, $0c, $00
    db $f8, $f8, $0a, $01, $02, $f8, $00, $00, $20, $f8, $f8, $00, $01, $53, $71, $5c
    db $71, $65, $71, $6e, $71, $77, $71, $80, $71, $89, $71, $02, $f8, $00, $02, $00
    db $f8, $f8, $00, $01, $02, $f8, $00, $06, $00, $f8, $f8, $04, $01, $02, $f8, $00
    db $0a, $00, $f8, $f8, $08, $01, $02, $f8, $f8, $0a, $60, $f8, $00, $08, $61, $02
    db $f8, $00, $0a, $40, $f8, $f8, $08, $41, $02, $f8, $00, $06, $40, $f8, $f8, $04
    db $41, $02, $f8, $00, $02, $40, $f8, $f8, $00, $41, $9c, $71, $a5, $71, $ae, $71
    db $b7, $71, $c0, $71, $02, $f8, $00, $00, $20, $f8, $f8, $00, $01, $02, $f8, $00
    db $06, $00, $f8, $f8, $04, $01, $02, $f8, $f8, $06, $20, $f8, $00, $04, $21, $02
    db $f8, $00, $04, $20, $f8, $f8, $04, $01, $02, $f8, $00, $02, $20, $f8, $f8, $02
    db $01

    push de
    ld [hl], c
    ld [$ff71], a
    ld [hl], c
    inc d
    ld [hl], d
    add hl, hl
    ld [hl], d
    ld a, $72
    dec b
    ld hl, sp+$05
    ld [$0000], sp
    db $fd
    ld b, $00
    ldh a, [$fffd]
    inc b
    nop
    nop
    push af
    ld [bc], a
    nop
    ldh a, [$fff5]
    nop
    ld bc, $0205
    cp $12
    nop
    ldh a, [c]
    cp $10
    nop
    ldh a, [c]
    ld b, $0e
    nop
    ld [bc], a
    or $0c
    nop
    ldh a, [c]
    or $0a
    ld bc, $f805
    inc b
    inc e
    nop
    nop
    db $fc
    ld a, [de]
    nop
    ldh a, [$fffc]
    jr jr_00c_720c

jr_00c_720c:
    nop
    db $f4
    ld d, $00
    ldh a, [$fff4]
    inc d
    ld bc, $0305
    inc bc
    ld h, $00
    di
    inc bc
    inc h
    nop
    inc bc
    ei
    ld [hl+], a
    nop
    di
    ei
    jr nz, jr_00c_7225

jr_00c_7225:
    push af
    di
    ld e, $01
    dec b
    inc bc
    ld bc, $0026
    di
    ld bc, $0024
    inc bc
    ld sp, hl
    ld [hl+], a
    nop
    di
    ld sp, hl
    jr nz, jr_00c_723a

jr_00c_723a:
    push af
    pop af
    ld e, $01
    dec b
    jp hl


    push af
    ld h, $60
    ld sp, hl
    push af
    inc h
    ld h, b
    jp hl


    db $fd
    ld [hl+], a
    ld h, b
    ld sp, hl
    db $fd
    jr nz, @+$62

    rst $30
    dec b
    ld e, $61

    db $67, $72, $7c, $72, $91, $72, $a6, $72, $bb, $72, $d0, $72, $e5, $72, $fe, $72
    db $17, $73, $2c, $73, $05, $f8, $06, $08, $00, $00, $fe, $06, $00, $f0, $fe, $04
    db $00, $00, $f6, $02, $00, $f0, $f6, $00, $01, $05, $02, $fe, $12, $00, $f2, $fe
    db $10, $00, $f2, $06, $0e, $00, $02, $f6, $0c, $00, $f2, $f6, $0a, $01, $05, $f8
    db $07, $1c, $00, $00, $ff, $1a, $00, $f0, $ff, $18, $00, $00, $f7, $16, $00, $f0
    db $f7, $14, $01, $05, $02, $03, $26, $00, $f2, $03, $24, $00, $02, $fb, $22, $00
    db $f2, $fb, $20, $00, $f4, $f3, $1e, $01, $05, $02, $01, $26, $00, $f2, $01, $24
    db $00, $02, $f9, $22, $00, $f2, $f9, $20, $00, $f4, $f1, $1e, $01, $05, $ea, $f5
    db $26, $60, $fa, $f5, $24, $60, $ea, $fd, $22, $60, $fa, $fd, $20, $60, $f8, $05
    db $1e, $61, $06, $00, $00, $32, $00, $f0, $00, $30, $00, $00, $f8, $2e, $00, $f0
    db $f8, $2c, $00, $00, $f0, $2a, $00, $f0, $f0, $28, $01, $06, $00, $00, $3e, $00
    db $f0, $00, $3c, $00, $00, $f8, $3a, $00, $f0, $f8, $38, $00, $00, $f0, $36, $00
    db $f0, $f0, $34, $01, $05, $f8, $04, $46, $00, $00, $fc, $44, $40, $f0, $fc, $44
    db $00, $f8, $f4, $42, $00, $f8, $ec, $40, $01, $06, $f8, $04, $4e, $00, $f8, $04
    db $50, $00, $00, $fc, $4c, $40, $f0, $fc, $4c, $00, $f8, $f4, $4a, $00, $f8, $ec
    db $48, $01, $67, $73, $80, $73, $99, $73, $b2, $73, $cb, $73, $e4, $73, $fd, $73
    db $1a, $74, $37, $74, $54, $74, $5d, $74, $76, $74, $8f, $74, $98, $74, $a1, $74

    cp [hl]
    ld [hl], h
    rst $00
    ld [hl], h

    db $06, $fb, $03, $22, $00, $fb, $fb, $12, $00, $fb, $f3, $02, $00, $eb, $03, $20
    db $00, $eb, $fb, $10, $00, $eb, $f3, $00, $01, $06, $03, $f4, $2e, $20, $03, $fc
    db $1e, $20, $03, $04, $0e, $20, $f3, $04, $24, $00, $f3, $fc, $14, $00, $f3, $f4
    db $04, $01, $06, $fb, $f4, $0a, $00, $ec, $f4, $00, $00, $fb, $04, $2a, $00, $fb
    db $fc, $1a, $00, $eb, $04, $28, $00, $eb, $fc, $18, $01, $06, $03, $04, $2e, $00
    db $03, $fc, $1e, $00, $03, $f4, $0e, $00, $f3, $04, $2c, $00, $f3, $fc, $1c, $00
    db $f3, $f4, $0c, $01, $06, $03, $02, $2e, $00, $03, $fa, $1e, $00, $03, $f2, $0e
    db $00, $f3, $02, $2c, $00, $f3, $fa, $1c, $00, $f3, $f2, $0c, $01, $06, $ec, $f4
    db $2e, $60, $ec, $fc, $1e, $60, $ec, $04, $0e, $60, $fc, $f4, $2c, $60, $fc, $fc
    db $1c, $60, $fc, $04, $0c, $61, $07, $e5, $ff, $16, $20, $03, $f4, $2e, $20, $03
    db $fc, $1e, $20, $03, $04, $0e, $20, $f3, $04, $24, $00, $f3, $fc, $14, $00, $f3
    db $f4, $04, $01, $07, $e6, $00, $16, $20, $fb, $f4, $0a, $00, $ec, $f4, $00, $00
    db $fb, $04, $2a, $00, $fb, $fc, $1a, $00, $eb, $04, $28, $00, $eb, $fc, $18, $01
    db $07, $00, $07, $26, $00, $fb, $f4, $0a, $00, $ec, $f4, $00, $00, $fb, $04, $2a
    db $00, $fb, $fc, $1a, $00, $eb, $04, $28, $00, $eb, $fc, $18, $01, $02, $f8, $00
    db $08, $60, $f8, $f8, $08, $01, $06, $04, $04, $36, $00, $f4, $04, $34, $00, $04
    db $fc, $42, $00, $04, $f4, $32, $00, $f4, $fc, $40, $00, $f4, $f4, $30, $01, $06
    db $04, $04, $4a, $00, $04, $fc, $3a, $00, $f4, $04, $48, $00, $f4, $fc, $38, $00
    db $04, $f4, $46, $00, $f4, $f4, $44, $01, $02, $f8, $00, $06, $70, $f8, $f8, $06
    db $11, $02, $f8, $00, $06, $60, $f8, $f8, $06, $01, $07, $ff, $04, $26, $00, $03
    db $04, $2e, $00, $03, $fc, $1e, $00, $03, $f4, $0e, $00, $f3, $04, $2c, $00, $f3
    db $fc, $1c, $00, $f3, $f4, $0c, $01

    ld [bc], a
    ld hl, sp+$00
    ld c, h
    nop
    ld hl, sp-$08
    inc a
    ld bc, $f802
    nop
    ld c, [hl]
    nop
    ld hl, sp-$08
    ld a, $01

    db $d6, $74, $ef, $74, $08, $75, $06, $00, $f4, $12, $00, $f0, $f4, $10, $00, $00
    db $fc, $0e, $00, $f0, $fc, $0c, $00, $00, $04, $0a, $00, $f0, $04, $08, $01, $06
    db $00, $f4, $06, $00, $f0, $f4, $04, $00, $00, $fc, $02, $00, $f0, $fc, $00, $00
    db $00, $04, $16, $00, $f0, $04, $14, $01, $06, $00, $04, $06, $20, $f0, $04, $04
    db $20, $00, $fc, $02, $20, $f0, $fc, $00, $20, $00, $f4, $16, $20, $f0, $f4, $14
    db $21, $27, $75

    jr nc, jr_00c_759a

    add hl, sp
    ld [hl], l

    db $02, $f8, $00, $74, $00, $f8, $f8, $76, $01

    ld [bc], a
    ld hl, sp+$01
    ld [hl], h
    nop
    ld hl, sp-$07
    halt
    ld bc, $f802
    rst $38
    ld [hl], h
    nop
    ld hl, sp-$09
    halt
    db $01

    db $48, $75

    ld d, c
    ld [hl], l
    ld e, d
    ld [hl], l

    db $02, $f8, $00, $70, $20, $f8, $f8, $70, $01

    ld [bc], a
    ld hl, sp+$01
    ld [hl], b
    jr nz, @-$06

    ld sp, hl

jr_00c_7558:
    ld [hl], b
    ld bc, $f802
    rst $38
    ld [hl], b
    jr nz, jr_00c_7558

    rst $30
    ld [hl], b
    db $01

    db $69, $75, $6e, $75

    ld [hl], e
    ld [hl], l

    db $01, $f8, $fc, $72, $01, $01, $f8, $fd, $72, $01

    ld bc, $fbf8
    ld [hl], d
    db $01

    db $7e, $75, $87, $75, $90, $75, $02, $f8, $00, $78, $20, $f8, $f8, $78, $01, $02
    db $f8, $01, $78, $20, $f8, $f9, $78, $01, $02, $f8, $ff, $78, $20, $f8, $f7, $78
    db $01

    and a

jr_00c_759a:
    ld [hl], l
    or b
    ld [hl], l
    cp c
    ld [hl], l
    jp nz, $cb75

    ld [hl], l
    call nc, $d975
    ld [hl], l
    ld [bc], a
    ld hl, sp-$08
    ld [$f820], sp
    nop

jr_00c_75ae:
    nop
    ld hl, $f802
    ld hl, sp+$0a
    jr nz, jr_00c_75ae

    nop

jr_00c_75b7:
    ld [bc], a
    ld hl, $f802
    ld hl, sp+$0c
    jr nz, jr_00c_75b7

    nop
    inc b
    ld hl, $f802
    inc bc
    ld b, $20
    ld hl, sp-$05
    ld c, $21
    ld [bc], a
    ld hl, sp+$02
    ld b, $20
    ld hl, sp-$06
    ld c, $21
    ld bc, $fcf8
    db $10
    ld bc, $f801
    db $fc
    db $10
    ld hl, $75fe
    rla
    halt
    jr nc, jr_00c_765a

    ld c, c
    halt
    ld h, d
    halt
    ld a, e
    halt
    sbc h
    halt
    or l
    halt
    sub $76
    rst $28
    halt
    ld [$2177], sp
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    ld d, e
    ld [hl], a
    ld l, h
    ld [hl], a
    ld [hl], l
    ld [hl], a
    ld b, $04
    inc b
    ld [hl+], a
    nop
    inc b
    db $fc
    ld [de], a
    nop
    inc b
    db $f4
    ld [bc], a
    nop
    db $f4
    inc b
    jr nz, jr_00c_760f

jr_00c_760f:
    db $f4
    db $fc
    stop
    db $f4
    db $f4
    nop
    ld bc, $0406
    db $fd
    jr c, jr_00c_761c

jr_00c_761c:
    inc b
    push af
    ld h, $20
    inc b
    dec b
    ld h, $00
    db $f4
    dec b
    inc h
    nop
    db $f4
    db $fd
    inc d
    nop
    db $f4
    push af
    inc b
    ld bc, $0306
    db $f4
    ld h, $20
    inc bc
    db $fc
    ld d, $20
    inc bc
    inc b
    ld b, $20
    di
    dec b
    inc h
    nop
    di
    db $fd
    inc d
    nop
    di
    push af
    inc b
    ld bc, $0306
    dec b
    ld h, $00
    inc bc
    db $fd
    ld d, $00
    inc bc
    push af
    ld b, $00
    di
    dec b
    inc h
    nop

jr_00c_765a:
    di
    db $fd
    inc d
    nop
    di
    push af
    inc b
    ld bc, $0306
    ld b, $2a
    nop
    inc bc
    cp $1a
    nop
    inc bc
    or $0a
    nop
    di
    ld b, $28
    nop
    di
    cp $18
    nop
    di
    or $08
    ld bc, $fd08
    inc c
    inc a
    ld b, b
    db $ed
    inc c
    inc a
    nop
    ld [bc], a
    inc b
    ld l, $00
    ld [bc], a
    db $fc
    ld e, $00
    ld [bc], a
    db $f4
    ld c, $00
    ldh a, [c]
    inc b
    inc l
    nop
    ldh a, [c]
    db $fc
    inc e
    nop
    ldh a, [c]
    db $f4
    inc c
    ld bc, $0206
    inc b
    ld l, $00
    ld [bc], a
    db $fc
    ld e, $00
    ld [bc], a
    db $f4
    ld c, $00
    ldh a, [c]
    inc b
    inc l
    nop
    ldh a, [c]
    db $fc
    inc e
    nop
    ldh a, [c]
    db $f4
    inc c
    ld bc, $fd08
    dec c
    inc a
    ld b, b
    db $ed
    dec c
    inc a
    nop
    ld [bc], a
    db $f4
    ld l, $20
    ld [bc], a
    db $fc
    ld e, $20
    ld [bc], a
    inc b
    ld c, $20
    ldh a, [c]
    db $f4
    inc l
    jr nz, @-$0c

    db $fc
    inc e
    jr nz, @-$0c

    inc b
    inc c
    ld hl, $0206
    db $f4
    ld l, $20
    ld [bc], a
    db $fc
    ld e, $20
    ld [bc], a
    inc b
    ld c, $20
    ldh a, [c]
    db $f4
    inc l
    jr nz, @-$0c

    db $fc
    inc e

jr_00c_76ea:
    jr nz, @-$0c

    inc b
    inc c
    ld hl, $0506
    inc b
    ld [hl-], a
    jr nz, jr_00c_76ea

    inc bc
    jr nc, jr_00c_7718

    dec b
    db $fc
    ld [hl], $00
    push af
    ei
    inc [hl]
    nop
    dec b
    db $f4
    ld [hl-], a

jr_00c_7703:
    nop
    push af
    di
    jr nc, @+$03

    ld b, $05
    inc b
    ld [hl-], a
    jr nz, jr_00c_7703

    inc b
    jr nc, jr_00c_7731

    dec b
    db $fc
    ld [hl], $00
    push af
    db $fc
    inc [hl]

jr_00c_7718:
    nop
    dec b
    db $f4
    ld [hl-], a

jr_00c_771c:
    nop
    push af
    db $f4
    jr nc, @+$03

    ld b, $05
    inc b
    ld [hl-], a
    jr nz, jr_00c_771c

    dec b
    jr nc, @+$22

    dec b
    db $fc
    ld [hl], $00
    push af
    db $fd
    inc [hl]

jr_00c_7731:
    nop
    dec b
    db $f4
    ld [hl-], a
    nop
    push af
    push af
    jr nc, @+$03

    ld b, $03
    ldh a, [c]
    ld a, [hl+]
    jr nz, jr_00c_7743

    ld a, [$201a]

jr_00c_7743:
    inc bc
    ld [bc], a
    ld a, [bc]
    jr nz, @-$0b

    ldh a, [c]
    jr z, jr_00c_776b

    di
    ld a, [$2018]
    di
    ld [bc], a
    ld [$0621], sp
    inc b
    ei
    jr c, jr_00c_7778

    inc b

jr_00c_7759:
    inc bc
    ld h, $00
    inc b

jr_00c_775d:
    di
    ld h, $20
    db $f4
    di
    inc h
    jr nz, jr_00c_7759

    ei
    inc d
    jr nz, jr_00c_775d

    inc bc
    inc b

jr_00c_776b:
    ld hl, $f802
    nop
    ld a, [hl-]
    ld h, b
    ld hl, sp-$08
    ld a, [hl-]
    ld bc, $0406
    ei

jr_00c_7778:
    jr c, jr_00c_777a

jr_00c_777a:
    inc b
    di
    ld h, $20
    inc b
    inc bc
    ld h, $00
    db $f4
    inc bc
    inc h
    nop
    db $f4
    ei
    inc d
    nop
    db $f4
    di
    inc b
    ld bc, $77ae
    rst $00
    ld [hl], a
    ldh [rPCM34], a
    ld sp, hl
    ld [hl], a
    ld [de], a
    ld a, b
    dec hl
    ld a, b
    inc a
    ld a, b
    ld c, l
    ld a, b
    ld e, d
    ld a, b
    ld h, a
    ld a, b
    add b
    ld a, b
    adc c
    ld a, b
    sub d
    ld a, b
    sbc e
    ld a, b
    and h
    ld a, b
    cp l
    ld a, b
    ld b, $03
    push af
    ld a, [bc]
    nop
    di
    push af
    ld [$0300], sp
    db $fd
    ld b, $00
    di
    db $fd
    inc b
    nop
    inc bc
    dec b
    ld [bc], a
    nop
    di
    dec b
    nop
    ld bc, $0206
    or $10
    nop
    ld [bc], a
    cp $0e
    nop
    ld [bc], a
    ld b, $0c
    nop
    ldh a, [c]
    or $08
    nop
    ldh a, [c]
    cp $04
    nop
    ldh a, [c]
    ld b, $00
    ld bc, $0206
    or $16
    nop
    ld [bc], a
    cp $14
    nop
    ld [bc], a
    ld b, $12
    nop
    ldh a, [c]
    or $08
    nop
    ldh a, [c]
    cp $04
    nop
    ldh a, [c]
    ld b, $00
    ld bc, $0206
    or $1c
    nop
    ld [bc], a
    cp $1a
    nop
    ld [bc], a
    ld b, $18
    nop
    ldh a, [c]
    or $08
    nop
    ldh a, [c]
    cp $04
    nop
    ldh a, [c]
    ld b, $00
    ld bc, $0106
    or $22
    nop
    ld bc, $20fe
    nop
    ld bc, $1e06
    nop
    pop af
    or $08
    nop
    pop af
    cp $04
    nop
    pop af
    ld b, $00
    ld bc, $0304
    ld hl, sp+$2a
    nop
    di
    ld hl, sp+$28
    nop
    inc bc
    nop
    ld h, $00
    di
    nop
    inc h
    ld bc, $0304
    db $fc
    ld a, [hl+]
    nop
    di
    db $fc
    jr z, jr_00c_7845

jr_00c_7845:
    inc bc
    inc b
    ld h, $00
    di
    inc b
    inc h
    ld bc, $fb03
    db $f4
    jr nc, jr_00c_7852

jr_00c_7852:
    ei
    db $fc
    ld l, $00
    ei
    inc b
    inc l
    ld bc, $f803
    db $f4
    jr nc, jr_00c_785f

jr_00c_785f:
    ld hl, sp-$04
    ld l, $00
    ld hl, sp+$04
    inc l
    ld bc, $0306
    push af
    inc a
    nop
    di
    push af
    ld a, [hl-]
    nop
    inc bc
    db $fd
    jr c, jr_00c_7874

jr_00c_7874:
    di
    db $fd
    ld [hl], $00
    inc bc
    dec b
    inc [hl]
    nop
    di
    dec b
    ld [hl-], a
    ld bc, $f802
    ld hl, sp+$40
    nop
    ld hl, sp+$00
    ld a, $01
    ld [bc], a
    ld hl, sp-$08
    ld b, b
    ld b, b
    ld hl, sp+$00
    ld a, $41
    ld [bc], a
    ld hl, sp+$00
    ld b, b
    ld h, b
    ld hl, sp-$08

jr_00c_7899:
    ld a, $61
    ld [bc], a
    ld hl, sp+$00
    ld b, b
    jr nz, jr_00c_7899

    ld hl, sp+$3e
    ld hl, $0306
    ldh a, [c]
    inc a
    nop
    di
    ldh a, [c]
    ld a, [hl-]
    nop
    inc bc
    ld a, [$0038]
    di
    ld a, [$0036]
    inc bc
    ld [bc], a
    inc [hl]
    nop
    di
    ld [bc], a
    ld [hl-], a
    ld bc, $fc03
    db $f4
    jr nc, jr_00c_7902

    db $fc
    db $fc
    ld l, $40
    db $fc
    inc b
    inc l
    ld b, c
    ld [$0378], a
    ld a, c
    inc e
    ld a, c
    dec [hl]
    ld a, c
    ld c, [hl]
    ld a, c
    ld h, a
    ld a, c
    ld a, h
    ld a, c
    sub c
    ld a, c
    and [hl]
    ld a, c
    xor a
    ld a, c
    ret nz

    ld a, c
    ret


    ld a, c
    jp nc, $db79

    ld a, c
    db $e4
    ld a, c
    ld sp, hl
    ld a, c
    ld b, $fc
    inc b
    ld [hl+], a
    nop
    db $fc
    db $fc
    ld [de], a
    nop
    db $fc
    db $f4
    ld [bc], a
    nop
    db $ec
    inc b
    jr nz, jr_00c_78fb

jr_00c_78fb:
    db $ec
    db $fc
    stop
    db $ec
    db $f4
    nop

jr_00c_7902:
    ld bc, $ed06
    di
    nop
    nop
    db $fd
    inc bc
    inc h
    nop
    db $fd
    ei
    inc d
    nop
    db $ed
    inc bc
    jr nz, jr_00c_7914

jr_00c_7914:
    db $ed
    ei
    stop
    db $fc
    di
    ld [bc], a
    ld bc, $fe06
    ld bc, $0026
    cp $f9
    ld d, $00
    cp $f1
    ld b, $00
    xor $01
    jr nz, jr_00c_792d

jr_00c_792d:
    xor $f9
    stop
    xor $f1
    nop
    ld bc, $fe06
    ld bc, $0028
    cp $f9
    jr jr_00c_793e

jr_00c_793e:
    cp $f1
    ld [$ee00], sp
    rst $38
    jr nz, jr_00c_7946

jr_00c_7946:
    xor $f7
    stop
    xor $ef
    nop
    ld bc, $fe06
    ld bc, $002a
    cp $f9
    ld a, [de]
    nop
    cp $f1
    ld a, [bc]
    nop
    xor $ff
    jr nz, jr_00c_795f

jr_00c_795f:
    xor $f7
    stop
    xor $ef
    nop
    ld bc, $ec05
    ld hl, sp+$36
    nop
    db $ec
    nop
    inc [hl]
    nop
    db $fc
    db $f4
    ld [hl-], a
    nop
    db $fc
    db $fc
    jr nc, jr_00c_7978

jr_00c_7978:
    db $fc
    inc b
    ld c, $01
    dec b
    inc b
    db $fc
    ld a, $00
    db $f4
    db $fc
    inc a
    nop
    inc b
    inc b
    ld a, [hl-]
    nop
    db $f4
    inc b
    jr c, jr_00c_798d

jr_00c_798d:
    ld hl, sp-$0c
    inc b
    ld bc, $0605
    inc bc
    ld l, $00
    ld b, $fb
    ld e, $00
    or $03
    inc l
    nop
    or $fb
    inc e
    nop
    or $f3
    inc c
    ld bc, $fd02
    ld a, [$0042]
    db $fd
    ld [bc], a
    ld b, b
    ld bc, $0004
    ld a, [$4046]
    nop
    ld [bc], a
    ld b, h
    ld b, b
    ldh a, [$fffa]
    ld b, [hl]
    nop
    ldh a, [rSC]
    ld b, h
    ld bc, $f402
    ld hl, sp+$42
    ld b, b
    db $f4
    nop
    ld b, b
    ld b, c
    ld [bc], a
    ld hl, sp-$08
    ld c, d
    nop
    ld hl, sp+$00
    ld c, b
    ld bc, $f802
    ld hl, sp+$4e
    nop
    ld hl, sp+$00
    ld c, h
    ld bc, $f802
    ld a, [$2050]
    ld hl, sp-$01
    ld d, b
    ld bc, $ec05
    or $36
    nop
    db $ec
    cp $34
    nop
    db $fc
    ldh a, [c]
    ld [hl-], a
    nop
    db $fc
    ld a, [$0030]
    db $fc
    ld [bc], a
    ld c, $01
    dec b
    rlca
    db $fc
    ld a, $00
    rst $30
    db $fc
    inc a
    nop
    rlca
    inc b
    ld a, [hl-]
    nop
    rst $30
    inc b
    jr c, jr_00c_7a0a

jr_00c_7a0a:
    ei
    db $f4
    inc b
    db $01

    db $2c, $7a, $41, $7a, $5a, $7a

    ld [hl], e
    ld a, d

    db $8c, $7a, $a5, $7a, $be, $7a, $d7, $7a

    ldh a, [$ff7a]

    db $09, $7b, $12, $7b, $1b, $7b, $24, $7b, $2d, $7b, $36, $7b, $05, $f7, $04, $20
    db $00, $04, $fc, $12, $00, $04, $f4, $02, $00, $f4, $fc, $10, $00, $f4, $f4, $00
    db $01, $06, $04, $04, $26, $00, $04, $fc, $16, $00, $04, $f4, $06, $00, $f4, $04
    db $24, $00, $f4, $fc, $14, $00, $f4, $f4, $04, $01, $06, $04, $03, $2a, $00, $04
    db $fb, $1a, $00, $04, $f3, $0a, $00, $f4, $03, $28, $00, $f4, $fb, $18, $00, $f4
    db $f3, $08, $01

    ld b, $04
    inc b
    ld d, d
    nop
    inc b
    db $fc
    ld b, d
    nop
    inc b
    db $f4
    ld [hl-], a
    nop
    db $f4
    inc b
    ld d, b
    nop
    db $f4
    db $fc
    ld b, b
    nop
    db $f4
    db $f4
    jr nc, @+$03

    db $06, $04, $06, $56, $00, $04, $fe, $46, $00, $04, $f6, $36, $00, $f4, $06, $54
    db $00, $f4, $fe, $44, $00, $f4, $f6, $34, $01, $06, $04, $02, $5a, $00, $04, $fa
    db $4a, $00, $04, $f2, $3a, $00, $f4, $02, $58, $00, $f4, $fa, $48, $00, $f4, $f2
    db $38, $01, $06, $00, $03, $2e, $00, $00, $fb, $1e, $00, $00, $f3, $0e, $00, $f0
    db $03, $2c, $00, $f0, $fb, $1c, $00, $f0, $f3, $0c, $01, $06, $00, $05, $2e, $00
    db $00, $fd, $1e, $00, $00, $f5, $0e, $00, $f0, $05, $2c, $00, $f0, $fd, $1c, $00
    db $f0, $f5, $0c, $01

    ld b, $04
    nop
    ld e, d
    nop
    inc b
    ld hl, sp+$4a
    nop
    inc b
    ldh a, [$ff3a]

Call_00c_7afc:
    nop
    db $f4
    nop
    ld e, b
    nop
    db $f4
    ld hl, sp+$48
    nop
    db $f4
    ldh a, [$ff38]
    db $01

    db $02, $f8, $00, $4c, $00, $f8, $f8, $3c, $01, $02, $f8, $00, $4e, $00, $f8, $f8
    db $3e, $01, $02, $f8, $f8, $22, $00, $f8, $00, $5c, $01, $02, $f8, $00, $60, $00
    db $f8, $f8, $5e, $01, $02, $f8, $fe, $60, $00, $f8, $f6, $5e, $01, $02, $f8, $02
    db $60, $00, $f8, $fa, $5e, $01, $47, $7b, $54, $7b, $61, $7b, $6e, $7b, $03, $fb
    db $04, $80, $40, $f3, $f4, $80, $20, $f8, $fc, $80, $71, $03, $fb, $04, $80, $60
    db $f3, $f4, $80, $10, $f0, $fc, $80, $21, $03, $f3, $04, $80, $10, $fb, $f4, $80
    db $60, $f8, $fc, $80, $41, $03, $f3, $04, $80, $20, $fb, $f4, $80, $40, $f0, $fc
    db $80, $01, $8b, $7b, $94, $7b, $a1, $7b, $aa, $7b

    or a
    ld a, e
    ret nz

    ld a, e
    ret


    ld a, e
    db $d2
    ld a, e

    db $02, $f8, $00, $00, $20, $f8, $f8, $00, $01, $03, $f8, $00, $00, $20, $f8, $00
    db $0c, $00, $f8, $f8, $02, $01, $02, $f8, $00, $04, $20, $f8, $f8, $04, $01, $03
    db $f8, $f8, $00, $00, $f8, $f8, $0c, $20, $f8, $00, $02, $21

    ld [bc], a
    nop
    nop
    ld b, $20
    nop
    ld hl, sp+$06
    ld bc, $0002
    nop
    ld b, $20
    nop
    ld hl, sp+$08
    ld bc, $0002
    nop
    ld a, [bc]
    jr nz, jr_00c_7bcf

jr_00c_7bcf:
    ld hl, sp+$0a
    ld bc, $0002
    ld hl, sp+$06
    nop
    nop
    nop
    ld [$dd21], sp
    ld a, e
    inc b

jr_00c_7bde:
    ei
    inc b
    inc b
    jr nz, jr_00c_7bde

    db $f4
    inc b
    nop
    ei
    db $fc
    ld [bc], a
    nop
    db $eb
    db $fc
    nop
    db $01

    db $06, $7c, $1f, $7c, $30, $7c, $49, $7c, $62, $7c, $7b, $7c, $94, $7c, $ad, $7c
    db $c6, $7c, $df, $7c, $f8, $7c, $01, $7d, $06, $00, $03, $22, $00, $00, $fb, $12
    db $00, $00, $f3, $02, $00, $f0, $04, $20, $00, $f0, $fc, $10, $00, $f0, $f4, $00
    db $01, $04, $00, $00, $16, $00, $00, $f8, $06, $00, $f0, $00, $14, $00, $f0, $f8
    db $04, $01, $06, $00, $04, $2a, $00, $00, $fc, $1a, $00, $00, $f4, $0a, $00, $f0
    db $04, $28, $00, $f0, $fc, $18, $00, $f0, $f4, $08, $01, $06, $00, $fc, $2e, $00
    db $00, $f4, $1e, $00, $00, $ec, $0e, $00, $f0, $fc, $2c, $00, $f0, $f4, $1c, $00
    db $f0, $ec, $0c, $01, $06, $00, $08, $46, $00, $00, $00, $36, $00, $00, $f8, $26
    db $00, $f0, $08, $44, $00, $f0, $00, $34, $00, $f0, $f8, $24, $01, $06, $f8, $07
    db $4c, $00, $f8, $ef, $3c, $00, $00, $ff, $4a, $00, $00, $f7, $3a, $00, $f0, $ff
    db $48, $00, $f0, $f7, $38, $01, $06, $f8, $f1, $4c, $20, $f8, $09, $3c, $20, $00
    db $f9, $4a, $20, $00, $01, $3a, $20, $f0, $f9, $48, $20, $f0, $01, $38, $21, $06
    db $00, $f3, $02, $00, $00, $03, $40, $00, $00, $fb, $30, $00, $f0, $04, $20, $00
    db $f0, $fc, $10, $00, $f0, $f4, $00, $01, $06, $00, $03, $42, $00, $00, $fb, $32
    db $00, $00, $f3, $26, $00, $f0, $03, $44, $00, $f0, $fb, $34, $00, $f0, $f3, $24
    db $01, $06, $00, $04, $42, $00, $00, $fc, $32, $00, $00, $f4, $26, $00, $f0, $04
    db $44, $00, $f0, $fc, $34, $00, $f0, $f4, $24, $01, $02, $f8, $00, $4e, $00, $f8
    db $f8, $3e, $01, $06, $08, $08, $46, $00, $08, $00, $36, $00, $08, $f8, $26, $00
    db $f8, $08, $44, $00, $f8, $00, $34, $00, $f8, $f8, $24, $01

    jr nc, jr_00c_7d99

    ld c, c
    ld a, l
    ld h, d
    ld a, l
    ld a, e
    ld a, l
    sub h
    ld a, l
    xor l
    ld a, l
    jp nz, $d77d

    ld a, l
    ldh a, [$ff7d]
    dec b
    ld a, [hl]
    ld a, [de]
    ld a, [hl]
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
    nop
    ld bc, $0006
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
    ld bc, $f006
    db $f4
    ld d, $40
    nop
    db $f4
    inc d
    ld b, b
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
    ldh a, [c]
    ld l, $00
    ldh a, [$fff2]
    inc l
    nop
    nop
    ld a, [$002a]
    ldh a, [$fffa]
    jr z, jr_00c_7d8c

jr_00c_7d8c:
    nop
    ld [bc], a
    ld h, $00
    ldh a, [rSC]
    inc h
    ld bc, $0006
    push af
    jr c, jr_00c_7dd9

jr_00c_7d99:
    ldh a, [$fff5]
    jr c, jr_00c_7d9d

jr_00c_7d9d:
    nop
    db $fd
    ld [hl], $00
    ldh a, [$fffd]
    inc [hl]
    nop
    nop
    dec b
    ld [hl-], a
    nop
    ldh a, [rTIMA]
    jr nc, jr_00c_7dae

    dec b

jr_00c_7dae:
    nop
    push af
    ld b, b
    ld b, b
    ldh a, [$fff5]
    ld b, b
    nop
    nop
    db $fd
    ld a, $00
    ldh a, [$fffd]
    inc a
    nop
    ld hl, sp+$05
    ld a, [hl-]
    ld bc, $0005
    or $48
    ld b, b
    ldh a, [$fff6]
    ld c, b
    nop
    nop
    cp $46
    nop
    ldh a, [$fffe]
    ld b, h
    nop
    ld hl, sp+$06
    ld b, d
    ld bc, $0006

jr_00c_7dd9:
    inc b
    ld d, b
    nop
    nop
    db $fc
    ld c, h
    ld b, b
    nop
    db $f4
    ld c, [hl]
    ld b, b
    ldh a, [$fff4]
    ld c, [hl]
    nop
    ldh a, [$fffc]
    ld c, h
    nop
    ldh a, [rDIV]
    ld c, d
    ld bc, $0005
    di
    ld c, b
    ld b, b
    ldh a, [$fff3]
    ld c, b
    nop
    nop
    ei
    ld b, [hl]
    nop
    ldh a, [$fffb]
    ld b, h
    nop
    ld hl, sp+$03
    ld b, d
    ld bc, $f305
    or $48
    nop
    inc bc
    or $48
    ld b, b
    di
    cp $46
    ld b, b
    inc bc
    cp $44
    ld b, b
    ei
    ld b, $42
    ld b, c
    ld [bc], a
    ld hl, sp+$00
    ld [hl+], a
    nop
    ld hl, sp-$08
    jr nz, @+$03

    db $2b, $7e, $34, $7e, $3d, $7e, $46, $7e, $02, $f8, $00, $06, $00, $f8, $f8, $00
    db $01, $02, $f8, $00, $08, $00, $f8, $f8, $02, $01, $02, $f8, $00, $0a, $00, $f8
    db $f8, $04, $01, $02, $f8, $fe, $0a, $00, $f8, $f6, $04, $01, $57, $7e, $60, $7e
    db $69, $7e, $72, $7e, $02, $f8, $00, $00, $20, $f8, $f8, $00, $01, $02, $f8, $00
    db $02, $20, $f8, $f8, $02, $01, $02, $f8, $00, $04, $00, $f8, $f8, $06, $01, $02
    db $f8, $f8, $0a, $00, $f8, $00, $08, $01

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
    jr nz, jr_00c_7e92

jr_00c_7e92:
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
    ld b, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$0010], sp
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$0000], sp
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

Call_00c_7f23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_00c_7f41:
    nop
    ld [$0000], sp
    nop
    nop
    ld [$8000], sp
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    stop
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
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0002
    nop
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
