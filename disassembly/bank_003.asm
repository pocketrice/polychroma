; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    db $17, $ff, $0d, $0d, $09, $40, $06, $33, $4e

    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $5d
    ld e, l
    ld a, [hl]
    xor $80
    ld [de], a
    ret


    db $00, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    nop
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

    db $20, $00, $02, $17, $ff, $0d, $0f, $62, $00, $0d, $2e, $4d, $11, $8c, $40, $27
    db $0f, $3d, $02, $10, $5b, $12, $f4, $42, $10, $40, $0e, $04

    ld d, l
    ld b, b

    db $5e, $40

    ld h, a
    ld b, b
    ld [hl], d
    ld b, b
    ld h, $80
    nop
    ld [$ff80], sp
    ld b, $7a
    ld b, b

    db $26, $80, $00, $08, $80, $00, $06, $7a, $40

    dec c
    jp nc, $8a42

    ld b, b
    rlca
    add b
    rst $38
    ld b, $7a
    ld b, b
    dec c
    jp nc, $8a42

    ld b, b
    rlca
    add b
    nop

    db $03, $68, $41, $43, $09, $0f, $19, $00, $08, $19, $01, $08, $0a

    ld b, $b0
    ld b, b
    add b
    nop

    db $01, $00, $18, $03, $18, $42, $43, $0d, $42, $20, $31, $40, $00, $08, $00, $00
    db $2a, $00, $24, $0e, $28, $1a, $3f, $0d, $f4, $23, $ae, $40, $11, $40, $40, $06
    db $b0, $40, $20

    ld b, b

    db $0f, $3e, $02, $07, $00, $00, $0d, $9b, $42, $12

    db $21
    ld b, c

    db $03, $3b, $42, $43, $08, $80, $ff, $0f, $39, $80, $0f, $3a, $00, $19, $00, $04
    db $19, $01, $04, $19, $00, $04, $19, $01, $04, $09, $0c, $19, $00, $02, $19, $01
    db $02, $0a, $03, $49, $42, $43, $0d, $b6, $42, $0e, $02

    db $fd
    ld b, b

    db $16, $41

    add hl, bc
    db $10
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $0a02
    dec c
    or [hl]
    ld b, d
    ld c, $02
    db $fd
    ld b, b
    ld d, $41

    db $03, $72, $42, $43, $09, $04, $19, $00, $02, $19, $01, $02, $0a

    add hl, bc
    inc b
    add hl, de
    nop
    ld bc, $0119
    ld bc, $060a
    ld b, e
    ld b, c

    db $2a, $08, $19, $00, $02, $19, $01, $02, $06, $18, $41

    inc bc
    ld [hl], d
    ld b, d
    ld b, e
    add hl, de
    nop
    ld [$0119], sp
    ld [$0019], sp
    ld [$0119], sp
    ld [$0409], sp
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $0a02
    add hl, bc
    inc b
    add hl, de
    nop
    ld bc, $0119
    ld bc, $080a
    nop
    nop
    daa
    dec c
    ld e, [hl]
    ld hl, $4165
    inc bc
    adc d
    ld b, d
    ld b, e
    rrca
    ld b, a
    nop
    inc h
    ld a, $19
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
    ld b, $55
    ld b, c
    nop
    jr nz, jr_003_4167

jr_003_4167:
    ld [bc], a

    ld bc, $4015
    call Call_000_255b
    ret c

    call Call_000_2375
    ld e, $04
    ld b, $28
    call Call_000_1f9c
    jr nc, jr_003_418c

    ld e, $07
    ld b, $28
    call Call_000_1f9c
    jr nc, jr_003_418c

    ld e, $03
    ld bc, $40b0
    jp Jump_000_0846


Jump_003_418c:
jr_003_418c:
    call Call_000_0da4
    ld e, $40
    ld a, [de]
    rlca
    ld hl, $41a0
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $a8, $41, $da, $41

    rst $18
    ld b, c

    db $13, $42

    call Call_003_5026

jr_003_41ab:
    or a
    jr z, jr_003_41c7

    bit 5, a
    ld h, d
    ld l, $3d
    ld [hl], $02
    ret z

    call Call_000_1faf

jr_003_41b9:
    ld e, $0e
    ld a, [de]
    and $80
    xor $80
    rlca
    add $02
    ld e, $40
    ld [de], a
    ret


jr_003_41c7:
    ld h, d
    ld l, $3d
    dec [hl]
    jr nz, jr_003_41d5

    ld e, $03
    ld bc, $408c
    jp Jump_000_0846


jr_003_41d5:
    call Call_000_1fbd
    jr jr_003_41b9

    call Call_000_19cb
    jr jr_003_41ab

    call Call_003_50d0

jr_003_41e2:
    or a
    jr z, jr_003_4200

    bit 7, a
    jr nz, jr_003_41f1

    bit 6, a
    ld h, d
    ld l, $3d
    ld [hl], $02
    ret z

jr_003_41f1:
    call Call_000_1fbd

jr_003_41f4:
    ld e, $10
    ld a, [de]
    and $80
    xor $80
    rlca
    ld e, $40
    ld [de], a
    ret


jr_003_4200:
    ld h, d
    ld l, $3d
    dec [hl]
    jr nz, jr_003_420e

    ld e, $03
    ld bc, $408c
    jp Jump_000_0846


jr_003_420e:
    call Call_000_1faf
    jr jr_003_41f4

    call Call_003_50f8
    jr jr_003_41e2

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4015
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $40
    ld a, $01
    ld [de], a
    ld e, $03
    ld bc, $4099
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4015
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4015
    call Call_000_255b
    ret c

    call Call_000_2375
    ld e, $27
    ld a, [de]
    cp $01
    jr nz, jr_003_4266

    call Call_000_202b
    ret c

    jr jr_003_426a

jr_003_4266:
    call Call_000_202b
    ret nc

jr_003_426a:
    ld e, $03
    ld bc, $40fd
    jp Jump_000_0846


    ld bc, $4015
    call Call_000_255b
    ret c

    call Call_000_2375
    ld h, d
    ld l, $3e
    dec [hl]
    ret nz

    ld [hl], $02
    ld l, $47
    ld a, $10
    xor [hl]
    ld [hl], a
    ret


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $4023
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    push bc
    ld b, $10
    ld e, $07
    call Call_000_1f9c
    ld a, $00
    jr nc, jr_003_42b1

    call Call_000_0647
    cp $80
    ld a, $00
    jr nc, jr_003_42b1

    inc a

jr_003_42b1:
    ld e, $27
    ld [de], a
    pop bc
    ret


    ld e, $07
    ld h, $a0
    ld l, e
    ld a, [de]
    sub [hl]
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    jr z, jr_003_42c9

    jr c, jr_003_42cc

    ld a, $02
    jr jr_003_42ce

jr_003_42c9:
    xor a
    jr jr_003_42ce

jr_003_42cc:
    ld a, $01

jr_003_42ce:
    ld e, $27
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_202b
    pop hl
    jr c, jr_003_42ec

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_003_42ec:
    ld e, $0f
    ld a, l
    ld [de], a
    ld a, h
    inc e
    ld [de], a
    ret


    db $03, $6c, $43, $43, $10, $40, $0e, $04

    inc b
    ld b, e

    db $0d, $43

    ld d, $43
    ld hl, $2643
    ret nz

    nop
    ld [$ff40], sp
    ld b, $29
    ld b, e

    db $26, $c0, $00, $08, $c0, $00, $06, $29, $43

    dec c
    jp nc, $6a42

    ld b, e
    rlca
    ld b, b
    rst $38
    ld b, $29
    ld b, e
    dec c
    jp nc, $6a42

    ld b, e
    rlca
    ret nz

    nop

    db $09, $08, $19, $00, $08, $19, $01, $08, $0a

    jr jr_003_433d

    ld [bc], a
    add hl, de
    nop
    ld [$0119], sp
    ld [$030a], sp

jr_003_433d:
    ld a, c
    ld b, e
    ld b, e
    daa
    inc h
    ld a, $0d
    ld [hl-], a
    db $10
    db $10
    add hl, bc
    inc b
    add hl, de
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

Jump_003_4355:
    ld a, [bc]
    add hl, hl
    nop
    add hl, bc

Jump_003_4359:
    inc b
    add hl, de
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
    ld a, [bc]
    ld b, $3a

Jump_003_4369:
    ld b, b
    ret nz

    nop

    ld bc, $4015
    call Call_000_255b

Call_003_4372:
    ret c

    call Call_000_2375
    jp Jump_003_418c


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4015
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_19cb
    bit 5, a
    ret z

    ld hl, $4f04
    ld a, $1d
    call Call_000_05cf
    ret


    rst $38
    ld [bc], a
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
    rst $38
    ld [bc], a
    nop
    nop
    nop

    db $62, $47, $03, $00, $00

    nop
    ld h, d
    ld b, a
    inc bc

    db $60, $60, $34, $35, $01, $02

    db $ca
    ld b, e

    db $d0, $43

    sub $43
    call c, $e243
    ld b, e
    add sp, $43
    xor $43
    or $43
    ld bc, $0002
    ld [bc], a
    db $01
    db $01

    db $01

    ld [bc], a
    ld bc, $0002
    ld bc, $0101
    ld bc, $0200
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0102
    ld bc, $0102
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $ff02
    dec [hl]
    rrca
    ld b, h
    rla
    ld b, h
    jr nz, @+$46

    add hl, hl
    ld b, h
    jr nc, jr_003_444d

    db $36, $44

    ld a, $44
    ld b, l
    ld b, h
    nop
    inc bc
    inc bc
    ld bc, $0304
    ld bc, $0102
    ld [bc], a
    inc b
    inc bc
    inc bc
    ld bc, $0102
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0201
    ld bc, $0304
    inc bc
    inc bc
    ld bc, HeaderLogo
    ld [bc], a
    inc b
    inc b
    inc bc
    ld bc, $0301

    db $03, $02, $04, $00, $01, $01, $03

    nop
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0201
    ld bc, $0302
    ld [bc], a
    inc b
    inc b

jr_003_444d:
    rst $38
    ld b, b

    db $ff

    ld [bc], a

    db $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    nop
    db $01
    nop

    db $01, $00

    db $01

    db $00, $00

    ld bc, $0101
    nop
    nop
    db $01
    db $01

    db $01, $00

    nop

    db $48, $12, $58, $14, $10, $00, $02, $40, $fe, $1c, $80, $00

    ldh [$fffe], a
    ld [de], a
    ld h, b
    nop
    ld b, b
    rst $38
    inc c
    ld b, b
    nop
    nop
    nop
    db $10
    add b
    ld bc, $fee0
    ld [de], a
    nop
    ld bc, $ff40
    inc c
    add b
    nop
    rst $38

    db $02

    nop
    nop
    nop
    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    inc sp
    ld c, [hl]
    inc bc

    db $52, $68, $38, $68, $1e, $68

    nop
    ld bc, $0001
    ld [bc], a
    rst $38

    db $02

    nop
    ld [bc], a
    ld bc, $ff40
    ret c

    db $10
    ldh a, [rLCDC]
    rst $38
    ret c

    db $10
    db $10

    db $00, $00, $e0, $10, $d0, $00, $00, $00, $80, $fd, $14, $20, $02, $ef, $c0, $fe
    db $0a, $20, $02, $ef, $40, $01, $f6, $00, $00, $00, $80, $02, $ec, $e0, $fd, $11
    db $40, $01, $f6, $e0, $fd, $11, $c0, $fe, $0a, $3a, $3b, $70, $30, $3c, $3d, $70
    db $40, $3e, $3f, $70, $50, $17, $ff, $0d, $0f, $44, $ff, $0d, $5f, $22, $0d, $72
    db $22, $0f, $45, $40, $0d, $0f, $20, $0e, $20, $2d, $0d, $ba, $22, $0d, $00, $0d
    db $da, $4b, $0d, $e3, $4b, $ba, $43, $03, $a1, $49, $43, $0b, $82, $45, $0d, $fa
    db $4b, $1e, $03

    add d
    ld b, l

    db $93, $45

    and h
    ld b, l
    ld b, $1a
    ld b, l

    db $03, $b0, $49, $43, $00, $07, $00, $ff, $29, $08, $08, $00, $ff, $2a, $10, $03
    db $53, $45, $43, $19, $19, $18, $29, $00, $19, $18, $08, $09, $04, $0f, $47, $10
    db $05, $02, $0f, $47, $00, $05, $02, $0a, $06, $66, $49

    call Call_000_1ee6
    call Call_000_1ed3
    jp Jump_000_0da4


    db $0d, $77, $45, $07, $40, $ff, $29, $06, $08, $00, $fe, $2a, $10, $03, $53, $45
    db $43, $19, $17, $16, $29, $00, $05, $0a, $06, $43, $45

    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $27
    ld a, [hl]
    ld e, $46
    ld [de], a
    ret


    db $03, $a1, $49, $43, $19, $17, $0c, $19, $16, $18, $19, $17, $0c, $19, $16, $18
    db $0c, $0d, $1f, $4c, $03, $d0, $49, $43, $09, $04, $19, $17, $10, $19, $16, $20
    db $0a

    inc c
    ld bc, $0316
    and c
    ld c, c
    ld b, e
    dec bc
    cp [hl]
    ld b, l
    dec c
    ld h, a
    ld c, h
    inc bc
    ld sp, hl
    ld c, d
    ld b, e
    add hl, bc
    inc bc
    add hl, de
    rla
    db $10
    add hl, de
    ld d, $20
    ld a, [bc]
    inc c

    db $0d, $e7, $45, $b6, $43, $05, $04, $0d, $e7, $45, $b8, $43, $05, $0e, $0d, $e7
    db $45, $b6, $43, $05, $04, $0d, $e7, $45, $b8, $43, $05, $06, $0d, $e7, $45, $b6
    db $43, $05, $04, $0d, $e7, $45, $b8, $43, $0c

    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld a, [hl+]
    ld [$dcff], a
    ld a, [hl]
    ld [$dd00], a
    ld hl, $43b4
    ld c, [hl]
    inc hl
    ld e, [hl]
    ld hl, $db51
    ld a, c
    add [hl]
    ld c, a
    inc hl
    ld a, [hl]
    adc $00
    ld b, a
    ld hl, $db53
    ld a, e
    add [hl]
    ld e, a
    inc hl
    ld a, [hl]
    adc $00
    ld d, a
    ld hl, $dcff
    ld a, $02
    call Call_000_1597
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    db $10, $4c, $13, $29, $4b, $46, $0f, $41, $01, $1c, $f6, $7c, $04, $09, $03, $0f
    db $47, $10, $19, $17, $02, $0f, $47, $00, $19, $17, $02, $0f, $47, $10, $19, $16
    db $02, $0f, $47, $00, $19, $16, $02, $0a, $0f, $41, $00, $00, $0d, $72, $22, $0d
    db $e6, $22, $0d, $05, $0d, $e6, $22, $0d, $06, $0d, $93, $23, $03, $2d, $45, $10
    db $46, $24, $11, $04, $83, $77, $0b, $0f, $46, $00, $0f, $47, $10, $09, $04, $19
    db $00, $02, $19, $01, $02, $19, $02, $02, $19, $03, $02, $19, $04, $02, $19, $05
    db $02, $19, $06, $02, $19, $07, $02, $0a, $0f, $47, $00, $0f, $5b, $01, $04, $57
    db $6d, $0c, $1a, $46, $0f, $60, $2d, $0d, $da, $4b, $0d, $e3, $4b, $ff, $43, $0d
    db $fa, $4b, $1e, $05, $b0, $46, $c7, $46, $de, $46, $01, $47, $27, $47, $06, $9e
    db $46, $03, $c1, $49, $43, $09, $02, $19, $00, $0c, $19, $01, $03, $19, $02, $06
    db $19, $01, $03, $0a, $19, $00, $14, $0c, $0d, $1f, $4c, $03, $d0, $49, $43, $09
    db $06, $19, $00, $10, $19, $01, $04, $19, $02, $08, $19, $01, $04, $0a, $0c, $03
    db $c1, $49, $43, $01, $00, $0b, $be, $45, $0d, $67, $4c, $03, $f9, $4a, $43, $09
    db $03, $19, $00, $10, $19, $01, $04, $19, $02, $08, $19, $01, $04, $0a, $19, $00
    db $24, $0c, $03, $c1, $49, $43, $19, $00, $0c, $19, $01, $02, $19, $02, $06, $19
    db $01, $03, $19, $00, $08, $0d, $75, $4c, $a8, $44, $19, $03, $0c, $03, $71, $4b
    db $43, $19, $04, $04, $19, $03, $0c, $0c, $03, $c1, $49, $43, $0d, $e6, $22, $0d
    db $04, $19, $00, $10, $19, $01, $04, $19, $02, $08, $19, $01, $04, $19, $00, $14
    db $19, $03, $08, $0d, $e6, $22, $0d, $08, $19, $04, $08, $19, $03, $10, $0c, $0f
    db $41, $01, $1c, $f6, $7c, $04, $19, $06, $08, $19, $05, $04, $19, $06, $0c, $0f
    db $41, $00, $00, $0d, $e4, $4c, $1c, $85, $47, $03, $04, $57, $6d, $0c, $19, $07
    db $10, $01, $08, $0d, $d5, $47, $e5, $44, $0d, $d5, $47, $e9, $44, $0d, $d5, $47
    db $ed, $44, $0d, $67, $23, $16, $0d, $c7, $10, $ff, $0d, $cf, $47, $0f, $4c, $00
    db $0d, $72, $22, $0d, $0a, $4d, $09, $06, $0d, $e6, $22, $0d, $07, $0a, $10, $46
    db $04, $83, $77, $0b, $0f, $46, $00, $24, $2f, $0f, $47, $10, $09, $04, $19, $00
    db $02, $19, $01, $02, $19, $02, $02, $19, $03, $02, $19, $04, $02, $19, $05, $02
    db $19, $06, $02, $19, $07, $02, $0a, $0f, $47, $00, $1a, $46, $0d, $82, $22, $1d

    ld a, $01
    ld [$a07e], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld a, [hl+]
    ld [$dcff], a
    ld a, [hl+]
    ld [$dd00], a
    ld c, [hl]
    inc hl
    ld e, [hl]
    ld hl, $db51
    ld a, c
    add [hl]
    ld c, a
    inc hl
    ld a, [hl]
    adc $00
    ld b, a
    ld hl, $db53
    ld a, e
    add [hl]
    ld e, a
    inc hl
    ld a, [hl]
    adc $00
    ld d, a
    ld hl, $dcff
    ld a, $02
    call Call_000_1597
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    db $17, $ff, $0d, $04, $57, $6d, $0c, $0d, $f9, $1f, $0f, $5c, $00, $0f, $61, $00
    db $10, $5b, $0e, $09, $28, $45, $31, $48, $a3, $48, $ff, $48, $16, $49, $00, $40
    db $5c, $45, $75, $49, $3e, $49

    db $16

    db $0f, $4b, $00, $0f, $4a, $05, $0d, $0f, $20, $08, $08, $00, $01, $0d, $03, $44
    db $4a, $43, $09, $06, $0f, $47, $00, $05, $02, $0f, $47, $10, $05, $02, $0f, $47
    db $00, $0a, $0d, $42, $20, $73, $44, $03, $4a, $4a, $43, $19, $0c, $06, $19, $0b
    db $06, $19, $0a, $06, $19, $0d, $06, $06, $5c, $48, $27, $0d, $40, $4c, $76, $44
    db $03, $b2, $4a, $43, $19, $0c, $08

    add hl, de
    dec bc
    ld [$0a19], sp
    ld [$0d19], sp
    ld [$7506], sp
    ld c, b
    inc bc
    ld b, h
    ld c, d
    ld b, e
    dec b
    jr jr_003_4891

    ld h, [hl]
    ld c, c
    ld [$0000], sp
    inc bc

jr_003_4891:
    ld b, c
    ld c, d
    ld b, e
    add hl, de
    inc c
    ld [$0b19], sp
    ld [$0a19], sp
    ld [$0d19], sp
    ld [$9406], sp
    ld c, b

    db $0d, $0f, $20, $08, $08, $3f, $10, $40, $0e, $03, $b4, $48, $cd, $48, $e6, $48

    nop

    db $19, $0e, $0c, $19, $10, $02, $19, $11, $04, $03, $6b, $4b, $43, $24, $4d, $19
    db $10, $16, $0f, $1f, $80, $19, $0e, $04, $16, $19, $0f, $0c, $19, $12, $02, $19
    db $13, $04, $03, $6b, $4b, $43, $24, $4d, $19, $12, $16, $0f, $1f, $80, $19, $0f
    db $04, $16, $19, $0e, $0c, $19, $14, $02, $19, $15, $04, $03, $6b, $4b, $43, $24
    db $4d, $19, $14, $16, $0f, $1f, $80, $19, $0e, $04, $16, $0d, $a0, $4c, $0d, $d1
    db $1f, $f0, $10, $0d, $0f, $20, $08, $08, $bf, $01, $09, $03, $b2, $4b, $43, $24
    db $1a, $00, $0f, $4b, $00, $0f, $4a, $05, $0d, $c7, $4c, $0d, $0f, $20, $08, $08
    db $00, $01, $0d, $03, $44, $4a, $43, $09, $05, $0f, $47, $00, $05, $02, $0f, $47
    db $10, $05, $02, $0f, $47, $00, $0a, $06, $53, $48, $0d, $d1, $1f, $f0, $10, $0d
    db $0f, $20, $08, $08, $bf, $03, $5a, $49, $43, $24, $1a, $07, $80, $fe, $29, $10
    db $19, $09, $18, $29, $00, $16

    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4494
    jp Jump_000_255b


    db $0f, $46, $00, $04, $e6, $72, $0b, $0f, $1f, $80, $24, $2e, $06, $d3, $4e, $0d
    db $0f, $4d, $03, $cb, $4b, $43, $04, $46, $72, $0b, $0f, $46, $00, $19, $00, $04
    db $04, $52, $6f, $0b, $19, $02, $08, $19, $07, $08, $19, $08, $08, $19, $01, $08
    db $19, $02, $0c, $04, $46, $72, $0b, $19, $00, $08, $16

    ld bc, $4398
    call Call_000_233c
    ret nc

    ld e, $03
    ld bc, $461f
    jp Jump_000_0846


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $15
    ld e, l
    ld a, $2f
    sub [hl]
    ld [de], a
    ld l, $47
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    ld bc, $43a6
    call Call_000_233c
    ret nc

    ld e, $03
    ld bc, $474e
    jp Jump_000_0846


    ld e, $5b
    ld a, [de]
    or a
    jr nz, jr_003_49e6

    ld bc, $4398
    call Call_000_233c
    jr nc, jr_003_49f6

    ld e, $03
    ld bc, $461f
    jp Jump_000_0846


jr_003_49e6:
    ld bc, $43a6
    call Call_000_233c
    jr nc, jr_003_49f6

    ld e, $03
    ld bc, $474e
    jp Jump_000_0846


jr_003_49f6:
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_49ff

    dec a
    ld [de], a
    ret


jr_003_49ff:
    ld e, $3b
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
    add b
    ld hl, $446f
    add l
    ld l, a
    jr nc, jr_003_4a17

    inc h

jr_003_4a17:
    ld a, [$db51]
    add [hl]
    ld c, a
    inc hl
    ld b, $00
    ld a, [$db53]
    add [hl]
    ld e, a
    ld d, b
    ld a, $0d
    ld h, $a8
    ld l, $b2
    call Call_000_07c4
    ld a, h
    or a
    ret z

    ldh a, [$ff9a]
    ld d, a
    ld l, $48
    ld [hl], d
    ld l, $5b
    ld [hl], $01
    ld e, $26
    ld a, $60
    ld [de], a
    ret


    call Call_000_0da4

    ld bc, $444f
    jp Jump_000_255b


    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_4a7a

    dec a
    ld [de], a
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $444f
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $03
    ld bc, $486b
    jp Jump_000_0846


jr_003_4a7a:
    ld bc, $444f
    call Call_000_255b
    ret c

    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $27
    ld a, [hl]
    cp $04
    jr z, jr_003_4a9b

jr_003_4a8c:
    ld e, $27
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $4a
    inc l
    ld [hl], $52
    ret


jr_003_4a9b:
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $15
    ld a, [hl]
    cp $03
    jr z, jr_003_4aaa

    cp $04
    jr nz, jr_003_4a8c

jr_003_4aaa:
    ld e, $03
    ld bc, $486c
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $444f
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    ld l, $26
    dec [hl]
    jr z, jr_003_4ae2

    ld e, $3b
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    jp Jump_003_4c59


jr_003_4ae2:
    ld e, $27
    ld a, [de]
    cp $04
    jr z, jr_003_4af1

    ld e, $03
    ld bc, $4884
    jp Jump_000_0846


jr_003_4af1:
    ld e, $03
    ld bc, $488d
    jp Jump_000_0846


    ld e, $5b
    ld a, [de]
    or a
    jr nz, jr_003_4b0f

    ld bc, $4398
    call Call_000_233c
    jr nc, jr_003_4b1f

    ld e, $03
    ld bc, $461f
    jp Jump_000_0846


jr_003_4b0f:
    ld bc, $43a6
    call Call_000_233c
    jr nc, jr_003_4b1f

    ld e, $03
    ld bc, $474e
    jp Jump_000_0846


jr_003_4b1f:
    ld e, $40
    ld a, [de]
    cp $03
    ret z

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_4b2e

    dec a
    ld [de], a
    ret


jr_003_4b2e:
    ld e, $3b
    ld a, [de]
    inc e
    ld l, a
    ld a, [de]
    ld h, a
    ld e, $26
    ld a, $2c
    ld [de], a
    ld a, [$db51]
    add [hl]
    ld c, a
    inc hl
    ld a, [$db53]
    add [hl]
    ld e, a
    inc hl
    ld a, l
    ld b, h
    ld l, $3b
    ld h, d
    ld [hl+], a
    ld [hl], b
    xor a
    ld b, a
    ld d, a
    ld a, $0d
    ld h, $a8
    ld l, $b2
    call Call_000_07c4
    ldh a, [$ff9a]
    ld d, a
    ld l, $48
    ld [hl], d
    ld l, $5b
    ld [hl], $02
    ld l, $40
    ld e, l
    ld a, [de]
    ld [hl], a
    inc a
    ld [de], a
    ret


    ld bc, $4494
    jp Jump_000_255b


    ld bc, $43a6
    call Call_000_233c
    jr nc, jr_003_4b81

    ld e, $03
    ld bc, $474e
    jp Jump_000_0846


jr_003_4b81:
    ld e, $40
    ld a, [de]
    cp $02
    ret z

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_4b90

    dec a
    ld [de], a
    ret


jr_003_4b90:
    ld e, $3b
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    ld b, a
    ld a, h
    ld [de], a
    dec e
    ld a, l
    ld [de], a
    ld a, b
    ld e, $3f
    ld [de], a
    ld a, $03
    ld e, $0d
    call Call_000_2319
    ld e, $26
    ld a, $18
    ld [de], a
    ret


    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_4bbf

    dec a
    ld [de], a
    call Call_000_1ee6
    jr jr_003_4bc2

jr_003_4bbf:
    call Call_000_1ed3

jr_003_4bc2:
    call Call_000_0da4
    ld bc, $4494
    jp Jump_000_255b


    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    ret z

    call Call_000_1ee6
    call Call_000_1ed3
    jp Jump_000_0da4


    call Call_000_0647
    and $07
    ld e, $27
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $27
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_003_4bf2

    inc h

jr_003_4bf2:
    ld a, [hl+]
    ld e, $39
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $39
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_003_4c10

    ld a, [hl+]
    cpl
    inc a
    add l
    ld l, a
    ld a, $ff
    adc h
    ld h, a
    ld a, [hl+]

jr_003_4c10:
    ld e, $27
    ld [de], a
    ld e, $39
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    xor a
    ld e, $26
    ld [de], a
    ret


    push bc
    call Call_000_0647
    ld c, $00

jr_003_4c25:
    sub $2b
    jr c, jr_003_4c2c

    inc c
    jr jr_003_4c25

jr_003_4c2c:
    ld hl, $445d
    ld a, c
    rlca
    add c
    add l
    ld l, a
    jr nc, jr_003_4c37

    inc h

jr_003_4c37:
    ld e, $3b
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    pop bc
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $26
    ld a, $03
    ld [de], a
    ld e, $27
    ld a, [de]
    cp $04
    jr nz, jr_003_4c59

    ld a, l
    add $0f
    ld l, a
    jr nc, jr_003_4c59

    inc h

Jump_003_4c59:
jr_003_4c59:
    call Call_000_20be
    call Call_000_20f9
    ld e, $3b
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld a, $a2
    ld e, $3b
    ld [de], a
    inc e
    ld a, $44
    ld [de], a
    xor a
    ld e, $40
    ld [de], a
    ret


    push bc
    call Call_000_0647
    ld c, $00

jr_003_4c7b:
    sub $34
    jr c, jr_003_4c82

    inc c
    jr jr_003_4c7b

jr_003_4c82:
    ld e, c
    pop bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, e
    rlca
    add l
    ld l, a
    jr nc, jr_003_4c91

    inc h

jr_003_4c91:
    ld e, $3b
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    xor a
    ld e, $26
    ld [de], a
    ld e, $40
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $3f
    ld a, [hl]
    ld hl, $44b2
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_003_4cb3

    inc h

jr_003_4cb3:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $11
    ld a, [hl+]
    ld [de], a
    ld e, $26
    ld a, [hl+]
    ld [de], a
    ld e, $12
    ld a, [hl]
    ld [de], a
    ret


    ld hl, $4471
    ld e, $04
    ld a, [$db51]
    add [hl]
    inc hl
    ld [de], a
    ld e, $07
    ld a, [$db53]
    add [hl]
    ld [de], a
    ld e, $26
    ld a, $2a
    ld [de], a
    ld e, $45
    ld a, $c0
    ld [de], a
    ret


    push bc
    ld h, $a8
    ld c, $0a

jr_003_4ce9:
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_003_4d02

    ld l, $48
    ld a, [hl]
    cp d
    jr nz, jr_003_4d02

    ld a, c
    ldh [$ff80], a
    call Call_000_0bba
    ldh a, [$ff9a]
    ld d, a
    ldh a, [$ff80]
    ld c, a

jr_003_4d02:
    dec c
    jr z, jr_003_4d08

    inc h
    jr jr_003_4ce9

jr_003_4d08:
    pop bc
    ret


    xor a
    ld [$dd01], a
    ret


    ld hl, $dd01
    ld a, [hl]
    inc [hl]
    ld hl, $44c1
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_003_4d20

    inc h

jr_003_4d20:
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


    push bc
    call Call_003_4fb2
    ld e, $27
    ld [de], a
    pop bc
    ld e, $40
    ld l, a
    and $03
    jr z, jr_003_4d40

    dec a
    ld [de], a
    ret


jr_003_4d40:
    ld a, l
    rrca
    rrca
    inc a
    ld [de], a
    ret


    db $02, $9b, $4d, $03, $33, $4e, $03, $00, $00, $00, $2a, $4f, $03, $0d, $8b, $4d
    db $0d, $92, $0f, $07, $00, $00, $07, $00, $00, $08, $80, $00, $03, $6f, $4d, $43
    db $05, $20

    rrca
    ld c, h
    nop
    dec de
    ld h, [hl]
    ld c, c
    inc bc

    call Call_000_0da4
    ld b, d
    ld c, $62
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $4c
    xor a
    ld [de], a
    ld e, $03
    ld bc, $4966
    jp Jump_000_0846


    push bc
    ld e, $63
    ld hl, $4d46
    ld c, $0d

jr_003_4d93:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_003_4d93

    pop bc
    ret


    db $0f, $4c, $00, $17, $05, $0e, $0d, $af, $4d, $03, $d6, $4d, $43, $00

    ld e, $48
    ld a, [de]
    ld h, a
    jr jr_003_4db5

    ld a, $a0
    ld h, a
    ld e, $48
    ld [de], a

jr_003_4db5:
    ld e, $07
    ld l, e
    ld a, [de]
    sub [hl]
    ld [de], a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    ld [de], a
    ld e, $04
    ld l, e
    ld a, [de]
    sub [hl]
    ld [de], a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    ld [de], a
    rla
    ld a, $d6
    jr nc, jr_003_4dd2

    cpl
    inc a

jr_003_4dd2:
    ld e, $11
    ld [de], a
    ret


    call Call_003_4dfe
    ret nc

    ld e, $4a
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld a, [$a056]
    inc a
    ld h, a
    call Call_000_30e0
    ld hl, $a056
    inc [hl]
    ld hl, $a055
    dec [hl]
    ld h, d
    jp Jump_000_0bba


    call Call_003_4dfe
    ld e, $00
    jr nc, jr_003_4dfd

    inc e

jr_003_4dfd:
    ret


Call_003_4dfe:
    ld a, [$a081]
    dec a
    ld b, a
    add a
    inc a
    ld c, a
    ld e, $04
    ld a, [de]
    add b
    cp c
    ret c

    call Call_000_0c80
    ld h, d
    ld l, $07
    ld a, [$a080]
    cpl
    inc a
    add [hl]
    cpl
    inc a
    ld b, a
    ld c, $00
    sra b
    rr c
    sra b
    rr c
    sra b
    rr c
    ld l, $0f
    ld [hl], c
    inc l
    ld [hl], b
    call Call_000_0da4
    and a
    ret


    db $17, $ff, $0d, $18, $0f, $48, $ff, $24, $2e, $10, $5d, $1a, $45, $0f, $46, $00
    db $04, $e6, $72, $0b, $0f, $4c, $00, $0d, $12, $4f, $0e, $05, $59, $4e, $74, $4e
    db $a1, $4e, $d3, $4e, $f7, $4e, $19, $00, $01, $19, $01, $01, $19, $02, $01, $19
    db $03, $01, $19, $04, $01, $19, $05, $01, $19, $06, $05, $0f, $47, $10, $05, $03
    db $16, $19, $1c, $01, $19, $1d, $01, $19, $1e, $01, $19, $1f, $01, $19, $20, $01
    db $19, $21, $01, $19, $22, $02, $19, $23, $01, $19, $24, $01, $19, $25, $01, $19
    db $26, $01, $19, $27, $01, $19, $28, $05, $0f, $47, $10, $05, $03, $16, $19, $07
    db $01, $19, $08, $01, $19, $09, $01, $19, $0a, $01, $19, $0b, $01, $19, $0c, $02
    db $0f, $47, $10, $05, $02, $0f, $47, $00, $19, $0d, $01, $19, $0e, $01, $19, $0f
    db $01, $19, $10, $01, $19, $11, $01, $19, $12, $05, $0f, $47, $10, $05, $03, $16
    db $19, $07, $01, $19, $13, $01, $19, $14, $01, $19, $15, $01, $19, $16, $01, $19
    db $17, $01, $19, $18, $01, $19, $19, $01, $19, $1a, $01, $19, $1b, $05, $0f, $47
    db $10, $05, $03, $16, $19, $29, $01, $19, $2a, $01, $19, $2b, $01, $19, $2c, $01
    db $19, $2d, $01, $19, $2e, $02, $19, $2f, $05, $0f, $47, $10, $05, $03, $16

    call Call_000_0647
    and $03
    inc a
    ld e, a
    ld a, [$dd11]
    add e
    cp $05
    jr c, jr_003_4f23

    sub $05

jr_003_4f23:
    ld e, $27
    ld [de], a
    ld [$dd11], a
    ret


    rla
    rst $38
    dec c
    rrca
    ld b, [hl]
    nop
    rrca
    ld b, a
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp
    ld [$4c0f], sp
    nop
    rrca
    ld h, b
    ld [$610f], sp
    ld b, b
    inc bc
    ld [hl], e
    ld c, a
    ld b, e
    inc b
    ld l, $70
    ld a, [bc]
    ld bc, $1800
    add hl, bc
    ld [$0008], sp
    ld bc, $0205
    ld [$ff00], sp
    dec b
    ld [bc], a
    ld a, [bc]
    jr jr_003_4f61

    ld e, d
    rrca
    rra
    add b
    inc h

jr_003_4f61:
    add hl, de
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, a
    db $10
    add hl, de
    ld b, $04
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    inc b
    ld d, $cd
    and h
    dec c
    ld bc, $4fa4
    call Call_000_255b
    ld a, [$dd2c]
    bit 3, a
    ret z

    ld e, $5c
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    call Call_000_1ec0
    cpl
    ld [de], a
    ld bc, $4fa1
    call Call_000_0faf
    call Call_000_2871
    ld h, d
    jp Jump_000_0bba


    ld de, $0000
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

Call_003_4fb2:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f5
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $f5
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    call Call_003_5180
    jr c, jr_003_4fdf

    ld hl, $ffad
    set 2, [hl]
    ld h, d
    ld l, $04
    ld a, [hl]
    sub $04
    ld [hl+], a
    jp nc, Jump_003_5021

    dec [hl]
    jp Jump_003_5021


jr_003_4fdf:
    call Call_003_51f4
    jr c, jr_003_4ff7

    ld hl, $ffad
    set 3, [hl]
    ld h, d
    ld l, $04
    ld a, [hl]
    add $04
    ld [hl+], a
    jp nc, Jump_003_5021

    inc [hl]
    jp Jump_003_5021


jr_003_4ff7:
    call Call_000_1c0a
    jr nc, jr_003_500d

    ld hl, $ffad
    set 0, [hl]
    ld l, $07
    ld h, d
    ld a, [hl]
    sub $04
    ld [hl+], a
    jr nc, jr_003_5021

    dec [hl]
    jr jr_003_5021

jr_003_500d:
    call Call_000_1c88
    jr nc, jr_003_5021

    ld hl, $ffad
    set 1, [hl]
    ld l, $07
    ld h, d
    ld a, [hl]
    add $04
    ld [hl+], a
    jr nc, jr_003_5021

    inc [hl]

Jump_003_5021:
jr_003_5021:
    ld hl, $ffad
    ld a, [hl]
    ret


Call_003_5026:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    call Call_003_504e
    jr nc, jr_003_5042

    ld hl, $ffad
    set 5, [hl]

jr_003_5042:
    call Call_003_505c
    ld hl, $ffad
    jr c, jr_003_504c

    set 6, [hl]

jr_003_504c:
    ld a, [hl]
    ret


Call_003_504e:
    ld h, d
    ld l, $0e
    ldh a, [$ffaf]
    ld e, a
    rla
    sbc a
    ld d, a
    bit 7, [hl]
    jp Jump_000_1d96


Call_003_505c:
    ld h, d
    ldh a, [$ffae]
    dec a
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00
    ld c, b
    call Call_000_1ad9
    call Call_000_18d7
    jr c, jr_003_50b5

    bit 3, c
    jr z, jr_003_5090

    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_18d7
    jr nc, jr_003_50ab

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_003_50b5

    ldh a, [$ffb1]
    cpl
    scf
    adc l
    jr jr_003_50b5

jr_003_5090:
    ldh a, [$ffb0]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_18d7
    jr nc, jr_003_50ab

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_003_50b5

    ldh a, [$ffb0]
    add l
    jr jr_003_50b5

jr_003_50ab:
    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ld a, $00
    ld [de], a
    scf
    ret


jr_003_50b5:
    dec a
    ld l, a
    rlca
    sbc a
    ld b, a
    ldh a, [$ff9a]
    ld h, a
    ld a, l
    ld l, $06
    ld [hl], $00
    inc l
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ldh a, [$ff9e]
    ld l, $4d
    ld [hl], a
    ld d, h
    and a
    ret


Call_003_50d0:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    call Call_003_5251
    jr nc, jr_003_50ec

    ld hl, $ffad
    set 7, [hl]

jr_003_50ec:
    call Call_003_5180
    ld hl, $ffad
    jr c, jr_003_50f6

    set 5, [hl]

jr_003_50f6:
    ld a, [hl]
    ret


Call_003_50f8:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    call Call_003_5251
    jr nc, jr_003_5114

    ld hl, $ffad
    set 7, [hl]

jr_003_5114:
    call Call_003_51f4
    ld hl, $ffad
    jr c, jr_003_511e

    set 5, [hl]

jr_003_511e:
    ld a, [hl]
    ret


Call_003_5120:
    ld h, d
    ld bc, $0007
    ld de, $fff9
    call Call_000_1ad9
    call Call_000_17a3
    jr nc, jr_003_5132

    rla
    jr c, jr_003_5176

jr_003_5132:
    ldh a, [$ff9a]
    ld h, a
    ld bc, $0007
    ld de, $0006
    call Call_000_1ad9
    call Call_000_17a3
    jr nc, jr_003_5146

    rla
    jr c, jr_003_5176

jr_003_5146:
    ldh a, [$ff9a]
    ld h, a
    ld bc, $fff8
    ld de, $fff9
    call Call_000_1ad9
    call Call_000_16ef
    jr nc, jr_003_515b

    dec a
    rla
    jr nc, jr_003_5176

jr_003_515b:
    ldh a, [$ff9a]
    ld h, a
    ld bc, $0005
    ld de, $0006
    call Call_000_1ad9
    call Call_000_16ef
    jr nc, jr_003_5170

    dec a
    rla
    jr nc, jr_003_5176

jr_003_5170:
    ldh a, [$ff9a]
    ld d, a

jr_003_5173:
    ld a, $00
    ret


jr_003_5176:
    ldh a, [$ff9a]
    ld d, a
    ldh a, [$ff9e]
    cp $01
    ret z

    jr jr_003_5173

Call_003_5180:
    ld h, d
    ldh a, [$ffb0]
    dec a
    ld c, a
    rla
    sbc a
    ld b, a
    ld d, $00
    ld e, d
    call Call_000_1ad9
    call Call_000_1716
    jr c, jr_003_51d9

    bit 3, e
    jr z, jr_003_51b4

    ldh a, [$ffaf]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_1716
    jr nc, jr_003_51cf

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_003_51d9

    ldh a, [$ffaf]
    cpl
    scf
    adc l
    jr jr_003_51d9

jr_003_51b4:
    ldh a, [$ffae]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_1716
    jr nc, jr_003_51cf

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_003_51d9

    ldh a, [$ffae]
    add l
    jr jr_003_51d9

jr_003_51cf:
    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ld a, $00
    ld [de], a
    scf
    ret


jr_003_51d9:
    dec a

Jump_003_51da:
    ld l, a
    rlca
    sbc a
    ld b, a
    ldh a, [$ff9a]
    ld h, a
    ld a, l
    ld l, $03
    ld [hl], $00
    inc l
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ldh a, [$ff9e]
    ld l, $4d
    ld [hl], a
    ld d, h
    and a
    ret


Call_003_51f4:
    ld h, d
    ldh a, [$ffb1]
    inc a
    ld c, a
    rla
    sbc a
    ld b, a
    ld d, $00
    ld e, d
    call Call_000_1ad9
    call Call_000_17c7
    jr c, jr_003_524d

    bit 3, e
    jr z, jr_003_5226

    ldh a, [$ffaf]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_17c7
    jr nc, jr_003_5243

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_003_524d

    ldh a, [$ffaf]
    add l
    jr jr_003_524d

jr_003_5226:
    ldh a, [$ffae]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_17c7
    jr nc, jr_003_5243

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_003_524d

    ldh a, [$ffae]
    cpl
    scf
    adc l
    jr jr_003_524d

jr_003_5243:
    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ld a, $00
    ld [de], a
    scf
    ret


jr_003_524d:
    inc a
    jp Jump_003_51da


Call_003_5251:
    ld h, d
    ld l, $10
    ld c, $00
    ld b, c
    bit 7, [hl]
    jr nz, jr_003_5272

    ldh a, [$ffaf]
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_1ad9
    call Call_000_184e
    jp nc, Jump_000_1e6d

    ld l, a
    rlca
    jp c, Jump_003_528a

    jp Jump_000_1e6d


jr_003_5272:
    ldh a, [$ffae]
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_1ad9
    call Call_000_18d7
    jp nc, Jump_000_1e6d

    ld l, a
    dec a
    rlca
    jp nc, Jump_003_52ac

    jp Jump_000_1e6d


Jump_003_528a:
    ld c, l
    ldh a, [$ff9a]
    ld h, a
    ld l, $06
    ld b, [hl]
    ld l, $0f
    ld a, [hl+]
    scf
    sbc b
    ld a, [hl]
    sbc $ff
    add c
    jp nc, Jump_000_1e6d

    ld l, $06
    ld [hl], $80
    inc l
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, $ff
    adc [hl]
    ld [hl], a
    ld d, h
    scf
    ret


Jump_003_52ac:
    ld c, l
    ldh a, [$ff9a]
    ld h, a
    ld l, $06
    ld b, [hl]
    ld l, $0f
    ld a, [hl+]
    scf
    sbc b
    ld a, [hl]
    sbc $00
    add c
    jp c, Jump_000_1e6d

    ld l, $06
    ld [hl], $80
    inc l
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ld d, h
    scf
    ret


Call_003_52ce:
    push bc
    ld a, [$db3e]
    ld b, a
    ld a, [$db3d]
    jr jr_003_52d9

jr_003_52d8:
    add a

jr_003_52d9:
    dec b
    jr nz, jr_003_52d8

    ldh [$ff80], a
    ld d, $c9
    ld hl, $b300
    ld b, $00

jr_003_52e5:
    ld e, [hl]
    ld a, [de]
    cp $40
    jr z, jr_003_52ef

    cp $98
    jr nz, jr_003_5334

jr_003_52ef:
    inc e
    ld a, e
    ld [hl], a
    ldh [$ff81], a
    push hl
    push de
    push bc
    ld a, [de]
    cp $10
    jr z, jr_003_530a

    cp $18
    jr z, jr_003_530a

    cp $90
    jr z, jr_003_530a

    ld e, l
    swap l
    ld c, l
    jr jr_003_5320

jr_003_530a:
    ld e, l
    swap l
    ld c, l
    ld a, [$db3d]
    ld b, a
    ld a, h
    ld d, $ff
    sub $b3

jr_003_5317:
    inc d
    sub b
    jr nc, jr_003_5317

    add b
    ld b, a
    call Call_000_3bfb

jr_003_5320:
    ldh a, [$ff81]
    ldh [$ff84], a
    call Call_000_15b0
    ld e, $24
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop bc
    pop de
    pop hl

jr_003_5334:
    inc l
    dec b
    jr nz, jr_003_52e5

    inc h
    ldh a, [$ff80]
    dec a
    ldh [$ff80], a
    jr nz, jr_003_52e5

    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $60, $00, $c0, $00, $20, $00, $02, $30, $00, $03, $60, $00, $c0, $00, $40, $00

    add b
    nop

    db $28, $14, $10, $10, $40, $80, $20, $40

    ld h, b
    nop
    ret nz

    nop

    db $80, $fe, $10, $40, $fe, $10

    jr nz, jr_003_53a7

    db $18, $80, $01, $1c, $c0, $01

    ld b, $02
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
    inc sp

jr_003_53a7:
    ld c, [hl]
    inc bc
    ld b, b
    jr z, jr_003_53ac

jr_003_53ac:
    ld bc, $0180
    ld hl, sp+$00
    nop
    db $f4
    nop
    nop
    stop
    ld [bc], a
    stop
    ld [bc], a
    jr nz, jr_003_53d1

    db $10
    inc c
    jr nz, jr_003_53d9

    nop
    ld bc, $0103
    nop
    ld [bc], a
    nop
    ld bc, $0103
    nop
    ld [bc], a
    ld h, b
    inc bc
    ld b, b
    nop

jr_003_53d1:
    db $fc
    ld h, b
    inc bc
    ret nz

    rst $38
    inc b
    nop
    inc bc

jr_003_53d9:
    ret nz

    nop
    db $fc
    nop
    inc bc
    ld b, b
    rst $38
    inc b
    ld b, b
    ld bc, $00f6
    nop
    nop
    ret nz

    ld bc, $00f5
    nop
    nop
    ldh a, [rP1]
    ld sp, hl
    db $10
    rst $38
    rlca
    nop
    ld bc, $00f8
    rst $38
    ld [$00f0], sp
    ld sp, hl
    ldh a, [rP1]
    ld sp, hl
    nop
    ld bc, $00f8
    ld bc, $80f8
    nop
    ret nz

    nop
    rla
    rst $38
    dec c
    inc bc
    ld d, $54
    ld b, e
    ld bc, $0f00
    ld h, c
    ld b, b
    nop
    ld bc, $5429
    call Call_000_255b
    ld a, [$dd2c]
    bit 3, a
    ret z

    call Call_003_52ce
    ld h, d
    jp Jump_000_0bba


    rst $38
    ld bc, $4d9b
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

    db $17, $ff, $0d, $27, $10, $5b, $0e, $04, $47, $54, $8f, $54

    adc [hl]
    ld d, l
    xor d
    ld d, l

    db $0d, $d3, $20, $54, $54, $0d, $ad, $20, $58, $54, $06, $5e, $54, $60, $00

    sub b
    nop

    db $a0, $fe, $16

    ld [hl], b
    cp $19

    db $03, $83, $54, $43, $19, $00, $20, $0d, $58, $22, $19, $02, $04, $19, $01, $06
    db $19, $02, $04, $19, $00, $04, $19, $02, $04, $19, $01, $06, $19, $02, $04, $0d
    db $58, $22, $06, $62, $54

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5345
    jp Jump_000_255b


    db $01, $01, $0d, $80, $1f, $11, $c3, $54, $08, $00, $00, $2a, $00, $03, $a1, $54
    db $43, $00

    ld bc, $5345
    call Call_000_255b
    ret c

    call Call_000_2375
    ld e, $04
    ld b, $48
    call Call_000_1f9c
    ret nc

    ld e, $07
    ld b, $48
    call Call_000_1f9c
    ret nc

    ld e, $03
    ld bc, $54f1
    jp Jump_000_0846


    db $03, $d3, $54, $43, $08, $80, $00, $0d, $5f, $20, $d0, $54, $00, $20, $80, $01

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5345
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $03
    ld bc, $5497
    jp Jump_000_0846


    db $03, $20, $55, $43, $10, $5c, $12, $0d, $55, $22, $34, $55, $03, $19, $02, $04
    db $19, $00, $04, $19, $02, $04, $19, $01, $04, $06, $fe, $54, $22, $61, $55, $03
    db $19, $02, $02, $19, $00, $02, $19, $02, $02, $19, $01, $02, $06, $11, $55

    call Call_000_1ed3
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $5345
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    db $05, $20, $2a, $f8, $05, $18, $2a, $00, $05, $28, $2a, $08, $05, $30, $2a, $00
    db $28, $13, $40, $52, $55, $05, $14, $28, $13, $80

    ld d, d
    ld d, l

    db $05, $14, $08, $00, $00, $27, $05, $20, $0d, $32, $10, $10, $05, $10, $29, $00
    db $00, $05, $10, $2a, $e8, $05, $10, $2a, $00, $05, $0c

    ld a, [hl+]
    jr jr_003_5573

    jr nz, jr_003_559a

    nop
    jr z, jr_003_5586

jr_003_5573:
    ld b, b
    ld a, a
    ld d, l
    dec b
    ld a, [bc]
    jr z, jr_003_558d

    add b
    ld a, a
    ld d, l
    dec b
    ld a, [bc]
    ld [$0000], sp
    daa
    dec b
    jr jr_003_5593

jr_003_5586:
    ld [hl-], a
    db $10
    inc d
    dec b
    db $10
    add hl, hl
    nop

jr_003_558d:
    nop
    ld bc, $03ff
    or c
    ld d, l

jr_003_5593:
    ld b, e
    nop
    daa
    dec c
    db $d3
    jr nz, @-$5b

jr_003_559a:
    ld d, l
    dec c
    jp z, $a720

    ld d, l
    ld b, $5e
    ld d, h
    ld h, b
    ld bc, $0190
    add b
    ld bc, $03e8
    jp z, Jump_003_4355

    ld bc, $00ff
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc hl
    ld a, [de]
    sbc [hl]
    ret nc

    ld a, c
    cp $f8
    ret nc

    ld e, $03
    ld bc, $5595
    jp Jump_000_0846


    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc hl
    ld a, [de]
    sbc [hl]
    ret c

    ld a, c
    cp $a8
    ret c

    ld e, $03
    ld bc, $5595
    jp Jump_000_0846


    db $17, $ff, $0d, $27, $0d, $80, $1f, $11, $15, $56, $10, $5b, $12, $88, $56, $03
    db $2b, $56, $43, $0f, $40, $00, $0d, $d3, $20, $61, $53, $10, $5c, $12, $0c, $56
    db $19, $00, $10, $19, $01, $10, $06, $03, $56, $19, $00, $0a, $19, $01, $0a, $06
    db $0c, $56, $01, $00, $03, $61, $56, $43, $0d, $42, $20, $65, $53, $00, $08, $00
    db $00, $2a, $00, $24, $0e, $06, $ed, $55

    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    jr nz, jr_003_564a

    ld e, $03
    ld bc, $5615
    jp Jump_000_0846


jr_003_564a:
    call Call_003_5656
    ld e, $4d
    ld a, [de]
    cp $04
    ret c

    jp Jump_000_1ef9


Call_003_5656:
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 4, a
    ret z

    jp Jump_000_1ef9


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    call Call_000_2235
    ld e, $40
    ld [de], a
    ld e, $03
    ld bc, $5621
    jp Jump_000_0846


    db $03, $fc, $56, $43, $0d, $ab, $56, $0d, $be, $23, $6b, $53, $10, $5c, $12, $a2
    db $56, $19, $00, $10, $19, $01, $10, $06, $99, $56, $19, $00, $0a, $19, $01, $0a
    db $06, $a2, $56

    ld e, $5c
    ld a, [de]
    ld hl, $5373
    or a
    jr z, jr_003_56b5

    inc hl

jr_003_56b5:
    ld e, $26
    ld a, [hl+]
    ld [de], a
    ld e, $3b
    ld [de], a
    inc e
    inc hl
    ld a, [hl+]
    ld [de], a
    inc e
    inc hl
    ld a, [hl+]
    ld [de], a
    inc e
    inc hl
    ld a, [hl]
    ld [de], a
    ret


    db $03, $5c, $57, $43, $01, $00, $0f, $40, $00, $0d, $e2, $56, $0d, $42, $20, $87
    db $53, $0d, $be, $23, $6b, $53, $24, $0d, $00

    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    add e
    ld hl, $537f
    add l
    ld l, a
    jr nc, jr_003_56f0

    inc h

jr_003_56f0:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    ld a, [hl]
    ld e, $26
    ld [de], a
    ret


    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    jr nz, jr_003_571b

    ld e, $03
    ld bc, $5615
    jp Jump_000_0846


jr_003_571b:
    call Call_003_5656
    call Call_000_2235
    ld h, d
    ld l, $40
    cp [hl]
    jr z, jr_003_572e

    ld [hl], a
    ld hl, $536b
    call Call_000_23ca

jr_003_572e:
    ld l, $26
    ld h, d
    dec [hl]
    ret nz

    ld e, $3b
    ld a, [de]
    ld [hl], a
    ld e, $07
    ld h, $a0
    ld l, e
    ld a, [de]
    sub [hl]
    ld c, a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    ld e, $3c
    jr c, jr_003_574b

    ld a, [de]
    cp c
    jr c, jr_003_574c

jr_003_574b:
    inc e

jr_003_574c:
    inc e
    ld a, [de]
    ld b, a
    call Call_000_0647
    cp b
    ret nc

    ld e, $03
    ld bc, $56c9
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    ld h, d
    bit 5, a
    jr nz, jr_003_578f

    bit 6, a
    jr nz, jr_003_577e

    ld l, $26
    dec [hl]
    ret nz

    jr jr_003_5783

jr_003_577e:
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a

jr_003_5783:
    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $57
    inc l
    ld [hl], $d6
    ret


jr_003_578f:
    ld l, $0d
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $57
    inc l
    ld [hl], $a2
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    call Call_000_2235
    ld e, $40
    ld [de], a
    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $03
    ld bc, $5688
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2385

jr_003_57e6:
    call Call_000_2375
    call Call_000_1a25
    ld b, a
    ld h, d
    bit 5, b
    jr z, jr_003_57fe

    ld l, $0d
    xor a
    ld [hl+], a
    ld [hl+], a
    inc l
    bit 7, [hl]
    jr z, jr_003_57fe

    ld [hl-], a
    ld [hl], a

jr_003_57fe:
    bit 7, b
    ret z

    call Call_000_2235
    ld e, $40
    ld [de], a

jr_003_5807:
    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $03
    ld bc, $5688
    jp Jump_000_0846


    rla
    rst $38
    dec c
    rrca
    ld h, d
    ld b, $27
    dec c
    add b
    rra
    ld de, $5848
    dec c
    adc $59
    inc bc
    db $e4
    ld e, b
    ld b, e
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    xor c
    ld d, e
    dec c
    db $d3
    jr nz, jr_003_57e6

    ld d, e
    dec c
    ld a, [hl-]
    ld hl, $53af
    ld bc, $0301
    ld a, [de]
    ld e, c
    ld b, e
    nop
    ld bc, $0301
    ld sp, hl
    ld e, b
    ld b, e
    dec c
    ld b, d
    jr nz, jr_003_5807

    ld d, e
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    inc h
    ld c, $28
    ld a, [de]
    ccf
    dec c
    db $f4
    inc hl
    ld l, d
    ld e, b
    ld de, $5829
    daa
    ld b, $80
    ld e, b
    jr nz, jr_003_58ac

    inc bc
    db $e4
    ld e, b
    ld b, e
    dec b
    ld [$0d27], sp
    db $e4
    ld e, c
    jr c, jr_003_58a8

    ld de, $5829
    jr z, jr_003_5891

    ret nz

    add hl, hl
    ld e, b
    inc bc
    db $e4
    ld e, b
    ld b, e
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    cp e
    ld d, e
    ld bc, $1f02
    ld b, l
    ld [hl+], a
    cp l

jr_003_5891:
    ld d, e
    dec c
    ld a, [bc]
    ld e, d
    inc bc
    ld d, h
    ld e, c
    ld b, e
    add hl, bc
    db $10
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    ld bc, $0303
    db $e4
    ld e, b
    ld b, e

jr_003_58a8:
    rra
    ld b, l
    ld [hl+], a
    cp a

jr_003_58ac:
    ld d, e
    daa
    ld b, $29
    ld e, b
    rla
    rst $38
    dec c
    rrca
    ld c, h
    ld bc, $610f
    nop
    dec c
    rrca
    jr nz, jr_003_58c6

    ld [$0408], sp
    sbc c
    ld [hl], l
    inc c
    dec c
    ld sp, hl

jr_003_58c6:
    rra
    dec c
    pop de
    rra
    inc c
    nop
    inc h
    ld b, h
    dec c
    dec d
    ld e, d
    call $0353
    jp nz, Jump_003_4359

    add hl, de
    ld b, $03
    add hl, de
    dec b
    inc bc
    add hl, de
    ld b, $03
    add hl, de
    dec b
    inc bc
    ld d, $01
    adc l
    ld d, e
    call Call_000_255b
    ret c

    call Call_000_19cb
    bit 7, a
    ret nz

    ld e, $03
    ld bc, $5848
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $538d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_003_5a2d
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $03
    ld bc, $5854
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $538d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_003_5a2d
    call Call_000_19cb
    bit 7, a
    jr z, jr_003_594c

    bit 5, a
    jr z, jr_003_593e

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a

jr_003_593e:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ret nz

    ld e, $03
    ld bc, $586c
    jp Jump_000_0846


jr_003_594c:
    ld e, $03
    ld bc, $5848
    jp Jump_000_0846


    ld bc, $538d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_003_5a2d
    call Call_000_19cb
    bit 7, a
    jr nz, jr_003_5979

    ld hl, $53b5
    call Call_000_2048
    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $59
    inc l
    ld [hl], $99

Jump_003_5979:
jr_003_5979:
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_5982

    dec a
    ld [de], a
    ret


jr_003_5982:
    ld a, $06
    ld [de], a
    ld e, $3d
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
    ld e, $31
    jp Jump_000_230f


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $538d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_003_5a2d
    call Call_000_1a25
    bit 7, a
    jp z, Jump_003_5979

    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $59
    inc l
    ld [hl], $54
    jp Jump_003_5979


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $539b
    jp Jump_000_255b


    push bc
    call Call_003_5120
    or a
    jr z, jr_003_59e2

    call Call_000_0647
    cp $80
    jr nc, jr_003_59e2

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_003_59e2:
    pop bc
    ret


    ld a, [bc]
    inc bc
    push bc
    ld b, a
    ld e, $04
    call Call_000_1f9c
    jr c, jr_003_59f4

    pop bc
    inc bc
    xor a
    jr jr_003_5a06

jr_003_59f4:
    pop bc
    ld a, [bc]
    inc bc
    push bc
    ld b, a
    ld e, $07
    call Call_000_1f9c
    jr nc, jr_003_5a04

    ld a, $01
    jr jr_003_5a05

jr_003_5a04:
    xor a

jr_003_5a05:
    pop bc

jr_003_5a06:
    ld e, $27
    ld [de], a
    ret


    ld e, $3d
    ld hl, $53c1
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5b
    ld a, [de]
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_003_5a27

    inc h

jr_003_5a27:
    call Call_000_20f9
    jp Jump_000_20be


Call_003_5a2d:
    ld e, $f8
    call Call_000_1ac1
    ret nz

    ld e, $03
    ld bc, $5a3b
    jp Jump_000_0846


    dec c
    sub d
    rrca
    rlca
    nop
    nop
    inc bc
    ld a, a
    ld e, d
    ld b, e
    rlca
    nop
    nop
    ld [$0040], sp
    add hl, de
    ld [bc], a
    db $10
    daa
    dec c
    adc $59
    dec c
    inc c
    ld e, e
    inc bc
    sbc h
    ld e, d
    ld b, e
    add hl, de
    ld bc, $0d20
    ld h, b
    ld e, e
    ld de, $5a41
    jr z, jr_003_5a78

    add b
    ld b, c
    ld e, d
    daa
    ld [$fe80], sp
    ld a, [hl+]
    db $10
    dec c
    db $d3
    jr nz, jr_003_5a76

    ld d, h
    inc bc
    rst $08
    ld e, d
    ld b, e

jr_003_5a76:
    add hl, de
    ld [bc], a

jr_003_5a78:
    db $10
    add hl, de
    ld bc, $0620
    add hl, hl
    ld e, b
    call Call_000_0da4
    ld bc, $538d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_1a25
    bit 5, a
    ret z

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a
    ret


    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    call Call_000_2385
    ld bc, $538d
    call Call_000_255b
    ret c

    ld e, $f7
    call Call_000_1ac1
    jr z, jr_003_5abf

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ld e, $12
    ld [de], a

jr_003_5abf:
    call Call_000_1a25
    bit 5, a
    ret z

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a
    ret


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $538d
    call Call_000_255b
    ret c

    call Call_000_2385
    ld e, $f8
    call Call_000_1ac1
    jr z, jr_003_5b04

    call Call_000_1a25
    bit 7, a
    jr z, jr_003_5af7

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ld e, $12
    ld [de], a
    ret


jr_003_5af7:
    bit 5, a
    ret z

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a
    ret


jr_003_5b04:
    ld e, $03
    ld bc, $5a3b
    jp Jump_000_0846


    push bc
    ld h, $a0
    ld l, $04
    ld e, l
    ld a, [de]
    sub [hl]
    ld c, a
    inc l
    inc e

jr_003_5b17:
    ld a, [de]
    sbc [hl]
    jr nc, jr_003_5b1f

    ld a, c
    cpl
    inc a
    ld c, a

jr_003_5b1f:
    ld l, $07
    ld e, l
    ld a, [de]
    sub [hl]
    ld b, a
    inc e
    inc l
    ld a, [de]
    ld e, $00
    sbc [hl]
    jr nc, jr_003_5b33

    ld e, $01
    ld a, b
    cpl
    inc a
    ld b, a

jr_003_5b33:
    ld a, c
    srl a
    cp b
    jr c, jr_003_5b3c

    xor a
    jr jr_003_5b3f

jr_003_5b3c:
    ld a, $01
    add e

jr_003_5b3f:
    ld hl, $53e1
    rlca
    rlca
    ld e, a
    rlca
    add e
    ld b, a
    ld e, $5c
    ld a, [de]
    rlca
    ld e, a
    rlca
    add e
    add b
    add l
    ld l, a
    jr nc, jr_003_5b55

    inc h

jr_003_5b55:
    call Call_000_20f9
    call Call_000_2123
    call Call_000_20be
    pop bc
    ret


    push bc
    ld e, $f7
    call Call_000_1ac1
    jr nz, jr_003_5b6e

    xor a

jr_003_5b69:
    ld e, $27
    ld [de], a
    pop bc
    ret


jr_003_5b6e:
    ld h, d
    xor a
    ld b, a
    ld c, a
    ld e, $f7
    cpl
    ld d, a
    call Call_000_1ad9
    call Call_000_1646
    and $3f
    ld c, a
    ldh a, [$ff9a]
    ld d, a
    jr jr_003_5b69

    db $02

    ld [bc], a

    db $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $20, $40, $02

    jr nz, jr_003_5b17

    ld [bc], a

    db $f8, $40, $00, $10

    ld [$f410], sp
    ld h, b
    nop
    db $10
    ld [$4008], sp
    ld [$0200], sp
    ld hl, sp+$28
    db $10
    add b
    ld [bc], a
    db $f8

    db $03

    ld [bc], a

    db $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    rst $38

    db $02

    nop
    nop
    nop

    db $33, $4e, $03

    nop
    nop
    nop
    inc sp
    ld c, [hl]
    inc bc

    db $20, $00, $02

    jr nz, jr_003_5bcf

jr_003_5bcf:
    ld [bc], a

    db $22, $04, $80

    ld [hl+], a
    inc bc
    add b

    db $11, $03, $80

    ld de, $8003

    db $20, $80, $01, $c0, $00, $00, $c0, $80, $fe, $17, $ff, $0d, $0f, $62, $02, $27
    db $0d, $80, $1f, $11, $17, $5c, $10, $40, $12

    ld c, c
    ld e, h

    db $0d, $b2, $5e, $98, $5b, $03, $af, $5c, $43, $10, $5c, $12

    ld c, $5c

    db $19, $00, $10

    add hl, de
    ld bc, $0618
    dec b
    ld e, h
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $0610
    ld c, $5c

    db $03, $2c, $5d, $43, $19, $0a, $0a, $0d, $42, $20, $92, $5b, $03, $37, $5d, $43
    db $01, $0a, $00, $2a, $00, $18, $03, $2c, $5d, $43, $0d, $77, $0f, $0e, $10, $40
    db $12

    ldh a, [c]
    ld e, e

    db $10, $5c, $12

    ld b, h
    ld e, h

    db $05, $18, $06, $f2, $5b

    dec b
    db $10
    ld b, $f2
    ld e, e
    dec c
    db $db
    ld e, [hl]
    dec c
    di
    ld e, [hl]
    and h
    ld e, e
    inc bc
    ld h, [hl]
    ld e, l
    ld b, e
    db $10
    ld e, h
    ld [de], a
    ld [hl], l
    ld e, h
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
    add hl, de
    ld b, $04
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    ld b, $5a
    ld e, h
    add hl, de
    ld [bc], a
    inc bc
    add hl, de
    inc bc
    inc bc
    add hl, de
    inc b
    inc bc
    add hl, de
    dec b
    inc bc
    add hl, de
    ld b, $03
    add hl, de
    rlca
    inc bc
    add hl, de
    ld [$1903], sp
    add hl, bc
    inc bc
    ld b, $75
    ld e, h
    inc bc
    ld c, e
    ld e, [hl]
    ld b, e
    ld bc, $000a
    dec c
    ld b, d
    jr nz, @-$6c

    ld e, e
    inc bc
    ld c, $5e
    ld b, e
    db $10
    ld e, h
    ld c, $02
    ld e, d
    ld e, h
    ld [hl], l
    ld e, h
    inc bc
    scf
    ld e, l
    ld b, e
    ld bc, $000a

    ld e, $3f
    ld a, [de]
    dec a
    jr nz, jr_003_5cb8

    call Call_000_1ee6

jr_003_5cb8:
    call Call_000_0da4
    ld bc, $5b84
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_19cb
    or a
    jr z, jr_003_5d1e

    bit 5, a
    jr nz, jr_003_5ced

    ld e, $4d
    ld a, [de]
    cp $04
    jr c, jr_003_5d09

    ld l, $45
    ld h, d
    bit 7, [hl]
    jr nz, jr_003_5ce9

    cp $04
    jr z, jr_003_5ced

jr_003_5ce1:
    ld e, $03
    ld bc, $5c49
    jp Jump_000_0846


jr_003_5ce9:
    cp $04
    jr z, jr_003_5ce1

jr_003_5ced:
    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld e, $0d
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    call Call_000_0da4

jr_003_5d09:
    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld e, $3f
    ld a, [de]
    inc a
    cp $03
    jr c, jr_003_5d17

    xor a

jr_003_5d17:
    ld [de], a
    ld hl, $5b98
    jp Jump_003_5ebc


jr_003_5d1e:
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $03
    ld bc, $5c1e
    jp Jump_000_0846


    ld bc, $5b84
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5b84
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    jr nz, jr_003_5d58

    bit 5, a
    ret z

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_003_5d58:
    call Call_000_2235
    ld e, $40
    ld [de], a
    ld e, $03
    ld bc, $5c2a
    jp Jump_000_0846


    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_5d71

    dec a
    ld [de], a
    call Call_000_21c5

jr_003_5d71:
    call Call_000_0da4
    ld bc, $5b84
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_19cb
    bit 7, a
    jr z, jr_003_5d9b

    ld e, $4d
    ld a, [de]
    cp $01
    ret nz

    ld e, $40
    xor a
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $5d
    inc l
    ld [hl], $a3
    ret


jr_003_5d9b:
    ld e, $03
    ld bc, $5c97
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $5b84
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_19cb
    bit 7, a
    jr z, jr_003_5e06

    bit 5, a
    jr z, jr_003_5dc9

jr_003_5dbb:
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $03
    ld bc, $5bf7
    jp Jump_000_0846


jr_003_5dc9:
    ld e, $45
    ld a, [de]
    rlca
    ld e, $4d
    ld a, [de]
    jr c, jr_003_5de2

    cp $04
    jr z, jr_003_5dbb

    cp $05
    jr nz, jr_003_5df2

    ld e, $03
    ld bc, $5c49
    jp Jump_000_0846


jr_003_5de2:
    cp $05
    jr z, jr_003_5dbb

    cp $04
    jr nz, jr_003_5df2

    ld e, $03
    ld bc, $5c49
    jp Jump_000_0846


jr_003_5df2:
    ld e, $15
    ld a, [de]
    cp $02
    ret nz

    ld e, $3e
    ld a, [de]
    ld e, $11
    ld [de], a
    ld e, $03
    ld bc, $5c90
    jp Jump_000_0846


jr_003_5e06:
    ld e, $03
    ld bc, $5c97
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5b84
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    jr nz, jr_003_5e3d

    bit 5, a
    jr z, jr_003_5e2f

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a

jr_003_5e2f:
    ld e, $15
    ld a, [de]
    cp $02
    ret nz

    ld e, $03
    ld bc, $5ca8
    jp Jump_000_0846


jr_003_5e3d:
    call Call_000_2235
    ld e, $40
    ld [de], a
    ld e, $03
    ld bc, $5c2a
    jp Jump_000_0846


    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_003_5e5a

    ld e, $03
    ld bc, $5bf7
    jp Jump_000_0846


jr_003_5e5a:
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $5b84
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_19cb
    bit 7, a
    jr z, jr_003_5eaa

    bit 5, a
    jr z, jr_003_5e83

jr_003_5e75:
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $03
    ld bc, $5bf7
    jp Jump_000_0846


jr_003_5e83:
    ld e, $45
    ld a, [de]
    rlca
    ld e, $4d
    ld a, [de]
    jr c, jr_003_5e9b

    cp $04
    jr z, jr_003_5e75

    cp $05
    ret nz

    ld e, $03
    ld bc, $5c49
    jp Jump_000_0846


jr_003_5e9b:
    cp $05
    jr z, jr_003_5e75

    cp $04
    ret nz

    ld e, $03
    ld bc, $5c49
    jp Jump_000_0846


jr_003_5eaa:
    ld e, $03
    ld bc, $5c97
    jp Jump_000_0846


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $3f
    xor a
    ld [de], a

Jump_003_5ebc:
    ld e, $5c
    ld a, [de]
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_003_5ec8

    inc h

jr_003_5ec8:
    call Call_000_2123
    call Call_000_20f9
    ld e, $3f
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_003_5ed6

    inc h

jr_003_5ed6:
    ld e, $26
    ld a, [hl]
    ld [de], a
    ret


    ld e, $45
    ld a, [de]
    rlca
    ld e, $4d
    ld a, [de]
    jr c, jr_003_5ee9

    cp $04
    ret nz

    jr jr_003_5eec

jr_003_5ee9:
    cp $05
    ret nz

jr_003_5eec:
    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_003_5f05

    inc h

jr_003_5f05:
    ld e, $26
    ld a, [hl+]
    ld [de], a
    call Call_000_21a5
    ld e, $45
    ld a, [de]
    rlca
    ld e, $3e
    ld a, [hl]
    jr c, jr_003_5f17

    ld [de], a
    ret


jr_003_5f17:
    cpl
    inc a
    ld [de], a
    ret


    db $17, $ff, $0d, $0f, $62, $03, $27, $0d, $80, $1f, $11, $7c, $5f, $27, $0d, $c6
    db $61, $d0, $5b, $03, $52, $60, $43, $10, $5b, $12, $62, $5f, $10, $5c, $12

    ld c, a
    ld e, a

    db $0d, $06, $62, $60, $00, $19, $00, $10, $0d, $06, $62, $20, $00, $19, $01, $10
    db $06, $76, $5f

    dec c
    ld b, $62
    add b
    nop
    add hl, de
    nop
    inc c
    dec c
    ld b, $62
    jr nc, jr_003_5f5c

jr_003_5f5c:
    add hl, de
    ld bc, $060c
    halt
    ld e, a

    db $10, $5c, $12

    ld [hl], b
    ld e, a

    db $19, $00, $10, $19, $01, $10, $06, $76, $5f

    add hl, de
    nop
    inc c
    add hl, de
    db $01
    inc c

    db $0d, $00, $62, $06, $32, $5f, $03, $31, $60, $43, $0d, $42, $20, $ca, $5b, $01
    db $00, $00, $08, $00, $00, $2a, $00, $24, $0e, $28, $1a, $3f, $0d, $f4, $23, $9d
    db $5f, $11, $28, $5f, $06, $9f, $5f, $20

    ld b, b

    db $27, $0d, $03, $22, $e0, $11, $ac, $5f, $28, $13, $40, $c2, $5f, $0f, $27, $00
    db $03, $ec, $60, $43, $19, $02, $20, $0d, $50, $0f, $13, $a8, $b2, $19, $03, $66
    db $06, $28, $5f, $0f, $27, $01, $07, $00, $00, $03, $06, $61, $43, $08, $00, $fe
    db $2a, $10, $24, $0d, $19, $00, $10, $01, $01, $00, $27, $2a, $00, $03, $2e, $61
    db $43, $19, $02, $18, $0d, $50, $0f, $13, $a8, $b2, $19, $03, $08, $2a, $10, $00
    db $17, $ff, $0d, $04, $7c, $70, $0c, $0f, $4c, $01, $0d, $f9, $1f, $0f, $61, $00
    db $0d, $28, $62, $0d, $0f, $20, $08, $08, $08, $0d, $d1, $1f, $08, $00, $0d, $5e
    db $21, $dc, $5b, $12, $1c, $60, $03, $5c, $61, $43, $06, $20, $60, $03, $a7, $61
    db $43, $24, $3f, $19, $04, $06, $19, $05, $03, $19, $06, $06, $19, $07, $03, $06
    db $22, $60

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5bae
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $03
    ld bc, $5f88
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $5bae
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    jp z, Jump_003_60e4

    bit 5, a
    jr nz, jr_003_607d

    bit 4, a
    jr nz, jr_003_607d

    ld e, $4d
    ld a, [de]
    cp $04
    jr z, jr_003_607d

    cp $05
    jr nz, jr_003_6099

jr_003_607d:
    ld e, $0d
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    ld e, $3c
    ld a, [de]
    and $f0
    swap a
    dec e
    ld [de], a
    ld e, $40
    ld a, [de]
    xor $80
    ld [de], a

jr_003_6099:
    ld e, $26
    ld a, [de]
    or a
    ret z

    xor a
    ld [de], a
    ld h, d
    ld l, $3d
    dec [hl]
    jr nz, jr_003_60c8

    ld e, $3e
    ld a, [de]
    ld [hl], a
    ld l, $40
    bit 0, [hl]
    jr nz, jr_003_60be

    call Call_000_0647
    ld l, $3f
    ld h, d
    cp [hl]
    inc l
    jr c, jr_003_60be

    set 0, [hl]
    jr jr_003_60c8

jr_003_60be:
    res 0, [hl]
    ld e, $03
    ld bc, $5f9f
    jp Jump_000_0846


jr_003_60c8:
    ld l, $3b
    dec [hl]
    ret nz

    ld e, $3c
    ld a, [de]
    and $0f
    ld [hl], a
    call Call_000_1ec0
    ld l, $40
    ld h, d
    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_003_60e1

    res 7, [hl]
    ret


jr_003_60e1:
    set 7, [hl]
    ret


Jump_003_60e4:
    ld e, $03
    ld bc, $5f7c
    jp Jump_000_0846


    ld bc, $5bae
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19cb
    or a
    ret nz

    ld e, $03
    ld bc, $5f7c
    jp Jump_000_0846


    call Call_000_1ed3
    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_003_6126

    call Call_000_0da4
    ld bc, $5bae
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 6, a
    ret z

jr_003_6126:
    ld e, $03
    ld bc, $5fd9
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5bae
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $03
    ld bc, $5f28
    jp Jump_000_0846


    ld e, $26
    ld a, [de]
    or a
    jr z, jr_003_6181

    dec a
    ld [de], a
    jr nz, jr_003_619e

    ld e, $40
    ld a, [de]
    cp $02
    ld h, d
    jp z, Jump_000_0bba

    inc a
    ld [de], a
    ld hl, $5bdc
    ld b, a
    rlca
    add b
    add l
    ld l, a
    jr nc, jr_003_617c

    inc h

jr_003_617c:
    call Call_000_2164
    jr jr_003_619e

jr_003_6181:
    call Call_000_1ee6
    ld e, $3b
    ld h, d
    ld l, $0d
    ld a, [de]
    cp [hl]
    jr nz, jr_003_619e

    inc e
    inc l
    ld a, [de]
    cp [hl]
    jr nz, jr_003_619e

    ld e, $40
    ld a, [de]
    ld e, $3d
    add e
    ld e, a
    ld a, [de]
    ld e, $26
    ld [de], a

jr_003_619e:
    call Call_000_0da4
    ld bc, $5bbc
    jp Jump_000_255b


    call Call_000_1ee6
    ld e, $3b
    ld h, d
    ld l, $0d
    ld a, [de]
    cp [hl]
    jr nz, jr_003_61bd

    inc e
    inc l
    ld a, [de]
    cp [hl]
    jr nz, jr_003_61bd

    ld e, $11
    xor a
    ld [de], a

jr_003_61bd:
    call Call_000_0da4
    ld bc, $5bbc
    jp Jump_000_255b


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld e, $5b
    ld a, [de]
    rlca
    ld e, a
    rlca
    add e
    ld b, a
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    add e
    add b
    add l
    ld l, a
    jr nc, jr_003_61e1

    inc h

jr_003_61e1:
    ld e, $3c
    ld a, [hl+]
    ld [de], a
    dec e
    and $0f
    ld [de], a
    ld e, $3d
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    inc e
    ld l, $45
    ld h, d
    ld a, [hl]
    and $80
    ld [de], a
    xor a
    ld e, $26
    ld [de], a
    pop bc
    ret


    ld h, d
    ld l, $26
    ld [hl], $01
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $40
    ld a, [de]
    rlca
    jr c, jr_003_621a

    ld e, $0d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


jr_003_621a:
    ld e, $0d
    ld a, l
    cpl
    add $01
    ld [de], a
    inc e
    ld a, h
    cpl
    adc $00
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    ld a, [hl]
    ld e, l
    ld [de], a
    ld l, $27
    ld a, [hl]
    ld h, d
    ld [hl], a
    ld l, $3d
    ld a, $20
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $26
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    db $01, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $40, $00

    ld h, b
    nop
    add b
    nop

    db $80, $00, $10, $80, $01, $80, $ff, $08, $80, $01

    db $10
    add b
    ld bc, $0020
    ld bc, $0020
    cp $08
    db $06

    db $e3, $55, $00, $00, $03

    db $e3
    ld d, l
    ld bc, $0301
    rst $38
    ld [bc], a
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
    rst $38
    ld [bc], a
    nop
    nop
    nop
    cp a
    ld l, b
    inc bc
    nop
    nop
    nop
    cp a
    ld l, b
    inc bc
    db $10
    add b
    ld bc, $1820
    ld b, b
    add b
    db $10
    inc c
    jr nz, jr_003_62b2

    ld [$06ff], sp
    ld sp, hl
    nop
    ld hl, sp-$06
    ld sp, hl
    ld hl, sp-$01
    nop
    ld bc, $0000
    or [hl]
    nop
    ld c, d
    rst $38
    nop
    nop

jr_003_62b2:
    nop
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    nop
    rst $38
    nop
    nop

    db $ff

    ld [bc], a

    db $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
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
    ld hl, sp+$09
    ld hl, sp+$08
    add b
    ld bc, $0200

    db $80, $01

    add b
    ld bc, $02e0
    jr nz, @+$05

    ret nc

    ld bc, $0210

    db $80, $01

    ret nz

    db $01

    db $20, $01

    ld d, b
    ld bc, $ced2
    db $e3
    rst $18

    db $10, $80, $01

    db $10
    add b
    ld bc, $0040
    ld l, b
    nop
    jr nz, jr_003_6304

jr_003_6304:
    inc bc
    jr nz, jr_003_6307

jr_003_6307:
    inc bc
    ld c, b
    ld bc, $0180
    jr nz, jr_003_630e

jr_003_630e:
    inc bc
    jr nz, jr_003_6311

jr_003_6311:
    inc bc
    ld h, b
    ld bc, $01a0
    nop
    cp $00
    cp $20
    nop
    inc bc
    jr nz, jr_003_631f

jr_003_631f:
    inc bc
    ld h, b
    ld bc, $01a0
    nop
    db $fd
    nop
    db $fd

    db $17, $ff, $0d, $0f, $62, $01, $27, $18, $0f, $3f, $00, $0d, $80, $1f, $11, $5a
    db $63, $03, $1e, $64, $43, $01, $01, $0d, $7c, $20, $5d, $62, $0d, $5f, $20, $5f
    db $62, $10, $5b, $12, $54, $63, $0d, $d3, $20, $52, $62, $00, $0d, $d3, $20, $56
    db $62, $00, $01, $01, $03, $fb, $63, $43, $0d, $5f, $20, $5a, $62, $00, $08, $00
    db $00, $2a, $00, $24, $0e, $06, $39, $63

    ld bc, $0801
    nop
    cp $0d
    ld e, a
    jr nz, jr_003_63db

    ld h, d
    inc bc
    and l
    ld h, h
    ld b, e
    inc h
    dec c
    nop
    ld [$0200], sp
    inc bc
    cp a
    ld h, h
    ld b, e
    dec b
    ld [bc], a
    ld bc, $0900
    ld [bc], a
    ld [$fe00], sp
    dec b
    ld bc, $0008
    rst $38
    dec b
    ld bc, $0008
    nop
    dec b
    ld bc, $0008
    ld [bc], a
    dec b
    ld bc, $0008
    ld bc, $0105
    ld [$0000], sp
    dec b
    ld bc, $100a
    ld e, h
    ld [de], a
    db $d3
    ld h, e
    add hl, bc
    ld [bc], a
    ld [$fe00], sp
    dec b
    ld bc, $0008
    rst $38
    dec b
    ld bc, $0008
    nop
    dec b
    ld bc, $0008
    ld [bc], a
    dec b
    ld bc, $0008
    ld bc, $0105
    ld [$0000], sp
    dec b
    ld bc, $0f0a
    ld b, b
    nop
    inc bc
    ret


    ld h, h
    ld b, e
    dec c

jr_003_63db:
    ld e, a
    jr nz, @+$67

    ld h, d
    db $10
    ld e, h
    ld [de], a
    db $ec
    ld h, e
    rrca
    ccf
    ld [$4005], sp
    ld b, $f1
    ld h, e
    rrca
    ccf
    ld b, $05
    inc a
    inc bc
    adc c
    ld h, l
    ld b, e
    dec c
    ld e, a
    jr nz, jr_003_6461

    ld h, d
    nop

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6244
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $03
    ld bc, $6366
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6244
    call Call_000_255b
    ret c

    call Call_003_6485
    call Call_000_2375
    call Call_000_1a25
    ld h, d
    bit 5, a
    jr nz, jr_003_6453

    bit 6, a
    jr nz, jr_003_6442

    bit 7, a
    jr nz, jr_003_6456

    ret


jr_003_6442:
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $63
    inc l
    ld [hl], $fb
    ret


jr_003_6453:
    jp Jump_000_1ef9


jr_003_6456:
    ld h, d
    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_003_6473

    ld e, $3f
    ld a, [de]
    inc a

jr_003_6461:
    ld [de], a
    cp $0c
    jr z, jr_003_647d

    rra
    jr c, jr_003_6473

    rra
    jr c, jr_003_6473

    call Call_000_0647
    cp $80
    jr c, jr_003_647d

jr_003_6473:
    ld e, $3d
    ld l, $0f
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ret


jr_003_647d:
    ld e, $03
    ld bc, $6370
    jp Jump_000_0846


Call_003_6485:
    ld e, $10
    ld a, [de]
    ld e, $15
    and $80
    jr nz, jr_003_6499

    ld e, $0f
    ld a, [de]
    sub $3c
    ret nc

    xor a
    ld e, $15
    ld [de], a
    ret


jr_003_6499:
    ld e, $0f
    ld a, [de]
    sub $c4
    ret nc

    ld a, $01
    ld e, $15
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6244
    call Call_000_255b
    ret c

    ld e, $10
    ld a, [de]
    and a
    ret nz

    ld e, $03
    ld bc, $6381
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $6244
    call Call_000_255b
    ret


    ld e, $3f
    ld a, [de]
    ld b, a
    ld e, $5c
    ld a, [de]
    ld hl, $626b
    add l
    ld a, [hl]
    cp b
    jr nz, jr_003_651f

    xor a
    ld e, $3f
    ld [de], a
    ld e, $40
    ld a, [de]
    res 0, a
    res 4, a
    ld b, a
    call Call_000_1ec0
    ld e, $45
    ld a, [de]
    bit 7, a
    jr z, jr_003_64f8

    bit 3, b
    jr nz, jr_003_64f4

    set 0, b

jr_003_64f4:
    set 3, b
    jr jr_003_6500

jr_003_64f8:
    bit 3, b
    jr z, jr_003_64fe

    set 0, b

jr_003_64fe:
    res 3, b

jr_003_6500:
    call Call_000_201d
    ld e, $27
    ld a, [de]
    and a
    jr z, jr_003_6513

    bit 7, b
    jr nz, jr_003_650f

    set 4, b

jr_003_650f:
    set 7, b
    jr jr_003_651b

jr_003_6513:
    bit 7, b
    jr z, jr_003_6519

    set 4, b

jr_003_6519:
    res 7, b

jr_003_651b:
    ld e, $40
    ld a, b
    ld [de], a

jr_003_651f:
    ld e, $40
    ld a, [de]
    bit 3, a
    jr nz, jr_003_653a

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_003_6530

    ld e, $00

jr_003_6530:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0cb4
    jr jr_003_654c

jr_003_653a:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_003_6544

    ld e, $00

jr_003_6544:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0ce5

jr_003_654c:
    ld e, $40
    ld a, [de]
    bit 7, a
    jr z, jr_003_6567

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_003_655d

    ld e, $00

jr_003_655d:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    jr jr_003_6579

jr_003_6567:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_003_6571

    ld e, $00

jr_003_6571:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d66

jr_003_6579:
    call Call_000_0da4
    ld bc, $6244
    call Call_000_255b
    ret c

    ld e, $3f
    ld a, [de]
    inc a
    ld [de], a
    ret


    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d70
    call Call_000_0da4
    ld bc, $6244
    call Call_000_255b
    ret


    db $0d, $95, $67, $17, $0b, $0e, $27, $18, $0f, $27, $00, $0d, $1a, $24, $0b, $a8
    db $b2, $12, $b4, $65

    db $16

    db $0d, $80, $1f, $12

    push af
    ld h, l

    db $0f, $40, $00, $0f, $3f, $00, $03, $77, $66, $43, $01, $00, $29, $04, $0d, $77
    db $67, $12, $d1, $65, $0d, $70, $67, $2a, $00, $05, $04, $2a, $02, $05, $0c, $2a
    db $00, $05, $04, $2a, $fe, $05, $08, $10, $3f, $12, $ef, $65, $0d, $70, $67, $0f
    db $3f, $01, $06, $d1, $65, $0f, $3f, $00, $06, $d1, $65, $17, $ff, $0d, $03, $01
    db $67, $43, $18, $29, $00, $2a, $00, $27, $05, $14, $10, $5b, $0d, $9a, $67, $0f
    db $60, $00, $0f, $61, $00, $0f, $5e, $08, $0f, $5f, $08, $0f, $4c, $01, $0f, $4a
    db $20, $0d, $87, $67, $17, $f6, $0d, $0d, $63, $67, $27, $04, $ac, $6f, $0c, $01
    db $00, $03, $17, $67, $43, $00, $17, $ff, $0d, $03, $17, $67, $43, $18, $29, $00
    db $2a, $00, $27, $03, $0c, $67, $43, $05, $14, $17, $ff, $0d, $18, $2a, $00, $03
    db $e7, $66, $43, $10, $5c, $12

    ld d, l
    ld h, [hl]

    db $2a, $e8, $00

    rla
    rst $38
    dec c
    ld a, [hl+]
    ldh [rTIMA], a
    jr @+$2c

    ld b, b
    dec b
    inc c
    add hl, hl
    jr nc, jr_003_668d

    inc e
    daa
    dec c
    ld [hl], a
    ld h, a
    ld de, $666e
    dec c
    ld [hl], b
    ld h, a
    dec b
    ld [$0029], sp
    dec b
    db $10
    ld a, [hl+]
    ldh [rP1], a

    ld e, $11
    ld a, [de]
    call Call_000_0c83
    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

jr_003_668d:
    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    call nz, Call_003_67f6
    bit 7, a
    jr nz, jr_003_66b3

    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $4c
    ld a, [hl]
    and a
    jr z, jr_003_66c5

    ld l, e
    ld a, [hl]
    cp $ff
    jr z, jr_003_66c5

    ld l, $4c
    ld a, [hl]
    and a
    jr z, jr_003_66c5

    ret


jr_003_66b3:
    ld e, $25
    ld a, $01
    ld [de], a
    ld e, $40
    ld a, $01
    ld [de], a
    ld e, $03
    ld bc, $65f5
    jp Jump_000_0846


jr_003_66c5:
    ld e, $25
    xor a
    ld [de], a
    call Call_003_67be
    ret


    ld e, $11
    ld a, [de]
    call Call_000_0c83
    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    ld e, $11
    ld a, [de]
    call Call_000_0c83
    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $6244
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    ld bc, $5353
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    ld bc, $6244
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $4c
    ld a, [hl]
    and a
    jr z, jr_003_6756

    ld l, $40
    ld a, [hl]
    and a
    jr nz, jr_003_674a

    ld l, $03
    ld e, l
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
    sub $10
    ld [de], a
    inc e
    ld a, [hl]
    sbc $00
    ld [de], a
    ld bc, $6244
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


jr_003_674a:
    ld e, $25
    xor a
    ld [de], a
    ld e, $03
    ld bc, $6630
    jp Jump_000_0846


jr_003_6756:
    ld e, $25
    ld a, $00
    ld [de], a
    ld e, $03
    ld bc, $6643
    jp Jump_000_0846


    call Call_003_67dd
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $5c
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld e, $45
    ld a, [de]
    ld e, $27
    and $80
    jr z, jr_003_6784

    ld a, $01
    ld [de], a
    ret


jr_003_6784:
    xor a
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, e
    ld [hl], d
    ld l, $5b
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    ret


    ld e, $48
    ld a, d
    ld [de], a
    ret


    ld e, $5b
    ld a, [de]
    ld hl, $626d
    ld e, a
    add a
    add a
    add e
    add l
    ld l, a
    jr nc, jr_003_67a9

    inc h

jr_003_67a9:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld e, $5c
    ld a, [hl+]
    ld [de], a
    ld e, $5b
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    push bc
    push de
    call Call_000_05dd
    pop de
    pop bc
    ret


Call_003_67be:
    ld e, $5b
    ld a, [de]
    ld hl, $626d
    ld e, a
    add a
    add a
    add e
    add l
    ld l, a
    jr nc, jr_003_67cd

    inc h

jr_003_67cd:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld e, $5c
    ld a, [hl+]
    ld [de], a
    ld e, $5b
    ld a, [hl+]
    ld [de], a
    ld e, [hl]
    jp Jump_000_0846


Call_003_67dd:
    ld hl, $db7f

jr_003_67e0:
    ld a, [hl+]
    cp $ff
    ret z

    cp $04
    jr nz, jr_003_67ed

    ld e, $46
    ld a, [hl]
    ld [de], a
    ret


jr_003_67ed:
    ld a, $04
    add l
    ld l, a
    jr nc, jr_003_67e0

    inc h
    jr jr_003_67e0

Call_003_67f6:
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a
    ret


    rla
    rst $38
    dec c
    rrca
    ld b, l
    ld b, b
    rrca
    ld h, b
    ccf
    jr jr_003_681b

    ld e, e
    ld [de], a
    ret nc

    ld l, b
    ld bc, $0f04
    ld b, b
    ld b, b
    dec c
    add b
    rra
    ld de, $682f
    inc bc

jr_003_681b:
    ld c, b
    ld l, c
    ld b, e
    db $10
    ld e, h
    dec b
    jr nz, jr_003_6835

    daa
    ld l, b
    dec b
    jr nz, jr_003_682b

    nop
    ld l, c
    ld b, e

jr_003_682b:
    dec c
    adc l
    ld l, d
    nop
    jr jr_003_6834

    ld h, d
    ld l, c
    ld b, e

jr_003_6834:
    dec c

jr_003_6835:
    ld e, a
    jr nz, @-$6b

    ld h, d
    nop
    jr jr_003_683f

    add l
    ld l, c
    ld b, e

jr_003_683f:
    dec c
    ld e, a
    jr nz, @-$6b

    ld h, d
    nop
    inc bc
    jp nz, Jump_003_4369

    rrca
    ld a, $01
    nop
    dec c
    sbc d
    ld l, e
    ld de, $6827
    dec c
    or [hl]
    ld l, e
    inc bc
    xor b
    ld l, c
    ld b, e
    rra
    ld b, l
    ld [hl+], a
    sbc d
    ld h, d
    dec c
    ld d, b
    rrca
    ld d, $a8
    or d
    inc h
    inc e
    dec c
    adc [hl]
    ld l, e
    dec b
    ld [bc], a
    dec c
    sub h
    ld l, e
    rra
    ld b, l
    ld [hl+], a
    sbc h
    ld h, d
    dec c
    rst $08
    ld l, e
    ld [de], a
    ld e, d
    ld l, b
    ld b, $1a
    ld l, b
    rla
    rst $38
    dec c
    rrca
    ld c, d
    ld bc, $4b0f
    nop
    rrca
    ld h, c
    nop
    rrca
    ld h, b
    ld [$5e0f], sp
    ld [bc], a
    rrca
    ld e, a
    ld [bc], a
    dec c
    ld sp, hl
    rra
    inc b
    db $10
    ld [hl], b
    inc c
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec c
    sbc l
    ld l, d
    dec c
    ld e, d
    ld l, e
    ld [de], a
    rst $08
    ld l, b
    inc bc
    ld [hl], a
    ld l, d
    ld b, e
    add hl, de
    ld b, $02
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
    add hl, de
    dec bc
    ld [bc], a
    ld b, $aa
    ld l, b
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    ld [bc], a
    ld d, $03
    ld e, l
    ld l, d
    ld b, e
    db $10
    ld e, h
    ld c, $05
    ldh [c], a
    ld l, b
    add sp, $68
    xor $68
    db $f4
    ld l, b
    ld a, [$0168]
    inc b
    rrca
    ld b, l
    ld b, b
    nop
    ld bc, $0f02
    ld b, l
    jr nz, jr_003_68ee

jr_003_68ee:
    ld bc, $0f00
    ld b, l
    nop
    nop
    ld bc, $0f02
    ld b, l
    ldh [rP1], a
    ld bc, $0f04
    ld b, l
    add b
    nop
    ld bc, $6277
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1964
    bit 7, a
    jr z, jr_003_6940

    ld e, $3e
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld hl, $6296
    ld e, $5c
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_003_6922

    inc h

jr_003_6922:
    ld a, [hl]
    ld e, $3e
    ld [de], a
    call Call_003_6bd5
    ld b, a
    ld e, $45
    ld a, [de]
    cp b
    jr z, jr_003_6938

    ld e, $03
    ld bc, $6845
    jp Jump_000_0846


jr_003_6938:
    ld e, $03
    ld bc, $684d
    jp Jump_000_0846


jr_003_6940:
    ld e, $03
    ld bc, $682f
    jp Jump_000_0846


    ld bc, $6277
    call Call_000_255b
    ret c

    call Call_000_1964
    bit 7, a
    jr z, jr_003_695a

    call Call_000_2375
    ret


jr_003_695a:
    ld e, $03
    ld bc, $682f
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6277
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    call nz, Call_000_1ef9
    bit 7, a
    ret z

    ld e, $03
    ld bc, $6827
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6277
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    call nz, Call_000_1ef9
    bit 7, a
    ret z

    ld e, $03
    ld bc, $68d0
    jp Jump_000_0846


    call Call_000_1964
    bit 7, a
    jr z, jr_003_69ba

    ld bc, $6277
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


jr_003_69ba:
    ld e, $03
    ld bc, $682f
    jp Jump_000_0846


    call Call_000_1964
    bit 7, a
    jp z, Jump_003_6a55

    ld bc, $6277
    call Call_000_255b
    ret c

    call Call_000_2375
    ld e, $3e
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld a, $0c
    ld [de], a
    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $40
    ld a, [de]
    cp b
    jr nz, jr_003_69ef

    ld e, $03
    ld bc, $684d
    jp Jump_000_0846


jr_003_69ef:
    ld c, a
    ld a, b
    cp $40
    jr z, jr_003_6a1c

    cp $20
    jr z, jr_003_6a15

    cp $00
    jr z, jr_003_6a0a

    cp $e0
    jr z, jr_003_6a03

    jr jr_003_6a29

jr_003_6a03:
    ld a, c
    cp $c0
    jr z, jr_003_6a34

    jr jr_003_6a1e

jr_003_6a0a:
    ld a, c
    cp $e0
    jr z, jr_003_6a29

    cp $c0
    jr z, jr_003_6a29

    jr jr_003_6a3f

jr_003_6a15:
    ld a, c
    cp $40
    jr z, jr_003_6a4a

    jr jr_003_6a1e

jr_003_6a1c:
    jr jr_003_6a3f

jr_003_6a1e:
    ld a, $00
    ld e, $45
    ld [de], a
    ld e, $15
    ld a, $00
    ld [de], a
    ret


jr_003_6a29:
    ld a, $e0
    ld e, $45
    ld [de], a
    ld e, $15
    ld a, $02
    ld [de], a
    ret


jr_003_6a34:
    ld a, $c0
    ld e, $45
    ld [de], a
    ld e, $15
    ld a, $04
    ld [de], a
    ret


jr_003_6a3f:
    ld a, $20
    ld e, $45
    ld [de], a
    ld e, $15
    ld a, $02
    ld [de], a
    ret


jr_003_6a4a:
    ld a, $40
    ld e, $45
    ld [de], a
    ld e, $15
    ld a, $04
    ld [de], a
    ret


Jump_003_6a55:
    ld e, $03
    ld bc, $682f
    jp Jump_000_0846


    call Call_000_1964
    bit 7, a
    jr z, jr_003_6a6f

    ld bc, $6277
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


jr_003_6a6f:
    ld e, $03
    ld bc, $683a
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $6285
    call Call_000_255b
    ret c

    call Call_000_197f
    ret nc

    ld e, $03
    ld bc, $68bf
    jp Jump_000_0846


    ld hl, $6296
    ld e, $5c
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_003_6a98

    inc h

jr_003_6a98:
    ld e, $3e
    ld a, [hl]
    ld [de], a
    ret


    push bc
    ld bc, $629e
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    ld a, [hl]
    cp $40
    jp z, Jump_003_6b45

    cp $20
    jr z, jr_003_6b22

    cp $00
    jr z, jr_003_6aff

    cp $e0
    jr z, jr_003_6adc

    ld a, $08
    add c
    ld c, a
    jr nc, jr_003_6ac0

    inc b

jr_003_6ac0:
    call Call_003_6c3e
    ld e, $0d
    ld hl, $62a8
    ld a, $10
    add l
    ld l, a
    jr nc, jr_003_6acf

    inc h

jr_003_6acf:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop bc
    ret


jr_003_6adc:
    ld a, $06
    add c
    ld c, a
    jr nc, jr_003_6ae3

    inc b

jr_003_6ae3:
    call Call_003_6c3e
    ld e, $0d
    ld hl, $62a8
    ld a, $0c
    add l
    ld l, a
    jr nc, jr_003_6af2

    inc h

jr_003_6af2:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop bc
    ret


jr_003_6aff:
    ld a, $04
    add c
    ld c, a
    jr nc, jr_003_6b06

    inc b

jr_003_6b06:
    call Call_003_6c3e
    ld e, $0d
    ld hl, $62a8
    ld a, $08
    add l
    ld l, a
    jr nc, jr_003_6b15

    inc h

jr_003_6b15:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop bc
    ret


jr_003_6b22:
    ld a, $02
    add c
    ld c, a
    jr nc, jr_003_6b29

    inc b

jr_003_6b29:
    call Call_003_6c3e
    ld e, $0d
    ld hl, $62a8
    ld a, $04
    add l
    ld l, a
    jr nc, jr_003_6b38

    inc h

jr_003_6b38:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop bc
    ret


Jump_003_6b45:
    call Call_003_6c3e
    ld e, $0d
    ld hl, $62a8
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop bc
    ret


    push bc
    push de
    call Call_000_1aea
    push bc
    ld a, c
    add $04
    ld c, a
    jr nc, jr_003_6b67

    inc b

jr_003_6b67:
    call Call_000_1646
    and $07
    and a
    pop bc
    jr nz, jr_003_6b86

    ld a, c
    sub $04
    ld c, a
    jr nc, jr_003_6b77

    dec b

jr_003_6b77:
    call Call_000_1646
    and $07
    and a
    jr nz, jr_003_6b86

    pop de
    pop bc
    ld e, $27
    xor a
    ld [de], a
    ret


jr_003_6b86:
    pop de
    pop bc
    ld e, $27
    ld a, $01
    ld [de], a
    ret


    ld e, $15
    ld a, [de]
    inc a
    ld [de], a
    ret


    ld e, $15
    ld a, [de]
    dec a
    ld [de], a
    ret


    ld hl, $6298
    ld e, $5c
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_003_6ba5

    inc h

jr_003_6ba5:
    ld a, [hl]
    ld e, a
    call Call_000_0647
    cp e
    ld e, $27
    jr c, jr_003_6bb2

    xor a
    ld [de], a
    ret


jr_003_6bb2:
    ld a, $01
    ld [de], a
    ret


    call Call_000_0647
    ld e, $27
    cp $00
    jr c, jr_003_6bcb

    cp $a0
    jr c, jr_003_6bc7

    ld a, $03
    ld [de], a
    ret


jr_003_6bc7:
    ld a, $02
    ld [de], a
    ret


jr_003_6bcb:
    ld a, $01
    ld [de], a
    ret


    ld e, $27
    ld a, [de]
    dec a
    ld [de], a
    ret


Call_003_6bd5:
    ld h, $a0
    ld e, $0b
    ld l, e
    ld a, [de]
    sub [hl]
    bit 7, a
    jr z, jr_003_6be2

    ld a, $01

jr_003_6be2:
    ld c, a
    ld e, $09
    ld l, e
    ld a, [de]
    sub [hl]
    bit 7, a
    ld e, $01
    jr z, jr_003_6bf4

    ld b, $01
    ld e, $00
    cpl
    inc a

jr_003_6bf4:
    ld b, a
    ld l, c
    xor a
    sla l
    rla
    sla l
    rla
    ld h, a
    ld c, $00

jr_003_6c00:
    and a
    ld a, l
    sub b
    ld l, a
    jr nc, jr_003_6c0c

    ld a, h
    sub $01
    jr c, jr_003_6c14

    ld h, a

jr_003_6c0c:
    inc c
    ld a, c
    sub $0c
    jr nz, jr_003_6c00

    jr jr_003_6c2d

jr_003_6c14:
    ld a, c
    sub $02
    jr nc, jr_003_6c23

    ld a, e
    and a
    jr nz, jr_003_6c38

    ld e, $40
    ld a, $40
    ld [de], a
    ret


jr_003_6c23:
    ld a, e
    and a
    jr nz, jr_003_6c32

    ld e, $40
    ld a, $20
    ld [de], a
    ret


jr_003_6c2d:
    ld e, $40
    xor a
    ld [de], a
    ret


jr_003_6c32:
    ld e, $40
    ld a, $e0
    ld [de], a
    ret


jr_003_6c38:
    ld e, $40
    ld a, $c0
    ld [de], a
    ret


Call_003_6c3e:
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $03
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    bit 7, a
    jr nz, jr_003_6c59

    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [hl+]
    adc $00
    ld [de], a
    inc e
    jr jr_003_6c68

jr_003_6c59:
    push bc
    cpl
    inc a
    ld b, a
    ld a, [hl]
    sub b
    ld [de], a
    inc e
    inc l
    ld a, [hl+]
    sbc $00
    ld [de], a
    inc e
    pop bc

jr_003_6c68:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [bc]
    bit 7, a
    jr nz, jr_003_6c79

    add [hl]
    ld [de], a
    inc l
    inc e
    ld a, [hl]
    adc $00
    ld [de], a
    ret


jr_003_6c79:
    cpl
    inc a
    ld b, a
    ld a, [hl]
    sub b
    ld [de], a
    inc e
    inc l
    ld a, [hl+]
    sbc $00
    ld [de], a
    ret


    db $17, $ff, $0d, $03, $d6, $6c, $43, $01, $ff, $00, $27, $0d, $80, $1f, $01, $00
    db $11, $ac, $6c, $03, $26, $6d, $43, $18, $0d, $be, $23, $ec, $62, $19, $00, $08
    db $19, $01, $08, $06, $a3, $6c, $03, $e2, $6c, $43, $27, $0d, $90, $20, $e0, $62
    db $01, $00, $00, $27, $03, $02, $6d, $43, $0d, $5f, $20, $f8, $62, $01, $00, $00
    db $03, $5f, $6d, $43, $18, $05, $40, $19, $01, $08, $19, $00, $08

    ld b, $cd
    ld l, h

    call Call_003_6dea
    ret nc

    ld e, $03
    ld bc, $6c90
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $62bc
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $03
    ld bc, $6c99
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $62bc
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $03
    ld bc, $6c99
    jp Jump_000_0846


    ret


    call Call_000_2235
    ld e, $40
    ld [de], a
    ld hl, $62ec
    call Call_000_23ca
    call Call_000_0da4
    ld bc, $62bc
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_19cb
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_003_6d57

    call Call_003_6d84
    ret nc

    ld e, $03
    ld bc, $6cc6
    jp Jump_000_0846


jr_003_6d57:
    ld e, $03
    ld bc, $6cb9
    jp Jump_000_0846


    ld bc, $62bc
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_003_6d84
    jr c, jr_003_6d76

    ld e, $03
    ld bc, $6c99
    jp Jump_000_0846


jr_003_6d76:
    call Call_000_19cb
    bit 7, a
    ret nz

    ld e, $03
    ld bc, $6cb9
    jp Jump_000_0846


Call_003_6d84:
    ld h, $a0
    ld e, $04
    ld l, e
    ld a, [de]
    sub [hl]
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    jr c, jr_003_6da0

    ld e, $45
    ld a, [de]
    bit 7, a
    jr z, jr_003_6daf

    ld l, e
    ld a, [hl]
    bit 7, a
    jr nz, jr_003_6daf

    jr jr_003_6db1

jr_003_6da0:
    ld e, $45
    ld a, [de]
    bit 7, a
    jr nz, jr_003_6daf

    ld l, e
    ld a, [hl]
    bit 7, a
    jr z, jr_003_6daf

    jr jr_003_6db1

jr_003_6daf:
    and a
    ret


jr_003_6db1:
    scf
    ret


    ld h, $a0
    ld l, $45
    ld a, [hl]
    bit 7, a
    jr nz, jr_003_6dd3

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_003_6dd9

jr_003_6dc2:
    ld hl, $db51
    ld a, [hl]
    ld e, $04
    sub $08
    ld [de], a
    inc hl
    inc e
    ld a, [hl]
    jr nc, jr_003_6dd1

    dec a

jr_003_6dd1:
    ld [de], a
    ret


jr_003_6dd3:
    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_003_6dc2

jr_003_6dd9:
    ld hl, $db51
    ld a, [hl]
    ld e, $04
    add $a8
    ld [de], a
    inc hl
    inc e
    ld a, [hl]
    jr nc, jr_003_6de8

    inc a

jr_003_6de8:
    ld [de], a
    ret


Call_003_6dea:
    ld e, $5b
    ld a, [de]
    and a
    ld h, $a0
    ld l, $45
    ld a, [hl]
    jr nz, jr_003_6dfb

    bit 7, a
    jr nz, jr_003_6e14

    jr jr_003_6dff

jr_003_6dfb:
    bit 7, a
    jr z, jr_003_6e14

jr_003_6dff:
    ld hl, $db51
    ld a, [hl+]
    sub $08
    ld e, a
    ld a, [hl]
    ld l, e
    jr nc, jr_003_6e0b

    dec a

jr_003_6e0b:
    ld h, a
    ld e, $04
    ld a, [de]
    sub l
    inc e
    ld a, [de]
    sbc h
    ret


jr_003_6e14:
    ld hl, $db51
    ld a, [hl+]
    add $a8
    ld e, a
    ld a, [hl]
    ld l, e
    jr nc, jr_003_6e20

    inc a

jr_003_6e20:
    ld h, a
    ld e, $04
    ld a, [de]
    sub l
    inc e
    ld a, [de]
    sbc h
    jr c, jr_003_6e2c

    scf
    ret


jr_003_6e2c:
    and a
    ret


    rla
    rst $38
    dec c
    inc bc
    xor e
    ld l, [hl]
    ld b, e
    ld bc, $00ff
    daa
    ld bc, $1800
    dec c
    add b
    rra
    ld de, $6e9c
    rrca
    daa
    nop
    rrca
    daa
    ld bc, $0d24
    inc bc
    dec bc
    ld l, a
    ld b, e
    dec c
    ld e, a
    jr nz, jr_003_6e5e

    ld h, e
    dec c
    db $d3
    jr nz, jr_003_6e69

    ld h, e
    dec c
    sub b
    jr nz, jr_003_6e72

    ld h, e
    add hl, de

jr_003_6e5e:
    nop
    inc b
    add hl, de
    ld bc, $0118
    nop
    nop
    inc bc
    add sp, $6e

jr_003_6e69:
    ld b, e
    jr jr_003_6e79

    db $d3

jr_003_6e6d:
    jr nz, jr_003_6e6d

    ld h, d
    add hl, de
    nop

jr_003_6e72:
    inc b
    ld c, $03
    ld b, l
    ld l, [hl]
    ld a, e
    ld l, [hl]

jr_003_6e79:
    ld b, d
    ld l, [hl]
    rrca
    daa
    ld [bc], a
    inc bc
    ld sp, $436f
    inc h
    dec c
    dec c
    ld e, a
    jr nz, jr_003_6ea2

    ld h, e
    dec c
    db $d3
    jr nz, @+$22

    ld h, e
    dec c
    sub b
    jr nz, @+$26

    ld h, e
    add hl, de
    nop
    ld [$0119], sp
    jr nz, jr_003_6e9b

    nop

jr_003_6e9b:
    nop
    inc bc
    or a
    ld l, [hl]
    ld b, e
    dec c
    ld e, a

jr_003_6ea2:
    jr nz, jr_003_6ea6

    ld h, e
    dec c

jr_003_6ea6:
    db $d3
    jr nz, jr_003_6eb1

    ld h, e
    nop
    call Call_003_6dea
    ret nc

    ld e, $03

jr_003_6eb1:
    ld bc, $6e38
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $62ca
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $62d8
    call Call_000_24cd
    bit 6, a
    jr nz, jr_003_6ee1

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $03
    ld bc, $6e42
    jp Jump_000_0846


jr_003_6ee1:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_0da4
    ld bc, $62ca
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $62d8
    call Call_000_24a5
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret nz

    ld e, $03
    ld bc, $6e9c
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $62ca
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $62d8
    call Call_000_24cd
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $03
    ld bc, $6e66
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $62ca
    call Call_000_255b
    ret c

    call Call_000_2375

jr_003_6f41:
    ld bc, $62d8

jr_003_6f44:
    call Call_000_24cd
    bit 5, a
    jp nz, Jump_000_1ef9

jr_003_6f4c:
    bit 7, a
    ret z

    ld e, $03
    ld bc, $6e66
    jp Jump_000_0846


    rst $38

    db $02

    nop
    nop
    nop
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
    nop
    add b
    nop

    db $50, $00, $80, $00, $60, $00

    and b
    nop
    ld h, b
    nop
    and b
    nop
    ld h, b
    nop
    and b
    nop
    ld h, b
    nop
    and b
    nop

    db $30, $20, $60, $06

    add hl, de
    jr nz, jr_003_6fb6

    ld a, [bc]
    jr nc, @+$22

    ld h, b
    ld b, $19
    jr nz, jr_003_6fbe

    ld a, [bc]
    ld e, d
    jr nz, jr_003_6f44

    ld b, $32
    jr nz, jr_003_6ff8

    ld a, [bc]
    ld e, d
    jr nz, jr_003_6f4c

    ld b, $32
    jr nz, jr_003_7000

    ld a, [bc]
    db $10
    add b
    ld bc, $8008
    nop
    ld h, b
    nop
    and b
    nop

    db $60, $00

    and b
    nop
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

jr_003_6fb6:
    ld a, [hl+]
    ld c, a
    inc bc
    stop
    ld bc, $0420

jr_003_6fbe:
    add b
    jr jr_003_6f41

    ld bc, $0420
    add b
    jr nz, jr_003_6fc7

jr_003_6fc7:
    ld [bc], a
    jr nz, jr_003_6fca

jr_003_6fca:
    ld [bc], a

jr_003_6fcb:
    db $10
    add b
    ld bc, $0020
    ld b, b
    jr jr_003_6fcb

    ld bc, $0018
    ld h, b
    jr nz, jr_003_6fd9

jr_003_6fd9:
    ld [bc], a
    jp c, $ecd8

    ret c

    inc d
    ret c

    ld h, $d8
    nop
    cp $20
    nop
    db $fd
    nop
    nop
    nop
    ret nz

    db $fd
    inc h
    nop
    db $fd
    nop
    nop
    nop
    nop
    cp $20
    nop
    db $fd
    ret nz

jr_003_6ff8:
    nop
    nop
    ret nz

    db $fd
    inc h
    nop
    db $fd
    nop

jr_003_7000:
    ld bc, $0000
    db $fd
    jr nz, jr_003_7006

jr_003_7006:
    db $fd
    ret nz

    nop
    nop
    nop
    db $fd
    jr nz, jr_003_700e

jr_003_700e:
    db $fd
    nop
    db $01
    nop

    db $17, $ff, $0d, $27, $0d, $d1, $70, $0d, $e8, $70, $0d, $0f, $20, $06, $06, $3f
    db $10, $5b, $13, $02, $2f, $70, $14, $06, $2f, $70, $0d, $36, $71, $0e, $07

    ld c, e
    ld [hl], b

    db $4b, $70, $58, $70

    ld e, b
    ld [hl], b
    ld e, b
    ld [hl], b
    ld e, b
    ld [hl], b

    db $65, $70

    dec c
    ld b, e
    ld [hl], b
    ld d, $1e
    ld b, [hl]
    ld a, [de]
    ld hl, $dd5c
    ld [hl], a
    ret


    db $03, $72, $70, $43, $19, $00, $08, $19, $01, $08, $06, $4f, $70, $03, $8e, $70
    db $43, $19, $00, $08, $19, $01, $08, $06, $5c, $70, $03, $cb, $70, $43, $19, $00
    db $08, $19, $01, $08, $06, $69, $70

    call Call_000_0da4
    ld bc, $6f57
    call Call_000_255b
    call Call_000_1a25
    bit 7, a
    jp nz, Jump_000_1faf

    bit 6, a
    jp nz, Jump_000_1faf

    bit 5, a
    ret z

    jp Jump_000_1fbd


    ld e, $26
    ld a, [de]
    or a
    jr nz, jr_003_70b4

    ld e, $3e
    ld a, [de]
    inc a
    and $01
    ld [de], a
    jr nz, jr_003_70a4

    ld e, $3b
    ld a, [de]
    ld e, $26
    jr jr_003_70b4

jr_003_70a4:
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    inc e
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld e, $3c
    ld a, [de]
    ld e, $26

jr_003_70b4:
    dec a
    ld [de], a
    ld e, $3e
    ld a, [de]
    or a
    jr z, jr_003_70c2

    call Call_000_1ee6
    call Call_000_1ed3

jr_003_70c2:
    call Call_000_0da4
    ld bc, $6f57
    jp Jump_000_255b


    ld bc, $6f57
    jp Jump_000_255b


    ld e, $07
    ld l, e
    ld h, $a0
    ld a, [de]
    sub [hl]
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ld e, $3f
    jr c, jr_003_70e4

    ld a, $00
    ld [de], a
    ret


jr_003_70e4:
    ld a, $80
    ld [de], a
    ret


    ld e, $5b
    ld a, [de]
    rlca
    rlca
    ld l, a
    ld e, $5c
    ld a, [de]
    rlca
    add l
    ld hl, $6f65
    add l
    ld l, a
    jr nc, jr_003_70fb

    inc h

jr_003_70fb:
    ld e, $5b
    ld a, [de]
    rrca
    jr c, jr_003_711c

    ld e, $3f
    ld a, [de]
    cp $80
    ld e, $0f
    jr z, jr_003_7116

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


jr_003_7116:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


jr_003_711c:
    ld e, $45
    ld a, [de]
    rlca
    ld e, $0d
    jr nc, jr_003_7130

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


jr_003_7130:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $5b
    ld a, [de]
    sub $02
    swap a
    rrca
    ld l, a
    ld e, $5c
    ld a, [de]
    rlca
    rlca
    add l
    ld hl, $6f7d
    add l
    ld l, a
    jr nc, jr_003_714d

    inc h

jr_003_714d:
    ld a, [hl+]
    ld e, $26
    ld [de], a
    ld e, $3c
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl+]
    ld [de], a
    ld e, $3e
    xor a
    ld [de], a
    ld e, $5b
    ld a, [de]
    rrca
    jr c, jr_003_717b

    ld e, $3f
    ld a, [de]
    cp $80
    jr z, jr_003_7173

    ld e, $11
    xor a
    ld [de], a
    inc e
    ld a, [hl]
    cpl
    inc a
    ld [de], a
    ret


jr_003_7173:
    ld e, $11
    xor a
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


jr_003_717b:
    ld e, $45
    ld a, [de]
    rlca
    ld e, $11
    jr c, jr_003_7189

    ld a, [hl]
    ld [de], a
    xor a
    inc e
    ld [de], a
    ret


jr_003_7189:
    ld a, [hl]
    cpl
    inc a
    ld [de], a
    xor a
    inc e
    ld [de], a
    ret


    db $17, $ff, $0d, $0d, $0f, $20, $06, $06, $3f, $10, $5b, $14, $04, $b0, $71

    dec c
    cpl
    ld [hl], e
    inc bc
    jp hl


    ld [hl], c
    ld b, e
    add hl, de
    nop
    ld [$0119], sp
    ld [$a706], sp
    ld [hl], c

    db $0d, $2e, $4d, $11

    db $cd
    ld [hl], c

    db $27, $0d, $d1, $70, $0f, $3d, $03, $03, $41, $72, $43, $0d, $74, $73, $19, $00
    db $08, $19, $01, $08, $06, $c4, $71

    jr jr_003_71d2

    call c, Call_003_4372

jr_003_71d2:
    dec c
    ld b, d
    jr nz, jr_003_7173

    ld l, a
    add hl, de
    nop
    ld [$0119], sp
    ld [$d706], sp
    ld [hl], c
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    ld b, $b6
    ld [hl], c
    call Call_000_0da4
    ld bc, $6f57
    call Call_000_255b
    call Call_000_197f
    ret nc

    ldh a, [$ff9e]
    cp $04
    jr c, jr_003_720a

    jr z, jr_003_7221

    cp $05
    jr z, jr_003_7210

    cp $07
    jr z, jr_003_7221

    cp $06
    jr z, jr_003_7210

jr_003_720a:
    call Call_000_1fbd
    jp Jump_000_1faf


jr_003_7210:
    ld e, $0d
    ld h, d
    ld l, $0f
    ld a, [de]
    ld b, [hl]
    ld [hl+], a
    ld a, b
    ld [de], a
    inc e
    ld a, [de]
    ld b, [hl]
    ld [hl], a
    ld a, b
    ld [de], a
    ret


jr_003_7221:
    ld e, $0d
    ld a, [de]
    cpl
    add $01
    ld c, a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld b, a
    dec e
    ld l, $0f
    ld h, d
    ld a, [hl]
    ld [hl], c
    cpl
    add $01
    ld [de], a
    inc l
    inc e
    ld a, [hl]
    ld [hl], b
    cpl
    adc $00
    ld [de], a
    ret


    ld bc, $6f57
    call Call_000_255b
    call Call_000_0da4
    ld e, $40
    ld a, [de]
    rlca
    ld hl, $725a
    add l
    ld l, a
    jr nc, jr_003_7256

    inc h

jr_003_7256:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $62, $72, $99, $72, $9e, $72, $d7, $72

    call Call_003_5026

jr_003_7265:
    or a
    jr z, jr_003_7281

    bit 5, a
    ld h, d
    ld l, $3d
    ld [hl], $03
    ret z

    call Call_000_1faf

jr_003_7273:
    ld e, $0e
    ld a, [de]
    and $80
    xor $80
    rlca
    add $02
    ld e, $40
    ld [de], a
    ret


jr_003_7281:
    ld e, $3d
    ld a, [de]
    dec a
    ld [de], a
    cp $02
    jr z, jr_003_7294

    or a
    ret nz

    ld e, $03
    ld bc, $71cd
    jp Jump_000_0846


jr_003_7294:
    call Call_000_1fbd
    jr jr_003_7273

    call Call_000_19cb
    jr jr_003_7265

    call Call_003_50d0

jr_003_72a1:
    or a
    jr z, jr_003_72bf

    bit 7, a
    jr nz, jr_003_72b0

    bit 6, a
    ld h, d
    ld l, $3d
    ld [hl], $03
    ret z

jr_003_72b0:
    call Call_000_1fbd

jr_003_72b3:
    ld e, $10
    ld a, [de]
    and $80
    xor $80
    rlca
    ld e, $40
    ld [de], a
    ret


jr_003_72bf:
    ld e, $3d
    ld a, [de]
    dec a
    ld [de], a
    cp $02
    jr z, jr_003_72d2

    or a
    ret nz

    ld e, $03
    ld bc, $71cd
    jp Jump_000_0846


jr_003_72d2:
    call Call_000_1faf
    jr jr_003_72b3

    call Call_003_50f8
    jr jr_003_72a1

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6f57
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    jr nz, jr_003_731e

    ld e, $3e
    ld a, [de]
    or a
    ret nz

    call Call_000_1ab3
    ret nz

    ld e, $0f
    ld a, [de]
    inc e
    ld c, a
    ld a, [de]
    ld b, a
    ld hl, $6fa1
    ld e, $39
    ld a, [hl+]
    ld [de], a
    inc e
    ld h, [hl]
    ld l, a
    ld a, h
    ld [de], a
    ld a, l
    sub c
    ld a, h
    sbc b
    ld hl, $6fa0
    ld e, $12
    ld a, [hl]
    jr c, jr_003_731a

    ld [de], a
    ret


jr_003_731a:
    cpl
    inc a
    ld [de], a
    ret


jr_003_731e:
    ld e, $40
    ld a, $01
    ld [de], a
    ld e, $3e
    xor a
    ld [de], a
    ld e, $03
    ld bc, $71e1
    jp Jump_000_0846


    ld e, $5c
    ld a, [de]
    rlca
    ld hl, $6fa3
    add l
    ld l, a
    jr nc, jr_003_733b

    inc h

jr_003_733b:
    ld e, $5b
    ld a, [de]
    cp $01
    jr c, jr_003_7366

    jr z, jr_003_735e

    cp $02
    jr z, jr_003_7350

    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


jr_003_7350:
    ld e, $0d
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


jr_003_735e:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


jr_003_7366:
    ld e, $0f
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


    ld hl, $6fa7
    ld e, $5c
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_003_7380

    inc h

jr_003_7380:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $40
    ld a, [de]
    cp $01
    jr c, jr_003_73ca

    jr z, jr_003_73c1

    cp $02
    jr z, jr_003_7399

    ld e, $0d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    jr jr_003_73a6

jr_003_7399:
    ld e, $0d
    ld a, l
    cpl
    add $01
    ld [de], a
    inc e
    ld a, h
    cpl
    adc $00
    ld [de], a

jr_003_73a6:
    ld e, $3f
    ld a, [de]
    cp $00
    ld e, $0f
    jr z, jr_003_73b5

    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


jr_003_73b5:
    ld a, l
    cpl
    add $01
    ld [de], a
    inc e
    ld a, h
    cpl
    adc $00
    ld [de], a
    ret


jr_003_73c1:
    ld e, $0f
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    jr jr_003_73d7

jr_003_73ca:
    ld e, $0f
    ld a, l
    cpl
    add $01
    ld [de], a
    inc e
    ld a, h
    cpl
    adc $00
    ld [de], a

jr_003_73d7:
    ld e, $45
    ld a, [de]
    rlca
    ld e, $0d
    jr c, jr_003_73e5

    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


jr_003_73e5:
    ld a, l
    cpl
    add $01
    ld [de], a
    inc e
    ld a, h
    cpl
    adc $00
    ld [de], a
    ret


    db $17, $ff, $0d, $10, $5b, $0e, $06

    inc b
    ld [hl], h
    sbc a
    ld [hl], h
    inc b
    ld [hl], h

    db $90, $79, $96, $79, $9c, $79

    dec c
    add b
    rra
    ld de, $7443
    db $10
    ld e, e
    ld c, $03
    dec d
    ld [hl], h
    sbc a

jr_003_7411:
    ld [hl], h
    ld e, $75
    ld d, $07
    nop
    nop
    daa
    dec c
    ld a, [hl+]
    ld a, b
    cp c
    ld l, a
    dec c
    ld [hl], h
    ld a, b
    inc bc
    ld l, c
    ld [hl], l
    ld b, e
    add hl, de
    nop
    ld [$0119], sp
    ld [$0319], sp
    ld [$0219], sp
    ld [$2506], sp
    ld [hl], h
    add hl, de
    nop
    ld b, $19
    ld bc, $1906
    inc bc
    ld b, $19
    ld [bc], a
    ld b, $06
    inc [hl]
    ld [hl], h
    jr jr_003_7448

    ld [bc], a
    halt
    ld b, e

jr_003_7448:
    dec c
    ld b, d
    jr nz, jr_003_7411

    ld l, a
    db $10
    ld e, h
    ld [de], a
    inc [hl]
    ld [hl], h
    ld b, $25
    ld [hl], h
    jr jr_003_7481

jr_003_7457:
    nop
    inc h
    ld c, $06
    ld a, [bc]
    ld [hl], h
    daa
    dec c
    ld a, [hl+]
    ld a, b
    bit 5, a
    inc bc
    ld d, d
    halt
    ld b, e
    db $10
    ld e, h
    ld [de], a
    inc [hl]
    ld [hl], h
    ld b, $25
    ld [hl], h
    ld bc, $1800
    inc bc
    ld a, l
    ld [hl], a
    ld b, e
    dec b
    jr jr_003_7492

    nop
    db $10
    add hl, de
    inc b
    ld [$0001], sp
    dec c

jr_003_7481:
    ld d, b
    rrca
    dec e
    xor b
    or d
    ld [$fd00], sp
    inc bc
    dec e
    ld [hl], a
    ld b, e
    nop
    dec c
    ld b, d
    jr nz, jr_003_7457

jr_003_7492:
    ld l, a
    inc bc
    dec hl
    ld [hl], a
    ld b, e
    db $10
    ld e, h
    ld [de], a
    inc [hl]
    ld [hl], h
    ld b, $25
    ld [hl], h
    ld bc, $0300
    ld a, l
    ld [hl], a
    ld b, e
    dec b
    ld e, $28
    inc de
    ld b, b
    or l
    ld [hl], h
    dec b

jr_003_74ad:
    ld e, $28
    inc de
    ld b, b
    or l
    ld [hl], h
    dec b
    ld e, $0f
    rra
    add b
    add hl, bc
    ld [$ff19], sp
    ld bc, $0019
    ld bc, $090a
    dec b
    add hl, de
    rst $38
    ld [bc], a
    add hl, de
    nop
    ld bc, $190a
    rst $38
    jr z, @+$0f

    ld a, a
    ld a, b
    add hl, bc
    dec b
    add hl, de
    nop
    ld bc, $ff19
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [$0019], sp
    ld bc, $ff19
    ld bc, $010a
    nop
    dec c
    ld b, d
    jr nz, jr_003_74ad

    ld l, a
    dec c
    pop af
    ld a, b
    ld [de], a
    db $f4
    ld [hl], h
    inc bc
    adc b
    ld [hl], a
    ld b, e
    nop
    inc bc
    xor c
    ld [hl], a
    ld b, e
    nop
    ld [$0000], sp
    rrca
    ld h, $40
    inc bc
    ld a, l
    ld [hl], a
    ld b, e
    dec b
    ld [$0d27], sp
    sbc a
    ld hl, $6fd7
    inc bc
    jp z, $4377

    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1904
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc b
    ld b, $0f
    ld [hl], l
    daa
    inc bc
    ld a, l
    ld [hl], a
    ld b, e
    add hl, de
    nop
    jr @+$1b

    inc b
    ld [$2b0d], sp
    ld a, c
    dec c
    ccf
    ld a, c
    ldh [c], a
    ld l, a
    inc bc
    db $fc
    ld [hl], a
    ld b, e
    inc h
    dec c
    ld c, $03
    ld b, b
    ld [hl], l
    ld b, e
    ld [hl], l
    ld d, d
    ld [hl], l
    ld d, $01
    nop
    nop
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1904
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc b
    ld b, $43
    ld [hl], l
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1904
    inc bc
    inc b
    add hl, de
    ld [bc], a
    inc b
    ld b, $52
    ld [hl], l
    inc h
    ld c, $19
    inc b
    ld [$1e06], sp
    ld [hl], l
    call Call_000_21c5
    ld e, $0d
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr nz, jr_003_757c

    ld e, $39
    ld a, $01
    ld [de], a
    jr jr_003_758c

jr_003_757c:
    ld e, $39
    ld a, [de]
    or a
    jr z, jr_003_758c

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld e, $39
    xor a
    ld [de], a

jr_003_758c:
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 4, a
    jr nz, jr_003_75ae

    bit 5, a
    jr nz, jr_003_75ae

    ld e, $4d
    ld a, [de]
    cp $04
    jr c, jr_003_75c7

jr_003_75ae:
    ld e, $0d
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    call Call_000_0da4
    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a

jr_003_75c7:
    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld e, $3d
    ld a, [de]
    ld e, $26
    ld [de], a
    ld e, $3b
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    ld e, $3a
    ld a, [de]
    ld e, $11
    ld [de], a
    ld l, $40
    ld h, d
    dec [hl]
    ret nz

    call Call_000_0647
    ld l, $3f
    ld h, d
    cp [hl]
    jr c, jr_003_75fa

    ld l, $3e
    ld a, [hl]
    ld l, $40
    ld [hl], a
    ret


jr_003_75fa:
    ld e, $03
    ld bc, $745d
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $4d
    ld a, [de]
    cp $04
    jr nc, jr_003_762a

    ld e, $03
    ld bc, $7455
    jp Jump_000_0846


jr_003_762a:
    ld e, $0d
    ld a, [de]
    inc e
    ld c, a
    ld a, [de]
    or c
    ret nz

Call_003_7632:
    ld hl, $0100
    ld e, $4d
    ld a, [de]
    cp $04
    jr z, jr_003_7644

    ld e, $0d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


jr_003_7644:
    ld e, $0d
    ld a, l
    cpl
    add $01
    ld [de], a
    inc e
    ld a, h
    cpl
    add $00
    ld [de], a
    ret


    ld e, $40
    ld a, [de]
    cp $01
    jr z, jr_003_766d

    jr c, jr_003_766a

    ld e, $0d
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jp z, Jump_003_7704

    call Call_000_1ee6
    jr jr_003_766d

jr_003_766a:
    call Call_000_21c5

jr_003_766d:
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    or a
    jp z, Jump_003_76fc

    bit 5, a
    jr nz, jr_003_76af

    ld e, $4d
    ld a, [de]
    cp $04
    jr c, jr_003_76b8

    ld l, $0e
    ld h, d
    bit 7, [hl]
    jr nz, jr_003_769c

    cp $04
    jr z, jr_003_76af

    jr jr_003_76a0

jr_003_769c:
    cp $04
    jr nz, jr_003_76af

jr_003_76a0:
    call Call_003_7632
    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $77
    inc l
    ld [hl], $58
    ret


jr_003_76af:
    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a

jr_003_76b8:
    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld e, $04
    ld l, e
    ld h, $a0
    ld a, [de]
    sub [hl]
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ld e, $45
    ld a, [de]
    jr nc, jr_003_76d3

    rlca
    jp c, Jump_003_7704

    jr jr_003_76d7

jr_003_76d3:
    rlca
    jp nc, Jump_003_7704

jr_003_76d7:
    ld e, $40
    ld a, [de]
    inc a
    ld [de], a
    cp $02
    jr z, jr_003_76eb

    ld e, $3d
    ld a, [de]
    ld e, $26
    ld [de], a
    xor a
    ld e, $11
    ld [de], a
    ret


jr_003_76eb:
    ld e, $45
    ld a, [de]
    rlca
    ld e, $3a
    ld a, [de]
    ld e, $11
    jr nc, jr_003_76f8

    ld [de], a
    ret


jr_003_76f8:
    cpl
    inc a
    ld [de], a
    ret


Jump_003_76fc:
    ld e, $03
    ld bc, $748e
    jp Jump_000_0846


Jump_003_7704:
    call Call_000_0647
    ld l, $3f
    ld h, d
    cp [hl]
    jr nc, jr_003_7715

    ld e, $03
    ld bc, $746f
    jp Jump_000_0846


jr_003_7715:
    ld e, $03
    ld bc, $7415
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    jr z, jr_003_774d

    ld l, $0d
    ld h, d
    ld b, $00
    ld [hl], b
    inc l
    ld [hl], b

jr_003_774d:
    bit 7, a
    ret z

    ld e, $03
    ld bc, $746f
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    or a
    jp z, Jump_003_7775

    ld e, $4d
    ld a, [de]
    cp $04
    ret nc

Jump_003_7775:
    ld e, $03
    ld bc, $746f
    jp Jump_000_0846


    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $03
    ld bc, $74f9
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_003_78fa
    or a
    ret nz

    ld h, d
    ld l, $1f
    ld [hl], $43
    inc l
    ld [hl], $77
    inc l
    ld [hl], $88
    ret


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19cb
    or a
    jr z, jr_003_77f4

    bit 5, a
    jr nz, jr_003_77ec

    ld h, d
    ld l, $26
    dec [hl]
    ret nz

jr_003_77ec:
    ld e, $03
    ld bc, $746f
    jp Jump_000_0846


jr_003_77f4:
    ld e, $03
    ld bc, $748e
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    jr z, jr_003_781f

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1fbd


jr_003_781f:
    bit 7, a
    ret z

    ld e, $03
    ld bc, $7561
    jp Jump_000_0846


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_003_783c

    inc h

jr_003_783c:
    ld e, $11
    ld a, [hl+]
    ld [de], a
    ld e, $3a
    ld [de], a
    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_003_7852

    ld e, $3b
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    jr jr_003_785f

jr_003_7852:
    ld e, $3b
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl+]
    cpl
    adc $00
    ld [de], a

jr_003_785f:
    ld e, $26
    ld a, [hl+]
    ld [de], a
    ld e, $3d
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $40
    ld [de], a
    dec e
    ld a, [hl]
    ld [de], a
    xor a
    ld e, $39
    ld [de], a
    ret


    ld e, $26
    ld a, [de]
    rrca
    ld [de], a
    ld e, $40
    ld a, [de]
    inc a
    ld [de], a
    ret


    push bc
    ld h, $a0
    ld l, $04
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld l, $07
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    call Call_000_0647
    and $03
    ldh [$ff80], a
    ldh [$ff81], a

jr_003_789b:
    rlca
    ld hl, $6fda
    add l
    ld l, a
    jr nc, jr_003_78a4

    inc h

jr_003_78a4:
    ld a, [hl+]
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, [hl]
    ld h, d
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_1ad9
    call Call_000_1646
    cp $00
    jr z, jr_003_78c6

    ldh a, [$ff80]
    inc a
    and $03
    ldh [$ff80], a
    ld l, a
    ldh a, [$ff81]
    cp l
    jr nz, jr_003_789b

jr_003_78c6:
    ldh a, [$ff80]
    rlca
    ld hl, $6fda
    add l
    ld l, a
    jr nc, jr_003_78d1

    inc h

jr_003_78d1:
    ld a, [hl+]
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, [hl]
    ld h, d
    ld e, a
    rla
    sbc a
    ld d, a
    ldh a, [$ff9a]
    ld h, a
    ld l, $04
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl+], a
    inc l
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld d, h
    pop bc
    ret


    push bc
    call Call_003_78fa
    ld e, $27
    ld [de], a
    pop bc
    ret


Call_003_78fa:
    ld h, d
    ld a, $f9
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, $06
    ld e, a
    rla
    sbc a
    ld d, a
    call Call_000_1ad9
    call Call_000_1646
    or a
    jr nz, jr_003_7925

    ld a, $06
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, $06
    ld e, a
    rla
    sbc a
    ld d, a
    ldh a, [$ff9a]
    ld h, a
    call Call_000_1ad9
    call Call_000_1646

jr_003_7925:
    ld l, a
    ldh a, [$ff9a]
    ld d, a
    ld a, l
    ret


    call Call_000_0647
    ld e, $00
    cp $40
    jr c, jr_003_793a

    inc e
    cp $c0
    jr c, jr_003_793a

    inc e

jr_003_793a:
    ld a, e
    ld e, $27
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld e, $27
    ld a, [de]
    swap a
    ld c, a
    ld e, $5c
    ld a, [de]
    swap a
    rrca
    add c
    add l
    ld l, a
    jr nc, jr_003_7958

    inc h

jr_003_7958:
    pop bc
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    call Call_000_2053
    jp Jump_000_20f9


    db $17, $ff, $0d, $03, $8a, $79, $43, $04, $52, $6f, $0b, $0f, $46, $00, $0d, $d1
    db $1f, $00, $08, $08, $00, $ff, $2a, $10, $19, $05, $08, $19, $04, $04, $0f, $47
    db $10, $05, $04, $16

    call Call_000_1ed3
    jp Jump_000_0da4


    db $0f, $27, $28, $06, $9f, $79, $0f, $27, $50, $06, $9f, $79, $0f, $27, $78, $27
    db $03, $a7, $79, $43, $01, $ff, $00

    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc hl
    ld a, [de]
    sbc [hl]
    ret c

    ld a, c
    ld h, d
    ld l, $45
    bit 7, [hl]
    ld l, $27
    jr nz, jr_003_79c2

    cp [hl]
    ret c

    jr jr_003_79c4

jr_003_79c2:
    cp [hl]
    ret nc

jr_003_79c4:
    ld e, $03
    ld bc, $79cc
    jp Jump_000_0846


    db $27, $19, $00, $02, $19, $ff, $02, $19, $01, $02, $19, $ff, $02, $19, $03, $02
    db $19, $ff, $02, $19, $02, $02, $19, $ff, $02, $10, $5c, $12

    ld [bc], a
    ld a, d

    db $19, $00, $02, $19, $ff, $02, $19, $01, $02, $19, $ff, $02, $19, $03, $02, $19
    db $ff, $02, $19, $02, $02, $19, $ff, $02, $03, $14, $7a, $43, $0d, $42, $20, $0e
    db $7a, $01, $00, $00, $20, $00, $02

    jr nz, @-$7e

    ld [bc], a

    ld hl, $21d8
    ld a, $00
    call Call_000_05cf
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $03
    ld bc, $7a3a
    jp Jump_000_0846


    db $24, $0e, $03, $6b, $7a, $43, $19, $04, $08, $27, $0d, $d3, $20, $61, $7a, $0d
    db $ca, $20, $65, $7a, $03, $76, $7a, $43, $19, $00, $20, $19, $01, $02, $19, $03
    db $02, $19, $02, $02, $01, $00, $00, $c0, $00

    jr nz, @+$03

    db $00, $fe, $10

    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6fab
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    jr nz, jr_003_7a96

    bit 5, a
    ret z

    jp Jump_000_1ef9


jr_003_7a96:
    ld e, $03
    ld bc, $7a9e
    jp Jump_000_0846


    db $03, $6b, $7a, $43, $01, $04, $1f, $45, $22, $ca, $7a, $01, $00, $03, $68, $7a
    db $43, $07, $00, $00, $08, $80, $fd, $0d, $50, $0f, $1d, $a8, $b2, $19, $00, $04
    db $19, $01, $04, $19, $03, $04, $19, $02, $04, $06, $bb, $7a, $10

    ld [$02ff], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $10, $80, $01, $17, $ff, $0d, $0f, $47, $00, $0f, $46, $00, $0f, $3e, $00, $18
    db $10, $4c, $1a, $42, $11, $f4, $7a, $0f, $47, $80, $0f, $4c, $00, $0f, $60, $bf
    db $0f, $61, $c0, $10, $5b, $12, $08, $7b, $0d, $80, $1f, $11, $2f, $7b, $03, $63
    db $7b, $43, $10, $42, $01, $00, $05, $3c, $11, $1b, $7b, $0f, $47, $90, $06, $1e
    db $7b, $0f, $47, $10, $05, $04, $11, $29, $7b, $0f, $47, $80, $06, $2c, $7b, $0f
    db $47, $00, $06, $10, $7b, $0f, $47, $00, $03, $eb, $7b, $43, $0d, $5f, $20, $da
    db $7a, $01, $00, $00, $03, $63, $7b, $43, $19, $00, $02, $19, $01, $02, $19, $00
    db $02, $19, $02, $02, $06, $42, $7b, $0d, $ff, $7c, $10, $5c, $11

    ld e, a
    ld a, e

    db $24, $10, $0d, $9c, $7c, $16

    dec c
    ld a, h
    ld a, h
    db $16

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_003_7b70

    call Call_000_1964
    bit 7, a
    jr z, jr_003_7baa

jr_003_7b70:
    ld bc, $7acc
    call Call_000_255b
    ret c

    ld e, $5c
    ld a, [de]
    cp $02
    jr z, jr_003_7b82

    ld b, $0d
    jr jr_003_7b84

jr_003_7b82:
    ld b, $0b

jr_003_7b84:
    ld c, $0b
    call Call_000_1f14
    jr c, jr_003_7bd8

    call Call_000_1f0d
    jr nz, jr_003_7bbd

    ld e, $3e
    ld a, [de]
    and a
    ret z

    xor a
    ld [de], a
    ld e, $03
    ld bc, $7b08
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
    ld [de], a
    ret


jr_003_7baa:
    ld e, $03
    ld bc, $7b2f
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
    ld [de], a
    ret


jr_003_7bbd:
    ld e, $3e
    ld a, [de]
    and a
    ret nz

    ld a, $01
    ld [de], a
    ld e, $03
    ld bc, $7b3e
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
    ld [de], a
    ret


jr_003_7bd8:
    ld e, $03
    ld bc, $7b51
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
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
    ld bc, $7acc
    call Call_000_255b
    ret c

    ld e, $5c
    ld a, [de]
    cp $02
    jr z, jr_003_7c0c

    ld b, $0d
    jr jr_003_7c0e

jr_003_7c0c:
    ld b, $0b

jr_003_7c0e:
    ld c, $0b
    call Call_000_1f14
    jr c, jr_003_7c3b

    call Call_000_1a25
    bit 7, a
    jr nz, jr_003_7c69

    call Call_000_1f0d
    jr nz, jr_003_7c4e

    ld e, $3e
    ld a, [de]
    and a
    ret z

    xor a
    ld [de], a
    ld e, $03
    ld bc, $7b2f
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
    ld [de], a
    ret


jr_003_7c3b:
    ld e, $03
    ld bc, $7b51
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
    ld [de], a
    ret


jr_003_7c4e:
    ld e, $3e
    ld a, [de]
    and a
    ret nz

    ld a, $01
    ld [de], a
    ld e, $03
    ld bc, $7b3e
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
    ld [de], a
    ret


jr_003_7c69:
    ld e, $03
    ld bc, $7b08
    call Call_000_0846
    ld e, $42
    ld a, [de]
    and a
    ret z

    ld e, $47
    ld a, $80
    ld [de], a
    ret


Call_003_7c7c:
    push bc
    push de
    ld hl, $a084
    ld a, [hl]
    cp $99
    jr nc, jr_003_7c89

    and a
    inc a
    daa

jr_003_7c89:
    ld [hl], a
    ld e, $21
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld hl, $dede
    set 2, [hl]
    pop de
    pop bc
    ret


    ld e, $5c
    ld a, [de]
    cp $03
    jr z, jr_003_7cd8

    ld hl, $dedf
    bit 1, [hl]
    jr nz, jr_003_7cc1

    ld hl, $a04c
    ld e, $5c
    ld a, [de]
    cp $02
    jr z, jr_003_7cb8

jr_003_7cb4:
    ld a, $0c
    ld [hl], a
    ret


jr_003_7cb8:
    ld a, [hl]
    add $04
    cp $0c
    jr nc, jr_003_7cb4

    ld [hl], a
    ret


jr_003_7cc1:
    ld hl, $a072
    ld e, $5c
    ld a, [de]
    cp $02
    jr z, jr_003_7ccf

jr_003_7ccb:
    ld a, $06
    ld [hl], a
    ret


jr_003_7ccf:
    ld a, [hl]
    add $02
    cp $06
    jr nc, jr_003_7ccb

    ld [hl], a
    ret


jr_003_7cd8:
    ld hl, $dee1
    ld a, [hl]
    inc a
    cp $07
    jr nz, jr_003_7cf5

    call Call_003_7c7c
    ld hl, $dee6
    ld [hl], $57
    inc hl
    ld [hl], $5f
    inc hl
    ld [hl], $07
    ld hl, $dede
    set 7, [hl]
    xor a

jr_003_7cf5:
    ld hl, $dee1
    ld [hl], a
    ld hl, $dede
    set 5, [hl]
    ret


    ld e, $49
    ld a, [de]
    inc a
    ret z

    ld a, [$db57]
    inc a
    jr z, jr_003_7d27

    ld hl, $dcfd
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $5c
    ld a, [de]
    inc a
    ld [hl+], a
    ld a, [$db57]
    ld [hl+], a
    ld e, $49
    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    ld a, l
    ld [$dcfd], a
    ld a, h
    ld [$dcfe], a

jr_003_7d27:
    ld a, $ff
    ld [de], a
    ret


    db $16

    dec c
    rst $00
    db $10
    rst $38
    db $16

    db $0d, $78, $7d, $11, $38, $7d

    db $16

    db $17, $ff, $0d, $04, $79, $77, $0d, $0f, $5e, $04, $0f, $5f, $04, $0f, $60, $88
    db $0f, $61, $c0, $0d, $11, $7e, $01, $00, $0f, $3e, $04, $18, $0d, $2c, $7e, $0f
    db $3d, $00, $03, $86, $7d, $43, $00

    rrca
    dec a
    ld bc, $8603
    ld a, l
    ld b, e
    rlca
    nop
    rst $38
    dec b
    ld [bc], a
    rlca
    nop
    ld bc, $0405
    rlca
    nop
    rst $38
    dec b
    ld [bc], a
    ld b, $69
    ld a, l

    ld a, [$db60]
    call Call_000_0663
    ld hl, $dd63
    and [hl]
    ld e, $27
    ld [de], a
    ret


    ld e, $3e
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_003_7d9a

    ld a, $04
    ld [de], a
    ld e, $15
    ld a, [de]
    inc a
    cp $07
    jr c, jr_003_7d99

    xor a

jr_003_7d99:
    ld [de], a

jr_003_7d9a:
    ld e, $15
    ld bc, $0200
    call Call_000_0d35
    call Call_000_0da4
    call Call_000_1a25
    ld bc, $7e03
    call Call_000_255b
    ld a, [$dd2c]
    bit 3, a
    jr nz, jr_003_7dd0

    bit 2, a
    ld e, $3d
    ld a, [de]
    jr nz, jr_003_7dc6

    dec a
    ret nz

    ld e, $03
    ld bc, $7d53
    jp Jump_000_0846


jr_003_7dc6:
    or a
    ret nz

    ld e, $03
    ld bc, $7d5f
    jp Jump_000_0846


jr_003_7dd0:
    call Call_000_2809
    ret c

    ld a, [$a051]
    cp $0c
    ret z

    ld e, $08
    ld bc, $6195
    call Call_000_0c3a
    ld hl, $a003
    ld e, l
    ld b, $06

jr_003_7de8:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_003_7de8

    ld e, $46
    ld a, [de]
    ld l, $39
    ld [hl], a
    ld a, [$db60]
    call Call_000_0663
    ld hl, $dd63
    or [hl]
    ld [hl], a
    ld h, d
    jp Jump_000_0bba


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

    ld h, d
    ld l, $04
    ld e, $39
    call Call_003_7e1a
    inc l

Call_003_7e1a:
jr_003_7e1a:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ret


    ld h, d
    ld l, $39
    ld e, $04

jr_003_7e26:
    call Call_003_7e1a
    inc e
    jr jr_003_7e1a

    ld h, d
    ld l, $39
    ld e, $04
    jr jr_003_7e1a

    ld h, $7e
    inc e
    jr jr_003_7e26

    ld h, d
    ld l, $39
    ld e, $04
    jr jr_003_7e26

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
    jr nz, jr_003_7ebc

jr_003_7ebc:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    nop
    nop
