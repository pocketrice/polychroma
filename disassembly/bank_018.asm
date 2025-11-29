; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    ld c, h
    inc b
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, [hl+]
    rst $38
    dec h
    nop
    ld [bc], a
    ld a, [hl]
    ld a, [hl]
    add c
    ld b, l
    rst $38
    nop
    ld bc, $81ff
    adc [hl]
    nop
    rlca
    ld [bc], a
    nop
    nop
    ld bc, $0163
    nop
    rlca
    ld b, c
    ld [$450f], sp
    db $10
    rra
    ld b, c
    ld [$030f], sp
    inc b
    rlca
    ld b, $07
    inc hl
    inc bc
    inc hl
    ld bc, $0006
    nop
    xor d
    nop
    push af
    nop
    cp $86
    nop
    ld a, [de]
    ld b, $fa
    nop
    ld d, l
    nop
    xor d
    nop
    ld e, a
    add [hl]
    nop
    ld a, [de]
    ld [bc], a
    ld a, a
    nop
    xor a
    add h
    nop
    ld l, l
    nop
    push de
    add [hl]
    nop
    ld h, e
    nop
    db $fd
    and h
    nop
    ld l, l
    nop
    xor d
    ld b, l
    nop
    rst $38
    and [hl]
    nop
    adc e
    nop
    cp a
    add [hl]
    nop
    ld [hl], l
    ld [bc], a
    xor e
    nop
    ld d, l
    sub b
    nop
    ld e, a
    nop
    cp $4d
    nop
    rst $38
    ld bc, $7f00
    sub d
    nop
    ld l, a
    inc b
    ld d, l
    nop
    xor d
    nop
    ld d, l
    xor b
    nop
    db $ed
    ld b, $fe
    cp $03
    ld bc, $03f9
    db $fd
    ld b, c
    inc bc
    ld a, l
    ld b, h
    inc bc
    db $fd
    rlca
    inc bc
    sbc l
    ld h, e
    add hl, sp
    rst $00
    ld [hl], c
    adc a
    ld bc, $0086
    dec bc
    nop
    rst $30
    and e
    nop
    ld [hl], a
    adc [hl]
    nop
    cp a
    inc b
    db $fc
    inc bc
    ldh [$ff1f], a
    nop
    add [hl]
    nop
    dec bc
    ld [bc], a
    rra
    nop
    ccf
    sub d
    nop
    pop bc
    ld bc, $10ef
    add e
    ld bc, $a33c
    ld bc, $0200
    sbc h
    add b
    cp [hl]
    ld b, h
    add b
    cp a
    ld b, c
    add b
    sbc a
    ld bc, $bb80
    add h
    ld bc, $036f
    add b
    rst $38
    rst $38
    rst $38
    add h
    ld bc, $8800
    ld bc, $010b
    pop af
    rrca
    ld b, c
    ld sp, hl
    rlca
    ld b, d
    db $fd
    inc bc
    ld bc, $8779
    add a
    ld bc, $021c
    adc a
    nop
    rst $08
    adc [hl]
    nop
    pop bc
    nop
    rst $18
    add h
    ld bc, $8635
    ld bc, $cc3c
    ld bc, $8751

jr_018_40f9:
    ld bc, $0346
    cp a
    ld b, b

jr_018_40fe:
    inc e
    db $e3
    add a
    ld bc, $005c
    add a
    push bc
    ld bc, $cc73
    ld bc, $0373
    cp a
    add b
    sbc a
    and b
    and l
    ld bc, $231c
    ld a, a
    inc hl
    ccf
    inc hl
    rra
    inc hl
    rrca
    ld [hl+], a
    rlca
    adc d
    nop
    ld d, l
    cp a
    ld [bc], a
    nop
    rst $18
    ld [bc], a
    rra
    ld hl, sp+$21
    ld [bc], a
    ccf
    daa
    nop
    dec b
    ret nz

    ret nz

    ldh a, [$fff0]
    db $fc
    db $fc
    add a
    ld [bc], a
    adc b

jr_018_4136:
    add l
    nop
    jr z, jr_018_40f9

    ld [bc], a
    ld a, [hl]

Jump_018_413c:
    add e
    ld bc, $057e
    ld hl, sp-$08

jr_018_4142:
    ldh [$ffe0], a
    add b
    add b
    rst $08
    nop
    scf
    add a
    ld [bc], a
    ret nz

    cp a
    ld [bc], a
    ret nz

    rst $08
    ld [bc], a
    rst $08
    rst $08
    ld [bc], a
    rst $18
    cp a
    inc bc

jr_018_4157:
    nop
    dec h
    nop
    ld a, [bc]
    ldh [$ffe0], a
    jr jr_018_4157

    inc b
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld bc, $008c
    add hl, de
    ld b, c
    ld bc, $05ff
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    db $f4
    cpl
    inc bc
    jr c, jr_018_40fe

    nop
    ld [$0090], sp
    rra
    nop
    ld hl, sp+$45
    rst $38
    ldh a, [rSC]
    rst $38
    ld hl, sp-$01
    add e
    nop
    ld d, b
    inc bc
    ld [bc], a
    inc bc
    ld bc, $2701
    nop
    or c
    nop
    jr nc, jr_018_4142

    inc bc
    jp nz, Jump_000_0086

    ld hl, $00c7
    rla
    xor a
    nop
    ld b, b
    adc e
    ld [bc], a
    and b
    inc bc
    inc c
    rrca
    jr c, jr_018_41e6

    xor a
    nop
    ld d, b
    add [hl]
    nop
    jr nz, jr_018_4136

    ld [bc], a
    cp a
    add a
    inc bc
    ld [$008f], sp
    jr @-$77

    ld [bc], a
    ldh [$ff29], a
    rst $38
    dec b
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01

jr_018_41c2:
    and h
    nop
    nop
    inc [hl]
    rst $38
    and h
    inc b
    ld l, d
    nop
    rst $38
    or b

jr_018_41cd:
    inc b
    ld b, b
    xor [hl]
    inc b
    ld de, $03af
    or b
    rst $38
    nop
    ld b, b
    jr @+$01

    nop
    add b
    ld h, d
    ld a, l
    inc de
    ld b, b
    add b
    add b
    ld b, c
    scf
    ld a, a
    add b

jr_018_41e6:
    dec a
    ld a, a
    ld b, h
    ld b, l
    ld a, a
    add b
    add hl, sp
    dec sp
    ld a, a
    dec [hl]
    ld sp, $2935
    ld [hl+], a
    add b
    ld de, $1a18
    ld e, a
    ld a, a
    ld e, e
    dec sp
    ld c, h
    add b
    ld d, c

Call_018_41ff:
    ld d, e
    rla
    ld a, a
    ld e, d
    ld e, b
    ld d, h
    ld a, a
    jr c, jr_018_4287

    ld [hl+], a
    ld h, $09
    ld e, [hl]
    ld e, c

jr_018_420d:
    ld a, a
    add b
    ld a, [hl-]
    ld e, $26
    ld h, $80
    ld a, a
    db $e4
    push bc
    add b
    ld h, d
    ld a, l
    ldh [$ff28], a
    ccf
    add b
    add b
    ld b, d
    ld a, a
    add hl, sp
    dec sp

jr_018_4223:
    add b
    ld a, a
    ld b, e
    ld b, [hl]
    ld a, a
    scf
    add b
    ld a, a
    dec a
    inc sp
    cpl
    dec hl
    daa
    add b
    add b
    ld a, [de]
    ld h, c
    ld h, b
    ld a, a
    ld e, l
    ld d, h
    ld c, a
    dec a
    inc e
    rla

Jump_018_423c:
    ld e, h
    ld a, a
    ld e, [hl]
    ld d, l
    jr jr_018_41c2

    ld a, a
    ld a, a
    ld a, [hl-]
    ld [hl+], a
    ld h, $09
    ld d, c
    add b
    ld a, a
    jr c, jr_018_41cd

    dec e
    ld h, $26
    add b
    cpl
    db $e4
    push bc
    add b
    ld h, d
    ld a, l
    ldh [$ff28], a
    ld a, a
    ld b, b
    ld b, c
    ld a, a
    jr c, @+$81

    add b
    ld a, $44
    add b
    add b
    ld b, l
    add b
    ld a, [hl-]
    inc a
    ld a, a
    ld [hl], $32
    ld [hl], $2a
    add b
    ld c, e
    add b
    ld a, [hl]
    dec de
    ld h, d
    ld a, a
    ld a, [hl]
    inc a
    ld c, l
    add b
    scf
    add b
    ld b, l
    ld b, h
    add b
    ld d, d
    ld d, a
    scf
    add b
    add hl, sp
    jp $2f00


    add e
    nop

jr_018_4287:
    jr c, jr_018_428d

    ld h, $26
    jr nz, jr_018_420d

jr_018_428d:
    ld [hl-], a
    db $e4
    push bc
    add b
    add e
    ld bc, $e0ff
    daa
    ccf
    ld b, d
    ld a, a
    ld a, a
    ld a, [hl-]
    inc a
    add b
    ld b, e
    add b
    add b
    ld b, [hl]
    jr c, jr_018_4223

    ld a, a
    ld a, $34
    jr nc, @+$2e

    jr z, @+$50

    add b
    dec de
    ld h, d
    ld a, [hl]
    ld a, a

jr_018_42af:
    ld d, d
    ld d, a
    ld d, b
    ld a, $80
    ld a, a
    add b
    ld b, [hl]
    ld b, e
    add b
    ld a, [hl]
    add b
    ld a, a
    scf
    add b
    call nz, Call_000_2d02
    rlca
    add hl, sp
    add b
    add b
    ld h, $21
    ld [hl+], a
    ld a, a
    jr nc, jr_018_42af

    call nz, $3380
    nop
    inc bc
    ld bc, $0101
    ld bc, $003f
    ld bc, $fefd
    db $e4
    call nz, $ff00

    db $00, $40, $11, $ff, $e0, $42, $80, $24, $5d, $5a, $56, $02, $02, $80, $80, $33
    db $7d, $7d, $26, $24, $80, $80, $48, $42, $7d, $34, $7d, $30, $10, $0c, $4a, $44
    db $3d, $54, $50, $2e, $80, $80, $1c, $18, $80, $0e, $80, $1c, $1b, $80, $80, $1a
    db $80, $15, $13, $80, $80, $17, $80, $0c, $80, $0f, $24, $5d, $27, $7c, $7f, $7f
    db $f0, $80, $f2, $f7, $f9, $80, $0b, $1b, $27, $e4, $bc, $80, $e0, $2c, $00, $80
    db $58, $21, $80, $80, $04, $4c, $31, $7d, $7d, $28, $21, $80, $80, $7d, $40, $7d
    db $32, $7d, $7d, $0e, $80, $47, $54, $3a, $52, $4e, $2b, $80, $80, $1b, $80, $10
    db $0c, $80, $1b, $18, $80, $12, $17, $19, $14, $1f, $12, $23, $80, $0f, $0f, $0d
    db $09, $80, $27, $80, $7f, $7f, $80, $04, $f4, $04, $fb, $04, $80, $18, $f0, $bd
    db $00, $42, $e0, $26, $25, $5e, $5b, $57, $02, $07, $80, $4b, $7d, $7d, $33, $27
    db $25, $0f, $0b, $49, $43, $3c, $38, $36, $2d, $80, $80, $0e, $45, $3e, $55, $51
    db $2f, $80, $0d, $1d, $19, $1b, $80, $80, $1d, $11, $16, $27, $23, $05, $0b, $80
    db $80, $10, $25, $08, $83, $01, $35, $07, $f1, $f6, $07, $f8, $fa, $fd, $0c, $80
    db $f0, $bd, $00, $42, $e0, $26, $5f, $5c, $59, $22, $80, $01, $06, $4d, $7d, $7d
    db $31, $29, $22, $0d, $80, $46, $41, $39, $37, $35, $2a, $80, $80, $0c, $3f, $3b
    db $53, $4f, $2c, $0f, $0b, $80, $16, $18, $80, $1e, $80, $60, $1b, $27, $20, $11
    db $80, $80, $10, $0e, $0a, $5c, $7c, $80, $7f, $7f, $f3, $06, $f5, $06, $fc, $06
    db $80, $19, $f0, $bc, $00, $42, $04, $00, $00, $01, $01, $00, $27, $01, $02, $00
    db $00, $00, $87, $04, $03, $00, $06, $84, $04, $04, $36, $00, $05, $01, $fd, $fe
    db $01, $00, $01, $84, $04, $15, $e4, $57, $00, $01, $0d, $0d, $c3, $04, $94, $c3
    db $04, $98, $cd, $04, $9c, $c4, $04, $95, $c3, $04, $b0, $cd, $04, $b4, $00, $00
    db $f8, $2d, $04, $94, $01, $28, $00, $22, $1c, $83, $04, $f3, $ff, $73, $41

    rst $38
    nop

    db $05

    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf

    db $41

    rst $38
    ld a, a

    db $01

    rst $38
    rst $38

    db $af, $00, $00, $41

    db $c3
    nop

    db $06

    ccf
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a

    db $aa, $00, $1b, $00

    db $fc

    db $a8, $00, $27, $04

    ret nz

    nop
    rst $00
    nop
    rra

    db $41

    nop
    ccf

    db $42

    nop
    ld a, a

    db $00

    nop

    db $af, $00, $40, $47

    ld a, a
    nop

    db $46

    cp $00

    db $00

    db $fe

    db $e4, $80

    nop

    db $0b

    jp $e380


    ldh [$fffc], a
    ld a, h
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop

    db $c6, $00, $14, $05

    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l

    db $a5, $01, $13, $09

    rst $38
    push de
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a

    db $d4, $01, $27, $00

    xor d

    db $84, $00, $08, $02

    push af
    rst $38
    db $ea

    db $92, $01, $1f, $00

    db $ea

    db $c4, $00, $0c, $83, $00, $08, $97, $01, $44, $83, $01, $5b, $02

    rst $38
    rst $38
    rst $38

    db $45

    rst $38
    nop

    db $47

    rst $38
    ret nz

    db $0e

    rst $38
    jp $c301


    inc bc
    ld a, $07
    inc a
    rrca
    jr c, @+$21

    jr nc, @+$41

    ldh [$ff7f], a

    db $41

    ret nz

    rst $38

    db $0c

    ldh [$ff7f], a
    jr nc, @+$41

    jr c, jr_018_4502

    inc a
    rrca
    ld a, $07
    jp $c303


    db $41

    db $01
    rst $38

    db $07

    inc bc
    cp $07
    db $fc
    rrca
    ld hl, sp+$1f
    db $f0

    db $88, $01, $ab, $0c

    ldh a, [$ff3f]
    ld hl, sp+$1f
    db $fc
    rrca
    cp $07

jr_018_4502:
    rst $38
    inc bc
    rst $38
    db $01
    add b

    db $4d

    rst $38
    nop

    db $02

    rst $38
    add b
    rst $38

    db $af, $01, $00, $bb, $01, $22, $8f, $01, $10, $02

    ld d, l
    rst $38
    xor e

    db $83, $00, $18, $b6, $01, $45, $00

    xor a

    db $a8, $01, $5b, $97, $02, $44, $83, $02, $5b, $47

    inc bc
    rst $38

    db $ce, $01, $8e, $f4, $60, $01, $9f, $00

    ld d, l

    db $92, $01, $31, $00

    db $e0

    db $49

    rst $38
    ret nz

    db $01

    rst $38
    db $e0

    db $88, $01, $5b, $97, $03, $14, $83, $01, $5b, $83, $01, $a0, $08

    ccf
    rlca
    ld a, $0f
    dec a
    rra
    ld a, [hl-]
    ccf
    push af

    db $a5, $02, $63, $01

    ld a, a
    dec [hl]

    db $c3, $03, $5b, $8a, $01, $b9, $83, $02, $d1, $02

    db $fd
    rra
    db $fa

    db $85, $03, $5b, $ce, $03, $7f, $83, $00, $09, $00

    pop bc

    db $41

    rst $38
    db $c2

    db $07

    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ret z

    db $41

    rst $38
    ret nc

    db $05

    rst $38
    pop hl
    rst $38
    and $ff
    db $f8

    db $88, $01, $5b, $97, $03, $94, $83, $01, $5b, $8f, $01, $30, $04

    rst $38
    nop
    add b
    nop
    and b

    db $42

    nop
    add b

    db $03

    nop
    add c
    nop
    add a

    db $41

    nop
    adc a

    db $01

    nop
    add e

    db $44

    nop
    add b

    db $41

    nop
    db $c3

    db $43

    nop
    inc a

    db $84, $03, $ff, $f4, $43, $03, $10, $09

    ld a, h
    ldh [$ffbc], a
    ldh a, [$ff5c]
    ld hl, sp-$54
    db $fc
    ld d, a
    db $fe

    db $84, $02, $56, $07

    cp $5c
    db $fc
    cp h
    ld hl, sp+$7c
    ldh a, [$fffc]

    db $8a, $02, $bb, $04

    cp a
    ldh a, [$ff5f]
    ld hl, sp-$51

    db $88, $04, $5b, $06

    ld e, a
    db $fc
    cp a
    ld hl, sp+$7f
    ldh a, [rIE]

    db $f4, $44, $03, $8b, $8f, $02, $30, $00

    rst $38

    db $24

    nop

    db $08

    ld bc, $0300
    nop
    ccf
    nop
    rst $38
    nop
    ccf

    db $88, $01, $84, $04

    ld e, $00
    ld c, $00
    ld [bc], a

    db $c3, $04, $e3, $07

    nop
    ret nz

    nop
    add c
    nop
    add e
    nop
    add a

    db $84, $03, $ed, $00

    adc [hl]

    db $41

    nop
    sbc h

    db $41

    nop
    sbc b

    db $03

    nop
    adc h
    nop
    add [hl]

    db $c4, $05, $03, $83, $05, $00, $00

    add b

    db $41

    nop
    add d

    db $41

    nop
    add e

    db $07

    nop
    and e
    nop
    or e
    nop
    cp e
    nop
    cp a

    db $41

    nop
    sbc a

    db $ca, $05, $25, $c3, $05, $3a, $0e

    or a
    nop
    xor [hl]
    nop
    cp l
    nop
    cp d
    nop
    or h
    nop
    xor b
    nop
    or c
    nop
    or d

    db $8e, $05, $37, $04

    add a
    nop
    adc a
    nop
    sbc a

    db $44

    nop
    cp a

    db $c3, $05, $6b, $8c, $05, $39, $00

    adc [hl]

    db $c4, $05, $09, $03

    add e
    nop
    add c
    nop

    db $d0, $05, $8e, $8e, $03, $20, $03

    nop
    nop
    ld a, [hl]
    ld a, [hl]

    db $27

    ld b, d

    db $c3, $05, $b3, $08

    nop
    nop
    add hl, sp
    nop
    ld b, d
    nop
    ld b, e
    nop
    ld a, [hl-]

    db $c5, $04, $e5, $84, $03, $e9, $41

    add d
    nop

    db $00

    add c

    db $c5, $03, $e5, $c3, $05, $01, $42

    nop
    ret nz

    db $05

    nop
    ldh a, [rP1]
    adc $00
    sbc a

    db $84, $01, $0b, $02

    db $fc
    nop
    db $e0

    db $25

    nop

    db $f4, $28, $04, $fd, $a3, $03, $e2, $08

    dec b
    nop
    dec c
    nop
    adc l
    nop
    sbc l
    nop
    db $dd

    db $a5, $05, $6b, $ae, $05, $39, $0e

    ld c, l
    nop
    adc l
    nop
    dec d
    nop
    dec l
    nop
    ld e, l
    nop
    cp l
    nop
    ld [hl], l
    nop
    db $ed

    db $f4, $2e, $05, $57, $a7, $03, $ea, $01

    ld sp, hl
    nop

    db $ce, $06, $8e, $00

    nop

    db $91, $05, $b0, $8d, $05, $b2, $a5, $05, $d0, $02

    pop bc
    nop
    ld b, c

    db $a6, $05, $d9, $08

    nop
    nop
    adc $00
    add hl, hl
    nop
    ld l, $00
    ret


    db $86, $05, $c9, $ab, $03, $e0, $00

    db $01

    db $84, $06, $91, $02

    ld [hl], c
    nop
    add hl, de

    db $a9, $03, $f5, $f0, $20, $06, $9f, $8f, $05, $b0, $ff, $3a, $44, $18, $ff, $00
    db $80, $62, $7d, $13, $00, $7d, $06, $04, $06, $09, $02, $09, $04, $09, $06, $08
    db $01, $08, $04, $08, $06, $08, $09, $20, $c3, $00, $12, $07, $09, $20, $7e, $20
    db $02, $7e, $20, $7e, $83, $00, $1c, $e0, $29, $30, $30, $1a, $0b, $13, $0e, $20
    db $20, $7e, $7d, $1c, $0d, $13, $7f, $80, $80, $7f, $f6, $7d, $30, $30, $7f, $7c
    db $80, $2b, $30, $7d, $37, $20, $20, $80, $80, $30, $35, $26, $1f, $7c, $7e, $20
    db $7c, $30, $7f, $22, $30, $12, $06, $80, $80, $2b, $40, $2b, $44, $2b, $48, $01
    db $06, $2b, $42, $2b, $46, $02, $02, $2d, $23, $22, $30, $00, $20, $23, $80, $02
    db $30, $3f, $5f, $e4, $8c, $80, $62, $7d, $0b, $10, $7d, $16, $14, $16, $18, $11
    db $18, $14, $18, $08, $01, $41, $08, $14, $02, $08, $16, $20, $84, $01, $0c, $07
    db $20, $7e, $20, $18, $7e, $20, $7e, $11, $83, $01, $1b, $0c, $30, $0a, $30, $20
    db $1b, $20, $1e, $7e, $20, $0c, $7d, $20, $1d, $83, $00, $35, $00, $f7, $83, $00
    db $3a, $11, $7f, $80, $3b, $30, $27, $7d, $7e, $7e, $80, $80, $25, $30, $0f, $36
    db $20, $20, $7e, $7e, $84, $00, $50, $12, $16, $80, $80, $3b, $50, $3b, $54, $3b
    db $58, $33, $33, $3b, $52, $3b, $56, $7e, $18, $7e, $01, $22, $30, $00, $7e, $23
    db $80, $02, $2f, $4f, $30, $e4, $8c, $80, $62, $7d, $13, $7d, $7d, $07, $05, $09
    db $02, $09, $07, $09, $05, $07, $19, $12, $19, $05, $19, $09, $20, $07, $19, $8b
    db $00, $1c, $c3, $02, $10, $0b, $30, $0a, $20, $30, $1b, $20, $7e, $0f, $20, $0c
    db $20, $7d, $84, $01, $33, $0a, $f6, $f0, $f2, $f4, $7f, $7f, $80, $2c, $30, $27
    db $1e, $84, $01, $43, $01, $1e, $30, $87, $01, $4a, $17, $f2, $30, $07, $80, $80
    db $2c, $41, $2c, $45, $2c, $49, $7e, $09, $2c, $43, $2c, $47, $24, $24, $7e, $02
    db $30, $3e, $5e, $84, $01, $6a, $02, $30, $5d, $5c, $e4, $8c, $80, $84, $01, $ff
    db $11, $17, $15, $18, $11, $18, $17, $18, $15, $19, $12, $19, $17, $19, $15, $20
    db $18, $19, $17, $8b, $01, $1b, $c3, $03, $0d, $0c, $30, $03, $1a, $0b, $30, $7e
    db $20, $20, $1f, $03, $1c, $0d, $7d, $84, $01, $34, $e0, $31, $f1, $f3, $f5, $7c
    db $7f, $80, $3c, $30, $0e, $37, $20, $3d, $80, $80, $0e, $35, $26, $30, $7e, $7c
    db $7c, $20, $30, $7f, $30, $f3, $30, $17, $80, $80, $3c, $51, $3c, $55, $3c, $59
    db $11, $11, $3c, $53, $3c, $57, $12, $17, $20, $7e, $2e, $4e, $30, $3d, $23, $80
    db $01, $4d, $4c, $f0, $8c, $01, $71, $23, $00, $01, $80, $80, $e4, $21, $01, $00
    db $00, $63, $04, $23, $01, $63, $84, $11, $90, $00, $00, $10, $10, $80, $00, $00
    db $fd, $fe, $00, $21, $00, $84, $85, $01, $01, $00, $84, $04, $24, $0a, $fe, $fd
    db $fd, $fe, $40, $10, $40, $00, $40, $01, $00, $42, $00, $21, $02, $00, $01, $01
    db $85, $04, $56, $83, $04, $40, $01, $00, $01, $24, $00, $00, $10, $e4, $8c, $00
    db $ff, $73, $23

    nop

    db $05

    ldh [$ffe0], a
    ld hl, sp-$08
    db $fc
    db $fc

    db $23

    db $fe

    db $01

    rst $38
    rst $38

    db $af, $00, $00, $41

    rst $38
    nop

    db $08

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff

    db $af, $00, $1d, $a6, $00, $0d, $00

    nop

    db $42

    nop
    add b

    db $41

    nop
    ret nz

    db $00

    nop

    db $af, $00, $40, $41

    ldh [rP1], a

    db $04

    ldh a, [rP1]
    ld hl, sp+$00
    db $fc

    db $41

    nop
    rst $38

    db $01

    nop
    rst $38

    db $2c

    nop

    db $02

    ret nz

    nop
    db $f8

    db $af, $00, $6f, $00

    nop

    db $41

    rst $38
    add c

    db $0b

    ld a, a
    ld b, c
    ld a, a
    ld c, a
    ccf
    cpl
    inc a
    inc l
    inc e
    inc e
    jr jr_018_4990

    db $af, $00, $90, $41

    rst $38
    add c

    db $0a

    rst $38
    ld b, c
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    inc l
    rst $38
    inc e
    rst $38

    db $af, $00, $af, $09

    jr jr_018_49af

jr_018_4990:
    ccf
    ld a, a
    ld a, a
    rst $38
    ret nz

    ldh [$ff80], a
    rst $18

    db $42

    add b
    rst $38

    db $00

    add b

    db $af, $00, $d0, $03

    nop
    nop
    ld a, [hl]
    ld a, [hl]

    db $27

    ld b, d

    db $01

    ld a, [hl]
    ld a, [hl]

    db $29

    nop

    db $0d

    rrca
    rrca

jr_018_49af:
    db $10
    db $10
    jr nz, jr_018_49d3

    ld b, a
    ld b, b
    adc a
    add b
    sbc a
    add b
    cp a
    add b

    db $84, $00, $a2, $c5, $00, $c5, $0e

    add a
    rst $38
    add a
    cp $86
    cp $be
    db $fc
    cp h
    ldh a, [$ffb0]
    ld [hl], b
    ld [hl], b
    jr nz, @+$22

    db $43

    rst $38

jr_018_49d3:
    nop

    db $06

    rst $38
    rrca
    ldh a, [rNR10]
    ldh [rNR41], a
    rst $00

    db $94, $01, $0f, $0e

    rst $38
    add [hl]
    rst $38
    cp [hl]
    rst $38
    cp h
    rst $38
    or b
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    rra
    rst $38

    db $8c, $00, $d3, $07

    rst $38
    add b
    rst $38
    adc h
    rst $38
    sbc [hl]
    rst $38
    cp a

    db $23

    rst $38

    db $06

    ei
    rst $38
    pop af
    rst $38
    or c
    rst $38
    xor d

    db $41

    cp $c5

    db $03

    cp $c6
    rst $38
    db $ea

    db $41

    rst $38
    or c

    db $0a

    rst $38
    ld sp, $8a7f
    sbc [hl]
    push bc
    and $c1
    ld hl, sp-$3a
    db $fe

    db $85, $01, $8a, $02

    or c
    rst $38
    xor d

    db $41

    rst $38
    db $c4

    db $00

    rst $38

    db $87, $01, $88, $07

    rst $18
    add b
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop

    db $a6, $01, $6a, $04

    inc bc
    cp $02
    rst $38
    db $3e

    db $41

    rst $38
    db $fc

    db $07

    push hl
    and $fc
    rst $20
    cp $c3
    db $fd
    db $c3

    db $87, $01, $b0, $42

    cp $01

    db $05

    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $c2
    inc a

    db $41

    ld b, $f8

    db $03

    add hl, de
    and $18
    rst $20

    db $41

    inc a
    db $c3

    db $cf, $00, $6e, $10

    INCBIN "gfx/image_018_4a65.2bpp"

    db $e3

    db $84, $01, $3d, $02

    rra
    nop
    ccf

    db $85, $01, $b3, $07

    nop
    ld [de], a
    inc h
    inc b
    jr c, jr_018_4a9b

    jr nz, jr_018_4a8d

    db $42

    jr nz, @+$04

    db $09

jr_018_4a8d:
    ld hl, $2214
    rst $38
    inc c
    di
    inc de
    ldh [rNR41], a
    rst $18

    db $98, $02, $07, $06

jr_018_4a9b:
    jp nc, $c424

    jr c, @-$2a

    jr nz, @-$3a

    db $42

    jr nz, @-$3c

    db $02

    ld hl, $22d4

    db $24

    rst $38

    db $01

    nop
    nop

    db $45

    nop
    rst $38

    db $04

    jr @+$01

    inc a
    rst $38
    ld a, [hl]

    db $23

    rst $38

    db $06

    rst $20
    rst $38
    jp $42ff


    ld a, [hl]
    and l

    db $41

    inc a
    db $db

    db $17

    INCBIN "gfx/image_018_4ac5.2bpp"

    inc e
    dec h
    ld a, [hl]
    inc h
    rst $38
    ld b, d
    rst $38
    add c

    db $c3, $02, $9d, $41

    rst $38
    db $18

    db $01

    rst $38

jr_018_4ae5:
    inc h

    db $c6, $02, $a3, $12

    INCBIN "gfx/image_018_4aea.2bpp"

    rst $18
    add b
    cp a

    db $42

    add b
    rst $38

    db $42

    add c
    rst $38

    db $00

    add e

    db $83, $01, $bc, $08

jr_018_4b09:
    rst $38
    ld b, $fe
    inc c
    db $fd
    jr @-$03

    jr nc, jr_018_4b09

    db $8a, $02, $bd, $42

    cp $81

    db $01

    db $fc
    add e

    db $cf, $00, $7e, $17

    INCBIN "gfx/image_018_4b1f.2bpp"

    inc de
    db $10
    di
    jr nc, @-$17

    jr nz, @-$37

    ld b, b

    db $41

    rst $28
    ld h, b

    db $41

    rst $38
    db $30

    db $16

    INCBIN "gfx/image_018_4b3e.2bpp"

    rst $38
    ld bc, $02fe
    db $fd
    db $c4

jr_018_4b54:
    rst $38

    db $9a, $03, $07, $0d

    rst $38
    ld hl, sp-$31
    cp h
    rst $08
    xor h
    rst $00
    and [hl]
    rst $00
    ld h, $c3
    inc hl
    rst $10
    inc hl

    db $f4, $2f, $01, $60, $ae, $02, $90, $af, $01, $9f, $f4, $b0, $02, $af, $02

    rra
    rra
    ld a, a

    db $8e, $01, $63, $04

    di
    adc h
    pop hl
    sbc [hl]
    ret nz

    db $85, $02, $c2, $06

    di
    add b

jr_018_4b88:
    pop hl
    inc e
    ldh [c], a
    ld e, b
    and h

    db $41

    ld b, h
    cp b

    db $1b

    INCBIN "gfx/image_018_4b91.2bpp"

    ld e, d
    and h
    dec de
    db $e4
    dec a
    jp nz, $c13e

    dec e
    ldh [c], a
    ld e, e
    and h

    db $41

    ld b, a
    cp b

    db $03

    ld e, e
    and h
    dec sp
    db $c4

    db $83, $04, $9c, $f4, $af, $01, $b0, $af, $00, $60, $07

    rst $38
    nop
    rst $20
    jr jr_018_4b88

    inc a
    add c
    ld a, [hl]

    db $85, $05, $6d, $05

    nop
    jp Jump_018_423c


    jr jr_018_4bf6

    db $41

    inc h
    db $18

    db $1b

    INCBIN "gfx/image_018_4bd6.2bpp"

    ld e, e
    inc h
    db $db
    inc h
    cp l
    ld b, d
    ld a, [hl]
    add c
    cp l
    ld b, d
    db $db

jr_018_4bf1:
    inc h

    db $41

    rst $20
    db $18

    db $00

jr_018_4bf6:
    db $db

    db $86, $05, $99, $af, $01, $90, $03

    nop
    ld d, l
    nop
    xor d

    db $84, $00, $69, $0c

    rst $30
    nop
    db $eb
    nop
    sbc h
    add b
    ld a, a
    ld b, b
    cp [hl]
    jr nc, @-$32

    nop
    db $f0

    db $89, $02, $f1, $06

    ld h, b
    nop
    sbc b
    nop
    and $00
    ld sp, hl

    db $86, $05, $19, $00

    rst $38

    db $ce, $00, $4f, $f4, $61, $00, $fe, $f4, $2f, $04, $60, $af, $05, $90, $a9, $04
    db $a0, $a4, $04, $9a, $b0, $04, $8f, $83, $05, $c0, $85, $05, $c8, $83, $01, $b5
    db $f4, $33, $05, $ce, $8b, $00, $f2, $c9, $01, $01, $d7, $07, $17, $ff, $1c, $49
    db $18, $ff, $00, $80, $62, $7d, $03, $4c, $4e, $7d, $36, $22, $80, $22, $7d, $e0
    db $56, $80, $2b, $01, $21, $41, $04, $24, $44, $7d, $2d, $80, $12, $2b, $7d, $15
    db $2d, $0b, $3c, $06, $16, $16, $06, $16, $16, $1c, $3c, $08, $18, $18, $38, $48
    db $48, $0d, $3e, $09, $29, $29, $39, $59, $59, $1e, $3e, $0a, $1a, $1a, $3a, $4a
    db $4a, $06, $36, $08, $38, $09, $39, $0a, $3a, $0f, $2f, $f4, $80, $82, $7d, $81
    db $36, $16, $16, $7f, $7f, $80, $7d, $06, $15, $12, $36, $7c, $7f, $7d, $2d, $82
    db $80, $7c, $1a, $2f, $fd, $fd, $16, $7d, $e4, $9a, $80, $62, $7d, $03, $5c, $5e
    db $7d, $16, $85, $00, $08, $e0, $41, $1b, $80, $11, $31, $51, $14, $34, $54, $1d
    db $7d, $1b, $42, $80, $1d, $45, $7d, $0c, $3b, $16, $16, $26, $16, $16, $26, $0c
    db $2c, $18, $18, $28, $48, $48, $58, $0e, $3d, $19, $19, $4b, $49, $49, $5b, $0e
    db $2e, $1a, $1a, $2a, $4a, $4a, $5a, $26, $56, $28, $58, $4b, $5b, $2a, $5a, $1f
    db $3f, $80, $f5, $84, $7d, $80, $16, $56, $56, $83, $00, $50, $0f, $26, $42, $45
    db $56, $7f, $7f, $1d, $7d, $84, $80, $80, $1a, $1f, $fe, $16, $fe, $f0, $9e, $00
    db $64, $e0, $23, $4d, $7d, $7d, $37, $00, $20, $40, $03, $23, $43, $1b, $3d, $02
    db $22, $fa, $05, $25, $fc, $1d, $3d, $1b, $12, $3b, $1d, $15, $3b, $0c, $18, $07
    db $17, $17, $37, $47, $47, $08, $18, $85, $00, $28, $01, $0e, $48, $85, $00, $38
    db $00, $38, $86, $02, $2d, $03, $07, $37, $08, $38, $41, $0a, $3a, $1e, $4f, $80
    db $f6, $f8, $83, $7d, $80, $07, $17, $47, $7f, $7f, $f1, $f3, $37, $15, $12, $07
    db $7f, $7f, $1d, $3d, $83, $80, $80, $1a, $80, $07, $07, $17, $f3, $e4, $9a, $80
    db $62, $7d, $e0, $23, $5d, $7d, $7d, $47, $10, $30, $50, $13, $33, $53, $0d, $2b
    db $f9, $32, $52, $fb, $35, $55, $0d, $2d, $0b, $42, $2b, $0b, $45, $2d, $18, $3c
    db $17, $17, $27, $47, $47, $57, $18, $28, $85, $01, $27, $01, $48, $3e, $85, $01
    db $37, $01, $48, $58, $85, $01, $37, $03, $27, $57, $28, $58, $41, $2a, $5a, $1e
    db $80, $5f, $f7, $46, $85, $7d, $80, $17, $27, $57, $7f, $7f, $f0, $f2, $57, $42
    db $45, $27, $7f, $7c, $0d, $2d, $85, $80, $80, $7c, $80, $27, $17, $27, $f2, $e4
    db $99, $80, $24, $00, $02, $80, $80, $03, $25, $00, $01, $04, $05, $25, $03, $07
    db $04, $05, $04, $00, $05, $04, $00, $05, $24, $01, $01, $03, $03, $c5, $04, $1f
    db $02, $00, $00, $00, $84, $04, $20, $22, $80, $87, $04, $2a, $06, $01, $03, $01
    db $00, $01, $80, $01, $c4, $04, $01, $00, $21, $a3, $03, $ff, $03, $03, $10, $90
    db $00, $83, $04, $02, $0c, $01, $fe, $fd, $84, $85, $21, $00, $fe, $fd, $00, $01
    db $01, $01, $e4, $9a, $00, $ff

    ld [hl], e

jr_018_4e3a:
    ld b, c
    rst $38
    nop

jr_018_4e3d:
    dec b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    ld b, c
    rst $38
    cp $01
    rst $38
    rst $38
    xor a
    nop
    nop
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp Jump_000_2300


    add a
    nop
    jr nz, @-$37

    nop
    scf
    add a
    nop
    jr nz, @-$37

    nop
    ld b, a
    add a
    nop
    jr nz, @-$37

jr_018_4e67:
    nop

jr_018_4e68:
    ld d, a
    add a
    nop
    jr nz, @-$37

    nop
    ld h, a
    add a
    nop
    jr nz, jr_018_4e3a

    nop
    ld [hl], a
    add a
    nop
    jr nz, @-$37

    nop
    add a
    ld hl, sp+$70
    nop
    adc a
    inc bc
    ccf
    ldh [rLCDC], a
    ret nz

    inc hl
    add b
    dec b
    adc b
    db $e4
    sbc c
    adc c
    halt
    sbc $43
    jr nz, jr_018_4e68

    ld b, e
    jr nz, jr_018_4e67

    db $10
    jr nz, @+$01

    ccf
    ld [hl], b
    ret nz

    add b
    add b
    adc h
    add b
    sbc $8c
    ld [hl], e
    rst $38
    ret nz

    ld a, a
    rst $38
    ccf
    inc hl
    nop
    inc e
    ld bc, $0700
    nop
    ccf
    inc bc
    db $f4
    rrca
    ret c

    ccf
    ldh [rIE], a
    nop
    rst $28
    db $10
    rst $00
    jr c, jr_018_4e3d

    ld a, h
    ld bc, $807e
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    adc $01
    ld c, a
    inc bc
    rst $38
    ccf
    rst $38
    ld b, b
    ld b, a
    ret nz

    add b
    inc e
    pop bc
    add b
    rst $00
    add b
    rst $38
    add e
    or h
    rst $08
    sbc b
    rst $38
    ldh [rIE], a
    add b
    rst $28
    sub b
    rst $00
    ld hl, sp-$7d
    cp h
    pop bc
    cp [hl]
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$ff8f], a
    ldh a, [$ff87]
    call nz, $8f01
    dec d
    rst $38
    add b
    cp [hl]
    pop bc
    cp h
    jp $c7b8


    sub b
    rst $28
    rst $38
    ld bc, $02ff
    cp $04
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    add h
    ld bc, $2a02
    nop
    nop
    inc bc
    ld b, c
    nop
    rlca
    ld bc, $0601
    ld b, c
    inc bc
    ld c, $0b
    inc bc
    inc e
    rlca
    ld a, h
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    rlca
    ld bc, $4107
    ld [bc], a
    rrca
    ld [bc], a
    ld [bc], a
    ld e, $05
    add e
    ld bc, $01ca
    ldh a, [$ffef]
    ld b, l
    ret nz

    add b
    nop
    jp $8041


    rst $00
    ld bc, $c781
    ld b, c
    add d
    rst $08
    ld [$de82], sp
    add l
    db $fc
    add a
    ld hl, sp-$61
    ldh a, [$ffef]
    db $f4
    scf
    ld bc, $0000
    ld hl, sp-$0c
    adc l
    ld bc, $a839
    ld bc, $f4d7
    jr nc, jr_018_4f5b

    ret nc

jr_018_4f5b:
    ld bc, $ffff
    inc l
    nop
    adc e
    ld bc, $8390
    ld bc, $8b2c
    ld bc, $c350
    nop
    ld de, $c041
    ld a, a
    dec c
    ldh [$ff3f], a
    ldh a, [$ff1f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    rst $38

jr_018_4f7b:
    ld bc, $ff80
    adc a
    inc bc
    ld [hl-], a
    adc c
    inc bc
    ld [hl-], a
    inc d
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld b, b
    add b
    add b
    ret nz

    jp $fec1


    jp $c7fc


    ld hl, sp-$11
    ret nc

    rst $38
    and h
    inc bc
    ld a, [hl-]
    ld bc, $ffc0
    add a
    inc bc
    ld l, b
    inc b
    rst $30
    ret nz

    db $e3
    ret nz

    pop bc

jr_018_4fa9:
    ld [hl+], a
    ret nz

    dec c
    pop bc
    ret nz

    jp $c7c0


    ret nz

    rst $28
    ret nz

    rst $30
    ret z

    db $e3
    call c, $fec1
    sub e
    inc bc
    halt
    ld bc, $e0e3
    jp Jump_000_1c00


    dec e
    db $10
    rrca
    inc b
    jr jr_018_4fd9

    jr nz, @+$22

    ld b, b
    nop
    ld b, d
    ld [bc], a
    ld b, l
    inc hl
    call nz, $a856
    ld hl, sp+$07
    db $e4
    jr jr_018_4fa9

jr_018_4fd9:
    jr nz, jr_018_4f7b

    ld b, b
    add b
    ld b, d
    add d
    ld b, l
    inc hl
    call nz, $5441
    xor b
    nop
    jr z, jr_018_5035

    sub b
    ld [$9001], sp
    db $fc
    call nz, Call_000_3702
    xor b
    ld bc, $0430
    nop
    rst $38
    inc a
    jp Jump_000_2442


    add c
    ld b, $e7
    rst $20
    sbc c
    jp $ff7e


jr_018_5002:
    inc a
    db $f4
    ld d, b
    inc bc
    db $10
    add l
    inc bc
    ld [bc], a
    rrca
    jp $fe01


    add e
    ld a, h
    rst $00
    jr c, jr_018_5002

    db $10
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
    ld de, $dec0
    pop hl
    rst $30
    nop
    db $e3
    nop
    pop bc
    nop
    add b
    nop
    ld bc, $8300
    nop
    rst $00
    nop
    rst $28
    add a
    ld [bc], a
    ld b, b
    nop

jr_018_5035:
    ld a, a
    add a
    inc b
    ld l, b
    adc e
    inc b
    sub b
    inc hl
    rst $38
    db $f4
    ld d, b
    inc bc
    or b
    add h
    inc bc
    ld h, c
    nop
    adc a
    ld b, a

jr_018_5048:
    add b
    sbc a
    inc b
    add b
    adc a
    sub b
    add b
    cp a
    add e
    ld bc, $002c
    rst $38
    add e
    inc b
    ld b, b
    ld [de], a
    ld b, $fc
    inc c
    ld sp, hl
    jr @-$0b

    jr nc, jr_018_5048

    ld h, b
    rst $08
    ret nz

    add a
    adc b
    inc bc
    inc c
    ld bc, $001e
    ccf
    add a
    inc b
    ld l, b
    adc a
    dec b
    jr nc, jr_018_5075

    rst $00
    ret z

jr_018_5075:
    jp $038c


    sub e
    add l
    nop
    rrca
    ld bc, $ff00
    add a
    inc b
    ld l, b
    xor a
    inc b
    ld [hl], b
    sub b
    inc b
    sub b
    adc a
    inc b
    add c
    adc d
    inc b
    add c
    inc hl
    rst $38
    ld bc, $e1de
    add $04
    ld a, h
    add hl, bc
    ret nz

    cp [hl]
    pop bc
    pop bc
    rst $38
    ld a, a
    rst $38
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
    rst $38
    ld a, [hl]
    rst $38
    db $f4
    ld sp, $d000
    dec b
    inc bc
    ld [bc], a
    ld bc, $f107
    rrca
    ld b, a
    ld sp, hl
    rlca
    inc bc
    pop af
    rrca
    ld bc, $abff
    dec b
    inc e
    ld c, $1f
    jr jr_018_50d5

    inc c
    add a
    ld b, $c3
    inc bc
    ld sp, hl
    ld bc, $00ec
    add $00
    add e
    adc b
    inc b
    add a

jr_018_50d5:
    adc a
    ld b, $30
    ld bc, $03fb
    xor d
    inc bc
    and b
    ld [bc], a
    inc bc
    rst $28
    inc bc
    and a
    inc bc
    ld h, b
    and e
    inc bc
    halt
    inc bc
    rst $00
    dec sp
    rst $28
    inc de
    and a
    inc bc
    ld [hl], b
    add a
    ld b, $68
    rlca
    rst $30
    dec bc
    db $e3
    rra
    jp $833f


    ld a, a
    adc b
    ld b, $78
    inc bc
    inc bc
    db $e3
    inc bc
    jp Jump_000_068a


    ld d, l
    adc c
    ld b, $80
    ld bc, $7f87
    and e
    inc bc
    xor h
    xor [hl]
    dec b
    or b
    ldh a, [rSVBK]
    nop
    rra
    rst $38
    add hl, sp
    ld c, [hl]
    jr @+$01

    nop
    add b
    ld h, d
    ld a, l
    ld d, $06
    ld b, $20
    jr nz, jr_018_512e

    inc b
    inc b
    ld a, l
    ld a, [de]
    dec bc
    dec e
    ld c, $1d

jr_018_512e:
    ld [$0404], sp
    ld [$2308], sp
    inc b
    inc hl
    inc h
    inc h
    ld [hl+], a
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $7d22
    ldh [rNR44], a
    dec l
    ld a, l
    dec a
    ld a, l
    dec sp
    inc a
    inc l
    dec hl
    ld a, l
    ld a, $3e
    ld l, $2f
    ld a, l
    ld a, l
    ccf
    ld a, l
    ld a, l
    daa
    ld b, [hl]
    ld b, [hl]
    add hl, hl
    ld c, b
    ld c, b
    add hl, hl
    ld c, b
    ld c, b
    ld h, $46
    ld [hl], $36
    ld a, l
    ld b, e
    ld c, b
    ld d, d
    ld b, h
    ld b, c
    ld c, b
    ld b, l
    rlca
    ld c, b
    ld a, l
    ld [bc], a
    ld l, b
    ld a, a
    ld a, l
    ld a, a
    ld a, h
    ld b, c
    add d
    ld a, l
    ld d, $01
    ld b, b
    ld a, l
    ld a, $2f
    ld a, l
    ld a, h
    ld a, l
    scf
    ld c, h
    ld a, l
    scf
    ld c, h
    ld bc, $047c
    ld a, l
    dec l
    ld l, $2c
    scf
    ld c, h
    ld l, $e4
    ld h, b
    ld l, b
    db $e4
    cpl
    add b
    ld h, d
    ld a, l
    ld c, $16
    jr nz, jr_018_51b9

    ld d, $14
    inc d
    jr jr_018_51a8

    ld a, l
    dec c
    dec de
    dec c
    ld e, $14
    inc d
    ld [hl+], a
    jr jr_018_51a9

jr_018_51a8:
    inc d

jr_018_51a9:
    inc sp
    ld [hl+], a
    inc d
    dec b
    inc [hl]
    inc [hl]
    inc sp
    ld [de], a
    db $10
    ld de, $7d22
    ld c, $3d
    dec l
    ld a, l

jr_018_51b9:
    inc l
    dec hl
    ld a, l
    dec sp
    inc a
    ld l, $2e
    ld a, l
    ld a, $3f
    ld a, l
    cpl
    ld [hl+], a
    ld a, l
    ld [de], a
    ld b, [hl]
    ld b, [hl]
    ld d, a
    ld c, c
    ld c, c
    ld e, c
    ld c, c
    jr c, @+$5b

    ld [hl], $46
    ld d, [hl]
    ld [hl], $42
    ld c, c
    ld d, e
    ld a, l
    ld c, c
    ld d, h
    ld b, c
    ld c, c
    ld d, l
    ld bc, $127d
    add e
    nop
    ld c, a
    nop
    ld a, a
    ld b, c
    add h
    ld a, l
    ld [bc], a
    ld de, $2e50
    add e
    nop
    ld [hl-], a
    rrca
    ld a, l
    ld b, a
    ld c, h
    ld a, l
    ld b, a
    ld c, h
    ld de, $1414
    ld a, l
    dec a
    ld a, $3c
    ld b, a
    ld c, h
    ld a, $e4
    ld h, b
    ld l, b
    ldh a, [$ff32]
    nop
    ret nc

    inc de
    rlca
    rlca
    inc bc
    inc bc
    add hl, bc
    dec b
    dec b
    ld a, [bc]
    dec de
    inc c
    dec b
    rrca
    dec b
    ld hl, $2222
    add hl, bc
    ld hl, $357d
    ld [hl+], a
    ld a, l
    db $10
    dec [hl]
    inc [hl]
    inc [hl]
    ld a, l
    ld bc, $2c01
    ld a, l
    inc a
    ld l, $7d
    ld a, $7d
    dec a
    dec a
    dec l
    dec l
    add e
    nop
    inc l
    add h
    ld bc, $0a30
    ccf
    jr z, jr_018_5284

    ld c, c
    jr z, jr_018_5287

    ld c, c
    ld a, [hl+]
    ld c, d
    ld c, d
    jr z, jr_018_5266

    ld c, c
    inc bc
    ld b, d
    ld c, c
    ld c, c
    ld d, e
    add e
    ld [bc], a
    dec [hl]
    ld [$4a2a], sp
    ld a, l
    ld bc, $7f68
    pop af
    ld a, a
    ld a, a
    ld b, c
    add e
    ld a, l
    inc d
    ld bc, $7d41
    ld a, $7d
    pop af
    ld a, l
    ld a, l
    ld c, e
    ld c, h
    ld a, l

jr_018_5266:
    ld c, e
    ld c, h
    ld bc, $0505
    inc l
    ld l, $2e
    dec l
    ld c, e
    ldh a, [$ff95]
    nop
    ld l, l
    ld d, $17
    inc de
    inc de
    rla
    dec d
    dec d
    add hl, de
    dec bc
    ld a, [de]
    dec d
    inc e
    dec d
    rra
    ld [hl-], a
    ld [hl-], a

jr_018_5284:
    ld sp, $3119

jr_018_5287:
    dec h
    ld a, l
    inc h
    inc h
    dec h
    inc hl
    ld a, l
    inc c
    ld de, $3c11
    inc l
    ld a, l
    ld a, $2e
    ld a, l
    dec l
    dec l
    ld a, l
    dec a
    dec a
    add e
    ld bc, $c42b
    nop
    inc [hl]
    add hl, bc
    ld a, l
    ld c, b
    ld c, b
    ld e, b
    ld c, b
    ld c, b
    ld e, b
    ld a, [hl-]
    ld a, [hl-]
    ld e, d
    add e
    inc bc
    inc sp
    inc b
    ld b, e
    ld c, b
    ld c, b
    ld d, d
    ld c, b
    add e
    inc bc
    ld [hl], $07
    ld e, d
    ld a, l
    ld de, $7f68
    ldh a, [$ff7c]
    ld a, a
    ld b, c
    add l
    ld a, l
    inc d
    ld de, $2e51
    ld a, l
    ld a, l
    ldh a, [$ff7d]
    ld a, h
    ld e, e
    ld c, h
    ld a, l
    ld e, e
    ld c, h
    ld de, $7c15
    inc a
    ld a, $3e
    dec a
    ld e, e
    ldh a, [$ff91]
    ld bc, $236c
    nop
    ld h, $79
    ld bc, $7d7c
    jr z, @+$7b

    ld bc, $7f7e
    ld [hl+], a
    ld a, [hl]
    ld [hl+], a
    ld a, a
    ld bc, $7b7a
    dec [hl]
    nop
    ld [hl+], a
    ld bc, $7926
    ld b, $01
    ld a, c
    ld a, c
    ld a, h
    ld a, c
    ld a, c
    ld a, l
    add l
    inc b
    inc [hl]
    ld a, [de]
    jr z, @+$7c

    nop
    stop
    db $fd
    cp $21
    nop
    ld hl, $2828
    ld a, c
    nop
    nop
    jr z, @+$2a

    cp $fd
    ld sp, $0001
    ld sp, $0001
    cp $fd
    inc hl
    jr z, @+$03

    ld sp, $e401
    sub b
    nop
    rst $38

    db $02, $01, $01, $01, $0e, $02, $99, $58, $18

    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $5f, $2f, $00, $09, $01, $01, $06, $02, $03, $01, $06, $00, $5a, $5b, $24
    db $01, $0a, $00, $3d, $06, $00, $00, $05, $06, $00, $03, $04, $03, $85, $00, $1b
    db $00, $00, $62, $08, $02, $00, $00, $03, $27, $01, $01, $00, $00, $62, $10, $02
    db $00, $00, $05, $89, $00, $38, $62, $18, $01, $00, $58, $88, $00, $46, $0a, $00
    db $00, $4e, $4f, $00, $03, $01, $04, $00, $05, $06, $84, $00, $47, $03, $00, $04
    db $56, $57, $83, $00, $2a, $00, $04, $86, $00, $35, $01, $00, $01, $85, $00, $29
    db $00, $3e, $86, $00, $36, $c8, $00, $40, $06, $04, $05, $01, $01, $01, $01, $01
    db $e4, $6f, $00, $02, $01, $01, $01, $88, $00, $9b, $c7, $01, $1b, $c7, $01, $23
    db $c7, $01, $2b, $c7, $01, $33, $c7, $01, $3b, $c7, $01, $43, $c7, $01, $4b, $f8
    db $53, $01, $53, $00, $5e, $e4, $56, $00, $ff, $02, $01, $01, $01, $0e, $02, $99
    db $58, $18

    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $5f, $2f, $00, $09, $01, $01, $06, $02, $03, $01, $06, $00, $5a, $5b, $24
    db $01, $0a, $00, $3d, $06, $00, $00, $05, $06, $00, $03, $04, $03, $85, $00, $1b
    db $00, $00, $62, $08, $02, $00, $00, $03, $27, $01, $01, $00, $00, $62, $10, $02
    db $00, $00, $05, $89, $00, $38, $62, $18, $00, $00, $89, $00, $45, $04, $00, $00
    db $4e, $4f, $00, $62, $0b, $02, $00, $05, $06, $84, $00, $47, $04, $00, $04, $56
    db $57, $00, $62, $13, $00, $00, $86, $00, $35, $04, $00, $01, $04, $03, $04, $62
    db $1b, $87, $00, $35, $c4, $00, $20, $0a, $04, $00, $58, $03, $04, $05, $01, $01
    db $01, $01, $01, $e4, $6f, $00, $02, $01, $01, $01, $88, $00, $9b, $c7, $01, $1b
    db $c7, $01, $23, $c7, $01, $2b, $c7, $01, $33, $c7, $01, $3b, $c7, $01, $43, $c7
    db $01, $4b, $f8, $53, $01, $53, $00, $5e, $e4, $56, $00, $ff, $02, $01, $01, $01
    db $0e, $02, $99, $58, $18

    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $5f, $2f, $00, $09, $01, $01, $06, $02, $03, $01, $06, $00, $5a, $5b, $24
    db $01, $06, $00, $3d, $06, $00, $00, $05, $06, $23, $00, $06, $05, $3d, $06, $61
    db $01, $00, $00, $62, $08, $22, $00, $05, $0e, $0f, $20, $00, $02, $03, $c3, $00
    db $12, $62, $10, $22, $00, $05, $16, $17, $28, $00, $00, $05, $83, $00, $3e, $62
    db $18, $22, $00, $03, $1e, $1f, $30, $00, $85, $00, $23, $02, $4e, $4f, $00, $62
    db $0b, $23, $00, $08, $03, $04, $00, $03, $00, $04, $56, $57, $00, $62, $13, $83
    db $00, $69, $08, $01, $01, $04, $05, $00, $01, $04, $03, $04, $62, $1b, $84, $00
    db $79, $03, $01, $01, $04, $00, $85, $00, $8b, $00, $58, $62, $03, $04, $01, $01
    db $01, $01, $01, $e4, $6f, $00, $22, $01, $88, $00, $9b, $c7, $01, $1b, $db, $01
    db $23, $00, $60, $8e, $01, $11, $00, $03, $f0, $2e, $01, $11, $00, $05, $8e, $01
    db $11, $00, $53, $d6, $01, $16, $00, $5e, $e4, $56, $00, $ff

    ld [bc], a
    ld bc, $0101
    ld c, $02
    sbc c
    ld e, b
    jr jr_018_5543

jr_018_5543:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    cpl
    nop
    add hl, bc
    ld bc, $0601
    ld [bc], a
    inc bc
    ld bc, $0006
    ld e, d
    ld e, e
    inc h
    ld bc, $0006
    dec a
    ld b, $00
    nop
    dec b
    ld b, $23
    nop
    ld b, $05
    dec a
    ld b, $61
    ld bc, $0000
    ld h, d
    ld [$0022], sp
    dec b
    ld c, $0f
    jr nz, jr_018_5575

jr_018_5575:
    ld [bc], a
    inc bc
    jp Jump_000_1200


    ld h, d
    db $10
    ld [hl+], a
    nop
    dec b
    ld d, $17
    jr z, jr_018_5583

jr_018_5583:
    nop
    dec b
    add e
    nop
    ld a, $62
    jr jr_018_55ad

    nop
    inc bc
    ld e, $1f
    jr nc, jr_018_5591

jr_018_5591:
    add l
    nop
    inc hl
    ld [bc], a
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    dec bc
    ld h, $00
    dec b
    inc bc
    nop
    inc b
    ld d, [hl]
    ld d, a
    nop
    ld h, d
    inc de
    ld [hl+], a
    nop
    ld h, d
    ld hl, $0006
    dec b
    nop

jr_018_55ad:
    ld bc, $0304
    inc b
    ld h, d
    dec de
    ld [hl+], a
    nop
    ld h, d
    add hl, hl
    ld bc, $0403
    call nz, Call_000_2000
    dec b
    inc b
    nop
    ld e, b
    inc bc
    inc b
    nop
    ld h, d
    ld sp, $0501
    ld bc, $6fe4
    nop
    inc hl
    ld bc, $01c7
    inc de
    rst $00
    ld bc, $db1b
    ld bc, $0023
    ld h, b
    adc [hl]
    ld bc, $0011
    inc bc
    ldh a, [$ff2e]
    ld bc, $0011
    dec b
    adc [hl]
    ld bc, $0011
    ld d, e
    sub $01
    ld d, $00
    ld e, [hl]
    db $e4

jr_018_55ef:
    ld d, [hl]
    nop
    rst $38
    ld [bc], a
    ld bc, $0101
    ld c, $02
    sbc c
    ld e, b
    jr jr_018_55fc

jr_018_55fc:
    nop
    nop
    nop
    nop

Jump_018_5600:
    nop
    nop
    nop
    ld e, a
    cpl
    nop
    add hl, bc
    ld bc, $0601
    ld [bc], a
    inc bc
    ld bc, $0006
    ld e, d
    ld e, e
    ld [hl+], a
    ld bc, $0608
    nop
    nop
    dec a
    ld b, $00
    nop
    dec b
    ld b, $23
    nop
    ld bc, $3d05
    add h
    nop
    ld h, $62
    ld [$0022], sp
    add hl, bc
    ld c, $0f
    jr nz, jr_018_562e

jr_018_562e:
    ld [bc], a
    nop
    inc h
    dec h
    nop
    nop
    ld h, d
    db $10
    ld [hl+], a
    nop
    ld [bc], a
    ld d, $17
    jr z, jr_018_565f

    nop
    inc bc
    inc l
    dec l
    nop
    nop
    ld h, d
    jr jr_018_5668

    nop
    ld [bc], a
    ld e, $1f
    jr nc, jr_018_55ef

    nop
    ld c, e
    dec b
    dec [hl]
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    dec bc
    jr z, jr_018_5659

jr_018_5659:
    inc bc
    inc b
    ld d, [hl]
    ld d, a
    nop
    ld h, d

jr_018_565f:
    inc de
    ld [hl+], a
    nop
    ld h, d
    ld hl, $0006
    ld [bc], a
    nop

jr_018_5668:
    ld bc, $0304
    inc b
    ld h, d
    dec de
    ld [hl+], a
    nop
    ld h, d
    add hl, hl
    ld [bc], a
    inc bc
    inc b
    nop
    inc hl
    ld bc, $0405
    nop
    ld e, b
    inc bc
    inc b
    nop
    ld h, d
    ld sp, $0501
    ld bc, $71e4
    nop
    nop
    dec b
    ld [hl+], a
    ld bc, $00cc
    ld [de], a
    nop
    dec b
    adc e
    ld bc, $0314
    ld h, $00
    nop
    inc bc
    adc e
    ld bc, $0314
    ld l, $00
    nop
    ccf
    adc e
    ld bc, $0314
    ld [hl], $03
    inc b
    ld h, c
    adc e
    ld bc, $0214
    ld h, d
    ld bc, $8c01
    ld bc, $0013
    inc bc
    adc [hl]
    ld bc, $0061
    dec b
    adc [hl]
    ld bc, $0561
    ld d, e
    ld bc, $0101
    ld bc, $d101
    nop
    ld [de], a
    nop
    ld e, [hl]
    db $e4

jr_018_56c9:
    ld d, [hl]
    nop
    rst $38
    ld [bc], a
    ld bc, $0101
    ld c, $02
    sbc c
    ld e, b
    jr jr_018_56d6

jr_018_56d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    cpl
    nop
    add hl, bc
    ld bc, $0601
    ld [bc], a
    inc bc
    ld bc, $0006
    ld e, d
    ld e, e
    ld [hl+], a
    ld bc, $0608
    nop
    nop
    dec a
    ld b, $00
    nop
    dec b
    ld b, $23
    nop
    ld bc, $3d05
    add h
    nop
    ld h, $62
    ld [$0022], sp
    add hl, bc
    ld c, $0f
    jr nz, jr_018_5708

jr_018_5708:
    ld [bc], a
    nop
    inc h
    dec h
    nop
    nop
    ld h, d
    db $10
    ld [hl+], a
    nop
    ld [bc], a
    ld d, $17
    jr z, jr_018_5739

    nop
    inc bc
    inc l
    dec l
    nop
    nop
    ld h, d
    jr jr_018_5742

    nop
    ld [bc], a
    ld e, $1f
    jr nc, jr_018_56c9

    nop
    ld c, e
    dec b
    dec [hl]
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    dec bc
    jr z, jr_018_5733

jr_018_5733:
    inc bc
    inc b
    ld d, [hl]
    ld d, a
    nop
    ld h, d

jr_018_5739:
    inc de
    ld [hl+], a
    nop
    ld h, d
    ld hl, $0006
    ld [bc], a
    nop

jr_018_5742:
    ld bc, $0304
    inc b
    ld h, d
    dec de
    ld [hl+], a
    nop
    ld h, d
    add hl, hl
    ld [bc], a
    inc bc
    inc b
    nop
    inc hl
    ld bc, $0405
    nop
    ld e, b
    inc bc
    inc b
    nop
    ld h, d
    ld sp, $0501
    ld bc, $71e4
    nop
    nop
    dec b
    ld [hl+], a
    ld bc, $00cc
    ld [de], a
    nop
    dec b
    adc e
    ld bc, $0314
    ld h, $00
    nop
    inc bc
    adc e
    ld bc, $0514
    ld l, $00
    nop
    ccf
    ld bc, $8960
    ld bc, $0016
    ld [hl], $83
    nop
    inc hl
    nop
    inc bc
    adc d
    ld bc, $0316
    daa
    jr c, jr_018_57c6

    inc bc
    adc e
    ld bc, $0315
    cpl
    ld b, b
    ld b, c
    dec b
    adc e
    ld bc, $0415
    scf
    ld c, b
    ld c, c
    nop
    dec b
    adc c
    ld bc, $0516
    ld d, b
    ld d, c
    ld e, b
    nop
    inc bc
    ld d, e
    pop de
    nop
    ld [de], a
    nop
    ld e, [hl]
    db $e4

jr_018_57af:
    ld d, [hl]
    nop
    rst $38
    ld [bc], a
    ld bc, $0101
    ld c, $02
    sbc c
    ld e, b
    jr jr_018_57bc

jr_018_57bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    cpl
    nop

jr_018_57c6:
    add hl, bc
    ld bc, $0601
    ld [bc], a
    inc bc
    ld bc, $0006
    ld e, d
    ld e, e
    ld [hl+], a
    ld bc, $0608
    nop
    nop
    dec a
    ld b, $00
    nop
    dec b
    ld b, $23
    nop
    ld bc, $3d05
    add h
    nop
    ld h, $62
    ld [$0022], sp
    add hl, bc
    ld c, $0f
    jr nz, jr_018_57ee

jr_018_57ee:
    ld [bc], a
    nop
    inc h
    dec h
    nop
    nop
    ld h, d
    db $10
    ld [hl+], a
    nop
    ld [bc], a
    ld d, $17
    jr z, jr_018_581f

    nop
    inc bc
    inc l
    dec l
    nop
    nop
    ld h, d
    jr jr_018_5828

    nop
    ld [bc], a
    ld e, $1f
    jr nc, jr_018_57af

    nop
    ld c, e
    dec b
    dec [hl]
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    dec bc
    jr z, jr_018_5819

jr_018_5819:
    inc bc
    inc b
    ld d, [hl]
    ld d, a
    nop
    ld h, d

jr_018_581f:
    inc de
    ld [hl+], a
    nop
    ld h, d
    ld hl, $0006
    ld [bc], a
    nop

jr_018_5828:
    ld bc, $0304
    inc b
    ld h, d
    dec de
    ld [hl+], a
    nop
    ld h, d
    add hl, hl
    ld [bc], a
    inc bc
    inc b
    nop
    inc hl
    ld bc, $0405
    nop
    ld e, b
    inc bc
    inc b
    nop
    ld h, d
    ld sp, $0501
    ld bc, $71e4
    nop
    inc bc
    dec b
    ld b, $5a
    ld e, e
    rst $08
    nop
    ld [de], a
    adc c
    nop
    sbc [hl]
    nop
    ld h, $22
    nop
    ld h, d
    ld a, [hl-]
    ret z

    ld bc, $0012
    ld l, $22
    nop
    ld h, d
    ld b, d
    jr z, jr_018_5863

jr_018_5863:
    nop
    ld [hl], $22
    nop
    ld h, d
    ld c, d
    add hl, hl
    nop
    ld [bc], a
    daa
    jr c, @+$3b

    ld [hl+], a
    nop
    nop
    inc bc
    jr z, jr_018_5875

jr_018_5875:
    dec b
    cpl
    ld b, b
    ld b, c
    nop
    inc bc
    inc b
    ret


    ld bc, $0612
    scf
    ld c, b
    ld c, c
    nop
    dec b
    ld bc, $2753
    nop
    dec b
    ld d, b
    ld d, c
    ld e, b
    nop
    inc bc
    ld d, e
    pop de
    nop
    ld [de], a
    nop
    ld e, [hl]
    db $e4
    ld d, [hl]
    nop
    rst $38

    db $3c, $5a, $18, $ff, $0a, $00, $05, $dc, $cb, $eb, $cd, $05, $eb, $10, $30, $50
    db $24, $00, $13, $12, $32, $52, $71, $91, $b1, $06, $26, $14, $34, $54, $73, $93
    db $b3, $08, $28, $00, $65, $85, $a5, $23, $00, $e0, $3a, $46, $67, $87, $a7, $6b
    db $8b, $ab, $d1, $48, $69, $89, $a9, $6d, $8d, $ad, $d3, $00, $00, $0a, $2a, $4a
    db $05, $05, $cd, $f1, $e6, $0c, $2c, $4c, $05, $05, $04, $f3, $e8, $0e, $2e, $4e
    db $01, $00, $00, $ec, $00, $de, $ec, $dc, $00, $dc, $ed, $00, $fc, $00, $de, $00
    db $ed, $03, $00, $05, $dd, $00, $e4, $9b, $80, $0a, $00, $05, $ec, $db, $fb, $05
    db $fd, $db, $20, $40, $60, $24, $00, $13, $22, $42, $62, $81, $a1, $c1, $16, $36
    db $24, $44, $64, $83, $a3, $c3, $18, $38, $00, $75, $95, $b5, $23, $00, $e0, $25
    db $56, $77, $97, $b7, $7b, $9b, $bb, $e1, $58, $79, $99, $b9, $7d, $9d, $bd, $e3
    db $00, $00, $1a, $3a, $5a, $05, $fd, $05, $d6, $f6, $1c, $3c, $5c, $05, $03, $05
    db $d8, $f8, $1e, $3e, $5e, $01, $23, $00, $03, $05, $dc, $ec, $00, $c3, $01, $51
    db $02, $ce, $05, $dd, $83, $01, $4e, $01, $05, $dc, $e4, $9b, $80, $17, $00, $05
    db $dd, $cc, $05, $ce, $ee, $05, $11, $31, $51, $70, $90, $b0, $00, $25, $13, $33
    db $53, $72, $92, $b2, $07, $27, $22, $00, $15, $74, $94, $b4, $09, $29, $45, $66
    db $86, $a6, $6a, $8a, $aa, $d0, $47, $68, $88, $a8, $6c, $8c, $ac, $d2, $49, $22
    db $00, $e0, $23, $6e, $8e, $ae, $d4, $f0, $e5, $0b, $2b, $4b, $ee, $05, $cc, $f2
    db $e7, $0d, $2d, $4d, $02, $05, $04, $f4, $e9, $0f, $2f, $4f, $05, $00, $ec, $05
    db $fb, $00, $05, $dd, $ec, $dd, $00, $c5, $01, $52, $03, $00, $00, $ed, $dc, $f0
    db $9e, $00, $62, $15, $ed, $05, $fc, $de, $fe, $05, $21, $41, $61, $80, $a0, $c0
    db $15, $35, $23, $43, $63, $82, $a2, $c2, $17, $37, $22, $00, $15, $84, $a4, $c4
    db $19, $39, $55, $76, $96, $b6, $7a, $9a, $ba, $e0, $57, $78, $98, $b8, $7c, $9c
    db $bc, $e2, $59, $22, $00, $e0, $26, $7e, $9e, $be, $e4, $d5, $f5, $1b, $3b, $5b
    db $de, $fc, $05, $d7, $f7, $1d, $3d, $5d, $02, $03, $05, $d9, $f9, $1f, $3f, $5f
    db $05, $dc, $00, $eb, $00, $cd, $05, $05, $00, $ed, $00, $ec, $eb, $00, $83, $01
    db $5b, $03, $03, $dd, $05, $dd, $e4, $9b, $80, $e4, $5d, $00, $01, $fd, $fe, $e4
    db $9e, $00, $ff

    rst $38

    db $41

    rst $38
    nop

    db $07

    rst $38
    rrca
    ldh a, [$ff7f]
    ret nz

    rst $38
    db $01
    rst $38

    db $41

    ld [bc], a
    ccf

    db $43

    inc b
    rst $38

    db $02

    ccf
    rst $38
    ret nz

    db $41

    rst $38
    nop

    db $41

    rst $08
    nop

    db $41

    ccf
    nop

    db $01

    db $cc
    nop

    db $c5, $00, $27, $01

    rst $38
    nop

    db $41

    rst $38
    inc bc

    db $41

    rst $38
    inc c

    db $a4, $00, $2f, $03

    ld a, a
    ld a, a
    rlca
    rlca

    db $23

    nop

    db $06

    ldh [$ffe0], a
    ldh a, [$fff0]
    rst $38
    ccf
    rst $38

    db $c5, $00, $05, $e0, $24

    INCBIN "gfx/image_018_5a82.2bpp"

    sbc $40
    cp h
    add b
    ld a, c

    db $2d

    nop

    db $09

    adc b
    ld [hl], a
    db $10
    xor $20
    call c, $b841
    ld [bc], a
    ld [hl], c

    db $2b

    nop

    db $24

    rst $38

    db $04

    ld a, a
    add b
    ret nz

    nop
    add b

    db $28

    nop

    db $04

    add b
    nop
    ret nz

    nop
    db $e0

    db $43

    nop
    rst $38

    db $03

    nop
    ld a, a
    nop
    ccf

    db $86, $00, $aa, $04

    ldh [rP1], a
    ld hl, sp+$00
    db $fe

    db $84, $00, $ba, $02

    rra
    nop
    rlca

    db $a6, $00, $a4, $04

    ldh [rP1], a
    ldh a, [rP1]
    db $f8

    db $43

    nop
    rst $38

    db $07

    add b
    rst $38
    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ccf

    db $48

    rst $38
    nop

    db $07

    rst $38
    rrca
    ldh a, [rIE]
    ret nz

    di
    add b
    di

    db $88, $00, $1e, $00

    rst $38

    db $a5, $00, $2e, $06

    ld [hl], b
    rst $38
    jr @+$01

    inc c
    rst $38
    db $06

    db $84, $00, $31, $41

    db $01
    rst $38

    db $41

    db $31
    rst $38

    db $41

    db $cd
    rst $38

    db $41

    inc sp
    rst $38

    db $0b

    rst $00
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    ld a, [hl]
    cp $f0
    ldh a, [$ffc0]
    ret nz

    db $84, $00, $ab, $22

    add b

    db $03

    pop bc
    pop bc
    rst $38
    rst $38

    db $84, $00, $ee, $00

    rst $38

    db $94, $00, $64, $0e

    di
    nop
    rst $20
    ld bc, $03ce
    sbc h
    ld b, $39
    inc c
    ld [hl], b
    db $10
    ldh [rP1], a
    ret nz

    db $a8, $00, $a8, $0a

    rlca
    ld [$1007], sp
    rrca
    jr nz, jr_018_5b77

    ld b, b
    ld a, $80
    ld a, b

    db $c8, $00, $de, $a4, $01, $43, $01

    inc bc
    inc bc

    db $a3, $00, $9e, $07

    rst $38
    ldh [$ff1f], a
    jr @+$11

    inc c
    rlca
    db $06

    db $25

    rlca

    db $08

    rrca
    rrca
    dec de

jr_018_5b77:
    rra
    inc a
    ccf
    ld e, $ff
    rra

    db $41

    rst $38
    rrca

    db $04

    rst $38
    ld b, $fe
    inc b
    db $fc

    db $29

    nop

    db $22

    db $01

    db $43

    rst $38
    nop

    db $00

    rst $38

    db $8b, $01, $c2, $89, $01, $cc, $03

    rst $38
    rst $38
    rst $38
    rst $38

    db $b6, $00, $f0, $88, $01, $e1, $02

    inc c
    rst $38
    inc c

    db $c6, $01, $35, $00

    db $ce

    db $ae, $01, $1b, $00

    add b

    db $c8, $02, $29, $a5, $01, $36, $01

    rst $38

jr_018_5bb6:
    rst $38

    db $cb, $01, $cb, $86, $01, $48, $00

    ld a, [hl]

    db $86, $00, $e5, $06

    ld a, b
    ccf
    db $fc
    rra
    rst $38
    db $01
    rst $08

    db $84, $01, $6e, $0c

    ld [hl], d
    jr jr_018_5bb6

    jr nc, @-$33

    ld h, b
    sub a
    ret nz

    ld l, $81
    ld e, h
    inc bc
    cp b

    db $8a, $01, $c0, $0e

    inc e
    ld [bc], a
    ld a, c
    inc b
    di
    ld [$10e6], sp
    call z, $9820
    ld b, b
    jr nc, @-$7e

    ld h, b

    db $8b, $01, $90, $01

    rlca
    rlca

    db $b0, $00, $ec, $02

    ldh a, [rIE]
    db $fc

    db $27

    rst $38

    db $83, $00, $4b, $01

    add a
    add a

    db $87, $01, $a8, $09

    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$08

    db $42

    ldh a, [rIE]

    db $03

    ld [hl], b
    ldh a, [$ff60]
    db $e0

    db $83, $01, $98, $01

    ld b, e
    ld a, a

    db $41

    db $c3
    rst $38

    db $00

    pop bc

    db $42

    rst $38
    pop hl

    db $00

    rst $38

    db $85, $01, $9c, $01

    rst $38
    ret nz

    db $49

    rst $38
    nop

    db $0c

    rst $38
    ldh [$ff1f], a
    cp $83
    rst $38
    add $ff
    ld h, [hl]
    rst $38
    ld h, c
    rst $38
    db $31

    db $41

    rst $38
    db $36

    db $03

    rst $38
    jr nc, @+$01

    db $fe

    db $aa, $02, $ee, $c6, $00, $34, $84, $01, $31, $01

    db $cc
    rst $38

    db $c7, $03, $30, $83, $01, $9b, $03

    inc a
    inc a
    nop
    nop

    db $23

    inc b

    db $07

    add a
    add a
    adc a
    adc a
    rst $38
    db $fc
    rst $38
    db $f8

    db $8e, $00, $f0, $16

    INCBIN "gfx/image_018_5c6e.2bpp"

    ld a, h
    ccf
    db $fc
    ccf
    ld a, $1f
    db $1e

    db $c3, $02, $c3, $c5, $01, $af, $25

    inc bc

    db $00

    rra

    db $c3, $03, $75, $0c

    jr @+$21

    jr jr_018_5cd6

    jr c, jr_018_5d18

    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b

    db $4b

    rst $38
    nop

    db $09

    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [$ff1f]
    jr @+$11

    db $08

    db $41

    rlca
    inc b

    db $03

    rlca
    ld b, $07
    db $06

    db $8b, $02, $ba, $00

    ccf

    db $a4, $03, $4a, $04

    sbc a
    rst $38
    sbc a
    cp $8f

    db $41

    cp $cf

    db $00

    db $fc

    db $a3, $01, $b5, $41

    rst $38
    db $e0

    db $9e, $03, $90, $89, $03, $57, $07

jr_018_5cd6:
    ldh [$ffbf], a
    ldh [$ff9f], a
    ldh a, [$ff7f]
    ldh a, [$ff6f]

    db $41

    ld hl, sp+$0f

    db $07

    ld hl, sp-$21
    ld hl, sp-$01
    ld hl, sp+$7f
    db $fc
    ccf

    db $41

    db $fc
    rra

    db $05

    cp $0f
    cp $cf
    rst $38
    rst $08

    db $84, $01, $b7, $41

    rst $18
    rst $38

    db $11

    INCBIN "gfx/image_018_5cfb.2bpp"

    ld a, a
    ld h, b

    db $83, $02, $ec, $e8, $34

    rst $38
    nop

    db $a3, $00, $e7, $07

jr_018_5d18:
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [$ff30]

    db $a3, $03, $ba, $41

    ret nz

    ld b, b

    db $01

    ret nz

    ret nz

    db $2b

    add b

    db $00

    ret nz

    db $c4, $04, $c9, $0b

    ldh [$ff60], a
    ldh [rNR41], a
    ldh a, [$ff30]
    ldh a, [rNR10]
    ld hl, sp+$08

jr_018_5d3b:
    db $fc
    inc b

    db $bf, $03, $e6, $00

    db $fe

    db $a4, $00, $bc, $02

    ldh a, [rP1]
    db $e0

    db $42

    nop
    ret nz

    db $45

    nop
    add b

    db $c6, $05, $15, $00

    db $e0

    db $84, $00, $c6, $09

    ld hl, sp+$00
    db $fc
    db $10
    rst $38
    db $10
    ld sp, hl
    ld e, $f8
    rra

    db $41

    db $fc
    rrca

    db $00

    db $fe

    db $b0, $03, $e3, $07

    ldh [$ffe0], a
    ld hl, sp-$08
    inc e
    inc e
    add $c6

    db $23

    di

    db $03

    ld sp, hl
    ld sp, hl
    ld hl, sp-$08

    db $a5, $03, $74, $01

    ret nz

    ret nz

    db $a5, $01, $44, $06

    ld bc, $8101
    add c
    jp nz, $3cc3

    db $42

    rst $38
    nop

    db $02

    pop af
    nop
    ret nz

    db $2b

    nop

    db $00

    db $30

    db $a4, $00, $2c, $01

    rrca
    db $f0

    db $89, $03, $1c, $83, $01, $9c, $91, $00, $f2, $02

    ld hl, sp+$78
    ret nz

    db $8a, $05, $7d, $a3, $01, $a0, $01

    ldh [rNR41], a

    db $41

    ret nz

    ld b, b

    db $8c, $04, $ca, $83, $04, $d9, $04

    jr nz, @-$06

    jr @+$01

    rlca

    db $cb, $05, $bf, $02

    ld hl, sp+$78
    rst $38

    db $d2, $01, $03, $04

    db $fc
    nop
    ld hl, sp+$00
    add b

    db $88, $01, $93, $0d

    inc bc
    inc bc
    ld c, $06
    ld a, $0e
    inc a
    inc c
    inc [hl]
    inc e
    inc b
    inc a
    inc bc
    ccf

    db $42

    nop
    ld a, a

    db $a3, $01, $8c, $a3, $05, $0f, $01

    nop
    inc bc

    db $c8, $01, $7d, $c3, $02, $8a, $06

    ret nz

    inc e
    ldh [rIF], a
    ldh a, [$ff03]
    db $fc

    db $83, $00, $e8, $07

    ldh a, [rIE]
    db $fc
    ccf
    rst $38
    rrca
    rst $38
    inc bc

    db $f4, $4f, $05, $fe, $01

    rst $38
    nop

    db $f4, $55, $05, $a0, $f4, $61, $05, $46, $f4, $47, $05, $08, $93, $03, $f4, $f4
    db $53, $04, $b4, $87, $01, $e3, $01

    rst $38
    rst $38

    db $3b

    nop

    db $01

    rst $38
    rst $38

    db $2f

    db $01

    db $2f

    add b

    db $90, $08, $1e, $01

    inc bc
    db $fe

    db $a3, $03, $63, $0c

    rrca
    ld hl, sp+$1b
    ld hl, sp+$19
    ld hl, sp+$18
    ld sp, hl
    add hl, de
    db $fd
    dec c
    rst $38
    rlca

    db $aa, $02, $21, $1c

    INCBIN "gfx/image_018_5e4d.2bpp"

    ret


    ret nz

    ret nz

    ldh [$ff61], a
    ldh [$ff60], a
    ldh a, [$ff30]
    db $fc
    inc e
    rst $38
    rrca

    db $b8, $04, $48, $84, $08, $7b, $11

    INCBIN "gfx/image_018_5e71.2bpp"

    pop bc
    pop bc

    db $23

    db $c3

    db $25

    rst $00

    db $00

    db $c6

    db $42

    rst $00
    db $c4

    db $00

    rst $00

    db $41

    ldh [c], a
    ld h, e

    db $05

    pop af
    ld [hl], c
    ldh a, [$ff30]
    ld hl, sp+$38

    db $a6, $03, $8c, $db, $08, $b9, $a5, $03, $5d, $0c

    inc c
    ld hl, sp+$18
    ld hl, sp+$19
    ldh a, [$ff31]
    ldh a, [$ff33]
    ldh a, [$ff73]
    ldh [$ff63], a

    db $83, $08, $92, $01

    ldh [$ff60], a

    db $22

    ret nz

    db $00

    pop bc

    db $44

    ret nz

    db $c3

    db $c4, $09, $28, $00

    ld b, b

    db $42

    ldh [$ff60], a

    db $05

    ldh a, [$ff30]

jr_018_5ec7:
    ld hl, sp+$18
    db $fc
    inc c

    db $b2, $02, $ec, $00

    db $01

    db $c4, $05, $40, $06

    ccf
    ld hl, sp-$01
    sub b
    rst $38
    db $10
    rst $38

    db $41

    jr nz, @-$0f

    db $07

    ld b, b
    rst $08
    ret nz

    adc $80
    add a
    add b
    xor a

    db $84, $07, $65, $00

    inc d

    db $85, $01, $44, $c3, $01, $41, $0b

    nop
    db $fc
    nop
    rlca
    ld hl, sp+$01
    db $fc
    ld bc, $01fe
    db $fc
    inc bc

    db $c4, $09, $84, $02

    jr nz, jr_018_5f05

jr_018_5f05:
    ld [bc], a

    db $87, $02, $42, $8a, $07, $4c, $08

    inc bc
    cp $06
    ld sp, hl
    dec c
    ld sp, hl
    dec a
    db $d3
    ld e, a

    db $41

    or a
    cp a

    db $0c

    cp a
    cp a
    add hl, sp
    cp l
    add hl, sp
    db $fd
    ld sp, $f1fd
    db $fd
    ld h, b
    cp $60

    db $84, $03, $e0, $10

    INCBIN "gfx/image_018_5f2b.2bpp"

    db $30

    db $8a, $05, $ee, $03

    add b
    rst $38
    ld a, a
    ld a, a

    db $87, $02, $42, $01

    ldh a, [$fff0]

    db $26

    rst $38

    db $00

    ld a, a

    db $83, $00, $4a, $88, $01, $e1, $06

    rrca
    ld hl, sp+$38
    ldh [$ffe7], a
    add b
    sbc a

    db $c5, $07, $5d, $90, $00, $f1, $06

    ld bc, $7e00
    nop
    rst $38
    nop
    db $e3

    db $84, $05, $17, $02

    pop bc
    nop
    ret


    db $84, $00, $b4, $00

    db $3e

    db $2d

    nop

    db $03

    ldh [$ffe0], a
    rst $38
    rst $38

    db $a8, $03, $4c, $04

    rlca
    ld hl, sp+$78
    ret nz

    db $fa

    db $84, $00, $b4, $06

    rst $18
    nop
    rlca
    nop
    adc a
    nop
    xor a

    db $84, $00, $b4, $00

    cp a

    db $a4, $00, $dc, $00

    ld e, a

    db $86, $00, $b8, $04

    rra
    nop
    ld b, b
    nop
    inc b

    db $89, $00, $a6, $09

    db $10
    sub b
    ld [$04c8], sp
    call nz, $0707
    inc bc
    ld b, e

    db $c7, $03, $81, $03

    rra
    ld e, $7f
    ld a, b

    db $c6, $03, $b2, $06

    ld a, a
    ret nz

    call z, $df90
    sbc b
    rst $18

    db $41

    sub b
    db $f0

    db $03

    sbc a
    rst $18
    add b
    db $cc

    db $87, $02, $2a, $07

    rst $38
    rst $38
    jp nc, $f0ff

    rst $38
    db $08
    rrca

    db $42

    db $08
    rst $38

    db $02

    rrca
    rst $38
    rrca

    db $c4, $0a, $4a, $22

    dec l

    db $a4, $00, $11, $00

    db $e3

    db $41

    rst $38
    ld b, e

    db $08

    rst $38
    ld a, [hl]
    db $fe

    db $40

    ret nz

    ld b, b
    ret nz

    add b
    add b

    db $90, $00, $90, $27

    rst $38

    db $00

    rra

    db $a4, $0a, $a0, $02

    inc bc
    nop
    db $f8

    db $9c, $03, $eb, $04

    ccf
    nop
    sbc a
    nop
    rst $18

    db $43

    nop
    rst $28

    db $04

    nop
    rst $00
    nop
    add a
    nop

    db $b0, $08, $4f, $01

    ret nz

    ret nz

    db $88, $00, $48, $02

    db $fc
    inc bc
    ld a, a

    db $ae, $0a, $5a, $00

    rst $38

    db $90, $0a, $58, $02

    cp $00
    sub b

    db $a3, $09, $90, $2b

    nop

    db $a3, $09, $ee, $03

    ld hl, sp-$01
    ldh [$ffed], a

    db $41

    ret nz

    rst $08

    db $05

    ret nz

    rst $00
    ldh [$ffe0], a
    db $fc
    inc a

    db $83, $06, $4a, $f4, $62, $0a, $a0, $12

    INCBIN "gfx/image_018_604f.2bpp"

    pop hl
    nop
    db $f0

    db $c8, $06, $03, $05

    ld hl, sp+$00
    ldh [rTAC], a
    ret nz

    rra

    db $42

    ret nz

    ccf

    db $04

    ret nz

    rra
    ldh [rTAC], a
    db $f8

    db $8b, $0b, $1a, $91, $08, $1e, $86, $01, $ee, $a5, $08, $7f, $02

    db $fc
    rlca
    db $fe

    db $84, $05, $41, $08

    db $fd
    nop
    call c, $0600
    nop
    adc h
    nop
    xor l

    db $a4, $0a, $6c, $04

    ldh a, [rP1]
    ldh [c], a
    nop
    add b

    db $91, $0b, $78, $01

    db $fc
    db $fc

    db $c4, $07, $4c, $08

    rst $30
    nop
    cp $00
    cp a
    nop
    rst $20
    nop
    add b

    db $85, $0b, $88, $01

    rst $38
    db $f0

    db $f4, $64, $09, $a0, $83, $02, $01, $02

    adc [hl]
    inc bc
    db $e3

    db $a4, $0a, $0c, $06

    rst $38
    ret nz

    rst $38
    inc a
    ccf
    inc bc
    inc bc

    db $c4, $06, $07, $00

    db $fe

    db $b8, $0c, $1e, $02

    cp $00
    db $f8

    db $8d, $05, $7c, $83, $07, $00, $02

    rst $38
    ld hl, sp-$01

    db $d1, $03, $05, $a5, $09, $0d, $00

    sbc b

    db $83, $03, $b4, $03

    rrca
    inc c
    rrca
    adc h

    db $41

    rra
    inc e

    db $01

    rrca
    inc c

    db $a3, $09, $20, $29

    inc bc

    db $c3, $01, $aa, $01

    rra
    inc e

    db $41

    rst $38
    db $f8

    db $07

    rra
    cp $07
    and $03
    db $e3
    inc bc
    add e

    db $85, $0d, $86, $f4, $75, $08, $9c, $a3, $09, $10, $0d

    rst $08
    ret z

    ld l, a
    ld l, h
    rra
    inc e
    rrca
    ld c, $0f
    adc [hl]
    rlca
    add $07
    rst $00

    db $44

    inc bc
    db $e3

    db $a8, $09, $2e, $c5, $01, $ab, $01

    ld c, $0f

    db $c3, $01, $a5, $02

    jr c, jr_018_6177

    ld [hl], b

    db $98, $02, $ec, $c5, $02, $08, $1e

    INCBIN "gfx/image_018_6140.2bpp"

    sbc [hl]
    add e
    sbc h
    add [hl]
    sbc b
    adc h
    sub c
    adc b
    add e
    add b
    add a
    add b
    add d
    add b
    add c

    db $a3, $02, $92, $87, $09, $3c, $01

    db $fc
    inc b

    db $c3, $01, $bf, $83, $04, $e8, $98, $08, $f8, $00

    inc b

    db $41

    ld hl, sp+$0c

    db $41

jr_018_6177:
    ldh a, [rNR32]

    db $41

    ldh [$ff3c], a

    db $41

    ret nz

    ld a, a

    db $86, $02, $26, $41

    cp $80

    db $00

    db $fe

    db $c6, $0d, $f3, $00

    ld a, a

    db $43

    ldh [$ff3f], a

    db $05

    ldh a, [$ff3f]
    cp $1f
    rst $38
    rrca

    db $a3, $07, $ea, $f4, $23, $03, $ea, $05

    db $fc
    rlca
    db $fc
    inc c
    ld hl, sp+$0c

    db $42

    ld hl, sp+$1f

    db $00

    db $fd

    db $aa, $04, $1b, $03

    ret nc

    ld e, h
    ret nc

    db $dc

    db $43

    sub b
    sbc a

    db $41

    adc b
    adc a

    db $09

    call nz, $e6c7
    ld h, a
    db $e3
    inc hl
    pop hl
    ld hl, $20e0

    db $83, $04, $e2, $01

    cp $06

    db $90, $08, $9c, $02

    inc bc
    db $fc
    rrca

    db $83, $07, $8d, $11

    INCBIN "gfx/image_018_61d3.2bpp"

    db $10
    db $0e

    db $c4, $07, $3b, $02

    ld bc, $0100

    db $84, $00, $ae, $0c

    and b
    nop
    ld [hl], b
    ld [$10f0], sp
    db $ec
    jr nz, @-$22

    ld b, c
    ld a, [hl-]
    inc bc
    inc [hl]

    db $8d, $0b, $36, $03

    cp $fe
    rst $38
    ld a, a

    db $88, $03, $19, $08

    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp-$01
    add b
    adc a

    db $41

    nop
    rrca

    db $84, $07, $5d, $a8, $00, $a3, $ca, $0d, $3a, $87, $00, $d3, $02

    add b
    nop
    db $f0

    db $cf, $06, $05, $00

    add b

    db $b5, $05, $9b, $02

    nop
    rst $38
    nop

    db $ff

    inc bc
    nop
    ld b, $05
    ld a, [bc]
    rla
    ld bc, $0404
    inc c
    dec b
    dec e
    inc b
    dec b
    dec b
    nop
    ld bc, $0506
    dec bc
    ld [bc], a
    ld [de], a
    rrca
    ld c, $14
    rrca
    dec e
    ld [bc], a
    dec d
    ld [de], a
    inc d
    ld [de], a
    dec c
    ld b, $08
    dec b
    inc bc
    ld bc, $1010
    add hl, de
    dec c
    ld c, $06
    rlca
    rlca
    ld [bc], a
    inc c
    add hl, bc
    db $10
    db $10
    dec b
    ld [de], a
    inc de
    jr nc, jr_018_6270

    inc b
    dec c
    db $10
    rrca
    db $10
    db $10

jr_018_6270:
    add hl, de
    dec e
    ld [bc], a
    ld [de], a
    rrca
    inc de
    inc e
    ld a, [bc]
    ld [de], a
    dec bc
    ld l, $06
    inc b
    inc c
    ld [bc], a
    ld [de], a
    rrca
    rrca
    dec c
    dec e
    ld [$1401], sp
    inc d
    dec b
    ld [de], a
    inc c
    ld [$0706], sp
    ld b, $13
    ld [$140f], sp
    ld a, [de]
    rrca
    add hl, bc
    ld b, $06
    rlca
    ld b, $13
    db $10
    ld bc, $0b12
    add hl, de
    inc d
    rrca
    ld b, $08
    inc b
    dec bc
    ld bc, $1502
    ld c, $23
    ld b, $07
    rlca
    inc de
    ld de, $0915
    inc de
    ld [$0f19], sp
    inc c
    ld b, $08
    dec b
    rlca
    rrca
    ld [de], a
    inc b
    rrca
    db $10
    ld a, [hl+]
    ld b, $07
    ld b, $13
    inc bc
    ld bc, $0612
    add hl, de
    ld [bc], a
    inc h
    ld b, $07
    rlca
    dec c
    dec d
    dec c
    ld [bc], a
    add hl, bc
    dec b
    inc de
    dec b
    inc [hl]
    ld b, $08
    dec b
    rlca
    inc c
    dec d
    ld c, $0b
    ld bc, $0605
    ld [$1205], sp
    rrca
    inc bc
    dec bc
    add hl, de
    inc b
    ld [bc], a
    ld b, $07
    ld b, $06
    inc c
    ld bc, $050d
    ld [de], a
    dec d
    inc b
    ld b, $01
    ld [de], a
    ld b, $0c
    rrca
    ld bc, $1914
    dec e
    inc d
    ld [$1d05], sp
    inc b
    ld [de], a
    add hl, bc
    ld b, $14
    dec b
    ld [de], a
    rlca
    dec l
    ld b, $07
    ld b, $05
    inc c
    add hl, bc
    dec b
    dec b
    inc c
    ld b, $25
    ld b, $05
    dec bc
    inc bc
    ld [de], a
    ld bc, $0b03
    dec de
    inc d
    rla
    dec b
    dec b
    inc d
    ld [$0607], sp
    rlca
    ld b, $13
    db $10
    add hl, bc
    dec bc
    dec b
    add hl, de
    ld d, $37
    ld b, $06
    add hl, bc
    ld [bc], a
    rrca
    dec d
    ld c, $03
    add hl, de
    dec e
    inc d
    add hl, de
    rla
    cpl
    ld b, $03
    ld c, $10
    ld [de], a
    rrca
    db $10
    dec b
    inc c
    inc c
    dec b
    ld [de], a
    dec e
    ld [bc], a
    rrca
    dec c
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld b, $05
    dec bc
    inc c
    rrca
    ld bc, $1d04
    dec bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    inc c
    dec b
    ld de, $0622
    dec b
    ld a, [bc]
    inc de
    add hl, bc
    ld [de], a
    dec e
    inc de
    inc c
    add hl, bc
    db $10
    db $10
    add hl, de
    jr @+$19

    ld b, $04
    inc c
    dec c
    ld bc, $1413
    dec b
    ld [de], a
    dec e
    db $10
    dec b
    ld c, $07
    add hl, de
    add hl, de
    ld sp, $0806
    dec b
    ld [bc], a
    inc c
    ld bc, $0504
    add hl, de
    ld [hl-], a
    ld b, $08
    dec b
    ld [bc], a
    dec d
    inc d
    inc bc
    ld [$331b], sp
    ld b, $07
    ld b, $0d
    ld bc, $0813
    dec b
    ld [de], a
    rra
    db $10
    ld b, $07
    rlca
    dec b
    ld b, $12
    dec b
    dec b
    inc d
    add hl, bc
    dec e
    jr nz, jr_018_63b7

    dec b
    dec bc
    ld a, [bc]
    dec d
    dec c
    db $10

jr_018_63b7:
    dec b
    ld [de], a
    inc de
    ld [$0f0f], sp
    inc d
    ld e, $12
    ld b, $04
    inc c
    dec c
    ld bc, $1413
    dec b
    ld [de], a
    dec e
    rlca
    ld [de], a
    dec b
    dec b
    ld c, $1c
    jr jr_018_63d8

    ld b, $08
    dec c
    daa
    ld b, $12

jr_018_63d8:
    rrca
    inc de
    inc d
    add hl, de
    jr nz, @+$1b

    ld b, $07
    ld b, $02
    inc c
    rrca
    inc bc
    dec bc
    add hl, de
    ld hl, $061a
    ld [$1704], sp
    ld bc, $1509
    ld [hl+], a
    ld hl, $0306
    ld c, $03
    ld bc, $1410
    ld bc, $0e09
    dec e
    inc de
    inc d
    add hl, bc
    inc d
    inc bc
    ld [$4229], sp
    ld b, $04
    inc c
    rla
    ld [$1309], sp
    db $10
    add hl, de
    dec e
    rla
    rrca
    rrca
    inc b
    inc de
    ld a, [de]
    dec de
    ld b, $03
    rrca
    ld c, $05
    inc c
    inc c
    add hl, de
    dec e
    dec e
    dec e
    dec e
    dec e
    ld c, $12
    dec d
    ld b, $06
    inc h
    daa
    ld b, $05
    dec bc
    inc de
    rla
    dec b
    dec b
    inc d
    dec e
    inc de
    inc d
    dec d
    ld b, $06
    ld h, $29
    ld b, $05
    ld a, [bc]
    add hl, bc
    inc bc
    dec b
    dec e
    inc b
    ld [de], a
    ld bc, $0f07
    ld c, $23
    jr z, @+$08

    ld [bc], a
    ld de, $270d
    inc de
    ld [$0e09], sp
    dec b
    dec e
    dec e
    dec c
    daa
    ld [bc], a
    ld [de], a
    add hl, bc
    rlca
    ld [$2714], sp
    ld h, $06
    ld bc, $0b12
    ld [de], a
    ld bc, $0b03
    rrca
    dec e
    dec e
    dec e
    inc bc
    rrca
    dec de
    dec bc
    ld [de], a
    ld bc, $0b03
    rrca
    dec h
    dec hl
    ld b, $05
    dec bc
    dec bc
    add hl, bc
    ld c, $07
    dec e
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    ld a, [hl+]
    dec hl
    inc bc
    add hl, bc
    inc bc
    ld bc, $040e
    jr z, jr_018_64d0

    ld b, $09
    ld [bc], a
    ld e, $1f
    dec hl
    ld b, d
    inc bc
    rlca
    rlca
    inc d
    ld [$1d05], sp
    dec b
    ld c, $04
    rrca
    ldh [$ffe0], a
    ret c

    jr c, @-$02

    inc c
    db $fc
    inc b
    ld a, [$fa06]
    ld d, [hl]
    cp $52
    db $fd
    ld d, e
    ld b, c
    db $fd
    inc bc
    inc de
    db $fd
    inc hl
    ld a, [$ee06]
    ld e, $f9
    rst $38
    pop bc
    rst $38
    ld a, $3e
    add b
    add b
    ld [hl], b
    ldh a, [$fff8]
    ld e, b
    cp b
    ld c, b
    ld b, d
    db $fc
    inc d
    add hl, de
    ld a, [$fe06]
    ld [bc], a

jr_018_64d0:
    cp $0a
    ld a, [$f406]
    inc c
    call c, $e23c
    cp $42
    ld a, [hl]
    inc a
    inc a
    ret nz

    ret nz

    ldh a, [$ff30]
    add sp, $18

jr_018_64e4:
    ld hl, sp+$08
    ld b, d
    db $fc
    ld d, h
    ld b, c
    ld a, [$1d06]
    ld a, [$f426]
    inc c
    ret z

    jr c, jr_018_64e4

    ldh a, [$ff50]
    ldh a, [$ffe0]
    ldh [rP1], a
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    ld hl, sp+$18
    cp $0e
    rst $30
    xor l
    rst $38
    and l
    db $fd
    and a
    ld a, [$4106]
    ld a, [$1146]
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
    rra
    rra
    dec hl
    ld [hl], $5d
    ld h, d
    ld b, c
    ld a, a
    ld b, b
    and e
    nop
    inc [hl]
    ld b, d
    ccf
    jr nz, jr_018_652c

    cpl

jr_018_652c:
    jr nc, jr_018_6590

    rla
    ld a, [bc]
    ld e, $27
    ccf
    ld b, c
    ld a, a
    ld a, $3e
    inc bc
    inc bc
    rlca
    inc b
    ld b, c
    rrca
    ld [$1301], sp
    inc e
    add l
    nop
    adc h
    dec bc
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
    inc hl
    nop
    dec b
    rrca
    rrca
    dec e
    inc de
    ld a, $21

jr_018_655a:
    add e
    nop
    sub d
    ld bc, $605f
    add a
    nop
    add [hl]
    ld b, $37
    jr c, jr_018_6584

    ld e, $13
    rra
    ld [$00a4], sp
    ld e, e
    add hl, bc
    ccf
    ccf
    ld [hl], l
    ld c, [hl]
    ei
    add h
    rst $38
    add b
    cp a
    ret nz

    add l
    nop
    jp z, Jump_018_7f00

    add e
    nop
    adc e
    ld a, [bc]
    jr nc, jr_018_65db

jr_018_6584:
    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $3b
    nop
    inc hl

jr_018_6590:
    ld bc, $0241
    inc bc
    ld b, d
    inc b
    rlca
    inc bc
    ld [$090f], sp
    ld c, $41
    rrca
    ld [$090f], sp
    ld c, $04
    rlca
    ld a, [bc]
    rrca
    ld [$110f], sp
    rra
    ld [de], a
    ld e, $0c
    inc c
    nop
    nop
    ld b, c
    nop
    ld [$0041], sp
    jr jr_018_655a

    ld bc, $3142
    nop
    adc e
    ld bc, $0120
    ld [$830f], sp
    ld bc, $c530
    nop
    and l
    db $e4
    inc hl
    nop
    dec b
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    add a
    ld bc, $0f66
    ld [$100f], sp
    rra
    rra
    db $10

jr_018_65db:
    ld de, $101e
    rra
    ld [$060f], sp
    rlca
    ld bc, $8b01
    ld bc, $0194
    inc c
    rrca
    jp $9700


    jp $cd00


    ld b, c
    ldh [$ff9f], a
    rlca
    pop hl
    sbc a
    db $e3
    sbc [hl]
    add d
    rst $38
    db $e3
    sbc [hl]
    call nz, $d401
    nop
    sbc a
    jp $8b00


    rlca
    jr nc, jr_018_6637

    jr jr_018_6621

    inc c
    rrca
    inc bc
    ld [bc], a
    ld hl, sp+$25
    ld bc, $069d
    inc a
    inc a
    ld [hl], e
    ld c, a
    ld [hl], b
    ld c, a
    add b
    ld b, c
    rst $38
    nop
    ld c, $ff
    add b
    ld a, a

jr_018_6621:
    pop hl
    ld e, $7f
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

jr_018_6637:
    scf
    nop
    dec b
    ld e, $1e
    add hl, sp
    daa
    ld a, b
    ld h, a
    add l
    ld [bc], a
    ld a, [de]
    inc bc
    ret nz

    ccf
    ld [hl], b
    adc a
    ld b, d
    ccf
    ret nz

    inc bc
    ld a, a
    add d
    rst $38
    ld bc, $0285
    ld [hl-], a
    dec b
    ccf
    ret nz

    rra
    ldh [$ffc1], a
    rst $38
    sbc c
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    ccf
    ccf
    ld [hl], c
    adc d
    ld [bc], a
    rla
    dec bc
    ld [hl], b
    adc a
    ld a, a
    add b
    ld a, $c1
    ccf
    ret nz

    ld a, a
    add h
    rst $38
    inc bc
    add a
    ld [bc], a
    ld l, [hl]
    inc bc
    rrca
    ldh a, [rIE]
    rst $38
    dec h
    nop
    dec b
    ldh a, [$fff0]
    ld hl, sp+$08
    cp h
    ld b, h
    adc b
    ld [bc], a
    dec l
    ld b, $ff
    inc bc
    db $fd
    nop
    rst $38
    ret nz

    rst $38
    ld b, c
    ret nz

    ccf
    ld [bc], a
    ret nz

    ccf
    ret nz

    ld b, l
    rst $38
    nop
    ld [$01ff], sp
    rst $38
    cp [hl]
    ld b, [hl]
    ld hl, sp+$08
    ldh a, [$fff0]
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
    ld b, c
    ld hl, sp+$08
    ld b, c
    db $fc
    add h
    ld bc, $04fc
    ld b, d
    cp $02
    add hl, bc
    db $fd
    rlca
    pop af
    rrca
    and d
    ld a, [hl]
    call z, Call_000_30fc
    jr nc, @-$79

    ld bc, $1318
    ld c, $0f
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
    rst $38
    rst $38
    adc c
    adc c
    daa
    ld bc, $0385
    jr nz, jr_018_66ef

    ld a, b
    adc b
    ld hl, sp+$48
    db $f4
    ld c, h
    db $fc

jr_018_66ef:
    add h
    ld b, d
    db $fc
    inc b
    inc bc
    ld hl, sp+$08
    ldh a, [$ff30]
    xor e
    ld bc, $0276
    dec c
    dec c
    inc de
    ld [hl+], a
    rra
    ld bc, $3d3a
    ld b, c
    ld a, a
    ld e, b
    ld bc, $f8bf
    ld b, c
    ei
    cp h
    add hl, bc
    db $fd
    cp a
    cp $be
    sbc h
    db $fc
    ld [hl], b
    ld [hl], b
    ld b, b
    ld b, b
    add a
    inc bc
    jr nz, jr_018_671d

    db $f4

jr_018_671d:
    adc h
    adc c
    inc bc
    ld a, [hl+]
    dec b
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$ffe0], a

jr_018_6728:
    dec l
    nop
    ld bc, $c0c0
    and l
    ld bc, $a368
    ld bc, $0db0
    inc e
    db $fc
    ld a, [hl-]
    and $5e
    ldh [c], a
    ld [hl], h
    call z, $e25e
    ld a, [hl-]
    and $1c
    db $fc
    and e
    ld bc, $05b2
    jr nz, jr_018_6728

    ld b, b
    ret nz

    add b
    add b
    sub a
    ld bc, $0188
    rlca
    inc b
    add l
    ld bc, $03c6
    ld [hl], b
    ld c, a
    ld b, b
    ld a, a
    add e
    ld bc, $00d2
    ldh [c], a
    add [hl]
    ld bc, $c4d5
    inc b
    inc d
    ld a, [bc]
    sbc a
    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    jr c, jr_018_6794

    jr jr_018_678e

    rlca
    inc b
    add e
    ld bc, $95ec
    inc bc
    ldh a, [$ff0d]
    inc b
    rlca
    jr jr_018_679b

    jr c, jr_018_67a5

    ld [hl], b
    ld c, a
    ld h, b
    ld e, a
    add c
    rst $38
    db $e3
    sbc [hl]
    adc c
    inc b
    inc d
    dec b
    db $e3
    sbc [hl]
    add c
    rst $38

jr_018_678e:
    ld [hl], b
    ld c, a
    add [hl]
    inc b
    inc h
    nop

jr_018_6794:
    ld b, $93
    ld bc, $0bee
    inc bc
    inc bc

jr_018_679b:
    ld [bc], a
    inc bc
    ld [hl], d
    ld [hl], e
    rst $38
    rst $38
    db $f4
    rst $28
    db $f4
    rst $08

jr_018_67a5:
    ld b, c
    ld a, [$0387]
    ld hl, sp-$79
    ld [hl], b
    ld c, a
    add [hl]
    nop
    adc l
    add hl, bc
    ccf
    ld hl, $113e
    ld e, $28
    ccf
    ld a, $3f
    inc bc
    jp c, $9e01

    add e
    inc b
    add b
    ld [bc], a
    ld [bc], a
    inc bc
    rrca
    and e
    inc bc
    push hl
    and [hl]
    inc bc
    ret


    ld b, c
    db $10
    rra
    ld b, c
    jr nz, jr_018_6810

    ld a, [bc]
    ld [hl-], a
    ccf
    ccf
    ld a, $1d
    ld e, $19
    ld e, $28
    ccf
    ld h, $22
    ccf
    sub a
    ld bc, $05ee
    ldh [$ffe0], a
    ldh a, [rNR10]
    ld a, h
    adc h
    adc e
    ld [bc], a
    add $02
    add b
    rst $38
    ret nz

    add $02
    ld l, d
    ld [bc], a
    ret nz

    ld a, a
    add b
    adc d
    ld [bc], a
    pop hl
    ld bc, $867e
    add e
    inc bc
    or [hl]
    sbc a
    inc b
    ldh a, [rSB]
    rlca
    ld sp, hl
    add l
    dec b
    ld [de], a
    ld b, c
    pop bc
    ccf
    nop
    pop bc
    adc l
    dec b

jr_018_6810:
    dec e
    nop
    adc [hl]
    sub e
    ld [bc], a
    ldh a, [rNR31]
    sbc h
    sbc h
    ld [hl], e
    rst $38
    ld de, $00ff
    rst $38
    jr nc, @+$01

    inc e
    rst $38
    ld a, [hl]
    rst $30
    ld a, $f7
    ld a, [hl]
    ld sp, hl
    ld bc, $1fff
    pop hl
    ld a, a
    add b
    call z, $dc33
    inc hl
    add a
    ld [bc], a
    jr nc, jr_018_683a

    rst $38
    rst $38
    ld c, d

jr_018_683a:
    adc $25
    nop
    ldh a, [rNR52]
    dec b
    ld l, [hl]
    nop
    ldh [$ff83], a
    dec b
    sub [hl]
    adc l
    dec b
    sbc b
    ld bc, $4b4b
    dec a
    nop
    adc e
    inc bc
    ret z

    dec c
    inc a

jr_018_6853:
    db $fc
    ld e, d
    and $fe
    add d
    db $ec
    sbc h
    cp $82
    ld e, d
    and $3c
    db $fc
    add l
    inc bc
    db $e4
    ld bc, $8080
    ldh a, [rNR51]
    dec b
    ld [$c813], a
    jr c, @+$0a

    ld hl, sp+$7c
    db $fc
    cp d
    add $fe
    ld [bc], a
    call c, $fe3c
    ld [bc], a
    cp d
    add $7c
    db $fc

jr_018_687d:
    ld [$bbf8], sp
    ld bc, $a372
    ld bc, $071e
    inc l
    db $ec
    ld a, $fe
    ld d, $fe
    ld [hl], d
    cp $41
    ldh a, [c]
    sbc $13
    db $f4
    inc a
    adc h
    db $fc
    ret z

    jr c, jr_018_687d

    inc e
    sub h
    ld l, h
    call nc, $f42c
    inc c
    ld hl, sp+$08
    add sp, $18
    or b

jr_018_68a5:
    ld [hl], b
    cp e
    ld bc, $0176
    add b
    add b
    and a
    ld bc, $01a0
    ld [hl], b
    ldh a, [rSTAT]
    ldh a, [$ffd0]
    add hl, bc
    ld hl, sp+$38
    adc b
    ld hl, sp-$38
    jr c, jr_018_68a5

    jr jr_018_6853

    ld l, h
    ldh a, [rNR51]
    ld b, $98
    adc c
    inc b
    ret nz

    inc bc
    ld a, $3f
    ld b, d
    ld a, a
    ld b, c
    add b
    rst $38

jr_018_68cf:
    rlca
    ret nz

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    ld a, a
    adc c
    inc b
    sbc d
    inc bc
    rlca
    rlca
    ld bc, $f801
    ld hl, $0d02

jr_018_68e4:
    ld bc, $0704
    and e
    inc bc
    call nc, $5a01
    ld h, a
    and a
    inc bc
    jp c, Jump_000_2042

jr_018_68f2:
    ccf
    ld b, c
    db $10
    rra
    rlca
    ld [$080f], sp
    rrca
    ld b, $07
    ld bc, $9701
    inc b
    db $ec
    inc b
    cp b
    ld c, b
    jr c, jr_018_68cf

    ld [$03c6], sp
    or [hl]
    ld b, c
    inc bc
    db $fd
    dec b
    ld bc, $c3ff
    db $fd
    jp $a37d


    ld bc, $a7da
    inc b
    ld h, b
    add hl, bc
    inc a
    call nz, $8878
    jr nc, jr_018_68f2

    ldh [$ff60], a
    ret nz

    ret nz

    sbc l
    inc b
    ldh a, [rTIMA]
    inc bc
    cp $03
    rst $38
    add e
    db $fc
    adc e
    dec b
    ld d, h
    adc l
    inc bc
    ret nz

    inc bc
    sub b
    ld [hl], b
    adc b
    ld a, b
    adc l
    ld b, $52
    add l
    inc b
    db $fc
    ld de, $b858
    call nc, $feec
    ldh a, [c]
    db $fd
    ld a, e
    ld sp, hl
    ccf
    rst $38
    rra

jr_018_694e:
    ret c

    jr c, @+$62

    ldh [$ffc0], a
    ret nz

    inc hl
    ld h, b
    inc hl
    jr nc, jr_018_68e4

    ld b, $c0
    dec c
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
    add l
    ld b, $9a
    add e
    ld bc, $019c
    ld a, a
    ld a, h
    add e
    ld [bc], a
    ld a, [de]
    rlca
    jr nc, @-$1f

    ld a, b
    or a
    ld a, b
    add a
    jr nc, jr_018_694e

    add l
    ld [bc], a
    and $41
    inc bc
    db $fc
    ld bc, $fc07
    ret


    rlca
    ret nc

    add e
    ld [bc], a
    jp nc, Jump_018_7b01

    ld h, h
    or c
    ld [bc], a
    xor $ff
    or l
    ld l, c
    add $69
    rst $10
    ld l, c
    add sp, $69
    ld sp, hl
    ld l, c
    ld [de], a
    ld l, d
    dec hl
    ld l, d
    ld b, h
    ld l, d
    ld e, l
    ld l, d
    halt
    ld l, d
    adc a
    ld l, d
    xor b
    ld l, d
    pop bc
    ld l, d
    jp c, $df6a

    ld l, d
    ld hl, sp+$6a
    inc b
    jp hl


    ei

jr_018_69b8:
    inc [hl]
    nop
    jp hl


    inc bc
    inc [hl]
    jr nz, jr_018_69b8

    nop
    ld [$f920], sp
    ld hl, sp+$00
    ld hl, $e904
    ld sp, hl
    inc [hl]
    nop
    jp hl


    ld bc, $2034
    ld sp, hl
    nop
    ld a, [bc]
    jr nz, @-$05

    ld hl, sp+$02
    ld hl, $ea04
    rst $38
    add b
    jr nz, @-$14

    rlca
    jr c, jr_018_6a00

    ld a, [$0c00]
    jr nz, @-$04

    ld hl, sp+$04
    ld hl, $e904
    ld bc, $2080
    jp hl


    add hl, bc
    jr c, jr_018_6a11

    ld sp, hl
    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$06

jr_018_69f8:
    ld hl, $f906
    db $f4

jr_018_69fc:
    ld [hl-], a
    jr nz, jr_018_69f8

    db $fc

jr_018_6a00:
    ld [hl+], a
    jr nz, jr_018_69fc

jr_018_6a03:
    inc b
    ld [de], a
    jr nz, @-$15

    db $f4
    jr nc, jr_018_6a2a

    jp hl


    db $fc
    jr nz, jr_018_6a2e

    jp hl


    inc b
    db $10

jr_018_6a11:
    ld hl, $eb06
    inc b
    db $10
    jr nz, jr_018_6a03

    db $f4
    jr nc, jr_018_6a3b

    ei
    db $f4
    ld [hl], $20
    ei
    db $fc
    ld h, $20
    ei
    inc b
    ld d, $20
    db $eb
    db $fc

jr_018_6a29:
    inc h

jr_018_6a2a:
    ld hl, $ec06
    db $f4

jr_018_6a2e:
    jr nc, @+$22

    db $fc

jr_018_6a31:
    db $f4
    ld a, [hl-]
    jr nz, jr_018_6a31

jr_018_6a35:
    db $fc
    ld a, [hl+]
    jr nz, jr_018_6a35

    inc b
    ld a, [de]

jr_018_6a3b:
    jr nz, jr_018_6a29

    db $fc
    jr z, jr_018_6a60

    db $ec
    inc b
    jr jr_018_6a65

    ld b, $00

jr_018_6a46:
    db $f4
    ld a, $20
    nop

jr_018_6a4a:
    db $fc
    ld l, $20
    nop
    inc b
    ld e, $20
    ldh a, [$fff4]
    inc a
    jr nz, jr_018_6a46

    db $fc
    inc l
    jr nz, jr_018_6a4a

    inc b
    inc e

jr_018_6a5c:
    ld hl, $0106
    db $f4

jr_018_6a60:
    ld h, d
    jr nz, jr_018_6a64

    db $fc

jr_018_6a64:
    ld d, d

jr_018_6a65:
    jr nz, jr_018_6a68

    inc b

jr_018_6a68:
    ld b, d
    jr nz, jr_018_6a5c

    db $f4
    ld h, b
    jr nz, jr_018_6a60

    db $fc
    ld d, b
    jr nz, jr_018_6a64

    inc b
    ld b, b
    ld hl, $0206
    db $f4
    ld h, [hl]

jr_018_6a7a:
    jr nz, jr_018_6a7e

    db $fc
    ld d, [hl]

jr_018_6a7e:
    jr nz, jr_018_6a82

    inc b
    ld b, [hl]

jr_018_6a82:
    jr nz, @-$0c

    db $f4
    ld h, h
    jr nz, jr_018_6a7a

    db $fc
    ld d, h
    jr nz, jr_018_6a7e

    inc b
    ld b, h
    ld hl, $0506
    db $f4

jr_018_6a92:
    ld l, d
    jr nz, jr_018_6a9a

    db $fc

jr_018_6a96:
    ld e, d
    jr nz, jr_018_6a9e

    inc b

jr_018_6a9a:
    ld c, d
    jr nz, jr_018_6a92

    db $f4

jr_018_6a9e:
    ld l, b
    jr nz, jr_018_6a96

    db $fc
    ld e, b
    jr nz, jr_018_6a9a

    inc b
    ld c, b
    ld hl, $0306
    db $f4
    ld l, [hl]
    jr nz, @+$05

    db $fc
    ld e, [hl]
    jr nz, @+$05

    inc b
    ld c, [hl]
    jr nz, @-$0b

    db $f4
    ld l, h
    jr nz, @-$0b

    db $fc
    ld e, h
    jr nz, @-$0b

    inc b
    ld c, h
    ld hl, $f506
    db $f4

jr_018_6ac4:
    add d
    jr nz, jr_018_6acc

    db $fc
    ld e, d
    jr nz, jr_018_6ad0

    db $f4

jr_018_6acc:
    ld l, d
    jr nz, jr_018_6ac4

    db $fc

jr_018_6ad0:
    ld e, b
    jr nz, jr_018_6ad8

    inc b
    ld [hl], d
    jr nz, jr_018_6acc

    inc b

jr_018_6ad8:
    ld [hl], b
    ld hl, $fc01
    db $fc
    inc d
    ld sp, $0006
    inc b
    ld a, d
    nop
    ldh a, [rDIV]
    ld a, b
    nop
    nop
    db $fc
    add [hl]
    nop
    nop
    db $f4
    halt
    nop

jr_018_6af0:
    ldh a, [$fffc]
    add h
    nop
    ldh a, [$fff4]
    ld [hl], h
    ld bc, $f206
    db $f4
    ld a, [hl]
    jr nz, jr_018_6af0

    db $fc
    ld a, h

jr_018_6b00:
    jr nz, jr_018_6b04

    db $f4
    ld h, [hl]

jr_018_6b04:
    jr nz, jr_018_6b08

    db $fc
    ld d, [hl]

jr_018_6b08:
    jr nz, jr_018_6b0c

    inc b
    ld b, [hl]

jr_018_6b0c:
    jr nz, jr_018_6b00

    inc b
    ld b, h
    ld hl, $002f
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
    xor $42
    rst $38
    nop
    dec b
    rst $38
    db $fc
    rst $38
    xor $ff
    db $fc

jr_018_6b2a:
    jp z, $2600

    nop
    ld a, [hl]
    ld b, c
    rst $38
    ldh [$ffce], a
    nop
    ld [hl], $00
    xor $8a
    nop
    jr z, jr_018_6b3f

    cp $ff

jr_018_6b3d:
    ldh [rIE], a

jr_018_6b3f:
    db $fc
    jp Jump_018_5600


    adc [hl]
    nop
    ld c, h
    nop
    ldh [$ff8a], a
    nop
    inc l
    ld [bc], a
    xor $ff
    xor $88
    nop
    ld a, [hl-]
    nop
    xor $c3
    nop
    inc e
    jp z, $8600

    nop
    ld a, h

jr_018_6b5c:
    ld b, c
    rst $38
    jr c, jr_018_6b2a

    nop
    sub [hl]
    ld b, d
    ld c, $ff
    nop
    ld c, $ca
    nop
    inc h
    ld [bc], a
    db $fc
    rst $38
    ld hl, sp-$36
    nop
    or [hl]
    ld b, c
    ldh [rIE], a
    nop
    ldh [$ff8a], a
    nop
    ld e, b
    nop
    add $84
    nop
    ld d, $00
    sub $c8
    nop
    call nc, $ce00
    add [hl]
    nop
    ld d, $03
    and $ff
    nop
    rst $38
    adc b
    nop

jr_018_6b8f:
    rrca
    jp $f600


    adc h
    nop
    inc a
    ld [bc], a
    db $fc
    rst $38
    ldh [$ff8c], a
    nop
    db $ec
    nop
    db $fc
    adc [hl]
    nop
    ld a, [hl-]
    nop
    db $fc
    jp z, $8400

    inc b
    ldh a, [rIE]
    ld a, h
    rst $38
    ld e, $8a
    nop
    ld c, d
    ld b, d
    jr c, @+$01

    nop
    jr c, jr_018_6b3d

    nop
    ld a, h
    adc [hl]
    nop
    db $f4
    add l
    nop
    rst $30
    ld [bc], a
    jr c, @+$01

    db $10
    sub $00
    ldh [c], a
    inc b
    xor $ff
    ld a, h
    rst $38
    jr c, jr_018_6b8f

    ld bc, $8e86
    ld bc, $005c
    jr c, jr_018_6b5c

    nop
    ld c, h
    ld b, $1c
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    cp $44
    rst $38
    nop
    ld bc, $7cff
    ld b, a
    rst $38
    nop
    inc bc
    rst $38
    ret nz

    rst $38
    ret nz

    ld c, d
    rst $38
    nop
    inc bc
    rst $38
    inc e
    rst $38
    dec e
    and [hl]
    ld bc, $a548
    ld bc, $064b
    ld hl, sp-$01
    call c, Call_000_3cff
    rst $38
    ld [hl], b
    and h
    nop
    and b
    ld b, c
    nop
    add b
    add hl, bc
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr c, jr_018_6c10

jr_018_6c10:
    rra
    nop
    rlca
    ld a, [hl+]
    nop

jr_018_6c15:
    nop
    inc bc
    add [hl]
    ld bc, $c3ad
    ld [bc], a
    ld c, $04
    jr jr_018_6c20

jr_018_6c20:
    jr nz, jr_018_6c22

jr_018_6c22:
    ld b, b
    push bc
    ld [bc], a
    dec b
    ret nc

    nop
    ld de, $180f
    nop
    inc l
    nop
    ld c, [hl]
    nop
    adc a
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $4600
    nop
    rst $38
    nop
    nop
    ld sp, $41ff
    nop
    rst $38
    ld [bc], a
    ret nc

    rst $38
    ldh [rSTAT], a
    rst $38
    call z, Call_000_0088
    xor $00
    ld e, $a5
    ld bc, $afe8
    ld [bc], a
    inc e
    nop
    inc bc
    ret z

    ld [bc], a
    add hl, de
    ld [$0080], sp
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    ccf
    call nz, $4d02
    ld [bc], a
    ld c, $00
    ld a, $c6
    ld [bc], a
    xor l
    add l
    ld [bc], a
    ld a, $06
    rst $08
    nop
    rrca
    nop
    rst $00
    nop
    pop bc
    inc l
    nop
    and l
    ld [bc], a
    nop
    nop
    inc d
    adc b
    ld [bc], a
    pop de
    nop
    ld b, $84
    ld [bc], a
    inc hl
    ld b, $c0
    nop
    jr c, jr_018_6c8e

jr_018_6c8e:
    jr nc, jr_018_6c90

jr_018_6c90:
    jr nz, jr_018_6c15

    ld [bc], a
    dec h
    ld bc, $8000
    sub b
    ld [bc], a
    rlc d
    add d
    nop
    call nz, $028e
    rlc h
    ld [bc], a
    nop
    ret z

    nop
    di
    and h
    ld [bc], a
    jp Jump_018_7006


    nop
    jr nc, jr_018_6caf

jr_018_6caf:
    stop
    nop
    and h
    ld [bc], a
    di
    ld [bc], a
    ld [$1000], sp
    sub b
    ld [bc], a
    push af
    inc b
    add b
    nop
    add b
    nop
    ret nz

    xor d
    ld [bc], a
    dec bc
    nop
    ld b, b
    ld b, c
    nop
    ldh [$ff0d], a
    nop
    ld b, b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, h
    nop
    inc a
    nop
    ld e, $00
    rra
    add e
    ld [bc], a
    ld b, a
    and [hl]
    inc bc
    ld d, a
    ld [bc], a
    rlca
    nop
    ld [bc], a
    add a
    ld [bc], a
    ld de, $02d0
    db $db
    add e
    ld [bc], a
    ld d, $08
    ld b, $00
    ld c, $00
    adc [hl]
    nop
    push hl
    nop
    di
    and h
    ld [bc], a
    or c
    ld [bc], a
    ld [hl], e
    nop
    ld [hl], $86
    inc bc
    sub a
    nop
    jp Jump_000_0184


    ld c, e
    dec bc
    ccf
    ret nz

    ld a, [hl]
    add c
    ld h, h
    sbc e
    call z, $9233
    ld l, l
    add hl, bc
    or $41
    db $e3
    inc e
    ld bc, $cc33
    add e
    inc bc
    or [hl]
    ld [de], a
    ld c, h
    or e
    sub d
    ld l, l
    jp hl


    or $04
    ei
    inc bc
    rst $38
    ld b, $ff
    ld c, $ff
    adc [hl]
    rst $38
    push hl
    rst $38
    di
    ld [hl+], a
    rst $38
    inc b
    ld [hl], h
    ei
    ld [hl], e
    rst $38
    ld [hl], $8a
    inc bc
    push de
    ld bc, $ffff
    adc b
    ld [bc], a
    ld c, a
    inc b
    ld [hl], b
    rst $38
    db $fc
    adc a
    cp $8a
    inc bc
    ldh a, [rNR12]
    nop
    rst $38
    ld bc, $03ff
    inc hl
    rst $38
    ld bc, $44ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    rst $00
    inc b
    ld bc, $0106
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    ld [hl+], a
    rst $38
    rst $38
    ld [bc], a
    ld [hl+], a
    inc hl
    add hl, hl
    ld h, $00
    ld [bc], a
    jr nz, jr_018_6d95

    dec hl
    add a
    nop
    ld [bc], a
    nop
    nop
    add h
    nop
    nop
    ld [bc], a
    jr nz, jr_018_6da1

    dec hl
    add h
    nop
    ld [$0000], sp
    adc c
    nop
    inc bc
    add h
    nop
    inc d
    nop
    nop
    adc h
    nop
    ld e, $24
    nop
    ld [bc], a
    dec l

jr_018_6d95:
    inc h
    inc [hl]
    add e
    nop
    inc h
    sub d
    nop
    inc sp
    add h
    nop
    ld b, l
    inc b

jr_018_6da1:
    ld sp, $352f
    ld [hl], $34
    add a
    nop
    ld b, [hl]
    ld bc, $2c2d
    adc b
    nop
    ld l, e
    inc c
    inc [hl]
    nop
    nop
    ld sp, $002f
    ld [hl], $30
    inc sp
    nop
    scf
    jr c, jr_018_6df3

    add e
    nop
    ld h, [hl]
    nop
    nop
    add e
    nop
    ld a, [hl]
    ld bc, $0035
    add h
    nop
    ld l, b
    add e
    nop
    ld h, l
    ld b, $24
    inc [hl]
    inc sp
    dec [hl]
    scf
    jr c, jr_018_6e0c

    ld [hl+], a
    nop
    ld bc, $3837
    add e
    nop
    add [hl]
    dec bc
    jr nc, jr_018_6e0d

    ld a, [hl+]
    inc sp
    dec [hl]
    scf
    dec [hl]
    jr c, jr_018_6e1e

    cpl
    scf
    ld [hl], $83
    nop
    add l
    ld bc, $3635
    ld c, a
    add hl, sp

jr_018_6df3:
    ld a, [hl-]
    ld c, a
    dec sp
    inc a
    ld c, a
    dec a
    ld a, $4f
    ccf
    ld b, b
    ld c, a
    ld b, c
    ld b, d
    db $e4
    rst $18
    dec e
    rst $38
    rla
    rst $38
    dec c
    inc bc
    push hl
    halt
    ld e, b
    dec c

jr_018_6e0c:
    ld d, b

jr_018_6e0d:
    rrca
    sub e
    and b
    or e
    inc b
    sub l
    ld l, c
    jr jr_018_6e25

    ld b, b
    nop
    jr nz, jr_018_6e5a

    nop
    ld hl, $0040

jr_018_6e1e:
    dec c
    ld d, b
    rrca
    adc h
    and b
    or e
    dec c

jr_018_6e25:
    ld d, b
    rrca
    adc l
    and b
    or e
    dec c
    ld d, b
    rrca
    adc [hl]
    and b
    or e
    dec c
    ld d, b
    rrca
    adc a
    and b
    or e
    dec c
    ld d, b
    rrca
    sub b
    and b
    or e
    dec c
    ld d, b
    rrca
    sub c
    and b
    or e
    dec c
    ld d, b
    rrca
    sub d
    and b
    or e
    ld bc, $0501
    ld [$0201], sp
    dec b
    ld a, [bc]
    ld bc, $0503
    ld [$0201], sp
    dec b
    ld a, [bc]
    dec c
    scf

jr_018_6e5a:
    ld [hl], a
    ld de, $6e48
    add hl, bc
    db $10
    ld bc, $0701
    ret nz

    rst $38
    dec b
    ld [$0201], sp
    dec b
    ld a, [bc]
    ld bc, $0503
    ld [$0201], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld bc, $07ff
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    rst $38
    ld bc, $05ff
    ld l, c
    ld d, $17
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    dec b
    add b
    dec c
    cp h
    ld [hl], h
    dec b
    inc b
    dec c
    xor [hl]
    ld [hl], h
    dec c
    and [hl]
    ld [hl], h
    dec b
    ld bc, $9812
    ld l, [hl]
    dec c
    sbc [hl]
    ld [hl], h
    db $10
    ld b, e
    ld c, $2c
    rst $38
    ld l, [hl]
    add hl, de
    ld l, a
    jr nc, jr_018_6f1c

    ld b, h
    ld l, a
    ld e, e
    ld l, a
    ld [hl], d
    ld l, a
    adc h
    ld l, a
    and b
    ld l, a
    or h
    ld l, a
    bit 5, a
    db $eb
    ld l, a
    rst $38
    ld l, a
    rra
    ld [hl], b
    ld b, l
    ld [hl], b
    ld e, a
    ld [hl], b
    ld [hl], e
    ld [hl], b
    add a
    ld [hl], b
    sbc [hl]
    ld [hl], b
    or l
    ld [hl], b
    ret


    ld [hl], b
    add hl, bc
    ld [hl], c
    add hl, hl
    ld [hl], c
    ld b, b
    ld [hl], c
    ld e, d
    ld [hl], c
    ld [hl], h
    ld [hl], c
    adc e
    ld [hl], c
    or [hl]
    ld [hl], c
    and d
    ld [hl], c
    db $fc
    ld [hl], c
    ld l, $72
    ld c, e
    ld [hl], d
    ld h, l
    ld [hl], d
    ld a, h
    ld [hl], d
    sbc h
    ld [hl], d
    cp h
    ld [hl], d
    call c, Call_000_1972
    ld [hl], e
    adc c
    ld [hl], e
    and b
    ld [hl], e
    or a
    ld [hl], e
    jr c, jr_018_6f6d

    ld d, l
    ld [hl], h
    add a
    ld [hl], h
    sub e
    ld [hl], h
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    ld b, $19
    nop
    ld b, $19
    ld [bc], a
    inc b
    add hl, de
    ld bc, $1906
    ld [bc], a
    inc b
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_6f6b

    nop

jr_018_6f1c:
    ld hl, $0070
    add hl, bc
    ld b, $19
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0a0a
    add hl, de
    nop
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_6f82

    nop
    ld hl, $0070
    add hl, bc
    rlca
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0a08
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_6f96

    nop
    ld hl, $0070
    add hl, bc
    ld b, $19
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0a0a
    add hl, de
    nop
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    ld b, $19
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0a0a
    add hl, de

jr_018_6f6b:
    nop
    ld a, [bc]

jr_018_6f6d:
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_6fc4

    nop
    ld hl, $0070
    add hl, bc
    ld [bc], a
    add hl, de
    nop
    inc d
    add hl, de
    ld bc, $1908
    ld [bc], a

jr_018_6f82:
    ld e, $19
    ld bc, $0a08
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    ld [$0019], sp

jr_018_6f96:
    ld [$0119], sp
    ld [$010a], sp
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_6ff2

    nop
    ld hl, $0070
    add hl, bc
    db $10
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $0a04
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_7006

    nop
    ld hl, $0070
    add hl, bc
    ld b, $19
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0a0a
    add hl, de

jr_018_6fc4:
    nop
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    ld [bc], a
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $1908
    ld [bc], a
    db $10
    add hl, de
    ld bc, $0a08
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $0108
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_703d

    nop
    ld hl, $0070
    add hl, bc

jr_018_6ff2:
    ld [$0019], sp
    ld [$0119], sp
    ld [$010a], sp
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc

Jump_018_7006:
jr_018_7006:
    inc bc
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1914
    ld [bc], a
    inc b
    add hl, de
    inc bc
    ld [$190a], sp
    nop
    inc b
    add hl, de
    ld bc, $0110
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, de
    ld [bc], a
    ld [$0319], sp
    ld [bc], a
    add hl, de
    ld [bc], a
    jr z, jr_018_7048

    inc b
    ld [$0519], sp
    ld [bc], a
    add hl, de
    inc b
    jr z, @+$1b

    ld [bc], a
    ld [$0319], sp
    ld [bc], a

jr_018_703d:
    add hl, de
    ld [bc], a
    ld [de], a
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_7097

    nop

jr_018_7048:
    ld hl, $0070
    add hl, bc
    dec b
    add hl, de
    nop
    ld [$0119], sp
    ld b, $19
    ld [bc], a
    ld [$0119], sp
    inc b
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    ld [$0219], sp
    ld [$0319], sp
    ld [$010a], sp
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_70c5

    nop
    ld hl, $0070
    add hl, bc
    inc b
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $0a10
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_70d9

    nop
    ld hl, $0070
    add hl, bc
    inc b
    add hl, de
    nop
    inc d
    add hl, de
    ld bc, $0a0a
    add hl, de

jr_018_7097:
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_70f0

    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld bc, $0a12
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_7107

    nop
    ld hl, $0070
    add hl, bc
    ld [$0019], sp
    ld [$0119], sp
    ld [$010a], sp

jr_018_70c5:
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_711b

    nop
    ld hl, $0068
    dec c
    ld d, b
    rrca
    sub l
    and b
    or e
    add hl, bc
    ld [$0019], sp

jr_018_70d9:
    ld [$0119], sp
    ld [$010a], sp
    rst $38
    ld b, $90
    ld l, [hl]
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    ld b, $53
    db $10
    dec c
    ld sp, hl

jr_018_70f0:
    rra
    jr nz, jr_018_7143

    nop
    ld hl, $0078
    add hl, bc
    inc b
    add hl, de
    ld [bc], a
    ld [$0319], sp
    ld [$0419], sp
    ld [$0519], sp
    ld [$010a], sp

jr_018_7107:
    rst $38
    ld d, $20
    ld d, b
    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $1906
    inc bc
    ld b, $19

jr_018_711b:
    ld [bc], a
    ld b, $0a
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $0106
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_717b

    nop
    ld hl, $0070
    add hl, bc
    inc b
    add hl, de
    nop
    inc d
    add hl, de
    ld bc, $0a0a
    add hl, de
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_7192

    nop

jr_018_7143:
    ld hl, $0070
    add hl, bc
    dec b
    add hl, de
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$190a], sp
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_71ac

    nop
    ld hl, $0070
    add hl, bc
    db $10
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
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_71c6

    nop
    ld hl, $0070
    add hl, bc

jr_018_717b:
    inc b
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0a12
    add hl, de
    nop
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    jr nz, jr_018_71dd

    nop
    ld hl, $0070
    add hl, bc

jr_018_7192:
    ld b, $19
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0a0a
    add hl, de
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_71f4

    nop
    ld hl, $0070
    add hl, bc
    ld b, $19
    nop

jr_018_71ac:
    inc c
    add hl, de
    ld bc, $0a0c
    ld bc, $06ff
    sub b
    ld l, [hl]
    dec c
    ld d, b
    rrca
    sbc c
    and b
    or e
    jr nz, jr_018_7236

    nop
    ld hl, $0070
    add hl, bc
    dec b
    add hl, de
    nop

jr_018_71c6:
    ld [$0119], sp
    ld [$0219], sp
    ld [$190a], sp
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]

jr_018_71dd:
    inc b
    ld c, $7a
    inc c
    dec c
    ld sp, hl
    rra
    jr nz, jr_018_720e

    nop
    ld hl, $0070
    add hl, bc
    dec b
    add hl, de
    add hl, bc
    ld [$0a19], sp
    ld [$0b19], sp

jr_018_71f4:
    ld [$190a], sp
    add hl, bc
    ld [$ff01], sp
    ld d, $20
    ld d, b
    nop
    ld hl, $0070
    add hl, de
    nop
    ld e, $09
    inc bc
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de

jr_018_720e:
    ld bc, $1902
    inc bc
    ld [bc], a
    ld a, [bc]
    add hl, de
    nop
    ld e, $09
    inc bc
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902
    inc bc
    ld [bc], a
    ld a, [bc]
    add hl, de
    nop
    jr jr_018_722b

    rst $38

jr_018_722b:
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    inc b

jr_018_7236:
    add hl, de
    nop
    ld [$0119], sp
    ld [$0019], sp
    ld b, $19
    ld [bc], a
    ld [$190a], sp
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    inc b
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $190a
    ld [bc], a
    ld [$010a], sp
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    inc d
    add hl, de
    ld [bc], a
    inc d
    ld a, [bc]
    add hl, de
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $1908
    nop
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$190a], sp
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0108
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld bc, $0a08
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $0108
    rst $38
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_730e

    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    ld [$0119], sp
    ld a, [bc]
    add hl, de
    nop
    ld [$0219], sp
    ld a, [bc]
    ld a, [bc]
    add hl, de
    nop
    ld [$0119], sp
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    dec c
    ld d, b
    rrca
    sub h
    and b
    or e
    jr nz, jr_018_730c

    nop
    ld hl, $0070
    add hl, bc
    ld [$1919], sp
    ld [$1a19], sp
    ld [$010a], sp
    rst $38
    ld b, $90
    ld l, [hl]
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    ldh [c], a
    ld l, d
    dec c
    dec c
    ld sp, hl
    rra
    jr nz, jr_018_737e

    nop
    ld hl, $0070
    rrca
    ld b, l

jr_018_730c:
    ret nz

    add hl, bc

jr_018_730e:
    db $10
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $0a04
    ld bc, $16ff
    jr nz, jr_018_736b

    nop
    ld hl, $0075
    add hl, bc
    dec b
    add hl, de
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc b
    add hl, de
    ld [$1902], sp
    ld b, $02
    ld a, [bc]
    add hl, bc
    dec b
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc b
    add hl, de
    ld [$1902], sp
    ld b, $02
    ld a, [bc]
    add hl, bc
    dec b
    add hl, de
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc b
    add hl, de
    ld [$1902], sp
    ld b, $02
    ld a, [bc]
    add hl, bc
    dec b
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    ld bc, $06ff
    sub b
    ld l, [hl]
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b

jr_018_736b:
    add [hl]
    ld l, b
    dec c
    dec c
    ld sp, hl
    rra
    jr nz, jr_018_73eb

    nop
    ld hl, $0070
    add hl, bc
    inc b
    add hl, de
    dec bc
    ld [$0c19], sp

jr_018_737e:
    ld [$0d19], sp
    ld [$0e19], sp
    ld [$010a], sp
    rst $38
    ld d, $20
    ld d, b
    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    inc d
    add hl, de
    ld bc, $0a14
    add hl, de
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    jr nz, jr_018_73f2

    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    inc d
    add hl, de
    ld bc, $0a14
    add hl, de
    nop
    ld [$ff01], sp
    ld b, $90
    ld l, [hl]
    dec c
    ld d, b
    rrca
    sub [hl]
    and b
    or e
    dec c
    ld d, b
    rrca
    sub a
    and b
    or e
    jr nz, jr_018_73ed

    nop
    ld hl, $0070
    add hl, bc
    inc bc
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$0119], sp
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$190a], sp
    nop
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$0119], sp
    ld [bc], a
    ld bc, $06ff
    sub b
    ld l, [hl]
    rla
    rst $38
    dec c
    inc bc
    rst $18

jr_018_73eb:
    ld h, b
    ld c, [hl]

jr_018_73ed:
    inc b
    ld a, d
    ld h, h
    dec c
    dec c

jr_018_73f2:
    ld sp, hl
    rra
    jr nz, jr_018_741e

    nop
    ld hl, $0070
    add hl, bc
    dec b
    add hl, de
    inc bc
    ld b, $19
    inc b
    ld b, $19
    dec b
    ld b, $19
    ld b, $06
    ld a, [bc]
    add hl, de
    inc bc
    ld b, $19
    inc b
    ld [bc], a
    ld bc, $16ff
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    ld a, d
    ld h, h
    dec c
    dec c

jr_018_741e:
    ld sp, hl
    rra
    jr nz, jr_018_749a

    nop
    ld hl, $0070
    add hl, bc
    inc b
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$2c19], sp
    ld [$2d19], sp
    ld [$010a], sp
    rst $38
    ld d, $20
    ld d, b
    nop
    ld hl, $0070
    add hl, bc
    ld b, $19
    nop
    ld a, [bc]
    add hl, de
    ld bc, $1908
    nop
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$010a], sp
    rst $38
    dec c
    pop af
    ld [hl], h
    ld b, $90
    ld l, [hl]
    jr nz, @+$52

    nop
    ld hl, $0070
    add hl, de
    inc bc
    ld e, $19
    inc b
    ld b, $19
    dec b
    ld [$0419], sp
    ld b, $19
    inc bc
    ld e, $19
    inc b
    inc b
    add hl, de
    dec b
    ld b, $19
    inc b
    inc b
    add hl, de
    inc bc
    ld [$0419], sp
    inc b
    add hl, de
    dec b
    ld b, $19
    inc b
    inc b
    add hl, de
    inc bc
    ld d, $01
    rst $38
    ld b, $90
    ld l, [hl]
    ld bc, $05ff
    ld b, b
    dec c
    or [hl]
    ld [hl], h
    dec b
    ld b, b
    ld b, $90
    ld l, [hl]
    add hl, bc
    dec b
    dec b
    add b
    ld a, [bc]
    dec b
    ld h, b

jr_018_749a:
    dec c
    jp c, Jump_000_1674

    push de
    push bc
    call Call_000_3db8
    pop bc
    pop de
    ret


    ld a, [$dd2f]
    inc a
    ld e, $27
    ld [de], a
    ret


    push de
    push bc
    call Call_000_3d65
    pop bc
    pop de
    ret


    push bc
    ld bc, $9c60
    jr jr_018_74c0

    push bc
    ld bc, $9cc0

jr_018_74c0:
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld a, $14
    ld [hl], a
    inc l
    ld b, a
    ld a, $1d

jr_018_74d0:
    ld [hl], a
    inc l
    dec b
    jr nz, jr_018_74d0

    ld a, l
    ldh [$ff92], a
    pop bc
    ret


    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld a, $6e
    ld [hl], a
    inc l
    ld a, $9c
    ld [hl], a
    inc l
    ld [hl], $01
    inc l
    ld [hl], $28
    inc l
    ld a, l
    ldh [$ff92], a
    ret


    ld a, $01
    ld [$df37], a
    ret


    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    sub l
    ld l, c
    jr jr_018_7523

    nop
    nop
    ld hl, $0000
    ld bc, $050d
    ld a, [bc]
    jr nz, jr_018_755e

    nop
    ld hl, $0000
    ld bc, $070d
    nop
    ld bc, $0008
    inc b
    dec b
    ld de, $0c06
    ld [hl], l
    rla
    rst $38
    dec c
    inc bc

jr_018_7523:
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    sub l
    ld l, c
    jr jr_018_754b

    nop
    nop
    ld hl, $0000
    jr nz, @-$7e

    nop
    ld hl, $0000
    ld bc, $070d
    nop
    ld bc, $0008
    inc b
    dec b
    ld de, $3006
    ld [hl], l
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b

jr_018_754b:
    sub l
    ld l, c
    jr jr_018_756f

    nop
    nop
    ld hl, $0000
    ld bc, $050d
    inc d
    jr nz, jr_018_758a

    nop
    ld hl, $0000

jr_018_755e:
    ld bc, $070d
    nop
    ld bc, $0008
    inc b
    dec b
    ld de, $5806
    ld [hl], l
    rla
    rst $38
    dec c
    inc bc

jr_018_756f:
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    sub l
    ld l, c
    jr jr_018_7597

    nop
    nop
    ld hl, $0000
    ld bc, $050d
    ld e, $20
    stop
    ld hl, $0000
    ld bc, $070d
    nop

jr_018_758a:
    ld bc, $0008
    inc b
    dec b
    ld de, $8006
    ld [hl], l
    rla
    rst $38
    dec c
    inc bc

jr_018_7597:
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    sub l
    ld l, c
    jr @+$22

    ld h, b
    nop
    ld hl, $0048
    jr nz, jr_018_7606

    nop
    ld hl, $0040
    ld bc, $0504
    ld [$0501], sp
    dec b
    ld a, [bc]
    ld bc, $0506
    ld [$0501], sp
    dec b
    ld a, [bc]
    dec c
    scf
    ld [hl], a
    ld de, $75aa
    add hl, bc
    db $10
    ld bc, $0704
    ret nz

    rst $38
    dec b
    ld [$0501], sp
    dec b
    ld a, [bc]
    ld bc, $0506
    ld [$0501], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    ld d, $17
    or $0d
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    sub l
    ld l, c
    jr jr_018_760d

    add b
    nop
    ld hl, $0040
    ld bc, $0709
    ld b, b
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld c, b
    dec c
    ld a, [hl+]
    ld [hl], a
    ld [de], a
    inc h
    halt

jr_018_7606:
    add hl, bc
    inc b
    ld bc, $0707
    ldh [rIE], a

jr_018_760d:
    ld [$fefd], sp
    ld a, [hl+]
    ld c, $05
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld bc, $0509
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld b, $f2
    ld [hl], l
    dec c
    ld sp, $0977
    ld c, $01
    rlca
    rlca
    ldh [rIE], a
    ld [$fefd], sp
    ld a, [hl+]
    ld c, $05
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld bc, $0509
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0707
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld bc, $0509
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld bc, $050f
    ld a, [bc]
    ld bc, $050e
    ld [hl-], a
    ld bc, $050f
    ld a, [bc]
    add hl, bc
    db $10
    ld bc, $0707
    ret nz

    rst $38
    ld [$fefd], sp
    ld a, [hl+]
    ld c, $05
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld bc, $0509
    ld [$0801], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [hl], a
    ld e, b
    nop
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    sub l
    ld l, c
    jr jr_018_76b7

    ld [hl], b
    nop
    ld hl, $0014
    jr nz, @+$72

    nop
    ld hl, $001c
    ld bc, $080a
    ld b, b
    nop
    dec b
    ld [$0c01], sp
    dec b
    ld a, [bc]
    ld bc, $080b
    ret nz

    rst $38
    dec b
    ld [$0c01], sp
    dec b

jr_018_76b7:
    ld a, [bc]
    dec c
    scf
    ld [hl], a
    ld de, $76a2
    add hl, bc
    db $10
    ld bc, $070a
    ret nz

    rst $38
    ld [$0040], sp
    dec b
    ld [$0c01], sp
    dec b
    ld a, [bc]
    ld bc, $080b
    ret nz

    rst $38
    dec b
    ld [$0c01], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    ld d, $cd
    inc de
    dec hl
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld e, $0e
    ld a, [de]
    and a
    ret nz

    ld e, $40
    ld a, [de]
    cp $04
    jr c, jr_018_7707

    xor a
    ld [de], a
    ld a, [$da01]
    dec a
    ld [$da01], a
    ret


jr_018_7707:
    inc a
    ld [de], a
    ret


    call Call_000_0357
    ldh a, [$ff9a]
    ld d, a
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_018_7726

    bit 1, a
    jr nz, jr_018_7726

    bit 3, a
    ret z

jr_018_7726:
    ld [$dd2d], a
    ret


    ld a, [$df37]
    ld e, $27
    ld [de], a
    ret


    ld a, $01
    ld [$df38], a
    ret


    ld a, [$df38]
    ld e, $27
    ld [de], a
    ret


    rst $38
    rst $38
    add b
    jr nz, jr_018_7743

jr_018_7743:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    rst $38
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
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2000
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
    ld bc, $0200
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
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

Jump_018_7b01:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_018_7b5b

jr_018_7b5b:
    nop
    ld bc, $0000
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_018_7b9c

jr_018_7b9c:
    ld b, b
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld a, [$ffdf]
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp [hl]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
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
    rst $18
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_018_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    rst $30
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
    rst $38
    ld [bc], a
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld [hl], a
    rst $38
    sbc $ef
    ei
    cp l
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
