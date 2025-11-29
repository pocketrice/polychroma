; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    rst $38

    db $02

    nop
    nop
    nop

    db $ae, $42, $05, $00, $00

    nop
    xor [hl]
    ld b, d
    dec b
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld c, [hl]
    ld b, e
    dec b
    nop
    nop
    nop
    ld c, [hl]
    ld b, e
    dec b

    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $f9, $0a, $f9, $06, $f4, $ff, $ac, $00, $24, $00, $44, $00, $64, $00, $28, $00
    db $48, $00, $68, $00, $1c, $84

    add h

    db $1c

    ldh [$ffc0], a
    db $fe

    db $40, $60

    ld h, b
    ld b, b

    db $00, $fd, $18, $10, $00, $01, $80, $fe, $18, $02

    inc bc

    db $00, $02

    db $01

    db $00, $18

    adc b
    add h
    ld [hl], b
    inc e
    jr nc, jr_005_4072

    inc b
    inc bc
    inc bc
    inc b
    dec b

jr_005_4072:
    ld bc, $0403

    db $04, $03, $01

    ld [bc], a
    ld bc, $0303
    db $01
    ld [bc], a

    db $80, $ff, $e0, $c0, $00, $20, $fd, $14, $3c

    add b
    nop
    ld h, b
    db $fc
    inc d
    ld b, h

    db $00, $01, $20, $fe, $10, $3c, $c0, $00, $78, $fe, $14, $37

    add b
    nop
    ld b, b
    cp $18
    inc a

    db $17, $72, $1e, $0f, $44, $ff, $0d, $5f, $22, $0d, $72, $22, $0d, $0f, $20, $08
    db $0b, $2d, $0d, $ff, $47, $0d, $23, $48, $0d, $5c, $49, $28, $13, $20, $f6, $40
    db $13, $60, $38, $41, $13, $90, $c6, $41, $06, $5c, $42, $08, $00, $00, $26, $40
    db $02, $0d, $32, $10, $d0, $0f, $26, $10, $03, $c6, $44, $45, $19, $04, $0a, $19
    db $05, $06, $19, $04, $10, $19, $05, $08, $19, $04, $10, $0c, $0d, $ff, $47, $0d
    db $23, $48, $05, $20, $06, $b7, $40, $0d, $ba, $22, $33, $06, $0d, $ba, $22, $33
    db $0a, $0f, $39, $60, $0b, $ca, $40, $26, $00, $01, $03, $ed, $44, $45, $0d, $4b
    db $48, $19, $00, $08, $19, $01, $08, $19, $02, $08, $06, $10, $41

    dec c
    ld e, [hl]
    ld hl, $4050
    ld bc, $0303
    scf
    ld b, l
    ld b, l
    nop

    db $03, $25, $45, $45, $19, $00, $08, $19, $01, $08, $19, $02, $08, $06, $2c, $41
    db $0d, $ba, $22, $33, $06, $0d, $ba, $22, $33, $0a, $0b, $ca, $40, $0d, $67, $48
    db $03, $6e, $45, $45, $26, $00, $01, $19, $00, $08, $19, $01, $08, $19, $02, $08
    db $06, $4f, $41, $03, $91, $45, $45, $0d, $32, $10, $f8, $01, $05, $09, $04, $24
    db $23, $0d, $ba, $22, $33, $00, $05, $03, $0a, $19, $04, $10, $09, $02, $19, $04
    db $08, $19, $05, $08, $0a, $0d, $85, $48, $0e, $04, $8b, $41

    adc e
    ld b, c

    db $b1, $41

    or c
    ld b, c
    db $16

    db $24, $17, $26, $80, $00, $0d, $ca, $20, $57, $40, $03, $b9, $45, $45, $19, $04
    db $10, $19, $00, $08, $01, $01, $00, $08, $00, $00, $0d, $5e, $21, $5a, $40, $03
    db $11, $46, $45, $01, $02, $00, $26, $80, $00, $0d, $ca, $20, $5d, $40, $03, $4b
    db $46, $45, $19, $04, $10, $19, $00, $08, $01, $01, $00, $0d, $b8, $48, $0d, $ba
    db $22, $33, $0b, $0b, $ca, $40, $26, $00, $01, $28, $14, $40, $ec, $41

    dec c
    add sp, $48
    inc bc
    ld c, a
    ld b, a
    ld b, l
    add hl, de
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$e006], sp
    ld b, c

    db $0d, $d6, $48, $03, $0a, $47, $45, $19, $00, $08, $19, $01, $08, $19, $02, $08
    db $06, $f3, $41, $18, $29, $00, $03, $3a, $47, $45, $19, $05, $20, $09, $04, $26
    db $80, $ff, $0d, $32, $10, $40, $19, $02, $04, $0d, $32, $10, $c0, $19, $05, $04
    db $0a, $03, $b7, $44, $45, $19, $05, $08, $24, $5c, $0d, $1e, $49, $0d, $3e, $49
    db $0d, $51, $49, $19, $04, $08, $19, $05, $08, $0d, $3e, $49, $0d, $51, $49, $19
    db $04, $08, $19, $05, $08, $0d, $3e, $49, $0d, $51, $49, $19, $04, $20, $26, $00
    db $01, $06, $28, $41

    dec c
    ld e, [hl]
    ld hl, $4050
    ld bc, $0303
    ld a, a
    ld b, a
    ld b, l
    nop

    db $0d, $5c, $49, $28, $13, $50, $85, $42, $13, $a0

    ld [hl], e
    ld b, d

    db $09, $03, $0d, $ba, $22, $33, $08, $0a, $06, $95, $42

    dec c
    cp d
    ld [hl+], a
    inc sp
    rlca
    jr z, @+$16

    ld h, b
    adc a
    ld b, d
    dec c
    cp d
    ld [hl+], a
    inc sp
    rlca
    ld b, $8f
    ld b, d

    db $0d, $ba, $22, $33, $06, $0d, $e6, $22, $33, $09, $0f, $39, $40, $06, $03, $41
    db $03, $b5, $47, $45, $00, $0f, $41, $01, $1c, $f6, $7c, $04, $09, $06, $19, $06
    db $02, $19, $07, $02, $0a, $0f, $41, $00, $00, $0d, $b9, $42, $1c, $85, $47, $03
    db $0d, $67, $23, $16

    ld hl, $4ce4
    ld a, $03
    call Call_000_05cf
    ret


    db $17, $ff, $0d, $0f, $61, $00, $0d, $0f, $20, $08, $08, $00, $0f, $4c, $01, $04
    db $0e, $7a, $0c, $0d, $f9, $1f, $10, $5b, $0e, $0c, $f5, $42, $1d, $43

    dec e
    ld b, e

    db $1d, $43, $1d, $43

    dec e
    ld b, e

    db $89, $43

    xor a
    ld b, e

    db $ba, $43, $72, $44, $c3, $43, $38, $44

    db $16

    db $0d, $d1, $1f, $f6, $08, $03, $cd, $47, $45, $04, $52, $6f, $0b, $0f, $46, $00
    db $26, $80, $ff, $0d, $32, $10, $e0, $0d, $ca, $20, $7e, $40, $19, $05, $04, $19
    db $04, $02, $0f, $47, $10, $05, $02, $16, $01, $0c, $0d, $d1, $1f, $08, $04, $0f
    db $60, $08, $0d, $03, $49, $03, $d6, $47, $45, $00, $24, $22, $18, $03, $f0, $47
    db $45, $19, $0e, $02, $19, $0c, $02, $19, $0d, $02, $19, $0c, $02, $19, $0e, $02
    db $19, $0c, $02, $19, $0d, $02, $19, $0c, $02, $03, $83, $43, $45, $0f, $47, $10
    db $0d, $0f, $20, $0c, $0c, $bf, $0f, $4c, $00, $04, $83, $77, $0b, $0f, $46, $00
    db $24, $11, $09, $04, $19, $00, $02, $19, $01, $02, $19, $02, $02, $19, $03, $02
    db $19, $04, $02, $19, $05, $02, $19, $06, $02, $19, $07, $02, $0a, $16

    ld bc, $402a
    jp Jump_000_255b


    db $05, $44, $0d, $d1, $1f, $00, $04, $0f, $4b, $00, $0f, $4a, $10, $0d, $d4, $49
    db $03, $f6, $47, $45, $26, $00, $01, $19, $09, $06, $19, $0a, $06, $26, $e0, $00
    db $19, $0b, $06, $06, $9d, $43

    dec b
    ld l, $0d
    ld l, b
    ld c, c
    dec c
    ld a, a
    ld c, c
    ld b, $90
    ld b, e

    db $0d, $ff, $47, $0d, $c2, $49, $06, $90, $43, $28, $14, $20, $c9, $43, $16, $13
    db $40

    ret nc

    ld b, e

    db $1f, $3e, $44, $0f, $4b, $00, $0f, $4a, $10, $0d, $68, $49, $0d, $7f, $49, $0d
    db $d4, $49, $03, $f6, $47, $45, $28, $13, $40

    ld h, $44

    db $13, $80, $14, $44, $13, $c0, $02, $44, $26, $40, $01, $19, $09, $06, $19, $0a
    db $06, $26, $00, $01, $19, $0b, $04, $06, $f0, $43, $26, $c0, $00, $19, $09, $08
    db $19, $0a, $08, $26, $a0, $00, $19, $0b, $08, $06, $02, $44, $26, $e0, $00, $19
    db $09, $06, $19, $0a, $06, $26, $c0, $00, $19, $0b, $06, $06, $14, $44

    ld h, $00
    ld bc, $0919
    ld b, $19
    ld a, [bc]
    ld b, $26
    ldh [rP1], a
    add hl, de
    dec bc
    ld b, $06
    ld h, $44

    db $1f, $5c, $44, $06, $d0, $43

    ld hl, $4458
    ld e, $27
    ld a, [de]
    cp $70
    jr c, jr_005_4453

    inc hl
    cp $a0
    jr c, jr_005_4453

    inc hl
    cp $d0
    jr c, jr_005_4453

    inc hl

jr_005_4453:
    ld a, [hl]
    ld e, $24
    ld [de], a
    ret


    db $20

    db $30

    db $38

    ld c, b

    call Call_000_0647
    and $03
    ld hl, $446e
    add l
    ld l, a
    jr nc, jr_005_4469

    inc h

jr_005_4469:
    ld a, [hl]
    ld e, $24
    ld [de], a
    ret


    ld h, b

    db $80

    and b
    ret nz

    db $0f, $60, $08, $0d, $68, $49, $0d, $7f, $49, $08, $00, $fe, $2a, $20, $26, $20
    db $01, $03, $ab, $44, $45, $19, $0c, $20, $08, $00, $fe, $2a, $20, $26, $20, $01
    db $05, $20, $08, $00, $ff, $2a, $10, $26, $80, $00, $05, $20, $08, $80, $ff, $2a
    db $08, $26, $40, $00, $05, $20, $06, $4e, $43

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $400e
    jp Jump_000_255b


    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_44e5

    ld l, $26
    ld h, d
    dec [hl]
    ret nz

    ld h, d
    ld l, $1f
    ld [hl], $45
    inc l
    ld [hl], $44
    inc l
    ld [hl], $b7
    ret


jr_005_44e5:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_451d

    ld e, $04
    ld a, [de]
    ld l, $3f
    ld h, d
    cp [hl]
    ret nz

    call Call_000_0647
    ld h, d
    ld l, $39
    cp [hl]
    jr c, jr_005_4515

    ld h, d
    ld l, $1f
    ld [hl], $45
    inc l
    ld [hl], $45
    inc l
    ld [hl], $25
    ret


jr_005_4515:
    ld e, $05
    ld bc, $411c
    jp Jump_000_0846


jr_005_451d:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_4566

    call Call_000_1ee6
    call Call_000_0da4
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr z, jr_005_455f

    ld a, [hl-]
    ld b, a
    ld a, [hl]
    ld l, $3b
    cp [hl]
    ret nz

    inc l
    ld a, b
    cp [hl]
    ret nz

    ld e, $05
    ld bc, $4128
    jp Jump_000_0846


jr_005_455f:
    ld e, $45
    ld a, [de]
    xor $80
    ld [de], a
    ret


jr_005_4566:
    ld e, $05

Jump_005_4568:
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_4589

    ld e, $04
    ld a, [de]
    ld l, $3f
    ld h, d
    cp [hl]
    ret nz

    ld e, $05
    ld bc, $415b
    jp Jump_000_0846


jr_005_4589:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_45b1

    call Call_000_1ee6
    call Call_000_0da4
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ret nz

    ld h, d
    ld l, $1f
    ld [hl], $45
    inc l
    ld [hl], $44
    inc l
    ld [hl], $b7
    ret


jr_005_45b1:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_4609

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4038
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $27
    ld a, [de]
    or a
    jr z, jr_005_45ed

    xor a
    ld [de], a
    ld e, $05
    ld bc, $418b
    jp Jump_000_0846


jr_005_45ed:
    call Call_000_0647
    cp $40
    jr nc, jr_005_4601

    ld a, $02
    ld e, $27
    ld [de], a
    ld e, $05
    ld bc, $41b1
    jp Jump_000_0846


jr_005_4601:
    ld e, $05
    ld bc, $41a2
    jp Jump_000_0846


jr_005_4609:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_4643

    ld e, $3b
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, $45
    ld a, [de]
    rlca
    ld e, $0d
    ld a, [de]
    jr c, jr_005_463c

    sub c
    inc e
    ld a, [de]
    sbc b
    ret c

jr_005_4634:
    ld e, $05
    ld bc, $4128
    jp Jump_000_0846


jr_005_463c:
    sub c
    inc e
    ld a, [de]
    sbc b
    ret nc

    jr jr_005_4634

jr_005_4643:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_466f

    call Call_000_1ed3
    call Call_000_0da4
    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    ret nz

    ld l, $26
    ld [hl], $14
    ld h, d
    ld l, $1f
    ld [hl], $45
    inc l
    ld [hl], $46
    inc l
    ld [hl], $77
    ret


jr_005_466f:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_46a9

    call Call_000_1ed3
    call Call_000_0da4
    ld e, $07
    ld a, [de]
    ld hl, $db53
    sub [hl]
    cp $64
    jr nc, jr_005_46a1

    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld h, d
    ld l, $1f
    ld [hl], $45
    inc l
    ld [hl], $46
    inc l
    ld [hl], $b1
    ret


jr_005_46a1:
    ld e, $05
    ld bc, $41a2
    jp Jump_000_0846


jr_005_46a9:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_4702

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4038
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $27
    ld a, [de]
    sub $02
    jr z, jr_005_46e7

    ld a, $02
    ld [de], a
    ld e, $05
    ld bc, $41b1
    jp Jump_000_0846


jr_005_46e7:
    call Call_000_0647
    cp $40
    jr nc, jr_005_46fa

    xor a
    ld e, $27
    ld [de], a
    ld e, $05
    ld bc, $418b
    jp Jump_000_0846


jr_005_46fa:
    ld e, $05
    ld bc, $41a2
    jp Jump_000_0846


jr_005_4702:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_4732

    ld l, $3a
    ld h, d
    ld e, $45
    ld a, [de]
    rlca
    ld e, $04
    ld a, [de]
    jr c, jr_005_472e

    cp $b4
    ret nc

    cp [hl]
    ret c

jr_005_4726:
    ld e, $05
    ld bc, $41ff
    jp Jump_000_0846


jr_005_472e:
    cp [hl]
    ret nc

    jr jr_005_4726

jr_005_4732:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_4777

    ld l, $3f
    ld h, d
    ld e, $45
    ld a, [de]
    rlca
    ld e, $04
    ld a, [de]
    jr c, jr_005_4773

    cp $b4
    ret nc

    cp [hl]
    ret c

jr_005_476b:
    ld e, $05
    ld bc, $4250
    jp Jump_000_0846


jr_005_4773:
    cp [hl]
    ret nc

    jr jr_005_476b

jr_005_4777:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld bc, $4000
    call Call_000_233c
    jr c, jr_005_47ad

    call Call_000_1ee6
    call Call_000_0da4
    ld h, d
    ld l, $0d
    ld a, [hl+]
    ld c, a
    or [hl]
    jr z, jr_005_47a6

    ld e, $3b
    ld a, [de]
    cp c
    ret nz

    inc e
    ld a, [de]
    cp [hl]
    ret nz

    ld e, $05
    ld bc, $41ef
    jp Jump_000_0846


jr_005_47a6:
    ld e, $45
    ld a, [de]
    xor $80
    ld [de], a
    ret


jr_005_47ad:
    ld e, $05
    ld bc, $429a
    jp Jump_000_0846


    ld e, $03
    ld c, $00
    ld hl, $dd04

jr_005_47bc:
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    cp $ff
    ret nz

    dec e
    jr nz, jr_005_47bc

    ld e, $05
    ld bc, $40eb
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_1ed3
    jp Jump_000_0da4


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $400e
    call Call_000_255b
    ret c

    ld l, $26
    ld h, d
    dec [hl]
    ret nz

    ld e, $05
    ld bc, $432f
    jp Jump_000_0846


    ld bc, $400e
    jp Jump_000_255b


    call Call_000_0da4
    ld bc, $401c
    jp Jump_000_255b


    call Call_000_0647
    ld hl, $403c
    cp $80
    jr c, jr_005_480f

    ld a, $c0
    inc hl
    inc hl
    jr jr_005_4811

jr_005_480f:
    ld a, $40

jr_005_4811:
    ld e, $45
    ld [de], a

Jump_005_4814:
    ld e, $04
    ld a, [$db51]
    add [hl]
    inc hl
    ld [de], a
    inc e
    ld a, [$db52]
    adc [hl]
    ld [de], a
    ret


    call Call_000_0647
    ld l, $00

jr_005_4828:
    sub $56
    jr c, jr_005_482f

    inc l
    jr jr_005_4828

jr_005_482f:
    ld a, l
    ld e, $40
    ld [de], a
    rlca
    ld hl, $4040
    add l
    ld l, a
    jr nc, jr_005_483c

    inc h

Jump_005_483c:
jr_005_483c:
    ld e, $07
    ld a, [$db53]
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [$db54]
    adc [hl]
    ld [de], a
    ret


    call Call_000_0647
    and $03
    ld hl, $404c
    or a
    jr z, jr_005_4857

    inc hl

jr_005_4857:
    ld e, $45
    ld a, [de]
    rlca
    jr nc, jr_005_485f

    inc hl
    inc hl

jr_005_485f:
    ld e, $3f
    ld a, [$db51]
    add [hl]
    ld [de], a
    ret


    call Call_000_0647
    and $01
    ld l, a
    ld e, $45
    ld a, [de]
    and $80
    rlca
    rlca
    add l
    ld hl, $4053
    add l
    ld l, a
    jr nc, jr_005_487d

    inc h

jr_005_487d:
    ld e, $3f
    ld a, [$db51]
    add [hl]
    ld [de], a
    ret


    push bc
    ld e, $40
    ld a, [de]
    rlca
    ld c, a
    call Call_000_0647
    and $07
    ld b, a
    ld h, $a0
    ld l, $07
    ld a, [hl]
    ld hl, $db53
    sub [hl]
    cp $44
    jr c, jr_005_48a6

    ld a, b
    cp $06
    jr nc, jr_005_48ac

    inc c
    jr jr_005_48ac

jr_005_48a6:
    ld a, b
    cp $06
    jr c, jr_005_48ac

    inc c

jr_005_48ac:
    ld hl, $4060
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld e, $27
    ld [de], a
    pop bc
    ret


    ld h, $a0
    ld l, $04
    ld a, [hl]
    ld hl, $db51
    sub [hl]
    cp $50
    ld e, $45
    ld hl, $403c
    jr c, jr_005_48ce

    ld a, $40
    jr jr_005_48d2

jr_005_48ce:
    ld a, $c0
    inc hl
    inc hl

jr_005_48d2:
    ld [de], a
    jp Jump_005_4814


    ld hl, $4066
    ld e, $45
    ld a, [de]
    rlca
    jr nc, jr_005_48e0

    inc hl

jr_005_48e0:
    ld e, $3a
    ld a, [$db51]
    add [hl]
    ld [de], a
    ret


    ld hl, $4068
    ld e, $45
    ld a, [de]
    rlca
    jr nc, jr_005_48f3

    inc hl
    inc hl

jr_005_48f3:
    ld e, $3f
    ld a, [$db51]
    add [hl]
    inc hl
    ld [de], a
    ld e, $3a
    ld a, [$db51]
    add [hl]
    ld [de], a
    ret


    ld e, $5b
    ld a, [de]
    dec a
    rlca
    ld e, a
    rlca
    add e
    ld hl, $4081
    add l
    ld l, a
    jr nc, jr_005_4913

    inc h

jr_005_4913:
    call Call_000_20f9
    call Call_000_20be
    ld e, $26
    ld a, [hl]
    ld [de], a
    ret


    call Call_000_0647
    and $01
    ld l, a
    ld e, $40
    ld a, [de]
    rlca
    ld e, a
    rlca
    add e
    ld e, a
    ld a, l
    rlca
    add l
    add e
    ld hl, $406c
    add l
    jr nc, jr_005_4937

    inc h

jr_005_4937:
    ld e, $3d
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    push bc
    ld e, $27
    ld a, [de]
    ld e, $33
    call Call_000_230f
    pop bc
    ret


    xor a
    ld hl, $dd02
    ld [hl], a
    ld hl, $dd04
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    ld a, [hl]
    cpl
    inc a
    ld e, l
    ld [de], a
    rlca
    ld hl, $403c
    jp nc, Jump_005_4814

    inc hl
    inc hl
    jp Jump_005_4814


    push bc
    ld e, $48
    ld a, [de]
    ld b, a
    ld c, $40
    ld a, [bc]
    ld c, a
    call Call_000_0647
    and $01
    ld e, a
    ld hl, $dd02
    ld a, [hl+]
    or a
    jr z, jr_005_49b5

    add e

jr_005_4996:
    inc a
    cp $03
    jr c, jr_005_499d

    sub $03

jr_005_499d:
    cp c
    jr z, jr_005_4996

    cp [hl]
    jr z, jr_005_4996

jr_005_49a3:
    ld [hl-], a
    inc [hl]
    ld e, $40
    ld [de], a
    rlca
    ld hl, $4046
    add l
    ld l, a
    jr nc, jr_005_49b1

    inc h

jr_005_49b1:
    pop bc
    jp Jump_005_483c


jr_005_49b5:
    ld a, e
    cp c
    jr c, jr_005_49a3

    inc a
    cp $03
    jr c, jr_005_49a3

    sub $03
    jr jr_005_49a3

    ld hl, $dd02
    ld a, [hl]
    inc [hl]
    ld hl, $4046
    rlca
    add l
    ld l, a
    jp nc, Jump_005_483c

    inc h
    jp nc, Jump_005_483c

    ld hl, $dd04

jr_005_49d7:
    ld a, [hl]
    or a
    jr z, jr_005_49de

    inc hl
    jr jr_005_49d7

jr_005_49de:
    ld [hl], d
    ret


    push bc
    ld e, $03
    ld c, $00
    ld hl, $dd04

jr_005_49e8:
    ld a, [hl+]
    cp $a8
    jr c, jr_005_4a02

    ld b, a
    ld a, [bc]
    cp $ff
    jr z, jr_005_4a02

    push bc
    push hl
    push de
    ld h, b
    ld e, $03
    ld bc, $4966
    call Call_000_0849
    pop de
    pop hl
    pop bc

jr_005_4a02:
    dec e
    jr nz, jr_005_49e8

    pop bc
    ret


    db $ff

    ld [bc], a

    db $c0, $4b, $05, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    rst $38

    db $02

    sbc e
    ld c, l
    inc bc

    db $33, $4e, $03

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
    inc sp
    ld c, [hl]
    inc bc
    nop
    nop

jr_005_4a2d:
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $20, $00

    ld b, b
    nop

    db $20, $80, $01, $00, $ff, $20, $80, $01, $30, $80, $01, $90, $ff

    sub b
    rst $38

    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $14, $80, $02

    jr jr_005_4a57

jr_005_4a57:
    inc bc

    db $40, $00

    ld h, b
    nop

    db $40, $00, $01

    add b
    nop
    db $01

    db $00, $ff

    nop
    db $fe

    db $70, $ff

    ld [hl], b
    rst $38

    db $06, $90, $00

    add hl, bc
    sub b
    nop

    db $40, $00

    add b
    nop

    db $2f

    rra

    db $0c, $60, $00

    db $10
    add b
    nop

    db $80, $fd

    nop
    db $fd

    db $14, $80, $02

    jr jr_005_4a85

jr_005_4a85:
    inc bc

    db $80, $00

    ret nz

    nop

    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $14, $80, $02

    jr jr_005_4a9d

jr_005_4a9d:
    inc bc
    jr jr_005_4aa0

jr_005_4aa0:
    ld [bc], a
    jr jr_005_4aa3

jr_005_4aa3:
    ld [bc], a

    db $80, $fe

    add b
    db $fe

    db $18, $80, $02

    jr jr_005_4a2d

    ld [bc], a

    db $c0, $fd, $e0, $fd, $00, $fe, $20, $00, $02, $20, $00, $02, $20, $00, $02, $40
    db $00, $80, $00, $c0, $00, $80, $00, $80, $00, $fe, $80, $00, $fe, $80, $00

    ld b, b
    ld bc, $0000
    ei
    nop

    db $c0, $00, $40, $ff, $fd, $03

    nop
    nop
    ret nz

    cp $00
    dec b
    ld b, b
    rst $38
    ld b, b
    rst $38
    inc bc
    inc bc
    ret nz

    cp $00
    nop
    dec b
    nop
    ld b, b
    rst $38
    ret nz

    nop
    inc bc
    db $fd
    nop
    nop
    ld b, b
    ld bc, $fb00

    db $c0, $00, $c0, $00, $fd, $fd

    add b
    ld bc, $0000
    ld a, [$c000]
    nop
    ld b, b
    rst $38
    db $fd
    inc bc
    nop
    nop
    add b
    cp $00
    ld b, $40
    rst $38
    ld b, b
    rst $38
    inc bc
    inc bc
    add b
    cp $00
    nop
    ld b, $00
    ld b, b
    rst $38
    ret nz

    nop
    inc bc
    db $fd
    nop
    nop
    add b
    ld bc, $fa00
    ret nz

    nop
    ret nz

    nop
    db $fd
    db $fd

    db $17, $ff, $0d, $27, $18, $0d, $80, $1f, $11, $5d, $4b, $0f, $60, $00, $0d, $7c
    db $20, $38, $4a, $0d, $5f, $20, $3a, $4a, $0d, $d3, $20, $31, $4a, $10, $5b, $11
    db $56, $4b, $03, $7e, $4c, $45, $01, $02, $00, $03, $31, $4c, $45, $01, $00, $00
    db $10, $5b, $11, $67, $4b, $01, $03, $06, $69, $4b, $01, $01, $03, $cf, $4b, $45
    db $0d, $5f, $20, $35, $4a, $00, $08, $00, $00, $2a, $00, $27, $06, $38, $4b, $03
    db $7e, $4c, $45, $18, $2a, $00, $05, $14, $0f, $60, $00, $0f, $5b, $01, $27, $06
    db $38, $4b, $0d, $23, $4d, $0f, $60, $08, $0f, $61, $00, $0f, $4c, $01, $0f, $4a
    db $10, $17, $ff, $0d, $04, $0e, $71, $0c, $03, $00, $4c, $45, $08, $80, $fd, $0d
    db $5f, $20, $3d, $4a, $27, $0d, $d3, $20, $40, $4a, $19, $02, $04, $19, $03, $04
    db $06, $b7, $4b, $01, $04, $0d, $50, $0f, $1a, $a8, $b2, $0d, $03, $20, $1b, $9b
    db $4d, $03

    call Call_000_21eb
    call Call_000_0da4
    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_4bfb

    ld bc, $4a07

jr_005_4bde:
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    call nz, Call_000_1ef9
    bit 7, a
    ret z

    ld e, $05
    ld bc, $4b73
    jp Jump_000_0846


jr_005_4bfb:
    ld bc, $4a15
    jr jr_005_4bde

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a23
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 6, a
    jr nz, jr_005_4c2a

    bit 7, a
    ret z

    ld e, $05
    ld bc, $4b7c
    jp Jump_000_0846


jr_005_4c2a:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a07
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    ld h, d
    bit 5, a
    jr nz, jr_005_4c66

    bit 6, a
    jr nz, jr_005_4c55

    bit 7, a
    jr nz, jr_005_4c69

    ret


jr_005_4c55:
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ld h, d
    ld l, $1f
    ld [hl], $45
    inc l
    ld [hl], $4b
    inc l
    ld [hl], $cf
    ret


jr_005_4c66:
    jp Jump_000_1ef9


jr_005_4c69:
    ld e, $3d
    ld l, $0f
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld e, $15
    ld a, [de]
    and a
    jr z, jr_005_4c7b

    dec a
    ld [de], a
    ret


jr_005_4c7b:
    inc a
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a15
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    ld h, d
    bit 5, a
    jr nz, jr_005_4cb3

    bit 6, a
    jr nz, jr_005_4ca2

    bit 7, a
    jr nz, jr_005_4cb6

    ret


jr_005_4ca2:
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ld h, d
    ld l, $1f
    ld [hl], $45
    inc l
    ld [hl], $4b
    inc l
    ld [hl], $cf
    ret


jr_005_4cb3:
    jp Jump_000_1ef9


jr_005_4cb6:
    ld e, $3d
    ld l, $0f
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld e, $15
    ld a, [de]
    cp $02
    jr z, jr_005_4cc9

    dec a
    ld [de], a
    ret


jr_005_4cc9:
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
    add a
    add e
    add l
    jr nc, jr_005_4cdc

    inc h

jr_005_4cdc:
    ld l, a
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld e, $39
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
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
    ld e, a
    add a
    add e
    add l
    jr nc, jr_005_4cf9

    inc h

jr_005_4cf9:
    ld l, a
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld e, $39
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
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
    add a
    add l
    jr nc, jr_005_4d14

    inc h

jr_005_4d14:
    ld l, a
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    ld e, $3d
    ld [de], a
    ld a, [hl]
    inc e
    ld [de], a
    ld e, $10
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $5c
    ld e, l
    ld a, [hl]
    ld [de], a
    ld e, $4a
    ld a, $10
    ld [de], a
    xor a
    inc e
    ld [de], a
    ret


    ld hl, $dd2c
    ld a, [hl]
    bit 2, a
    ret


    db $17, $ff, $0d, $27, $18, $0d, $3e, $50, $12, $c9, $4d, $0d, $80, $1f, $11, $bd
    db $4d, $0f, $3f, $02, $27, $0d, $90, $20, $62, $4a, $0d, $cc, $4c, $5c, $4a, $0d
    db $d3, $20, $58, $4a, $03, $14, $4e, $45, $00, $03, $66, $4e, $45, $18, $29, $00
    db $2a, $00, $10, $5c, $11, $98, $4d

    add hl, de
    inc b
    ld b, $19
    ld b, $06
    add hl, de
    dec b
    inc c
    add hl, de
    ld b, $03
    add hl, de
    dec b
    inc c
    add hl, de
    ld b, $03
    add hl, de
    dec b
    jr @+$1b

    ld bc, $1906
    nop
    ld b, $19
    ld [bc], a
    ld b, $19
    inc bc
    ld b, $0f
    ccf
    db $01
    nop

    db $19, $04, $08, $19, $06, $08, $19, $05, $10, $19, $06, $04, $19, $05, $10, $19
    db $06, $04, $19, $05, $20, $19, $01, $08, $19, $00, $08, $19, $02, $08, $19, $03
    db $08, $0f, $3f, $01, $00, $01, $04, $03, $7c, $4e, $45, $0d, $cc, $4c, $52, $4a
    db $00, $27, $0d, $7c, $20, $66, $4a, $0d, $cc, $4c, $6a, $4a, $0d, $d3, $20, $70
    db $4a, $0f, $40, $00, $03, $ab, $4e, $45, $01, $01, $00

    ld [$0140], sp

    db $0f, $40, $00, $0f, $3f, $08, $03, $19, $4f, $45, $0d, $cc, $4c, $76, $4a, $19
    db $01, $10, $19, $00, $10, $06, $f5, $4d, $27, $0d, $90, $20, $7c, $4a, $0d, $cc
    db $4c, $80, $4a, $0d, $d3, $20, $86, $4a, $03, $ff, $4f, $45, $00

    db $16

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a44
    call Call_000_255b
    ret c

    call Call_005_5050
    call Call_000_1a25
    bit 5, a
    call nz, Call_000_1ef9
    bit 6, a
    jr nz, jr_005_4e3c

    bit 7, a
    jr nz, jr_005_4e43

    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_4e5e

    ret


jr_005_4e3c:
    ld h, d
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_005_4e43:
    ld h, d
    ld e, $3d
    ld l, $0f
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld e, $3f
    ld a, [de]
    and a
    jr z, jr_005_4e56

    dec a
    ld [de], a
    ret


jr_005_4e56:
    ld e, $05
    ld bc, $4d65
    jp Jump_000_0846


jr_005_4e5e:
    ld e, $05
    ld bc, $4dc9
    jp Jump_000_0846


    ld bc, $4a44
    call Call_000_255b
    ret c

    ld e, $3f
    ld a, [de]
    and a
    jr nz, jr_005_4e74

    ret


jr_005_4e74:
    ld e, $05
    ld bc, $4d4d
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a44
    call Call_000_255b
    ret c

    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_4ea3

    call Call_000_1a25
    bit 5, a
    call nz, Call_000_1ef9
    bit 7, a
    ret z

    ld e, $05
    ld bc, $4d4d
    jp Jump_000_0846


jr_005_4ea3:
    ld e, $05
    ld bc, $4dc9
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a44
    call Call_000_255b
    ret c

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_4ec6

    ld b, $30
    ld c, b
    call Call_000_1f14
    jr c, jr_005_4f06

jr_005_4ec6:
    ld e, $5c
    ld a, [de]
    ld hl, $4a74
    add l
    jr nc, jr_005_4ed0

    inc h

jr_005_4ed0:
    ld l, a
    ld e, $40
    ld a, [de]
    inc a
    ld [de], a
    cp [hl]
    call z, Call_005_4ef9
    call Call_005_5061
    call Call_000_1ab3
    jr nz, jr_005_4ef2

    call Call_000_1a25
    bit 5, a
    call nz, Call_000_1ef9
    call Call_000_1a25
    bit 7, a
    jr nz, jr_005_4ef2

    ret


jr_005_4ef2:
    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


Call_005_4ef9:
    xor a
    ld [de], a
    ld h, d
    ld e, $3d
    ld l, $0f
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ret


jr_005_4f06:
    call Call_000_1a25
    xor a
    ld h, d
    ld l, $0d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld e, $05
    ld bc, $4de6
    jp Jump_000_0846


    ld e, $3f
    ld a, [de]
    inc a
    ld [de], a
    cp $09
    jr nz, jr_005_4f69

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
    jr z, jr_005_4f42

    bit 3, b
    jr nz, jr_005_4f3e

    set 0, b

jr_005_4f3e:
    set 3, b
    jr jr_005_4f4a

jr_005_4f42:
    bit 3, b
    jr z, jr_005_4f48

    set 0, b

jr_005_4f48:
    res 3, b

jr_005_4f4a:
    call Call_000_201d
    ld e, $27
    ld a, [de]
    and a
    jr z, jr_005_4f5d

    bit 7, b
    jr nz, jr_005_4f59

    set 4, b

jr_005_4f59:
    set 7, b
    jr jr_005_4f65

jr_005_4f5d:
    bit 7, b
    jr z, jr_005_4f63

    set 4, b

jr_005_4f63:
    res 7, b

jr_005_4f65:
    ld e, $40
    ld a, b
    ld [de], a

jr_005_4f69:
    ld e, $40
    ld a, [de]
    bit 3, a
    jr nz, jr_005_4f84

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_005_4f7a

    ld e, $00

jr_005_4f7a:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0cb4
    jr jr_005_4f96

jr_005_4f84:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_005_4f8e

    ld e, $00

jr_005_4f8e:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0ce5

jr_005_4f96:
    ld e, $40
    ld a, [de]
    bit 7, a
    jr z, jr_005_4fb1

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_005_4fa7

    ld e, $00

jr_005_4fa7:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    jr jr_005_4fc3

jr_005_4fb1:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_005_4fbb

    ld e, $00

jr_005_4fbb:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d66

jr_005_4fc3:
    call Call_000_0da4
    ld bc, $4a44
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 5, a
    call nz, Call_005_4fed
    bit 6, a
    call nz, Call_005_4ff6
    bit 7, a
    call nz, Call_005_4ff6
    call Call_000_1ab3
    jr nz, jr_005_4fe5

    ret


jr_005_4fe5:
    ld e, $05
    ld bc, $4dfe
    jp Jump_000_0846


Call_005_4fed:
    ld b, a
    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld a, b
    ret


Call_005_4ff6:
    ld b, a
    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ld a, b
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a44
    call Call_000_255b
    ret c

    call Call_005_5072
    call Call_000_1a62
    bit 6, a
    jr nz, jr_005_5027

    bit 7, a
    jr nz, jr_005_5036

    bit 5, a
    call nz, Call_000_1ef9
    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_502e

    ret


jr_005_5027:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_502e:
    ld e, $05
    ld bc, $4de3
    jp Jump_000_0846


jr_005_5036:
    ld e, $05
    ld bc, $4d4d
    jp Jump_000_0846


    ld e, $f8
    push bc
    call Call_000_1ac1
    pop bc
    jr z, jr_005_504a

    xor a
    jr jr_005_504c

jr_005_504a:
    ld a, $01

jr_005_504c:
    ld e, $27
    ld [de], a
    ret


Call_005_5050:
    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    jr nz, jr_005_505d

    ld a, $04
    ld [de], a
    ret


jr_005_505d:
    ld a, $03
    ld [de], a
    ret


Call_005_5061:
    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    jr nz, jr_005_506e

    ld a, $00
    ld [de], a
    ret


jr_005_506e:
    ld a, $01
    ld [de], a
    ret


Call_005_5072:
    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    jr nz, jr_005_507f

    ld a, $03
    ld [de], a
    ret


jr_005_507f:
    ld a, $02
    ld [de], a
    ret


    db $17, $ff, $0d, $27, $18, $0d, $3e, $50, $12, $18, $51, $0d, $80, $1f, $11, $e9
    db $50, $18, $03, $96, $51, $45, $01, $00, $10, $5c, $12

    and l
    ld d, b

    db $05, $20, $06, $a7, $50

    dec b
    db $10

    db $0d, $0d, $53, $0e, $02, $c0, $50, $b3, $50, $06, $94, $50, $05, $10, $0d, $25
    db $53, $05, $10, $0d, $25, $53, $06, $94, $50, $10, $5c, $12

    bit 2, b

    db $19, $02, $08, $06, $ce, $50

    add hl, de
    ld [bc], a
    inc b

    db $12

    rst $10
    ld d, b

    db $19, $03, $10, $06, $da, $50

    add hl, de
    inc bc
    db $08

    db $0d, $7c, $20, $a4, $4a, $0d, $cc, $4c, $a8, $4a, $03, $54, $51, $45, $00, $01
    db $00, $03, $c1, $51, $45, $0d, $cc, $4c, $98, $4a, $00, $27, $03, $54, $51, $45
    db $0d, $2c, $53, $0d, $06, $4d, $ae, $4a, $0d, $e9, $4c, $b4, $4a, $0d, $dc, $20
    db $bd, $4a, $00

    ld bc, $2702
    dec c
    sub l
    ld d, e
    inc bc
    di
    ld d, c
    ld b, l
    nop

    db $03, $1d, $52, $45, $27, $18, $19, $02, $08, $19, $03, $10, $01, $01, $0d, $d3
    db $20, $c3, $4a, $0d, $3a, $21, $c7, $4a, $03, $28, $52, $45, $00, $27, $03, $f1
    db $52, $45, $19, $02, $08, $19, $03, $10, $01, $01, $0d, $9c, $53, $03, $72, $52
    db $45, $00

    dec c
    call z, $9e4c
    ld c, d
    inc bc
    ld d, h
    ld d, c
    ld b, l
    nop

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_005_52fc
    call Call_000_1a62
    bit 6, a
    jr nz, jr_005_517f

    bit 7, a
    jr nz, jr_005_518e

    bit 5, a
    jp nz, Jump_000_1ef9

    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_5186

    ret


jr_005_517f:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_5186:
    ld e, $05
    ld bc, $510d
    jp Jump_000_0846


jr_005_518e:
    ld e, $05
    ld bc, $5094
    jp Jump_000_0846


    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    ld b, $38
    ld c, $30
    call Call_000_1f14
    jr c, jr_005_51b1

    call Call_000_1964
    bit 7, a
    jr z, jr_005_51b9

    ret


jr_005_51b1:
    ld e, $05
    ld bc, $50f5
    jp Jump_000_0846


jr_005_51b9:
    ld e, $05
    ld bc, $50e9
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_51eb

    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $5094
    jp Jump_000_0846


jr_005_51eb:
    ld e, $05
    ld bc, $510d
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr nz, jr_005_5215

    ld e, $10
    ld a, [de]
    bit 7, a
    ret z

jr_005_5215:
    ld e, $05
    ld bc, $5118
    jp Jump_000_0846


    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    ret


    call Call_000_0c80
    call Call_000_0da4
    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_1a62
    bit 5, a
    jr nz, jr_005_5269

    bit 7, a
    jr nz, jr_005_5269

    bit 6, a
    jr nz, jr_005_5269

    ld e, $0d
    ld a, [de]
    and a
    ret nz

    inc e
    ld a, [de]
    and a
    ret nz

    ld b, $38
    ld c, $30
    call Call_000_1f14
    jr c, jr_005_5261

    ld e, $05
    ld bc, $5118
    jp Jump_000_0846


jr_005_5261:
    ld e, $05
    ld bc, $5135
    jp Jump_000_0846


jr_005_5269:
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1ef9


    ld e, $11
    ld a, [de]
    call Call_000_0c83
    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_1ab3
    jr nz, jr_005_52de

    call Call_000_1a62
    push af
    bit 5, a
    call nz, Call_005_52c9
    pop af
    bit 7, a
    jr nz, jr_005_52d3

jr_005_529e:
    ld e, $0d
    ld a, [de]
    and a
    ret nz

    inc e
    ld a, [de]
    and a
    ret nz

    ld e, $0f
    ld a, [de]
    and a
    ret nz

    inc e
    ld a, [de]
    and a
    ret nz

    ld b, $38
    ld c, $30
    call Call_000_1f14
    jr c, jr_005_52c1

    ld e, $05
    ld bc, $5118
    jp Jump_000_0846


jr_005_52c1:
    ld e, $05
    ld bc, $5135
    jp Jump_000_0846


Call_005_52c9:
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    call Call_000_1ef9
    ret


jr_005_52d3:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $12
    ld [de], a
    jr jr_005_529e

jr_005_52de:
    ld e, $0f
    ld a, [de]
    sub $80
    ld [de], a
    inc e
    ld a, [de]
    sbc $01
    ld [de], a
    ld e, $05
    ld bc, $514a
    jp Jump_000_0846


    ld bc, $4a8a
    call Call_000_255b
    ret c

    call Call_000_2385
    ret


Call_005_52fc:
    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    jr nz, jr_005_5309

    ld a, $02
    ld [de], a
    ret


jr_005_5309:
    ld a, $01
    ld [de], a
    ret


    call Call_000_0647
    ld e, $27
    cp $40
    jr c, jr_005_531e

    cp $80
    jr c, jr_005_5321

    ld a, $02
    ld [de], a
    ret


jr_005_531e:
    xor a
    ld [de], a
    ret


jr_005_5321:
    ld a, $01
    ld [de], a
    ret


    ld e, $45
    ld a, [de]
    xor $80
    ld [de], a
    ret


    push bc
    push de
    ld e, $04
    ld l, e
    ld h, $a0
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, c
    sub e
    ld a, b
    sbc d
    jr c, jr_005_534d

    ld a, c
    sub e
    cp $10
    jr c, jr_005_5359

    cp $24
    jr c, jr_005_5366

    jr jr_005_5373

jr_005_534d:
    ld a, e
    sub c
    cp $10
    jr c, jr_005_5359

    cp $24
    jr c, jr_005_5366

    jr jr_005_5373

jr_005_5359:
    call Call_000_0647
    cp $a0
    jr c, jr_005_538e

    cp $e0
    jr c, jr_005_5386

    jr jr_005_537e

jr_005_5366:
    call Call_000_0647
    cp $40
    jr c, jr_005_538e

    cp $c0
    jr c, jr_005_5386

    jr jr_005_537e

jr_005_5373:
    call Call_000_0647
    cp $40
    jr c, jr_005_538e

    cp $a0
    jr c, jr_005_5386

jr_005_537e:
    pop de
    ld a, $02
    ld e, $27
    ld [de], a
    pop bc
    ret


jr_005_5386:
    pop de
    ld a, $01
    ld e, $27
    ld [de], a
    pop bc
    ret


jr_005_538e:
    pop de
    xor a
    ld e, $27
    ld [de], a
    pop bc
    ret


    ld e, $12
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    push bc
    call Call_005_53a2
    pop bc
    ret


Call_005_53a2:
    ld h, $a0
    ld e, $0b
    ld l, e
    ld a, [de]
    sub [hl]
    bit 7, a
    ld hl, $ff84
    ld [hl], $00
    jr z, jr_005_53b6

    ld [hl], $01
    cpl
    inc a

jr_005_53b6:
    ld c, a
    ld h, $a0
    ld e, $09
    ld l, e
    ld a, [de]
    sub [hl]
    bit 7, a
    ld hl, $ff84
    jr z, jr_005_53c9

    set 1, [hl]
    cpl
    inc a

jr_005_53c9:
    ld b, a
    ld l, c
    xor a
    sla l
    rla
    sla l
    rla
    ld h, a
    ld c, $00

jr_005_53d5:
    and a
    ld a, l
    sub b
    ld l, a
    jr nc, jr_005_53e1

    ld a, h
    sub $01
    jr c, jr_005_53e9

    ld h, a

jr_005_53e1:
    inc c
    ld a, c
    sub $0c
    jr nz, jr_005_53d5

    jr jr_005_5410

jr_005_53e9:
    ld a, c
    sub $02
    jr nc, jr_005_53f9

    ld hl, $ff84
    bit 1, [hl]
    jr z, jr_005_541b

    ld a, $00
    jr jr_005_5429

jr_005_53f9:
    ld hl, $ff84
    bit 1, [hl]
    jr z, jr_005_5408

    bit 0, [hl]
    jr nz, jr_005_5427

    ld a, $01
    jr jr_005_5429

jr_005_5408:
    bit 0, [hl]
    jr nz, jr_005_541f

    ld a, $03
    jr jr_005_5429

jr_005_5410:
    ld hl, $ff84
    bit 0, [hl]
    jr nz, jr_005_5423

    ld a, $02
    jr jr_005_5429

jr_005_541b:
    ld a, $04
    jr jr_005_5429

jr_005_541f:
    ld a, $05
    jr jr_005_5429

jr_005_5423:
    ld a, $06
    jr jr_005_5429

jr_005_5427:
    ld a, $07

jr_005_5429:
    add a
    ld e, a
    add a
    add e
    ld b, a
    ld e, $5c
    ld a, [de]
    and a
    ld a, b
    jr z, jr_005_5437

    add $30

jr_005_5437:
    ld hl, $4acd
    add l
    jr nc, jr_005_543e

    inc h

jr_005_543e:
    ld l, a
    ld e, $0d
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
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $14, $80, $02

    jr jr_005_5466

jr_005_5466:
    inc bc

    db $40, $00

    ld h, b
    nop

    db $20, $00

    jr nc, @+$02

    db $80, $fe

    ldh a, [$fffd]

    db $08, $80, $01

    dec bc
    db $10
    ld [bc], a

    db $40, $00

    ld h, b
    nop
    ld b, b

jr_005_547e:
    cp $00
    cp $08
    ret nz

    ld bc, $000b
    ld [bc], a
    ld b, b
    nop
    add b
    nop
    jr nz, jr_005_548d

jr_005_548d:
    jr nc, jr_005_548f

jr_005_548f:
    jr nc, jr_005_5491

jr_005_5491:
    ld c, b
    nop
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
    jr nc, jr_005_54a3

jr_005_54a3:
    ld b, b
    nop
    jr nc, jr_005_54a7

jr_005_54a7:
    rst $38
    ld b, b
    nop
    rst $38

    db $ff

    ld [bc], a

    db $4d, $5e, $05, $5c, $5e, $05

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

    db $20, $00

    ld b, b
    nop

    db $00, $ff

    add b
    db $fe

    db $20, $80, $01

    jr nc, @-$7e

    db $01

    db $30, $00

    ld b, b
    nop

    db $80, $fe

    nop
    db $fe

    db $18, $80, $01

    jr nz, jr_005_54e2

jr_005_54e2:
    ld [bc], a
    ret nz

    ld b, b
    nop
    or b
    ld d, b
    nop

    db $04, $80, $00

    inc b
    add b
    nop

    db $40, $00

    ld b, b
    nop

    db $18, $80, $01

    jr nz, jr_005_54f8

jr_005_54f8:
    ld [bc], a

    db $18, $80, $01

    jr jr_005_547e

    ld bc, $02ff
    nop
    nop
    nop

    db $18, $61, $05

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    ld b, b
    ld bc, $01c0
    ret nz

    cp $40
    db $fe

    db $00, $01

    nop
    ld [bc], a

    db $00, $ff

    nop
    db $fe

    db $f0, $00, $01

    ldh [rP1], a
    ld [bc], a

    db $10, $00, $ff

    jr nz, jr_005_5528

jr_005_5528:
    cp $08
    add b
    nop
    inc c
    ret nz

    nop
    rst $38
    ld [bc], a
    adc h
    ld h, h
    dec b
    inc sp
    ld c, [hl]
    inc bc
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
    add b
    db $fd
    add b
    db $fd
    stop
    ld [bc], a
    stop
    ld [bc], a
    nop
    ld bc, $0100

    db $60, $00

    and b
    nop

    db $03

    dec b

    db $40, $00

    ld h, b
    nop

    db $02

    inc bc

    db $80, $fe

    nop
    db $fe

    db $10, $80, $01

    db $10
    add b
    ld bc, $ff00
    nop
    rst $38
    db $10
    add b
    ld bc, $8010
    ld bc, $0080
    add b
    nop

    db $10, $80, $01

    db $10
    add b
    ld bc, $02ff
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
    inc c
    sbc e
    ld c, l
    inc bc
    adc c
    ld l, b
    dec b
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    rst $38
    inc c
    sbc e
    ld c, l
    inc bc
    ld l, c
    ld l, b
    dec b
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    cp $40
    nop
    cp $40
    nop
    ld [bc], a
    ret nz

    rst $38
    ld [bc], a
    ret nz

    rst $38
    db $10
    ret nz

    nop
    stop
    ld bc, $2010

    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    ld b, b
    nop

jr_005_55d9:
    ld b, b
    nop
    jr nc, jr_005_55dd

jr_005_55dd:
    jr nc, @+$02

    db $10, $00, $02

    stop
    ld [bc], a

    db $ff

    ld [bc], a

    db $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $f8, $09, $f8, $08, $10, $00, $02

    db $10
    ld b, b
    ld [bc], a

    db $10, $00, $02

    stop
    ld [bc], a

    db $40, $00, $60, $00, $00, $fe, $00, $fe, $10, $80, $02

    db $10
    add b
    ld [bc], a
    ld d, b
    nop

    db $70, $00

    add b
    db $fd

    db $80, $fd

    nop
    rst $38

    db $00, $ff, $ff, $02, $9b, $4d, $03, $33, $4e, $03

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

    db $f8, $15, $f8, $08

    push af
    rlca
    ld hl, sp+$08

    db $10, $00, $02

    stop
    ld [bc], a

    db $40, $00, $60, $00, $30, $00

    ld b, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_005_55d9

    ld bc, $8020
    ld bc, $0080
    add b
    nop
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @-$7e

    ld bc, $8020
    db $01

    db $80, $ff, $80, $ff, $08, $80, $01

    ld [$0180], sp

    db $80, $fe

    add b
    db $fe

    db $0c, $80, $01

    inc c
    add b
    ld bc, $02ff
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
    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld bc, $057a
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    add b
    ld bc, $0010
    ld [bc], a
    jr nc, jr_005_56b1

jr_005_56b1:
    ld d, b
    nop
    jr nz, jr_005_56b5

jr_005_56b5:
    jr c, jr_005_56b7

jr_005_56b7:
    ld d, b
    nop
    ld [hl], b
    nop
    jr c, jr_005_56bd

jr_005_56bd:
    ld d, b
    nop
    add b
    nop
    ret nz

    nop
    ld d, b
    nop
    and b
    nop
    ret nz

    nop
    nop
    ld bc, $0080
    ret nz

    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld b, b
    nop
    cp $80
    db $fd
    nop
    cp $80
    db $fd
    nop
    inc bc
    add b
    inc bc
    add sp, -$1c
    nop
    ld bc, $0120
    stop
    ld [bc], a
    inc d
    add b
    ld [bc], a
    nop
    cp $80
    db $fd
    ret nz

    nop
    ldh [rP1], a
    stop
    ld [bc], a
    inc d
    add b
    ld [bc], a
    nop
    rst $38
    ret nz

    cp $c0
    ld bc, $0200
    db $e4
    ldh [rP1], a
    ld bc, $0100
    nop
    inc bc
    add b
    inc bc
    add sp, -$1c
    nop
    inc bc
    add b
    inc bc
    and b
    sub b
    add b
    ld [bc], a
    ret nz

    ld [bc], a
    ret c

    call nc, $c0d4
    ld [bc], a
    call nc, $02c0
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    ret nz

    ld bc, $0200
    db $e4
    ldh [$ffd4], a
    ret nz

    ld [bc], a
    call nc, $02c0
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    inc e
    add b
    inc bc
    ld e, $c0
    inc bc
    add b
    db $fc
    ld b, b
    db $fc
    add b
    inc bc
    ret nz

    inc bc

    db $17, $ff, $0d, $27, $18, $0d, $3e, $50, $12, $fb, $57, $0d, $80, $1f, $11, $9f
    db $57, $10, $5b, $12

    add h
    ld d, a

    db $0f, $40, $60, $03, $e7, $58, $45, $27, $0d, $d3, $20, $67, $54, $19, $02, $10
    db $0d, $d3, $20, $6b, $54, $19, $03, $10, $06, $70, $57

    rrca
    ld b, b
    jr nz, jr_005_578b

    inc sp
    ld e, c
    ld b, l

jr_005_578b:
    daa
    dec c
    db $d3
    jr nz, @+$69

    ld d, h
    add hl, de
    ld [bc], a
    db $10
    dec c
    db $d3
    jr nz, @+$6d

    ld d, h
    add hl, de
    inc bc
    db $10
    ld b, $8b
    ld d, a

    db $01, $00, $03, $7f, $59, $45, $0d, $cc, $4c, $61, $54, $00, $27, $19, $01, $08
    db $03, $b7, $59, $45, $0d, $90, $20, $6f, $54, $0d, $5f, $20, $73, $54, $0d, $d3
    db $20, $79, $54, $01, $00, $00

    daa
    jr @+$1b

    ld bc, $0308
    di
    ld e, c
    ld b, l
    dec c
    sub b
    jr nz, jr_005_584f

    ld d, h
    dec c

jr_005_57d4:
    ld e, a
    jr nz, @-$7d

    ld d, h
    dec c
    db $d3
    jr nz, @-$77

    ld d, h
    ld bc, $0000

    db $18, $29, $00, $2a, $00, $0d, $81, $5b, $12, $ab, $57

    add hl, de
    ld bc, $0608
    ld h, h
    ld d, a

    db $2a, $f0, $07, $00, $00, $03, $27, $5a, $45, $00, $07, $00, $00, $10, $5b, $12

    inc hl
    ld e, b

    db $03, $5d, $5a, $45, $08, $40, $ff, $2a, $0c, $19, $00, $10, $19, $01, $04, $08
    db $00, $00, $2a, $00, $05, $06, $10, $5c, $12

    rlca
    ld e, b

    db $05, $06, $06, $07, $58

    inc bc
    ld e, l
    ld e, d
    ld b, l
    ld [$ff00], sp
    ld a, [hl+]
    ld [$0019], sp
    jr nz, jr_005_5849

    ld bc, $0808
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    jr jr_005_5840

    daa
    ld e, b
    inc bc
    sbc b
    ld e, d
    ld b, l

jr_005_5840:
    db $10
    ld e, e
    ld [de], a
    ld c, l
    ld e, b
    dec c
    db $d3
    jr nz, jr_005_57d4

jr_005_5849:
    ld d, h
    ld b, $52
    ld e, b
    dec c
    db $d3

jr_005_584f:
    jr nz, @-$6f

    ld d, h
    ld [$0000], sp
    ld a, [hl+]
    ld [$0119], sp
    inc b
    ld [de], a
    ld h, e
    ld e, b
    add hl, de
    inc bc
    inc c
    ld b, $66
    ld e, b
    add hl, de
    inc bc
    inc e
    ld bc, $0300
    cp e
    ld e, d
    ld b, l
    dec c
    add hl, sp
    ld e, e
    ld c, $04
    ld a, c
    ld e, b
    adc b
    ld e, b
    sub a
    ld e, b
    and [hl]
    ld e, b
    db $10
    ld e, e
    ld [de], a
    add e
    ld e, b
    dec b
    jr jr_005_5887

    or l
    ld e, b
    dec b
    db $10
    ld b, $b5

jr_005_5887:
    ld e, b
    db $10
    ld e, e
    ld [de], a
    sub d
    ld e, b
    dec b
    jr nz, jr_005_5896

    or l
    ld e, b
    dec b
    jr jr_005_589b

    or l

jr_005_5896:
    ld e, b
    db $10
    ld e, e
    ld [de], a
    and c

jr_005_589b:
    ld e, b
    dec b
    jr z, jr_005_58a5

    or l
    ld e, b
    dec b
    jr nz, jr_005_58aa

    or l

jr_005_58a5:
    ld e, b
    db $10
    ld e, e
    ld [de], a
    or b

jr_005_58aa:
    ld e, b
    dec b
    jr nc, jr_005_58b4

    or l
    ld e, b
    dec b
    jr z, jr_005_58b9

    or l

jr_005_58b4:
    ld e, b
    inc bc
    ret c

    ld e, d
    ld b, l

jr_005_58b9:
    ld a, [hl+]
    ld hl, sp+$10
    ld e, e
    ld [de], a
    push bc
    ld e, b
    dec b
    inc e
    ld b, $fb
    ld d, a
    dec b
    inc a
    ld b, $fb
    ld d, a
    inc bc
    rlca
    ld e, e
    ld b, l
    jr jr_005_58f9

    nop
    ld a, [hl+]
    nop
    add hl, de
    ld bc, $0108
    nop
    db $10
    ld e, h
    ld [de], a
    db $e3
    ld e, b
    dec b
    ld [$c008], sp
    db $fd
    nop
    ld [$fd80], sp
    nop

    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    ld e, $40
    ld a, [de]
    dec a
    and a
    ld [de], a
    jr nz, jr_005_5903

jr_005_58f9:
    ld a, $60
    ld [de], a
    ld b, $10
    call Call_005_5b11
    jr nc, jr_005_592b

jr_005_5903:
    call Call_000_19f3
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_005_5923

    bit 4, a
    jr nz, jr_005_592b

    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_591b

    ret


jr_005_591b:
    ld e, $05
    ld bc, $57f1
    jp Jump_000_0846


jr_005_5923:
    ld e, $05
    ld bc, $579f
    jp Jump_000_0846


jr_005_592b:
    ld e, $05
    ld bc, $57ab
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    ld e, $40
    ld a, [de]
    dec a
    and a
    ld [de], a
    jr nz, jr_005_594f

    ld a, $20
    ld [de], a
    ld b, $30
    call Call_005_5b4c
    jr c, jr_005_5977

jr_005_594f:
    call Call_000_19f3
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_005_596f

    bit 4, a
    jr nz, jr_005_5977

    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_5967

    ret


jr_005_5967:
    ld e, $05
    ld bc, $57f1
    jp Jump_000_0846


jr_005_596f:
    ld e, $05
    ld bc, $579f
    jp Jump_000_0846


jr_005_5977:
    ld e, $05
    ld bc, $57ab
    jp Jump_000_0846


    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_59af

    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $5764
    jp Jump_000_0846


jr_005_59af:
    ld e, $05
    ld bc, $57f1
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_59dc

    bit 7, a
    jr nz, jr_005_59eb

    bit 5, a
    call nz, Call_000_1ef9
    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_59e3

    ret


jr_005_59dc:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_59e3:
    ld e, $05
    ld bc, $57f1
    jp Jump_000_0846


jr_005_59eb:
    ld e, $05
    ld bc, $57e0
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_5a18

    bit 7, a
    jr nz, jr_005_5a1f

    bit 5, a
    jp nz, Jump_000_1ef9

    ld e, $f8
    call Call_000_1ac1
    jr z, jr_005_5a1f

    ret


jr_005_5a18:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_5a1f:
    ld e, $05
    ld bc, $58ca
    jp Jump_000_0846


    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    ld e, $f8
    call Call_000_1ac1
    jr nz, jr_005_5a55

    call Call_000_1a25
    bit 7, a
    jr nz, jr_005_5a4d

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_005_5a4d

    ret


jr_005_5a4d:
    ld e, $05
    ld bc, $57fb
    jp Jump_000_0846


jr_005_5a55:
    ld e, $05
    ld bc, $57ab
    jp Jump_000_0846


    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    ld e, $00
    call Call_000_1ac1
    jr nz, jr_005_5a82

    call Call_000_1a25
    bit 6, a
    ret z

    ld e, $05
    ld bc, $583c
    jp Jump_000_0846


jr_005_5a82:
    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_5a90

    ld e, $05
    ld bc, $57ab
    jp Jump_000_0846


jr_005_5a90:
    ld e, $05
    ld bc, $57c5
    jp Jump_000_0846


    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $57fb
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $57fb
    jp Jump_000_0846


    ld e, $12
    ld a, [de]
    call Call_000_0c94
    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_5aff

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $57fb
    jp Jump_000_0846


jr_005_5aff:
    ld e, $05
    ld bc, $583c
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $5453
    call Call_000_255b
    ret


Call_005_5b11:
    push de
    push bc
    ld e, $07
    ld l, e
    ld h, $a0
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, c
    sub e
    ld a, b
    sbc d
    jr c, jr_005_5b36

    ld a, c
    sub e
    ld c, a
    ld a, b
    cp d
    jr z, jr_005_5b31

    ld a, $ff
    add c
    ld c, a

jr_005_5b31:
    ld a, c
    pop bc
    pop de
    cp b
    ret


jr_005_5b36:
    pop bc
    pop de
    ret


    push de
    push bc
    call Call_000_0647
    pop bc
    ld e, a
    xor a
    rl e
    rla
    rl e
    rla
    pop de
    ld e, $27
    ld [de], a
    ret


Call_005_5b4c:
    push de
    push bc
    ld e, $04
    ld l, e
    ld h, $a0
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, c
    sub e
    ld a, b
    sbc d
    jr c, jr_005_5b71

    ld a, c
    sub e
    ld c, a
    ld a, b
    cp d
    jr z, jr_005_5b6c

    ld a, $ff
    add c
    ld c, a

jr_005_5b6c:
    ld a, c
    pop bc
    pop de
    cp b
    ret


jr_005_5b71:
    ld a, e
    sub c
    ld e, a
    ld a, b
    cp d
    jr z, jr_005_5b7c

    ld a, $ff
    add e
    ld e, a

jr_005_5b7c:
    ld a, e
    pop bc
    pop de
    cp b
    ret


    call Call_000_2235
    ld e, $27
    ld [de], a
    ret


    rla
    rst $38
    dec c
    daa
    jr jr_005_5b9b

    ld a, $50
    ld [de], a
    inc d
    ld e, h
    rrca
    ld h, b
    ld [$ff01], sp
    inc bc
    ld [hl], $5c

jr_005_5b9b:
    ld b, l
    nop
    daa
    inc bc
    ld b, h
    ld e, h
    ld b, l
    add hl, bc
    inc bc
    add hl, de
    nop
    ld [bc], a
    add hl, de
    rst $38
    ld [bc], a
    ld a, [bc]
    db $10
    ld e, h
    ld [de], a
    cp h
    ld e, e
    add hl, de
    nop
    ld [bc], a
    add hl, de
    rst $38
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    add hl, de
    rst $38
    ld [bc], a
    inc bc
    ld b, l
    ld e, h
    ld b, l
    rrca
    ld b, b
    nop
    dec c
    dec e
    jr nz, jr_005_5bd8

    rst $08
    ld e, e
    ld [$0018], sp
    ld b, $d2
    ld e, e
    ld [$ffe8], sp
    dec c
    db $d3
    jr nz, @-$5d

    ld d, h
    dec c

jr_005_5bd8:
    dec de
    ld e, l
    daa
    add hl, de
    nop
    db $10
    db $10
    ld e, h
    ld [de], a
    jp hl


    ld e, e
    dec b
    ld [$0627], sp
    ld [$275b], a
    add hl, de
    ld bc, $1210
    jp c, $055b

    ld [$da06], sp
    ld e, e
    inc bc
    ld a, b
    ld e, h
    ld b, l
    daa
    dec c
    cp e
    ld e, h
    and l
    ld d, h
    add hl, de
    ld bc, $1018
    ld e, h
    ld [de], a
    add hl, bc
    ld e, h
    dec b
    ld [$0019], sp
    jr jr_005_5c1f

    ld sp, hl
    ld e, e
    dec b
    ld [$f906], sp
    ld e, e

    db $16

    inc bc
    sub a
    ld e, h
    ld b, l
    daa
    jr jr_005_5c35

    nop
    ld [bc], a
    add hl, de

jr_005_5c1f:
    inc bc
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902
    inc b
    ld [bc], a
    add hl, de
    ld bc, $1902
    dec b
    ld [bc], a
    ld b, $1b

jr_005_5c35:
    ld e, h
    ld b, $48
    call Call_005_5b4c
    ret nc

    ld e, $05
    ld bc, $5b9d
    jp Jump_000_0846


    ret


    call Call_005_5d2c
    call Call_000_0c80
    call Call_000_0da4
    ld bc, $5493
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1f0d
    jr z, jr_005_5c65

    ld e, $05
    ld bc, $5c15
    jp Jump_000_0846


jr_005_5c65:
    call Call_000_1a25
    bit 7, a
    jp nz, Jump_005_5d4a

    ld e, $08
    call Call_000_1ac1
    jp z, Jump_005_5d4a

    jp Jump_005_5d5f


    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld bc, $5493
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $5c15
    jp Jump_000_0846


    ld bc, $5493
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1f0d
    ret nz

    ld e, $5b
    ld a, [de]
    and a
    jr z, jr_005_5cb3

    ld e, $05
    ld bc, $5bf5
    jp Jump_000_0846


jr_005_5cb3:
    ld e, $05
    ld bc, $5bbc
    jp Jump_000_0846


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    ld e, a
    add a
    add e
    add l
    ld l, a
    jr nc, jr_005_5ccc

    inc h

jr_005_5ccc:
    push de
    push bc
    push hl
    call Call_000_202b
    pop hl
    push hl
    ld e, $0f
    jr nc, jr_005_5ce3

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $12
    ld a, [hl]
    ld [de], a
    jr jr_005_5cf4

jr_005_5ce3:
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl+]
    cpl
    adc $00
    ld [de], a
    ld e, $12
    ld a, [hl]
    cpl
    inc a
    ld [de], a

jr_005_5cf4:
    call Call_000_203d
    ld e, $0d
    pop hl
    jr nc, jr_005_5d07

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $11
    ld a, [hl]
    ld [de], a
    jr jr_005_5d18

jr_005_5d07:
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl+]
    cpl
    adc $00
    ld [de], a
    ld e, $11
    ld a, [hl]
    cpl
    inc a
    ld [de], a

jr_005_5d18:
    pop bc
    pop de
    ret


Jump_005_5d1b:
    ld e, $0e
    ld a, [de]
    ld e, $11
    bit 7, a
    jr nz, jr_005_5d28

    ld a, $ff
    ld [de], a
    ret


jr_005_5d28:
    ld a, $01
    ld [de], a
    ret


Call_005_5d2c:
    ld e, $5c
    ld a, [de]
    ld e, $40
    and a
    jr nz, jr_005_5d3f

    ld a, [de]
    inc a
    cp $60
    ld [de], a
    ret nz

    xor a
    ld [de], a
    jp Jump_005_5d1b


jr_005_5d3f:
    ld a, [de]
    inc a
    cp $80
    ld [de], a
    ret nz

    xor a
    ld [de], a
    jp Jump_005_5d1b


Jump_005_5d4a:
    ld e, $0f
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    ret


    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


Jump_005_5d5f:
    ld e, $5b
    ld a, [de]
    and a
    ret z

    ld b, $28
    call Call_005_5b4c
    jr nc, jr_005_5d73

jr_005_5d6b:
    ld e, $05
    ld bc, $5bf5
    jp Jump_000_0846


jr_005_5d73:
    ld b, $38
    call Call_005_5b4c
    ret nc

    ld e, $5c
    ld a, [de]
    and a
    jr nz, jr_005_5d87

    call Call_000_0647
    cp $80
    ret nc

    jr jr_005_5d6b

jr_005_5d87:
    call Call_000_0647
    cp $c0
    ret nc

    jr jr_005_5d6b

    db $17, $ff, $0d, $27, $18, $0d, $3e, $50, $12

    inc d
    ld e, h

    db $0d, $80, $1f, $11, $c8, $5d

    daa

    db $03, $b0, $5e, $45, $0f, $40, $00, $0d, $90, $20, $cb, $54, $0d, $5f, $20, $cf
    db $54, $0d, $d3, $20, $c7, $54, $01, $03, $24, $0d, $00, $03, $95, $5e, $45, $18
    db $01, $02, $05, $10, $06, $a1, $5d, $01, $03, $0f, $40, $00, $03, $0f, $60, $45
    db $0d, $cc, $4c, $61, $54, $00, $03, $52, $60, $45, $08, $80, $fe, $2a, $18, $05
    db $20, $06, $5c, $5e, $17, $ff, $0d, $03, $e1, $5f, $45, $04, $e1, $72, $0d, $27
    db $0f, $60, $08, $0f, $61, $00, $0f, $5e, $08, $0f, $5f, $08, $0f, $4c, $01, $0f
    db $4a, $15, $18, $0d, $5f, $60, $29, $00, $0d, $5f, $20, $f9, $54, $08, $80, $fe
    db $0f, $3f, $00, $00, $27, $0d, $f9, $1e, $0f, $60, $00, $18, $03, $12, $5f, $45
    db $0f, $3e, $00, $0f, $3f, $00, $0f, $40, $00, $0d, $90, $20, $d9, $54, $0d, $5f
    db $20, $dd, $54, $0d, $d3, $20, $d5, $54, $01, $01, $05, $20

    dec c
    ld e, a
    jr nz, @-$1b

    ld d, h
    inc h
    dec c
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $0604
    ld b, h
    ld e, [hl]

    db $24, $60, $0d, $50, $0f, $38, $a8, $b2, $0d, $03, $20, $1b, $9b, $4d, $03, $01
    db $ff, $24, $60, $0d, $50, $0f, $38, $a8, $b2, $0d, $03, $20, $05, $01, $0f, $1f
    db $80, $1b, $33, $4e, $03, $03, $7a, $5f, $45, $0d, $5f, $20, $e9, $54, $0d, $d3
    db $20, $ef, $54, $09, $06, $19, $00, $04, $19, $01, $04, $0a, $03, $a8, $5f, $45
    db $0d, $5f, $20, $f3, $54, $01, $00, $00

    ld bc, $54ab
    call Call_000_255b
    ret c

    call Call_005_6080
    call Call_000_2375
    call Call_000_19cb
    bit 7, a
    ret nz

    ld e, $05
    ld bc, $5dc8
    jp Jump_000_0846


    ld e, $40
    ld a, [de]
    inc a
    ld [de], a
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
    ld e, $44
    ld [de], a
    ld bc, $54ab
    call Call_000_255b
    ret c

    call Call_005_6080
    call Call_000_2375
    ld e, $44
    ld a, [de]
    bit 6, a
    jr nz, jr_005_5ee8

    bit 7, a
    jr nz, jr_005_5eef

    bit 5, a
    call nz, Call_000_1ef9
    ret


jr_005_5ee8:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_5eef:
    ld e, $5c
    ld a, [de]
    and a
    ld e, $40
    ld a, [de]
    jr nz, jr_005_5efe

    cp $21
    jr nc, jr_005_5f0a

    jr jr_005_5f02

jr_005_5efe:
    cp $1b
    jr nc, jr_005_5f0a

jr_005_5f02:
    ld e, $05
    ld bc, $5dbc
    jp Jump_000_0846


jr_005_5f0a:
    ld e, $05
    ld bc, $5e5c
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $54b9
    call Call_000_255b
    ret c

    call Call_005_6070
    jr z, jr_005_5f5f

jr_005_5f24:
    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_5f46

    bit 7, a
    jr nz, jr_005_5f4d

    bit 5, a
    jr nz, jr_005_5f3a

    ret


jr_005_5f3a:
    ld e, $3f
    ld a, $01
    ld [de], a
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_5f46:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_5f4d:
    ld e, $3f
    ld a, [de]
    and a
    jr z, jr_005_5f57

    dec e
    ld a, $01
    ld [de], a

jr_005_5f57:
    ld e, $05
    ld bc, $5e15
    jp Jump_000_0846


jr_005_5f5f:
    ld e, $15
    xor a
    ld [de], a
    ld e, $3f
    ld a, [de]
    and a
    jr z, jr_005_5f24

    xor a
    ld [de], a
    dec e
    ld a, [de]
    and a
    jr z, jr_005_5f24

    xor a
    ld [de], a
    ld e, $05
    ld bc, $5e72
    jp Jump_000_0846


    call Call_000_21f7
    call Call_000_0da4
    ld bc, $54b9
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_5f99

    bit 7, a
    jr nz, jr_005_5fa0

    ret


jr_005_5f99:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_5fa0:
    ld e, $05
    ld bc, $5e15
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $54b9
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_5fcb

    bit 7, a
    jr nz, jr_005_5fd2

    bit 5, a
    jr nz, jr_005_5fda

    ret


jr_005_5fcb:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_5fd2:
    ld e, $05
    ld bc, $5e15
    jp Jump_000_0846


jr_005_5fda:
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    jr nz, jr_005_5fee

    ld a, $00
    jr jr_005_5ff0

jr_005_5fee:
    ld a, $01

jr_005_5ff0:
    ld [de], a
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $54b9
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $05
    ld bc, $5e15
    jp Jump_000_0846


    ld e, $40
    ld a, [de]
    inc a
    ld [de], a
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld bc, $54ab
    call Call_000_255b
    ret c

    call Call_005_6080
    call Call_000_2375
    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $40
    ld a, [de]
    cp $10
    jr nc, jr_005_604a

    ld e, $05
    ld bc, $5da1
    jp Jump_000_0846


jr_005_604a:
    ld e, $05
    ld bc, $5dd7
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $54ab
    call Call_000_255b
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $5c
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    ld hl, $dd2c
    ld a, [hl]
    bit 1, a
    ret


Call_005_6070:
    ld e, $0f
    ld a, [de]
    and a
    ret nz

    inc e
    ld a, [de]
    and a
    ret


    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


Call_005_6080:
    call Call_000_1a97
    ret nz

    ld e, $05
    ld bc, $5e5c
    call Call_000_0846
    pop hl
    ret


    db $17, $ff, $0d, $27, $0f, $60, $08, $0d, $5a, $63, $12, $e0, $60

    inc bc
    push hl
    ld h, c
    ld b, l
    dec c
    dec e
    jr nz, @+$14

    xor a
    ld h, b
    dec c
    sub b
    jr nz, jr_005_60ba

    ld d, l
    ld bc, $0600
    or [hl]
    ld h, b
    dec c
    sub b
    jr nz, jr_005_60c0

    ld d, l
    ld bc, $0001
    inc bc
    ld a, [de]
    ld h, d

jr_005_60ba:
    ld b, l
    dec c
    sub c
    ld h, e
    ld [de], a
    ret nc

jr_005_60c0:
    ld h, b
    db $10
    ld e, h
    ld [de], a
    bit 4, b
    ld a, [hl+]
    inc d
    ld b, $df
    ld h, b
    ld a, [hl+]
    inc e
    ld b, $df
    ld h, b
    db $10
    ld e, h
    ld [de], a
    jp c, Jump_000_2a60

    db $ec
    ld b, $df
    ld h, b
    ld a, [hl+]
    db $e4
    ld b, $df
    ld h, b
    nop

    db $0d, $1d, $20, $1a, $40, $0f, $3e, $00, $18, $03, $48, $62, $45, $10, $40, $12
    db $01, $61, $01, $01, $0d, $90, $20, $15, $55, $0d, $68, $20, $1d, $55, $06, $0d
    db $61, $01, $00, $0d, $90, $20, $19, $55, $0d, $68, $20, $23, $55, $05, $10, $27
    db $05, $10, $0d, $a8, $63, $06, $0d, $61, $0f, $5e, $0c, $0f, $5f, $0c, $1b, $4e
    db $43, $05

    inc bc
    ld l, h
    ld h, d
    ld b, l
    jr @+$29

    dec c
    scf
    jr nz, jr_005_613e

    ld [hl], $61
    rlca
    nop
    ld bc, $f829
    ld b, $3b
    ld h, c
    rlca
    nop
    rst $38
    add hl, hl
    ld [$0209], sp
    add hl, de

jr_005_613e:
    ld bc, $1901
    dec b
    ld [bc], a
    add hl, de
    ld bc, $1901
    inc b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    add hl, de
    inc bc
    ld bc, $0919
    ld [bc], a
    add hl, de
    inc bc
    ld bc, $0819
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld bc, $0619
    ld [bc], a
    add hl, de
    ld [bc], a
    ld bc, $0719
    ld [bc], a
    add hl, de
    ld [bc], a
    ld bc, $0619
    ld bc, $1918
    ld b, $01
    add hl, de
    ld [bc], a
    ld bc, $0719
    ld [bc], a
    db $10
    ld e, h
    add hl, de
    ld [bc], a
    dec bc
    ld [de], a
    ld a, a
    ld h, c
    dec b
    dec b
    add hl, de
    inc bc
    inc bc
    ld [de], a
    add a
    ld h, c
    dec b
    ld bc, $0219
    ld a, [bc]
    ld [de], a
    adc a
    ld h, c
    dec b
    ld [bc], a
    rrca
    ld a, $00
    rrca
    ld b, b
    nop
    rrca
    ccf
    dec bc
    daa
    inc bc
    ld a, l
    ld h, d
    ld b, l
    dec c
    ld l, b
    jr nz, jr_005_61ca

    ld d, l
    add hl, de
    ld [bc], a
    rlca
    add hl, de
    inc bc
    dec b
    ld b, $a2
    ld h, c
    jr jr_005_61b3

    adc a
    ld h, c
    inc bc
    sbc $61
    ld b, l

jr_005_61b3:
    add hl, hl
    nop
    ld a, [hl+]
    nop
    jr jr_005_61c9

    ld e, h
    add hl, bc
    inc b
    add hl, de
    ld [bc], a
    ld bc, $0619
    ld [bc], a
    add hl, de
    ld [bc], a
    ld bc, $0719
    ld [bc], a
    ld a, [bc]

jr_005_61c9:
    ld [de], a

jr_005_61ca:
    jr @+$63

    add hl, bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld bc, $0619
    ld [bc], a
    add hl, de
    ld [bc], a
    ld bc, $0719
    ld [bc], a
    ld a, [bc]
    ld b, $18
    ld h, c
    ld bc, $54ff
    call Call_000_255b
    ret


    call Call_000_0da4
    ld bc, $54ff
    call Call_000_255b
    ret c

    call Call_000_1f0d
    jr nz, jr_005_6212

    call Call_000_2375
    call Call_000_202b
    jr nc, jr_005_6204

    ld e, $10
    ld a, [de]
    bit 7, a
    jr nz, jr_005_620a

    ret


jr_005_6204:
    ld e, $10
    ld a, [de]
    bit 7, a
    ret nz

jr_005_620a:
    ld e, $05
    ld bc, $60b7
    jp Jump_000_0846


jr_005_6212:
    ld e, $05
    ld bc, $6122
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $54ff
    call Call_000_255b
    ret c

    call Call_000_1f0d
    jr nz, jr_005_6240

    call Call_000_2375
    ld e, $0f
    ld a, [de]
    and a
    ret nz

    inc e
    ld a, [de]
    and a
    ret nz

    ld e, $05
    ld bc, $60e5
    jp Jump_000_0846


jr_005_6240:
    ld e, $05
    ld bc, $6122
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $54ff
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $6122
    jp Jump_000_0846


    ld e, $05
    ld bc, $61ab
    jp Jump_000_0846


    call Call_000_0c80
    call Call_000_0da4
    ld bc, $54ff
    call Call_000_255b
    ret c

    call Call_000_2375
    ret


    ld e, $3f
    ld a, [de]
    inc a
    ld [de], a
    cp $0c
    jr nz, jr_005_62d1

    xor a
    ld e, $3f
    ld [de], a
    dec e
    ld a, [de]
    inc a
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
    jr z, jr_005_62aa

    bit 3, b
    jr nz, jr_005_62a6

    set 0, b

jr_005_62a6:
    set 3, b
    jr jr_005_62b2

jr_005_62aa:
    bit 3, b
    jr z, jr_005_62b0

    set 0, b

jr_005_62b0:
    res 3, b

jr_005_62b2:
    call Call_000_201d
    ld e, $27
    ld a, [de]
    and a
    jr z, jr_005_62c5

    bit 7, b
    jr nz, jr_005_62c1

    set 4, b

jr_005_62c1:
    set 7, b
    jr jr_005_62cd

jr_005_62c5:
    bit 7, b
    jr z, jr_005_62cb

    set 4, b

jr_005_62cb:
    res 7, b

jr_005_62cd:
    ld e, $40
    ld a, b
    ld [de], a

jr_005_62d1:
    ld e, $40
    ld a, [de]
    bit 3, a
    jr nz, jr_005_62ec

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_005_62e2

    ld e, $00

jr_005_62e2:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0cb4
    jr jr_005_62fe

jr_005_62ec:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_005_62f6

    ld e, $00

jr_005_62f6:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0ce5

jr_005_62fe:
    ld e, $40
    ld a, [de]
    bit 7, a
    jr z, jr_005_6319

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_005_630f

    ld e, $00

jr_005_630f:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    jr jr_005_632b

jr_005_6319:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_005_6323

    ld e, $00

jr_005_6323:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d66

jr_005_632b:
    call Call_000_0da4
    ld bc, $54ff
    call Call_000_255b
    ret c

    call Call_000_2375
    ld e, $3e
    ld a, [de]
    cp $0c
    jr z, jr_005_6352

    ld e, $10
    ld a, [de]
    and $80
    ld b, a
    ld e, $12
    ld a, [de]
    and $80
    xor b
    ret nz

    ld e, $15
    ld a, $02
    ld [de], a
    ret


jr_005_6352:
    ld e, $05
    ld bc, $61af
    jp Jump_000_0846


    push bc
    ld hl, $db53
    ld e, $07
    ld a, [hl+]
    sub $08
    ld c, a
    ld a, [hl]
    sbc $00
    ld b, a
    ld a, [de]
    sub c
    inc e
    ld a, [de]
    sbc b
    jr c, jr_005_6383

    ld hl, $db53
    ld e, $07
    ld a, [hl+]
    add $88
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a
    ld a, [de]
    sub c
    inc e
    ld a, [de]
    sbc b
    jr c, jr_005_638a

jr_005_6383:
    ld e, $27
    ld a, $00
    ld [de], a
    pop bc
    ret


jr_005_638a:
    ld e, $27
    ld a, $01
    ld [de], a
    pop bc
    ret


    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $27
    jr nz, jr_005_63a1

    ld a, $01
    ld [de], a
    ld e, $40
    ld [de], a
    ret


jr_005_63a1:
    ld a, $00
    ld [de], a
    ld e, $40
    ld [de], a
    ret


    ld e, $12
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld e, $15
    ld a, [de]
    and a
    jr z, jr_005_63b8

    ld a, $00
    ld [de], a
    ret


jr_005_63b8:
    ld a, $01
    ld [de], a
    ret


    rla
    rst $38
    dec c
    daa
    rrca
    ld b, a
    add b
    dec c
    pop af
    ld h, h
    rrca
    ld h, b
    adc b
    dec c
    rst $38
    ld h, h
    rrca
    ld b, a
    add b
    inc bc
    sub [hl]
    ld h, h
    ld b, l
    ld bc, $0000
    rrca
    ld h, b
    ld [$470f], sp
    add b
    inc bc
    ret z

    ld h, h
    ld b, l
    ld [$fec0], sp
    ld a, [hl+]
    ld a, [bc]
    ld bc, $0502
    jr nz, jr_005_6402

    rrca
    ld h, b
    nop
    ld a, [hl+]
    nop
    add hl, bc
    ld [$0019], sp
    inc b
    add hl, de
    ld bc, $0a04
    add hl, de
    nop
    jr nz, @+$0f

    ld l, [hl]
    ld h, [hl]
    add b
    ld [de], a
    ld c, $64

jr_005_6402:
    add hl, bc
    ld [$0019], sp
    inc b
    add hl, de
    ld bc, $0a04
    add hl, de
    nop
    jr nz, jr_005_6439

    ld a, [bc]
    add hl, de
    ld [bc], a
    jr nz, jr_005_642c

    ld a, [hl+]
    nop
    ld bc, $0d00
    ld l, [hl]
    ld h, [hl]
    add b
    ld [de], a
    ld hl, $0564
    jr nz, jr_005_6431

    ld b, a
    add b
    rrca
    ld h, b
    nop
    ld b, $c6
    ld h, e
    rrca
    ld h, b

jr_005_642c:
    ld [$470f], sp
    add b
    inc bc

jr_005_6431:
    ret z

    ld h, h
    ld b, l
    ld [$fee0], sp
    ld a, [hl+]
    add hl, bc

jr_005_6439:
    ld bc, $0502
    inc l
    jr jr_005_6469

    nop
    rrca
    ld h, b
    nop
    add hl, bc
    inc bc
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $0a04
    add hl, de
    nop
    ld [$092a], sp
    add hl, de
    ld [bc], a
    inc c
    jr @+$2c

    nop
    inc bc
    ret c

    ld h, h
    ld b, l
    daa
    rrca
    ld h, b
    nop
    dec c
    sub b
    jr nz, jr_005_64ae

    ld d, l
    dec c
    ld e, a
    jr nz, @+$51

    ld d, l

jr_005_6469:
    dec c
    db $d3
    jr nz, jr_005_64c2

    ld d, l
    rrca
    daa
    nop
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $0f02
    ld b, a
    nop
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1102
    ld a, d
    ld h, h
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    ld b, $83
    ld h, h
    ld bc, $2703
    rrca
    ld b, a
    nop
    dec de
    sbc e
    ld c, l
    inc bc
    ld bc, $552f
    call Call_000_255b
    ret c

    call Call_000_1ec0
    ld b, $30
    call Call_005_5b4c
    ret nc

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_64ba

    ld e, $05

jr_005_64ae:
    ld bc, $63d6
    call Call_000_0846
    ld e, $47
    ld a, $80
    ld [de], a
    ret


jr_005_64ba:
    ld e, $05
    ld bc, $642a
    call Call_000_0846

jr_005_64c2:
    ld e, $47
    ld a, $80
    ld [de], a
    ret


    call Call_000_1ec0
    call Call_000_0c91
    call Call_000_0da4
    ld bc, $552f
    call Call_000_255b
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $552f
    call Call_000_255b
    ret c

    ld e, $10
    ld a, [de]
    bit 7, a
    ret nz

    ld e, $27
    ld a, $01
    ld [de], a
    ret


    ld e, $41
    ld h, d
    ld l, $06
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld l, $41
    ld h, d
    ld e, $06
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    db $17, $ff, $0d, $27, $18, $0d, $80, $1f, $11, $90, $65, $0f, $3f, $00, $03, $a2
    db $65, $45, $09, $04, $0d, $d3, $20, $59, $55, $0d, $15, $21, $5d, $55, $19, $02
    db $04, $19, $01, $0c, $19, $00, $08, $19, $02, $04, $19, $03, $04, $18, $29, $00
    db $05, $08, $0a, $0d, $6e, $66, $40, $11, $18, $65, $03, $43, $66, $45, $0d, $90
    db $20, $65, $55, $0d, $5f, $20, $69, $55, $07, $00, $00, $00

    inc bc
    ld b, e
    ld h, [hl]
    ld b, l
    dec c
    sub b
    jr nz, @+$71

    ld d, l
    dec c
    ld e, a
    jr nz, @+$75

    ld d, l
    dec c
    db $d3
    jr nz, @+$7b

    ld d, l
    nop

    db $03, $0e, $66, $45, $0d, $d3, $20, $5f, $55, $0d, $15, $21, $63, $55, $19, $02
    db $04, $19, $01, $0c, $19, $00, $08, $19, $02, $04, $19, $03, $04, $18, $05, $08
    db $06, $71, $65, $0f, $5e, $08, $0f, $5f, $08, $01, $00, $03, $43, $66, $45, $0d
    db $5f, $20, $7d, $55, $00

    call Call_000_0c80
    call Call_000_0da4
    ld bc, $553d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_2235
    and a
    jr z, jr_005_65c8

    call Call_005_6682
    jr nz, jr_005_65fd

    ld e, $05
    ld bc, $656d
    jp Jump_000_0846


jr_005_65c8:
    call Call_000_19f3
    bit 5, a
    jr nz, jr_005_65fd

    bit 7, a
    jr z, jr_005_6606

    ld e, $3f
    ld a, [de]
    and a
    ret nz

    call Call_000_19f3
    bit 4, a
    ret z

    call Call_005_6682
    jr nz, jr_005_65fd

    call Call_000_202b
    jr nc, jr_005_65fd

    call Call_000_0647
    cp $40
    jr c, jr_005_65f5

    ld e, $3f
    ld a, $01
    ld [de], a
    ret


jr_005_65f5:
    ld e, $05
    ld bc, $6559
    jp Jump_000_0846


jr_005_65fd:
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1ef9


jr_005_6606:
    ld e, $05
    ld bc, $6590
    jp Jump_000_0846


    call Call_000_0c80
    call Call_000_0da4
    ld bc, $553d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_2235
    and a
    jr nz, jr_005_662f

    ld e, $05
    ld bc, $6518
    jp Jump_000_0846


jr_005_662f:
    call Call_000_19f3
    bit 5, a
    jr nz, jr_005_6637

    ret


jr_005_6637:
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    call Call_000_1ec0
    jp Jump_000_1ef9


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $553d
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    ld b, a
    bit 5, a
    call nz, Call_000_1ef9
    ld a, b
    bit 7, a
    ret z

    call Call_000_1ec0
    ld e, $05
    ld bc, $6518
    jp Jump_000_0846


    ld a, [bc]
    inc bc
    ld h, a

jr_005_6671:
    push hl
    call Call_000_0647
    pop hl
    cp h

jr_005_6677:
    ld e, $27
    jr c, jr_005_667e

    xor a
    ld [de], a
    ret


jr_005_667e:
    ld a, $01
    ld [de], a
    ret


Call_005_6682:
    call Call_000_203d
    ld e, $45
    ld a, [de]
    jr c, jr_005_668b

    cpl

jr_005_668b:
    bit 7, a
    ret


    rla
    rst $38
    dec c
    ld bc, $0000
    rla
    rst $38
    dec c
    daa
    rrca
    ld h, b
    nop
    dec c
    xor c
    ld l, d
    ld de, $66a4
    rrca
    ld h, b
    ld [$3e0f], sp
    nop
    inc bc
    jp z, Jump_005_4568

    dec c
    dec e
    jr nz, jr_005_66c0

    ret nz

    ld h, [hl]
    ld bc, $0d01
    sub b
    jr nz, @-$51

    ld d, l
    dec c
    ld l, b
    jr nz, jr_005_6671

    ld d, l
    ld b, $cc
    ld h, [hl]

jr_005_66c0:
    ld bc, $0d00
    sub b
    jr nz, jr_005_6677

    ld d, l
    dec c
    ld l, b
    jr nz, @-$43

    ld d, l
    add hl, bc
    ld b, $19
    nop
    ld b, $19
    ld bc, $1902
    ld [bc], a
    ld b, $19
    ld bc, $0a02
    add hl, bc
    ld [bc], a
    add hl, de
    inc bc
    ld b, $19
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld b, $19
    inc b
    ld [bc], a
    ld a, [bc]
    ld b, $cc
    ld h, [hl]
    inc bc
    ld a, [de]
    ld l, c
    ld b, l
    jr @+$1b

    ld b, $06
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1906], sp
    rlca
    ld [bc], a
    add hl, bc
    inc b
    dec c
    ld l, [hl]
    ld h, [hl]
    add b
    ld [de], a
    ld [hl+], a
    ld h, a
    add hl, de
    nop
    ld b, $19
    ld bc, $1902
    dec b
    ld b, $19
    inc b
    ld [bc], a
    add hl, de
    inc bc
    ld b, $19
    inc b
    ld [bc], a
    add hl, de
    ld [bc], a
    ld b, $19
    ld bc, $0602
    ld a, [hl-]
    ld h, a
    add hl, de
    ld b, $06
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1906], sp
    rlca
    ld [bc], a
    add hl, de
    ld b, $06
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1906], sp
    rlca
    ld [bc], a
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, $1902
    dec b
    ld b, $19
    inc b
    ld [bc], a
    add hl, de
    inc bc
    ld b, $19
    inc b
    ld [bc], a
    add hl, de
    ld [bc], a
    ld b, $19
    ld bc, $0902
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, $1902
    ld [bc], a
    ld b, $19
    ld bc, $0a02
    add hl, bc
    ld [bc], a
    add hl, de
    inc bc
    ld b, $19
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld b, $19
    inc b
    ld [bc], a
    ld a, [bc]
    ld b, $98
    ld h, [hl]
    rrca
    ld e, [hl]
    db $10
    rrca
    ld e, a
    db $10
    dec c
    adc l
    ld h, a
    ld d, b
    ld bc, $4e1b
    ld b, e
    dec b
    rrca
    ld e, [hl]
    db $10
    rrca
    ld e, a
    db $10
    dec de
    ld c, [hl]

jr_005_678b:
    ld b, e
    dec b
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [bc]
    inc bc
    push bc
    ld b, a
    ld c, h
    ld h, $01
    call Call_000_30e0
    pop bc
    ret


    rrca
    ld h, b
    ld [$420f], sp
    inc c
    inc bc
    ld hl, $4569
    jr jr_005_67cf

    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, de
    ld b, $06
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    dec bc
    ld b, $19
    ld a, [bc]
    ld [bc], a
    rrca
    ld a, $00
    rrca
    ld b, b
    nop
    rrca
    ccf
    rrca
    daa
    inc bc
    ld h, a
    ld l, c
    ld b, l
    dec c
    ld l, b
    jr nz, jr_005_678b

    ld d, l
    add hl, de
    add hl, bc
    ld [bc], a
    rrca

jr_005_67cf:
    ld b, a
    db $10
    add hl, de
    add hl, bc
    ld bc, $0a19
    ld bc, $470f
    nop
    add hl, de
    dec bc
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    dec bc
    ld bc, $0a19
    ld bc, $470f
    nop
    ld b, $cb
    ld h, a
    inc bc
    jr z, jr_005_6858

    ld b, l
    jr jr_005_681b

    nop
    add hl, bc
    ld b, $19
    add hl, bc
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    add hl, bc
    ld bc, $0a19
    ld bc, $470f
    nop
    add hl, de
    dec bc
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    dec bc
    ld bc, $0a19
    ld bc, $470f
    nop
    ld a, [bc]
    daa
    dec c
    dec d
    ld hl, $55c7
    add hl, de

jr_005_681b:
    add hl, bc
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    add hl, bc
    ld bc, $0a19
    ld bc, $470f
    nop
    add hl, de
    dec bc
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    dec bc
    ld bc, $0a19
    ld bc, $470f
    nop
    ld b, $1a
    ld l, b
    add hl, hl
    nop
    ld a, [hl+]
    nop
    rrca
    ld c, d
    ld [hl], l
    dec c
    jp nz, $036a

    ld b, c
    ld l, c
    ld b, l
    add hl, de
    ld b, $06
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$1906], sp
    rlca
    ld [bc], a
    ld b, $49
    ld l, b

jr_005_6858:
    rrca
    ld h, b
    ld [$b403], sp
    ld l, b
    ld b, l
    jr jr_005_687a

    inc c
    ld [bc], a
    add hl, de
    dec c
    ld [bc], a
    ld b, $60
    ld l, b
    jr jr_005_687a

    ld h, b
    ld [$a00d], sp
    ld l, b
    ld [de], a
    ld [hl], h
    ld h, a
    inc bc
    or b
    ld l, b
    ld b, l
    add hl, bc
    inc b
    add hl, de

jr_005_687a:
    inc c
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    dec c
    ld [bc], a
    rrca
    ld b, a
    nop
    ld a, [bc]
    ld b, $b8
    ld h, a
    jr jr_005_689a

    ld c, d
    nop
    rrca
    ld h, b
    ld [$b003], sp
    ld l, b
    ld b, l
    add hl, bc
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    add hl, de

jr_005_689a:
    dec c
    ld [bc], a
    ld a, [bc]
    ld b, $9c
    ld h, a
    ld e, $42
    ld a, [de]
    dec a
    ld [de], a
    ld e, $27
    jr z, jr_005_68ac

    xor a
    ld [de], a
    ret


jr_005_68ac:
    ld a, $01
    ld [de], a
    ret


    call Call_000_0da4
    ret


    call Call_000_0da4
    ld bc, $559f
    call Call_000_255b
    ret c

    call Call_000_1f0d
    ret nz

    ld e, $05
    ld bc, $67b8
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld a, [$a071]
    and a
    jr nz, jr_005_68df

    ld bc, $5583
    call Call_000_255b
    ret c

    jr jr_005_68ea

jr_005_68df:
    ld e, $4a
    xor a
    ld [de], a
    ld bc, $5591
    call Call_000_255b
    ret c

jr_005_68ea:
    ld e, $3e
    ld a, [de]
    inc a
    ld [de], a
    cp $40
    jr nz, jr_005_68f8

    xor a
    ld [de], a
    call Call_005_6a9b

jr_005_68f8:
    ld b, $30
    call Call_005_5b4c
    jr c, jr_005_6900

    ret


jr_005_6900:
    ld a, [$a071]
    and a
    jr nz, jr_005_690e

    ld e, $05
    ld bc, $66ed
    jp Jump_000_0846


jr_005_690e:
    ld e, $4a
    xor a
    ld [de], a
    ld e, $05
    ld bc, $679c
    jp Jump_000_0846


    ld bc, $5583
    call Call_000_255b
    ret


    ld bc, $559f
    call Call_000_255b
    ret


    call Call_000_0c80
    call Call_000_0da4
    ld bc, $559f
    call Call_000_255b
    ret c

    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $6858
    jp Jump_000_0846


    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld bc, $5583
    call Call_000_255b
    ret c

    ld e, $0e
    ld a, [de]
    and a
    ret nz

    ld e, $11
    xor a
    ld [de], a
    ld e, $10
    ld a, [de]
    and a
    ret nz

    ld e, $05
    ld bc, $6698
    jp Jump_000_0846


    ld e, $3f
    ld a, [de]
    inc a
    ld [de], a
    cp $10
    jr nz, jr_005_69c0

    xor a
    ld e, $3f
    ld [de], a
    dec e
    ld a, [de]
    inc a
    ld [de], a
    ld e, $3e
    ld a, [de]
    inc a
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
    jr z, jr_005_6999

    bit 3, b
    jr nz, jr_005_6995

    set 0, b

jr_005_6995:
    set 3, b
    jr jr_005_69a1

jr_005_6999:
    bit 3, b
    jr z, jr_005_699f

    set 0, b

jr_005_699f:
    res 3, b

jr_005_69a1:
    call Call_000_201d
    ld e, $27
    ld a, [de]
    and a
    jr z, jr_005_69b4

    bit 7, b
    jr nz, jr_005_69b0

    set 4, b

jr_005_69b0:
    set 7, b
    jr jr_005_69bc

jr_005_69b4:
    bit 7, b
    jr z, jr_005_69ba

    set 4, b

jr_005_69ba:
    res 7, b

jr_005_69bc:
    ld e, $40
    ld a, b
    ld [de], a

jr_005_69c0:
    ld e, $40
    ld a, [de]
    bit 3, a
    jr nz, jr_005_69db

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_005_69d1

    ld e, $00

jr_005_69d1:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0cb4
    jr jr_005_69ed

jr_005_69db:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 0, a
    jr z, jr_005_69e5

    ld e, $00

jr_005_69e5:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0ce5

jr_005_69ed:
    ld e, $40
    ld a, [de]
    bit 7, a
    jr z, jr_005_6a08

    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_005_69fe

    ld e, $00

jr_005_69fe:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    jr jr_005_6a1a

jr_005_6a08:
    ld h, d
    ld l, $12
    ld e, [hl]
    bit 4, a
    jr z, jr_005_6a12

    ld e, $00

jr_005_6a12:
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d66

jr_005_6a1a:
    ld e, $f8
    call Call_000_1ac1
    call z, Call_005_6a63
    call Call_000_0da4
    ld a, [$a071]
    and a
    jr nz, jr_005_6a33

    ld e, $05
    ld bc, $683b
    jp Jump_000_0846


jr_005_6a33:
    ld bc, $559f
    call Call_000_255b
    ret c

    call Call_000_1f0d
    jr nz, jr_005_6a5b

    ld e, $12
    ld h, d
    ld l, $10
    ld a, [de]
    and $80
    ld b, a
    ld a, [hl]
    and $80
    xor b
    ret z

    ld e, $3e
    ld a, [de]
    cp $20
    ret c

    ld e, $05
    ld bc, $67ec
    jp Jump_000_0846


jr_005_6a5b:
    ld e, $05
    ld bc, $6858
    jp Jump_000_0846


Call_005_6a63:
    ld e, $0e
    ld a, [de]
    bit 7, a
    jr nz, jr_005_6a73

    xor a
    ld [de], a
    dec e
    ld a, [de]
    and $7f
    ld [de], a
    jr jr_005_6a7f

jr_005_6a73:
    ld a, $ff
    ld [de], a
    dec e
    ld a, [de]
    cpl
    inc a
    and $7f
    cpl
    inc a
    ld [de], a

jr_005_6a7f:
    ld e, $10
    ld a, [de]
    bit 7, a
    jr nz, jr_005_6a8e

    xor a
    ld [de], a
    dec e
    ld a, [de]
    and $7f
    ld [de], a
    ret


jr_005_6a8e:
    ld a, $ff
    ld [de], a
    dec e
    ld a, [de]
    cpl
    inc a
    and $7f
    cpl
    inc a
    ld [de], a
    ret


Call_005_6a9b:
    ld e, $12
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld a, [$a071]
    and a
    ld e, $27
    jr nz, jr_005_6ab9

    xor a
    ld [de], a
    ld e, $4a
    ld a, $75
    ld [de], a
    ret


jr_005_6ab9:
    ld a, $01
    ld [de], a
    ld e, $4a
    ld a, $00
    ld [de], a
    ret


    ld e, $0e
    ld a, [de]
    and a
    jr z, jr_005_6ad6

    bit 7, a
    ld e, $11
    jr nz, jr_005_6ad3

    ld a, $f8
    ld [de], a
    jr jr_005_6ad6

jr_005_6ad3:
    ld a, $08
    ld [de], a

jr_005_6ad6:
    ld e, $10
    ld a, [de]
    and a
    ret z

    bit 7, a
    ld e, $12
    jr nz, jr_005_6ae5

    ld a, $f8
    ld [de], a
    ret


jr_005_6ae5:
    ld a, $08
    ld [de], a
    ret


    db $17, $ff, $0d, $03, $4e, $6b, $45, $01, $00, $00, $03, $6c, $6b, $45, $09, $04
    db $07, $00, $ff, $05, $02, $07, $00, $01, $05, $04, $07, $00, $ff, $05, $02, $0a
    db $18, $24, $47, $03, $76, $6b, $45, $0d, $5f, $20, $df, $55, $00, $24, $41, $03
    db $94, $6b, $45, $27, $10, $5c, $11, $27, $6b

    dec c
    db $d3
    jr nz, @-$27

    ld d, l

    db $08, $00, $ff, $2a, $10, $00

    inc h
    ld b, c
    inc bc
    add $6b
    ld b, l
    dec c
    db $d3
    jr nz, @-$23

    ld d, l
    ld [$ff40], sp
    ld a, [hl+]
    stop

    db $10, $5b, $12, $4a, $6b

    rrca
    rra
    add b
    dec de
    inc sp
    ld c, [hl]
    inc bc

    db $1b, $4e, $43, $05

    call Call_000_0da4
    ld bc, $55c9
    call Call_000_255b
    ret c

    ld b, $30
    call Call_005_5b4c
    ret nc

    ld b, $24
    call Call_005_6be4
    ret nc

    ld e, $05
    ld bc, $6af3
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $55c9
    call Call_000_255b
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $55c9
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $05
    ld bc, $6b16
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $55c9
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_6bbe

    ld e, $5c
    ld a, [de]
    and a
    jr z, jr_005_6bbe

    ld e, $05
    ld bc, $6b2d
    jp Jump_000_0846


jr_005_6bbe:
    ld e, $05
    ld bc, $6b3e
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $55c9
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $05
    ld bc, $6b3e
    jp Jump_000_0846


Call_005_6be4:
    push de
    push bc
    ld e, $07
    ld l, e
    ld h, $a0
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, c
    add $34
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld a, c
    sub e
    ld a, b
    sbc d
    jr c, jr_005_6c11

    ld a, c
    sub e
    ld c, a
    ld a, b
    cp d
    jr z, jr_005_6c0c

    ld a, $ff
    add c
    ld c, a

jr_005_6c0c:
    ld a, c
    pop bc
    pop de
    cp b
    ret


jr_005_6c11:
    ld a, e
    sub c
    ld e, a
    ld a, b
    cp d
    jr z, jr_005_6c1c

    ld a, $ff
    add e
    ld e, a

jr_005_6c1c:
    ld a, e
    pop bc
    pop de
    cp b
    ret


    db $17, $ff, $0d, $27, $01, $00, $18, $0d, $80, $1f, $11, $f1, $6c, $03, $2c, $6d
    db $45, $18, $27, $10, $5c, $01, $02, $05, $10, $12, $3f, $6c, $05, $08, $0d, $6e
    db $66, $40, $12, $be, $6c, $03, $44, $6d, $45, $24, $0d, $0d, $5f, $20, $fd, $55
    db $0d, $d3, $20, $03, $56, $0d, $90, $20, $07, $56, $19, $00, $04, $19, $01, $38
    db $01, $00, $00, $01, $02, $03, $2c, $6d, $45, $10, $5c, $05, $08, $12, $73, $6c
    db $05, $04, $03, $75, $6d, $45, $24, $0d, $0d, $5f, $20, $fd, $55, $0d, $d3, $20
    db $03, $56, $0d, $90, $20, $07, $56, $19, $00, $04, $19, $01, $38, $01, $00, $00
    db $01, $02, $03, $2c, $6d, $45, $10, $5c, $05, $08, $12, $a0, $6c

    dec b
    inc b

    db $03, $a6, $6d, $45, $24, $0d, $0d, $5f, $20, $0b, $56, $0d, $d3, $20, $11, $56
    db $0d, $90, $20, $15, $56, $19, $00, $04, $19, $01, $48

    ld bc, $0000

    db $0f, $40, $00, $10, $5c, $11

    ret


    ld l, h

    db $0f, $40, $01, $03, $2c, $6d, $45, $01, $02, $10, $5c, $05, $0c, $12, $d8, $6c

    dec b
    db $06

    db $03, $d7, $6d, $45, $24, $0d, $0d, $5f, $20, $0b, $56, $0d, $90, $20, $19, $56
    db $19, $00, $04, $19, $01, $18, $01, $00, $00, $03, $fb, $6c, $45, $0d, $5f, $20
    db $f7, $55, $00

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $55e5
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $55f3
    call Call_000_24cd
    bit 6, a
    jr nz, jr_005_6d25

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6c2e
    jp Jump_000_0846


jr_005_6d25:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    ld bc, $55e5
    call Call_000_255b
    ret c

    ld bc, $55f3
    call Call_000_24a5
    bit 7, a
    ret nz

    ld e, $05
    ld bc, $6cf1
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $55e5
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $55f3
    call Call_000_24cd
    bit 6, a
    jr nz, jr_005_6d6e

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6c64
    jp Jump_000_0846


jr_005_6d6e:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $55e5
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $55f3
    call Call_000_24cd
    bit 6, a
    jr nz, jr_005_6d9f

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6c91
    jp Jump_000_0846


jr_005_6d9f:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $55e5
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $55f3
    call Call_000_24cd
    bit 6, a
    jr nz, jr_005_6dd0

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6c2e
    jp Jump_000_0846


jr_005_6dd0:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $55e5
    call Call_000_255b
    ret c

    call Call_000_2375
    ld bc, $55f3
    call Call_000_24cd
    bit 6, a
    jr nz, jr_005_6e12

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $40
    ld a, [de]
    inc a
    ld [de], a
    cp $03
    jr nc, jr_005_6e0a

    ld e, $05
    ld bc, $6cc9
    jp Jump_000_0846


jr_005_6e0a:
    ld e, $05
    ld bc, $6c2e
    jp Jump_000_0846


jr_005_6e12:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    db $17, $0b, $0e, $0d, $99, $72, $18, $0f, $60, $08, $0f, $3f, $00, $0f, $43, $00
    db $0d, $1a, $24, $41, $a8, $b2, $12, $33, $6e

    db $16

    db $0d, $80, $1f, $27, $11, $6b, $6e

    db $10
    ld e, h
    ld [de], a
    sub a
    ld l, a

    db $03, $9c, $70, $45, $0d, $be, $23, $47, $56, $10, $5b, $12

    ld e, h
    ld l, [hl]

    db $19, $02, $08, $19, $03, $08, $19, $04, $08, $19, $05, $08, $06, $4d, $6e

    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0919], sp
    ld [$5c06], sp
    ld l, [hl]

    db $0f, $10, $00, $10, $5c, $12, $88, $6e, $27, $03, $b5, $6f, $45, $0d, $5f, $20
    db $41, $56, $10, $5b, $12

    add l
    ld l, [hl]

    db $01, $02, $00

    ld bc, $0006

    db $01, $01, $0f, $60, $00, $0f, $61, $00, $27, $03, $fe, $71, $45, $0d, $5f, $20
    db $41, $56, $00

    rla
    rst $38
    dec c
    inc bc
    dec de
    ld [hl], b
    ld b, l
    rrca
    ld h, b
    ld [$5b10], sp
    ld de, $6ead
    rrca
    ld h, c
    ret nz

    rrca
    ld c, d
    dec b
    daa
    dec c
    ld sp, hl
    ld e, $0d
    ld e, a
    jr nz, @+$59

    ld d, [hl]
    dec c
    db $d3
    jr nz, jr_005_6f0c

    ld d, [hl]
    dec c
    sub b
    jr nz, jr_005_6f15

    ld d, [hl]
    db $10
    ld e, e
    ld [de], a
    rst $10
    ld l, [hl]
    add hl, de
    ld [bc], a
    ld [$0319], sp
    ld [$0419], sp
    ld [$0519], sp
    ld [$c806], sp
    ld l, [hl]
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0919], sp
    ld [$d706], sp
    ld l, [hl]
    inc bc
    ld c, h
    ld [hl], b
    ld b, l
    dec c
    ld e, a
    jr nz, @+$67

    ld d, [hl]
    dec c
    db $d3
    jr nz, @+$5f

    ld d, [hl]
    dec c
    sub b
    jr nz, @+$63

    ld d, [hl]
    db $10
    ld e, e
    ld [de], a
    dec c
    ld l, a
    add hl, de
    ld [bc], a
    ld [$0319], sp
    ld [$0419], sp
    ld [$0519], sp
    ld [$fe06], sp

jr_005_6f0c:
    ld l, [hl]
    add hl, de
    ld b, $08
    add hl, de
    rlca
    ld [$0819], sp

jr_005_6f15:
    ld [$0919], sp
    ld [$0d06], sp
    ld l, a
    inc bc
    ld a, l
    ld [hl], b
    ld b, l
    rrca
    ld h, b
    nop
    rrca
    ld h, c
    nop
    jr jr_005_6f38

    ld e, e
    ld de, $6f40
    rrca
    ld e, e
    nop
    rrca
    ld e, h
    ld bc, $4c0f
    nop
    inc b
    ld b, d
    ld [hl], l

jr_005_6f38:
    inc c
    rrca
    ld c, c
    rst $38
    dec de
    db $dd
    ld a, d
    inc bc
    nop

    db $17, $f6, $0d, $0d, $f9, $1f, $0d, $9f, $72, $0f, $60, $80, $0f, $61, $c0, $0f
    db $5e, $08, $0f, $5f, $08, $0f, $4c, $01, $0f, $4a, $10, $27, $04, $06, $53, $10
    db $01, $00, $03, $50, $71, $45, $10, $5c, $12, $14, $5c, $00, $03, $90, $71, $45
    db $0d, $5f, $20, $6f, $56, $0d, $90, $20, $6b, $56, $00, $03, $6c, $72, $45, $18
    db $0d, $5f, $20, $79, $56, $0d, $90, $20, $75, $56, $0f, $60, $07, $05, $04, $0f
    db $60, $00, $0f, $61, $00, $00, $17, $ff, $0d, $0f, $60, $00, $0f, $61, $00, $27
    db $03, $2f, $72, $45, $0d, $5f, $20, $6f, $56, $0d, $90, $20, $6b, $56, $0d, $d3
    db $20, $47, $56, $00

    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld e, $07
    ld a, [de]
    sub $03
    ld [de], a
    jr nc, jr_005_6fd0

    inc e
    ld a, [de]
    dec a
    ld [de], a

jr_005_6fd0:
    ld bc, $561d
    call Call_000_255b
    ret c

    ld e, $07
    ld a, [de]
    add $03
    ld [de], a
    jr nc, jr_005_6fe3

    inc e
    ld a, [de]
    inc a
    ld [de], a

jr_005_6fe3:
    ld a, [$dd2c]
    bit 2, a
    jr z, jr_005_6ff2

    ld e, $05
    ld bc, $6e9b
    jp Jump_000_0846


jr_005_6ff2:
    call Call_000_2375
    call Call_000_2385
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_7014

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $3f
    ld a, $01
    ld [de], a
    ld e, $05
    ld bc, $6e3f
    jp Jump_000_0846


jr_005_7014:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $561d
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_2385
    call Call_000_1a62
    bit 6, a
    jr nz, jr_005_7045

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6ee6
    jp Jump_000_0846


jr_005_7045:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $561d
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_2385
    call Call_000_1a62
    bit 6, a
    jr nz, jr_005_7076

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6f1c
    jp Jump_000_0846


jr_005_7076:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    ld bc, $561d
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_2385
    call Call_000_19cb
    bit 7, a
    ret nz

    ld e, $3f
    xor a
    ld [de], a
    ld e, $05
    ld bc, $6e6b
    jp Jump_000_0846


    call Call_000_2235
    ld e, $40
    ld [de], a
    ld hl, $5647
    call Call_000_23ca
    call Call_000_0da4
    ld e, $07
    ld a, [de]
    sub $03
    ld [de], a
    jr nc, jr_005_70b7

    inc e
    ld a, [de]
    dec a
    ld [de], a

jr_005_70b7:
    ld bc, $561d
    call Call_000_255b
    ret c

    ld e, $07
    ld a, [de]
    add $03
    ld [de], a
    jr nc, jr_005_70ca

    inc e
    ld a, [de]
    inc a
    ld [de], a

jr_005_70ca:
    ld a, [$dd2c]
    bit 2, a
    jr z, jr_005_70d9

    ld e, $05
    ld bc, $6e9b
    jp Jump_000_0846


jr_005_70d9:
    call Call_000_2375
    call Call_000_2385
    call Call_005_72b5
    jr nz, jr_005_70ec

    ld e, $05
    ld bc, $6e9b
    jp Jump_000_0846


jr_005_70ec:
    call Call_000_19cb
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_005_70ff

    call Call_005_710b
    jp c, Jump_000_1ef9

    ret


jr_005_70ff:
    ld e, $3f
    xor a
    ld [de], a
    ld e, $05
    ld bc, $6e6b
    jp Jump_000_0846


Call_005_710b:
    push de
    call Call_000_1aea
    push bc
    ld a, e
    sub $18
    ld e, a
    jr nc, jr_005_7117

    dec d

jr_005_7117:
    ld a, c
    add $09
    ld c, a
    jr nc, jr_005_711e

    inc b

jr_005_711e:
    push de
    call Call_000_1646
    pop de
    pop bc
    cp $ff
    jr z, jr_005_7132

    bit 2, a
    jr nz, jr_005_714d

    and $03
    cp $01
    jr z, jr_005_714d

jr_005_7132:
    ld a, c
    sub $09
    ld c, a
    jr nc, jr_005_7139

    dec b

jr_005_7139:
    call Call_000_1646
    cp $ff
    jr z, jr_005_714a

    bit 2, a
    jr nz, jr_005_714d

    and $03
    cp $01
    jr z, jr_005_714d

jr_005_714a:
    pop de
    and a
    ret


jr_005_714d:
    pop de
    scf
    ret


    ld e, $07
    ld a, [de]
    add $0d
    ld [de], a
    jr nc, jr_005_715c

    inc e
    ld a, [de]
    inc a
    ld [de], a

jr_005_715c:
    ld bc, $562b
    call Call_000_255b
    ret c

    ld e, $07
    ld a, [de]
    sub $0d
    ld [de], a
    jr nc, jr_005_716f

    dec e
    ld a, [de]
    inc a
    ld [de], a

jr_005_716f:
    call Call_005_72b5
    jr nz, jr_005_717c

    ld e, $05
    ld bc, $6f7c
    jp Jump_000_0846


jr_005_717c:
    call Call_000_2375
    call Call_000_2385
    call Call_005_72be
    and a
    ret z

    ld e, $05
    ld bc, $6f6d
    jp Jump_000_0846


    ret


    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    ld a, $00
    jr z, jr_005_719d

    ld a, $01

jr_005_719d:
    ld [de], a
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld e, $07
    ld a, [de]
    add $0d
    ld [de], a
    jr nc, jr_005_71b9

    inc e
    ld a, [de]
    inc a
    ld [de], a

jr_005_71b9:
    ld bc, $562b
    call Call_000_255b
    ret c

    ld e, $07
    ld a, [de]
    sub $0d
    ld [de], a
    jr nc, jr_005_71cc

    inc e
    ld a, [de]
    dec a
    ld [de], a

jr_005_71cc:
    call Call_005_72b5
    jr nz, jr_005_71d9

    ld e, $05
    ld bc, $6f7c
    jp Jump_000_0846


jr_005_71d9:
    call Call_000_2375
    call Call_000_2385
    ld bc, $5639
    call Call_000_24cd
    bit 7, a
    jr nz, jr_005_71f6

    call Call_005_72de
    and a
    ret nz

    ld e, $05
    ld bc, $6f41
    jp Jump_000_0846


jr_005_71f6:
    ld e, $05
    ld bc, $6f6d
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $561d
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_2385
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_7228

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6f97
    jp Jump_000_0846


jr_005_7228:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    ld a, $00
    jr z, jr_005_723c

    ld a, $01

jr_005_723c:
    ld [de], a
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld bc, $561d
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_2385
    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6fa1
    jp Jump_000_0846


    ld e, $10
    ld a, [de]
    bit 7, a
    ld e, $15
    xor a
    jr z, jr_005_7277

    inc a

jr_005_7277:
    ld [de], a
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $562b
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_2385
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $05
    ld bc, $6f97
    jp Jump_000_0846


    ld hl, $dd2d
    ld [hl], $00
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, e
    ld [hl], d
    ld l, $5b
    ld e, l
    ld a, [hl]
    ld [de], a
    ld l, $5c
    ld e, l
    ld a, [hl]
    ld [de], a
    ld l, $45
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


Call_005_72b5:
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $4c
    ld a, [hl]
    and a
    ret


Call_005_72be:
    ld e, $48
    ld a, [de]
    ld h, a
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
    sub $0f
    ld [de], a
    inc e
    ld a, [hl]
    sbc $00
    ld [de], a
    ld l, $3f
    ld a, [hl]
    ret


Call_005_72de:
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $03
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $45
    ld l, e
    ld a, [hl]
    ld [de], a
    ld l, $3f
    ld a, [hl]
    ret


    rla
    rst $38
    dec c
    daa
    jr @+$0f

    add b
    rra
    ld de, $736d
    ld b, $0f
    ld [hl], e
    inc bc
    ld de, $457b
    jr jr_005_7319

    ld [de], a
    nop
    add hl, de
    ld [bc], a
    inc b
    inc bc
    and b
    ld a, d
    ld b, l
    jr jr_005_7324

    ld b, b
    nop
    rrca
    ccf

jr_005_7319:
    nop
    dec c
    cp [hl]
    inc hl
    xor a

jr_005_731e:
    ld d, [hl]
    add hl, de
    nop
    db $10
    dec c
    ld [hl+], a

jr_005_7324:
    ld a, [hl]
    ld [de], a
    adc l
    ld [hl], e
    rrca
    ccf
    ld [$be0d], sp
    inc hl

jr_005_732e:
    or a
    ld d, [hl]
    add hl, de
    ld bc, $0d10
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    adc l
    ld [hl], e
    inc bc
    pop bc
    ld a, e
    ld b, l
    jr @+$12

    ld e, h
    ld [de], a
    ld e, b
    ld [hl], e
    add hl, de
    nop
    inc c
    add hl, de
    ld bc, $0d04
    ld sp, hl
    ld e, $19
    ld bc, $0d04
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    adc l
    ld [hl], e
    ld b, $0f
    ld [hl], e
    add hl, de
    nop
    ld [$0119], sp
    ld [bc], a
    dec c
    ld sp, hl
    ld e, $19
    ld bc, $0d02
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    adc l
    ld [hl], e
    ld b, $0f
    ld [hl], e
    daa
    rrca
    ld h, b
    ld [$5f0d], sp
    jr nz, jr_005_731e

    ld d, [hl]
    inc bc
    ld [de], a
    ld a, d
    ld b, l
    ld bc, $0002
    daa
    rrca
    ld h, b
    ld [$5f0d], sp
    jr nz, jr_005_732e

    ld d, [hl]
    inc bc
    ld e, c
    ld a, d
    ld b, l
    ld bc, $0003
    jr jr_005_739c

    ld e, h
    ld a, [hl]
    ld [de], a
    pop hl
    ld [hl], e
    inc bc
    jp hl


    ld a, e
    ld b, l
    jr @+$29

    rrca
    ld b, b

jr_005_739c:
    nop
    rrca
    ccf
    nop
    dec c
    cp [hl]
    inc hl
    cp a
    ld d, [hl]
    add hl, de
    nop
    inc c
    dec c
    ld [hl], $7e
    ld [de], a
    pop hl
    ld [hl], e
    rrca
    ccf
    ld [$be0d], sp
    inc hl
    rst $00
    ld d, [hl]
    add hl, de
    ld bc, $060c
    pop hl
    ld [hl], e
    inc bc
    ld e, d
    ld a, h
    ld b, l
    jr jr_005_73e9

    rrca
    ld b, b
    nop
    rrca
    ccf
    nop
    rrca
    ld a, $00
    dec c
    cp [hl]
    inc hl
    rst $08
    ld d, [hl]
    add hl, de
    nop
    inc c
    rrca
    ccf
    ld [$be0d], sp
    inc hl
    rst $10
    ld d, [hl]
    add hl, de
    ld bc, $060c
    pop hl
    ld [hl], e
    db $10
    ld e, e
    ld c, $03
    db $eb
    ld [hl], e
    ld a, h
    ld [hl], l

jr_005_73e9:
    ld h, l
    ld a, b
    inc bc
    ld [hl-], a
    ld a, l
    ld b, l
    daa
    dec c
    bit 7, [hl]
    ld c, $04
    db $fd
    ld [hl], e
    dec [hl]
    ld [hl], h
    ld l, d
    ld [hl], h
    cp b
    ld [hl], h
    add hl, de
    ld bc, $1902
    ld [bc], a
    db $10
    db $10
    ld e, h
    ld [de], a
    dec bc
    ld [hl], h
    add hl, de
    ld [bc], a
    ld [$3a24], sp
    dec c
    ld d, b
    rrca
    ld c, b
    xor b
    or d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [$5c10], sp
    ld [de], a
    inc h
    ld [hl], h
    add hl, de
    dec b
    inc b
    add hl, de
    rlca
    inc b
    add hl, de
    nop
    db $10
    db $10
    ld e, h
    ld [de], a
    ld [hl-], a
    ld [hl], h
    add hl, de
    nop
    db $10
    ld b, $f8
    ld a, b
    add hl, de
    rlca
    inc b
    add hl, de
    dec b
    db $10
    db $10
    ld e, h
    ld [de], a
    ld b, e
    ld [hl], h
    add hl, de
    dec b
    ld [$3a24], sp
    dec c
    ld d, b
    rrca
    ld c, b
    xor b
    or d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [$5c10], sp
    ld [de], a
    ld e, h
    ld [hl], h
    add hl, de
    ld [bc], a
    ld [$0019], sp
    db $10
    db $10
    ld e, h
    ld [de], a
    ld h, a
    ld [hl], h
    add hl, de
    nop
    db $10
    ld b, $f8
    ld a, b
    add hl, de
    ld bc, $1904
    ld [bc], a
    db $10
    db $10
    ld e, h
    ld [de], a
    ld a, b
    ld [hl], h
    add hl, de
    ld [bc], a
    ld [$3a24], sp
    dec c
    ld d, b
    rrca
    ld c, b
    xor b
    or d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    inc b
    db $10
    ld e, h
    ld [de], a
    sub c
    ld [hl], h
    add hl, de
    dec b
    inc b
    inc h
    ld a, [hl-]
    dec c
    ld d, b
    rrca
    ld c, b
    xor b
    or d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [$5c10], sp
    ld [de], a
    xor d
    ld [hl], h
    add hl, de
    ld [bc], a
    ld [$0019], sp
    inc c
    db $10
    ld e, h
    ld [de], a
    or l
    ld [hl], h
    add hl, de
    nop

jr_005_74b4:
    inc c
    ld b, $f8
    ld a, b
    add hl, de
    rlca
    inc b
    add hl, de
    dec b
    ld [$5c10], sp
    ld [de], a
    add $74
    add hl, de
    dec b
    ld [$4d03], sp
    ld a, l
    ld b, l
    jr jr_005_74d9

    sub b
    jr nz, jr_005_74b4

    ld d, [hl]
    ld a, [hl+]
    db $10
    add hl, bc
    ld [bc], a
    inc h
    ld a, [hl-]
    dec c
    ld d, b
    rrca

jr_005_74d9:
    ld c, b
    xor b
    or d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld [bc], a
    jr jr_005_74f7

    ld e, h
    ld de, $74ee
    add hl, de
    ld [bc], a
    ld [$0209], sp
    db $10
    ld b, l
    inc h
    ld a, [hl-]
    dec c
    ld d, b
    rrca

jr_005_74f7:
    ld c, b
    xor b
    or d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    ld bc, $0005
    jr jr_005_7509

    ld [hl-], a
    ld a, l
    ld b, l

jr_005_7509:
    add hl, de
    nop
    db $10
    db $10
    ld e, h
    ld de, $7514
    add hl, de
    nop
    db $10
    ld b, $f8
    ld a, b
    jr jr_005_751c

    ld [hl-], a
    ld a, l
    ld b, l

jr_005_751c:
    add hl, de
    rlca
    ld bc, $0519
    ld bc, $5c10
    ld [de], a
    ld a, [hl+]
    ld [hl], l
    add hl, de
    dec b
    ld bc, $0309
    inc h
    ld a, [hl-]
    dec c
    ld d, b
    rrca
    ld c, b
    xor b
    or d
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld b, $10
    ld e, h
    ld [de], a
    ld b, [hl]
    ld [hl], l
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    nop
    ld [$5c10], sp
    ld [de], a
    ld d, c
    ld [hl], l
    add hl, de
    nop
    ld [$0f06], sp
    ld [hl], e
    rla
    rst $38
    dec c
    dec c
    ld sp, hl
    rra
    dec c
    sbc a
    ld [hl], d
    dec c
    inc h
    ld a, a
    rrca
    ld h, b
    ccf
    rrca
    ld h, c
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp
    inc c
    rrca
    ld c, h
    ld bc, $7404
    ld d, e
    db $10
    ld bc, $03ff
    ret


    ld a, l
    ld b, l
    dec b
    ld [$0316], sp
    rst $28
    ld a, h
    ld b, l
    daa
    jr jr_005_7590

    bit 7, [hl]
    ld c, $04
    adc a
    ld [hl], l
    jp c, $2b75

    halt
    and [hl]
    halt
    db $10

jr_005_7590:
    ld e, h
    ld [de], a
    or a
    ld [hl], l
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    jr jr_005_75b4

    inc bc
    inc b
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, c
    xor b
    or d
    add hl, de
    inc b
    ld b, b
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    jr jr_005_75c8

    inc bc
    inc b
    add hl, de
    nop
    db $10

jr_005_75b4:
    ld b, $f8
    ld a, b
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    db $10
    add hl, de
    inc bc
    ld [bc], a
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, c
    xor b
    or d

jr_005_75c8:
    add hl, de
    inc b
    ld b, b
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    db $10
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    nop
    ld [$f806], sp
    ld a, b
    db $10
    ld e, h
    ld [de], a
    dec b
    halt
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    jr @+$1b

    inc bc
    ld [bc], a
    add hl, de
    ld b, $20
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, d
    xor b
    or d
    add hl, de
    inc b
    ld b, b
    add hl, de
    ld b, $02
    add hl, de
    dec b
    inc b
    add hl, de
    ld bc, $1902
    nop
    db $10
    ld b, $f8
    ld a, b
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    db $10
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld b, $20
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, d
    xor b
    or d
    add hl, de
    inc b
    jr nc, @+$1b

    ld b, $02
    add hl, de
    dec b
    inc b
    add hl, de
    ld bc, $1902
    nop
    ld [$f806], sp
    ld a, b
    db $10
    ld e, h
    ld [de], a
    ld l, e
    halt
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $0d04
    ld sp, hl
    ld e, $19
    ld bc, $1902
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    jr jr_005_765c

    inc bc
    inc b
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, e
    xor b
    or d
    add hl, de
    inc b
    ld b, b
    add hl, de
    ld b, $02
    add hl, de
    dec b
    inc b
    add hl, de
    ld bc, $1902
    nop
    db $10

jr_005_765c:
    add hl, de
    ld bc, $0d02
    ld sp, hl
    ld e, $19
    nop
    db $10
    add hl, de
    ld bc, $0602
    ld hl, sp+$78
    add hl, de
    nop
    ld [$0119], sp
    ld [bc], a
    dec c
    ld sp, hl
    ld e, $19
    ld bc, $1902
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    db $10
    add hl, de
    inc bc
    ld [bc], a
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, e
    xor b
    or d
    add hl, de
    inc b
    ld b, b
    add hl, de
    ld b, $02
    add hl, de
    dec b
    inc b
    add hl, de
    ld bc, $1902
    nop
    ld [$0119], sp
    ld [bc], a
    dec c
    ld sp, hl
    ld e, $19
    nop
    db $10
    add hl, de
    ld bc, $0602
    ld hl, sp+$78
    db $10
    ld e, h
    ld [de], a
    jp hl


    halt
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $1808
    inc bc
    ld a, [bc]
    ld a, l
    ld b, l
    dec c
    sub b
    jr nz, @-$15

    ld d, [hl]
    ld a, [hl+]
    db $10
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld e, $18
    inc bc
    dec hl
    ld a, l
    ld b, l
    add hl, de
    inc bc
    inc b
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, h
    xor b
    or d
    inc bc
    ld a, [bc]
    ld a, l
    ld b, l
    add hl, de
    inc b
    jr nz, jr_005_76f4

    ld b, $02
    add hl, de
    dec b
    inc b
    add hl, de

jr_005_76e1:
    ld bc, $1902
    nop
    db $10
    ld b, $f8
    ld a, b
    add hl, de
    nop
    ld [$0119], sp
    ld [$0318], sp
    ld a, [bc]
    ld a, l
    ld b, l

jr_005_76f4:
    dec c
    sub b
    jr nz, jr_005_76e1

    ld d, [hl]
    ld a, [hl+]
    db $10
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld h, $18
    inc bc
    dec hl
    ld a, l
    ld b, l
    add hl, de
    inc bc
    ld [bc], a
    inc h
    ccf
    dec c
    ld d, b
    rrca
    ld c, h
    xor b
    or d
    inc bc
    ld a, [bc]
    ld a, l
    ld b, l
    add hl, de
    inc b
    jr z, jr_005_771c

    ld de, $457b

jr_005_771c:
    add hl, de
    ld b, $02
    add hl, de
    dec b
    inc b
    add hl, de
    ld bc, $1902
    nop
    ld [$f806], sp
    ld a, b
    dec c
    ld sp, hl
    rra
    dec c
    sbc a
    ld [hl], d
    dec c
    and b
    ld a, [hl]
    dec c
    ld c, c
    ld a, a
    rla
    rst $38
    dec c
    rrca
    ld h, b
    ld [$610f], sp
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp
    ld [$4c0f], sp
    ld bc, $f404
    ld d, e
    db $10
    inc bc
    rst $18
    ld a, l
    ld b, l
    ld a, [hl+]
    ld a, [$d30d]
    jr nz, @-$11

    ld d, [hl]
    dec c
    dec d
    ld hl, $56f1
    add hl, bc
    ld [$0719], sp
    ld [bc], a
    add hl, de
    ld [$0a02], sp
    jr @+$2c

    nop
    add hl, bc
    ld [$0719], sp
    ld [bc], a
    add hl, de
    ld [$0a02], sp
    ld d, $0d
    ld sp, hl
    rra
    dec c
    sbc a
    ld [hl], d
    dec c
    and b
    ld a, [hl]
    dec c
    ld c, c
    ld a, a
    rla
    rst $38
    dec c
    rrca
    ld h, b
    ld [$610f], sp
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp
    ld [$4c0f], sp

jr_005_7790:
    ld bc, $f404
    ld d, e
    db $10
    inc bc
    rst $28
    ld a, l
    ld b, l

jr_005_7799:
    dec c
    db $d3
    jr nz, jr_005_7790

    ld d, [hl]
    dec c
    ld e, a
    jr nz, jr_005_7799

    ld d, [hl]
    dec c

jr_005_77a4:
    sub b
    jr nz, jr_005_77a4

    ld d, [hl]
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$0602], sp
    xor b
    ld [hl], a
    inc bc
    rst $38
    ld a, l
    ld b, l
    dec c
    db $d3
    jr nz, jr_005_77ba

    ld d, a

jr_005_77ba:
    dec c
    ld e, a
    jr nz, jr_005_77c3

    ld d, a
    dec c
    sub b
    jr nz, jr_005_77ce

jr_005_77c3:
    ld d, a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$0602], sp
    call nz, Call_000_0d77

jr_005_77ce:
    ld sp, hl
    rra
    dec c
    sbc a
    ld [hl], d
    dec c
    and b
    ld a, [hl]
    dec c
    ld c, c
    ld a, a
    rla
    rst $38
    dec c
    rrca
    ld h, b
    ld [$610f], sp
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp
    ld [$4c0f], sp
    ld bc, $f404
    ld d, e
    db $10
    inc bc
    rst $18
    ld a, l
    ld b, l
    dec c
    db $d3
    jr nz, @+$11

    ld d, a
    dec c
    dec d
    ld hl, $5713
    dec c
    sub b
    jr nz, @+$17

    ld d, a
    ld a, [hl+]
    ld hl, sp+$09
    ld [$0719], sp
    ld [bc], a
    add hl, de
    ld [$0a02], sp
    add hl, hl
    nop
    add hl, bc
    inc b
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$0a02], sp
    ld a, [hl+]
    nop
    add hl, bc
    inc b
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    ld [$0a02], sp
    ld b, $83
    ld h, a
    dec c
    ld sp, hl
    rra
    dec c
    sbc a
    ld [hl], d
    dec c
    and b
    ld a, [hl]
    dec c
    ld c, c
    ld a, a
    rla
    rst $38
    dec c
    dec c
    ld c, c
    ld a, a
    rrca
    ld h, b
    ld [$610f], sp
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp
    ld [$4c0f], sp
    ld bc, $f404
    ld d, e
    db $10
    inc bc
    rst $18
    ld a, l
    ld b, l
    dec c
    db $d3
    jr nz, jr_005_786c

    ld d, a
    dec c
    dec d
    ld hl, $571d
    add hl, bc
    ld [$0719], sp
    ld [bc], a
    add hl, de
    ld [$0a02], sp
    ld b, $83
    ld h, a
    inc bc
    rst $08
    ld a, h
    ld b, l
    daa
    rrca
    ld b, h

jr_005_786c:
    nop
    jr jr_005_7888

    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    inc b
    add hl, de
    ld [bc], a
    db $10
    dec c
    ld d, b
    rrca
    ld b, e
    xor b
    or d
    dec c
    inc bc
    jr nz, @+$0b

    ld [bc], a
    add hl, de
    inc b
    ld a, [bc]
    add hl, de
    dec b
    inc bc

jr_005_7888:
    add hl, de
    ld b, $03
    add hl, de
    rlca
    ld a, [bc]
    add hl, de
    ld b, $03
    add hl, de
    dec b
    inc bc
    ld a, [bc]
    db $10
    ld e, h
    ld [de], a
    xor h
    ld a, b
    add hl, de
    inc b
    ld a, [bc]
    add hl, de
    dec b
    inc bc
    add hl, de
    ld b, $03
    add hl, de
    rlca
    ld a, [bc]
    add hl, de
    ld b, $03
    add hl, de
    dec b
    inc bc
    dec c
    ld l, a
    ld a, [hl]
    ld [de], a
    cp b
    ld a, b
    add hl, de
    ld [$0640], sp
    sbc $78
    add hl, de
    ld [$1920], sp
    rlca
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [$0519], sp
    inc e
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    ld [bc], a

jr_005_78d0:
    add hl, de
    ld [bc], a
    db $10
    db $10
    ld e, h
    ld [de], a
    ld hl, sp+$78
    add hl, de
    ld [bc], a
    db $10
    ld b, $f8
    ld a, b
    inc bc
    ld l, [hl]
    ld a, l
    ld b, l
    rrca
    ld a, $00
    jr jr_005_7910

    nop
    dec c
    dec d
    ld hl, $56e3
    dec c
    db $d3
    jr nz, jr_005_78d0

    ld d, [hl]
    add hl, de
    ld bc, $1904
    nop
    inc b
    jr @+$29

    dec c
    ld c, b
    ld a, [hl]
    ld [de], a
    rrca
    ld [hl], e
    dec c
    or a
    ld a, [hl]
    ld de, $7394
    ld b, $bc
    ld [hl], e
    dec c
    ld sp, hl
    rra
    dec c
    sbc a
    ld [hl], d
    dec c

jr_005_7910:
    xor d
    ld a, [hl]
    rla
    rst $38
    dec c
    rrca
    ld h, b
    ccf
    rrca
    ld h, c
    nop
    rrca
    ld e, [hl]
    ld [$5f0f], sp
    ld [$4c0f], sp
    ld bc, $7b04
    ld d, h
    db $10
    ld bc, $030a
    and e
    ld a, l
    ld b, l
    jr jr_005_795a

    nop
    dec c
    db $d3
    jr nz, jr_005_7954

    ld d, a
    dec c
    dec d
    ld hl, $5723
    inc h
    inc hl
    dec b
    db $10
    dec c
    and d
    ld l, d
    inc h
    inc hl
    dec b
    db $10
    dec c
    and d
    ld l, d
    inc h
    inc hl
    dec b
    db $10
    dec c
    and d
    ld l, d
    inc h
    inc hl
    dec b
    db $10

jr_005_7954:
    db $10
    ld e, h
    ld [de], a
    ld h, a
    ld a, c
    dec c

jr_005_795a:
    and d
    ld l, d
    inc h
    inc hl
    dec b
    db $10
    dec c
    and d
    ld l, d
    inc h
    inc hl
    dec b
    db $10
    inc h
    ld [hl], $0d
    sub [hl]
    ld a, [hl]
    ld [de], a
    sub h
    ld a, c
    jr @+$2b

    nop
    dec c
    db $d3
    jr nz, jr_005_799b

    ld d, a
    dec c
    ld e, a
    jr nz, jr_005_79a6

    ld d, a
    dec c
    sub b
    jr nz, @+$33

    ld d, a
    dec b
    db $10
    ld a, [hl+]
    nop
    ld [$0000], sp
    dec c
    dec d
    ld hl, $5729
    dec b
    jr nz, jr_005_79b9

    nop
    dec b
    db $10
    ld d, $18
    add hl, hl
    nop
    dec c
    db $d3
    jr nz, jr_005_79d0

jr_005_799b:
    ld d, a
    dec c
    ld e, a
    jr nz, jr_005_79db

    ld d, a
    dec c
    sub b
    jr nz, jr_005_79e6

    ld d, a

jr_005_79a6:
    dec b
    db $10
    ld a, [hl+]
    nop
    ld [$0000], sp
    dec c
    dec d
    ld hl, $5739
    dec b
    db $10
    dec c
    ld e, a
    jr nz, jr_005_79fd

    ld d, a

jr_005_79b9:
    dec c
    sub b
    jr nz, jr_005_7a08

    ld d, a
    dec b
    db $10
    add hl, hl
    nop
    dec b
    db $10
    ld a, [hl+]
    nop
    rlca
    nop
    nop
    dec c
    sub b
    jr nz, @+$51

    ld d, a
    dec b
    ld a, [bc]

jr_005_79d0:
    ld d, $03
    ld e, e
    ld a, e
    ld b, l
    ld b, $dc
    ld a, c
    inc bc
    add e
    ld a, e

jr_005_79db:
    ld b, l
    db $10
    ld e, e
    ld c, $03
    and $79
    rst $28
    ld a, c
    ld hl, sp+$79

jr_005_79e6:
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld b, $e6
    ld a, c
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    ld b, $ef
    ld a, c
    add hl, de
    ld bc, $1902
    add hl, bc

jr_005_79fd:
    ld [bc], a
    ld b, $f8
    ld a, c
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop

jr_005_7a08:
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    ld [bc], a
    ld d, $62
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_7a46

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_005_7a4d

    ld e, $05
    ld bc, $730f
    jp Jump_000_0846


jr_005_7a46:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_7a4d:
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $79d8
    jp Jump_000_0846


    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d35
    call Call_000_0da4
    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_7a8d

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_005_7a94

    ld e, $05
    ld bc, $7304
    jp Jump_000_0846


jr_005_7a8d:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_7a94:
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $79d8
    jp Jump_000_0846


    call Call_000_2235
    ld e, $40
    ld [de], a
    ld e, $3f
    ld a, [de]
    ld hl, $56af
    add l
    jr nc, jr_005_7ab0

    inc h

jr_005_7ab0:
    ld l, a
    call Call_000_23ca
    call Call_000_0da4
    ld bc, $567f
    call Call_000_255b
    ret c

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_7ae0

    call Call_005_7f6e
    jr nc, jr_005_7ae0

    ld l, $5a
    ld a, [hl]
    ld e, $44
    cp $01
    jr nz, jr_005_7ad6

    ld a, $01
    jr jr_005_7ad7

jr_005_7ad6:
    xor a

jr_005_7ad7:
    ld [de], a
    ld e, $05
    ld bc, $7517
    jp Jump_000_0846


jr_005_7ae0:
    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 4, a
    jr nz, jr_005_7afd

    bit 5, a
    jr nz, jr_005_7afd

    bit 7, a
    jr nz, jr_005_7b05

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


jr_005_7afd:
    ld e, $05
    ld bc, $7339
    jp Jump_000_0846


jr_005_7b05:
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $79d1
    jp Jump_000_0846


    ld bc, $567f
    call Call_000_255b
    ret c

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_7b3a

    call Call_005_7f6e
    jr nc, jr_005_7b3a

    ld l, $5a
    ld a, [hl]
    ld e, $44
    cp $01
    jr nz, jr_005_7b30

    ld a, $01
    jr jr_005_7b31

jr_005_7b30:
    xor a

jr_005_7b31:
    ld [de], a
    ld e, $05
    ld bc, $7517
    jp Jump_000_0846


jr_005_7b3a:
    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    jr nz, jr_005_7b4f

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


jr_005_7b4f:
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $79d1
    jp Jump_000_0846


    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    jr nz, jr_005_7b77

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


jr_005_7b77:
    call Call_000_1f0d
    ret nz

    ld e, $05
    ld bc, $730f
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 6, a
    jr nz, jr_005_7bae

    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_005_7bb5

    ld e, $05
    ld bc, $730f
    jp Jump_000_0846


jr_005_7bae:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


jr_005_7bb5:
    call Call_000_1f0d
    ret nz

    ld e, $05
    ld bc, $7376
    jp Jump_000_0846


    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    jr nz, jr_005_7bdd

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


jr_005_7bdd:
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $79d1
    jp Jump_000_0846


    call Call_000_2235
    ld e, $40
    ld [de], a
    ld e, $3f
    ld a, [de]
    ld hl, $56bf
    add l
    jr nc, jr_005_7bf9

    inc h

jr_005_7bf9:
    ld l, a
    call Call_000_23ca
    call Call_000_0da4
    ld bc, $567f
    call Call_000_255b
    ret c

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_7c29

    call Call_005_7f6e
    jr nc, jr_005_7c29

    ld l, $5a
    ld a, [hl]
    ld e, $44
    cp $01
    jr nz, jr_005_7c1f

    ld a, $01
    jr jr_005_7c20

jr_005_7c1f:
    xor a

jr_005_7c20:
    ld [de], a
    ld e, $05
    ld bc, $7517
    jp Jump_000_0846


jr_005_7c29:
    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 4, a
    jr nz, jr_005_7c46

    bit 5, a
    jr nz, jr_005_7c46

    bit 7, a
    jr nz, jr_005_7c4e

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


jr_005_7c46:
    ld e, $05
    ld bc, $73bc
    jp Jump_000_0846


jr_005_7c4e:
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $79d1
    jp Jump_000_0846


    call Call_000_2235
    ld e, $40
    ld [de], a
    ld e, $3f
    ld a, [de]
    ld hl, $56cf
    add l
    jr nc, jr_005_7c6a

    inc h

jr_005_7c6a:
    ld l, a
    call Call_000_23ca
    ld e, $3e
    ld a, [de]
    and a
    jr nz, jr_005_7c77

    call Call_000_0da4

jr_005_7c77:
    ld bc, $567f
    call Call_000_255b
    ret c

    ld e, $5b
    ld a, [de]
    and a
    jr nz, jr_005_7ca0

    call Call_005_7f6e
    jr nc, jr_005_7ca0

    ld l, $5a
    ld a, [hl]
    ld e, $44
    cp $01
    jr nz, jr_005_7c96

    ld a, $01
    jr jr_005_7c97

jr_005_7c96:
    xor a

jr_005_7c97:
    ld [de], a
    ld e, $05
    ld bc, $7517
    jp Jump_000_0846


jr_005_7ca0:
    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 4, a
    jr nz, jr_005_7cbd

    bit 5, a
    jr nz, jr_005_7cbd

    bit 7, a
    jr nz, jr_005_7cc3

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


jr_005_7cbd:
    ld e, $3e
    ld a, $01
    ld [de], a
    ret


jr_005_7cc3:
    call Call_000_1f0d
    ret z

    ld e, $05
    ld bc, $79d1
    jp Jump_000_0846


    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    ret nz

    ld e, $44
    ld a, $01
    ld [de], a
    ld e, $05
    ld bc, $737d
    jp Jump_000_0846


    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    ret nz

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $05
    ld bc, $7718
    jp Jump_000_0846


    ld bc, $567f
    call Call_000_255b
    ret


    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 7, a
    ret nz

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $05
    ld bc, $7504
    jp Jump_000_0846


    ld e, $3e
    ld a, [de]
    and a
    jr nz, jr_005_7d7a

    call Call_000_0c80
    call Call_000_0da4

jr_005_7d7a:
    ld bc, $567f
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19f3
    bit 4, a
    jr nz, jr_005_7d9d

    bit 5, a
    jr nz, jr_005_7d9d

    bit 7, a
    ret nz

    ld e, $05
    ld bc, $736d
    jp Jump_000_0846


jr_005_7d9d:
    ld e, $3e
    ld a, $01
    ld [de], a
    ret


    call Call_000_0c91
    call Call_000_0c80
    call Call_000_0da4
    ld bc, $568d
    call Call_000_255b
    ret c

    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $44
    ld a, [hl]
    and a
    jr nz, jr_005_7dc1

    call Call_005_72b5
    ret nz

jr_005_7dc1:
    ld e, $05
    ld bc, $5c14
    jp Jump_000_0846


    call Call_005_7f6e
    ld l, $5a
    ld a, [hl]
    cp $00
    jr nz, jr_005_7dd8

    ld e, $60
    ld a, $3f
    ld [de], a

jr_005_7dd8:
    ld bc, $568d
    call Call_000_255b
    ret


    call Call_000_0c91
    call Call_000_0c80
    call Call_000_0da4
    ld bc, $569b
    call Call_000_255b
    ret


    call Call_000_0c91
    call Call_000_0c80
    call Call_000_0da4
    ld bc, $569b
    call Call_000_255b
    ret


    call Call_000_0c91
    call Call_000_0c80
    call Call_000_0da4
    ld bc, $568d
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    ret z

    ld e, $05
    ld bc, $6783
    jp Jump_000_0846


    push bc
    ld b, $40
    ld c, $48
    call Call_000_1f14
    pop bc
    ld e, $27
    jr c, jr_005_7e32

    xor a
    ld [de], a
    ret


jr_005_7e32:
    ld a, $01
    ld [de], a
    ret


    push bc
    ld b, $30
    call Call_000_1f14
    pop bc
    ld e, $27
    jr c, jr_005_7e44

    xor a
    ld [de], a
    ret


jr_005_7e44:
    ld a, $01
    ld [de], a
    ret


    push bc
    ld b, $40
    ld c, $28
    call Call_000_1f14
    pop bc
    ld e, $27
    jr nc, jr_005_7e58

    xor a
    ld [de], a
    ret


jr_005_7e58:
    ld a, $01
    ld [de], a
    ret


    push bc
    ld b, $34
    call Call_005_5b4c
    pop bc
    ld e, $27
    jr nc, jr_005_7e6b

    ld a, $01
    ld [de], a
    ret


jr_005_7e6b:
    ld a, $00
    ld [de], a
    ret


    push bc
    push de
    call Call_000_0647
    pop de
    cp $40
    jr c, jr_005_7e82

    ld b, $20
    call Call_005_5b11
    jr c, jr_005_7e90

    jr jr_005_7e89

jr_005_7e82:
    ld b, $20
    call Call_005_5b11
    jr nc, jr_005_7e90

jr_005_7e89:
    ld e, $27
    ld a, $01
    ld [de], a
    pop bc
    ret


jr_005_7e90:
    ld e, $27
    xor a
    ld [de], a
    pop bc
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $27
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    ld e, $07
    ld a, [de]
    sub $14
    ld [de], a
    jr nc, jr_005_7eb6

    inc e
    ld a, [de]
    dec a
    ld [de], a

jr_005_7eb6:
    ret


    push bc
    ld b, $20
    call Call_005_5b4c
    pop bc
    jr nc, jr_005_7ec6

    ld e, $27
    ld a, $01
    ld [de], a
    ret


jr_005_7ec6:
    ld e, $27
    xor a
    ld [de], a
    ret


    push bc
    push de
    ld e, $07
    ld l, e
    ld h, $a0
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    pop de
    jr c, jr_005_7f04

    ld a, c
    cp $10
    jr c, jr_005_7f04

    ld e, $5c
    ld a, [de]
    and a
    jr nz, jr_005_7ef6

    call Call_000_0647
    cp $80
    jr nc, jr_005_7f04

    jr jr_005_7efd

jr_005_7ef6:
    call Call_000_0647
    cp $c0
    jr nc, jr_005_7f04

jr_005_7efd:
    ld e, $27
    ld a, $03
    ld [de], a
    pop bc
    ret


jr_005_7f04:
    call Call_000_0647
    cp $40
    jr c, jr_005_7f1d

    cp $a0
    jr c, jr_005_7f16

    ld e, $27
    ld a, $00
    ld [de], a
    pop bc
    ret


jr_005_7f16:
    ld e, $27
    ld a, $01
    ld [de], a
    pop bc
    ret


jr_005_7f1d:
    ld e, $27
    ld a, $02
    ld [de], a
    pop bc
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    ld a, [hl]
    bit 7, a
    jr nz, jr_005_7f3c

    ld e, $04
    ld a, [de]
    add $10
    ld [de], a
    jr nc, jr_005_7f3b

    inc e
    ld a, [de]
    inc a
    ld [de], a

jr_005_7f3b:
    ret


jr_005_7f3c:
    ld e, $04
    ld a, [de]
    sub $10
    ld [de], a
    jr nc, jr_005_7f48

    inc e
    ld a, [de]
    dec a
    ld [de], a

jr_005_7f48:
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    ld a, [hl]
    bit 7, a
    jr nz, jr_005_7f61

    ld e, $04
    ld a, [de]
    add $10
    ld [de], a
    jr nc, jr_005_7f60

    inc e
    ld a, [de]
    inc a
    ld [de], a

jr_005_7f60:
    ret


jr_005_7f61:
    ld e, $04
    ld a, [de]
    sub $10
    ld [de], a
    jr nc, jr_005_7f6d

    inc e
    ld a, [de]
    dec a
    ld [de], a

jr_005_7f6d:
    ret


Call_005_7f6e:
    ld h, $a5
    ld c, $03

jr_005_7f72:
    push bc
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_005_7f95

    ld l, $4c
    ld a, [hl]
    or a
    jr z, jr_005_7f95

    ld e, $04
    ld b, $30
    call Call_000_1f9e
    jr nc, jr_005_7f95

    ld e, $07
    ld b, $20
    call Call_000_1f9e
    jr nc, jr_005_7f95

    pop bc
    scf
    ret


jr_005_7f95:
    pop bc
    dec c
    ret z

    inc h
    jr jr_005_7f72

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    jr nz, jr_005_7fa3

jr_005_7fa3:
    ld [$0000], sp
    jr nz, jr_005_7fa8

jr_005_7fa8:
    inc b
    inc b
    nop
    add b
    stop
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
    ld b, b
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
    rst $30
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
    and b
    nop
    add b
    add b
    ld [$0000], sp
    ld l, b
    inc b
    nop
    nop
    ld [bc], a
    ld b, b
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
