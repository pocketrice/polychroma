; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    db $16, $0d, $a2, $35, $10, $7f, $0e, $08, $30, $40

    rlca
    ld b, d

    db $b2, $41, $07, $42, $13, $42

    cp c
    ld b, c

    db $07, $42, $13, $42, $0f, $45, $40, $0d, $6b, $3a, $17, $ce, $0d, $0d, $27, $40
    db $06, $44, $40

    ld hl, $79f4
    ld a, $01
    call Call_000_05cf
    ret


    db $0f, $45, $40, $0d, $6b, $3a, $17, $ce, $0d, $0f, $54, $00, $0d, $83, $40, $11
    db $44, $40, $24, $3c, $0f, $52, $00, $10, $51, $0e, $0e, $bf, $44, $6a, $74, $31
    db $56

    sub $5f

    db $54, $61, $67, $40, $73, $40, $7b, $40

    dec de
    ld l, l
    ld l, e
    ld b, b
    ld [hl], a
    ld b, b
    ld a, a
    ld b, b
    ld l, a
    ld b, b
    sbc d
    ld [hl], b

    db $1b, $00, $40, $02

    dec de
    ld [hl], e
    ld c, l
    ld [bc], a
    dec de
    ld c, c
    ld b, [hl]
    ld [bc], a

    db $1b, $03, $53, $02

    dec de
    and l
    ld h, d
    ld [bc], a

    db $1b, $30, $67, $02

    dec de
    xor [hl]
    ld [hl], b
    ld [bc], a

    ld a, [$db73]
    dec a
    jr z, jr_001_409e

    ld a, [$a071]
    or a
    ld e, $4c
    ld h, $04
    jr z, jr_001_4097

    ld e, $72
    ld h, $02

jr_001_4097:
    ld a, [de]
    cp h
    ld a, $00
    jr nc, jr_001_409e

    inc a

jr_001_409e:
    ld e, $27
    ld [de], a
    ret


    rrca
    ld b, [hl]
    nop
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    ld bc, $0f04
    ld d, c
    nop
    dec bc
    or h
    ld b, b
    ld b, $bf
    ld b, h

    db $0d, $2a, $53, $0f, $5b, $ff, $0d, $67, $10, $0d, $da, $40, $0d, $4f, $3c, $00
    db $03, $d6, $40, $41, $0d, $7f, $35, $05, $01, $10, $64, $12, $cb, $40, $0d, $80
    db $10, $0c

    call Call_000_34fd
    ret


    push bc
    ld h, $a2

jr_001_40dd:
    ld l, $00
    ld a, [hl]
    inc a
    jr z, jr_001_40f1

    ld l, $4c
    ld a, [hl]
    or a
    jr z, jr_001_40f1

    ld e, $03
    ld bc, $4e40
    call Call_000_0849

jr_001_40f1:
    inc h
    ld a, h
    cp $a8
    jr c, jr_001_40dd

    pop bc
    ret


    dec c
    ld [hl-], a
    ld b, c
    ld de, $413a
    inc b
    inc l
    ld d, a
    ld a, [bc]
    ld bc, $0b02
    or h
    ld b, b
    dec de
    nop
    ld b, b
    ld [bc], a

    db $0d, $32, $41, $11, $3a, $41

    inc b
    sbc c
    ld e, [hl]
    ld a, [bc]
    ld bc, $0b02
    or h
    ld b, b
    dec de
    inc bc
    ld d, e
    ld [bc], a

    db $0d, $32, $41, $11, $3a, $41, $04, $29, $65, $0a, $01, $02, $0b, $b4, $40, $1b
    db $30, $67, $02

    ld a, [$a05b]
    inc a
    ld e, $27
    ld [de], a
    ret


    db $04, $40, $4f, $0a, $01, $04, $0b, $4e, $41, $0d, $ed, $77, $0e, $03, $bf, $44

    ld sp, $5456
    ld h, c

    db $0d, $67, $10, $0d, $da, $40, $0d, $7c, $41, $0f, $71, $00, $03, $d6, $40, $41
    db $0d, $76, $35, $05, $01, $10, $64, $12, $61, $41, $0d, $7f, $35, $05, $01, $10
    db $64, $12, $6b, $41, $0d, $80, $10, $0d, $91, $41, $0d, $9b, $41, $0c

    push bc
    ld bc, $418e
    call Call_000_0f50
    jr z, jr_001_418c

    ld l, $39
    ld a, [$a071]
    dec a
    ld [hl], a

jr_001_418c:
    pop bc
    ret


    db $25, $a8, $b2

    xor a
    ld [$dee3], a
    ld hl, $dedf
    res 1, [hl]
    ret


    ld a, [$deff]
    or a
    ret nz

    ld a, [$db6f]
    ld e, a
    push bc
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    db $0f, $54, $80, $1b, $f1, $60, $08

    dec c
    ld c, a
    inc a
    ld [$510f], sp
    dec c
    inc b
    sub d
    ld [hl], e
    ld a, [bc]
    rla
    or $0d
    inc bc
    ld [$4141], a
    rrca
    ld b, l
    ld b, b
    rrca
    ld d, h
    add b
    dec b
    ld d, b
    dec c
    ldh [$ff35], a
    jr jr_001_41d8

jr_001_41d8:
    and b
    nop
    ld [$fc80], sp
    ld a, [hl+]
    db $10
    add hl, de
    nop
    jr c, jr_001_41fb

    ld a, [hl+]
    nop
    dec b
    or h
    ld b, $36
    ld b, b
    call Call_000_0c91
    call Call_000_0da4
    ld e, $39
    ld a, [$db53]
    ld [de], a
    ld hl, $6fb9
    ld a, $08

jr_001_41fb:
    call Call_000_05cf
    ld hl, $741f
    ld a, $08
    call Call_000_05cf
    ret


    db $0f, $45, $40, $0f, $39, $40, $0f, $3a, $c0, $06, $50, $42, $0f, $45, $c0, $0f
    db $39, $c0, $0f, $3a, $40, $06, $50, $42

    ld a, [$db6d]
    call Call_000_0663
    ld e, a
    ld a, [$db60]
    ld hl, $db62
    add l
    ld l, a
    jr nc, jr_001_4231

    inc h

jr_001_4231:
    ld a, [hl]
    or e
    ld [hl], a
    push bc
    ld hl, $6d6c
    ld a, $0f
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    push bc
    ld hl, $47ce
    ld a, $08
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    db $0f, $54, $80, $0d, $6b, $3a, $17, $f6, $0d, $03, $b0, $44, $41, $2a, $00, $0d
    db $8a, $44, $10, $71, $0e, $04, $6e, $42, $fa, $42, $67, $43, $e3, $43, $04, $40
    db $4f, $0a, $26, $40, $00, $10, $3a, $1a, $45, $19, $01, $06, $10, $39, $1a, $45
    db $19, $01, $06, $19, $0f, $06, $10, $7f, $13, $06, $d0, $42, $10, $3a, $1a, $45
    db $18, $24, $0d, $08, $04, $fc, $2a, $66, $19, $20, $0a, $19, $1f, $09, $24, $0e
    db $18, $2a, $00, $19, $04, $04, $24, $0d, $08, $08, $fd, $2a, $26, $19, $20, $0c
    db $19, $0f, $08, $24, $58, $0d, $1f, $42, $0d, $42, $42, $19, $10, $08, $19, $1f
    db $0b, $24, $0e, $18, $2a, $00, $19, $04, $04, $10, $39, $1a, $45, $26, $40, $00
    db $10, $3a, $1a, $45, $19, $10, $06, $10, $39, $1a, $45, $19, $10, $06, $10, $3a
    db $1a, $45, $19, $0f, $06, $18, $10, $39, $1a, $45, $0d, $81, $44, $12, $f4, $42
    db $04, $78, $52, $0a, $19, $00, $06, $06, $5c, $44, $04, $2c, $57, $0a, $09, $02
    db $19, $04, $06, $19, $03, $06, $0a, $10, $7f, $13, $06

    ld d, c
    ld b, e

    db $10, $3a, $1a, $45, $18, $24, $0d, $08, $04, $fc, $2a, $66, $19, $00, $13, $24
    db $0e, $18, $2a, $00, $19, $02, $04, $24, $0d, $08, $08, $fd, $2a, $26, $19, $00
    db $0c, $19, $03, $08, $24, $58, $0d, $1f, $42, $0d, $42, $42, $19, $01, $08, $19
    db $00, $0b, $24, $0e, $18, $2a, $00, $19, $02, $08, $19, $03, $04, $19, $04, $04
    db $10, $39, $1a, $45, $26, $40, $00, $19, $01, $08, $19, $02, $08, $19, $00, $08
    db $19, $01, $08, $19, $02, $08, $18, $06, $5c, $44, $04, $99, $5e, $0a, $09, $02
    db $19, $04, $06, $19, $03, $06, $0a, $10, $7f, $13, $06, $cd, $43

    db $10
    ld a, [hl-]
    ld a, [de]
    ld b, l
    jr jr_001_43a4

    dec c
    ld [$fc04], sp
    ld a, [hl+]
    ld h, [hl]
    add hl, de
    ld bc, $190a
    nop
    add hl, bc
    inc h
    ld c, $18
    ld a, [hl+]
    nop
    add hl, de
    ld [bc], a
    inc b
    inc h
    dec c
    ld [$fd08], sp
    ld a, [hl+]
    ld h, $19
    ld bc, $1908
    nop
    inc b
    add hl, de
    ld [bc], a
    inc b

jr_001_43a4:
    add hl, de
    nop
    inc b
    inc h
    ld e, b
    dec c
    rra
    ld b, d
    dec c
    ld b, d
    ld b, d
    add hl, de
    nop
    inc b
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    nop
    inc b
    add hl, de
    nop
    rlca
    inc h
    ld c, $18
    ld a, [hl+]
    nop
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    inc b
    inc b
    db $10
    add hl, sp
    ld a, [de]
    ld b, l

    db $26, $40, $00, $19, $07, $08, $19, $08, $08, $19, $09, $08, $19, $07, $08, $19
    db $08, $08, $18, $06, $5c, $44, $04, $29, $65, $0a, $09, $02, $19, $04, $06, $19
    db $03, $06, $0a, $10, $7f, $13, $06

    ld c, c
    ld b, h

    db $10, $3a, $1a, $45, $18, $24, $0d, $08, $04, $fc, $2a, $66, $19, $01, $04, $19
    db $02, $06, $19, $00, $09, $24, $0e, $18, $2a, $00, $19, $05, $04, $24, $0d, $08
    db $08, $fd, $2a, $26, $19, $01, $0e, $19, $02, $06, $24, $58, $0d, $1f, $42, $0d
    db $42, $42, $19, $00, $04, $19, $01, $04, $19, $00, $04, $19, $01, $04, $19, $00
    db $03, $24, $0e, $18, $2a, $00, $19, $05, $04, $19, $03, $04, $19, $04, $04, $10
    db $39, $1a, $45, $26, $40, $00, $19, $00, $08, $19, $01, $08, $19, $02, $08, $19
    db $00, $08, $19, $01, $08, $18, $0d, $7c, $44, $11, $6a, $44

    dec c
    ld l, [hl]
    ld b, h
    inc h
    inc [hl]
    dec c
    ld [hl], a
    ld b, h

    db $1b, $36, $40, $01

    ld hl, $470e
    ld a, $08
    call Call_000_05cf
    ret


    xor a
    ld [$db3c], a
    ret


    ld a, [$db3c]
    jr jr_001_4486

    ld a, [$a051]
    sub $04

jr_001_4486:
    ld e, $27
    ld [de], a
    ret


    ld e, $45
    ld a, [de]
    rla
    ld hl, $fff7
    jr nc, jr_001_4496

    ld hl, $0009

jr_001_4496:
    ld e, $04
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    ld h, d
    ld l, $3b
    dec e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ret


    call Call_000_0c91
    call Call_000_0da4
    ld hl, $741f
    ld a, $08
    call Call_000_05cf
    ret


    db $04, $40, $4f, $0a, $0b, $d9, $44, $0d, $40, $7b, $0e, $07, $e0, $44, $83, $45
    db $42, $47, $ea, $4a, $14, $4c, $81, $4c, $46, $4d, $0f, $51, $00, $0f, $5b, $ff
    db $0c, $0f, $50, $00, $03, $0e, $45, $41, $10, $52, $11, $05, $45, $14, $03, $f5
    db $44, $01, $04, $06, $fe, $44, $0d, $2b, $7b, $08

    rlca

    db $03, $08, $45, $41, $0b, $1f, $7b, $03, $0e, $45, $41, $01, $00, $00

    ld hl, $0807
    call Call_001_7baf
    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_452f

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_452f:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_453d

    ld e, $01
    ld bc, $4697
    jp Jump_000_37f4


jr_001_453d:
    call Call_001_7a55
    jr nc, jr_001_454a

    ld e, $01
    ld bc, $4583
    jp Jump_000_37f4


jr_001_454a:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_4558

    ld e, $01
    ld bc, $49fa
    jp Jump_000_37f4


jr_001_4558:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_4566

    ld e, $01
    ld bc, $729d
    jp Jump_000_37f4


jr_001_4566:
    call Call_000_36e6
    jr nc, jr_001_4573

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4573:
    call Call_000_3619
    jr nc, jr_001_4580

    ld e, $01
    ld bc, $4a48
    jp Jump_000_37f4


jr_001_4580:
    jp Jump_000_37f7


    db $0f, $50, $01, $03, $e4, $45, $41, $10, $52, $11, $94, $45, $01, $04, $0b, $1f
    db $7b, $0d, $3c, $38, $0e, $06, $a5, $45, $b4, $45, $c3, $45

    add $45
    push de
    ld b, l
    db $c3
    ld b, l

    db $19, $02, $08, $19, $03, $0a, $19, $02, $08, $19, $01, $0a, $06, $a5, $45, $19
    db $02, $06, $19, $03, $06, $19, $02, $06, $19, $01, $06

    ld b, $b4
    ld b, l

    db $01, $1f, $00

    add hl, de
    ld [bc], a
    inc bc
    add hl, de
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc bc
    add hl, de
    ld bc, $0604
    add $45
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $0604
    or h
    ld b, l

    call Call_000_359a
    call Call_001_7c45

Jump_001_45ea:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_4602

    ld e, $01
    ld bc, $44e0
    jp Jump_000_37f4


jr_001_4602:
    call Call_001_7adb
    jr nc, jr_001_460f

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_460f:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_461d

    ld e, $01
    ld bc, $4697
    jp Jump_000_37f4


jr_001_461d:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_462c

    ld e, $01
    ld bc, $44e0
    jp Jump_000_37f4


jr_001_462c:
    call Call_000_373b
    jr nc, jr_001_4639

    ld e, $01
    ld bc, $467f
    jp Jump_000_37f4


jr_001_4639:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_4647

    ld e, $01
    ld bc, $49fa
    jp Jump_000_37f4


jr_001_4647:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_4655

    ld e, $01
    ld bc, $729d
    jp Jump_000_37f4


jr_001_4655:
    call Call_000_36e6
    jr nc, jr_001_4662

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4662:
    call Call_000_3619
    jr nc, jr_001_466f

    ld e, $01
    ld bc, $4a48
    jp Jump_000_37f4


jr_001_466f:
    call Call_000_374e
    jr nc, jr_001_467c

    ld e, $01
    ld bc, $4583
    jp Jump_000_37f4


jr_001_467c:
    jp Jump_000_37f7


    db $0f, $50, $03, $24, $0d, $03, $8e, $46, $41, $0d, $ff, $37, $06, $94, $45

    call Call_000_359a
    call Call_001_7c20
    jp Jump_001_45ea


    db $0f, $50, $04, $03, $bd, $46, $41, $08, $70, $fc, $24, $04, $06, $ad, $46, $08
    db $50, $ff, $03, $e1, $46, $41, $01, $20, $05, $01, $10, $10, $14, $80, $af, $46
    db $0f, $39, $1d, $06, $45, $47

    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_001_46ce

    ld e, $01
    ld bc, $46a6
    jp Jump_000_37f4


jr_001_46ce:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_001_46e1

    ld h, d
    ld l, $1f
    ld [hl], $41
    inc l
    ld [hl], $46
    inc l
    ld [hl], $e1

jr_001_46e1:
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_470a

    ld e, $01
    ld bc, $44c6
    jp Jump_000_37f4


jr_001_470a:
    call Call_000_39c1
    jr nc, jr_001_4717

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_4717:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_4725

    ld e, $01
    ld bc, $729d
    jp Jump_000_37f4


jr_001_4725:
    call Call_000_36e6
    jr nc, jr_001_4732

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4732:
    call Call_000_3614
    jr nc, jr_001_473f

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_473f:
    jp Jump_000_37f7


    db $0f, $39, $1d, $0f, $50, $05, $03, $92, $47, $41, $10, $52, $11, $73, $47, $14
    db $03, $63, $47, $14, $02

    ld e, [hl]
    ld b, a

    db $01, $05, $06, $6c, $47

    ld bc, $0604
    ld l, h
    ld b, a

    db $0d, $2b, $7b, $08, $07, $03, $8c, $47, $41, $0b, $1f, $7b, $03, $92, $47, $41
    db $01, $1f, $05, $01, $10, $10, $14, $80, $75, $47, $10, $39, $15, $10, $10, $14
    db $80

    ld [hl], l
    ld b, a

    db $11

    ld [hl], l
    ld b, a

    db $06, $0e, $48

    ld hl, $0807
    call Call_001_7baf
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a8c
    call Call_000_3992
    jr nc, jr_001_47bb

    ld e, $01
    ld bc, $44c6
    jp Jump_000_37f4


jr_001_47bb:
    call Call_000_39c1
    jr nc, jr_001_47c8

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_47c8:
    ld e, $52
    ld a, [de]
    or a
    jr z, jr_001_47d6

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_47d6:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_47e4

    ld e, $01
    ld bc, $729d
    jp Jump_000_37f4


jr_001_47e4:
    call Call_000_3619
    jr nc, jr_001_47f1

    ld e, $01
    ld bc, $4a48
    jp Jump_000_37f4


jr_001_47f1:
    call Call_000_3765
    jr nc, jr_001_47fe

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_47fe:
    call Call_000_36e6
    jr nc, jr_001_480b

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_480b:
    jp Jump_000_37f7


    db $0f, $50, $05, $0d, $1b, $48, $03, $21, $48, $41, $01, $11, $00

    ld hl, $a06c
    res 3, [hl]
    ret


    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld hl, $48b6
    ld a, $01
    call Call_000_3aaa
    call Call_001_7d6e
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_4855

    ld e, $01
    ld bc, $494e
    jp Jump_000_37f4


jr_001_4855:
    call Call_000_39c1
    jr nc, jr_001_4862

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_4862:
    ld hl, $a06c
    bit 3, [hl]
    jr z, jr_001_4871

    ld e, $01
    ld bc, $48bb
    jp Jump_000_37f4


jr_001_4871:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_487f

    ld e, $01
    ld bc, $729d
    jp Jump_000_37f4


jr_001_487f:
    call Call_000_3619
    jr nc, jr_001_488c

    ld e, $01
    ld bc, $4a48
    jp Jump_000_37f4


jr_001_488c:
    call Call_000_3765
    jr nc, jr_001_4899

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_4899:
    call Call_000_36e6
    jr nc, jr_001_48a6

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_48a6:
    call Call_000_3614
    jr nc, jr_001_48b3

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_48b3:
    jp Jump_000_37f7


    db $02, $00, $00, $04, $08

    ld [$fd40], sp
    inc bc
    push bc
    ld c, b
    ld b, c
    ld bc, $0011
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a8c
    call Call_000_3992
    jr nc, jr_001_48ee

    ld e, $01
    ld bc, $44c6
    jp Jump_000_37f4


jr_001_48ee:
    call Call_000_39c1
    jr nc, jr_001_48fb

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_48fb:
    ld e, $10
    ld a, [de]
    rla
    jr c, jr_001_4909

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_4909:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_4917

    ld e, $01
    ld bc, $729d
    jp Jump_000_37f4


jr_001_4917:
    call Call_000_3619
    jr nc, jr_001_4924

    ld e, $01
    ld bc, $4a48
    jp Jump_000_37f4


jr_001_4924:
    call Call_000_3765
    jr nc, jr_001_4931

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_4931:
    call Call_000_36e6
    jr nc, jr_001_493e

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_493e:
    call Call_000_3614
    jr nc, jr_001_494b

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_494b:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $05, $0f, $52, $00, $24, $55, $03, $67, $49, $41, $0d
    db $77, $0f, $00, $01, $11, $08, $40, $fd, $00

    ld e, $40
    ld bc, $0280
    call Call_000_0d23
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_498a

    ld e, $01
    ld bc, $44c6
    jp Jump_000_37f4


jr_001_498a:
    call Call_000_39c1
    jr nc, jr_001_4997

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_4997:
    call Call_000_3619
    jr nc, jr_001_49a4

    ld e, $01
    ld bc, $4a48
    jp Jump_000_37f4


jr_001_49a4:
    call Call_000_3765
    jr nc, jr_001_49b1

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_49b1:
    call Call_000_3614
    jr nc, jr_001_49be

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_49be:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $05, $03, $d4, $49, $41, $0d, $af, $35, $19, $1f, $01
    db $06, $c6, $44

    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_49f7

    ld e, $01
    ld bc, $44c6
    jp Jump_000_37f4


jr_001_49f7:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $06, $24, $0d, $03, $07, $4a, $41, $00

    call Call_001_7c2e
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_4a25

    ld e, $01
    ld bc, $4742
    jp Jump_000_37f4


jr_001_4a25:
    call Call_000_36a5
    jr nc, jr_001_4a32

    ld e, $01
    ld bc, $49c1
    jp Jump_000_37f4


jr_001_4a32:
    ldh a, [$ffa5]
    bit 7, a
    jr nz, jr_001_4a40

    ld e, $01
    ld bc, $44c6
    jp Jump_000_37f4


jr_001_4a40:
    ld e, $15
    ld a, $04
    ld [de], a
    jp Jump_000_37f7


    db $0d, $a2, $35, $24, $30, $03, $5d, $4a, $41, $19, $0d, $08, $19, $1b, $08, $19
    db $19, $08, $06, $ea, $4a

    call Call_001_7cfd
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    call Call_000_36e6
    jr nc, jr_001_4a84

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4a84:
    jp Jump_000_37f7


    db $0f, $50, $0d, $03, $9d, $4a, $41, $19, $19, $0a, $19, $1a, $0a, $0d, $0e, $38
    db $12, $8e, $4a, $06, $ea, $4a

    call Call_000_359a
    ld e, $50
    ld bc, $feb3
    call Call_000_0d54
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_4acd

    ld e, $01
    ld bc, $4bb5
    jp Jump_000_37f4


jr_001_4acd:
    call Call_000_3765
    jr nc, jr_001_4ada

    ld e, $01
    ld bc, $4b55
    jp Jump_000_37f4


jr_001_4ada:
    call Call_000_36e6
    jr nc, jr_001_4ae7

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4ae7:
    jp Jump_000_37f7


    db $0f, $50, $0d, $03, $fa, $4a, $41, $19, $19, $14, $19, $1a, $14, $06, $f1, $4a

    call Call_000_359a
    ld e, $14
    ld bc, $0100
    call Call_000_0d23
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffa5]
    and $41
    jr z, jr_001_4b2a

    ld e, $01
    ld bc, $4a87
    jp Jump_000_37f4


jr_001_4b2a:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_4b38

    ld e, $01
    ld bc, $4bb5
    jp Jump_000_37f4


jr_001_4b38:
    call Call_000_3765
    jr nc, jr_001_4b45

    ld e, $01
    ld bc, $4b55
    jp Jump_000_37f4


jr_001_4b45:
    call Call_000_36e6
    jr nc, jr_001_4b52

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4b52:
    jp Jump_000_37f7


    db $0f, $50, $0d, $0d, $51, $3a, $03, $68, $4b, $41, $01, $1a, $00, $0d, $57, $3a
    db $06, $ea, $4a

    call Call_000_359a
    ld e, $20
    ld bc, $fe80
    call Call_000_0d54
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_4b98

    ld e, $01
    ld bc, $4bb5
    jp Jump_000_37f4


jr_001_4b98:
    call Call_000_377c
    jr nc, jr_001_4ba5

    ld e, $01
    ld bc, $4b62
    jp Jump_000_37f4


jr_001_4ba5:
    call Call_000_36e6
    jr nc, jr_001_4bb2

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4bb2:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0a, $03, $d6, $4b, $41, $0d, $af, $0f, $00, $08, $00
    db $24, $1a, $19, $1b, $0c, $19, $0d, $0c, $0d, $0e, $38, $12, $48, $4a, $06, $c6
    db $44

    ld e, $14
    ld bc, $0100
    call Call_000_0d23
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    call Call_000_3765
    jr nc, jr_001_4c02

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_4c02:
    jp Jump_000_37f7


    db $0b, $d9, $44, $0d, $48, $3a, $0d, $92, $0f, $07, $00, $00, $06, $c6, $44, $0f
    db $50, $00, $0f, $52, $00, $03, $28, $4c, $41, $04, $40, $4f, $0a, $0f, $46, $00
    db $01, $00, $00

    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_4c49

    ld e, $01
    ld bc, $4d46
    jp Jump_000_37f4


jr_001_4c49:
    call Call_000_37bd
    jr nc, jr_001_4c56

    ld e, $01
    ld bc, $4d46
    jp Jump_000_37f4


jr_001_4c56:
    call Call_001_7a55
    jr nc, jr_001_4c63

    ld e, $01
    ld bc, $4c81
    jp Jump_000_37f4


jr_001_4c63:
    ldh a, [$ffa5]
    and $02
    jr z, jr_001_4c71

    ld e, $01
    ld bc, $4de6
    jp Jump_000_37f4


jr_001_4c71:
    call Call_000_36e6
    jr nc, jr_001_4c7e

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4c7e:
    jp Jump_000_37f7


    db $0f, $50, $01, $0f, $52, $00, $03, $c4, $4c, $41, $04, $40, $4f, $0a, $0f, $46
    db $00, $0d, $3c, $38, $0e, $06, $a3, $4c, $b2, $4c, $c1, $4c

    and e
    ld c, h
    or d
    ld c, h
    pop bc
    ld c, h

    db $19, $02, $08, $19, $03, $0a, $19, $02, $08, $19, $01, $0a

    ld b, $a3
    ld c, h

    db $19, $02, $06

    add hl, de
    inc bc
    ld b, $19
    ld [bc], a
    ld b, $19
    ld bc, $0606
    or d
    ld c, h

    db $01, $1f, $00

    call Call_000_359a
    call Call_000_3602
    call Call_001_7c8e
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_4ce5

    ld e, $01
    ld bc, $4c14
    jp Jump_000_37f4


jr_001_4ce5:
    call Call_001_7adb
    jr nc, jr_001_4cf2

    ld e, $01
    ld bc, $4d46
    jp Jump_000_37f4


jr_001_4cf2:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_4d01

    ld e, $01
    ld bc, $4c14
    jp Jump_000_37f4


jr_001_4d01:
    call Call_000_37bd
    jr nc, jr_001_4d0e

    ld e, $01
    ld bc, $4d46
    jp Jump_000_37f4


jr_001_4d0e:
    call Call_000_36e6
    jr nc, jr_001_4d1b

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4d1b:
    call Call_000_374e
    jr nc, jr_001_4d28

    ld e, $01
    ld bc, $4c81
    jp Jump_000_37f4


jr_001_4d28:
    ldh a, [$ffa5]
    and $02
    jr z, jr_001_4d36

    ld e, $01
    ld bc, $4de6
    jp Jump_000_37f4


jr_001_4d36:
    call Call_000_377c
    jr nc, jr_001_4d43

    ld e, $01
    ld bc, $4eb6
    jp Jump_000_37f4


jr_001_4d43:
    jp Jump_000_37f7


    db $0f, $50, $05, $0f, $52, $00, $03, $87, $4d, $41, $10, $6f, $0e, $03, $5a, $4d
    db $7d, $4d, $64, $4d, $04, $40, $4f, $0a, $0f, $46, $00, $01, $1f, $00, $04, $86
    db $54, $08, $10, $83, $1a, $46, $24, $48, $19, $00, $0a, $19, $01, $0a, $19, $02
    db $0a, $19, $03, $0a, $06, $6c, $4d, $04, $40, $4f, $0a, $0f, $46, $00, $01, $11
    db $00

    call Call_000_359a
    call Call_001_7d16
    call Call_001_7cca
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_4dab

    ld e, $01
    ld bc, $44c6
    jp Jump_000_37f4


jr_001_4dab:
    call Call_000_3943
    call Call_000_37cb
    jr nc, jr_001_4dbb

    ld e, $01
    ld bc, $4d46
    jp Jump_000_37f4


jr_001_4dbb:
    ldh a, [$ffa5]
    and $02
    jr z, jr_001_4dc9

    ld e, $01
    ld bc, $4de6
    jp Jump_000_37f4


jr_001_4dc9:
    call Call_000_377c
    jr nc, jr_001_4dd6

    ld e, $01
    ld bc, $4eb6
    jp Jump_000_37f4


jr_001_4dd6:
    call Call_000_36e6
    jr nc, jr_001_4de3

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_4de3:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0c, $03, $7a, $4e, $41, $04, $86, $54, $08, $10, $83
    db $1a, $46, $0d, $78, $7d, $0d, $8b, $7d, $05, $06, $24, $15, $03, $47, $4e, $41
    db $0e, $03, $0e, $4e, $2c, $4e, $1d, $4e, $19, $0b, $04

    add hl, de
    inc c
    inc b
    add hl, de
    dec c
    inc b
    add hl, de
    ld c, $04
    ld b, $0e
    ld c, [hl]

    db $19, $07, $04

    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    add hl, de
    ld a, [bc]
    inc b
    ld b, $1d
    ld c, [hl]

    db $19, $0f, $04

    add hl, de
    db $10
    inc b
    add hl, de
    ld de, $1904
    ld [de], a
    inc b
    ld b, $2c
    ld c, [hl]

    db $03, $7a, $4e, $41, $0d, $8b, $7d, $05, $06, $06, $c6, $44

    call Call_001_7a1b
    call Call_001_4e8d
    call Call_000_3ae9
    call Call_001_7d9c
    jr nc, jr_001_4e5d

    ld e, $01
    ld bc, $4e00
    jp Jump_000_37f4


jr_001_4e5d:
    call Call_000_375b
    jr nc, jr_001_4e6a

    ld e, $01
    ld bc, $4e3b
    jp Jump_000_37f4


jr_001_4e6a:
    call Call_000_377c
    jr nc, jr_001_4e77

    ld e, $01
    ld bc, $4eb6
    jp Jump_000_37f4


jr_001_4e77:
    jp Jump_000_37f7


    call Call_001_7a1b
    call Call_000_377c
    jr nc, jr_001_4e8a

    ld e, $01
    ld bc, $4eb6
    jp Jump_000_37f4


jr_001_4e8a:
    jp Jump_000_37f7


Call_001_4e8d:
    ld e, $27
    ld a, [de]
    ld hl, $4ea1
    add a
    add l
    ld l, a
    jr nc, jr_001_4e99

    inc h

jr_001_4e99:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $02
    jp Jump_000_3aaa


    db $a7, $4e, $ac, $4e, $b1, $4e, $03, $00, $f0, $06, $09, $03, $00, $10, $06, $09
    db $03, $10, $00, $09, $06, $0d, $57, $3a, $04, $40, $4f, $0a, $0f, $46, $00, $0d
    db $92, $0f, $07, $00, $08, $06, $97, $46, $0d, $77, $0f, $0f, $10, $51, $0e, $0e
    db $21, $4f, $36, $51, $21, $4f

    db $21
    ld c, a

    db $4d, $4f, $aa, $51, $13, $52, $6c, $52

    ld hl, $aa4f
    ld d, c
    inc de
    ld d, d
    ld l, h
    ld d, d
    and $51
    db $ed
    ld c, [hl]
    dec c
    ld a, [de]
    ld c, a
    rrca
    ld d, h
    add b
    jr jr_001_4f04

    ccf
    nop
    db $10
    ld d, e
    ld a, [de]
    ld b, l
    db $10
    dec a
    ld de, $4f0a
    inc h
    ld b, $26
    add b

jr_001_4f04:
    cp $01
    ld b, $06
    ld de, $244f
    ld c, d
    ld [$ff40], sp
    ld bc, $0309
    ret


    ld [hl], c
    ld b, c
    dec b
    ld e, $06
    xor b
    ld d, d
    ld a, [$db78]
    ld [$cd00], a
    ret


    db $0f, $54, $80, $0f, $46, $00, $18, $10, $53, $1a, $45, $0d, $3f, $4f, $12, $66
    db $51, $0d, $16, $53, $0e, $04, $8f, $4f

    and [hl]
    ld c, a
    jp $8d50


    ld d, b

    ld a, [$a050]
    cp $0d
    ld a, $00
    jr nz, jr_001_4f49

    inc a

jr_001_4f49:
    ld e, $27
    ld [de], a
    ret


    db $0d, $21, $53, $12, $21, $4f

    rrca
    ld d, h
    add b
    rrca
    ld b, [hl]
    nop
    jr jr_001_4f6b

    ld d, e
    ld a, [de]
    ld b, l
    dec c
    ccf
    ld c, a
    ld [de], a
    ld a, e
    ld c, a
    ld h, $80
    cp $24
    ld b, $04
    ld a, b

jr_001_4f6b:
    ld d, d
    ld a, [bc]
    ld bc, $0b04
    ld a, l
    ld d, c
    inc bc
    sub $52
    ld b, c
    dec b
    ld e, $06
    xor b
    ld d, d
    inc h
    ld b, $04
    ld a, b
    ld d, d
    ld a, [bc]
    ld h, $c0
    cp $01
    ld e, $03
    sub $52
    ld b, c
    dec b
    ld e, $06
    xor b
    ld d, d

    db $26, $80, $fe, $24, $06, $04, $40, $4f, $0a, $01, $09, $0b, $7d, $51, $03, $d6
    db $52, $41, $05, $1e, $06, $a8, $52

    inc h
    ld c, d
    inc b
    ld l, $70
    ld a, [bc]
    ld h, $80
    rst $38
    ld [$fe00], sp
    ld bc, $0b01
    ld a, l
    ld d, c
    inc bc
    inc c
    ld d, b
    ld b, c
    rrca
    ld a, [hl-]
    ld a, b
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld b, $02
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [$0602], sp
    cp [hl]
    ld c, a
    rrca
    ld a, [hl-]
    ld a, b
    dec c
    ld d, $53
    inc d
    inc bc
    db $e4
    ld c, a
    ld [hl+], a
    ld bc, $0150
    rrca
    ld d, h
    add h
    ld [$fd40], sp
    inc bc
    dec a
    ld d, b
    ld b, c
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    add hl, de
    add hl, bc
    inc b
    add hl, de
    dec bc
    inc b
    add hl, de
    inc c
    inc b
    add hl, de
    ld a, [bc]
    inc b
    ld b, $f2
    ld c, a
    dec c
    sub d
    rrca
    ld [$0000], sp
    dec b
    inc c
    ld b, $01
    ld d, b
    call Call_001_507a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_502a

    ld e, $01
    ld bc, $4fd6
    jp Jump_000_37f4


jr_001_502a:
    call Call_000_3957
    call Call_001_506e
    jr nc, jr_001_503a

    ld e, $01
    ld bc, $52a8
    jp Jump_000_37f4


jr_001_503a:
    jp Jump_000_37f7


    call Call_001_7a42
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_505b

    ld e, $01
    ld bc, $52a8
    jp Jump_000_37f4


jr_001_505b:
    call Call_000_3957
    call Call_001_506e
    jr nc, jr_001_506b

    ld e, $01
    ld bc, $52a8
    jp Jump_000_37f4


jr_001_506b:
    jp Jump_000_37f7


Call_001_506e:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_001_5078

    dec a
    ld [de], a
    and a
    ret


jr_001_5078:
    scf
    ret


Call_001_507a:
    ld a, [$a070]
    or a
    ld e, $10
    ld bc, $0280
    jr z, jr_001_508a

    ld e, $04
    ld bc, $00e0

jr_001_508a:
    jp Jump_000_0d23


    inc h
    ld c, e
    inc b
    ld l, $70
    ld a, [bc]
    ld h, $80
    rst $38
    ld [$fe00], sp
    ld bc, $0b04
    ld a, l
    ld d, c
    inc bc
    inc c
    ld d, b
    ld b, c
    rrca
    ld a, [hl-]
    ld a, b
    dec b
    inc bc
    ld [hl+], a
    cp d
    ld d, b
    ld bc, $0119
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld b, $ab
    ld d, b
    dec c
    ld [hl], a
    rrca
    add hl, bc
    dec b
    ld [$ba06], sp
    ld d, b
    inc h
    ld c, c
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    jr jr_001_50cc

    add hl, bc

jr_001_50cc:
    dec bc
    ld a, l
    ld d, c
    inc bc
    dec b
    ld d, c
    ld b, c
    rrca
    ld a, [hl-]
    inc a
    inc b
    ld d, d
    ld l, a
    dec bc
    ld [$fe80], sp
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    dec b
    ld [bc], a
    inc b
    ld l, $70
    ld a, [bc]
    ld bc, $0000
    jr jr_001_50f3

    ld l, $70
    ld a, [bc]
    add hl, de

jr_001_50f3:
    nop
    add hl, de
    inc b
    ld d, d
    ld l, a
    dec bc
    add hl, de
    inc b
    inc b
    add hl, de
    ld b, $04
    add hl, de
    dec b
    inc b
    ld b, $a8
    ld d, d
    call Call_001_507a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    jr nc, jr_001_5123

    ld e, $01
    ld bc, $50ed
    jp Jump_000_37f4


jr_001_5123:
    call Call_000_3957
    call Call_001_506e
    jr nc, jr_001_5133

    ld e, $01
    ld bc, $52a8
    jp Jump_000_37f4


jr_001_5133:
    jp Jump_000_37f7


    db $0f, $54, $80, $0f, $46, $00, $18, $10, $53, $1a, $45, $24, $06, $04, $40, $4f
    db $0a, $26, $c0, $fe, $01, $15, $10, $5b, $14, $ff, $5a, $51

    dec c
    ld hl, $1153
    ld e, d
    ld d, c
    db $01
    add hl, bc

    db $0b, $7d, $51, $03, $d6, $52, $41, $05, $1e, $06, $a8, $52, $24, $06, $04, $40
    db $4f, $0a, $26, $c0, $fe, $01, $19, $0b, $7d, $51, $03, $d6, $52, $41, $05, $1e
    db $06, $a8, $52, $0d, $21, $53, $11, $a9, $51, $10, $5b, $14, $ff, $a9, $51, $24
    db $27, $0b, $b4, $40, $10, $71, $0e, $04, $9a, $51, $9e, $51, $a2, $51, $a6, $51
    db $0f, $51, $00, $0c, $0f, $51, $05, $0c, $0f, $51, $06, $0c, $0f, $51, $07, $0c
    db $24, $06, $0f, $54, $80, $18, $10, $53, $1a, $45, $26, $00, $ff, $04, $2c, $57
    db $0a, $01, $02, $0b, $7d, $51, $03, $dc, $52, $41, $10, $51, $14, $09

    sub $51

    db $09, $08, $19, $05, $02, $19, $06, $02, $0a, $06, $a8, $52

    inc b
    jp hl


    ld d, a
    ld a, [bc]
    add hl, bc
    ld [$0b19], sp
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    ld a, [bc]
    ld b, $a8
    ld d, d
    rrca
    ld a, [hl-]
    ld bc, $0624
    rrca
    ld d, h
    add b
    jr jr_001_51f3

    rst $20
    ld d, d
    ld b, c

jr_001_51f3:
    ld h, $c0
    cp $04
    ld c, h
    ld e, h
    ld a, [bc]
    add hl, bc
    ld [$0b19], sp
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    ld a, [bc]
    ld b, $a8
    ld d, d
    inc b
    inc l
    ld d, a
    ld a, [bc]
    ld bc, $0b02
    ld a, l
    ld d, c
    dec de
    nop
    ld b, b
    ld [bc], a

    db $0d, $52, $52, $24, $06, $0f, $54, $80, $18, $10, $53, $1a, $45, $26, $00, $ff
    db $04, $99, $5e, $0a, $01, $02, $0b, $7d, $51, $03, $00, $53, $41, $10, $51, $14
    db $0a

    ld b, d
    ld d, d

    db $09, $08, $19, $05, $02, $19, $06, $02, $0a, $06, $a8, $52

    inc b
    and a
    ld e, a
    ld a, [bc]
    add hl, bc
    ld [$0b19], sp
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    ld a, [bc]
    ld b, $a8
    ld d, d

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


    db $24, $06, $0f, $54, $80, $18, $10, $53, $1a, $45, $26, $00, $ff, $04, $29, $65
    db $0a, $01, $02, $0b, $7d, $51, $03, $0b, $53, $41, $10, $51, $14, $0b

    sbc b
    ld d, d

    db $09, $08, $19, $06, $02, $19, $07, $02, $0a, $06, $a8, $52

    inc b
    ld bc, $0a66
    add hl, bc
    ld [$0b19], sp
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    ld a, [bc]
    ld b, $a8
    ld d, d

    db $0d, $c9, $52, $11, $b7, $52

    dec c
    ld h, a
    db $10
    dec b
    inc a
    dec c
    ret nc

    ld d, d
    nop

    db $0d, $21, $53, $11, $c3, $52, $0f, $54, $60, $06, $3c, $40, $0f, $54, $00, $06
    db $44, $40

    ld a, [$db73]
    ld e, $27
    ld [de], a
    ret


    ld a, $05
    ld [$a082], a
    ret


    call Call_001_7a1b
    jp Jump_000_37f7


    ld hl, $7ea8
    ld a, $02
    call Call_000_05cf
    jp Jump_000_37f7


    ld hl, $7ea8
    ld a, $02
    call Call_000_05cf
    ld e, $7c
    ld a, [de]
    or a
    jr z, jr_001_52fd

    ld e, $01
    ld bc, $52a8
    jp Jump_000_37f4


jr_001_52fd:
    jp Jump_000_37f7


    ld hl, $7ee2
    ld a, $02
    call Call_000_05cf
    jp Jump_000_37f7


    ld hl, $7f1c
    ld a, $02
    call Call_000_05cf
    jp Jump_000_37f7


    ld e, $44
    ld a, [de]
    swap a
    and $0f
    ld e, $27
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    and $0f
    ld e, $27
    ld [de], a
    ret


jr_001_532a:
    push bc
    ld bc, $b2b3
    ld a, $2f
    ldh [$ff84], a
    call Call_000_0f67
    ldh a, [$ff9a]
    ld d, a
    ld a, h
    or a
    jr z, jr_001_5354

    ld l, $48
    ld [hl], d
    ld l, $45
    ld e, l
    ld a, [de]
    xor $80
    ld [hl], a
    ld a, [$a074]
    ld l, $39
    ld [hl], a
    ld a, [$a05b]
    ld l, $3c
    ld [hl], a
    pop bc
    ret


jr_001_5354:
    ld h, $b2
    call Call_000_0bba
    pop bc
    ldh a, [$ff9a]
    ld d, a
    jr jr_001_532a

    dec c
    ld [hl], a
    rrca
    rrca
    db $10
    ld d, c
    ld c, $0e
    sub h
    ld c, a
    sub h
    ld c, a
    sub h
    ld c, a
    sub h
    ld c, a
    sub h
    ld c, a
    or a
    ld d, c
    inc hl
    ld d, d
    ld a, c
    ld d, d
    sub h
    ld c, a
    or a
    ld d, c
    inc hl
    ld d, d
    ld a, c
    ld d, d
    or a
    ld d, c
    sub h
    ld c, a
    dec c
    adc c
    ld d, e
    ld b, $9b
    ld d, e
    ld e, $71
    ld a, [de]
    or a
    ld e, $4c
    jr z, jr_001_5393

    ld e, $72

jr_001_5393:
    xor a
    ld [de], a
    ret


    db $10, $71, $12, $66, $54, $18, $0d, $67, $10, $0d, $29, $54, $11

    xor h
    ld d, e

    db $0f, $51, $00, $0d, $4f, $3c, $00, $24, $20, $0d, $b6, $10, $ff, $0d, $77, $0f
    db $0e, $0d, $29, $54, $12, $c3, $53

    db $10
    dec a
    ld [de], a
    jp Jump_000_0153


    add hl, bc

    db $05, $3c, $0d, $54, $10, $0d, $b6, $10, $02, $0f, $39, $00, $09, $08, $0d, $32
    db $54, $0a, $22, $50, $54, $01, $03, $5b, $54, $41, $08, $80, $fc, $0d, $29, $54
    db $11

    rst $38
    ld d, e

    db $0f, $46, $00, $04, $40, $4f, $0a, $09, $07, $19, $09, $08, $19, $0b, $08, $19
    db $0c, $08, $19, $0a, $08, $0a, $06, $25, $54

    db $10
    dec a
    ld de, $5416
    add hl, bc
    ld c, $19
    ld b, $04
    add hl, de
    rla
    inc b
    add hl, de
    jr jr_001_5413

    add hl, de
    add hl, de
    inc b
    ld a, [bc]

jr_001_5413:
    ld b, $25
    ld d, h
    add hl, bc
    inc e
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    inc de
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    add hl, de
    dec d
    ld [bc], a
    ld a, [bc]

    db $0f, $82, $02, $16

    ld a, [$a051]
    sub $0d
    ld e, $27
    ld [de], a
    ret


    push de
    push bc
    ld a, $23
    ldh [$ff84], a
    ld bc, $a0b3
    call Call_000_0f67
    pop bc
    pop de
    ld a, h
    or a
    ld e, $39
    ld a, [de]
    jr z, jr_001_544d

    ld l, $48
    ld [hl], d
    ld l, $39
    ld [hl], a

jr_001_544d:
    inc a
    ld [de], a
    ret


    db $0d, $50, $0f, $24, $a0, $b3, $05, $08, $06, $50, $54

    ld e, $1e
    ld bc, $0380
    call Call_000_0d35
    jp Jump_000_0da4


    db $0d, $77, $0f, $0f, $04, $40, $4f, $0a, $26, $80, $fe, $01, $09, $0f, $51, $00
    db $0b, $4e, $41, $03, $d6, $52, $41, $0f, $54, $80, $05, $1e, $0f, $54, $60, $0d
    db $ed, $77, $0e, $03, $bf, $44

    ld sp, $5456
    ld h, c
    rla
    dec b
    ld c, $0d
    xor h
    ld d, h
    inc bc
    dec h
    ld d, l
    ld b, c
    rrca
    ld e, b
    rst $38
    db $10
    ld [hl], c
    ld c, $04
    rst $00
    ld d, h
    db $ec
    ld d, h
    rst $38
    ld d, h
    ld [de], a
    ld d, l
    ld bc, $00ff
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    ld e, l
    ld a, [hl]
    ld [de], a
    ld a, $0a
    ld [$a081], a
    xor a
    ld [$a080], a
    ld hl, $4da9
    ld a, $03
    call Call_000_05cf
    ret


    dec c
    db $e3
    ld d, h
    rrca
    ld d, h
    add b
    rrca
    ld d, b
    nop
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    add hl, de
    add hl, bc
    inc b
    add hl, de
    ld a, [bc]
    inc b
    add hl, de
    dec bc
    inc b
    add hl, de
    inc c
    inc b
    ld b, $d4
    ld d, h
    ld hl, $79f4
    ld a, $01
    call Call_000_05cf
    ret


    rrca
    ld d, c
    dec b
    inc b
    inc l
    ld d, a
    ld a, [bc]
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    ld b, $f3
    ld d, h
    rrca
    ld d, c
    ld b, $04
    sbc c
    ld e, [hl]
    ld a, [bc]
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    ld b, $06
    ld d, l
    rrca
    ld d, c
    rlca
    inc b
    add hl, hl
    ld h, l
    ld a, [bc]
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    ld b, $19
    ld d, l
    ld hl, $4df5
    ld a, $03
    call Call_000_05cf
    ld a, e
    or a
    ret z

    ld e, $48
    ld a, [de]
    ld h, a
    ld e, $1d
    ld bc, $51a3
    call Call_000_0849
    ld e, $01
    ld bc, $54a9
    jp Jump_000_0846


    dec c
    adc b
    ld d, l
    rrca
    ld c, b
    rst $38
    inc bc
    sub d
    ld d, l
    ld b, c
    rla
    adc $0d
    inc b
    ld d, d
    ld l, a
    dec bc
    jr jr_001_557d

    nop
    inc b
    db $10
    ld [hl], c
    ld [de], a
    ld l, l
    ld d, l
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
    ld b, $5e
    ld d, l
    add hl, de
    ld bc, $1903
    ld [bc], a
    inc bc
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

jr_001_557d:
    ld c, $03
    add hl, de
    rrca
    inc bc
    add hl, de
    db $10
    inc bc
    ld b, $6d
    ld d, l
    ld e, $48
    ld a, [de]
    ld h, a
    ld e, $45
    ld l, e
    ld a, [hl]
    ld [de], a
    ret


    call Call_000_0da4
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    ld b, a
    ld e, $45
    ld a, [de]
    rla
    ld a, b
    jr c, jr_001_55a9

    cp $98
    jr nc, jr_001_55ac

    ret


jr_001_55a9:
    cp $08
    ret nc

jr_001_55ac:
    ld e, $01
    ld bc, $55b4
    jp Jump_000_0846


    inc h
    inc [hl]
    dec c
    ld [hl], a
    rrca
    ld de, $1303
    ld d, [hl]
    ld b, c
    ld h, $a0
    rst $38
    ld [$fe80], sp
    db $10
    ld [hl], c
    ld c, $04
    ret nc

    ld d, l
    db $e3
    ld d, l
    di
    ld d, l
    inc bc
    ld d, [hl]
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    ld b, $d4
    ld d, l
    inc b
    inc l
    ld d, a
    ld a, [bc]
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    ld b, $e7
    ld d, l
    inc b
    sbc c
    ld e, [hl]
    ld a, [bc]
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    ld b, $f7
    ld d, l
    inc b
    add hl, hl
    ld h, l
    ld a, [bc]
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    ld b, $07
    ld d, [hl]
    ld a, $08
    call Call_000_0c94
    call Call_000_0da4
    ld e, $10
    ld a, [de]
    rla
    ret c

    ld b, $02
    ld e, $44
    ld a, b
    ld [de], a
    call Call_000_3a8b
    ld e, $01
    ld bc, $535f
    jp Jump_000_0846


    db $0b, $4b, $56, $04, $40, $4f, $0a, $0d, $40, $7b, $0e, $07, $4f, $56, $fe, $56
    db $c8, $58

    adc e
    ld e, h
    or l
    ld e, l
    ld l, $5e
    rst $38
    ld e, [hl]

    db $0f, $51, $02, $0c, $0f, $50, $00, $03, $7d, $56, $41, $10, $52, $11, $74, $56
    db $14, $03, $64, $56, $01, $04, $06, $6d, $56, $0d, $2b, $7b, $08

    rlca

    db $03, $77, $56, $41, $0b, $1f, $7b, $03, $7d, $56, $41, $01, $00, $00

    ld hl, $0807
    call Call_001_7baf
    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_569e

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_569e:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_56ac

    ld e, $01
    ld bc, $581e
    jp Jump_000_37f4


jr_001_56ac:
    call Call_000_3650
    jr nc, jr_001_56b9

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_56b9:
    call Call_001_7a55
    jr nc, jr_001_56c6

    ld e, $01
    ld bc, $56fe
    jp Jump_000_37f4


jr_001_56c6:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_56d4

    ld e, $01
    ld bc, $5b9b
    jp Jump_000_37f4


jr_001_56d4:
    call Call_000_36e6
    jr nc, jr_001_56e1

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_56e1:
    call Call_000_3619
    jr nc, jr_001_56ee

    ld e, $01
    ld bc, $5be9
    jp Jump_000_37f4


jr_001_56ee:
    call Call_000_3724
    jr nc, jr_001_56fb

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_56fb:
    jp Jump_000_37f7


    db $0f, $50, $01, $03, $5f, $57, $41, $10, $52, $11, $0f, $57, $01, $04, $0b, $1f
    db $7b, $0d, $3c, $38, $0e, $06, $20, $57

    cpl
    ld d, a
    ld a, $57
    ld b, c
    ld d, a
    ld d, b
    ld d, a
    ld a, $57

    db $19, $02, $08, $19, $03, $0a, $19, $02, $08, $19, $01, $0a, $06, $20, $57

    add hl, de
    ld [bc], a
    ld b, $19
    inc bc
    ld b, $19
    ld [bc], a
    ld b, $19
    ld bc, $0606
    cpl
    ld d, a
    ld bc, $001f
    add hl, de
    ld [bc], a
    inc bc
    add hl, de
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc bc
    add hl, de
    ld bc, $0604
    ld b, c
    ld d, a
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $0604
    cpl
    ld d, a

    call Call_000_359a
    call Call_001_7c45

Jump_001_5765:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_577d

    ld e, $01
    ld bc, $564f
    jp Jump_000_37f4


jr_001_577d:
    call Call_001_7adb
    jr nc, jr_001_578a

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_578a:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_5798

    ld e, $01
    ld bc, $581e
    jp Jump_000_37f4


jr_001_5798:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_57a7

    ld e, $01
    ld bc, $564f
    jp Jump_000_37f4


jr_001_57a7:
    call Call_000_3650
    jr nc, jr_001_57b4

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_57b4:
    call Call_000_373b
    jr nc, jr_001_57c1

    ld e, $01
    ld bc, $5806
    jp Jump_000_37f4


jr_001_57c1:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_57cf

    ld e, $01
    ld bc, $5b9b
    jp Jump_000_37f4


jr_001_57cf:
    call Call_000_36e6
    jr nc, jr_001_57dc

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_57dc:
    call Call_000_3619
    jr nc, jr_001_57e9

    ld e, $01
    ld bc, $5be9
    jp Jump_000_37f4


jr_001_57e9:
    call Call_000_374e
    jr nc, jr_001_57f6

    ld e, $01
    ld bc, $56fe
    jp Jump_000_37f4


jr_001_57f6:
    call Call_000_3724
    jr nc, jr_001_5803

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_5803:
    jp Jump_000_37f7


    db $0f, $50, $03, $24, $0d, $03, $15, $58, $41, $0d, $ff, $37, $06, $0f, $57

    call Call_000_359a
    call Call_001_7c20
    jp Jump_001_5765


    db $0f, $50, $04, $03, $44, $58, $41, $08, $70, $fc, $24, $04, $06, $34, $58, $08
    db $50, $ff, $03, $68, $58, $41, $01, $20, $05, $01, $10, $10, $14, $80, $36, $58
    db $0f, $39, $1d, $06, $cb, $58

    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_001_5855

    ld e, $01
    ld bc, $582d
    jp Jump_000_37f4


jr_001_5855:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_001_5868

    ld h, d
    ld l, $1f
    ld [hl], $41
    inc l
    ld [hl], $58
    inc l
    ld [hl], $68

jr_001_5868:
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_5891

    ld e, $01
    ld bc, $5638
    jp Jump_000_37f4


jr_001_5891:
    call Call_000_39c1
    jr nc, jr_001_589e

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_589e:
    call Call_000_3650
    jr nc, jr_001_58ab

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_58ab:
    call Call_000_36e6
    jr nc, jr_001_58b8

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_58b8:
    call Call_000_3614
    jr nc, jr_001_58c5

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_58c5:
    jp Jump_000_37f7


    db $0f, $39, $1d, $0f, $50, $05, $03, $15, $59, $41, $10, $52, $11, $f9, $58, $14
    db $03, $e9, $58

    inc d
    ld [bc], a
    db $e4
    ld e, b
    ld bc, $0605
    ldh a, [c]
    ld e, b
    ld bc, $0604
    ldh a, [c]
    ld e, b

    db $0d, $2b, $7b, $08

    rlca

    db $03, $0f, $59, $41, $0b, $1f, $7b, $03, $15, $59, $41, $01, $1f, $05, $01, $10
    db $10, $14, $80, $fb, $58, $10, $39, $15

    db $10
    db $10
    inc d
    add b
    ei
    ld e, b
    ld b, $aa
    ld e, c

    ld hl, $0807
    call Call_001_7baf
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a8c
    call Call_000_3992
    jr nc, jr_001_593e

    ld e, $01
    ld bc, $5638
    jp Jump_000_37f4


jr_001_593e:
    call Call_000_39c1
    jr nc, jr_001_594b

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_594b:
    ld e, $52
    ld a, [de]
    or a
    jr z, jr_001_5959

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5959:
    call Call_000_3650
    jr nc, jr_001_5966

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_5966:
    call Call_000_3619
    jr nc, jr_001_5973

    ld e, $01
    ld bc, $5be9
    jp Jump_000_37f4


jr_001_5973:
    call Call_000_3765
    jr nc, jr_001_5980

    ld e, $01
    ld bc, $5da6
    jp Jump_000_37f4


jr_001_5980:
    call Call_000_36e6
    jr nc, jr_001_598d

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_598d:
    call Call_000_3724
    jr nc, jr_001_599a

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_599a:
    call Call_000_3614
    jr nc, jr_001_59a7

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_59a7:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    dec c
    dec de
    ld c, b
    inc bc
    or a
    ld e, c
    ld b, c
    ld bc, $0011
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld hl, $5a4b
    ld a, $01
    call Call_000_3aaa
    call Call_001_7d6e
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_59eb

    ld e, $01
    ld bc, $5aef
    jp Jump_000_37f4


jr_001_59eb:
    call Call_000_39c1
    jr nc, jr_001_59f8

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_59f8:
    ld hl, $a06c
    bit 3, [hl]
    jr z, jr_001_5a07

    ld e, $01
    ld bc, $5a50
    jp Jump_000_37f4


jr_001_5a07:
    call Call_000_3650
    jr nc, jr_001_5a14

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_5a14:
    call Call_000_3619
    jr nc, jr_001_5a21

    ld e, $01
    ld bc, $5be9
    jp Jump_000_37f4


jr_001_5a21:
    call Call_000_3765
    jr nc, jr_001_5a2e

    ld e, $01
    ld bc, $5da6
    jp Jump_000_37f4


jr_001_5a2e:
    call Call_000_36e6
    jr nc, jr_001_5a3b

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5a3b:
    call Call_000_3614
    jr nc, jr_001_5a48

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5a48:
    jp Jump_000_37f7


    ld [bc], a
    nop
    nop
    inc b
    ld [$4008], sp
    db $fd
    inc bc
    ld e, d
    ld e, d
    ld b, c
    ld bc, $0011
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a8c
    call Call_000_3992
    jr nc, jr_001_5a83

    ld e, $01
    ld bc, $5638
    jp Jump_000_37f4


jr_001_5a83:
    call Call_000_39c1
    jr nc, jr_001_5a90

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5a90:
    ld e, $10
    ld a, [de]
    rla
    jr c, jr_001_5a9e

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5a9e:
    call Call_000_3650
    jr nc, jr_001_5aab

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_5aab:
    call Call_000_3619
    jr nc, jr_001_5ab8

    ld e, $01
    ld bc, $5be9
    jp Jump_000_37f4


jr_001_5ab8:
    call Call_000_3765
    jr nc, jr_001_5ac5

    ld e, $01
    ld bc, $5da6
    jp Jump_000_37f4


jr_001_5ac5:
    call Call_000_36e6
    jr nc, jr_001_5ad2

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5ad2:
    call Call_000_3724
    jr nc, jr_001_5adf

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_5adf:
    call Call_000_3614
    jr nc, jr_001_5aec

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5aec:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc h
    ld d, l
    inc bc
    ld [$415b], sp
    dec c
    ld [hl], a
    rrca
    nop
    ld bc, $0811
    ld b, b
    db $fd
    nop
    ld e, $40
    ld bc, $0280
    call Call_000_0d23
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_5b2b

    ld e, $01
    ld bc, $5638
    jp Jump_000_37f4


jr_001_5b2b:
    call Call_000_39c1
    jr nc, jr_001_5b38

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5b38:
    call Call_000_3619
    jr nc, jr_001_5b45

    ld e, $01
    ld bc, $5be9
    jp Jump_000_37f4


jr_001_5b45:
    call Call_000_3765
    jr nc, jr_001_5b52

    ld e, $01
    ld bc, $5da6
    jp Jump_000_37f4


jr_001_5b52:
    call Call_000_3614
    jr nc, jr_001_5b5f

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5b5f:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    dec b
    inc bc
    ld [hl], l
    ld e, e
    ld b, c
    dec c
    xor a
    dec [hl]
    add hl, de
    rra
    ld bc, $3806
    ld d, [hl]
    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_5b98

    ld e, $01
    ld bc, $5638
    jp Jump_000_37f4


jr_001_5b98:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    ld b, $24
    dec c
    inc bc
    xor b
    ld e, e
    ld b, c
    nop
    call Call_001_7c2e
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_001_7adb
    jr nc, jr_001_5bc6

    ld e, $01
    ld bc, $58c8
    jp Jump_000_37f4


jr_001_5bc6:
    call Call_000_36a5
    jr nc, jr_001_5bd3

    ld e, $01
    ld bc, $5b62
    jp Jump_000_37f4


jr_001_5bd3:
    ldh a, [$ffa5]
    bit 7, a
    jr nz, jr_001_5be1

    ld e, $01
    ld bc, $5638
    jp Jump_000_37f4


jr_001_5be1:
    ld e, $15
    ld a, $04
    ld [de], a
    jp Jump_000_37f7


    db $0d, $a2, $35, $24, $30, $03, $fe, $5b, $41, $19, $0d, $08, $19, $1b, $08, $19
    db $19, $08, $06, $8b, $5c

    call Call_001_7cfd
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    call Call_000_36e6
    jr nc, jr_001_5c25

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5c25:
    jp Jump_000_37f7


    db $0f, $50, $0d, $03, $3e, $5c, $41, $19, $19, $0a, $19, $1a, $0a, $0d, $0e, $38
    db $12

    cpl
    ld e, h

    db $06, $8b, $5c

    call Call_000_359a
    ld e, $50
    ld bc, $feb3
    call Call_000_0d54
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_5c6e

    ld e, $01
    ld bc, $5d56
    jp Jump_000_37f4


jr_001_5c6e:
    call Call_000_3765
    jr nc, jr_001_5c7b

    ld e, $01
    ld bc, $5cf6
    jp Jump_000_37f4


jr_001_5c7b:
    call Call_000_36e6
    jr nc, jr_001_5c88

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5c88:
    jp Jump_000_37f7


    db $0f, $50, $0d, $03, $9b, $5c, $41, $19, $19, $14

    add hl, de
    ld a, [de]
    inc d
    ld b, $92
    ld e, h

    call Call_000_359a
    ld e, $14
    ld bc, $0100
    call Call_000_0d23
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffa5]
    and $41
    jr z, jr_001_5ccb

    ld e, $01
    ld bc, $5c28
    jp Jump_000_37f4


jr_001_5ccb:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_5cd9

    ld e, $01
    ld bc, $5d56
    jp Jump_000_37f4


jr_001_5cd9:
    call Call_000_3765
    jr nc, jr_001_5ce6

    ld e, $01
    ld bc, $5cf6
    jp Jump_000_37f4


jr_001_5ce6:
    call Call_000_36e6
    jr nc, jr_001_5cf3

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5cf3:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec c
    dec c
    ld d, c
    ld a, [hl-]
    inc bc
    add hl, bc
    ld e, l
    ld b, c
    ld bc, $001a
    dec c
    ld d, a
    ld a, [hl-]
    ld b, $8b
    ld e, h
    call Call_000_359a
    ld e, $20
    ld bc, $fe80
    call Call_000_0d54
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_5d39

    ld e, $01
    ld bc, $5d56
    jp Jump_000_37f4


jr_001_5d39:
    call Call_000_377c
    jr nc, jr_001_5d46

    ld e, $01
    ld bc, $5d03
    jp Jump_000_37f4


jr_001_5d46:
    call Call_000_36e6
    jr nc, jr_001_5d53

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5d53:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0a, $03, $77, $5d, $41, $0d, $af, $0f, $00, $08, $00
    db $24, $1a, $19, $1b, $0c, $19, $0d, $0c, $0d, $0e, $38, $12

    jp hl


    ld e, e

    db $06, $38, $56

    ld e, $14
    ld bc, $0100
    call Call_000_0d23
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    call Call_000_3765
    jr nc, jr_001_5da3

    ld e, $01
    ld bc, $5da6
    jp Jump_000_37f4


jr_001_5da3:
    jp Jump_000_37f7


    dec bc
    ld c, e
    ld d, [hl]
    dec c
    ld c, b
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $38
    ld d, [hl]
    rrca
    ld d, b
    nop
    rrca
    ld d, d
    nop
    inc bc
    ret


    ld e, l
    ld b, c
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    ld bc, $0000
    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_5dea

    ld e, $01
    ld bc, $5eff
    jp Jump_000_37f4


jr_001_5dea:
    call Call_000_37bd
    jr nc, jr_001_5df7

    ld e, $01
    ld bc, $5eff
    jp Jump_000_37f4


jr_001_5df7:
    call Call_001_7a55
    jr nc, jr_001_5e04

    ld e, $01
    ld bc, $5e2e
    jp Jump_000_37f4


jr_001_5e04:
    call Call_000_3650
    jr nc, jr_001_5e11

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_5e11:
    call Call_000_36e6
    jr nc, jr_001_5e1e

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5e1e:
    call Call_000_3724
    jr nc, jr_001_5e2b

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_5e2b:
    jp Jump_000_37f7


    rrca
    ld d, b
    ld bc, $520f
    nop
    inc bc
    ld [hl], c
    ld e, [hl]
    ld b, c
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    dec c
    inc a
    jr c, jr_001_5e51

    ld b, $50
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    ld d, b
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    add hl, de

jr_001_5e51:
    ld [bc], a
    ld [$0319], sp
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$0119], sp
    ld a, [bc]
    ld b, $50
    ld e, [hl]
    add hl, de
    ld [bc], a
    ld b, $19
    inc bc
    ld b, $19
    ld [bc], a
    ld b, $19
    ld bc, $0606
    ld e, a
    ld e, [hl]
    ld bc, $001f
    call Call_000_359a
    call Call_000_3602
    call Call_001_7c8e
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_5e92

    ld e, $01
    ld bc, $5db5
    jp Jump_000_37f4


jr_001_5e92:
    call Call_001_7adb
    jr nc, jr_001_5e9f

    ld e, $01
    ld bc, $5eff
    jp Jump_000_37f4


jr_001_5e9f:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_5eae

    ld e, $01
    ld bc, $5db5
    jp Jump_000_37f4


jr_001_5eae:
    call Call_000_37bd
    jr nc, jr_001_5ebb

    ld e, $01
    ld bc, $5eff
    jp Jump_000_37f4


jr_001_5ebb:
    call Call_000_36e6
    jr nc, jr_001_5ec8

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5ec8:
    call Call_000_374e
    jr nc, jr_001_5ed5

    ld e, $01
    ld bc, $5e2e
    jp Jump_000_37f4


jr_001_5ed5:
    call Call_000_3650
    jr nc, jr_001_5ee2

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_5ee2:
    call Call_000_377c
    jr nc, jr_001_5eef

    ld e, $01
    ld bc, $5fab
    jp Jump_000_37f4


jr_001_5eef:
    call Call_000_3724
    jr nc, jr_001_5efc

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_5efc:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc bc
    ld b, b
    ld e, a
    ld b, c
    db $10
    ld l, a
    ld c, $03
    inc de
    ld e, a
    ld [hl], $5f
    dec e
    ld e, a
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    ld bc, $001f
    inc b
    add [hl]
    ld d, h
    ld [$8310], sp
    ld a, [de]
    ld b, [hl]
    inc h
    ld c, b
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $190a
    ld [bc], a
    ld a, [bc]
    add hl, de
    inc bc
    ld a, [bc]
    ld b, $25
    ld e, a
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    ld bc, $0011
    call Call_000_359a
    call Call_001_7d16
    call Call_001_7cca
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_5f64

    ld e, $01
    ld bc, $5638
    jp Jump_000_37f4


jr_001_5f64:
    call Call_000_3943
    call Call_000_37cb
    jr nc, jr_001_5f74

    ld e, $01
    ld bc, $5eff
    jp Jump_000_37f4


jr_001_5f74:
    call Call_000_3650
    jr nc, jr_001_5f81

    ld e, $01
    ld bc, $5fbe
    jp Jump_000_37f4


jr_001_5f81:
    call Call_000_377c
    jr nc, jr_001_5f8e

    ld e, $01
    ld bc, $5fab
    jp Jump_000_37f4


jr_001_5f8e:
    call Call_000_36e6
    jr nc, jr_001_5f9b

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_5f9b:
    call Call_000_3724
    jr nc, jr_001_5fa8

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_5fa8:
    jp Jump_000_37f7


    dec c
    ld d, a
    ld a, [hl-]
    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$1e06], sp
    ld e, b

    db $0d, $a2, $35, $0f, $46, $00, $10, $5b, $0e, $07, $d6, $5f

    sub $5f
    dec de
    ld l, l
    sub h
    ld l, [hl]
    add $6e

    db $4a, $6f

    dec h
    ld [hl], b

    db $0f, $46, $00, $04, $40, $4f, $0a, $0f, $51, $03, $0f, $50, $0c, $24, $3e, $03
    db $95, $60, $41, $26, $00, $fe, $08, $00, $ff, $19, $1f, $01, $08, $00, $00, $05
    db $02, $18, $04, $52, $6f, $0b, $19, $04, $02, $04, $17, $77, $0b, $19, $00, $02
    db $19, $01, $02, $19, $02, $02, $19, $03, $02, $0f, $47, $10, $03, $b7, $60, $41
    db $0d, $a5, $1a, $11, $22, $60

    ld h, $80
    ld bc, $2506
    ld h, b

    db $26, $00, $03, $04, $14, $52, $0a, $0f, $47, $00, $09, $03, $19, $01, $02, $19
    db $00, $02, $19, $03, $02, $19, $02, $02, $0a, $22, $7e, $60, $01, $0f, $51, $02
    db $03, $1f, $61, $41, $0d, $a5, $1a, $11, $52, $60

    ld h, $c0
    nop
    ld b, $55
    ld h, b

    db $26, $80, $01, $04, $40, $4f, $0a, $01, $1f, $09, $02, $0f, $47, $10, $05, $02
    db $0f, $47, $00, $05, $02, $0a, $06, $31, $56, $26, $00, $ff, $08, $00, $fd, $0d
    db $77, $0f, $0e, $06, $31, $56

    ld h, $80
    ld bc, $3106
    ld d, [hl]

    db $0d, $92, $0f, $03, $fa, $00, $05, $04, $0d, $92, $0f, $03, $fa, $fc, $05, $04
    db $0d, $92, $0f, $03, $fa, $00, $00

    ld a, $04
    ld [$a05d], a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3957
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    ld a, [$a070]
    or a
    ld e, $45
    ld a, [de]
    ld e, $38
    jr nz, jr_001_60d0

    rla
    ld bc, $0300
    jr nc, jr_001_60db

    ld bc, $fd00

jr_001_60cb:
    call Call_000_0cd3
    jr jr_001_60de

jr_001_60d0:
    rla
    ld bc, $0180
    jr nc, jr_001_60db

    ld bc, $fe80
    jr jr_001_60cb

jr_001_60db:
    call Call_000_0ca2

jr_001_60de:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld hl, $611a
    ld a, $04
    call Call_000_3aaa
    call Call_000_3ae4
    call Call_001_7b09
    call Call_001_7a8c
    jr nc, jr_001_6101

    ld e, $01
    ld bc, $606b
    jp Jump_000_37f4


jr_001_6101:
    call Call_000_3992
    jr nc, jr_001_610e

    ld e, $01
    ld bc, $6078
    jp Jump_000_37f4


jr_001_610e:
    call Call_000_3943
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    db $01, $00, $00, $07, $07

    ld a, [$a070]
    or a
    ld e, $20
    ld bc, $0280
    jr z, jr_001_612f

    ld e, $08
    ld bc, $0140

jr_001_612f:
    call Call_000_0d23
    ld e, $0e
    call Call_000_0d04
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3957
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    db $0f, $51, $04, $04, $78, $52, $0a, $0d, $40, $7b, $0e, $07, $6e, $61, $21, $62

    ldh a, [$ff63]
    dec e
    ld l, c
    ld c, l
    ld l, d
    jp $916a


    ld l, e

    db $0f, $50, $00, $03, $9c, $61, $41, $10, $52, $11, $93, $61, $14, $03, $83, $61

    ld bc, $0608
    adc h
    ld h, c

    db $0d, $2b, $7b, $1b

    ld a, [de]

    db $03, $96, $61, $41, $0b, $1f, $7b, $03, $9c, $61, $41, $01, $00, $00

    ld hl, $1b1a
    call Call_001_7baf
    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_61bd

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_61bd:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_61cb

    ld e, $01
    ld bc, $6345
    jp Jump_000_37f4


jr_001_61cb:
    call Call_001_7a55
    jr nc, jr_001_61d8

    ld e, $01
    ld bc, $6221
    jp Jump_000_37f4


jr_001_61d8:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_61e6

    ld e, $01
    ld bc, $67b9
    jp Jump_000_37f4


jr_001_61e6:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_61f4

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_61f4:
    call Call_000_36e6
    jr nc, jr_001_6201

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6201:
    call Call_000_3619
    jr nc, jr_001_620e

    ld e, $01
    ld bc, $6875
    jp Jump_000_37f4


jr_001_620e:
    call Call_000_3724
    jr nc, jr_001_621b

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_621b:
    call Call_001_6c37
    jp Jump_000_37f7


    db $0f, $50, $01, $03, $82, $62, $41, $10, $52, $11, $32, $62, $01, $08, $0b, $1f
    db $7b, $0d, $3c, $38, $0e, $06, $43, $62

    ld d, d
    ld h, d
    ld h, c
    ld h, d
    ld h, h
    ld h, d
    ld [hl], e
    ld h, d
    ld h, c
    ld h, d

    db $19, $01, $0a, $19, $02, $08, $19, $03, $0a

    add hl, de
    ld [bc], a
    ld [$4306], sp
    ld h, d
    add hl, de
    ld bc, $1906
    ld [bc], a
    ld b, $19
    inc bc
    ld b, $19
    ld [bc], a
    ld b, $06
    ld d, d
    ld h, d
    ld bc, $0007
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc bc
    add hl, de
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc bc
    ld b, $64
    ld h, d
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc b
    ld b, $73
    ld h, d

    call Call_000_359a
    call Call_001_7c45

Jump_001_6288:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_62a0

    ld e, $01
    ld bc, $616e
    jp Jump_000_37f4


jr_001_62a0:
    call Call_001_7adb
    jr nc, jr_001_62ad

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_62ad:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_62bb

    ld e, $01
    ld bc, $6345
    jp Jump_000_37f4


jr_001_62bb:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_62ca

    ld e, $01
    ld bc, $616e
    jp Jump_000_37f4


jr_001_62ca:
    call Call_000_373b
    jr nc, jr_001_62d7

    ld e, $01
    ld bc, $632d
    jp Jump_000_37f4


jr_001_62d7:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_62e5

    ld e, $01
    ld bc, $67b9
    jp Jump_000_37f4


jr_001_62e5:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_62f3

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_62f3:
    call Call_000_36e6
    jr nc, jr_001_6300

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6300:
    call Call_000_3619
    jr nc, jr_001_630d

    ld e, $01
    ld bc, $6875
    jp Jump_000_37f4


jr_001_630d:
    call Call_000_374e
    jr nc, jr_001_631a

    ld e, $01
    ld bc, $6221
    jp Jump_000_37f4


jr_001_631a:
    call Call_000_3724
    jr nc, jr_001_6327

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_6327:
    call Call_001_6c37
    jp Jump_000_37f7


    db $0f, $50, $03, $24, $0d, $03, $3c, $63, $41, $0d, $ff, $37, $06, $32, $62

    call Call_000_359a
    call Call_001_7c20
    jp Jump_001_6288


    db $0f, $50, $04, $03, $68, $63, $41, $08, $70, $fc, $24, $04, $06, $5b, $63, $08
    db $50, $ff, $03, $8c, $63, $41, $01, $04, $05, $01, $10, $10, $14, $80, $5d, $63
    db $06, $f0, $63

    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_001_6379

    ld e, $01
    ld bc, $6354
    jp Jump_000_37f4


jr_001_6379:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_001_638c

    ld h, d
    ld l, $1f
    ld [hl], $41
    inc l
    ld [hl], $63
    inc l
    ld [hl], $8c

jr_001_638c:
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_63b5

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_63b5:
    call Call_000_39c1
    jr nc, jr_001_63c2

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_63c2:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_63d0

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_63d0:
    call Call_000_36e6
    jr nc, jr_001_63dd

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_63dd:
    call Call_000_3614
    jr nc, jr_001_63ea

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_63ea:
    call Call_001_6c37
    jp Jump_000_37f7


    db $0f, $50, $05, $03, $3b, $64, $41, $10, $52, $11, $1e, $64, $14, $03

    ld c, $64

    db $14, $02

    add hl, bc
    ld h, h

    db $01, $18, $06, $17, $64

    ld bc, $0608
    rla
    ld h, h
    dec c
    dec hl
    ld a, e
    dec de
    ld a, [de]
    inc bc
    dec [hl]
    ld h, h
    ld b, c

    db $0b, $1f, $7b, $03, $3b, $64, $41, $01, $04, $05, $01, $10, $10, $14, $80

    jr nz, jr_001_648c

    db $10, $39, $15, $10, $10, $14, $80

    jr nz, @+$66

    db $11

    jr nz, @+$66

    db $00

    ld hl, $1b1a
    call Call_001_7baf

    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a8c
    call Call_000_3992
    jr nc, jr_001_6464

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_6464:
    call Call_000_39c1
    jr nc, jr_001_6471

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_6471:
    ld e, $52
    ld a, [de]
    or a
    jr z, jr_001_647f

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_647f:
    call Call_001_64d4
    jr nc, jr_001_648c

    ld e, $01
    ld bc, $64ec
    jp Jump_000_37f4


jr_001_648c:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_649a

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_649a:
    call Call_000_3619
    jr nc, jr_001_64a7

    ld e, $01
    ld bc, $6875
    jp Jump_000_37f4


jr_001_64a7:
    call Call_000_3765
    jr nc, jr_001_64b4

    ld e, $01
    ld bc, $6a41
    jp Jump_000_37f4


jr_001_64b4:
    call Call_000_36e6
    jr nc, jr_001_64c1

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_64c1:
    call Call_000_3724
    jr nc, jr_001_64ce

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_64ce:
    call Call_001_6c37
    jp Jump_000_37f7


Call_001_64d4:
    ld a, [$a05b]
    cp $01
    jr z, jr_001_64dd

jr_001_64db:
    and a
    ret


jr_001_64dd:
    ld e, $0f
    ld a, [de]
    sub $80
    inc e
    ld a, [de]
    bit 7, a
    jr nz, jr_001_64db

    sbc $02
    ccf
    ret


    db $0f, $50, $05, $0f, $39, $00, $03, $10, $65, $41, $08, $80, $00, $0f, $3c, $ff
    db $05, $18

    rrca
    inc a
    nop
    dec b
    jr jr_001_6513

    inc a
    ld bc, $1805
    rrca
    inc a
    nop
    dec b
    jr @+$08

    ld sp, hl
    ld h, h

    call Call_000_359a

jr_001_6513:
    ld e, $20
    ld bc, $0080
    call Call_000_0d23
    call Call_001_7cb8
    call Call_001_659a
    ld hl, $6e0c
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3943
    call Call_000_3992
    push af
    call Call_001_65ab
    pop af
    jr nc, jr_001_6544

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_6544:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_6552

    ld e, $01
    ld bc, $65b6
    jp Jump_000_37f4


jr_001_6552:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_6560

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_6560:
    call Call_000_3619
    jr nc, jr_001_656d

    ld e, $01
    ld bc, $6875
    jp Jump_000_37f4


jr_001_656d:
    call Call_000_3765
    jr nc, jr_001_657a

    ld e, $01
    ld bc, $6a41
    jp Jump_000_37f4


jr_001_657a:
    call Call_000_36e6
    jr nc, jr_001_6587

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6587:
    call Call_000_3724
    jr nc, jr_001_6594

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_6594:
    call Call_001_6c37
    jp Jump_000_37f7


Call_001_659a:
    ld e, $45
    ld a, [de]
    rla
    ld e, $3c
    ld a, [de]
    jr nc, jr_001_65a5

    cpl
    inc a

jr_001_65a5:
    add $05
    ld e, $15
    ld [de], a
    ret


Call_001_65ab:
    ld h, d
    ld e, $0d
    ld l, $8d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    rrca
    ld d, b
    dec b
    dec c
    dec de
    ld c, b
    inc bc
    jp $4165


    ld bc, $0017
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld hl, $6665
    ld a, $01
    call Call_000_3aaa
    call Call_001_7d6e
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_65f7

    ld e, $01
    ld bc, $670a
    jp Jump_000_37f4


jr_001_65f7:
    call Call_000_39c1
    jr nc, jr_001_6604

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_6604:
    ld hl, $a06c
    bit 3, [hl]
    jr z, jr_001_6613

    ld e, $01
    ld bc, $666a
    jp Jump_000_37f4


jr_001_6613:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_6621

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_6621:
    call Call_000_3619
    jr nc, jr_001_662e

    ld e, $01
    ld bc, $6875
    jp Jump_000_37f4


jr_001_662e:
    call Call_000_3765
    jr nc, jr_001_663b

    ld e, $01
    ld bc, $6a41
    jp Jump_000_37f4


jr_001_663b:
    call Call_000_36e6
    jr nc, jr_001_6648

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6648:
    call Call_000_3724
    jr nc, jr_001_6655

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_6655:
    call Call_000_3614
    jr nc, jr_001_6662

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_6662:
    jp Jump_000_37f7


    ld [bc], a
    nop
    nop
    inc b
    ld [$4008], sp
    db $fd
    inc bc
    ld [hl], h
    ld h, [hl]
    ld b, c
    ld bc, $0017
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a8c
    call Call_000_3992
    jr nc, jr_001_669d

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_669d:
    call Call_000_39c1
    jr nc, jr_001_66aa

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_66aa:
    ld e, $10
    ld a, [de]
    rla
    jr c, jr_001_66b8

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_66b8:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_66c6

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_66c6:
    call Call_000_3619
    jr nc, jr_001_66d3

    ld e, $01
    ld bc, $6875
    jp Jump_000_37f4


jr_001_66d3:
    call Call_000_3765
    jr nc, jr_001_66e0

    ld e, $01
    ld bc, $6a41
    jp Jump_000_37f4


jr_001_66e0:
    call Call_000_36e6
    jr nc, jr_001_66ed

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_66ed:
    call Call_000_3724
    jr nc, jr_001_66fa

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_66fa:
    call Call_000_3614
    jr nc, jr_001_6707

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_6707:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc h
    ld d, l
    inc bc
    inc hl
    ld h, a
    ld b, c
    dec c
    ld [hl], a
    rrca
    nop
    ld bc, $0817
    ld b, b
    db $fd
    nop
    ld e, $40
    ld bc, $0280
    call Call_000_0d23
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_6746

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_6746:
    call Call_000_39c1
    jr nc, jr_001_6753

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_6753:
    call Call_000_3619
    jr nc, jr_001_6760

    ld e, $01
    ld bc, $6875
    jp Jump_000_37f4


jr_001_6760:
    call Call_000_3765
    jr nc, jr_001_676d

    ld e, $01
    ld bc, $6a41
    jp Jump_000_37f4


jr_001_676d:
    call Call_000_3614
    jr nc, jr_001_677a

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_677a:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    dec b
    inc bc
    sub b
    ld h, a
    ld b, c
    dec c
    xor a
    dec [hl]
    add hl, de
    inc b
    ld bc, $5b06
    ld h, c
    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_67b3

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_67b3:
    call Call_001_6c37
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    ld b, $24
    dec c
    inc bc
    add $67
    ld b, c
    nop
    call Call_001_7c2e
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_67e4

    ld e, $01
    ld bc, $63f0
    jp Jump_000_37f4


jr_001_67e4:
    call Call_000_36a5
    jr nc, jr_001_67f1

    ld e, $01
    ld bc, $677d
    jp Jump_000_37f4


jr_001_67f1:
    ldh a, [$ffa5]
    bit 7, a
    jr nz, jr_001_67ff

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_67ff:
    ld e, $15
    ld a, $08
    ld [de], a
    call Call_001_6c37
    jp Jump_000_37f7


    db $0d, $a2, $35, $04, $78, $52, $0a, $0f, $50, $0c, $24, $46, $03, $5a, $68, $41
    db $0f, $3e, $03, $19, $03, $02, $19, $0a, $02, $19, $09, $02, $19, $15, $02, $19
    db $16, $08, $03, $4c, $68, $41, $0f, $3e, $02, $19, $16, $52, $03, $5a, $68, $41
    db $19, $15, $02, $19, $09, $02, $19, $0a, $02, $19, $0b, $02, $19, $0c, $02, $06
    db $5b, $61

    ldh a, [$ffa5]
    and $02
    jr nz, jr_001_685a

    ld e, $01
    ld bc, $6836
    jp Jump_000_37f4


jr_001_685a:
    call Call_001_7a1b
    call Call_000_378b
    call Call_000_37a8
    call Call_001_686c
    call Call_000_3ae4
    jp Jump_000_37f7


Call_001_686c:
    call Call_001_6c40
    ld e, $3e
    ld a, [de]
    jp Jump_000_3aaa


    dec c
    and d
    dec [hl]
    inc h
    jr nc, jr_001_687e

    adc d
    ld l, b
    ld b, c

jr_001_687e:
    add hl, de
    inc e
    ld [$1d19], sp
    ld [$1e19], sp
    ld [$1d06], sp
    ld l, c
    call Call_001_7cfd
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    call Call_000_36e6
    jr nc, jr_001_68b1

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_68b1:
    call Call_001_6c37
    jp Jump_000_37f7


    rrca
    ld d, b
    dec c
    inc bc
    call $4168
    add hl, de
    ld e, $0a
    add hl, de
    rra
    ld a, [bc]
    dec c
    ld c, $38
    ld [de], a
    cp [hl]
    ld l, b
    ld b, $1d
    ld l, c
    call Call_000_359a
    ld e, $50
    ld bc, $feb3
    call Call_000_0d54
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_68fd

    ld e, $01
    ld bc, $69ee
    jp Jump_000_37f4


jr_001_68fd:
    call Call_000_3765
    jr nc, jr_001_690a

    ld e, $01
    ld bc, $698b
    jp Jump_000_37f4


jr_001_690a:
    call Call_000_36e6
    jr nc, jr_001_6917

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6917:
    call Call_001_6c37
    jp Jump_000_37f7


    rrca
    ld d, b
    dec c
    inc bc
    dec l
    ld l, c
    ld b, c
    add hl, de
    ld e, $14
    add hl, de
    rra
    inc d
    ld b, $24
    ld l, c
    call Call_000_359a
    ld e, $14
    ld bc, $0100
    call Call_000_0d23
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffa5]
    and $41
    jr z, jr_001_695d

    ld e, $01
    ld bc, $68b7
    jp Jump_000_37f4


jr_001_695d:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_696b

    ld e, $01
    ld bc, $69ee
    jp Jump_000_37f4


jr_001_696b:
    call Call_000_3765
    jr nc, jr_001_6978

    ld e, $01
    ld bc, $698b
    jp Jump_000_37f4


jr_001_6978:
    call Call_000_36e6
    jr nc, jr_001_6985

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6985:
    call Call_001_6c37
    jp Jump_000_37f7


    rrca
    ld d, b
    dec c
    dec c
    ld d, c
    ld a, [hl-]
    inc bc
    sbc [hl]
    ld l, c
    ld b, c
    ld bc, $001f
    dec c
    ld d, a
    ld a, [hl-]
    ld b, $1d
    ld l, c
    call Call_000_359a
    ld e, $20
    ld bc, $fe80
    call Call_000_0d54
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_69ce

    ld e, $01
    ld bc, $69ee
    jp Jump_000_37f4


jr_001_69ce:
    call Call_000_377c
    jr nc, jr_001_69db

    ld e, $01
    ld bc, $6998
    jp Jump_000_37f4


jr_001_69db:
    call Call_000_36e6
    jr nc, jr_001_69e8

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_69e8:
    call Call_001_6c37
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    ld a, [bc]
    inc bc
    rrca
    ld l, d
    ld b, c
    dec c
    xor a
    rrca
    nop
    ld [$2400], sp
    ld a, [de]
    add hl, de
    dec e
    inc c
    add hl, de
    inc e
    inc c
    dec c
    ld c, $38
    ld [de], a
    ld [hl], l
    ld l, b
    ld b, $5b
    ld h, c
    ld e, $14
    ld bc, $0100
    call Call_000_0d23
    call Call_001_7cc1
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3943
    call Call_000_3765
    jr nc, jr_001_6a3b

    ld e, $01
    ld bc, $6a41
    jp Jump_000_37f4


jr_001_6a3b:
    call Call_001_6c37
    jp Jump_000_37f7


    dec c
    ld c, b
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $5b
    ld h, c
    rrca
    ld d, b
    nop
    rrca
    ld d, d
    nop
    inc bc
    ld e, d
    ld l, d
    ld b, c
    ld bc, $0000
    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_6a7b

    ld e, $01
    ld bc, $6b91
    jp Jump_000_37f4


jr_001_6a7b:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_6a89

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_6a89:
    call Call_000_37bd
    jr nc, jr_001_6a96

    ld e, $01
    ld bc, $6b91
    jp Jump_000_37f4


jr_001_6a96:
    call Call_001_7a55
    jr nc, jr_001_6aa3

    ld e, $01
    ld bc, $6ac3
    jp Jump_000_37f4


jr_001_6aa3:
    call Call_000_3724
    jr nc, jr_001_6ab0

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_6ab0:
    call Call_000_36e6
    jr nc, jr_001_6abd

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6abd:
    call Call_001_6c37
    jp Jump_000_37f7


    rrca
    ld d, b
    ld bc, $520f
    nop
    inc bc
    rst $38
    ld l, d
    ld b, c
    dec c
    inc a
    jr c, jr_001_6adf

    ld b, $de
    ld l, d
    db $ed
    ld l, d
    db $fc
    ld l, d
    sbc $6a
    db $ed
    ld l, d
    db $fc
    ld l, d
    add hl, de

jr_001_6adf:
    ld bc, $190a
    ld [bc], a
    ld [$0319], sp
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$de06], sp
    ld l, d
    add hl, de
    ld bc, $1906
    ld [bc], a
    ld b, $19
    inc bc
    ld b, $19
    ld [bc], a
    ld b, $06
    db $ed
    ld l, d
    ld bc, $0007
    call Call_000_359a
    call Call_000_3602
    call Call_001_7c8e
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_6b20

    ld e, $01
    ld bc, $6a4d
    jp Jump_000_37f4


jr_001_6b20:
    call Call_001_7adb
    jr nc, jr_001_6b2d

    ld e, $01
    ld bc, $6b91
    jp Jump_000_37f4


jr_001_6b2d:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_6b3c

    ld e, $01
    ld bc, $6a4d
    jp Jump_000_37f4


jr_001_6b3c:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_6b4a

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_6b4a:
    call Call_000_37bd
    jr nc, jr_001_6b57

    ld e, $01
    ld bc, $6b91
    jp Jump_000_37f4


jr_001_6b57:
    call Call_000_36e6
    jr nc, jr_001_6b64

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6b64:
    call Call_000_374e
    jr nc, jr_001_6b71

    ld e, $01
    ld bc, $6ac3
    jp Jump_000_37f4


jr_001_6b71:
    call Call_000_377c
    jr nc, jr_001_6b7e

    ld e, $01
    ld bc, $6c2b
    jp Jump_000_37f4


jr_001_6b7e:
    call Call_000_3724
    jr nc, jr_001_6b8b

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_6b8b:
    call Call_001_6c37
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc bc
    cp h
    ld l, e
    ld b, c
    db $10
    ld l, a
    ld c, $03
    and l
    ld l, e
    cp c
    ld l, e
    xor b
    ld l, e
    ld bc, $0004
    inc h
    ld c, b
    add hl, de
    jr nz, @+$0c

    add hl, de
    ld hl, $190a
    ld [hl+], a
    ld a, [bc]
    add hl, de
    inc hl
    ld a, [bc]
    ld b, $a8
    ld l, e
    ld bc, $0017
    call Call_000_359a
    call Call_001_7d16
    call Call_001_7cca
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_6be0

    ld e, $01
    ld bc, $615b
    jp Jump_000_37f4


jr_001_6be0:
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_6bf1

    ld e, $01
    ld bc, $680a
    jp Jump_000_37f4


jr_001_6bf1:
    call Call_000_37cb
    jr nc, jr_001_6bfe

    ld e, $01
    ld bc, $6b91
    jp Jump_000_37f4


jr_001_6bfe:
    call Call_000_377c
    jr nc, jr_001_6c0b

    ld e, $01
    ld bc, $6c2b
    jp Jump_000_37f4


jr_001_6c0b:
    call Call_000_36e6
    jr nc, jr_001_6c18

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_6c18:
    call Call_000_3724
    jr nc, jr_001_6c25

    ld e, $01
    ld bc, $40a2
    jp Jump_000_37f4


jr_001_6c25:
    call Call_001_6c37
    jp Jump_000_37f7


    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$4506], sp
    ld h, e

Call_001_6c37:
    call Call_001_6c40
    ret z

    ld a, $01
    jp Jump_000_3aaa


Call_001_6c40:
    ld e, $15
    ld a, [de]
    ld hl, $6c51
    add a
    add l
    ld l, a
    jr nc, jr_001_6c4c

    inc h

jr_001_6c4c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ret


    db $99, $6c, $9e, $6c, $a3, $6c, $a8, $6c, $ad, $6c

    or d
    ld l, h

    db $b7, $6c

    nop
    nop

    db $bc, $6c, $c1, $6c, $c6, $6c, $cb, $6c, $d0, $6c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $d5, $6c, $da, $6c

    nop
    nop

    db $df, $6c

    db $e4
    ld l, h
    jp hl


    ld l, h

    db $ee, $6c

    di
    ld l, h
    ld hl, sp+$6c
    db $fd
    ld l, h
    ld [bc], a
    ld l, l
    rlca
    ld l, l
    inc c
    ld l, l
    ld de, $166d
    ld l, l

    db $03, $fd, $f0, $03, $03, $03, $fe, $f0, $03, $03, $03, $f9, $f1, $03, $03, $03
    db $f5, $f1, $03, $03, $03, $f7, $f0, $03, $03

    inc bc
    cp $f0
    inc bc
    inc bc

    db $03, $04, $f0, $03, $03, $03, $f7, $f7, $03, $03, $03, $18, $04, $03, $03, $03
    db $13, $04, $03, $03, $03, $0f, $f3, $03, $03, $03, $fe, $f0, $02, $02, $03, $16
    db $02, $03, $03, $03, $10, $02, $03, $03, $03, $f7, $f0, $03, $03

    inc bc
    ld a, [$03f2]
    inc bc
    inc bc
    ld [bc], a
    ldh a, [c]
    inc bc
    inc bc

    db $03, $fe, $f2, $03, $03

    inc bc
    inc b
    ldh a, [$ff03]
    inc bc
    inc bc
    db $f4
    db $eb
    inc bc
    inc bc
    inc bc
    ld hl, sp-$16
    inc bc
    inc bc
    inc bc
    ld hl, sp-$17
    inc bc
    inc bc
    inc bc
    db $f4
    ld c, $02
    ld [bc], a
    inc bc
    db $f4
    dec c
    ld [bc], a
    ld [bc], a
    inc bc
    db $f4
    ld c, $02
    ld [bc], a
    inc bc
    db $f4
    dec c
    ld [bc], a
    ld [bc], a
    rrca
    ld d, c
    ld [$500f], sp
    inc c
    inc h
    ld c, h
    jr jr_001_6d28

    ld d, e
    ld l, l
    ld b, c

jr_001_6d28:
    inc b
    ld d, d
    ld l, a
    dec bc
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    inc b
    ld [bc], a
    ld [$fe00], sp
    inc b
    ld c, b
    ld d, l
    ld a, [bc]
    add hl, de
    nop
    inc b
    jr jr_001_6d4e

    ld b, b
    ld a, e
    ld c, $07
    rst $20
    ld l, l
    rst $20
    ld l, l
    ld l, a
    ld l, l
    ld l, a
    ld l, l
    rst $20

jr_001_6d4e:
    ld l, l
    ld l, a
    ld l, l
    ld l, a
    ld l, l
    ld a, $04
    ld [$a05d], a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3957
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    inc bc
    ld [hl], a
    ld l, l
    ld b, c
    nop
    ld a, [$a070]
    or a
    ld e, $60
    ld bc, $0400
    jr z, jr_001_6d87

    ld e, $40
    ld bc, $0200

jr_001_6d87:
    call Call_000_0d23
    ld a, [$a070]
    or a
    ld e, $0e
    jr z, jr_001_6d94

    ld e, $09

jr_001_6d94:
    call Call_000_0d04
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_6dcf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_6db5

    ld e, $01
    ld bc, $6ddf
    jp Jump_000_37f4


jr_001_6db5:
    call Call_000_3957
    ldh a, [$ffa6]
    and $02
    jr z, jr_001_6dc6

    ld e, $01
    ld bc, $6e8a
    jp Jump_000_37f4


jr_001_6dc6:
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


Call_001_6dcf:
    ld hl, $6dda
    ld a, $06
    call Call_000_3aaa
    jp Jump_000_3ae4


    ld bc, $0000
    ld [$1808], sp
    dec c
    ld [hl], a
    rrca
    ld c, $06
    rst $20
    ld l, l
    rrca
    ld a, [hl-]
    ld a, b
    rrca
    ld d, b
    nop
    inc bc
    inc [hl]
    ld l, [hl]
    ld b, c
    dec b
    inc d
    inc bc
    ld sp, $416e
    rra
    nop
    ld l, [hl]
    dec c
    ld c, $6e
    ld b, $f7
    ld l, l
    ld a, [$a070]
    or a
    ld a, $04
    jr z, jr_001_6e0a

    ld a, $08

jr_001_6e0a:
    ld e, $24
    ld [de], a
    ret


    ld e, $0e
    ld a, [de]
    ld h, a
    dec e
    ld a, [de]
    or h
    ret z

    ld e, $45
    ld a, [de]
    xor h
    rla
    ld e, $15
    ld a, [de]
    jr c, jr_001_6e28

    inc a
    cp $08
    jr c, jr_001_6e2f

    xor a
    jr jr_001_6e2f

jr_001_6e28:
    dec a
    cp $08
    jr c, jr_001_6e2f

    ld a, $07

jr_001_6e2f:
    ld [de], a
    ret


    call Call_001_7bc7
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld a, $04
    ld [$a05d], a
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    call nz, Call_001_6dcf
    call Call_001_7b09
    call Call_000_1d8b
    call Call_001_7adb
    jr nc, jr_001_6e5e

    ld e, $01
    ld bc, $6d6f
    jp Jump_000_37f4


jr_001_6e5e:
    ldh a, [$ffa6]
    and $02
    jr z, jr_001_6e6c

    ld e, $01
    ld bc, $6e8a
    jp Jump_000_37f4


jr_001_6e6c:
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    ld e, $3a
    jr z, jr_001_6e7a

    ld a, $78
    ld [de], a

jr_001_6e7a:
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_001_6e87

    ld e, $01
    ld bc, $6e8a
    jp Jump_000_37f4


jr_001_6e87:
    jp Jump_000_37f7


    rrca
    ld d, c
    ld [bc], a
    inc h
    ld c, h
    dec b
    inc b
    ld b, $31
    ld d, [hl]
    rrca
    ld d, b
    inc c
    inc bc
    or e
    ld l, [hl]
    ld b, c
    inc h
    ccf
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
    ld b, $31
    ld d, [hl]
    call Call_001_7a1b
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    inc b
    ld b, b
    ld c, a
    ld a, [bc]
    ld b, $a6
    ld e, l
    rrca
    ld d, b
    inc c
    inc bc
    cp $6e
    ld b, c
    inc b
    inc bc
    ld d, [hl]
    ld a, [bc]
    rrca
    ld a, [hl-]
    nop
    add hl, de
    nop
    ld b, $24
    ld c, l
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [$3a0f], sp
    ld bc, $0319
    inc [hl]
    inc bc
    cp $6e
    ld b, c
    rrca
    ld a, [hl-]
    nop
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $0604
    ld sp, $cd56
    dec de
    ld a, d
    call Call_000_378b
    call Call_000_37a8
    ld e, $15
    ld a, [de]
    or a
    jr z, jr_001_6f24

    cp $02
    ld hl, $6f3b
    jr c, jr_001_6f1c

    ld hl, $6f40
    jr z, jr_001_6f1c

    ld hl, $6f45

jr_001_6f1c:
    ld a, $05
    call Call_000_3aaa
    call Call_000_3ae4

jr_001_6f24:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_001_6f38

    ldh a, [$ffa5]
    and $02
    jr nz, jr_001_6f38

    ld e, $01
    ld bc, $6eee
    jp Jump_000_37f4


jr_001_6f38:
    jp Jump_000_37f7


    inc bc
    nop
    nop
    add hl, bc
    add hl, bc
    inc bc
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    inc bc
    nop
    nop
    ld c, $0e

    db $0f, $50, $0c, $03, $e4, $6f, $41, $04, $57, $56, $0a, $0f, $3a, $00, $19, $00
    db $0a, $22, $80, $6f, $01, $09, $03, $19, $01, $02, $19, $02, $02, $19, $03, $02
    db $19, $04, $02, $0a, $0f, $3a, $01, $19, $01, $02, $19, $02, $02, $19, $03, $02
    db $19, $04, $02, $06, $71, $6f, $10, $70, $12

    xor h
    ld l, a

    db $0f, $3b, $01, $24, $39, $0d, $77, $0f, $0a, $05, $02, $0d, $77, $0f, $0a, $05
    db $02, $10, $70, $12

    xor h
    ld l, a

    db $24, $39, $0d, $77, $0f, $0a, $05, $02, $0d, $77, $0f, $0a, $05, $02, $06, $80
    db $6f

    rrca
    dec sp
    ld [bc], a
    inc h
    add hl, sp
    dec c
    ld [hl], a
    rrca
    ld a, [bc]
    dec b
    ld [$3924], sp
    dec c
    ld [hl], a
    rrca
    ld a, [bc]
    dec b
    ld [$3924], sp
    dec c
    ld [hl], a
    rrca
    ld a, [bc]
    dec b
    ld [$3924], sp
    dec c
    ld [hl], a
    rrca
    ld a, [bc]
    dec b
    ld [$af06], sp
    ld l, a

    db $03, $e4, $6f, $41, $0f, $3a, $00, $0f, $3b, $00, $24, $ff, $19, $00, $0a, $06
    db $31, $56

    call Call_001_7a1b
    call Call_000_378b
    call Call_000_37a8
    ld e, $3b
    ld a, [de]
    cp $01
    jr c, jr_001_7004

    ld hl, $701b
    jr z, jr_001_6ffc

    ld hl, $7020

jr_001_6ffc:
    ld a, $03
    call Call_000_3aaa
    call Call_000_3ae4

jr_001_7004:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_001_7018

    ldh a, [$ffa5]
    and $02
    jr nz, jr_001_7018

    ld e, $01
    ld bc, $6fd2
    jp Jump_000_37f4


jr_001_7018:
    jp Jump_000_37f7


    db $03, $00, $00, $19, $14, $03, $00, $00, $0c, $0a

    rrca
    ld d, b
    inc c
    inc bc
    ld e, d
    ld [hl], b
    ld b, c
    inc b
    and h
    ld d, [hl]
    ld a, [bc]
    rrca
    ld a, [hl-]
    inc c
    add hl, de
    nop
    ld b, $24
    ld b, h
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
    ld b, $38
    ld [hl], b
    inc bc
    ld e, d
    ld [hl], b
    ld b, c
    rrca
    ld a, [hl-]
    rst $38
    add hl, de
    nop
    ld b, $06
    ld sp, $cd56
    dec de
    ld a, d
    call Call_000_378b
    call Call_000_37a8
    ld e, $15
    ld a, [de]
    or a
    jr z, jr_001_7074

    ld a, $02
    ld hl, $7095
    call Call_000_3aaa
    call Call_000_3ae4

jr_001_7074:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_001_707e

    dec a
    ld [de], a
    jr jr_001_7092

jr_001_707e:
    ld a, [$a070]
    or a
    jr nz, jr_001_708a

    ldh a, [$ffa5]
    and $02
    jr nz, jr_001_7092

jr_001_708a:
    ld e, $01
    ld bc, $704d
    jp Jump_000_37f4


jr_001_7092:
    jp Jump_000_37f7


    dec b
    ld a, [de]
    nop
    ld de, $0f08
    ld d, c
    dec c
    rrca
    inc a
    nop
    db $10
    ld b, l
    ld a, [de]
    dec sp
    rrca
    dec a
    ld a, b
    inc b
    sub d
    ld [hl], e
    ld a, [bc]
    ld b, $e4
    ld [hl], b

Call_001_70ae:
    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $3b
    ld a, [de]
    xor b
    rla
    ret nc

    ld a, b
    ld [de], a
    ld a, $02
    ld e, $3c
    ld [de], a
    ld a, $16
    ld e, $15
    ld [de], a
    ret


    dec c
    ret nc

    ld [hl], b
    dec b
    ld bc, $3c10
    ld [de], a
    push bc
    ld [hl], b
    inc c
    ld e, $3c
    ld a, [de]
    cp $02
    ld a, $16
    jr nc, jr_001_70db

    ld a, $07

jr_001_70db:
    ld e, $15
    ld [de], a
    ld e, $3c
    ld a, [de]
    dec a
    ld [de], a
    ret


    rrca
    ld d, b
    dec b
    inc bc
    rst $30
    ld [hl], b
    ld b, c
    db $10
    inc a
    ld de, $70f6
    dec bc
    push bc
    ld [hl], b
    rrca
    ld a, $00
    nop
    call Call_000_359a
    ld e, $3c
    ld a, [de]
    or a
    jr nz, jr_001_7120

    ldh a, [$ffa5]
    and $f0
    jr z, jr_001_7119

    ld e, $3e
    ld a, [de]
    cp $0f
    jr nc, jr_001_7112

    inc a
    ld [de], a
    xor a
    jr jr_001_7114

jr_001_7112:
    ld a, $01

jr_001_7114:
    ld e, $15
    ld [de], a
    jr jr_001_7120

jr_001_7119:
    xor a
    ld e, $15
    ld [de], a
    ld e, $3e
    ld [de], a

jr_001_7120:
    call Call_001_7cdc
    call Call_001_7cd3
    call Call_001_70ae
    jr nc, jr_001_7133

    ld e, $01
    ld bc, $70e4
    call Call_000_0846

jr_001_7133:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_000_3650
    jr nc, jr_001_7148

    ld e, $01
    ld bc, $7158
    jp Jump_000_37f4


jr_001_7148:
    call Call_001_725f
    jr nc, jr_001_7155

    ld e, $01
    ld bc, $4ec9
    jp Jump_000_37f4


jr_001_7155:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    inc c
    rrca
    inc a
    nop
    rrca
    ccf
    nop
    inc bc
    ret


    ld [hl], c
    ld b, c
    inc h
    ld a, [hl-]
    add hl, de
    ld bc, $1901
    ld [bc], a
    ld bc, $1a19
    ld bc, $0319
    ld bc, $1b19
    ld bc, $0419
    ld bc, $1c19
    ld bc, $0519
    ld bc, $1d19
    ld bc, $0019
    inc b
    inc h
    ld a, [hl-]
    add hl, de
    dec e
    ld [bc], a
    add hl, de
    dec b
    ld bc, $1c19
    ld bc, $0419
    ld [bc], a
    add hl, de
    dec de
    ld [bc], a
    add hl, de
    inc bc
    ld bc, $1a19
    ld bc, $0219
    ld [bc], a
    add hl, de
    ld bc, $1902
    nop
    ld [bc], a
    rrca
    ld d, b
    dec b
    rrca
    ccf
    ld bc, $1e19
    ld [bc], a
    add hl, de
    rra
    ld [bc], a
    add hl, de
    jr nz, @+$04

    add hl, de
    ld hl, $1902
    ld [hl+], a
    ld [bc], a
    add hl, de
    inc hl
    ld [bc], a
    add hl, de
    inc h
    ld [bc], a
    add hl, de
    dec h
    ld [bc], a
    ld b, $a7
    ld [hl], b
    ld e, $0e
    call Call_000_0d85
    ld e, $0e
    call Call_000_0d04
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld e, $15
    ld a, [de]
    cp $02
    jr c, jr_001_7201

    cp $06
    jr c, jr_001_71f0

    cp $1a
    jr c, jr_001_7201

    cp $1e
    jr nc, jr_001_7201

    sub $14

jr_001_71f0:
    ld hl, $7223
    add a
    add l
    ld l, a
    jr nc, jr_001_71f9

    inc h

jr_001_71f9:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $02
    call Call_000_3aaa

jr_001_7201:
    ld e, $3f
    ld a, [de]
    or a
    jr z, jr_001_7217

    call Call_000_359a
    call Call_000_3650
    jr nc, jr_001_7217

    ld e, $01
    ld bc, $7158
    jp Jump_000_37f4


jr_001_7217:
    call Call_001_725f
    jr nc, jr_001_7224

    ld e, $01
    ld bc, $4ec9
    jp Jump_000_37f4


jr_001_7224:
    jp Jump_000_37f7


    scf
    ld [hl], d
    inc a
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, [hl]
    ld [hl], d
    ld c, e
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, l
    ld [hl], d
    ld e, d
    ld [hl], d
    inc bc
    ld [$0c00], sp
    inc d
    inc bc
    stop
    inc c
    inc d
    inc bc
    stop
    inc c
    inc d
    inc bc
    stop
    inc c
    inc d
    inc bc
    ld a, [bc]
    nop
    db $10
    db $10
    inc bc
    ld [de], a
    nop
    db $10
    db $10
    inc bc
    ld [de], a
    nop
    db $10
    db $10
    inc bc
    ld [de], a
    nop
    db $10
    db $10

Call_001_725f:
    ld a, [$a054]
    or a
    jr z, jr_001_7267

jr_001_7265:
    and a
    ret


jr_001_7267:
    ld hl, $db4b
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld hl, $db54
    sub [hl]
    jr nz, jr_001_7265

    dec hl
    ld a, [hl]
    sub e
    jr nz, jr_001_7265

    ld e, $3d
    ld a, [de]
    cp $0c
    jr nc, jr_001_728b

    ld b, $1b
    bit 1, a
    jr nz, jr_001_7287

    ld b, $e4

jr_001_7287:
    ld hl, $cd00
    ld [hl], b

jr_001_728b:
    or a
    jr z, jr_001_7292

    dec a
    ld [de], a
    jr jr_001_7265

jr_001_7292:
    ld e, $44
    ld a, $02
    ld [de], a
    ld b, a
    call Call_000_3a8b
    scf
    ret


    db $0d, $a2, $35, $0f, $50, $09, $0d, $be, $72, $0f, $80, $00, $0f, $81, $0a, $03
    db $e5, $72, $41, $0f, $39, $1e, $0f, $3d, $01, $24, $01, $19, $0d, $08, $01, $12
    db $00

    xor a
    ld hl, $a153
    ld [hl], a
    inc h
    ld [hl], a
    inc h
    ld [hl], a
    ld [$a055], a
    ld [$a056], a
    ld [$a059], a
    ld [$a057], a
    dec a
    ld [$a058], a
    ld e, $45
    ld a, [de]
    rla
    ld a, $3c
    jr c, jr_001_72e1

    cpl
    inc a

jr_001_72e1:
    ld [$a063], a
    ret


    call Call_001_7a1b
    ld a, [$a056]
    or a
    jr z, jr_001_72fc

    ld a, [$a055]
    or a
    jr nz, jr_001_72fc

    ld e, $01
    ld bc, $741a
    jp Jump_000_37f4


jr_001_72fc:
    ld h, d
    ld l, $39
    ld a, [hl]
    or a
    jr z, jr_001_7306

    dec [hl]
    jr jr_001_7320

jr_001_7306:
    ldh a, [$ffa5]
    bit 1, a
    jr nz, jr_001_7320

    ld a, [$a056]
    or a
    jr nz, jr_001_7320

    ld a, [$a055]
    or a
    jr nz, jr_001_7320

    ld e, $01
    ld bc, $73fb
    jp Jump_000_37f4


jr_001_7320:
    call Call_000_3a24
    jr nc, jr_001_732d

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_732d:
    ld e, $3d
    ld a, [de]
    or a
    jr z, jr_001_7337

    dec a
    ld [de], a
    jr jr_001_733a

jr_001_7337:
    call Call_001_7348

jr_001_733a:
    ld hl, $7343
    call Call_000_3aaa
    jp Jump_000_37f7


    db $00, $16, $00, $16, $14

Call_001_7348:
    ld a, [$a057]
    rla
    jr c, jr_001_7360

    ld a, [$a055]
    or a
    jr nz, jr_001_7360

    ld a, [$a056]
    or a
    jr nz, jr_001_7360

    ld a, [$a100]
    inc a
    jr z, jr_001_7361

jr_001_7360:
    ret


jr_001_7361:
    ld a, [$a071]
    ld hl, $7f00
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld e, $45
    ld a, [de]
    rla
    jr c, jr_001_7398

jr_001_7373:
    ld hl, $a007
    ld a, [bc]
    cp $80
    jr z, jr_001_73be

    inc c
    add [hl]
    inc l
    ld e, a
    ld a, [bc]
    inc c
    adc [hl]
    ld d, a
    ld hl, $a004
    ld a, [bc]
    inc c
    push bc
    add [hl]
    inc l
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a
    call Call_001_73c2
    pop bc
    jr c, jr_001_73be

    jr jr_001_7373

jr_001_7398:
    ld hl, $a007
    ld a, [bc]
    cp $80
    jr z, jr_001_73be

    inc c
    add [hl]
    inc l
    ld e, a
    ld a, [bc]
    inc c
    adc [hl]
    ld d, a
    ld hl, $a004
    ld a, [bc]
    inc c
    push bc
    ld c, a
    ld a, [hl+]
    sub c
    ld c, a
    ld a, [hl]
    sbc $00
    ld b, a
    call Call_001_73c2
    pop bc
    jr c, jr_001_73be

    jr jr_001_7398

jr_001_73be:
    ldh a, [$ff9a]
    ld d, a
    ret


Call_001_73c2:
    call Call_000_1646
    cp $21
    jr z, jr_001_73cb

    and a
    ret


jr_001_73cb:
    ld a, l
    ldh [$ff80], a
    push bc
    push de
    ld a, e
    and $f0
    or $08
    ld e, a
    ld a, c
    and $f0
    or $08
    ld c, a
    ld hl, $a1a2
    ld a, $03
    call Call_000_07c4
    ld l, $50
    ld [hl], $00
    ld hl, $a055
    inc [hl]
    ld hl, $a057
    set 6, [hl]
    pop de
    pop bc
    ldh a, [$ff80]
    inc a
    call Call_000_15a8
    scf
    ret


    db $24, $ff, $03, $07, $74, $41, $19, $0d, $08, $06, $bf, $44

    call Call_001_7a1b
    call Call_000_3765
    jr nc, jr_001_7417

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_7417:
    jp Jump_000_37f7


    db $24, $02, $03, $3b, $74, $41, $19, $18, $03, $19, $21, $02, $19, $22, $01, $19
    db $18, $01, $19, $22, $01, $19, $13, $01, $19, $23, $01, $19, $13, $01, $06, $6a
    db $74

    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7c45
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3957
    call Call_000_3765
    jr nc, jr_001_7467

    ld e, $01
    ld bc, $7815
    jp Jump_000_37f4


jr_001_7467:
    jp Jump_000_37f7


    db $04, $40, $4f, $0a, $0b, $84, $74, $0d, $40, $7b, $0e, $07, $88, $74, $25, $75
    db $a8, $76

    nop
    nop
    inc h
    ld a, b

    db $a6, $78, $66, $79, $0f, $51, $01, $0c, $0f, $50, $00, $03, $b0, $74, $41, $0b
    db $5c, $3a, $0d, $96, $74, $00

    call Call_000_3847
    ld a, h
    ld e, $6d
    ld [de], a
    ld hl, $74aa
    add l
    ld l, a
    jr nc, jr_001_74a5

    inc h

jr_001_74a5:
    ld a, [hl]
    ld e, $15
    ld [de], a
    ret


    db $14, $1c

    dec e
    inc d
    inc e
    dec e

    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_74d1

    ld e, $01
    ld bc, $76a8
    jp Jump_000_37f4


jr_001_74d1:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_74df

    ld e, $01
    ld bc, $760d
    jp Jump_000_37f4


jr_001_74df:
    call Call_001_7a55
    jr nc, jr_001_74ec

    ld e, $01
    ld bc, $7525
    jp Jump_000_37f4


jr_001_74ec:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_74fa

    ld e, $01
    ld bc, $777f
    jp Jump_000_37f4


jr_001_74fa:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_7508

    ld e, $01
    ld bc, $770c
    jp Jump_000_37f4


jr_001_7508:
    call Call_000_36e6
    jr nc, jr_001_7515

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_7515:
    call Call_000_374e
    jr nc, jr_001_7522

    ld e, $01
    ld bc, $7488
    jp Jump_000_37f4


jr_001_7522:
    jp Jump_000_37f7


    db $0f, $50, $01, $03, $67, $75, $41, $0b, $5c, $3a, $0d, $3c, $38, $0e, $06, $40
    db $75, $49, $75, $52, $75

    ld d, l
    ld [hl], l
    ld e, [hl]
    ld [hl], l
    ld d, d
    ld [hl], l

    db $19, $15, $0c, $19, $16, $06, $06, $40, $75, $19, $15, $08, $19, $16, $04, $06
    db $49, $75, $01, $1d, $00

    add hl, de
    dec d
    ld [$1619], sp
    inc b
    ld b, $55
    ld [hl], l
    add hl, de
    dec d
    ld b, $19
    ld d, $03
    ld b, $5e
    ld [hl], l

    call Call_000_359a
    call Call_001_7c45

Jump_001_756d:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_7585

    ld e, $01
    ld bc, $7488
    jp Jump_000_37f4


jr_001_7585:
    call Call_001_7adb
    jr nc, jr_001_7592

    ld e, $01
    ld bc, $76a8
    jp Jump_000_37f4


jr_001_7592:
    ldh a, [$ffa6]
    and $01
    jr z, jr_001_75a0

    ld e, $01
    ld bc, $760d
    jp Jump_000_37f4


jr_001_75a0:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_75af

    ld e, $01
    ld bc, $7488
    jp Jump_000_37f4


jr_001_75af:
    call Call_000_373b
    jr nc, jr_001_75bc

    ld e, $01
    ld bc, $75f5
    jp Jump_000_37f4


jr_001_75bc:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_75ca

    ld e, $01
    ld bc, $777f
    jp Jump_000_37f4


jr_001_75ca:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_75d8

    ld e, $01
    ld bc, $770c
    jp Jump_000_37f4


jr_001_75d8:
    call Call_000_374e
    jr nc, jr_001_75e5

    ld e, $01
    ld bc, $7525
    jp Jump_000_37f4


jr_001_75e5:
    call Call_000_36e6
    jr nc, jr_001_75f2

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_75f2:
    jp Jump_000_37f7


    db $0f, $50, $03, $24, $0d, $03, $04, $76, $41, $0d, $ff, $37, $06, $2f, $75

    call Call_000_359a
    call Call_001_7c20
    jp Jump_001_756d


    db $0f, $50, $04, $03, $30, $76, $41, $08, $70, $fc, $24, $04, $06, $23, $76, $08
    db $50, $ff, $03, $54, $76, $41, $01, $15, $05, $01, $10, $10, $14, $80, $25, $76
    db $06, $a8, $76

    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_001_7641

    ld e, $01
    ld bc, $761c
    jp Jump_000_37f4


jr_001_7641:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_001_7654

    ld h, d
    ld l, $1f
    ld [hl], $41
    inc l
    ld [hl], $76
    inc l
    ld [hl], $54

jr_001_7654:
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_767d

    ld e, $01
    ld bc, $7471
    jp Jump_000_37f4


jr_001_767d:
    call Call_000_39c1
    jr nc, jr_001_768a

    ld e, $01
    ld bc, $76a8
    jp Jump_000_37f4


jr_001_768a:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_7698

    ld e, $01
    ld bc, $770c
    jp Jump_000_37f4


jr_001_7698:
    call Call_000_36e6
    jr nc, jr_001_76a5

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_76a5:
    jp Jump_000_37f7


    db $0f, $50, $05, $03, $b5, $76, $41, $0b, $5c, $3a, $01, $15, $00

    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_001_7cb8
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_76de

    ld e, $01
    ld bc, $7471
    jp Jump_000_37f4


jr_001_76de:
    call Call_000_3957
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_76ef

    ld e, $01
    ld bc, $770c
    jp Jump_000_37f4


jr_001_76ef:
    call Call_000_3765
    jr nc, jr_001_76fc

    ld e, $01
    ld bc, $7815
    jp Jump_000_37f4


jr_001_76fc:
    call Call_000_36e6
    jr nc, jr_001_7709

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_7709:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $51, $00, $0f, $50, $0a, $03, $41, $77, $41, $0f, $58, $ff
    db $0d, $18, $3a, $12, $2d, $77, $0d, $af, $0f, $01, $08, $fc, $24, $1b, $06, $35
    db $77, $0d, $af, $0f, $06, $08, $fc, $24, $32, $19, $18, $0c, $19, $12, $06, $19
    db $0d, $06, $06, $bf, $44

    ld e, $45
    ld a, [de]
    rla
    ldh a, [$ffa5]
    jr c, jr_001_774f

    bit 4, a
    jr z, jr_001_7755

    jr jr_001_7758

jr_001_774f:
    bit 5, a
    jr z, jr_001_7755

    jr jr_001_7758

jr_001_7755:
    call Call_001_7a35

jr_001_7758:
    call Call_001_7a42
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    call Call_000_3957
    call Call_000_3765
    jr nc, jr_001_777c

    ld e, $01
    ld bc, $4c05
    jp Jump_000_37f4


jr_001_777c:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0b, $03, $0b, $78, $41, $0d, $f0, $39, $0e, $03

    sbc a
    ld [hl], a

    db $b9, $77

    cp c
    ld [hl], a

    db $0d, $ed, $77, $0e, $03

    cp a
    ld b, h

    db $31, $56, $54, $61

    rrca
    ld e, b
    rst $38
    rrca
    ld e, e
    rst $38
    rrca
    ld e, h
    nop
    rrca
    ld d, c
    nop
    inc h
    inc bc
    add hl, de
    rla
    inc b
    add hl, de
    ld c, $04
    add hl, de
    inc b
    inc b
    ld b, $94
    ld [hl], a

    db $24, $29, $0d, $07, $3a, $19, $17, $04, $19, $0e, $04, $19, $04, $04, $0d, $42
    db $3c, $0d, $67, $10, $18, $0d, $7f, $35, $03, $11, $78, $41, $0d, $77, $0f, $01
    db $19, $04, $08, $05, $01, $10, $64, $12, $dc, $77, $1c, $d7, $6e, $07, $0d, $80
    db $10, $06, $94, $77

    ld a, [$a05b]
    bit 7, a
    jr z, jr_001_77f7

    xor a
    jr jr_001_7800

jr_001_77f7:
    ld hl, $7804
    add l
    ld l, a
    jr nc, jr_001_77ff

    inc h

jr_001_77ff:
    ld a, [hl]

jr_001_7800:
    ld e, $27
    ld [de], a
    ret


    db $01, $02

    ld bc, $0101

    db $01

    db $01

    call Call_001_7a1b
    jp Jump_000_37f7


    call Call_000_34fd
    ret


    db $0b, $84, $74, $0d, $48, $3a, $0d, $92, $0f, $07, $00, $00, $06, $71, $74

    rrca
    ld d, b
    nop
    inc bc
    ld [hl-], a
    ld a, b
    ld b, c
    dec bc
    ld e, h
    ld a, [hl-]
    dec c
    sub [hl]
    ld [hl], h
    nop
    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_3924
    call Call_001_7adb
    jr nc, jr_001_7853

    ld e, $01
    ld bc, $7966
    jp Jump_000_37f4


jr_001_7853:
    call Call_000_37bd
    jr nc, jr_001_7860

    ld e, $01
    ld bc, $7966
    jp Jump_000_37f4


jr_001_7860:
    call Call_001_7a55
    jr nc, jr_001_786d

    ld e, $01
    ld bc, $78a6
    jp Jump_000_37f4


jr_001_786d:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_787b

    ld e, $01
    ld bc, $777f
    jp Jump_000_37f4


jr_001_787b:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_7889

    ld e, $01
    ld bc, $770c
    jp Jump_000_37f4


jr_001_7889:
    call Call_000_36e6
    jr nc, jr_001_7896

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_7896:
    call Call_000_374e
    jr nc, jr_001_78a3

    ld e, $01
    ld bc, $7824
    jp Jump_000_37f4


jr_001_78a3:
    jp Jump_000_37f7


    db $0f, $50, $01, $03, $d6, $78, $41, $0b, $5c, $3a, $0d, $3c, $38, $0e, $06, $c1
    db $78

    jp z, $d378

    ld a, b
    pop bc
    ld a, b
    jp z, $d378

    ld a, b

    db $19, $15, $0c

    add hl, de
    ld d, $06
    ld b, $c1
    ld a, b
    add hl, de
    dec d
    ld [$1619], sp
    inc b
    ld b, $ca
    ld a, b
    ld bc, $001d

    call Call_000_359a
    call Call_000_3602
    call Call_001_7c8e
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_001_7a9e
    jr nc, jr_001_78f7

    ld e, $01
    ld bc, $7824
    jp Jump_000_37f4


jr_001_78f7:
    call Call_001_7adb
    jr nc, jr_001_7904

    ld e, $01
    ld bc, $7966
    jp Jump_000_37f4


jr_001_7904:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_001_7913

    ld e, $01
    ld bc, $7824
    jp Jump_000_37f4


jr_001_7913:
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_7921

    ld e, $01
    ld bc, $777f
    jp Jump_000_37f4


jr_001_7921:
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_792f

    ld e, $01
    ld bc, $770c
    jp Jump_000_37f4


jr_001_792f:
    call Call_000_37bd
    jr nc, jr_001_793c

    ld e, $01
    ld bc, $7966
    jp Jump_000_37f4


jr_001_793c:
    call Call_000_374e
    jr nc, jr_001_7949

    ld e, $01
    ld bc, $78a6
    jp Jump_000_37f4


jr_001_7949:
    call Call_000_36e6
    jr nc, jr_001_7956

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_7956:
    call Call_000_377c
    jr nc, jr_001_7963

    ld e, $01
    ld bc, $79e8
    jp Jump_000_37f4


jr_001_7963:
    jp Jump_000_37f7


    db $0f, $50, $05, $0f, $52, $00, $03, $89, $79, $41, $10, $6f, $0e, $03, $7a, $79

    add [hl]
    ld a, c

    db $7d, $79, $01, $13, $00, $19, $15, $05, $19, $16, $04, $06, $7d, $79

    ld bc, $0013

    call Call_000_359a
    call Call_001_7d42
    call Call_001_7cca
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3992
    jr nc, jr_001_79ad

    ld e, $01
    ld bc, $7471
    jp Jump_000_37f4


jr_001_79ad:
    call Call_000_3943
    ldh a, [$ffb4]
    and $02
    jr z, jr_001_79be

    ld e, $01
    ld bc, $770c
    jp Jump_000_37f4


jr_001_79be:
    call Call_000_37cb
    jr nc, jr_001_79cb

    ld e, $01
    ld bc, $7966
    jp Jump_000_37f4


jr_001_79cb:
    call Call_000_377c
    jr nc, jr_001_79d8

    ld e, $01
    ld bc, $79e8
    jp Jump_000_37f4


jr_001_79d8:
    call Call_000_36e6
    jr nc, jr_001_79e5

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_001_79e5:
    jp Jump_000_37f7


    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$0d06], sp
    halt

    ld a, [$a051]
    ld hl, $7a0d
    add l
    ld l, a
    jr nc, jr_001_79ff

    inc h

jr_001_79ff:
    ld a, [hl]
    ld [$a051], a
    ld a, $00
    ld [$a050], a
    xor a
    ld [$a054], a
    ret


    db $00

    nop
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld b, $07
    ld [bc], a
    dec b
    ld b, $07
    dec b
    dec c

Call_001_7a1b:
    call Call_001_7a35
    call Call_001_7a42
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_001_7b09
    call Call_000_391f
    call Call_000_3977
    jp Jump_000_3957


Call_001_7a35:
    ld a, [$a070]
    or a
    ld e, $0e
    jr z, jr_001_7a3f

    ld e, $09

jr_001_7a3f:
    jp Jump_000_0d04


Call_001_7a42:
    ld a, [$a070]
    or a
    ld e, $20
    ld bc, $0280
    jr z, jr_001_7a52

    ld e, $08
    ld bc, $00e0

jr_001_7a52:
    jp Jump_000_0d23


Call_001_7a55:
    ldh a, [$ffa5]
    and $30
    jr z, jr_001_7a8a

    ld h, d
    ld de, $fff9
    bit 4, a
    jr z, jr_001_7a73

    ld bc, $0007
    call Call_000_1ad9
    call Call_000_17a3
    jr nc, jr_001_7a82

    rla
    jr c, jr_001_7a87

    jr jr_001_7a82

jr_001_7a73:
    ld bc, $fff8
    call Call_000_1ad9
    call Call_000_16ef
    jr nc, jr_001_7a82

    dec a
    rla
    jr nc, jr_001_7a87

jr_001_7a82:
    ldh a, [$ff9a]
    ld d, a
    scf
    ret


jr_001_7a87:
    ldh a, [$ff9a]
    ld d, a

jr_001_7a8a:
    and a
    ret


Call_001_7a8c:
    call Call_000_1dc7
    jr nc, jr_001_7a9c

    call Call_001_7abb
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_001_7a9c:
    and a
    ret


Call_001_7a9e:
    call Call_000_1d8b
    jr nc, jr_001_7ab9

    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $0e
    ld a, [de]
    xor b
    rla
    jr c, jr_001_7ab9

    call Call_001_7abb
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_001_7ab9:
    and a
    ret


Call_001_7abb:
    ld h, d
    ld l, $0e
    ld a, [hl-]
    rla
    ld a, [hl+]
    ld e, $52
    jr c, jr_001_7ad0

    sub $b3
    ld a, [hl]
    sbc $00
    jr c, jr_001_7ada

    ld a, $03
    jr jr_001_7ad9

jr_001_7ad0:
    add $b3
    ld a, [hl]
    adc $00
    jr c, jr_001_7ada

    ld a, $04

jr_001_7ad9:
    ld [de], a

jr_001_7ada:
    ret


Call_001_7adb:
    call Call_000_1b61
    ret c

    ldh a, [$ff9e]
    cp $04
    jr c, jr_001_7aff

    ldh a, [$ffaf]
    inc a
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00
    ld c, b
    call Call_000_1ad9
    call Call_000_184e
    jr c, jr_001_7afc

    ldh a, [$ff9a]
    ld d, a
    jr jr_001_7aff

jr_001_7afc:
    call Call_000_1bba

jr_001_7aff:
    ld e, $4e
    ld a, [de]
    cp $31
    call z, Call_000_3c63
    and a
    ret


Call_001_7b09:
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $f3
    ld [hl+], a
    ret


    db $0f, $52, $00, $24, $05, $0d, $77, $0f, $00, $05, $06, $0c

    ld e, $45
    ld a, [de]
    rla
    ld e, $52
    ld a, [de]
    jr nc, jr_001_7b35

    cpl

jr_001_7b35:
    rra
    ld a, [bc]
    inc bc
    jr c, jr_001_7b3b

    ld a, [bc]

jr_001_7b3b:
    inc bc
    ld e, $15
    ld [de], a
    ret


    push bc
    call Call_000_1ab3
    pop bc
    jr nz, jr_001_7b72

    ld a, $01
    ld [$a070], a
    push bc
    call Call_001_7b09
    call Call_000_1af6
    pop bc
    jr nc, jr_001_7b5c

    ld e, $27
    ld a, $06
    ld [de], a
    ret


jr_001_7b5c:
    ld h, d
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ld e, $27
    jr nz, jr_001_7b6e

    ld a, $04
    ld [de], a
    ret


jr_001_7b6e:
    ld a, $05
    ld [de], a
    ret


jr_001_7b72:
    xor a
    ld [$a070], a
    ld a, [$a050]
    cp $0d
    jr nz, jr_001_7b83

    ld e, $27
    ld a, $03
    ld [de], a
    ret


jr_001_7b83:
    ld e, $10
    ld a, [de]
    rla
    jr c, jr_001_7b93

    push bc
    call Call_001_7b09
    call Call_000_1af6
    pop bc
    jr nc, jr_001_7b99

jr_001_7b93:
    ld e, $27
    ld a, $02
    ld [de], a
    ret


jr_001_7b99:
    ld h, d
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ld e, $27
    jr nz, jr_001_7bab

    ld a, $00
    ld [de], a
    ret


jr_001_7bab:
    ld a, $01
    ld [de], a
    ret


Call_001_7baf:
    ld e, $45
    ld a, [de]
    rla
    ldh a, [$ffa5]
    bit 5, a
    jr nc, jr_001_7bbb

    bit 4, a

jr_001_7bbb:
    jr z, jr_001_7bc6

    ld e, $15
    ld a, [de]
    cp h
    ld a, l
    jr z, jr_001_7bc5

    ld a, h

jr_001_7bc5:
    ld [de], a

jr_001_7bc6:
    ret


Call_001_7bc7:
    ld e, $4e
    ld a, [de]
    and $f0
    cp $70
    ld b, $00
    jr z, jr_001_7bda

    inc b
    ld a, [$a070]
    or a
    jr nz, jr_001_7bda

    inc b

jr_001_7bda:
    ld e, $4d
    ld a, [de]
    cp $04
    jr c, jr_001_7c0f

    ld e, $20
    jr nz, jr_001_7bfa

    bit 1, b
    jr nz, jr_001_7bf4

    ld e, $0b
    bit 0, b
    ld bc, $ff00
    jr nz, jr_001_7bf7

    ld e, $18

jr_001_7bf4:
    ld bc, $fe20

jr_001_7bf7:
    jp Jump_000_0cd3


jr_001_7bfa:
    bit 1, b
    jr nz, jr_001_7c09

    ld e, $0b
    bit 0, b
    ld bc, $0100
    jr nz, jr_001_7c0c

    ld e, $18

jr_001_7c09:
    ld bc, $01e0

jr_001_7c0c:
    jp Jump_000_0ca2


jr_001_7c0f:
    bit 1, b
    ld e, $0e
    jr nz, jr_001_7c1d

    bit 0, b
    ld e, $05
    jr nz, jr_001_7c1d

    ld e, $04

jr_001_7c1d:
    jp Jump_000_0d04


Call_001_7c20:
    ld e, $6d
    ld a, [de]
    cp $03
    ld e, $28
    jr c, jr_001_7c2b

    ld e, $08

jr_001_7c2b:
    jp Jump_000_0d04


Call_001_7c2e:
    call Call_000_3847
    ld a, h
    ld hl, $7c3f
    add l
    ld l, a
    jr nc, jr_001_7c3a

    inc h

jr_001_7c3a:
    ld a, [hl]
    ld e, a
    jp Jump_000_0d04


    db $0e

    db $0e

    db $0e

    inc b
    inc b
    inc b

Call_001_7c45:
    ld e, $6d
    ld a, [de]
    cp $03
    jr nc, jr_001_7c6d

    cp $01
    jr z, jr_001_7c5b

    jr nc, jr_001_7c64

    ld hl, $200e
    ld bc, $0133
    jp Jump_000_386e


jr_001_7c5b:
    ld hl, $080e
    ld bc, $00a0
    jp Jump_000_386e


jr_001_7c64:
    ld hl, $200e
    ld bc, $01e0
    jp Jump_000_386e


jr_001_7c6d:
    cp $04
    jr z, jr_001_7c7c

    jr nc, jr_001_7c85

    ld hl, $1804
    ld bc, $0133
    jp Jump_000_386e


jr_001_7c7c:
    ld hl, $0604
    ld bc, $00a0
    jp Jump_000_386e


jr_001_7c85:
    ld hl, $1804
    ld bc, $01e0
    jp Jump_000_386e


Call_001_7c8e:
    ld e, $6d
    ld a, [de]
    cp $03
    jr c, jr_001_7c97

    sub $03

jr_001_7c97:
    cp $01
    jr z, jr_001_7ca6

    jr nc, jr_001_7caf

    ld hl, $0b05
    ld bc, $0099
    jp Jump_000_386e


jr_001_7ca6:
    ld hl, $0305
    ld bc, $0040
    jp Jump_000_386e


jr_001_7caf:
    ld hl, $0b05
    ld bc, $0100
    jp Jump_000_386e


Call_001_7cb8:
    ld hl, $160e
    ld bc, $0133
    jp Jump_000_3894


Call_001_7cc1:
    ld hl, $1609
    ld bc, $00c0
    jp Jump_000_3894


Call_001_7cca:
    ld hl, $0809
    ld bc, $010c
    jp Jump_000_3894


Call_001_7cd3:
    ld hl, $2c0e
    ld bc, $0133
    jp Jump_000_3894


Call_001_7cdc:
    ldh a, [$ffa5]
    ld e, a
    and $41
    jr nz, jr_001_7cf0

    ld a, e
    and $80
    jr z, jr_001_7cf8

    ld e, $2c
    ld bc, $0133
    jp Jump_000_0d23


jr_001_7cf0:
    ld e, $2c
    ld bc, $fecd
    jp Jump_000_0d54


jr_001_7cf8:
    ld e, $0e
    jp Jump_000_0d85


Call_001_7cfd:
    ldh a, [$ffa5]
    and $41
    jr z, jr_001_7d0d

    ld e, $50
    ld bc, $feb3
    call Call_000_0d54
    jr jr_001_7d15

jr_001_7d0d:
    ld e, $14
    ld bc, $0100
    call Call_000_0d23

jr_001_7d15:
    ret


Call_001_7d16:
    ld h, d
    ld l, $6e
    ld a, [hl]
    or a
    jr z, jr_001_7d20

    dec [hl]
    jr jr_001_7d2f

jr_001_7d20:
    ldh a, [$ffa5]
    and $41
    jr z, jr_001_7d2f

    ld [hl], $0f
    ld l, $0f
    ld [hl], $00
    inc l
    ld [hl], $ff

jr_001_7d2f:
    ld e, $08
    ld bc, $00e0
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_7d3f

    ld e, $10
    ld bc, $0200

jr_001_7d3f:
    jp Jump_000_0d23


Call_001_7d42:
    ld h, d
    ld l, $6e
    ld a, [hl]
    or a
    jr z, jr_001_7d4c

    dec [hl]
    jr jr_001_7d5b

jr_001_7d4c:
    ldh a, [$ffa5]
    and $41
    jr z, jr_001_7d5b

    ld [hl], $0f
    ld l, $0f
    ld [hl], $40
    inc l
    ld [hl], $ff

jr_001_7d5b:
    ld e, $10
    ld bc, $0180
    ldh a, [$ffa5]
    and $80
    jr z, jr_001_7d6b

    ld e, $10
    ld bc, $0200

jr_001_7d6b:
    jp Jump_000_0d23


Call_001_7d6e:
    call Call_000_3ae9
    ret nc

    ld hl, $a06c
    set 3, [hl]
    ret


    ld h, $00
    ldh a, [$ffa5]
    bit 6, a
    jr nz, jr_001_7d86

    inc h
    bit 7, a
    jr nz, jr_001_7d86

    inc h

jr_001_7d86:
    ld a, h
    ld e, $27
    ld [de], a
    ret


    ld e, $27
    ld a, [de]
    cp $02
    jr nc, jr_001_7d96

    add $05
    jr jr_001_7d98

jr_001_7d96:
    ld a, $04

jr_001_7d98:
    ld e, $15
    ld [de], a
    ret


Call_001_7d9c:
    ldh a, [$ffa5]
    and $30
    jr z, jr_001_7dad

    bit 4, a
    ld a, $40
    jr nz, jr_001_7daa

    ld a, $c0

jr_001_7daa:
    ld e, $45
    ld [de], a

jr_001_7dad:
    ld e, $27
    ld a, [de]
    ld l, a
    ldh a, [$ffa5]
    and $f0
    ld h, l
    jr z, jr_001_7dc4

    ld h, $00
    bit 6, a
    jr nz, jr_001_7dc4

    inc h
    bit 7, a
    jr nz, jr_001_7dc4

    inc h

jr_001_7dc4:
    ld a, h
    cp l
    jr nz, jr_001_7dca

    and a
    ret


jr_001_7dca:
    ld [de], a
    scf
    ret


    ret


    ld [de], a
    scf
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_001_7eaa

jr_001_7eaa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_001_7edc:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7ef8:
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop

    db $08, $7f, $24, $7f

    ld b, b
    ld a, a

    db $5c, $7f, $00, $00, $08, $00, $00, $18, $f0, $ff, $08, $10, $00, $08, $00, $00
    db $28, $f0, $ff, $18, $10, $00, $18, $f0, $ff, $28, $10, $00, $28, $80, $ff, $ff
    db $08, $ff, $ff, $18, $ef, $ff, $08, $0f, $00, $08, $ff, $ff, $28, $ef, $ff, $18
    db $0f, $00, $18, $ef, $ff, $28, $0f, $00, $28, $80

jr_001_7f40:
    nop
    nop
    ld [$0000], sp
    jr @-$0e

    rst $38
    ld [$0010], sp
    ld [$0000], sp
    jr z, jr_001_7f40

    rst $38
    jr @+$12

    nop
    jr @-$0e

    rst $38
    jr z, @+$12

    nop
    jr z, jr_001_7edc

    db $08, $00, $08, $08, $00, $18

    ld hl, sp-$01

jr_001_7f64:
    ld [$0018], sp
    ld [$0008], sp

jr_001_7f6a:
    jr z, jr_001_7f64

    rst $38
    jr jr_001_7f87

    nop
    jr jr_001_7f6a

    rst $38
    jr z, jr_001_7f8d

    nop
    jr z, jr_001_7ef8

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

jr_001_7f87:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7f8d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    ld [$0000], sp
    ld [$0000], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
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
