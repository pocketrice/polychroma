; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    dec b
    ld [bc], a
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
    ld [hl-], a
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

    db $60, $00, $00, $ff, $00, $10, $80, $01

    ld h, b
    nop
    add b
    cp $0a
    db $20, $80
    ld bc, $0000
    nop
    rst $38
    nop
    db $10
    add b
    ld bc, $0060
    nop
    rst $38
    nop
    db $10
    add b
    ld bc, $0060
    add b
    cp $0a
    db $20, $80
    ld bc, $0000
    nop
    rst $38
    nop
    db $10
    add b
    ld bc, $7030
    ret nc

    ld h, b
    jr nc, @+$72

    ret nc

    ld h, b

    db $f0, $04, $08, $08

    ldh a, [rDIV]
    ld [$0008], sp
    inc b
    ld [$f008], sp
    inc b
    ld [$f008], sp
    inc b
    ld [$0008], sp
    inc b
    ld [$0608], sp
    inc d
    ld [$0602], sp
    inc d
    db $08
    ld [bc], a

    db $10, $80, $01

    db $10
    add b
    db $01

    db $fa, $00, $06, $00, $00, $fc, $00, $04, $fc, $fd, $fc, $03, $04, $fd, $04, $03
    db $00, $00, $00, $fd, $25, $01, $3b, $fd, $1f, $02, $e1, $fd, $c5, $02, $db, $fe
    db $00, $03, $00, $00, $c5, $02, $25, $01, $1f, $02, $1f, $02, $25, $01, $c5, $02
    db $00, $00, $00, $03, $db, $fe, $c5, $02, $e1, $fd, $1f, $02, $3b, $fd, $25, $01
    db $00, $fd, $00, $00, $3b, $fd, $db, $fe, $e1, $fd, $e1, $fd, $db, $fe, $3b, $fd
    db $17, $ff, $0d, $0f, $62, $05, $27, $0d, $80, $1f, $11, $9d, $41

    db $01
    db $01

    db $0f, $27, $00, $06, $ec, $40

    daa
    dec c
    ret


    ld b, e
    ld c, h
    ld b, b
    dec c
    ld e, $44
    inc d
    inc bc
    db $fa
    ld b, b

    db $0d, $8e, $43, $1c, $40, $01, $00, $03, $68, $42, $44, $24, $0d, $00

    jr jr_004_410b

    ld b, b
    nop
    inc bc
    ld b, d
    ld b, e
    ld b, h
    db $10
    ld e, h
    ld [de], a
    dec h
    ld b, c
    add hl, de
    nop
    inc c
    add hl, de

jr_004_410b:
    ld bc, $1908
    ld [bc], a
    ld [$0119], sp
    ld [$0019], sp
    inc c
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$0119], sp
    ld [$0319], sp
    ld [$4006], sp
    ld b, c
    add hl, de
    nop
    inc c
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$0119], sp
    ld [$0019], sp
    inc c
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$0119], sp
    ld [$0319], sp
    ld [$8922], sp
    ld b, c
    inc b
    ld bc, $1204
    ld l, c
    ld b, c
    add hl, bc
    inc d
    dec c
    ld d, b
    rrca
    db $10
    xor b
    or d
    dec b
    ld b, $0a
    add hl, de
    inc bc
    ld [$0119], sp
    ld [$0019], sp
    ld [$0119], sp
    ld [$0219], sp
    db $10
    add hl, de
    ld bc, $0608
    rst $18
    ld b, b
    add hl, bc
    inc d
    dec c
    ld d, b
    rrca
    db $10
    xor b
    or d
    dec b
    ld b, $0a
    add hl, de
    inc bc
    ld [$0119], sp
    ld [$0019], sp
    ld [$0119], sp
    ld [$0219], sp
    db $10
    add hl, de
    ld bc, $0608
    rst $18
    ld b, b
    rrca
    dec sp
    ld e, $0f
    ld b, a
    db $10
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    dec c
    and l
    ld b, h
    ld [de], a
    adc h
    ld b, c
    nop

    db $03, $ec, $42, $44, $0d, $42, $20, $74, $40, $01, $00, $00, $08, $00, $00, $2a
    db $00, $24, $0e, $03, $0d, $43, $44, $10, $5c, $12

    push bc
    ld b, c

    db $19, $01, $04, $19, $02, $08, $19, $01, $08, $06, $ce, $41

    add hl, de
    ld bc, $1904
    ld [bc], a
    ld [$0119], sp
    db $08

    db $28, $1a, $3f, $0d, $f4, $23, $dc, $41, $11, $d9, $40

    ld b, $fa
    ld b, b

    db $40

    ld h, b
    ld [$0000], sp
    ld a, [hl+]
    nop
    inc h
    ld c, $03
    dec c
    ld b, e
    ld b, h
    db $10
    ld e, h
    ld [de], a
    ld a, [$1941]
    ld bc, $1904
    ld [bc], a
    ld [$0119], sp
    ld [$df06], sp
    ld b, b
    add hl, de
    ld bc, $1904
    ld [bc], a
    ld [$0119], sp
    ld [$df06], sp
    ld b, b

    db $08, $00, $00, $0d, $e7, $43, $54, $40, $03, $9a, $42, $44, $24, $0e, $10, $5c
    db $12

    inc hl
    ld b, d

    db $19, $01, $04, $19, $02, $08, $19, $01, $08

    nop
    add hl, de
    ld bc, $1904
    ld [bc], a
    ld [$0119], sp
    ld [$0300], sp
    inc de
    ld b, e
    ld b, h
    dec c
    ld b, d
    jr nz, @+$76

    ld b, b
    ld bc, $0000
    rla
    rst $38
    dec c
    inc b
    ld l, d
    ld l, a
    inc c
    rrca
    ld c, h
    ld bc, $f90d
    rra
    rrca
    ld h, c
    nop
    dec c
    rrca
    jr nz, @+$04

    ld [bc], a
    ld [$520d], sp
    ld b, h
    inc bc
    add l
    ld b, e
    ld b, h
    inc h
    add hl, sp
    dec b
    ld bc, $0519
    ld [bc], a
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    db $16

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_004_4272

    dec a
    ld [de], a
    jr jr_004_4275

jr_004_4272:
    call Call_000_21eb

jr_004_4275:
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    jr nz, jr_004_4292

    bit 5, a
    ret z

    jp Jump_000_1ef9


jr_004_4292:
    ld e, $04
    ld bc, $4206
    jp Jump_000_0846


    ld e, $3f
    ld a, [de]
    cp $01
    jr nz, jr_004_42a4

    call Call_000_1ee6

jr_004_42a4:
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_19cb
    or a
    jr nz, jr_004_42c2

    ld e, $04
    ld bc, $422d
    jp Jump_000_0846


jr_004_42c2:
    bit 5, a
    jr z, jr_004_42cf

    call Call_000_1ef9
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_004_42cf:
    ld l, $26
    ld h, d
    dec [hl]
    ret nz

    ld e, $3f
    ld a, [de]
    cp $02
    jr z, jr_004_42e4

    inc a
    ld [de], a
    ld e, $3c
    add e
    ld e, a
    ld a, [de]
    ld [hl], a
    ret


jr_004_42e4:
    ld e, $04
    ld bc, $40df
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $04
    ld bc, $41a9
    jp Jump_000_0846


    ld bc, $4000
    jp Jump_000_255b


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    jr z, jr_004_4335

    ld e, $04
    ld bc, $41de
    jp Jump_000_0846


jr_004_4335:
    bit 5, a
    ret z

    call Call_000_1ef9
    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld bc, $4000
    call Call_000_255b
    ret c

    call Call_000_19cb
    or a
    ret nz

    ld hl, $4074
    call Call_000_2048
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $43
    inc l
    ld [hl], $60
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    ret c

    call Call_000_2385
    call Call_000_2375
    call Call_000_1a25
    bit 7, a
    ret z

    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $43
    inc l
    ld [hl], $42
    ret


    call Call_000_0da4
    ld bc, $400e
    jp Jump_000_255b


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
    rrca
    ld b, a
    ld e, $5c
    ld a, [de]
    or a
    jr z, jr_004_43a4

    ld a, $18

jr_004_43a4:
    add b
    add l
    ld l, a
    jr nc, jr_004_43aa

    inc h

jr_004_43aa:
    call Call_000_20f9
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $26
    ld a, [hl+]
    ld [de], a
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld e, $39
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    xor a
    ld e, $11
    ld [de], a
    pop bc
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_004_43d9

    inc h

jr_004_43d9:
    ld e, $3d
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


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld e, $27
    ld a, [de]
    rlca
    rlca
    ld b, a
    ld e, $5c
    ld a, [de]
    or a
    jr z, jr_004_43fc

    ld a, $0c

jr_004_43fc:
    add b
    add l
    ld l, a
    jr nc, jr_004_4402

    inc h

jr_004_4402:
    ld e, $45
    ld a, [de]
    rlca
    ld a, [hl+]
    jr nc, jr_004_440b

    cpl
    inc a

jr_004_440b:
    ld e, $11
    ld [de], a
    ld e, $26
    ld a, [hl+]
    ld [de], a
    ld e, $3d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    xor a
    inc e
    ld [de], a
    pop bc
    ret


    push bc
    ld e, $3d
    ld a, [de]
    ld b, a
    ld e, $04
    call Call_000_1f9c
    jr nc, jr_004_4437

    call Call_000_0647
    ld h, d
    ld l, $40
    cp [hl]
    jr nc, jr_004_4437

    ld a, $03
    jr jr_004_444d

jr_004_4437:
    call Call_000_0647
    ld h, d
    ld l, $3e
    cp [hl]
    jr nc, jr_004_4443

    xor a
    jr jr_004_444d

jr_004_4443:
    inc hl
    cp [hl]
    jr nc, jr_004_444b

    ld a, $01
    jr jr_004_444d

jr_004_444b:
    ld a, $02

jr_004_444d:
    ld e, $27
    ld [de], a
    pop bc
    ret


    push bc
    call Call_000_0647
    and $e0
    swap a
    ld hl, $407a
    add l
    ld l, a
    jr nc, jr_004_4462

    inc h

jr_004_4462:
    ld a, [hl+]
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $04
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ld a, [hl]
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $07
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    call Call_000_0647
    and $07
    add $04
    ld h, d
    ld l, $40
    add [hl]
    and $0f
    ld [hl], a
    rlca
    rlca
    ld hl, $408a
    add l
    ld l, a
    jr nc, jr_004_4496

    inc h

jr_004_4496:
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
    ld a, [hl]
    ld [de], a
    pop bc
    ret


    ld e, $3b
    ld a, [de]
    dec a
    ld [de], a
    ld e, $27
    ld [de], a
    ret


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $51, $45

    ld e, [hl]
    ld b, l

    db $a4, $4d

    or c
    ld c, l
    ld l, a
    ld d, l
    ld a, a
    ld d, l
    or d
    ld e, e
    cp h
    ld e, e
    rst $30
    ld h, c
    db $fd
    ld h, c

    db $5d, $6c

    ld h, e
    ld l, h
    ld [de], a
    ld [hl], h
    add hl, de
    ld [hl], h

    db $40

    ld b, b

    db $80, $fe, $18, $80, $01, $40, $00

    nop
    add b
    cp $18
    add b
    ld bc, $0060
    nop

    db $80, $fe, $18, $80, $01, $c0, $ff

    nop
    add b
    cp $18
    add b
    ld bc, $ffa0
    nop

    db $00, $fe, $40, $00, $02, $00, $00

    nop
    nop
    cp $40
    nop
    ld [bc], a
    nop
    nop
    nop

    db $18

    db $08

    db $18

    ld [$0408], sp

    db $10, $00, $02, $2c

    db $10
    rst $38

    db $02

    nop
    nop
    nop

    db $09, $7d, $04, $00, $00

    nop
    add hl, bc
    ld a, l
    inc b
    rst $38
    ld [de], a
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b

    db $00

    ld [bc], a

    db $9b, $4d, $03

    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $f9, $06, $f9, $06, $00, $01, $02, $80, $00, $02, $80, $01, $02, $00

    nop

    db $ff, $0d

    nop
    ld bc, $c002
    nop
    ld [bc], a
    ret nz

    ld bc, $0002
    nop
    rst $38
    dec c

    db $00

    add b

    db $40

    add b

    db $80, $fd, $10, $00, $00, $00, $00

    nop
    add b
    db $fd
    stop
    nop
    nop
    nop
    nop

    db $00, $ff, $20, $00, $02, $80, $ff

    nop
    nop
    rst $38
    jr nz, jr_004_458b

jr_004_458b:
    ld [bc], a
    add b
    rst $38
    nop
    nop
    cp $20
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    cp $20
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    and b
    ld bc, $0000
    nop
    ldh [rP1], a
    nop
    nop
    ld [bc], a
    nop

    db $80, $fe, $18, $80, $01, $80, $ff

    nop
    add b
    cp $18
    add b
    ld bc, $ff40
    nop

    db $00, $ff, $10, $00, $01, $40, $00

    nop
    nop
    rst $38
    stop
    ld bc, $0040
    nop
    jr nz, jr_004_45d1

jr_004_45d1:
    ld [bc], a
    jr nz, jr_004_45d4

jr_004_45d4:
    ld [bc], a

    db $f4, $fa, $fa, $f4, $f6, $fc, $f6, $04

    or $fc
    or $04

    db $00, $fe, $40, $00, $fe, $40

    add b
    cp $10
    add b
    ld bc, $80f0
    ld bc, $80f0
    cp $10
    add b
    cp $10
    add b
    cp $10

    db $27, $0d, $69, $4c, $0d, $8a, $4c, $e8, $44, $0e, $03, $0b, $46, $22, $46, $a9
    db $7c

    db $16

    db $03, $60, $49, $44, $0f, $40, $00, $01, $00, $1f, $45, $22, $18, $45, $03, $6f
    db $49, $44, $01, $01, $24, $0d, $00, $03, $60, $49, $44, $0f, $40, $01, $01, $00
    db $1f, $45, $22, $1a, $45, $03, $6f, $49, $44, $01, $03, $24, $0d, $00, $0d, $46
    db $4d, $03, $60, $49, $44, $28, $1a, $3f, $0d, $f4, $23, $6b, $45, $11

    ld d, e
    ld b, a

    db $10, $5c, $12

    ld d, [hl]
    ld b, [hl]

    db $19, $02, $18, $06, $59, $46

    add hl, de
    ld [bc], a
    inc c

    db $01, $01, $0f, $27, $00, $0d, $8a, $4c, $6f, $45, $03, $d0, $49, $44, $24, $0d
    db $00, $28, $1a, $3f, $0d, $f4, $23, $6d, $45, $11, $c7, $46, $03, $60, $49, $44
    db $10, $5c, $12

    adc d
    ld b, [hl]

    db $19, $02, $10, $08, $20, $01, $26, $20, $01, $06, $93, $46

    add hl, de
    ld [bc], a
    ld [$2008], sp
    ld bc, $2026
    db $01

    db $03, $03, $4a, $44, $24, $3e, $0d, $e6, $22, $27, $1e, $0d, $e6, $22, $27, $00
    db $19, $06, $02, $0d, $e6, $22, $27, $00, $19, $07, $02, $06, $9e, $46, $0d, $77
    db $0f, $0e, $01, $03, $0f, $27, $01, $0d, $8a, $4c, $6f, $45, $0f, $40, $02, $03
    db $6f, $49, $44, $00, $0d, $1d, $20, $11

    ldh [rDMA], a

    db $03, $3e, $4a, $44, $01, $03, $10, $5c, $12

    db $dc
    ld b, [hl]

    db $08, $60, $00, $00

    ld [$00a0], sp
    nop

    db $03, $60, $49, $44, $08, $00, $00, $10, $5c, $12

    push af
    ld b, [hl]

    db $19, $02, $10, $26, $80, $01, $06, $fb, $46

    add hl, de
    ld [bc], a
    ld [$0026], sp
    ld [bc], a

    db $03, $68, $4a, $44, $24, $3e, $0d, $e6, $22, $27, $1e, $09, $02, $0d, $e6, $22
    db $27, $02, $19, $08, $02, $0d, $e6, $22, $27, $02, $19, $09, $02, $0a, $0d, $e6
    db $22, $27, $21, $06, $06, $47, $0d, $77, $0f, $0e, $0f, $27, $04, $0d, $8a, $4c
    db $6f, $45, $03, $90, $4a, $44, $19, $03, $0c, $19, $01, $08, $01, $05, $00, $0d
    db $77, $0f, $0e, $0f, $27, $05, $0d, $8a, $4c, $6f, $45, $03, $6f, $49, $44, $0f
    db $40, $02, $19, $01, $10, $01, $03, $00

    inc bc
    ld h, b
    ld c, c
    ld b, h
    db $10
    ld e, h
    ld [de], a
    ld h, d
    ld b, a
    add hl, de
    ld [bc], a
    jr jr_004_4766

    ld h, l
    ld b, a
    add hl, de
    ld [bc], a
    inc c
    rrca

jr_004_4766:
    daa
    ld [bc], a
    dec c
    adc d
    ld c, h
    ld l, a
    ld b, l
    ld bc, $0f01
    ld h, $0c
    inc bc
    cp e
    ld c, d
    ld b, h
    inc h
    dec c
    nop
    inc bc
    ld h, b
    ld c, c
    ld b, h
    ld [$0000], sp
    db $10
    ld e, h
    ld [de], a
    adc [hl]
    ld b, a
    add hl, de
    ld [bc], a
    jr nz, jr_004_4798

    ld h, $28
    ld b, $94
    ld b, a
    add hl, de
    ld [bc], a
    db $10
    rrca
    ld h, $20
    rrca
    daa
    inc bc
    dec c

jr_004_4798:
    adc d
    ld c, h
    ld l, a
    ld b, l
    inc bc
    ld a, [bc]
    ld c, e
    ld b, h
    dec b
    ld [$3203], sp
    ld c, e
    ld b, h
    inc h
    ld a, $0d
    and $22
    daa
    ld e, $09
    ld [bc], a
    dec c
    and $22
    daa
    inc bc
    add hl, de
    ld [$0d02], sp
    and $22
    daa
    inc bc
    add hl, de
    add hl, bc
    ld [bc], a
    ld a, [bc]
    dec c
    and $22
    daa
    ld hl, $ad06
    ld b, a
    rlca
    nop
    nop
    ld [$0000], sp
    inc bc
    ld h, b
    ld c, c
    ld b, h
    db $10
    ld e, h
    ld [de], a
    db $dd
    ld b, a
    add hl, de
    inc bc
    jr jr_004_47e1

    ld [hl], l
    ld b, [hl]
    add hl, de
    inc bc
    jr @+$08

jr_004_47e1:
    ld [hl], l
    ld b, [hl]

    db $28, $1a, $3f, $0d, $f4, $23, $e6, $44, $12

    or $47

    db $10, $5b, $0e, $02, $f9, $45, $54, $4e

    daa
    rrca
    ccf
    ld [bc], a
    inc bc
    db $e3
    ld a, l
    ld b, h
    rrca
    daa
    ld [bc], a
    dec c
    adc d
    ld c, h
    add sp, $44
    ld bc, $1f02
    ld b, l
    ld [hl+], a
    inc e
    ld b, l
    ld bc, $0303
    ld a, [hl]
    ld c, e
    ld b, h
    inc h
    dec c
    nop
    daa
    db $10
    ld e, e
    ld c, $02
    ld sp, hl
    ld b, l
    ld d, h
    ld c, [hl]
    ld b, $7e
    ld a, h

    db $01, $03, $0c, $09, $06, $19, $03, $02, $19, $04, $02, $0a, $01, $03, $0c, $04
    db $53, $72, $0c, $01, $05, $0c, $0d, $eb, $4c, $d5, $45, $06, $cd, $48, $08, $00
    db $ff, $0d, $d1, $1f, $08, $00, $26, $80, $00, $08, $00, $ff, $2a, $10, $03, $c7
    db $4b, $44, $04, $52, $6f, $0b, $0f, $46, $00, $09, $04, $19, $08, $02, $19, $09
    db $02, $19, $0a, $02, $19, $07, $02, $0a, $24, $41, $26, $40, $00, $08, $80, $ff
    db $2a, $08, $09, $04, $19, $08, $02, $19, $09, $02, $19, $0a, $02, $19, $07, $02
    db $0a, $24, $41, $22, $3b, $5f, $1d, $03, $48, $4c, $44, $01, $08, $1f, $45, $22
    db $21, $45

    db $16

    db $0d, $eb, $4c, $d9, $45, $06, $cd, $48

    dec c
    db $eb
    ld c, h
    db $dd
    ld b, l
    ld b, $cd
    ld c, b

    db $0d, $d1, $1f, $f8, $00, $08, $00, $01, $0d, $16, $52, $26, $80, $00, $0d, $5f
    db $20, $bf, $48, $03, $ee, $4b, $44, $06, $ea, $48, $10, $80, $01, $08, $00, $ff
    db $0d, $d1, $1f, $08, $00, $06, $ad, $48, $03, $57, $49, $44, $04, $52, $6f, $0b
    db $0f, $46, $00, $19, $05, $02, $19, $04, $01, $0f, $47, $10, $05, $01, $16, $17
    db $ff, $0d, $06, $d1, $48, $04, $52, $6f, $0b, $0f, $46, $00, $19, $08, $02, $19
    db $09, $02, $19, $0a, $02, $19, $07, $02, $06, $f1, $48, $24, $41, $08, $80, $ff
    db $2a, $08, $26, $40, $00, $03, $1b, $4c, $44, $19, $08, $02, $19, $09, $02, $19
    db $0a, $02, $19, $07, $02, $06, $0e, $49

    inc h
    ld b, c
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    ld c, b
    ld c, h
    ld b, h
    ld bc, $1f08
    ld b, l
    ld [hl+], a
    ld hl, $1645

    db $1b, $00, $40, $03, $04, $83, $77, $0b, $0f, $46, $00, $22, $3b, $5f, $1d, $19
    db $00, $02, $19, $01, $02, $19, $02, $02, $19, $03, $02, $19, $04, $02, $19, $05
    db $02, $19, $06, $02, $19, $07, $02, $16

    call Call_000_1ee6
    call Call_000_1ed3
    jp Jump_000_0da4


    ld bc, $4523
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_004_7de3
    ret c

    call Call_000_21eb
    call Call_000_0da4
    ld e, $5b
    ld a, [de]
    rlca
    ld hl, $49cc
    add l
    ld l, a
    jr nc, jr_004_4985

    inc h

jr_004_4985:
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_49a3

    bit 5, a
    jr nz, jr_004_499c

    bit 6, a
    ret z

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a

jr_004_499c:
    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ret


jr_004_49a3:
    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $40
    ld a, [de]
    cp $01
    jr z, jr_004_49c1

    jr c, jr_004_49c4

    ld e, $04
    ld bc, $47e3
    jp Jump_000_0846


jr_004_49c1:
    call Call_000_1ec0

jr_004_49c4:
    ld e, $04
    ld bc, $7c7e
    jp Jump_000_0846


    db $4d, $45, $92, $4d

    ld bc, $4523
    call Call_000_233c
    jr c, jr_004_49fb

    ld e, $0f
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr z, jr_004_49f3

    call Call_000_1ed3
    call Call_000_0da4
    call Call_000_1a25
    bit 6, a
    ret z

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a

jr_004_49f3:
    ld e, $04
    ld bc, $466a
    jp Jump_000_0846


jr_004_49fb:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4531
    call Call_000_233c
    jr c, jr_004_4a36

    call Call_000_0da4
    call Call_000_1a25
    bit 7, a
    jr z, jr_004_4a24

    ld e, $27
    ld a, $01
    call Call_000_2319
    ld e, $04
    ld bc, $46b1
    jp Jump_000_0846


jr_004_4a24:
    bit 5, a
    ret z

    ld e, $27
    ld a, $05
    call Call_000_2319
    ld e, $04
    ld bc, $46b1
    jp Jump_000_0846


jr_004_4a36:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4523
    call Call_000_233c
    jr c, jr_004_4a60

    call Call_000_0da4
    ld b, $04
    ld e, $07
    call Call_000_1f9c
    jr c, jr_004_4a58

    call Call_000_1a25
    bit 7, a
    ret z

jr_004_4a58:
    ld e, $04
    ld bc, $46e0
    jp Jump_000_0846


jr_004_4a60:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4531
    call Call_000_233c
    jr c, jr_004_4a88

    call Call_000_0da4
    call Call_000_1a25
    bit 5, a
    ret z

    ld e, $27
    ld a, $06
    call Call_000_2319
    ld e, $04
    ld bc, $4721
    jp Jump_000_0846


jr_004_4a88:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4523
    call Call_000_233c
    jr c, jr_004_4ab3

    call Call_000_21eb
    call Call_000_0da4
    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $27
    ld a, $05
    call Call_000_2319
    ld e, $04
    ld bc, $473a
    jp Jump_000_0846


jr_004_4ab3:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4523
    call Call_000_233c
    jr c, jr_004_4b02

    ld e, $0f
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr nz, jr_004_4ad6

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_004_4ad6

    dec a
    ld [de], a
    jr jr_004_4adc

jr_004_4ad6:
    call Call_000_1ed3
    call Call_000_0da4

jr_004_4adc:
    call Call_000_1a25
    bit 6, a
    jr z, jr_004_4aea

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


jr_004_4aea:
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $4779
    jp Jump_000_0846


jr_004_4b02:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4523
    call Call_000_233c
    jr c, jr_004_4b2a

    call Call_000_0da4
    call Call_000_1a25
    bit 5, a
    ret z

    ld e, $27
    ld a, $05
    call Call_000_2319
    ld e, $04
    ld bc, $46b1
    jp Jump_000_0846


jr_004_4b2a:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4531
    call Call_000_233c
    jr c, jr_004_4b76

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_004_4b68

    dec a
    ld [de], a
    call Call_000_1ed3
    call Call_000_0da4
    call Call_000_1a25
    bit 6, a
    jr z, jr_004_4b56

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


jr_004_4b56:
    bit 5, a
    ret z

    ld e, $27
    ld a, $05
    call Call_000_2319
    ld e, $04
    ld bc, $46b1
    jp Jump_000_0846


jr_004_4b68:
    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld e, $04
    ld bc, $47c8
    jp Jump_000_0846


jr_004_4b76:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_004_7de3
    ret c

    call Call_000_21eb
    call Call_000_0da4
    ld e, $5b
    ld a, [de]
    rlca
    ld hl, $4bc3
    add l
    ld l, a
    jr nc, jr_004_4b94

    inc h

jr_004_4b94:
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24cd
    bit 6, a
    jr z, jr_004_4ba5

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


jr_004_4ba5:
    bit 7, a
    ret z

    ld e, $0d
    call Call_000_0f7a
    ld l, $3f
    ld h, d
    dec [hl]
    jr z, jr_004_4bbb

    ld e, $04
    ld bc, $47fa
    jp Jump_000_0846


jr_004_4bbb:
    ld e, $04
    ld bc, $4816
    jp Jump_000_0846


    ld c, l
    ld b, l
    sub d
    ld c, l

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $44ae
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 5, a
    ret z

    ld e, $41
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $44ae
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    jr z, jr_004_4c0a

    ld e, $04
    ld bc, $4900
    jp Jump_000_0846


jr_004_4c0a:
    bit 5, a
    ret z

    ld e, $41
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret z

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $44ae
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    jr z, jr_004_4c37

    ld e, $04
    ld bc, $491d
    jp Jump_000_0846


jr_004_4c37:
    bit 5, a
    ret z

    ld e, $41
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


    ld bc, $44ae
    jp Jump_000_255b


    ld e, $5b
    ld a, [de]
    rlca
    rlca
    ld l, a
    ld e, $5c
    ld a, [de]
    rlca
    add l
    ld hl, $44ca
    add l
    ld l, a
    jr nc, jr_004_4c61

    inc h

jr_004_4c61:
    ld e, $3d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_004_4c7f

    ld a, [hl+]
    cpl
    inc a
    add l
    ld l, a
    ld a, $ff
    adc h
    ld h, a
    ld a, [hl+]

jr_004_4c7f:
    ld e, $27
    ld [de], a
    ld e, $3d
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

Call_004_4c90:
    ld e, $27
    ld a, [de]

Jump_004_4c93:
    push bc
    swap a
    ld c, a
    ld e, $5c
    ld a, [de]
    swap a
    rrca
    add c
    add l
    ld l, a
    jr nc, jr_004_4ca3

    inc h

jr_004_4ca3:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    call Call_000_2053
    call Call_000_20f9
    pop bc
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    or a
    jr z, jr_004_4cdc

jr_004_4cbd:
    ld e, a
    call Call_000_0647
    cp e
    jr c, jr_004_4ccc

    ld a, $01
    ld [$dd60], a
    xor a
    jr jr_004_4cd1

jr_004_4ccc:
    xor a
    ld [$dd60], a
    inc a

jr_004_4cd1:
    ld e, $27
    ld [de], a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


jr_004_4cdc:
    ld a, [$dd60]
    or a
    jr nz, jr_004_4ce8

    ld a, [hl+]
    or a
    jr z, jr_004_4ccc

    jr jr_004_4cbd

jr_004_4ce8:
    inc hl
    jr jr_004_4ccc

    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    inc bc
    push bc
    ld c, l
    ld b, a
    call Call_000_0647
    and $02
    add c
    ld c, a
    jr nc, jr_004_4cfd

    inc b

jr_004_4cfd:
    call Call_000_1fd1
    pop bc
    ld hl, $45e1

Jump_004_4d04:
    call Call_000_20be
    call Call_000_20f9
    jp Jump_000_2123


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    jp Jump_004_4d04


    push bc
    ld h, $a8
    ld c, $0a

jr_004_4d1b:
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_004_4d39

    ld l, $48
    ld a, [hl]
    cp d
    jr nz, jr_004_4d39

    ld a, c
    ldh [$ff80], a
    ld e, $04
    ld bc, $48e4
    call Call_000_0849
    ldh a, [$ff9a]
    ld d, a
    ldh a, [$ff80]
    ld c, a

jr_004_4d39:
    dec c
    jr z, jr_004_4d3f

    inc h
    jr jr_004_4d1b

jr_004_4d3f:
    pop bc
    ret


    ld hl, $dd60
    inc [hl]
    ret


    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    jr c, jr_004_4d5c

    cp $30
    jr c, jr_004_4d5c

    cp $70
    ret c

    ld a, $c0

jr_004_4d58:
    ld e, $45
    ld [de], a
    ret


jr_004_4d5c:
    ld a, $40
    jr jr_004_4d58

    db $0d, $d1, $1f, $00, $04, $06, $f5, $72

    rst $38

    db $02

    nop
    nop
    nop

    db $09, $7d, $04, $00, $00

    nop
    add hl, bc
    ld a, l
    inc b
    rst $38
    ld [hl-], a
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b

    db $05

    ld [bc], a

    db $9b, $4d, $03

    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $f9, $09, $f9, $06

    rst $38
    ld [hl-], a
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

    db $00, $01, $02, $80, $00, $02, $80, $01, $02, $00

    nop

    db $ff, $0d

    nop
    ld bc, $c002
    nop
    ld [bc], a
    ret nz

    ld bc, $0002
    nop
    rst $38
    dec c

    db $80

    ld h, b

    db $c0

    and b
    ld b, b
    ld b, b

    db $40

    ld b, b

    db $a0

    ldh [rLCDC], a
    ld b, b

    db $40

    ld h, b

    db $80

    ret nz

    db $80

    ld h, b

    db $80

    ld h, b
    nop
    ret nz

    db $00, $01, $f0, $0c

    jr nz, @+$03

    xor $08

    db $80, $01, $f4, $80

    jr nz, @+$03

    xor $80
    ret nz

    db $fd
    ld [de], a
    ld b, b
    ld [bc], a
    ret nz

    nop
    nop
    add b
    db $fd
    inc d
    add b
    ld [bc], a
    ret nz

    nop
    nop

    db $c0, $fd, $10, $00, $00, $00, $00

    nop
    add b
    db $fd
    stop
    nop
    nop
    nop
    nop
    nop
    cp $10
    nop
    ld [bc], a
    nop
    ld bc, $0000
    cp $10
    nop
    ld [bc], a
    ld b, b
    ld bc, $0000
    rst $38
    stop
    ld bc, $00c0
    nop
    nop
    rst $38
    stop
    ld bc, $0100
    nop
    nop
    cp $20
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    cp $20
    nop
    ld [bc], a
    nop
    nop
    nop

    db $c0, $fd, $12, $00, $00, $00, $00

    nop
    add b
    db $fd
    inc d
    nop
    nop
    nop
    nop
    nop
    jr @+$1e

    ret nz

    nop
    ld a, [$0000]
    ld bc, $00f8

    db $20, $c0, $01

    jr nz, @+$42

    ld [bc], a

    db $27, $03, $1d, $52, $44, $0d, $69, $4c, $0d, $8a, $4c, $e8, $44, $0e, $03, $0b
    db $46, $22, $46, $a9, $7c

    db $16

    db $03, $1d, $52, $44, $28, $1a, $3f, $0d, $f4, $23, $be, $4d, $12, $84, $4e, $0d
    db $f4, $23, $c0, $4d, $12, $3c, $4f, $06, $9a, $4f, $27, $0d, $19, $55, $10, $11

    db $da
    ld c, [hl]

    db $28, $1a, $3f, $0d, $f4, $23, $c4, $4d, $12

    db $da
    ld c, [hl]

    db $03, $3b, $52, $44, $08, $00, $00, $0f, $3f, $00, $0d, $e1, $54, $d4, $4d, $01
    db $02, $00, $03, $2c, $52, $44, $19, $02, $10, $09, $12, $0d, $ba, $22, $27, $07
    db $19, $0a, $02, $19, $0b, $02, $19, $0a, $02, $19, $0b, $02, $0a, $28, $1a, $3f
    db $0d, $f4, $23, $ca, $4d, $12, $e3, $47, $0d, $f4, $23, $cc, $4d, $12

    sbc d
    ld c, a

    db $06, $3c, $4f

    inc bc
    dec e
    ld d, d
    ld b, h
    jr z, jr_004_4efa

    ccf
    dec c
    db $f4
    inc hl
    jp nz, Jump_000_124d

    add h
    ld c, [hl]
    db $10
    ld e, h
    ld [de], a
    ld hl, sp+$4e
    add hl, de
    nop
    inc c
    daa
    add hl, de
    ld [bc], a
    inc c
    ld b, $ff
    ld c, [hl]
    add hl, de
    nop

jr_004_4efa:
    ld b, $27
    add hl, de
    ld [bc], a
    ld b, $27
    rrca
    daa
    nop
    dec c
    adc d
    ld c, h
    db $e4
    ld c, l
    inc bc
    db $db
    ld d, d
    ld b, h
    ld bc, $2401
    dec c
    nop
    inc bc
    dec e
    ld d, d
    ld b, h
    rlca
    nop
    nop
    ld [$0000], sp
    daa
    dec c
    ld [hl], a
    rrca
    dec c

Jump_004_4f20:
    add hl, bc
    ld [$0a19], sp
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    ld a, [bc]
    inc h
    ld [hl], $0d
    cp d
    ld [hl+], a
    daa
    ld [$1009], sp
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    ld a, [bc]
    ld b, $c4
    ld c, [hl]

    db $27, $28, $14, $80, $6a, $4f

    dec c
    cp d
    ld [hl+], a
    daa
    add hl, bc
    inc bc
    dec e
    ld d, d
    ld b, h
    add hl, de
    ld b, $3c
    inc h
    dec a
    add hl, de
    rlca
    inc b
    dec c
    xor [hl]
    inc hl
    ld c, a
    ld d, h
    ld b, h
    add hl, de
    db $08
    db $20

    db $28, $1a, $3f, $0d, $f4, $23, $ce, $4d, $12, $e3, $47, $06, $84, $4e, $01, $01
    db $0f, $27, $01, $0d, $8a, $4c, $e4, $4d, $03, $25, $53, $44, $24, $0d, $00, $0d
    db $ba, $22, $27, $0a, $03, $1d, $52, $44, $19, $06, $3c, $24, $3d, $19, $07, $04
    db $03, $5b, $53, $44, $0d, $ae, $23, $b3, $54, $44, $19, $08, $20, $00, $27, $01
    db $06, $0d, $03, $22, $f0, $11

    or d
    ld c, a

    db $28, $1a, $3f, $0d, $f4, $23, $c6, $4d, $12, $18, $50

    ld b, $bd
    ld c, a
    jr z, jr_004_4fce

    ccf
    dec c
    db $f4
    inc hl
    ret z

    ld c, l
    ld [de], a
    jr jr_004_500d

    rrca
    daa
    inc b
    dec c
    adc d
    ld c, h
    db $e4
    ld c, l
    inc bc
    adc a
    ld d, e
    ld b, h
    nop
    inc h
    ld c, $03
    dec e

jr_004_4fce:
    ld d, d
    ld b, h
    db $10
    ld e, h
    ld [de], a
    db $db
    ld c, a
    add hl, de
    rlca
    db $10
    ld b, $de
    ld c, a
    add hl, de
    rlca
    ld [$0819], sp
    inc b
    dec c
    cp d
    ld [hl+], a
    daa
    dec bc
    add hl, de
    ld c, $02
    add hl, de
    ld [$0d0e], sp
    cp d
    ld [hl+], a
    daa
    dec bc
    add hl, de
    ld c, $02
    db $10
    ld e, h
    ld [de], a
    rst $38
    ld c, a
    add hl, de
    ld [$0640], sp
    ld [bc], a
    ld d, b
    add hl, de
    db $08
    db $30

    db $28, $1a, $3f, $0d, $f4, $23, $d0, $4d, $12, $e3, $47

jr_004_500d:
    dec c
    db $f4
    inc hl
    jp nc, Jump_000_124d

    inc a
    ld c, a
    ld b, $84
    ld c, [hl]

    db $0f, $27, $05, $0d, $8a, $4c, $e4, $4d, $03, $c1, $53, $44, $24, $0d, $00, $03
    db $1d, $52, $44, $10, $5c, $12

    dec [hl]
    ld d, b

    db $05, $10, $06, $37, $50

    dec b
    db $08

    db $19, $08, $04, $03, $f7, $53, $44, $0d, $ba, $22, $27, $0b, $19, $0e, $02, $19
    db $08, $0e, $0d, $ba, $22, $27, $0b, $19, $0e, $02, $01, $08, $00, $24, $0e, $03
    db $1d, $52, $44, $10, $5c, $12

    ld h, h
    ld d, b

    db $05, $20, $06, $02, $50

    dec b
    db $10
    ld b, $02
    ld d, b

    db $09, $06, $19, $03, $02, $19, $04, $02, $0a, $01, $03, $0c, $04, $45, $73, $0c
    db $01, $05, $0c, $0f, $4c, $01, $04, $45, $73, $0c, $0d, $f9, $1f, $0d, $0f, $20
    db $04, $04, $3f, $0d, $52, $44, $0d, $a8, $50, $03, $1e, $54, $44, $24, $39, $05
    db $01, $19, $09, $02, $0f, $47, $10, $05, $02, $0f, $47, $00, $05, $02, $16

    ld e, $07
    ld a, [de]
    sub $01
    ld [de], a
    inc e
    ld a, [de]
    sbc $00
    ld [de], a
    ret


    rrca
    ld c, h
    ld bc, $4504
    ld [hl], e
    inc c
    dec c
    ld sp, hl
    rra
    rrca
    ld h, b
    ccf
    dec c
    pop de
    rra
    inc c
    inc bc
    rrca
    ld h, $10
    dec c
    dec d
    ld hl, $4e44
    inc bc
    daa
    ld d, h
    ld b, h
    inc h
    add hl, sp
    dec c
    cp d
    ld [hl+], a
    daa
    rra
    add hl, de
    rrca
    ld [bc], a
    add hl, de
    db $10
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    dec c
    cp d
    ld [hl+], a
    daa
    rra
    add hl, de
    db $10
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    add hl, de
    db $10
    ld [bc], a
    ld b, $d4
    ld d, b
    rrca
    ld b, b
    nop
    rrca
    daa
    ld [bc], a
    dec c
    adc d
    ld c, h
    db $e4
    ld c, l
    ld b, $15
    ld d, c

    db $10, $5c, $12

    rrca
    ld d, c

    db $08, $80, $01, $26, $80, $01, $06, $15, $51

    ld [$01c0], sp
    ld h, $c0
    db $01

    db $04, $e6, $72, $0b, $0f, $46, $00, $0d, $d1, $1f, $00, $e7, $19, $1b, $04, $19
    db $1a, $03, $19, $19, $02, $19, $18, $02, $19, $17, $02, $19, $16, $02, $19, $15
    db $01, $19, $14, $01, $19, $13, $01, $19, $07, $01, $04, $52, $6f, $0b, $19, $08
    db $02, $19, $09, $02, $19, $0a, $02, $19, $07, $02, $19, $08, $02, $19, $09, $02
    db $19, $0a, $02, $19, $07, $02, $0d, $05, $55, $19, $08, $02, $19, $09, $02, $19
    db $0a, $02, $19, $07, $02, $06, $5e, $51

    dec de
    ld h, [hl]
    ld c, c
    inc bc
    inc b
    add e
    ld [hl], a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    db $db
    ld d, h
    ld b, h
    dec c
    rrca
    jr nz, jr_004_518c

    inc c
    ccf
    inc h
    ld de, $470f
    db $10
    add hl, bc
    inc b
    add hl, de
    nop
    ld [bc], a

jr_004_518c:
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
    rrca
    ld b, a
    nop
    db $16

    db $0f, $4c, $01, $04, $45, $73, $0c, $0d, $f9, $1f, $0d, $d1, $1f, $00, $ff, $0d
    db $0f, $20, $04, $04, $3f, $0d, $8a, $21, $4e, $4e, $03, $cf, $54, $44, $24, $1d
    db $19, $0c, $02, $19, $0d, $02, $06, $c6, $51

    jr z, jr_004_51e4

    ld b, b
    rst $18
    ld d, c
    inc de
    add b
    di
    ld d, c
    inc de
    ret nz

    or $51
    dec c
    ld d, $52
    dec c
    pop de
    rra
    ld b, $03

jr_004_51e4:
    ld h, $00
    ld [bc], a
    dec c
    ld [hl-], a
    db $10
    ldh [$ff08], a
    nop
    cp $2a
    jr nz, jr_004_51f7

    rlca
    ld d, d
    dec c
    ld d, $52
    dec c

jr_004_51f7:
    pop de
    rra
    ld [bc], a
    ld bc, $4026
    nop
    dec c
    ld [hl-], a
    db $10
    db $fc
    ld [$fd40], sp
    ld a, [hl+]
    inc l
    inc b
    ld b, [hl]
    ld [hl], d
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    ld d, a
    ld c, c
    ld b, h
    add hl, de
    nop
    db $10
    db $16

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld bc, $4d68
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d76
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_5275

    ld e, $0d
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr z, jr_004_5289

    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24b9
    or a
    jr nz, jr_004_527d

    ld hl, $451e
    ld a, [hl+]
    ld e, $12
    ld [de], a
    ld e, $39
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $52
    inc l
    ld [hl], $b4
    ret


jr_004_5275:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_527d:
    bit 5, a
    ret z

    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1ef9


jr_004_5289:
    ld e, $3f
    ld a, [de]
    or a
    jr nz, jr_004_52ac

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_004_529c

    dec a
    ld [de], a
    ld e, $15
    xor a
    ld [de], a
    ret


jr_004_529c:
    ld e, $3f
    ld a, $01
    ld [de], a
    ld a, $02
    ld e, $15
    ld [de], a
    ld hl, $4ddc
    jp Jump_004_54e7


jr_004_52ac:
    ld e, $04
    ld bc, $4ea9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_52d3

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $4ea9
    jp Jump_000_0846


jr_004_52d3:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_531d

    ld e, $0f
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr nz, jr_004_52fb

    ld e, $04
    ld b, $10
    call Call_000_1f9c
    jr nc, jr_004_52fb

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a

jr_004_52fb:
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_5315

    bit 5, a
    ret z

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ret


jr_004_5315:
    ld e, $04
    ld bc, $4f11
    jp Jump_000_0846


jr_004_531d:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_5353

    ld e, $0f
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr z, jr_004_534b

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24cd
    bit 6, a
    ret z

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a

jr_004_534b:
    ld e, $04
    ld bc, $4f7b
    jp Jump_000_0846


jr_004_5353:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_5387

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $4f5c
    jp Jump_000_0846


jr_004_5387:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_53b9

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_53b1

    bit 6, a
    ret z

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


jr_004_53b1:
    ld e, $04
    ld bc, $4fca
    jp Jump_000_0846


jr_004_53b9:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_53ef

    ld e, $0f
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr z, jr_004_53e7

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24cd
    bit 6, a
    ret z

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a

jr_004_53e7:
    ld e, $04
    ld bc, $5027
    jp Jump_000_0846


jr_004_53ef:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $4d68
    call Call_000_233c
    jr c, jr_004_5416

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4d92
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $5054
    jp Jump_000_0846


jr_004_5416:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $4d96
    jp Jump_000_255b


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4d96
    call Call_000_255b
    ret c

    call Call_000_19f3
    ld h, d
    or a
    jr z, jr_004_544c

    bit 5, a
    jr nz, jr_004_544c

    bit 4, a
    jr nz, jr_004_544c

    ld l, $26
    dec [hl]
    ret nz

    ld e, $11
    xor a
    ld [de], a
    ret


jr_004_544c:
    jp Jump_000_0bba


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $44ae
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 5, a
    jr z, jr_004_546b

    ld e, $04
    ld bc, $516d
    jp Jump_000_0846


jr_004_546b:
    bit 7, a
    ret z

    ld e, $40
    ld a, [de]
    or a
    jr z, jr_004_548c

    ld hl, $4e46
    call Call_004_54e7
    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $54
    inc l
    ld [hl], $96
    ret


jr_004_548c:
    inc a
    ld [de], a
    ld hl, $4de4
    ld a, $03
    jp Jump_004_4c93


    ld e, $0d
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    or c
    jr z, jr_004_54ab

    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $44ae
    jp Jump_000_255b


jr_004_54ab:
    ld e, $04
    ld bc, $516d
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $44ae
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    jr nz, jr_004_54c7

    bit 5, a
    ret z

jr_004_54c7:
    ld e, $04
    ld bc, $5171
    jp Jump_000_0846


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $4d96
    jp Jump_000_255b


    ld bc, $44bc
    jp Jump_000_255b


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

Call_004_54e7:
Jump_004_54e7:
    ld e, $5c
    ld a, [de]
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_004_54f1

    inc h

jr_004_54f1:
    call Call_000_20f9
    call Call_000_2123
    ld e, $26
    ld a, [hl]
    ld [de], a
    ret


    ld h, $a0
    ld l, $4d
    ld a, [hl]
    ld e, $27
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $45
    bit 7, [hl]
    ld e, $15
    jr nz, jr_004_5515

    ld a, $08
    jr jr_004_5517

jr_004_5515:
    ld a, $02

jr_004_5517:
    ld [de], a
    ret


    ld e, $07

Jump_004_551b:
    ld a, [bc]

jr_004_551c:
    inc bc
    push bc
    ld b, a
    call Call_000_1f9c
    pop bc
    ld e, $27
    jr c, jr_004_552a

    xor a
    jr jr_004_552c

jr_004_552a:
    ld a, $01

jr_004_552c:
    ld [de], a
    ret


    ld e, $04
    jp Jump_004_551b


    ld b, $02
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
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
    ld b, $02
    jr nc, jr_004_55ac

    inc b
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
    ld c, [hl]
    inc bc
    ld sp, hl
    dec bc
    ld sp, hl
    ld b, $00
    ld [bc], a
    ret nz

    ld bc, $0002
    ret nz

    nop
    ld [bc], a
    ret nz

    ld bc, $0002
    ret nz

    rst $38
    stop
    ld [bc], a
    ret nz

    ld bc, $0002
    ret nz

    nop
    ld [bc], a
    ret nz

    ld bc, $0002
    ret nz

    rst $38
    db $10
    add b
    add b
    ret nz

    add b
    nop
    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    jr nz, jr_004_551c

    add b
    ret nz

    ret nz

    ld h, b
    add b
    ret nz

    ldh [rP1], a
    cp $20
    nop
    ld [bc], a
    add b
    rst $38
    nop
    nop

jr_004_55ac:
    cp $20
    nop
    ld [bc], a
    ld b, b
    rst $38
    nop
    nop
    rst $38
    stop
    ld bc, $0000
    nop
    nop
    rst $38
    stop
    ld bc, $0000
    nop
    nop
    cp $20
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    cp $20
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    cp $10
    nop
    ld [bc], a
    ld h, b
    nop
    nop
    nop
    cp $10
    nop
    ld [bc], a
    ld h, b
    nop
    nop
    ldh [$fffe], a
    add hl, bc
    nop
    nop
    jr nz, jr_004_55eb

    nop

jr_004_55eb:
    ldh [$fffe], a
    add hl, bc
    nop
    nop
    ld h, b
    ld bc, $0000
    rst $38
    ld [$0000], sp
    jr nz, jr_004_55fb

    nop

jr_004_55fb:
    nop
    rst $38
    ld [$0000], sp
    ld h, b
    ld bc, $8000
    db $fc
    inc e
    nop
    nop
    ret nz

    nop
    nop
    ld b, b
    db $fc
    ld e, $00
    nop
    ret nz

    nop
    nop
    nop
    cp $10
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    db $fd
    ld [de], a
    nop
    nop
    ret nz

    nop
    nop
    nop
    rst $38
    ld [$0000], sp
    ret nz

    nop
    nop
    ret nz

    cp $0a
    nop
    nop
    ret nz

    nop
    nop
    jr jr_004_5645

    add b
    nop
    ret nz

    nop
    jr nz, jr_004_563b

jr_004_563b:
    nop
    jr nc, jr_004_563e

jr_004_563e:
    nop
    jr nz, @+$12

    ld [$0804], sp
    inc b

jr_004_5645:
    db $10
    inc c
    ld [$1004], sp

jr_004_564a:
    inc c
    ld [$4004], sp
    jr nz, @+$42

    jr nz, jr_004_564a

    ld [$06f8], sp
    ld a, [$0808]
    ld [$0608], sp
    ld b, $08
    daa
    dec c
    ld l, c
    ld c, h
    ld c, $03
    ld l, d
    ld d, [hl]
    ld a, b
    ld d, [hl]
    xor c
    ld a, h
    ld d, $03
    ld c, e
    ld e, c
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    inc sp
    ld d, [hl]
    ld b, $5d
    ld d, [hl]
    inc bc
    ld c, e
    ld e, c
    ld b, h
    rrca
    ld h, $03
    daa
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902
    inc bc
    ld [bc], a
    dec c
    sbc d
    ld d, [hl]
    ld de, $565d
    jr z, jr_004_56a8

    ret nz

    ld a, a
    ld d, [hl]
    ld b, $5d
    ld d, [hl]
    ld e, $26
    ld a, [de]
    dec a
    ld [de], a
    ld e, $27
    ld [de], a
    ret


    jr z, @+$1c

    ccf
    dec c
    db $f4

jr_004_56a8:
    inc hl
    adc a
    ld d, l
    ld de, $574d
    ld [$0000], sp
    dec c
    db $d3
    jr nz, jr_004_56ea

    ld d, [hl]
    ld [hl+], a
    rst $38
    ld d, [hl]
    inc b
    inc bc
    ld l, h
    ld e, c
    ld b, h
    jr z, @+$15

    add b
    ret


    ld d, [hl]
    rrca
    ld b, e
    nop
    ld b, $cc
    ld d, [hl]
    rrca
    ld b, e
    ld bc, $e60d
    ld [hl+], a
    daa
    inc c
    add hl, de
    ld bc, $0d02
    and $22
    daa
    inc c
    add hl, de
    ld [bc], a
    ld [bc], a
    dec c
    and $22
    daa
    inc c
    add hl, de
    ld bc, $0d02
    and $22
    daa
    inc c
    add hl, de

jr_004_56ea:
    inc bc
    ld [bc], a
    inc h
    ld [hl+], a
    db $10
    ld b, e
    ld de, $56cc
    dec c
    or b
    ld e, d
    ld de, $56cc
    rrca
    inc e
    add b
    ld b, $5d
    ld d, [hl]
    db $10
    ld e, h
    ld de, $570e
    dec c
    and $22
    daa
    ld [hl+], a
    dec b
    inc b
    ld b, $04
    ld d, a
    nop
    dec c
    ld [hl], a
    rrca
    ld c, $0d
    adc d
    ld c, h
    and e
    ld d, l
    inc bc
    xor a
    ld e, c
    ld b, h
    ld bc, $0001
    ld [$0000], sp
    dec c
    ld a, [hl-]
    ld hl, $5639
    inc bc
    sub $59
    ld b, h
    inc h
    ld c, $0d
    and $22
    daa
    dec c
    dec b
    ld [bc], a
    ld b, $2d
    ld d, a
    jr z, @+$1c

    ccf
    dec c
    db $f4
    inc hl
    sub c
    ld d, l
    ld [de], a
    ld e, l
    ld d, [hl]
    dec c
    db $f4
    inc hl
    sub e
    ld d, l
    ld [de], a
    ld c, l
    ld d, a
    ld b, $ae
    ld d, [hl]
    inc bc
    ld c, e
    ld e, c
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ccf
    ld d, [hl]
    ld bc, $1f02
    ld b, l
    ld [hl+], a
    ld b, c
    ld d, [hl]
    ld bc, $1f04
    ld b, l
    ld [hl+], a
    ld b, e
    ld d, [hl]
    ld bc, $1f09
    ld b, l
    ld [hl+], a
    ld b, l
    ld d, [hl]
    add hl, bc
    inc bc
    ld bc, $1f0a
    ld b, l
    ld [hl+], a
    ld b, a
    ld d, [hl]
    ld bc, $1f0b
    ld b, l
    ld [hl+], a
    ld c, c
    ld d, [hl]
    ld bc, $1f0a
    ld b, l
    ld [hl+], a
    ld c, e
    ld d, [hl]
    ld a, [bc]
    add hl, de
    inc b
    inc b
    daa
    rrca
    daa
    ld bc, $8a0d
    ld c, h
    and e
    ld d, l
    dec c
    cp d
    ld [hl+], a
    daa
    ld c, $03
    inc c
    ld e, d
    ld b, h
    dec c
    add hl, de
    ld d, l
    jr @+$13

    xor a
    ld d, a
    jr z, jr_004_57bd

    ccf
    dec c
    db $f4
    inc hl
    sub a
    ld d, l
    ld [de], a
    cp l
    ld d, a
    ld b, $f4
    ld d, a
    jr z, @+$1c

    ccf
    dec c
    db $f4
    inc hl
    sub l
    ld d, l
    ld [de], a
    cp l
    ld d, a
    ld b, $f4
    ld d, a

jr_004_57bd:
    add hl, de
    ld bc, $1910
    ld [bc], a
    db $10
    add hl, de
    inc b
    inc e
    add hl, de
    dec b
    inc b
    ld bc, $0d06
    jr nz, jr_004_5829

    nop
    inc h
    ld e, h
    rra
    ld b, l
    ld [hl+], a
    ld c, l
    ld d, [hl]
    jr z, @+$1c

    ccf
    dec c
    db $f4
    inc hl
    sbc c
    ld d, l
    ld [de], a
    ld e, l
    ld d, [hl]
    dec c
    db $f4
    inc hl
    sbc e
    ld d, l
    ld [de], a
    xor [hl]
    ld d, [hl]
    dec c
    db $f4
    inc hl
    sbc l
    ld d, l
    ld [de], a
    jr z, jr_004_5849

    ld b, $4d
    ld d, a
    add hl, de
    ld bc, $1904
    dec c
    inc b
    add hl, de
    inc c
    inc b
    add hl, de
    inc b
    inc b
    add hl, de
    ld bc, $1908
    dec c
    ld [$0c19], sp
    ld [$0419], sp
    ld [$0119], sp
    inc b
    add hl, de
    dec c
    inc b
    add hl, de
    inc c
    inc b
    add hl, de
    rlca
    inc b
    ld bc, $0d08
    jr nz, jr_004_5878

    ld bc, $5c24
    rra
    ld b, l
    ld [hl+], a
    ld c, a
    ld d, [hl]
    ld b, $d6
    ld d, a
    db $10

jr_004_5829:
    ld e, h
    ld [de], a
    ld e, d
    ld e, b
    rrca
    daa
    ld [bc], a
    add hl, bc
    inc bc
    inc h
    dec c
    inc bc
    inc c
    ld e, d
    ld b, h
    dec c
    adc d
    ld c, h
    and e
    ld d, l
    add hl, de
    ld bc, $0908
    inc bc
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902

jr_004_5849:
    inc bc
    ld [bc], a
    add hl, de
    ld bc, $0a02
    add hl, de
    ld bc, $0d04
    ld [hl], a
    rrca
    ld c, $0a
    ld b, $84
    ld e, b
    rrca
    daa
    ld [bc], a
    add hl, bc
    ld [bc], a
    inc h
    dec c
    inc bc
    inc c
    ld e, d
    ld b, h
    dec c
    adc d
    ld c, h
    and e
    ld d, l
    add hl, de
    ld bc, $0908
    inc bc
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902
    inc bc
    ld [bc], a

jr_004_5878:
    add hl, de
    ld bc, $0a02
    add hl, de
    ld bc, $0d04
    ld [hl], a
    rrca
    ld c, $0a
    jr z, jr_004_58a0

    ccf
    dec c
    db $f4
    inc hl
    sbc a
    ld d, l
    ld [de], a
    xor [hl]
    ld d, [hl]
    dec c
    db $f4
    inc hl
    and c
    ld d, l
    ld [de], a
    ld c, l
    ld d, a
    ld b, $6a
    ld d, [hl]
    ld bc, $0c01
    dec c
    ei
    ld e, d

jr_004_58a0:
    add hl, bc
    inc b
    add hl, de
    nop
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    ld a, [bc]
    inc c
    inc b
    sbc $75
    inc c
    ld bc, $0c01
    dec c
    rst $08
    ld e, d
    ld d, c
    ld d, [hl]
    ld b, $cd
    ld c, b
    dec c
    rst $08
    ld e, d
    ld d, a
    ld d, [hl]
    ld b, $cd
    ld c, b
    rrca
    ld c, h
    ld bc, $de04
    ld [hl], l
    inc c
    dec c
    ld sp, hl
    rra
    dec c
    pop de
    rra
    nop
    ld hl, sp+$01
    ld c, $0f
    daa
    inc bc
    dec c
    adc d
    ld c, h
    and e
    ld d, l
    inc bc
    ld c, l
    ld e, d
    ld b, h
    db $10
    ld b, [hl]
    ld a, [de]
    ld a, $0f
    dec a
    ld bc, $4005
    rrca
    dec a
    nop
    jr jr_004_58f0

    ld d, d
    ld l, a
    dec bc
    rrca

jr_004_58f0:
    ld b, [hl]
    nop
    rrca
    ld b, a
    db $10
    add hl, de
    ld b, $02
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    db $10
    ccf
    ld [de], a
    rrca
    ld e, c
    db $10
    ld a, $1a
    ld b, [hl]
    rrca
    ld b, b
    ld [bc], a
    rrca
    daa
    inc b
    ld b, $19
    ld e, c
    db $10
    ld a, $1a
    ld b, [hl]
    rrca
    ld b, b
    inc bc
    rrca
    daa
    ld b, $04
    sbc $75
    inc c
    ld bc, $0d0e
    adc d
    ld c, h
    and e
    ld d, l
    inc bc
    ld [hl], h
    ld e, d
    ld b, h
    nop
    ld bc, $030e
    ld e, c
    ld e, d
    ld b, h
    nop
    inc b
    sbc $75
    inc c
    db $10
    ld a, $1a
    ld b, [hl]
    ld bc, $1b0e
    sbc e
    ld c, l
    inc bc
    rrca
    ld b, [hl]
    nop
    inc b
    and $72
    dec bc
    inc h
    ld l, $1b
    and c
    ld c, [hl]
    inc bc
    ld bc, $5533
    call Call_000_233c
    jr c, jr_004_5964

    ld bc, $556b
    call Call_000_24a5
    bit 7, a
    ret nz

    ld e, $04
    ld bc, $7c4f
    jp Jump_000_0846


jr_004_5964:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5533
    call Call_000_233c
    jr c, jr_004_599f

    call Call_000_0da4
    ld bc, $556b
    call Call_000_24b9
    bit 7, a
    jr z, jr_004_59a7

    bit 4, a
    jr nz, jr_004_598f

    bit 5, a
    jr nz, jr_004_5997

    ld a, [$dd2c]
    bit 3, a
    ret z

jr_004_598f:
    ld e, $04
    ld bc, $5737
    jp Jump_000_0846


jr_004_5997:
    ld e, $04
    ld bc, $570f
    jp Jump_000_0846


jr_004_599f:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_59a7:
    ld e, $04
    ld bc, $7c4f
    jp Jump_000_0846


    ld bc, $5533
    call Call_000_233c
    jr c, jr_004_59ce

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $556b
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $571f
    jp Jump_000_0846


jr_004_59ce:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5533
    call Call_000_233c
    jr c, jr_004_59fc

    ld l, $0d
    ld h, d
    ld a, [hl+]
    or [hl]
    jr z, jr_004_5a04

    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $556b
    call Call_000_24a5
    bit 7, a
    ret nz

    ld e, $04
    ld bc, $7c4f
    jp Jump_000_0846


jr_004_59fc:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_5a04:
    ld e, $04
    ld bc, $5737
    jp Jump_000_0846


    ld bc, $5533
    call Call_000_233c
    jr c, jr_004_5a45

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $556b
    call Call_000_24cd
    bit 7, a
    ret z

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ld e, $12
    ld [de], a
    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $59
    inc l
    ld [hl], $4b
    ret


jr_004_5a45:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $554f
    jp Jump_000_255b


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $554f
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $04
    ld bc, $593e
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $554f
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 5, a
    jr nz, jr_004_5aa8

    bit 7, a
    ret z

    ld l, $40
    ld h, d
    dec [hl]
    jr z, jr_004_5aa8

    ld l, $27
    inc [hl]
    ld hl, $55a3
    call Call_004_4c90
    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


jr_004_5aa8:
    ld e, $04
    ld bc, $593e
    jp Jump_000_0846


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
    jr c, jr_004_5ac7

    rlca
    jr c, jr_004_5aca

jr_004_5ac3:
    ld a, $01
    jr jr_004_5acb

jr_004_5ac7:
    rlca
    jr c, jr_004_5ac3

jr_004_5aca:
    xor a

jr_004_5acb:
    ld e, $27
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    inc bc
    push bc
    ld c, l
    ld b, a
    call Call_000_0647
    cp $56
    jr c, jr_004_5ae6

    cp $ab
    jr c, jr_004_5ae9

    ld a, $02
    jr jr_004_5aeb

jr_004_5ae6:
    xor a
    jr jr_004_5aeb

jr_004_5ae9:
    ld a, $01

jr_004_5aeb:
    rlca
    add c
    ld c, a
    jr nc, jr_004_5af1

    inc b

jr_004_5af1:
    call Call_000_1fd1
    pop bc
    ld hl, $45e1
    jp Jump_004_4d04


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $00
    ld a, [hl]
    cp $ff
    ret z

    ld l, $5b
    ld a, [hl]
    cp $0e
    ret nz

    ld l, $3d
    ld a, [hl]
    or a
    ret z

    ld l, $4c
    ld a, [hl]
    or a
    ret z

    push bc
    ld e, $04
    ld bc, $5929
    call Call_000_0849
    pop bc
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $3f
    ld a, [bc]
    inc bc
    ld [hl], a
    ret


    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    rrca
    ld h, b
    adc b
    inc bc
    ld c, l
    ld e, e
    ld b, h
    dec c
    ld e, h
    ld e, e
    dec c
    pop de
    rra
    ld a, [bc]
    db $fc
    add hl, de
    inc b
    inc b
    add hl, bc
    inc bc
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    ld d, $cd
    and $1e
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $555d
    jp Jump_000_255b


    call Call_000_0647
    and $03
    ld hl, $5b76
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_004_5b6d

    inc h

jr_004_5b6d:
    call Call_000_20f9
    call Call_000_2123
    jp Jump_000_20be


    add b
    ld [bc], a
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ld [bc], a
    ld hl, sp+$00
    nop
    ldh a, [rLCDC]
    ld [bc], a
    ld hl, sp-$80
    nop
    ld hl, sp+$00
    ld [bc], a
    ld hl, sp+$00
    ld bc, $fff0
    ld [bc], a
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    ld [bc], a

jr_004_5b9d:
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
    ld sp, hl
    add hl, bc
    rst $30
    ld [$05fa], sp
    ld a, [$0005]
    ld [bc], a
    nop
    add b
    nop
    ld [bc], a
    nop
    add b
    rst $38
    ld a, [bc]

jr_004_5bbc:
    nop
    ld [bc], a
    nop
    ret nz

    nop
    ld [bc], a
    nop
    add b
    rst $38
    ld a, [bc]
    add b
    add b
    ret nz

    ldh [$ff80], a
    add b
    ret nz

    ldh [$ff80], a
    cp $18
    nop
    nop
    add b
    rst $38
    nop
    add b
    cp $18
    nop
    nop
    add b
    rst $38
    nop
    nop
    rst $38
    jr nz, jr_004_5be2

jr_004_5be2:
    nop
    ret nz

    rst $38
    nop
    ret nz

    cp $20
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    rst $38
    jr nz, jr_004_5bf2

jr_004_5bf2:
    nop
    add b
    nop
    nop
    nop
    rst $38
    jr nz, jr_004_5bfa

jr_004_5bfa:
    nop
    add b
    nop
    nop
    nop
    ld bc, $0140
    add b
    ld bc, $01c0
    jr nz, @-$7e

    ld [bc], a
    jr nz, jr_004_5c1b

    inc c
    ld [$0204], sp
    inc b
    ld [bc], a
    db $10
    ld [$0080], sp
    nop
    ld bc, $0180
    jr jr_004_5c2b

jr_004_5c1b:
    jr nz, jr_004_5b9d

    ld [bc], a
    jr jr_004_5c30

    jr jr_004_5c32

    nop
    rst $38
    ret nz

    db $fd
    ld [de], a
    add b
    rst $38
    ldh [$fffe], a

jr_004_5c2b:
    ld [de], a
    nop
    ld bc, $fd00

jr_004_5c30:
    jr nc, @-$7e

jr_004_5c32:
    nop
    ret nz

    cp $14
    nop
    rst $38
    nop
    db $fd
    jr nc, jr_004_5bbc

    rst $38
    ret nz

    cp $14
    daa
    dec c
    ld l, c
    ld c, h
    ld c, $03
    ld c, l
    ld e, h
    ld b, b
    ld e, h
    xor c
    ld a, h
    ld d, $03
    daa
    ld e, a
    ld b, h
    db $10
    ld e, h
    ld [de], a
    ld h, l
    ld e, h
    add hl, de
    nop
    dec c
    add hl, de
    inc bc
    inc bc
    add hl, de
    inc b
    dec c
    add hl, de
    inc bc
    inc bc
    ld b, $40
    ld e, h
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld a, [bc]
    add hl, de
    inc bc
    ld [bc], a
    ld b, $40
    ld e, h
    jr z, jr_004_5c89

    add b
    ld a, h
    ld e, h
    ld b, $ce
    ld e, l
    inc bc
    daa
    ld e, a
    ld b, h
    daa
    db $10
    ld e, h
    ld [de], a
    sbc d
    ld e, h
    add hl, bc
    inc b
    add hl, de

jr_004_5c89:
    nop
    ld [bc], a
    add hl, de
    ld bc, $1904
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    inc b
    inc h
    ld [hl+], a
    ld a, [bc]
    ld b, $b6
    ld e, h
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1904
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    inc b
    inc h
    ld [hl+], a
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1904
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    inc b
    inc h
    ld [hl+], a
    ld [hl+], a
    jr nz, jr_004_5d16

    inc b
    inc bc
    ld [hl], $5f
    ld b, h
    dec c
    db $d3

jr_004_5cc0:
    jr nz, jr_004_5cc0

    ld e, e
    jr z, jr_004_5cd8

    add b
    adc $5c
    rrca
    ld b, e
    nop
    ld b, $d1
    ld e, h
    rrca
    ld b, e
    ld bc, $0019
    inc b
    dec c
    db $d3
    jr nz, jr_004_5cda

jr_004_5cd8:
    ld e, h
    dec c

jr_004_5cda:
    ld [hl-], a
    db $10
    ldh [rNR24], a
    ld bc, $2404
    ld [hl+], a
    add hl, hl
    nop
    dec c
    db $d3

jr_004_5ce6:
    jr nz, jr_004_5ce6

    ld e, e
    add hl, de
    nop
    inc b
    dec c
    db $d3
    jr nz, jr_004_5cf2

    ld e, h
    dec c

jr_004_5cf2:
    ld [hl-], a
    db $10
    ldh [rNR24], a
    ld [bc], a
    inc b
    add hl, hl
    nop
    db $10
    ld b, e
    inc h
    ld [hl+], a
    ld de, $5cd1
    dec c
    or b
    ld e, d
    ld de, $5cd1
    rrca
    inc e
    add b
    jr z, jr_004_5d26

    ccf
    dec c
    db $f4
    inc hl
    add $5b
    ld [de], a
    adc $5d
    dec c

jr_004_5d16:
    db $f4
    inc hl
    ret z

    ld e, e
    ld [de], a
    ld a, h
    ld e, h
    ld b, $40
    ld e, h
    dec c
    and $22
    daa
    inc c
    dec b

jr_004_5d26:
    ld [bc], a
    ld b, $20
    ld e, l
    jr jr_004_5d2f

    daa
    ld e, a
    ld b, h

jr_004_5d2f:
    add hl, bc
    inc b
    add hl, de
    nop
    ld bc, $0119
    ld [bc], a
    add hl, de
    nop
    ld bc, $0219
    ld [bc], a
    inc h
    ld [hl+], a
    ld a, [bc]
    dec c
    ld b, d
    jr nz, jr_004_5d4a

    ld e, h
    ld bc, $0307
    di
    ld h, b

jr_004_5d4a:
    ld b, h
    nop
    dec c
    ld [hl], a
    rrca
    ld c, $0d
    and $22
    daa
    ld [de], a
    dec c
    and $22
    daa
    rrca
    inc bc
    daa
    ld e, a
    ld b, h
    add hl, bc
    inc b
    add hl, de
    ld b, $02
    add hl, de
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    daa
    nop
    dec c
    adc d
    ld c, h
    adc $5b
    inc bc
    ld [hl], h
    ld e, a
    ld b, h
    inc h
    dec c
    nop
    inc bc
    cp h
    ld e, a
    ld b, h
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    inc h
    ld [hl+], a
    ld b, $7a
    ld e, l
    inc h
    ld c, $0f
    daa
    ld bc, $8a0d
    ld c, h
    adc $5b
    inc bc
    rst $30
    ld e, a
    ld b, h
    ld bc, $0002
    inc h
    ld c, $08
    nop
    nop
    ld h, $c0
    rst $38
    dec c
    ld [hl-], a
    db $10
    ld [$3203], sp
    ld h, b
    ld b, h
    nop
    inc bc
    daa
    ld e, a
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    add hl, bc
    ld e, h
    ld b, $0a
    ld e, l
    dec c
    ld [hl], a
    rrca
    ld c, $0d
    and $22
    daa
    ld [de], a
    dec c
    and $22
    daa
    rrca
    inc bc
    ld d, [hl]
    ld h, b
    ld b, h
    ld bc, $0002
    rrca
    ld b, b
    ld [bc], a
    rrca
    ccf
    ld [bc], a
    daa
    inc bc
    daa
    ld e, a
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    dec bc
    ld e, h
    ld bc, $1f03
    ld b, l
    ld [hl+], a
    dec c
    ld e, h
    rrca
    daa
    ld [bc], a
    dec c
    adc d
    ld c, h
    adc $5b
    inc bc
    ld a, l
    ld h, b
    ld b, h
    inc h
    dec c
    add hl, de
    inc b
    stop
    inc bc
    daa
    ld e, a
    ld b, h
    add hl, de
    inc bc
    inc b
    ld b, $d5
    ld e, l
    inc bc
    daa
    ld e, a
    ld b, h
    add hl, de
    inc bc
    inc b
    db $10
    ld b, b
    ld de, $5e16
    dec c
    ld l, $55
    ld b, b
    ld de, $5dd4
    inc bc
    daa
    ld e, a
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld de, $195c
    inc b
    inc d
    ld bc, $0803
    add b
    db $fd
    ld a, [hl+]
    db $10
    dec c
    ld l, c
    ld h, c
    inc bc
    push bc
    ld h, b
    ld b, h
    inc h
    dec c
    nop
    inc bc
    daa
    ld e, a
    ld b, h
    ld bc, $1807
    ld a, [hl+]
    nop
    rra
    ld b, l
    ld [hl+], a
    add hl, de
    ld e, h
    dec c
    ld b, d
    jr nz, jr_004_5e62

    ld e, h
    inc bc
    di
    ld h, b
    ld b, h
    nop
    dec c
    ld [hl], a
    rrca
    ld c, $0d
    and $22
    daa
    db $10
    dec c
    and $22
    daa
    ld de, $0318
    daa
    ld e, a
    ld b, h
    add hl, bc
    inc bc

jr_004_5e62:
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    ld a, [bc]
    rra
    ld b, l
    ld [hl+], a
    ld e, $5c
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    jr nz, jr_004_5ed1

    jr z, jr_004_5e91

    ccf
    dec c
    db $f4
    inc hl
    jp z, Jump_000_125b

    ld a, h
    ld e, h
    dec c
    db $f4
    inc hl
    call z, Call_000_125b
    adc $5d
    ld b, $40
    ld e, h
    ld bc, $0c07
    dec c
    ld [hl], a
    rrca

jr_004_5e91:
    ld c, $09
    inc bc
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    ld a, [bc]
    rra
    ld b, l
    ld [hl+], a
    ld e, $5c
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    jr nz, jr_004_5f03

    ld b, $40
    ld e, h
    db $10
    ld e, h
    ld [de], a
    cp c
    ld e, [hl]
    add hl, bc
    inc b
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld c, $02
    ld a, [bc]
    inc c
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld c, $02
    inc c
    inc b
    adc [hl]
    ld [hl], a
    inc c
    ld bc, $0c0f
    dec c
    pop de
    rra
    ld a, [bc]

jr_004_5ed1:
    nop
    rrca
    daa
    nop
    ld b, $eb
    ld e, [hl]
    dec c
    pop de
    rra
    ld a, [bc]
    ld [$270f], sp
    ld [bc], a
    ld b, $eb
    ld e, [hl]
    dec c
    pop de
    rra
    or $08
    rrca
    daa
    inc b
    dec c
    rrca
    jr nz, jr_004_5ef6

    rlca
    nop
    rrca
    ld b, b
    ld [bc], a
    rrca
    ld c, h

jr_004_5ef6:
    ld bc, $8e04
    ld [hl], a
    inc c
    dec c
    ld sp, hl
    rra
    dec c
    adc l
    ld h, c
    ld [hl+], a
    ld e, h

jr_004_5f03:
    inc bc
    ld a, [de]
    ld h, c
    ld b, h
    add hl, de
    ld a, [bc]
    ld [$0b19], sp
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$0706], sp
    ld e, a
    nop
    inc h
    ld c, $03
    ld h, e
    ld h, c
    ld b, h
    dec b
    db $10
    dec de
    ld h, [hl]
    ld c, c
    inc bc
    dec de
    inc sp
    ld c, [hl]
    inc bc
    ld bc, $5b8e
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_5f6c

    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24b9
    or a
    jr z, jr_004_5f5c

    bit 5, a
    jr nz, jr_004_5f64

    ld a, [$dd2c]
    bit 3, a
    ret z

    ld e, $04
    ld bc, $5d0a
    jp Jump_000_0846


jr_004_5f5c:
    ld e, $04
    ld bc, $5d2a
    jp Jump_000_0846


jr_004_5f64:
    ld e, $04
    ld bc, $5d4c
    jp Jump_000_0846


jr_004_5f6c:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_5fb4

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_004_5fac

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24cd
    bit 6, a
    jr nz, jr_004_5fa6

    bit 5, a
    ret z

    xor a
    ld l, $0d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld e, $04
    ld bc, $5db9
    jp Jump_000_0846


jr_004_5fa6:
    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a

jr_004_5fac:
    ld e, $04
    ld bc, $5d76
    jp Jump_000_0846


jr_004_5fb4:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_5fef

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_5fe7

    bit 5, a
    ret z

    xor a
    ld l, $0d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld e, $04
    ld bc, $5db9
    jp Jump_000_0846


jr_004_5fe7:
    ld e, $04
    ld bc, $5d8b
    jp Jump_000_0846


jr_004_5fef:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_602a

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_6022

    bit 5, a
    ret z

    xor a
    ld l, $0d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld e, $04
    ld bc, $5db9
    jp Jump_000_0846


jr_004_6022:
    ld e, $04
    ld bc, $5d9c
    jp Jump_000_0846


jr_004_602a:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr z, jr_004_604e

    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $5b8e
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_604e:
    ld e, $04
    ld bc, $5dad
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_6075

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $5dad
    jp Jump_000_0846


jr_004_6075:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_60bd

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    ld l, $3f
    dec [hl]
    jr z, jr_004_60af

    ld e, $04
    ld bc, $5df9
    jp Jump_000_0846


jr_004_60af:
    ld l, $40
    dec [hl]
    dec l
    ld [hl], $01
    ld e, $04
    ld bc, $5e03
    jp Jump_000_0846


jr_004_60bd:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_60eb

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_004_60e3

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24cd
    bit 5, a
    ret z

jr_004_60e3:
    ld e, $04
    ld bc, $5e35
    jp Jump_000_0846


jr_004_60eb:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $5b8e
    call Call_000_233c
    jr c, jr_004_6112

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5baa
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $5e4d
    jp Jump_000_0846


jr_004_6112:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $44ae
    call Call_000_255b
    ret c

    ld bc, $5bae
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_613f

    bit 5, a
    ret z

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $40
    inc a
    ld [de], a
    ret


jr_004_613f:
    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    ld l, $40
    dec [hl]
    jr z, jr_004_615b

    ld l, $27
    inc [hl]
    ld hl, $5c22
    jp Jump_004_6193


jr_004_615b:
    ld e, $04
    ld bc, $5f17
    jp Jump_000_0846


    ld bc, $44ae
    jp Jump_000_255b


    push bc
    ld b, $20
    ld e, $04
    call Call_000_1f9c
    jr c, jr_004_6181

    ld b, $31
    ld e, $04
    call Call_000_1f9c
    jr c, jr_004_6186

    ld hl, $5c17
    jr jr_004_6189

jr_004_6181:
    ld hl, $5c13
    jr jr_004_6189

jr_004_6186:
    ld hl, $5c15

jr_004_6189:
    pop bc
    jp Jump_000_20f9


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

Jump_004_6193:
    ld e, $27
    ld a, [de]
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_004_619f

    inc h

jr_004_619f:
    call Call_000_20f9
    jp Jump_000_20be


    rst $38
    ld [bc], a
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    inc bc
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
    ld [de], a
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
    ld sp, hl
    ld a, [bc]
    ld sp, hl
    ld b, $fb
    inc b
    ei
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    nop
    ld [bc], a
    nop
    add b
    rst $38
    ld b, $00
    ld [bc], a
    nop
    ret nz

    rst $38
    ld b, $a0
    add b
    ldh [$ffc0], a
    add b
    ld h, b
    ret nz

    and b
    and b
    and b
    ldh [$ffe0], a
    add b

jr_004_6210:
    add b
    ldh [$ffe0], a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    ret nz

    add b
    db $fd
    stop
    nop
    nop
    nop
    nop
    add b
    db $fd
    stop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$fe00], sp
    jr nz, jr_004_6242

    inc c
    db $10
    ld [$0810], sp
    db $10
    ld [$0810], sp
    ld b, b
    db $fd
    ld d, $c0
    db $fc
    ld a, [de]
    db $10

jr_004_6242:
    ld [$1010], sp
    ld [$0808], sp
    inc b
    ld [$c004], sp
    nop
    nop
    ld bc, $0080
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    nop
    rst $38
    db $10
    ret nz

    nop
    nop
    ld bc, $f8fa
    ld [$0804], sp
    inc b
    db $10
    ld [$0204], sp
    inc b
    ld [bc], a
    ld [$8004], sp
    db $fd
    inc d
    nop
    db $fd
    jr @+$12

    ld [$1020], sp
    nop
    cp $20
    ld [$1008], sp
    inc c
    jr jr_004_627f

jr_004_627f:
    inc bc
    db $10
    inc c
    jr nc, jr_004_62c4

    ld d, b
    ld h, b
    ld [hl], b
    jr nz, jr_004_62c1

    jr c, jr_004_62c3

    ld d, b
    jr c, jr_004_62f6

    jr c, jr_004_6210

    jr c, @-$7e

    jr c, jr_004_62fc

    jr c, @+$52

    jr c, jr_004_62d0

    jr c, jr_004_62ba

    jr c, jr_004_62b0

    add b
    ld [bc], a
    inc e
    add b
    inc bc
    nop
    rst $38
    nop
    nop
    ld [de], a
    add b
    rst $38
    ldh [$fffe], a
    ld [de], a
    ld b, b
    jr nc, jr_004_62ae

jr_004_62ae:
    nop
    inc d

jr_004_62b0:
    nop
    nop
    ld [de], a
    ret nz

    db $fd
    ld [$fd00], sp
    inc c
    daa

jr_004_62ba:
    dec c
    ld l, c
    ld c, h
    ld c, $03
    push bc
    ld h, d

jr_004_62c1:
    push bc
    ld h, d

jr_004_62c3:
    xor c

jr_004_62c4:
    ld a, h
    inc bc
    inc l
    ld l, b
    ld b, h
    db $10
    ld e, h
    ld [de], a
    db $dd
    ld h, d
    add hl, de
    nop

jr_004_62d0:
    inc c
    add hl, de
    ld bc, $1906
    ld [bc], a
    inc c
    add hl, de
    ld bc, $0606
    db $fc
    ld h, d
    add hl, de
    nop
    ld [$0119], sp
    inc b
    add hl, de
    ld [bc], a
    ld [$0119], sp
    inc b
    ld b, $fc
    ld h, d
    jr z, @+$15

    ld b, b
    db $fc
    ld h, d
    inc de
    add b
    ld [$1364], sp

jr_004_62f6:
    ret nz

    ld l, l
    ld h, l
    ld b, $73
    ld h, [hl]

jr_004_62fc:
    daa
    dec c
    inc bc
    ld [hl+], a
    ldh [rNR11], a
    ld a, [de]
    ld h, e
    jr z, jr_004_6320

    ccf
    dec c
    db $f4
    inc hl
    inc bc
    ld h, d
    ld [de], a
    sub [hl]
    ld h, e
    dec c
    db $f4
    inc hl
    dec b
    ld h, d
    ld [de], a
    jr nc, jr_004_637a

    ld b, $f4
    ld h, e
    jr z, jr_004_632c

    ccf
    dec c
    db $f4
    inc hl

Jump_004_6320:
jr_004_6320:
    rlca
    ld h, d
    ld [de], a
    jr nc, jr_004_6388

    dec c
    db $f4
    inc hl
    add hl, bc
    ld h, d
    ld [de], a
    sub [hl]

jr_004_632c:
    ld h, e
    ld b, $f4
    ld h, e
    rrca
    dec sp
    nop
    inc bc
    inc l
    ld l, b
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld sp, $0d62
    xor l
    jr nz, jr_004_636d

    ld h, d
    inc h
    dec c
    inc bc
    dec sp
    ld l, b
    ld b, h
    ld bc, $1f05
    ld b, l
    ld [hl+], a
    inc sp
    ld h, d
    ld bc, $0006
    inc bc
    ld h, b
    ld l, b
    ld b, h
    ld bc, $1f05
    ld b, l
    ld [hl+], a
    dec [hl]
    ld h, d
    ld bc, $0007
    daa
    inc bc
    inc l
    ld l, b
    ld b, h
    ld bc, $1f03
    ld b, l
    ld [hl+], a
    scf
    ld h, d

jr_004_636d:
    dec c
    and $22
    daa
    inc de
    ld bc, $1f04
    ld b, l
    ld [hl+], a
    add hl, sp
    ld h, d
    db $10

jr_004_637a:
    dec sp
    ld [de], a
    ld a, [$1863]
    jr z, @+$1c

    ccf
    dec c
    db $f4
    inc hl
    inc de
    ld h, d
    ld [de], a

jr_004_6388:
    cp c
    ld h, d
    jr z, jr_004_639f

    jr nz, jr_004_6396

    ld h, h
    inc de
    ldh [$ff6d], a
    ld h, l
    ld b, $73
    ld h, [hl]

jr_004_6396:
    inc bc
    inc l
    ld l, b
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a

jr_004_639f:
    ld b, c
    ld h, d
    inc h
    dec c
    inc bc
    sub h
    ld l, b
    ld b, h
    dec c
    xor l
    jr nz, jr_004_63e6

    ld h, d
    ld bc, $1f05
    ld b, l
    ld [hl+], a
    ld b, e
    ld h, d
    ld bc, $0006
    inc bc
    inc l
    ld l, b
    ld b, h
    ld bc, $1f05
    ld b, l
    ld [hl+], a
    ld b, l
    ld h, d
    daa
    ld bc, $1f07
    ld b, l
    ld [hl+], a
    ld b, a
    ld h, d
    inc bc
    cp c
    ld l, b
    ld b, h
    add hl, de
    inc bc
    ld b, $0d
    and $22
    daa
    inc d
    add hl, de
    inc b
    ld a, [bc]
    add hl, de
    inc bc
    ld b, $0d
    and $22
    daa
    inc d
    add hl, de
    inc b
    ld a, [bc]
    nop
    inc bc
    inc l

jr_004_63e6:
    ld l, b
    ld b, h
    add hl, de
    ld [bc], a
    db $10
    add hl, de
    ld bc, $1906
    nop
    db $10
    ld b, $7e
    ld h, e
    rrca
    dec sp
    ld bc, $3306
    ld h, e
    inc bc
    inc l
    ld l, b
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld c, c
    ld h, d
    ld b, $a1
    ld h, e
    daa
    dec c
    ld l, $55
    ld b, b
    ld [de], a
    dec [hl]
    ld h, h
    inc bc
    db $ed
    ld l, b
    ld b, h
    add hl, bc
    inc b
    rlca
    nop
    nop
    add hl, de
    nop
    ld [$d30d], sp
    jr nz, jr_004_646b

    ld h, d
    add hl, de
    ld bc, $0d04
    db $d3
    jr nz, jr_004_6477

    ld h, d
    add hl, de
    ld [bc], a
    ld [$d30d], sp
    jr nz, @+$55

    ld h, d
    add hl, de
    ld bc, $0a04
    inc h
    inc hl
    dec c
    db $d3
    jr nz, jr_004_6495

    ld h, d
    dec c
    dec d
    ld hl, $625e
    inc bc
    ld d, l
    ld l, c
    ld b, h
    add hl, de
    rlca
    jr nz, jr_004_6456

    inc bc
    ld [hl+], a
    ldh [rNR11], a
    ld h, l
    ld h, h
    jr z, jr_004_646b

    ccf
    dec c
    db $f4
    inc hl
    dec bc

jr_004_6456:
    ld h, d
    ld [de], a
    ld sp, hl
    ld h, h
    dec c
    db $f4
    inc hl
    dec c
    ld h, d
    ld [de], a
    ld b, h
    ld h, l
    ld b, $93
    ld h, h
    jr z, jr_004_6477

    ccf
    dec c
    db $f4
    inc hl

jr_004_646b:
    rrca
    ld h, d
    ld [de], a
    sub e
    ld h, h
    dec c
    db $f4
    inc hl
    ld de, $1262
    ld b, h

jr_004_6477:
    ld h, l
    ld b, $f9
    ld h, h
    dec c
    ld e, a
    jr nz, jr_004_649d

    ld b, l
    inc bc
    ld hl, $4469
    ld bc, $0007
    dec c
    ld e, a
    jr nz, @+$20

    ld b, l
    inc bc
    ld a, e
    ld l, c
    ld b, h
    ld bc, $0007
    rrca
    daa

jr_004_6495:
    nop
    inc h
    ld a, [hl-]
    dec c
    and $22
    daa
    dec d

jr_004_649d:
    dec c
    jp z, $5720

    ld h, d
    inc bc
    xor a
    ld l, c
    ld b, h
    add hl, de
    dec b
    ld [$0619], sp
    ld [$0719], sp
    db $10
    ld bc, $1202
    rst $00
    ld h, h
    rra
    ld b, l
    ld [hl+], a
    ld h, b
    ld h, d
    ld bc, $1f01
    ld b, l
    ld [hl+], a
    ld h, d
    ld h, d
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld h, h
    ld h, d
    rra
    ld b, l
    ld [hl+], a
    ld h, [hl]
    ld h, d
    ld bc, $1f01
    ld b, l
    ld [hl+], a
    ld l, b
    ld h, d
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld l, d
    ld h, d
    ld de, $64e1
    jr jr_004_64e5

    ld c, d
    ld h, l
    jr jr_004_650b

    ld a, [de]
    ccf

jr_004_64e5:
    dec c
    db $f4
    inc hl
    dec d
    ld h, d
    ld [de], a
    cp c
    ld h, d
    jr z, jr_004_6502

    ld h, b
    db $fc
    ld h, d
    inc de
    add b
    ld l, l
    ld h, l
    ld b, $73
    ld h, [hl]
    inc h
    dec c
    dec c
    xor l
    jr nz, @+$6e

    ld h, d
    inc bc
    xor a

jr_004_6502:
    ld l, c
    ld b, h
    add hl, de
    dec b
    ld [$0619], sp
    db $10
    add hl, de

jr_004_650b:
    dec b
    ld [$2c03], sp
    ld l, b
    ld b, h
    ld bc, $1f07
    ld b, l
    ld [hl+], a
    ld [hl], d
    ld h, d
    inc bc
    xor a
    ld l, c
    ld b, h
    inc h
    ld a, [hl-]
    dec c
    and $22
    daa
    ld d, $19
    dec b
    ld [$0619], sp
    ld [$0719], sp
    db $10
    ld bc, $1f02
    ld b, l
    ld [hl+], a
    ld h, b
    ld h, d
    ld bc, $1f01
    ld b, l
    ld [hl+], a
    ld h, d
    ld h, d
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld h, h
    ld h, d
    ld b, $e1
    ld h, h
    rrca
    daa
    ld bc, $9606
    ld h, h
    rrca
    daa
    nop
    dec c
    db $d3
    jr nz, jr_004_65ab

    ld h, d
    dec c
    dec d
    ld hl, $625e
    inc bc
    rst $20
    ld l, c
    ld b, h
    add hl, de
    rlca
    jr nz, jr_004_6565

    sub [hl]
    ld h, h
    dec c
    ld e, a
    jr nz, jr_004_6583

jr_004_6565:
    ld b, l
    inc bc
    dec c
    ld l, d
    ld b, h
    ld bc, $0007
    daa
    inc bc
    inc l
    ld l, b
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld a, c
    ld h, d
    ld bc, $1f03
    ld b, l
    ld [hl+], a
    ld a, e
    ld h, d
    rrca
    rra
    add b

jr_004_6583:
    inc h
    ld c, [hl]
    dec c
    and $22
    daa
    add hl, de
    db $10
    ld b, [hl]
    inc b
    and $72
    dec bc
    rrca
    ld b, [hl]
    nop
    ld [hl+], a
    ld e, e
    ld h, [hl]
    inc b
    add hl, de
    inc e
    ld bc, $1d19
    ld bc, $1e19
    ld bc, $1f19
    ld bc, $2019
    ld bc, $2119
    ld bc, $2219

jr_004_65ab:
    ld [bc], a
    add hl, de
    inc hl
    ld bc, $2419
    ld bc, $2519
    ld bc, $2619
    ld bc, $2719
    ld bc, $2819
    ld [$3724], sp
    inc b
    jp z, $0c78

    ld a, [de]
    ld b, [hl]
    ld bc, $2703
    add hl, bc
    inc b
    dec c
    sub [hl]
    ld l, e
    add hl, bc
    dec b
    dec c
    xor h
    ld l, e
    dec b
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    dec c
    db $dd
    ld l, e
    inc h
    add hl, sp
    inc b
    and $72
    dec bc
    rrca
    ld b, [hl]
    nop
    add hl, de
    dec de
    inc b
    add hl, de
    ld a, [de]
    inc bc
    add hl, de
    add hl, de
    ld [bc], a
    add hl, de
    jr jr_004_65f1

    add hl, de
    rla

jr_004_65f1:
    ld [bc], a
    add hl, de
    ld d, $02
    add hl, de
    dec d
    ld bc, $1419
    ld bc, $1319
    ld bc, $0719
    ld bc, $ca04
    ld a, b
    inc c
    ld a, [de]
    ld b, [hl]
    daa
    ld [$fe80], sp
    dec c
    ld e, a
    jr nz, jr_004_668c

    ld h, d
    inc bc
    ld b, c
    ld l, d
    ld b, h
    add hl, de
    dec b
    db $10
    ld bc, $0007
    dec c
    and $22
    daa
    rla
    inc bc

Jump_004_6620:
    inc l
    ld l, b
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    add b
    ld h, d
    daa
    db $10
    ld e, h
    ld [de], a
    ld a, [hl-]
    ld h, [hl]
    add hl, de
    ld [bc], a
    inc c
    add hl, de
    ld bc, $1908
    nop
    db $10
    ld b, $43
    ld h, [hl]
    add hl, de
    ld [bc], a
    ld [$0119], sp
    inc b
    add hl, de
    nop
    ld [$2818], sp
    ld a, [de]
    ccf
    dec c
    db $f4
    inc hl
    rla
    ld h, d
    ld [de], a
    cp c
    ld h, d
    jr z, jr_004_6664

    ld h, b
    db $fc
    ld h, d
    inc de
    ldh [$ff08], a
    ld h, h
    ld b, $73
    ld h, [hl]
    rrca
    ld b, a
    nop
    dec b
    dec b
    rrca
    ld b, a
    db $10
    dec b

jr_004_6664:
    inc bc
    rrca
    ld b, a
    nop
    dec b
    dec b
    rrca
    ld b, a
    db $10
    dec b
    inc bc
    rrca
    ld b, a
    nop
    nop
    daa
    inc bc
    inc l
    ld l, b
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    ld [hl], h
    ld h, d
    dec c
    jp z, Jump_004_7620

    ld h, d
    inc h
    dec c
    inc bc
    ld [hl], b
    ld l, d
    ld b, h
    add hl, de
    dec b

jr_004_668c:
    ld [$0619], sp
    ld [$0519], sp
    ld [$0701], sp
    nop
    inc bc
    inc l
    ld l, b
    ld b, h
    dec c
    ld [hl], a
    rrca
    dec c
    inc h
    ld e, h
    dec c
    and $22
    daa
    rla
    db $10
    ld e, h
    ld [de], a
    cp c
    ld h, [hl]
    add hl, de
    rlca
    jr nz, jr_004_66c7

    ld [bc], a
    inc c
    add hl, de
    ld bc, $1908
    nop
    db $10
    ld b, $c5
    ld h, [hl]
    add hl, de
    rlca
    db $10
    add hl, de
    ld [bc], a
    ld [$0119], sp
    inc b
    add hl, de
    nop
    ld [$2818], sp

jr_004_66c7:
    ld a, [de]
    ccf
    dec c
    db $f4
    inc hl
    add hl, de
    ld h, d
    ld [de], a
    cp c
    ld h, d
    jr z, jr_004_66e6

    ret nz

    db $fc
    ld h, d
    inc de
    ldh [$ff08], a
    ld h, h
    ld b, $6d
    ld h, l
    ld bc, $0c07
    db $10
    ld e, h
    ld [de], a
    pop af
    ld h, [hl]
    add hl, de

jr_004_66e6:
    ld [bc], a
    db $10
    add hl, de
    ld bc, $1906
    nop
    db $10
    ld b, $b9
    ld h, d
    add hl, de
    ld [bc], a
    ld [$0119], sp
    inc b
    add hl, de
    nop
    ld [$b906], sp
    ld h, d
    add hl, bc
    ld b, $19
    dec b
    ld [bc], a
    add hl, de
    ld c, $02
    ld a, [bc]
    inc c
    ld b, $b9
    ld h, d
    inc b
    jp z, $0c78

    ld bc, $0c0f
    inc bc
    sub a
    ld l, d
    ld b, h
    inc h
    dec a
    inc b
    jp z, $0c78

    dec c
    ld sp, hl
    rra
    dec c
    rrca
    jr nz, @+$09

    rlca
    adc b
    dec c
    pop de
    rra
    ld [$0d00], sp
    adc d
    ld hl, $629b
    db $10
    ld e, h
    ld [de], a
    ld b, e
    ld h, a
    add hl, de
    dec c
    inc bc
    add hl, de
    inc c
    inc bc
    add hl, de
    dec bc
    inc bc
    add hl, de
    inc c
    inc bc
    ld b, $33
    ld h, a
    nop
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    ld b, $43
    ld h, a
    nop
    inc bc
    or h
    ld l, d
    ld b, h
    ld b, $15
    ld h, a
    inc h
    ld b, c
    rrca
    ld h, b
    nop
    ld bc, $0f0b
    daa
    nop
    dec c
    adc l
    ld h, c
    and c
    ld h, d
    inc bc

jr_004_676a:
    pop de
    ld l, d
    ld b, h
    nop
    inc h
    ld b, c
    rrca
    ld h, b
    nop
    ld bc, $0f0b
    ld h, $02
    rrca
    ld b, b
    ld [bc], a
    inc bc
    dec c
    ld l, e
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    xor e
    ld h, d
    ld d, $08
    nop
    rst $38
    ld a, [hl+]
    db $10
    inc b
    jp z, $0c78

    dec c
    ld sp, hl
    rra
    dec c
    pop de
    rra
    inc c
    nop
    dec c
    rrca
    jr nz, @+$07

    db $10
    ccf
    add hl, de
    ld [$0308], sp
    ld a, [hl+]
    ld l, e
    ld b, h
    ld bc, $0909
    inc b
    rrca

jr_004_67a8:
    ld b, a
    db $10
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    rra
    add b
    add hl, de
    ld a, [bc]
    ld [$0d16], sp
    xor l
    jr nz, jr_004_676a

    ld h, d
    ld b, $8a
    ld h, a
    inc b
    ld b, [hl]
    ld [hl], d
    dec bc
    rrca
    ld b, [hl]
    nop
    dec c
    rrca
    jr nz, jr_004_67d0

    inc b
    cp a
    dec c
    pop de

jr_004_67d0:
    rra
    ld [$0808], sp
    nop
    cp $2a
    jr nz, @+$28

    ret nz

    nop
    rrca
    ld b, b
    ld [bc], a
    inc bc
    ld [hl], $6b
    ld b, h
    ld bc, $0d00
    and $22
    daa
    jr jr_004_67ef

    inc b
    ld b, $e4
    ld h, a
    rlca

jr_004_67ef:
    nop
    nop
    dec c
    xor l
    jr nz, jr_004_67a8

    ld h, d
    inc bc
    ld a, a
    ld l, e
    ld b, h
    dec c
    and $22
    daa
    jr jr_004_6805

    inc b
    ld b, $fa
    ld h, a
    inc b

jr_004_6805:
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    rrca
    ld b, a
    db $10
    add hl, de
    inc b
    inc bc
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    inc b
    inc bc
    ld d, $04
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, a
    db $10
    add hl, de
    dec b
    ld [$0419], sp
    ld [$0116], sp
    and l
    ld h, c
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_6850

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_004_6858

    call Call_000_1ed3
    jp Jump_000_0da4


jr_004_6850:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_6858:
    ld e, $04
    ld bc, $6353
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_688c

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $6361
    jp Jump_000_0846


jr_004_688c:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_68a9

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_004_68b1

    call Call_000_1ed3
    jp Jump_000_0da4


jr_004_68a9:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_68b1:
    ld e, $04
    ld bc, $63b6
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_68e5

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $63e4
    jp Jump_000_0846


jr_004_68e5:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_6919

    ld bc, $61eb
    call Call_000_24a5
    or a
    jr z, jr_004_6911

    ld b, $40
    ld e, $04
    call Call_000_1f9c
    ret nz

    ld e, $04
    ld bc, $6435
    jp Jump_000_0846


jr_004_6911:
    ld e, $04
    ld bc, $647b
    jp Jump_000_0846


jr_004_6919:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_694d

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $6435
    jp Jump_000_0846


jr_004_694d:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_6973

    ld bc, $61eb
    call Call_000_24a5
    or a
    ret nz

    ld e, $04
    ld bc, $6487
    jp Jump_000_0846


jr_004_6973:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_69a7

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $6448
    jp Jump_000_0846


jr_004_69a7:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_69df

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $68
    inc l
    ld [hl], $2c
    ret


jr_004_69df:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_6a05

    ld bc, $61eb
    call Call_000_24a5
    or a
    ret nz

    ld e, $04
    ld bc, $6561
    jp Jump_000_0846


jr_004_6a05:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_6a39

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $6493
    jp Jump_000_0846


jr_004_6a39:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_6a68

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0d
    call Call_000_0f7a
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld bc, $661a
    jp Jump_000_0846


jr_004_6a68:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $61a5
    call Call_000_233c
    jr c, jr_004_6a8f

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61eb
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $6696
    jp Jump_000_0846


jr_004_6a8f:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $61c1
    call Call_000_255b
    ret c

    ld bc, $61ef
    call Call_000_24cd
    or a
    ret z

    ld e, $04
    ld bc, $676e
    jp Jump_000_0846


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $61c1
    call Call_000_255b
    ret c

    ld bc, $61ef
    call Call_000_24cd
    or a
    ret z

    ld e, $04
    ld bc, $675a
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61c1
    call Call_000_255b
    ret c

    ld bc, $61ef
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_6af6

    bit 5, a
    ret z

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $27
    inc a
    ld [de], a
    ret


jr_004_6af6:
    ld e, $27
    ld a, [de]
    inc a
    cp $02
    jr z, jr_004_6b05

    ld [de], a
    ld hl, $62a1
    jp Jump_004_6193


jr_004_6b05:
    ld e, $04
    ld bc, $676e
    jp Jump_000_0846


    ld bc, $61c1
    call Call_000_255b
    ret c

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_004_6b1d

    dec a
    ld [de], a
    ret


jr_004_6b1d:
    ld e, $47
    ld a, [de]
    xor $10
    ld [de], a
    ld e, $40
    ld a, [de]
    ld e, $26
    ld [de], a
    ret


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61cf
    jp Jump_000_255b


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61dd
    call Call_000_255b
    ret c

    ld bc, $61f3
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_6b5b

    bit 5, a
    ret z

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    inc a
    ld e, $40
    ld [de], a
    ret


jr_004_6b5b:
    ld e, $41
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld l, $40
    ld h, d
    dec [hl]

Jump_004_6b6c:
    jr nz, jr_004_6b76

    ld e, $04
    ld bc, $67ee
    jp Jump_000_0846


jr_004_6b76:
    ld l, $0f
    ld h, d
    ld [hl], $00
    inc l
    ld [hl], $fe
    ret


    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_004_6b92

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $61dd
    jp Jump_000_255b


jr_004_6b92:
    ld h, d
    jp Jump_000_0bba


    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_004_6ba1

    ld hl, $6287
    jr jr_004_6ba4

jr_004_6ba1:
    ld hl, $6291

jr_004_6ba4:
    ld e, $3b
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    push bc
    ld e, $3b
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld b, h
    ld c, l
    ld hl, $db51
    ld e, $04
    ld a, [bc]
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [hl]
    adc $00
    ld [de], a
    inc bc
    ld hl, $db53
    ld e, $07
    ld a, [bc]
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [hl]
    adc $00
    ld [de], a
    inc bc
    ld e, $3b
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    pop bc
    ret


    push bc
    call Call_000_0647
    ld c, $00
    ld b, $34

jr_004_6be5:
    sub b
    jr c, jr_004_6beb

    inc c
    jr jr_004_6be5

jr_004_6beb:
    ld a, c

jr_004_6bec:
    ldh [$ff80], a
    ld hl, $6282
    add l
    ld l, a
    jr nc, jr_004_6bf6

    inc h

jr_004_6bf6:
    ld b, $00
    ld d, b
    ld a, [hl]
    ld hl, $db51
    add [hl]
    ld c, a
    inc hl
    ld a, b
    adc [hl]
    ld b, a
    ld a, $70
    ld hl, $db53
    add [hl]
    ld e, a
    inc hl
    ld a, d
    adc [hl]
    ld d, a
    push bc
    call Call_000_1646
    pop bc
    cp $00
    jr nz, jr_004_6c22

    ldh a, [$ff80]
    inc a
    cp $05
    jr c, jr_004_6bec

    sub $05
    jr jr_004_6bec

jr_004_6c22:
    ldh a, [$ff9a]
    ld d, a
    ld e, $04
    ld a, c
    ld [de], a
    pop bc
    ret


    rst $38
    ld [bc], a
    nop
    nop
    nop

    db $09, $7d, $04, $00, $00

    nop
    add hl, bc
    ld a, l
    inc b
    ld bc, $9b02
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

    db $f9, $0e, $f9, $06, $fd, $05, $fb, $04, $00, $02, $00, $40

    rst $38
    ld b, $00
    ld [bc], a
    nop
    add b
    rst $38
    ld b, $c0
    add b

    db $40

    ld h, b
    add b
    and b
    ret nz

    db $e0

    db $40

    ld h, b
    add b
    and b
    ret nz

    ldh [rLCDC], a
    ld h, b
    add b
    add b
    ret nz

    ldh [rP1], a
    cp $40
    nop
    db $fd
    ld h, b
    db $08
    inc b

    db $04

    ld [bc], a

    db $08

    inc b

    db $08

    inc b

    db $08

    inc b

    db $08

    ld [bc], a

    db $08, $00, $01

    db $10
    add b
    db $01

    db $0c, $00, $00, $10

    ld [$c020], sp
    nop

    db $10

    inc c

    db $80, $fd, $10

    db $10
    db $08

    db $10

    db $08

    db $10

    db $08

    db $08

    db $10

    db $08, $00, $01

    db $10
    add b
    db $01

    db $00, $01, $00, $fe, $10

    jr nz, jr_004_6cb8

    add b

jr_004_6cb8:
    db $fd
    inc d
    sub b
    nop
    nop
    rst $38
    db $10
    and b
    nop
    add b
    cp $18

    db $00, $01, $80, $ff, $08

    jr nz, jr_004_6ccc

    add b

jr_004_6ccc:
    rst $38
    db $08

    db $80, $00, $00, $fe, $20

    add b
    nop
    nop
    cp $20

    db $10

    inc c

    db $0d, $20, $6d, $03, $6f, $70, $44, $0d, $1b, $6d, $0d, $69, $4c, $0e, $03, $ef
    db $6c

    rst $28
    ld l, h

    db $a9, $7c, $27, $08, $00, $ff, $2a, $20, $03, $6f, $70, $44, $0d, $e6, $22, $27
    db $25, $19, $00, $08, $24, $0d, $03, $7e, $70, $44, $19, $01, $08, $19, $00, $08
    db $19, $02, $08, $0d, $b2, $73, $18, $2a, $00, $29, $00, $06, $da, $6c

    xor a
    ld [$dd5d], a
    ret


    xor a
    ld hl, $dd5e
    ld [hl+], a
    ld [hl], a
    ret


    daa
    rrca
    daa
    inc bc
    dec c
    and $22
    daa
    dec h
    inc bc
    ld l, a
    ld [hl], b
    ld b, h
    ld bc, $1f00
    ld b, l
    ld [hl+], a
    add e
    ld l, h
    dec c
    xor l
    jr nz, @+$7f

    ld l, h
    inc bc
    or [hl]
    ld [hl], b
    ld b, h
    ld bc, $2401
    dec c
    nop
    dec c
    ld [hl], a
    rrca
    dec c
    inc bc
    db $e3
    ld a, l
    ld b, h
    ld bc, $1f02
    ld b, l
    ld [hl+], a
    add l
    ld l, h
    dec c
    or d
    ld [hl], e
    ld [de], a
    dec hl
    ld l, l
    jr @+$2c

    nop
    add hl, hl
    nop
    jr z, @+$1c

    ccf
    dec c
    db $f4
    inc hl
    ld l, c
    ld l, h
    ld [de], a
    rst $28
    ld l, h

    db $28, $13, $60, $7a, $6d

    inc de
    ret nz

    ret z

    ld l, [hl]
    ld b, $ae
    ld l, a

    db $0d, $e6, $22, $27, $25, $0f, $40, $00, $27, $01, $00, $1f, $45, $22, $87, $6c
    db $19, $01, $08, $19, $00, $08, $01, $02, $1f, $45, $22, $89, $6c, $27, $01, $00
    db $1f, $45, $22, $87, $6c, $19, $01, $08, $19, $00, $08, $01, $02, $1f, $45, $22
    db $89, $6c, $27, $01, $00, $1f, $45, $22, $8b, $6c, $26, $80, $00, $08, $80, $fe
    db $2a, $30, $03, $7e, $70, $44, $19, $01, $08, $19, $00, $08, $18, $2a, $00, $03
    db $6f, $70, $44, $1f, $45, $22, $8d, $6c, $10, $5c, $12

    ldh a, [$ff6d]

    db $19, $03, $10, $19, $01, $04, $0d, $e6, $22, $27, $1a, $24, $5c, $19, $04, $10
    db $19, $09, $08, $19, $07, $10, $06, $06, $6e

    add hl, de
    inc bc
    inc c
    add hl, de
    ld bc, $0d02
    and $22
    daa
    ld a, [de]
    inc h
    ld e, h
    add hl, de
    inc b
    inc c
    add hl, de
    add hl, bc
    inc b
    add hl, de

jr_004_6e04:
    rlca
    db $08

    db $0d, $b2, $73, $27, $03, $05, $71, $44, $0d, $32, $10, $0c, $19, $07, $10, $26
    db $c0, $00, $2a, $fc, $03, $30, $71, $44, $24, $51, $0d, $e6, $22, $27, $23, $0d
    db $e6, $22, $27, $24, $09, $10, $0d, $e6, $22, $27, $20, $19, $05, $02, $19, $06
    db $02, $0a, $0d, $b2, $73, $10, $5c, $12

    ld d, a
    ld l, [hl]

    db $0d, $9f, $21, $95, $6c, $0d, $42, $20, $8f, $6c, $03, $58, $71, $44, $19, $07
    db $08, $19, $09, $08, $01, $00, $00

    dec bc
    ld e, l
    ld l, [hl]
    ld b, $40
    ld l, [hl]
    rrca
    ld b, c
    jr nz, jr_004_6e70

    ccf
    nop
    rrca
    ld h, $08
    dec c
    ld e, a
    jr nz, jr_004_6e04

    ld l, h
    dec c

Jump_004_6e6c:
    sbc a
    ld hl, $6c9a

jr_004_6e70:
    inc bc
    db $eb
    ld [hl], c
    ld b, h
    inc h
    ld d, c
    dec c
    and $22
    daa
    inc hl
    dec c
    and $22
    daa
    inc h
    add hl, bc
    ld [$e60d], sp
    ld [hl+], a
    daa
    jr nz, @+$1b

    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    ld a, [bc]
    dec c
    or d
    ld [hl], e
    inc c

    db $0d, $e6, $22, $27, $25, $03, $6f, $70, $44, $01, $02, $1f, $45, $22, $98, $6c
    db $0d, $b2, $73, $18, $2a, $00, $29, $00, $28, $1a, $3f, $0d, $f4, $23, $6b, $6c
    db $12, $c8, $6e

    dec c
    db $f4
    inc hl
    ld l, l
    ld l, h
    ld [de], a
    daa
    ld l, l
    dec c
    db $f4
    inc hl
    ld l, a
    ld l, h
    ld [de], a
    xor [hl]
    ld l, a
    ld b, $ef
    ld l, h

    db $0d, $e6, $22, $27, $25, $0f, $40, $01, $03, $6f, $70, $44, $27, $01, $00, $1f
    db $45, $22, $9d, $6c, $0d, $ca, $20, $9f, $6c, $01, $01, $03, $b5, $71, $44, $00
    db $0d, $b2, $73, $03, $6f, $70, $44, $18, $10, $5c, $12

    ld c, $6f

    db $19, $02, $0c, $19, $03, $10, $19, $01, $04, $0d, $e6, $22, $27, $1b, $24, $5c
    db $19, $04, $10, $19, $09, $08, $06, $24, $6f

    add hl, de
    ld [bc], a
    ld [$0319], sp
    db $10
    add hl, de
    ld bc, $0d02
    and $22
    daa
    dec de
    inc h
    ld e, h
    add hl, de
    inc b
    inc c
    add hl, de
    add hl, bc
    inc b

    db $27, $2a, $08, $03, $05, $71, $44, $19, $07, $10, $0d, $15, $21, $a8, $6c, $1f
    db $45, $22, $a4, $6c, $03, $30, $71, $44, $26, $80, $00, $2a, $fc, $24, $51, $0d
    db $e6, $22, $27, $23, $0d, $e6, $22, $27, $24, $09, $14, $0d, $e6, $22, $27, $20
    db $19, $05, $02, $19, $06, $02, $0a, $0d, $b2, $73, $10, $5c, $12

    ld a, d
    ld l, a

    db $07, $00, $00, $29, $00, $0d, $42, $20, $aa, $6c, $03, $58, $71, $44, $19, $07
    db $08, $19, $09, $08, $01, $00, $00

    dec bc
    ld e, l
    ld l, [hl]
    ld b, $63
    ld l, a

    db $03, $6f, $70, $44, $01, $02, $1f, $45, $22, $a6, $6c, $18, $2a, $00, $29, $00
    db $28, $1a, $3f, $0d, $f4, $23, $71, $6c, $12, $7a, $6d

    dec c
    db $f4
    inc hl
    ld [hl], e
    ld l, h
    ld [de], a
    daa
    ld l, l
    dec c
    db $f4
    inc hl
    ld [hl], l
    ld l, h
    ld [de], a
    xor [hl]
    ld l, a
    ld b, $ef
    ld l, h
    daa
    inc bc
    dec b
    ld [hl], c
    ld b, h
    dec c
    ld [hl-], a
    db $10
    inc c
    add hl, de
    rlca
    db $10
    ld h, $c0
    nop
    ld a, [hl+]
    db $fc
    inc bc
    jr nc, @+$73

    ld b, h
    inc h
    ld d, c
    dec c
    and $22
    daa
    inc hl
    dec c
    and $22
    daa
    inc h
    add hl, bc
    db $10
    dec c
    and $22
    daa
    jr nz, @+$1b

    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    ld a, [bc]
    dec c
    or d
    ld [hl], e
    rrca
    ld b, b
    ld [bc], a
    add hl, hl
    nop
    ld [$0000], sp
    ld b, $24
    ld l, a
    inc bc
    ld l, a
    ld [hl], b
    ld b, h
    ld bc, $1f02
    ld b, l
    ld [hl+], a
    and [hl]
    ld l, h
    jr @+$2c

    nop
    add hl, hl
    nop
    jr z, @+$1c

    ccf
    dec c
    db $f4
    inc hl
    ld [hl], a
    ld l, h
    ld [de], a
    ret z

    ld l, [hl]
    dec c
    db $f4
    inc hl
    ld a, c
    ld l, h
    ld [de], a
    daa
    ld l, l
    dec c
    db $f4
    inc hl
    ld a, e
    ld l, h
    ld [de], a
    ld a, d
    ld l, l
    ld b, $ef
    ld l, h

    db $01, $00, $0c, $01, $02, $1f, $45, $22, $85, $6c, $06, $da, $6c, $09, $04, $19
    db $08, $02, $19, $09, $02, $0a, $0c

    ld b, $da
    ld l, h

    db $04, $ee, $7b, $0c, $01, $0b, $0c, $0f, $3f, $00, $06, $43, $70, $0f, $3f, $02
    db $0f, $40, $02, $0d, $0f, $20, $06, $06, $00, $0d, $ce, $72, $04, $ee, $7b, $0c
    db $0d, $f9, $1f, $0d, $d1, $1f, $10, $00, $01, $0a, $03, $92, $72, $44, $00, $03
    db $c8, $72, $44, $1f, $45, $22, $d8, $6c, $1b, $66, $49, $03

    ld bc, $6c2b
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $6c2b
    call Call_000_233c
    jr c, jr_004_70ae

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6c55
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $70
    inc l
    ld [hl], $6f
    ret


jr_004_70ae:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $6c2b
    call Call_000_233c
    jr c, jr_004_70fd

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr nz, jr_004_70c9

    ld l, $15
    ld [hl], $00

jr_004_70c9:
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6c55
    call Call_000_24cd
    bit 6, a
    jr z, jr_004_70e1

    ld h, d
    ld l, $0f
    ld [hl], $00
    inc l
    ld [hl], $00

jr_004_70e1:
    bit 7, a
    ret z

    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld h, d
    ld l, $27
    dec [hl]
    ld e, $04
    ld bc, $6d49
    jp Jump_000_0846


jr_004_70fd:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $6c2b
    call Call_000_233c
    jr c, jr_004_7128

    call Call_000_1ed3
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $6c55
    call Call_000_24cd
    bit 5, a
    ret z

    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1ef9


jr_004_7128:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $6c2b
    call Call_000_233c
    jr c, jr_004_7150

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6c55
    call Call_000_24cd
    bit 5, a
    ret z

    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1ef9


jr_004_7150:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $6c2b
    call Call_000_233c
    jr nc, jr_004_7168

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_7168:
    call Call_000_21c5
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $6c55
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_7187

    bit 5, a
    ret z

    ld e, $11
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_000_1ef9


jr_004_7187:
    ld e, $22
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $40
    ld a, [de]
    cp $01
    jr c, jr_004_71ad

    jr z, jr_004_71a5

    ld e, $04
    ld bc, $6feb
    jp Jump_000_0846


jr_004_71a5:
    ld e, $04
    ld bc, $6f80
    jp Jump_000_0846


jr_004_71ad:
    ld e, $04
    ld bc, $6e92
    jp Jump_000_0846


    ld bc, $6c2b
    call Call_000_233c
    jr c, jr_004_71e3

    call Call_000_1ed3
    call Call_000_0da4
    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_004_71db

    ld bc, $6c55
    call Call_000_24cd
    bit 6, a
    ret z

    ld h, d
    ld l, $0f
    ld [hl], $00
    inc l
    ld [hl], $00

jr_004_71db:
    ld e, $04
    ld bc, $6ee8
    jp Jump_000_0846


jr_004_71e3:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $6c2b
    call Call_000_233c
    jr nc, jr_004_71fb

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


jr_004_71fb:
    call Call_000_21d8
    call Call_000_21c5
    call Call_000_0da4
    ld bc, $6c55
    call Call_000_24cd
    bit 5, a
    jr z, jr_004_7221

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
    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_004_7221:
    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld [hl], $08
    call Call_000_203d
    ld e, $3c
    ld a, [de]
    jr nc, jr_004_7235

    rlca
    jr nc, jr_004_7261

    jr jr_004_7238

jr_004_7235:
    rlca
    jr c, jr_004_7261

jr_004_7238:
    ld h, d
    ld l, $3f
    bit 0, [hl]
    jr nz, jr_004_7247

    set 0, [hl]
    ld l, $11
    ld [hl], $00
    jr jr_004_7261

jr_004_7247:
    res 0, [hl]
    ld l, $11
    ld e, $41
    ld a, [de]
    ld [hl], a
    ld l, $3b
    ld a, [hl]
    cpl
    add $01
    ld [hl+], a
    ld a, [hl]
    cpl
    adc $00
    ld [hl], a
    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_004_7261:
    call Call_000_202b
    ld e, $3a
    ld a, [de]
    jr nc, jr_004_726d

    rlca
    ret nc

    jr jr_004_726f

jr_004_726d:
    rlca
    ret c

jr_004_726f:
    ld h, d
    ld l, $3f
    bit 1, [hl]
    jr nz, jr_004_727d

    set 1, [hl]
    ld l, $12
    ld [hl], $00
    ret


jr_004_727d:
    res 1, [hl]
    ld l, $12
    ld e, $41
    ld a, [de]
    ld [hl], a
    ld l, $39
    ld a, [hl]
    cpl
    add $01
    ld [hl+], a
    ld a, [hl]
    cpl
    adc $00
    ld [hl], a
    ret


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $6c47
    call Call_000_255b
    ret c

    ld bc, $6c59
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_72b4

    bit 5, a
    ret z

    ld e, $11
    ld a, [de]
    cpl
    inc a
    jp Jump_000_1ef9


jr_004_72b4:
    ld h, d
    ld l, $40
    dec [hl]
    jr z, jr_004_72c0

    ld l, $3f
    inc [hl]
    jp Jump_004_72ce


jr_004_72c0:
    ld e, $04
    ld bc, $7062
    jp Jump_000_0846


    ld bc, $6c47
    jp Jump_000_255b


Jump_004_72ce:
    ld e, $3f
    ld a, [de]
    rlca
    ld e, a
    rlca
    rlca
    add e
    ld l, a
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    rlca
    add e
    add l
    ld hl, $6cb0
    add l
    ld l, a
    jr nc, jr_004_72e7

    inc h

jr_004_72e7:
    call Call_000_20f9
    jp Jump_000_20be


    db $0d, $07, $73, $0d, $d1, $1f, $fd, $08, $08, $00, $02, $04, $52, $6f, $0b, $0f
    db $46, $00, $03, $17, $73, $44, $19, $ff, $08, $16

    ld hl, $dd5d
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    ret nz

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    call Call_000_0da4
    ld bc, $732b
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $7335
    jp Jump_000_0846


    db $fd, $02, $fe, $02

    rlca
    nop
    nop
    ld [$0000], sp

    db $08, $00, $00, $2a, $e8, $26, $00, $fe, $0d, $32, $10, $10, $03, $57, $49, $44
    db $19, $04, $02, $19, $05, $03, $19, $04, $03, $16, $03, $6a, $73, $44, $0d, $86
    db $73, $04, $ee, $7b, $0c, $0d, $0f, $20, $02, $02, $bf, $01, $ff, $00, $03, $78
    db $73, $44, $06, $53, $73

    ld bc, $7376
    call Call_000_24e8
    ld bc, $6c47
    jp Jump_000_255b


    db $f6, $fe

    ld bc, $7384
    call Call_000_24e8
    ld bc, $6c47
    jp Jump_000_255b


    db $0a, $fe

    ld hl, $dd5e
    ld a, [hl]
    or a
    jr z, jr_004_738e

    inc hl

jr_004_738e:
    ld [hl], d
    ret


    db $0d, $86, $73, $04, $ee, $7b, $0c, $03, $a4, $73, $44, $0d, $0f, $20, $03, $02
    db $bf, $01, $ff, $00

    ld bc, $73b0
    call Call_000_24e8
    ld bc, $6c47
    jp Jump_000_255b


    db $00, $0d

    push bc
    ld hl, $dd5e
    ld a, [hl]
    or a
    jr z, jr_004_73c7

    ld [hl], $00
    ld h, a
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_004_73c7

    call Call_000_0bba

jr_004_73c7:
    ld hl, $dd5f
    ld a, [hl]
    or a
    jr z, jr_004_73db

    ld [hl], $00
    ld h, a
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_004_73db

    call Call_000_0bba

jr_004_73db:
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    rst $38
    ld [bc], a
    nop
    nop

jr_004_73e4:
    nop
    add hl, bc
    ld a, l
    inc b
    nop
    nop
    nop
    add hl, bc
    ld a, l
    inc b
    inc b
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
    rst $38
    ld [bc], a
    jp nc, $0477

    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    ld sp, hl
    ld a, [bc]
    rst $30
    ld [$08f9], sp
    ld sp, hl
    ld b, $00
    nop
    ld [bc], a
    nop
    ld b, b
    rst $38
    rlca
    nop
    nop
    ld [bc], a
    nop
    add b
    rst $38
    rlca
    nop
    ld [bc], a
    nop
    inc bc
    add b
    nop
    ret nz

    nop
    inc c
    add b
    ld bc, $0a05
    db $10
    inc c
    db $10
    ld [$0408], sp
    ld b, b
    jr z, jr_004_746e

    jr z, jr_004_7438

jr_004_7438:
    rst $38
    nop
    cp $20
    ld b, b
    stop
    ld bc, $2010
    ld bc, $1020
    jr nz, @+$12

    db $10
    ld [$0200], sp
    add b
    ld [bc], a
    db $10
    inc d
    nop
    rst $38
    db $10
    ldh [rIE], a
    add b
    rst $38
    ld [$5070], sp
    jr jr_004_73db

    ld [bc], a
    ret nz

    rst $38
    nop
    rst $38
    db $10
    ld c, h
    jr nz, jr_004_73e4

    cp $0c
    nop
    rst $38
    db $10
    inc a
    jr nz, jr_004_747b

    ld h, b
    ccf

jr_004_746e:
    daa
    inc bc
    ret c

    ld [hl], a
    ld b, h
    dec c
    ld l, c
    ld c, h
    ld c, $03
    ld a, [hl]
    ld [hl], h
    ld a, [hl]

jr_004_747b:
    ld [hl], h
    xor c
    ld a, h
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $190c
    nop
    inc b
    add hl, de
    ld [bc], a
    inc c
    ld b, $6e
    ld [hl], h
    jr z, jr_004_74a2

    ld h, b
    sbc c
    ld [hl], h
    inc de
    and b
    ld e, h
    ld [hl], l
    ld b, $e5
    ld [hl], l
    daa
    dec c
    ld a, [hl+]
    ld a, e
    dec c
    add hl, de
    ld d, l
    jr nc, jr_004_74b4

jr_004_74a2:
    xor h
    ld [hl], h
    jr z, jr_004_74b9

    ret nz

    or h
    ld [hl], h
    ld b, $52
    ld [hl], l
    jr z, jr_004_74c1

    ld b, b
    or h
    ld [hl], h
    ld b, $52
    ld [hl], l

jr_004_74b4:
    dec c
    jr c, jr_004_7532

    inc bc
    ld e, c

jr_004_74b9:
    ld a, b
    ld b, h
    dec c
    ld b, h
    ld a, e
    jr nz, @+$76

    add hl, de

jr_004_74c1:
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h
    add hl, de
    ld bc, $0d0c
    ld b, h
    ld a, e
    jr nz, jr_004_7544

    add hl, de
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h
    add hl, de
    ld [bc], a
    inc c
    dec c
    ld b, h
    ld a, e
    jr nz, @+$76

    add hl, de
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h
    add hl, de
    ld bc, $0d0c
    ld b, h
    ld a, e
    jr nz, jr_004_7564

    add hl, de
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h
    add hl, de
    ld [bc], a
    inc c
    jr z, @+$15

    ld b, b
    ld b, l
    ld [hl], l
    dec c
    ld b, h
    ld a, e
    jr nz, jr_004_7579

    add hl, de
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h
    add hl, de
    ld bc, $0d0c
    ld b, h
    ld a, e
    jr nz, jr_004_7589

    add hl, de
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h
    add hl, de
    ld [bc], a
    inc c
    jr z, @+$15

    add b
    ld b, l
    ld [hl], l
    dec c
    ld b, h
    ld a, e
    jr nz, jr_004_759e

    add hl, de
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h

jr_004_7532:
    add hl, de
    ld bc, $0d0c
    ld b, h
    ld a, e
    jr nz, jr_004_75ae

    add hl, de
    nop
    inc b
    dec c
    ld b, h
    ld a, e
    inc h
    ld [hl], h
    add hl, de
    ld [bc], a

jr_004_7544:
    inc c
    jr jr_004_7570

    nop
    ld a, [hl+]
    nop
    jr z, jr_004_755f

    add b
    ld e, h
    ld [hl], l
    ld b, $e5
    ld [hl], l
    dec c
    ld a, $7b
    inc bc
    db $ed
    ld [hl], a
    ld b, h
    ld b, $bb
    ld [hl], h
    daa
    dec c
    ld a, [hl+]

jr_004_755f:
    ld a, e
    dec c
    ld [hl], h
    ld a, e
    dec c

jr_004_7564:
    jp c, $287b

    ld [hl], h
    inc bc
    rst $18
    ld a, b
    ld b, h
    rrca
    ld h, $10
    add hl, de

jr_004_7570:
    nop
    inc b
    add hl, de
    ld bc, $190c
    nop
    inc b
    add hl, de

jr_004_7579:
    ld [bc], a
    inc c
    ld b, $6f
    ld [hl], l
    daa
    jr jr_004_7582

    nop

jr_004_7582:
    inc bc
    ret c

    ld [hl], a
    ld b, h
    rra
    ld b, l
    ld [hl+], a

jr_004_7589:
    dec l
    ld [hl], h
    dec c
    ld [hl-], a
    db $10
    ld hl, sp+$03
    sub d
    ld a, c
    ld b, h
    add hl, de
    inc bc
    db $10
    rlca
    nop
    nop
    add hl, hl
    nop
    rra
    ld b, l
    ld [hl+], a

jr_004_759e:
    cpl
    ld [hl], h
    add hl, de
    nop
    ld [bc], a
    ld h, $00
    inc b
    add hl, de
    inc b
    ld [bc], a
    inc h
    ld a, $0d
    and $22

jr_004_75ae:
    daa
    inc e
    ld bc, $0d05
    db $d3
    jr nz, jr_004_75ed

    ld [hl], h
    dec c
    dec d
    ld hl, $743b
    rrca
    ld h, b
    dec l
    inc bc
    and l
    ld a, c
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    ld sp, $0874
    nop
    rst $38
    dec c
    ld b, d
    jr nz, jr_004_760c

    ld [hl], h
    inc bc
    pop bc
    ld a, c
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    inc sp
    ld [hl], h
    inc bc
    sbc $77
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    dec [hl]
    ld [hl], h
    ld b, $c4
    halt
    inc bc
    ret c

    ld [hl], a
    ld b, h
    daa
    add hl, de
    nop
    ld [bc], a

jr_004_75ed:
    add hl, de
    ld bc, $1906
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld b, $27
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1906
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld b, $10
    ld e, h
    ld [de], a
    ld [hl+], a
    halt
    daa
    add hl, de
    nop
    ld [bc], a

jr_004_760c:
    add hl, de
    ld bc, $1906
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld b, $27
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1906
    nop
    ld [bc], a
    add hl, de

Jump_004_7620:
    ld [bc], a
    ld b, $26
    nop
    cp $0d
    ld [hl-], a
    db $10
    jr nz, jr_004_762d

    rst $30
    ld a, c
    ld b, h

jr_004_762d:
    add hl, de
    inc b
    db $10
    ld bc, $0300
    ret c

    ld [hl], a
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    ld b, a
    ld [hl], h
    inc h
    ld [hl], $22
    ld l, [hl]
    halt
    inc b
    inc bc
    jr jr_004_76be

    ld b, h
    dec c
    db $d3
    jr nz, jr_004_7692

    ld [hl], h
    db $10
    ld e, h
    ld [de], a
    ld e, e
    halt
    add hl, de
    inc bc
    ld a, [bc]
    add hl, de
    nop
    ld [bc], a
    add hl, de
    inc b
    inc c
    ld b, $64
    halt
    add hl, de
    inc bc
    ld [$0019], sp
    ld [bc], a
    add hl, de
    inc b
    ld b, $0d
    dec d
    ld hl, $744d
    inc bc
    ld [hl-], a
    ld a, d
    ld b, h
    nop
    dec b
    inc b
    dec c
    and $22
    daa
    ld hl, $6e06
    halt
    jr @+$2b

    nop
    ld a, [hl+]
    nop
    jr z, jr_004_7692

    ld b, b
    ld l, [hl]
    ld [hl], h
    inc de
    ld h, b
    sbc c
    ld [hl], h
    inc de
    and b
    ld e, h
    ld [hl], l
    ld b, $e5
    ld [hl], l
    dec c
    ld [hl], a
    rrca
    ld c, $0d

jr_004_7692:
    and $22
    daa
    dec e
    rrca
    ld h, b
    dec l
    inc bc
    sbc $77
    ld b, h
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0102], sp
    ld b, $26
    ret nz

    rst $38
    dec c
    jp z, Jump_004_4f20

    ld [hl], h
    rrca
    ld b, b
    ld [bc], a
    inc bc
    ld e, [hl]
    ld a, d
    ld b, h
    nop
    inc bc
    sbc $77

jr_004_76be:
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    ld d, a
    ld [hl], h
    ld [$0000], sp
    rrca
    ld h, b
    ccf
    inc bc
    sub h
    ld a, d
    ld b, h
    ld h, $00
    cp $19
    dec b
    ld [bc], a
    ld h, $00
    ld [bc], a
    dec b
    inc b
    ld h, $00
    cp $05
    ld [bc], a
    inc bc
    ret c

    ld [hl], a
    ld b, h
    inc h
    ld c, l
    add hl, de
    nop
    inc b
    ld bc, $1f01
    ld b, l
    ld [hl+], a
    ld b, e
    ld [hl], h
    add hl, de
    nop
    inc b
    ld bc, $1f02
    ld b, l
    ld [hl+], a
    ld b, l
    ld [hl], h
    jr jr_004_7723

    nop
    ld a, [hl+]
    nop
    jr z, @+$15

    ld b, b
    ld l, [hl]
    ld [hl], h
    inc de
    and b
    sbc c
    ld [hl], h
    ld b, $5c
    ld [hl], l
    rrca
    ld h, b
    ccf
    ld bc, $0c00
    add hl, bc
    ld [$0819], sp
    ld [bc], a
    add hl, de
    ld b, $02
    ld a, [bc]
    inc c
    ld b, $6e
    ld [hl], h
    inc b
    ld a, [de]
    ld a, l
    inc c
    ld bc, $0c09

jr_004_7723:
    dec c
    rrca
    jr nz, jr_004_772f

    ld a, [bc]
    ld [$1a04], sp
    ld a, l
    inc c
    dec c
    ld sp, hl

jr_004_772f:
    rra
    ld h, $40
    ld [bc], a
    add hl, hl
    nop
    ld [hl+], a
    ld c, c
    ld [hl], a
    inc b
    inc bc
    and e
    ld a, d
    ld b, h
    add hl, de
    rlca
    db $10
    dec c
    ld [hl-], a
    db $10
    ld hl, sp+$05
    jr jr_004_7770

    nop
    nop
    dec b
    ld [$e60d], sp
    ld [hl+], a
    daa
    ld hl, $4906
    ld [hl], a
    inc h
    add hl, de
    dec c
    rrca
    jr nz, jr_004_775e

    dec b
    nop
    ld bc, $220a

jr_004_775e:
    dec sp
    ld e, a
    dec e
    rrca
    ld b, b
    ld [bc], a
    ld h, $80
    rst $38
    ld [$fe80], sp
    dec c
    ld e, a
    jr nz, jr_004_77c7

    ld [hl], h
    inc bc

jr_004_7770:
    pop bc
    ld a, d
    ld b, h
    nop
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    db $eb
    ld a, d
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    ld h, c
    ld [hl], h
    dec de
    ld h, [hl]
    ld c, c
    inc bc
    dec c
    rrca
    jr nz, jr_004_7791

    ld a, [bc]
    nop
    inc b
    ld a, [de]
    ld a, l
    inc c
    dec c
    ld sp, hl

jr_004_7791:
    rra
    ld bc, $2607
    ld h, b
    rst $38
    dec c
    jp z, Jump_004_6320

    ld [hl], h
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    pop af
    ld a, d
    ld b, h
    nop
    dec c
    rrca
    jr nz, jr_004_77ae

    dec b
    nop
    dec c
    ld sp, hl
    rra

jr_004_77ae:
    ld h, $c0
    rst $38
    dec c
    jp z, Jump_004_6620

    ld [hl], h
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    rrca
    ld a, e
    ld b, h
    ld bc, $000a
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    inc bc
    db $eb

jr_004_77c7:
    ld a, d
    ld b, h
    rra
    ld b, l
    ld [hl+], a
    ld l, c
    ld [hl], h
    dec de
    ld h, [hl]
    ld c, c
    inc bc
    ld bc, $1b0a
    sbc e
    ld c, l
    inc bc
    ld bc, $73e0
    jp Jump_000_255b


    ld bc, $73e0
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ld bc, $740a
    call Call_000_24a5
    bit 5, a
    ret z

    ld h, d
    ld l, $43
    set 7, [hl]
    ld e, $07
    ld a, [de]
    ld hl, $db53
    add [hl]
    cp $65
    jr nc, jr_004_783c

    cp $1b
    jr c, jr_004_7818

    call Call_000_202b
    jr nc, jr_004_783c

jr_004_7818:
    ld h, d
    ld l, $43
    ld e, $45
    ld a, [de]
    res 0, [hl]
    rlca
    jr c, jr_004_7847

jr_004_7823:
    ld e, $0f
    ld h, d
    ld l, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl-]
    ld [de], a

jr_004_782d:
    xor a
    ld [hl+], a
    ld [hl], a
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $78
    inc l
    ld [hl], $59
    ret


jr_004_783c:
    ld h, d
    ld l, $43
    ld e, $45
    ld a, [de]
    set 0, [hl]
    rlca
    jr c, jr_004_7823

jr_004_7847:
    ld e, $0f
    ld h, d
    ld l, $0d
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl-]
    cpl
    adc $00
    ld [de], a
    jr jr_004_782d

    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ld bc, $740a
    call Call_000_24cd
    bit 6, a
    jp nz, Jump_004_787f

    bit 7, a
    jr nz, jr_004_787f

    ld e, $07
    ld a, [de]
    ld hl, $db53
    add [hl]
    cp $1b
    jr c, jr_004_787f

    cp $65
    ret c

Jump_004_787f:
jr_004_787f:
    ld h, d
    ld l, $43
    res 7, [hl]
    ld e, $04
    ld a, [de]
    ld hl, $db51
    add [hl]
    cp $1c
    jr c, jr_004_789e

    cp $84
    jr nc, jr_004_78c2

    call Call_000_1ec0
    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_004_78c7

    jr jr_004_78a3

jr_004_789e:
    ld e, $45
    ld a, $40
    ld [de], a

jr_004_78a3:
    ld e, $43
    ld a, [de]
    rrca
    jr c, jr_004_78cd

jr_004_78a9:
    ld e, $0d
    ld h, d
    ld l, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl-]
    ld [de], a

jr_004_78b3:
    xor a
    ld [hl+], a
    ld [hl], a
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $77
    inc l
    ld [hl], $ed
    ret


jr_004_78c2:
    ld e, $45
    ld a, $c0
    ld [de], a

jr_004_78c7:
    ld e, $43
    ld a, [de]
    rrca
    jr c, jr_004_78a9

jr_004_78cd:
    ld e, $0d
    ld h, d
    ld l, $0f
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl-]
    cpl
    adc $00
    ld [de], a
    jr jr_004_78b3

    call Call_000_21d8
    call Call_000_21c5
    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ld bc, $740a
    call Call_000_24cd
    ld l, $26
    ld h, d
    dec [hl]
    ret nz

    ld [hl], $10
    ld l, $40
    dec [hl]
    jr z, jr_004_791b

    ld b, $08
    ld e, $07
    call Call_000_1f9c
    jr nc, jr_004_7923

    ld b, $40
    ld e, $04
    call Call_000_1f9c
    jr nc, jr_004_7923

    ld b, $30
    ld e, $04
    call Call_000_1f9c
    jr c, jr_004_7923

jr_004_791b:
    ld e, $04
    ld bc, $757e
    jp Jump_000_0846


jr_004_7923:
    ld e, $45
    ld a, [de]
    ldh [$ff80], a
    ld e, $43
    ld a, [de]
    ldh [$ff81], a
    call Call_004_7b74
    ld e, $45
    ld a, [de]
    ld hl, $ff80
    cp [hl]
    jr z, jr_004_7961

    ld h, d
    ld l, $3f
    bit 0, [hl]
    jr nz, jr_004_794d

    set 0, [hl]
    ld l, $11
    ld [hl], $00
    ld e, $45
    ldh a, [$ff80]
    ld [de], a
    jr jr_004_7961

jr_004_794d:
    res 0, [hl]
    ld l, $11
    ld e, $41
    ld a, [de]
    ld [hl], a
    ld l, $3b
    ld a, [hl]
    cpl
    add $01
    ld [hl+], a
    ld a, [hl]
    cpl
    adc $00
    ld [hl], a

jr_004_7961:
    call Call_000_202b
    ld e, $3a
    ld a, [de]
    jr nc, jr_004_796d

    rlca
    ret nc

    jr jr_004_796f

jr_004_796d:
    rlca
    ret c

jr_004_796f:
    ld h, d
    ld l, $3f
    bit 1, [hl]
    jr nz, jr_004_797d

    set 1, [hl]
    ld l, $12
    ld [hl], $00
    ret


jr_004_797d:
    res 1, [hl]
    ld l, $12
    ld e, $41
    ld a, [de]
    ld [hl], a
    ld l, $39
    ld a, [hl]
    cpl
    add $01
    ld [hl+], a
    ld a, [hl]
    cpl
    adc $00
    ld [hl], a
    ret


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ret c

    ld bc, $740a
    jp Jump_000_24cd


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $73e0
    call Call_000_233c
    jr c, jr_004_79b9

    ld bc, $740a
    jp Jump_000_24cd


jr_004_79b9:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    ld bc, $73e0
    call Call_000_233c
    jr c, jr_004_79ef

    call Call_000_21eb
    call Call_000_0da4
    ld bc, $740a
    call Call_000_24cd
    bit 7, a
    jr nz, jr_004_79e3

    ld e, $07
    ld a, [de]
    ld hl, $db53
    add [hl]
    cp $65
    ret c

jr_004_79e3:
    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $77
    inc l
    ld [hl], $de
    ret


jr_004_79ef:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ld bc, $740a
    call Call_000_24cd
    bit 5, a
    ret z

    ld h, d
    ld l, $1f
    ld [hl], $44
    inc l
    ld [hl], $77
    inc l
    ld [hl], $d8
    ret


    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ld bc, $740a
    call Call_000_24cd
    bit 5, a
    ret z

    ld e, $04
    ld bc, $768d
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ld bc, $740a
    call Call_000_24cd
    bit 5, a
    jr nz, jr_004_7a56

    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ret nz

    ld e, $04
    ld bc, $7678
    jp Jump_000_0846


jr_004_7a56:
    ld e, $04
    ld bc, $768d
    jp Jump_000_0846


    ld bc, $73e0
    call Call_000_233c
    jr c, jr_004_7a8c

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $740a
    call Call_000_24cd
    bit 7, a
    ret z

    ld h, d
    ld l, $40
    dec [hl]
    jr z, jr_004_7a84

    ld hl, $7452
    call Call_000_20f9
    jp Jump_000_20be


jr_004_7a84:
    ld e, $04
    ld bc, $76bb
    jp Jump_000_0846


jr_004_7a8c:
    ld e, $04
    ld bc, $7cd9
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $73e0
    call Call_000_255b
    ld bc, $740a
    jp Jump_000_24a5


    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $73fc
    call Call_000_255b
    ret c

    ld bc, $740e
    call Call_000_24cd
    bit 5, a
    ret z

    ld e, $04
    ld bc, $7753
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $73fc
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld l, $40
    ld h, d
    dec [hl]
    jr z, jr_004_7ae3

    ld hl, $745c
    call Call_000_20f9
    jp Jump_000_20be


jr_004_7ae3:
    ld e, $04
    ld bc, $7774
    jp Jump_000_0846


    ld bc, $73fc
    jp Jump_000_255b


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $73fc
    call Call_000_255b
    ret c

    ld bc, $740e
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $77a5
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $73fc
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $04
    ld bc, $77c1
    jp Jump_000_0846


    call Call_000_202b
    ld l, $43
    ld h, d
    jr nc, jr_004_7b35

    res 0, [hl]
    ret


jr_004_7b35:
    set 0, [hl]
    ret


    ld h, d
    ld l, $43
    set 7, [hl]
    ret


    ld h, d
    ld l, $43
    res 7, [hl]
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $43
    ld a, [de]
    rlca
    jp nc, Jump_000_20f0

    ld e, $5c
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_004_7b5a

    inc h

jr_004_7b5a:
    ld e, $43
    ld a, [de]
    rrca
    ld e, $0f
    jr c, jr_004_7b68

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


jr_004_7b68:
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl+]
    cpl
    adc $00
    ld [de], a
    ret


Call_004_7b74:
    push bc
    ld h, $a0
    ld l, $04
    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_004_7bad

    ld a, [hl+]
    sub $30
    ld c, a
    ld a, [hl]
    sbc $00
    jr c, jr_004_7bcc

    ld b, a
    ld a, c
    ld hl, $db51
    sub [hl]
    ld e, a
    inc hl
    ld a, b
    sbc [hl]
    jr c, jr_004_7bcc

    ld a, e
    cp $1c
    jr c, jr_004_7bcc

jr_004_7b99:
    ld e, $04
    ld a, [de]
    sub c
    inc e
    ld a, [de]
    sbc b
    jr nc, jr_004_7ba6

    ld a, $40
    jr jr_004_7ba8

jr_004_7ba6:
    ld a, $c0

jr_004_7ba8:
    ld e, $45
    ld [de], a
    pop bc
    ret


jr_004_7bad:
    ld a, [hl+]
    add $30
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a
    ld a, c
    ld hl, $db51
    sub [hl]
    cp $64
    jr c, jr_004_7b99

    ld h, $a0
    ld l, $04
    ld a, [hl+]
    sub $30
    ld c, a
    ld a, [hl]
    sbc $00
    ld b, a
    jr jr_004_7b99

jr_004_7bcc:
    ld h, $a0
    ld l, $04
    ld a, [hl+]
    add $30
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a
    jr jr_004_7b99

    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [hl+]
    ld e, $11
    ld [de], a
    inc e
    ld [de], a
    ld e, $41
    ld [de], a
    ld e, $45
    ld a, [de]
    rlca
    ld e, $3b
    jr c, jr_004_7bf8

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl-]
    ld [de], a
    jr jr_004_7c03

jr_004_7bf8:
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl-]
    cpl
    adc $00
    ld [de], a

jr_004_7c03:
    ld e, $43
    ld a, [de]
    rrca
    ld e, $39
    jr c, jr_004_7c12

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    jr jr_004_7c1d

jr_004_7c12:
    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl+]
    cpl
    adc $00
    ld [de], a

jr_004_7c1d:
    ld e, $5c
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_004_7c25

    inc h

jr_004_7c25:
    ld e, $40
    ld a, [hl]
    ld [de], a
    xor a
    dec e
    ld [de], a
    ret


    db $17, $ff, $0d, $0f, $44, $ff, $0d, $5f, $22, $0d, $72, $22, $0d, $a7, $7e, $0d
    db $f6, $7e, $0f, $60, $2d, $0d, $d4, $7e, $0d, $4e, $4c, $0d, $ac, $7e, $12

    ld l, e
    ld a, h

    db $27, $0d, $5f, $20, $1e, $45, $10, $5b, $1e, $07, $22, $48, $22, $48

    sbc d
    ld e, b
    adc e
    ld e, [hl]
    db $dd
    ld h, [hl]

    db $19, $70

    add hl, bc
    ld [hl], a

    db $03, $0e, $7e, $44, $00

    db $10
    ld e, e
    ld c, $07
    ld sp, hl
    ld b, l
    ld d, h
    ld c, [hl]
    ld e, l
    ld d, [hl]
    ld b, b
    ld e, h
    cp c
    ld h, d
    jp c, Jump_004_6b6c

    ld [hl], h
    db $16

    db $10, $5b, $0e, $07, $fa, $45, $55, $4e

    ld e, l
    ld d, [hl]
    ld b, b
    ld e, h
    rlca
    ld h, a
    jp c, $c46c

    halt
    db $16

    db $18, $03, $e3, $7d, $44, $10, $5b, $0e, $07, $f9, $45, $54, $4e

    ld e, l
    ld d, [hl]
    adc [hl]
    ld e, [hl]
    ldh [$ff66], a

    db $1c, $70

    ld l, [hl]
    ld [hl], h
    db $16

    db $0d, $b2, $4c, $12, $c1, $7c, $10, $5b, $0e, $07, $f9, $45, $54, $4e

    ld e, l
    ld d, [hl]
    ld b, b
    ld e, h
    cp c
    ld h, d
    jp c, Jump_004_6e6c

    ld [hl], h

    db $0d, $41, $4d, $0f, $40, $02, $10, $5b, $0e, $07, $39, $46, $6a, $4e

    and e
    ld d, [hl]
    ld [hl], h
    ld e, h
    db $ec
    ld h, d

    db $6e, $6d

    adc l
    ld [hl], h

    db $0f, $41, $01, $1c, $f6, $7c, $04, $10, $5b, $1e, $07, $25, $48, $69, $50

    sbc l
    ld e, b
    xor d
    ld e, [hl]
    db $fd
    ld h, [hl]

    db $26, $70

    rrca
    ld [hl], a

    db $0f, $41, $00, $00, $03, $23, $23, $40, $18, $0d, $72, $22, $0f, $60, $3f, $0d
    db $e6, $22, $27, $04, $24, $34, $1d, $0d, $7b, $22, $0f, $4b, $00, $0f, $4a, $00
    db $08, $00, $00, $0d, $16, $4d, $10, $46, $04, $83, $77, $0b, $0f, $46, $00, $24
    db $11, $0f, $47, $10, $09, $04, $19, $00, $02, $19, $01, $02, $19, $02, $02, $19
    db $03, $02, $19, $04, $02, $19, $05, $02, $19, $06, $02, $19, $07, $02, $0a, $0f
    db $47, $00, $1a, $46, $10, $5b, $1e, $07, $31, $48, $75, $50

    xor d
    ld e, b
    add $5e
    ld a, [bc]
    ld h, a

    db $33, $70

    inc e
    ld [hl], a

    db $07, $00, $00, $08, $00, $fe, $0d, $5f, $20, $1e, $45, $03, $43, $7e, $44, $0f
    db $60, $00, $0f, $61, $40, $0f, $4c, $01, $0d, $82, $22, $00

    inc bc
    ld a, b
    ld a, [hl]
    ld b, h
    inc h
    ld c, $05
    or h
    rrca
    rra
    add b
    dec de
    ld d, d
    ld b, e
    dec b

    db $17, $ff, $0d, $0f, $61, $00, $0d, $0f, $20, $08, $08, $00, $0f, $4c, $01, $10
    db $5b, $0e, $26, $38, $48, $40, $48, $95, $48

    sbc l
    ld c, b

    db $2f, $49, $c2, $48, $a5, $48, $7c, $50

    or h
    ld d, b
    di
    ld d, b

    db $01, $51, $a6, $51

    or c
    ld e, b
    cp c
    ld e, b
    pop bc
    ld e, b
    call $d85e
    ld e, [hl]
    db $e3
    ld e, [hl]
    inc hl
    ld e, a
    ld de, $5367
    ld h, a
    add l
    ld h, a
    cp c
    ld h, a
    pop bc
    ld h, a
    inc b
    ld l, b
    ld e, $68

    db $3a, $70, $40, $70

    inc hl
    ld [hl], a
    add l
    ld [hl], a

    db $33, $49

    rst $08
    ld d, c

    db $ed, $72, $60, $4d

    ld a, [hl+]
    ld e, e

    db $4f, $73, $63, $73, $90, $73

    db $16

Call_004_7de3:
    ld e, $5b
    ld a, [de]
    rlca
    ld hl, $7e00
    add l
    ld l, a
    jr nc, jr_004_7def

    inc h

jr_004_7def:
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    call Call_000_233c
    ret nc

    ld e, $04
    ld bc, $7cd9
    call Call_000_0846
    scf
    ret


    db $23, $45, $68, $4d

    inc sp
    ld d, l
    adc [hl]
    ld e, e
    and l
    ld h, c

    db $2b, $6c

    ldh [$ff73], a

    call Call_004_7de3
    ret c

    call Call_000_21eb
    call Call_000_0da4
    ld e, $5b
    ld a, [de]
    ld hl, $7e35
    rlca
    add l
    ld l, a
    jr nc, jr_004_7e24

    inc h

jr_004_7e24:
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $7c91
    jp Jump_000_0846


    db $4d, $45, $92, $4d

    ld l, e
    ld d, l
    xor d
    ld e, e
    db $eb
    ld h, c

    db $55, $6c

    ld a, [bc]
    ld [hl], h

    call Call_004_7e78
    ret c

    call Call_000_21eb
    call Call_000_0da4
    ld e, $5b
    ld a, [de]
    ld hl, $7e6a
    rlca
    add l
    ld l, a
    jr nc, jr_004_7e59

    inc h

jr_004_7e59:
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $04
    ld bc, $7d74
    jp Jump_000_0846


    ld c, l
    ld b, l
    sub d
    ld c, l
    ld l, e
    ld d, l
    xor d
    ld e, e
    db $eb
    ld h, c

    db $55, $6c

    ld a, [bc]
    ld [hl], h

Call_004_7e78:
    ld e, $5b
    ld a, [de]
    rlca
    ld hl, $7e99
    add l
    ld l, a
    jr nc, jr_004_7e84

    inc h

jr_004_7e84:
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    call Call_000_255b
    ret c

    ld a, [$dd2c]
    bit 3, a
    ret z

    ld e, $03
    ld bc, $4e33
    jp Jump_000_0846


    db $3f, $45, $84, $4d

    ld b, c
    ld d, l
    sbc h
    ld e, e
    or e
    ld h, c

    db $39, $6c

    xor $73

    ld a, d
    ld [$dd61], a
    ret


    push bc
    ld e, $5b
    ld a, [de]
    ld hl, $7ec6
    rlca
    add l
    ld l, a
    jr nc, jr_004_7eb9

    inc h

jr_004_7eb9:
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_2491
    and $80
    ld e, $27
    ld [de], a
    pop bc
    ret


    db $4d, $45, $92, $4d

    ld l, e
    ld d, l
    xor d
    ld e, e
    db $eb
    ld h, c

    db $55, $6c

    ld a, [bc]
    ld [hl], h

    ld e, $5b
    ld a, [de]
    rlca
    ld hl, $7ee8
    add l
    ld l, a
    jr nc, jr_004_7ee0

    inc h

jr_004_7ee0:
    ld e, $5e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    db $08, $08, $08, $0a

    ld b, $0c
    ld [$070a], sp
    dec bc

    db $08, $08

    ld b, $0c

    xor a
    ld [$dd60], a
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $04
    nop
    nop
    ld h, b
    inc b
    add b
    nop
    nop
    nop
    stop
    nop
    nop
    inc b
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
    rst $18
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
    ld [bc], a
    nop
    ld b, [hl]
    nop
    ld bc, $0c00
    nop
    nop
    nop
    inc h
    jr nz, jr_004_7f4d

jr_004_7f4d:
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
    add b
    nop
    ld bc, $4002
    nop
    add d
    nop
    nop
    ld b, c
    ld [$0000], sp
    db $10
    add h
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
    ld d, $00
    ld b, b
    ld hl, $0000
    nop
    ld [$0000], sp
    inc h
    ld [$0001], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld sp, hl
    rst $18
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
