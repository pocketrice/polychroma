; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    db $d3
    ld a, b
    dec d
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ld b, $00
    nop
    ld [bc], a
    inc c
    rlca
    ld b, $06
    inc hl
    add b
    ldh [rNR51], a
    ld h, $f9
    ld hl, sp+$3d
    ld [$1b1b], sp
    ld l, $2a
    add d
    add b
    ld a, h
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld l, $2e
    add b
    dec a
    add b
    ld a, l
    ld [hl-], a
    ld [$7d80], sp
    ld [hl], $34
    add b
    add b
    ld [hl+], a
    inc h
    ld [hl+], a
    ld a, a
    ld [hl-], a
    ld [hl], $7d
    ld a, l
    add b
    ld [hl+], a
    ld [hl-], a
    ldh [$ff30], a
    add b
    ld [hl], $7d

Jump_016_4041:
    inc [hl]
    add b
    ld [hl-], a
    ld hl, sp+$2b
    ld h, $7e
    inc h
    ld a, [hl]
    ld [hl+], a
    ld a, l
    add d
    ld a, l
    jr z, jr_016_407a

    inc l
    ld l, $40
    add b
    ld b, h
    ld b, [hl]
    ld a, l
    dec a
    ld d, c
    add b
    ld a, l
    dec hl
    add b
    ld b, a
    dec hl
    add b
    ld a, l
    dec a
    dec a
    add b
    ld d, c
    add b
    add d
    ld [hl+], a
    add d
    inc [hl]
    add d
    ld a, [hl]
    add d
    add b
    ld c, b
    ld h, d
    ld c, d
    inc de
    ld c, c
    add b
    add d
    ld a, l
    ld c, d
    db $fd
    add c
    ld c, l

jr_016_407a:
    ldh a, [$ff80]
    ld a, l
    add b
    ld a, a
    ld a, [hl]
    add d
    ld a, l
    add b
    inc [hl]
    ld a, a
    ld a, h
    call nz, Call_016_6400
    add hl, de
    ld [hl-], a
    add d
    inc h
    ld a, l
    inc c
    add d
    ld a, a
    ld hl, sp-$08
    ld a, l
    dec hl
    ld sp, hl
    ld hl, sp-$80
    ld c, b
    ld c, d
    ld c, h
    dec a
    add b
    ld c, [hl]

jr_016_409e:
    db $fd
    ld a, l
    ld c, d
    add b
    ld c, l
    add b
    add e
    nop
    sub a
    nop
    inc h
    inc hl
    add b
    ld b, c
    add d
    add b
    dec b
    dec hl
    add b
    dec a
    add b
    ld sp, hl
    ld hl, sp-$7d
    nop
    adc a
    ld de, $807c
    ld sp, hl
    ld hl, sp-$80
    inc a
    ld a, l
    add b
    ld a, h
    ld a, l
    inc b
    ld a, [hl]
    add b
    add hl, sp
    add b
    add b
    ld a, h
    nop
    ld [hl+], a
    add b
    ld de, $827f
    add b
    or $4a
    ld hl, sp+$7d
    dec hl
    dec a
    add b
    ld a, l
    ld a, l
    add b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec hl
    add hl, bc
    ld [hl+], a
    ld a, [bc]
    ld [bc], a
    add hl, bc
    ld a, [bc]
    ld c, e
    ld b, c
    add b
    add d
    ld [$7e7f], sp
    inc a
    jr c, jr_016_416c

    ld h, $36
    ld [hl+], a
    inc [hl]
    add e
    nop
    jr c, jr_016_407a

    nop
    ld b, b
    ld b, $80
    ld [hl-], a
    ld [hl+], a
    ld a, l
    ld [hl-], a
    ld a, h
    ld a, h
    add e
    nop
    nop
    ld b, $10
    db $10
    ld [de], a
    inc e
    ld d, $16
    rla
    inc hl
    add b
    ldh [rWX], a
    ld [hl], $fb
    ld hl, sp-$80
    dec bc
    dec bc
    jr jr_016_4154

    jr c, jr_016_409e

    add b
    ld a, h
    ld a, [de]
    ld a, [de]
    add hl, de
    inc a
    inc a
    cpl
    add b
    add b

Jump_016_4124:
    ld a, l
    ld [hl+], a
    add b
    jr jr_016_4162

    ld h, $24
    add b
    add b
    ld [hl-], a
    inc [hl]
    ld [hl-], a
    ld a, a
    ld h, $22
    ld a, l

Jump_016_4134:
    ld a, l
    ld [hl+], a
    add b
    ld [hl+], a
    ld [hl+], a
    ld h, $80
    inc h

Jump_016_413c:
    ld a, l
    ld [hl+], a
    add b
    ld hl, sp+$7d
    ld a, [hl]
    ld [hl], $7e
    inc [hl]
    ld a, l
    ld [hl-], a
    add h
    ld a, l
    jr c, jr_016_4185

    inc a
    ld a, $50
    add b
    ld d, h
    ld d, [hl]
    ld a, l
    cpl
    ld b, e

jr_016_4154:
    add b
    add hl, sp
    ld a, l
    ld d, l
    add b
    add hl, sp
    add b
    ld a, l
    ld b, c
    cpl
    add b
    add hl, bc
    ld b, e
    add h

jr_016_4162:
    ld [hl-], a
    add h
    ld a, l
    add h
    ld a, [hl]
    add h
    add b
    ld e, b
    ld h, d
    ld e, d

jr_016_416c:
    ld [$8059], sp
    add h
    ld a, l
    ld e, d
    db $fd
    add c
    ld e, l
    pop af
    add h
    nop
    ld [hl], l
    ldh [$ff29], a
    add h
    ld a, l
    add b
    inc h
    ld a, a
    ld a, a
    add h
    inc h
    add h
    ld [hl-], a

jr_016_4185:
    add h
    ld [hl+], a
    add h
    inc [hl]
    ld a, l
    inc e
    add h
    ld a, a
    ld hl, sp-$08
    add hl, sp
    ld a, l
    ei
    ld hl, sp-$80
    ld e, b
    ld e, d
    ld e, h
    add b
    cpl
    ld e, [hl]
    db $fd
    ld a, l
    ld e, d
    add b
    ld e, l
    add b
    add b
    ei
    ld hl, sp+$39
    inc [hl]
    inc hl
    add b
    ld b, c
    add h
    add b
    ld bc, $8039
    add h
    ld bc, $0295
    ei
    ld hl, sp-$80
    add e
    ld bc, $0d9d
    cpl
    ld l, $7d
    add b
    ld a, l
    ld a, l
    inc d
    ld a, [hl]
    add b
    add b
    dec hl
    add b
    db $10
    db $10
    add e
    nop
    ret z

    ld d, $84
    add b
    rst $30
    ld e, d
    ld hl, sp+$39
    ld a, l
    add b
    cpl
    ld a, l
    ld a, l
    add b
    ld a, [de]
    ld a, [de]
    add hl, de
    add hl, sp
    ld a, [de]
    ld a, [de]
    add hl, de
    ld a, [de]
    ld a, [de]
    add hl, de
    ld e, e
    ld b, c
    add b
    add h
    dec bc
    ld a, a
    ld a, [hl]
    ld l, $2a
    ld a, l
    ld [hl], $22
    ld [hl-], a
    inc h
    ld h, $80
    inc h
    add h
    ld bc, $043e
    ld [hl+], a
    add b
    ld a, l
    ld [hl-], a
    ld h, $85
    nop
    db $fd
    rrca
    ld bc, $0301
    add b

Call_016_4202:
    ld [$8080], sp
    rlca
    ld b, $06
    ld d, $27
    ld c, a
    db $fd
    ld a, l
    ld [$00c3], sp
    inc c
    ld [bc], a
    add e
    add b
    ld a, h
    inc hl
    add b
    ldh [$ff3b], a
    rlca
    add b
    add hl, sp
    jr nz, jr_016_423f

    inc sp
    ld [$7d80], sp
    scf
    dec [hl]
    add b
    jr nc, jr_016_424a

    dec h
    inc hl
    ld a, a
    inc sp
    scf
    ld a, l
    ld sp, $3380
    inc sp
    di
    add b
    scf
    ld a, l
    dec [hl]
    add b
    inc sp
    inc sp
    cpl
    daa
    ld a, [hl]
    dec h
    ld a, [hl]
    inc hl

jr_016_423f:
    ld a, l
    add e
    ld a, l
    add hl, hl
    add b
    dec l
    add b
    ld b, d
    add b
    ld b, l
    add b

jr_016_424a:
    add hl, sp
    ld a, l
    add b
    ld d, l
    add hl, sp
    add b
    ld d, l
    add b
    add b
    cpl
    add hl, sp
    jp $d501


    ldh [rNR41], a
    ld b, e
    add e
    inc hl
    add e
    dec [hl]
    add e
    ld a, [hl]
    add e
    add b
    ld c, c
    ld c, e
    add b
    ld c, d
    ld c, c
    or $83
    ld a, l
    ld c, d
    ld a, l
    add c
    ld c, d
    add b
    pop af
    rst $30
    pop af
    ld a, a
    ld a, [hl]
    add e
    ld a, l
    add b
    dec [hl]
    ld a, a
    ld a, a
    call nz, $6202
    ld b, $33
    add e
    inc hl
    push af
    add b
    add e
    ld a, a
    jp $c500


    inc de
    ld a, [$80f8]
    ld c, c
    ld c, e
    ld c, d
    ld a, l
    cpl
    ld c, a
    db $fd
    ld a, l
    ld c, d
    ld a, [bc]
    ld c, d
    add b
    add b
    ld a, [$39f8]
    dec h
    inc hl
    add b
    dec b
    add e
    add b
    add e
    pop af
    add b
    cpl
    add h
    ld [bc], a
    adc h
    nop
    ld a, [$0183]
    or e
    rla
    ld a, [$2ff8]
    ld d, $f3
    add b
    ld a, l
    ld a, l
    dec b
    ld a, [hl]
    add b
    dec a
    add b

Jump_016_42bd:
    add b

Jump_016_42be:
    ld bc, $8001
    pop af
    ld b, $7f
    add e
    ld b, $4a
    db $f4
    add h
    ld bc, $0156
    add hl, sp
    ld a, l
    jp $0b00


    nop
    add b
    ld [hl+], a
    ld b, $10
    rlca
    rlca
    ld b, $80
    add b
    add e
    pop af
    add e
    ld a, a
    ld a, [hl]
    ld d, $16
    pop af
    daa
    scf
    inc hl
    dec [hl]
    add e
    ld [bc], a
    ld [hl], $83
    ld [bc], a
    ld a, $04
    add b
    inc sp
    inc hl
    ld a, l
    inc sp
    add l
    nop
    db $fd
    ld [bc], a
    ld de, $1311
    ld [hl+], a
    add b
    ld [$1618], sp
    ld d, $17
    ld b, $37
    db $fc
    ld hl, sp+$3d
    add h
    inc bc
    dec b
    nop
    add l
    add l
    ld [bc], a
    rla
    dec de
    ld d, $2b
    add b
    jr nc, jr_016_4345

    inc hl
    add b
    jr jr_016_4355

    daa
    dec h
    jr nz, @-$7e

Jump_016_431c:
    inc sp
    dec [hl]
    inc sp
    ld a, a
    daa
    inc hl
    ld hl, $237d
    add b
    inc hl
    ldh a, [c]
    daa
    add b
    dec h
    add e
    inc bc
    jr nc, jr_016_4347

    ld a, l
    ld a, [hl]
    scf
    ld a, [hl]
    dec [hl]
    ld a, l
    inc sp
    add l
    ld a, l
    add b
    dec sp
    add b
    ccf
    ld d, d
    add b
    add b
    ld d, a
    dec hl
    ld a, l
    add b
    ld b, a
    add b

jr_016_4345:
    dec hl
    add b

jr_016_4347:
    ld b, a
    jp $d400


    ldh [$ff2e], a
    dec a
    ld a, l
    ld d, c
    add b
    add l
    inc sp
    add l
    ld a, l

jr_016_4355:
    add l
    ld a, [hl]
    add l
    add b
    ld e, c
    ld e, e
    add b
    ld e, d
    ld e, c
    rst $30
    add l
    ld a, l
    ld e, d
    ld a, l
    add c
    ld e, d
    add b
    ldh a, [$fff6]
    ldh a, [$ff7f]
    ld a, [hl]
    add l
    ld a, l
    add b
    dec h
    ld a, h
    ld a, a
    add l
    dec h
    add l
    inc sp
    add l
    inc hl
    add l
    inc sp
    db $f4
    add b
    add l
    jp $cb00


    inc d
    dec hl
    db $fc
    ld hl, sp-$80
    ld e, c
    ld e, e
    ld e, d
    dec a
    ld a, l
    ld e, a
    db $fd
    ld a, l
    ld e, d
    ld a, [de]
    ld e, d
    add b
    add b
    db $fc
    ld hl, sp-$80
    dec [hl]
    inc hl
    add b
    inc bc
    add l
    add b
    add l
    ldh a, [$ffc3]
    nop
    xor a
    ld bc, $f8fc
    add e
    inc bc
    adc h
    ldh [rNR41], a
    add b
    ld a, h
    ld e, a
    db $fd
    ld a, l
    ld b, $f2
    add b
    ld a, l
    ld a, h
    dec d
    ld a, [hl]
    add b
    add b
    cpl
    add b
    ld de, $807c
    ldh a, [rNR21]
    ld a, a
    add l
    ld d, $5a
    push af
    add b
    add b
    dec hl
    dec a
    ld a, l
    dec hl
    ld a, l
    jp Jump_000_0a01


    inc bc
    add b
    ld d, $17
    ld d, $84
    ld bc, $0e07
    add l
    ldh a, [$ff85]
    ld a, a
    ld a, [hl]
    ld b, $06
    ldh a, [$ff37]
    inc hl
    inc sp
    dec h
    daa

jr_016_43e1:
    add b
    dec h
    add h
    inc bc
    inc a
    ld b, $23
    add b
    ld a, l
    inc sp
    daa
    ld a, h
    ld a, h
    inc hl
    nop
    ld [hl+], a
    ld bc, $0323
    inc h
    nop
    ld [bc], a
    ld sp, $0001
    add h
    inc b
    inc b
    ld bc, $2021
    inc l
    nop
    add [hl]
    inc b
    dec d
    ld bc, $1040
    add [hl]
    inc b
    inc h
    ld h, $00
    nop
    ld [bc], a
    add h
    inc b
    dec d
    add a
    inc b
    ld [de], a
    nop
    ld l, c
    adc e
    inc b
    jr jr_016_441b

jr_016_441b:
    jr nz, jr_016_43e1

    inc b
    ld d, l
    ld b, e
    nop
    ld hl, $0026
    nop
    ld hl, $04a4
    jr nc, @-$7b

    inc b
    ld b, $07
    db $10
    db $10
    ld hl, $0000
    db $10
    db $fd
    cp $89
    inc b
    ld e, h
    rlca
    ld hl, $0210
    ld [bc], a
    jr nz, @+$22

    ld sp, $8301
    inc b
    ld d, e
    add a
    inc b
    adc d
    inc c
    jr nz, jr_016_447a

    ld sp, $0001
    ld [$0028], sp
    jr z, jr_016_448a

    ld e, c
    nop
    ld hl, $0487
    rlca
    dec b
    ld sp, $2001
    cp $fd
    ld sp, $04c4
    nop
    inc bc
    cp $fd
    ld b, c
    nop
    add l
    inc b
    or [hl]
    ld [bc], a
    ld b, b
    nop
    ld b, b
    call nz, $8704
    ld [bc], a
    ld [bc], a
    jr nz, jr_016_4495

    adc $04
    ld d, a
    nop
    inc bc

jr_016_447a:
    ld b, c

jr_016_447b:
    nop
    ld hl, $1000
    ld [hl+], a
    jr c, jr_016_4482

jr_016_4482:
    nop
    jr nc, @+$3a

    ld bc, $0000
    rst $38
    ld [hl], h

jr_016_448a:
    dec b
    dec e
    inc bc
    dec a
    inc bc
    ld a, l
    inc bc
    ld b, c
    ld sp, hl
    rlca
    dec b

jr_016_4495:
    pop hl
    rra
    inc bc
    rst $38
    rst $38
    cp $23
    nop
    dec b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    inc hl
    ld a, a
    ld bc, $ffff
    xor a
    nop
    db $10
    ld b, c
    rst $38
    nop
    ld [$07ff], sp
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    xor a
    nop
    dec l
    ldh [$ff32], a
    cp $ff
    rst $38
    ld d, l
    nop
    add b
    nop
    add c
    nop
    db $e3
    inc b
    rst $10
    ld [$048b], sp
    add l
    ld [bc], a
    ld b, d
    ld bc, $0340
    ld b, c
    ld [bc], a
    inc hl
    inc b
    daa
    ld [$1827], sp
    inc hl
    inc d
    ld h, c
    ld [bc], a
    ld b, b
    ld bc, $0080
    add b
    ld bc, $0241
    ld h, e
    inc b
    ld d, a
    jr z, jr_016_447b

    db $10
    add a
    ld [$0483], sp
    ld b, c
    add b
    nop
    ldh [rNR42], a
    ld b, c
    nop
    ld b, e
    nop
    ld b, a
    nop
    adc a
    nop
    dec b
    nop
    adc d
    nop
    ld d, h
    xor d
    nop
    ld bc, $0354
    add sp, $17
    ldh a, [$ff0e]
    ld hl, sp+$06
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    add c
    cp h
    ld b, e
    ret c

    daa
    ld b, c
    ldh [rNR34], a
    inc bc
    ret nz

    ccf
    add b
    ld a, a
    ld b, c
    nop
    rst $38
    add hl, bc
    add b
    ld a, a
    ret nz

    ld a, $e0
    ld e, $f0
    ld c, $f8
    rlca
    add e
    nop
    sbc h
    add l
    nop
    or b
    dec c
    ld [$f614], a
    nop
    ldh [c], a
    nop
    ld b, c
    nop
    add d
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    inc hl
    add c
    dec d
    rst $20
    add c
    rst $38
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    rst $38
    ld a, a
    ret nz

    ret nz

    add a
    add b
    sbc a
    add b
    sbc [hl]
    add c
    cp h
    add e
    cp b
    add a
    ld b, c
    or b
    adc a
    inc bc
    cp b
    add [hl]
    cp h
    add b
    jp $e800


    ld bc, $98a7
    and e
    nop
    inc c
    and e
    nop
    ldh [rNR23], a
    push hl
    inc bc
    ld sp, hl
    rlca
    ld a, c
    add a
    dec a
    jp $c31d


    dec c
    add e
    rrca
    rrca
    jr nc, jr_016_45b1

    ld l, d
    ld b, b
    sub l
    ld [$ff80], a
    jp $67ff


    call nz, $1a00
    ldh [rNR44], a
    ld l, $2f
    ld b, h
    ld b, [hl]
    and b
    call nz, $a8d0
    ret z

    sub b
    add h
    ret z

    ld b, e
    ld b, h
    ld b, b
    ld b, e
    pop bc
    add d
    jp $8784


    ld hl, sp-$39
    cp b
    jp $c1b4


    and d
    ld b, b
    ld b, c
    ld b, b
    ld b, b
    add b
    pop bc

jr_016_45b1:
    ret nz

    add d
    adc c
    ld bc, $1426
    rst $38
    add c
    ld a, a
    jp nz, $e43f

    rra
    ld hl, sp+$1f
    db $f4
    ccf
    ldh [c], a
    ld a, a
    pop bc
    rst $38
    add b
    rst $38
    rrca
    ldh a, [$ff30]
    ld [$0186], a
    dec d
    add hl, de
    rst $20
    ld a, a
    rst $38
    ld a, a
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    inc b
    ld hl, sp+$18
    add sp, $38
    call nz, $c3ec
    ld b, a
    inc bc
    inc bc
    call nz, Call_000_28c4
    jr z, jr_016_460d

    jr jr_016_45ef

    inc d
    nop

jr_016_45ef:
    jr nz, jr_016_4614

    nop
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc hl
    ld [$3803], sp
    inc [hl]
    ld b, b
    ld c, b
    daa
    add b
    dec b
    ld b, b
    ld b, b
    jr nz, @+$22

    ld b, b
    ld b, b
    push bc
    ld bc, $07a5
    ret nz

    add b

jr_016_460d:
    ldh [$ff80], a
    ld a, b
    ld c, b
    inc a
    inc [hl]
    rst $00

jr_016_4614:
    ld bc, $8a97
    ld bc, $c470
    ld bc, $0384
    ld e, $1f
    ld [hl], c
    ld h, c
    call nz, $b001
    ld [$c180], sp
    add b
    and $80
    ld l, [hl]
    ld d, b
    ld h, a
    ld b, b
    push bc
    ld bc, $0cda
    and $80
    cp l
    jp Jump_016_7e42


    inc a
    inc a
    rst $38
    inc bc
    db $fc
    call nz, $8a38
    ld bc, $0385
    rst $38
    inc bc
    db $fc
    inc b
    ld b, c
    ld hl, sp+$08
    ld [bc], a
    ld hl, sp+$34
    ret nz

    add h
    ld bc, $839b
    nop
    ld e, $08
    ld d, l
    nop
    xor d
    ld d, l
    nop
    rst $38
    add a
    rst $38
    rst $08
    inc hl
    rst $38
    ld a, [de]
    cp $ff
    ld a, h
    rst $38
    jr c, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    ld a, a
    add c
    cp [hl]
    ld b, c
    db $dd
    ld [hl+], a
    db $eb
    inc d
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    ld b, c
    cp $01
    rrca

jr_016_4680:
    ld a, [hl]
    add c
    cp l
    ld b, d
    db $db
    inc h
    rst $28
    jr jr_016_4680

    inc c
    ei
    ld b, $fd
    inc bc
    ld a, [hl]
    add c
    adc h
    ld [bc], a
    ld hl, $ff02
    ld bc, $bbff
    ld bc, $0360
    dec hl
    scf
    call c, $f4e3
    sub e
    ld bc, $9980
    ld [bc], a
    inc d
    ld de, $81ff
    rst $38
    ld b, c
    cp $23
    db $fc
    rla
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $00ff
    ret z

    ld [bc], a
    ld e, a
    add [hl]
    inc bc
    add hl, hl
    ld c, $81
    rst $38
    ld b, d
    rst $38
    inc h
    rst $38
    jr c, @+$01

    ld [hl], h
    rst $38
    ldh [c], a
    rst $38
    pop bc
    rst $38
    add b
    and l
    inc bc
    ld b, b
    adc d
    ld [bc], a
    ld d, l
    xor l
    ld [bc], a
    ld [hl], b
    ld bc, $c7bb
    add h
    ld bc, $05ac
    ld b, b
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    adc b
    ld bc, $02ab
    ld hl, sp+$48
    db $fc
    call nz, $0902
    ld [bc], a
    db $fc
    inc b
    rst $38
    adc d
    ld bc, $05bf
    ld hl, sp+$28
    db $fc
    call nz, Call_000_03ff
    ld b, d
    rst $38
    nop
    ld b, $fe
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rSTAT]
    nop
    ldh [rSCY], a
    nop
    ret nz

    ld b, e
    nop
    add b
    dec b
    nop
    rst $38
    nop
    rrca
    nop
    ld bc, $002a
    nop
    ldh [$ffc5], a
    inc bc
    cp e
    rst $00
    inc bc
    or a
    add $03
    reti


    ld b, $02
    nop
    inc b
    nop
    ld [$1000], sp
    ld b, c
    nop
    jr nz, jr_016_4773

    nop
    ld b, b
    adc b
    inc bc
    rst $00
    adc a
    ld [bc], a
    db $10
    rlca
    cp $ff
    db $fc
    ld a, a
    ld hl, sp+$3f
    ldh a, [$ff1f]
    adc b
    inc bc
    ld [hl], $86
    ld bc, $c551
    inc bc
    dec [hl]
    ld b, c
    add b
    rst $38
    ld [bc], a
    ret nz

    ld a, a
    ldh [$ff8a], a
    inc b
    dec h
    nop
    rlca
    xor d
    inc bc
    ld h, c
    ld b, $41
    rst $38
    add e
    rst $38
    ld b, a
    rst $38
    ld l, $a4
    ld [bc], a
    inc h
    ld b, $00
    rst $38
    jr nz, @+$01

    ld d, c
    rst $38
    adc e
    db $f4
    ld b, d
    inc bc
    ld l, a
    cp l
    inc bc

jr_016_4773:
    jp nc, Jump_000_03bf

    or b
    ld [bc], a
    rrca
    nop
    ld [hl], b
    adc [hl]
    inc b
    or e
    ld [bc], a
    jr jr_016_4781

jr_016_4781:
    jr nz, @-$7b

    inc b
    inc bc
    sub [hl]
    inc b
    add hl, bc
    and a
    ld [bc], a
    ld hl, $0409
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], a
    rst $18
    rst $38
    adc a
    rst $38
    rlca
    call nz, $be00
    ld b, $0f
    ldh a, [$ff1f]
    ldh [$ff3f], a
    pop bc
    ld a, a
    add h
    inc b
    ld e, [hl]
    adc h
    dec b
    inc hl
    nop
    ret nz

    adc h
    ld bc, $0331
    ret nz

    ld b, c
    ld b, b
    ret nz

    adc h
    ld bc, $0042
    call nz, $038c
    ld [hl], b
    rlca
    db $fc
    cp e
    rst $08
    rst $38
    rra
    xor $2f
    call nz, Call_000_018a
    dec h
    db $f4
    jr nz, @+$06

    ldh a, [$ff03]
    nop
    ld hl, sp+$00
    ldh [$ff8a], a
    inc bc
    jp Jump_000_0003


    rst $38
    rlca
    ld hl, sp-$5d
    nop
    cp d
    ld bc, $c03f
    ld b, d
    ld a, a
    add b
    ld b, $80
    nop
    ld h, e
    nop
    inc d
    nop
    ld [$0028], sp
    inc bc
    ret nz

    ld b, b
    ld [hl+], a
    ld b, c
    adc e
    dec b
    call nc, $ff06
    ld bc, $037f
    inc e
    inc b
    ld [$0588], sp
    sub $02
    rst $38
    rlca
    ld a, [hl]
    adc h
    dec b
    di
    xor a
    ld bc, $0910
    ld a, b
    ld hl, sp+$3c
    db $fc
    inc e
    db $fc
    ld c, $fe

jr_016_480f:
    ld b, $fe
    ld b, c
    inc bc
    rst $38
    rra
    add e
    rst $38
    jp Jump_016_63ff


    rst $38
    ld [hl], $fe
    ld e, $fe
    ld [hl], $fe
    ld h, [hl]
    cp $c3
    rst $38
    and e
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    ld e, $fe
    ld a, $fe
    halt
    cp $e6
    cp $c6
    cp $85
    ld b, $2e
    ld b, $37
    cp $1f
    cp $37
    cp $67
    adc b
    ld b, $3b
    ld a, [bc]
    rra
    cp $3f
    cp $77
    cp $e7
    cp $c7
    cp $83
    adc d
    inc b
    ld l, a
    ld c, $1f
    inc e
    scf
    ccf
    db $e3
    rst $38
    ld a, a
    ld hl, sp+$3f
    db $fc
    rra
    db $fc
    rrca
    cp $07
    add [hl]
    ld b, $29
    cp [hl]
    inc bc
    ldh a, [$fff4]
    jr nc, jr_016_4870

    xor a
    dec b
    ld a, [hl]
    add c
    cp h

jr_016_4870:
    ld b, d
    jr @+$22

    adc c
    ld b, $d5
    inc bc
    rst $38
    add c
    ld a, [hl]
    jp nz, Jump_000_05ab

    db $f4
    dec b
    ld de, $08ff
    cp $18
    jr c, jr_016_480f

    ld b, $f6
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld b, d
    push bc
    rlca
    rla
    ld bc, $0000
    rst $00
    rlca
    rra
    rst $10
    rlca
    daa
    rst $38
    adc c
    ld b, h
    ld d, $ff
    nop
    add b
    ld h, d
    ld a, l
    ld h, d
    ld c, l
    ld [bc], a
    ld hl, sp+$00
    jr nz, jr_016_48cd

    ld b, b
    dec bc
    dec [hl]
    db $f4
    ld a, [$2202]
    ld b, d
    ld b, d
    dec [hl]
    inc [hl]
    or $f7
    dec b
    add e
    nop
    add hl, bc
    inc bc
    or $f8
    or $44
    add e
    nop
    ld de, $f711
    ld a, [$22f7]
    ld b, d
    ld b, b
    inc h
    dec [hl]

jr_016_48cd:
    add b
    ei
    add b
    ld [de], a
    inc b
    ld b, d
    inc h
    inc [hl]
    add b
    add b
    ld b, c
    ld [$0007], sp
    rlca
    ld [hl+], a
    add b
    dec e
    rrca
    ld c, $09
    add b
    add b
    add hl, bc
    ld e, h
    ld e, h
    daa
    add b
    rrca
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    ld c, $27
    daa
    add b
    add b
    add hl, bc
    ld a, l
    add b
    add b
    ld e, h
    ld a, [hl+]
    inc l
    add b
    dec l
    inc hl
    add b
    ld [$5b7e], sp
    ld a, l
    ld e, d
    ld a, [hl]
    ld l, $48
    add b
    ld c, c
    inc hl
    add b
    ld [bc], a
    ld c, l
    ld c, [hl]
    rlca
    ld [hl+], a
    ld a, l
    inc bc
    add hl, bc
    ld e, h
    add b
    ld c, a
    ld b, c
    add b
    ld e, h
    rlca
    daa
    ld e, h
    add b
    add b
    ld e, h
    ld e, h
    add d
    add b
    inc hl
    inc c
    dec bc
    add b
    ld a, l
    ld h, a
    ld a, a
    add d
    add b
    add d
    ld a, l
    ld a, a
    ld a, h
    add d
    ld a, l
    inc hl
    add b
    dec b
    add d
    add b
    db $fd
    db $f4
    inc c
    db $fc
    add e
    nop
    dec [hl]
    ld bc, $f607
    inc hl
    add b
    ld bc, $8009
    add h
    nop
    ld b, d
    nop
    add b
    add h
    nop
    ld [$7d02], sp
    add b
    add b
    add h
    nop
    db $10
    ld [bc], a
    ld a, [hl]
    add b
    add b
    add h
    nop
    jr jr_016_495e

    inc c
    db $fc

jr_016_495e:
    add b
    add h
    nop
    jr nz, jr_016_4985

    add b
    dec bc
    nop
    dec b
    add b
    ld hl, sp-$80
    ld a, [$fb80]
    ld [bc], a
    ld b, h
    ld a, h
    add b
    add l
    nop
    sub h
    dec b
    add d
    ld a, l
    add d
    ld b, d
    add d
    ld [bc], a
    scf
    add b
    ld h, d
    ld a, l
    ld h, d
    ld e, l
    ldh [$ff34], a
    ld sp, hl
    db $10

jr_016_4985:
    jr nc, jr_016_49d7

    ld b, b
    ld d, b
    ld d, d
    ld hl, sp-$07
    ld [de], a
    ld [hl-], a
    ld d, d
    dec h
    ld d, d
    ld d, d
    ld a, [$10fb]
    jr nc, jr_016_49ac

    ld b, b
    dec d
    db $f4
    add b
    db $f4
    ld [de], a
    ld [hl-], a
    ld d, h
    dec h
    ld d, h
    or $80
    or $04
    inc h
    ld b, b
    inc h
    ld d, h
    rst $30
    add b
    rst $30

jr_016_49ac:
    ld [hl+], a
    ld b, d
    inc h
    inc h
    ld d, h
    db $f4
    or $17
    jr jr_016_49cd

    rla
    jr jr_016_49db

    add b
    dec b
    ld e, $1e
    add b
    add b
    add hl, de
    ld c, h
    push bc
    ld bc, $1043
    rra
    dec de
    dec de
    ld a, [de]
    rra
    ld c, h
    add b
    add b

jr_016_49cd:
    scf
    add b
    ld a, l
    add hl, de
    scf
    scf
    ld a, [hl-]
    inc a
    dec sp
    inc h

jr_016_49d7:
    add b
    rlca
    ld c, e
    ld a, [hl]

jr_016_49db:
    ld c, d
    ld a, l
    ld a, [hl]
    ld a, $58
    ccf
    inc h
    add b
    ld [bc], a
    ld e, l
    ld e, [hl]
    rla
    ld [hl+], a
    ld a, l
    inc bc
    ld c, h
    add hl, de
    add b
    ld e, a
    ld b, c
    ld c, h
    add b
    nop
    ld c, h
    jp $5201


    ld [bc], a
    ld c, h
    add h
    add b
    inc hl
    inc e
    add e
    nop
    adc b
    ld b, $84
    add b
    add h
    ld a, l
    ld a, a
    ld a, a
    add h
    add h
    nop
    sub e
    dec bc
    add h
    add b
    rst $38
    ld hl, sp+$1c
    db $fc

jr_016_4a11:
    add b
    add b
    rla
    rla
    jr jr_016_4a11

    dec h
    add b
    ld bc, $8019
    add e
    ld bc, $8443
    ld bc, $0207
    ld a, l
    add b
    add b
    add h
    ld bc, $020f
    ld a, [hl]
    add b
    add b
    add h
    ld bc, $0217
    inc e
    db $fc
    add b
    add h
    ld bc, $221f
    add b
    dec bc
    db $10
    db $10

Jump_016_4a3c:
    db $f4
    add b
    or $80
    rst $30
    add b
    ld [de], a
    ld [de], a
    ld a, [hl]
    add b
    add l
    ld bc, $0593
    add h
    ld a, l
    add h
    ld d, d
    add h
    ld [de], a
    sbc d
    nop
    add sp, $14
    ld b, $26
    ld b, [hl]
    ld sp, hl
    ld bc, $4121
    ld b, c
    inc d
    dec [hl]
    push af
    ld sp, hl
    inc bc
    inc hl
    ld b, e
    ld b, e
    inc [hl]
    dec [hl]
    push af
    add b
    ld b, a
    add e
    ld [bc], a
    rlca
    inc bc
    push af
    ld sp, hl
    push af
    ld b, l
    add e
    ld [bc], a
    rrca
    ld b, $80
    ld sp, hl
    add b
    inc hl
    inc sp
    inc d
    dec h
    add e
    nop
    call z, Call_000_1302
    inc hl
    ld b, e
    add e
    ld [bc], a
    add hl, hl
    ld [bc], a
    add hl, bc
    add b
    add hl, bc
    add h
    nop
    sbc [hl]
    ld a, [bc]
    daa
    add b
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    add b
    add b
    jr z, jr_016_4ac1

    daa
    inc h
    add b
    nop
    ld e, h
    ld h, d
    daa
    inc e
    add hl, hl
    add hl, bc
    ld c, d
    add b
    add hl, hl
    add b
    dec hl
    add b
    dec sp
    ld a, l
    add b
    dec l
    dec sp
    dec l
    ld c, e
    ld a, l
    ld c, d
    add b
    ld c, e
    cpl
    add b
    ccf
    add b
    add b
    ld c, c
    ccf
    ld c, c
    add b
    add b
    add l
    nop
    ld c, b
    dec c

jr_016_4ac1:
    ld b, $80
    dec bc
    dec bc
    add hl, hl
    add hl, hl
    jr z, jr_016_4af2

    ld h, $46
    add hl, hl
    dec bc
    add e
    rlca
    inc hl
    dec c
    dec bc
    ldh a, [$fff2]
    ld l, b
    ld a, a
    add e
    add b
    add e
    ld a, l
    ld a, a
    ld a, a
    add e
    ld c, $23
    add b
    dec b
    add e
    add b
    cp $f5
    dec c
    db $fc
    add h
    nop
    ld b, d
    nop
    push af
    add e
    nop
    add hl, sp
    ld [bc], a
    ld a, [bc]
    dec bc

jr_016_4af2:
    dec bc
    add e
    ld [bc], a
    ld a, $00
    add b
    add h
    ld [bc], a
    ld b, $02

jr_016_4afc:
    ld a, l
    add b
    add b
    add h
    ld [bc], a
    ld c, $01
    ld a, [hl]
    add b

Call_016_4b05:
    add l
    ld [bc], a
    dec d
    ld [bc], a
    dec c
    db $fc
    add b
    add l
    ld [bc], a
    ld e, $03
    add b
    add b
    ld bc, $4147
    add b
    ld sp, hl
    inc bc
    add b
    add b
    inc bc
    ld b, l
    add l
    ld bc, $83d9
    ld [bc], a
    adc d
    inc bc
    add e
    ld b, e
    add e
    inc bc
    sbc d
    nop
    add sp, -$20
    jr z, jr_016_4b43

    ld [hl], $56
    ld a, [$3111]
    ld d, c
    inc d
    ld d, c
    ld d, e
    ld sp, hl
    ld a, [$3313]
    ld d, e
    inc h
    ld d, e
    ld d, e
    ld sp, hl
    add b
    ld de, $5731

jr_016_4b43:
    inc d
    ld d, a
    push af
    add b
    push af
    inc de
    inc sp
    ld d, l
    inc h
    ld d, l
    push af
    add b
    push af

jr_016_4b50:
    inc hl
    ld b, e
    inc d
    dec h
    ld d, l
    ld [hl+], a
    add b
    ld b, $23
    inc sp
    dec h
    dec h
    ld d, l
    push af
    push af
    jp $aa01


    dec c
    add hl, de
    rla
    rla
    jr jr_016_4bb4

    add b
    dec de
    dec de
    ld a, [de]
    add b
    add b
    add hl, de
    add hl, sp
    add hl, sp
    add e
    ld bc, $8350
    ld bc, $1d50
    add hl, sp
    add hl, sp
    jr c, jr_016_4afc

    ld e, d
    add hl, de
    jr c, jr_016_4bb7

    add b
    dec a
    ld a, l
    dec l
    dec sp
    add b
    dec l
    dec sp
    ld a, l
    ld e, e
    add b
    ld e, d
    ld e, e
    add b
    ld e, c
    add b
    ld c, c
    ccf
    add b
    ld c, c
    ccf
    add b
    add l
    ld bc, $0446
    ld a, [de]
    ld d, $80
    dec de
    dec de
    ld [hl+], a
    add hl, sp
    ld b, $38
    ld [hl], $56
    add hl, sp
    dec de
    add l
    rla
    inc hl
    dec e
    ld a, [bc]
    pop af
    di
    ld l, b
    ld a, a
    add l
    add b
    add l
    ld a, l

jr_016_4bb4:
    ld a, h
    ld a, a
    add l

jr_016_4bb7:
    jp Jump_000_3e01


    ld b, $80
    add l
    add b
    rst $28
    ld sp, hl
    dec e
    db $fc
    add e
    ld bc, $047d
    add hl, de
    ld sp, hl
    rla
    rla
    jr jr_016_4b50

    inc bc
    dec a
    add e

jr_016_4bcf:
    inc bc
    ld a, $84
    inc bc
    dec b
    ld [bc], a
    ld a, l
    add b
    add b
    add h
    inc bc
    dec c
    ld bc, $807e
    add l
    inc bc
    inc d
    ld [bc], a
    dec e
    db $fc
    add b
    add h
    inc bc
    dec e
    ld [hl+], a
    add b
    ld bc, $1111
    ld b, c
    push af
    add b
    dec b
    add b
    add b
    inc de
    inc de
    ld a, [hl]
    ld a, h
    add l
    inc bc
    sub c
    dec b
    add l
    ld a, l
    add l
    ld d, e
    add l
    inc de
    ld [hl], $80
    inc hl
    nop
    ld [hl+], a
    inc bc
    dec b
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, hl
    nop
    adc a
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    dec [hl]
    nop
    ld [hl+], a
    inc bc
    adc h
    inc b
    inc b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    add e
    inc b
    inc hl
    dec sp
    nop
    add e
    inc b
    nop
    add hl, hl
    inc bc
    nop
    ld hl, $0027
    nop
    db $10
    ld b, c
    ld hl, $0f00
    db $fd
    cp $21
    nop
    jr z, jr_016_4c5d

    jr c, @+$32

    ld hl, $0128
    jr z, @+$33

    ld bc, $0028
    inc hl
    jr z, jr_016_4c6c

    jr nz, jr_016_4bcf

    inc b
    sbc e
    adc c
    inc bc
    rst $38
    ld bc, $0008
    add h
    inc b
    sbc e
    ld bc, $0828
    add [hl]
    inc b
    ld [de], a

jr_016_4c5d:
    ld [bc], a
    ld sp, $0001
    call nz, $b804
    inc l
    nop
    inc b
    cp $fd
    nop
    nop
    nop

jr_016_4c6c:
    ld b, d
    nop
    ld hl, $0001
    ld hl, $0037
    rst $38

    db $73, $23

    nop

    db $06

    ld bc, $0200
    nop
    inc b
    nop

jr_016_4c7f:
    db $08

    db $41

    nop
    db $10

    db $43

    nop
    db $20

    db $0d

    nop
    stop
    jr jr_016_4c8c

jr_016_4c8c:
    rrca
    nop
    inc bc
    nop
    rrca
    nop
    ld [hl], b
    nop

jr_016_4c94:
    add b

    db $32

    nop

    db $04

    inc bc
    nop
    rra
    nop
    db $fe

    db $a4, $00, $1b, $00

    db $30

    db $a3, $00, $0b, $42

    nop
    inc c

    db $0b

    nop
    inc e
    nop
    jr jr_016_4cae

jr_016_4cae:
    jr c, jr_016_4cb0

jr_016_4cb0:
    ld [hl], b
    nop
    ldh [rP1], a
    ret nz

    db $86, $00, $23, $83, $00, $50, $06

    ld [hl], c
    nop
    ldh [c], a
    nop
    call nz, $8800

    db $84, $00, $0b, $02

    ldh [rP1], a
    db $20

    db $24

    nop

    db $83, $00, $46, $06

    rrca
    nop
    dec e
    nop
    jr nc, jr_016_4cd6

jr_016_4cd6:
    ld h, b

    db $92, $00, $23, $08

    ld bc, $0700
    nop
    rrca
    nop
    ld c, $00
    inc e

    db $2a

    nop

    db $00

    db $38

    db $41

    nop
    db $f0

    db $03

    nop
    rra
    nop

jr_016_4cef:
    db $20

    db $8e, $00, $89, $08

    ld bc, $e300
    ldh [$fffa], a
    ld hl, sp-$02
    db $fc
    rst $38

    db $22

    db $fe

    db $0c

    rst $38
    rst $38
    db $e4
    nop
    ld a, [de]
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a

    db $a4, $00, $cb, $22

    nop

    db $af, $00, $d3, $8c, $00, $d3, $1d

    INCBIN "gfx/image_016_4d19.2bpp"

    pop bc

jr_016_4d2a:
    cp $c7
    ld hl, sp-$21
    ldh [rIE], a
    ret nz

    cp $c1
    ld hl, sp-$39
    ldh [$ffdf], a

    db $8c, $01, $0e, $01

    rst $20
    ld a, a

    db $c3, $01, $01, $1e

    INCBIN "gfx/image_016_4d41.2bpp"

    cp $07
    ld hl, sp+$1f
    ldh [$ff7f], a
    add b
    cp $01
    ld hl, sp+$07
    ldh [$ff1f], a
    add b
    ld a, a

    db $8b, $01, $40, $23

    rst $38

    db $03

    ccf
    ccf
    ld h, b
    ld h, b

    db $8b, $01, $04, $e0, $3f

    INCBIN "gfx/image_016_4d6f.2bpp"

    db $83, $00, $de, $0b

    xor d
    nop
    rst $38
    nop
    rst $20
    jr @-$23

    inc h
    and l
    ld b, d
    ld b, d
    add c

    db $42

    ld [hl], b
    add b

    db $41

    jr nc, @-$3e

    db $07

    ld b, b
    and b
    ld a, b
    add b
    ld b, a
    and b
    ld h, c
    add b

    db $8d, $01, $a2, $0a

    daa
    nop
    ld e, h
    nop
    or b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ret nz

    db $44

    nop
    add b

    db $41

    nop
    ld b, b

    db $06

    nop
    and b
    nop
    ld e, b
    nop
    daa
    nop

    db $f4, $2d, $01, $30, $f4, $31, $00, $fe, $bf, $01, $60, $42

    ld a, a
    add b

    db $09

    ld a, [hl]
    add c
    jr c, jr_016_4e45

    ld b, b
    inc a
    ldh [rP1], a
    ld b, b
    add b

    db $a3, $01, $90, $00

    xor c

    db $aa, $01, $95, $05

    ldh [rTMA], a
    inc e
    inc bc
    ld [bc], a
    dec b

    db $41

    inc c
    inc bc

    db $42

    ld c, $01

    db $8f, $01, $b0, $0a

    jr nz, jr_016_4e26

    ld e, b
    rlca
    or [hl]
    ld bc, $016e
    ld c, [hl]

jr_016_4e26:
    db $01
    db $ce

    db $41

    db $01
    adc [hl]

    db $02

    ld bc, $05e2

    db $8d, $02, $a2, $83, $00, $d0, $00

    dec b

    db $a3, $01, $f5, $aa, $01, $eb, $0a

    inc bc
    nop
    ld [bc], a
    nop
    ld b, $00
    dec c

jr_016_4e45:
    nop
    ld a, [hl-]
    nop
    db $e4

    db $26

    nop

    db $00

    ld [bc], a

    db $84, $02, $f5, $00

    db $06

    db $c4, $00, $9d, $41

    rra
    nop

    db $e0, $29

    INCBIN "gfx/image_016_4e5a.2bpp"

    ld a, [de]
    jp hl


    dec [hl]
    db $d3
    dec a
    db $e3
    ld a, l
    db $e3
    db $fa
    rst $00

    db $83, $03, $20, $0f

    INCBIN "gfx/image_016_4e88.2bpp"

    db $41

    rst $30
    inc c

    db $06

    add $3d
    jr c, @+$01

    ret nz

    rst $38
    nop

    db $8f, $01, $3f, $08

    rst $38
    cp a
    ld b, b
    rrca
    jr nc, @+$15

    inc c
    inc c
    inc bc

    db $a7, $00, $56, $89, $03, $40, $05

    dec a
    inc hl
    ld a, l

jr_016_4eba:
    ld h, e
    db $fa
    rst $00

    db $a5, $03, $40, $11

    INCBIN "gfx/image_016_4ec1.2bpp"

    ld a, a
    add c

    db $87, $01, $48, $41

    ei
    db $c6

    db $41

    rst $30
    db $cc

    db $03

    add $fd
    ld hl, sp-$01

    db $85, $01, $1c, $1d

    INCBIN "gfx/image_016_4ee5.2bpp"

    dec de
    inc b
    dec bc
    inc b
    dec b
    ld [bc], a
    ld bc, $0002
    ld bc, $0081
    add e
    nop

    db $8d, $01, $40, $00

    add c

    db $c3, $02, $48, $0f

    INCBIN "gfx/image_016_4f0c.2bpp"

    db $84, $03, $0b, $0b

    inc e
    nop
    inc a
    nop
    ld [hl], c
    ld [$18e3], sp
    rst $00
    jr nc, jr_016_4eba

    ld [hl], b

    db $41

    rra
    db $e0

    db $12

    INCBIN "gfx/image_016_4f30.2bpp"

    db $ec
    db $08
    ld [hl], h

    db $a4, $03, $2b, $07

    add c
    sbc h
    ld b, e
    ld a, h
    and a
    jr c, @+$58

    sbc c

    db $f4, $37, $03, $38, $bf, $03, $90, $0f

    INCBIN "gfx/image_016_4f57.2bpp"

    db $af, $03, $80, $af, $03, $b0, $b5, $03, $e0, $09

    cp $19
    rst $28
    inc e
    sbc a
    ld h, [hl]
    ld a, a
    add e

jr_016_4f79:
    rst $38
    db $01

    db $a5, $03, $c0, $03

    db $fc
    dec de
    ld a, a
    or b

    db $c3, $04, $d3, $0c

    rst $38
    add b
    db $fd
    nop
    ld a, [$f600]
    nop
    and $00
    reti


    nop
    pop hl

    db $88, $00, $23, $a3, $00, $46, $17

    INCBIN "gfx/image_016_4f9b.2bpp"

    inc c
    di
    ld [$10f7], sp
    rst $28
    nop
    rst $38

    db $25

    nop

    db $83, $00, $df, $05

    adc b
    nop
    ld d, h
    xor d
    nop
    rst $38

    db $29

    nop

    db $01

    ld [hl+], a
    nop

    db $89, $05, $2d, $06

    ld bc, $0600
    nop
    jr jr_016_4fce

jr_016_4fce:
    db $20

    db $a9, $02, $e7, $08

    ld bc, $0641
    ld h, a
    jr jr_016_5038

    jr nz, jr_016_501a

jr_016_4fdb:
    ld b, b

    db $8b, $02, $80, $83, $01, $e6, $87, $02, $80, $04

    cp b
    ld b, a
    ret nz

    inc a
    db $e0

    db $89, $01, $e9, $14

    INCBIN "gfx/image_016_4fef.2bpp"

    ld b, e
    inc bc
    ld c, h
    ld d, h
    adc b

    db $4a

    db $08
    sub b

    db $09

    add b
    jr jr_016_5013

    inc b
    inc b
    ldh [c], a
    ret nz

    ld [hl-], a
    ld [hl+], a
    add hl, de

    db $41

jr_016_5013:
    db $10
    add hl, bc

    db $0a

    ld b, [hl]
    nop
    ld e, c
    nop

jr_016_501a:
    ld hl, $2200
    nop
    jp nz, $4200

    db $41

    nop
    add h

    db $01

    nop
    db $fc

    db $a3, $00, $0f, $86, $02, $e5, $83, $03, $dc, $0b

    cp c
    ld b, [hl]
    and [hl]
    ld e, c
    sbc $21
    db $dd

jr_016_5038:
    ld [hl+], a
    dec a
    jp nz, Jump_016_42bd

    db $41

    add h
    nop

    db $01

    inc bc
    db $fc

    db $41

    ei
    inc b

    db $88, $05, $d6, $cc, $00, $bd, $00

    ld h, b

    db $41

    nop
    ret nz

    db $0a

    nop
    add b
    ld b, b
    nop
    ret nz

    inc c
    add b
    jr c, jr_016_4fdb

    ld a, b
    add b

    db $41

    ldh a, [rP1]

    db $01

    nop

jr_016_5062:
    ld a, [hl]

    db $41

    inc c
    ld b, d

    db $09

    nop
    jp $a542


    inc h
    ld e, d
    ld b, d
    cp l
    nop
    rst $20

    db $41

    inc b
    ld b, d

    db $41

    db $08
    ld b, [hl]

    db $41

    inc b
    ld b, d

    db $03

    adc b
    ld b, [hl]
    adc c
    ld b, [hl]

    db $84, $00, $a6, $02

    inc b
    db $dc
    ld [bc], a

    db $42

    ld c, $01

    db $09

    ld e, $01
    inc e
    ld [bc], a
    ld a, [hl-]
    inc b
    ld b, d
    inc a
    jr nc, jr_016_5062

    db $42

    ld hl, sp+$07

    db $0b

    ldh a, [rIF]
    ldh [rNR34], a
    jp nz, Jump_000_023c

    db $fc
    inc c
    ldh [c], a
    ld b, $81

    db $41

    ld b, $01

    db $08

    ld c, $01
    pop hl
    ld e, $c3
    inc a
    inc bc
    db $fc
    dec c

    db $88, $06, $67, $07

    dec e
    ld [bc], a
    dec sp
    inc b
    ld b, e
    inc a
    dec [hl]
    db $ca

    db $87, $06, $58, $f4, $2f, $05, $90, $83, $00, $40, $02

    inc c
    nop
    inc bc

    db $8a, $00, $b9, $85, $03, $08, $02

    add hl, de
    nop
    ld h, c

    db $84, $00, $23, $08

    ccf
    ret nz

    rst $08
    jr nc, @-$0b

    inc c
    db $fc
    inc bc
    rst $38

    db $84, $05, $1e, $07

    ld bc, $fe00
    ld bc, $02fd
    ld sp, hl
    db $06

    db $84, $06, $d6, $01

    nop
    add b

    db $e4, $32

    nop

    db $ff, $75, $4c, $16, $ff, $00, $80, $62, $7d, $0b, $00, $03, $03, $01, $04, $04
    db $01, $04, $04, $06, $03, $07, $62, $07, $04, $0b, $0b, $0c, $0f, $0f, $41, $80
    db $29, $12, $25, $04, $2b, $04, $2c, $04, $04, $2e, $4c, $39, $30, $32, $30, $80
    db $50, $20, $40, $40, $80, $23, $42, $1a, $52, $80, $44, $46, $80, $46, $54, $80
    db $56, $42, $56, $44, $47, $80, $59, $80, $5a, $49, $4a, $4c, $4e, $f0, $f4, $80
    db $f2, $f0, $f4, $41, $80, $f0, $0f, $f4, $80, $f2, $f1, $f5, $80, $f1, $f5, $f4
    db $f1, $f5, $f3, $46, $47, $44, $44, $22, $08, $0b, $20, $52, $80, $82, $40, $82
    db $30, $82, $80, $82, $0c, $0f, $41, $80, $82, $0f, $52, $7c, $7f, $7f, $46, $49
    db $5b, $82, $42, $82, $0f, $09, $0c, $0b, $30, $4e, $41, $4c, $82, $03, $f2, $7c
    db $04, $7c, $22, $80, $01, $82, $46, $e4, $6d, $80, $62, $7d, $13, $10, $10, $13
    db $11, $11, $14, $11, $11, $14, $10, $16, $17, $17, $08, $1b, $1b, $19, $0e, $0e
    db $1c, $41, $37, $80, $12, $11, $35, $11, $3b, $3c, $11, $11, $3e, $27, $5c, $22
    db $40, $40, $20, $80, $30, $30, $50, $52, $41, $52, $42, $1a, $80, $80, $54, $56
    db $44, $56, $80, $46, $80, $18, $42, $54, $57, $49, $80, $4a, $80, $4b, $5a, $5c
    db $5e, $f2, $80, $f0, $f4, $f2, $80, $41, $80, $f2, $0f, $80, $f0, $f4, $f3, $80
    db $f1, $f3, $80, $80, $f3, $80, $f5, $57, $56, $54, $54, $22, $08, $0b, $50, $42
    db $80, $84, $30, $84, $40, $84, $80, $84, $0e, $0e, $41, $80, $84, $00, $42, $22
    db $7f, $0b, $56, $59, $59, $84, $52, $84, $0e, $19, $1c, $1b, $4a, $5e, $41, $5c
    db $84, $03, $f4, $80, $11, $11, $22, $80, $01, $84, $56, $e4, $6d, $80, $62, $7d
    db $85, $00, $07, $11, $02, $05, $05, $01, $04, $80, $4f, $4d, $0a, $1f, $1f, $0d
    db $1f, $1f, $24, $2a, $28, $2a, $83, $00, $08, $1f, $2d, $26, $04, $2f, $4d, $4d
    db $23, $2a, $31, $80, $51, $21, $41, $41, $80, $43, $43, $80, $80, $53, $43, $45
    db $45, $80, $48, $55, $80, $55, $43, $55, $48, $48, $41, $80, $5a, $10, $4a, $4a
    db $4d, $4d, $f1, $f5, $80, $f3, $f1, $f6, $f4, $f1, $f0, $f7, $f5, $f0, $f9, $24
    db $80, $00, $fb, $22, $80, $41, $45, $48, $13, $80, $0d, $1f, $21, $53, $80, $83
    db $41, $83, $31, $83, $43, $83, $0d, $fd, $ff, $83, $80, $83, $53, $22, $7f, $0b
    db $48, $4a, $4a, $83, $43, $83, $1f, $0a, $0d, $fd, $31, $4d, $41, $4d, $83, $03
    db $f3, $80, $04, $04, $22, $80, $01, $83, $48, $e4, $6d, $80, $62, $7d, $85, $01
    db $06, $11, $12, $12, $15, $11, $14, $80, $5f, $5d, $1e, $1e, $1a, $1e, $1e, $1d
    db $38, $34, $38, $3a, $22, $11, $10, $14, $3d, $11, $36, $3f, $5d, $5d, $38, $33
    db $41, $21, $80, $31, $31, $51, $53, $53, $c4, $02, $32, $03, $55, $55, $45, $55
    db $41, $80, $45, $02, $43, $58, $58, $41, $4a, $80, $10, $5a, $5a, $5d, $5d, $f3
    db $80, $f1, $f5, $f3, $f2, $80, $fa, $f2, $f3, $80, $f8, $f5, $24, $80, $00, $f4
    db $22, $80, $41, $58, $55, $e0, $22, $80, $1e, $1d, $51, $43, $80, $85, $31, $85
    db $41, $85, $43, $85, $1e, $fc, $fe, $85, $80, $85, $43, $7f, $7c, $7f, $58, $5a
    db $5a, $85, $53, $85, $1e, $1a, $1d, $fc, $4a, $5d, $41, $5d, $85, $02, $f5, $80
    db $7c, $83, $01, $8b, $01, $85, $55, $e4, $6c, $80, $23, $00, $2a, $01, $22, $02
    db $22, $03, $22, $00, $41, $04, $05, $23, $01, $03, $06, $01, $01, $07, $83, $04
    db $12, $e4, $39, $00, $04, $02, $02, $02, $00, $00, $43, $00, $21, $86, $04, $61
    db $02, $fe, $fd, $10, $86, $04, $61, $02, $03, $00, $03, $84, $04, $61, $04, $00
    db $00, $fe, $fd, $fe, $e4, $71, $00, $ff, $73, $23

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

    db $af, $00, $1d, $a4, $00, $0d, $01

    ld a, [hl]
    ld a, [hl]

    db $27

    ld b, d

    db $c3, $00, $43, $87, $00, $40, $c7, $00, $57, $87, $00, $40, $c7, $00, $67, $87
    db $00, $40, $c7, $00, $77, $87, $00, $40, $c7, $00, $87, $87, $00, $40, $c7, $00
    db $97, $f0, $5f, $00, $40, $02

    ld a, a
    nop
    db $fd

    db $42

    inc bc
    db $fe

    db $42

    inc bc
    rst $38

    db $41

    ld [bc], a
    rst $38

    db $08

    db $fc
    ld e, $f0
    inc a
    ldh [$ff78], a
    ret nz

    ldh a, [$ff80]

    db $c3, $01, $1b, $03

    rst $38
    nop
    rst $38
    add c

    db $41

    ld a, [hl]
    db $c2

    db $0b

    ld a, h
    db $e4
    db $fc
    and h
    sbc b
    ld hl, sp-$40
    ld a, b
    cp a
    ret nz

    cp a
    pop bc

    db $41

    cp $c2

    db $e0, $27

    INCBIN "gfx/image_016_5402.2bpp"

    ld hl, sp-$40
    or b
    ret nz

    ret nz

    ldh a, [$ffc0]
    db $f8

    db $83, $00, $0e, $00

    sbc c

    db $45

    nop
    rst $38

    db $02

    ld a, a
    ret nz

    add b

    db $41

    cp a
    ret nz

    db $00

    cp e

    db $41

    ret nz

    cp a

    db $0e

    ret nz

    xor a
    ret nc

    cp a
    ret nz

    or e
    call z, $dea1
    adc h
    rst $38
    sub d
    di
    and c
    pop hl

    db $22

    ret nz

    db $41

    add b
    ld b, b

    db $06

    adc h
    ld b, b
    sbc [hl]
    ld c, h
    or e
    ld e, $e1

    db $43

    ccf
    ret nz

    db $09

    inc sp
    call z, $de21
    nop
    di
    nop
    pop hl
    nop
    ret nz

    db $41

    ld b, b
    add b

    db $04

    inc bc
    nop
    rlca
    nop
    db $08

    db $2f

    nop

    db $0d

    ld bc, $0201
    nop
    inc b
    nop
    ld [$1000], sp
    db $10
    jr nz, jr_016_5481

jr_016_5481:
    jr nz, @+$22

    db $41

    ld b, b
    nop

    db $01

    ld b, b
    ld b, b

    db $42

    add b
    nop

    db $41

    add b
    ld b, b

    db $41

    add b

jr_016_5491:
    ld h, b

    db $00

    add b

    db $41

    jr nc, @+$42

    db $0f

    INCBIN "gfx/image_016_5498.2bpp"

    db $a6, $01, $c1, $0c

    ld b, b
    jr nz, @+$22

    db $10
    db $10
    add sp, $08
    db $f4
    inc b
    ldh a, [c]
    ld [bc], a
    pop af
    db $01

    db $c3, $01, $17, $ab, $01, $14, $af, $02, $10, $f4, $2f, $01, $30, $0f

    INCBIN "gfx/image_016_54c7.2bpp"

    db $83, $00, $0e, $02

    rst $38
    nop
    db $fd

    db $84, $01, $65, $01

    rst $18
    db $20

    db $41

    rst $38
    nop

    db $0b

    call $8730
    ld a, b
    inc sp
    db $fc
    ld c, c
    adc $84
    add a
    ld [bc], a
    inc bc

    db $c4, $01, $c6, $0a

    jr nc, jr_016_54fa

jr_016_54fa:
    ld a, b
    jr nc, @-$32

    ld a, b
    add [hl]
    db $fc
    inc bc
    cp $01

    db $41

    rst $38
    nop

    db $09

    rst $08
    jr nc, jr_016_5491

    ld a, b
    inc bc
    call z, $8601
    nop
    inc bc

    db $83, $01, $fa, $b0, $01, $b0, $04

    rrca
    ld [$4070], sp
    add b

    db $2a

    nop

    db $05

    rlca
    inc b
    jr jr_016_5534

    jr nz, @+$22

    db $83, $01, $d5, $8a, $01, $db, $09

    jr c, @+$42

    ccf
    ld b, b
    rra
    jr nz, jr_016_553b

jr_016_5534:
    jr jr_016_5536

jr_016_5536:
    rlca

    db $83, $02, $ae, $00

jr_016_553b:
    db $f8

    db $84, $01, $65, $05

    ld a, a
    add b
    rrca
    ld [hl], b
    nop
    rrca

    db $f4, $2f, $02, $00, $05

    ld a, a
    rst $38
    ret nz

    ret nz

    reti


    add b

    db $45

    cp a
    ret nz

    db $00

    cp l

    db $42

    db $c3
    cp [hl]

    db $42

    db $c3
    cp a

    db $04

    jp nz, $c2bf

    rst $38
    db $fc

    db $8b, $01, $54, $24

    nop

    db $04

    jr jr_016_556a

jr_016_556a:
    inc a
    nop
    ld a, [hl]

    db $83, $01, $21, $00

    db $c3

    db $86, $02, $6f, $41

    rst $38
    nop

    db $03

    cp a
    ld b, b
    ei
    nop

    db $a4, $02, $9e, $f4, $2c, $02, $83, $c3, $03, $af, $00

    db $f0

    db $84, $02, $f7, $05

    rra
    ld h, b
    inc bc
    inc e
    nop
    inc bc

    db $f4, $3f, $02, $c0, $f4, $2f, $01, $00, $f4, $2f, $03, $30, $08

    rst $20
    jr @+$01

    nop
    rst $20
    nop
    jp $8100


    db $26

    nop

    db $a3, $01, $70, $01

    cp l
    ld b, e

    db $41

    db $fd
    inc bc

    db $00

    db $ed

    db $84, $04, $37, $f4, $2f, $01, $80, $af, $03, $b0, $f4, $3f, $01, $c0, $08

    ld a, $01
    ld h, c
    nop
    pop hl
    nop
    add b
    nop
    add c

    db $41

    nop
    add a

    db $05

    nop
    ld l, a
    add b
    ld e, $e1
    pop hl

    db $84, $05, $03, $00

    db $01

    db $84, $05, $09, $02

    rst $28
    nop
    ld [hl], a

    db $41

    add b
    ld h, c

    db $00

    add b

    db $89, $05, $06, $8f, $05, $20, $01

    rst $30
    nop

    db $8d, $05, $12, $8f, $05, $40, $05

    nop
    jr jr_016_55fc

jr_016_55fc:
    inc l
    nop
    ld b, [hl]

    db $4c

    nop
    add e

    db $84, $02, $00, $13

    INCBIN "gfx/image_016_5606.2bpp"

    jr nz, @+$15

    db $10
    jp hl


    db $86, $02, $09, $08

    add b
    add b
    ld [hl], b
    ld h, b
    rra
    inc e
    xor e
    inc bc
    ld a, l

    db $c5, $03, $79, $f0, $50, $00, $4f, $09

    inc e
    ldh [$ffe2], a
    nop
    pop hl
    nop
    add c
    nop
    db $01
    nop

    db $41

    add [hl]
    db $01

    db $01

    xor $01

    db $8f, $05, $10, $02

    or $01
    pop hl

    db $8c, $06, $03, $8f, $06, $20, $f0, $20, $05, $40, $2b

    nop

    db $85, $03, $71, $c9, $06, $71, $02

    ld d, l
    ld d, l
    xor d

    db $f4, $25, $05, $80, $02

    db $e3
    ret nz

    ld e, l

    db $85, $05, $a9, $f0, $80, $00, $4f, $ff, $7f, $53, $16, $ff, $00, $80, $62, $7d
    db $e0, $25, $11, $23, $06, $06, $04, $11, $11, $10, $80, $31, $00, $31, $24, $07
    db $27, $27, $09, $29, $29, $16, $26, $40, $41, $51, $43, $45, $55, $46, $46, $0c
    db $2c, $1d, $48, $26, $1b, $80, $1b, $0e, $23, $80, $e0, $23, $4a, $7d, $7f, $7c
    db $82, $80, $23, $04, $07, $09, $7d, $80, $82, $09, $82, $26, $82, $29, $7f, $56
    db $56, $82, $56, $7c, $11, $80, $82, $7f, $82, $80, $7d, $7f, $80, $80, $82, $1d
    db $3d, $80, $00, $7f, $26, $80, $00, $82, $e4, $86, $80, $62, $7d, $e0, $22, $21
    db $06, $06, $33, $21, $21, $14, $80, $20, $30, $01, $34, $01, $17, $17, $37, $19
    db $19, $39, $16, $26, $41, $51, $50, $45, $55, $53, $56, $80, $1c, $3c, $2d, $26
    db $58, $0b, $22, $80, $e0, $20, $3e, $0b, $80, $80, $5a, $7d, $7f, $7f, $84, $80
    db $33, $14, $37, $39, $7d, $80, $84, $39, $84, $26, $84, $19, $7f, $46, $56, $84
    db $56, $80, $21, $80, $84, $7f, $84, $84, $00, $4b, $01, $84, $2d, $f0, $25, $00
    db $52, $00, $84, $e4, $86, $80, $62, $7d, $e0, $4d, $12, $03, $02, $02, $05, $12
    db $12, $30, $20, $12, $01, $21, $25, $08, $28, $28, $0a, $2a, $2a, $80, $36, $42
    db $54, $54, $42, $54, $54, $47, $47, $0d, $80, $1e, $30, $59, $80, $3b, $80, $0f
    db $2f, $80, $3b, $80, $7d, $7d, $7f, $7f, $83, $80, $03, $05, $08, $0a, $f3, $80
    db $83, $0a, $83, $36, $83, $2a, $7f, $57, $57, $83, $57, $80, $12, $80, $83, $7f
    db $83, $f1, $7d, $7f, $80, $f1, $83, $1e, $35, $80, $00, $f1, $8e, $00, $69, $00
    db $83, $e4, $86, $80, $62, $7d, $e0, $4d, $22, $32, $32, $13, $22, $22, $15, $10
    db $00, $31, $22, $35, $11, $18, $18, $38, $1a, $1a, $3a, $80, $36, $44, $44, $52
    db $44, $44, $52, $57, $80, $80, $3d, $2e, $49, $00, $80, $2b, $80, $1f, $3f, $80
    db $80, $2b, $7d, $7d, $7c, $7f, $85, $80, $13, $15, $38, $3a, $f2, $80, $85, $3a
    db $85, $36, $85, $1a, $7f, $47, $57, $85, $57, $80, $7c, $7c, $85, $7f, $85, $f0
    db $7d, $7f, $80, $f0, $85, $2e, $35, $80, $00, $f0, $8e, $00, $69, $00, $85, $e4
    db $85, $80, $23, $00, $26, $01, $01, $05, $04, $23, $01, $22, $03, $22, $00, $00
    db $02, $2b, $00, $01, $05, $04, $27, $00, $0a, $80, $80, $fd, $fe, $21, $00, $01
    db $01, $03, $00, $80, $42, $00, $21, $11, $00, $90, $00, $00, $21, $00, $fe, $fd
    db $fd, $21, $10, $21, $00, $40, $10, $40, $00, $21, $3e, $00, $00, $10, $c5, $04
    db $53, $01, $00, $21, $e4, $85, $00, $ff, $76, $02

    rst $38
    rst $38
    ld a, a

    db $53

    rst $38
    ccf

    db $07

    rst $38
    nop
    add b
    nop
    nop
    rst $38
    rst $38
    add b

    db $43

    add b
    cp a

    db $08

    add b
    rst $08
    or b
    adc a
    sub b
    xor a
    sub b
    rst $08
    or b

    db $8f, $00, $34, $43

    cp a
    add b

    db $01

    ret nz

    cp a

    db $23

    rst $38

    db $01

    inc bc
    db $01

    db $45

    db $fd
    inc bc

    db $01

    pop bc
    ccf

    db $43

    pop bc
    daa

    db $03

    reti


    daa
    pop bc
    ccf

    db $46

    db $fd
    inc bc

    db $00

    db $01

    db $24

    rst $38

    db $00

    add b

    db $41

    rst $38
    cp a

    db $02

    db $ed
    xor l
    rst $38

    db $84, $00, $5d, $03

    sbc a
    sbc a
    rst $38
    rst $38

    db $42

    rst $38
    cp a

    db $8d, $00, $99, $04

    db $ed
    xor l
    rst $38
    cp a
    rst $38

    db $af, $00, $8c, $a4, $00, $a4, $04

    rst $20
    db $fd
    rst $20
    push hl
    rst $20

    db $84, $00, $d0, $01

    rst $38
    push hl

    db $42

    rst $38
    db $fd

    db $ad, $00, $b3, $05

    cp $1f
    rra
    rrca
    rrca
    rra

    db $c4, $00, $f6, $04

    rst $38
    cp $ff
    nop
    rst $38

    db $f4, $2a, $00, $00, $00

    db $01

    db $22

    nop

    db $04

    rst $38
    ccf
    ldh [rLCDC], a
    db $e3

    db $46

    add b
    rst $38

    db $0c

    and b
    rst $18
    ldh a, [$ff8f]
    ld hl, sp-$79
    db $fc
    adc e
    or $9d
    db $e3
    cp [hl]
    pop bc

    db $25

    add b

    db $09

    sub b
    add b
    cp b
    add b
    db $fc
    add b
    cp $80
    rst $38
    add b

    db $25

    db $01

    db $04

    ld de, $3901
    db $01
    ld a, l

    db $a4, $01, $35, $0e

    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    dec bc
    ld [$1013], sp
    daa
    jr nz, @+$61

    ld b, b
    cp a

    db $44

    add b
    rst $38

    db $43

    rst $38
    add b

    db $41

    ldh [$ff80], a

    db $0b

    ldh [$ff90], a
    ldh [$ff98], a
    ldh [$ff9c], a
    ldh [$ffbe], a
    ret nz

    rst $38
    add b
    db $fe

    db $43

    nop
    rst $38

    db $00

    db $fe

    db $42

    db $01
    rst $38

    db $43

    ld sp, hl
    rlca

    db $07

    add sp, $07
    ret nz

    rlca
    add b
    inc bc
    nop
    db $01

    db $41

    rst $38
    nop

    db $01

    add c
    ld a, [hl]

    db $44

    nop
    rst $38

    db $06

    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    ld [hl], a

    db $88, $01, $c6, $0b

    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f3
    inc c
    ld h, e
    sbc h
    ld b, [hl]
    cp c
    add h
    ld a, e

    db $c5, $01, $a5, $19

    INCBIN "gfx/image_016_5948.2bpp"

    ld [bc], a
    cp $05
    call c, $b80b
    inc de
    jr nc, jr_016_5988

    ld h, b

    db $83, $01, $7c, $09

    add b
    cp $40
    ld a, l
    and b
    add hl, sp
    ret nc

    inc de
    ret z

    dec bc

    db $a5, $02, $0a, $41

    ret nz

    nop

    db $06

    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc

    db $c5, $01, $f2, $03

    rst $38
    nop
    nop
    db $c3

    db $46

    nop

jr_016_5988:
    rst $38

    db $0b

    inc c
    di
    ld e, $e1
    ccf
    ret nz

    ld [hl], a
    add b
    db $e3
    nop
    pop bc
    db $01

    db $88, $01, $35, $07

    rst $28
    add b
    rst $00
    add b
    add e
    add b
    add c
    add b

    db $43

    rst $38
    db $01

    db $06

    rst $28
    ld bc, $01c7
    add e
    db $01
    db $01

    db $b0, $01, $9f, $87, $01, $90, $07

    jr @-$1e

    inc e
    ldh [$ff3e], a
    ret nz

    ld a, a
    add b

    db $8f, $02, $30, $bf, $01, $70, $43

    ld sp, hl
    rlca

    db $07

    jp hl


    rlca
    pop bc
    rlca
    add c
    inc bc
    db $01
    db $01

    db $83, $01, $ef, $00

    db $f8

    db $c4, $02, $25, $02

    add b
    nop
    add b

    db $24

    nop

    db $cd, $02, $e0, $c8, $02, $3c, $00

    inc a

    db $42

    nop
    rst $38

    db $04

    ret nz

    nop
    ldh a, [rP1]
    db $fc

    db $8a, $02, $35, $00

    rrca

    db $2e

    nop

    db $f4, $22, $02, $20, $11

    INCBIN "gfx/image_016_59f9.2bpp"

    nop
    ret nz

    db $8a, $02, $db, $43

    db $10
    db $ec

    db $43

    rrca
    db $f0

    db $02

    inc bc
    nop
    inc bc

    db $d2, $03, $23, $04

    stop
    jr c, jr_016_5a20

jr_016_5a20:
    ld a, h

    db $83, $02, $2b, $c6, $03, $57, $00

    db $fe

    db $8c, $02, $35, $02

    ccf
    nop
    rra

    db $43

    nop
    rrca

    db $02

    nop
    rst $38
    rst $38

    db $8d, $03, $82, $c6, $01, $a6, $03

    ld bc, $07f8
    ret nz

    db $a4, $03, $04, $00

    db $e0

    db $30

    nop

    db $00

    db $e0

    db $8c, $02, $35, $0d

    ld a, a
    ld a, a
    ld hl, sp-$08
    ldh a, [c]
    ldh a, [c]
    or $f6
    ldh a, [$fff0]
    ld sp, hl
    ld sp, hl
    ld a, a
    ld a, a

    db $8b, $03, $d8, $84, $01, $a0, $d0, $03, $1f, $ab, $03, $70, $03

    rst $38
    nop
    nop
    rst $38

    db $a4, $01, $30, $b2, $01, $37, $08

    pop bc
    ld [hl], a
    add c
    db $e3
    inc bc
    pop bc
    inc bc
    add c
    rlca

    db $b2, $03, $11, $02

    ret nz

    nop
    ret nz

    db $b8, $03, $57, $43

    rst $38
    nop

    db $06

    rst $28
    nop
    rst $00
    nop
    add e
    nop
    db $01

    db $b0, $03, $db, $cf, $03, $a6, $01

    rst $38
    rst $38

    db $8c, $04, $82, $f4, $30, $03, $bf, $8e, $03, $d6, $bc, $03, $ff, $83, $04, $2c
    db $b3, $04, $20, $01

    and e
    ret nz

    db $45

    sbc a
    db $e0

    db $07

    sbc a
    pop hl
    ld e, d
    rst $20
    inc h
    db $fc
    inc e
    db $f8

    db $42

    inc c
    db $f0

    db $90, $02, $30, $08

    add b
    rst $38
    add c
    ld e, d
    rst $20
    inc h
    inc a
    jr jr_016_5ae6

    db $85, $05, $16, $b0, $05, $30, $00

    add a

    db $a4, $05, $42, $02

    rst $38
    ld hl, sp+$1f

    db $42

    ldh a, [rIF]

    db $89, $03, $60, $05

    ld c, a
    or b

jr_016_5ae6:
    ccf
    ret nz

    nop
    rst $38

    db $af, $05, $90, $c4, $03, $98, $b0, $03, $75, $00

    nop

    db $88, $03, $91, $bf, $02, $d0, $8f, $04, $d6, $bf, $03, $00, $d9, $06, $1e, $00

    db $fe

    db $c7, $02, $29, $8c, $02, $d7, $de, $06, $4e, $f4, $3f, $06, $2f, $00

    nop

    db $bf, $05, $b0, $af, $03, $f0, $03

    ld a, a
    ld a, a
    db $fc
    db $fc

    db $27

    db $fe

    db $a5, $06, $dc, $24

    ccf

    db $ca, $06, $f6, $03

    ldh a, [$fff0]
    rst $38
    rst $38

    db $a3, $00, $f2, $01

    ldh a, [$fff0]

    db $a3, $00, $fc, $01

    db $fc
    db $fc

    db $86, $00, $f6, $00

    rst $38

    db $a4, $07, $0a, $86, $06, $ff, $a9, $07, $16, $03

    nop
    nop
    ld a, [hl]
    ld a, [hl]

    db $23

    ld b, d

    db $c6, $07, $37, $00

    nop

    db $c7, $07, $3f, $d7, $07, $47, $ff, $2c, $58, $16, $ff, $00, $80, $62, $7d, $e0
    db $24, $00, $20, $20, $12, $35, $35, $38, $0c, $0e, $61, $80, $17, $14, $08, $7d
    db $40, $42, $42, $05, $08, $23, $80, $24, $23, $80, $80, $0a, $0c, $7d, $7d, $61
    db $61, $1a, $3a, $7d, $3b, $0f, $22, $80, $0d, $50, $4e, $58, $52, $80, $80, $7d
    db $7d, $22, $27, $1a, $3a, $1b, $80, $22, $7d, $0e, $36, $27, $61, $5b, $5b, $5d
    db $5d, $5f, $5f, $2c, $2c, $ee, $f1, $ee, $f7, $2b, $61, $01, $35, $7c, $34, $61
    db $00, $60, $90, $00, $5f, $26, $60, $e4, $77, $80, $62, $7d, $19, $10, $10, $30
    db $25, $25, $03, $28, $0d, $0c, $61, $04, $80, $15, $07, $7d, $42, $42, $44, $15
    db $18, $33, $80, $34, $80, $80, $34, $85, $00, $1e, $02, $2a, $4a, $2b, $c3, $01
    db $00, $e0, $20, $1f, $48, $1e, $54, $80, $80, $56, $7d, $7d, $32, $7d, $2a, $4a
    db $80, $4b, $7d, $7d, $26, $37, $26, $61, $5c, $5c, $5e, $5e, $fc, $fc, $5a, $5a
    db $fe, $f4, $fe, $fa, $2b, $61, $04, $25, $7d, $61, $61, $60, $90, $00, $6e, $00
    db $60, $f0, $93, $00, $6f, $03, $01, $21, $21, $02, $22, $25, $18, $04, $07, $61
    db $04, $07, $15, $25, $22, $41, $43, $43, $06, $25, $23, $80, $24, $46, $3e, $3f
    db $0b, $80, $29, $39, $61, $61, $84, $00, $38, $10, $2d, $4c, $4d, $51, $80, $80
    db $53, $4f, $59, $1a, $3a, $26, $37, $80, $80, $7d, $3b, $c3, $01, $34, $01, $37
    db $61, $42, $ed, $f0, $05, $ed, $f6, $ef, $f2, $ef, $f8, $cb, $01, $66, $01, $25
    db $7d, $8c, $00, $7b, $03, $61, $60, $60, $60, $8d, $02, $58, $01, $61, $61, $cc
    db $00, $82, $e4, $77, $80, $62, $7d, $1f, $11, $11, $31, $35, $35, $13, $35, $14
    db $17, $61, $14, $17, $35, $08, $32, $43, $43, $45, $35, $19, $33, $80, $34, $2f
    db $3e, $47, $0b, $80, $09, $1c, $61, $61, $83, $01, $37, $13, $1d, $3c, $3d, $7d
    db $80, $80, $55, $49, $2e, $57, $2a, $4a, $36, $7d, $80, $80, $2b, $7d, $22, $27
    db $22, $7d, $00, $61, $42, $fd, $f3, $05, $fd, $f9, $ff, $f5, $ff, $fb, $8b, $02
    db $4a, $00, $7c, $f0, $a5, $02, $57, $23, $00, $26, $01, $07, $04, $05, $00, $04
    db $05, $01, $01, $00, $22, $03, $01, $01, $01, $e4, $2f, $00, $02, $10, $00, $18
    db $2c, $00, $01, $fd, $fe, $e4, $a4, $00, $ff, $75, $4d

    ccf
    rst $38

    db $07

    nop
    add b
    nop
    nop
    rst $38
    rst $38
    inc bc
    db $01

    db $45

    db $fd
    inc bc

    db $01

    pop bc
    ccf

    db $43

    pop bc
    daa

    db $03

    reti


    daa
    pop bc
    ccf

    db $46

    db $fd
    inc bc

    db $00

    db $01

    db $24

    rst $38

    db $00

    add b

    db $43

    add b
    cp a

    db $08

    add b
    rst $08
    or b
    adc a
    sub b
    xor a
    sub b
    rst $08
    or b

    db $8f, $00, $54, $43

    cp a
    add b

    db $01

    ret nz

    cp a

    db $a4, $00, $4e, $41

    rst $38
    db $fd

    db $01

    or a
    or l

    db $43

    rst $38
    db $fd

    db $04

    rst $20
    db $fd
    rst $20
    push hl
    rst $20

    db $84, $00, $90, $01

    rst $38
    push hl

    db $44

    rst $38
    db $fd

    db $01

    or a
    or l

    db $c4, $00, $85, $ad, $00, $7e, $22

    rst $38

    db $03

    sbc a
    sbc a
    rst $38
    rst $38

    db $a5, $00, $9d, $89, $00, $b9, $ae, $00, $a3, $01

    rst $38
    db $fe

    db $53

    rst $38
    db $fc

    db $03

    ld bc, $0000
    nop

    db $af, $00, $e1, $42

    nop
    rst $38

    db $03

    nop
    ld a, [hl]
    nop
    inc a

    db $42

    nop
    db $30

    db $43

    sbc a
    db $e0

    db $08

    sbc a
    ld hl, sp-$41
    db $e4
    rst $38
    jp nz, $81ff

    ld a, a

    db $45

    nop
    rst $38

    db $e0, $38

    INCBIN "gfx/image_016_5d87.2bpp"

    ret nz

    ld a, a

jr_016_5db9:
    add b
    ccf
    ccf
    ld h, b
    ld b, b
    and e
    ret nz

    db $44

    sbc a
    db $e0

    db $41

    sbc [hl]
    pop hl

    db $41

    sbc l
    db $e3

    db $41

    ld e, e
    db $e6

    db $03

    ld h, a
    cp h
    ld e, a
    cp h

    db $41

    ld h, a
    sbc b

    db $41

    ld b, e
    and h

    db $41

    db $01
    db $c2

    db $43

    nop
    pop bc

    db $41

    nop
    db $c2

    db $41

    ld b, b
    and h

    db $43

    ld b, b
    sbc b

    db $41

    ld b, b
    and h

    db $00

    nop

    db $cc, $01, $b7, $01

    nop
    db $c2

    db $41

    nop
    db $e4

    db $12

    INCBIN "gfx/image_016_5df5.2bpp"

    ld de, $1800

    db $c4, $01, $2a, $06

    cp a
    nop
    rra
    nop
    adc a
    nop
    rst $00

    db $c4, $01, $f9, $06

    nop
    nop
    rlca
    nop
    jr jr_016_5e1d

jr_016_5e1d:
    db $20

    db $41

    nop
    ld b, b

    db $43

    nop
    add b

    db $07

    nop
    ld b, b
    nop
    ld h, b
    nop
    jr c, jr_016_5e2c

jr_016_5e2c:
    rra

    db $c4, $02, $03, $87, $01, $47, $84, $01, $26, $02

    inc a
    nop
    inc c

    db $43

    rst $38
    nop

    db $1a

    INCBIN "gfx/image_016_5e3e.2bpp"

    rst $08
    ld [hl], b
    rst $18
    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ccf
    db $e0

    db $8c, $01, $83, $16

    INCBIN "gfx/image_016_5e5d.2bpp"

    cp $01
    ld a, h
    inc bc
    jr c, jr_016_5e7a

    db $10

    db $41

    rrca
    nop

    db $04

    rlca
    nop

jr_016_5e7a:
    inc bc
    nop
    db $01

    db $c3, $00, $21, $00

    db $c3

    db $8a, $01, $41, $41

    ld a, [hl]
    add c

    db $41

    cp l
    db $c3

    db $41

    db $db
    ld h, [hl]

    db $03

    rst $20
    inc a
    rst $38
    inc a

    db $41

    rst $20
    db $18

    db $41

    db $c3
    inc h

    db $41

    add c
    ld b, d

    db $43

    nop
    add c

    db $41

    nop
    ld b, d

    db $41

    nop
    inc h

    db $41

    nop
    db $18

    db $00

jr_016_5ea9:
    nop

    db $d4, $02, $bf, $85, $02, $b6, $06

    rst $20
    jr jr_016_5eb4

jr_016_5eb4:
    rst $38
    jr nz, jr_016_5eb7

jr_016_5eb7:
    ld d, b

    db $c4, $01, $e7, $0a

    inc h
    nop
    ld c, [hl]
    nop
    sbc a
    nop
    cp [hl]
    nop
    ld a, h
    nop
    db $38

    db $84, $01, $e3, $02

    rst $00
    nop
    rst $28

    db $c3, $02, $24, $f4, $20, $01, $ff, $41

    jr @+$22

    db $41

    inc b
    db $30

    db $86, $03, $20, $a8, $02, $2f, $06

    rst $38
    jr @+$01

    inc h
    rst $38
    ld b, d
    rst $38

    db $a4, $02, $3f, $0a

    ei
    ld b, $f3
    ld c, $e3
    ld c, $c3
    ld b, $82
    inc bc
    db $01

    db $b0, $02, $4f, $1f

    INCBIN "gfx/image_016_5efc.2bpp"

    db $f4, $5f, $01, $80, $08

    ccf
    nop
    ld [hl], a
    ld [$1ce3], sp
    pop bc
    ld a, $80

    db $86, $01, $40, $04

    cp $00
    db $ec
    db $10
    db $c6

    db $aa, $03, $e5, $23

    nop

    db $00

    db $30

    db $41

    nop
    ld a, b

    db $01

    nop
    db $30

    db $41

    nop
    db $06

    db $84, $01, $20, $00

    di

    db $41

    nop
    pop hl

    db $01

    nop
    di

    db $41

    nop
    sbc a

    db $b0, $03, $1f, $a9, $01, $30, $04

    push hl
    daa
    jp $8143


    db $b4, $01, $3f, $02

    dec sp
    ld b, $13

    db $41

    ld c, $03

    db $01

    ld b, $02

    db $a3, $03, $70, $15

    INCBIN "gfx/image_016_5f6e.2bpp"

    inc bc
    ld a, l
    inc bc
    add hl, sp

jr_016_5f82:
    rlca
    db $11

    db $41

    rrca
    db $01

    db $00

    rlca

    db $41

    db $01
    inc bc

    db $c4, $03, $33, $00

    rst $08

    db $41

    ld a, b
    add a

    db $01

    jr nc, @-$2f

    db $41

    ld b, $f9

    db $41

    ld d, b
    add b

    db $43

    inc h
    ret nz

    db $41

    ld d, b
    add b

    db $af, $04, $90, $87, $01, $48, $41

    pop af
    db $0e

    db $03

    di
    inc c
    db $e3
    inc e

    db $af, $04, $b0, $01

    rlca
    db $f8

    db $42

    rrca
    db $f0

    db $01

    ld a, a
    add b

    db $8d, $04, $42, $42

    rrca
    db $f0

    db $01

    rlca
    db $f8

    db $bf, $04, $d0, $43

    nop
    rst $38

    db $41

    ld b, $f1

    db $04

    ld a, [bc]
    pop af
    ld a, [bc]
    pop hl
    rlca

    db $42

    nop
    rrca

    db $00

    nop

    db $87, $01, $40, $ce, $05, $2e, $00

    nop

    db $df, $05, $3f, $1f

    INCBIN "gfx/image_016_5fe6.2bpp"

    db $43

    nop
    rst $38

    db $41

    inc b
    di

    db $83, $05, $1c, $41

    jr @+$06

    db $00

    db $21

    db $84, $04, $25, $11

    INCBIN "gfx/image_016_6018.2bpp"

    db $c4
    db $06

    db $a3, $05, $7c, $0a

    add b
    add c
    ld b, b
    ld b, c
    and b
    ld [hl+], a
    ret nc

    ld [de], a
    ret z

    inc c
    db $c4

    db $a4, $05, $6b, $bf, $05, $a0, $0f

    INCBIN "gfx/image_016_6040.2bpp"

    db $af, $05, $e0, $03

    rst $38
    ld a, a
    db $fc
    db $fc

    db $27

    db $fe

    db $a5, $05, $fc, $29

    ccf

    db $83, $05, $fc, $f4, $3f, $05, $20, $08

    cp h
    add b
    ld a, [hl]
    ld b, b
    cp a
    jr nz, @-$1f

    db $10
    rst $08

    db $a6, $05, $69, $02

    cp $80
    ld l, h

    db $ac, $05, $73, $08

    ld e, b
    jr nz, @-$66

    jr nz, @+$06

    jr nc, @-$7a

    jr nc, @+$5a

    db $86, $03, $21, $07

    ld a, a
    ld a, a
    ldh a, [$fff0]
    rst $38
    rst $38
    ld hl, sp-$08

    db $23

    db $f0

    db $05

    ld a, a
    ld a, a
    nop
    nop
    cp $fe

    db $a3, $06, $96, $03

    rra
    rra
    rst $38
    rst $38

    db $a7, $06, $9a, $83, $06, $92, $a3, $06, $a6, $8d, $06, $9a, $c7, $06, $a5, $03

    nop
    nop
    ld a, [hl]
    ld a, [hl]

    db $23

    ld b, d

    db $c5, $06, $d7, $01

    nop
    nop

    db $c7, $06, $df, $c5, $06, $e7, $01

    nop
    nop

    db $c7, $06, $ef, $c5, $06, $f7, $01

    nop
    nop

    db $c7, $06, $ff, $c5, $07, $07, $f0, $3f, $06, $ce, $01

    nop
    nop

    db $ff, $ee, $5c, $16, $ff, $00, $80, $62, $7d, $e0, $51, $06, $16, $16, $04, $0d
    db $54, $24, $04, $02, $22, $00, $20, $06, $16, $16, $80, $38, $3c, $38, $43, $08
    db $18, $18, $7d, $80, $1f, $50, $1f, $0a, $1a, $1a, $50, $1e, $41, $0f, $0f, $0e
    db $80, $1e, $3c, $7e, $43, $3e, $3d, $7d, $7d, $41, $3c, $7d, $3c, $7e, $7e, $3d
    db $3c, $7d, $7e, $3c, $43, $80, $50, $3b, $3e, $80, $50, $80, $80, $52, $43, $7e
    db $7e, $50, $52, $3d, $7d, $7d, $3c, $7e, $3d, $80, $3d, $3d, $51, $41, $80, $7d
    db $0f, $2f, $2e, $7d, $80, $40, $40, $7d, $2e, $50, $52, $3c, $80, $43, $41, $80
    db $43, $23, $80, $01, $0d, $04, $22, $60, $18, $20, $50, $0d, $38, $7c, $43, $08
    db $18, $3c, $1a, $48, $13, $16, $4e, $4e, $57, $57, $59, $59, $4c, $4c, $ee, $f4
    db $ee, $fa, $e4, $73, $80, $62, $7d, $e0, $65, $16, $16, $26, $14, $44, $1d, $14
    db $34, $12, $32, $10, $30, $16, $16, $26, $37, $80, $7d, $53, $37, $18, $18, $28
    db $3e, $0f, $80, $0f, $40, $1a, $1a, $2a, $0e, $40, $7d, $40, $40, $1e, $0e, $80
    db $7d, $3b, $53, $3b, $7e, $7d, $51, $7d, $7d, $51, $7d, $3b, $7e, $53, $7d, $3e
    db $7e, $3e, $3b, $40, $80, $3d, $3c, $40, $80, $40, $42, $80, $7e, $53, $3b, $80
    db $80, $7e, $3e, $7d, $3e, $3b, $7e, $40, $3b, $53, $41, $80, $7d, $40, $51, $51
    db $42, $3e, $80, $51, $51, $3e, $40, $2e, $40, $51, $42, $3b, $51, $80, $53, $23
    db $80, $01, $1d, $14, $22, $80, $18, $30, $40, $37, $1d, $80, $53, $18, $28, $51
    db $4a, $1a, $16, $23, $4f, $4f, $58, $58, $5a, $5a, $4d, $4d, $fd, $f1, $fd, $f7
    db $e4, $73, $80, $62, $7d, $e0, $54, $01, $21, $21, $05, $45, $32, $25, $05, $03
    db $05, $20, $20, $07, $17, $17, $80, $38, $3f, $38, $0c, $09, $19, $19, $3e, $80
    db $80, $7d, $40, $0b, $1b, $1b, $7d, $40, $0e, $40, $80, $0f, $80, $1f, $53, $7e
    db $80, $3d, $7d, $51, $51, $80, $3b, $3e, $53, $3b, $3d, $51, $7e, $3e, $3b, $7e
    db $80, $40, $7d, $3c, $3d, $42, $3e, $40, $42, $7e, $80, $53, $3b, $51, $53, $3c
    db $3e, $3c, $3b, $3d, $3e, $80, $7d, $7d, $50, $80, $7d, $42, $85, $01, $58, $05
    db $7d, $51, $40, $7d, $3b, $53, $41, $80, $40, $06, $80, $0e, $80, $1e, $0c, $2c
    db $05, $22, $80, $0c, $56, $7d, $2c, $38, $80, $80, $0b, $1b, $7e, $4b, $32, $07
    db $17, $42, $ff, $f3, $05, $ff, $f9, $ef, $f5, $ef, $fb, $e4, $73, $80, $62, $7d
    db $1f, $11, $11, $31, $15, $02, $55, $15, $35, $15, $33, $30, $30, $17, $17, $27
    db $37, $80, $3c, $1c, $37, $19, $19, $29, $46, $80, $80, $50, $7d, $1b, $1b, $2b
    db $50, $41, $7d, $41, $e0, $28, $1f, $0f, $80, $41, $3c, $80, $3c, $3d, $41, $80
    db $41, $7d, $52, $41, $7d, $3b, $80, $3c, $7e, $3d, $7e, $41, $7d, $50, $3e, $3b
    db $3c, $52, $3a, $7e, $52, $43, $80, $3e, $80, $80, $3d, $3b, $3e, $3d, $3c, $83
    db $03, $39, $1a, $40, $2e, $2f, $3c, $2e, $80, $7e, $36, $40, $80, $50, $43, $7d
    db $50, $7d, $80, $43, $7d, $80, $50, $80, $1e, $0e, $80, $1c, $2d, $7c, $22, $80
    db $0c, $47, $7d, $37, $2d, $80, $0f, $1b, $2b, $52, $02, $49, $17, $27, $42, $fc
    db $f0, $05, $fc, $f6, $fe, $f2, $fe, $f8, $e4, $72, $80, $23, $00, $23, $01, $01
    db $04, $05, $c5, $04, $03, $22, $03, $e4, $5b, $00, $00, $fd, $26, $00, $00, $fe
    db $23, $00, $01, $04, $05, $89, $04, $0d, $02, $10, $00, $18, $e4, $73, $00, $ff
    db $86, $22

    rst $38

    db $00

    db $fe

    db $53

    rst $38
    db $fc

    db $00

    db $01

    db $22

    nop

    db $f4, $2a, $00, $01, $14

    INCBIN "gfx/image_016_634d.2bpp"

    sbc a
    cp $ff
    ldh a, [rIF]

    db $af, $00, $60, $15

    INCBIN "gfx/image_016_6366.2bpp"

    rst $38
    ld a, a
    ldh a, [$fff0]
    rst $38
    rst $38

    db $a3, $00, $82, $a7, $00, $8a, $83, $00, $82, $86, $00, $82, $01

    cp $ff

    db $88, $00, $8f, $a5, $00, $88, $03

    rst $38
    nop
    cp $fe

    db $29

    ccf

    db $02

    rst $38
    cp $7f

    db $a4, $00, $bf, $27

    db $fe

    db $a3, $00, $cc, $0e

    rst $38
    rst $38
    jr nz, jr_016_63a9

jr_016_63a9:
    ld [hl], b
    nop
    inc h
    nop
    rrca
    nop
    ld e, $00
    rrca
    nop
    db $08

    db $44

    nop
    rst $38

    db $00

    nop

    db $41

    ld sp, hl
    db $06

    db $42

    rst $38
    nop

    db $41

    rst $20
    db $18

    db $44

    rst $38
    nop

    db $05

    di
    nop
    jp $c700


    nop

    db $8b, $01, $08, $05

    di
    nop
    db $e3
    nop
    rst $20
    nop

    db $c6, $01, $04, $02

    rst $38
    inc bc
    db $01

    db $45

    db $fd
    inc bc

    db $01

    pop bc
    ccf

    db $43

    pop bc
    daa

    db $03

    reti


    daa
    pop bc
    ccf

    db $46

    db $fd
    inc bc

    db $00

    db $01

    db $24

    rst $38

    db $00

    add b

    db $43

    add b
    cp a

    db $08

    add b
    rst $08
    or b
    adc a
    sub b
    xor a
    sub b

Jump_016_63ff:
    rst $08

Call_016_6400:
    or b

    db $8f, $01, $64, $43

    cp a
    add b

    db $01

    ret nz

    cp a

    db $a4, $01, $5e, $41

    rst $38
    db $fd

    db $01

    or a
    or l

    db $43

    rst $38
    db $fd

    db $04

    rst $20
    db $fd
    rst $20
    push hl
    rst $20

    db $84, $01, $a0, $01

    rst $38
    push hl

    db $44

    rst $38
    db $fd

    db $01

    or a
    or l

    db $c4, $01, $95, $ad, $01, $8e, $22

    rst $38

    db $03

    sbc a
    sbc a
    rst $38
    rst $38

    db $a5, $01, $ad, $8d, $01, $c9, $a8, $01, $b7, $8b, $01, $08, $02

    ldh a, [rP1]
    db $fc

    db $a3, $00, $f7, $07

    nop
    sbc a
    nop
    rra
    nop
    ccf
    nop
    ccf

    db $c6, $01, $1b, $04

    rlca
    nop
    rra
    nop
    rst $38

    db $46

    nop
    ld a, a

    db $84, $00, $ef, $04

    adc a
    nop
    add e
    nop
    db $e3

    db $22

    nop

    db $0a

    ret nz

    ret nz

    jr nc, jr_016_649d

    ld c, h
    inc c
    and e
    inc bc
    ret c

    nop
    db $fd

    db $41

    nop
    rst $38

    db $0c

    rlca
    ret c

    call c, Call_000_3033
    rrca
    ld c, h
    db $e3
    ld b, e
    db $e4
    sbc b
    ret


    or [hl]

    db $41

    db $ca
    or l

    db $0d

    ret


    or [hl]
    and h
    db $db
    ld h, e
    call c, $ef50
    inc l
    di
    dec de
    db $fc
    rlca
    rst $38

    db $29

    nop

    db $07

    ld bc, $0201

jr_016_649d:
    ld [bc], a
    inc b
    inc b
    db $08
    db $08

    db $23

    db $10

    db $23

    db $20

    db $0c

    ld b, b
    ld [hl], c
    ld [hl], c
    ld c, [hl]
    cp [hl]
    pop bc
    rst $38
    rst $38
    add b
    nop
    ld b, $00

jr_016_64b3:
    dec b

    db $42

    nop
    inc b

    db $01

    nop
    db $18

    db $29

    nop

    db $10

    INCBIN "gfx/image_016_64bd.2bpp"

    db $01

    db $2c

    nop

    db $e0, $28

    INCBIN "gfx/image_016_64d2.2bpp"

    ccf
    ldh a, [$ff1f]
    db $fc
    rrca
    rst $38
    inc bc
    rst $38

jr_016_64fa:
    nop

    db $44

    nop
    rst $38

    db $41

    ret nz

    rst $38

    db $0f

    INCBIN "gfx/image_016_6502.2bpp"

    db $42

    nop
    rst $38

    db $01

    inc c
    rst $38

    db $c5, $03, $04, $03

    rlca
    rst $38
    ld hl, sp-$01

    db $8a, $00, $fe, $06

    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$08

    db $41

    ldh a, [rNR10]

    db $41

    ldh [rNR41], a

    db $05

    ret nz

    ld [hl], c
    pop af
    ld c, [hl]
    cp a
    ret nz

    db $a9, $02, $30, $a6, $02, $fb, $00

    ret nz

    db $a7, $02, $42, $00

    rlca

    db $b4, $02, $4b, $06

    ld a, a
    nop
    rra
    rlca
    jr @+$1a

    ld h, b

    db $b6, $02, $a7, $01

    rst $20
    db $18

    db $a3, $02, $80, $06

    nop
    nop
    inc e
    nop
    db $e4
    nop
    inc b

    db $41

    nop
    db $08

    db $b0, $02, $8f, $01

    rst $38
    nop

    db $88, $00, $fe, $00

    sbc b

    db $b1, $03, $1c, $03

    ld a, l
    add e
    rst $38
    nop

    db $bb, $02, $f2, $01

    rst $38
    rra

    db $89, $02, $e4, $a6, $02, $ea, $02

    add c
    rst $38
    inc bc

    db $ad, $02, $c4, $08

    ld [hl-], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$30ff], sp

    db $c5, $02, $eb, $08

    nop
    ret nz

    ret nz

    ld a, b
    jr c, @+$10

    ld b, $03
    db $01

    db $2f

    nop

    db $a5, $02, $6a, $af, $02, $a0, $41

    adc h
    rst $38

    db $00

    ld b, b

    db $a4, $04, $03, $03

    jr @+$01

    rlca

jr_016_65b5:
    rst $38

    db $8d, $02, $fe, $01

    inc bc
    rst $38

    db $a3, $00, $59, $04

    rst $38
    rlca
    db $fc
    jr jr_016_65b5

    db $a8, $04, $17, $0a

    jr nz, jr_016_65cb

jr_016_65cb:
    jr nc, jr_016_65cd

jr_016_65cd:
    ld l, $00
    ld b, h
    nop
    jp nz, $2f00

    db $c3, $04, $73, $42

    nop
    rst $38

    db $00

    nop

    db $89, $03, $1a, $88, $00, $f0, $04

    add b
    rst $38
    ld h, b
    ccf
    db $10

    db $83, $03, $b4, $00

    inc bc

    db $cc, $02, $6c, $83, $04, $70, $00

    inc c

    db $42

    nop
    ld [bc], a

    db $04

    nop
    inc bc
    nop
    nop
    nop

    db $cb, $04, $58, $00

    nop

    db $84, $01, $bf, $01

    add b
    rst $38

    db $41

    ld b, e
    ld a, a

    db $0c

    jr nz, @+$41

    ret nc

    rra
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    ccf
    db $01
    rrca

    db $84, $04, $bb, $00

    ret nz

    db $84, $01, $fb, $02

    jr @+$01

    db $18

    db $88, $04, $92, $06

jr_016_662a:
    ld [hl], b
    rst $38
    rst $38
    rrca
    inc c
    rst $38
    inc c

    db $47

    rst $38
    nop

    db $c4, $02, $de, $03

    jr nc, jr_016_662a

    ret nz

    ret nz

    db $84, $01, $fc, $06

    rst $38
    nop
    nop
    jr nc, jr_016_6645

jr_016_6645:
    ld a, b
    nop

    db $c4, $05, $26, $22

    nop

    db $af, $02, $70, $ad, $04, $50, $00

    ccf

    db $41

    rst $38
    db $31

    db $01

    rst $38
    inc bc

    db $a4, $02, $d3, $01

    rra
    db $f8

    db $a3, $04, $4b, $af, $04, $60, $b9, $04, $90, $f4, $25, $04, $6a, $41

    inc b
    nop

    db $05

    ld [bc], a
    nop
    ld a, $00
    ld b, b
    nop

    db $ab, $05, $69, $87, $04, $f0, $01

    rst $38
    rst $38

    db $bf, $05, $00, $af, $04, $f0, $bf, $04, $d0, $03

    rst $38
    ld hl, sp+$07
    rlca

    db $85, $02, $a9, $02

    ld h, b
    nop
    ld h, b

    db $84, $05, $6d, $e0, $22

    INCBIN "gfx/image_016_669a.2bpp"

    ld a, $02
    inc c

    db $84, $02, $6f, $00

    pop hl

    db $83, $03, $67, $aa, $06, $1f, $83, $06, $18, $01

    inc bc
    nop

    db $cd, $06, $20, $08

    ld a, h
    ld [hl], b
    rrca
    rrca
    nop
    nop
    stop
    db $38

    db $a7, $03, $8d, $8d, $06, $6f, $a6, $02, $09, $01

    rst $38
    nop

    db $41

    cp $01

    db $41

    db $fc
    inc bc

    db $41

    ld sp, hl
    db $06

    db $41

    di
    inc c

    db $41

    rst $20
    db $18

    db $42

    rst $08
    db $30

    db $0f

    INCBIN "gfx/image_016_66fa.2bpp"

    db $a5, $06, $25, $09

    ld bc, $0806
    rlca
    ldh a, [rIF]
    ld [bc], a
    db $fd
    rrca
    db $f0

    db $c5, $02, $93, $03

    inc h
    jr @+$44

    inc a

    db $c3, $03, $a1, $a3, $02, $16, $02

    ld hl, sp+$00
    db $e0

    db $a4, $06, $6b, $00

    add b

    db $84, $05, $b9, $cf, $06, $fe, $0c

    ld hl, sp+$00
    ldh a, [rP1]
    db $e3
    nop
    rst $00
    nop
    adc a
    nop
    jr jr_016_6742

jr_016_6742:
    db $30

    db $43

    nop
    inc sp

    db $09

    nop
    ld sp, $1800
    nop
    adc h
    nop
    adc $00
    rst $38

    db $b0, $06, $2f, $a9, $06, $50, $03

    rlca
    ld b, $11
    db $01

    db $87, $03, $71, $c5, $02, $92, $00

    db $18

    db $84, $00, $2d, $02

    ret nz

    nop
    ret nz

    db $89, $06, $65, $b4, $06, $6f, $25

    nop

    db $02

    inc c
    nop
    inc c

    db $b2, $06, $8d, $bf, $06, $c0, $bf, $06, $a0, $01

    rst $38
    rst $38

    db $2c

    nop

    db $f4, $20, $06, $ef, $83, $07, $f4, $00

    pop af

    db $a4, $02, $05, $02

    ld e, $00
    db $0e

    db $41

    nop
    db $ce

    db $03

    nop
    adc [hl]
    nop
    adc h

    db $c8, $08, $17, $83, $02, $5f, $01

    ld a, [hl]
    ld a, [hl]

    db $23

    ld b, d

    db $c6, $08, $37, $00

    nop

    db $c7, $08, $3f, $d7, $08, $47, $ff, $3c, $63, $16, $ff, $00, $80, $62, $7d, $00
    db $45, $22, $2f, $18, $40, $46, $43, $eb, $52, $03, $5b, $07, $09, $0c, $0c, $0e
    db $1e, $09, $0c, $7d, $34, $05, $33, $7d, $47, $58, $4b, $49, $2a, $22, $3a, $06
    db $2d, $7d, $7d, $fe, $ef, $7d, $80, $24, $7d, $07, $5c, $80, $4d, $80, $80, $4c
    db $4d, $7d, $23, $81, $22, $46, $00, $00, $22, $81, $06, $52, $7c, $01, $45, $43
    db $ec, $4e, $25, $81, $09, $ea, $ea, $e8, $e8, $e6, $e6, $e4, $e4, $e1, $fa, $41
    db $e1, $f4, $e4, $a1, $80, $62, $7d, $1c, $53, $55, $53, $3f, $56, $50, $53, $53
    db $41, $13, $5b, $17, $19, $19, $1c, $20, $1f, $19, $1c, $7d, $23, $15, $26, $7d
    db $57, $4b, $4a, $59, $3a, $22, $2d, $00, $3d, $85, $00, $2b, $00, $7d, $41, $7d
    db $4c, $07, $7d, $5d, $80, $80, $7d, $5c, $5d, $4c, $23, $80, $22, $56, $00, $10
    db $22, $80, $06, $41, $80, $11, $3f, $55, $ed, $5e, $25, $80, $09, $e9, $e9, $e7
    db $e7, $e5, $e5, $e3, $e3, $de, $f7, $41, $de, $f1, $e4, $a1, $80, $62, $7d, $24
    db $41, $00, $42, $22, $41, $0f, $04, $06, $08, $0a, $0b, $0d, $0f, $08, $21, $22
    db $7d, $35, $28, $36, $37, $48, $22, $ec, $0b, $2b, $2c, $39, $39, $2e, $7d, $7d
    db $ff, $7d, $7d, $80, $5c, $23, $4c, $06, $80, $5d, $7d, $4d, $5d, $4d, $7d, $c4
    db $01, $00, $03, $46, $44, $46, $46, $84, $01, $3f, $04, $02, $41, $41, $ed, $4f
    db $25, $80, $42, $e0, $f3, $03, $e0, $f9, $e2, $fb, $41, $e2, $f5, $e4, $a1, $80
    db $62, $7d, $23, $52, $00, $51, $23, $52, $06, $14, $16, $18, $1a, $1b, $1d, $14
    db $62, $30, $04, $25, $24, $38, $27, $7d, $22, $ed, $0d, $5a, $3b, $29, $29, $3c
    db $3e, $fc, $fd, $7d, $7d, $ee, $80, $7d, $80, $41, $80, $5c, $06, $7d, $4d, $80
    db $7d, $5d, $7d, $4d, $85, $01, $37, $00, $54, $c3, $01, $3b, $06, $7c, $80, $12
    db $52, $52, $ec, $5f, $25, $80, $42, $dd, $f0, $03, $dd, $f6, $df, $f8, $41, $df
    db $f2, $e4, $a0, $80, $23, $00, $23, $01, $01, $85, $84, $22, $01, $02, $04, $01
    db $05, $22, $81, $08, $04, $05, $81, $81, $00, $04, $03, $05, $00, $c8, $03, $ff
    db $36, $00, $84, $04, $1d, $04, $80, $00, $fd, $fe, $83, $ab, $04, $1f, $85, $04
    db $1f, $05, $18, $00, $10, $00, $90, $80, $e4, $a0, $00, $ff

    sub e
    ld [hl+], a
    rst $38
    nop
    cp $53
    rst $38
    db $fc
    nop
    ld bc, $0022
    db $f4
    ld a, [hl+]
    nop
    ld bc, $ff06
    nop
    add b
    nop
    nop
    rst $38
    cp $25
    adc a
    ld bc, $0f0f
    call nz, $6300
    nop
    rst $38
    xor c
    nop
    ld h, b
    and e
    nop
    nop
    ld [$ff00], sp
    cp $fe
    rra
    rra
    rrca
    rrca
    rra
    add $00
    add [hl]
    inc bc
    inc e
    nop
    rst $38
    ld a, a
    add e
    nop
    ld a, b
    nop
    ld hl, sp-$3c
    nop
    sub [hl]
    inc bc
    rst $38
    ld a, a
    ld a, b
    nop
    add a
    nop
    add b
    and e
    nop
    sbc b
    adc e
    nop
    adc h
    ld bc, $f0f0
    add l
    nop
    sbc d
    ld bc, $feff
    add hl, hl
    ccf
    and e
    nop
    ld a, h
    and e
    nop
    ret nz

    daa
    cp $a3
    nop
    ld l, h
    dec c
    ld a, a
    rst $38
    ld hl, sp-$08
    ldh a, [c]
    ldh a, [c]
    or $f6
    ldh a, [$fff0]
    ld sp, hl
    ld sp, hl
    rst $38
    ld a, a
    xor a
    nop
    sbc $00
    nop
    jp $7000


    ld [$fe00], sp
    ld bc, $0ff0
    ret nz

    ccf
    add b
    ld a, a
    ld b, e
    nop
    rst $38
    rlca
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    cp $01
    ld b, d
    rst $38
    nop
    ld bc, $3fc0
    ld c, e
    nop
    rst $38
    ld bc, $3fc0
    cp a
    ld bc, $011e
    rst $38
    nop
    db $f4
    ld hl, $0001
    push bc
    ld bc, HeaderCartridgeType
    ldh [$ff1f], a
    adc e
    ld bc, $010a
    ldh [$ff1f], a
    rlc c
    ld e, l
    ld bc, $1fe0
    ld c, c
    nop
    rst $38
    ld bc, $1fe0
    cp a
    ld bc, $f49c
    inc h
    ld bc, $027c
    rst $38
    inc bc
    ld bc, $fd45
    inc bc
    ld bc, $3fc1
    ld b, e
    pop bc
    daa
    inc bc
    reti


    daa
    pop bc
    ccf
    ld b, [hl]
    db $fd
    inc bc
    nop
    ld bc, $ff24
    nop
    add b
    ld b, e
    add b
    cp a
    ld [$cf80], sp
    or b
    adc a
    sub b
    xor a
    sub b
    rst $08
    or b
    adc a
    ld [bc], a
    inc [hl]
    ld b, e
    cp a
    add b
    ld bc, $bfc0
    and h
    ld [bc], a
    ld l, $41
    rst $38
    db $fd
    ld bc, $b5b7
    ld b, e
    rst $38
    db $fd
    inc b
    rst $20
    db $fd
    rst $20
    push hl
    rst $20
    add h

jr_016_6a55:
    ld [bc], a
    ld [hl], b
    ld bc, $e5ff
    ld b, h
    rst $38
    db $fd
    ld bc, $b5b7
    call nz, $6502
    xor l
    ld [bc], a
    ld e, [hl]
    ld [hl+], a
    rst $38
    inc bc
    sbc a
    sbc a
    rst $38
    rst $38
    and l
    ld [bc], a
    ld a, l
    adc l
    ld [bc], a
    sbc c
    xor c
    ld [bc], a
    add a
    add [hl]
    ld bc, $470c
    nop
    rst $38
    push bc
    ld bc, $9333
    ld bc, $a3dc
    ld bc, $d494
    ld bc, $413d
    ld bc, $02ff
    ld [bc], a
    rst $38
    ld [bc], a
    ld b, l
    cp $04
    inc b
    cp $03
    inc bc
    ld bc, $2c03
    nop
    rlca
    ld h, a
    add b
    inc a
    jp $ff00


    ld b, b
    cp [hl]
    ld b, c
    ld b, b
    add b
    add e
    ld [bc], a
    add $07
    db $10

jr_016_6aab:
    adc a
    inc de
    adc a
    rra
    adc h
    inc e
    sub b
    ld b, c
    jr nc, jr_016_6a55

    ld b, c
    ld h, b
    ret nz

    add e
    ld bc, $0b76
    rlca
    ld hl, sp+$03
    sbc h
    ld bc, $c08e
    rlca
    ldh [$ff03], a
    ldh a, [rSB]
    ld b, l
    ld [$0310], sp
    rst $28
    stop
    rst $38
    ld b, l
    add b
    ld bc, $fe0b
    ld bc, $ff00
    db $10
    jr nz, jr_016_6aab

    ldh [$fff0], a
    jr nc, @+$3a

jr_016_6adf:
    ld [$0c41], sp
    inc b
    rlca
    rlca
    ld [bc], a
    ld b, $03
    cp $03
    rst $38
    ld bc, $fc41
    inc bc
    ld b, c
    ld sp, hl
    ld b, $03
    di
    inc c
    ldh a, [rIF]
    jp Jump_000_3100


    ldh [$ff2e], a
    dec sp
    nop
    ld [$9077], sp
    ld l, a
    and b
    ld e, a
    add b
    ccf
    nop
    ld a, a
    add c
    ld a, [hl]
    add e
    ld a, h
    add a
    ld a, b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    cp [hl]
    ld b, c
    cp h
    inc bc
    jr c, jr_016_6b1f

    ldh a, [$ff8e]
    ld h, b
    ld e, h

jr_016_6b1c:
    jr nz, @+$3a

    ld d, c

jr_016_6b1f:
    db $10
    xor e
    ld c, b
    or a
    ld b, h
    adc d
    ld [hl-], a
    dec b
    ld a, c
    add d

jr_016_6b29:
    ld a, h
    add d
    adc h
    inc bc
    or e
    inc b
    inc bc
    nop
    rlca
    nop
    inc c
    add e
    inc bc
    cp l
    ld d, $0f
    pop bc
    ld a, $03
    db $fc
    rlca
    ld hl, sp+$1f
    pop hl
    ld c, $72
    dec b
    inc a
    dec bc
    jr jr_016_6adf

    db $10
    xor $21
    call c, $b843

jr_016_6b4e:
    add a
    jp $1c01


    dec b
    cp $30
    ldh a, [rLCDC]
    ret nz

    add b
    ld b, c
    add b
    nop
    nop
    nop
    ld b, d
    nop
    ret nz

    nop
    nop
    ld b, c
    ld h, b
    add b
    dec b
    jr c, jr_016_6b29

    rra
    ldh [rTAC], a
    ld a, b
    dec h
    nop
    ld bc, $0018
    ld b, c
    inc h
    jr jr_016_6b87

    ld b, h
    jr c, @-$7c

    ld a, h
    ld [bc], a
    db $fc
    ld bc, $40ce
    add a
    ld b, b
    add e
    ld b, b
    add b
    ld b, b
    add b
    ld a, a

jr_016_6b87:
    add b
    or c
    inc bc
    ld a, $0a
    jr nz, jr_016_6b4e

    add hl, de
    ldh [rIF], a
    ld [hl], b
    nop
    ccf
    jr nz, jr_016_6bb5

    jr nz, jr_016_6b1c

    inc bc
    ld l, e
    ld b, l
    ld bc, $0302
    db $fd
    ld [bc], a
    nop
    rst $38
    ld b, l
    add b
    nop
    add e
    ld [bc], a
    add $05
    ld c, $00
    nop
    dec e

jr_016_6bad:
    inc b
    dec sp
    adc c
    inc bc
    and [hl]
    or e
    inc bc
    sub b

jr_016_6bb5:
    ld e, $f8
    nop
    rrca
    ldh a, [$ff1f]
    ldh [$ff3e], a
    pop bc
    ld a, h
    add e
    ld hl, sp+$07
    pop af
    ld c, $e2
    dec e
    call nz, $883b
    ld [hl], a
    db $10
    rst $28
    jr nz, jr_016_6bad

    ld b, b
    cp a
    add b
    ld a, a
    ret nz

    nop
    ldh a, [$ffb0]
    inc bc

jr_016_6bd7:
    db $e3
    dec bc
    jr nz, @+$3e

    ret nc

    jr @+$2b

    ret z

    scf
    call nz, $b24a
    add l
    ld a, c
    and l
    inc bc
    ret nz

    ld [bc], a
    adc b
    ld [$86d7], sp
    inc bc
    ld sp, hl
    inc bc
    ld [hl], b
    rrca
    ldh [$ff1f], a
    adc e
    ld bc, $af08
    inc b
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld [hl], $00
    ld bc, $0001
    ld b, c
    ld [bc], a
    ld bc, $04af
    ld d, b
    cp l
    inc b
    jr nz, @-$0a

    ld hl, $5e04
    dec b
    cp $00
    nop
    db $fc
    rlca
    ld hl, sp-$77
    inc b
    and [hl]

jr_016_6c1a:
    ld b, c
    ldh [c], a
    inc e
    ld b, c
    jp z, Jump_016_4134

    sbc d
    ld h, h
    rlca
    dec sp
    call nz, $ff00
    db $fc
    rst $38
    rst $38
    inc bc
    adc e
    inc bc
    ld [hl+], a
    adc a
    inc b
    ret nz

    rlca
    ldh [$ff1f], a
    db $e3
    rra
    rst $28
    inc e
    db $fc
    db $10
    ld b, c
    ldh a, [rNR41]
    ld b, c
    ldh [rLCDC], a
    ld b, d
    and b
    ret nz

    dec b
    cp b
    ret nz

    rst $18
    ld h, b
    rst $00
    ld a, b
    add e
    ld bc, $0708
    ldh a, [$ff0e]
    ldh [rNR32], a
    ret nz

    jr c, jr_016_6bd7

    ld [hl], b
    and e
    inc bc
    ld e, d
    dec b
    ld c, $80
    inc e
    nop
    ld e, $e0
    xor l
    dec b
    ldh [$ffbf], a
    inc bc
    nop
    xor a
    dec b
    jr nz, jr_016_6c1a

    inc bc

jr_016_6c6c:
    ld d, b
    call z, $1e05
    ld [bc], a
    nop
    nop
    rst $38
    xor a
    inc bc
    jr nc, jr_016_6c6c

    cpl
    inc bc
    ld h, b
    xor a
    dec b
    sub b
    rlca
    db $e3
    inc e
    db $e3
    call c, $3cf3
    dec sp
    inc c
    or a
    dec b
    ret z

    or c
    dec b
    and b
    adc l
    inc bc
    ldh [c], a
    adc e
    dec b
    ldh a, [c]
    inc b
    ldh a, [rSB]
    ld a, b
    nop
    ld hl, sp-$56
    dec b
    pop af
    inc b
    ld b, $c0
    inc c
    add b
    ld c, $8e
    ld b, $e1
    dec b
    inc c
    ld [hl], e
    inc b
    dec sp
    nop
    rra
    push bc
    ld b, $3f
    inc bc
    ldh a, [c]
    ld bc, $017a
    jp $5503


    dec bc
    ldh [c], a
    dec e
    jp nz, $8239

    ld [hl], c
    nop
    db $e3
    inc b
    jp $810e


    add h
    ld b, $32
    nop
    dec sp
    add e
    dec b
    ld d, d
    ld bc, $c106
    add e
    dec b
    db $ec
    ld bc, $3fc0
    adc l
    ld b, $f2
    rlca
    ld bc, $0606
    add hl, bc
    nop
    ld [$0a00], sp
    ld b, c

jr_016_6ce2:
    ld [bc], a
    dec b
    add hl, bc
    inc bc
    db $fc
    inc bc
    inc b
    ld d, e

jr_016_6cea:
    inc b
    xor e
    ld d, h
    inc bc
    db $fc
    ld b, h
    inc bc
    inc b
    ld b, [hl]
    ld b, a
    nop
    nop
    ld b, a
    db $f4
    jr nz, jr_016_6cfc

    rst $18
    dec c

jr_016_6cfc:
    ld a, [hl]
    add b
    inc a
    ret nz

Jump_016_6d00:
    jr jr_016_6ce2

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    adc c
    ld [bc], a
    rst $00
    inc bc
    ei
    inc b
    pop af
    ld c, $86
    inc b
    ldh a, [c]
    inc b
    cp $00
    db $fc
    nop
    ld hl, sp-$7c

jr_016_6d1c:
    rlca
    and [hl]
    nop
    ld b, b
    add l
    ld [bc], a
    rst $00
    nop
    ld hl, sp-$7a
    rlca
    xor b
    inc c
    add b
    nop
    inc c
    nop
    rrca
    nop
    dec de
    nop
    or b
    nop
    pop hl
    nop
    jp $004a


    rst $00
    nop
    nop
    xor a
    inc bc
    jr nz, jr_016_6cea

    rlca
    db $10
    inc b
    ld c, [hl]
    add b
    ld e, h
    add b
    ld e, $ac
    rlca
    ld hl, $3001
    pop bc
    xor a
    rlca
    jr nc, @+$03

    ld b, $f8
    adc l
    dec b
    ldh a, [c]
    xor e
    rlca
    ld d, b
    rlca
    add b
    ld a, a
    add b
    ld h, b
    ld c, d
    and b
    ld d, l
    xor d
    add e
    ld [$845c], sp
    ld [$0d58], sp
    ld h, b
    add b
    ld h, b
    add a
    ld h, b
    ld h, a
    sub b
    rlca
    db $10
    rlca
    ld d, b
    ld b, a
    and b
    ld b, a
    adc d
    ld [$015b], sp
    add a
    ld h, b
    ld b, c
    ld b, a
    and b
    ld b, c
    add a
    ld h, b
    ld b, l
    rst $38
    nop
    db $10
    ei
    inc b
    ld sp, $000e
    rra
    db $10
    rrca
    jr c, @+$09

    ld a, h
    inc bc
    ld hl, sp+$01
    ld [hl], b
    nop
    jr nz, jr_016_6d1c

    ld b, $49
    adc d
    rlca
    jp nz, $c003

    nop
    nop
    add b
    xor a
    inc b
    db $10
    or d
    rlca
    ret nc

    ld b, $20
    dec c
    ldh a, [$ff87]
    ld a, b
    jp Jump_016_4a3c


    db $e3
    inc e
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp Jump_000_0309


    add a
    add hl, bc
    nop
    rst $10
    add hl, bc
    rla
    rst $38
    ld c, c
    ld l, c
    ld d, $ff
    nop
    add b
    ld h, d
    ld a, l
    inc b
    ld a, [bc]
    jr jr_016_6ddd

    ld l, $00
    ld [hl+], a
    ld hl, $2ce0
    jr nz, jr_016_6e05

    ld hl, $092a
    inc de

jr_016_6ddd:
    sbc $15
    dec h
    ld d, c
    ld l, $2e
    inc d
    rla
    ld d, b
    ld [hl], $37
    ld d, c
    ld l, $2e
    ld b, e
    ld e, h
    add b
    ld hl, $4d21
    ld c, a
    ld a, l
    ld b, l
    ld a, l
    ld e, l
    ld a, l
    ld e, a
    ldh [$ffe4], a
    db $fc
    ld b, l
    ld a, l
    ld c, e
    ld e, c
    ld e, e

Jump_016_6e00:
    add sp, -$14
    ld c, b
    cp $22

jr_016_6e05:
    ld a, l
    rlca
    pop hl
    ld a, [hl]
    push hl
    add c
    ld a, l
    ld a, l
    jp hl


    db $ed
    add hl, hl
    add c
    ld de, $7c18
    db $dd
    db $dd
    db $db
    db $db
    reti


    reti


    rst $10
    rst $10
    sbc $de
    call nc, $d4fa
    db $f4
    ld a, l
    ld a, l
    db $e4
    sbc a
    add b
    ld h, d
    ld a, l
    inc b
    ld a, [de]
    jr z, jr_016_6e6b

    ld e, $10
    ld [hl+], a
    ld hl, $2be0
    jr nc, @+$3e

    ld hl, $033a
    inc hl
    rst $18
    dec h
    add hl, de
    ld a, $3e
    ld b, c
    rlca
    ld b, $80
    daa
    inc b
    ld b, b
    ld b, b
    ld b, c
    ld de, $0253
    ld hl, $5d21
    ld e, a
    ld c, b
    ld d, l
    ld c, l
    ld a, l
    ld c, a
    ld a, l
    ldh [c], a
    and $fe
    ld d, a
    ld e, c
    ld e, e
    ld c, e
    ld b, a
    ld [$fcee], a
    inc hl
    ld a, l
    rlca
    db $e3
    ld a, [hl]
    rst $20
    add b
    ld a, l
    ld a, l
    db $eb
    rst $28
    add hl, hl

jr_016_6e6b:
    add b
    db $10
    jr z, @+$7f

    call c, $dadc
    jp c, $d8d8

    sub $d6
    rst $18
    rst $18
    pop de
    rst $30
    pop de
    pop af
    ld e, e
    ldh a, [$ffa3]
    nop
    ld e, a
    add hl, de
    dec bc
    dec bc
    dec c
    rrca
    ld bc, $3212
    ld [hl-], a
    add b
    dec l
    inc e
    dec hl
    add hl, hl
    ld d, $f9
    inc [hl]
    ld [hl], $52
    cpl
    cpl
    ld [bc], a
    ld d, $1c
    inc [hl]
    jr c, @+$54

    ld [hl+], a
    cpl
    ld a, [de]
    dec b
    inc e
    add b
    inc e
    ld c, [hl]
    ld c, a
    ld a, l
    ld b, [hl]
    ld a, l
    ld e, [hl]
    ld a, l
    ld e, a
    pop hl
    push hl
    db $fd
    ld b, [hl]
    ld c, d
    ld c, h
    ld e, d
    add b
    jp hl


    db $ed
    ld c, c
    rst $38
    ldh [$ff7e], a
    db $e4
    ld [hl+], a
    ld a, l
    ld [bc], a
    add b
    add sp, -$14
    adc e
    nop
    ld e, [hl]
    ld bc, $7d0b
    ld b, e
    db $d3
    di
    dec b
    db $d3
    ld sp, hl
    push de
    ei
    push de
    push af
    ldh a, [$ffa4]
    ld bc, $e05d
    scf
    dec de
    dec de
    dec e
    rra
    add b
    ld [hl+], a
    ld [hl+], a
    inc h
    ld sp, $0e3d
    dec sp
    ld b, $34
    or $26
    add hl, sp
    ccf
    ccf
    ld b, d
    ld [$0e34], sp
    ld h, $50
    ccf
    ccf
    ld b, d
    inc sp
    ccf
    ld c, $0e
    add b
    ld e, [hl]
    ld e, a
    ld c, c
    ld d, [hl]
    ld c, [hl]
    ld a, l
    ld c, a
    ld a, l
    db $e3
    rst $20
    rst $38
    ld e, b
    ld e, d
    add b
    ld c, h
    ld b, a
    db $eb
    rst $28
    db $fd
    ld a, l
    ldh [c], a
    ld a, [hl]
    and $83
    ld [bc], a
    ld a, [hl-]
    ld bc, $eeea
    adc e
    nop
    ld e, [hl]
    ld bc, $7d7c
    ld b, e
    ret nc

    ldh a, [rTAC]
    ret nc

    or $d2
    ld hl, sp-$2e
    ldh a, [c]
    add b
    ld e, e
    db $e4
    sbc [hl]
    add b
    inc hl
    nop
    inc b
    ld bc, $0501
    inc b
    nop
    ld [hl+], a
    inc bc
    inc bc
    nop
    inc b
    inc bc
    dec b
    daa
    nop
    inc b
    dec b
    nop
    inc bc
    nop
    inc b
    inc h
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $e4
    jr z, jr_016_6f4a

jr_016_6f4a:
    ld bc, $fefd
    add hl, hl
    nop
    ld [bc], a
    jr jr_016_6f52

jr_016_6f52:
    db $10
    db $e4
    and c
    nop
    rst $38
    add e
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp $0300


    add a
    nop
    nop
    rst $00
    nop
    rla
    add a
    nop
    nop
    rst $00
    nop
    daa
    ldh a, [$ff2f]
    nop
    nop
    add l
    nop
    nop
    nop
    jp nz, Jump_000_28f0

    nop
    rlca
    ld [hl+], a
    rst $38
    nop
    cp $53
    rst $38
    db $fc
    inc bc
    ld bc, $0000
    nop
    db $f4
    ld a, [hl+]
    nop
    sub c
    dec c
    rst $38
    nop
    add b
    nop
    nop
    rst $38
    cp $0f
    rrca
    rst $38
    rst $38
    rra
    rra
    rrca
    jp $f800


    ld b, $fe
    ld a, a
    nop
    rst $38
    rst $38
    inc bc
    ld bc, $fd45
    inc bc
    ld bc, $3fc1
    ld b, e
    pop bc
    daa
    inc bc
    reti


    daa
    pop bc
    ccf
    ld b, [hl]
    db $fd
    inc bc
    nop
    ld bc, $ff24
    nop
    add b
    ld b, e
    add b
    cp a
    ld [$cf80], sp
    or b
    adc a
    sub b
    xor a
    sub b
    rst $08
    or b
    adc a
    ld bc, $4334
    cp a
    add b
    ld bc, $bfc0
    and h
    ld bc, $412e
    rst $38
    db $fd
    ld bc, $b5b7
    ld b, e
    rst $38
    db $fd
    inc b
    rst $20
    db $fd
    rst $20
    push hl
    rst $20
    add h
    ld bc, $0170
    rst $38
    push hl
    ld b, h
    rst $38
    db $fd
    ld bc, $b5b7
    call nz, $6501
    xor l
    ld bc, $225e
    rst $38
    inc bc
    sbc a
    sbc a
    rst $38
    rst $38
    and l
    ld bc, $8d7d
    ld bc, $a999
    ld bc, $0087
    cp $83
    nop
    or $89
    nop
    or $01
    ld a, a
    ld a, a
    dec h
    pop af
    and e
    nop
    ldh a, [c]
    ld [bc], a
    ld a, a
    ld a, a
    nop
    xor d
    ld bc, $c6cf
    ld bc, $02e3
    rst $38
    ldh a, [$fff0]
    add l
    ld bc, $c3d6
    ld bc, $01f3
    ldh a, [rP1]
    call nz, $c100
    ld [bc], a
    nop
    rst $38
    nop
    ld b, c
    rst $20
    jr jr_016_7079

    rst $38
    nop
    ldh [$ff3e], a
    rst $18
    daa
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld hl, sp-$08
    rst $30
    ldh a, [$ffef]
    ldh [$ff1f], a
    nop

jr_016_704b:
    rst $38
    rst $38
    ld bc, $02de
    adc h
    inc b
    add hl, bc
    ld [$1013], sp
    daa
    jr nz, jr_016_70a5

    ld b, b
    sbc h
    add b
    pop hl
    ld bc, $03c3
    add a
    rlca
    rst $08
    ld [$17f8], sp
    ldh a, [$ff2f]
    ldh [$ff5f], a
    ret nz

    cp a
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    jp $8700


    nop
    rrca

jr_016_7079:
    nop
    rra
    add h
    ld bc, $05ff
    rst $38
    nop
    ei
    nop
    rst $18
    jr nz, @+$43

    rst $38
    nop
    ld bc, $0c73
    ld b, [hl]
    rst $38
    nop
    ldh [rNR42], a
    rst $38
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$08
    pop af
    db $10
    db $e3
    jr nz, @-$37

    ld b, b
    adc l
    add d
    sbc a
    add b
    rra
    ldh [rIF], a

jr_016_70a5:
    ldh a, [rTAC]
    ld hl, sp-$7d
    ld a, h
    pop bc
    ld a, $e0
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    add h
    ld [bc], a
    nop
    nop
    jp Jump_000_0044


    rst $38
    ld de, $01fe
    db $fc
    inc bc
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $00

jr_016_70c6:
    jr c, jr_016_704b

    ld a, h
    ld bc, $03fe
    db $fc
    add $02
    adc a
    ld [bc], a
    ret nz

    ld a, h
    add b
    add e
    ld [bc], a
    ld b, d
    add hl, bc
    ldh [rP1], a
    pop bc
    nop
    add e
    nop
    rst $00
    nop
    rst $28
    nop
    and l
    ld [bc], a
    xor b
    rla
    nop
    cp $00
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    sub b
    ld a, a
    ret z

    ccf
    call nz, $823f
    ld a, a
    ld bc, $0cff
    di
    ld e, $e1
    add a
    ld [bc], a
    cp b
    add hl, bc
    ld h, b
    rst $38
    sub b
    rst $38
    ld [$64ff], sp
    sbc a

jr_016_710a:
    di
    rrca
    and l
    ld [bc], a
    add d
    add a
    ld [bc], a
    nop
    inc bc
    rst $38
    nop
    rst $28
    db $10
    add h
    ld [bc], a
    ld h, b
    nop
    ldh [$ffad], a
    ld [bc], a
    ld [de], a
    ld d, $83
    db $fc
    ld b, a
    ld a, b
    cpl
    jr nc, jr_016_70c6

    db $10
    adc $08
    db $e4
    inc b
    ldh a, [c]
    ld [bc], a
    ld sp, hl
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp [hl]
    ld [bc], a
    scf
    ld [bc], a
    rst $38
    nop
    ei
    adc [hl]
    ld [bc], a
    ld h, a
    rlca
    ldh a, [rNR10]
    pop hl
    jr nz, jr_016_710a

    ld b, b
    add a
    add b
    ld b, c
    ld a, a
    nop
    nop
    rst $38
    ld b, c
    nop
    rst $08
    add h
    ld [bc], a
    ld h, c
    dec b
    db $fd
    ld [bc], a
    ld hl, sp+$07
    or b
    ld c, a
    xor h
    ld [bc], a
    add h
    add e
    ld [bc], a
    ld l, a
    ld a, [bc]
    dec b
    ld hl, sp+$0b
    ldh a, [rNR22]
    ldh [$ff2f], a
    ret nz

    ld e, a
    add b
    cp a
    add e
    ld [bc], a
    call nc, Call_000_2105
    rst $38
    sub d
    ld a, a
    call z, $c33f
    ld [bc], a
    rst $20
    and l
    inc bc
    ld d, h
    dec c
    adc [hl]
    ld bc, $0304
    ld [$1c07], sp
    inc bc
    ld a, $01
    ld a, a
    nop
    add e
    ld a, h
    adc l
    ld [bc], a
    or d
    xor b
    inc bc
    sub b
    ld b, $88
    rlca
    call nz, $ea03
    ld bc, $89fd
    ld [bc], a
    ret nc

    dec bc
    db $10
    ld a, a
    ld [$643f], sp
    rra
    ldh a, [c]
    rrca
    ld sp, hl
    rlca
    db $fc
    inc bc
    jp z, $7002

    add e
    ld [bc], a
    ld bc, $0386
    inc [hl]
    add h
    inc bc
    dec de
    dec b
    nop
    db $fd
    ld [bc], a
    rst $18
    nop
    rst $38
    xor b
    inc b
    inc b
    add e
    ld bc, $0d30
    ldh [$ff9f], a
    ldh [rIE], a
    sub b
    sbc a
    adc b
    adc a
    sub a
    add a
    sbc b
    add b
    sbc [hl]
    add c
    ld b, c
    sub e
    adc h
    inc c
    sbc a
    add b
    sbc a
    add a
    sbc a
    adc b
    sbc b
    sub a
    ldh a, [$ffef]
    ccf
    rlca
    ccf
    adc h
    ld [bc], a
    inc de
    nop
    di
    add [hl]
    ld [bc], a
    ld e, a
    ld [bc], a
    rst $18
    jr nz, @+$01

    and h
    inc bc
    ld [hl], c
    dec c
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_016_7239

    db $10
    rra
    ld [$840f], sp
    rlca
    jp nz, $a803

    inc bc
    ld l, [hl]
    inc bc
    inc c
    di
    inc c
    ld a, a
    push bc
    inc b
    ld e, a
    ld [bc], a
    nop
    rst $38
    nop
    add a
    ld [bc], a
    cp h
    inc bc
    jp $c700


    nop
    cp e
    inc bc
    sub b
    add e
    ld [bc], a
    call z, $fe03
    ld bc, $02fd
    adc e
    ld [bc], a
    and h
    and e
    ld [bc], a
    and b
    add e
    ld [bc], a
    add b
    rlca
    scf
    ret z

    ld a, e
    add h
    ld sp, hl
    ld [bc], a

jr_016_7234:
    ldh a, [rSB]
    cp l
    inc bc
    ret nc

jr_016_7239:
    add hl, bc
    jr nz, jr_016_7234

    ld b, b
    ldh a, [$ff81]
    ldh [$ff03], a
    ret nz

    ld b, a
    add b
    add a
    ld [bc], a
    ret z

    xor l
    inc b
    nop
    nop
    ld e, $88
    ld [bc], a
    dec b
    ld bc, $e2fd
    xor c
    inc b
    ld a, [de]
    nop
    ld bc, $03a3
    db $10
    rlca
    ld sp, hl
    ld de, $e9f7
    rst $20
    add hl, de
    rlca
    ld sp, hl
    ld b, c
    rlca
    ret


    ld b, c
    rlca
    ld sp, hl
    inc c
    rst $20
    ld sp, hl
    rla
    add hl, de
    rst $28
    rrca
    rst $30
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$ffa3]
    inc bc
    db $f4
    and h
    inc bc
    or $01
    add b
    ld a, a
    add h
    ld [bc], a
    ret


    ld bc, $08f7
    ld b, e
    rst $38
    nop
    rrca
    ld a, a
    rst $38
    ld hl, sp-$08
    ldh a, [c]
    ldh a, [c]
    or $f6
    ldh a, [$fff0]
    ld sp, hl
    ld sp, hl
    rst $38
    ld a, a
    ld hl, sp+$07
    add l
    inc b
    ld h, d
    add hl, bc
    adc b
    rrca
    call nz, $e207
    inc bc
    or c
    ld b, c
    ld sp, hl
    ld bc, $04af
    add b
    xor a
    ld [bc], a
    add b
    xor c
    ld [bc], a
    and b
    dec b
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    and a
    inc b
    ret nz

    rlca
    ldh [$ff1f], a
    ret nc

    cpl
    cp b
    ld b, a
    ld a, l
    add d
    and e
    inc b
    or b
    adc e
    dec b
    and h
    xor l
    ld [bc], a
    ret nc

    nop
    daa
    and h
    inc bc
    rst $28
    inc bc
    ld c, $c1
    inc b
    add e
    add [hl]
    inc bc
    cp b
    xor d
    ld [bc], a
    rst $28
    inc bc
    rra
    ldh [$ff3f], a
    ret nz

    add e
    inc bc
    ld d, c
    ld bc, $ff00
    xor e
    dec b
    inc b
    add l
    dec b
    xor [hl]
    add e
    dec b
    or d
    ld [bc], a
    ld hl, sp+$07
    ldh a, [$ff84]
    ld [bc], a
    ld sp, hl
    jp $c504


    jp $c304


    nop
    add b
    and h
    inc b
    ld a, [hl]
    ld b, c
    ld bc, $4100
    inc bc
    nop
    nop
    rlca
    call nz, $8905
    add e
    ld [bc], a
    ld c, h
    nop
    rra
    ld b, c
    nop
    ccf
    ld [bc], a
    nop
    ld a, a
    nop
    rst $00
    dec b
    ld h, b
    inc b
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    ld b, c
    nop
    add b
    inc h
    nop
    rst $08
    ld b, $5e
    adc [hl]
    dec b
    ld b, b
    nop
    nop
    ret


    ld b, $2f
    ld b, $0f
    ldh a, [$ff03]
    db $fc
    nop
    rst $38
    ret nz

    inc a
    nop
    inc bc
    ret nz

    nop
    ccf
    ret nz

    ld c, l
    rst $38
    nop
    ld bc, $c03f
    xor a
    dec b
    ld h, b
    inc bc
    ld a, a
    rst $38
    db $fc
    db $fc
    daa
    cp $84
    ld bc, $00fc
    cp $29
    ccf
    ld [bc], a
    rst $38
    cp $7f
    xor [hl]
    dec b
    rst $38
    nop
    rra
    db $f4
    pop bc
    ld b, $0f
    xor b
    nop
    pop af
    ld bc, $f0f0
    add h
    ld bc, $00dc
    cp $ca
    nop
    ei
    add [hl]
    ld bc, $03ed
    rst $38
    rst $38
    ld hl, sp-$08
    add [hl]
    ld bc, $f0f8
    jr nc, jr_016_7382

jr_016_7382:
    rrca
    rst $38
    ld d, a
    ld l, a
    ld d, $ff
    nop
    add b
    ld h, d
    ld a, l
    ldh [$ff3b], a
    dec bc
    nop
    ld [de], a
    jr nz, jr_016_73b5

    jr nz, jr_016_73d5

    ld a, l
    add hl, bc
    add hl, hl
    ld a, l
    dec bc
    inc e
    inc l
    dec e
    ld [$090e], sp
    ld l, $08
    ld e, d
    ld b, $05
    ld h, $4c
    ld d, [hl]
    ld [$4138], sp
    ld b, e
    ld b, l
    ld b, a
    ld b, l
    ld e, c
    ld b, a
    ld e, e
    ld d, c
    ld a, l
    ld a, [hl]

jr_016_73b5:
    ld b, c
    add b
    ld d, e
    ld b, e
    ld a, l
    ld a, [hl]
    ld c, e
    ld d, a
    ld a, l
    ld c, c
    ld d, l
    ld c, e
    ld a, l
    ld c, c
    add b
    ld a, [hl]
    ld d, a
    ld a, l
    ld d, l
    ld c, e
    ld a, l
    inc hl
    ld a, [hl]
    ld bc, $584c
    dec h
    ld a, l
    ld [bc], a
    ld c, d
    ld d, [hl]
    ld c, b

jr_016_73d5:
    ld [hl+], a
    ld a, l
    rra
    ld c, b
    ld d, e
    ld b, c
    ld b, e
    ld b, [hl]
    add b
    ld a, l
    ld c, c
    ld d, e
    inc e
    add b
    ld c, c
    add b
    ld e, c
    ld c, [hl]
    ld c, [hl]
    ld e, l
    ld e, l
    ld e, a
    ld e, a
    db $fd
    db $fd
    ld a, h
    ld b, b
    db $ed
    db $f4
    db $ed
    ld a, [$ffff]
    ld [hl], $36
    db $e4
    adc l
    add b
    ld h, d
    ld a, l
    ldh [$ff3b], a
    ld [bc], a
    db $10
    dec de
    jr nc, jr_016_7434

    ld [hl-], a
    ld d, b
    add hl, de
    add hl, bc
    ld a, l
    dec sp
    dec de
    dec de
    ld a, l
    add hl, sp
    dec l
    ld e, $09
    ld a, $39
    ld d, [hl]
    ld d, $15
    ld c, b
    ld d, e
    jr z, jr_016_7432

    ld a, l
    ld d, c
    ld d, e
    ld d, l
    ld d, a
    ld c, c
    ld d, l
    ld c, e
    ld d, a
    ld a, l
    ld b, c
    ld d, c
    ld a, [hl]
    ld b, e
    add b
    ld a, l
    ld d, e
    ld b, a
    ld e, e
    ld a, [hl]
    ld b, l
    ld e, c
    ld a, l
    ld a, l

jr_016_7432:
    ld e, e
    add b

jr_016_7434:
    ld e, c
    ld b, a
    ld a, [hl]
    ld b, l
    ld a, l
    ld a, l
    ld e, e
    ld [hl+], a
    ld a, [hl]
    ld [bc], a
    ld c, b
    ld e, h
    ld a, [hl]
    inc h
    ld a, l
    ldh [rNR52], a
    ld b, [hl]
    ld e, d
    ld a, l
    ld a, l
    ld e, b
    ld b, [hl]
    ld a, l
    ld a, l
    ld e, c
    ld b, a
    ld d, a
    add b
    ld d, [hl]
    ld d, a
    ld b, e
    ld e, c
    ld [bc], a
    ld e, c
    add b
    ld e, c
    ld d, l
    ld c, a
    ld c, a
    ld e, [hl]
    ld e, [hl]
    db $fc
    db $fc
    cp $fe
    add b
    ld d, b
    ld [$eaf1], a
    rst $30
    rst $28
    rst $28
    ld c, l
    ld c, l
    db $e4
    adc l
    add b
    ld h, d
    ld a, l
    ld a, [bc]
    inc bc
    ld bc, $2124
    inc hl
    ld hl, $0a21
    rrca
    ld a, [hl+]
    dec hl
    ld [hl+], a
    inc c
    ld a, [bc]
    dec c
    dec l
    inc c
    ld a, [hl+]
    cpl
    inc b
    ld d, l
    rlca
    dec h
    daa
    inc [hl]
    ld [hl+], a
    inc b
    rrca
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld e, d
    ld c, b
    ld e, h
    ld d, d
    ld a, l
    ld a, [hl]
    ld b, d
    add b
    ld d, h
    ld b, h
    ld a, l
    add e
    nop
    ld b, e
    ld c, $4a
    ld d, [hl]
    ld c, h
    ld a, l
    ld c, d
    add b
    ld b, a
    ld a, l
    ld b, l
    add b
    ld a, l
    ld a, l
    ld d, a
    ld c, e
    ld d, a
    add e
    nop
    ld b, c
    inc bc
    ld a, l
    ld a, l
    ld c, c
    ld d, l
    jp $4701


    db $10
    ld e, b
    ld a, l
    ld e, c
    ld a, [hl]
    ld d, h
    ld b, d
    ld b, h
    ld a, l
    ld d, [hl]
    ld a, l
    ld c, d
    ld d, h
    inc bc
    add b
    ld c, d
    add b
    add b
    ld b, e
    db $ec
    di
    add hl, bc
    add b
    ld hl, $f5ee
    xor $fb
    db $ec
    di
    db $ec
    ld sp, hl
    db $e4
    adc l
    add b
    ld h, d
    ld a, l
    add hl, bc
    ld de, $1311
    ld sp, $3331
    ld sp, $3f1a
    ld a, [hl-]
    ld [hl+], a
    ld a, l
    dec bc
    inc a
    dec e
    dec a
    rra
    ld a, [de]
    ld a, l
    inc d
    ld b, $17
    dec [hl]
    scf
    ld d, h
    ld [hl+], a
    inc d
    ld [de], a
    ld d, d
    ld d, h
    ld d, [hl]
    ld e, b
    ld c, d
    ld d, [hl]
    ld c, h
    ld e, b
    ld a, l
    ld b, d
    ld d, d
    ld a, [hl]
    ld b, h
    add b
    ld a, l
    ld d, h
    ld c, b
    ld e, h
    ld a, [hl]
    add e
    ld bc, $0b4a
    ld e, h
    add b
    ld e, d
    ld a, l
    ld d, a
    add b
    ld d, l
    ld a, l
    ld a, l
    ld b, a
    ld e, e
    ld b, a
    jp $4200


    nop
    ld e, h
    add e
    ld bc, $0832
    ld a, l
    ld a, l
    ld c, b
    ld a, [hl]
    ld b, l
    ld d, l
    ld c, b
    ld e, d
    ld c, b
    add e
    ld bc, $064e
    ld b, h
    ld e, d
    ld de, $8080
    ld e, d
    add b
    ld b, e
    jp hl


    ldh a, [$ff09]
    add b
    ld a, h
    db $eb
    ldh a, [c]
    db $eb
    ld hl, sp-$17
    ldh a, [$ffe9]
    or $e4
    adc h
    add b
    inc hl
    nop
    ld [bc], a
    inc b
    ld bc, $2305
    ld bc, $0001
    inc bc
    inc h
    nop
    ld [$0405], sp
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    db $e4
    ccf
    nop
    nop
    inc b
    dec hl
    nop
    inc b
    cp $fd
    stop
    jr @-$1a

    sub c
    nop
    rst $38
    and e
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp $0300


    add a
    nop
    nop
    rst $00
    nop
    rla
    add a
    nop
    nop
    ld hl, sp+$27
    nop
    daa
    ld [hl+], a
    rst $38
    nop
    cp $53
    rst $38
    db $fc
    inc bc
    ld bc, $0000
    nop
    db $f4
    ld a, [hl+]
    nop
    ld d, c
    ld bc, $00ff
    and e
    nop
    ld a, h
    dec b
    nop
    inc a
    nop
    ld h, [hl]
    nop
    add c
    jr z, jr_016_75ae

jr_016_75ae:
    ld b, c
    ld a, a
    add b
    ld b, e
    rst $38
    nop
    ld b, c
    cp $01
    ld [de], a
    jr jr_016_75ba

jr_016_75ba:
    daa
    nop
    ld h, c
    nop
    add d
    nop
    ld b, d
    nop
    ld hl, $2f00
    nop
    jr nc, jr_016_75c8

jr_016_75c8:
    rst $20
    nop
    add c
    inc l
    nop
    ld b, c
    rst $38
    nop
    inc b
    rst $20
    nop
    sbc c
    nop
    ld a, [hl]
    ld b, h
    nop
    rst $38
    ld bc, $c000
    ld [hl+], a
    nop
    ld [bc], a
    nop
    nop
    ret nz

    xor a
    nop
    ei
    ld b, l
    nop
    rst $38
    ld [bc], a
    nop
    inc e
    db $e3
    ld b, l
    nop
    rst $38
    inc bc
    inc a
    jp $817e


    ret z

    ld bc, $0031
    inc c
    ld b, c
    pop bc
    ld a, [bc]
    ld b, e
    and b
    dec b
    ld b, e
    ld b, b
    nop
    ld b, e
    add c
    nop
    ld b, c
    jp Jump_016_413c


    ld bc, $43de
    db $10
    xor a
    ld b, e
    ld hl, $435e
    sub b
    cpl
    ld b, e
    jr nz, @+$61

    ld b, e
    sub b
    cpl
    ld bc, $18e7
    ld b, d
    jp Jump_016_431c


    add c
    ld l, $43
    add b
    rrca
    ld b, e
    db $10
    rlca
    ld b, c
    rst $38
    nop
    ld bc, $20df
    ld b, c
    xor a
    ld d, b
    ld b, d
    rla
    xor b
    ld b, c
    ld b, a
    jr jr_016_763c

    ld b, e
    inc e
    ld b, c

jr_016_763c:
    ld e, $43
    nop
    ccf
    ld b, e
    ld b, b
    rra
    ld b, e
    nop
    ccf
    inc b
    ret nz

    nop
    cp h
    nop
    and $8b
    nop
    pop hl
    inc b
    rlca
    inc a
    inc bc
    ld h, [hl]
    ld bc, $018f
    and $89
    nop
    or $05
    ld b, b
    ccf
    ld a, b
    rlca
    ld h, b
    rlca
    adc c
    nop
    or $04
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    add hl, hl
    nop
    xor a
    ld [bc], a
    rra
    ld [bc], a
    nop
    ldh [rP1], a
    and e
    ld bc, $04d7
    ld a, $00
    ld c, $00
    rrca
    ld b, c
    nop
    rlca
    xor a
    ld [bc], a
    ccf
    ld de, $7f00
    ld a, a
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    ldh a, [$fff0]
    pop af
    pop af
    ld hl, sp-$08
    ld a, a
    ld a, a
    nop
    nop
    cp $c3
    nop
    ld d, e
    ld [bc], a
    rst $38
    rra
    rra
    and a
    ld [bc], a
    ld l, b
    ld bc, $7fff
    add e
    ld [bc], a
    ld h, [hl]
    add hl, bc
    ldh a, [$fff0]
    rst $38
    rst $38
    ldh a, [$fff0]
    rst $38
    ld a, a
    sbc a
    ld h, b
    and e
    ld [bc], a
    add b
    add e
    ld [bc], a
    ld [hl], h
    nop
    rrca
    jp $9802


    inc b
    cp $ff
    nop
    rst $38
    ld a, a
    dec h
    pop af
    inc bc
    ldh a, [$fff0]
    rst $38
    rst $38
    xor l
    ld [bc], a
    sbc h
    ld bc, $8f8f
    add e
    ld [bc], a
    sbc h
    nop
    ld a, a
    and l
    ld [bc], a
    sub c
    rst $00
    ld [bc], a
    add $02
    nop
    cp $fe
    add h
    ld [bc], a
    sub [hl]
    ld [bc], a
    rra
    rrca
    rrca
    adc c
    ld [bc], a
    ld a, d
    and l
    ld [bc], a
    sub h
    ld bc, $f0f0
    add h
    ld [bc], a
    xor h
    nop
    cp $c9
    ld [bc], a
    sbc e
    and h
    ld [bc], a
    adc h
    ld [bc], a
    rst $38
    inc bc
    ld bc, $fd45
    inc bc
    ld bc, $3fc1
    ld b, e
    pop bc
    daa
    inc bc
    reti


    daa
    pop bc
    ccf
    ld b, [hl]
    db $fd
    inc bc
    nop
    ld bc, $ff24
    nop
    add b
    ld b, e
    add b
    cp a
    ld [$cf80], sp
    or b
    adc a
    sub b
    xor a
    sub b
    rst $08
    or b
    adc a
    inc bc
    inc [hl]
    ld b, e
    cp a
    add b
    ld bc, $bfc0
    and h
    inc bc
    ld l, $41
    rst $38
    db $fd
    ld bc, $b5b7
    ld b, e
    rst $38
    db $fd
    inc b
    rst $20
    db $fd
    rst $20
    push hl
    rst $20
    add h
    inc bc
    ld [hl], b
    ld bc, $e5ff
    ld b, h
    rst $38
    db $fd
    ld bc, $b5b7
    call nz, $6503
    xor l
    inc bc
    ld e, [hl]
    ld [hl+], a
    rst $38
    inc bc
    sbc a
    sbc a
    rst $38
    rst $38
    and l
    inc bc
    ld a, l
    adc l
    inc bc
    sbc c
    xor c
    inc bc
    add a
    ld a, [bc]
    ld a, a
    ld hl, sp-$08
    ldh a, [c]
    ldh a, [c]
    or $f6
    ldh a, [$fff0]
    ld sp, hl
    ld sp, hl
    add e
    ld [bc], a
    db $ec
    xor a
    inc bc
    ret nz

    inc bc
    rst $38
    ld a, a
    db $fc
    db $fc
    daa
    cp $a5
    inc bc
    call c, $3f29
    add e
    ld [bc], a
    sbc h
    ld [$0707], sp
    rra
    jr jr_016_77c4

    jr nz, jr_016_7806

    ld b, b
    rst $38
    add [hl]
    nop
    jp $1f00


    add h
    ld [bc], a
    ld sp, $0102
    nop
    ld bc, $0085
    jp hl


    ld b, [hl]
    nop
    rst $38
    ld bc, $0700
    and [hl]
    inc b
    rrca
    nop
    ret nz

    ld b, e
    nop
    add b
    adc $00
    pop af
    ld bc, $00ff
    ld b, e
    cp $01
    ld b, e
    db $fc
    inc bc
    ld b, e
    nop
    ld b, $41
    nop
    inc c
    ld b, c
    nop
    rrca
    add h
    nop
    call nz, $ff01
    rst $38
    add a
    nop
    db $eb

jr_016_77c4:
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    inc b
    ld b, b
    ld b, e
    ccf
    ret nz

    ld b, [hl]
    ld a, a
    add b
    inc bc
    ccf
    ret nz

    inc e
    db $e3
    push bc
    nop
    push bc
    ld [bc], a
    ld b, b
    nop
    ld a, b
    ld b, c
    nop
    inc b
    and h
    ld bc, $8351
    nop
    ld a, h
    dec bc
    ld hl, sp+$07
    pop af
    ld c, $e3
    inc e
    rst $00
    jr c, @-$6f

    ld [hl], b
    rra
    ldh [$ff83], a
    inc b
    sub [hl]
    inc bc
    ccf
    ret nz

    ld a, a
    add b
    ld b, l
    rst $38
    nop
    inc b
    ld c, $0e
    dec sp
    ld sp, $2260

jr_016_7806:
    ld b, b
    rlca
    ret nz

    add b
    add $80
    rst $00
    add b
    pop bc

jr_016_780f:
    add b
    ld b, c
    ld h, b
    ld b, b
    nop
    ldh [rSTAT], a
    add b
    ret nz

    ld b, $80
    ldh [$ff80], a
    ld h, b
    ld b, b
    ld a, b
    ld b, b
    db $f4
    ld b, c
    inc b
    nop

jr_016_7824:
    add [hl]
    nop
    call nz, $070a
    rst $38
    jr jr_016_7824

    jr nz, jr_016_780f

    ld b, c
    ld h, b
    ret nz

    nop
    add b
    adc d
    dec b
    dec d
    stop
    ld [bc], a
    nop
    nop
    ld b, $00
    ld c, $11
    ld c, $20
    rra

jr_016_7842:
    inc b
    ld a, e
    ld c, $f1
    ccf
    ret nz

    and e
    dec b
    ld e, [hl]
    push bc
    inc b
    scf
    inc c
    db $10
    ldh [$ff84], a
    ld a, b
    ldh [$ff1f], a
    nop
    nop
    jr jr_016_7859

jr_016_7859:
    ld d, $00
    ld de, $0041
    ld [$0006], sp
    stop
    jr nz, jr_016_7865

jr_016_7865:
    di
    inc c
    ld b, e
    ld sp, hl
    ld b, $42

jr_016_786b:
    db $fc
    inc bc
    ld b, c
    ld [bc], a
    db $fd
    ld b, c
    inc b
    ei
    inc bc
    ld c, c
    or [hl]
    ret


    ld [hl], $41
    sub e
    ld l, h
    ld b, c
    ldh a, [rIF]
    ld b, c
    ld hl, sp+$07
    and e
    inc b
    sub h
    ld bc, $01fe
    xor l
    inc b
    jp nc, Jump_000_0483

    ld d, [hl]
    add hl, bc
    rst $20
    ld hl, sp-$01
    jr @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $25f4
    inc b
    jp c, $fb41

    inc b
    ld b, c
    pop af
    ld c, $41
    ldh [$ff1f], a
    ld b, c
    pop bc
    ld a, $41
    add e
    ld a, h
    ld b, c
    rlca
    ld hl, sp+$41
    adc a
    ld [hl], b
    ld b, c
    rst $18
    jr nz, jr_016_7842

    dec b
    ret nz

    ld bc, $01fe
    adc a
    dec b
    cp h
    add [hl]
    dec b
    ld b, h
    nop
    ld hl, sp-$3d
    inc b
    ret nz

    rlca
    rra
    nop
    rst $20
    sbc a
    ld a, a
    rst $38
    nop
    rlca
    ld sp, $0500
    ld bc, $0200
    ld bc, $8748
    and e
    inc b
    xor d
    or c
    dec b
    ld [hl], b
    ld [$0030], sp
    ld d, b
    nop
    sub b
    nop
    stop
    jr jr_016_786b

    inc b
    or l
    nop
    nop
    add a
    inc b
    ld d, d
    ld bc, $e31c
    and l
    inc b
    xor d
    ld b, c
    ret nz

    ccf
    ld b, c
    ldh [$ff1f], a
    rla
    ldh a, [c]
    dec c
    di
    inc c
    reti


    ld h, $99
    ld h, [hl]
    ccf
    jr nz, jr_016_7926

    jr @+$09

    rlca
    ld bc, $030e
    inc e
    rlca
    jr c, jr_016_7920

    ld [hl], b
    rra
    ldh [rSCY], a
    rst $38
    nop
    and e
    ld b, $02
    jp $b505


    ld [$e01f], sp

jr_016_7920:
    rst $38
    ld c, $fb
    ld sp, $40e0

jr_016_7926:
    ret nz

    adc b
    inc b
    rst $20
    ld [bc], a
    ldh [rLCDC], a
    ldh [$ff88], a
    inc b
    di
    ld b, $e0
    ld b, b
    ld hl, sp+$40
    rst $38
    jr nz, @+$01

    call z, Call_016_4b05
    db $f4
    ld l, a
    ld b, $00
    ld b, e
    rst $20
    jr jr_016_7986

    call $0132
    ret


    ld [hl], $43
    rst $20
    jr @+$45

    di
    inc c
    ld b, d
    ld c, a
    or b
    ld bc, $20df
    add a
    ld b, $1c
    ld [bc], a
    ld c, $00
    ld [hl], b
    and e
    inc b
    or a
    adc b
    dec b
    dec d
    dec b
    rst $38
    jr nc, @+$01

    ld c, b
    rst $38
    add a
    xor c
    ld b, $c6
    xor a
    inc b
    ret nc

    inc bc
    rst $38
    inc a
    jp $85c3


    nop
    xor [hl]
    nop
    ld a, [hl]
    adc [hl]
    nop
    rst $18
    inc b
    jr nc, jr_016_797f

jr_016_797f:
    ld a, h
    nop
    rst $38
    and [hl]
    rlca
    xor a
    ld b, h

jr_016_7986:
    rst $38
    nop
    ld b, c
    db $fc
    inc bc
    ld b, c
    ld hl, sp+$07
    ld b, c
    ldh a, [rIF]
    ld b, c
    ldh [$ff1f], a
    ld bc, $3fc0
    push bc
    inc b
    and a
    rst $08
    dec b
    cp a
    and a
    dec b
    or h
    adc d
    ld b, $f0
    and h
    nop
    cp a
    db $f4
    cpl
    dec b
    ld b, b
    adc a
    inc b
    ld d, b
    inc bc
    adc c
    halt
    sbc c
    ld h, [hl]
    ld b, d

jr_016_79b3:
    sub e
    ld l, h
    ld b, d
    daa
    ret c

    adc a
    dec b
    cp b
    ld b, c
    daa
    ret c

    ld b, c
    ld c, a
    or b
    ld b, c
    sbc a
    ld h, b
    ld b, c
    cp a
    ld b, b
    xor e
    rlca
    ldh a, [$ff83]
    inc b
    and h
    and e
    ld [$8306], sp
    rlca
    ld a, [bc]
    ld bc, $3ec1
    db $f4
    dec hl
    ld b, $ca
    db $f4
    ld a, [hl-]
    rlca
    or $00
    ldh [$ff8d], a
    dec b
    jp nc, Jump_000_09af

    jr nc, jr_016_79b3

    inc b
    ccf
    ld [bc], a
    ret nz

    nop
    ret nz

    ld b, e
    rra
    ld h, b
    ld b, c
    rrca
    jr nc, jr_016_7a39

    rrca
    ldh a, [rSCX]
    rra
    ldh [rSCX], a

jr_016_79fa:
    ld hl, sp+$07
    add a
    dec b
    or b
    adc a
    ld b, $2e
    ld b, c
    inc c
    di
    ld b, c
    add [hl]
    ld a, c
    ld b, c
    jp Jump_016_413c


    pop hl
    ld e, $af
    ld b, $b0
    and a
    ld [$03c0], sp
    db $e3
    inc e
    rst $30
    ld [$ff41], sp
    nop
    nop
    inc a
    adc [hl]
    rlca
    pop de
    adc b
    add hl, bc
    jr nc, jr_016_7a25

jr_016_7a25:
    ld [bc], a
    ld b, d
    rst $38
    ld bc, $09af
    ldh [$fff0], a
    cpl
    nop
    nop
    rst $38
    ld [hl], a
    ld [hl], l
    ld d, $ff
    nop
    add b
    ld h, d
    ld a, l

jr_016_7a39:
    nop
    db $10
    ld [hl+], a
    ld a, l
    ldh [$ff62], a
    inc b
    inc b
    ld a, l
    dec d
    ld [$5535], sp
    pop de
    adc $03
    ld a, l
    ld b, a
    db $e3
    ld a, l
    jr c, jr_016_7a8d

    ld a, $d2
    add hl, hl
    ld c, c
    add b
    ld a, l
    ld e, c
    ld a, l
    ld c, h
    push hl
    ld c, d
    ld l, $3e
    ld a, $7d
    ld d, e
    adc $80
    ld hl, $e540
    ld [hl-], a
    ld sp, $0f18
    ld a, $3e
    ld b, d
    ld d, e
    ld d, c
    ld l, $3e
    ld e, [hl]
    inc e
    add b
    ld b, b
    dec e
    inc hl
    jr z, jr_016_7af4

    add b
    jr z, jr_016_79fa

    db $e4
    db $e4
    add b
    add b
    db $e3
    add b
    ld a, l
    ld a, l
    call c, Call_016_7dd6
    call c, $dd7d
    rst $10
    jp nc, $dddd

    rst $10

jr_016_7a8d:
    rst $08
    pop hl
    adc $d7
    ld a, l
    adc $db
    db $dd
    reti


    ld a, l
    db $dd
    jp c, Jump_016_7d7d

    jp c, Jump_016_7dd5

    pop hl
    jp c, $de80

    ld [hl+], a
    ld a, l
    rla
    ret nc

    add b
    inc b
    add c
    cp $fe
    xor $ee
    db $ec
    db $ec
    ld [$7fea], a
    ld a, h
    add sp, -$18
    and $e6
    ret


    ld a, [$f4c9]
    db $fc
    db $fc
    db $e4
    ld a, c
    add b
    ld h, d
    ld a, l
    nop
    nop
    ld [hl+], a
    ld a, l
    ldh [rHDMA5], a
    add b
    pop de
    dec b
    dec h
    ld [$0445], sp
    ld a, l
    adc $cd
    scf
    ld d, a
    db $e4
    ld a, l
    ld a, l
    ld a, $1f
    jp nc, Jump_016_7d39

    add b
    ld sp, $3c0a
    ld e, a
    ldh [c], a
    ld hl, $3e3e
    ld c, [hl]
    ld e, d
    ld d, h
    adc $80
    ld a, l
    ld a, l
    db $e4
    ld a, l
    ld a, l
    jr z, @+$40

    ld a, $4e
    ld b, b

jr_016_7af4:
    ld d, h
    ld a, l
    ld a, $3e
    inc c
    inc l
    jr jr_016_7b3e

    ld d, h
    ld a, l
    add b
    inc a
    inc de
    add b
    push hl
    push hl
    call $cd18
    db $e4
    add b
    ld a, l
    ld a, l
    call nc, $da7d
    ld a, l
    ld a, l
    push de
    jp nc, $d2da

    push de
    ld a, l
    ldh [$ffcf], a
    push de
    adc $d0
    adc $7d
    ld a, l
    jp Jump_016_6e00


    ld [$7dd9], sp
    jp nc, $cfd7

    rst $08
    ld a, l
    set 3, a
    add e
    nop
    dec b
    ld d, $80
    pop de
    add b
    rst $38
    rst $38
    rst $28
    rst $28
    db $ed
    db $ed
    db $eb
    db $eb
    ld a, a
    ld a, a
    jp hl


    jp hl


jr_016_7b3e:
    rst $20
    rst $20
    add $f7
    add $f1
    db $fd
    db $fd
    db $e4
    ld a, c
    add b
    ld h, d
    ld a, l
    ldh [rSTAT], a
    ld de, $0714
    inc [hl]
    ld a, l
    ld a, l
    inc b
    ld d, $17
    ld [hl], $56
    ld a, l
    ld e, l
    add b
    ld a, l
    ld e, b
    call Call_000_197d
    ccf
    ld c, e
    db $d3
    ld a, [de]
    dec l
    add b
    dec a
    ld a, l
    ld a, l
    ld e, a
    ldh [c], a
    jr nz, @+$45

    ccf
    ccf
    jr nc, jr_016_7b82

    ld c, $e4
    dec a
    ld b, c
    ldh [c], a
    ld d, b
    dec l
    dec bc
    dec hl
    ccf
    ccf
    call z, $5211
    cpl
    ccf
    ld [de], a

jr_016_7b82:
    ld e, h
    add b
    ld b, c
    ld de, $3a7d
    ld a, l
    db $e4
    ld a, [hl-]
    push hl
    db $e3
    db $e3
    db $e4
    ld [hl+], a
    add b
    ldh [rNR43], a
    db $db
    ld a, l
    db $dd
    rst $10
    inc b
    add b
    pop de
    db $dd
    ret c

    db $d3
    db $dd
    pop hl
    rst $10
    ld a, l
    ld a, l
    set 3, a
    db $db
    add b
    call c, $dadd
    ret nc

    add b
    jp c, $d4d1

    jp c, Jump_016_7dd5

    ld a, l
    ldh [$ff80], a
    add b
    ret nc

    call nz, $6e01
    nop
    add b
    ld b, e
    ret z

    di
    ld bc, $7f7f
    ld b, c
    ret z

    di
    dec b
    jp z, $cafb

    push af
    ret z

    ld sp, hl
    db $e4
    ld a, c
    add b
    ld h, d
    ld a, l
    ldh [$ff38], a
    ld bc, $0724
    ld b, h
    ld a, l
    ret nc

    ld b, $26
    daa
    ld b, [hl]
    ld a, l
    ld a, l
    ld e, $e5
    ld c, b
    add hl, bc
    db $e3
    jr nc, jr_016_7c62

    dec sp
    ld e, e
    db $d3
    jr nz, @+$3f

    push hl
    ld c, l
    ld a, [hl+]
    ld a, l
    ld [bc], a
    add b
    ld a, l
    ccf
    ccf
    ld c, a
    dec de
    ld bc, $805d
    ld c, l
    ld [hl+], a
    db $e3
    ld a, l
    dec a
    ld a, [hl-]
    ccf
    ccf
    ld c, a
    ld b, c
    ld bc, $3f7d
    dec sp
    ld e, [hl]
    dec c
    dec bc
    inc sp
    ld bc, $7d41
    add b
    ld a, [bc]
    push hl
    ldh [c], a
    ldh [c], a
    db $e4
    dec bc
    push hl
    db $e3
    call $d97d
    push de
    add e
    ld [bc], a
    ld l, c
    inc b
    push de
    db $d3
    jp c, $d5d3

    jp Jump_016_6d00


    ld bc, $7dcb
    push bc
    ld [bc], a
    ld l, a
    inc c
    inc b
    jp c, $d3d6

    rst $10
    ld a, l
    rst $08
    rst $08
    add b
    add b
    inc b
    add b
    pop de
    add e
    ld bc, $4304
    push bc
    ldh a, [rSB]
    ld a, h
    ld a, a
    ld b, c
    push bc
    ldh a, [rTIMA]
    rst $00
    ld hl, sp-$39
    ldh a, [c]
    push bc
    or $e4
    ld a, b
    add b
    ld a, [hl+]
    nop
    ld bc, $0303
    jp $0704


    inc bc
    inc b
    nop
    nop
    ld bc, $0483
    inc b
    push bc
    inc b

jr_016_7c62:
    inc de
    ld [bc], a
    nop
    nop
    ld bc, $0486
    ld b, $00
    ld bc, $0484
    ld c, $00
    ld bc, $0485
    rlca
    ld bc, $0303
    add l
    inc b
    ld c, $02
    ld bc, $0500
    daa
    ld bc, $30e4
    nop
    ld bc, $fefd
    inc hl
    nop
    ld [bc], a
    jr jr_016_7c8b

jr_016_7c8b:
    db $10
    db $e4
    ld a, e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_016_7d39:
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
    jr nz, jr_016_7d47

jr_016_7d47:
    ld bc, $0000
    ld b, b
    nop
    nop
    nop
    ld b, b
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

Jump_016_7d7d:
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
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_016_7dd5:
    nop

Call_016_7dd6:
    nop
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

Jump_016_7e42:
    add b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc c
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
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$2000], sp
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_016_7f8c

jr_016_7f8c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
