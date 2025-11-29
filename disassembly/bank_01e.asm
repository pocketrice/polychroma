; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    db $a8, $40, $b6, $40, $ab, $40, $b4, $40, $ae, $40, $b4, $40, $b1, $40, $b4, $40

    cp b
    ld b, b
    or h
    ld b, b
    ret nz

    ld b, b
    or h
    ld b, b
    ret z

    ld b, b
    or h
    ld b, b

    db $cc, $40

    or h
    ld b, b
    call nc, $b440
    ld b, b
    ret c

    ld b, b
    or h
    ld b, b
    ldh [c], a
    ld b, b
    or h
    ld b, b
    and $40
    or h
    ld b, b
    ldh a, [rLCDC]
    or h
    ld b, b
    cp $40
    inc de
    ld b, c
    inc h
    ld b, c
    inc de

Call_01e_403b:
    ld b, c

    db $28, $41, $b4, $40, $3a, $41, $b4, $40

    ld b, e
    ld b, c
    ld h, l
    ld b, c
    ld d, l
    ld b, c
    inc de
    ld b, c

    db $59, $41, $65, $41

    ld l, c
    ld b, c
    or h
    ld b, b
    ld [hl], a
    ld b, c
    or h
    ld b, b
    adc e
    ld b, c
    or h
    ld b, b

    db $8f, $41

    ld h, l
    ld b, c
    sbc e
    ld b, c
    ld h, l
    ld b, c
    and h
    ld b, c
    ld h, l
    ld b, c
    xor a
    ld b, c
    ld h, l
    ld b, c

    db $b9, $41

    cp [hl]
    ld b, c
    call nz, $c941
    ld b, c
    call nz, Call_01e_6741
    ld b, c

    db $ce, $41

    db $db
    ld b, c

    db $df, $41

    ld h, a
    ld b, c
    rst $20
    ld b, c
    or h
    ld b, b

    db $eb, $41

    or [hl]
    ld b, b
    pop af
    ld b, c
    inc de
    ld b, c

    db $f5, $41

    or h
    ld b, b
    cp $40
    or [hl]
    ld b, b

    db $fc, $41, $b6, $40

    ld b, $42
    or [hl]
    ld b, b
    dec d
    ld b, d
    cp [hl]
    ld b, c
    call z, $2040
    ld b, d

    db $24, $42, $b6, $40, $80, $4f, $ff, $81, $4f, $ff, $82, $4f, $ff, $83, $4f, $ff
    db $44, $08, $40, $ff

    add c
    ld c, a
    db $fc
    rrca
    ld l, a
    ld [$fffd], sp
    add d
    ld e, a
    db $fc
    ld [$6e03], sp
    db $fd
    rst $38
    add c
    ld hl, sp-$3f
    ld b, b

    db $80, $4f, $02, $4d, $02

    ld hl, sp-$3e
    ld b, b
    add d
    ld hl, sp-$47
    ld b, b
    add d
    ld c, a
    ld [bc], a
    ld c, [hl]
    db $fc
    inc c
    ld l, a
    inc bc
    db $fd
    rst $38
    add c
    ld hl, sp-$27
    ld b, b
    add b
    ld a, [$40ed]
    ld hl, sp-$24
    ld b, b
    ld e, a
    ld e, e
    ei
    add c
    ld e, a
    ld e, h
    add b
    db $fc
    ld [$7e71], sp
    db $fd
    ld [hl], c
    ld a, a
    ld hl, sp-$07
    ld b, b
    add d
    ld e, c
    ld e, l
    ld e, a
    ld e, h
    ld c, b
    ld b, $fc
    inc b
    ld h, c
    inc bc
    ld h, c
    inc bc
    db $fd
    ld hl, $2f03
    inc bc
    ld hl, sp+$0c
    ld b, c
    ld c, b
    dec b
    ld b, a
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    db $fc
    dec b
    ld b, l
    inc b
    ld b, h
    inc bc
    db $fd
    ld b, d
    dec b
    ld b, b
    rst $38
    add c
    ld hl, sp-$01
    ld b, b

    db $82, $4f, $02, $81, $5d

    add b
    db $fc
    ld b, $6f
    ld [bc], a
    db $fd
    ld b, [hl]
    inc bc
    ld b, a
    inc bc
    ld hl, sp+$33
    ld b, c

    db $83, $5f, $5c

    db $fc
    dec b
    ld a, [hl]
    db $fd
    ld b, b
    rst $38
    add d
    ld c, a
    ld [bc], a
    ld c, [hl]
    dec b
    ld c, l
    dec b
    cpl
    ld [bc], a
    cpl
    inc bc
    ld hl, $2102
    inc bc
    ld hl, sp+$4a
    ld b, c
    add b
    ld hl, sp+$00
    ld b, c

    db $83, $5f, $82, $4c, $02, $2f, $03, $21, $03, $f8, $5e, $41, $44, $02, $40, $ff

    add d
    ld e, e
    ld c, h
    ld [bc], a
    ld c, l
    ld b, $4e
    ld hl, $2f03
    inc bc
    ld hl, sp+$70
    ld b, c
    add e
    ld e, a
    add b
    ld c, [hl]
    ld [bc], a
    add c
    ld c, d
    db $fc
    dec b
    ld a, a
    db $fd
    ld l, a
    inc bc
    cpl
    inc b
    ld hl, $f804
    add h
    ld b, c
    cpl
    ld hl, sp+$69
    ld b, c

    db $83, $5f, $81, $4c, $02, $21, $03, $2f, $03

    ld hl, sp-$6c
    ld b, c
    add b
    ld e, a
    add e
    ld e, l
    db $fc
    dec b
    ld a, a
    db $fd
    rst $38
    add b
    ld e, a
    add d
    ld e, [hl]
    add c
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    rst $38
    ld e, a
    db $fc
    dec b
    ld a, [hl]
    db $fd
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    rst $38

    db $82, $5f

    ld l, [hl]
    inc bc
    rst $38
    ld c, h
    ld l, d
    ld [bc], a
    ld a, e
    ld b, b
    rst $38
    add b
    ld e, a
    ld l, a
    ld [bc], a
    rst $38
    ld c, [hl]
    ld l, b
    ld [bc], a
    ld b, b
    rst $38

    db $82, $5f, $83, $fc, $06, $7f, $fd, $fc, $08, $6f, $02, $fd

    rst $38
    ld b, h
    inc b
    ld b, b
    rst $38

    db $82, $5f

    ld a, h
    db $fc
    inc bc
    ld a, l
    db $fd
    rst $38
    add e
    ld hl, sp-$33
    ld b, b

    db $82, $4f, $7f, $6e, $07, $ff

    add e
    ld hl, sp-$01
    ld b, b

    db $83, $4a, $65, $02

    ld hl, sp+$01
    ld b, c

    db $82, $5e

    add e

Call_01e_41ff:
    ld e, a
    db $fc
    ld a, [bc]
    ld l, a
    ld [$fffd], sp
    add e
    ld e, a
    add b
    ld d, l
    ld d, d
    ld d, l
    db $fc
    inc bc
    ld l, [hl]
    ld [bc], a
    ld h, c
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    add c
    ld e, a
    add e
    ld l, h
    inc bc
    db $fc
    ld a, [bc]
    ld l, a
    ld [de], a
    db $fd
    rst $38
    ld b, a
    ld l, a
    inc d
    rst $38

    db $4f, $80, $01, $92

    ld a, a
    db $fc
    inc bc
    ld a, l
    db $fd
    ld h, [hl]
    ld bc, $25f8
    ld b, d

    ld hl, $446e
    ld de, $dde5
    ld bc, $0030
    call Call_000_0621
    ld hl, $5b6f
    ld de, $de15
    ld bc, $00c6
    call Call_000_0621
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $ff
    ld [$ce01], a
    ld [$ce02], a
    ld [$ced2], a
    ld hl, $ce06
    ld b, $14
    ld a, $aa

jr_01e_4268:
    ld [hl+], a
    dec b
    jr nz, jr_01e_4268

    ld hl, $30e0
    call Call_000_3001
    ld e, $ff
    ld a, $1f
    ld hl, $4232
    call Call_000_05e5
    ld e, $ff
    call Call_01e_4299
    call Call_01e_4387
    ld hl, $ff14
    set 7, [hl]
    ld hl, $ff19
    set 7, [hl]
    ld hl, $ff1e
    set 7, [hl]
    ld hl, $ff23
    set 7, [hl]
    ret


Call_01e_4299:
    ld a, e
    cp $ff
    jp z, Jump_01e_431c

    ld d, $00
    ld a, [$ce03]
    and a
    jr z, jr_01e_42d5

    ld hl, $5cf9
    add hl, de
    and [hl]
    jr z, jr_01e_42d5

    ld bc, $0003

jr_01e_42b1:
    ld hl, $5cf9
    add hl, de
    ld a, [hl]
    ld hl, $ceca
    add hl, bc
    and [hl]
    jr z, jr_01e_42d0

    ld hl, $cece
    add hl, bc
    ld a, [hl]
    ld hl, $5d5b
    add hl, de
    cp [hl]
    jp c, Jump_01e_431b

    ld hl, $ce52
    add hl, bc
    ld [hl], $00

jr_01e_42d0:
    dec c
    bit 7, c
    jr z, jr_01e_42b1

jr_01e_42d5:
    ld hl, $5cf9
    add hl, de
    ld a, [hl]
    ld [$ce04], a
    ld hl, $5d5b
    add hl, de
    ld a, [hl]
    ld c, a
    ld hl, $5c35
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    ld h, a
    ld l, c
    push hl
    ld bc, $0003

jr_01e_42f2:
    ld hl, $ce52
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_01e_4312

    call Call_000_2b97
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $cece
    add hl, bc
    ld [hl], a
    ld a, [$ce04]
    ld hl, $ceca
    add hl, bc
    ld [hl], a
    pop hl
    dec h
    push hl
    jr z, jr_01e_4317

jr_01e_4312:
    dec c
    bit 7, c
    jr z, jr_01e_42f2

jr_01e_4317:
    pop hl
    jp Jump_01e_4357


Jump_01e_431b:
    ret


Jump_01e_431c:
    ld bc, $0003

jr_01e_431f:
    ld hl, $ce52
    add hl, bc
    ld [hl], b
    ld hl, $ceca
    add hl, bc
    ld [hl], b
    ld hl, $cece
    add hl, bc
    ld [hl], $ff
    dec c
    bit 7, c
    jr z, jr_01e_431f

    ld hl, $4343
    ld de, $ce1a
    ld c, $14

jr_01e_433c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_01e_433c

    ret


    db $08, $00, $08, $00, $80, $00, $00, $08, $00, $80, $80, $00, $00, $00, $80, $00
    db $00, $08, $00, $80

Call_01e_4357:
Jump_01e_4357:
    ld a, [$ceca]
    ld hl, $cecb
    ld c, $03

jr_01e_435f:
    or [hl]
    inc hl
    dec c
    jr nz, jr_01e_435f

    ld [$ce03], a
    ret


    ld b, $03

jr_01e_436a:
    ld h, $ce
    ld a, $52
    add b
    ld l, a
    ld a, [hl]
    and a
    jr nz, jr_01e_437f

    ld a, $ce
    add b
    ld l, a
    ld [hl], $ff
    add $fc
    ld l, a
    ld [hl], $00

jr_01e_437f:
    dec b
    bit 7, b
    jr z, jr_01e_436a

    call Call_01e_4357

Call_01e_4387:
    ld de, $ce2e
    ld a, [$ce03]
    bit 0, a
    jr z, jr_01e_4393

    ld e, $1a

jr_01e_4393:
    ld b, $00
    ld hl, $ce06
    ld c, $10

jr_01e_439a:
    ld a, [de]
    cp [hl]
    jr z, jr_01e_43a6

    ld [hl], a
    ldh [c], a
    ld a, c
    cp $12
    jr nz, jr_01e_43a6

    inc b

jr_01e_43a6:
    inc l
    inc e
    inc c
    ld a, c
    cp $15
    jr nz, jr_01e_439a

    dec b
    jr nz, jr_01e_43b8

    ld a, [$ce0a]
    set 7, a
    ldh [rNR14], a

jr_01e_43b8:
    ld de, $ce34
    ld a, [$ce03]
    bit 1, a
    jr z, jr_01e_43c4

    ld e, $20

jr_01e_43c4:
    ld b, $00
    ld hl, $ce0c
    ld c, $16

jr_01e_43cb:
    ld a, [de]
    cp [hl]
    jr z, jr_01e_43d7

    ld [hl], a
    ldh [c], a
    ld a, c
    cp $17
    jr nz, jr_01e_43d7

    inc b

jr_01e_43d7:
    inc l
    inc e
    inc c
    ld a, c
    cp $1a
    jr nz, jr_01e_43cb

    dec b
    jr nz, jr_01e_43e9

    ld a, [$ce0f]
    set 7, a
    ldh [rNR24], a

jr_01e_43e9:
    ld de, $ce38
    ld a, [$ce03]
    bit 4, a
    jr z, jr_01e_43f5

    ld e, $24

jr_01e_43f5:
    ld hl, $ce10
    ld c, $1a

jr_01e_43fa:
    ld a, [de]
    cp [hl]
    jr z, jr_01e_4400

    ld [hl], a
    ldh [c], a

jr_01e_4400:
    inc l
    inc e
    inc c
    ld a, c
    cp $1f
    jr nz, jr_01e_43fa

    ld de, $ce3e
    ld a, [$ce03]
    bit 3, a
    jr z, jr_01e_4414

    ld e, $2a

jr_01e_4414:
    ld b, $00
    ld hl, $ce16
    ld c, $20

jr_01e_441b:
    ld a, [de]
    cp [hl]
    jr z, jr_01e_4427

    ld [hl], a
    ldh [c], a
    ld a, c
    cp $21
    jr nz, jr_01e_4427

    inc b

jr_01e_4427:
    inc l
    inc e
    inc c
    ld a, c
    cp $24
    jr nz, jr_01e_441b

    dec b
    jr nz, jr_01e_4439

    ld a, [$ce19]
    set 7, a
    ldh [rNR44], a

jr_01e_4439:
    ld a, [$ce03]
    ld c, a
    ld a, [$ce46]
    bit 0, c
    jr z, jr_01e_4447

    ld a, [$ce42]

jr_01e_4447:
    ld b, a
    ld a, [$ce47]
    bit 1, c
    jr z, jr_01e_4452

    ld a, [$ce43]

jr_01e_4452:
    or b
    ld b, a
    ld a, [$ce48]
    bit 4, c
    jr z, jr_01e_445e

    ld a, [$ce44]

jr_01e_445e:
    or b
    ld b, a
    ld a, [$ce49]
    bit 3, c
    jr z, jr_01e_446a

    ld a, [$ce45]

jr_01e_446a:
    or b
    ldh [rNR51], a
    ret


    db $22, $66, $aa, $ee, $ff, $ff, $fe, $ea, $a6, $66, $8a, $cf, $fe, $ec, $a6, $33
    db $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00
    db $13, $57, $9b, $df, $db, $97, $53, $10, $13, $57, $9b, $df, $db, $97, $53, $10

    ld [bc], a
    jp hl


    ld b, [hl]
    nop
    ld a, a
    ld b, a
    inc b

    db $02, $87, $47, $04, $c2, $47, $0c, $01, $e0, $47, $04, $01, $f7, $47, $04, $01
    db $24, $48, $04, $01, $47, $48, $04, $02, $64, $48, $0c, $8f, $48, $04, $02, $b0
    db $48, $04, $ef, $48, $00

    ld bc, $48fa
    inc b
    ld bc, $492a
    inc b
    ld [bc], a
    ld a, b
    ld c, c
    inc c
    ld c, [hl]
    ld c, c
    inc b
    ld bc, $498e
    inc b
    ld [bc], a
    or a
    ld c, c
    inc c
    and e
    ld c, c
    inc b

    db $01, $d6, $49, $04, $01, $ec, $49, $0c

    ld bc, $49f8
    inc b

    db $01, $11, $4a, $04, $01, $2d, $4a, $0c, $01, $5b, $4a, $04, $01, $6f, $4a, $00
    db $01, $dd, $4a, $00, $01, $77, $4b, $0c

    ld [bc], a
    sub d
    ld c, e
    inc b
    xor $51
    inc c

    db $02, $aa, $4b, $04, $26, $4d, $0c

    ld [bc], a
    jp nz, Jump_000_0c47

    cp a
    ld c, e
    inc b

    db $01, $fe, $4b, $0c, $01, $14, $4c, $04, $01, $2a, $4c, $04

    ld bc, $4c59
    inc c

    db $01, $6e, $4c, $04, $01, $93, $4c, $0c, $01, $ac, $4c, $0c, $01, $c2, $4c, $0c
    db $02, $d7, $4c, $00, $1d, $4d, $04, $02, $0f, $4d, $04, $ef, $4c, $0c, $01, $26
    db $4d, $0c, $01, $3c, $4d, $0c

    ld bc, $4d4d
    inc b

    db $04, $5d, $4d, $00, $86, $4d, $04, $e4, $4d, $10, $95, $4d, $0c, $04, $c1, $4d
    db $04, $23, $4e, $00, $32, $4e, $10, $a5, $4d, $0c, $03, $32, $4e, $10, $23, $4e
    db $00, $23, $4e, $04, $04, $55, $4e, $00, $bd, $4e, $04, $a2, $4e, $10, $f2, $4d
    db $0c

    inc bc
    ld b, [hl]
    ld c, a
    nop
    ld l, h
    ld c, a
    inc b
    ld e, l
    ld c, a
    db $10
    ld bc, $4f7c
    inc c
    ld bc, $4fa4
    inc b

    db $01, $b5, $4f, $04, $02, $da, $4f, $0c, $c6, $4f, $04, $04, $f8, $4f, $0c, $12
    db $50, $04, $35, $50, $00, $2f, $50, $10, $01, $52, $50, $04

    ld [bc], a
    sub [hl]
    ld d, b
    inc b
    add l
    ld d, b
    inc c

    db $02, $12, $51, $04, $f5, $50, $0c

    ld bc, $50e6
    inc c

    db $01, $7e, $51, $0c

    ld [bc], a
    ld l, e
    ld d, c
    inc b
    ld e, a
    ld d, c
    inc c
    ld bc, $524d
    inc c
    ld bc, $583b
    inc c
    ld bc, $50b0
    inc b

    db $02, $be, $51, $0c, $a9, $51, $04

    ld [bc], a
    xor $51
    inc c
    db $d3
    ld d, c
    inc b
    ld bc, $5207
    nop

    db $01, $37, $52, $04, $01, $1c, $52, $0c, $01, $4d, $52, $0c, $02, $8a, $52, $0c
    db $72, $52, $04, $02, $1c, $53, $0c, $08, $53, $10, $02, $3d, $53, $04, $2f, $53
    db $00

    ld bc, $5358
    inc b
    inc bc
    ld h, d
    ld d, [hl]
    nop
    ld b, b
    ld d, a
    inc c
    ld h, d
    ld d, [hl]
    inc b
    ld [bc], a
    inc [hl]
    ld d, l
    nop
    ld a, l
    ld d, l
    inc b
    ld bc, $55a5
    inc c

    db $02, $d1, $55, $0c, $b9, $55, $04, $01, $ed, $55, $04, $01, $11, $56, $04

    ld [bc], a

Call_01e_463b:
    ld a, [hl-]
    ld d, [hl]
    nop
    ld l, c
    ld d, [hl]
    inc b
    ld [bc], a
    sub b
    ld d, [hl]
    inc c
    xor h
    ld d, [hl]
    inc b
    ld bc, $56cc
    inc b
    ld [bc], a
    ldh a, [c]
    ld d, [hl]
    inc b
    ld [de], a
    ld d, a
    inc c

    db $01, $77, $57, $0c

    ld [bc], a
    sub c
    ld d, a
    inc c
    or b
    ld d, a
    inc b
    inc bc
    bit 2, a
    inc b
    ld [bc], a
    ld e, b
    db $10
    db $e3
    ld d, a
    inc c
    ld [bc], a
    inc de
    ld e, b
    inc c
    daa
    ld e, b
    inc b

    db $01, $51, $58, $0c

    ld [bc], a
    reti


    ld e, b
    inc c
    ld a, e
    ld e, b
    inc b
    ld [bc], a
    db $d3
    ld d, d
    inc b
    ei
    ld d, d
    inc c
    ld bc, $5765
    inc c

    db $01, $30, $59, $04, $01, $52, $59, $04

    ld bc, $574f
    inc c

    db $02, $16, $4f, $00, $2e, $4f, $04

    inc b
    ld e, d
    ld e, c
    nop
    ld e, d
    ld e, c
    inc b
    ld e, d
    ld e, c
    db $10
    ld h, b
    ld e, c
    inc c
    inc b
    ld c, [hl]
    ld e, c
    nop
    ld c, [hl]
    ld e, c
    inc b
    ld c, [hl]
    ld e, c
    db $10
    ld c, [hl]
    ld e, c
    inc c
    ld [bc], a
    ld l, l
    ld e, c
    nop
    ld h, [hl]
    ld e, c
    inc b

    db $02, $87, $59, $0c, $a6, $59, $04, $03, $d3, $59, $00, $cc, $59, $04, $e6, $59
    db $10

    inc b
    call Call_000_0454
    di
    ld d, e
    nop
    sub b
    ld d, e
    db $10
    ld [hl], h
    ld d, e
    inc c
    ld bc, $5524
    inc b

    db $01, $eb, $59, $04

    inc bc
    add hl, bc
    ld e, d
    nop
    inc l
    ld e, d
    inc b
    ldh [$ff5a], a
    db $10
    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rIF]
    or $00
    db $f4
    nop
    push af
    daa
    dec b
    db $fc
    ld b, $e3
    pop af
    di
    ld bc, $0be3
    di
    ld bc, $f5fd
    inc l
    ld c, $0f
    ld c, $0f
    ld [hl], b
    rst $08
    nop
    db $fc
    inc bc
    db $e3
    ld a, [$01f3]
    db $e3
    ld [$01f3], sp
    db $e3
    ld hl, sp-$0d
    ld bc, $06e3
    di
    ld bc, $d0fd
    ld [$00cf], sp
    db $fc
    inc bc
    db $e3
    ld sp, hl
    di
    ld bc, $fbe3
    di
    ld bc, $07e3
    di
    ld bc, $05e3
    di
    ld bc, $fcfd
    ld [bc], a
    rst $08
    nop
    db $fc
    inc bc
    db $e3
    ld a, [$01f3]
    db $e3
    dec b
    di
    ld bc, $fbe3
    di
    ld bc, $06e3
    di
    ld bc, $e3fd
    ld b, $f3
    ld bc, $fbe3
    di
    ld bc, $fff1
    db $e3
    add hl, bc
    di
    ld bc, $f9e3
    di
    ld bc, $fff1
    db $e3
    ld [$01f3], sp
    db $e3
    rst $30
    di
    ld bc, $fff1
    db $e3
    rlca
    di
    ld bc, $fbe3
    di
    ld bc, $fff1
    db $e3
    add hl, bc
    di
    ld bc, $f9e3
    di
    ld bc, $04f0

jr_01e_477d:
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    jr nc, jr_01e_477d

    jp hl


    ld b, [hl]

    db $f2, $16, $fe, $03, $f6, $01, $f5, $27, $f4, $00, $f0, $04, $04, $fc, $07, $e3
    db $fa, $f3, $01, $e3, $f9, $f3, $01, $e3, $04, $f3, $02, $e3, $fb, $f3, $01, $f1
    db $01, $e3, $05, $f3, $01, $e3, $f9, $f3, $02, $fd, $f1, $fe, $e3, $01, $f3, $01
    db $e3, $fe, $f3, $01, $e3, $02, $f3, $01, $f8, $b7, $47, $f2, $1b, $fe, $03, $f6
    db $00, $f4, $00, $f0, $02, $06, $f1, $02, $05, $f1, $02, $04, $f1, $02, $03, $02
    db $f1, $02, $c1, $01, $c1, $01, $f8, $d9, $47, $f2, $16, $fe, $03, $f6, $03, $f0
    db $0f, $f4, $00, $f5, $16, $07, $01, $1c, $f0, $06, $f5, $19, $0c, $0d, $0f, $ff
    db $f2, $16, $fe, $03, $f4, $00, $f5, $16, $f0, $0f, $f6, $03, $00, $1a, $15, $f0
    db $09, $0c, $0d, $0f, $f6, $02, $fc, $04, $11, $17, $f1, $ff, $fd, $f5, $2c, $f0
    db $07, $f6, $02, $c8, $00, $fc, $07, $e3, $fd, $f3, $01, $fd, $ff, $f2, $16, $fe
    db $03, $f6, $02, $f4, $00, $f5, $33, $f0, $06, $c0, $00, $fc, $03, $e3, $f8, $f3
    db $01, $f1, $03, $fd, $f1, $fa, $fc, $02, $e3, $f7, $f3, $01, $f1, $fb, $fd, $ff
    db $f2, $16, $fe, $03, $f4, $00, $f6, $01, $f0, $0b, $f5, $26, $34, $f1, $ff, $13
    db $f1, $fd, $1a, $f1, $ff, $1b, $f1, $ff, $1c, $f1, $ff, $1e, $ff, $f2, $16, $f4
    db $00, $f6, $00, $fe, $03, $f0, $0f, $29, $0b, $0c, $0d, $0e, $2f, $f0, $03, $c6
    db $00, $fc, $03, $01, $f1, $02, $02, $f1, $02, $fd, $c1, $00, $fc, $06, $f1, $ff
    db $f3, $02, $f1, $ff, $f3, $01, $fd, $ff, $f2, $16, $fe, $03, $f4, $00, $f6, $01
    db $f0, $0f, $f5, $0f, $c7, $00, $fc, $06, $e3, $55, $f3, $02, $f1, $ff, $fd, $f0
    db $08, $fc, $06, $14, $15, $f1, $ff, $fd, $ff, $f2, $16, $fe, $03, $f6, $02, $f0
    db $05, $f4, $00, $f5, $37, $2c, $f0, $08, $29, $f0, $0f, $2a, $f0, $0e, $27, $f1
    db $ff, $28, $f1, $fe, $25, $f1, $fe, $26, $f1, $fe, $23, $f1, $fe, $24, $f6, $02
    db $f0, $03, $21, $f1, $fe, $42, $f0, $03, $2c, $29, $2a, $f0, $02, $27, $28, $25
    db $26, $f0, $01, $23, $24, $21, $22, $ff, $f2, $16, $fe, $03, $d0, $02, $f6, $00
    db $f8, $b6, $48

    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rSC]
    or $02
    push af
    ccf
    db $f4
    nop
    ld a, [bc]
    ld a, $f0
    dec b
    ld hl, $2623
    ld a, [hl+]
    ld b, $f0
    dec b
    ld a, [$4922]
    db $fc
    dec b
    ld a, [$4922]
    pop af
    rst $38
    db $fd
    ldh a, [rSB]
    ld a, [$4922]
    rst $38
    ld a, $21
    inc hl
    ld h, $2a
    jr z, @+$1c

    ei
    ldh a, [c]
    ld d, $fe
    inc bc
    or $a1
    db $f4
    nop
    push af
    inc sp
    ldh a, [$ff0c]
    jp z, $fc01

    inc c
    db $e3
    ld [hl-], a
    di
    ld bc, $cee3
    di
    ld bc, $efe3
    di
    ld bc, $1ee3
    di
    ld bc, $fff1
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rSC]
    or $00
    db $f4
    nop
    push af
    add hl, hl
    ld a, [$4970]
    push af
    ld l, $fa
    ld [hl], b
    ld c, c
    push af
    ld [hl-], a
    ld a, [$4970]
    push af
    scf
    db $fc
    dec b
    ld a, [$4970]
    db $fd
    rst $38
    ld [bc], a
    rlca
    db $10
    add hl, bc
    nop
    pop af
    ld bc, $f2fb
    ld d, $fe
    inc bc
    db $f4
    nop
    or $00
    ldh a, [rIF]
    add hl, bc
    ldh a, [rSC]
    db $fc
    dec c
    ld c, $08
    dec c
    pop af
    ld bc, $fffd
    ldh a, [c]
    ld d, $fe
    inc bc
    or $17
    ldh a, [$ff0c]
    push af
    ld b, [hl]
    ld [bc], a
    ldh a, [rDIV]
    db $fc
    inc b
    ld bc, $f120
    rst $38
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    push af
    rrca
    db $f4
    ld h, h
    or $00
    ldh a, [rIF]
    db $fc
    ld c, $14
    dec [hl]
    pop af
    rst $38
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $00
    db $f4
    nop
    ldh a, [rIF]
    daa
    db $fc
    add hl, bc
    ld [$0c0a], sp
    ld a, [bc]
    pop af
    rst $38
    db $fd
    ldh a, [rTIMA]
    db $fc
    inc b
    dec c
    dec bc
    inc c
    pop af
    rst $38
    db $fd
    rst $38

    db $f2, $16, $fe, $03, $f6, $07, $f4, $00, $f5, $30, $f0, $05, $d9, $00, $fc, $04
    db $e3, $f0, $f3, $01, $fd, $ff, $f2, $16, $fe, $03, $f0, $0f, $f6, $02, $f4, $00
    db $0b, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    or $00
    db $f4
    nop
    push af
    daa
    ldh a, [$ff0e]
    dec e
    ld e, $1c
    ldh a, [rP1]
    db $10
    ldh a, [$ff0d]
    dec b
    rlca
    ld b, $08
    rst $38

    db $f2, $16, $fe, $03, $f6, $02, $f0, $0b, $f4, $78, $f5, $27, $c7, $00, $fc, $06
    db $e3, $ee, $f3, $01, $f1, $fa, $f3, $01, $f1, $06, $fd, $ff, $f2, $16, $fe, $03
    db $f0, $0f, $f4, $00, $f6, $00, $fa, $41, $4a, $fc, $03, $fa, $4e, $4a, $fd, $ff
    db $0e, $0c, $05, $0e, $2f, $29, $2a, $0b, $0c, $0d, $0e, $0e, $fb, $2b, $f1, $ff
    db $2c, $f1, $ff, $2d, $f1, $fe, $2e, $f1, $ff, $fb, $f2, $16, $fe, $03, $f6, $01
    db $f4, $00, $f0, $0e, $f5, $3f, $27, $f1, $f8, $3b, $f1, $08, $22, $ff, $f2, $16
    db $fe, $03, $fa, $7a, $4a, $fa, $9c, $4a

    rst $38

    db $f0, $0f, $f5, $38, $f4, $00, $f6, $82, $00, $0b, $24, $27, $29, $2c, $07, $f0
    db $09, $fc, $04, $20, $24, $29, $2c, $f1, $fe, $fd, $f0, $01, $21, $25, $28, $2a
    db $2d, $fb, $22, $26, $29, $2b, $2e, $fc, $04, $fc, $02, $23, $27, $2a, $2c, $2f
    db $fd, $f1, $01, $fd, $fc, $05, $fc, $04, $c3, $00, $e3, $fe, $f3, $02, $c7, $00
    db $e3, $fe, $f3, $02

    jp z, $e300

    cp $f3
    ld [bc], a
    call z, $e300
    cp $f3
    ld [bc], a
    rst $08
    nop
    db $e3
    cp $f3
    ld [bc], a
    db $fd
    pop af
    rst $38
    db $fd
    ei
    ret nc

    ld [bc], a
    ldh a, [c]
    ld d, $fa
    ld a, d
    ld c, d
    rst $38

    db $f2, $16, $fe, $03, $f0, $01, $f6, $02, $f4, $00, $f5, $38, $fc, $0b, $fa, $12
    db $4b, $f1, $01, $fd, $fa, $31, $4b

    db $fc
    rlca
    ld a, [$4b6e]
    pop af
    rst $38
    db $fd
    ldh a, [rDIV]
    db $fc
    inc b
    ld a, [$4b6e]
    ld a, [$4b6e]
    ld a, [$4b6e]

Call_01e_4b09:
    pop af
    rst $38
    db $fd
    ldh a, [rSB]
    ld a, [$4b6e]
    rst $38

    db $c3, $00, $e3, $fd, $f3, $02, $c7, $00, $e3, $fd, $f3, $02, $ca, $00, $e3, $fd
    db $f3, $02, $cc, $00, $e3, $fd, $f3, $02, $cf, $00, $e3, $fd, $f3, $02, $fb, $c3
    db $00, $e3, $fe, $f3, $02, $c7, $00, $e3, $fe, $f3, $02, $ca, $00, $e3, $fe, $f3
    db $02, $cc, $00, $e3, $fe, $f3, $02, $cf, $00, $e3, $fe, $f3, $02, $c3, $00, $e3
    db $ff, $f3, $02, $c7, $00, $e3, $ff, $f3, $02, $ca, $00, $e3, $ff, $f3, $02, $cc
    db $00, $e3, $ff, $f3, $02

    rst $08
    nop
    db $e3
    rst $38
    di
    ld [bc], a
    ei
    db $fc
    ld [bc], a
    inc hl
    daa
    ld a, [hl+]
    inc l
    cpl
    db $fd
    ei

    db $f2, $16, $fe, $03, $f4, $00, $f6, $80, $f0, $07, $01, $c1, $00, $fc, $04, $f1
    db $02, $f3, $02, $fd, $fc, $06, $41, $f1, $fe, $fd, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rIF]
    or $29
    db $f4
    db $f4
    push af
    ccf
    rst $18
    inc b
    rlc b
    db $fc
    ld a, [bc]
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    rst $38

    db $f2, $16, $fe, $03, $f6, $02, $f4, $00, $f5, $29, $f0, $06, $1f, $01, $03, $04
    db $f0, $04, $05, $06, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    or $01
    push af
    rra
    db $f4
    nop
    ldh a, [rSC]
    inc b
    db $fc
    rlca
    db $e3
    or $f3
    ld bc, $03e3
    di
    ld bc, $f3e3
    di
    ld bc, $02e3
    di
    ld bc, $f2e3
    di
    ld bc, $01f1
    db $e3
    add hl, bc
    di
    ld bc, $fae3
    di
    ld [bc], a
    db $fd
    pop af
    ld sp, hl
    db $e3
    ld bc, $01f3
    db $e3
    db $fc
    di
    ld bc, $04e3
    di
    ld bc, $f3f8
    ld c, e

    db $f2, $16, $fe, $03, $f0, $0f, $f6, $00, $f4, $00, $03, $0e, $07, $0a, $fc, $07
    db $0e, $0c, $f1, $fe, $fd, $ff, $f2, $16, $fe, $03, $f0, $0f, $f6, $02, $f4, $00
    db $f5, $24, $08, $0b, $f0, $06, $07, $03, $00, $1d, $1a, $ff, $f2, $16, $fe, $03
    db $f0, $0f, $f6, $02, $f4, $00, $f5, $34, $0f, $10, $0e, $10, $0d, $f1, $fe, $0a
    db $f1, $fe, $07, $f1, $fe, $04, $f1, $fe, $01, $f1, $fe, $1e, $f1, $ff, $1b, $f1
    db $ff, $19, $17, $f1, $ff, $15, $13, $f0, $01, $12, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    or $00
    db $f4
    nop
    ldh a, [rIF]
    inc c
    ldh a, [rIF]
    db $fc
    inc bc
    dec c
    ld l, $f1
    db $fc
    db $fd
    rst $38

    db $f2, $16, $fe, $03, $f6, $03, $f4, $00, $f0, $0b, $f5, $46, $de, $00, $fc, $04
    db $e3, $1d, $f3, $01, $f1, $fe, $fd, $f0, $0b, $c4, $00, $fc, $05, $e3, $1b, $f3
    db $01, $f1, $fe, $fd, $ff, $f2, $16, $fe, $03, $f0, $06, $f6, $00, $f4, $00, $fc
    db $04, $0b, $0a, $f1, $02, $fd, $fc, $07, $0b, $0c, $f1, $fe, $fd, $ff, $f2, $16
    db $fe, $03, $f6, $a1, $f4, $00, $f0, $07, $45, $f0, $0b, $64, $f0, $07, $21, $42
    db $f0, $04, $21, $ff, $f2, $16, $fe, $03, $f6, $00, $f4, $00, $f0, $0f, $04, $06
    db $07, $09, $0a, $0b, $0c, $0d, $0e, $0f, $ff, $f2, $16, $fe, $03, $f6, $02, $f4
    db $00, $f5, $3a, $f0, $0f, $9b, $80, $84, $a7, $b0, $ac, $b0, $06, $c7, $0c, $70
    db $ff, $f2, $16, $fe, $03, $f4, $00, $f6, $25, $fc, $02, $f0, $0f, $0e, $f0, $00
    db $0f, $fd, $f0, $0f, $fc, $05, $0e, $f1, $fe, $0c, $f1, $01, $0d, $f1, $fe, $fd
    db $ff, $f2, $16, $fe, $03, $f5, $03, $f0, $0b, $f6, $07, $f4, $00, $20, $ff, $f2
    db $16, $fe, $03, $f6, $13, $f8, $dd, $4c, $f2, $16, $fe, $03, $f6, $a1, $f4, $00
    db $f0, $0f, $c1, $01, $fc, $04, $e3, $03, $f3, $01, $f1, $fd, $fd, $ff, $f2, $16
    db $fe, $03, $f6, $00, $f4, $00, $f0, $0f, $fc, $03, $fa, $4e, $4a, $fd, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    or $07
    db $f4
    nop
    push af
    inc a
    ldh a, [$ff0a]
    ld c, $11
    inc bc
    rst $38

    db $f2, $16, $fe, $03, $f4, $00, $f6, $02, $f5, $3b, $f0, $07, $cb, $01, $f0, $0a
    db $fc, $05, $e3, $ef, $f3, $01, $f1, $ff, $e3, $fc, $f3, $01, $f1, $ff, $e3, $fe
    db $f3, $01, $e3, $1e, $f3, $01, $fd, $0b, $ff, $f2, $16, $fe, $03, $f5, $38, $f6
    db $02, $f4, $00, $f0, $0f, $f8, $69, $4d, $f2, $16, $fe, $03, $f6, $80, $f4, $00
    db $f0, $0f, $0b, $07, $04, $22, $a1, $ff, $f2, $16, $fe, $03, $f4, $00, $f6, $00
    db $f0, $0f, $07, $08, $09, $0a, $0b, $f1, $02, $0b, $f0, $08, $fc, $04, $0c, $0b
    db $f1, $ff, $fd, $ff, $f2, $16, $fe, $03, $f4, $00, $f6, $01, $f0, $0f, $f5, $1b
    db $c7, $00, $fc, $04, $e3, $55, $f3, $02, $fd, $fc, $05, $e3, $32, $f3, $01, $e3
    db $32, $f3, $01, $f1, $ff, $fd, $ff, $f2, $16, $fe, $03, $f5, $33, $f6, $02, $f0
    db $0f, $f4, $ff, $0d, $ff, $f2, $16, $fe, $03, $f6, $00, $f4, $ff, $f0, $0f, $fc
    db $02, $0b, $0e, $f1, $f8, $fd, $cf, $0a, $f0, $0a, $cd, $0a, $ca, $00, $f0, $05
    db $fc, $09, $e3, $ff, $f3, $01, $f1, $ff, $fd, $ff

    adc $01
    db $fc
    ld a, [bc]
    db $e3
    rst $38
    di
    ld [bc], a
    db $fd
    di
    ld b, $ff

    db $f2, $16, $fe, $03, $f0, $0d, $f6, $02, $f4, $ff, $f5, $43, $f8, $3e, $4e, $f2
    db $16, $fe, $03, $f0, $0f, $f6, $02, $f4, $ff, $f5, $41, $27, $f1, $ff, $09, $f1
    db $ff, $20, $f1, $ff, $1d, $f1, $ff, $3a, $f1, $ff, $18, $f1, $ff, $35, $f1, $ff
    db $12, $ff, $f2, $16, $fe, $03, $f4, $00, $f6, $81, $f0, $0f, $f5, $18, $2f, $2a
    db $20, $f4, $ff, $f6, $01, $47, $40, $f0, $0c, $45, $f5, $0f, $f0, $0a, $4f, $3e
    db $f0, $0d, $f6, $10, $f5, $05, $7b, $f5, $1d, $f4, $00, $19, $1f, $02, $06, $09
    db $0b, $0e, $f0, $07, $fc, $02, $f6, $02, $f4, $00, $cd, $00, $fc, $08, $e3, $f1
    db $f3, $01, $fd, $f1, $fd, $e3, $ec, $f3, $04, $d0, $04, $f0, $04, $fd, $ff, $f2
    db $16, $fe, $03, $f0, $0f, $f6, $02, $f4, $ff, $f5, $33, $2b, $20, $36, $f0, $00
    db $d0, $0f, $f0, $0a, $5f, $26, $49, $2e, $4f, $ff, $f2, $16, $fe, $03, $f6, $83
    db $f0, $0f, $f4, $00, $f5, $18, $0b, $17, $1e, $f0, $0c, $17, $0a, $f0, $08, $f6
    db $02, $1b, $17, $f0, $06, $f5, $0f, $fc, $06, $14, $10, $fd, $f0, $0a, $f5, $18
    db $12, $d1, $00, $fc, $02, $e3, $2c, $f3, $01, $e3, $21, $f3, $01, $fd, $f5, $27
    db $f0, $0d, $f4, $ff, $11, $14, $1a, $02, $05, $0e, $f0, $05, $fc, $02, $f4, $00
    db $cc, $00, $fc, $08, $e3, $f7, $f3, $01, $fd, $f0, $01, $e3, $f8, $f3, $05, $d0
    db $02, $fd, $ff, $f2, $17, $fe, $03, $f6, $0f, $f0, $0f, $f5, $2f, $f4, $ff, $1c
    db $04, $0b, $fc, $03, $c6, $04, $0b, $f1, $fc, $fd, $ff, $f2, $17, $d0, $01, $fe
    db $03, $f0, $0c, $f5, $2f, $f4, $ff, $18, $1f, $08, $fc, $03, $1c, $c4, $06, $f1
    db $fd, $fd, $ff

    ldh a, [c]
    rla
    cp $03
    or $0f
    ldh a, [rIF]
    push af
    cpl
    db $f4
    rst $38
    dec d
    inc e
    pop af
    rst $38
    dec b
    inc bc
    pop af
    rst $38
    jr z, @+$32

    rst $38
    ldh a, [c]
    rla
    cp $03
    or $02
    ldh a, [rIF]
    push af
    dec sp
    db $f4
    ld l, [hl]
    ld hl, sp+$52

jr_01e_4f6b:
    ld c, a
    ldh a, [c]
    rla
    cp $03
    or $21
    ldh a, [rTMA]
    jr nc, jr_01e_4f6b

    cpl
    db $f4
    rst $38
    ld hl, sp+$50
    ld c, a
    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rIF]
    db $f4
    nop
    or $00
    ld [$0204], sp
    rlca
    cpl
    jr z, @+$2b

    ld a, [bc]
    dec bc
    inc l
    dec c
    db $fc
    ld [bc], a
    jr z, @+$4b

    pop af
    cp $2a
    ld c, e
    pop af
    rst $38
    inc l
    pop af
    cp $4d
    ld hl, $fff1
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rIF]
    or $02
    db $f4
    nop
    push af
    ccf
    ld [hl+], a
    ldh a, [$ff03]
    ld [hl+], a
    rst $38

    db $f2, $16, $fe, $03, $f0, $0f, $f6, $02, $f4, $00, $f5, $3f, $3b, $20, $24, $27
    db $ff, $f2, $16, $fe, $03, $f0, $06, $f6, $02, $f4, $ff, $f5, $3b, $0f, $f1, $ff
    db $02, $f1, $ff, $04, $ff, $f2, $16, $fe, $03, $f0, $0f, $f6, $1e, $f4, $00, $02
    db $09, $c4, $00, $fc, $05, $f1, $fd, $e3, $02, $f3, $01, $e3, $ff, $f3, $01, $fd
    db $f0, $07, $ff, $f2, $16, $fe, $03, $f0, $0f, $f4, $00, $f6, $00, $fc, $05, $25
    db $26, $07, $08, $09, $0a, $0b, $0c, $0d, $4e, $f1, $fe, $fd, $ff, $f2, $16, $fe
    db $03, $f0, $0f, $f4, $00, $f6, $02, $f5, $1b, $fc, $05, $c0, $00, $fc, $0d, $e3
    db $5a, $f3, $01, $fd, $f1, $fe, $f3, $02, $fd, $ff, $f2, $1b, $fe, $03, $b0, $ff
    db $f2, $16, $fe, $03, $f0, $0f, $f4, $00, $f6, $03, $f5, $1b, $fc, $05, $c5, $00
    db $fc, $0d, $e3, $5a, $f3, $01, $fd, $f1, $fe, $f3, $02, $fd, $ff, $f2, $16, $fe
    db $03, $f6, $82, $f4, $00, $f5, $18, $f0, $05, $cb, $00, $e3, $fd, $f3, $01, $fc
    db $03, $e3, $14, $f3, $01, $fd, $fc, $04, $f1, $ff, $e3, $04, $f3, $01, $fd, $f0
    db $06, $fc, $03, $fc, $04, $e3, $e3, $f3, $01, $fd, $f1, $fe, $e3, $64, $fd, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    or $9e
    db $f4
    nop
    ldh a, [rIF]
    inc h
    dec bc
    ld bc, $0d26
    and c
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    ld h, h
    or $04
    db $fc
    ld [bc], a
    push af
    inc a
    ldh a, [rSC]
    add hl, bc
    ld [$04f0], sp
    add hl, bc
    ldh a, [rSB]
    rlca
    ldh a, [rP1]
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $08
    db $f4
    nop
    push af
    ld d, $f0
    rrca
    ld a, [$50d8]
    db $10
    push af
    dec de
    ldh a, [$ff0a]
    ld a, [$50d8]
    ld d, b
    push af
    dec e
    ldh a, [rTAC]
    ld a, [$50d8]
    ld d, b
    push af
    ld e, $f0
    dec b
    ld a, [$50d8]
    rst $38
    rst $10
    nop
    db $e3
    ret z

    di
    ld bc, $06fc
    db $e3
    or a
    di
    ld bc, $fbfd
    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [$ff0a]
    or $10
    db $f4
    nop
    rlca
    ldh a, [rP1]
    rrca
    rst $38

    db $f2, $16, $fe, $03, $f0, $0f, $f6, $00, $f4, $ff, $21, $f4, $00, $ca, $00, $fc
    db $09, $e3, $ff, $f3, $01, $f1, $ff, $fd, $f1, $ff, $f3, $05, $ff, $f2, $16, $fe
    db $03, $f0, $0f, $f6, $02, $f4, $00, $f5, $3a, $cf, $00, $e3, $ec, $f3, $01, $e3
    db $05, $f3, $01, $e3, $0a, $f3, $01, $e3, $f4, $f3, $01, $0c, $11, $f1, $ff, $07
    db $05, $f1, $ff, $04, $01, $f1, $ff, $1e, $f1, $ff, $1d, $1a, $f1, $ff, $19, $f1
    db $ff, $16, $14, $f1, $ff, $12, $f5, $32, $17, $f1, $ff, $d5, $00, $fc, $06, $f3
    db $01, $e3, $39, $f3, $01, $f1, $ff, $fd, $12, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [$ff0a]
    or $07
    db $f4
    nop
    ld h, c
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $02
    db $f4
    nop
    push af
    ld a, [hl-]
    ldh a, [rTMA]
    rlca
    ldh a, [$ff08]
    nop
    add hl, de
    ld [de], a
    rst $38

    db $f2, $16, $fe, $03, $f6, $00, $f4, $00, $f0, $0f, $fc, $03, $0e, $0c, $0f, $f1
    db $fe, $0e, $0c, $0f, $fd, $f1, $fe, $0e, $0c, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    or $02
    ldh a, [rIF]
    db $f4
    nop
    push af
    inc [hl]
    inc de
    dec d
    ld de, $ff1b

    db $f2, $16, $fe, $03, $f6, $23, $f4, $ff, $f5, $22, $f0, $08, $13, $f0, $06, $13
    db $13, $f0, $04, $13, $ff, $f2, $16, $fe, $03, $f6, $1b, $f4, $64, $f0, $0b, $0c
    db $f0, $0f, $02, $f1, $07, $0b, $f0, $0a, $01, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    jr nc, @-$08

    ld [bc], a
    db $f4
    nop
    ldh a, [rP1]
    push af
    ccf
    rlc b
    pop af
    ld [bc], a
    di
    ld [bc], a
    db $fc
    ld [bc], a
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $00
    db $f4
    nop
    ldh a, [$ff0d]
    inc c
    rlca
    ldh a, [rIF]
    inc b
    ld hl, $f002
    dec bc
    inc b
    ld b, $f0
    rlca
    add hl, bc
    rst $38
    ldh a, [c]
    ld d, $f4
    nop
    or $8e
    cp $03
    push af
    ld [hl-], a
    ldh a, [rIF]

jr_01e_5213:
    ld a, [$4a82]
    push af
    jr nc, jr_01e_5213

    sbc h
    ld c, d
    rst $38

    db $f2, $16, $fe, $03, $f0, $0d, $f6, $00, $f4, $00, $05, $01, $07, $f0, $0d, $fc
    db $06, $03, $04, $03, $04, $03, $04, $f1, $fe, $fd, $ff, $f2, $16, $fe, $03, $d0
    db $14, $f4, $00, $f6, $02, $f5, $3f, $fc, $08, $f0, $0f, $20, $f0, $00, $70, $fd
    db $ff, $f2, $16, $fe, $03, $f6, $00, $f4, $00, $f0, $0f, $fc, $03, $01, $02, $03
    db $04, $fd, $05, $06, $08, $0c, $0e, $0b, $0e, $fc, $05, $0c, $0e, $fd, $fc, $0e
    db $0c, $f1, $ff, $0e, $fd, $ff, $f2, $16, $fe, $03, $f0, $05, $f6, $00, $f4, $ff
    db $f5, $0f, $b0, $14, $fc, $05, $f0, $00, $50, $f0, $0a, $14, $fd, $ff, $f2, $16
    db $fe, $03, $f6, $00, $f4, $00, $f0, $02, $2d, $f0, $04, $21, $05, $2e, $f0, $0f
    db $0e, $04, $01, $f1, $ff, $02, $21, $fc, $03, $01, $f1, $ff, $04, $23, $f1, $ff
    db $01, $04, $f1, $01, $03, $fd, $f1, $ff, $22, $f1, $ff, $05, $04, $f1, $01, $22
    db $f1, $ff, $05, $f1, $ff, $04, $f1, $fe, $23, $f1, $ff, $06, $f1, $ff, $05, $f1
    db $fe, $24, $07, $f1, $ff, $25, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    push af
    ccf
    db $f4
    rst $38
    or $02
    ldh a, [$ff0a]
    ld [$00f0], sp
    db $10
    rst $38
    ldh a, [c]
    ld d, $f0
    rrca
    push af
    inc bc
    db $f4
    ret z

    or $0f
    dec e
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rP1]
    ret nc

    ret z

    ret nc

    and b
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $10
    ldh a, [rIF]
    add hl, hl
    ld b, d
    rst $38

    db $f2, $16, $fe, $03, $f4, $ff, $f6, $03, $f5, $0f, $f0, $0f, $fc, $07, $d4, $04
    db $f1, $fe, $fd, $ff, $f2, $16, $fe, $03, $f4, $00, $f6, $00, $f0, $0f, $fc, $0e
    db $0e, $0f, $0d, $f1, $ff, $fd, $ff, $f2, $16, $fe, $03, $f6, $02, $f4, $ff, $f0
    db $06, $f5, $3f, $0b, $ff, $f2, $16, $fe, $03, $f6, $02, $f4, $ff, $f0, $0f, $f5
    db $33, $25, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    sub [hl]
    or $26
    ldh a, [rIF]
    inc b
    ld bc, $f2ff
    ld d, $fe
    inc bc
    ldh a, [$ff0d]
    db $f4
    nop
    or $a1
    push af
    dec [hl]
    add hl, bc
    rlca
    ldh a, [$ff0a]
    db $fc
    dec b
    dec b
    ld b, $f1
    rst $38
    rlca
    ld b, $f1
    rst $38
    db $fd
    rst $38
    ldh a, [c]
    ld a, [de]
    cp $03
    db $f4
    ld l, a
    ldh a, [$ff09]
    or $1b
    inc bc
    ld [bc], a
    db $f4
    nop
    ldh a, [$ff0d]
    pop bc
    ld bc, $0bfc
    pop af
    rst $38
    di
    ld bc, $f8fd
    ld [hl], h
    ld d, e
    ldh a, [c]
    ld a, [de]
    cp $03
    ldh a, [$ff0a]
    db $f4
    ld l, a
    push af
    ld b, c
    or $07
    db $fc
    ld [bc], a
    inc b
    db $10
    dec de
    dec de
    jr nc, jr_01e_53ab

    ld d, b
    ld [$1510], sp
    dec d
    ld b, $10

jr_01e_53ab:
    db $fd
    ldh a, [$ff0b]
    or $01
    db $f4
    ld l, a
    push af
    dec e
    ld a, [$53e6]
    push af
    dec de
    ld a, [$53e6]
    push af
    ld e, $fa
    ret nc

    ld d, e
    push af
    inc e
    ld a, [$53d0]
    db $f4
    ld l, a
    push af
    dec e
    ld a, [$53e6]
    ld hl, sp-$54
    ld d, e
    db $f4
    adc h
    db $fc
    inc b
    inc b
    dec de
    inc b
    dec de
    ld b, $1e
    ld b, $1e
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld a, [de]
    ld [$0800], sp
    nop
    db $fd
    ei
    db $fc
    inc b
    jr nz, @+$29

    ld b, $3e
    inc h
    ld a, [hl+]
    inc b
    ld [hl+], a
    inc a
    db $fd
    ei
    ldh a, [c]
    ld a, [de]
    cp $03
    ldh a, [$ff09]
    or $15
    db $f4
    add d
    push af
    add hl, hl
    ld a, [$54b9]
    ldh a, [$ff08]
    db $fc
    ld [bc], a
    push af
    add hl, hl
    ld a, [$5492]
    db $fd
    db $fc
    ld [bc], a
    push af
    daa
    ld a, [$546b]
    db $fd
    ldh a, [$ff0b]
    db $f4
    rst $38
    or $0f
    push af
    ld e, $fc
    ld [bc], a
    rst $00
    ld [hl], $04
    dec de

jr_01e_5422:
    dec a
    rra
    jr nz, jr_01e_5422

    inc b
    ld h, $07
    add hl, bc
    db $fd
    rst $00
    ld b, d
    inc h
    dec e
    ld [bc], a
    dec hl
    db $fc
    ld [bc], a
    add hl, bc
    rlca
    ld b, $fd
    inc b
    db $fc
    ld [$f107], sp
    rst $38
    db $fd
    ldh a, [$ff0b]
    push af
    dec h
    db $fd
    ldh a, [$ff0a]
    db $fc
    inc b
    ld a, [$544e]
    db $fd
    ld hl, sp+$02
    ld d, h
    or $21
    push af
    ld a, [hl-]
    db $f4
    ld [hl-], a
    ld l, $27
    ld l, $f4
    ld h, h
    rlca
    ld c, $10
    rlca
    db $10
    ld c, $10
    db $f4
    or d
    rst $00
    inc bc
    rst $00
    inc bc
    adc $03
    ret nc

    add hl, bc
    ei
    db $f4
    ret z

    or $29
    jr z, jr_01e_54b1

    ld [$0820], sp
    ld a, [bc]
    inc c
    ld a, [hl+]
    ld [$0406], sp
    and d
    jr nc, @-$08

    ld hl, $64f4
    push af
    ld a, [hl-]
    db $10
    ld c, $07
    ld c, $10
    rlca
    db $f4
    ret z

    db $fc
    ld [bc], a
    adc $03
    rst $00
    inc bc
    db $fd
    ei
    db $f4
    ret z

    or $29
    inc h
    ld e, e
    inc b
    dec sp

jr_01e_549a:
    inc b
    ld b, $08
    ld h, $04
    ld [bc], a
    nop
    cp [hl]
    jr nc, jr_01e_549a

    ld hl, $64f4
    push af
    ld a, [hl-]
    db $10
    ld c, $07
    ld c, $10
    rlca
    db $f4
    ret z

jr_01e_54b1:
    db $fc
    ld [bc], a
    adc $03
    rst $00
    inc bc
    db $fd
    ei
    db $fc
    ld [bc], a
    inc b
    db $10
    rlca
    ld [bc], a
    db $10
    dec b
    db $10
    inc b
    db $10
    rlca
    db $10
    ld bc, $1002
    rlca
    db $10
    db $fd
    ei
    ldh a, [c]
    ld a, [de]
    cp $03
    db $f4
    add l
    or $07
    ldh a, [rIF]
    push af
    inc c
    db $fc
    ld [bc], a
    ld a, [$5517]
    db $fd
    push af
    inc c
    db $fc
    inc b
    ld a, [$550a]
    db $fd
    push af
    ld a, [bc]
    db $fc
    inc b
    ld a, [$550a]
    db $fd
    push af
    dec c
    db $fc
    inc b
    ld a, [$550a]
    db $fd
    push af
    dec bc
    db $fc
    inc b
    ld a, [$550a]
    db $fd
    push af
    inc c
    db $fc
    inc b
    ld a, [$550a]
    db $fd
    ld hl, sp-$21
    ld d, h
    add hl, sp
    dec b
    add hl, de
    ccf
    dec bc
    dec sp
    rlca
    dec de
    ld hl, $0101
    dec c
    ei
    add hl, sp
    dec b
    add hl, de
    jr nz, jr_01e_5528

    ld a, [hl-]
    ld b, $1a
    dec sp
    inc bc
    nop
    inc c
    ei
    ldh a, [c]
    ld d, $fe
    inc bc

jr_01e_5528:
    db $f4
    nop
    or $82
    push af
    ccf
    ldh a, [$ff0b]
    ld a, [$556d]
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    ld h, h
    or $02
    push af
    ccf
    ldh a, [$ff09]
    ld a, [$5544]
    rst $38
    db $10
    pop af
    rst $38
    add hl, hl
    pop af
    ld bc, $f110
    rst $38
    ld hl, $fff1
    dec hl
    pop af
    ld bc, $1024
    pop af
    rst $38
    ld h, $fb
    ret nz

    ld bc, $00c9
    db $fc
    dec b
    pop af
    ld [bc], a
    db $e3
    db $fc
    di
    ld [bc], a
    pop af
    db $fc
    db $e3
    dec b
    di
    ld bc, $fbfd
    push bc
    ld bc, $00c9
    db $fc
    dec b
    pop af
    db $fc
    di
    ld [bc], a
    pop af
    ld [bc], a
    di
    ld [bc], a
    db $fd
    ei
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    ld h, h
    or $02
    push af
    ccf
    ld [hl], b
    ldh a, [rTAC]
    db $fc
    inc b
    ld a, [$5545]
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $00
    ldh a, [rIF]
    db $fc
    dec b
    ld c, $f1
    rst $38
    ld [$fff1], sp
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $00
    ldh a, [$ff0d]
    dec b
    inc bc
    db $fc
    inc bc
    ld c, $0b
    pop af
    ei
    db $fd
    rst $38

    db $f2, $16, $fe, $03, $f0, $0f, $f6, $17, $f4, $00, $f5, $18, $df, $00, $fc, $07
    db $e3, $1e, $f3, $01, $f1, $ff, $fd, $ff, $f2, $16, $fe, $03, $f4, $00, $f6, $00
    db $f0, $0f, $03, $09, $0c, $f6, $1f, $0d, $f0, $0b, $fc, $03, $0e, $f1, $ff, $0c
    db $f1, $ff, $fd, $ff, $f2, $16, $fe, $03, $f5, $2e, $f6, $02, $f4, $00, $f0, $00
    db $cb, $00, $f0, $03, $f3, $01, $f0, $07, $f3, $01, $fc, $07, $e3, $07, $f3, $01
    db $e3, $08, $f3, $01, $f1, $ff, $fd, $ff, $f2, $16, $fe, $03, $f6, $02, $f0, $01
    db $f4, $00, $f5, $1d, $1e, $fc, $02, $e3, $f0, $f3, $01, $f1, $02, $fd, $fc, $03
    db $e3, $e7, $f3, $01, $f1, $01, $fd, $fc, $04, $e3, $e8, $f3, $01, $f1, $fe, $fd
    db $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [$ff0b]
    db $f4
    nop
    or $02
    push af
    ccf
    rra
    pop af
    ld a, [$f106]
    dec b
    rra
    pop af
    ld hl, sp+$1f
    jr nc, @+$15

    db $10
    ld a, [de]

jr_01e_5654:
    db $fc
    ld [bc], a
    pop af
    inc b
    inc bc
    pop af
    rst $38
    dec bc
    ldh a, [rP1]
    jr nc, jr_01e_5654

    ld h, h
    db $fd
    ldh a, [rP1]
    cp $03
    ret nc

    ld bc, $f2ff
    ld d, $fe
    inc bc
    ldh a, [$ff0a]
    db $f4
    nop
    or $02
    push af
    inc l
    nop
    pop af
    db $fc
    nop
    ld d, b
    ldh a, [rDIV]
    push af
    jr c, @-$02

    ld [bc], a
    ld bc, $0610
    pop af
    rst $38
    db $10
    db $fd
    push af
    inc l
    or $02
    inc c
    pop af
    cp $0c
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $00
    ldh a, [rIF]
    ld bc, $0e0b
    inc c
    db $fc
    rlca
    pop af
    rst $38
    dec bc
    ld a, [bc]
    ld c, $f1
    rst $38
    dec c
    inc c
    ld c, $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $02
    db $f4
    nop
    push af
    rrca
    ldh a, [$ff09]
    rra
    db $fc
    inc bc
    inc d
    pop af
    ld [bc], a
    dec d
    db $fd
    db $fc
    rlca
    pop af
    rst $38
    db $10
    inc d
    db $10
    pop af
    rst $38
    dec d
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $03
    db $f4
    nop
    push af
    inc a
    ldh a, [$ff0a]
    db $fc
    dec b
    ld [$04f1], sp
    pop bc
    nop
    db $e3
    rst $38
    di
    ld bc, $fbf1
    ld de, $30f5
    pop af
    ld [bc], a
    ld a, [de]
    pop af
    db $fd
    rrca
    pop af
    rst $38
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $02
    push af
    rrca
    ldh a, [rIF]
    call nc, $fc00
    inc bc
    db $e3
    jp $01f3


    db $e3
    adc $f3
    ld bc, $0ae3
    di
    ld bc, $fbf1
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $00
    ldh a, [rIF]
    dec c
    ld c, $f1
    rst $38
    inc c
    dec c
    pop af
    cp $0b
    inc c
    pop af
    rst $38
    ld a, [bc]
    dec bc
    pop af
    cp $09
    ld a, [bc]
    pop af
    rst $38
    ld [$f109], sp
    db $fd
    rlca
    ld [$fef1], sp
    ld b, $f1
    rst $38
    ld b, a
    ldh a, [rSB]
    and l
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    ldh a, [rIF]
    or $10
    db $f4
    rst $38
    ld l, d
    ldh a, [$ff0a]
    xor b
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $00
    ldh a, [rIF]
    db $fc
    ld [bc], a
    dec c
    inc c
    db $fd
    ld c, a
    ldh a, [rTIMA]
    inc c
    dec bc
    xor [hl]
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $00
    db $f4
    nop
    ldh a, [rIF]
    dec c
    ld c, $0d
    ld a, [bc]
    ld [$0406], sp
    rst $38

    db $f2, $16, $fe, $03, $f6, $02, $f4, $00, $f0, $0f, $01, $fc, $04, $f0, $0f, $06
    db $01, $fd, $fc, $02, $01, $f1, $fd, $06, $fd, $ff

    ldh a, [c]
    ld d, $fe
    inc bc
    or $00
    db $f4
    nop
    ldh a, [$ff0d]
    ld bc, $0301
    dec b
    ldh a, [$ff0a]
    rlca
    ld [$f00a], sp
    add hl, bc
    dec bc
    inc c
    db $fc
    rlca
    dec c
    pop af
    rst $38
    ld c, $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $21
    push af
    inc de
    ldh a, [$ff0e]
    db $fc
    ld [bc], a
    inc c
    db $10
    dec d
    db $fd
    db $fc
    dec c
    pop af
    rst $38

jr_01e_57c6:
    inc c
    db $10
    dec d
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $03
    push af
    jr c, jr_01e_57c6

    rrca
    call z, $f003
    ld a, [bc]
    db $fc
    ld a, [bc]
    di
    inc b
    pop af
    rst $38
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $01
    ldh a, [rSB]
    db $fc
    dec b
    db $fc
    inc bc
    ld [bc], a
    ld bc, $f1fd
    ld bc, $fcfd
    ld b, $fc
    inc bc
    ld [bc], a
    ld bc, $f1fd
    rst $38
    db $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $00
    db $f4
    nop
    ldh a, [rIF]
    push af
    scf
    ret nc

    ld bc, $d5f8
    ld d, a
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $80
    ldh a, [rIF]
    rlc b
    db $fc
    ld a, [bc]
    db $e3
    rst $38
    di
    ld bc, $fffd
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $83
    push af
    ld a, [hl-]
    ldh a, [rIF]
    ld l, $25
    ld a, $18
    rrca
    ld [bc], a
    rla
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $00
    ldh a, [rSC]
    db $fc
    ld [$0c08], sp
    add hl, bc
    dec bc
    pop af
    ld bc, $f8fd
    ld e, c
    ld e, b

    db $f2, $16, $fe, $03, $f4, $00, $f6, $00, $f0, $07, $fc, $08, $08, $0c, $09, $0b
    db $f1, $01, $fd, $f0, $0f, $fc, $06, $07, $09, $07, $0b, $fd

    db $fc
    rlca
    pop af
    rst $38
    rlca
    dec bc
    pop af
    ld bc, $0b07
    pop af
    cp $fd
    rst $38
    ldh a, [c]
    ld d, $fe
    inc bc
    or $01
    push af
    daa
    db $f4
    nop
    ld hl, sp-$52
    ld e, b
    ldh a, [rDIV]
    rlca
    db $fc
    inc b
    db $e3
    inc b
    di
    ld bc, $07e3
    di
    ld [bc], a
    db $e3
    db $fc
    di
    ld bc, $f1fd
    rst $38
    db $fc
    dec b
    db $e3
    add hl, bc
    di
    ld [bc], a
    db $e3
    ld c, $f3
    inc b
    db $e3
    db $fd
    di
    ld [bc], a
    db $fd
    ret nc

    inc de
    rst $38
    ldh a, [rDIV]
    inc b
    db $fc
    dec b
    db $e3
    ld a, [$01f3]
    db $e3
    ld sp, hl
    di
    ld bc, $04e3
    di
    ld bc, $fae3
    di
    ld bc, $05e3
    di
    ld bc, $f9e3
    di
    ld bc, $e3fd
    inc bc
    di
    ld bc, $fde3
    di
    ld bc, $07d0
    ld hl, sp-$78
    ld e, b
    ldh a, [c]
    ld d, $fe
    inc bc
    db $f4
    nop
    or $80
    ld hl, sp+$0b
    ld e, c
    ldh a, [rSB]
    or $00
    db $f4
    rst $38
    rrca
    or $80
    db $f4
    nop
    inc bc
    inc h
    dec h
    ldh a, [$ff03]
    ld h, $27
    ldh a, [rDIV]
    jr z, @+$2b

    ldh a, [rTIMA]
    db $fc
    inc b
    db $fc
    ld b, $ca
    ld bc, $01c9
    db $fd
    pop af
    rst $38
    db $fd
    rst $08
    ld c, $ff
    ldh a, [rSB]
    ld h, $f0
    inc bc
    dec h
    ld b, h
    ldh a, [rTIMA]
    ld b, e
    ld h, d
    ldh a, [rTAC]
    ld h, c
    ldh a, [$ff0a]
    ld h, c
    ld bc, $03fc
    ld bc, $fd01
    ldh a, [rTMA]
    db $fc
    inc bc
    ld bc, $f101
    rst $38
    db $fd
    rst $08
    add hl, bc
    ld hl, sp-$1c
    ld e, b

    db $f2, $16, $fe, $03, $f6, $82, $f4, $00, $f5, $26, $f0, $0e, $15, $f0, $04, $14
    db $f6, $82, $f4, $00, $f0, $01, $34, $f0, $09, $0d, $f0, $05, $0e, $0f, $ff

    ldh a, [c]
    ld e, $ff

    db $f2, $16, $fe, $03, $fa, $7a, $4a, $ff

    ldh a, [rP1]
    or b
    ld hl, sp+$5a
    ld e, c
    ldh a, [rP1]
    xor a
    ld hl, sp+$60
    ld e, c
    ldh a, [$ff0d]
    ret nc

    add hl, bc
    ld hl, sp+$6f
    ld e, c
    ldh a, [rIF]
    ldh a, [c]
    ld d, $fe
    inc bc
    push af
    ld b, d
    or $02
    db $f4
    cp d
    db $fc
    ld [bc], a
    ld a, [$5982]
    pop af
    rst $30
    db $fd
    rst $38
    ld h, b
    ld h, l
    ld h, d
    ld a, [hl]
    ei

    db $f2, $16, $fe, $03, $f6, $00, $f4, $00, $f0, $0f, $01, $01, $03, $05, $07, $08
    db $0a, $f0, $0e, $0b, $0c, $fc, $07, $0d, $f1, $ff, $0e, $f1, $ff, $fd, $ff, $f2
    db $16, $fe, $03, $f4, $00, $f6, $21, $f5, $3c, $f0, $05, $00, $f0, $06, $1e, $1c
    db $f0, $09, $1b, $f0, $0d, $1a, $19, $f0, $0e, $d8, $01, $fc, $0c, $e3, $0c, $f3
    db $01, $f1, $ff, $fd, $ff, $f5, $27, $d0, $02, $f8, $d5, $59, $f5, $2b, $f2, $16
    db $fe, $03, $f4, $de, $f0, $0f, $f6, $29, $72, $77, $5c, $61, $40, $5f, $ff, $f0
    db $00, $d0, $15, $ff, $f2, $16, $fe, $03, $f4, $00, $f5, $3f, $f6, $02, $f0, $04
    db $09, $f0, $08, $0a, $f0, $0f, $cb, $00, $fc, $07, $e3, $02, $f3, $01, $f1, $fe
    db $fd, $ff

    ldh a, [c]

jr_01e_5a0a:
    jr jr_01e_5a0a

    inc bc
    db $f4
    sub a
    push af
    inc sp
    or $0d
    ldh a, [rTAC]
    db $fc
    rrca
    ld a, [$5a25]
    db $fd
    inc c
    sub b
    push af
    daa
    ld a, [$5a25]
    ld hl, sp+$1f
    ld e, d
    rlca
    nop
    dec b
    nop
    inc c
    nop
    ei
    ldh a, [c]

jr_01e_5a2d:
    jr jr_01e_5a2d

    inc bc
    db $f4
    sub a
    push af
    dec de
    or $14
    db $fc
    ld [$36d0], sp
    db $fd
    ldh a, [$ff0b]
    ld a, [$5ab7]
    db $fc
    ld [bc], a
    ld a, [$5acd]
    db $fd
    ld a, [$5ab7]
    ld a, [$5acd]
    inc c
    nop
    pop af
    db $fc
    nop
    pop af
    inc b
    dec de
    or $29
    db $f4
    sbc $d4
    ld b, $f1
    db $fc
    call nc, $d406
    ld b, $f6
    inc d
    db $fc
    ld [bc], a
    push af
    dec de

jr_01e_5a66:
    ld a, [$5aa1]
    push af
    jr nz, jr_01e_5a66

    and c
    ld e, d
    db $fd
    push af
    rra
    db $fc
    inc b
    ld a, [$5a92]
    db $fd
    push af
    dec e
    db $fc
    inc bc
    ld a, [$5a92]
    db $fd
    push af
    ld d, $f0
    inc c
    db $f4
    and [hl]
    add hl, de
    ldh a, [$ff08]
    db $f4
    add h
    nop
    rlca
    rrca
    add hl, bc
    add hl, de
    ld hl, sp+$60
    ld e, d
    ldh a, [$ff0c]
    db $f4
    and [hl]
    add hl, de
    ldh a, [$ff0a]
    db $f4
    add h
    nop
    inc bc
    inc e
    ld [$fb00], sp
    db $fc
    ld [bc], a
    ldh a, [$ff0a]
    db $f4
    and [hl]
    add hl, de
    ldh a, [rTAC]
    db $f4
    add h
    nop
    rlca
    dec e
    dec b
    pop af
    db $fd
    inc c
    pop af
    inc bc
    db $fd
    ei
    db $fc
    ld [bc], a
    dec e
    pop af
    cp $07
    pop af
    ld [bc], a
    inc c
    pop af
    db $fc
    add hl, bc
    pop af
    inc b
    dec b
    pop af
    db $fc
    nop
    pop af
    inc b
    db $fd
    ei
    ld e, $f1
    cp $07
    pop af
    ld [bc], a
    ld c, $f1
    db $fc
    add hl, bc
    pop af
    inc b
    rlca
    pop af
    db $fc
    nop
    pop af
    inc b
    ei
    ldh a, [c]

jr_01e_5ae1:
    jr jr_01e_5ae1

    inc bc
    ldh a, [rP1]
    push af
    inc sp
    or $0d
    db $fc
    rrca
    ret nc

    ld [hl], $fd
    ld d, b
    ldh a, [$ff0b]
    db $f4
    nop
    call nc, $d604
    inc b
    ret c

    inc bc
    reti


    inc b
    db $db
    inc b
    db $dd
    inc b
    sbc $04
    ld a, [$5b53]
    db $f4
    nop
    call nz, $fc00
    inc bc
    pop af
    cp $f3
    ld b, $fd
    pop af
    ld b, $c0
    nop
    db $fc
    ld b, $f1
    rst $38
    di
    ld [de], a
    db $fd
    pop af
    ld b, $d4
    nop
    db $fc
    ld b, $f1
    rst $38
    di
    ld [de], a
    db $fd
    or $0e
    ldh a, [$ff09]
    ld a, [$5b53]
    inc b
    dec b
    ret nz

    nop
    db $fc
    inc bc
    pop af
    rst $38
    di
    inc h
    db $fd
    pop af
    ld b, $fc
    inc bc
    ret nc

    inc h
    db $fd
    db $fc
    db $10
    ret nc

    ld [hl], $fd
    ldh a, [$ff0b]
    or $02
    db $f4
    jr z, @+$2b

    daa
    inc l
    add hl, hl
    dec h
    daa
    ld hl, sp+$4a
    ld e, e
    ld h, b
    dec e
    add hl, de
    inc [hl]
    add hl, sp
    ld [hl+], a
    jr nz, @+$40

    halt
    jr nc, @+$1a

    add hl, de
    ld a, e
    add hl, sp
    ld a, b
    add hl, sp
    call nc, Call_01e_7048
    ld [hl], h
    ld d, $14
    inc [hl]
    add hl, sp
    dec sp
    cp l
    ld h, d
    ei

    db $01, $02, $03, $04, $05, $06, $05, $0a, $0f, $14, $1e, $50, $09, $12, $1b, $24
    db $2d, $36, $07, $0e, $15, $1c, $23, $2a, $06, $0c, $12, $18, $1e, $24, $08, $10
    db $18, $20, $28, $30, $0a, $14, $1e, $28, $32, $3c, $0b, $16, $21, $2c, $37, $42
    db $04, $04, $08, $10, $28, $20, $03, $04, $09, $0c, $1b, $3f, $04, $08, $0c, $10
    db $18, $40, $01, $02, $03, $04, $05, $06, $05, $0a, $0f, $14, $1e, $50, $09, $12
    db $1b, $24, $2d, $36, $07, $0e, $15, $1c, $23, $2a, $06, $0c, $12, $18, $1e, $24
    db $08, $10, $18, $20, $28, $30, $0a, $14, $1e, $28, $32, $3c, $0b, $16, $21, $2c
    db $37, $42, $04, $04, $08, $10, $28, $20, $03, $04, $09, $0c, $1b, $3f, $04, $08
    db $0c, $10, $18, $40, $01, $02, $03, $04, $05, $06, $05, $0a, $0f, $14, $1e, $50
    db $09, $12, $1b, $24, $2d, $36, $07, $0e, $15, $1c, $23, $2a, $06, $0c, $12, $18
    db $1e, $24, $08, $10, $18, $20, $28, $30, $0a, $14, $1e, $28, $32, $3c, $0b, $16
    db $21, $2c, $37, $42, $04, $04, $08, $10, $28, $20, $03, $04, $09, $0c, $1b, $3f
    db $04, $08, $0c, $10, $18, $40

    sbc [hl]
    ld b, h

    db $a5, $44, $ac, $44, $b0, $44, $b4, $44, $b8, $44, $bc, $44, $c3, $44

    jp z, $ce44

    ld b, h
    jp nc, $d944

    ld b, h
    db $dd
    ld b, h

    db $e4, $44, $e8, $44

    db $ec
    ld b, h

    db $f0, $44, $f4, $44, $f8, $44, $fc, $44, $00, $45, $04, $45

    db $08
    ld b, l

    db $0f, $45

    ld d, $45

    db $1d, $45, $21, $45, $25, $45

    add hl, hl
    ld b, l

    db $2d, $45, $31, $45, $35, $45, $39, $45, $3d, $45, $44, $45, $4b, $45, $4f, $45

    ld d, e
    ld b, l

    db $57, $45, $64, $45, $71, $45, $7b, $45

    adc b
    ld b, l
    sub d
    ld b, l
    sub [hl]
    ld b, l

    db $9a, $45, $9e, $45, $a5, $45, $b2, $45

    or [hl]
    ld b, l

    db $bd, $45

    db $c4
    ld b, l

    db $c8, $45

    call z, $d345
    ld b, l
    rst $10
    ld b, l
    db $db
    ld b, l

    db $df, $45

    and $45
    db $ed
    ld b, l

    db $f1, $45, $f5, $45, $f9, $45, $fd, $45, $04, $46, $0b, $46

    ld [de], a
    ld b, [hl]
    ld d, $46
    jr nz, jr_01e_5d05

    daa
    ld b, [hl]

    db $2b, $46, $32, $46, $36, $46

    ld a, [hl-]
    ld b, [hl]
    ld b, c
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld c, h
    ld b, [hl]

    db $53, $46

    ld d, a
    ld b, [hl]
    ld e, [hl]
    ld b, [hl]
    ld l, b
    ld b, [hl]

    db $6f, $46

    ld [hl], e
    ld b, [hl]
    ld a, d
    ld b, [hl]
    add c
    ld b, [hl]

    db $85, $46, $89, $46

    adc l
    ld b, [hl]

    db $91, $46

    sbc b
    ld b, [hl]
    and l
    ld b, [hl]
    or d
    ld b, [hl]

    db $b9, $46, $c0, $46

    jp z, $d746

    ld b, [hl]

    db $db, $46

    rst $18
    ld b, [hl]
    inc bc

    db $0a, $02, $02, $02, $02, $0a, $03

    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [bc], a

jr_01e_5d05:
    ld a, [bc]

    db $02, $08

    ld [bc], a

    db $02, $08, $02, $01, $01, $08

    ld a, [bc]

    db $0a

    ld a, [bc]

    db $08, $02, $02

    db $08

    db $02, $08, $08, $08, $03, $0a, $08, $08

    ld [bc], a

    db $1b, $1b, $13, $1b

    inc de
    db $08
    ld [bc], a

    db $02, $0a, $1b, $02

    ld a, [bc]

    db $0a

    db $08

    db $08

    ld a, [bc]
    ld [$0208], sp

    db $0a

    ld a, [bc]
    db $01

    db $02, $08, $08, $0a, $18, $03

    ld [bc], a
    dec bc
    inc bc

    db $08, $0a, $02, $02

    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]

    db $08

    ld a, [bc]
    ld a, [de]
    ld a, [bc]

    db $08

    ld a, [bc]
    ld a, [bc]
    db $08

    db $02, $02

    db $08

    db $03

    dec de
    dec de
    inc bc

    db $0a, $13

    dec de
    ld [bc], a

    db $02

    inc de
    rrca

    db $1e, $1e, $1e, $1e, $1e, $14, $0f

    ld hl, $1e23
    ld e, $14

    db $20, $1f

    rrca

    db $0f, $14, $0a, $09, $09, $1e

    db $1e

    db $1e

    db $1e

    db $1e, $1e, $1e

    db $1e

    db $1e, $1e, $1e, $05, $05, $1e, $1e, $1e

    db $1e

    db $09, $0a, $0f, $14

    inc bc
    rrca
    inc bc

    db $03, $19, $05, $1e

    db $1e

    db $19

    db $1e

    db $14

    ld e, $14
    ld e, $1e

    db $1e

    dec e
    db $1e

    db $0f, $19, $1e, $1e, $14, $1e

    ld e, $0a
    dec e

    db $1e, $1e, $1c, $1f

    ld e, $0f
    rrca
    db $1e

    db $1e

    ld e, $1e
    db $06

    db $1c

    ld e, $0f
    add hl, de

    db $1e, $14

    add hl, de

    db $00

    ld b, $06
    db $06

    db $1e, $14

    ld [hl-], a
    inc d

    db $0b

    nop

Call_01e_5dbd:
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, $00

jr_01e_5dc4:
    push bc
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld b, $10

jr_01e_5dcd:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_01e_5dd1:
    bit 0, d
    ld a, $10
    jr nz, jr_01e_5dd9

    ld a, $20

jr_01e_5dd9:
    ldh [c], a
    ld a, $30
    ldh [c], a
    rr d
    dec e
    jr nz, jr_01e_5dd1

    dec b
    jr nz, jr_01e_5dcd

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop bc
    dec b
    ret z

    call Call_01e_5df3
    jr jr_01e_5dc4

Call_01e_5df3:
Jump_01e_5df3:
    ld de, $1b58

jr_01e_5df6:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_01e_5df6

    ret


    ld de, $06d6

jr_01e_5e02:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_01e_5e02

    ret


Call_01e_5e0b:
    ld hl, $5e7c
    call Call_01e_5dbd
    call Call_01e_5df3
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_01e_5e61

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01e_5df3
    ld a, $30
    ldh [rP1], a
    call Call_01e_5df3
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01e_5df3
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01e_5df3
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_01e_5e61

    ld hl, $5e6c
    call Call_01e_5dbd
    call Call_01e_5df3
    sub a
    ret


jr_01e_5e61:
    ld hl, $5e6c
    call Call_01e_5dbd
    call Call_01e_5df3
    scf
    ret


    db $89, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $89, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Call_01e_5e8c:
    ld a, [$cd00]
    push af
    ld a, $e4
    ld [$cd00], a
    ldh [rBGP], a
    push de
    ld de, $8800
    call Call_000_0708
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_01e_5ea8:
    ld b, $14

jr_01e_5eaa:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_01e_5eaa

    add hl, de
    dec c
    jr nz, jr_01e_5ea8

    ld a, $01
    ldh [rLCDC], a
    call Call_000_0483
    call Call_01e_5df3
    pop hl
    call Call_01e_5dbd
    call Call_01e_5df3
    call Call_000_0452
    pop af
    ld [$cd00], a
    ldh [rBGP], a
    ret


Call_01e_5ece:
    ld hl, $5ee8
    ld bc, $0010
    ld e, $08

jr_01e_5ed6:
    push hl
    push bc
    push de
    call Call_01e_5dbd
    call Call_01e_5df3
    pop de
    pop bc
    pop hl
    add hl, bc
    dec e
    jr nz, jr_01e_5ed6

    ret


    ret


    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call Call_000_0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_01e_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, Jump_01e_79c9

    ld b, a
    ld [$0b00], sp
    call nz, Call_000_16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, @+$7b

    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$ff79], a
    ld e, l
    ld [$0400], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, jr_01e_5f68

    ld [$eaea], a
    ld [$60ea], a
    db $ea
    db $ea

jr_01e_5f68:
    ld a, [$deed]
    or a
    ret z

    xor a
    ld hl, $deee
    ld bc, $0010
    call Call_000_062f
    call Call_01e_5df3
    ld d, $03
    call Call_01e_5feb
    call Call_01e_5ece
    ld hl, $6087
    call Call_01e_5dbd
    call Call_01e_5df3
    ld hl, $7274
    ld de, $60a7
    call Call_01e_5e8c
    ld hl, $6f8a
    ld de, $60c7
    call Call_01e_5e8c
    ld hl, $deee
    ld a, $98
    inc a
    ld [hl+], a
    ld [hl], $00
    inc hl
    xor a
    ld bc, $000e
    call Call_000_062f
    ld hl, $60d7
    ld de, $deee
    call Call_01e_5e8c
    ld hl, $deee
    ld a, $98
    inc a
    ld [hl+], a
    ld [hl], $01
    inc hl
    xor a
    ld bc, $000e
    call Call_000_062f
    ld hl, $6b24
    ld de, $deee
    call Call_01e_5e8c
    ld hl, $6cc1
    ld de, $60b7
    call Call_01e_5e8c
    ld hl, $6097
    call Call_01e_5dbd
    ret


    call Call_01e_5e0b
    ld a, $00
    rla
    ld [$deed], a
    ret


Call_01e_5feb:
    ld a, [$deed]
    or a
    ret z

    ld hl, $deee
    ld a, $b8
    inc a
    ld [hl+], a
    ld [hl], d
    ld hl, $deee
    call Call_01e_5dbd
    call Call_01e_5df3
    ret


    xor a
    ldh [$ff84], a
    call Call_01e_6039
    ret z

    jp Jump_01e_5df3


    xor a
    ldh [$ff84], a
    jr jr_01e_6039

    ld a, [$deed]
    or a
    ret z

    ld a, $80
    ldh [$ff84], a
    ld a, e
    ld [$defe], a
    ld a, [$cd00]
    or a
    ld a, $34
    jr z, jr_01e_6028

    ld a, $35

jr_01e_6028:
    call Call_01e_6042
    jp Jump_01e_5df3


    call Call_01e_6035
    ret z

    jp Jump_01e_5df3


Call_01e_6035:
    ld a, $80
    ldh [$ff84], a

Call_01e_6039:
jr_01e_6039:
    ld a, [$deed]
    or a
    ret z

    ld a, e
    ld [$defe], a

Call_01e_6042:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    ld hl, $deee
    ld [hl], $51
    inc hl
    ld a, $04

jr_01e_6051:
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    inc bc
    dec a
    jr nz, jr_01e_6051

    ldh a, [$ff84]
    or e
    ld [hl+], a
    xor a
    ld bc, $0006
    call Call_000_062f
    ld hl, $deee
    call Call_01e_5dbd
    xor a
    inc a
    ret


    ld a, [$deed]
    or a
    ret z

    ld hl, $7adf
    swap e
    ld a, e
    and $f0
    ld c, a
    ld a, e
    and $0f
    ld b, a
    add hl, bc
    call Call_01e_5dbd
    call Call_01e_5df3
    ret


    adc c
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
    ret


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
    ld e, c

jr_01e_60a8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld b, e
    rst $38
    nop
    rst $10
    nop
    ld h, $28
    rst $38
    add l
    nop
    add hl, hl
    nop
    nop
    adc a
    nop
    daa
    ld b, a
    rst $38
    ldh a, [rBGP]
    nop
    ldh a, [rP1]
    rst $38
    add $00
    ld c, a
    rst $00
    nop
    ld b, a
    sub b
    nop
    jr c, jr_01e_60a8

    nop
    ld h, c
    jr nc, jr_01e_610e

    adc b
    nop
    and b
    add [hl]
    nop
    rra
    rlca
    ld c, $0f
    inc c
    rrca
    ld [$000f], sp
    rrca

jr_01e_610e:
    sub b
    nop
    ld e, b
    add [hl]
    nop
    add hl, hl
    add h
    nop
    ld [hl], b
    ld [bc], a
    ldh a, [rP1]
    ldh a, [$ff86]
    nop
    jr jr_01e_616e

    nop
    rst $38
    ret z

    nop
    ld d, b
    ld c, e
    rst $38
    nop
    ld b, a
    rrca
    ldh a, [$ff9f]
    ld bc, $f408
    scf
    ld bc, $9730
    ld bc, $0588
    ld a, e
    add h
    cp e
    ld b, h
    rst $00
    jr c, jr_01e_6180

    rst $38
    nop
    dec b
    add h
    db $fc
    ld b, h
    ld a, h
    jr c, @+$3a

    adc a
    nop
    ld d, $09
    rst $00
    jr c, @-$43

    ld b, h
    ld a, e
    add h
    ld l, l
    sub d
    db $ed
    ld [de], a
    ret z

    ld bc, $06cc
    ld a, h
    add a
    db $fc
    inc bc
    cp $13
    cp $8c
    nop
    jr nz, @+$04

    ld bc, $01ff
    add [hl]
    ld [bc], a
    nop
    db $d3
    ld [bc], a
    dec d
    call $8d00

jr_01e_616e:
    ld [bc], a
    nop
    rst $38
    rst $38
    adc [hl]
    nop
    inc e
    nop
    ld hl, sp+$41
    rst $38
    db $fc
    add hl, hl
    nop
    ld bc, $f8f8
    inc hl

jr_01e_6180:
    inc b
    cp a
    ld bc, $8ea0
    ld [bc], a
    nop
    nop
    inc bc
    adc l
    ld [bc], a
    nop
    ld bc, $02fe
    adc h
    nop
    jr nz, @+$03

    ldh [rIE], a
    adc l
    ld bc, $024f
    ldh [$ff1f], a
    db $10
    adc a
    ld [bc], a
    ld a, [hl]
    dec l
    nop
    ld bc, $0101
    adc h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $30
    db $fc
    rst $38
    adc e
    ld [bc], a
    call nc, $f703
    rst $30
    rrca
    rrca
    xor d
    ld [bc], a
    sub h
    inc b
    jp $ff7c


    db $10
    rst $38
    xor d
    ld [bc], a
    inc b
    nop
    jp $0283


    inc l
    db $f4
    ld hl, $0002
    rlca
    db $fc
    inc bc
    ldh a, [$ff0c]
    ldh [rNR13], a
    ldh [rNR22], a
    ld b, d
    ret nz

    cpl
    inc hl
    nop
    ld bc, $0303
    inc hl
    rrca
    dec h
    rra
    dec b
    add b
    ld a, a
    nop
    add b
    nop
    ld a, a
    rst $00
    ld bc, $0595
    db $10
    rst $28
    nop
    nop
    ld a, a
    ld a, a
    add hl, hl
    rst $38
    add hl, bc
    ldh a, [$fff0]
    rra
    ldh [$ff03], a
    inc e
    nop
    db $e3
    nop
    db $fc
    and l
    inc bc
    ld h, h
    add hl, bc
    add b
    ld a, a
    rra
    nop
    db $e3
    ldh [$fffc], a
    db $fc
    rst $38
    rst $38
    adc l
    nop
    ld b, b
    ld b, c
    ld a, a
    add b
    ld b, c
    ccf
    ld b, b
    ld bc, $403f
    rst $00
    inc bc
    ld l, e
    ld bc, $007f
    ld b, d
    cp a
    add b
    ld [$fe01], sp
    cp $01
    rra
    nop
    rst $38
    nop
    ei
    add [hl]
    nop
    rra
    inc bc
    cp $fe
    ld bc, $c601
    inc bc
    sbc c
    ld [bc], a
    ldh [$ffc0], a
    ret nz

    add e
    nop
    ld e, $0c
    ld c, a
    or b
    or a
    ld c, b
    rla
    ld [$10cf], sp
    rst $10
    ld [$08f7], sp
    ei
    add e
    ld [bc], a
    ld e, a
    ld b, $b0
    rst $08
    ret z

    rst $28
    add sp, $3f
    jr nc, @+$43

    ccf
    jr c, jr_01e_6258

    scf

jr_01e_6258:
    inc [hl]
    ld b, [hl]
    rst $38
    ld bc, $ff01
    ld [bc], a
    dec l
    ld bc, $0203
    inc bc
    rra
    rra
    add a
    nop
    inc a
    inc bc
    rst $20
    rst $20
    jr @+$1a

    and e
    ld [bc], a
    ld c, b
    and [hl]
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    nop
    rst $20
    rst $38
    add e
    inc b
    dec l
    dec b
    rst $00
    call nz, Call_000_0407
    rlca
    dec b
    inc hl
    rst $38
    ld de, $0404
    db $fc
    db $fc
    rst $38
    ld [bc], a
    rst $38
    call nz, Call_000_04ff
    rst $38
    dec b
    rst $38
    add $ff
    ld b, $04
    rst $38
    add e
    inc b
    ld c, l
    inc bc
    rst $38
    ccf
    ret nz

    ret nz

    add l
    nop
    ld a, $23
    ld sp, $7d03
    ld [hl], c
    rst $38
    ccf
    and a
    ld [bc], a
    adc [hl]
    ld b, c
    ld sp, $07ff
    ld [hl], c
    rst $38
    rst $38
    rra
    ldh [$ffe0], a
    jr nz, jr_01e_62d8

    inc hl
    rst $38
    dec bc
    ld c, $0e
    adc [hl]
    adc d
    cp $8a
    ld e, $1e
    rst $38
    ldh [rIE], a
    jr nz, jr_01e_6309

    rst $38
    db $10
    ld bc, $ff0e
    ld b, c
    adc d
    ei
    adc c
    inc b
    jr nz, jr_01e_62db

    inc e
    inc e
    ld e, $14

jr_01e_62d8:
    rst $38
    inc d
    rst $38

jr_01e_62db:
    rra
    ld b, e
    rst $38
    nop
    ld bc, $ff1c
    ld b, c
    inc d
    rst $30
    ld bc, $c1ff
    ld b, c
    ccf
    ld hl, $ff41
    pop hl
    ld [bc], a
    ccf
    ccf
    jr nz, jr_01e_6334

    jr nz, @+$01

    nop
    pop bc
    ld b, e
    rst $38
    ld hl, $3f00
    ld b, c
    rst $38
    jr nz, jr_01e_6300

jr_01e_6300:
    rst $38
    ld b, c
    ld c, $0b
    nop
    rrca
    call nz, $a100

jr_01e_6309:
    dec b
    ldh a, [$ff80]
    ld [hl], b
    ld b, b
    rst $38
    ld c, a
    ld b, c
    rst $38
    dec bc
    add l
    nop
    add $01
    add b
    rst $38
    add e
    inc b
    db $ed
    dec b
    jr c, @+$01

    cp d
    rst $28
    ld a, a
    ld a, l

jr_01e_6323:
    ld b, c
    rst $38
    ld hl, sp+$0b
    rra
    dec de
    db $fc
    db $fc
    rst $38
    sub b
    rst $38
    rst $38
    rst $28
    rst $28
    db $fd
    ld e, l
    ld b, c

jr_01e_6334:
    ld hl, sp+$08
    ldh [$ff31], a
    dec de
    db $eb
    db $fc
    ld a, a
    sub b
    sbc a
    ld a, a
    adc $ff
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    add c
    add c
    inc bc
    ld [bc], a
    rst $38
    inc b
    adc $ce
    sbc a
    sub c
    ccf
    jr nz, jr_01e_63d4

    ld b, b
    rst $38
    add b
    add c
    ld a, a
    ld [bc], a
    cp $04
    db $fc
    ret nz

    cpl
    rst $18
    jr nz, jr_01e_6323

    cp a
    db $fc
    add e
    ld hl, sp-$7c
    ldh a, [$ff0b]
    ld b, c

jr_01e_636b:
    ldh [rNR22], a
    ld b, c
    rst $18
    rra
    rlca
    ret nz

    add b
    db $fc
    add b
    ei
    add e
    rst $30
    rlca
    ld b, c
    rst $28
    rrca
    rlca
    inc d
    db $eb
    ldh a, [$ff0c]
    nop
    db $e3
    nop
    rra
    and [hl]
    ld [bc], a
    cp c
    ld b, $f7
    db $f4
    ldh a, [$fff3]
    di
    rra
    rra
    daa
    rst $38
    ld bc, $f8f8
    add e
    inc bc
    ld h, h
    ld a, [bc]

jr_01e_6399:
    ld bc, $03fe
    db $fc
    inc e
    db $e3
    db $e3
    inc e
    rra
    ldh [rP1], a
    rlc e
    sbc [hl]
    nop
    ldh [rNR44], a
    nop
    ld b, c
    cp a
    ld b, b
    ld bc, $807f
    rst $00
    inc bc
    ld a, [bc]
    ld bc, $c03f
    ld [hl+], a
    add b
    xor h
    ld [bc], a
    rst $08
    add hl, bc
    ld a, a
    add b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_01e_636b

    ld e, b
    ld d, a
    xor b
    add e
    ld bc, $0de8
    ld a, b
    add a
    add b
    add b
    ld h, b
    ld h, b
    jr nc, @+$32

    ld e, b

jr_01e_63d4:
    ld e, b
    xor c
    xor c
    ld b, l
    ld b, l
    inc hl
    add a
    nop
    cp e
    ld b, c
    inc b
    ei
    ld b, d
    inc b
    db $eb
    inc b
    inc b
    rst $10
    ld [$0897], sp
    dec h
    ld [hl], h
    dec h
    db $f4
    inc hl
    add sp, $03
    rst $38
    ld [bc], a
    cp $03
    ld b, d
    rst $38
    ld bc, $fe41
    ld [bc], a
    dec b
    rst $38
    ld bc, $0302
    ld [bc], a
    inc bc
    dec h
    ld bc, $0323
    add e
    ld [bc], a
    sbc $02
    jr c, @+$01

    ret nz

    adc b
    nop
    adc e
    add e
    nop
    ld b, a
    nop
    jr c, jr_01e_6399

    inc b
    ld [hl], d
    xor b
    dec b
    ld [hl], l
    inc bc
    ld [bc], a
    db $fc
    rst $38
    inc b
    add l
    ld b, $3c
    ld b, $02
    inc bc
    inc bc
    rst $38
    db $fc
    ld [bc], a
    rst $38
    and l
    inc b
    jp c, Jump_000_0386

    sub l
    dec b
    db $fc
    db $fd
    ld h, c
    ld h, e
    rst $38

jr_01e_6436:
    ld b, e
    inc h
    rst $38
    rlca
    inc c
    inc c
    ld e, $12
    rst $38
    pop hl
    ld h, c
    rst $38
    add e
    ld b, $62
    nop
    ld b, $85
    ld b, $43
    ld [$fff3], sp
    pop hl
    rst $38
    adc h
    adc b
    rst $38
    ld [$a5ff], sp
    inc b
    ld b, [hl]
    dec b
    ld [hl], c
    ld d, c
    rst $38
    adc [hl]
    adc h
    rst $38
    add e
    ld b, $82
    nop
    db $10
    and h
    ld b, $83
    ld [$dfdf], sp
    adc [hl]
    adc [hl]
    rst $38
    inc d
    inc a
    rst $20
    jr c, jr_01e_6436

    ld b, $29
    add hl, bc
    ret nz

    ldh [rNR41], a
    rst $38
    rra
    inc d
    rst $30
    inc h
    rst $20
    jr c, jr_01e_64c0

    rst $38
    ld b, b
    and h
    inc bc
    push de
    inc bc
    rra
    rra
    rst $38
    jr nz, @-$5a

    ld b, $56
    inc b
    pop hl
    rst $38
    pop bc
    ld a, a
    ld b, c
    add e
    inc bc
    ld l, $a5
    ld b, $54
    dec b
    ccf
    pop hl
    ld a, a
    pop bc
    rst $38
    pop bc
    add h
    inc bc
    ld l, $03
    ld c, b
    ld c, a
    ld hl, sp-$71
    add [hl]
    nop
    adc e
    inc bc
    add b
    add b
    rst $38
    ld a, a
    ld b, c
    ld c, a
    ld hl, sp+$00
    adc a
    adc c
    nop
    add h
    inc b
    ld a, a

jr_01e_64b9:
    rst $38
    db $10
    ldh a, [$ff1f]
    add h
    ld b, $38

jr_01e_64c0:
    ld b, $f8
    rrca
    ld [$181f], sp
    rst $38
    ldh a, [rSTAT]
    db $10
    rra
    inc b
    ld hl, sp-$01
    rra
    rst $28
    ld [$f823], sp
    ld [$f0e8], sp
    ldh a, [rIE]
    inc b
    rlca
    db $fc
    add a
    db $fc
    and h
    ld b, $d3
    rlca
    add h
    rst $08
    call z, Call_01e_78ff
    inc b
    db $fc
    inc b
    ld b, d
    db $fc
    add h
    inc hl
    db $fc
    ld [bc], a
    or h
    ld a, b
    ld a, b
    ld b, l
    ret nz

    cpl
    inc bc
    rst $18
    jr nz, jr_01e_64b9

    ccf
    ld b, [hl]
    rst $18
    rra
    rlca
    ret nz

    nop
    ld d, $e9
    db $10
    rst $28
    db $10
    ldh [$ff88], a
    ld [bc], a
    dec [hl]
    dec b
    rst $38
    or $f0
    ldh a, [$fff0]
    rst $38
    call $4800
    nop
    ld a, a
    adc b
    ld [bc], a
    inc sp
    ld bc, $0000
    ld l, $ff
    ld [bc], a
    nop
    nop
    ccf
    ld b, l
    ld b, b
    cp a
    ld [bc], a
    ld b, b
    ccf
    ret nz

    dec l
    add b
    nop
    nop
    add [hl]
    inc bc
    and c
    adc c
    dec b
    and h
    push bc
    dec b
    or a
    adc c
    dec b
    or b
    dec b
    cpl
    sub b
    xor a
    ld d, b
    sbc a
    ld h, b
    ld b, h
    rst $38
    nop
    dec b
    ret nc

jr_01e_6544:
    ret nc

    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ldh a, [$ff2a]
    nop
    ld d, $84
    nop
    rra
    inc b
    ret nz

    ccf
    cp e
    ld a, a
    ld h, l
    ld b, c
    rst $38
    ld b, e
    add [hl]
    nop
    ld l, $09
    ccf
    ccf
    ld b, h
    ld c, a
    add d
    add a
    add b
    add e
    add b
    jp $ff42


    nop
    add hl, bc
    rra
    ldh [$ffe3], a
    db $fc
    db $fc
    rst $38
    rst $20
    rst $38
    db $d3
    rst $28
    adc b
    ld [bc], a
    or [hl]
    ld b, $fc
    inc bc
    rst $38
    jr @+$01

    inc l
    rst $28
    ld b, l
    rst $38
    nop
    inc bc
    dec sp
    call nz, $e8d7
    adc h
    nop
    jr nz, @+$03

    call nz, $8a3f
    ld [$056f], sp
    cp $01
    db $fd
    ld [bc], a
    ld a, [$8e04]
    ld [bc], a
    add d
    inc c
    rlca
    ld hl, sp+$07
    pop af

jr_01e_65a0:
    ld c, $cc
    jr nc, jr_01e_6544

    ld b, b
    nop
    add a
    rlca
    ld [$0c41], sp
    inc de
    and e
    ld [bc], a
    xor h
    add l
    dec b
    inc h
    ld bc, $f8f8
    inc hl
    di

jr_01e_65b7:
    ld b, $01
    cp $f8
    rlca
    rrca
    nop
    inc bc
    ld b, c
    nop
    ld bc, $8004
    add b
    ld b, b
    and b
    ld b, b
    and e

jr_01e_65c9:
    inc bc
    ld [hl], d
    nop
    cp $c8
    inc bc
    ld a, d
    ld bc, $7f7f
    add l
    dec b
    xor d
    add hl, bc
    rst $18
    jr nz, jr_01e_65c9

    db $10
    rst $28
    ld [hl], b
    add a
    ld a, b
    rst $30
    ld [$03a5], sp
    ld d, b

Call_01e_65e4:
    ld [$e020], sp
    db $10
    ldh a, [$ff90]
    ldh a, [$fff8]
    ld hl, sp-$78
    and [hl]
    inc b
    or c
    ld bc, $02fd
    ld b, e
    db $fc
    inc bc
    rst $00
    ld [bc], a
    and [hl]
    ld b, e
    rst $38
    inc bc
    add hl, bc
    rst $38
    nop
    sbc b
    ld h, a
    sub b
    ld l, c
    nop
    or c
    nop
    and c
    adc b
    nop
    ld a, [de]
    dec b
    ld h, a
    ld sp, hl
    ld l, a
    or c
    rst $38
    and c
    adc b
    ld bc, $0921
    rst $20
    jr jr_01e_65a0

    ld l, b
    ld b, $89
    nop
    ld c, $00
    jr jr_01e_6646

    nop
    ld [$1818], sp
    ld l, b
    ld a, b
    adc c
    ld sp, hl
    ld c, $ff
    jr jr_01e_65b7

    ld bc, $0423
    ccf
    ret nz

    ccf
    ld b, b
    ccf
    add e
    dec b
    and e
    add [hl]
    dec b
    or e
    ld bc, $c0c0
    and a
    ld b, $10
    add e
    inc bc
    ld b, b
    rlca
    di

jr_01e_6646:
    inc c

jr_01e_6647:
    db $ec
    db $10
    pop hl
    jr jr_01e_6647

    inc b
    ld b, c
    db $fd
    ld [bc], a
    add e
    inc bc
    ld d, d
    dec b
    inc c
    inc c
    inc de
    inc de
    rra
    rra
    and e
    inc bc
    jp c, $0300

    adc l
    ld [bc], a
    adc a
    ld [bc], a
    nop
    db $fc
    inc bc
    dec l
    nop
    adc a
    add hl, bc
    sbc [hl]
    ld bc, $f807
    adc [hl]
    nop
    jr nz, jr_01e_6674

    ld hl, sp-$04

jr_01e_6674:
    inc bc
    adc c
    add hl, bc
    and [hl]

jr_01e_6678:
    inc bc
    ld a, [$f705]
    ld [$028a], sp
    adc [hl]
    nop
    inc bc
    add e
    ld [$41b0], sp
    cp $01
    ld b, c
    db $fd
    inc bc
    ld b, d
    ei
    rlca
    ld bc, $0ff7
    add l
    inc b
    ld a, [de]
    ld bc, $0302
    ld b, d
    inc b
    rlca
    ld [bc], a
    ld [$ff0f], sp
    push bc
    dec b
    add hl, hl
    ld [bc], a
    adc a
    rst $38
    add a
    add l
    inc bc
    inc l
    add h
    inc bc
    or e
    inc b
    ccf
    nop
    adc a
    nop
    add a
    ld b, c
    nop
    add b
    inc b
    nop
    nop
    jp $e7ff


    and a
    nop
    sbc e
    add h
    nop
    rra
    nop

jr_01e_66c1:
    inc a
    add [hl]
    add hl, bc
    ld e, c
    add a
    nop
    or $09
    rst $28
    ldh a, [$ffc1]
    cp $e7
    ld hl, sp-$19
    jr c, jr_01e_66c1

    jr nc, jr_01e_6678

    add hl, bc
    adc d
    ld a, [bc]
    ret nz

    rra
    ldh a, [rIF]
    adc [hl]
    rrca
    adc b
    rrca
    ld [$103f], sp
    add h
    dec b
    inc [hl]
    ld b, $40
    ld a, [$f004]
    ld c, $ee
    rra
    ld b, c
    rst $18
    ccf
    ld bc, $3fc3
    ld b, c
    db $e3
    rra
    add e
    ld [$a5b0], sp
    ld [bc], a
    ld c, d
    nop
    db $e3
    jp $970a


    ld a, [bc]
    rra
    rrca
    db $10
    rla
    ld [$8748], sp
    add a
    ret nz

    add b
    ret nz

    ld b, d
    add b
    ldh [rSB], a
    ldh a, [$fff0]
    and a
    dec b
    ld [hl], h
    ld b, d
    cp a
    rst $38
    rrca
    and b
    ld b, b
    ld b, b
    add b
    add b
    ld b, $06
    add hl, de
    jr @+$29

    ld a, $01
    jr c, @+$09

    ld a, $01
    add l
    inc bc
    ld [hl], d
    ld de, $fff9
    db $e3
    rst $38
    pop bc
    rst $38
    jp $c1ff


    rst $38
    rst $30
    ld [$047b], sp
    ld a, e
    inc a
    ld b, e
    inc a
    ld b, d

Call_01e_6741:
    ld a, e
    inc b
    inc bc
    ld a, e
    inc a
    ret z

    ld hl, sp+$41
    call nz, Call_000_00fc
    db $fc
    ld b, e
    db $fc
    call nz, $fc05
    db $fc
    ld [bc], a
    db $fc
    inc bc
    ld a, [$0741]
    ld hl, sp+$00
    rlca
    ld b, c
    ldh a, [$ff09]
    ld [bc], a
    ldh a, [c]
    add hl, bc
    cp $41
    inc bc
    rst $38
    nop
    dec b
    ld b, c
    rst $38
    rlca
    ld b, d
    ld sp, hl
    rrca
    jp $3f0a


    dec bc
    inc d
    ret nz

    ld d, h
    and c
    and c
    ld d, [hl]
    add b
    ld a, a
    ld e, c
    and [hl]
    ld a, $c1
    and l
    add hl, bc
    rst $30
    ldh [rNR42], a
    and c
    cp a
    ld d, [hl]
    ld e, [hl]
    ld a, a
    ld a, a
    cp [hl]
    cp [hl]
    db $fd
    rst $38
    nop
    ld bc, $3800
    nop
    ldh a, [$ff80]
    ld h, b
    ld c, b
    or b
    ld b, b
    or b
    add b
    ld h, b
    ld [$01f0], sp
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    ld h, b
    ld a, a
    ld b, c
    or b
    cp a
    inc bc
    ld h, b
    ld a, a
    ldh a, [rIE]
    add a
    inc bc
    and h
    ld bc, $201f
    ld b, c
    rrca
    db $10
    ld bc, $0807
    add l
    rlca
    jp nc, $4000

    add h
    ld [$02f5], sp
    db $10
    ldh a, [$ff08]
    adc h
    add hl, bc
    rst $08
    ld bc, $01fe
    adc l
    add hl, bc
    xor [hl]
    ld [$0101], sp
    ld [bc], a
    ld [bc], a
    pop af
    dec c
    call nz, $9037
    jp $a803


    nop
    cp a
    and e
    add hl, bc
    dec d
    ld [$ff00], sp
    ld c, $0c
    jr c, jr_01e_6817

    ld h, b
    ld h, b
    ld b, b
    and [hl]
    ld b, $12
    inc b
    nop
    nop
    pop af
    or $00
    add $09
    ld b, $00
    inc b
    add h
    inc bc
    ret z

    ld [bc], a
    rrca
    ld b, $03
    add h
    ld [bc], a
    rst $08
    inc hl
    add hl, bc
    dec b
    dec c
    dec c
    inc b
    inc b
    and $11

jr_01e_680b:
    ld b, c
    inc c
    di
    add hl, bc
    ld c, $b0
    jr nz, jr_01e_680b

    add b
    ld a, a
    dec de
    db $fc

jr_01e_6817:
    dec bc
    db $ec
    and e
    ld b, $37
    ld [bc], a
    sbc a
    sbc a
    ld e, a
    call nz, $5a03
    dec b
    add a
    add h
    sub a
    add h
    rst $30
    ld c, $41
    rst $30
    ld [$f701], sp
    ld c, $41
    rst $30
    rrca
    ld b, c
    ei
    rlca
    ld bc, $0ef8
    ld b, c
    ld hl, sp+$08
    ld bc, $0ef8
    ld b, c
    ld hl, sp+$0f
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    xor e
    ld [$0280], sp
    rst $38
    add b
    cp a

jr_01e_684e:
    xor e
    add hl, bc
    xor a
    ld b, c
    add b
    nop
    nop
    ret nz

    add h
    add hl, bc
    adc d
    dec b
    ld b, d
    db $dd
    ld h, $e3
    inc a
    rst $38
    and h
    ld bc, $08c5
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld h, $22
    inc a
    and [hl]
    ld bc, $01d4
    cp a
    ld b, b
    ld b, c
    rst $18
    ld h, b
    ld b, c
    rst $18
    jr nz, @+$06

    rst $18
    ld h, b
    rst $18
    ldh [$ffbf], a
    jp $b80b


    ld bc, $6020
    inc h
    jr nz, jr_01e_6889

    ld h, b

jr_01e_6889:
    jr nz, jr_01e_684e

    dec bc
    ld a, c
    add hl, bc
    rst $18
    ccf
    sbc $3f
    ret nz

    ccf
    ldh [$ff1f], a
    pop af
    ld c, $83
    add hl, bc
    adc d
    dec bc
    cp $01
    ccf
    ccf
    ld a, $3f
    jr nz, jr_01e_68e3

    ld de, $0f1f
    rrca
    add e
    add hl, bc
    sbc d
    add hl, bc
    ld bc, $0001
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    ld b, b
    add b
    add h
    inc c
    dec sp
    ld b, $00
    ldh [rP1], a
    ccf
    rst $38
    ld a, a
    rst $38
    adc d
    inc bc
    ld [hl], e
    ld b, $ff
    jr @+$29

    ld b, $19
    nop
    ld b, $a8
    inc c
    scf
    inc bc
    nop
    db $e3
    rst $38
    ld sp, hl
    inc l
    rst $38
    add l
    ld a, [bc]
    and $00
    rst $30
    jp $ef08


    nop

jr_01e_68df:
    ld a, b

jr_01e_68e0:
    ld b, c
    rst $28
    db $10

jr_01e_68e3:
    and e
    ld a, [bc]
    sbc b
    ld c, $c7
    db $fc
    rst $08
    ld hl, sp-$71
    ld hl, sp-$01
    ld hl, sp-$61
    ldh a, [$ff1f]
    ldh a, [$ffe1]
    dec e
    db $e3
    ld b, c
    jr jr_01e_68e0

    dec c
    db $10
    and $10
    rst $20
    db $10
    rst $30
    ld [$08f3], sp
    dec e
    ld e, $18
    inc e
    jr @+$43

    jr jr_01e_691b

    ld a, [bc]
    add hl, de
    db $10
    add hl, de
    ld [$0809], sp
    inc c
    add c
    ld h, [hl]
    rst $20
    jr jr_01e_68df

    inc bc
    adc $05

jr_01e_691b:
    ei
    nop
    rst $38
    inc b

jr_01e_691f:
    ld a, [hl]
    ld a, [hl]
    call nz, $5309
    ld de, $0088
    sbc b
    nop
    sbc h
    nop
    inc e
    inc b
    ld [$40c0], sp
    ldh a, [rNR10]
    ld hl, sp+$02
    db $fc
    dec b
    cp h
    ld b, c
    nop

jr_01e_6939:
    db $fc
    ld a, [bc]
    jr nz, jr_01e_6939

    jr nz, jr_01e_697f

    ccf
    db $10
    rrca
    ld [bc], a
    rlca
    dec b
    add e
    ld b, c
    nop
    jp Jump_000_2003


    jp $4320


    ld b, c
    inc bc
    inc c
    ld bc, $1c03
    ld b, c
    inc bc
    db $fc
    dec b
    rlca
    ld a, b

jr_01e_695a:
    rrca

jr_01e_695b:
    db $10
    rla
    jr z, @+$43

    rrca
    db $fc
    nop
    rra
    add h
    rlca
    dec h
    add hl, bc
    ld a, a
    ld hl, sp+$1f
    ldh a, [$ff2f]
    ld hl, sp-$08
    rlca
    ldh a, [$ff0b]
    ld b, c
    db $f4
    rrca
    ld a, [bc]
    or $0f
    di
    dec bc
    ld sp, hl
    dec b
    db $fc
    inc bc
    db $fc
    inc b

jr_01e_697f:
    db $fc
    ld b, d
    ld [$06f8], sp
    ld [$08fc], sp
    cp $04
    rst $38
    inc bc
    adc e
    ld [bc], a
    and e
    ld [bc], a
    ret nz

    rst $38
    jr nz, jr_01e_691f

    nop
    ld l, $00
    jr nz, jr_01e_695b

    ld [$03f6], sp
    sbc a
    nop
    rst $38
    nop
    jp z, $ae09

    ld bc, $0060
    ld [hl+], a
    rlca
    inc b
    inc b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec h
    nop
    inc bc
    rlca
    sbc b
    rlca
    ld hl, sp+$41
    rrca
    ldh a, [rSTAT]
    cpl
    ldh a, [$ff09]
    rra
    ldh [$ff5f], a
    ldh [$ff78], a
    jr jr_01e_695a

    sbc b
    sub b
    sub b
    dec h
    db $10
    inc hl
    jr nz, jr_01e_69cf

    ld sp, hl
    rlca
    or $0f
    pop af

jr_01e_69cf:
    ld c, $8a
    ld [$0380], sp
    rlca
    ld sp, hl
    add hl, bc

jr_01e_69d7:
    rst $38
    adc d
    ld c, $05
    dec bc
    rst $18
    ldh [rPCM34], a
    ld hl, sp+$19
    rst $38
    add b
    ld b, c
    ret nz

    jr nc, jr_01e_69d7

    inc c
    add e
    add hl, bc
    ld c, $0b
    nop
    ldh [$ff80], a
    ld hl, sp-$1f
    cp $ff
    ld b, c
    rst $38
    jr nc, @+$01

    inc c
    add h
    ld [bc], a
    adc [hl]
    inc bc
    ld bc, $07ff
    ld hl, sp-$3d
    add hl, bc
    db $10
    ld [bc], a
    inc h
    rlca
    ld a, b
    add e
    dec b
    and [hl]
    ld [bc], a
    ld bc, $0700
    jp $210c


    inc b
    db $fc
    db $fc
    inc h
    ld hl, sp+$78
    add e
    dec b
    or d
    ld [bc], a
    cp a
    ret nz

    ld a, a
    adc h
    inc bc
    cpl
    inc bc
    ret nz

    ld b, b
    add b
    add b
    sub a
    nop
    inc d
    inc bc
    cp $01
    cp $01
    adc l
    ld [bc], a
    jp nc, $0109

    ld bc, $807c
    sbc a
    ld h, b
    db $e3
    inc e
    ld hl, sp+$07
    xor b
    dec b
    and h
    ld [bc], a
    rst $38
    ld a, a
    ld a, a
    add e
    add hl, bc
    sbc b
    and a
    dec b
    or b
    nop
    rrca
    and h
    ld [$0543], sp
    ld bc, $edfe
    ld [de], a
    ld l, l
    sub d
    add e
    ld bc, $86c0
    ld [$c3d2], sp
    ld bc, $07ff
    cp $87
    db $fc
    rst $00
    ld a, h
    rst $18
    jr nz, @+$41

    xor h
    ld [bc], a
    adc a
    ld bc, $e03f
    xor l
    ld [bc], a
    adc [hl]
    inc bc
    ld sp, hl
    inc b
    db $fc
    inc bc
    xor e
    rlca
    call nz, Call_000_0403
    ld b, $03
    inc bc
    xor e
    rlca
    call nc, $0283
    xor d
    rlca
    ld a, a
    sbc a
    nop
    inc sp
    ld bc, $0322
    db $e4
    add e
    dec c
    ld [hl+], a
    dec b
    nop
    nop
    ldh [rP1], a
    sbc a
    ldh [$ffa3], a
    ld [$01da], sp
    db $fc
    db $fc
    add e
    dec c
    ld [hl-], a

jr_01e_6a9f:
    dec bc
    ld hl, sp+$00
    ldh [rNR42], a
    pop bc
    sbc $00
    sub e
    ld bc, $0392
    sbc h
    add e
    rlca
    db $e4
    dec b
    nop
    rlca
    ld hl, $de1f
    ccf
    and [hl]
    ld a, [bc]
    jr nz, jr_01e_6ac2

    ld h, b
    rst $38
    nop
    inc sp
    ld b, h
    ld b, e
    and h
    rlca

jr_01e_6ac2:
    jr c, @-$75

    ld c, $e2
    rlca
    ld b, a
    db $fc
    and a
    db $fc
    ccf
    ld hl, sp-$01
    ret nz

    adc a
    ld c, $80
    inc bc
    cp $01
    cp $01
    adc h
    ld [bc], a
    inc b
    add [hl]
    ld [bc], a
    dec c
    rlca
    jr nc, jr_01e_6a9f

    inc e
    rst $18
    rlca
    scf
    nop
    inc c
    and h
    ld [$07f3], sp
    adc b
    adc a
    ld [hl], b
    ret nz

    add b
    ldh [$ffc0], a
    ld hl, sp-$7b
    ld c, $39
    inc b
    inc b
    rst $38
    adc b
    rst $38
    ld [hl], b
    add e
    ld [bc], a
    dec bc
    dec b
    ld c, $ff
    ld hl, sp-$02
    nop
    ld hl, sp-$5d
    rrca
    xor h
    and a
    rlca
    adc $0b
    rlca
    ld b, $ff
    ld hl, sp+$1f
    ld de, $0e0e
    nop
    nop
    cp a
    ret nz

    xor l
    rrca
    add h
    inc bc
    ld b, b
    ld b, b
    add b
    add b
    adc e
    rlca
    call nc, Call_01e_41ff
    rst $38
    nop
    ld b, h
    db $fc
    inc bc
    ld b, d
    rst $38
    nop
    ld b, h
    rst $38
    inc bc
    ld b, d
    rst $38
    nop
    ld a, [bc]
    ld b, h
    cp e
    inc c
    di
    inc e
    db $e3
    inc c
    di
    ld b, h
    cp e
    rst $38
    inc h
    nop
    inc b
    cp e
    cp e
    di
    di
    db $e3
    add $00
    jr c, @+$43

    rst $38
    nop
    ld bc, $bf40
    ld b, c
    ld b, h
    cp e
    ld bc, $bf40
    add a
    nop
    inc l
    ld bc, $bfbf
    inc hl
    cp e
    ld bc, $bfbf
    add a
    nop
    inc a
    ld bc, $3fc0
    add e
    nop
    ld c, b
    inc bc
    call nz, Call_01e_403b
    cp a
    add [hl]
    nop
    ld c, $07
    ccf
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    add [hl]
    nop
    ld l, l
    add hl, bc
    call nz, $443b
    cp e
    ldh [$ff1f], a
    ld [hl], c
    adc [hl]
    pop af
    ld c, $86
    nop
    ld c, $07
    dec sp
    rst $38
    cp e
    rst $38
    rra
    rst $38
    adc [hl]
    rst $38
    add e
    nop
    adc l
    ld [bc], a
    rrca
    rst $38
    rrca
    ld b, c
    ld a, a
    adc a
    ld b, e
    rst $38
    rrca
    inc hl
    rrca
    inc bc
    adc a
    adc a
    adc a
    adc a
    daa
    rrca
    add l
    nop
    ld h, b
    ld b, c
    call nz, $833b
    nop
    call nz, Call_000_0085
    ld l, $01
    ccf
    ccf
    inc hl
    dec sp
    add e
    nop
    call nc, Call_000_0085
    ld a, $01
    add $39
    ld b, c
    ld b, h
    cp e
    inc bc
    call nz, Call_01e_463b
    cp c
    add l
    nop
    ld l, $01
    add hl, sp
    add hl, sp
    inc hl
    cp e
    inc bc
    dec sp
    dec sp
    cp c
    cp c
    add l
    nop
    ld a, $01
    inc b
    ei
    ld b, d
    ld a, h
    add e
    ld bc, $fb04
    add [hl]
    nop
    ld c, $00
    ei
    ld b, c
    rst $38
    add e
    ret


    ld bc, $0918
    ld b, a
    cp b
    rrca
    ldh a, [$ff1f]
    ldh [rIF], a
    ldh a, [rBGP]
    cp b
    add [hl]
    nop
    ld c, $04
    cp b
    rst $38
    ldh a, [rIE]
    ldh [$ffc9], a
    ld bc, $8338
    nop
    ret z

    dec b
    pop bc
    ld a, $c0
    ccf
    call nz, $883b
    nop
    adc [hl]
    ld [bc], a
    ccf
    rst $38
    ld a, $c9
    ld bc, $0158
    ld b, h
    cp e
    ld b, d
    call nz, $013b
    ld b, h
    cp e
    add [hl]
    nop
    ld c, $00
    cp e
    ld b, d
    rst $38
    dec sp
    jp Jump_01e_7601


    dec b
    rst $00
    jr c, @+$01

    nop
    ld h, d
    sbc l
    and e
    nop
    ld c, b
    ld bc, $bd42
    and e
    nop
    db $ec
    dec b
    jr c, jr_01e_6c7b

    nop
    nop
    sbc l
    sbc l
    and e
    nop
    ld e, b
    ld bc, $bdbd
    and a
    nop
    db $fc
    add hl, bc
    inc bc
    db $fc
    ccf
    ret nz

    rlca
    ld hl, sp+$3f
    ret nz

    inc bc
    db $fc
    xor b
    nop
    ld l, [hl]
    ld [bc], a
    ret nz

    rst $38
    ld hl, sp-$37
    ld bc, $01b8
    db $fc
    inc bc
    ld b, d
    ld hl, sp+$07
    adc d
    nop
    inc c
    ld [bc], a
    rlca
    rst $38
    rlca
    ret


    ld bc, $01d8
    inc c
    di
    ld b, d
    ld hl, sp+$07

jr_01e_6c7b:
    ld bc, $f30c
    add [hl]
    nop
    ld c, $00
    di
    add e
    ld bc, $c9d6
    ld bc, $01f8
    inc e
    db $e3
    ld b, d
    adc b
    ld [hl], a
    ld bc, $e31c
    add l
    nop
    ld l, $01
    db $e3
    db $e3
    ld [hl+], a
    ld [hl], a
    add $02
    jr jr_01e_6cdf

    rst $38
    nop
    ld bc, $e01f
    ld b, d
    adc a
    ld [hl], b
    ld bc, $e01f
    add l
    nop
    ld l, $01
    ldh [$ffe0], a
    ld [hl+], a
    ld [hl], b
    call nz, Call_000_3802
    rst $20
    rst $38
    nop
    rst $20
    rst $38
    nop
    rst $20
    rst $38
    nop
    push hl
    pop bc
    nop
    rst $38
    nop
    ld bc, $1841
    ld [$1802], sp
    ld bc, $8318
    nop
    nop
    jp Jump_000_0a00


    add e
    nop
    nop
    jp Jump_000_1200


    add e
    nop
    nop
    jp $1a00


    add e
    nop
    nop

jr_01e_6cdf:
    ld hl, sp+$22
    nop
    ld [hl+], a
    ld b, $18
    ld c, h
    db $10
    ld e, $10
    rra
    db $10
    ldh a, [$ff31]
    nop
    ld b, $83
    nop
    inc b
    add hl, bc
    ld c, l

jr_01e_6cf4:
    jr jr_01e_6d44

    jr jr_01e_6d47

    jr jr_01e_6d28

    db $10
    cpl
    db $10
    ldh a, [$ff27]
    nop
    ld [bc], a
    ld b, $48

jr_01e_6d03:
    jr jr_01e_6d4e

    jr jr_01e_6d51

    jr @+$4d

    add h
    nop
    ld bc, $5c0a
    jr @+$5f

    jr jr_01e_6d70

    jr @+$61

jr_01e_6d14:
    jr @+$40

    db $10
    ccf
    ldh a, [$ff28]
    nop
    adc l
    ld b, $58
    jr jr_01e_6d79

    jr jr_01e_6d7c

    jr @+$5d

    add h
    nop
    inc bc
    ld a, [bc]

jr_01e_6d28:
    ld l, h
    jr @+$6f

    jr jr_01e_6d9b

    jr @+$71

    jr jr_01e_6d3e

    jr jr_01e_6d3e

    ld b, c
    jr jr_01e_6d3a

    ld bc, $0b18
    add h

jr_01e_6d3a:
    ld bc, $020b

jr_01e_6d3d:
    inc b

jr_01e_6d3e:
    jr @+$0d

    add h
    ld bc, $d30b

jr_01e_6d44:
    ld bc, $081e

jr_01e_6d47:
    inc de
    jr @+$6a

    jr jr_01e_6db5

    jr jr_01e_6db8

jr_01e_6d4e:
    jr jr_01e_6dbb

    add h

jr_01e_6d51:
    nop
    dec b
    ld [$187c], sp
    ld a, l
    jr jr_01e_6dd7

    jr @+$81

    jr @+$0e

    ld c, l
    jr jr_01e_6d60

jr_01e_6d60:
    ld b, h
    stop
    add hl, de
    jr jr_01e_6d66

jr_01e_6d66:
    jr jr_01e_6d72

    jr jr_01e_6de2

    jr @+$7b

    jr @+$7c

    jr jr_01e_6deb

jr_01e_6d70:
    jr @+$03

jr_01e_6d72:
    jr jr_01e_6cf4

    db $10
    add c
    db $10
    add d
    db $10

jr_01e_6d79:
    add e
    db $10
    add h

jr_01e_6d7c:
    jr jr_01e_6d03

    ldh a, [$ff28]
    ld bc, $084b
    inc bc
    jr jr_01e_6d14

    db $10
    adc a
    db $10
    sub b
    db $10
    sub c
    adc h
    nop
    adc l
    nop
    dec b
    adc a
    ld bc, $025f
    jr jr_01e_6d97

jr_01e_6d97:
    jr jr_01e_6de2

    nop
    db $10

jr_01e_6d9b:
    ld [bc], a
    nop
    jr @+$05

    add l
    nop
    ld bc, $00ce
    add e
    nop
    inc c
    adc e
    ld bc, $225f
    nop
    ld bc, $0000
    add e
    ld bc, $8a66
    ld [bc], a
    ld [de], a

jr_01e_6db5:
    inc hl
    nop
    nop

jr_01e_6db8:
    jr jr_01e_6d3d

    ld [bc], a

jr_01e_6dbb:
    inc l
    ld bc, $180a
    ld b, c
    ld bc, $0158
    ld [$c358], sp
    ld [bc], a
    ld a, [hl-]
    adc b
    ld [bc], a
    nop
    ld bc, $0c18
    ld d, e
    jr jr_01e_6dd1

jr_01e_6dd1:
    adc h
    ld [bc], a
    inc sp
    ld bc, $1808

jr_01e_6dd7:
    ld b, c
    ld bc, $8498
    ld bc, $49c6
    jr jr_01e_6de0

jr_01e_6de0:
    add [hl]
    ld [bc], a

jr_01e_6de2:
    add hl, hl
    call $a002
    ld bc, $1803
    add h
    ld [bc], a

jr_01e_6deb:
    ld a, [hl-]
    inc bc
    ret c

    ld bc, $08d8
    adc e
    ld [bc], a
    ld a, a
    ld d, c
    jr jr_01e_6df7

jr_01e_6df7:
    ld [bc], a
    nop
    nop
    nop

jr_01e_6dfb:
    adc h
    ld [bc], a
    or d
    ldh a, [$ff2f]
    ld [bc], a
    ccf
    nop
    nop
    ldh a, [$ff28]
    ld [bc], a
    jr nc, jr_01e_6e0b

    inc d
    nop

jr_01e_6e0b:
    nop
    ret


    ld bc, $8bdc
    inc bc
    ld h, $f0
    ld h, $02
    ld [hl], d
    ld [bc], a
    inc d
    nop
    nop
    adc d
    inc bc
    ld e, d
    nop
    nop
    adc c
    ld [bc], a
    add sp, -$67

jr_01e_6e23:
    ld [bc], a
    or d
    ld c, l
    nop
    inc c
    ldh a, [rNR43]
    ld [bc], a
    add sp, -$64
    inc bc
    res 0, a
    inc bc
    jr z, jr_01e_6e23

    ld [hl-], a
    ld [bc], a
    jr nc, jr_01e_6dfb

    ld [bc], a
    and e
    ldh a, [$ff32]
    ld [bc], a
    ld l, b
    nop
    db $10
    add l
    ld [bc], a
    sbc d
    add e
    inc b
    ld h, d
    ldh a, [$ff36]
    ld [bc], a
    and [hl]
    ld [bc], a
    inc d
    nop
    jr jr_01e_6e8f

    nop
    inc d
    jp $5a03


    adc c
    ld [bc], a
    xor b
    ldh a, [$ff2a]
    ld [bc], a
    ldh a, [c]
    sub [hl]
    inc b
    db $dd
    nop
    ld a, [bc]
    add h
    nop
    dec b
    ldh a, [rNR43]
    ld [bc], a
    ld a, [hl-]
    nop
    inc d
    sbc b
    ld [bc], a
    ld e, [hl]
    inc b
    jr jr_01e_6ee2

    db $10
    rrca
    db $10
    add l
    ld [bc], a
    ld a, h
    ld [$1040], sp
    ld b, c
    db $10
    ld b, d
    db $10
    ld b, e
    db $10
    dec b
    ldh a, [$ff28]
    ld [bc], a
    ld c, e
    add hl, bc
    inc bc
    jr jr_01e_6eca

    db $10
    ld b, l
    db $10

jr_01e_6e89:
    ld b, [hl]
    db $10
    ld b, a
    db $10
    add e
    ld [bc], a

jr_01e_6e8f:
    cp [hl]
    ld a, [bc]
    ld d, b
    db $10
    ld d, c
    db $10
    ld d, d
    db $10
    ld d, e
    db $10
    ld b, $18
    ld [bc], a
    ld b, c
    jr @+$0b

    ld bc, $0218
    add h
    dec b
    rlc d
    add hl, bc
    jr jr_01e_6eab

    add h
    dec b

jr_01e_6eab:
    set 2, e
    dec b
    sbc $08
    inc bc
    jr jr_01e_6f07

    db $10
    ld d, l
    db $10
    ld d, [hl]
    db $10
    ld d, a
    add e
    dec b
    ld a, e
    rlca
    jr jr_01e_6f1f

    db $10
    ld h, c
    db $10
    ld h, d
    db $10
    ld h, e
    ldh a, [rNR51]
    nop
    adc l
    add h

jr_01e_6eca:
    ld [bc], a
    ld a, l
    add hl, bc
    ld [$6418], sp
    db $10
    ld h, l
    db $10
    ld h, [hl]
    db $10
    ld h, a
    db $10
    add e
    ld [bc], a
    ld a, $06
    ld [hl], b
    db $10
    ld [hl], c
    db $10
    ld [hl], d
    db $10
    ld [hl], e

jr_01e_6ee2:
    ldh a, [$ff2c]
    ld b, $09
    rlca
    ld bc, $7558
    db $10
    halt
    db $10
    ld [hl], a
    db $10
    add e
    ld [bc], a
    ld a, [hl]
    ld b, $86
    db $10
    add a
    db $10
    adc b
    db $10
    adc c
    adc c
    nop
    ld c, l
    inc b
    sbc b
    ld bc, $0898
    jr jr_01e_6e89

    ld [bc], a
    add b
    adc a

jr_01e_6f07:
    ld b, $8e
    add a
    ld b, $2a
    rlca
    adc d
    db $10
    adc e
    db $10
    adc h
    db $10
    adc l
    db $10
    add a
    ld [bc], a
    cp [hl]
    add e
    nop
    ld [bc], a
    ldh a, [$ff2b]
    ld b, $8a

jr_01e_6f1f:
    adc b
    ld b, $8e
    nop
    ld e, b
    ldh a, [rNR52]
    ld b, $8c
    sbc b
    ld b, $93
    db $e4
    cp a
    nop
    ldh [$ff29], a
    ret c

    jr @+$01

    ld a, a
    rst $38
    ld e, [hl]
    rra
    ld b, d
    rra
    nop
    xor $03
    rlca
    inc bc
    jr jr_01e_6fab

    sub h
    ld e, [hl]
    rst $38
    inc bc
    ld a, a
    ld [bc], a
    rra
    ld [bc], a
    jr nz, jr_01e_6fc9

    ld h, b
    ld a, d
    nop
    inc d
    sbc a
    ld c, e
    ld [de], a
    ld c, e
    rst $38
    ld a, a
    ld [hl-], a

jr_01e_6f55:
    dec c
    ld e, [hl]
    ld b, c
    sbc [hl]
    add hl, sp
    add e
    ld [$130a], sp
    db $dd
    add hl, sp
    dec e
    ld a, [hl-]

jr_01e_6f62:
    dec a
    ld a, [hl-]
    sbc [hl]
    ld a, [hl-]
    rst $18
    ld [hl], $5f
    scf
    or [hl]
    ld bc, $02ff
    nop
    ld b, c
    jp nc, $8f7c

    ld [$0f02], sp
    ld l, e
    ld b, c
    rst $30
    daa
    db $fc
    ld l, a
    rra
    ld [bc], a
    rst $38
    inc bc
    nop
    inc d
    ld d, a
    ld e, e
    db $ec
    dec de
    ld c, [hl]
    jr nz, @+$81

    rst $38
    inc sp
    nop
    ld bc, $5515
    add h
    nop
    ld de, $0084
    ld de, $0089
    ld de, $67e4
    nop
    inc b
    dec b
    ld d, l
    ld d, b
    nop
    nop
    add h
    nop
    sub d
    adc c
    nop
    sub d
    ld [bc], a
    dec b
    ld d, l
    ld d, b

jr_01e_6fab:
    db $e4
    inc h
    nop
    ld [bc], a
    ld bc, $4055
    add h
    nop
    call z, Call_000_0084
    call z, Call_000_0089
    call z, Call_01e_65e4
    nop
    sub [hl]
    nop
    adc $f0
    sub a
    nop
    xor [hl]
    ldh a, [$ff37]
    nop
    sub d

jr_01e_6fc9:
    ld [bc], a
    ld bc, $5455
    add h
    ld [bc], a
    jr nc, jr_01e_6f55

    ld [bc], a
    jr nc, jr_01e_6f62

    ld [bc], a
    jr nc, @-$1a

    adc b
    nop
    inc bc
    inc b
    nop
    nop
    ld bc, $0083
    db $e4
    call nz, $ce00
    ld c, $01
    xor d
    adc d
    add b
    nop
    inc d
    ld a, [hl+]
    xor d
    xor c
    ld b, b
    ld d, $aa
    xor d
    xor b
    xor b
    inc hl
    xor d
    add h
    ld [bc], a
    ldh a, [c]
    ld bc, $2aa8
    add e
    ld [bc], a
    db $f4
    add hl, bc
    ei
    inc b
    ld d, h
    ld bc, $ffaa
    ld bc, $357c
    add sp, $38
    rst $38
    ld [hl+], a
    nop
    ld bc, $0000
    db $e4
    ld c, a
    rst $38
    add hl, bc
    nop
    nop
    ld a, [hl+]
    xor d
    inc d
    dec d
    ld d, l
    dec b
    ld bc, $e414
    ld [hl-], a
    xor d
    and e
    ld [bc], a
    rst $18
    ld bc, $80aa
    dec h
    nop
    ld bc, $aa02
    add e
    inc bc
    ret nz

    inc [hl]
    xor d
    add hl, hl
    nop
    and h
    inc bc
    call c, Call_000_2cf0
    inc bc
    dec h
    sub d
    inc bc
    call nc, $0500
    ret


    inc bc
    rst $20
    db $e4
    ld e, c
    xor d
    adc b
    inc bc

Call_01e_7048:
    ld [$0022], a

jr_01e_704b:
    ld [bc], a
    inc bc
    rst $38
    ret nz

    add h
    inc b
    sbc h
    adc c
    inc b
    sbc h
    inc b
    nop
    dec b
    ld d, l
    nop
    ld a, [hl+]
    add h
    inc b
    or b
    adc c
    inc b
    or b
    add h
    inc b
    or b
    ld bc, $fc3f
    ld [hl+], a
    nop
    add h
    inc b
    ret


    adc c
    inc b
    ret


    add h
    inc b
    ret


    ld bc, $f00f
    inc sp
    nop
    ldh a, [rNR41]
    inc bc
    ld [$aa01], a
    xor e
    add h
    dec b
    ld d, $88
    dec b
    ld d, $00
    cp a
    add e
    inc b
    rla
    ld [bc], a
    xor a
    rst $38
    ld a, [$00b4]
    add hl, hl
    inc h
    cp [hl]
    inc h
    db $eb
    nop
    rst $28
    ld [hl+], a
    rst $38
    nop
    ei
    add e
    dec b
    add hl, hl
    nop
    ld a, [$0584]
    ld d, l
    add h
    dec b
    ld d, b
    sub e
    dec b
    ld d, b
    adc c
    dec b
    ld d, b
    nop
    cp d
    inc hl
    xor d
    ld bc, $eaeb
    add h
    dec b
    add h
    ld h, $aa
    nop
    cp [hl]
    add e
    dec b
    sub c
    add l
    dec b
    ld c, d
    inc h
    add d
    dec h
    jr z, jr_01e_70ca

    ld a, [hl+]
    xor d
    xor b
    jr z, jr_01e_704b

    xor d

jr_01e_70ca:
    xor d
    ld b, c
    xor d
    add d
    ld [hl+], a
    add d
    adc c
    inc bc
    or [hl]
    add l
    inc bc
    or [hl]
    nop
    sub l
    ld [hl+], a
    ld d, l
    add h
    dec b
    ret z

    add l
    dec b
    ret z

    nop
    cp a
    adc b
    dec b
    dec h
    inc bc
    cp a
    rst $38
    rst $38
    rst $38
    cpl
    xor d
    nop
    xor b
    ld [hl+], a
    jr z, @-$73

    inc b
    db $ec
    ldh a, [$ff2f]
    inc bc
    ld [$0484], a
    rla
    and e
    inc bc
    reti


    sbc [hl]
    nop
    add hl, hl
    ldh a, [rNR43]
    inc b
    ld l, $d8
    ld b, $80
    ldh a, [rVBK]
    ld b, $40
    ld [bc], a
    rst $38
    rst $38
    cp $f0
    adc b
    ld b, $39
    ccf
    ld d, l
    ld [bc], a
    ld l, d
    xor d
    xor d
    add h
    rlca
    sub h
    ld [bc], a
    ld d, l
    ld d, l
    ld e, d
    add h
    rlca
    sbc h
    ldh a, [rNR50]
    ld b, $98
    nop
    dec d
    add e
    ld [bc], a
    ld c, l
    nop
    dec d
    add e
    nop
    xor b
    nop
    dec b
    add e
    ld [bc], a
    ld c, l
    nop
    dec b
    add h
    rlca
    pop de
    nop
    ld e, d
    add h
    rlca
    call c, $8003
    nop
    rst $38
    push af
    add h
    rlca
    push hl
    nop
    ld d, l
    ld [hl+], a
    rst $38
    ld bc, $5005
    add a
    rlca
    rst $10
    add l
    rlca
    di
    nop
    ld d, b
    db $e4
    ld b, h
    nop
    dec b
    ccf
    nop
    nop
    nop
    nop
    ccf
    rst $00
    ld [$004d], sp
    ld d, l
    call nz, $9607
    ld [bc], a
    ld l, d
    ld d, l
    ld d, l
    ldh a, [$ff37]
    nop
    add hl, hl
    inc bc
    rst $38
    ret nz

    nop
    inc bc
    add h
    ld [$0597], sp
    nop
    rst $38
    ldh a, [$ffaa]
    inc bc
    rst $38
    add e
    ld [$00a2], sp
    rst $38
    xor e
    ld b, $8b
    ldh a, [$ff39]
    ld [$835e], sp
    inc bc
    and $87
    inc bc
    push hl
    ld bc, $f55f
    add h
    ld [$01fb], sp
    nop
    add b
    add e
    ld [$03fd], sp
    xor d
    xor d
    ld a, a
    db $fd
    add h
    ld b, $e7
    nop
    xor d
    ldh a, [$ff31]
    dec b
    rst $38
    and h
    ld b, $e0
    call nz, Call_01e_4b09
    push hl
    dec c
    rst $38
    ldh a, [$ff2c]
    ld b, $90
    sub b
    inc b
    dec bc
    add h
    inc b
    dec [hl]
    nop
    and b
    add h
    ld a, [bc]
    sbc [hl]
    ld [$aa0a], sp
    xor d
    xor b
    nop
    ld a, [hl+]
    nop
    xor d
    xor d
    add h
    inc b
    scf
    nop
    nop
    add $0a
    or l
    ld bc, $aaaa
    add h
    inc bc
    ret z

    inc b
    ld a, [bc]
    xor d
    xor d
    rst $38
    db $fd
    ld [hl+], a
    ld d, l
    add e
    ld a, [bc]
    ret


    inc b
    ld d, l
    push de
    ld d, l
    ld d, l
    ld e, a
    jr z, @+$01

    ld bc, $abab
    call nz, $900a
    ldh a, [$ff3b]
    rlca
    ld e, b
    dec a
    rst $38
    sub e
    dec b
    and b
    inc h
    add d
    sbc $08
    ret


    dec l
    rst $38
    ld bc, $aa2a
    add h
    dec b
    or b
    nop
    xor d
    add $0b
    adc l
    inc h
    jr z, @+$30

    rst $38
    add e
    ld a, [bc]
    ret


    nop
    ld a, a
    add h
    dec bc
    xor c
    adc c
    dec bc
    xor c
    inc b
    cp $0a
    xor d
    xor d
    cp a
    add h
    dec bc
    cp l
    add [hl]
    dec bc
    xor c
    ld [bc], a
    rst $38
    push de
    ld a, a
    ld hl, sp+$36
    ld b, $30
    add e
    rlca
    ld [hl], l
    nop
    ld d, b
    add h
    inc c
    ld [$0c84], sp
    ld [$0c84], sp
    ld [$0c84], sp
    ld [$0c84], sp
    ld [$0c96], sp
    ld [$5500], sp
    ldh a, [$ff2a]
    ld [$8903], sp
    rlca
    di
    add h
    ld [bc], a
    ld c, h
    nop
    ld d, l
    adc c
    rlca
    sub $05
    ld d, b
    inc bc
    nop
    ccf
    dec b
    ld b, e
    ld b, c
    rst $38
    nop
    ld b, c
    inc bc
    rst $38
    ld b, $c1
    ld d, a
    rst $38
    nop
    rst $38
    ld bc, $8f57
    ld a, [bc]
    push hl
    rst $38
    rra
    cp a
    ld e, e
    db $ed
    ld a, [hl]
    sub e
    ld e, d
    nop
    nop
    dec c
    nop
    db $ed
    ld a, [hl]
    ei
    ld [bc], a
    nop
    nop
    rra
    nop
    db $ed
    ld a, [hl]
    sbc [hl]
    ld h, c
    nop
    nop
    rra
    ld [bc], a
    db $ed
    ld a, [hl]
    ldh a, [rSC]
    nop
    nop
    adc e
    nop
    nop
    nop
    xor d
    sbc [hl]
    nop
    dec c
    ld bc, $7f26
    sbc l
    nop
    ld c, $01
    xor c
    ld a, l
    sbc l
    nop
    ld c, $01
    ld d, $10
    sbc l
    nop
    ld c, $01
    rst $38
    ld bc, $009d
    ld c, $01
    ld l, $4d
    sbc l
    nop
    ld c, $04
    sub e
    ld e, d
    nop
    nop
    rra
    add a
    nop
    jp hl


    nop
    ld [bc], a
    add l
    nop
    ld [bc], a
    dec bc
    rst $38
    ld a, a
    sbc a
    ccf
    ei
    ld bc, $5407
    rst $38
    ld a, a
    sbc $7d
    add l
    ld bc, $0304
    sbc a
    ccf
    ld [hl], e
    ld a, a
    add e
    ld bc, $0306
    ld a, a
    ld e, d
    ld [$832e], a
    nop
    cp $e0
    dec h
    rra
    ld h, e
    or a
    dec [hl]
    add b
    ld d, h
    dec c
    nop
    rst $38
    ld e, a
    rra
    nop
    add b
    ld d, h
    rra
    nop
    ld a, [$cd6b]
    ld [hl], $80
    ld d, h
    rra
    ld [bc], a
    rra
    ld b, a
    rst $18
    dec e
    ld b, h
    ld [$7fff], sp
    ldh [$ff03], a
    rst $38
    inc bc
    ld [bc], a
    ld b, h
    ld b, c
    rst $38
    ld e, a
    rrca
    rst $38
    inc bc
    ld e, d
    nop
    ld a, [$ff6b]
    ld e, [hl]
    cp $39
    nop
    nop
    rra
    ld b, a
    rst $38
    ld e, [hl]
    add l
    ld bc, $033c
    ld a, [$b723]
    dec [hl]
    add e
    nop
    ld b, $03
    ld a, [$1f23]
    nop
    add e
    nop
    ld c, $03
    ld d, e
    dec hl
    ld l, c
    ld [de], a
    add e
    nop
    ld d, $05
    ccf
    ld b, a
    db $db
    ld bc, $0000
    sbc a
    ld bc, $8340
    nop
    nop
    ld bc, $227e
    add a
    nop
    and $91
    nop
    ld c, $05
    rst $38
    ld a, a
    di
    dec hl
    nop
    ld a, a
    add e
    nop
    ld b, $0b
    xor d
    ld a, [hl]
    jr nz, @+$80

    ld h, b
    ld a, l
    rra
    nop
    sub h
    ld e, d
    jr z, jr_01e_7396

    sbc e
    ld bc, $0b76
    pop af
    ld b, a
    ldh [$ff03], a
    ldh [$ff7c], a
    rra
    ld b, a
    ccf
    ld l, $9a
    add hl, de
    add h
    ld bc, $007e
    ld a, [hl]
    add e
    ld bc, $0354
    dec c
    nop
    rst $38
    inc bc
    add h
    ld bc, $0054
    nop
    add [hl]
    ld bc, $0252
    ld [bc], a
    rst $38
    db $10

jr_01e_7396:
    add e
    ld bc, $0354
    rst $38
    ld a, a
    ld d, c
    ld a, a
    adc l
    ld bc, $03c4
    sub e
    ld d, [hl]
    ld l, d
    dec [hl]
    adc e
    ld bc, $0176
    cp a
    db $10
    add l
    ld bc, $42c4
    rst $38
    ld a, a
    ld bc, $001f
    add l
    ld bc, $017a
    rra
    ld [bc], a
    ld b, e
    rst $38
    ld a, a
    add hl, bc
    ld b, h
    ld a, [hl]
    rst $38
    ld a, a
    ld b, h
    ld [$000d], sp
    ld h, b
    ld a, l
    adc l
    ld [bc], a
    ld c, h
    add e
    ld bc, $84ca
    ld [bc], a
    ld a, $01
    dec h
    rst $38
    adc b
    ld [bc], a
    ld b, l
    ld bc, $0000
    sub c
    ld [bc], a
    ld d, b
    inc bc
    xor a
    ld a, l
    jp c, $8301

jr_01e_73e4:
    nop
    ld b, $02
    ld e, $43
    jp c, Jump_000_0084

    xor l
    inc bc
    jr nc, jr_01e_7436

    adc e
    ld sp, $0289
    ld d, [hl]
    dec b
    or $2e
    rst $38
    ld a, a
    xor e
    ld c, l
    add e
    nop
    ld b, $02
    ld [hl], c
    ld [hl+], a
    db $ed
    add h
    nop
    adc l
    ld bc, $4a71
    add e
    ld [bc], a
    call nz, Call_000_1f03
    ld [bc], a
    bit 0, h
    add e
    ld [bc], a
    call nz, $f705
    ld e, d
    ld [$ee21], sp
    ld e, c
    add e
    nop
    ld b, $03
    ld [$e021], sp
    inc e
    add e
    nop
    ld c, $01
    ld l, e
    dec l
    add h
    ld [bc], a
    db $ec
    ld [bc], a
    ld [bc], a
    ld [hl], e
    ld a, $83
    ld [bc], a
    db $e4
    dec b
    rst $18
    ld [hl], a

jr_01e_7436:
    db $eb
    ld a, d
    inc l
    ld e, [hl]
    add e

jr_01e_743b:
    nop
    ld b, $03
    ld c, c
    ld a, [hl]
    ldh [rLY], a
    add e
    nop
    ld c, $01
    ld c, c
    ld a, [hl]
    add e
    inc bc
    inc b
    inc bc
    rra
    ld [bc], a
    ld [$8301], sp
    inc bc
    inc b
    dec b
    rst $38
    ld [hl], a
    ld d, a
    ld [hl+], a
    adc d
    ld h, c
    add e
    nop
    ld b, $01
    rla
    jr nz, jr_01e_73e4

    inc bc
    inc h
    inc bc
    rra
    nop
    ld d, a
    ld d, [hl]
    add h
    inc bc
    inc l
    inc bc
    ld [bc], a
    rla
    jr nz, jr_01e_743b

    add h
    ld [bc], a
    ld a, l
    add e
    ld [bc], a
    ld [hl-], a
    add e
    ld [bc], a
    ld h, [hl]
    dec c
    rst $38
    inc bc
    rra
    nop
    nop
    ld a, h
    rra
    nop
    ld a, a
    nop
    rra
    ld bc, $019f
    add e
    ld bc, $0578
    dec l
    dec h
    nop
    nop
    cp a
    ld [hl], e
    sub a
    inc bc
    ld b, d
    inc bc
    rra
    ld b, a
    adc d
    ld h, c
    ldh a, [rNR42]
    inc bc
    ld a, $05
    rst $38
    ld a, a
    ld a, [hl]
    ld b, a
    db $db
    ld bc, $0283
    ld h, [hl]
    ld [bc], a
    ld l, c
    ld [de], a
    rra
    add e
    ld bc, $1e1f
    nop
    xor $26
    ld a, c
    ld [bc], a
    nop
    inc e
    rra
    ld [bc], a
    add hl, de
    ld c, e
    inc de
    ld a, $00
    nop
    add sp, $79
    ld e, a
    inc bc
    rra
    nop
    jp $ff7c


    ld a, a
    db $f4
    dec sp
    ld h, b
    ld [bc], a
    dec b
    ld [hl], h
    ld b, c
    rst $38
    ld a, a
    ld bc, $6508
    add h
    ld [bc], a
    ld a, $01
    inc bc
    ld h, b
    add h
    ld bc, $1bbd
    sbc a
    add hl, hl
    rra
    ld [bc], a
    nop
    nop
    sub h
    ld d, d
    rst $38
    inc bc
    cpl
    ld e, d
    nop
    nop
    jr jr_01e_7552

    rst $38
    inc bc
    inc h
    ld a, [hl]
    nop
    nop
    sbc h
    ld [hl], e
    db $fd
    ld c, d
    inc h
    ld a, [hl]
    ldh a, [rNR42]
    ld bc, $05fe
    sbc a
    ld h, a
    ld e, $5f
    nop
    ld [hl], b
    add e
    nop
    ld b, $03
    add hl, bc
    ld a, a
    ld b, h
    ld l, l
    add e
    nop
    ld c, $03
    add hl, bc
    ld a, a
    nop
    ld [hl], b
    add h
    ld [bc], a
    ld d, $02
    ld a, [hl-]
    cp h
    ld hl, $0083
    cp $03
    nop
    ld a, h
    sbc a
    nop
    add e
    nop
    ld b, $02
    rst $18
    ld a, [hl-]
    ld e, a
    add e
    nop
    dec c
    add a
    ld [bc], a
    ld c, c
    add [hl]
    ld [bc], a
    ld e, c
    dec b
    rst $18
    ld [hl], a
    ld e, a
    ld d, a
    jp hl


    ld a, [hl]
    add h
    ld [bc], a
    ld b, $00
    ld e, d
    add e
    inc b
    ld h, h
    inc bc
    rra
    nop
    xor d
    ld a, [hl]
    add h
    inc b
    ld l, h
    inc b
    ld [bc], a
    ld a, [hl-]
    ld [hl], a
    jp hl


    ld a, [hl]

jr_01e_7552:
    sbc e
    ld bc, $051e
    sbc a
    inc hl
    ld e, e
    ld a, [hl+]
    ld b, h
    ld [$0199], sp
    jr nz, jr_01e_7563

    sbc c
    ccf
    ld c, e

jr_01e_7563:
    ld [bc], a
    sbc e
    inc b
    sbc [hl]
    inc bc
    ld e, b
    ld a, e
    dec hl
    ld l, d
    sbc e
    inc b
    sbc [hl]
    inc bc
    dec d
    ld a, a
    adc b
    ld a, [hl]
    sbc e
    inc b
    sbc [hl]
    dec b
    cp a
    ld e, d
    ccf
    dec l
    ld b, h
    ld [$21f0], sp
    ld bc, $9720
    ld bc, $0322
    ld a, d
    ld a, [hl]
    db $d3
    ld a, h
    sbc e
    inc b
    sbc [hl]
    inc bc
    ei
    ld e, [hl]
    ld d, l
    ld c, d
    sbc e
    inc b
    sbc [hl]
    inc bc
    dec sp
    ld c, e
    ld [hl], $1e
    sbc e
    inc b
    sbc [hl]
    inc bc
    scf
    ld [hl], e
    cpl
    ld d, [hl]
    sbc e
    inc b
    sbc [hl]
    inc bc
    sbc h
    ld c, e
    jr jr_01e_75d9

    sbc e
    inc b
    sbc [hl]
    inc bc
    sbc a
    ld h, e
    ld b, c
    ld l, l
    sbc l
    dec b
    ld e, $01
    cpl
    ld c, [hl]
    sbc l
    dec b
    ld a, $9d
    ld b, $1c
    inc bc
    ld e, a
    ld a, d
    ld [hl], d
    jr nc, @-$63

    inc b
    sbc [hl]
    dec b
    call nc, $ec6a
    ld c, c
    ld b, h
    ld [$ff4f], sp
    ld a, a
    ccf
    nop
    dec bc
    rst $38
    ld a, a
    rst $38
    ld h, a
    ccf
    dec hl

jr_01e_75d9:
    ld d, c
    ld a, l
    rst $38
    ld a, a
    rra
    ld a, a
    add l
    ld b, $c4
    inc bc
    rst $38
    ld h, a
    db $fd
    ld a, a
    add e
    ld b, $c6
    dec b
    cp a
    ld a, a
    db $f4
    ld d, a
    ld c, d
    add hl, hl
    add h
    ld [bc], a
    ld c, d
    ld [bc], a
    ld d, e
    sbc e
    ld a, [hl]
    add a
    ld b, $e0
    ld b, d
    rst $38
    ld a, a
    add l
    ld b, $e6

Jump_01e_7601:
    rrca
    cp $7f
    sub h
    ld d, d
    rst $38
    ld a, a
    ld [$3f7f], a
    ld h, e
    ld c, d
    add hl, hl
    ld d, a
    add hl, hl
    rst $38
    dec hl
    add e
    rlca
    inc b
    ld [bc], a
    ld e, a
    add hl, hl
    rst $38
    add h
    rlca
    inc bc
    inc bc
    ld e, a
    dec hl
    ccf
    ld a, [hl-]
    add e
    rlca
    inc b
    dec bc
    rst $38
    ld a, a
    db $f4
    ld a, a
    rst $38
    ld a, a
    sub h
    ld d, d
    sbc a
    ld d, d
    rst $38
    ld d, e
    add [hl]
    rlca
    inc h
    add h
    rlca
    inc hl
    inc bc
    rst $38
    ld d, e
    ld a, a
    ld h, e
    add h
    rlca
    inc [hl]
    inc c
    ld a, a
    rst $18
    ld d, d
    ld e, a
    dec hl
    ld c, d
    add hl, hl
    sbc $7b
    rst $38
    dec hl
    ld a, c
    ld a, a
    add h
    ld b, $de
    ld bc, $6e2b
    add l
    rlca
    ld c, l
    nop
    ld [hl], e
    add [hl]
    rlca
    ld d, h
    ld [bc], a
    ld a, e
    rst $38
    ld d, e
    add e
    ld b, $fe
    add l
    rlca
    ld a, [hl+]
    add e
    ld b, $e2
    nop
    ld hl, sp-$7b
    rlca
    ld l, l
    nop
    ld a, a
    add [hl]
    rlca
    ld [hl], h
    ld [bc], a
    ld c, e
    rst $38
    ld e, [hl]
    add h
    rlca
    ld b, $02
    ld c, e
    ld e, a
    add hl, hl
    add e
    rlca
    ld c, $03
    db $fd
    ld d, e
    or e
    dec sp
    add e
    rlca
    ld d, $03
    rst $38
    ld l, a
    rra
    dec hl
    add l
    rlca
    ld d, [hl]
    add [hl]
    rlca
    inc h
    ld [bc], a
    ld [hl], e
    sbc a
    ld d, d
    add h
    rlca
    ld h, $03
    ld a, e
    db $fd
    ld h, e
    sub h
    add h
    rlca
    add hl, hl
    add l
    rlca
    ld h, h
    inc bc
    db $fd
    ld d, e
    ld [$837f], a
    rlca
    ld b, $0b
    db $f4
    ld a, a
    ld l, d
    ld a, a
    xor d
    ld a, [hl]
    ld e, a
    add hl, hl
    sbc $7f
    ld [hl], d
    ld d, d
    adc h
    rlca
    sub [hl]
    ld bc, $f47b
    add h
    rlca
    dec h
    nop
    cp $41
    ld a, a
    db $f4
    nop
    ld a, a
    add e
    rlca
    jr nc, jr_01e_76cf

    cp h

jr_01e_76cf:
    ld a, e
    adc e
    rlca
    or [hl]
    ld bc, $7ffb
    adc l
    rlca
    call nz, $dd03
    ld a, a
    or h
    ld e, [hl]
    adc h
    rlca
    sub [hl]
    nop
    ld a, a
    adc a
    rlca
    db $e4
    ld bc, $7ffe
    adc e
    rlca
    or [hl]
    ld [$7f8e], sp
    rst $38
    ld a, a
    adc [hl]
    ld sp, $2957
    xor d
    add h
    ld b, $e7
    ld bc, $295f
    add l
    rlca
    sbc d
    inc b
    ld e, a
    dec hl
    db $f4
    ld a, a
    ld l, d
    add h
    rlca
    ld c, l
    jp Jump_01e_7c07


    inc bc
    ret c

    ld e, d
    sbc a
    ld d, d
    call nz, Call_000_2408
    ld [bc], a
    ld a, a
    sbc a
    ld d, d
    add [hl]
    rlca
    cp d
    inc bc
    ld d, e
    cp $7f
    db $f4
    add l
    rlca
    ld l, l
    nop
    add hl, sp
    add l
    rlca
    call nz, $ff01
    ld a, a
    adc l
    ld [$434c], sp
    rst $38
    ld a, a
    ld [bc], a
    ccf
    ld h, e
    db $f4
    add l
    rlca
    dec l
    adc [hl]
    ld [$886b], sp
    ld b, $80
    ld bc, $ff4e
    adc b
    ld [$0185], sp
    ld c, d
    add hl, hl
    sub c
    ld [$0190], sp
    rst $38
    ld [hl], a
    adc e
    rlca
    inc l
    sub c
    ld [$03b0], sp
    ld sp, hl
    ld a, [hl]
    rra
    dec hl
    add h
    rlca
    ld b, $00
    ld l, e
    add h
    ld [$0454], sp
    add hl, hl
    ld a, d
    ld l, a
    push de
    ld e, d
    adc h
    ld [$02d6], sp
    ld a, a
    rst $38
    ld d, e
    add a
    ld [$8bee], sp
    rlca
    ld l, $43
    rst $38
    ld a, a
    dec b
    ld [$ff2b], a
    dec hl
    ld c, h
    ld l, l
    push bc
    ld [$0f9e], sp
    sbc a
    add hl, hl
    rst $38
    ld a, a
    ei
    ld l, a
    ld [$2a2b], a
    ld a, [hl]
    rst $38
    ld l, a
    ld a, a
    ld d, a
    rst $18
    ld b, d
    add h
    rlca
    ld e, $03
    ld d, e
    rst $38
    ld d, e
    sub [hl]
    add [hl]
    ld b, $e7
    nop
    rst $18
    add h
    rlca
    ld sp, $f402
    ld d, e
    ld [hl], h
    ld b, d
    ld a, a
    rst $38
    ld [bc], a
    ld l, e
    sub h
    ld d, d
    sub c
    add hl, bc
    ld b, b
    add l
    rlca
    ld [de], a
    rlca
    rst $38
    ld l, a
    rst $38
    ld a, a
    rra
    ld b, a
    adc [hl]
    ld sp, $0993
    ld h, b
    add [hl]
    rlca
    ld l, h
    inc b
    ld a, a
    rst $38
    ld l, a
    ret c

    ld e, d
    add e
    add hl, bc
    cp d
    ld bc, $2b1f
    add e
    ld [HeaderSGBFlag], sp
    or e
    dec sp
    add e
    rlca
    db $10
    dec c
    ld e, a
    add hl, hl
    ld hl, sp+$4f
    cp a
    dec hl
    ld c, d
    ld b, l
    ld e, a
    dec hl
    rst $38
    ld [hl], e
    ld e, l
    ld h, a
    add a
    ld b, $de
    add e
    ld [$0366], sp
    db $fd
    ld h, e
    sbc a
    ld d, d
    add h
    ld [$066e], sp
    ld [hl], a
    rst $38
    ld d, e
    sub h
    ld l, [hl]
    rst $38
    ld d, e
    add [hl]
    rlca
    ld [hl-], a
    inc b
    ld d, a
    rst $38
    ld a, a
    push af
    halt
    add e
    rlca
    ld b, $03
    cp e
    ld c, e
    scf
    ld a, [hl-]
    add e
    rlca
    ld c, $01
    cp e
    ld [hl], e
    add e
    ld a, [bc]
    inc b
    add hl, bc
    ld e, a
    dec hl
    dec d
    ld l, [hl]
    push af
    halt
    ld c, d
    add hl, hl
    rst $38
    ld a, a
    adc b
    ld [$02ea], sp
    ld [hl], e
    ld a, a
    ld h, e
    adc e
    rlca
    ld l, $00
    ld e, a
    add h
    rlca
    inc hl
    inc c
    xor h
    dec b
    or l
    ld d, [hl]
    ld h, c
    inc h
    nop
    nop
    inc bc
    nop
    daa
    ld bc, $2203
    nop
    inc bc
    dec d
    nop
    daa
    ld hl, $0a83
    ld b, h
    inc bc
    push de
    nop
    ld bc, $831c
    ld a, [bc]
    ld b, h
    inc bc
    ld h, d
    nop
    ld l, e
    dec l
    dec hl
    nop
    nop
    dec bc
    add e
    ld a, [bc]
    ld l, c
    jp z, $730a

    ld [$31ad], sp
    nop
    nop
    and h
    jr nc, jr_01e_7865

jr_01e_7865:
    nop
    inc bc
    ld h, $00
    inc bc
    dec d
    nop
    ld hl, $2304
    nop
    inc bc
    push de
    nop
    add hl, hl
    dec d
    add e
    ld a, [bc]
    add h
    ld bc, $0863
    ld [hl+], a
    nop
    nop
    ld [$0a96], sp
    ld h, [hl]
    ld [$0008], sp
    nop
    sub l
    ld c, [hl]
    and c
    ld d, c
    ldh [c], a
    inc [hl]
    add h
    ld a, [bc]
    add [hl]
    ld [bc], a
    ld d, l
    nop
    inc e
    add e
    ld a, [bc]
    ld c, [hl]
    inc b
    nop
    ld d, l
    ldh [c], a
    inc [hl]
    nop
    call nz, $990a
    add e
    ld a, [bc]
    call nz, $4b05
    dec h
    ld h, b
    jr z, jr_01e_78a8

jr_01e_78a8:
    inc c
    inc h
    nop
    nop
    inc l
    add [hl]
    ld a, [bc]
    ld l, h
    ld [bc], a
    inc l
    nop
    inc c
    add [hl]
    ld a, [bc]
    ld l, [hl]
    ld [$000c], sp
    nop
    or l
    ld c, [hl]
    dec c
    ld bc, $3840
    add e
    ld a, [bc]
    ld b, [hl]
    ld bc, $000d
    add e
    dec bc
    inc b
    inc bc
    dec d
    nop
    dec c
    dec l
    add e
    dec bc
    inc b
    ld a, [bc]
    push de
    nop
    dec c
    nop
    add c
    ld d, l
    nop
    nop
    ld l, e
    dec h
    inc bc
    and [hl]
    ld a, [bc]
    and e
    add l
    dec bc
    ld [hl+], a
    inc bc
    dec bc
    nop
    inc bc
    inc b
    add [hl]
    dec bc
    inc l
    ld a, [bc]
    nop
    ld b, b
    inc l
    nop
    nop
    ld [hl], l
    ld c, d
    ld c, c
    dec l
    jr nz, jr_01e_7904

    add e
    ld a, [bc]
    ld b, [hl]
    dec b
    or l
    ld [bc], a
    dec d

Call_01e_78ff:
    nop
    nop
    ld d, h
    ld b, d
    dec d

jr_01e_7904:
    nop
    nop
    ld d, l
    ld b, c
    nop
    push de
    nop
    dec e
    add e
    dec bc
    inc b
    inc bc
    dec hl
    ld hl, $0400
    dec h
    nop
    ld bc, $016b
    add e
    ld a, [bc]
    ldh a, [rLY]
    dec bc
    nop
    nop
    adc e
    add h
    dec bc
    inc hl
    ld bc, $56b5
    sub a
    dec bc
    ld b, d
    ld bc, $1df5
    add e
    ld a, [bc]
    ld c, h
    ld bc, $2d6b
    sub a
    dec bc
    ld h, d
    inc bc
    xor e
    nop
    nop
    nop
    ldh a, [$ff3f]
    dec bc
    ld a, [hl]
    inc b
    nop
    nop
    and b
    ld d, b
    dec d
    add h
    dec bc
    ld c, e
    rlca
    or l
    ld d, [hl]
    xor d
    ld [de], a
    jr nz, jr_01e_7950

    nop

jr_01e_7950:
    ld c, h
    ld b, c
    or l
    ld d, [hl]
    ld bc, $3c00
    add e
    dec bc
    ld a, [hl]
    inc bc
    ld [hl], l
    ld [bc], a
    jr nz, jr_01e_7960

    ld [hl+], a

jr_01e_7960:
    nop
    ld bc, $cb28
    add h
    ld a, [bc]
    rst $28
    ld [bc], a
    ld l, e
    dec l
    ld h, b
    add e
    inc c
    dec e
    nop
    inc h
    ld b, c
    ld l, e
    dec l
    ld bc, $1400
    add e
    dec bc
    sbc [hl]
    nop
    dec hl
    add e
    inc c
    dec e
    ld bc, $3200
    call nz, $9b08
    ld [$7e0d], sp
    rst $38
    ld a, a
    cp $63
    xor d
    dec hl
    ld c, a
    add h
    ld [bc], a
    ld l, e
    ld bc, $7e52
    add l
    rlca
    ld c, [hl]
    ld a, [bc]
    xor d
    dec hl
    ld c, d
    add hl, hl
    db $fc
    ld a, a
    rst $38
    ld d, e
    sbc a
    ld d, d
    ld d, a
    push bc
    ld [$016f], sp
    ld d, e
    sbc c
    add h
    ld b, $e7
    nop
    sbc h
    add [hl]
    rlca
    ld l, l
    ld [$53f4], sp
    sub h
    ld d, d
    sub l
    ld c, [hl]
    dec d
    ld l, $a0
    call nz, $cb0a
    ld [bc], a
    or l
    ld sp, $c4a0
    ld a, [bc]
    db $d3
    ld bc, $5560
    add e

Jump_01e_79c9:
    inc c
    add h
    inc bc
    push de
    nop
    ldh a, [rKEY1]
    add e
    inc c
    add h
    inc b
    ld c, e
    dec h
    rlc h
    ld h, b
    add h
    ld a, [bc]
    db $eb
    ld [bc], a
    ld l, e
    ld [$c460], sp
    ld a, [bc]
    di
    ld bc, $2c20
    add l
    inc c
    xor h
    inc bc
    and [hl]
    inc h
    ld h, b
    inc l
    add h
    ld b, $be
    ld bc, $f37f
    add [hl]
    ld [$0085], sp
    di
    add h
    ld [$00cd], sp
    db $f4
    add l
    inc c
    rlc b
    dec hl
    add l
    inc c
    jp nz, $ff41

    ld a, a
    nop
    db $fd
    add h
    rlca
    dec l
    add a
    inc c
    ldh [c], a
    ld [bc], a
    cp $7f
    db $fd
    add [hl]
    ld [$0035], sp
    db $fd
    add [hl]
    rlca
    ld [hl], l
    ld bc, $7d4a
    add e
    rlca
    ld b, $03
    di
    ld a, a
    adc [hl]
    ld a, [hl]
    add e
    rlca
    ld c, $00
    di
    add h
    dec c
    inc bc
    dec b
    ld e, a
    dec hl
    rst $38
    ld h, e
    rst $38
    ld c, d
    add l
    ld b, $de
    ld bc, $7e94
    add e
    rlca
    ld h, $03
    db $fd
    ld a, a
    ret c

    ld a, a
    add l
    dec c
    ld h, $01
    sub h
    ld a, [hl]
    add [hl]
    rlca
    or [hl]
    nop
    ld [hl], e
    add e
    ld b, $fe
    inc bc
    ld c, d
    ld a, l
    rst $18
    add hl, hl
    add h
    rlca
    ld b, $05
    ld h, e
    sbc a
    dec hl
    ld c, d
    add hl, hl
    ld e, a
    add [hl]
    ld [$8989], sp
    ld [$0298], sp
    sub h
    ld a, [hl]
    rra
    sub b
    add hl, bc
    dec h
    ld bc, $7fff
    adc c
    ld [$02b8], sp
    rst $30
    ld a, a
    db $dd
    add h
    rlca
    push bc
    ld [bc], a
    rst $30
    ld a, a
    rst $38
    add h
    add hl, bc
    dec c
    ld [bc], a
    rst $30
    ld a, a
    rst $18
    add e
    dec c
    dec c
    inc b
    dec hl
    rst $30
    ld a, a
    ld a, [$832b]
    ld a, [bc]
    ld e, $83
    ld [$96ea], sp
    add hl, bc
    ld h, $02
    ld d, e
    sub h
    ld d, d
    adc e
    dec c
    add b
    nop
    db $f4
    sbc [hl]
    dec c
    adc l
    nop
    cp $9e
    dec c
    xor l
    ld bc, $7ff0
    sbc l
    dec c
    adc [hl]
    ld bc, $7ffa
    sbc l
    dec c
    xor [hl]
    ld bc, $7ef3
    sbc l
    dec c
    adc [hl]
    nop
    db $fd
    sbc [hl]
    ld c, $2d
    ld bc, $395f
    sbc l
    dec c
    adc [hl]
    ld bc, $629f
    sbc l
    dec c
    xor [hl]
    nop
    ccf
    ldh a, [$ff3e]
    dec c
    adc l
    ld bc, $7678
    sbc l
    dec c
    adc [hl]
    nop
    cp a
    sub d
    ld c, $2d
    rst $38
    ld b, c
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
    ld b, c
    jr nc, jr_01e_7af2

jr_01e_7af2:
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
    ld b, c
    ld h, $00
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
    ld b, c
    rra
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
    ld b, c
    nop
    inc b
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
    ld b, c
    nop
    dec bc
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    ld bc, $0030
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
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
    ld b, c
    nop
    rlca
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    ld [$0040], sp
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0800
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_01e_7c07:
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_01e_7c93

jr_01e_7c93:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$ff00], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    inc b
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
    jr nz, jr_01e_7d53

jr_01e_7d53:
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01e_7d5f

jr_01e_7d5f:
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    nop
    nop
    adc b
    nop
    nop
    nop
    nop
    ld [bc], a
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01e_7ddb

jr_01e_7ddb:
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
    ld b, b
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
    ld [bc], a
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
    ld [bc], a
    nop
    nop
    nop
    inc b
    ld bc, $0020
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
    stop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    nop
    nop

Jump_01e_7ec9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0000
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
    ld b, b
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
    add b
    nop
    nop
    nop
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0000
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
    nop
