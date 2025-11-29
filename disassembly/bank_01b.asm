; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    db $03

    rst $38
    nop
    rst $38
    ld a, h

    db $41

    rst $38
    db $ee

    db $06

    rst $38
    cp $ff
    xor $ff
    nop
    rst $38

    db $24

    nop

    db $06

    ld bc, $0200
    nop
    inc b
    nop
    db $08

    db $41

    nop
    db $10

    db $05

    nop
    rrca
    nop
    ld [hl], b
    nop
    add b

    db $2a

    nop

    db $02

    ret nz

    nop
    db $30

    db $a3, $00, $1b, $42

    nop
    inc c

    db $01

    nop
    inc e

    db $43

    nop
    db $20

    db $07

    nop
    stop
    jr jr_01b_403c

jr_01b_403c:
    rrca
    nop

jr_01b_403e:
    inc bc

    db $aa, $00, $27, $0e

    rra
    nop
    cp $00
    ldh a, [rP1]
    jr jr_01b_404b

jr_01b_404b:
    jr c, jr_01b_404d

jr_01b_404d:
    ld [hl], b
    nop
    ldh [rP1], a
    ret nz

    db $8c, $00, $23, $07

    ld bc, $0400
    inc bc
    jr nz, @+$21

    add b
    ld a, a

    db $85, $00, $0d, $01

    ld b, d
    inc a

    db $44

    nop
    rst $38

    db $ab, $00, $70, $41

    nop
    rst $38

    db $03

    rst $38
    nop
    rst $38
    db $fc

    db $41

    rst $38
    db $ee

    db $c6, $00, $a6, $83, $00, $9e, $0c

    nop
    cp a
    ld b, b
    rst $38
    nop
    di
    inc c
    pop hl
    ld e, $cc
    ccf
    sub d
    ld [hl], e

    db $83, $00, $b0, $02

    rst $38
    nop
    db $fd

    db $a9, $00, $b7, $06

    nop
    rst $38
    cp $ff
    ldh [rIE], a
    db $fc

    db $c6, $00, $d6, $06

    nop
    ld hl, $40e1
    ret nz

    add b
    add b

    db $41

    jr @+$02

    db $0e

    add b
    nop
    add c
    nop
    ld bc, $8400
    add a
    ld [hl-], a
    inc bc
    ld sp, $0001
    nop
    nop

    db $a6, $00, $e9, $2e

    rst $38

    db $0f

    INCBIN "gfx/image_01b_40bf.2bpp"

    db $88, $01, $0f, $02

    xor d
    nop
    ld a, a

    db $c3, $01, $29, $8f, $00, $ff, $02

    ld hl, sp-$01
    nop

    db $c6, $00, $08, $05

    jr c, @+$01

    db $10
    rst $38
    nop
    rst $38

    db $8f, $00, $ff, $00

    ccf

    db $41

    rst $38
    db $e0

    db $41

    rst $38
    pop bc

    db $c6, $01, $66, $00

    db $f8

    db $41

    rst $38
    rrca

    db $41

    rst $38
    rlca

    db $c6, $01, $76, $a3, $00, $ab, $02

    db $fd
    rst $38
    pop bc

    db $41

    rst $38
    db $dd

    db $01

    rst $38
    db $fd

    db $86, $00, $87, $00

    db $f8

    db $84, $01, $86, $02

    ld sp, hl
    rst $38
    db $dd

    db $8a, $01, $8c, $04

    call c, $fcff
    rst $38
    db $dd

    db $4a

    rst $38
    nop

    db $09

    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    ld sp, hl

    db $85, $00, $87, $43

    rst $38
    db $e0

    db $01

    rst $38
    db $fe

    db $92, $01, $4c, $85, $00, $9f, $00

    db $e0

    db $83, $01, $c6, $c8, $01, $94, $00

    ld a, b

    db $43

    rst $38
    db $38

    db $02

    rst $38
    nop

jr_01b_4152:
    rst $38

    db $30

    nop

    db $01

    rst $38
    nop

    db $42

    rst $38
    db $01

    db $cf, $02, $26, $03

    inc h
    jr @-$7d

    ld a, [hl]

    db $86, $00, $9c, $00

    ret nz

    db $86, $01, $64, $84, $01, $8b, $02

    ldh [rP1], a
    db $20

    db $24

    nop

    db $83, $00, $36, $05

    rrca
    nop
    dec e
    nop
    rst $38
    nop

    db $c6, $01, $9a, $00

    db $fd

    db $88, $01, $9a, $00

    db $ce

    db $84, $00, $06, $00

    db $de

    db $c5, $02, $74, $ff, $33, $1e, $2b, $00, $27, $10, $00, $15, $96, $00, $09, $08
    db $1b, $1d, $0d, $14, $0d, $1d, $1b, $20, $17, $8a, $00, $09, $df, $00, $1f, $2b
    db $00, $05, $21, $01, $02, $25, $05, $06, $2d, $21, $8c, $00, $74, $00, $04, $8c
    db $00, $84, $62, $01, $00, $21, $d1, $00, $a0, $02, $01, $02, $03, $26, $21, $02
    db $04, $05, $06, $8d, $00, $92, $00, $03, $86, $00, $cb, $89, $00, $c3, $01, $01
    db $02, $2b, $00, $02, $06, $21, $21, $8b, $00, $c8, $84, $00, $cc, $d9, $00, $9f
    db $91, $00, $8e, $62, $07, $62, $07, $62, $07, $01, $23, $23, $83, $01, $46, $84
    db $01, $40, $2b, $00, $05, $12, $11, $11, $11, $12, $11, $23, $12, $85, $01, $64
    db $02, $11, $11, $12, $cc, $01, $60, $49, $0b, $0c, $2b, $00, $49, $0e, $0f, $93
    db $00, $54, $00, $13, $22, $10, $db, $00, $27, $00, $16, $62, $18, $07, $1c, $1f
    db $22, $24, $26, $27, $0a, $1b, $f8, $36, $00, $7f, $94, $00, $0b, $ff, $03

    rst $38
    nop
    rst $38
    ld a, h

    db $41

    rst $38
    db $ee

    db $03

    rst $38
    cp $ff
    db $ee

    db $42

    rst $38
    nop

    db $01

    rst $38
    db $fc

    db $41

    rst $38
    db $ee

    db $ca, $00, $16, $04

    cp $ff
    ldh [rIE], a
    db $fc

    db $c7, $00, $26, $2e

    rst $38

    db $02

    nop
    rst $38
    nop

    db $c6, $00, $08, $02

    jr c, @+$01

    db $10

    db $92, $00, $2c, $05

    ccf
    rst $38
    nop
    ld hl, sp+$00
    db $e0

    db $41

    nop
    ret nz

    db $42

    nop
    add b

    db $00

    nop

    db $af, $00, $60, $41

    rst $38
    rrca

    db $41

    rst $38
    rlca

    db $c6, $00, $86, $00

    ccf

    db $cd, $00, $6e, $ce, $00, $80, $b3, $00, $4d, $06

    rst $38
    nop
    nop
    rst $38
    nop
    cp $01

    db $41

    rst $38
    nop

    db $03

    rst $18
    nop
    rst $38
    nop

    db $83, $00, $c0, $a8, $00, $c8, $02

    nop
    cp $01

    db $af, $00, $80, $07

    rst $38
    ld a, a
    add b
    add b
    sbc a
    add b
    cp [hl]
    add c

    db $41

    cp a
    add b

    db $0a

    sbc a
    add b
    cp a
    add b
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    ld [hl], a

    db $4d

    nop
    rst $38

    db $00

    db $fc

    db $85, $00, $16, $88, $00, $0a, $00

    rst $28

    db $84, $00, $04, $00

    rst $28

    db $88, $00, $0a, $41

    ldh [rIE], a

    db $00

    db $e0

    db $96, $00, $28, $83, $00, $3d, $00

    rst $08

    db $84, $00, $04, $02

    rst $08
    rst $38
    db $0e

    db $86, $00, $0c, $00

    db $ce

    db $84, $00, $04, $05

    adc $ff
    rrca
    rst $38
    nop
    rst $38

    db $30

    nop

    db $c4, $01, $7e, $00

    db $0e

    db $83, $01, $92, $c8, $01, $34, $c3, $01, $43, $00

    ret nz

    db $c6, $01, $a6, $8b, $01, $8f, $00

    db $0e

    db $c8, $00, $12, $02

    ld c, $ff
    db $ce

    db $8a, $01, $b8, $04

    db $fc
    rst $38
    ld e, $ff
    ld a, h

    db $c7, $01, $d6, $ff, $33, $15, $2b, $00, $27, $03, $00, $05, $96, $00, $09, $08
    db $11, $14, $02, $04, $02, $14, $11, $1d, $08, $8a, $00, $09, $df, $00, $1f, $8b
    db $00, $34, $29, $11, $d5, $00, $89, $03, $11, $11, $06, $07, $9c, $00, $84, $02
    db $06, $18, $0a, $29, $11, $01, $06, $07, $8f, $00, $90, $02, $06, $18, $18, $89
    db $00, $a3, $83, $00, $e0, $8e, $00, $91, $01, $18, $18, $8a, $00, $e1, $00, $09
    db $83, $01, $01, $91, $00, $f2, $00, $0a, $8a, $00, $e5, $01, $18, $0a, $90, $00
    db $f2, $8a, $01, $24, $93, $01, $0e, $00, $0a, $87, $00, $cb, $00, $06, $25, $18
    db $00, $07, $8e, $00, $f3, $00, $07, $86, $00, $eb, $02, $06, $18, $0f, $42, $0d
    db $0c, $00, $0d, $2b, $00, $29, $10, $d5, $01, $a9, $26, $15, $00, $0b, $23, $03
    db $da, $00, $27, $04, $0e, $12, $13, $16, $17, $63, $19, $02, $02, $14, $01, $f8
    db $37, $00, $80, $94, $00, $0b, $ff, $03

    rst $38
    nop
    rst $38
    ld a, h

    db $41

    rst $38
    db $ee

    db $03

    rst $38
    cp $ff
    db $ee

    db $41

    rst $38
    nop

    db $04

    nop
    nop
    ld bc, $1f00

    db $41

    nop
    ld a, a

    db $c7, $00, $17, $46

    nop
    rst $38

    db $22

    nop

    db $00

    db $f8

    db $8a, $00, $21, $00

    db $f8

    db $24

    nop

    db $00

    add b

    db $41

    nop
    db $e0

    db $c6, $00, $47, $41

    rrca
    db $f0

    db $42

    rlca
    db $f8

    db $41

    inc bc
    db $fc

    db $09

    rrca
    rst $38
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    db $01

    db $c5, $00, $5b, $c4, $00, $51, $00

    inc a

    db $44

    nop
    rst $38

    db $00

    nop

    db $b0, $00, $5f, $0a

    ld hl, sp-$08
    inc b
    ld a, h
    ld [bc], a
    ldh [c], a
    ld bc, $1dc1
    add e
    dec a

    db $41

    inc bc
    ld a, l

    db $00

    inc bc

    db $af, $00, $50, $03

    rst $38
    nop
    rst $38
    db $fc

    db $84, $00, $04, $00

    db $fc

    db $85, $00, $0a, $8b, $00, $a2, $03

    ret nz

    ccf
    add b
    ld a, a

    db $25

    nop

    db $09

    ld bc, $0601
    ld b, $19

jr_01b_4458:
    jr jr_01b_4458

    pop hl
    db $fc
    inc bc

    db $af, $00, $c0, $41

    ld a, l
    inc bc

    db $03

    ld a, c
    add a
    db $31
    rst $08

    db $41

    ld [bc], a
    db $fe

    db $03

    ld [bc], a
    ld a, $02
    db $0e

    db $46

    nop
    rst $38

    db $01

    rrca
    rst $38

    db $2f

    nop

    db $0b

    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    ld e, $ff
    db $fc

    db $d1, $01, $22, $01

    inc bc
    inc bc

    db $44

    add b
    ld a, a

    db $84, $00, $aa, $09

    rrca
    add hl, bc
    rlca
    dec sp
    ld b, $bf
    ld b, h
    cp a
    ld a, b
    ccf

    db $41

    ldh [$ff5f], a

    db $02

    ldh [$ff8f], a
    db $f0

    db $af, $01, $40, $00

    db $c3

    db $42

    rlca
    ei

    db $08

    rlca
    di
    rrca
    rst $00
    ccf
    ld c, $fe
    ld a, b
    db $f8

    db $23

    rst $38

    db $41

    rst $38
    db $fe

    db $c6, $01, $86, $83, $00, $af, $04

    cp $ff
    ldh [rIE], a
    db $fc

    db $c6, $01, $96, $00

    nop

    db $83, $01, $90, $43

    rst $38
    db $38

    db $41

    rst $38
    nop

    db $0f

    INCBIN "gfx/image_01b_44d5.2bpp"

    db $2d

    nop

    db $c3, $00, $d7, $0d

    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0e
    ld [$3839], sp
    ld h, a
    ld h, a
    ret nz

    ret nz

    db $a5, $01, $d0, $04

    or b
    db $10
    ld h, b
    ld h, b
    add b

    db $c4, $00, $44, $0e

    rlca
    nop
    di
    nop
    cp $01
    ld e, $e1
    jr c, @-$37

    ld h, a
    sbc a
    db $fc

jr_01b_4513:
    ld a, a
    db $e0

    db $2f

    rst $38

    db $00

    ret nz

    db $8a, $01, $90, $04

    ldh [rIE], a
    nop
    rst $38
    nop

    db $2e

    rst $38

    db $0b

    nop
    ei
    rlca
    sub h
    ld l, a
    jr c, @-$2f

    jr nc, @-$1f

    ld h, b
    rst $38
    add b

    db $84, $00, $22, $0d

    rlca
    ld b, $3f
    add hl, sp
    cp $fe
    ld bc, $3f00
    inc bc
    sbc h
    ld a, h
    ld h, b
    db $e0

    db $23

    add b

    db $07

    rst $38
    rst $38
    ld [hl], e
    rrca
    db $fc
    inc a
    ret nz

    ret nz

    db $86, $01, $1a, $06

    rst $38
    add e
    add e
    nop
    ld bc, $031c

    db $41

    ld a, $01

    db $03

    cp a
    add b
    rst $18
    ret nz

    db $c3, $02, $53, $03

    ccf
    add b
    inc a
    db $c3

    db $a4, $00, $19, $02

    ldh [$ff03], a
    db $e0

    db $84, $01, $20, $00

    db $e0

    db $83, $00, $04, $01

    rst $38
    ld a, [hl]

    db $86, $00, $22, $c5, $00, $07, $02

    jr c, @+$01

    db $10

    db $92, $02, $1c, $1a

    INCBIN "gfx/image_01b_4589.2bpp"

    ld bc, $ffff
    inc bc
    inc bc
    ld a, $01
    cp $01
    ld a, h
    add e

    db $85, $00, $39, $06

    ld a, a
    ld a, a
    ldh [$ffe0], a
    add e
    add b
    rra

    db $84, $00, $87, $07

    rlca
    ld hl, sp+$00
    rrca
    rst $38
    rst $38
    rlca
    ld a, a

    db $c3, $02, $cc, $02

    nop
    db $01
    db $38

    db $c4, $01, $6c, $05

    ldh a, [$fff0]
    ret nz

    ret nz

    rra
    add b

    db $85, $00, $86, $03

    inc bc
    db $fc
    nop
    rst $38

    db $41

    rst $38
    rrca

    db $41

    rst $38
    rlca

    db $c6, $03, $06, $02

    ccf
    ld hl, sp+$03

    db $45

    ld hl, sp+$07

    db $06

    ldh a, [rIF]
    ld bc, $03f0
    ldh [rTAC], a

    db $41

    ret nz

    rrca

    db $c4, $00, $ac, $04

    rrca
    ldh a, [$ffe0]
    rlca
    db $f0

    db $85, $03, $11, $0e

    ld b, $f0
    inc c
    pop hl
    jr @-$3b

    jr c, jr_01b_4623

    rra

Jump_01b_4605:
    rlca
    rra
    pop af
    rrca
    ld hl, sp+$07

    db $a4, $02, $d8, $c3, $02, $b5, $0b

    ldh a, [$ffc7]
    ret nz

    rra
    add b
    ld a, a
    add b
    ld e, $e1
    nop
    rst $38
    nop

    db $c5, $00, $8e, $03

    inc a

jr_01b_4623:
    add b
    ld a, b
    nop

    db $83, $03, $21, $02

    ldh [rIF], a
    db $e0

    db $83, $02, $fa, $a5, $02, $78, $02

    ldh [$ff03], a
    db $f0

    db $c3, $00, $54, $02

    ld c, $83
    ld a, b

    db $a3, $03, $53, $08

    nop
    rst $38
    nop
    jp $8100


    inc a
    nop
    ld a, [hl]

    db $85, $01, $0a, $02

    ld c, $ff
    rrca

    db $c6, $03, $96, $83, $02, $0f, $04

    adc $ff
    xor $ff
    db $ce

    db $c6, $03, $a6, $00

    nop

    db $a3, $03, $38, $06

    rrca
    jr nc, @+$09

    jr @+$05

    inc e
    add b

    db $84, $03, $26, $00

    db $f0

    db $41

    ld c, $f1

    db $04

    ld c, $e1
    ld e, $c1
    db $3e

    db $84, $03, $84, $00

    rst $38

    db $44

    rst $38
    nop

    db $c3, $00, $ef, $01

    ld a, b
    add a

    db $86, $00, $d0, $04

    nop
    rrca
    nop
    ld a, a
    nop

    db $87, $01, $2c, $00

    rrca

    db $4c

    nop
    rst $38

    db $02

    nop
    ret nz

    db $3e

    db $83, $03, $62, $85, $03, $79, $83, $00, $52, $c4, $00, $85, $03

    rlca
    ldh [$ff03], a
    db $f8

    db $c6, $00, $ee, $06

    nop
    rst $38
    nop
    db $fc
    ld bc, $03f0

    db $84, $03, $6b, $83, $00, $52, $cc, $03, $ec, $01

    nop
    nop

    db $ce, $03, $fd, $00

    nop

    db $c7, $02, $1f, $00

    db $e0

    db $83, $01, $98, $92, $02, $1c, $06

    rst $38
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp+$03

    db $a6, $02, $f6, $06

    ld a, $00
    cp $03
    inc bc
    db $fc
    db $fc

    db $a5, $02, $e4, $00

    inc c

    db $83, $00, $83, $83, $03, $ce, $04

    nop
    ld a, a
    add b
    inc e
    db $e3

    db $a6, $02, $78, $01

    rrca
    nop

    db $8e, $00, $1f, $22

    nop

    db $01

    nop
    db $fe

    db $8b, $00, $25, $09

    rst $38
    nop
    rst $00
    nop
    add e
    jr nc, jr_01b_4715

    ld a, b

jr_01b_4715:
    nop
    db $fc

    db $41

    nop
    db $fe

    db $02

    ld bc, $007f

    db $42

    ld a, a
    add b

    db $07

    ccf
    ret nz

    ccf
    ld b, b
    rra
    ld h, b
    rra
    db $e0

    db $44

    ldh a, [rIF]

    db $06

    ldh [rNR32], a
    ret nz

    jr c, @-$7e

    ld [hl], b
    rst $38

    db $ce, $04, $57, $c8, $04, $cc, $d1, $01, $35, $03

    cp $ff
    nop
    rst $38

    db $a6, $04, $e1, $03

    ld a, [hl]
    add c
    jr @-$17

    db $84, $00, $21, $02

    ld a, h
    ld c, $f1

    db $88, $00, $21, $00

    pop bc

    db $83, $00, $0f, $85, $03, $22, $00

    rra

    db $84, $03, $2b, $02

    inc bc
    db $fc
    ld a, a

    db $85, $01, $0f, $a3, $03, $e7, $ce, $04, $55, $02

    nop
    nop
    ret nz

    db $83, $00, $45, $00

    nop

    db $90, $03, $f5, $01

    inc a
    add b

    db $41

    ld a, b
    add c

    db $01

    ld [hl], b
    dec bc

    db $84, $00, $51, $04

    inc bc
    db $fc
    jr c, jr_01b_478f

    db $fc, $43

    inc bc

jr_01b_478f:
    db $fd

    db $0c

    inc bc
    ld sp, hl
    rlca
    ldh a, [rIF]
    rst $00
    ld hl, sp-$61
    ldh [$ff3f], a
    ret nz

    ld a, $c1

    db $83, $05, $38, $03

    add b
    rst $38
    db $c3
    rst $38

    db $cc, $05, $6c, $01

    nop
    nop

    db $c3, $05, $7d, $8f, $01, $13, $04

    ld a, h
    rst $38
    xor $ff
    db $ee

    db $c6, $05, $e6, $a6, $05, $63, $a6, $05, $c0, $01

    nop
    nop

    db $af, $05, $ef, $00

    nop

    db $a6, $03, $64, $00

    rrca

    db $43

    ldh [$ff1f], a

    db $a3, $02, $fc, $01

    nop
    db $fc

    db $a3, $02, $b8, $01

    rrca
    add b

    db $83, $06, $21, $0b

    ld a, a
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    rrca
    rra
    add a
    rrca
    db $c3
    rra

    db $41

    db $c3
    ccf

    db $02

    ret nz

    rst $38
    ret nz

    db $43

    rst $38
    add b

    db $84, $01, $47, $00

    nop

    db $45

    rst $38
    db $01

    db $02

    rst $38
    nop
    rst $38

    db $ff, $33, $47, $2b, $00, $27, $22, $00, $2a, $96, $00, $09, $08, $40, $46, $19
    db $29, $19, $46, $40, $52, $30, $8a, $00, $09, $df, $00, $1f, $2b, $00, $23, $11
    db $05, $3e, $3f, $4b, $4c, $56, $57, $22, $11, $06, $44, $45, $50, $51, $5c, $5d
    db $11, $8f, $00, $74, $85, $00, $8d, $25, $11, $d0, $00, $a3, $03, $5f, $40, $40
    db $60, $23, $11, $84, $00, $c0, $92, $00, $ae, $23, $11, $63, $01, $27, $11, $62
    db $01, $d5, $00, $bf, $85, $00, $e3, $8f, $00, $b0, $62, $2b, $62, $48, $02, $09
    db $11, $11, $62, $1c, $87, $00, $eb, $2b, $00, $62, $31, $62, $4d, $04, $0f, $13
    db $0d, $24, $25, $94, $00, $ab, $62, $36, $62, $53, $02, $17, $1b, $15, $62, $06
    db $62, $06, $84, $01, $69, $2b, $00, $62, $3b, $62, $59, $0d, $1f, $23, $0e, $0c
    db $58, $0e, $0c, $58, $0e, $0c, $58, $05, $0a, $10, $2b, $00, $62, $41, $63, $61
    db $0c, $58, $16, $14, $58, $16, $14, $65, $26, $27, $2e, $2f, $34, $35, $94, $00
    db $54, $02, $20, $22, $22, $db, $00, $27, $0b, $18, $39, $3a, $28, $40, $21, $5e
    db $0b, $19, $12, $1a, $40, $f8, $36, $00, $7f, $94, $00, $0b, $ff

    ld b, e
    nop
    rst $38
    rlca
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$0f
    ldh a, [$ff3f]
    ret nz

    ld b, l
    nop
    rst $38
    inc bc
    add b
    ld a, a
    ret nz

jr_01b_48e3:
    ccf
    ld c, e
    nop
    rst $38
    inc bc
    ld [$1cf7], sp
    db $e3
    jp $1f00


    ld b, [hl]
    nop
    rst $38
    ld bc, $3fc0
    xor e
    nop
    inc d
    adc l
    nop
    inc c
    and l
    nop
    ld e, b
    or a
    nop
    ld b, b
    inc bc
    jr nz, jr_01b_48e3

    ld [hl], b
    adc a
    jp Jump_01b_7f00


    ld b, [hl]
    nop
    rst $38
    ld bc, $fe01
    ld b, l
    nop
    rst $38
    and e
    nop
    ld [$008b], sp
    ld d, b
    add e
    nop
    ld a, [bc]
    ld b, e
    rst $38
    nop
    add hl, bc
    rst $30
    nop
    jp $0100


    nop
    rlca
    nop
    ldh a, [rIF]
    call Call_01b_7f00
    inc bc
    ld bc, $07fe
    ld hl, sp-$3c
    nop
    and e
    inc b
    nop
    db $fc
    nop
    ldh a, [rP1]
    add e
    nop
    rrca
    xor c
    nop
    db $e4
    ld [bc], a
    nop
    nop
    nop
    xor b
    nop
    pop bc
    dec b
    rst $00
    nop
    ld bc, $0000
    nop
    adc l
    nop
    adc a
    dec b
    ld a, [hl]
    nop
    nop
    nop
    db $fc
    inc bc
    xor l
    ld bc, $0102
    rrca
    ldh a, [$ffca]
    nop
    add hl, hl
    adc b
    nop
    db $fd
    inc b
    ei
    nop
    pop af
    nop
    ret nz

    inc h
    nop
    ld [bc], a
    ldh [$ff1f], a
    rst $38
    adc b
    nop
    rst $28
    add l
    ld bc, $062c
    cp $01
    ld hl, sp+$07
    ldh [rIF], a
    ret nz

    ld b, c
    rrca
    nop
    inc b
    rlca
    nop
    ld bc, $7f80
    ld b, a
    nop
    rst $38
    ld b, $01
    cp $0f
    ldh a, [rTMA]
    ld hl, sp+$04
    ld b, c
    ld hl, sp+$00
    ld [bc], a
    ldh a, [rP1]
    ret nz

    and a
    nop
    jp nc, $7f07

    nop
    rra
    nop
    rlca
    nop
    nop
    nop
    xor a
    ld bc, $8390
    nop
    ld a, [de]
    add l
    nop
    db $f4
    nop
    rra
    call nz, $cf00
    ld bc, $000f

jr_01b_49b6:
    and l
    ld bc, $0689
    rlca
    nop
    add hl, de
    nop
    rra
    nop
    rra
    ret


    nop
    xor b
    inc bc
    nop
    ld hl, sp+$00
    rlca
    add e
    nop
    db $dd
    inc bc
    nop
    add e
    nop
    add a
    call nz, $fb00
    nop
    rst $38
    add [hl]
    ld bc, $02a9
    add b
    nop
    ldh [$ffaa], a
    ld bc, $02d1
    stop
    inc a
    ret nc

    ld bc, $001b
    add e
    add [hl]
    nop
    push hl
    jp $ea00


    nop
    jr jr_01b_49b6

    ld bc, $a31d
    ld bc, $4148
    ld bc, $0400
    inc bc
    nop
    ld [bc], a
    nop
    rrca
    sub b
    ld [bc], a
    inc bc
    adc c
    ld bc, $06f2
    rst $38
    nop
    ld [$1c00], sp
    nop
    ccf
    adc [hl]
    ld [bc], a
    dec b
    xor e
    nop
    rrca
    ld [bc], a
    nop
    ld a, a
    ldh [$ffaa], a
    ld bc, $02cd
    rst $38
    nop
    ld [bc], a
    call nz, $9d01
    nop
    db $fc
    and h
    ld bc, $026a
    ldh a, [rP1]
    db $fc
    and l
    ld [bc], a
    ld e, a
    xor d
    ld [bc], a
    add l
    inc b
    stop
    jr c, jr_01b_4a36

jr_01b_4a36:
    cp $8c
    ld [bc], a
    dec b
    and a
    ld bc, $00f2
    ldh a, [$ffa3]
    ld [bc], a
    daa
    ld bc, $3f00
    ld c, [hl]
    nop
    rst $38
    ld b, c
    nop
    ret nz

    nop
    nop
    adc e
    ld [bc], a
    ld [hl], d
    ld [bc], a
    rrca
    nop
    rrca
    jp z, $ff01

    ld [bc], a
    rst $38
    nop
    adc a
    adc [hl]
    nop
    jr nz, jr_01b_4a61

    add b
    nop

jr_01b_4a61:
    ret nz

    xor h
    ld [bc], a
    ld sp, $00ad
    ld l, $01
    ld a, [hl]
    add c
    adc e
    ld bc, $02d0
    ldh [rP1], a
    add b
    add a
    inc bc
    scf
    ld [hl+], a
    nop
    inc b
    ld [$3000], sp
    nop
    ldh [$ffa8], a
    inc bc
    scf
    rlca
    stop
    adc h
    nop
    rst $08
    nop
    rst $20
    nop
    xor l
    inc bc
    jr nc, jr_01b_4a8d

jr_01b_4a8d:
    pop bc
    adc d
    inc bc
    ccf
    nop
    nop
    jp $5f01


    xor [hl]
    inc bc
    ld l, a
    ld bc, $0004
    xor a
    inc bc
    jr nc, @-$31

    ld bc, $0385
    ld a, $00
    ld bc, $84fe
    nop
    cp [hl]
    add l

jr_01b_4aab:
    nop
    jp hl


    adc $02
    ld h, c
    jp $c001


    ld [bc], a
    add b
    ld a, a
    rst $38
    call z, $7f02
    ld b, $55
    nop
    xor d
    nop
    rst $38
    nop
    ld [hl], a
    ld b, h
    nop
    rst $38
    ld c, $ff
    nop
    nop
    rst $00
    db $10
    adc a
    jr nz, jr_01b_4aec

    ld b, b
    inc a
    add c
    ld a, c
    ld [bc], a
    ldh a, [c]
    inc b
    add e
    inc bc
    ldh a, [rNR31]
    sub c
    jr nz, @+$25

    ld b, b
    ld b, a
    add b
    adc [hl]
    nop
    inc e
    ld bc, $0238
    rst $38
    cp $01
    ld bc, $11c5
    adc l

jr_01b_4aec:
    ld hl, $4519
    ld sp, $618d
    add hl, de
    push bc
    ld sp, $0389
    ld b, b
    inc b
    inc bc
    nop
    ld c, $00
    inc a
    jp z, $7f03

jr_01b_4b01:
    nop
    nop
    adc b
    inc bc
    add a
    nop
    inc b
    ld b, c
    nop
    inc c
    ld b, c
    nop
    inc e
    dec b
    nop
    inc a
    nop
    inc bc
    nop
    ld bc, $002e
    add e
    inc bc
    ld [de], a
    ld [bc], a
    ld a, h
    nop
    ccf
    add l
    ld bc, $00c3
    nop
    xor e
    inc b
    jr nz, jr_01b_4aab

    ld [bc], a
    adc h
    add [hl]
    ld [bc], a
    ld a, a
    nop
    pop hl
    xor h
    inc b
    ld d, c
    nop
    ret nz

    xor b
    ld [bc], a
    dec d
    ld [bc], a
    nop
    nop
    jr jr_01b_4b01

    inc bc
    xor a
    ld [bc], a
    cp $00
    cp $a6
    ld bc, $0259
    jr nc, jr_01b_4b47

jr_01b_4b47:
    ret nz

    or d
    inc bc
    ld [hl], a
    and h
    inc b
    ld a, d
    xor b
    inc b
    ld [hl], a
    add h
    nop
    db $e4
    and a
    inc b
    ld h, a
    or d
    inc b
    ld c, a
    nop
    nop
    add [hl]
    ld [bc], a
    add hl, hl
    nop
    inc a
    ld b, c
    nop
    ld a, h
    ld b, h
    nop
    db $fc
    ld b, c
    nop
    ld b, b
    ld b, c
    nop
    ld h, b
    ld b, c
    nop
    ld [hl], b
    ld b, c
    nop
    ld a, b
    ld bc, $ff00
    xor [hl]
    inc b
    rst $10
    xor e
    inc b
    ret nc

    add l
    inc bc
    inc c
    nop
    pop hl
    call z, $7e01
    adc a
    ld bc, $0071
    nop
    pop de
    ld [bc], a
    pop hl
    inc b
    db $fc
    rst $38
    xor $ff
    db $fc
    jp z, Jump_01b_7605

    ld [bc], a
    db $fc
    rst $38
    xor $86
    dec b
    ld [hl], h
    ld [bc], a
    nop
    rst $38
    nop
    ld l, $ff
    add e
    ld bc, $0091
    ld a, [hl]
    ld b, c
    rst $38
    ldh [$ffc6], a
    dec b
    and [hl]
    push bc
    dec b
    adc a
    ld b, $ee
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    db $10
    adc b
    dec b
    adc h
    inc b
    cp $ff
    cp $ff
    cp $c8
    dec b
    sub [hl]
    ld [$fffe], sp
    ldh [rIE], a
    db $fc
    rst $38
    ldh [rIE], a
    cp $8a
    dec b
    xor h
    inc b
    xor $ff
    cp $ff
    ld c, $ca
    dec b
    or d
    inc b
    xor $ff
    xor $ff
    ld a, [hl]
    sub d
    dec b
    adc h
    nop
    nop
    jr nc, @+$01

    nop
    nop
    ld b, h
    rst $38
    ld c, $d2
    dec b
    and d
    ld [bc], a
    ccf
    rst $38
    nop
    ld b, d
    rst $38
    ldh [$ff88], a
    dec b
    ret c

    ld [bc], a
    rrca
    rst $38
    rrca
    and [hl]
    dec b
    and h
    ld b, c
    rrca
    rst $38
    nop
    ccf
    rst $38
    inc sp
    ld h, c
    dec hl
    nop
    daa
    ld h, b
    nop
    ld h, e
    sub [hl]
    nop
    add hl, bc
    ld [$642d], sp
    ld e, l
    ld e, e
    ld e, l
    ld h, h
    dec l
    ld e, [hl]
    ld h, l
    adc d
    nop
    add hl, bc
    rst $18
    nop
    rra
    dec hl
    nop
    inc bc
    ld bc, $3202
    ld [bc], a
    ld l, b
    nop
    ld b, $02
    add hl, bc
    ld a, [bc]
    ld [bc], a
    dec bc
    ld b, $02
    dec hl
    nop
    ld h, e
    ld a, [hl-]
    ld l, a
    inc c
    dec hl
    nop
    ld h, e
    ld c, b
    ld l, a
    inc e
    dec hl
    nop
    inc bc
    ld d, h
    ld d, l
    dec l
    ld d, [hl]
    ld h, e
    inc l
    ld [bc], a
    dec l
    dec l
    jr nc, jr_01b_4c73

    dec l
    nop
    ld sp, $008b
    inc [hl]
    add hl, hl
    dec l
    ret


    ld bc, $8509
    nop
    db $f4
    ld hl, sp+$25
    ld bc, $0219
    dec l
    dec l
    inc sp
    ld h, d
    scf
    daa
    dec l
    add e
    ld bc, $8d42
    ld bc, $0012
    inc sp
    ld h, l
    ld b, d
    nop
    add hl, sp
    ld h, e

jr_01b_4c73:
    inc sp
    add a
    ld bc, $2b60
    nop
    ld b, h
    ccf
    ld b, b
    nop
    ld b, c
    ld h, l
    ld c, h
    ld [bc], a
    ld b, l
    ld d, d
    ld d, e
    dec hl
    nop
    add hl, hl
    ld a, $c9
    ld bc, $97a9
    nop
    ld d, h
    nop
    ld e, c
    db $dd
    nop
    ld h, $08
    ld e, h
    ld h, d
    ld e, d
    ld e, l
    ld d, a
    ld e, l
    ld e, b
    ld e, a
    dec l
    ld hl, sp+$36
    nop
    ld a, a
    sub h
    nop
    dec bc
    rst $38
    ld b, $00
    nop
    rlca
    nop
    jr jr_01b_4cac

jr_01b_4cac:
    jr nz, jr_01b_4cef

    nop
    ld b, b
    ld b, c
    nop
    add b
    ld bc, $ff00
    jr nc, jr_01b_4cb8

jr_01b_4cb8:
    xor l
    nop
    ld [bc], a
    dec d
    rlca
    rlca
    inc c
    ld [$0809], sp
    ld de, $1310
    db $10
    inc hl
    jr nz, jr_01b_4cf0

    jr nz, jr_01b_4d12

    ld b, b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, c
    and b
    ld h, b
    ld [de], a
    or b
    ld [hl], b
    adc b
    ld l, b
    inc b
    db $e4
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld [hl], b
    nop
    inc a
    nop
    rra
    nop
    rlca
    inc l
    nop
    nop
    add c
    ld b, c
    nop

jr_01b_4cef:
    rst $38

jr_01b_4cf0:
    nop
    nop
    or l
    nop
    ld d, b
    inc hl
    ld bc, $0225
    dec d
    ld c, a
    ld b, b

Call_01b_4cfc:
    adc a
    add b
    sbc a
    add b
    ld e, $01
    ld a, $01
    inc a
    inc bc
    ld a, b
    rlca
    ld [hl], b
    rrca
    ld [bc], a
    add $0d
    jp $c10f


    ld b, h
    rra

jr_01b_4d12:
    add b
    and a
    nop
    add b
    ld bc, $c040
    add l
    nop
    ld b, [hl]
    dec hl
    nop
    add e
    nop
    adc b
    ld a, [de]
    inc b
    inc b
    inc c
    inc c
    jr jr_01b_4d3a

    inc h
    inc hl
    ld c, h
    ld b, e
    sbc b
    add [hl]
    jr nc, jr_01b_4d3e

    ld h, b
    rra
    ldh [$ff1f], a
    ret nz

    ccf
    add b
    ld [hl], b
    inc bc
    ret nz

jr_01b_4d3a:
    rrca
    add b
    ccf
    add h

jr_01b_4d3e:
    nop
    ld l, e
    rlca
    rra
    add b
    ld c, $c1
    nop
    rst $38
    ret nz

    ld a, $41
    ldh [rNR32], a
    ldh [rNR44], a
    pop hl
    jr jr_01b_4d12

    jr c, jr_01b_4d5b

    add sp, $04
    call nz, Call_000_021e
    ccf
    ld [bc], a
    ld a, a

jr_01b_4d5b:
    ld bc, $00ff
    cp $01
    db $fc
    inc bc
    nop
    nop
    ld [$9800], sp
    nop
    or b
    nop
    ld b, c
    or b
    sbc a
    ldh [rSCY], a
    db $fc
    ld [hl], h
    ld hl, sp-$56
    nop
    jr @+$06

jr_01b_4d76:
    rlca
    inc c
    ld [$7071], sp
    xor l
    nop
    ret nz

    dec e
    ret nz

    ld b, b
    inc b
    inc b
    add hl, bc
    ld [$1112], sp
    inc [hl]
    inc hl
    jr z, @+$28

    ret nz

    db $fc
    ld bc, $4338
    jr nc, jr_01b_4d12

    ld a, a
    nop
    db $fc
    nop
    sbc b
    ld sp, $7308
    ld [$08f3], sp
    ld b, c
    db $e3
    jr jr_01b_4dac

    ld a, a
    add b
    inc e
    db $e3
    nop
    ld a, [hl]
    ret nz

    inc a
    ldh [rNR32], a
    pop af

jr_01b_4dac:
    inc c
    ld b, c
    pop af
    ld [HeaderLogo], sp
    db $fc
    nop
    sbc a
    jr nc, jr_01b_4df8

    rrca
    ldh a, [rP1]
    ld c, $42
    ldh a, [$ff0c]
    add hl, bc
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $00
    nop
    inc bc
    ld e, $01
    ld b, c
    ld a, a
    nop
    ld [$00ff], sp
    rrca
    call z, $c323
    ld a, b
    add b
    ld a, [hl]
    call nz, $e400
    inc bc
    rrca
    ldh a, [$ff87]
    ld a, b
    ld b, c
    ld [$0a00], sp
    call z, Call_000_35c0
    jr c, jr_01b_4d76

    inc c
    db $e3
    inc bc
    ld hl, sp+$00
    cp $22
    nop
    inc c
    add h
    nop
    adc h
    nop

jr_01b_4df4:
    ret c

    nop
    ld [hl], c
    adc b

jr_01b_4df8:
    ld c, a
    or b
    call z, Call_000_3ff3
    and e
    ld bc, $18ae
    nop
    ld [$6c00], sp
    nop
    rlc a
    inc e
    adc h
    ldh a, [$ff30]
    ld b, e
    ret nz

    ld bc, $0601
    ld b, $3c
    inc a
    ret nz

    call z, Call_000_0c00
    ld hl, $8318
    nop
    db $fc
    rlca
    sub e
    sbc b
    inc bc
    inc c
    jr c, @+$09

    db $fc
    inc bc
    ld b, d
    cp $01
    ld de, $03fc
    ldh [rNR41], a
    or b
    ld [hl], b
    ld [$0cc8], sp
    add h

jr_01b_4e34:
    ld e, $82
    rra
    ld bc, $001f
    ccf
    nop
    xor [hl]
    nop
    ret nz

    nop
    ret nz

    inc hl
    nop
    dec bc
    ld b, b
    nop
    ld h, b
    nop
    ld [hl], a
    rlca
    cp b
    ld a, b
    rst $00
    ret nz

    inc a
    inc bc
    add e
    ld bc, $1740
    inc de
    db $10
    rst $20
    ldh a, [$ff2f]
    db $10
    rst $20
    jr jr_01b_4e5d

jr_01b_4e5d:
    rst $38
    nop
    jp $30c7


    rst $00
    jr nz, jr_01b_4df4

    ld h, b
    adc a
    ld b, b
    ld e, $c1
    inc e
    db $e3
    and e
    ld bc, $1982
    jp $c138


    inc a
    add b
    ld a, a
    nop
    ldh a, [rSB]
    ldh [$ff03], a
    ret nz

    rlca
    ret nz

    rrca
    add b
    pop af
    ld [$1ce1], sp
    nop
    db $fc
    ret nz

    ld a, $e0
    ld e, $41
    ldh [$ff1f], a
    ld bc, $1ce0
    ld b, c
    ldh a, [$ff0c]
    dec bc
    ldh [rNR32], a
    ld b, b
    inc a
    nop

jr_01b_4e99:
    ld a, h
    inc b
    jp nz, $0e10

    ld b, b
    ccf
    ld b, a

jr_01b_4ea1:
    rst $38
    nop
    inc bc
    add e
    ld a, h
    pop bc
    ld c, $41
    ld hl, sp+$07
    call nz, $9d01
    inc bc
    jr c, jr_01b_4e34

    ld h, b
    rst $38
    call nz, $8401
    inc bc
    rra
    ldh [rTAC], a
    ld hl, sp+$41
    nop
    rst $38
    add hl, bc
    ret nz

    ccf
    ldh [$ff3f], a
    add b
    ld [hl], c
    add e
    ld h, b
    add a
    ld h, b
    ld b, d
    rrca
    ret nz

    inc de
    rra
    ldh [$ff8f], a
    add b
    ld a, $81
    ld [hl], b
    adc a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, b
    ret nz

    jr nc, jr_01b_4ea1

    jr nc, jr_01b_4ea1

    jr c, @-$58

    nop
    jp hl


    ld [bc], a
    ld c, $38
    ld b, $41
    ld hl, sp+$04
    add e

jr_01b_4eec:
    ld [bc], a
    add [hl]
    ld b, $00
    rst $38
    nop
    rlca
    inc e
    inc bc
    inc a
    ld b, c
    inc bc
    ld a, h
    ld [$3f03], sp
    nop
    ld a, $81

jr_01b_4eff:
    inc e
    add e
    nop
    rst $08
    ld b, c
    nop
    cp $12
    nop
    add e
    nop
    ld bc, $c040
    jr nc, jr_01b_4eff

    jr jr_01b_4e99

    inc e
    inc b
    ld e, $02
    ccf
    ld bc, $003f
    ccf
    call z, Call_000_3c01
    ldh [$ff27], a
    sub c
    add b
    pop af
    ret nz

    ldh a, [rIF]
    ret nz

    inc a
    nop
    ld hl, sp+$01
    ldh a, [$ff03]
    ldh [rTAC], a
    ldh [$ff87], a
    ld [hl], b
    ret nz

    ccf
    inc c
    inc bc
    inc a
    inc bc
    db $fc
    inc bc
    ld hl, sp+$06
    ldh a, [$ff0e]
    ret nz

    inc a
    nop
    db $fc
    nop
    cp $06
    add c
    ld c, $01
    add e

jr_01b_4f48:
    nop
    sub [hl]

jr_01b_4f4a:
    ld de, $013e
    ld a, [hl]
    ld bc, $037c
    ld hl, sp+$07
    rrca
    add b
    rra
    nop
    ld e, $01
    jr @+$09

    nop
    sbc a
    add h
    nop
    ld l, e
    inc bc
    cp $e1
    jr jr_01b_4eec

    and h
    ld [bc], a
    ld e, c
    ld b, $03
    db $fc
    add hl, bc
    add [hl]
    inc a
    inc bc
    ld a, [hl]
    and e
    nop
    ld c, $08
    cp $00
    db $fc
    add b
    ld a, b
    push bc
    jr c, jr_01b_4f48

    inc sp
    ld b, c
    inc c
    di
    ld [$c13e], sp
    add b
    ld a, [hl]
    ld b, b
    inc a
    ldh [rNR32], a
    nop
    push bc
    inc bc
    ld c, a
    inc bc
    rst $38
    rrca
    add b
    ccf
    and h
    ld [bc], a
    sub e
    nop
    ld h, b
    push bc
    nop
    ldh a, [rTMA]
    rst $38
    ldh [$ff1f], a
    add b
    ld a, [hl]

jr_01b_4fa0:
    nop
    db $fc
    and h
    nop
    and a
    inc c
    db $fc
    ld de, $788e
    rlca
    rrca
    ldh a, [rTAC]
    jr c, jr_01b_4fa0

    rrca
    db $fc
    inc bc
    add a
    ld bc, $04e6
    adc a
    ld h, b
    rrca
    ldh [rIF], a
    and l
    ld [bc], a
    pop de
    inc b
    rst $08
    jr jr_01b_4f4a

    inc a
    add e
    add l
    ld [bc], a
    ld h, b
    ld bc, $3ec0
    add e
    ld [bc], a
    inc a
    ld a, [de]
    rrca
    ret nz

    ccf
    add b
    ld a, b
    ld b, $f8
    inc b
    ldh a, [$ff0c]
    ldh [rNR23], a
    ret nz

    jr c, jr_01b_4fde

jr_01b_4fde:
    ldh a, [rSB]
    ldh a, [$ff81]
    ld h, b
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    adc b
    ld [bc], a
    ld [hl], c
    ld b, c
    ccf
    ret nz

    rlca
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    sbc h
    ld h, e
    ret nz

    ccf
    add e
    nop
    or $11
    inc sp
    ldh [rNR31], a
    ret nc

    ccf
    adc b
    scf
    adc h
    ccf
    add [hl]
    dec sp
    rlca
    ld a, b
    ld b, $f1
    inc c
    rst $38
    nop
    ld b, e
    rst $38
    ldh [rSB], a
    rst $38
    cp $86
    ld [bc], a
    ld [hl], b
    ld [$ffdc], sp
    db $dd
    rst $38
    ld sp, hl
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    add e
    ld [bc], a
    ld [hl], b
    cpl
    rst $38
    rrca
    ld c, $c2
    rra
    add c
    ccf
    ld bc, $017f
    rst $38
    ld bc, $03fd
    ld sp, hl
    rlca
    pop af
    rrca
    add $04
    ld e, $00
    db $fc
    adc d
    inc b
    jr jr_01b_5041

jr_01b_5041:
    ld sp, hl
    ld b, c
    rst $38
    db $dd
    call nz, $6604
    sub d
    nop
    rrca
    inc b
    pop bc
    ccf
    ld bc, $00fd
    add h
    inc bc
    sub a
    dec b
    inc bc
    db $fc
    ld bc, $018e
    ld b, $83
    nop
    nop
    ld [bc], a
    sbc b
    add b
    and b
    ld b, c
    add b
    ret nz

    inc h
    add b
    ld bc, $00ff
    ld b, c
    rst $38
    xor $05
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    db $10
    add [hl]
    ld [bc], a
    ld [hl], b
    ld b, $ce
    rst $38
    xor $ff
    cp $ff
    sbc $c5
    inc b
    or h
    inc bc
    dec e
    inc bc
    ld a, [hl]
    ld [bc], a
    ld b, l
    rst $38
    ld bc, $ff03
    nop
    rst $38
    di
    and h
    inc b
    ld h, h
    ld [bc], a
    di
    rst $38
    cp e
    call z, $6204
    inc b
    ld e, $ff
    db $fc
    rst $38
    nop
    ret


    inc b
    jp nc, Jump_01b_7f06

    add c
    ccf
    pop bc
    add hl, de
    rst $20
    ld [bc], a
    add e
    inc b
    dec de
    inc b
    ei
    rst $38
    add e
    rst $38
    di
    jp Jump_000_0605


    sub d
    inc b
    inc l
    jr jr_01b_50bb

jr_01b_50bb:
    ld [bc], a
    cp $04
    db $fc
    dec b
    db $fc
    rrca
    call nz, $831e
    ccf
    ld bc, $037d
    ldh a, [$ff0e]
    stop
    ld h, b
    nop
    and b
    ld b, b
    ld b, b
    add b
    jp $8101


    ld [bc], a
    db $10
    ldh [$ffa0], a
    jp $9e02


    nop
    ldh a, [rSTAT]
    rst $38
    cp b
    jp Jump_01b_4605


    sub d
    inc b
    inc l
    ld [bc], a
    ccf
    ret nz

    inc a
    ld b, c
    ld bc, $41f8
    inc bc
    ldh a, [$ff0c]
    rst $20
    ldh a, [rNR22]
    jr @+$41

    ld [$60d0], sp
    add sp, $50
    ret c

    ld b, b
    call nz, $4041
    ret nz

    nop
    ld b, b
    add [hl]
    inc b
    sbc h
    nop
    ld bc, $ff41
    inc bc
    add $05
    add [hl]
    and e
    dec b
    ld b, c
    nop
    rrca
    and [hl]
    inc b
    ld [de], a
    ld b, c
    rrca
    rst $38
    ld [bc], a
    ccf
    ld a, e
    inc c
    ld b, c
    db $fd
    rlca
    ld bc, $03ff

jr_01b_5125:
    ld b, c
    cp $02
    inc bc
    ei
    rlca
    ld sp, hl
    rlca
    add e
    inc b
    ld h, b
    ld b, c
    rst $38
    add e
    sub [hl]
    dec b
    ld [$f000], sp
    ld b, c
    pop af
    dec c
    inc bc
    db $e3
    add hl, de
    inc bc
    ld sp, hl
    ld b, d
    rlca
    pop af
    ld bc, $3907
    dec l
    nop
    ld bc, $0010
    adc b
    inc b
    ret nc

    nop
    ei

jr_01b_5150:
    add [hl]
    inc b
    jp c, $c002

    rst $38
    jp Jump_000_0586


    or h
    jp $0306


    ld [$03f0], sp
    dec e
    ld sp, $7b0f
    rlca
    ld a, [$4106]
    db $fd
    inc bc
    inc b
    rst $38
    ld bc, $07ff
    db $10
    ld b, c
    nop
    ld sp, $000a
    ld [hl], e
    nop
    ld d, e
    jr nz, jr_01b_5150

    ld hl, $639c
    rst $38
    rst $38
    ld b, c
    add b
    nop
    ld a, [bc]
    adc b
    nop
    sbc c
    nop
    or a
    nop
    rst $18
    jr nz, jr_01b_5125

    ld h, [hl]
    add e
    and h
    ld bc, $0afe
    ld d, b
    nop
    sub h
    nop
    or [hl]
    nop
    ld d, l
    ld [hl+], a
    sbc c
    ld h, a
    ld c, $83
    inc b
    dec de
    ld [$ff9d], sp
    db $dd

jr_01b_51a4:
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    sbc h
    and h
    nop
    db $ec
    ld c, $f8
    ccf
    jr nc, jr_01b_5211

    jr nz, jr_01b_5203

    jr nc, jr_01b_5202

    inc sp
    nop
    ld a, a
    add b
    ld a, h
    nop
    ldh a, [$ffc4]
    inc b
    ld [hl], b
    add h
    ld b, $70
    ld [bc], a
    ld bc, $0f80
    ld b, c
    nop
    ld a, a
    inc d
    ld a, a
    jr nz, jr_01b_51fe

    add e
    ld h, b
    rrca
    ldh [$ff1f], a
    ldh [$ff0e], a
    pop af
    add b
    ld a, a
    add [hl]
    ld h, c
    pop af
    ldh a, [$ff2f]
    jr nc, @-$17

    jr jr_01b_51a4

    ld [bc], a
    sub a
    ld bc, $e003
    add e
    ld [bc], a
    ld c, h
    rst $38
    inc sp
    ld b, e
    dec hl
    nop
    daa
    ld d, c
    nop
    ld d, l
    sub [hl]
    nop
    add hl, bc
    ld [$4127], sp
    ld b, l
    ld c, d
    ld b, l
    ld b, c
    daa
    ld c, [hl]

jr_01b_51fe:
    ld e, c
    adc d
    nop
    add hl, bc

jr_01b_5202:
    rst $18

jr_01b_5203:
    nop
    rra
    dec hl
    nop
    nop
    ld b, h
    jr z, jr_01b_5252

    ld h, d
    dec b
    ld h, $47
    dec hl
    nop

jr_01b_5211:
    inc bc
    ld c, b
    ld c, c
    ld bc, $2d02
    ld b, a
    ld bc, $0100
    dec hl
    nop
    nop
    ld c, h
    add e
    nop
    adc d
    nop
    nop
    adc e
    nop
    and d
    ld bc, $0605
    dec hl
    nop
    nop
    ld c, a
    adc e
    nop
    add [hl]
    ld [bc], a
    nop
    ld bc, $8f02
    nop
    sub b
    ld bc, $5352
    dec h
    ld b, a
    ld bc, $0403
    add l
    nop
    add a
    adc a
    nop
    sub b
    ld bc, $5756
    inc h
    ld b, a
    ld h, e
    ld [$4701], sp
    ld b, a
    sub d
    nop

jr_01b_5252:
    adc l
    nop
    ld e, d
    inc h
    ld b, a
    ld h, l
    inc c
    inc hl
    ld b, a
    ld bc, $1312
    adc l
    nop
    sub d
    ld bc, $5e5d
    add e
    ld bc, $6c43
    inc d
    adc h
    nop
    sub e
    ld h, e
    ld h, c
    ld l, a
    ld hl, $002b
    ld h, e
    ld h, [hl]
    ld l, a
    ld sp, $0093
    ld d, h
    nop
    ld e, h
    ld [hl+], a
    ld d, c
    db $db
    nop
    daa
    dec bc
    ld h, b
    ld c, l
    ld d, b
    ld d, h
    ld e, b
    ld e, e
    ld e, a
    ld h, l
    ld b, d
    ld b, [hl]
    ld c, e
    daa
    ld hl, sp+$36
    nop
    ld a, a
    sub h
    nop
    dec bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, h
    ld b, c
    rst $38
    xor $03
    rst $38
    cp $ff
    xor $41
    rst $38
    nop
    ld l, $ff
    dec l
    nop
    ld [bc], a
    inc bc
    nop
    inc b
    jr z, jr_01b_52af

jr_01b_52af:
    ld [bc], a
    rra
    nop
    ldh [rNR44], a
    nop
    xor e

jr_01b_52b6:
    nop
    jr nc, @+$24

    nop
    cp c
    nop
    rra
    rst $00
    nop
    dec h
    ld [bc], a
    nop
    rst $38
    ld a, [hl]
    ld b, c
    rst $38
    ldh [$ffc3], a
    nop
    halt
    sub d
    nop
    inc c
    ld [bc], a
    ccf
    nop
    ld [$0041], sp
    stop
    db $10
    ld b, c
    jr nz, jr_01b_52f1

    inc b
    jr nz, jr_01b_52ea

    db $10
    rrca
    db $10
    adc h
    nop
    ld c, a
    ret nc

    nop
    ld e, [hl]
    ld bc, $0003
    xor a
    nop

jr_01b_52ea:
    sub b
    inc bc
    rst $38
    nop
    rst $38
    db $fc
    ld b, c

jr_01b_52f1:
    rst $38
    xor $c6
    nop
    sub $00
    nop
    ld b, c
    rst $38
    rrca
    and [hl]
    nop
    ld [hl], h
    ld b, c
    rrca
    rst $38
    ld b, $3f
    rlca
    ld [$0601], sp
    nop
    ld bc, $008c
    ld h, [hl]
    inc b
    nop
    ccf
    ret nz

    nop
    ccf
    xor a
    nop
    ld hl, sp-$39
    nop
    ld b, e
    or d
    nop
    ldh a, [rDIV]
    cp $ff
    ldh [rIE], a
    db $fc
    jp Jump_000_3601


    or h
    nop
    ld a, h
    add e
    nop
    dec hl
    ld bc, $080c
    ld b, c
    stop
    nop
    jr nz, jr_01b_52b6

    nop
    sub [hl]
    ld bc, $ff00
    sub d
    nop
    ld c, h
    xor d
    ld bc, $c455
    nop
    ld c, $02
    db $fc
    rst $38
    ld hl, sp-$3d

jr_01b_5346:
    ld bc, $b386
    nop
    call c, $0e03
    db $10
    inc bc
    inc c
    xor l
    nop
    xor l
    dec b
    rst $38
    nop
    ld a, [hl]
    add c
    nop
    ld a, [hl]
    daa
    nop
    xor a
    ld bc, $01a0
    rst $38
    nop
    ld b, d
    rst $38
    ldh [$ff83], a
    ld bc, $4938
    rst $38
    nop
    or b
    ld bc, $8668
    nop
    ld l, b
    sub a
    ld bc, $8860
    nop
    nop
    ld [bc], a
    xor $ff
    ld a, h
    sub d
    nop
    inc c
    nop
    rst $38
    add a
    ld bc, $9858
    ld bc, $aea0
    ld [bc], a
    ld b, c
    adc b
    nop
    ret nc

    dec b
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    adc e
    ld [bc], a
    ld l, a
    add h
    nop
    dec bc
    ld a, [bc]
    ret nz

    ret nz

    ldh a, [$ff30]
    inc a
    inc c
    ld c, $02
    inc bc
    ld bc, $8701
    nop
    ld l, e
    nop
    xor $87
    ld [bc], a
    inc h
    or [hl]
    ld [bc], a
    adc h
    add l
    ld [bc], a
    daa
    dec b
    jr c, @+$01

    db $10
    rst $38
    nop
    rst $38
    adc e
    ld [bc], a
    cp a
    nop
    jr c, jr_01b_5346

    ld bc, $00dc
    ld h, b
    jp Jump_01b_7c02


    add a
    ld [bc], a
    jr z, @+$01

    inc sp
    inc hl
    dec hl
    nop
    daa
    ld bc, $0800
    sub [hl]
    nop
    add hl, bc
    ld [$1d1e], sp
    inc de
    inc l
    inc de
    dec e
    ld e, $2e
    ld c, $8a
    nop
    add hl, bc
    rst $18
    nop
    rra
    dec hl
    nop
    ld bc, $0c0b
    ld h, e
    ld [bc], a
    daa
    ld b, $63
    add hl, bc
    ld bc, $0606
    dec hl
    nop
    ld bc, $1211
    add l
    nop
    adc [hl]
    nop
    ld b, $64
    ld [bc], a
    ld h, e
    rrca
    adc l
    nop
    sub d
    nop
    ld b, $84
    nop
    xor l
    adc b
    nop
    adc e
    ld bc, $0606
    ld h, d
    dec d
    adc l
    nop
    or h
    add l
    nop
    adc $87
    nop
    pop bc
    nop
    ld b, $62
    ld a, [de]
    dec hl
    nop
    ld h, d
    rra
    add h
    nop
    rst $28
    ld h, $06
    ret nc

    nop
    db $e4
    ld h, d
    inc h
    ld bc, $0606
    adc b
    nop
    ldh [$ff03], a
    rra
    jr nz, @+$23

    ld b, $8f
    nop
    or d
    add e
    nop
    db $e4
    add [hl]
    nop
    db $ed
    inc bc
    ld b, $24
    dec h
    ld h, $91
    ld bc, $8431
    ld bc, $9705
    ld bc, $4908
    add hl, hl
    dec hl
    reti


    ld bc, $857f
    ld bc, $920e
    nop
    ld d, h
    nop
    inc d
    inc hl
    ld bc, $00da
    daa
    inc c
    add hl, de
    rlca
    dec e
    ld [hl+], a
    ld a, [hl+]
    dec c
    dec l
    ld e, $27
    nop
    jr z, jr_01b_5487

    ld e, $f8
    ld [hl], $00
    ld a, a
    sub h
    nop
    dec bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, h
    ld b, c
    rst $38
    xor $03
    rst $38
    cp $ff
    xor $41
    rst $38

jr_01b_5487:
    nop
    ld l, $ff
    inc bc
    nop
    ld d, l
    nop
    xor d
    add e
    nop
    rra
    ld h, $00
    ld a, [bc]
    inc bc
    inc bc
    ld e, l
    rra
    or e
    ld a, $71
    ld a, $bb
    ccf
    jr nc, jr_01b_54c3

    ccf
    ld a, [de]
    rra
    rra
    db $fc
    rst $38
    sbc c
    rst $38
    rst $20
    ld h, [hl]
    ret nz

    nop
    call c, $3f1c
    ret nz

    rst $38
    rst $38
    inc a
    jp Jump_000_00c3


    cp l
    ld hl, sp-$32
    ld a, h
    adc l
    ld a, h
    sbc $a8
    nop
    scf
    adc l
    nop

jr_01b_54c3:
    jr nz, jr_01b_54c5

jr_01b_54c5:
    ret nz

    rst $00
    nop
    ld l, [hl]
    ld [bc], a
    ld hl, sp+$00
    rlca
    jr nc, jr_01b_54cf

jr_01b_54cf:
    inc b
    ret nz

    nop
    jr nz, @+$22

    db $10
    ld l, $ff
    nop
    ccf
    add hl, hl
    nop
    ld bc, $0101
    inc hl
    inc bc
    inc hl
    rlca
    inc hl
    rrca
    ldh [rNR41], a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld [hl], b
    add b
    res 6, b
    inc e
    rst $20
    rst $30
    rst $30
    dec e
    xor $f7
    or $1f
    db $ec
    push af
    or $dd
    ld l, [hl]
    ld h, [hl]
    rst $38
    jp $6600


    rst $38
    rst $38
    sbc c
    sbc c
    ld h, [hl]
    sbc c
    ld b, c
    nop
    rst $38
    ld [bc], a
    nop
    ld h, [hl]
    rst $38
    xor a
    nop
    ret nz

    xor a
    nop
    or b
    xor a
    nop
    and b
    inc bc
    rst $38
    nop
    rst $38
    ld a, [hl]
    ld b, c
    rst $38
    ldh [$ffc6], a
    ld bc, $0016
    nop
    ld b, c
    rst $38
    rrca
    and [hl]
    ld bc, $4114
    rrca
    rst $38
    nop
    ccf
    dec h
    inc bc
    ld bc, $0101
    rst $00
    ld bc, $0b37
    res 6, b
    ld [hl], b
    add b
    rrca
    ldh a, [rIE]
    rst $38
    add e
    db $fc
    adc a
    ldh a, [rSTAT]
    ldh [rP1], a
    dec bc
    ld e, a
    ld sp, hl
    rst $08
    ld [hl], b
    ret


    ld [hl], b
    rst $08
    ldh a, [$fff0]
    ret nz

    rst $08
    ldh a, [rSTAT]
    ret


    or $03
    rst $38
    sbc c
    rst $38
    nop
    add e
    nop
    ret c

    nop
    nop
    push bc
    nop
    db $db
    nop
    ld h, [hl]
    xor a
    ld bc, $af50
    ld bc, $af40
    ld bc, $0330
    rst $38
    nop
    rst $38
    db $fc
    ld b, c
    rst $38
    xor $c3
    ld bc, $92a6
    nop
    inc c
    rlca
    db $fc
    ld b, $07
    ld b, $1f
    ld e, $e7
    ldh [rSTAT], a
    nop
    inc bc
    nop
    nop
    jp $aa00


    ld b, $1f
    ldh [$ff38], a
    rst $00
    nop
    ld hl, sp+$03
    ld b, e
    nop
    rst $38
    nop
    nop
    ld b, c
    rst $08
    ldh a, [rSC]
    nop
    rrca
    ldh [rLY], a
    nop
    rst $38
    add e
    ld bc, $0168
    nop
    ld a, [hl]
    cp b
    ld bc, $afd7
    ld bc, $afd0
    ld bc, $07c0
    rst $38
    nop
    rst $38
    cp $ff
    ldh [rIE], a
    db $fc
    jp Jump_000_3602


    or e
    ld bc, $af1c
    nop
    add b
    ld [bc], a
    inc b
    ld [$4106], sp
    ld [$0107], sp
    ld [$cc03], sp
    ld [bc], a
    ld e, l
    add hl, bc
    add b
    nop
    ldh [rP1], a
    db $fc
    nop
    rra
    ldh [rTAC], a
    jr jr_01b_560a

    nop
    add e

jr_01b_55e1:
    ld bc, $02e6
    ld l, h
    inc de
    rrca
    ld a, [hl+]
    nop
    ld b, $ff
    nop
    db $e3
    inc e
    rst $38
    nop
    rst $38
    adc b
    nop
    ld a, b
    ld b, $e0
    nop
    jp $ff3c


    nop
    rst $38
    jp z, $9f02

    call nz, $0e00
    ld [bc], a
    db $fc
    rst $38
    ld hl, sp-$3d
    ld [bc], a
    add $49

jr_01b_560a:
    rst $38
    nop
    dec hl
    nop
    ld [bc], a
    ld sp, hl
    nop
    ldh a, [$ff8b]
    ld [bc], a
    sub d
    inc b
    nop
    db $fc
    nop
    ld hl, sp+$07
    adc e
    nop
    ld a, b
    rlca
    cp $00
    ld a, h
    add e
    ld a, a
    add b
    nop
    ld a, a
    xor e
    inc bc
    inc b
    ld bc, $00ff
    adc c
    inc bc
    db $10
    and e
    ld [bc], a
    db $fc
    and l
    ld [bc], a
    inc c
    ld bc, $1f00
    and a
    ld [bc], a
    add sp, -$77
    ld bc, $07ec
    nop
    nop
    rst $08
    nop
    add a
    ld a, b
    rst $38
    nop
    ld b, d
    rst $38
    ldh [$ff83], a
    ld [bc], a
    jr c, jr_01b_55e1

    nop
    inc c
    inc b
    rst $38
    rrca
    ldh a, [$ffa0]
    ld b, b
    ld a, [hl+]
    nop
    inc b
    ld a, $07
    ld hl, sp+$50
    jr nz, jr_01b_568b

    nop
    inc bc
    add e
    ld a, h
    jr z, jr_01b_5676

    adc e
    inc bc
    ld [hl], h
    xor [hl]
    inc bc
    sub b
    nop
    nop
    xor [hl]
    inc bc
    add b
    nop
    ld a, $ae
    inc bc
    ld [hl], b

jr_01b_5676:
    inc b
    nop
    ld a, b
    add a
    ld [bc], a
    ld bc, $038b
    ld [hl], h
    add a
    ld bc, $c6a0
    ld [bc], a
    add $30
    nop
    xor l
    ld [bc], a
    and b
    nop

jr_01b_568b:
    nop
    xor d
    ld [bc], a
    adc a
    daa
    ld bc, $0607
    ld b, $19
    jr jr_01b_56fe

    ld h, b
    sbc a
    add b
    push bc
    inc bc
    dec h
    nop
    rst $38
    add $01
    di
    dec b
    cp $01
    nop
    rst $38
    nop
    rst $38
    add [hl]
    inc b
    ld l, $ca
    ld bc, $09f4
    cp $fe
    ld bc, $fc03
    nop
    rst $38
    nop
    inc bc
    db $fc
    add a
    ld bc, $8deb
    inc b
    ld b, b
    add h
    ld bc, $0910
    ldh a, [rIE]
    ld a, h
    rst $38
    ld e, $ff
    db $fc
    rst $38
    nop
    rst $38
    adc $02
    ldh [rSB], a
    xor d
    ld d, l
    adc e
    inc bc
    ld b, b
    nop
    rst $20
    add e
    ld [bc], a
    xor a
    ld b, $01
    rst $38
    ld bc, $07f9
    ld bc, $23f9
    ld bc, $e707
    ld bc, $3cc3
    nop
    rst $38
    add e
    rst $38
    add h
    ld [bc], a
    ld [hl], $09
    add b
    cp a
    ret nz

    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $38
    adc b

jr_01b_56fe:
    inc b
    inc sp
    ld bc, $fe01
    call $8904
    push bc
    inc b
    ld e, l
    add $01
    call c, $fc08
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    nop
    rst $38
    adc a
    inc b
    ret nc

    ld bc, $feff
    ld b, e
    rst $38
    jr c, jr_01b_5761

    rst $38
    nop
    inc bc
    ld d, l
    xor d
    xor d
    ld d, l
    add e
    dec b
    db $10
    and a
    inc b
    adc [hl]
    ld [bc], a
    inc a
    jp $2b81


    nop
    adc a
    dec b
    rra
    nop
    ld a, $22
    rst $38
    inc b
    ld a, a
    rra
    rra
    rlca
    rlca
    add l
    ld bc, HeaderTitle
    ld bc, $c301
    ld bc, $0112
    rst $38
    ldh a, [$ff84]
    ld bc, $04bb
    rst $38
    rst $30
    ld hl, sp-$11
    ldh a, [$ffc7]
    inc b
    add $01
    ldh a, [rIE]
    adc c
    inc b
    ldh a, [$ff0a]
    rst $38
    nop

jr_01b_5761:
    ei
    db $fc
    rra
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    call z, Call_01b_7505
    nop
    nop
    rst $00
    nop
    ld de, $00c3
    dec b
    inc b
    jr c, @+$01

    db $10
    rst $38
    nop
    adc a
    nop
    ld e, $a3
    inc bc
    adc l
    inc b
    pop bc
    ld [hl], $36
    ld [$8908], sp
    inc bc
    sub [hl]
    ld bc, $c1c1
    call $eb02
    ld b, $f0
    cp $fd
    ccf
    ccf
    rrca
    rrca
    add l
    ld bc, $c434
    ld bc, $89f5
    dec b
    ld d, b
    ld [bc], a
    rst $38
    db $fc
    rst $38
    adc c
    inc b
    ld d, [hl]
    ld [bc], a
    rst $38
    rst $38
    rst $38
    add $04
    sbc $8e
    dec b
    db $f4
    ld [$fffe], sp
    ld c, $ff
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    add h
    inc b
    db $e4
    inc bc
    inc bc
    db $fc
    cp $01
    sub b
    inc b
    dec [hl]
    ld bc, $0ff0
    and e
    inc bc
    ld d, c
    dec b
    nop
    rst $38
    rrca
    ldh a, [rIE]
    rst $38
    add a
    dec b
    sbc $86
    dec b
    db $fc
    ld [bc], a
    rst $38
    nop
    ld bc, $04a3
    sbc $c3
    inc b
    ld d, d
    inc bc
    ccf
    rst $38
    pop bc
    ccf
    xor a
    nop
    ld [hl], b
    add a
    inc b
    call z, $fe04
    ld bc, $ff3f
    rlca
    adc h
    inc b
    call $ff00
    adc d
    dec b
    ld l, e
    dec b
    ldh a, [rIF]
    rra
    rst $38
    rst $38
    ld hl, sp+$44
    rst $38
    nop
    inc bc
    rlca
    ld hl, sp-$20
    rst $38
    and l
    inc bc
    ld l, $01
    cp $01
    ret


    inc b
    ccf
    add e
    ld b, $b0
    inc b
    rlca
    rlca
    ld hl, sp-$04
    rlca
    add h
    inc b
    db $dd
    nop
    inc bc
    add h
    dec b
    db $eb
    add a
    inc b
    jp nz, $ff01

    rst $38
    adc h
    inc b
    jp z, $ff01

    rst $38
    adc d
    dec b
    ld l, c
    rlca
    rst $30
    rrca
    rst $38
    rst $38
    ret nz

    rst $38
    rrca
    ldh a, [$ffcb]
    ld b, $a4
    inc bc
    rlca
    rst $38
    ld hl, sp+$07
    adc d
    ld [bc], a
    call z, $fe03
    rst $38
    rst $38
    ld bc, $0684
    cp e
    ld bc, $fc03
    ret


    inc b
    ld e, a
    ld bc, $fc03
    adc c
    inc b
    inc [hl]
    nop
    inc bc
    add e
    ld [bc], a
    ld [hl-], a
    nop
    rst $38
    ret


    inc b
    ld h, h
    ret z

    dec b
    ld h, a
    nop
    rrca
    add h
    ld bc, $011d
    rst $38
    rst $38
    xor d
    rlca
    ld c, e
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    add l
    rlca
    dec bc
    ld bc, $07f8
    add e
    ld b, $56
    ld b, $00
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld bc, $05cb
    adc l
    ld b, $03
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
    db $fc
    adc b
    rlca
    inc h
    ld bc, $ffff
    add [hl]
    ld bc, $ffaa
    inc sp
    ld [hl], $2b
    nop
    daa
    ld bc, $0900
    sub [hl]
    nop
    add hl, bc
    ld [$352d], sp
    inc hl
    ld e, c
    inc hl
    dec [hl]
    dec l
    ld h, c
    ld [de], a
    adc d
    nop
    add hl, bc
    rst $18
    nop
    rra
    dec hl
    nop
    add hl, hl
    ld c, b
    push de
    nop
    adc c
    add hl, hl
    ld d, c
    push de
    nop
    xor c
    inc hl
    ld e, d
    ld h, h
    ld [bc], a
    ld h, $5a
    rst $08
    nop
    jp $3f22


    ld h, [hl]
    ld a, [bc]
    ld h, $3f
    adc $00
    ldh [c], a
    ld [hl+], a
    ccf
    ld h, [hl]
    inc de
    sub [hl]
    nop
    ld [$2501], a
    ld h, [hl]
    ld h, [hl]
    inc e
    ld bc, $0807
    sub h
    nop
    db $ec
    ld h, l
    ld h, $66
    ld b, b
    ld bc, $4462
    ld h, d
    ld h, e
    xor h
    nop
    inc de
    ld h, [hl]
    ld l, $66
    ld c, c
    ld h, h
    ld h, a
    nop
    ld [hl], d
    dec hl
    nop
    ld h, [hl]
    scf
    ld h, [hl]
    ld d, d
    ld h, h
    ld l, l
    nop
    ld a, b
    dec hl
    nop
    ld b, h
    ld e, h
    ld e, e
    ld h, e
    ld e, l
    ld h, h
    ld [hl], e
    nop
    ld a, c
    sub d
    nop
    ld d, h
    nop
    dec de
    inc hl
    ld bc, $00da
    daa
    inc c
    inc h
    ld a, [de]
    nop
    ld a, $2c
    dec l
    ld de, $4700
    ld d, b
    dec [hl]
    inc hl
    dec l
    ld hl, sp+$36
    nop
    ld a, a
    sub h
    nop
    dec bc
    rst $38

    db $0f

    INCBIN "gfx/image_01b_5935.2bpp"

    db $41

    db $fd
    inc bc

    db $11

    INCBIN "gfx/image_01b_5949.2bpp"

    ld e, a
    ld h, d

    db $41

    ld a, a
    ld b, b

    db $05

    ld e, a
    ld h, b
    ccf
    jr nz, jr_01b_5993

    db $30

    db $41

    ccf
    db $20

    db $01

    cpl

jr_01b_596a:
    db $30

    db $62

    rla

    db $0e

    ld e, $27
    ccf
    ld b, c
    ld a, a
    ld a, $3e
    add b
    add b
    ld [hl], b
    ldh a, [$fff8]
    ld e, b
    cp b
    ld c, b

    db $42

    db $fc
    inc d

    db $15

    INCBIN "gfx/image_01b_5981.2bpp"

    inc a
    inc a

jr_01b_5993:
    inc bc
    inc bc
    rlca
    inc b

    db $41

    rrca
    db $08

    db $01

    inc de
    inc e

    db $85, $00, $2e, $0b

    ld a, a
    ld h, b
    xor a
    ldh a, [$ff9f]
    ldh a, [$ff9b]
    db $fc
    sub [hl]
    rst $30
    ld h, c
    ld h, c

    db $2f

    nop

    db $0b

    inc a
    inc a
    ld e, e
    ld h, a
    cp a
    ret nz

    rst $38
    add b
    rst $38
    pop bc
    rst $38
    add b

    db $c4, $00, $94, $02

    ldh a, [$ff7f]
    ld a, a

    db $af, $00, $80, $0c

    xor $12
    cp $02
    db $fd
    inc hl
    rst $38

jr_01b_59ce:
    and c
    rst $38
    ld bc, $47fb
    push af

    db $a4, $00, $9d, $07

    ret nz

    ret nz

    ldh a, [$ff30]
    add sp, $18
    ld hl, sp+$08

    db $42

    db $fc
    ld d, h

    db $41

    db $fa
    db $06

    db $13

    INCBIN "gfx/image_01b_59e7.2bpp"

    dec e
    inc de
    ld a, $21

    db $83, $00, $2c, $01

    ld e, a
    ld h, b

    db $85, $00, $26, $1b

    INCBIN "gfx/image_01b_5a05.2bpp"

    ld hl, sp+$18
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

    db $07

    cp $06
    jp hl


    rra
    or c
    ld a, a
    and $fe

    db $c3, $00, $8d, $09

    dec sp
    dec sp
    ld [hl], l
    ld c, [hl]
    ei
    add h
    rst $38
    add b
    cp a
    ret nz

    db $85, $00, $ec, $0d

    ld a, a
    ld h, b
    cpl
    jr nc, jr_01b_5a83

    jr nc, jr_01b_5a9d

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    db $11
    rra

    db $c3, $00, $e3, $8a, $00, $00, $01

    ld b, $ff

    db $42

    ld d, e
    db $fd

    db $02

    inc bc
    db $fa
    db $26

    db $87, $00, $18, $a3, $00, $c0, $03

    dec a
    ld a, $57
    ld l, h

    db $42

    cp a
    ret nz

    db $83, $00, $f2, $83, $01, $32, $03

    rla
    jr jr_01b_5a91

    rra

    db $85, $00, $3a, $37

    nop

    db $0d

    pop bc
    pop bc
    ld [hl-], a
    ldh a, [c]
    call z, $c3bc

jr_01b_5a83:
    rst $38
    ld [bc], a
    cp $1e
    ldh [c], a
    db $fc
    inc b

    db $41

    ld hl, sp+$08

    db $41

    db $fc
    add h

    db $01

jr_01b_5a91:
    db $fc
    inc b

    db $41

    cp $02

    db $09

    db $fd
    rlca
    pop af
    rrca
    and d
    ld a, [hl]

jr_01b_5a9d:
    call z, Call_000_30fc
    db $30

    db $37

    nop

    db $05

    cp $fe
    pop bc
    ccf
    ret nz

    ccf

    db $43

    nop
    rst $38

    db $0b

    pop hl
    ld e, $ff
    nop
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    inc b
    rst $38
    inc bc

    db $42

    rst $38
    nop

    db $03

    ld a, a
    add b
    sbc a
    db $e0

    db $85, $00, $9e, $41

    ld [bc], a
    inc bc

    db $01

    rlca
    inc b

    db $41

    inc b
    rlca

    db $41

    db $08
    rrca

    db $11

    INCBIN "gfx/image_01b_5ad2.2bpp"

    inc c
    inc c

    db $87, $01, $a0, $05

    ld a, b
    adc b
    ld hl, sp+$48
    db $f4
    ld c, h

    db $83, $01, $ac, $83, $01, $a4, $03

    ldh a, [$ff30]
    ret nz

    ret nz

    db $23

    nop

    db $f0, $25, $01, $be, $03

    ldh a, [rIF]
    ld a, a
    add b

    db $41

    ccf
    ret nz

    db $03

    ld a, a
    add d
    rst $38
    db $01

    db $83, $01, $f4, $05

    ccf
    ret nz

    rra
    ldh [$ffc1], a
    rst $38

    db $93, $01, $fa, $83, $02, $0c, $c3, $00, $65, $01

    inc bc
    inc bc

    db $3f

    nop

    db $27

    db $01

    db $03

jr_01b_5b27:
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a

    db $41

    inc b
    rlca

    db $07

    dec b
    ld b, $09
    ld c, $0b
    inc c
    rrca
    db $08

    db $41

    dec bc
    inc c

    db $01

    dec b
    db $06

    db $89, $02, $96, $87, $01, $a2, $01

    db $f4
    adc h

    db $87, $01, $ac, $07

    cp $02
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$ffe0], a

    db $27

    nop

    db $05

    rlca
    rlca
    dec de
    inc e
    cpl
    db $30

    db $a5, $01, $ae, $42

    rst $38
    add b

    db $09

    cp a
    ret nz

    ld [hl], a
    ld c, b
    ld e, l
    ld h, [hl]
    daa
    ccf
    inc e
    rra

    db $41

    db $08
    rrca

    db $00

    rlca

    db $88, $02, $87, $0b

    db $10
    rra
    rra
    db $10
    ld de, $101e
    rra
    ld [$060f], sp
    rlca

    db $dd, $02, $b9, $03

    ccf
    ccf
    ret nz

    rst $38

    db $41

    add b
    ld a, a

    db $11

    INCBIN "gfx/image_01b_5b8d.2bpp"

    rst $38
    db $18

    db $87, $01, $f0, $01

    rst $38
    rst $38

    db $8b, $02, $ae, $41

    inc bc
    ld [bc], a

    db $83, $03, $84, $01

    ld [bc], a
    inc bc

    db $89, $02, $06, $07

    inc de
    inc e
    rra
    db $10
    inc de
    inc e
    db $11
    db $1e

    db $9d, $03, $34, $07

    ldh a, [$fff0]
    jr @-$06

    ld [$38f8], sp
    ret z

    db $42

    ld hl, sp+$08

    db $a3, $00, $2e, $05

    ld a, h
    add h
    db $fc
    add h
    db $fa
    add [hl]

    db $87, $02, $ee, $83, $02, $b6, $09

    ld c, $0f
    dec [hl]
    dec sp
    ld e, b
    ld h, a
    ld h, c
    ld e, [hl]
    and c
    db $de

    db $41

    db $c3
    cp h

    db $05

    add e
    db $fc
    ei
    rst $38
    ld c, l
    ld c, l

    db $c9, $02, $bf, $83, $01, $00, $83, $00, $c6, $01

    db $f4
    ld e, h

    db $41

    db $fc
    ld d, h

    db $0a

    cp $02
    cp $4a
    rst $38
    ccf
    pop af
    cpl
    ldh a, [rVBK]
    add b

    db $41

    rst $38
    ld b, b

    db $0c

    rst $38
    add b
    rst $38
    ld [hl], b
    adc a
    ld a, a
    add b
    ld a, $c1
    ccf
    ret nz

    ld a, a
    add h

    db $85, $01, $ee, $83, $02, $66, $03

    rrca
    ldh a, [rIE]
    rst $38

    db $39

    nop

    db $0f

    INCBIN "gfx/image_01b_5c2b.2bpp"

    db $83, $00, $06, $41

    cp $12

    db $01

    cp $0e

    db $91, $02, $ee, $0d

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
    db $38

    db $43

    rst $38
    nop

    db $89, $01, $ec, $87, $03, $72, $02

    add l
    rst $38
    ld b, l

    db $94, $01, $7d, $83, $01, $a4, $01

    or b
    ld [hl], b

    db $99, $02, $38, $07

    ld c, a
    ld [hl], b
    and e
    cp h
    ld a, b
    rst $38
    xor a
    rst $18

    db $b7, $03, $e8, $89, $04, $a0, $01

    ld a, [hl]
    ld a, [hl]

    db $95, $02, $a4, $17

    INCBIN "gfx/image_01b_5c85.2bpp"

    rst $18
    inc hl
    rst $38
    ccf
    ldh a, [$ff2f]
    ld [hl], b
    rst $08

    db $84, $04, $1a, $98, $04, $39, $07

    jr @+$1a

    jr c, jr_01b_5cd0

    ld e, b
    ld a, b
    adc b
    db $f8

    db $41

    jr z, @-$26

    db $01

    ld l, b
    sbc b

    db $41

    add sp, $18

    db $41

    ret z

    db $38

    db $0c

    ret z

    cp b
    ld hl, sp-$08
    jr c, jr_01b_5cf7

    ld [$3cea], a
    db $fc
    jp $c2bf


    db $c4, $00, $52, $85, $03, $e0, $06

    inc sp
    dec a
    ld l, h

jr_01b_5cd0:
    ld [hl], e
    ld e, b
    ld h, a
    db $f0

    db $41

    rst $08
    or b

    db $06

    rst $08
    and b
    rst $18
    rst $38
    rst $38
    sub c
    sub c

    db $89, $03, $f8, $85, $05, $82, $03

    ld b, e
    ld a, h
    ld b, a
    ld a, b

    db $41

    adc a
    db $f0

    db $07

    sbc a
    ldh [$ff8f], a
    ldh a, [$ffef]
    rst $38
    ld e, c
    ld e, c

    db $27

jr_01b_5cf7:
    db $01

    db $09

    ld e, a
    ld h, b
    rst $08
    ldh a, [$ff63]
    db $fc
    ret c

    cp a
    scf
    rst $08

    db $b7, $05, $8a, $84, $03, $02, $00

    db $31

    db $83, $00, $ec, $01

    cp h
    db $c3

    db $87, $03, $0e, $07

    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    inc hl
    inc a
    jr jr_01b_5d3c

    db $a5, $02, $f8, $07

    dec c
    dec c
    inc de
    rra
    inc e
    rra
    ld [hl-], a
    dec a

    db $41

    ld h, a
    ld e, b

    db $01

    add a
    db $f8

    db $41

    db $c3
    cp h

    db $09

    pop bc
    cp a
    jp nz, $84be

    db $fc
    ld [hl], b
    ld [hl], b
    ld b, b

jr_01b_5d3c:
    ld b, b

    db $a5, $02, $fe, $11

    INCBIN "gfx/image_01b_5d41.2bpp"

    ret nz

    ret nz

    db $23

    ld h, b

    db $01

    jr nc, @+$32

    db $84, $01, $bc, $08

    rlca
    ld b, $19
    rra
    jr nz, jr_01b_5d7f

    ld [hl+], a
    dec de
    ld h, h

    db $41

    ccf
    ld b, b

    db $41

    rra
    ld h, b

    db $08

    cpl
    ld d, b
    add hl, de
    ld h, $1e
    ld hl, $1906
    nop

    db $83, $05, $ff, $04

    rlca
    nop
    rra
    ld b, $39

    db $41

jr_01b_5d7f:
    rra
    ld h, b

    db $01

    dec sp
    db $c4

    db $41

    scf
    ret z

    db $0f

    INCBIN "gfx/image_01b_5d88.2bpp"

    db $93, $03, $e0, $83, $05, $d4, $c7, $02, $bf, $9d, $01, $8c, $0b

    ld hl, sp-$78
    nop
    ld h, b
    ld h, b
    sbc b
    ld a, b
    add [hl]
    ld a, $41
    ccf
    ld b, b

    db $41

    rra
    db $20

    db $41

    rrca
    db $10

    db $41

    rra
    db $20

    db $09

    ccf
    ld b, b
    ld a, $41
    ld a, b
    add [hl]
    ld h, b
    sbc b
    nop

jr_01b_5dc4:
    ld h, b

    db $86, $04, $00, $0a

    ld e, b
    db $f4
    xor h
    db $fc
    and h
    and $1a
    cp $62
    cp $22

    db $a5, $00, $f0, $03

    db $e4
    inc e
    adc b
    ld a, b

    db $c3, $00, $c5, $01

    db $f4
    adc h

    db $41

    db $fc
    inc b

    db $89, $02, $30, $f0, $27, $02, $3c, $01

    ldh [$ff1f], a

    db $f0, $2f, $04, $24, $89, $02, $b6, $8f, $02, $80, $01

    rrca
    db $08

    db $99, $02, $90, $83, $01, $98, $01

    inc c
    db $fc

    db $89, $01, $9e, $01

    db $f4
    inc c

    db $95, $02, $ec, $c7, $01, $85, $00

    pop bc

    db $44

    rst $38
    nop

    db $04

    rst $38
    ret nz

    ccf
    ld a, a
    add b

    db $91, $05, $48, $17

    INCBIN "gfx/image_01b_5e20.2bpp"

    ccf
    ret nc

    ld a, a
    sub d
    rst $38
    inc c
    rst $38
    nop

    db $95, $04, $34, $83, $03, $84, $87, $02, $04, $01

    rrca
    db $08

    db $42

    db $10
    rra

    db $c3, $00, $e9, $07

    ccf
    jr nz, @+$12

    rra
    inc c
    rrca
    inc bc
    inc bc

    db $9d, $02, $a0, $c7, $03, $8d, $03

    inc b
    rlca
    ld a, h
    ld a, a

    db $c5, $03, $11, $01

    jr nz, jr_01b_5ea3

    db $85, $08, $30, $07

    jr nz, @+$41

    ld b, c
    ld a, a
    ld b, [hl]
    ld a, [hl]
    ld a, b
    ld a, b

    db $23

    nop

    db $05

    add hl, sp
    add hl, sp
    halt
    ld c, a
    ld e, l
    ld h, d

    db $85, $00, $32, $0b

    cpl
    jr nc, @+$81

    ld h, b
    ld e, a
    ld h, b
    cp e
    call nz, $becd
    ld [hl], e
    ld [hl], e

    db $85, $04, $50, $03

    ret nc

    or b
    ld d, b
    or b

    db $41

    ldh a, [rNR10]

    db $09

    add sp, $18
    or $0e
    db $fd
    inc bc
    ei
    rlca
    db $ec
    inc e

    db $42

    ldh a, [rNR10]

    db $05

jr_01b_5ea3:
    ld [hl], b
    sub b
    sub b
    ldh a, [rSVBK]
    ld [hl], b

    db $ff, $f0, $5e, $01, $5f, $12, $5f, $23, $5f

    inc [hl]
    ld e, a
    ld c, l
    ld e, a
    ld h, [hl]
    ld e, a
    ld a, a
    ld e, a
    sbc h
    ld e, a
    push bc
    ld e, a
    xor $5f
    rla
    ld h, b

    db $40, $60, $59, $60

    ld l, d
    ld h, b

    db $73, $60, $8c, $60

    and l
    ld h, b

    db $b6, $60, $cf, $60

    add sp, $60
    pop af
    ld h, b
    ld a, [$0360]
    ld h, c
    ld [$1961], sp
    ld h, c
    ld a, [hl+]
    ld h, c
    ld b, e
    ld h, c
    ld e, h
    ld h, c
    ld l, l
    ld h, c
    add [hl]
    ld h, c
    sub a
    ld h, c
    or b
    ld h, c
    ret


    ld h, c
    db $da
    ld h, c

    db $04, $f8, $f8, $00, $20, $f8, $00, $02, $20, $e8, $fb, $68, $00, $e8, $03, $68
    db $21, $04, $f8, $f8, $04, $20, $f8, $00, $06, $20, $e8, $fa, $68, $00, $e8, $02
    db $68, $21, $04, $f8, $f8, $0c, $20, $f8, $00, $0e, $20, $e9, $07, $60, $20, $e9
    db $ff, $62, $21, $04, $f8, $f8, $10, $20, $f8, $00, $12, $20, $e9, $0b, $60, $20
    db $e9, $03, $62, $21

    ld b, $ef
    or $30
    nop
    rst $28
    cp $40
    nop
    rst $38
    or $32
    nop
    rst $38
    cp $42
    nop
    rst $38
    ld b, $2e
    nop
    rst $28
    ld b, $18
    ld bc, $ec06
    inc b
    jr jr_01b_5f52

jr_01b_5f52:
    db $fc
    inc b
    ld a, [de]
    nop
    db $ec
    db $fc
    inc e
    nop
    db $fc
    db $fc
    ld e, $00
    db $fc
    db $f4
    jr nz, jr_01b_5f62

jr_01b_5f62:
    db $ec
    db $f4
    add h
    ld bc, $fe06
    inc b
    ld [hl+], a
    nop
    xor $fc
    inc h
    nop
    cp $fc
    ld h, $00
    xor $04
    jr jr_01b_5f77

jr_01b_5f77:
    cp $f4
    jr z, jr_01b_5f7b

jr_01b_5f7b:
    xor $f4
    add h
    ld bc, $ef07
    db $f4
    jr nc, jr_01b_5f84

jr_01b_5f84:
    rst $38
    db $f4
    ld [hl-], a
    nop
    rst $38
    db $fc
    ld b, d
    nop
    rst $28
    db $fc
    ld d, d
    nop
    rst $38
    inc b
    ld l, $00
    rst $18
    inc b
    ld d, h
    nop
    rst $28
    inc b
    ld d, [hl]
    ld bc, $d90a
    ld b, $5e
    nop
    reti


    ld c, $6e
    nop
    db $f4
    db $f4
    jr c, jr_01b_5fa9

jr_01b_5fa9:
    db $f4
    db $fc
    ld c, b
    nop
    inc b
    db $f4
    ld a, [hl-]
    nop
    inc b
    db $fc
    ld c, d
    nop
    db $f4
    inc b
    inc a
    nop
    inc b
    inc b
    ld c, h
    nop
    push hl
    cp $3e
    nop
    push hl
    ld b, $4e
    ld bc, $f50a
    db $f4
    jr c, jr_01b_5fca

jr_01b_5fca:
    push af
    db $fc
    ld c, b
    nop
    dec b
    db $f4
    ld a, [hl-]
    nop
    dec b
    db $fc
    ld c, d
    nop
    push af
    inc b
    inc a
    nop
    dec b
    inc b
    ld c, h
    nop
    push hl
    cp $5a
    nop
    jp c, $5e06

    nop
    jp c, $6e0e

    nop
    push hl
    ld b, $5c
    ld bc, $f60a
    db $f4
    jr c, jr_01b_5ff3

jr_01b_5ff3:
    or $fc
    ld c, b
    nop
    ld b, $f4
    ld a, [hl-]
    nop
    or $04
    inc a
    nop
    ld b, $04
    ld c, h
    nop
    and $fe
    ld e, d
    nop
    ret c

    ld b, $5e
    nop
    ret c

    ld c, $6e
    nop
    and $06
    ld e, d
    jr nz, @+$08

    db $fc
    ld d, b
    ld bc, $d80a
    ld b, $5e
    nop
    ret c

    ld c, $6e
    nop
    push af
    db $f4
    jr c, jr_01b_6024

jr_01b_6024:
    push af
    db $fc
    ld c, b
    nop
    dec b
    db $f4
    ld a, [hl-]
    nop
    dec b
    db $fc
    ld c, d
    nop
    push af
    inc b
    inc a
    nop
    dec b
    inc b
    ld c, h
    nop
    push hl
    cp $58
    nop
    push hl
    ld b, $5a
    db $21

    db $06, $f4, $04, $6a, $00, $04, $04, $70, $00, $f4, $fc, $72, $00, $04, $fc, $74
    db $00, $f4, $f4, $76, $00, $04, $f4, $78, $01, $04, $fc, $04, $7a, $00, $f4, $fc
    db $7c, $00, $04, $fc, $80, $00, $fc, $f4, $82, $01

    ld [bc], a
    ld hl, sp-$08
    ld a, [bc]
    jr nz, @-$06

    nop
    db $08
    db $21

    db $06, $ef, $fd, $34, $20, $ef, $f5, $44, $20, $ff, $fd, $36, $20, $ff, $f5, $46
    db $20, $00, $05, $2c, $20, $f0, $05, $2a, $21, $06, $ef, $fb, $34, $00, $ef, $03
    db $44, $00, $ff, $fb, $36, $00, $ff, $03, $46, $00, $f0, $f3, $2a, $00, $00, $f3
    db $2c, $01

    inc b
    ld hl, sp-$08
    inc d
    jr nz, @-$06

    nop
    ld d, $20
    db $eb
    ld a, [bc]
    ld h, b
    jr nz, @-$13

    ld [bc], a
    ld h, d
    db $21

    db $06, $f2, $04, $6a, $00, $02, $04, $70, $00, $f2, $fc, $72, $00, $02, $fc, $74
    db $00, $f2, $f4, $76, $00, $02, $f4, $78, $01, $06, $f4, $f4, $6a, $20, $04, $f4
    db $70, $20, $f4, $fc, $72, $20, $04, $fc, $74, $20, $f4, $04, $76, $20, $04, $04
    db $78, $21

    ld [bc], a
    ld hl, sp-$08
    ld h, [hl]
    nop
    ld hl, sp+$00
    ld h, [hl]
    ld h, c
    ld [bc], a
    ld hl, sp-$08
    ld l, h
    nop
    ld hl, sp+$00
    ld l, h
    ld hl, $f802
    ld hl, sp+$64
    nop
    ld hl, sp+$00
    ld h, h
    ld h, c
    ld bc, $fcf4
    ld a, [hl]
    ld bc, $ea04

jr_01b_610a:
    inc b
    ld [$ea20], sp
    db $fc
    ld a, [bc]
    jr nz, jr_01b_610a

    ld hl, sp-$7a
    nop
    ld hl, sp+$00
    add [hl]
    ld hl, $ea04

jr_01b_611b:
    inc b
    ld [$ea20], sp
    db $fc

jr_01b_6120:
    ld a, [bc]
    jr nz, jr_01b_611b

    ld hl, sp-$78
    nop
    ld hl, sp+$00
    adc d
    ld bc, $ea06
    inc b
    ld [$ea20], sp
    db $fc
    ld a, [bc]
    jr nz, jr_01b_6120

    db $f4
    ld a, [hl]
    nop

jr_01b_6137:
    inc b
    inc b
    ld a, [hl]
    ld d, b
    ld hl, sp-$08
    add [hl]
    ld b, b
    ld hl, sp+$00
    add [hl]
    ld h, c
    ld b, $ea
    inc b
    ld [$ea20], sp
    db $fc
    ld a, [bc]
    jr nz, jr_01b_6137

    ldh a, [c]

jr_01b_614e:
    ld a, [hl]
    db $10
    ld b, $06
    ld a, [hl]
    ld b, b
    ld hl, sp+$00
    adc b
    ld h, b
    ld hl, sp-$08
    adc d
    ld h, c
    inc b
    ld [$0804], a
    jr nz, @-$14

    db $fc
    ld a, [bc]
    jr nz, jr_01b_614e

    ldh a, [$ff7e]
    nop
    ld [$7e08], sp
    ld d, c
    ld b, $ea
    inc b
    ld [$ea20], sp
    db $fc
    ld a, [bc]
    jr nz, @-$16

    ldh a, [$ff7e]
    db $10
    ld [$7e08], sp
    ld b, b
    ld hl, sp-$08
    add [hl]
    nop
    ld hl, sp+$00
    add [hl]
    ld hl, $ea04

jr_01b_6188:
    inc b
    ld [$ea20], sp
    db $fc

jr_01b_618d:
    ld a, [bc]
    jr nz, jr_01b_6188

    ld hl, sp-$78
    nop
    ld hl, sp+$00
    adc d
    ld bc, $ea06
    inc b
    ld [$ea20], sp
    db $fc
    ld a, [bc]
    jr nz, jr_01b_618d

    inc b
    ld a, [hl]
    jr nc, @+$06

    db $f4
    ld a, [hl]
    ld h, b
    ld hl, sp-$08
    add [hl]
    ld b, b
    ld hl, sp+$00
    add [hl]
    ld h, c
    ld b, $ea
    inc b
    ld [$ea20], sp
    db $fc
    ld a, [bc]
    jr nz, @-$14

    ld b, $7e
    jr nz, jr_01b_61c4

    ldh a, [c]
    ld a, [hl]
    ld [hl], b
    ld hl, sp+$00
    adc b

jr_01b_61c4:
    ld h, b
    ld hl, sp-$08
    adc d
    ld h, c
    inc b

jr_01b_61ca:
    ld [$0804], a
    jr nz, @-$14

    db $fc
    ld a, [bc]
    jr nz, @-$16

    ld [$307e], sp
    ld [$7ef0], sp
    ld h, c
    ld [bc], a
    ld [$0804], a
    jr nz, jr_01b_61ca

    db $fc
    ld a, [bc]
    db $21

    db $0d

    inc bc
    inc bc
    dec c
    ld c, $1f
    jr jr_01b_620a

    db $10
    cpl
    jr nc, jr_01b_622e

    jr nz, @+$81

    ld b, b

    db $42

    ld a, a
    ld b, c

    db $1d

    INCBIN "gfx/image_01b_61f6.2bpp"

    ccf
    jr nc, jr_01b_6280

    ld c, b

jr_01b_620a:
    cp a
    ret nz

    rst $38
    add b
    cp a
    pop bc
    sbc a
    ldh [$ff67], a
    ld a, b

    db $41

    cpl
    db $30

    db $02

    inc sp
    inc a

jr_01b_621a:
    inc a

    db $86, $00, $19, $0b

    inc bc
    inc bc
    dec b
    ld b, $06
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    db $01
    db $01

    db $23

    nop

    db $22

jr_01b_622e:
    db $01

    db $02

    ld bc, $0101

    db $35

    nop

    db $03

    inc a
    inc a
    ld e, e
    ld h, a

    db $83, $00, $28, $03

    rst $38
    pop bc
    rst $38
    add b

    db $c4, $00, $74, $02

    ldh a, [$ff7f]
    ld a, a

    db $af, $00, $60, $0f

    INCBIN "gfx/image_01b_624d.2bpp"

    db $cf, $00, $63, $01

    rlca
    db $06

    db $62

    dec bc

    db $02

    ld a, [bc]
    ld c, $09

    db $85, $00, $46, $1b

    INCBIN "gfx/image_01b_626d.2bpp"

    add e
    rst $38
    add hl, hl

jr_01b_6280:
    rst $30
    ld c, b
    rst $30
    ret c

    rst $20
    db $10
    rst $28
    ld h, b
    sbc a

    db $a3, $00, $73, $01

    ld a, h
    ld a, h

    db $a5, $00, $00, $09

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

    db $07

    cp $06
    jp hl


    rra
    or c
    ld a, a
    and $fe

    db $c4, $00, $6d, $10

    INCBIN "gfx/image_01b_62ad.2bpp"

    db $06

    db $97, $00, $54, $0d

    inc bc
    inc bc
    inc c
    rrca
    ldh a, [rIE]
    db $e3
    inc e
    add $39
    rst $00
    add hl, sp
    inc bc
    db $fc

    db $41

    add b
    ld a, a

    db $41

    add b
    rst $38

    db $04

    add a
    db $fc
    push bc
    cp [hl]
    db $c3

    db $c4, $00, $2c, $03

    ret nz

    cp a
    ld b, b
    ld a, a

    db $83, $01, $0a, $01

    jr @+$21

    db $92, $01, $10, $02

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

    db $84, $01, $7a, $00

    inc a

    db $39

    nop

    db $c3, $01, $13, $0b

    jr @+$21

    ldh [rIE], a
    add $39
    adc l
    ld [hl], e
    adc a
    ld [hl], e
    ld b, $f9

    db $42

    nop
    rst $38

    db $01

    db $01
    rst $38

    db $85, $00, $c0, $01

    cp $06

    db $41

    ei
    rlca

    db $01

    rst $38
    db $db

    db $42

    db $fd
    inc bc

    db $06

    db $fd
    inc hl
    ld a, [$ee06]
    ld e, $f9

    db $a4, $00, $db, $25

    nop

    db $0e

    inc e
    inc e
    xor $f2
    ld a, [hl-]
    and $3d
    push hl

jr_01b_634b:
    ld a, $e7
    ccf
    ldh [$ff9f], a
    ldh a, [$ff8f]

    db $86, $01, $73, $06

    ld h, b
    rst $18
    ld hl, sp-$71
    add sp, -$61
    ld [hl], b

    db $45

    rst $38
    nop

    db $06

    rst $38
    add b
    ld a, a
    or [hl]
    ret


    ld a, a
    ld a, a

    db $b1, $00, $a2, $17

    INCBIN "gfx/image_01b_636c.2bpp"

    inc bc
    cp $07
    db $fc
    add a
    db $fd
    adc l
    ld a, e

    db $41

    adc [hl]
    ld a, d

    db $05

jr_01b_6388:
    adc l
    ei
    rlca
    db $fd
    rlca
    db $fc

    db $41

    inc bc
    db $fe

    db $00

    db $01

    db $84, $01, $bb, $07

    ld b, $fe
    ld a, b
    adc b
    ld [hl], b
    sub b
    ret nc

    db $30

    db $ab, $01, $10, $a3, $01, $a8, $01

    jr nz, jr_01b_6388

    db $43

    db $10
    db $f0

    db $01

    jr nz, @-$1e

    db $cd, $02, $25, $83, $01, $2a, $0d

    ld a, [bc]
    rrca
    inc a
    ccf
    dec d
    ld e, $11
    ld e, $16
    add hl, de
    ld [$0c0f], sp
    rrca

    db $cb, $01, $2b, $09

    jr nc, @+$32

    ld c, b
    ld a, b
    cp b
    ret z

    ld hl, sp-$78
    add sp, -$68

    db $42

    ldh a, [$ff90]

    db $0b

    ld a, b
    ret z

    ld [hl], a
    rst $08
    ccf
    ldh [$ff1f], a
    ld hl, sp-$39
    cp a
    ldh a, [$ff1f]

    db $89, $00, $c0, $05

    ld a, [$fe56]
    ld d, d
    db $fd
    ld d, e

    db $95, $01, $d0, $a7, $01, $24, $41

    and b
    ld h, b

    db $05

    ld h, b
    ldh [$ff90], a
    ldh a, [rNR10]
    db $f0

    db $45

    db $08
    db $f8

    db $41

    inc c
    db $f4

    db $0b

    ld a, [de]
    and $0e
    ldh a, [c]
    ld d, $ea
    ld a, [hl-]
    add $7c
    db $fc
    add b
    add b

    db $bb, $01, $8e, $09

    ld [hl], b
    ldh a, [$ffe8]
    sbc b
    ld hl, sp+$08
    ldh a, [$ff30]
    ret nz

    ld b, b

    db $8d, $03, $12, $0b

    add b
    add b
    ret nz

    ld b, b
    ldh a, [$ff30]
    ld hl, sp+$08
    add sp, -$68
    ldh a, [$fff0]

    db $d1, $00, $63, $9b, $00, $50, $a7, $01, $26, $c3, $02, $59, $01

    adc b
    ld a, b

    db $41

    db $08
    db $f8

    db $a3, $02, $94, $db, $03, $87, $0b

    ldh a, [$fff0]
    ld l, b
    sbc b
    add sp, $18
    ret nc

    jr nc, @-$0e

    ldh a, [rNR10]
    db $f0

    db $8d, $00, $a2, $c5, $00, $49, $01

    add hl, bc
    db $0e

    db $41

    db $08
    rrca

    db $0d

    jr jr_01b_647f

    jr c, jr_01b_6489

    inc h
    dec sp
    inc a
    inc hl
    inc h
    dec sp
    jr c, @+$29

    jr jr_01b_648b

    db $a5, $02, $72, $03

    inc b
    rlca
    ld [bc], a
    inc bc

    db $8f, $00, $54, $c7, $03, $f3, $0b

    rlca
    inc b
    inc b
    rlca

jr_01b_647f:
    jr @+$21

    jr nz, @+$41

    ld h, b
    ld e, a
    ld b, b
    ld a, a

    db $41

    ret nz

jr_01b_6489:
    cp a

    db $05

jr_01b_648b:
    add b
    rst $38
    jp $c5bf


    cp [hl]

    db $89, $00, $00, $00

    ld a, a

    db $c6, $01, $4e, $03

    cp a
    ret nz

    ld c, a
    ld a, b

    db $87, $00, $36, $01

    ld a, $3e

    db $91, $00, $a0, $03

    inc c
    dec bc
    jr @+$19

    db $83, $04, $10, $0f

    INCBIN "gfx/image_01b_64b0.2bpp"

    db $85, $01, $3a, $c3, $00, $0d, $0b

    jr jr_01b_64e0

    inc a
    inc hl
    ccf
    jr nz, @+$2f

    inc sp
    ld e, $1e
    nop
    nop

    db $8c, $00, $20, $00

    ret nz

    db $85, $00, $2e, $0b

    ccf
    jr nc, @+$59

    ld a, b

jr_01b_64e0:
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    db $0e

    db $87, $00, $c0, $04

    ei
    rlca
    ld a, [$ff57]

    db $89, $02, $cd, $02

    rlca
    xor $1f

    db $87, $01, $da, $01

    jr nc, jr_01b_652e

    db $41

    ld a, b
    ld c, b

    db $03

    ret c

    xor b
    add $be

    db $83, $02, $4e, $e0, $29

    INCBIN "gfx/image_01b_650b.2bpp"

    dec c
    cp $03

jr_01b_652e:
    rst $38
    pop bc
    cp a
    cp $86
    ld a, b
    ld a, b

    db $96, $02, $1a, $06

    rst $30
    inc a
    db $db
    dec a
    jp $e61b


    db $88, $02, $38, $02

    ld a, e
    adc [hl]
    ld a, e

    db $8f, $02, $44, $01

    ld a, [hl]
    adc [hl]

    db $d3, $03, $b5, $0a

    rlca
    rlca
    ld a, [de]
    dec e
    rst $28
    ldh a, [rNR34]
    pop hl
    ld bc, $01fe

    db $88, $01, $71, $11

    INCBIN "gfx/image_01b_6560.2bpp"

    rrca
    ld sp, hl

    db $43

    ld c, $fa

    db $05

    call Call_000_3ffb
    add hl, sp
    ld b, $06

    db $b5, $03, $54, $01

    ld b, b
    ret nz

    db $85, $02, $6c, $11

    INCBIN "gfx/image_01b_6586.2bpp"

    ret nz

    ret nz

    db $3d

    nop

    db $03

    add b
    add b
    ret nz

    ret nz

    db $a3, $00, $20, $09

    ld hl, sp+$08
    db $f4
    db $ec
    call nc, $f83c
    ld [$24fc], sp

    db $41

    db $fc
    and h

    db $0b

    and $1a
    cp $42
    ld a, [$f446]
    inc c
    ret c

    jr c, @-$0a

    db $ec

    db $83, $05, $e8, $03

    ldh [$ffe0], a
    add b
    add b

    db $9f, $03, $16, $17

    INCBIN "gfx/image_01b_65c9.2bpp"

    ld a, [hl]
    add d
    cp h
    call nz, Call_01b_6cd4
    ld hl, sp+$38

    db $91, $03, $4e, $83, $00, $40, $c5, $03, $d3, $01

    db $01
    db $01

    db $e4, $23

    nop

    db $af, $03, $64, $88, $00, $c0, $16

    INCBIN "gfx/image_01b_65f7.2bpp"

jr_01b_6607:
    rst $38
    jp $7dff


    ld a, a
    ld a, $3e

    db $8c, $00, $00, $c5, $00, $11, $05

    ld b, b
    cpl
    jr nc, jr_01b_6650

    add hl, sp
    ccf

    db $94, $04, $39, $83, $02, $ea, $01

    ld b, b
    ret nz

    db $43

    jr nz, jr_01b_6607

    db $22

    ret nz

    db $00

    ld b, b

    db $af, $03, $a6, $17

    INCBIN "gfx/image_01b_662f.2bpp"

    ret nz

    ret nz

    ld h, b
    ldh [$ffd0], a
    jr nc, @-$0e

    ld d, b

    db $41

    ld hl, sp-$58

    db $0e

    db $f4
    inc c
    db $fc
    and h
    ld a, h

jr_01b_6650:
    call nz, $cc74
    ld a, b
    ret z

    ld l, b
    ret c

    or b
    ldh a, [$ffe0]

    db $84, $06, $d9, $07

    rra
    rla
    dec de
    inc e
    cpl
    jr nc, jr_01b_66a4

    db $21

    db $41

    ld e, a
    ld h, b

    db $0e

    xor h
    db $d3
    rst $38
    add c
    cp $83
    cp [hl]
    jp Jump_01b_776c


    inc a
    scf
    ld c, $0b
    rlca

    db $86, $03, $ef, $a9, $00, $00, $0f

    INCBIN "gfx/image_01b_6680.2bpp"

    db $aa, $06, $7a, $04

    jr c, @+$79

    ld c, h
    ei
    add h

    db $83, $04, $8a, $01

    db $ec
    di

    db $a3, $02, $45, $07

    ld a, a

jr_01b_66a4:
    ld l, [hl]
    ld sp, $203f
    ccf
    rra
    rra

    db $87, $02, $1e, $13

    INCBIN "gfx/image_01b_66af.2bpp"

    ld d, b
    ldh a, [$ff90]
    db $f0

    db $a5, $03, $ee, $99, $05, $80, $04

    ld [$c4f8], sp
    inc a
    ldh [c], a

    db $cf, $01, $67, $1e

    INCBIN "gfx/image_01b_66d3.2bpp"

    jr nc, @-$50

    sbc $fd
    di
    ld e, a
    pop hl
    rst $38
    add a
    rst $18
    jr c, @-$3f

    ld h, b
    ld a, a
    ret nz

    db $41

    rst $38
    xor b

    db $03

    rst $38
    jr z, @+$01

    nop

    db $41

    rst $38
    db $10

    db $09

    rst $38
    nop
    cp a
    ret nz

    ld l, l
    di
    ld a, $ff
    db $e4
    rst $20

    db $bb, $03, $98, $87, $05, $60, $05

    add c
    rst $38
    inc bc
    cp $03
    db $fe

    db $83, $05, $6a, $43

    rrca
    ld sp, hl

    db $08

    rst $00
    db $fd
    ld a, $3f
    inc b
    rlca
    ld bc, $0201

    db $a4, $06, $d1, $00

    ld a, h

    db $88, $04, $6b, $41

    db $10
    rra

    db $41

    jr nz, jr_01b_6772

    db $03

    ld b, c
    ld a, a
    ld b, [hl]
    ld a, [hl]

    db $85, $04, $f8, $0b

    add hl, sp
    add hl, sp
    halt
    ld c, a
    ld e, l
    ld h, d
    ccf
    jr nz, jr_01b_6774

    jr nc, jr_01b_675e

    db $18

    db $83, $04, $28, $07

    ld e, a
    ld h, b
    cp e
    call nz, $becd
    ld [hl], e
    ld [hl], e

    db $23

    nop

    db $05

    ld [hl], b
    ld [hl], b
    ret nc

    or b
    ld d, b
    or b

    db $41

jr_01b_675e:
    ldh a, [rNR10]

    db $09

    add sp, $18
    or $0e
    db $fd
    inc bc
    ei
    rlca
    db $ec
    inc e

    db $42

    ldh a, [rNR10]

    db $07

    ld [hl], b
    sub b
    sub b

jr_01b_6772:
    ldh a, [rSVBK]

jr_01b_6774:
    ld [hl], b
    inc bc
    inc bc

    db $f0, $25, $06, $4a, $a5, $03, $ca, $01

    ret nz

    ld b, b

    db $83, $08, $cc, $01

    ldh [$ff60], a

    db $83, $02, $f6, $05

    inc b
    db $fc
    jp nz, $e23e

    db $1e

    db $8b, $05, $88, $43

    ret nz

    ld b, b

    db $87, $05, $8e, $83, $07, $9c, $e0, $21

    INCBIN "gfx/image_01b_679f.2bpp"

    adc a
    adc a

    db $3d

    nop

    db $83, $05, $60, $01

    ldh [$ff1f], a

    db $85, $05, $66, $15

    INCBIN "gfx/image_01b_67cd.2bpp"

    ld l, a
    ld [hl], a
    jr @+$21

    rrca
    rrca

    db $e4, $3d

    nop

    db $93, $01, $40, $01

    inc b
    rlca

    db $42

    rlca
    inc b

    db $83, $00, $48, $83, $05, $20, $9b, $02, $44, $ff, $4b, $68, $54, $68, $61, $68
    db $6e, $68, $77, $68, $84, $68, $8d, $68, $9e, $68, $af, $68, $c0, $68, $dd, $68
    db $f6, $68, $13, $69, $2c, $69, $45, $69, $5e, $69

    ld [hl], a
    ld l, c
    add h
    ld l, c

    db $91, $69, $9a, $69, $ab, $69, $bc, $69, $d5, $69, $ee, $69, $ff, $69, $18, $6a
    db $29, $6a, $42, $6a, $5b, $6a, $6c, $6a

    ld [hl], l
    ld l, d
    ld a, [hl]
    ld l, d
    add a
    ld l, d
    sub b
    ld l, d
    sbc c
    ld l, d

    db $a2, $6a, $b3, $6a, $bc, $6a, $e5, $6a, $0e, $6b

    scf
    ld l, e

    db $02, $f8, $00, $42, $20, $f8, $f8, $2c, $21, $03, $f8, $00, $00, $20, $f8, $f8
    db $0c, $20, $f9, $f0, $66, $21, $03, $f8, $f0, $66, $20, $f8, $f8, $68, $20, $f8
    db $00, $6a, $21, $02, $f8, $f8, $0e, $20, $f8, $00, $48, $21, $03, $f8, $f8, $4a
    db $20, $f8, $f0, $26, $20, $f8, $00, $42, $21, $02, $f8, $f8, $1c, $20, $f8, $00
    db $02, $21, $04, $f2, $fd, $1e, $00, $f2, $05, $2e, $00, $f2, $f5, $12, $00, $fa
    db $ed, $04, $01, $04, $f0, $ff, $1e, $00, $f0, $07, $2e, $00, $f0, $f7, $12, $00
    db $f8, $ef, $64, $01, $04, $f0, $f0, $0a, $00, $f0, $f8, $1a, $00, $f0, $00, $2a
    db $00, $f0, $08, $3a, $01, $07, $f0, $ff, $1e, $00, $f0, $07, $2e, $00, $00, $ff
    db $20, $00, $00, $07, $30, $00, $00, $f7, $10, $00, $f0, $f7, $12, $00, $f8, $ef
    db $04, $01, $06, $f0, $fc, $22, $00, $f0, $04, $32, $00, $00, $fc, $24, $00, $00
    db $04, $34, $00, $f0, $f4, $40, $00, $00, $f4, $9a, $01, $07, $ed, $f4, $44, $00
    db $ed, $fc, $54, $00, $fd, $f4, $46, $00, $fd, $fc, $56, $00, $ed, $04, $58, $00
    db $fd, $04, $5a, $00, $fd, $ec, $36, $01, $06, $e6, $fc, $50, $00, $e6, $04, $60
    db $00, $f6, $fc, $52, $00, $f6, $04, $62, $00, $e6, $f4, $40, $00, $f6, $f4, $14
    db $01, $06, $e6, $02, $3c, $20, $e6, $fa, $4c, $20, $e6, $f2, $5c, $20, $f6, $02
    db $3e, $20, $f6, $fa, $4e, $20, $f6, $f2, $5e, $21, $06, $e6, $fb, $50, $20, $e6
    db $f3, $60, $20, $f6, $fb, $52, $20, $f6, $f3, $62, $20, $e6, $03, $40, $20, $f6
    db $03, $14, $21, $06, $e3, $fc, $50, $20, $e3, $f4, $60, $20, $f3, $fc, $52, $20
    db $f3, $f4, $62, $20, $e3, $04, $40, $20, $f3, $04, $14, $21

    inc bc
    ldh a, [$fffc]
    ld d, b
    jr nz, @-$0e

    db $f4

jr_01b_697e:
    ld h, b
    jr nz, @-$0e

    inc b

jr_01b_6982:
    ld b, b
    ld hl, $f403
    db $fc
    ld d, b
    jr nz, jr_01b_697e

    db $f4
    ld h, b
    jr nz, jr_01b_6982

    inc b
    ld b, b
    db $21

    db $02, $f8, $00, $28, $20, $f8, $f8, $38, $21, $04, $ea, $04, $06, $20, $ea, $fc
    db $08, $20, $f8, $f8, $84, $00, $f8, $00, $84, $21, $04, $ea, $04, $06, $20, $ea
    db $fc, $08, $20, $f8, $f8, $86, $00, $f8, $00, $88, $01, $06, $ea, $04, $06, $20
    db $ea, $fc, $08, $20, $ec, $f4, $7c, $00, $04, $04, $7c, $50, $f8, $f8, $84, $40
    db $f8, $00, $84, $61, $06, $ea, $04, $06, $20, $ea, $fc, $08, $20, $ea, $f2, $7c
    db $10, $06, $06, $7c, $40, $f8, $00, $86, $60, $f8, $f8, $88, $61, $04, $ea, $04
    db $06, $20, $ea, $fc, $08, $20, $e8, $f0, $7c, $00, $08, $08, $7c, $51, $06, $ea
    db $04, $06, $20, $ea, $fc, $08, $20, $e8, $f0, $7c, $10, $08, $08, $7c, $40, $f8
    db $f8, $84, $00, $f8, $00, $84, $21, $04, $ea, $04, $06, $20, $ea, $fc, $08, $20
    db $f8, $f8, $86, $00, $f8, $00, $88, $01, $06, $ea, $04, $06, $20, $ea, $fc, $08
    db $20, $ec, $04, $7c, $30, $04, $f4, $7c, $60, $f8, $f8, $84, $40, $f8, $00, $84
    db $61, $06, $ea, $04, $06, $20, $ea, $fc, $08, $20, $ea, $06, $7c, $20, $06, $f2
    db $7c, $70, $f8, $00, $86, $60, $f8, $f8, $88, $61, $04, $ea, $04, $06, $20, $ea
    db $fc, $08, $20, $e8, $08, $7c, $30, $08, $f0, $7c, $61, $02, $ea, $04, $06, $20
    db $ea, $fc, $08, $21

    ld [bc], a
    db $f4
    nop
    jr jr_01b_6a8a

    db $f4
    ld hl, sp+$18
    ld de, $f002
    nop
    ld d, $10
    ldh a, [$fff8]
    ld d, $31
    ld [bc], a
    ldh a, [rTMA]

jr_01b_6a8a:
    ld d, $10
    ldh a, [$fff2]
    ld d, $31
    ld [bc], a
    ldh a, [$ff08]
    jr @+$12

    ldh a, [$fff0]
    jr @+$13

    ld [bc], a
    ld hl, sp+$08
    jr @+$12

    ld hl, sp-$10
    jr @+$13

    db $04, $e8, $fb, $6c, $20, $e8, $03, $6e, $20, $f8, $fa, $70, $20, $f8, $02, $72
    db $21, $02, $f9, $f6, $74, $20, $f9, $fe, $76, $21, $0a, $fd, $0a, $78, $00, $eb
    db $02, $7a, $00, $fb, $02, $7e, $00, $0b, $02, $80, $00, $fb, $fa, $82, $00, $0b
    db $fa, $8a, $00, $eb, $f2, $44, $00, $eb, $fa, $54, $00, $fb, $ea, $36, $00, $fb
    db $f2, $46, $01, $0a, $ed, $05, $8c, $00, $fd, $05, $90, $00, $0d, $05, $92, $00
    db $fd, $fd, $94, $00, $0d, $fd, $96, $00, $fe, $0d, $8e, $00, $ed, $f5, $44, $00
    db $ed, $fd, $54, $00, $fd, $ed, $36, $00, $fd, $f5, $46, $01, $0a, $f8, $fc, $98
    db $80, $f8, $fc, $98, $80, $f8, $fc, $98, $80, $f8, $fc, $98, $80, $f8, $fc, $98
    db $80, $f8, $fc, $98, $80, $f8, $fc, $98, $80, $f8, $fc, $98, $80, $f8, $fc, $98
    db $80, $f8, $fc, $98, $81

    ld b, $e8

jr_01b_6b39:
    ei
    ld d, b
    jr nz, @-$16

    di
    ld h, b
    jr nz, jr_01b_6b39

jr_01b_6b41:
    di
    ld h, d
    jr nz, @-$16

jr_01b_6b45:
    inc bc
    ld b, b
    jr nz, jr_01b_6b41

    inc bc
    sbc d
    jr nz, jr_01b_6b45

    ei
    sbc h
    db $21

    db $3f

    nop

    db $0b

    inc bc
    inc bc
    rrca
    inc c
    rla
    jr @+$81

    ld [hl], b
    cp a
    jp nz, $81ff

    db $41

    rst $38
    add b

    db $e0, $21

    INCBIN "gfx/image_01b_6b64.2bpp"

    ld [hl], c
    adc a

    db $41

    db $fd
    inc hl

    db $09

    ld a, [$ee06]
    ld e, $f9
    rst $38
    pop bc
    rst $38
    ld a, $3e

    db $2b

    nop

    db $0b

    inc a
    inc a
    ld e, e
    ld h, a
    cp a
    ret nz

    rst $38
    add b
    rst $38
    pop bc
    rst $38
    add b

    db $c4, $00, $74, $02

    ldh a, [$ff7f]
    ld a, a

    db $af, $00, $60, $1f

    INCBIN "gfx/image_01b_6bae.2bpp"

    db $41

    pop af
    rra

    db $11

    INCBIN "gfx/image_01b_6bd2.2bpp"

    cp e
    db $c4

    db $41

    rst $38
    add b

    db $03

    cp a
    ret nz

    ld c, a
    ld [hl], b

    db $41

    inc a
    inc hl

    db $0d

    cpl
    jr nc, @+$39

    jr c, @+$15

    inc e
    inc a
    ccf
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e

    db $3d

    nop

    db $8d, $00, $c0, $41

    ccf
    db $20

    db $85, $00, $d2, $0f

    INCBIN "gfx/image_01b_6c0a.2bpp"

    db $84, $00, $70, $08

    add h
    rst $38
    add d
    cp a
    jp nz, $605f

    cpl
    db $30

    db $42

    rra
    db $10

    db $0d

    rla
    jr @+$11

    rrca
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    inc c
    ccf
    jr nc, @+$79

    ld c, b

    db $83, $00, $70, $e0, $31

    INCBIN "gfx/image_01b_6c3e.2bpp"

    ld a, h
    db $fc

    db $83, $00, $bc, $1d

    INCBIN "gfx/image_01b_6c74.2bpp"

    sbc a
    ldh a, [$ff7f]
    ld l, h
    inc hl
    ld a, $43
    ld a, [hl]
    ld b, a
    ld a, h
    ld c, a
    ld a, a
    jr nc, jr_01b_6cc2

    db $83, $01, $82, $09

    rra
    jr @+$21

    db $10
    cpl
    jr nc, @+$81

    ld h, b
    ld a, a
    ld b, b

    db $41

    cp h
    db $c3

    db $05

    cp a
    ret nz

    ld c, a
    ld a, b
    inc sp
    inc a

    db $89, $00, $d8, $0b

    ld bc, $0701
    ld b, $7b
    ld a, [hl]
    sub [hl]
    ld sp, hl
    sbc a
    ldh a, [$ffaf]
    db $f0

    db $41

    ld l, a
    ld [hl], b

    db $04

    daa
    jr c, jr_01b_6cd4

    inc e

jr_01b_6cc2:
    rra

    db $84, $01, $34, $03

    ld [$070f], sp
    rlca

    db $3d

    nop

    db $85, $00, $40, $0d

    ei
    dec b
    ld sp, hl

Call_01b_6cd4:
jr_01b_6cd4:
    rlca
    ld a, [$fe56]
    ld d, d
    db $fd
    ld d, e
    db $fd
    inc bc
    xor l
    ld [hl], e

    db $85, $00, $54, $07

    ld hl, sp-$08
    adc b
    ld hl, sp-$70
    ldh a, [$ff60]
    ld h, b

    db $a3, $00, $1e, $0f

    INCBIN "gfx/image_01b_6cef.2bpp"

    db $a3, $01, $38, $15

    INCBIN "gfx/image_01b_6d03.2bpp"

    push af
    ld e, e
    cp $56
    db $fc
    ld d, h

    db $41

    db $fa
    db $06

    db $09

    ld a, [$f426]
    inc l
    call z, Call_000_383c
    ld hl, sp-$20
    db $e0

    db $a3, $01, $5c, $0b

    jr c, @+$3a

    ld b, l
    ld a, l
    add a
    rst $38
    sbc e
    db $fc
    xor a
    ldh a, [$ff7f]
    ld h, b

    db $42

    ld a, a
    ld b, b

    db $86, $01, $24, $06

    add b
    cp e
    call nz, Call_01b_7e45
    ccf
    ccf

    db $83, $00, $8c, $01

    cp l
    ld b, e

    db $41

    db $fd
    inc bc

    db $01

    ei
    rlca

    db $a5, $02, $74, $41

    db $fd
    inc bc

    db $13

    INCBIN "gfx/image_01b_6d58.2bpp"

    db $fc
    inc b
    db $fa
    db $06

    db $88, $00, $4a, $00

    inc bc

    db $8b, $00, $54, $05

    ldh [$ffe0], a
    db $10
    ldh a, [$ffd0]
    db $f0

    db $a6, $01, $84, $00

    inc b

    db $a3, $02, $70, $0d

    cp $02
    ld sp, hl
    rlca
    rst $38
    dec b
    di
    dec c
    xor $1a
    sbc h
    ld a, h
    ldh [$ffe0], a

    db $8a, $02, $a0, $86, $02, $09, $8d, $02, $b2, $a7, $00, $1e, $01

    ld hl, sp+$08

    db $41

    db $fc
    ld d, h

    db $88, $02, $4c, $09

    inc c
    ret z

    jr c, @-$0e

    ldh a, [$ff50]
    ldh a, [$ffe0]
    ldh [$ffc0], a

    db $41

    ret nz

    ld b, b

    db $02

    ret nz

    ld [hl], b
    db $f0

    db $41

    jr nz, @-$1e

    db $0b

    db $10
    ldh a, [$ffc8]
    ld hl, sp+$08
    ld hl, sp-$7c
    db $fc
    db $e4
    inc e
    ldh a, [c]
    db $0e

    db $41

    ld c, d
    or [hl]

    db $07

    ld l, [hl]
    sub [hl]
    cp $0e
    or b
    ld [hl], b
    ret nz

    ret nz

    db $3b

    nop

    db $04

    jr c, jr_01b_6e12

    rst $20
    rst $38
    ld [hl+], a

    db $43

    rst $38
    nop

    db $0a

    rst $38
    inc a
    rst $38
    nop
    rst $38
    ld bc, $1fff
    ldh [$ff7f], a
    add b

    db $41

    and $19

    db $01

    xor $11

    db $84, $03, $65, $02

    rst $38
    and l
    and l

    db $db, $01, $f9, $41

    inc b
    rlca

    db $02

    ld e, $1f
    db $08

    db $a6, $03, $27, $01

    db $08
    rrca

    db $41

    db $10
    rra

    db $41

    jr nz, jr_01b_6e4e

    db $09

    ld [hl-], a
    ccf

jr_01b_6e12:
    ccf
    ld a, $3d
    ld a, $4c
    ld a, a
    ld a, a
    ld a, a

    db $23

    nop

    db $f0, $27, $03, $44, $89, $03, $6e, $41

    db $cc
    inc sp

    db $01

    db $dc
    inc hl

    db $42

    rst $38
    nop

    db $01

    ccf
    ret nz

    db $97, $03, $82, $41

    db $11
    db $1e

    db $07

    db $10
    rra
    inc l
    ccf
    daa
    ccf
    inc a
    inc a

    db $95, $00, $0c, $8b, $01, $a2, $41

    cp a
    ret nz

    db $8d, $01, $b2, $04

    add hl, de
    ld e, $28

jr_01b_6e4e:
    ccf
    db $26

    db $22

    ccf

    db $03

    dec bc
    dec c
    rla
    add hl, de

    db $83, $01, $a6, $85, $01, $0c, $02

    rla
    jr @+$0a

    db $22

    rrca

    db $01

    dec b
    rlca

    db $a3, $03, $42, $83, $01, $40, $a3, $01, $64, $01

    ld a, a
    ld b, b

    db $a7, $02, $8c, $06

    ld a, a
    ld c, b
    ccf
    jr nc, jr_01b_6e96

    inc e
    rla

    db $84, $01, $db, $03

    inc sp
    inc a
    ld d, c
    ld a, [hl]

    db $83, $03, $c0, $03

    ld d, $1b
    ld l, $33

    db $a4, $01, $68, $0d

    add c
    cp $81
    cp a
    ret nz

jr_01b_6e96:
    ld e, d
    ld h, l
    dec a
    ccf
    inc de
    rra
    ld [$060f], sp

    db $a4, $02, $5b, $01

    db $01
    db $01

    db $bf, $00, $02, $87, $03, $22, $83, $02, $c2, $07

    ld [$88f8], sp
    ld hl, sp-$3c
    inc a
    db $e4
    inc e

    db $41

    sub h
    ld l, h

    db $01

    db $d4
    inc l

    db $83, $02, $34, $05

    ret nc

    jr nc, jr_01b_6f24

    ldh [$ff80], a
    add b

    db $f0, $25, $03, $86, $8b, $03, $b0, $0d

    ld a, $3f
    dec a
    ld a, $28
    ccf
    ld a, $3f
    rrca
    rrca
    dec d
    dec de
    ld l, $31

    db $87, $01, $0c, $09

    ccf
    jr nc, @+$51

    ld a, b
    ld b, a
    ld a, [hl]
    ld c, c
    ld a, c
    jr nc, jr_01b_6f1b

    db $22

    nop

    db $84, $03, $66, $07

    ld a, a
    add b
    rst $38
    rst $38
    ld c, e
    rst $38
    ld a, d
    rst $08

    db $84, $03, $65, $0e

    inc h
    rst $38
    inc d
    cp $15
    rst $38
    ld bc, $07fb
    db $fc
    db $fc
    and h
    cp h
    jr jr_01b_6f24

    db $83, $05, $40, $05

    rlca
    rlca
    dec c
    rrca
    ld d, $19

    db $83, $05, $48, $41

    cpl

jr_01b_6f1b:
    db $30

    db $07

    scf
    jr c, jr_01b_6f4f

    jr c, @+$29

    ld a, $13

jr_01b_6f24:
    rra

    db $a9, $05, $5a, $83, $03, $80, $03

    sub [hl]
    cp $f5
    sbc a

    db $c4, $03, $73, $16

    INCBIN "gfx/image_01b_6f34.2bpp"

    ccf
    ld [bc], a
    cp $86
    cp $78
    ld a, b

    db $d9, $04, $dd, $41

jr_01b_6f4f:
    ld [bc], a
    inc bc

    db $03

    inc b
    rlca
    ld a, h
    ld a, a

    db $41

    add b
    rst $38

    db $03

    ld b, b
    ld a, a
    jr nz, jr_01b_6f9d

    db $87, $03, $b2, $03

    ld b, c
    ld a, a
    ld b, [hl]
    ld a, [hl]

    db $85, $05, $c6, $05

    add hl, sp
    add hl, sp
    halt
    ld c, a
    ld e, l
    ld h, d

    db $85, $04, $72, $83, $01, $a8, $07

    ld e, a
    ld h, b
    cp e
    call nz, $becd
    ld [hl], e
    ld [hl], e

    db $23

    nop

    db $05

    ld [hl], b
    ld [hl], b
    ret nc

    or b
    ld d, b
    or b

    db $41

    ldh a, [rNR10]

    db $03

    add sp, $18
    or $0e

    db $83, $02, $88, $01

    db $ec
    inc e

    db $42

    ldh a, [rNR10]

    db $05

    ld [hl], b
    sub b
    sub b

jr_01b_6f9d:
    ldh a, [rSVBK]
    ld [hl], b

    db $85, $05, $62, $03

    ld c, d
    rst $38
    or l
    ld c, d

    db $85, $05, $6e, $01

    rst $38
    inc d

    db $41

    rst $38
    db $01

    db $03

    cp $06
    ld hl, sp-$08

    db $a5, $01, $de, $83, $02, $34, $85, $03, $40, $23

    add b

    db $43

    ret nz

    ld b, b

    db $89, $05, $08, $87, $05, $62, $41

    or l
    ld c, d

    db $03

    rst $38
    inc h
    cp $15

    db $87, $06, $50, $01

    db $fc
    db $fc

    db $c5, $03, $61, $01

    ldh a, [rNR10]

    db $8b, $05, $04, $24

    add b

    db $00

    add b

    db $ab, $04, $c2, $0b

    ld h, b
    ld h, b
    and b
    ldh [rNR41], a
    ldh [$ff38], a
    ld hl, sp+$10
    ldh a, [rSVBK]
    db $f0

    db $41

    ldh a, [$ffd0]

    db $0f

    INCBIN "gfx/image_01b_6ff9.2bpp"

    db $a3, $03, $20, $07

    ld [hl], d
    ld [hl], e
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

jr_01b_7026:
    db $1e

    db $83, $05, $80, $01

    rlca
    rlca

    db $bf, $04, $ca, $05

    rrca
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc

    db $91, $03, $ac, $01

    dec e
    db $1e

    db $85, $06, $62, $85, $06, $6c, $b3, $04, $c0, $85, $05, $60, $99, $03, $82, $89
    db $06, $62, $87, $06, $70, $97, $07, $12, $02

    ld a, $3f
    ld b, d

    db $84, $05, $e9, $07

    ret nz

    rst $38
    ld hl, sp-$01

jr_01b_7061:
    ldh a, [rIE]
    ld h, b
    ld a, a

    db $89, $06, $fa, $01

    rrca
    rrca

    db $e4, $29

jr_01b_706d:
    nop

    db $0f

    INCBIN "gfx/image_01b_706f.2bpp"

    db $9d, $07, $62, $a3, $06, $02, $01

    ld [hl], e
    rst $38

    db $83, $03, $7d, $09

    jr nc, @+$01

    inc e
    rst $38
    ld a, [hl]
    rst $30
    ld a, $f7
    ld a, [hl]
    ld sp, hl

    db $8f, $03, $f4, $03

    ld a, a
    add b
    rst $38
    rst $38

    db $39

    nop

    db $83, $06, $60, $9b, $03, $40, $87, $04, $60, $f0, $2c, $08, $08, $02

    pop hl
    ld a, a
    add b

    db $84, $03, $fc, $f0, $20, $07, $5f, $a5, $05, $de, $07

    inc l
    db $ec
    ld a, $fe
    ld d, $fe
    ld [hl], d
    db $fe

    db $41

    ldh a, [c]
    db $de

    db $05

    db $f4
    inc a
    adc h
    db $fc
    ret z

    db $38

    db $83, $04, $f8, $03

    call nc, $f42c
    inc c

    db $9f, $08, $60, $85, $08, $de, $83, $03, $28, $8b, $06, $c8, $03

    ret z

    jr c, @-$16

    db $18

    db $85, $04, $fa, $01

    db $f4
    inc c

    db $9f, $09, $00, $85, $08, $82, $f0, $25, $09, $06, $0d

    cp $de
    ld sp, hl
    rst $18
    ld sp, hl
    ccf
    adc c
    rst $38
    srl a
    rst $20
    rra
    sub [hl]
    ld l, [hl]

    db $f0, $25, $08, $fa, $85, $06, $e0, $0b

    ei
    ei
    db $f4
    rst $28
    db $f4
    adc a
    ld hl, sp-$79
    ld a, b
    ld b, a
    ld [hl], b
    ld c, a

    db $c3, $01, $a9, $03

    ld [$090f], sp
    db $0e

    db $42

    db $11
    db $1e

    db $07

    ld [$0c0f], sp
    rrca
    rla
    rra
    inc e
    inc e

    db $9d, $07, $08, $06

    inc bc
    inc bc
    inc b
    rlca
    inc a
    ccf
    ld b, b

    db $88, $07, $ad, $03

    ld [hl], b
    ld a, a
    db $31
    db $3e

    db $85, $09, $dc, $00

    inc d

    db $22

    rra

    db $e4, $21

    nop

    db $0b

    inc bc
    inc bc
    inc c
    rrca
    add hl, bc
    rrca
    inc d
    dec de
    ld d, $19
    inc de
    inc e

    db $83, $01, $da, $c3, $00, $23, $8d, $08, $1a, $13

    INCBIN "gfx/image_01b_7162.2bpp"

    ret


    ld [hl], $d9
    db $26

    db $c6, $05, $a4, $00

    rst $38

    db $95, $08, $04, $f0, $25, $0a, $5a, $9d, $0a, $82, $c8, $07, $55, $01

    ret nz

    or b

    db $84, $04, $ef, $01

    jr z, @-$26

    db $af, $0a, $50, $83, $06, $c0, $0d

    ld h, $e6
    cpl
    rst $28
    ld e, a
    rst $30
    sbc a
    pop af
    rst $08
    ld [hl], c
    adc $72
    add $fa

    db $a3, $06, $fa, $05

    ret z

    jr c, @+$2a

    ret c

    and h
    ld e, h

    db $41

    db $e4
    inc e

    db $83, $02, $56, $9b, $03, $42, $85, $06, $c0, $11

    INCBIN "gfx/image_01b_71bd.2bpp"

    adc $3e

    db $85, $0b, $18, $03

    call z, $183c
    db $f8

    db $bd, $01, $de, $ff, $43, $72, $4c, $72, $55, $72, $5e, $72

    ld l, a
    ld [hl], d
    ld a, b
    ld [hl], d
    add c
    ld [hl], d
    adc d
    ld [hl], d
    sub e
    ld [hl], d
    sbc h
    ld [hl], d
    and l
    ld [hl], d

    db $ae, $72, $c7, $72, $e0, $72, $f9, $72, $12, $73, $2b, $73

    ld b, h
    ld [hl], e
    ld e, l
    ld [hl], e
    halt
    ld [hl], e
    adc a
    ld [hl], e
    xor b
    ld [hl], e
    pop bc
    ld [hl], e
    jp c, $fb73

    ld [hl], e
    inc e
    ld [hl], h
    dec a
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld a, a
    ld [hl], h
    sbc b
    ld [hl], h
    or c
    ld [hl], h
    jp z, $e374

    ld [hl], h
    db $fc
    ld [hl], h
    dec d
    ld [hl], l
    ld l, $75
    scf
    ld [hl], l
    ld c, b
    ld [hl], l
    ld h, c
    ld [hl], l
    ld a, d
    ld [hl], l
    sub e
    ld [hl], l
    and h
    ld [hl], l
    cp l
    ld [hl], l
    adc $75
    rst $20
    ld [hl], l
    nop
    halt

    db $11, $76

    ld a, [de]
    halt
    inc hl
    halt
    inc l
    halt
    dec [hl]
    halt

    db $3e, $76, $02, $f8, $f8, $2e, $20, $f8, $00, $44, $21, $02, $f8, $00, $14, $20
    db $f8, $f8, $24, $21, $02, $f8, $f8, $30, $20, $f8, $00, $48, $21, $04, $e8, $00
    db $0e, $20, $e8, $f8, $1e, $20, $f8, $00, $10, $20, $f8, $f8, $20, $21

    ld [bc], a
    ld hl, sp-$08
    ld [de], a
    nop
    ld hl, sp+$00
    ld [hl+], a
    ld bc, $f802
    nop
    ld a, [bc]
    nop
    ld hl, sp-$08
    ld [bc], a
    ld bc, $f802
    nop
    jr @+$22

    ld hl, sp-$08
    jr z, jr_01b_72ab

    ld [bc], a
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    inc e
    ld bc, $f802
    nop
    inc l
    nop
    ld hl, sp-$08

jr_01b_729a:
    ld h, $01
    ld [bc], a
    ld hl, sp+$00
    ld a, [de]
    jr nz, jr_01b_729a

    ld hl, sp+$2a
    ld hl, $f802
    ld hl, sp+$04
    jr nz, @-$06

jr_01b_72ab:
    nop
    inc c
    db $21

    db $06, $f1, $f4, $72, $00, $f1, $fc, $82, $00, $01, $fc, $84, $00, $01, $04, $94
    db $00, $01, $f4, $96, $00, $f1, $04, $6c, $01, $06, $ee, $f4, $72, $00, $ee, $fc
    db $82, $00, $ee, $04, $92, $00, $fe, $fc, $76, $00, $fe, $04, $86, $00, $fe, $f4
    db $88, $01, $06, $f0, $f4, $7a, $00, $f0, $fc, $8a, $00, $f0, $04, $98, $00, $00
    db $f4, $7c, $00, $00, $fc, $8c, $00, $00, $04, $9a, $01, $06, $f0, $f4, $6e, $00
    db $00, $f4, $70, $00, $f0, $04, $8e, $00, $00, $04, $90, $00, $f0, $fc, $8a, $00
    db $00, $fc, $80, $01, $06, $f0, $f4, $9c, $00, $f0, $fc, $a6, $00, $f0, $04, $b0
    db $00, $00, $f4, $9e, $00, $00, $fc, $a8, $00, $00, $04, $b2, $01, $06, $f0, $04
    db $9c, $20, $f0, $fc, $a6, $20, $f0, $f4, $b0, $20, $00, $04, $9e, $20, $00, $fc
    db $a8, $20, $00, $f4, $b2, $21

    ld b, $ee
    inc b
    ld [hl], d
    jr nz, @-$10

    db $fc
    add d
    jr nz, @-$10

    db $f4
    sub d

jr_01b_7350:
    jr nz, jr_01b_7350

    db $fc

jr_01b_7353:
    halt

jr_01b_7354:
    jr nz, jr_01b_7354

    db $f4

jr_01b_7357:
    add [hl]

jr_01b_7358:
    jr nz, jr_01b_7358

    inc b
    adc b
    ld hl, $f006
    inc b
    ld a, d
    jr nz, jr_01b_7353

    db $fc
    adc d
    jr nz, jr_01b_7357

    db $f4
    sbc b
    jr nz, jr_01b_736b

jr_01b_736b:
    inc b
    ld a, h
    jr nz, jr_01b_736f

jr_01b_736f:
    db $fc

jr_01b_7370:
    adc h
    jr nz, jr_01b_7373

jr_01b_7373:
    db $f4
    sbc d
    ld hl, $f006

jr_01b_7378:
    inc b
    ld l, [hl]
    jr nz, jr_01b_737c

jr_01b_737c:
    inc b
    ld [hl], b
    jr nz, jr_01b_7370

    db $f4
    adc [hl]
    jr nz, jr_01b_7384

jr_01b_7384:
    db $f4
    sub b
    jr nz, jr_01b_7378

jr_01b_7388:
    db $fc
    adc d
    jr nz, jr_01b_738c

jr_01b_738c:
    db $fc
    add b
    ld hl, $ef06
    inc b
    ld [hl], d
    jr nz, jr_01b_7384

    db $fc
    add d
    jr nz, jr_01b_7388

    db $f4
    sub d
    jr nz, @+$01

    inc b

jr_01b_739e:
    ld b, [hl]
    jr nz, @+$01

    db $fc

jr_01b_73a2:
    ld d, [hl]
    jr nz, @+$01

    db $f4
    ld h, [hl]
    ld hl, $f006
    inc b
    ld a, d
    jr nz, jr_01b_739e

    db $fc
    adc d
    jr nz, jr_01b_73a2

    db $f4
    sbc b
    jr nz, jr_01b_73b6

jr_01b_73b6:
    inc b

jr_01b_73b7:
    ld e, b
    jr nz, jr_01b_73ba

jr_01b_73ba:
    db $fc

jr_01b_73bb:
    ld l, b
    jr nz, jr_01b_73be

jr_01b_73be:
    db $f4
    ld a, b
    ld hl, $f006
    inc b
    ld l, [hl]
    jr nz, jr_01b_73b7

    db $f4
    adc [hl]
    jr nz, jr_01b_73bb

    db $fc
    adc d
    jr nz, jr_01b_73cf

jr_01b_73cf:
    inc b

jr_01b_73d0:
    ld d, h
    jr nz, jr_01b_73d3

jr_01b_73d3:
    db $fc

jr_01b_73d4:
    ld h, h
    jr nz, jr_01b_73d7

jr_01b_73d7:
    db $f4
    ld [hl], h
    ld hl, $f008
    dec b
    ld [hl], d
    jr nz, jr_01b_73d0

    db $fd
    add d
    jr nz, jr_01b_73d4

    push af
    sub d
    jr nz, jr_01b_73e8

jr_01b_73e8:
    inc b
    ld c, d
    jr nz, jr_01b_73ec

jr_01b_73ec:
    db $fc
    ld e, d
    jr nz, @+$12

    inc b

jr_01b_73f1:
    ld c, h
    jr nz, @+$12

    db $fc

jr_01b_73f5:
    ld e, h
    jr nz, jr_01b_73f8

jr_01b_73f8:
    db $f4
    ld l, d
    ld hl, $f008
    inc b
    ld a, d
    jr nz, jr_01b_73f1

    db $fc
    adc d
    jr nz, jr_01b_73f5

    db $f4
    sbc b
    jr nz, jr_01b_7409

jr_01b_7409:
    inc bc
    ld c, d
    jr nz, jr_01b_740d

jr_01b_740d:
    ei
    ld e, d
    jr nz, @+$12

    inc bc
    ld c, h

jr_01b_7413:
    jr nz, @+$12

    ei
    ld e, h

jr_01b_7417:
    jr nz, jr_01b_7419

jr_01b_7419:
    di
    ld l, d
    ld hl, $f108
    inc b
    ld l, [hl]
    jr nz, jr_01b_7413

    db $f4
    adc [hl]
    jr nz, jr_01b_7417

    db $fc
    adc d
    jr nz, jr_01b_742b

    inc bc

jr_01b_742b:
    ld c, d
    jr nz, jr_01b_742f

    ei

jr_01b_742f:
    ld e, d
    jr nz, jr_01b_7443

    inc bc

jr_01b_7433:
    ld c, h
    jr nz, jr_01b_7447

    ei

jr_01b_7437:
    ld e, h
    jr nz, jr_01b_743b

    di

jr_01b_743b:
    ld l, d
    ld hl, $f008
    inc b
    ld [hl], d
    jr nz, jr_01b_7433

jr_01b_7443:
    db $fc
    add d
    jr nz, jr_01b_7437

jr_01b_7447:
    db $f4
    sub d
    jr nz, jr_01b_744b

jr_01b_744b:
    db $fc
    halt
    jr nz, jr_01b_744f

jr_01b_744f:
    db $f4
    add [hl]
    jr nz, jr_01b_7453

jr_01b_7453:
    inc b

jr_01b_7454:
    adc b
    jr nz, jr_01b_7457

jr_01b_7457:
    rst $30

jr_01b_7458:
    ld [de], a
    nop
    nop
    rst $38
    ld [hl+], a
    ld bc, $f008
    inc b
    ld [hl], d
    jr nz, jr_01b_7454

    db $fc
    add d
    jr nz, jr_01b_7458

    db $f4
    sub d
    jr nz, jr_01b_746c

jr_01b_746c:
    db $fc
    halt
    jr nz, jr_01b_7470

jr_01b_7470:
    db $f4
    add [hl]
    jr nz, jr_01b_7474

jr_01b_7474:
    inc b

jr_01b_7475:
    adc b
    jr nz, jr_01b_7478

jr_01b_7478:
    ld hl, sp+$12
    nop
    nop
    nop
    ld [hl+], a
    ld bc, $f006
    inc b
    ld [hl], d
    jr nz, jr_01b_7475

    db $fc
    add d
    jr nz, @-$0e

    db $f4
    sub d
    jr nz, jr_01b_748d

jr_01b_748d:
    db $fc

jr_01b_748e:
    halt
    jr nz, jr_01b_7491

jr_01b_7491:
    db $f4

jr_01b_7492:
    add [hl]
    jr nz, jr_01b_7495

jr_01b_7495:
    inc b
    adc b
    ld hl, $f006
    inc b
    ld [hl], d
    jr nz, jr_01b_748e

    db $fc
    add d
    jr nz, jr_01b_7492

    db $f4
    ld l, h
    jr nz, jr_01b_74a6

jr_01b_74a6:
    db $fc

jr_01b_74a7:
    halt
    jr nz, jr_01b_74aa

jr_01b_74aa:
    db $f4

jr_01b_74ab:
    add [hl]
    jr nz, jr_01b_74ae

jr_01b_74ae:
    inc b
    adc b
    ld hl, $f006
    inc b
    and b
    jr nz, jr_01b_74a7

    db $fc
    xor d
    jr nz, jr_01b_74ab

    db $f4
    or h
    jr nz, jr_01b_74bf

jr_01b_74bf:
    inc b
    and d
    jr nz, jr_01b_74c3

jr_01b_74c3:
    db $fc
    xor h
    jr nz, jr_01b_74c7

jr_01b_74c7:
    db $f4
    or [hl]
    ld hl, $f006
    db $f4
    and b
    nop
    ldh a, [$fffc]
    xor d
    nop
    ldh a, [rDIV]
    or h
    nop
    nop
    db $f4
    and d
    nop
    nop
    db $fc
    xor h
    nop
    nop
    inc b
    or [hl]
    ld bc, $f006
    db $f4
    ld [hl], d
    nop
    ldh a, [$fffc]
    add d
    nop
    ldh a, [rDIV]
    ld l, h
    nop
    nop
    db $fc
    halt
    nop
    nop
    inc b
    add [hl]
    nop
    nop
    db $f4
    adc b
    ld bc, $ee06
    db $fc
    ld a, $00
    xor $04
    ld c, [hl]
    nop

Call_01b_7505:
    cp $fc
    ld b, b
    nop
    cp $04
    ld d, b
    nop
    xor $f4
    ld d, d
    nop
    cp $f4
    ld b, d
    ld bc, $f106
    inc b
    ld [hl-], a
    nop
    ld bc, $3404
    nop
    pop af
    db $fc
    ld [hl], $00
    ld bc, $38fc
    nop
    pop af
    db $f4
    ld a, [hl-]
    nop
    ld bc, $3cf4
    ld bc, $fe02
    nop
    ld b, $20
    cp $f8
    ld [$0421], sp

jr_01b_7538:
    cp $00
    ld b, $20
    cp $f8
    ld [$f320], sp
    nop
    ld e, [hl]
    jr nz, jr_01b_7538

    ld hl, sp+$5e
    ld bc, $fe06
    nop
    ld b, $20
    cp $f8
    ld [$eb20], sp
    nop
    ld a, [hl]
    jr nc, @-$03

    ld hl, sp+$7e
    ld h, b
    di
    nop
    ld h, b
    jr nz, @-$0b

    ld hl, sp+$62
    ld hl, $fe06
    nop
    ld b, $20
    cp $f8
    ld [$e720], sp
    inc b
    ld a, [hl]
    jr nz, @+$01

    db $f4
    ld a, [hl]
    ld [hl], b
    di
    nop
    ld e, [hl]
    ld h, b
    di
    ld hl, sp+$5e
    ld b, c
    ld b, $fe
    nop
    ld b, $20
    cp $f8
    ld [$e520], sp
    ld b, $7e
    jr nc, jr_01b_7589

    ldh a, [c]

jr_01b_7589:
    ld a, [hl]
    ld h, b
    di
    ld hl, sp+$60
    ld b, b
    di
    nop
    ld h, d
    ld b, c
    inc b
    cp $00
    ld b, $20
    cp $f8
    ld [$e320], sp
    ld [$207e], sp
    inc bc
    ldh a, [$ff7e]
    ld [hl], c
    ld b, $fe
    nop
    ld b, $20
    cp $f8
    ld [$e320], sp
    ld [$307e], sp
    inc bc
    ldh a, [$ff7e]
    ld h, b
    di
    nop
    ld e, [hl]
    jr nz, @-$0b

    ld hl, sp+$5e
    ld bc, $fe04
    nop
    ld b, $20
    cp $f8
    ld [$f320], sp
    nop
    ld h, b
    jr nz, @-$0b

    ld hl, sp+$62
    ld hl, $fe06
    nop
    ld b, $20
    cp $f8
    ld [$e720], sp
    db $f4
    ld a, [hl]
    db $10
    rst $38
    inc b
    ld a, [hl]
    ld b, b
    di
    nop
    ld e, [hl]
    ld h, b
    di
    ld hl, sp+$5e
    ld b, c
    ld b, $fe
    nop
    ld b, $20
    cp $f8
    ld [$e520], sp
    ldh a, [c]
    ld a, [hl]
    nop
    ld bc, $7e06
    ld d, b
    di
    ld hl, sp+$60
    ld b, b
    di
    nop
    ld h, d
    ld b, c
    inc b
    cp $00
    ld b, $20

Jump_01b_7605:
    cp $f8
    ld [$e320], sp
    ldh a, [$ff7e]
    db $10
    inc bc
    ld [$417e], sp

    db $02, $f8, $f8, $a4, $00, $f8, $00, $ae, $01

    ld [bc], a
    pop af
    db $fc
    ld a, [hl]
    nop
    or $fc
    ld a, [hl]
    ld bc, $ed02
    nop
    ld a, [hl]
    nop
    ld a, [$7e00]
    ld bc, $ea02
    inc bc
    ld a, [hl]
    nop
    db $fd
    inc bc
    ld a, [hl]
    ld bc, $e802
    dec b
    ld a, [hl]
    nop
    rst $38
    dec b
    ld a, [hl]
    db $01

    db $0a, $f8, $fc, $00, $80, $f8, $fc, $00, $80, $f8, $fc, $00, $80, $f8, $fc, $00
    db $80, $f8, $fc, $00, $80, $f8, $fc, $00, $80, $f8, $fc, $00, $80, $f8, $fc, $00
    db $80, $f8, $fc, $00, $80, $f8, $fc, $00, $81

    dec bc
    rlca
    rlca
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nc, jr_01b_76f0

    ld b, b
    cp a
    ret nz

    ld b, c
    rst $38
    add b
    rla
    cp a
    ret nz

    ld a, a
    ld c, b
    ccf
    jr nc, jr_01b_76ba

    inc a
    ld c, h
    ld a, a
    ld b, a
    ld a, a
    ld c, d
    ld a, e
    ld sp, $c031
    ret nz

    ldh a, [$ff30]
    add sp, $18
    ld hl, sp+$08
    ld b, d
    db $fc
    ld d, h
    ld b, c
    ld a, [$1306]
    ld a, [$f426]
    inc l
    call z, Call_000_383c
    ld hl, sp-$20
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ccf
    ccf
    ld b, l
    ld a, [hl]
    cp e
    call nz, Call_000_0086
    inc c
    ld b, $40
    ld h, a
    ld a, b
    ld e, h
    ld h, e
    ld e, a
    ld h, b
    ld b, c
    cpl
    jr nc, jr_01b_76c1

jr_01b_76ba:
    ld d, a
    ld a, b
    ld c, b
    ld a, a
    ld b, a
    ld a, a
    add hl, sp

jr_01b_76c1:
    add hl, sp
    adc a
    nop
    ld b, b
    ld b, c
    cpl
    jr nc, @+$07

    ccf
    inc sp
    inc e
    rra
    jr jr_01b_76ee

    ld b, c
    ld [$010f], sp
    rlca
    rlca
    cpl
    nop
    nop
    ld bc, $0162
    ld bc, $0203
    ret


    nop
    sub e
    dec c
    call c, $aedc
    ld [hl], d
    db $ed
    dec de
    di
    dec c
    rst $38
    ld d, l
    db $fd
    ld d, a

jr_01b_76ee:
    cp $56

jr_01b_76f0:
    add l
    nop
    ld l, $13
    rst $38
    add a
    ld a, c
    rst $08
    ld [hl], c
    rst $18
    ld h, d
    cp $e4
    db $fc
    jr @+$1a

    ret nz

    ret nz

    or b
    ld [hl], b
    ld hl, sp+$18
    ld hl, sp+$08
    ld b, d
    db $fc
    inc d
    dec b
    ld a, [$fe06]
    ld [bc], a
    cp $0a
    and e
    nop
    ld d, d
    rlca
    call c, $e23c
    cp $42
    ld a, [hl]
    inc a
    inc a
    add l
    nop
    ret nz

    add hl, bc
    cp $0e
    rst $30
    xor l
    rst $38
    and l
    db $fd
    and a
    ld a, [$4106]
    ld a, [$1346]
    cp $06
    jp hl


    rra
    or c
    ld a, a
    and $fe
    inc a
    inc a
    nop
    nop
    db $fc
    db $fc
    sbc $3a
    rst $38
    dec c
    rst $38
    dec b
    ld b, c
    ei
    rlca
    ld c, $fe
    add [hl]
    cp $4a
    ld a, l
    xor e
    db $fd
    inc bc
    db $dd
    inc hl
    xor $12
    adc $3e
    ld [$f822], sp
    ld bc, $c0c0
    and l
    nop
    ret nz

    add hl, de
    ccf
    jr nc, jr_01b_77c2

    ld h, b
    cp a
    ret nz

    db $fc
    add e
    cp a
    ret nz

    ld e, a
    ld h, b

Jump_01b_776c:
    scf
    jr c, jr_01b_779e

    jr nc, @+$35

    inc a
    inc a
    ccf
    rla
    rra
    db $10
    rra
    rrca
    rrca
    add e
    ld bc, $0b20
    scf
    jr c, jr_01b_77f0

    ld d, d
    rst $28
    sub c
    rst $38
    add c
    rst $38
    add b
    ld e, a
    ld h, b
    ld b, c
    ccf
    jr nz, jr_01b_7799

    cpl
    jr nc, jr_01b_77a8

    jr @+$3d

    inc a
    ld c, [hl]
    ld a, a
    ld b, c
    ld a, a
    ccf

jr_01b_7799:
    ccf
    add e
    ld bc, $0720

jr_01b_779e:
    rla
    jr jr_01b_77e0

    ld [de], a
    cpl
    ld sp, $213f
    ld b, d
    ld e, a

jr_01b_77a8:
    ld h, b
    ld bc, $704f
    add l
    ld bc, $0054
    ld b, [hl]
    add h
    ld bc, $8b5b
    nop
    add [hl]
    dec c
    ld b, $07
    ld a, b
    ld a, a
    pop af
    adc [hl]
    db $e3
    inc e
    ld h, e
    sbc h

jr_01b_77c2:
    add c
    ld a, [hl]
    ret nz

    ccf
    jp $0b00


    ld bc, $7f40
    adc l
    ld bc, $0b80
    ld a, e
    ld a, h
    rst $30
    adc b
    and $19
    ld h, a
    sbc c
    add a
    ld a, b
    jp $853c


    ld bc, $079a

jr_01b_77e0:
    ldh [$ffe0], a
    ret c

    jr c, @-$02

    inc c
    db $fc
    inc b
    ld b, c
    ld a, [$0106]
    cp $52
    ld b, c
    db $fd

jr_01b_77f0:
    ld d, e
    dec c
    db $fd
    inc bc
    db $fd
    inc hl
    ld a, [$ee06]
    ld e, $f9
    rst $38
    pop bc
    rst $38
    ld a, $3e
    adc b
    ld bc, $10c0
    ld d, [hl]
    ld a, [$fe56]
    ld d, d
    db $fd
    inc bc
    ld a, a
    ret


    or a
    ld a, c
    db $fd
    inc sp
    or d
    ld a, [hl]
    xor $de
    add l
    ld bc, $85da
    ld bc, $0160
    rra
    ld de, $0183
    ld l, b
    ld bc, $203f
    and h
    nop
    adc $07
    ld b, b
    ld d, a
    ld l, b
    scf
    jr c, jr_01b_786a

    ccf
    ld b, a
    add h
    ld bc, $1f5b
    ldh [$ffe0], a
    ld hl, sp+$18
    db $f4
    inc c
    db $fc
    inc c
    cp $ca
    rst $38
    dec hl
    ld a, a
    add e
    db $fd
    dec de
    push af
    dec sp
    db $fd
    inc sp
    ld a, [$ee36]
    ld [hl], $2c
    call c, $f8f8
    adc b
    ld hl, sp-$10
    ldh a, [$ff83]
    ld bc, $0fc0
    or $0e
    ei
    dec b
    ei
    inc [hl]
    rst $38
    ld b, b
    rst $38
    nop
    db $fd
    add e
    cp $82
    cp $02
    add e
    nop

jr_01b_786a:
    call nc, $ee07
    ld e, $39
    rst $38
    pop bc
    rst $38
    ld a, [hl]
    ld a, [hl]
    add e
    ld bc, $00c0
    db $f4
    add e
    ld bc, $0ac5
    ld [hl], $fe
    ld b, d
    db $fd
    inc bc
    db $fd
    add e
    db $fd
    inc bc
    ld sp, hl
    rlca
    add l
    ld [bc], a
    ld d, h
    nop
    ld sp, $0284
    ld e, e
    daa
    nop
    rrca
    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    rlca

jr_01b_7898:
    cp $0b
    db $fc
    adc a
    ld a, c
    ld c, a

jr_01b_789e:
    ld hl, sp-$3b
    cp $83
    ld a, a
    ld b, c
    nop
    rst $38
    inc bc
    jr nc, jr_01b_7898

    ld a, h
    rst $00
    dec h
    nop
    inc de
    ld b, $06
    ld a, e
    ld a, l
    sub a
    ld sp, hl
    ld e, $f2
    rst $18
    inc sp
    rst $38
    db $10
    rst $28
    sbc b
    rst $20
    sbc a
    ldh [$ff1f], a
    ret nz

    ccf
    add l
    ld [bc], a
    sbc d
    adc d
    ld bc, $00c0
    ld d, [hl]
    add h
    ld bc, $00cc
    inc bc
    adc l
    ld bc, $01d2
    nop
    nop
    sub h
    nop
    jr nz, jr_01b_78e1

    inc c
    ret z

    jr c, @-$0e

    ldh a, [$ff50]
    ldh a, [$ffe0]

jr_01b_78e1:
    ldh [$ff86], a
    ld [bc], a
    ld h, b
    inc b
    ld b, h
    ld a, [$fe46]
    ld b, d
    and h
    nop
    ld [$8109], sp
    rst $38
    ld bc, $0bf5
    or $0e
    ld e, $fe
    pop af
    add h
    ld [bc], a
    ld e, e
    adc a
    ld [bc], a
    ret nz

    adc a
    ld bc, $a9f0
    nop
    adc b
    inc bc
    add b
    add b
    add b
    add b
    ld sp, $a700
    nop
    ret nz

    dec b
    rra
    db $10
    cpl
    jr nc, jr_01b_7954

    jr nz, jr_01b_789e

    ld bc, $0250
    add hl, de
    ld e, $3f
    add h
    ld [bc], a
    add hl, de
    adc c
    inc bc
    ld a, $0e
    ret nz

    ret nz

    and b
    ld h, b
    ldh a, [$ff30]
    add sp, $58
    ld hl, sp-$78
    ld hl, sp+$18
    xor b

jr_01b_7931:
    ld a, b
    call nz, $fc43
    inc b
    xor d
    ld bc, $0c7f
    ld h, b
    ld h, b
    ldh a, [$ff90]
    ret nc

    jr nc, jr_01b_7931

    jr nc, jr_01b_798b

    ld hl, sp-$78
    ld hl, sp+$04
    sub b
    inc bc
    sub a
    dec b
    ld a, l
    ld a, l
    add e
    cp $07
    db $fc
    add e
    ld [bc], a
    adc [hl]

jr_01b_7954:
    ld bc, $fc4b
    sub c
    ld [bc], a
    sub h
    add l
    inc bc
    ld e, h
    nop
    inc b
    add e
    ld bc, $0aad
    adc c
    rst $20
    ld a, [de]
    ld h, a
    sbc e
    add a
    ld a, c
    jp $c13c


    cp [hl]
    sub h
    ld bc, $839c
    inc bc
    pop af
    ld [bc], a
    sbc d
    add a
    ld a, c
    add a
    ld bc, $87b8
    inc bc
    ld h, b
    dec b
    cpl
    jr nc, jr_01b_7a01

    ld h, b
    ld a, a
    ld b, b
    ld b, d
    cp a
    ret nz

    inc b
    ld c, a
    ld a, b

jr_01b_798b:
    inc sp
    inc a
    inc a
    add [hl]
    inc bc
    ld a, c
    and a
    ld bc, $02c0
    ccf
    jr nz, jr_01b_7a17

    call nz, Call_000_1302
    dec c
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
    jr nc, @+$32

    jp $8300


    sub l
    nop
    nop
    inc b
    dec de
    inc e
    rla
    rra
    ld [$02a4], sp
    db $fd
    dec b
    dec bc
    inc c
    ccf
    jr nc, jr_01b_7a36

    ld c, b
    add e
    nop
    ld a, [bc]
    and e
    ld [bc], a
    ld [hl], b
    add e
    nop
    ld l, [hl]
    dec bc
    ccf
    jr nc, jr_01b_7a24

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $2d
    nop
    ld [bc], a
    ld a, $3e
    pop bc
    ld b, h
    rst $38
    nop
    inc b
    rst $38
    ld [hl], b
    adc a
    ld a, a
    add b
    xor e
    nop
    adc b
    inc bc
    ldh a, [rSVBK]
    add sp, -$28
    sub l
    inc bc
    sub b
    dec d
    jr jr_01b_7a0b

    db $ec
    db $f4
    inc a
    db $e4
    ld a, $e2
    rst $18
    inc sp
    rst $38
    sub b
    db $eb
    ld e, h
    rst $20
    ld e, a

jr_01b_7a01:
    ldh [$ff9f], a
    ret nz

    ccf
    add b
    ld a, a
    adc c
    ld [bc], a
    sbc h
    dec b

jr_01b_7a0b:
    inc c
    inc c
    halt
    ld a, d
    sbc [hl]
    ldh a, [c]
    add h
    ld [bc], a
    xor h
    ld [bc], a
    sub b
    rst $28

jr_01b_7a17:
    ret c

    add e
    inc b
    db $f4
    ld bc, $3fc0
    add l
    inc bc
    jp c, Jump_000_003b

    daa

jr_01b_7a24:
    ld bc, $0241
    inc bc
    ld b, d
    inc b
    rlca
    ld b, d
    ld [$070f], sp
    rrca
    ld [$0e09], sp
    ld [$040f], sp

jr_01b_7a36:
    rlca
    rst $08
    inc bc
    ld h, c
    and l
    ld [bc], a
    ld h, b
    ld bc, $605f
    add l
    nop
    ld [$fc03], sp
    add e
    rst $38
    add b
    and e
    ld [bc], a
    ld d, b
    dec c
    ccf
    jr nz, jr_01b_7a85

    add hl, sp
    cpl
    ccf
    ld [hl+], a
    ccf
    inc h
    ccf
    dec e
    ld e, $07
    inc b
    ld b, c
    dec b
    ld b, $03
    ld [bc], a
    inc bc
    ld bc, $9501
    inc bc
    ld c, [hl]
    ld bc, $1817
    and h
    ld [bc], a
    ld h, h
    inc bc
    ld h, c
    ld a, a
    ld b, b
    ld a, [hl]
    add h
    dec b
    ld a, a
    ld bc, $213f
    add hl, sp
    nop
    dec b
    cp $fe
    pop bc
    ccf
    ret nz

    ccf
    adc e
    inc b
    or h
    rlca
    ld a, $c1

jr_01b_7a85:
    ccf
    ret nz

    ld a, a
    add h
    rst $38
    inc bc
    call nz, $9b02
    ld b, $80
    ccf
    ret nz

    rrca
    ldh a, [rIE]
    rst $38
    xor a
    inc bc
    ld d, h
    rra
    cp $1e
    rst $38
    add hl, bc
    rst $30
    dec e
    rst $38
    sub l
    rst $38
    ld d, a
    ld a, h
    add a
    ld hl, sp+$2f
    add sp, $1f
    db $fc
    cp a
    ret nz

    rst $38
    add e
    db $fc
    rst $38
    nop
    ei
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    inc c
    ld b, d
    rst $38
    nop
    dec b
    cp a
    ret nz

    ld a, a
    ld a, a
    nop
    nop
    or c
    dec b
    ld e, [hl]
    ld de, $0cfc
    cp $06
    ei
    rla
    rst $38
    sub e
    rst $38
    ld d, e
    ld a, $c3
    ld a, [$dc37]
    scf
    db $f4
    rrca
    db $d3
    dec b
    and a
    ld bc, $0407
    add a
    dec b
    ld c, d
    ld b, d
    db $10
    rra
    add hl, bc
    jr nz, @+$41

    ld hl, $3f3e
    jr nz, jr_01b_7afe

    rra
    inc c
    rrca
    pop de
    inc bc
    ld h, c
    ld b, c
    rra
    db $10
    ld [bc], a
    ld l, $39
    daa
    sub b
    dec b
    add a

jr_01b_7afe:
    db $e4
    inc hl
    nop
    dec c
    pop bc
    pop bc
    ld [hl-], a
    ldh a, [c]
    call z, $c3bc
    rst $38
    ld [bc], a
    cp $1e
    ldh [c], a
    db $fc
    inc b
    and h
    ld b, $7f
    ld [bc], a
    adc b
    db $f4
    adc h
    ret z

    inc bc
    cp l
    inc b
    ld [$30f0], sp
    ret nz

    ret nz

    inc sp
    nop
    dec b
    ld [hl], b
    ld [hl], b
    or b
    ret nc

    jr nc, @-$2e

    and e
    ld b, $82
    dec b
    ld [hl], h
    db $fc
    ld [bc], a
    cp $de
    ldh [c], a
    add h
    inc bc
    inc c
    ld b, c
    add hl, bc
    rst $38
    nop
    rlca
    ld b, d
    rst $38
    ld bc, $fe05
    ld [bc], a
    db $fc
    inc c
    ldh a, [$fff0]
    add hl, sp
    nop
    dec b
    jr c, @+$3a

    ret c

    add sp, $18
    add sp, $41
    inc b
    db $fc
    rlca
    ld [hl-], a
    cp $2f
    ret nc

    ccf
    ret nc

    ld a, a
    sub d
    add e
    ld b, $2e
    sub c
    dec b
    ld a, [$0584]
    sub $04
    sbc a
    ldh [rIE], a
    or c
    adc $f0
    ld hl, $2606
    nop
    inc bc
    add h
    nop
    sub e
    push bc
    nop
    sub a
    ld b, c
    inc b
    rlca
    rlca
    dec b
    ld b, $09
    ld c, $0b
    inc c
    rrca
    ld [$0b41], sp
    inc c
    inc bc
    dec b
    ld b, $03
    inc bc
    dec a
    nop
    dec e
    ld [hl], a
    ld [hl], a
    db $eb
    sbc h
    ld a, a
    add b
    rst $18
    jr nz, @-$3f

    ld c, d
    cp a
    jp z, $8aff

    rst $38
    add b
    rst $38
    add [hl]
    cp l
    add $5f
    ld h, e
    ld c, h
    ld [hl], a
    jr c, jr_01b_7be5

    ld [$070f], sp
    rlca
    add a
    dec b
    ld c, b
    ld bc, $0e09
    ld b, c
    rrca
    ld [$090d], sp
    ld c, $04
    rlca
    ld a, [bc]
    rrca
    ld [$110f], sp
    rra
    ld [de], a
    ld e, $0c
    inc c
    db $e4
    cpl
    nop
    add e
    ld b, $dc
    ld bc, $fc0c
    adc c
    ld b, $e2
    ld bc, $0cf4
    and [hl]
    inc b
    ld c, b
    inc b
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$18
    or c
    nop
    ld a, [hl]
    inc bc
    ld [bc], a
    cp $66
    ld a, [$21f0]
    rlca

jr_01b_7be5:
    inc h
    inc bc
    ccf
    ccf
    ret nz

    rst $38
    ld b, c
    add b
    ld a, a
    ld de, $fd06
    ld b, $ff
    nop
    rst $38
    jp $ff3c


    nop
    rst $30
    ld [$04ff], sp
    rst $38
    inc h
    rst $38
    jr jr_01b_7c44

Jump_01b_7c02:
    rst $38
    nop
    inc bc
    ld a, a
    add b
    rst $38
    rst $38
    dec sp
    nop
    and l
    ld [bc], a
    nop
    and a
    inc bc
    ld l, b
    rlca
    cp $3e
    ld sp, hl
    daa
    ld hl, sp+$27
    ldh [$ffbf], a
    ld b, c
    ld b, b
    rst $38
    dec c
    add b

jr_01b_7c1f:
    rst $38
    ld h, c
    sbc [hl]
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    inc b
    rst $38
    inc bc
    ld b, e
    rst $38
    nop
    dec b
    ld a, a
    add b
    sbc a
    ldh [$ff7f], a
    ld a, a
    inc sp
    nop
    dec b

jr_01b_7c39:
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $ff41


    add c
    dec b
    cp l

jr_01b_7c44:
    jp $665a


    inc a
    inc a
    sub a
    rlca
    ldh [c], a
    rlca
    ld a, a
    ld b, b
    ld e, a
    ld h, e
    inc h
    ccf
    jr @+$21

    adc c
    ld [$9900], sp
    dec b
    ld d, b
    add a
    rlca
    inc d
    rlca
    jr c, jr_01b_7c39

    inc [hl]
    db $fc
    call nz, Call_01b_4cfc
    db $f4
    and h
    ld [bc], a
    inc c
    ld b, c
    ld [de], a
    cp $00
    ld c, $8b
    ld [$8764], sp
    ld [$f024], sp
    dec [hl]
    ld b, $b8
    ld b, c
    db $fc
    add h
    add a
    ld [$0962], sp
    db $fd
    rlca
    pop af
    rrca
    and d
    ld a, [hl]
    call z, Call_000_30fc
    jr nc, jr_01b_7c1f

    ld [$00e0], sp
    ld [bc], a
    adc l
    ld [$83f4], sp
    inc b
    cp h
    ld b, c
    ccf
    ret nz

    inc bc
    ld a, a
    add d
    rst $38
    ld bc, $0587
    db $f4
    dec b
    rra
    ldh [$ffc1], a
    rst $38
    ld a, a
    ld a, a
    adc a
    ld b, $64
    ld bc, $0203
    sub c
    dec b
    sub h
    ld [bc], a
    ld [$070f], sp
    adc b
    dec b
    ld c, e
    dec bc
    db $10
    rra
    rra
    db $10
    ld de, $101e
    rra
    ld [$060f], sp
    rlca
    add a
    nop
    sbc b
    add a
    ld b, $e6
    dec b
    db $f4
    adc h
    db $fc
    add h
    db $fc
    inc b
    ldh a, [rNR50]
    add hl, bc
    sbc [hl]
    ld [bc], a
    inc a
    jr @+$68

    ld b, c
    inc a
    ld b, d
    inc bc
    jr jr_01b_7d45

    nop
    inc a
    sub h
    ld a, [bc]
    nop
    ld b, $0a
    rst $38
    ld a, a
    pop af
    ld c, a
    ldh a, [rVBK]
    call nz, Call_000_0009
    nop
    rst $38
    add l
    ld b, $e6
    rlca
    ld a, b
    adc b
    ld hl, sp+$48
    db $f4
    ld c, h
    db $fc
    add h
    sub e
    ld b, $f4
    add e
    inc b
    ld b, b
    ld a, [de]
    rst $28
    ldh a, [$ffdf]
    jr nz, @+$01

    nop
    rst $38
    ld a, [bc]
    cp a
    ld c, d
    ld a, a
    adc d
    rst $38
    add b
    cp a
    add $7d
    ld b, [hl]
    ld e, a
    ld h, b
    cpl
    inc sp
    inc e
    rra
    ld [$800f], sp
    sbc [hl]
    dec b
    rst $20
    rst $38
    ld l, c
    ld a, l
    ld [hl], d
    ld a, l
    ld a, e
    ld a, l
    add h
    ld a, l
    adc l
    ld a, l
    sbc d
    ld a, l
    and e
    ld a, l
    xor h
    ld a, l
    cp c
    ld a, l
    add $7d
    rst $08
    ld a, l
    ret c

    ld a, l
    pop hl
    ld a, l
    ld [$f37d], a
    ld a, l
    db $fc
    ld a, l
    dec b
    ld a, [hl]

jr_01b_7d45:
    ld c, $7e
    rra
    ld a, [hl]
    jr nc, jr_01b_7dc9

    ld b, c
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld h, e
    ld a, [hl]
    ld [hl], h
    ld a, [hl]
    add l
    ld a, [hl]
    sbc [hl]
    ld a, [hl]
    or a
    ld a, [hl]
    ret nc

    ld a, [hl]
    jp hl


    ld a, [hl]
    ld [bc], a
    ld a, a
    rra
    ld a, a
    inc a
    ld a, a
    ld e, c
    ld a, a
    ld e, [hl]
    ld a, a
    ld h, e
    ld a, a
    ld [bc], a
    ld hl, sp-$08
    jr nz, jr_01b_7d6e

jr_01b_7d6e:
    ld hl, sp+$00
    jr nc, jr_01b_7d73

    ld [bc], a

jr_01b_7d73:
    ld hl, sp+$00
    inc e
    nop
    ld hl, sp-$08

jr_01b_7d79:
    ld b, d
    ld bc, $f802
    nop
    ld b, d
    jr nz, jr_01b_7d79

    ld hl, sp+$2c
    ld hl, $f802
    ld hl, sp+$16
    nop
    ld hl, sp+$00
    ld h, $01
    inc bc
    ld hl, sp-$08
    inc d
    nop
    ld hl, sp+$00
    inc h
    nop
    ld hl, sp+$08
    inc [hl]
    ld bc, $f802
    ld hl, sp+$12
    nop
    ld hl, sp+$00
    ld [hl+], a
    ld bc, $f802
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    db $10
    ld bc, $fc03
    dec b
    xor d
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    db $10
    ld bc, $f803
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    stop
    rst $38
    ld [$01aa], sp
    ld [bc], a
    ld hl, sp-$08

jr_01b_7dc9:
    ld [hl-], a
    jr nz, @-$06

    nop

jr_01b_7dcd:
    ld [hl], $21
    ld [bc], a
    ld hl, sp-$07
    ld [hl-], a
    jr nz, jr_01b_7dcd

    ld bc, $2136
    ld [bc], a
    ld hl, sp+$00
    ld [hl], $20
    ld hl, sp-$08
    ld e, $21
    ld [bc], a
    ld hl, sp-$08
    ld c, $20
    ld hl, sp+$00

jr_01b_7de8:
    ld c, b
    ld hl, $f802
    nop
    ld b, [hl]
    jr nz, jr_01b_7de8

    ld hl, sp+$2e
    ld hl, $f802
    nop
    ld b, h
    jr nz, @-$06

    ld hl, sp+$0c
    ld hl, $f802
    ld hl, sp+$02
    jr nz, @-$06

    nop
    nop
    ld hl, $f802
    nop
    ld b, $20
    ld hl, sp-$08
    ld a, [bc]
    ld hl, $f004
    ld [$2008], sp
    ldh a, [rP1]
    jr jr_01b_7e37

    ldh a, [$fff8]
    jr z, @+$22

    ldh a, [$fff0]
    jr c, @+$23

    inc b
    pop af
    add hl, bc
    ld [$f120], sp
    ld bc, $2018
    pop af
    ld sp, hl
    jr z, @+$22

    pop af
    pop af
    jr c, @+$23

    inc b
    ldh a, [c]
    ld a, [bc]
    ld [$f220], sp
    ld [bc], a

jr_01b_7e37:
    jr @+$22

    ldh a, [c]
    ld a, [$2028]
    ldh a, [c]
    ldh a, [c]
    jr c, @+$23

    inc b
    ldh a, [$fff8]
    inc a

Call_01b_7e45:
    jr nz, jr_01b_7e37

    ldh a, [$ff4c]
    jr nz, @-$0e

    ld [$2008], sp
    ldh a, [rP1]

jr_01b_7e50:
    jr @+$23

    inc b
    ldh a, [rP1]
    ld a, [de]
    jr nz, @-$0e

    ld hl, sp+$2a
    jr nz, @-$0e

    ldh a, [$ff3a]

jr_01b_7e5e:
    jr nz, jr_01b_7e50

    ld [$2108], sp
    inc b
    pop af
    nop
    ld a, $20
    pop af
    ld hl, sp+$4e

jr_01b_7e6b:
    jr nz, jr_01b_7e5e

    ldh a, [$ff3a]

jr_01b_7e6f:
    jr nz, @-$0d

    ld [$2108], sp
    inc b
    pop af
    nop
    ld b, b
    jr nz, jr_01b_7e6b

    ld hl, sp+$50
    jr nz, jr_01b_7e6f

    ldh a, [$ff3a]
    jr nz, @-$0d

    ld [$2108], sp
    ld b, $ed
    db $f4
    ld d, d
    nop
    db $ed
    db $fc
    ld e, h
    nop
    db $ed
    inc b
    ld l, h
    nop
    db $fd
    db $f4
    ld d, h
    nop
    db $fd
    db $fc
    ld e, [hl]
    nop
    db $fd
    inc b
    ld l, [hl]
    ld bc, $f506
    db $f4
    ld h, [hl]
    nop
    dec b
    db $f4
    ld l, b
    nop
    push af
    inc b
    add h
    nop
    dec b
    inc b
    add [hl]
    nop
    dec b
    db $fc
    halt
    nop
    push af
    db $fc

jr_01b_7eb5:
    ld c, d
    ld bc, $f806

jr_01b_7eb9:
    inc b
    ld a, d
    jr nz, jr_01b_7eb5

    db $fc
    adc d
    jr nz, jr_01b_7eb9

    db $f4
    sbc b
    jr nz, jr_01b_7ecd

    inc b

jr_01b_7ec6:
    ld a, h
    jr nz, @+$0a

    db $fc

jr_01b_7eca:
    adc h
    jr nz, @+$0a

jr_01b_7ecd:
    db $f4
    sbc d
    ld hl, $f006
    dec b
    ld d, [hl]
    jr nz, jr_01b_7ec6

    db $fd
    ld h, b
    jr nz, jr_01b_7eca

    push af
    ld [hl], b
    jr nz, jr_01b_7ede

jr_01b_7ede:
    dec b

jr_01b_7edf:
    ld e, b
    jr nz, jr_01b_7ee2

jr_01b_7ee2:
    db $fd

jr_01b_7ee3:
    ld h, d
    jr nz, jr_01b_7ee6

jr_01b_7ee6:
    push af
    ld [hl], d
    ld hl, $f006
    dec b
    ld e, d
    jr nz, jr_01b_7edf

    db $fd
    ld h, h
    jr nz, jr_01b_7ee3

    push af
    ld [hl], h
    jr nz, jr_01b_7ef7

jr_01b_7ef7:
    dec b
    ld l, d
    jr nz, jr_01b_7efb

jr_01b_7efb:
    db $fd
    ld a, b
    jr nz, jr_01b_7eff

jr_01b_7eff:
    push af

Call_01b_7f00:
Jump_01b_7f00:
    adc b
    ld hl, $ef07
    db $fc
    and b

Jump_01b_7f06:
    jr nz, @+$01

    db $f4
    xor [hl]
    jr nz, jr_01b_7efb

    inc b
    sub h
    jr nz, @+$01

    inc b
    sub [hl]
    jr nz, @+$01

    db $fc

jr_01b_7f15:
    and d
    jr nz, @-$0f

    db $f4
    sbc h
    jr nz, @-$0f

    inc c
    inc [hl]
    ld bc, $f007

jr_01b_7f21:
    inc c
    and h
    jr nz, jr_01b_7f15

    inc b
    or b
    jr nz, jr_01b_7f29

jr_01b_7f29:
    inc b
    and [hl]
    jr nz, jr_01b_7f2d

jr_01b_7f2d:
    db $fc
    or d

jr_01b_7f2f:
    jr nz, jr_01b_7f21

    db $fc
    xor h

jr_01b_7f33:
    jr nz, jr_01b_7f35

jr_01b_7f35:
    db $f4
    xor b
    jr nz, jr_01b_7f29

    db $f4
    sbc h
    ld hl, $ed07
    inc b
    ld a, [hl]
    jr nz, jr_01b_7f2f

    db $fc
    adc [hl]

jr_01b_7f44:
    jr nz, jr_01b_7f33

    db $f4

jr_01b_7f47:
    sbc h
    jr nz, jr_01b_7f47

    inc b

jr_01b_7f4b:
    add b
    jr nz, jr_01b_7f4b

    db $fc

jr_01b_7f4f:
    sub b
    jr nz, jr_01b_7f4f

    db $f4
    sbc [hl]
    jr nz, jr_01b_7f44

    inc c
    inc [hl]
    ld bc, $f401
    db $fc
    sub d
    ld bc, $f401
    db $fc
    xor d
    ld bc, $f80a
    db $fc
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add b
    ld hl, sp-$04
    add d
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    ld [$0001], sp
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
    ld [$0000], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
