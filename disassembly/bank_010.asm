; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh [$ffe0], a
    ldh a, [$fff0]
    ldh a, [$fff0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh [$ffe0], a

Call_010_402e:
    ldh [$ffe0], a
    ret nz

    ret nz

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

Call_010_403e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, bc
    rrca
    inc de
    rra
    cpl
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    pop af
    rst $38
    xor $f1
    rst $18
    ldh [rIE], a
    adc $bf
    rst $10
    cp a
    rst $18
    cp a
    rst $18
    rst $38
    adc $df
    ldh [$ffee], a
    pop af
    pop af
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    ccf
    inc de
    rra
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$050f], sp
    rlca
    inc bc
    inc bc
    rra
    rra
    daa
    ccf
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    cpl
    ccf
    rra
    rra
    cpl
    ccf
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    ld b, a
    ld a, a
    daa
    ccf
    rra
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld [$080f], sp
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc de
    rra
    daa
    ccf
    ld e, a
    ld a, a
    ld a, a
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
    cp l
    jp Jump_000_38ff


    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    daa
    ccf
    inc de
    rra
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7601
    ld [hl], a
    adc b
    rst $38
    db $10
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [hl], a
    cp $b9
    rst $38
    ld hl, sp-$02
    ld sp, hl
    ei
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    halt
    ld [hl], a
    ld bc, $0001
    nop
    nop
    nop
    ld a, b
    ld a, b
    add h
    db $fc
    push af
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
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
    cp $ff
    ei
    rst $38
    add d
    cp $7c
    ld a, h
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    adc b
    adc a
    ld l, a
    rst $28
    ccf
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
    db $fc
    rst $38
    ldh a, [rIE]
    db $e3
    rst $18
    and $df
    rst $20
    rst $18
    rst $20
    rst $28
    di
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld l, a
    rst $28
    adc b
    adc a
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld a, b
    ld a, b
    add h
    db $fc
    inc b
    db $fc
    push af
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
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
    db $fc
    rst $38
    rst $30
    rst $38
    ld [bc], a
    cp $c4
    db $fc
    jr c, @+$3a

    nop
    nop
    nop
    nop
    ldh a, [$fff0]
    add hl, bc
    ld sp, hl
    ld c, $ff
    ld [$f0ff], sp
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld [$0eff], sp
    rst $38
    add hl, bc
    ld sp, hl
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    db $10
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp-$30
    ldh a, [$ffe0]
    ldh [$fffc], a
    db $fc
    ldh a, [c]
    cp $f1
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [c]
    cp $fc
    db $fc
    db $fc
    db $fc
    ldh a, [c]
    cp $f1
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh [c], a
    cp $fc
    db $fc
    ldh [$ffe0], a
    ret nc

    ldh a, [$ff90]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$ffc0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld [de], a
    nop
    ldh a, [c]
    nop
    ld [bc], a
    ldh a, [$fff3]
    ldh a, [$fff0]
    ldh a, [$fff0]
    jr nc, jr_010_4304

    ld a, $3f
    ld a, $3e
    ld b, $0e
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $0e
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_010_42ff:
    nop
    nop
    nop
    nop
    nop

jr_010_4304:
    nop
    nop
    ldh [$ffe0], a
    db $10
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp-$30
    ldh a, [$ffe0]
    ldh [$fffc], a
    db $fc
    ldh a, [c]
    cp $f1
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$fcfe]
    db $fc
    db $fc
    db $fc
    ld a, [$f9fe]
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh [c], a
    cp $fc
    db $fc
    ldh a, [$fff0]
    adc b
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$ffe0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    db $10
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$70
    ldh a, [$fff8]
    ld hl, sp-$3a
    cp $e1
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ldh a, [c]
    cp $fc
    db $fc
    db $fc
    db $fc
    ldh a, [c]
    cp $e1
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    add $fe
    cp b
    ld hl, sp+$10
    ldh a, [$ff08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$ffe0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, bc
    rrca
    inc de
    rra
    cpl
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    xor $f1
    rst $18
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    rst $38
    adc [hl]
    rst $38
    adc d
    rst $38
    adc [hl]
    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$ffee], a
    pop af
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    ccf
    inc de
    rra
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    inc bc
    ld b, e
    rlca
    ld b, a
    rrca
    ld c, a
    rrca
    rst $08
    rra
    rra
    ccf
    ccf
    ei
    ei
    di
    di
    inc bc
    inc bc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh [$ffe0], a
    add b
    add b
    nop
    nop
    nop
    ld a, h
    nop
    ld b, h
    nop
    ld b, h
    ret nz

    rst $00
    ret nz

    pop bc
    ret nz

    pop bc
    db $fc
    cp $fc
    cp $1c
    ld e, $1c
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ld a, a
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
    cp l
    jp Jump_000_38ff


    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ld a, a
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
    db $fd
    cp e
    cp $f9
    db $fd
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
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    jp $81ff


    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp Jump_010_42ff


    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld [$040f], sp
    rlca
    inc bc
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
    nop
    nop
    rrca
    rrca
    jr c, jr_010_450b

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    jr c, jr_010_4515

    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [$073f], sp
    ld a, a
    ccf
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rlca
    rlca
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
    ldh [$ffe0], a
    db $fc

jr_010_450b:
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_010_4515:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
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
    db $fc
    db $fc
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, a
    ld a, $3f
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh a, [$ff60]
    ld hl, sp+$70
    db $fc
    ld a, b
    ld a, h
    jr c, jr_010_45ed

    inc a
    ld a, [hl]
    inc a
    ld a, $1c
    ccf
    ld e, $1f
    ld c, $0f
    ld b, $07
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_010_4586

jr_010_4586:
    ld a, $18
    ccf
    ld e, $1f
    rrca
    rra
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1c00], sp
    ld [$1c3e], sp
    ld a, $1c
    ld a, $5d
    ld a, a
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $3e
    ld e, l
    ld a, $1c
    ld a, $1c
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0f
    ld c, $0f
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc

jr_010_45ed:
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    inc a
    dec sp
    inc a
    ccf
    inc a
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    dec c
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    nop
    ld bc, $0202
    inc hl
    ld bc, $0023
    add hl, bc
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $2301
    inc bc
    dec hl
    rlca
    push bc
    nop
    dec e
    dec sp
    nop
    ld bc, $0404
    add e
    nop
    ld d, $87
    nop
    db $10
    inc hl
    rlca
    inc h
    rrca
    jp z, Jump_010_6200

    push de
    nop
    ld b, e
    inc h
    ld bc, $00d8
    adc b
    ld [bc], a
    ld [$1c1c], sp
    inc h
    ld a, $03
    inc e
    ld a, $08
    inc e
    add hl, sp
    nop
    ld bc, $ff7e
    dec [hl]
    nop
    inc hl
    ld [$0c23], sp
    inc bc
    adc [hl]
    adc [hl]
    xor $ee
    ld l, $ff
    inc b
    db $e3
    rst $38
    ldh a, [rIE]
    db $fc
    ld sp, $03ff
    ccf
    ccf
    rrca
    rrca
    ld sp, $0700
    ld b, b
    ld b, b
    jr nc, jr_010_4716

    inc a
    inc a
    rra
    rra
    ld a, [hl+]
    rst $38
    ld [bc], a
    jp $f0ff


    ld sp, $01ff
    rra
    rra
    sub e
    nop
    ld a, [hl-]
    ld bc, $0404
    inc hl
    ld h, $23
    scf
    inc hl
    cp a
    ld a, [hl+]
    rst $38
    ld b, d
    di
    rst $38
    nop
    ld hl, sp-$71
    nop
    cp $23
    ld a, a
    dec b
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    add [hl]
    nop

jr_010_4716:
    sbc [hl]
    ld bc, $1c1c
    inc l
    ld a, $03
    inc e
    ld a, $1c
    inc e
    add l
    nop
    xor h
    rst $38
    ld e, c
    ld b, a
    ld a, d
    ld b, a
    sbc e
    ld b, a
    cp h
    ld b, a
    db $dd
    ld b, a
    ld b, $48
    cpl
    ld c, b
    ld d, h
    ld c, b
    ld a, c
    ld c, b
    sbc [hl]
    ld c, b
    rst $00
    ld c, b
    ldh a, [rOBP0]
    add hl, de
    ld c, c
    ld a, [hl-]
    ld c, c
    ld h, e
    ld c, c
    adc h
    ld c, c
    or l
    ld c, c
    jp c, $df49

    ld c, c
    db $e4
    ld c, c
    jp hl


    ld c, c
    ldh a, [c]
    ld c, c
    ei
    ld c, c
    inc b
    ld c, d
    dec h
    ld c, d
    ld c, [hl]
    ld c, d
    ld [$effe], sp
    ld h, [hl]
    nop
    xor $ef
    ld h, h
    nop
    cp $07
    ld [hl-], a
    nop
    cp $ff
    ld [hl+], a
    nop
    cp $f7
    ld [de], a
    nop
    xor $07
    jr nc, jr_010_4772

jr_010_4772:
    xor $ff
    jr nz, jr_010_4776

jr_010_4776:
    xor $f7
    db $10
    ld bc, $fe08
    rst $38
    ld b, [hl]
    nop
    cp $ef
    ld l, d
    nop
    xor $ef
    ld l, b
    nop
    cp $07
    ld d, [hl]
    nop
    xor $07
    inc [hl]
    nop
    xor $ff
    inc h
    nop
    cp $f7
    ld d, $00
    xor $f7
    inc d
    ld bc, $fe08
    rlca
    ld e, b
    nop
    cp $ff
    ld c, b
    nop
    xor $07
    jr c, jr_010_47a8

jr_010_47a8:
    xor $ff
    jr z, jr_010_47ac

jr_010_47ac:
    cp $f7
    ld a, [de]
    nop
    cp $ef
    ld a, [bc]
    nop
    xor $f7
    jr jr_010_47b8

jr_010_47b8:
    xor $ef
    ld [$0801], sp
    cp $ef
    ld h, [hl]
    nop
    xor $ef
    ld h, h
    nop
    cp $07
    ld [hl-], a
    nop
    xor $07
    jr nc, jr_010_47cd

jr_010_47cd:
    cp $ff
    ld d, h
    nop
    xor $ff
    ld b, h
    nop
    cp $f7
    ld [de], a
    nop
    xor $f7
    db $10
    ld bc, $fe0a
    rst $28
    ld l, d
    nop
    xor $ef
    ld l, b
    nop
    inc bc
    rla
    ld a, $00
    inc bc
    rrca
    ld l, $00
    cp $07
    ld [hl], $00
    cp $ff
    ld h, $00
    cp $f7
    ld d, $00
    xor $07
    inc [hl]
    nop
    xor $ff
    inc h
    nop
    xor $f7
    inc d
    ld bc, $fe0a
    rlca
    ld a, [hl-]
    nop
    cp $ff
    ld a, [hl+]
    nop
    cp $f7
    ld a, [de]
    nop
    cp $ef
    ld a, [bc]
    nop
    xor $07
    jr c, jr_010_481b

jr_010_481b:
    xor $ff
    jr z, jr_010_481f

jr_010_481f:
    xor $f7
    jr jr_010_4823

jr_010_4823:
    xor $ef
    ld [$0200], sp
    ld d, $3e
    nop
    ld [bc], a
    ld c, $2e
    ld bc, $fd09
    rst $28
    ld h, [hl]
    nop
    db $ed
    rst $28
    ld h, h
    nop
    db $fd
    rrca
    inc a
    nop
    db $fd
    rlca
    inc l
    nop
    db $fd
    rst $38
    inc e
    nop
    db $fd
    rst $30
    inc c
    nop
    db $ed
    rlca
    jr nc, jr_010_484c

jr_010_484c:
    db $ed
    rst $38
    jr nz, jr_010_4850

jr_010_4850:
    db $ed
    rst $30
    db $10
    ld bc, $fd09
    db $ed
    ld h, [hl]
    nop
    db $ed
    db $ed
    ld h, h
    nop
    db $fd
    dec c
    inc a
    nop
    db $fd
    dec b
    inc l
    nop
    db $fd
    db $fd
    inc e
    nop
    db $fd
    push af
    inc c
    nop
    db $ed
    dec b
    jr nc, jr_010_4871

jr_010_4871:
    db $ed
    db $fd
    jr nz, jr_010_4875

jr_010_4875:
    db $ed
    push af
    db $10
    ld bc, $fd09
    db $eb
    ld h, [hl]
    db $10
    db $ed
    db $eb
    ld h, h
    db $10
    db $fd
    dec bc
    inc a
    db $10
    db $fd
    inc bc
    inc l
    db $10
    db $fd
    ei
    inc e
    db $10
    db $fd
    di
    inc c
    db $10
    db $ed
    inc bc
    jr nc, jr_010_48a6

    db $ed
    ei
    jr nz, @+$12

    db $ed
    di
    db $10
    ld de, $fd0a
    rst $28
    ld h, [hl]
    nop
    db $ed
    rst $28
    ld h, h

jr_010_48a6:
    nop
    dec c
    rst $38
    ld c, $00
    db $fd
    rst $38
    ld h, d
    nop
    db $fd
    rrca
    inc a
    nop
    db $fd
    rlca
    inc l
    nop
    db $fd
    rst $30
    inc c
    nop
    db $ed
    rlca
    jr nc, jr_010_48bf

jr_010_48bf:
    db $ed
    rst $38
    jr nz, jr_010_48c3

jr_010_48c3:
    db $ed
    rst $30
    db $10
    ld bc, $fd0a
    db $ed
    ld h, [hl]
    nop
    db $ed
    db $ed
    ld h, h
    nop
    dec c
    db $fd
    ld c, $00
    db $fd
    db $fd
    ld h, d
    nop
    db $fd
    dec c
    inc a
    nop
    db $fd
    dec b
    inc l
    nop
    db $fd
    push af
    inc c
    nop
    db $ed
    dec b
    jr nc, jr_010_48e8

jr_010_48e8:
    db $ed
    db $fd
    jr nz, jr_010_48ec

jr_010_48ec:
    db $ed
    push af
    db $10
    ld bc, $fd0a
    db $eb
    ld h, [hl]
    db $10
    db $ed
    db $eb
    ld h, h
    db $10
    dec c
    ei
    ld c, $10
    db $fd
    ei
    ld h, d
    db $10
    db $fd
    dec bc
    inc a
    db $10
    db $fd
    inc bc
    inc l
    db $10
    db $fd
    di
    inc c
    db $10
    db $ed
    inc bc
    jr nc, @+$12

    db $ed
    ei
    jr nz, jr_010_4925

jr_010_4915:
    db $ed
    di
    db $10
    ld de, $fe08
    nop
    ld d, d

jr_010_491d:
    jr nz, jr_010_491d

    ld [$2042], sp
    xor $00
    ld d, b

jr_010_4925:
    jr nz, jr_010_4915

    ld [$2040], sp
    cp $f8
    ld d, d
    nop
    cp $f0
    ld b, d
    nop
    xor $f8
    ld d, b
    nop
    xor $f0
    ld b, b
    ld bc, $fe0a
    rla
    ld c, d
    ld d, b
    xor $17
    ld c, d
    db $10
    cp $07
    ld e, b
    nop
    cp $ff
    ld c, b
    nop
    xor $07
    jr c, jr_010_494f

jr_010_494f:
    xor $ff
    jr z, jr_010_4953

jr_010_4953:
    cp $f7
    ld a, [de]
    nop
    cp $ef
    ld a, [bc]
    nop
    xor $f7
    jr jr_010_495f

jr_010_495f:
    xor $ef
    ld [$0a01], sp
    cp $ef
    ld l, d
    nop
    xor $ef
    ld l, b
    nop
    cp $17
    ld c, d
    ld b, b
    xor $17
    ld c, d
    nop
    cp $07
    ld d, [hl]
    nop
    cp $ff
    ld b, [hl]
    nop
    xor $07
    inc [hl]
    nop
    xor $ff
    inc h
    nop
    cp $f7
    ld d, $00
    xor $f7
    inc d
    ld bc, $fe0a
    db $eb
    ld l, d
    db $10
    xor $eb
    ld l, b
    db $10
    inc bc
    inc de
    ld a, $10
    inc bc
    dec bc
    ld l, $10
    cp $03
    ld [hl], $10
    cp $fb
    ld h, $10
    cp $f3
    ld d, $10
    xor $03
    inc [hl]
    db $10
    xor $fb
    inc h
    db $10
    xor $f3
    inc d
    ld de, $0e09
    rst $38
    ld c, $00
    cp $ff
    ld e, $00
    cp $ef
    ld l, d
    nop
    xor $ef
    ld l, b
    nop
    cp $07
    ld d, [hl]
    nop
    xor $07
    inc [hl]
    nop
    xor $ff
    inc h
    nop
    cp $f7
    ld d, $00
    xor $f7
    inc d
    ld bc, $f401
    db $fc
    ld e, h
    ld bc, $f401
    db $fc
    ld e, d
    ld bc, $f401
    db $fc

jr_010_49e7:
    ld c, h
    ld bc, $f802
    nop
    ld c, [hl]
    jr nz, jr_010_49e7

    ld hl, sp+$4e
    ld bc, $f802
    nop
    ld e, [hl]
    jr nz, @-$06

    ld hl, sp+$5e
    ld bc, $f802
    nop
    ld h, b
    jr nz, @-$06

    ld hl, sp+$60
    ld bc, $0008
    ld sp, hl
    ld b, $20
    ldh a, [$fff9]
    inc b
    jr nz, jr_010_4a0e

jr_010_4a0e:
    pop af
    ld [bc], a
    jr nz, @-$0e

    pop af
    nop
    jr nz, jr_010_4a16

jr_010_4a16:
    nop
    ld b, $00

jr_010_4a19:
    ldh a, [rP1]
    inc b
    nop
    nop
    ld [$0002], sp
    ldh a, [$ff08]
    nop
    ld bc, $fe0a
    add hl, bc
    ld l, d
    jr nz, jr_010_4a19

    add hl, bc
    ld l, b
    jr nz, jr_010_4a32

    pop hl
    ld a, $20

jr_010_4a32:
    inc bc
    jp hl


    ld l, $20
    cp $f1
    ld [hl], $20
    cp $f9
    ld h, $20
    cp $01
    ld d, $20
    xor $f1
    inc [hl]
    jr nz, @-$10

    ld sp, hl
    inc h
    jr nz, @-$10

    ld bc, $2114

jr_010_4a4e:
    ld a, [bc]
    cp $f1
    ld a, [hl-]

jr_010_4a52:
    jr nz, jr_010_4a52

    ld sp, hl
    ld a, [hl+]

jr_010_4a56:
    jr nz, jr_010_4a56

    ld bc, $201a
    cp $09
    ld a, [bc]
    jr nz, jr_010_4a4e

    pop af
    jr c, jr_010_4a83

    xor $f9
    jr z, jr_010_4a87

    xor $01
    jr jr_010_4a8b

    xor $09
    ld [$0220], sp
    ldh [c], a
    ld a, $20
    ld [bc], a
    ld [$212e], a
    push de
    ld c, d
    or $4a
    rla
    ld c, e
    jr nc, jr_010_4aca

    ld d, c
    ld c, e
    ld l, d
    ld c, e

jr_010_4a83:
    adc e
    ld c, e
    sub b
    ld c, e

jr_010_4a87:
    sbc c
    ld c, e
    and d
    ld c, e

jr_010_4a8b:
    xor e
    ld c, e
    or h
    ld c, e
    cp l
    ld c, e
    jp nz, $c74b

    ld c, e
    ldh a, [rWX]
    add hl, de
    ld c, h
    ld l, d
    ld c, h
    cp e
    ld c, h
    db $e4
    ld c, h
    dec c
    ld c, l
    ld [hl], $4d
    ld e, a
    ld c, l
    or b
    ld c, l
    ld bc, $2a4e
    ld c, [hl]
    ld d, e
    ld c, [hl]
    ld a, h
    ld c, [hl]
    and l
    ld c, [hl]
    or $4e
    ld b, a
    ld c, a
    ld [hl], b
    ld c, a
    sbc c
    ld c, a
    jp nz, $eb4f

    ld c, a
    inc a
    ld d, b
    adc l
    ld d, b
    or [hl]
    ld d, b
    rst $18
    ld d, b
    nop
    ld d, c
    ld hl, $4251

jr_010_4aca:
    ld d, c

jr_010_4acb:
    ld h, e
    ld d, c
    ld a, h
    ld d, c
    sbc l
    ld d, c
    and d
    ld d, c
    xor e
    ld d, c
    ld [$02f0], sp
    db $10
    jr nz, jr_010_4acb

    ld a, [$2020]
    ldh a, [$fff2]
    jr nc, jr_010_4b02

    nop
    ld [bc], a
    ld [de], a
    jr nz, jr_010_4ae7

jr_010_4ae7:
    ld a, [$2022]
    nop
    ldh a, [c]
    ld [hl-], a
    jr nz, @-$0e

    ld a, [bc]

jr_010_4af0:
    ld e, h
    jr nz, jr_010_4af3

jr_010_4af3:
    ld a, [bc]
    ld e, [hl]
    ld hl, $f008
    ld bc, $2014
    ldh a, [$fff9]
    inc h
    jr nz, jr_010_4af0

    pop af
    inc [hl]

jr_010_4b02:
    jr nz, jr_010_4b04

jr_010_4b04:
    ld bc, $2016
    nop
    ld sp, hl
    ld h, $20
    nop
    pop af
    ld [hl], $20
    ldh a, [$ff09]
    ld h, b
    jr nz, jr_010_4b14

jr_010_4b14:
    add hl, bc
    ld h, d
    ld hl, $f006
    inc b
    ld [$f020], sp
    db $fc
    jr @+$22

    ldh a, [$fff4]
    jr z, jr_010_4b44

    nop
    inc b
    ld a, [bc]
    jr nz, jr_010_4b29

jr_010_4b29:
    db $fc
    ld a, [de]
    jr nz, jr_010_4b2d

jr_010_4b2d:
    db $f4
    ld a, [hl+]
    ld hl, $f208
    ld [$200c], sp
    ldh a, [c]
    nop
    inc e
    jr nz, @+$04

    ld [$200e], sp
    ld [bc], a
    nop
    ld e, $20
    ldh a, [c]
    ldh a, [$ff0c]

jr_010_4b44:
    nop
    ldh a, [c]
    ld hl, sp+$1c
    nop
    ld [bc], a
    ldh a, [$ff0e]
    nop
    ld [bc], a
    ld hl, sp+$1e
    ld bc, $f006

jr_010_4b53:
    ld hl, sp+$18
    jr nc, @-$0e

    ldh a, [$ff28]
    jr nc, jr_010_4b5b

jr_010_4b5b:
    ld hl, sp+$1a
    jr nc, jr_010_4b5f

jr_010_4b5f:
    ldh a, [$ff2a]
    jr nc, jr_010_4b53

    nop
    jr c, @+$32

    nop
    nop
    ld a, [hl-]
    ld sp, $f008

jr_010_4b6c:
    nop
    ld b, b
    jr nz, @-$0e

    ld hl, sp+$50
    jr nz, jr_010_4b74

jr_010_4b74:
    nop
    ld b, d
    jr nz, jr_010_4b78

jr_010_4b78:
    ld hl, sp+$52
    jr nz, jr_010_4b6c

    ld [$205c], sp
    nop
    ld [$205e], sp
    ldh a, [$fff0]
    nop
    jr nz, jr_010_4b88

jr_010_4b88:
    ldh a, [rSC]
    ld hl, $f801
    db $fc
    ld c, b
    ld bc, $f802
    ld hl, sp+$4a
    nop
    ld hl, sp+$00
    ld c, d
    ld hl, $f802
    ld hl, sp+$4c
    nop
    ld hl, sp+$00
    ld c, h
    ld hl, $fd02
    ld hl, sp+$4e
    nop
    or $00
    ld c, [hl]
    ld h, c
    ld [bc], a
    db $fc
    ld hl, sp+$54
    nop
    db $f4
    nop

jr_010_4bb2:
    ld d, h
    ld h, c
    ld [bc], a
    ld hl, sp-$08
    ld e, b
    nop
    ld hl, sp+$00
    ld e, b
    ld h, c
    ld bc, $fcf8
    ld d, [hl]
    ld bc, $f801
    db $fc
    ld e, d

jr_010_4bc6:
    ld bc, $400a
    ret nc

    ld l, $40
    ld b, b
    ret c

    ld a, $40
    jr nc, jr_010_4bb2

    ld l, $20
    jr nc, @-$26

    ld a, $20
    jr nz, @-$1e

    ld l, $40
    jr nz, jr_010_4bc6

    ld a, $40
    db $10
    ldh a, [$ff2e]

jr_010_4be3:
    jr nz, jr_010_4bf5

    add sp, $3e
    jr nz, jr_010_4be9

jr_010_4be9:
    ldh a, [$ff2e]

jr_010_4beb:
    ld b, b
    nop
    ld hl, sp+$3e

jr_010_4bef:
    ld b, c
    ld a, [bc]
    ld b, b
    call c, Call_000_202e

jr_010_4bf5:
    ld b, b
    call nc, $203e
    jr nc, @-$22

    ld l, $40
    jr nc, jr_010_4be3

    ld a, $40
    jr nz, jr_010_4bef

    ld l, $20
    jr nz, jr_010_4beb

    ld a, $20
    db $10
    db $ec
    ld l, $40
    db $10
    db $f4
    ld a, $40
    nop
    db $fc
    ld l, $20
    nop
    db $f4
    ld a, $21
    inc d
    ld b, c
    call nc, Call_010_402e
    ld b, c
    call c, Call_010_403e
    jr nc, @-$1a

    ld l, $20
    jr nc, @-$22

    ld a, $20
    jr nz, @-$1a

    ld l, $40
    jr nz, @-$12

    ld a, $40
    db $10
    db $f4
    ld l, $20
    db $10
    db $ec
    ld a, $20
    nop
    db $f4
    ld l, $40
    nop
    db $fc
    ld a, $40
    ldh a, [rDIV]
    ld l, $20
    ldh a, [$fffc]
    ld a, $20
    ldh [rDIV], a
    ld l, $40
    ldh [$ff0c], a
    ld a, $40
    pop de
    inc d
    ld l, $20
    pop de
    inc c
    ld a, $20
    pop bc
    inc d
    ld l, $40
    pop bc
    inc e
    ld a, $40
    or b
    inc h
    ld l, $20
    or b
    inc e
    ld a, $21
    inc d
    ld b, b
    call c, Call_000_202e
    ld b, b
    call nc, $203e
    jr nc, @-$22

    ld l, $40
    jr nc, @-$1a

    ld a, $40
    jr nz, @-$12

    ld l, $20
    jr nz, @-$1a

    ld a, $20
    db $10
    db $ec
    ld l, $40
    db $10
    db $f4
    ld a, $40
    nop
    db $fc
    ld l, $20
    nop
    db $f4
    ld a, $20
    ldh a, [$fffc]
    ld l, $40
    ldh a, [rDIV]
    ld a, $40
    pop hl
    inc c
    ld l, $20
    pop hl
    inc b
    ld a, $20
    pop de
    inc c
    ld l, $40
    pop de
    inc d
    ld a, $40
    ret nz

    inc e
    ld l, $20
    ret nz

    inc d
    ld a, $20
    or b
    inc e
    ld l, $40
    or b
    inc h
    ld a, $41
    ld a, [bc]
    ldh a, [rDIV]
    ld l, $20

jr_010_4cc0:
    ldh a, [$fffc]
    ld a, $20
    ldh [rDIV], a
    ld l, $40
    ldh [$ff0c], a
    ld a, $40

jr_010_4ccc:
    pop de
    inc d
    ld l, $20
    pop de
    inc c
    ld a, $20
    pop bc
    inc d
    ld l, $40
    pop bc
    inc e
    ld a, $40
    or b
    inc h
    ld l, $20
    or b
    inc e
    ld a, $21
    ld a, [bc]
    ldh a, [$fffc]
    ld l, $40
    ldh a, [rDIV]
    ld a, $40
    pop hl
    inc c
    ld l, $20
    pop hl
    inc b
    ld a, $20
    pop de
    inc c
    ld l, $40
    pop de
    inc d
    ld a, $40
    ret nz

    inc e
    ld l, $20
    ret nz

    inc d
    ld a, $20
    or b
    inc e
    ld l, $40
    or b
    inc h
    ld a, $41
    ld a, [bc]
    jr nz, jr_010_4cc0

    inc l
    ld b, b

jr_010_4d12:
    jr nz, jr_010_4ccc

    inc a

jr_010_4d15:
    ld b, b
    db $10
    ret z

    inc l
    jr nz, jr_010_4d2b

    ret nz

    inc a
    jr nz, jr_010_4d2f

    ret nc

    inc l
    ld b, b
    db $10
    ret c

    inc a
    ld b, b
    nop
    add sp, $2c
    jr nz, jr_010_4d2b

jr_010_4d2b:
    ldh [$ff3c], a
    jr nz, jr_010_4d2f

jr_010_4d2f:
    ldh a, [$ff2c]
    ld b, b
    nop
    ld hl, sp+$3c
    ld b, c
    ld a, [bc]
    ld hl, sp-$08
    inc l
    jr nz, @-$06

    ldh a, [$ff3c]
    jr nz, jr_010_4d58

    cp b
    inc l
    jr nz, @+$1a

    or b
    inc a
    jr nz, jr_010_4d60

    ret nz

    inc l
    ld b, b
    jr jr_010_4d15

    inc a
    ld b, b
    ld [$2cd8], sp
    jr nz, @+$0a

    ret nc

    inc a
    jr nz, jr_010_4d60

jr_010_4d58:
    ldh [$ff2c], a
    ld b, b
    ld [$3ce8], sp
    ld b, c
    inc d

jr_010_4d60:
    jr nz, jr_010_4d12

    inc l
    ld b, b
    jr nz, @-$46

    inc a
    ld b, b
    db $10
    ret z

    inc l
    jr nz, jr_010_4d7d

    ret nz

    inc a
    jr nz, jr_010_4d81

    ret nc

    inc l
    ld b, b
    db $10
    ret c

    inc a
    ld b, b
    nop
    add sp, $2c
    jr nz, jr_010_4d7d

jr_010_4d7d:
    ldh [$ff3c], a
    jr nz, jr_010_4d81

jr_010_4d81:
    ldh a, [$ff2c]
    ld b, b
    nop
    ld hl, sp+$3c
    ld b, b
    ldh a, [$ff08]
    inc l
    jr nz, jr_010_4d7d

    nop
    inc a

jr_010_4d8f:
    jr nz, jr_010_4d81

    db $10
    inc l
    ld b, b
    ldh a, [rNR23]
    inc a
    ld b, b
    ldh [$ff28], a
    inc l
    jr nz, jr_010_4d7d

    jr nz, jr_010_4ddb

    jr nz, jr_010_4d81

    jr nc, jr_010_4dcf

    ld b, b
    ldh [$ff38], a
    inc a
    ld b, b
    ret nc

    ld c, b
    inc l
    jr nz, jr_010_4d7d

    ld b, b

jr_010_4dae:
    inc a
    ld hl, $f814
    ld hl, sp+$2c
    jr nz, jr_010_4dae

    ldh a, [$ff3c]
    jr nz, jr_010_4dd2

    cp b
    inc l
    jr nz, @+$1a

    or b
    inc a
    jr nz, @+$1a

    ret nz

    inc l
    ld b, b
    jr jr_010_4d8f

    inc a
    ld b, b
    ld [$2cd8], sp
    jr nz, @+$0a

jr_010_4dce:
    ret nc

jr_010_4dcf:
    inc a
    jr nz, @+$0a

jr_010_4dd2:
    ldh [$ff2c], a
    ld b, b
    ld [$3ce8], sp
    ld b, b
    ld hl, sp+$00

jr_010_4ddb:
    inc l
    ld b, b
    ld hl, sp+$08
    inc a
    ld b, b
    add sp, $18
    inc l
    jr nz, jr_010_4dce

    db $10
    inc a
    jr nz, jr_010_4dd2

    jr nz, @+$2e

    ld b, b
    add sp, $28
    inc a
    ld b, b
    ret c

    jr c, jr_010_4e20

    jr nz, jr_010_4dce

    jr nc, @+$3e

    jr nz, jr_010_4dd2

    ld b, b

jr_010_4dfb:
    inc l
    ld b, b
    ret c

    ld c, b
    inc a
    ld b, c
    ld a, [bc]
    ldh a, [$ff08]
    inc l
    jr nz, @-$0e

    nop
    inc a
    jr nz, jr_010_4dfb

    db $10
    inc l
    ld b, b
    ldh a, [rNR23]
    inc a
    ld b, b
    ldh [$ff28], a
    inc l
    jr nz, @-$1e

    jr nz, jr_010_4e55

    jr nz, jr_010_4dfb

    jr nc, @+$2e

    ld b, b
    ldh [$ff38], a

jr_010_4e20:
    inc a
    ld b, b
    ret nc

    ld c, b

jr_010_4e24:
    inc l
    jr nz, @-$2e

    ld b, b
    inc a
    ld hl, $f80a
    nop
    inc l
    ld b, b
    ld hl, sp+$08
    inc a
    ld b, b
    add sp, $18
    inc l
    jr nz, jr_010_4e20

    db $10
    inc a
    jr nz, jr_010_4e24

    jr nz, jr_010_4e6a

    ld b, b
    add sp, $28
    inc a
    ld b, b
    ret c

    jr c, jr_010_4e72

    jr nz, jr_010_4e20

    jr nc, jr_010_4e86

    jr nz, jr_010_4e24

    ld b, b
    inc l
    ld b, b
    ret c

    ld c, b
    inc a
    ld b, c
    ld a, [bc]
    ret nc

jr_010_4e55:
    or b
    inc l
    nop
    ret nc

    cp b
    inc a
    nop
    ldh [$ffc8], a
    inc l
    ld h, b
    ldh [$ffc0], a
    inc a
    ld h, b
    ldh [$ffd0], a
    inc l
    nop
    ldh [$ffd8], a

jr_010_4e6a:
    inc a
    nop
    ldh a, [$ffe8]
    inc l
    ld h, b
    ldh a, [$ffe0]

jr_010_4e72:
    inc a
    ld h, b
    ldh a, [$fff0]
    inc l
    nop
    ldh a, [$fff8]
    inc a
    ld bc, $f80a
    ld hl, sp+$2c
    ld h, b
    ld hl, sp-$10
    inc a
    ld h, b
    ret c

jr_010_4e86:
    cp b
    inc l
    ld h, b
    ret c

    or b
    inc a
    ld h, b
    ret c

    ret nz

    inc l
    nop
    ret c

    ret z

    inc a
    nop
    add sp, -$28
    inc l
    ld h, b
    add sp, -$30
    inc a
    ld h, b
    add sp, -$20
    inc l
    nop
    add sp, -$18
    inc a
    ld bc, $d014
    or b
    inc l
    nop
    ret nc

    cp b
    inc a
    nop
    ldh [$ffc8], a
    inc l
    ld h, b
    ldh [$ffc0], a
    inc a
    ld h, b
    ldh [$ffd0], a
    inc l
    nop
    ldh [$ffd8], a
    inc a
    nop
    ldh a, [$ffe8]
    inc l
    ld h, b
    ldh a, [$ffe0]
    inc a
    ld h, b
    ldh a, [$fff0]
    inc l
    nop
    ldh a, [$fff8]
    inc a
    nop
    nop
    ld [$602c], sp
    nop
    nop
    inc a
    ld h, b
    nop
    db $10
    inc l
    nop
    nop
    jr jr_010_4f19

    nop
    db $10
    jr z, jr_010_4f0d

    ld h, b
    db $10
    jr nz, jr_010_4f21

    ld h, b
    db $10
    jr nc, jr_010_4f15

    nop
    db $10
    jr c, @+$3e

    nop
    jr nz, @+$4a

    inc l
    ld h, b
    jr nz, @+$42

    inc a
    ld h, c
    inc d
    ld hl, sp-$08
    inc l
    ld h, b
    ld hl, sp-$10
    inc a
    ld h, b
    ret c

    cp b
    inc l
    ld h, b
    ret c

    or b
    inc a
    ld h, b
    ret c

    ret nz

    inc l
    nop
    ret c

    ret z

jr_010_4f0d:
    inc a
    nop
    add sp, -$28
    inc l
    ld h, b
    add sp, -$30

jr_010_4f15:
    inc a
    ld h, b
    add sp, -$20

jr_010_4f19:
    inc l
    nop
    add sp, -$18
    inc a
    nop
    ld hl, sp+$00

jr_010_4f21:
    inc l
    nop
    ld hl, sp+$08
    inc a
    nop
    ld [$2c18], sp
    ld h, b
    ld [$3c10], sp
    ld h, b
    ld [$2c20], sp
    nop
    ld [$3c28], sp
    nop
    jr jr_010_4f71

    inc l
    ld h, b
    jr @+$32

    inc a
    ld h, b
    jr jr_010_4f81

    inc l
    nop
    jr jr_010_4f8d

    inc a
    ld bc, $000a
    ld [$602c], sp
    nop
    nop
    inc a
    ld h, b
    nop
    db $10
    inc l
    nop
    nop
    jr jr_010_4f93

    nop
    db $10
    jr z, @+$2e

    ld h, b
    db $10
    jr nz, jr_010_4f9b

    ld h, b
    db $10
    jr nc, jr_010_4f8f

    nop
    db $10
    jr c, jr_010_4fa3

    nop
    jr nz, jr_010_4fb2

    inc l
    ld h, b
    jr nz, jr_010_4fae

    inc a
    ld h, c
    ld a, [bc]

jr_010_4f71:
    ld hl, sp+$00
    inc l
    nop
    ld hl, sp+$08
    inc a
    nop
    ld [$2c18], sp
    ld h, b
    ld [$3c10], sp
    ld h, b

jr_010_4f81:
    ld [$2c20], sp
    nop
    ld [$3c28], sp
    nop
    jr jr_010_4fc3

    inc l
    ld h, b

jr_010_4f8d:
    jr @+$32

jr_010_4f8f:
    inc a
    ld h, b
    jr jr_010_4fd3

jr_010_4f93:
    inc l
    nop
    jr jr_010_4fdf

    inc a
    ld bc, $af0a

jr_010_4f9b:
    ret nc

    ld l, $00
    xor a
    ret c

    ld a, $00
    ret nz

jr_010_4fa3:
    ldh [$ff2e], a
    ld h, b
    ret nz

    ret c

    ld a, $60
    ret nc

    ldh [$ff2e], a
    nop

jr_010_4fae:
    ret nc

    add sp, $3e
    nop

jr_010_4fb2:
    ldh [$fff0], a
    ld l, $60
    ldh [$ffe8], a
    ld a, $60
    ldh a, [$fff0]
    ld l, $00
    ldh a, [$fff8]
    ld a, $01
    ld a, [bc]

jr_010_4fc3:
    or b
    call c, Call_010_602e
    or b
    call nc, Call_010_603e
    ret nz

    call c, Call_000_002e
    ret nz

    db $e4
    ld a, $00

jr_010_4fd3:
    ret nc

    db $ec
    ld l, $60
    ret nc

    db $e4
    ld a, $60
    ldh [$ffec], a
    ld l, $00

jr_010_4fdf:
    ldh [$fff4], a
    ld a, $00
    ldh a, [$fffc]
    ld l, $60
    ldh a, [$fff4]
    ld a, $61
    inc d
    xor a
    call nc, Call_000_002e
    xor a
    call c, Call_000_003e
    ret nz

    db $e4
    ld l, $60
    ret nz

    call c, Call_010_603e
    ret nc

    db $e4
    ld l, $00
    ret nc

    db $ec
    ld a, $00
    ldh [$fff4], a
    ld l, $60
    ldh [$ffec], a
    ld a, $60
    ldh a, [$fff4]
    ld l, $00
    ldh a, [$fffc]
    ld a, $00
    nop
    inc b
    ld l, $60
    nop
    db $fc
    ld a, $60
    db $10
    inc b
    ld l, $00
    db $10
    inc c
    ld a, $00
    rra
    inc d
    ld l, $60
    rra
    inc c
    ld a, $60
    cpl
    inc d
    ld l, $00
    cpl
    inc e
    ld a, $00
    ld b, b
    inc h
    ld l, $60
    ld b, b
    inc e
    ld a, $61
    inc d
    or b
    call c, Call_010_602e
    or b
    call nc, Call_010_603e
    ret nz

    call c, Call_000_002e
    ret nz

    db $e4
    ld a, $00
    ret nc

    db $ec
    ld l, $60
    ret nc

    db $e4
    ld a, $60
    ldh [$ffec], a
    ld l, $00
    ldh [$fff4], a
    ld a, $00
    ldh a, [$fffc]
    ld l, $60
    ldh a, [$fff4]
    ld a, $60
    nop
    db $fc
    ld l, $00
    nop
    inc b
    ld a, $00
    rrca
    inc c
    ld l, $60
    rrca
    inc b
    ld a, $60
    rra
    inc c
    ld l, $00
    rra
    inc d
    ld a, $00
    jr nc, jr_010_509b

    ld l, $60
    jr nc, jr_010_5097

    ld a, $60
    ld b, b
    inc e
    ld l, $00
    ld b, b
    inc h
    ld a, $01
    ld a, [bc]
    nop
    inc b
    ld l, $60
    nop
    db $fc
    ld a, $60
    db $10

jr_010_5097:
    inc b
    ld l, $00
    db $10

jr_010_509b:
    inc c
    ld a, $00
    rra
    inc d
    ld l, $60
    rra
    inc c
    ld a, $60
    cpl
    inc d
    ld l, $00
    cpl
    inc e
    ld a, $00
    ld b, b
    inc h
    ld l, $60
    ld b, b
    inc e
    ld a, $61
    ld a, [bc]
    nop
    db $fc
    ld l, $00
    nop
    inc b
    ld a, $00
    rrca
    inc c
    ld l, $60
    rrca
    inc b
    ld a, $60
    rra
    inc c
    ld l, $00
    rra
    inc d
    ld a, $00
    jr nc, jr_010_50ed

    ld l, $60
    jr nc, jr_010_50e9

    ld a, $60
    ld b, b
    inc e

jr_010_50d9:
    ld l, $00
    ld b, b
    inc h
    ld a, $01
    ld [$f0f0], sp
    nop
    jr nz, jr_010_50e5

jr_010_50e5:
    ldh a, [rSC]
    jr nz, jr_010_50d9

jr_010_50e9:
    ld hl, sp+$04
    jr nz, jr_010_50ed

jr_010_50ed:
    ld hl, sp+$06
    jr nz, @-$0e

    rlca
    nop
    nop
    nop
    rlca
    ld [bc], a
    nop
    ldh a, [rIE]

jr_010_50fa:
    inc b
    nop
    nop
    rst $38
    ld b, $01
    ld [$f0f0], sp
    nop
    jr nz, jr_010_5106

jr_010_5106:
    ldh a, [rSC]
    jr nz, jr_010_50fa

jr_010_510a:
    ld hl, sp+$04
    jr nz, jr_010_510e

jr_010_510e:
    ld hl, sp+$06
    jr nz, @-$0e

    nop
    ld b, h
    jr nz, jr_010_5116

jr_010_5116:
    nop
    ld b, [hl]
    jr nz, jr_010_510a

    ld [$2064], sp
    nop
    ld [$2166], sp
    ld [$f6f0], sp
    stop
    ldh a, [$fffe]
    jr nz, jr_010_512a

jr_010_512a:
    ldh a, [rTMA]
    jr nc, jr_010_512e

jr_010_512e:
    nop
    or $12
    nop
    nop
    cp $22
    nop
    nop
    ld b, $32
    nop
    ldh a, [$ffee]
    ld e, h
    nop
    nop
    xor $5e
    ld bc, $f008
    rst $30
    inc d
    nop
    ldh a, [rIE]
    inc h
    nop
    ldh a, [rTAC]
    inc [hl]
    nop
    nop
    rst $30
    ld d, $00
    nop
    rst $38
    ld h, $00
    nop
    rlca
    ld [hl], $00
    ldh a, [$ffef]
    ld h, b
    nop
    nop
    rst $28
    ld h, d
    ld bc, $f006
    db $f4
    ld [$f000], sp
    db $fc
    jr jr_010_516c

jr_010_516c:
    ldh a, [rDIV]
    jr z, jr_010_5170

jr_010_5170:
    nop
    db $f4
    ld a, [bc]
    nop
    nop
    db $fc
    ld a, [de]
    nop
    nop
    inc b
    ld a, [hl+]
    ld bc, $ff08
    ld [$600c], sp
    rst $38
    nop
    inc e
    ld h, b
    rst $28
    ld [$600e], sp
    rst $28
    nop
    ld e, $60
    rst $38
    ldh a, [$ff0c]
    ld b, b
    rst $38
    ld hl, sp+$1c
    ld b, b
    rst $28
    ldh a, [$ff0e]
    ld b, b
    rst $28
    ld hl, sp+$1e
    ld b, c
    ld bc, $fcf8

jr_010_51a0:
    ld d, [hl]
    ld hl, $f802
    nop

jr_010_51a5:
    ld e, b
    jr nz, jr_010_51a0

    ld hl, sp+$58
    ld b, c
    ld [bc], a
    db $fc
    nop
    ld d, h
    jr nz, jr_010_51a5

    ld hl, sp+$54
    ld b, c
    cp h
    ld d, c
    call $de51
    ld d, c
    rst $28
    ld d, c
    inc b
    ld [bc], a
    ld hl, sp+$06
    nop
    ld [bc], a
    nop
    inc b
    nop
    ldh a, [c]
    ld hl, sp+$02
    nop
    ldh a, [c]
    nop
    nop
    ld bc, $0204
    ld hl, sp+$06
    nop
    ld [bc], a
    nop
    inc b
    nop
    ldh a, [c]
    nop
    nop
    nop
    ldh a, [c]
    ld hl, sp+$08
    ld bc, $0204
    ld hl, sp+$10
    nop
    ld [bc], a
    nop
    ld c, $00
    ldh a, [c]
    ld hl, sp+$0c
    nop

jr_010_51eb:
    ldh a, [c]
    nop
    ld a, [bc]
    ld bc, $0204
    nop
    db $10
    jr nz, jr_010_51f7

    ld hl, sp+$0e

jr_010_51f7:
    jr nz, jr_010_51eb

    nop
    inc c
    jr nz, @-$0c

    ld hl, sp+$0a
    db $21

    db $08, $52, $11, $52, $1a, $52, $23, $52, $02, $f8, $00, $02, $00, $f8, $f8, $00
    db $01, $02, $f8, $00, $06, $00, $f8, $f8, $04, $01, $02, $f8, $f8, $02, $20, $f8
    db $00, $00, $21, $02, $f8, $f8, $06, $20, $f8, $00, $04, $21

    ld c, b
    ld d, d
    ld d, l
    ld d, d
    ld h, d
    ld d, d
    ld l, a
    ld d, d
    ld a, h
    ld d, d
    adc c
    ld d, d
    sub [hl]
    ld d, d
    and e
    ld d, d
    or b
    ld d, d
    cp l
    ld d, d
    jp z, $d752

    ld d, d
    db $e4
    ld d, d
    push af
    ld d, d
    inc bc
    add sp, -$08
    ld [$f800], sp
    nop
    nop
    jr nz, @-$06

    ld hl, sp+$00
    ld bc, $e803

jr_010_5257:
    db $fc
    ld a, [bc]
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_010_5257

    ld hl, sp+$00
    ld bc, $e803

jr_010_5264:
    nop
    ld [$f820], sp
    nop
    nop
    jr nz, jr_010_5264

    ld hl, sp+$00
    ld bc, $e803

jr_010_5271:
    ld hl, sp+$08
    nop
    ld hl, sp+$00
    ld [bc], a
    jr nz, jr_010_5271

    ld hl, sp+$02
    ld bc, $e803

jr_010_527e:
    db $fc
    ld a, [bc]
    nop
    ld hl, sp+$00
    ld [bc], a
    jr nz, jr_010_527e

    ld hl, sp+$02
    ld bc, $e803

jr_010_528b:
    nop
    ld [$f820], sp
    nop
    ld [bc], a
    jr nz, jr_010_528b

    ld hl, sp+$02
    ld bc, $e803

jr_010_5298:
    ld hl, sp+$08
    nop
    ld hl, sp+$00
    inc b
    jr nz, jr_010_5298

    ld hl, sp+$04
    ld bc, $e803

jr_010_52a5:
    db $fc
    ld a, [bc]
    nop
    ld hl, sp+$00
    inc b
    jr nz, jr_010_52a5

    ld hl, sp+$04
    ld bc, $e803

jr_010_52b2:
    nop
    ld [$f820], sp
    nop
    inc b
    jr nz, jr_010_52b2

    ld hl, sp+$04
    ld bc, $e803
    ld hl, sp+$08
    nop
    ld hl, sp+$00
    ld b, $20
    ld hl, sp-$08
    ld b, $01
    inc bc
    add sp, -$04
    ld a, [bc]
    nop
    ld hl, sp+$00
    ld b, $20
    ld hl, sp-$08
    ld b, $01
    inc bc
    add sp, $00
    ld [$f820], sp
    nop
    ld b, $20
    ld hl, sp-$08
    ld b, $01
    inc b
    add sp, $00
    ld [$e820], sp
    ld hl, sp+$08
    nop
    ld hl, sp+$00
    ld b, $20
    ld hl, sp-$08
    ld b, $01
    inc b
    add sp, -$01
    ld [$e820], sp
    rst $30
    ld [$f800], sp
    rst $38
    ld b, $20
    ld hl, sp-$09
    ld b, $01

    db $1a, $53, $23, $53, $2c, $53, $35, $53, $3e, $53, $47, $53

    ld d, b
    ld d, e
    ld e, c
    ld d, e
    ld h, d
    ld d, e
    ld l, e
    ld d, e

    db $02, $f8, $00, $08, $00, $f8, $f8, $00, $01, $02, $f8, $00, $0a, $00, $f8, $f8
    db $02, $01, $02, $f8, $00, $0c, $00, $f8, $f8, $04, $01, $02, $f8, $00, $0c, $40
    db $f8, $f8, $04, $41, $02, $f8, $f8, $0c, $60, $f8, $00, $04, $61, $02, $f8, $f8
    db $0c, $20, $f8, $00, $04, $21

    ld [bc], a
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    ld b, $01
    ld [bc], a
    ld hl, sp+$00
    ld c, $40
    ld hl, sp-$08
    ld b, $41
    ld [bc], a
    ld hl, sp-$08
    ld c, $60
    ld hl, sp+$00
    ld b, $61
    ld [bc], a
    ld hl, sp-$08
    ld c, $20
    ld hl, sp+$00
    ld b, $21
    add h
    ld d, e
    sub c
    ld d, e
    sbc [hl]
    ld d, e
    xor e
    ld d, e
    cp h
    ld d, e
    call $da53
    ld d, e
    rst $20
    ld d, e
    inc bc
    or $08
    inc b
    nop
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    nop
    ld bc, $f403
    rlca
    inc b
    nop
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$02
    ld bc, $f403
    ldh a, [c]
    inc b
    jr nz, @-$06

    nop
    ld b, $00
    ld hl, sp-$08
    nop
    ld bc, $0004
    db $10
    ld a, [bc]
    ld b, b
    ldh a, [rNR10]
    ld a, [bc]
    nop
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$02
    ld bc, $0004
    db $10
    ld a, [bc]
    ld d, b
    ldh a, [rNR10]
    ld a, [bc]
    db $10
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$02
    ld bc, $fd03
    ld [$4004], sp
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    nop
    ld bc, $f903
    ld [$4004], sp
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    nop
    ld bc, $f903
    rlca
    inc b
    ld b, b
    ld hl, sp-$01
    ld b, $00
    ld hl, sp-$09
    nop
    ld bc, $5406
    inc de
    ld d, h
    jr nz, jr_010_544e

    ld sp, $4254
    ld d, h
    ld c, a
    ld d, h
    ld e, h
    ld d, h
    ld l, c
    ld d, h
    ld [hl], d
    ld d, h
    inc bc
    ld hl, sp+$08
    inc b
    nop
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    nop
    ld bc, $f703
    ld [$0004], sp
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$02
    ld bc, $f804
    db $fc
    ld [$f800], sp
    db $f4
    ld [bc], a
    nop
    db $eb
    di
    inc b
    ld b, b
    db $eb
    db $eb
    inc b
    ld hl, $f804
    nop
    ld [$f800], sp
    ld hl, sp+$02
    nop
    db $eb
    inc bc
    inc b
    ld h, b
    db $eb
    dec bc
    inc b
    ld bc, $fd03
    ld [$200a], sp
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    nop

jr_010_544e:
    ld bc, $fb03
    ld [$4004], sp
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    nop
    ld bc, $fb03
    rlca
    inc b
    ld b, b
    ld hl, sp-$01
    ld b, $00
    ld hl, sp-$09
    nop
    ld bc, $f802
    ld hl, sp+$04
    ld h, b
    ld hl, sp+$00
    inc b
    ld bc, $f802
    nop
    inc b
    ld b, b
    ld hl, sp-$08
    inc b
    ld hl, $5491
    sbc [hl]
    ld d, h
    xor e
    ld d, h
    ret nz

    ld d, h
    push de
    ld d, h
    ldh [c], a
    ld d, h
    rst $28
    ld d, h
    db $fc
    ld d, h
    add hl, bc
    ld d, l
    ld d, $55
    inc hl
    ld d, l
    inc bc
    ld hl, sp+$08
    ld b, $00
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$00
    ld bc, $f903
    ld [$0006], sp
    ld hl, sp+$00
    ld a, [bc]
    nop
    ld hl, sp-$08
    ld [bc], a
    ld bc, $e305
    ld hl, sp+$06
    ld h, b
    db $e3
    nop
    ld b, $00
    add sp, -$05
    ld c, $40
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$08
    ld [bc], a
    ld bc, $df05
    ld hl, sp+$06
    ld h, b
    rst $18
    nop
    ld b, $00
    and $fb
    ld c, $40
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$08
    ld [bc], a
    ld bc, $e803
    rst $30
    ld c, $40
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp-$08
    nop
    ld bc, $e803
    ld sp, hl
    ld c, $40
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp-$08
    nop
    ld bc, $e803
    rst $38
    ld c, $60
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp-$08
    nop
    ld bc, $e803
    ld bc, $600e
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp-$08
    nop
    ld bc, $f303
    add hl, bc
    ld c, $60
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$08
    ld [bc], a
    ld bc, $f903
    rlca
    ld b, $00
    ld hl, sp-$01
    ld a, [bc]
    nop
    ld hl, sp-$09
    ld [bc], a
    ld bc, $f802
    ld hl, sp+$06
    ld h, b
    ld hl, sp+$00
    ld b, $01

    db $34, $55, $3d, $55, $46, $55, $4f, $55, $02, $f8, $00, $00, $20, $f8, $f8, $00
    db $01, $02, $f8, $00, $02, $20, $f8, $f8, $02, $01, $02, $f8, $00, $04, $20, $f8
    db $f8, $04, $01, $01, $f4, $fc, $06, $01, $56, $55, $02, $f8, $00, $00, $60, $f8
    db $f8, $00, $01

    ld h, c
    ld d, l
    ld [bc], a
    ld hl, sp+$00
    ld [bc], a
    nop
    ld hl, sp-$08
    nop
    db $01

    db $70, $55, $81, $55, $92, $55, $04, $03, $00, $04, $20, $03, $f8, $04, $00, $f3
    db $00, $02, $00, $f3, $f8, $00, $01, $04, $01, $00, $06, $20, $01, $f8, $06, $00
    db $f1, $00, $02, $00, $f1, $f8, $00, $01, $04, $04, $00, $08, $20, $04, $f8, $08
    db $00, $f4, $00, $02, $00, $f4, $f8, $00, $01

    xor a
    ld d, l
    ret nc

    ld d, l
    pop af
    ld d, l
    ld a, [bc]
    ld d, [hl]
    rla
    ld d, [hl]
    inc h
    ld d, [hl]
    ld [$0002], sp
    db $10
    jr nz, @+$04

    ld [$2002], sp
    ldh a, [c]
    nop
    ld c, $20
    ldh a, [c]
    ld [$2000], sp
    ld [bc], a
    ld hl, sp+$10
    nop
    ld [bc], a
    ldh a, [rSC]
    nop
    ldh a, [c]
    ld hl, sp+$0e
    nop
    ldh a, [c]
    ldh a, [rP1]
    ld bc, $0008
    ld [$2006], sp
    nop
    nop
    inc d
    jr nz, @-$0e

    nop
    ld [de], a
    jr nz, @-$0e

    ld [$2004], sp
    nop
    ld hl, sp+$14
    nop
    nop
    ldh a, [rTMA]
    nop
    ldh a, [$fff8]
    ld [de], a
    nop
    ldh a, [$fff0]
    inc b
    ld bc, $0006
    nop
    jr jr_010_5616

    nop
    ld [$2008], sp
    ldh a, [rP1]
    ld d, $20
    nop
    ld hl, sp+$18
    nop
    nop
    ldh a, [$ff08]
    nop
    ldh a, [$fff8]
    ld d, $01
    inc bc
    db $eb
    ld bc, $001a
    dec b
    ei
    ld a, [de]
    nop
    db $eb
    or $1a

jr_010_5616:
    ld bc, $ef03
    ld bc, $000a
    rst $28
    or $0a
    nop
    inc b
    ei
    ld a, [de]
    ld bc, $0403
    ei
    ld a, [bc]
    nop
    rst $28
    ld [bc], a
    inc c
    nop
    rst $28
    or $0c
    db $01

    db $00, $00, $00, $00, $00, $00, $00, $00, $c1, $c1, $32, $f2, $cc, $bc, $c3, $ff
    db $02, $fe, $1e, $e2, $fc, $84, $ff, $7f, $ff, $01, $02, $fe, $fc, $fc, $e4, $1c
    db $fc, $04, $fa, $06, $fa, $06, $f2, $0e, $c4, $3c, $08, $f8, $30, $f0, $c0, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $7e, $7e, $c1, $bf, $c0, $3f, $80, $7f, $00, $ff
    db $00, $ff, $e0, $ff, $ff, $1f, $ef, $18, $ff, $fe, $01, $ff, $ff, $ff, $ff, $00
    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $00, $ff, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $02, $03, $02, $04, $07
    db $04, $07, $1f, $1f, $1f, $10, $0f, $08, $0f, $0f, $10, $1f, $1f, $1f, $27, $38
    db $3f, $20, $5f, $60, $7f, $40, $5f, $60, $47, $78, $21, $3e, $18, $1f, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c1, $c1, $32, $f2
    db $cc, $bc, $c3, $ff, $02, $fe, $1e, $e2, $fc, $04, $f8, $08, $f8, $08, $f8, $88
    db $f4, $8c, $fc, $04, $fc, $04, $fc, $04, $fc, $04, $f8, $08, $f0, $30, $c0, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $c1, $3f, $c0, $3f
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $e0, $1f, $7f, $80, $3e, $c1, $3f, $c0
    db $7f, $84, $ff, $03, $ff, $00, $ff, $00, $7f, $80, $3f, $c0, $0f, $f0, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01
    db $01, $01, $01, $01, $02, $03, $03, $02, $05, $06, $04, $07, $04, $07, $08, $0f
    db $08, $0f, $08, $0f, $0f, $08, $09, $0e, $08, $0f, $04, $07, $03, $03, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $c1, $c1, $32, $f2, $0c, $fc, $c3, $ff, $02, $fe, $1e, $e2, $fc, $04, $f8, $08
    db $f4, $0c, $fc, $04, $fe, $02, $fe, $02, $fe, $02, $fc, $04, $f8, $18, $e0, $e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3e, $3e
    db $c1, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $80, $7f, $ff, $00
    db $6f, $90, $7f, $90, $ff, $12, $ff, $0c, $ff, $00, $3f, $c0, $0f, $f0, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $03, $02, $07, $04, $04, $07, $04, $07, $08, $0f, $0f, $08, $10, $1f
    db $10, $1f, $10, $1f, $20, $3f, $21, $3e, $3f, $20, $10, $1f, $0c, $0f, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $c1, $c1, $32, $f2, $0c, $fc, $c3, $ff
    db $02, $fe, $1e, $e2, $fc, $84, $ff, $7f, $ff, $01, $02, $fe, $fc, $fc, $e4, $1c
    db $00, $00, $00, $00, $00, $00, $60, $60, $f0, $90, $d0, $30, $f0, $30, $48, $f8
    db $88, $f8, $04, $fc, $1f, $ff, $ef, $f1, $fd, $03, $be, $7e, $c2, $fe, $3e, $fe
    db $c1, $ff, $7d, $83, $fd, $03, $fa, $06, $fa, $06, $e4, $1c, $18, $f8, $e0, $e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $06, $06, $7b, $7d, $97, $f9, $1e, $f2, $1f, $f3, $9f, $70, $4f, $f8
    db $c7, $ff, $80, $7f, $00, $ff, $ff, $ff, $ff, $00, $ff, $00, $ff, $ff, $00, $ff
    db $ff, $ff, $00, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $00, $ff, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $01, $02, $03, $04, $07, $09, $0e, $0b, $0c
    db $13, $1c, $11, $1e, $f8, $ff, $f7, $8f, $bf, $c0, $7d, $7e, $43, $7f, $38, $3f
    db $47, $7f, $7c, $43, $bf, $c0, $bf, $c0, $bf, $c0, $4f, $70, $30, $3f, $0f, $0f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80
    db $40, $c0, $20, $e0, $10, $f0, $08, $f8, $08, $f8, $7c, $fc, $ba, $c6, $fe, $02
    db $bc, $7c, $fe, $02, $ba, $c6, $7c, $fc, $08, $f8, $08, $f8, $10, $f0, $20, $e0
    db $40, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $c0, $c0, $e0, $20, $f0, $10, $70, $90, $78, $88, $06, $fe, $01, $ff
    db $00, $ff, $06, $f9, $0d, $f6, $0f, $f6, $06, $f9, $80, $ff, $c0, $7f, $c1, $3f
    db $c1, $3f, $c1, $3f, $c0, $7f, $80, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $01, $ff, $06, $fe, $78, $88, $70, $90, $f0, $10, $e0, $20, $c0, $c0
    db $00, $00, $01, $01, $03, $02, $03, $02, $07, $04, $07, $04, $04, $07, $18, $1f
    db $30, $2f, $70, $4f, $40, $7f, $e0, $9f, $e0, $9f, $81, $ff, $e3, $9e, $e2, $9f
    db $83, $fe, $e2, $9f, $e3, $9e, $81, $ff, $e0, $9f, $e0, $9f, $40, $7f, $70, $4f
    db $30, $2f, $18, $1f, $04, $07, $07, $04, $07, $04, $03, $02, $03, $02, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $20, $e0, $10, $f0, $08, $f8
    db $e8, $f8, $dc, $3c, $fa, $06, $fe, $42, $fc, $3c, $fe, $02, $fa, $86, $7c, $fc
    db $08, $f8, $08, $f8, $10, $f0, $60, $e0, $80, $80, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $e0, $e0, $f0, $10, $7c, $8c, $03, $ff, $06, $f9, $0d, $f6, $0f, $f6, $06, $f9
    db $00, $ff, $01, $ff, $c3, $fe, $c3, $3e, $c3, $3e, $c1, $3f, $c0, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $01, $ff, $7e, $86, $f8, $18, $e0, $e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $03, $02, $07, $04, $04, $07, $18, $1f, $30, $2f, $40, $7f, $40, $7f
    db $c0, $bf, $80, $ff, $c1, $bf, $c2, $bf, $83, $fe, $c2, $bf, $c1, $bf, $80, $ff
    db $c0, $bf, $40, $7f, $40, $7f, $30, $2f, $18, $1f, $07, $04, $03, $02, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $06, $06, $7b, $7d, $97, $f9, $1e, $f2, $1f, $f3, $1f, $f0, $8f, $f8
    db $87, $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $00, $ff, $00, $ff, $ff, $00, $ff
    db $00, $00, $00, $00, $00, $00, $01, $01, $02, $03, $04, $07, $08, $0f, $08, $0f
    db $10, $1f, $10, $1f, $f8, $ff, $f7, $8f, $bf, $c0, $7d, $7e, $43, $7f, $38, $3f
    db $00, $00, $00, $00, $00, $00, $00, $00, $70, $70, $90, $f0, $20, $e0, $18, $f8
    db $10, $f0, $70, $f0, $f0, $d0, $f0, $d0, $fe, $3e, $ee, $f2, $fc, $04, $fc, $3c
    db $c4, $fc, $1a, $fe, $e2, $fe, $3a, $c6, $fa, $06, $e4, $1c, $18, $f8, $e0, $e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $9c, $9c, $73, $ff, $11, $ff, $00, $ff
    db $30, $ff, $1c, $ff, $7e, $f7, $3e, $f7, $3e, $f9, $ff, $ff, $ff, $01, $ff, $00
    db $ff, $ff, $00, $ff, $ff, $ff, $00, $ff, $ff, $00, $ff, $00, $00, $ff, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $02, $03, $02, $03, $0f, $0f
    db $04, $07, $02, $03, $04, $07, $08, $0f, $78, $7f, $7f, $47, $3f, $20, $3f, $3c
    db $23, $3f, $58, $7f, $47, $7f, $5c, $63, $5f, $60, $27, $38, $18, $1f, $07, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $60, $60, $a0, $e0, $20, $e0
    db $20, $e0, $10, $f0, $70, $f0, $f0, $d0, $f0, $d0, $f8, $38, $88, $f8, $c8, $38
    db $e4, $1c, $94, $6c, $94, $6c, $d8, $28, $e8, $18, $d0, $30, $60, $e0, $80, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9c, $9c, $73, $ff, $11, $ff
    db $00, $ff, $30, $ff, $1c, $ff, $7e, $f7, $3e, $f7, $7e, $f9, $01, $ff, $1f, $e1
    db $7f, $80, $cc, $33, $cc, $33, $dc, $23, $ff, $00, $ff, $00, $7f, $80, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $02, $03, $02, $03
    db $0f, $0f, $04, $07, $02, $03, $04, $07, $08, $0f, $08, $0f, $10, $1f, $10, $1f
    db $20, $3f, $20, $3f, $32, $3f, $3f, $3e, $1d, $1e, $25, $3e, $3f, $3f, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $60, $60
    db $a0, $e0, $20, $e0, $20, $e0, $10, $f0, $70, $f0, $fc, $dc, $fa, $de, $f9, $3f
    db $89, $ff, $e7, $1f, $f3, $0f, $8a, $76, $ca, $36, $f4, $0c, $d8, $38, $e0, $e0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9c, $9c
    db $73, $ff, $11, $ff, $00, $ff, $30, $ff, $1c, $ff, $7e, $f7, $3e, $f7, $7e, $f9
    db $01, $ff, $3f, $c0, $ff, $00, $8c, $73, $9c, $63, $ff, $00, $ff, $00, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03
    db $02, $03, $02, $03, $0f, $0f, $04, $07, $1e, $1f, $22, $3f, $40, $7f, $c0, $ff
    db $c0, $ff, $f8, $ff, $f0, $ff, $61, $7e, $a3, $fc, $f3, $fc, $0d, $0e, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $70, $70, $90, $f0, $20, $e0, $18, $f8
    db $10, $f0, $10, $f0, $10, $f0, $30, $f0, $fe, $fe, $ee, $f2, $fc, $04, $fc, $3c
    db $00, $00, $00, $00, $00, $00, $00, $00, $9c, $9c, $73, $ff, $11, $ff, $00, $ff
    db $00, $ff, $00, $ff, $30, $ff, $18, $ff, $7e, $ff, $ff, $ff, $ff, $01, $ff, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0
    db $e0, $e0, $e0, $60, $f0, $b0, $f0, $30, $f8, $f8, $ff, $7f, $ff, $01, $02, $fe
    db $fc, $fc, $e4, $1c, $fc, $04, $fa, $06, $fa, $06, $f2, $0e, $c2, $3e, $04, $fc
    db $18, $f8, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $3c, $3c, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ce, $ff, $94, $ff, $c4, $ff, $3f, $ef, $18, $ff, $fe, $01, $ff
    db $ff, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
    db $00, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03
    db $07, $07, $07, $07, $0f, $0f, $7f, $7f, $7f, $40, $3f, $20, $1f, $1f, $20, $3f
    db $3f, $3f, $27, $38, $3f, $20, $5f, $60, $7f, $40, $5f, $60, $47, $78, $21, $3e
    db $18, $1f, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0
    db $e0, $e0, $e0, $60, $f0, $b0, $f0, $30, $f8, $78, $f8, $f8, $fc, $9c, $fc, $0c
    db $fc, $1c, $fc, $7c, $fc, $fc, $f8, $f8, $f8, $f8, $f0, $f0, $c0, $c0, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $3c, $3c, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ce, $ff, $84, $ff, $a4, $ff, $ce, $ff, $ff, $ff, $3f, $ff, $1f
    db $ff, $00, $ff, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $03, $03
    db $07, $07, $07, $07, $0f, $0f, $0f, $0f, $1f, $1f, $1f, $1f, $3f, $3f, $3f, $3e
    db $3f, $3f, $3f, $3f, $3f, $3f, $1f, $1f, $1f, $1f, $0f, $0f, $03, $03, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $80, $80, $c0, $c0, $e0, $e0, $f0, $70, $f0, $30, $f8, $b8, $f8, $78
    db $fc, $e4, $fc, $0c, $fc, $fc, $fc, $fc, $f8, $f8, $f8, $f8, $e0, $e0, $80, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $7c, $7c
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ce, $ff, $a4, $ff, $84, $ff, $ce
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $03, $03, $07, $07, $0f, $0f, $1f, $1f, $1f, $1f, $3f, $3f, $3f, $3f
    db $7f, $79, $7f, $7c, $7f, $7f, $7f, $7f, $3f, $3f, $3f, $3f, $0f, $0f, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    nop
    nop
    nop
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
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$ff88]
    ld hl, sp-$01
    ld a, a
    rst $38
    ld bc, $fe02
    db $fc
    db $fc
    db $e4
    inc e
    db $fc
    inc b
    ld a, [$fa06]
    ld b, $f2
    ld c, $c2
    ld a, $04
    db $fc
    jr @-$06

    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    sbc h
    sbc h
    cp $fe
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $09ff
    rst $38
    push bc
    rst $38
    rst $38
    ccf
    rst $28
    jr @+$01

Call_010_602e:
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_010_603e:
    nop
    rst $38
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    inc b
    rlca
    inc b
    rlca
    ld [$7f0f], sp
    ld a, a
    ld a, a
    ld b, b
    ccf
    jr nz, jr_010_608d

    rra
    jr nz, jr_010_60b0

    ccf
    ccf
    daa
    jr c, jr_010_60b5

    jr nz, jr_010_60d7

    ld h, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld b, a
    ld a, b
    ld hl, $183e
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_608d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld b, b

jr_010_60b0:
    ret nz

    and b
    ldh [$ffe0], a
    ld h, b

jr_010_60b5:
    ldh a, [$fff0]
    ldh a, [$fff0]
    ret z

    ld a, b
    adc b
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$30
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_60d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    sbc h
    sbc h
    cp $fe
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    ld sp, $7bff
    adc $ff
    sbc h
    rst $38
    sbc h
    ld a, e
    adc $31
    rst $38
    nop
    rst $38
    ld c, $ff
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    inc b
    rlca
    inc c
    rrca
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_010_617e

    jr nz, jr_010_6180

    jr nz, jr_010_6182

    jr nz, jr_010_6184

    jr nz, jr_010_6186

    db $10
    rra
    db $10
    rra
    inc c
    rrca
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$ffd0], a
    ld [hl], b
    ldh a, [$fff0]
    add sp, -$08
    ret z

    ld a, b
    add h
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$18f8], sp
    ld hl, sp+$60

jr_010_617e:
    ldh [$ff80], a

jr_010_6180:
    add b
    nop

jr_010_6182:
    nop
    nop

jr_010_6184:
    nop
    nop

jr_010_6186:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    adc h
    adc h
    sbc [hl]
    sbc [hl]
    sbc $de
    cp $fe
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, $7bff
    adc $ff
    sbc h
    rst $38
    sbc h
    ld a, e
    adc $31
    rst $38
    nop
    rst $38
    ld c, $ff
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, @+$41

    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    jr nc, @+$41

    inc c
    rrca
    inc bc

Jump_010_6200:
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
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_010_6211.2bpp"

    INCBIN "gfx/image_010_6511.2bpp"

    inc bc
    inc bc
    dec c
    ld c, $17
    jr @+$31

    ld sp, $213f
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $18
    and b
    ld e, a
    ld h, b
    cpl
    jr nc, jr_010_65fd

    ld a, h
    adc h
    rst $38
    add e
    rst $38
    ld a, h
    ld a, h
    rrca
    rrca
    dec e
    inc de
    cpl
    jr nc, jr_010_65d7

    ld hl, $615f
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_010_65e7

    jr nc, jr_010_65d9

    inc a
    inc hl
    ccf
    ld de, $0e1f
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc bc
    inc bc
    rrca
    rrca
    inc c
    inc c
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_65d7:
    nop
    nop

jr_010_65d9:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc

jr_010_65e7:
    inc bc
    inc bc
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_65fd:
    nop
    nop
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rla
    rla
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
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
    inc b
    inc b
    inc b
    inc b
    ld h, $26
    ld h, $26
    scf
    scf
    scf
    scf
    cp a
    cp a
    cp a
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
    di
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    ld c, h
    db $fc
    ld b, h
    cp $42
    cp $02
    rst $38
    add c
    rst $38
    ld bc, $05fb
    ld a, [$f406]
    inc c
    adc $3e
    ld sp, $c1ff
    rst $38
    ld a, $3e
    ldh a, [$fff0]
    cp b
    ret z

    db $f4
    inc c
    db $fc
    ld b, h
    ld a, [$fe46]
    ld b, d
    cp $02
    cp $82
    cp $82
    ld a, [$fc06]
    inc b
    db $fc
    inc c
    db $f4
    inc a
    call nz, $88fc
    ld hl, sp+$70
    ld [hl], b
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
    ld b, b
    ld b, b
    inc e
    inc e
    cp $fe
    rst $38
    rst $38
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_010_66f3

    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [hl-], a
    ld [hl-], a
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    dec sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_66f3:
    inc b
    inc b
    inc b
    inc b
    adc [hl]
    adc [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    db $fd
    cp $ff
    ld hl, sp-$09
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    rst $30
    ld hl, sp-$01
    ld hl, sp-$03
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    db $eb
    rst $30
    rst $38
    db $e3
    rst $38
    db $e3
    db $eb
    rst $30
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
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, $3e
    ld a, $3e
    ld e, $1e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    dec e
    dec e
    dec a
    dec a
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ld a, e
    ld c, h
    rst $28
    sub b
    rst $38
    add c
    cp a
    pop bc
    rst $38
    add c
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_010_67c7

    jr nc, jr_010_67b9

    inc a
    inc hl
    ccf
    ld de, $0e1f
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_67b9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_67c7:
    ld h, b
    ld h, b
    ldh a, [$fff0]
    jr c, jr_010_6805

    ld [$0408], sp
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
    and b
    and b
    and b
    and b
    ldh a, [$fff0]
    jr nc, jr_010_681b

    ld [$0008], sp
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_010_6805:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08

jr_010_681b:
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh [$ffe0], a
    ldh [$ffe0], a
    and b
    and b
    and b
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
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$ffe0], a
    jr nc, jr_010_687d

    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    di
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    ldh [$ffe0], a
    ret c

    jr c, @-$02

    inc c
    db $fc
    inc b
    ld a, [$fa06]
    ld d, [hl]

jr_010_687d:
    cp $52
    db $fd
    ld d, e
    db $fd
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_010_68c5

    ld a, b
    ld a, b
    rst $38
    rst $38
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_68c5:
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    ld [$4008], sp
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
    inc b
    inc b
    ld l, [hl]
    ld l, [hl]
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, b
    nop
    nop
    nop
    nop
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
    inc b
    inc bc
    inc bc
    ld bc, $1f01
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
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
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    db $fc
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
    ld bc, $82fe
    cp $82
    ld a, [$fc06]
    inc b
    db $fc
    inc c
    db $f4
    inc a
    call nz, $88fc
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    ret nc

    ret nc

    jr nc, jr_010_69dd

    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    inc d
    inc d
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    dec c
    ld c, $1f
    jr jr_010_69f7

    db $10
    cpl
    jr nc, jr_010_6a5b

    ld h, b

jr_010_69dd:
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld c, a
    ld a, b
    inc sp
    inc a
    inc a
    ccf
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e
    ld a, e
    ld a, e
    ld a, l
    ld b, [hl]
    ei
    add h

jr_010_69f7:
    rst $38
    add b
    rst $38
    add b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_010_6a35

    jr nc, jr_010_6a1b

    inc e
    inc l
    ccf
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b

jr_010_6a1b:
    jr nc, jr_010_6a4d

    inc a
    inc a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $f0ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_010_6a35:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_6a4d:
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    adc [hl]
    adc [hl]

jr_010_6a5b:
    xor $ee
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    db $fc
    jr jr_010_6a8b

    ccf
    daa
    ld a, a
    ld h, c
    rst $38
    add d
    ld a, a
    ld b, d
    ccf
    ld hl, $2f3f
    jr c, jr_010_6ab8

    inc a
    inc hl
    ld c, [hl]
    ld [hl], c
    ld b, a
    ld a, b
    jp $e1bc


    sbc [hl]

jr_010_6a8b:
    pop af
    adc a
    cp $86
    ld a, b
    ld a, b
    ld e, $1e
    ld a, a
    ld h, c
    adc a
    pop af
    add a
    ld a, c
    jp $e23d


    ld e, $72
    adc [hl]
    inc a
    call nz, $e41c
    inc c
    db $fc
    inc e
    db $f4
    cp [hl]
    ld h, d
    rst $38
    ld b, c
    cp $86
    db $fc
    db $e4
    jr jr_010_6ac9

    nop
    nop
    inc c
    inc c
    rra
    inc de
    ccf

jr_010_6ab8:
    jr nc, jr_010_6b39

    ld b, c
    ccf
    ld hl, $101f
    ccf
    scf
    ccf
    jr c, jr_010_6b43

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b

jr_010_6ac9:
    rst $38
    add b
    rst $38
    add c
    cp $86
    ld a, b
    ld a, b
    ld e, $1e
    ld a, a
    ld h, c
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld bc, $02fe
    cp $82
    db $fc
    add h
    db $fc
    inc b
    ld hl, sp+$08
    db $fc
    inc d
    cp $22
    db $fc
    ld c, h
    ld hl, sp-$38
    jr nc, jr_010_6b1f

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    add hl, bc
    rra
    jr jr_010_6b3b

    jr nz, jr_010_6b1d

    db $10
    ccf
    jr z, @+$41

    dec hl
    ld c, [hl]
    ld a, l
    ld b, a
    ld a, b
    jp $e1bc


    sbc [hl]
    pop af
    adc a
    cp $86
    ld a, b
    ld a, b
    ld e, $1e
    ld a, a
    ld h, c
    adc a
    pop af
    rst $00
    ld sp, hl
    jp $e27d


    sbc [hl]

jr_010_6b1d:
    ldh a, [c]
    adc [hl]

jr_010_6b1f:
    db $fc
    ld b, h
    call c, Call_000_08e4
    ld hl, sp+$1c
    db $f4
    cp b
    ld a, b
    ldh a, [$ff50]
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_010_6b39:
    dec b
    rlca

jr_010_6b3b:
    dec bc
    ld c, $17
    ld e, $2f
    jr c, jr_010_6b69

    inc a

jr_010_6b43:
    ld b, e
    ld a, [hl]
    ld b, e
    ld a, [hl]
    add e
    rst $38

jr_010_6b49:
    add b
    rst $38
    add c
    rst $38
    add [hl]
    cp $78
    ld a, b
    ld e, $1e
    ld h, c
    ld a, a
    add c
    rst $38
    ld bc, $81ff
    rst $38
    ldh a, [c]
    ld a, [hl]
    ldh a, [c]
    ld e, $e4
    inc a
    db $e4
    inc a
    ld hl, sp+$18
    ldh a, [$fff0]
    jr nz, jr_010_6b49

jr_010_6b69:
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh a, [$ff30]
    add sp, $38
    call nz, $847c
    db $fc
    ld [bc], a
    cp $32
    cp $7a
    xor $fe
    add $fa
    add [hl]
    rst $38
    dec b
    rst $30
    dec c
    rst $28
    add hl, de
    sbc l
    ld [hl], e
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_010_6bd3

    ld [hl], h
    ld c, h
    ld a, [$fe86]
    add d
    or $fa
    cp $0e
    cp $f2
    dec bc
    db $fd
    dec b
    rst $38
    ld [bc], a
    cp $3a
    cp $d6
    ld l, [hl]
    rst $38
    sbc a
    db $e3
    ld a, $c7
    ld a, h
    rst $00
    ld a, h
    add e
    cp $81
    rst $38
    adc h
    di
    adc h
    di

jr_010_6bc1:
    add b
    rst $38
    ret nz

    rst $38
    db $e3
    ccf
    rst $38
    rra
    di
    inc e
    rst $30
    jr jr_010_6bc1

    inc a
    rst $08
    rst $08
    nop
    nop

jr_010_6bd3:
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    dec b
    ld b, $0b
    dec c
    ld c, $0b
    ld c, $0b
    inc e
    rla
    ld [hl], h
    ld l, a
    ei
    sbc h
    jp hl


    halt
    sub c
    rst $28
    ld [de], a
    rst $28
    dec de
    and $0f
    ldh a, [c]
    rlca
    ld a, [$fff2]
    ld a, [bc]
    rst $38
    ld bc, $03ff
    rst $38
    ld [hl], a
    cp $7f
    db $fc
    ccf
    db $fc
    rra
    db $fc
    rst $20
    cp $1f
    rra
    inc bc
    inc bc
    dec b
    ld b, $07
    dec b
    ld a, [bc]
    rrca
    ld a, $3b
    ld l, [hl]
    ld e, e
    cp $8b
    ei
    adc a
    halt
    ld c, a
    ld a, [hl-]
    scf
    ld c, $0f
    ld [bc], a
    inc bc
    ld bc, $0101
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
    ld [$1408], sp
    ld [$1c14], sp
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    nop
    ld a, a
    ld a, $41
    nop
    ld a, a
    nop
    inc e
    nop
    inc e
    ld [$0814], sp
    inc d
    nop
    inc e
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
    nop
    nop
    nop
    nop
    nop
    ld [$1c08], sp
    inc d
    inc e
    inc d
    ld a, [hl+]
    ld [hl], $3e
    ld [hl+], a
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc d
    inc e
    inc d
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    dec bc
    ld c, $0b
    ld e, $17
    inc e
    rla
    inc e
    rla
    inc e
    rla
    dec e
    rla
    ld e, $1b
    ld a, $2b
    ld a, $27
    ld a, [hl]
    ld b, e
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, [hl]
    jr c, jr_010_6d85

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc de
    inc de
    inc de
    inc de
    dec de
    dec de
    dec de
    dec de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, $3f
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    cpl
    rrca
    rrca
    ld b, $06
    inc b
    inc b
    nop
    nop
    ld [$0908], sp
    add hl, bc
    dec c
    dec c
    rlca
    rlca

jr_010_6d85:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh [$ffe0], a
    ldh [$ffe0], a
    ldh [$ffe0], a
    ret nz

    ret nz

    ret nc

    ret nc

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    ld h, e
    ld a, h
    and [hl]
    reti


    sbc h
    db $e3
    add c
    rst $38
    ld bc, $03ff
    cp $03
    cp $03
    cp $03
    cp $33
    cp $c1
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    ld hl, sp+$3f
    ldh a, [$ff7f]
    ldh a, [$ff3f]
    ldh a, [$ffcf]
    ld hl, sp+$3f
    ccf
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $36
    halt
    halt
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ld bc, $10ff
    rst $38
    db $10
    rst $38
    ld bc, $c7ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    adc [hl]
    adc [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    db $fd
    cp $ff
    ld hl, sp-$09
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    rst $30
    ld hl, sp-$01
    ld hl, sp-$03
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $10
    rst $28
    rst $38
    rst $00
    rst $38
    rst $00
    rst $10
    rst $28
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
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp d
    cp d
    ld a, [hl-]
    ld a, [hl-]
    ld a, [de]
    ld a, [de]
    jr jr_010_6ef1

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
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

jr_010_6ef1:
    ld d, $19
    cpl
    jr nc, jr_010_6f35

    jr nz, jr_010_6f37

    jr nz, jr_010_6f39

    jr nz, @+$61

    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld l, a
    ld [hl], b
    xor a
    ldh a, [$ff93]
    db $fc
    adc h
    rst $38
    ld [hl], a
    ld [hl], a
    inc b
    rlca
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [rNR32]
    db $fc
    ld a, a
    db $e3
    rst $38
    add b
    rst $38
    rra
    ld hl, sp+$3f
    pop hl
    ld a, a
    pop bc
    ld a, a

jr_010_6f35:
    add b
    rst $38

jr_010_6f37:
    add [hl]
    ld sp, hl

jr_010_6f39:
    add [hl]
    ld sp, hl
    ret nz

    rst $38
    ldh [$ffbf], a
    ldh [$ffbf], a
    ldh a, [$ffdf]
    db $fc
    ld l, a
    rst $38
    ld d, e
    rst $38
    ld c, b
    rst $38
    xor h
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    call nz, $ccc4
    call z, $cccc
    call c, $dcdc
    call c, $fcfc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    db $f4
    xor b
    xor b
    adc b
    adc b
    and b
    and b
    ldh [$ffe0], a
    ldh [$ffe0], a
    ldh [$ffe0], a
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh a, [$fff0]
    jr nc, jr_010_6fbf

    ld [$e008], sp
    ldh [$ff58], a
    ld hl, sp-$0c
    inc c
    ld a, [$fe46]
    sub d
    db $fd
    inc hl
    db $fd
    add e
    db $fd
    inc bc
    ld sp, hl
    rlca
    cp $02
    cp $02
    ld [$2416], a
    db $fc
    ld hl, sp-$08
    ld b, b
    ret nz

    add b
    add b
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_010_6fbf:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    jr jr_010_6fd3

jr_010_6fd3:
    inc a
    nop
    inc a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    nop
    inc a
    nop
    jr jr_010_6ff1

jr_010_6ff1:
    ld [$1c00], sp
    nop
    inc e
    nop
    inc e
    nop
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_702b:
    add b
    add b
    ldh [$ffe0], a
    ldh a, [$ff90]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$68
    ld h, h
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    jr c, jr_010_702b

    db $fc
    call nz, $04fc
    db $fc
    inc c
    db $fc
    inc d
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
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
    inc bc
    nop
    inc c
    inc bc
    ld de, $170e
    ld [$1827], sp
    cpl
    db $10
    cpl
    db $10
    daa
    jr jr_010_70bd

    ld [$0e11], sp
    inc c
    inc bc
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
    nop
    nop
    nop
    nop
    nop

jr_010_70bd:
    nop
    nop
    ld [$1c00], sp
    nop
    inc e
    nop
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    ld c, h
    db $fc
    ld b, h
    cp $42
    cp $02
    rst $38
    add c
    ei
    dec b
    ld a, c
    add a
    ldh a, [c]
    ld c, $c4
    inc a
    ld c, $fe
    ld sp, $c1ff
    rst $38
    ld a, $3e
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_010_7187

    ld sp, $213f
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    rst $38
    add b
    rst $18
    and b
    sbc a
    ldh [rVBK], a
    ld [hl], b
    inc hl
    inc a
    ld [hl], b
    ld a, a
    adc h
    rst $38
    add e
    rst $38
    ld a, h
    ld a, h
    ldh [$ffe0], a
    sbc b
    ld a, b
    db $ec
    inc e
    db $f4
    inc c
    ldh a, [c]
    ld c, $fa
    ld d, [hl]
    ld a, [$f956]
    ld d, a
    pop af
    rrca
    ld sp, hl
    rlca
    pop af
    cpl

jr_010_7187:
    ld [bc], a
    cp $0e
    cp $f9
    rst $38
    pop bc
    rst $38
    ld a, $3e
    ld a, e
    ld a, e
    ld a, l
    ld b, [hl]
    ei
    add h
    cp a
    ret nz

    adc a
    ldh a, [$ff5f]
    ld h, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    cpl
    jr nc, jr_010_71c9

    inc a
    db $10
    rra
    inc l
    ccf
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1c08], sp
    inc e
    inc e
    inc e
    ld a, $3e
    ld a, $3e

jr_010_71c9:
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ld b, l
    ld a, [hl]
    cp e
    call nz, $80ff
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    ld h, a
    ld a, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    cpl
    jr nc, jr_010_725b

    inc a
    ld c, h
    ld a, a
    ld b, a
    ld a, a
    ld c, d
    ld a, e
    ld sp, $dc31
    call c, Call_010_72ae
    db $ed
    dec de
    di
    dec c
    rst $38
    ld d, l
    db $fd
    ld d, a
    cp $56
    ld a, [$fa06]
    ld b, $fa
    ld h, $f4
    inc l
    call z, Call_000_383c
    ld hl, sp-$20
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    inc bc
    inc bc
    rra
    inc e
    ld [hl], a
    ld a, b
    rst $30
    ret z

jr_010_725b:
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld c, a
    ld [hl], c
    ld e, [hl]
    ld h, e
    ld a, $23
    ld a, [hl+]
    inc sp
    add hl, de
    rra
    rlca

jr_010_726c:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ret c

    jr c, jr_010_726c

    inc c
    ld a, [$fa26]
    ld b, $fe
    ld [bc], a
    cp $c6
    add hl, sp
    rst $28
    ld de, $11ff
    rst $38
    ld de, $32ff
    cp $cc
    call z, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_010_72be

    ld h, $3c
    ld b, d
    jr jr_010_72cf

    db $10
    ld l, $00

Call_010_72ae:
    jr nc, jr_010_72b0

jr_010_72b0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_72be:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_010_72c8

jr_010_72c8:
    inc a
    nop
    inc a
    nop
    jr jr_010_72ce

jr_010_72ce:
    nop

jr_010_72cf:
    nop
    nop

    db $31

    nop

    db $01

    add b
    add b

    db $cb, $00, $13, $01

    ret nz

    ret nz

    db $cb, $00, $21, $a3, $00, $1e, $25

    rlca

    db $25

    rrca

    db $0b

    ld c, $0f
    ret nz

    rst $38
    add b
    rst $38
    add c
    rst $38
    rlca
    rst $38
    rrca
    db $fe

    db $41

    rrca
    db $fc

    db $01

    rra
    db $f8

    db $41

    nop
    rst $38

    db $00

    db $f8

    db $23

    rst $38

    db $02

    rrca
    rst $38
    db $01

    db $41

    rst $38
    nop

    db $10

    INCBIN "gfx/image_010_7308.2bpp"

    db $e0

    db $26

    rst $38

    db $04

    ccf
    rst $38
    inc e
    rst $38
    inc c

    db $41

    rst $38
    nop

    db $01

    rst $38
    db $fc

    db $26

    rst $38

    db $00

    inc bc

    db $a6, $00, $7d, $00

    rrca

    db $28

    rst $38

    db $41

    nop
    rst $38

    db $83, $00, $1e, $8d, $00, $94, $23

    nop

    db $01

    ld hl, sp-$08

    db $25

    rst $38

    db $01

    rlca
    rst $38

    db $89, $00, $18, $00

    db $fc

    db $83, $00, $82, $00

    rst $38

    db $8d, $00, $06, $03

    ldh [$ffe0], a
    ld e, $fe

    db $41

    rrca
    rst $38

    db $05

    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38

    db $89, $00, $cc, $05

    add a
    add a
    cp a
    cp a
    ld hl, sp-$08

    db $85, $00, $20, $05

    rrca
    rrca
    rst $38
    rst $38
    ldh a, [$fff0]

    db $27

    nop

    db $47

    ld e, $1f

    db $46

    rra
    db $f8

    db $01

    ld c, $fd

    db $41

    rst $38
    nop

    db $07

    cp $01
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a

    db $c4, $00, $9e, $02

    inc bc
    ret nz

    ccf

    db $4c

    nop
    rst $38

    db $00

    inc bc

    db $8c, $01, $45, $02

    db $fc
    rst $38
    rst $38

    db $90, $01, $45, $00

    ccf

    db $8f, $01, $5d, $05

    db $fc
    rst $38
    rst $38
    ld a, a
    rst $38
    rra

    db $89, $01, $5d, $04

    nop
    add b
    add b
    ldh a, [$fff0]

    db $85, $01, $90, $03

    rrca
    rst $38
    inc bc
    rst $38

    db $8b, $00, $16, $83, $01, $a4, $01

    rst $38
    db $01

    db $8a, $01, $45, $04

    ld bc, $01ff
    pop bc
    pop bc

    db $a3, $00, $ba, $27

    db $e0

    db $01

    ldh a, [$fff0]

    db $8f, $00, $cc, $41

    ld e, $1f

    db $23

    rrca

    db $03

    rra
    rra
    ccf
    ccf

    db $23

    ld a, a

    db $00

    inc c

    db $ab, $01, $c4, $04

    rst $38
    add b
    rst $38
    rst $38
    inc bc

    db $8c, $01, $c0, $00

    db $fc

    db $a5, $00, $36, $0d

    ld hl, sp+$78
    db $fc
    ld a, h
    cp $3e
    cp $1e
    rst $38
    rra
    rrca
    rst $38
    ld c, $fe

    db $41

    inc e
    db $fc

    db $04

    inc a
    db $fc
    ld a, $fe
    ccf

    db $a4, $00, $81, $01

    ccf
    ccf

    db $22

    rra

    db $c7, $02, $46, $41

    rst $38
    ret nz

    db $a3, $00, $e5, $43

    rst $38
    db $f0

    db $03

    rst $38
    cp $fe
    ccf

    db $83, $00, $e3, $88, $01, $c0, $41

    rst $38
    add e

    db $07

    rst $38
    rst $00
    rst $38
    rst $28
    ld a, h
    ld a, h
    ld a, b
    ld a, b

    db $c5, $01, $e3, $01

    ld hl, sp-$08

    db $23

    ld a, b

    db $23

    inc a

    db $85, $00, $cc, $23

    db $01

    db $01

    inc bc
    inc bc

    db $85, $00, $36, $02

    ld e, $1f
    ei

    db $a4, $00, $e3, $00

    ret nz

    db $c8, $02, $0d, $03

    rst $38
    rst $38
    rst $38
    add e

    db $86, $02, $4f, $41

    ldh a, [rIE]

    db $02

    ld hl, sp-$01
    rst $08

    db $84, $00, $75, $02

    rlca
    rst $38
    inc bc

    db $a5, $02, $a5, $a7, $02, $90, $a7, $00, $30, $00

    ccf

    db $41

    rst $38
    rra

    db $05

    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc

    db $cc, $00, $9f, $c6, $00, $86, $ca, $02, $59, $86, $01, $7a, $ce, $01, $81, $06

    add b
    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    rlca

    db $8e, $01, $45, $83, $00, $68, $02

    ld e, $ff
    db $06

    db $84, $01, $9d, $a7, $02, $94, $05

    ld hl, sp-$08
    ld a, h
    db $fc
    ld a, $fe

    db $af, $00, $04, $01

    ld e, $1f

    db $41

    inc a
    ccf

    db $01

    ld a, b
    ld a, a

    db $a7, $00, $e0, $02

    ld a, a
    ld hl, sp+$7f

    db $41

    db $fc
    ccf

    db $03

    db $fc
    rra
    cp $1f

    db $83, $00, $e1, $90, $01, $6e, $25

    db $f0

    db $a6, $01, $11, $02

    jr c, @-$02

    inc a

    db $88, $02, $57, $00

    db $f8

    db $41

    ld a, a
    ld a, b

    db $03

    ld a, a
    ld a, h
    rst $38
    ld a, [hl]

    db $29

    rst $38

    db $03

    ld hl, sp+$7f
    ldh a, [$ff7f]

    db $a4, $01, $5b, $05

    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff

    db $84, $01, $95, $02

    ld a, a
    rst $38
    ld a, a

    db $8c, $01, $45, $02

    ld hl, sp-$01
    rst $38

    db $8e, $03, $25, $04

    ldh [rIE], a
    cp $ff
    db $1e

    db $42

    rst $38
    nop

    db $12

    INCBIN "gfx/image_010_751b.2bpp"

    ld e, $07
    rlca

    db $cf, $00, $db, $a7, $02, $d2, $06

    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38

    db $88, $03, $01, $04

    ret nz

    rst $38
    add b
    rst $38
    rst $38

    db $8e, $01, $6d, $8d, $04, $3c, $c4, $02, $a8, $01

    rst $38
    rrca

    db $41

    rst $38
    rlca

    db $aa, $04, $2f, $88, $02, $07, $83, $00, $54, $02

    rst $00
    rst $38
    ret nz

    db $41

    db $fc
    inc a

    db $42

    cp $1e

    db $05

    cp $de
    cp $fe
    rst $38
    ccf

    db $41

    ccf
    inc a

    db $03

    ccf
    ld a, $1f
    db $1e

    db $c5, $01, $f9, $01

    rlca
    rlca

    db $41

    ldh a, [$ff3f]

    db $41

    ldh a, [$ff1f]

    db $41

    ldh a, [rIF]

    db $03

    ld hl, sp-$79
    db $fc
    db $c3

    db $88, $01, $44, $02

    ld hl, sp+$00
    add b

    db $86, $00, $98, $02

    ld hl, sp+$00
    db $e0

    db $89, $04, $16, $03

    inc bc
    inc bc
    db $01
    db $01

    db $89, $04, $14, $8f, $00, $cc, $01

    nop
    nop

    db $83, $02, $8e, $2b

    db $01

    db $29

    rst $38

    db $00

    db $e0

    db $c6, $04, $33, $03

    add c
    add c
    db $fd
    db $fd

    db $22

    rst $38

    db $c4, $03, $d1, $02

    nop
    rst $38
    rst $38

    db $88, $02, $53, $41

    ld hl, sp-$01

    db $00

    db $38

    db $8c, $01, $6d, $00

    rra

    db $b0, $01, $6b, $00

    db $f0

    db $88, $05, $25, $43

    db $fc
    ccf

    db $02

    inc bc
    rst $38
    inc bc

    db $45

    rst $38
    db $01

    db $84, $02, $4e, $45

    rst $38
    db $e0

    db $45

    rst $38
    rrca

    db $00

    rst $38

    db $92, $03, $7c, $ae, $05, $40, $b2, $05, $2f, $ad, $05, $22, $c5, $03, $4b, $84
    db $02, $80, $06

    ld hl, sp+$3c
    db $fc
    ld e, $fe
    nop
    nop

    db $8e, $02, $d0, $84, $02, $55, $00

    ld [hl], b

    db $84, $03, $aa, $41

    inc a
    ccf

    db $8f, $04, $e2, $00

    ccf

    db $cc, $05, $cd, $02

    inc bc
    rst $38
    db $fe

    db $2a

    rst $38

    db $04

    cp $fe
    ld hl, sp-$08
    nop

    db $87, $00, $65, $a3, $03, $b9, $02

    rra
    ccf
    ccf

    db $8d, $04, $50, $c3, $03, $00, $00

    db $20

    db $45

    rst $38
    db $38

    db $af, $06, $4f, $00

    rst $38

    db $b1, $06, $40, $ad, $06, $32, $af, $06, $20, $af, $06, $10, $8e, $03, $13, $02

    add b
    ld e, $fe

    db $a9, $03, $00, $41

    db $01
    rst $38

    db $a5, $02, $9a, $02

    ld a, b
    ld hl, sp+$38

    db $a4, $03, $61, $03

    rst $38
    rst $38
    ld e, $1f

    db $c3, $02, $9b, $8a, $04, $d0, $88, $06, $47, $05

    ld hl, sp-$01
    ld a, h
    ld a, a
    ccf
    ccf

    db $ae, $06, $b1, $01

    rst $38
    db $01

    db $c8, $01, $9d, $25

    rst $38

    db $23

    db $f0

    db $03

    ld h, b
    ldh [$ffe1], a
    pop hl

    db $27

    pop bc

    db $c3, $06, $9d, $23

    db $fe

    db $c7, $06, $2d, $03

    ld hl, sp-$01
    inc e
    rra

    db $c5, $00, $3e, $05

    rra
    rra
    db $fd
    db $fd
    db $fc
    db $fc

    db $43

    jr c, @+$01

    db $00

    cp b

    db $42

    rst $38
    db $f8

    db $00

    rst $38

    db $af, $07, $50, $02

    rra
    rst $38
    ccf

    db $a8, $06, $1f, $a3, $07, $4c, $03

    cp $fe
    rst $00
    rst $00

    db $25

    add e

    db $01

    rst $00
    rst $00

    db $b3, $07, $1c, $aa, $07, $10, $90, $04, $3b, $02

    add b
    rst $38
    add b

    db $b2, $05, $0f, $af, $05, $02, $ad, $04, $f2, $af, $05, $d0, $00

    add b

    db $ce, $07, $bf, $8d, $01, $92, $01

    db $01
    rst $38

    db $27

    ret nz

    db $03

    ld h, b
    ldh [$ff60], a
    db $e0

    db $c7, $07, $23, $c3, $01, $fd, $a7, $01, $06, $01

    ld hl, sp-$08

    db $85, $05, $d0, $01

    add b
    add b

    db $85, $02, $92, $c5, $06, $fa, $c3, $04, $7f, $84, $07, $c5, $00

    db $f0

    db $af, $08, $50, $af, $08, $40, $af, $08, $30, $b1, $08, $20, $ac, $08, $12, $d0
    db $07, $11, $b3, $05, $f0, $ab, $02, $d2, $af, $06, $c0, $02

    inc bc
    rst $38
    rlca

    db $86, $05, $c7, $c5, $05, $ae, $c3, $06, $2f, $8f, $00, $a4, $85, $00, $a2, $00

    add a

    db $c3, $03, $7d, $06

    db $fc
    rlca
    rlca
    rra
    rra
    ld a, a
    ld a, h

    db $a3, $02, $e7, $b2, $01, $57, $02

    rlca
    rst $38
    rra

    db $af, $09, $30, $af, $09, $20, $af, $09, $10, $ae, $09, $00, $b0, $08, $ef, $8f
    db $04, $4f, $af, $06, $f0, $af, $06, $e0, $ad, $06, $d0, $9d, $05, $90, $02

    nop
    cp $ff

    db $87, $03, $f7, $01

    ldh a, [rP1]

    db $c5, $09, $14, $08

    rst $38
    rra
    ld sp, hl
    rra
    sbc c
    rra
    jr @+$21

    inc e

    db $85, $08, $74, $c4, $04, $3d, $02

    rst $38
    rst $38
    ld a, a

    db $c8, $09, $2e, $00

    rst $38

    db $cd, $03, $39, $af, $0a, $1e, $b1, $0a, $0e, $ad, $0a, $00, $b1, $09, $ee, $af
    db $09, $e0, $a3, $04, $01, $04

    rra
    db $fc
    rrca
    cp $07

    db $aa, $04, $35, $83, $02, $65, $8b, $04, $43, $c4, $08, $89, $00

    ld a, [hl]

    db $c5, $08, $f7, $8b, $00, $cc, $87, $08, $7c, $cb, $06, $ed, $c5, $02, $4f, $00

    rst $38

    db $c3, $03, $c8, $83, $04, $37, $a3, $00, $85, $01

    rst $38
    ret nz

    db $cd, $03, $8a, $00

    rlca

    db $ab, $02, $a3, $00

    add b

    db $ce, $06, $af, $8d, $04, $3c, $00

    inc bc

    db $8c, $04, $3b, $02

    ld a, [hl]
    rst $38
    rst $38

    db $bc, $0b, $0f, $86, $02, $ec, $01

    rst $38
    db $01

    db $d0, $07, $b9, $00

    ccf

    db $8d, $02, $e7, $00

    nop

    db $86, $06, $f5, $02

    cp $7f
    rst $38

    db $c8, $02, $a9, $83, $03, $71, $01

    cp $1f

    db $b0, $00, $cf, $27

    nop

    db $03

    rrca
    rrca
    ld a, a
    ld a, a

    db $83, $00, $cc, $8d, $04, $d4, $02

    rst $38
    rst $38
    rra

    db $c4, $04, $96, $c5, $03, $ab, $02

    ld hl, sp-$01
    db $fe

    db $d0, $01, $5f, $02

    rst $38
    rst $38
    ld a, [hl]

    db $ba, $01, $51, $83, $05, $ac, $09

    inc e
    db $fc
    jr nc, @-$0e

    ld h, b
    ldh [$ffc0], a
    ret nz

    pop bc
    pop bc

    db $23

    add e

    db $c6, $06, $05, $00

    ccf

    db $88, $08, $80, $a6, $0c, $01, $0a

    jp $e3c3


    db $e3
    ld sp, $1131
    ld de, $ff00
    nop

    db $b0, $04, $4f, $00

    rrca

    db $84, $00, $47, $41

    inc bc
    db $fc

    db $02

    ld bc, $1ffe

    db $ce, $06, $7f, $00

    rra

    db $ae, $02, $a1, $85, $01, $f6, $a7, $02, $28, $01

    rst $38
    db $f0

    db $ae, $09, $3e, $00

    nop

    db $90, $03, $25, $02

    rst $38
    rst $38
    ld a, a

    db $aa, $09, $26, $03

    nop
    add b
    rst $38
    db $e0

    db $87, $03, $c4, $83, $01, $94, $00

    rrca

    db $af, $0c, $32, $02

    ld hl, sp+$7f
    db $fc

    db $84, $03, $72, $01

    cp $3f

    db $42

    cp $1f

    db $00

    db $01

    db $45

    rst $38
    inc bc

    db $02

    rst $38
    db $01
    rst $38

    db $2b

    rlca

    db $23

    inc bc

    db $03

    db $fc
    db $fc
    db $fc
    db $fc

    db $cb, $06, $2d, $23

    db $18

    db $01

    jr c, @+$3a

    db $25

    db $f8

    db $23

    db $f0

    db $af, $0c, $e0, $00

    nop

    db $cd, $0b, $6f, $03

    db $fc
    nop
    rst $38
    rrca

    db $83, $07, $73, $a8, $00, $55, $c8, $08, $a8, $86, $02, $c3, $2f

    db $01

    db $03

    rst $38
    ldh a, [rIE]
    db $f0

    db $8b, $05, $74, $cf, $0c, $43, $85, $09, $82, $04

    db $fc
    rst $38
    cp $7f
    db $fe

    db $84, $02, $e0, $af, $0c, $30, $ce, $07, $0e, $02

    rst $38
    add c
    add c

    db $85, $02, $d4, $07

    ld h, b
    ldh [$ff30], a
    ldh a, [rNR32]
    db $fc
    rrca
    rst $38

    db $cb, $0c, $1b, $a5, $00, $f2, $01

    pop bc
    pop bc

    db $aa, $0d, $c4, $d1, $07, $bf, $02

    ldh a, [rIE]
    ret nz

    db $8c, $06, $71, $87, $08, $ba, $00

    ccf

    db $a4, $02, $c4, $02

    nop
    rst $38
    db $01

    db $ad, $03, $dd, $ff, $22, $00, $6a, $03, $34, $00, $63, $11, $01, $17, $17, $66
    db $15, $32, $00, $01, $1f, $20, $23, $17, $62, $23, $22, $17, $01, $26, $34, $30
    db $00, $01, $29, $2a, $24, $17, $65, $2e, $00, $15, $62, $0e, $00, $01, $2c, $00
    db $01, $35, $36, $28, $17, $63, $3d, $62, $1c, $00, $02, $2b, $00, $62, $41, $28
    db $44, $06, $4b, $4c, $41, $4d, $27, $28, $41, $cc, $00, $a0, $66, $4e, $25, $59
    db $62, $5a, $62, $7c, $00, $4e, $2d, $00, $02, $5f, $17, $17, $69, $61, $02, $17
    db $17, $8c, $2f, $00, $6d, $6e, $01, $9a, $9b, $30, $00, $6c, $7f, $00, $5d, $30
    db $00, $02, $8d, $8e, $17, $69, $8f, $02, $17, $6c, $5e, $2d, $00, $03, $60, $60
    db $9c, $9d, $6a, $9d, $02, $9d, $9d, $6d, $cd, $01, $61, $23, $1e, $62, $ac, $01
    db $b4, $b4, $66, $b1, $62, $a9, $cc, $01, $80, $00, $00, $63, $b9, $22, $17, $00
    db $70, $62, $c0, $06, $7b, $17, $17, $c5, $b8, $21, $22, $2d, $00, $65, $c7, $00
    db $17, $64, $ce, $22, $17, $00, $c6, $62, $2b, $2b, $00, $01, $d6, $d7, $22, $38
    db $67, $d8, $23, $17, $62, $37, $2c, $00, $62, $3a, $04, $99, $38, $af, $b0, $17
    db $62, $bd, $00, $c3, $62, $d3, $63, $45, $2c, $00, $06, $49, $4a, $17, $a8, $6b
    db $38, $cd, $23, $17, $00, $c4, $62, $e0, $63, $55, $2b, $00, $ff

    call Call_000_2af8
    xor a
    ld [$df32], a
    ld [$da2d], a
    ld a, $e4
    ld [$cd09], a
    ld a, $d0
    ld [$cd0a], a
    ld a, $e4
    ld [$cd0b], a
    ld hl, $9800
    ld bc, $0400
    ld a, $00
    call Call_000_062f
    ld hl, $9c00
    ld bc, $0400
    ld a, $00
    call Call_000_062f
    ld e, $ff
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ld e, $00
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    ld hl, $72d1
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $8ff0
    ld bc, $0010
    ld a, $ff
    call Call_000_062f
    ld hl, $7944
    ld de, $cf00
    call Call_000_0708
    call Call_010_7c90
    ld a, $45
    ldh [rLCDC], a
    call Call_000_046d
    ld e, $1f
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld de, $0201
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf
    ld b, $00
    ld hl, $5b06
    ld a, $07
    call Call_000_05cf
    ld a, $a8
    ld [$da2d], a
    ld a, $14
    ld [$df33], a
    ld e, $47
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf

jr_010_7ad6:
    call Call_010_7b84
    ld a, [$da2d]
    sub $04
    ld [$da2d], a
    call Call_000_0496
    call Call_000_04ae
    call Call_000_0343
    ld a, [$da2d]
    and a
    jr nz, jr_010_7ad6

    ld hl, $da29
    ld a, $2f
    ld [hl], a
    ldh [rLYC], a
    ld a, $58
    ld [$da2d], a
    ld a, $ff
    ld [$df33], a
    ld e, $47
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf

jr_010_7b0c:
    call Call_010_7bcc
    ld a, [$da2d]
    add $04
    ld [$da2d], a
    call Call_000_0496
    call Call_000_04ae
    call Call_000_0343
    ld a, [$da2d]
    and a
    jr nz, jr_010_7b0c

    ld hl, $da29
    ld a, $5f
    ld [hl], a
    ldh [rLYC], a
    ld a, $a8
    ld [$da2d], a
    ld a, $14
    ld [$df33], a
    ld e, $47
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf

jr_010_7b42:
    call Call_010_7c15
    ld a, [$da2d]
    sub $04
    ld [$da2d], a
    call Call_000_0496
    call Call_000_04ae
    call Call_000_0343
    ld a, [$da2d]
    and a
    jr nz, jr_010_7b42

    ld a, $40

jr_010_7b5e:
    dec a
    push af
    call Call_000_0496
    call Call_000_04ae
    call Call_000_0343
    pop af
    and a
    jr nz, jr_010_7b5e

    ld de, $0204
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld hl, $5ada
    ld a, $07
    call Call_000_05cf
    ret


Call_010_7b84:
    ld a, [$da2d]
    and $07
    ret nz

    ld bc, $9800
    ld a, [$df33]
    and a
    ret z

    dec a
    ld [$df33], a
    add c
    ld c, a
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld a, $06
    ldh [$ff81], a
    ld de, $cf00
    ld a, [$df33]
    add e
    ld e, a

jr_010_7ba9:
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], $01
    inc l
    ld a, [de]
    ld [hl], a
    inc l
    ld a, e
    add $20
    ld e, a
    jr nc, jr_010_7bba

    inc d

jr_010_7bba:
    ld a, c
    add $20
    ld c, a
    jr nc, jr_010_7bc1

    inc b

jr_010_7bc1:
    ldh a, [$ff81]
    dec a
    ldh [$ff81], a
    jr nz, jr_010_7ba9

    ld a, l
    ldh [$ff92], a
    ret


Call_010_7bcc:
    ld a, [$da2d]
    and $07
    ret nz

    ld bc, $98c0
    ld a, [$df33]
    cp $14
    ret z

    inc a
    ld [$df33], a
    add c
    ld c, a
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld a, $06
    ldh [$ff81], a
    ld de, $cfc0
    ld a, [$df33]
    add e
    ld e, a

jr_010_7bf2:
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], $01
    inc l
    ld a, [de]
    ld [hl], a
    inc l
    ld a, e
    add $20
    ld e, a
    jr nc, jr_010_7c03

    inc d

jr_010_7c03:
    ld a, c
    add $20
    ld c, a
    jr nc, jr_010_7c0a

    inc b

jr_010_7c0a:
    ldh a, [$ff81]
    dec a
    ldh [$ff81], a
    jr nz, jr_010_7bf2

    ld a, l
    ldh [$ff92], a
    ret


Call_010_7c15:
    ld a, [$da2d]
    and $07
    ret nz

    ld bc, $9980
    ld a, [$df33]
    and a
    ret z

    dec a
    ld [$df33], a
    add c
    ld c, a
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld a, $06
    ldh [$ff81], a
    ld de, $d080
    ld a, [$df33]
    add e
    ld e, a

jr_010_7c3a:
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], $01
    inc l
    ld a, [de]
    ld [hl], a
    inc l
    ld a, e
    add $20
    ld e, a
    jr nc, jr_010_7c4b

    inc d

jr_010_7c4b:
    ld a, c
    add $20
    ld c, a
    jr nc, jr_010_7c52

    inc b

jr_010_7c52:
    ldh a, [$ff81]
    dec a
    ldh [$ff81], a
    jr nz, jr_010_7c3a

    ld a, l
    ldh [$ff92], a
    ret


    ld hl, $cf08
    ld e, l
    ld d, $98
    call Call_010_7c79
    ld hl, $cfc0
    ld de, $98c0
    call Call_010_7c79
    ld hl, $d088
    ld de, $9988
    call Call_010_7c79
    ret


Call_010_7c79:
    ld c, $06

jr_010_7c7b:
    ld b, $0c

jr_010_7c7d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_010_7c7d

    dec c
    ret z

    ld a, l
    add $14
    ld l, a
    jr nc, jr_010_7c8d

    inc h
    inc d

jr_010_7c8d:
    ld e, l
    jr jr_010_7c7b

Call_010_7c90:
    ld hl, $cfa0
    ld a, [hl]
    ld hl, $98a0
    ld b, $20

jr_010_7c99:
    ld [hl+], a
    dec b
    jr nz, jr_010_7c99

    ld hl, $cfc0
    ld a, [hl]
    ld hl, $98c0
    ld b, $20

jr_010_7ca6:
    ld [hl+], a
    dec b
    jr nz, jr_010_7ca6

    ld hl, $d060
    ld a, [hl]
    ld hl, $9960
    ld b, $20

jr_010_7cb3:
    ld [hl+], a
    dec b
    jr nz, jr_010_7cb3

    ld hl, $d080
    ld a, [hl]
    ld hl, $9980
    ld b, $20

jr_010_7cc0:
    ld [hl+], a
    dec b
    jr nz, jr_010_7cc0

    ret


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0000
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
    ld [$0000], sp
    nop
    jr nz, jr_010_7d5f

jr_010_7d5f:
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
    jr nz, jr_010_7d82

jr_010_7d82:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_010_7db2

    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_010_7db2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0000
    stop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
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
    jr nz, jr_010_7e60

jr_010_7e60:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_010_7f13

jr_010_7f13:
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_010_7f43

jr_010_7f43:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
