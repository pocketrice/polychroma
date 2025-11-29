; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    rrca
    ldh [$ffe0], a
    ret c

    db $38, $f4
    inc c
    ld a, [$fe06]
    ld [bc], a
    push af
    ei
    ei
    db $fd
    db $fd
    rst $00
    ld b, d
    rst $38
    add e
    add hl, bc
    cp $46
    cp $fe
    xor h
    db $fc
    ld hl, sp-$08
    ldh [$ffe0], a
    xor c
    nop
    nop
    inc b
    cp [hl]
    pop bc
    db $fd
    add e
    ei
    ld b, c
    add a
    rst $38
    ld [de], a
    add a
    cp a
    add $7f
    ld b, h
    ld e, e
    ld h, [hl]
    dec l
    inc sp
    ld a, [de]
    dec e
    rlca
    rlca
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $ff41


    add c
    dec b
    cp l
    jp Jump_00d_665a


    inc a
    inc a
    cpl
    nop
    ld e, $ff
    nop
    rst $38
    ret nz

    cp a
    ld [hl], b
    rst $28
    jr @-$07

    inc c
    rst $30
    db $fc
    ei
    cp $ff
    and $ff
    jp nz, Jump_00d_42ff

    rst $38
    inc h
    rst $38
    ld a, h
    rst $28
    ld hl, sp-$41
    ldh a, [rIE]
    ret nz

    rst $38
    xor d
    nop
    ld e, a
    inc de
    cp $21
    db $dd
    ld h, e
    rst $38
    ld b, e
    ei
    ld b, a
    db $db
    ld h, a
    ei
    ld h, $ef
    inc sp
    push af
    dec de
    db $fc
    rrca
    rst $38
    inc bc
    rst $08
    nop
    ld h, b
    add hl, bc
    ld h, a
    ld h, a
    ld e, b
    ld a, a
    rst $20
    ld hl, sp+$5f
    ldh [$ff3f], a
    ret nz

    ld b, e
    rst $38
    nop
    rlca
    nop
    nop
    inc bc
    inc bc
    inc a
    ccf
    inc sp
    inc a
    add e
    nop
    inc h
    add hl, bc
    ld e, a
    ld h, b
    cp a
    ret nz

    sbc a
    ldh [$ffdf], a
    ldh [$ffbf], a
    ret nz

    ld b, c
    ld a, a
    add b
    ld bc, $00ff
    ret


    nop
    ld h, d
    ld [bc], a
    rlca
    rlca
    inc bc
    ld b, l
    inc bc
    ld [bc], a
    nop
    inc bc
    jp $e900


    inc sp
    nop
    dec c
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b
    ld c, b
    ld a, b
    cpl
    ccf
    ld l, b
    ld a, a
    sub e
    db $fc
    ld e, a
    and b
    add a
    nop
    call c, Call_000_3009
    jr nc, jr_00d_4100

    jr c, jr_00d_40ff

    dec a
    ld d, $1f
    add hl, bc
    ld c, $41
    rla
    jr jr_00d_4124

    cpl
    jr nc, jr_00d_40e9

    rst $08
    ldh a, [$ff5f]

jr_00d_40e9:
    ldh [rSCY], a
    cp a
    ret nz

    add a
    nop
    ldh [$ff03], a
    ld [bc], a
    inc bc
    ld bc, $2701
    nop
    ld [bc], a
    ld bc, $0201
    sbc d
    nop
    rst $30
    rlca

jr_00d_40ff:
    ld c, a

jr_00d_4100:
    ld a, a

Jump_00d_4101:
    ld a, b
    ld a, a
    xor a
    ldh a, [$ff5f]
    and b
    adc c
    nop
    jp c, Jump_000_300d

    jr nc, jr_00d_4137

    add hl, sp
    daa
    ccf
    inc d
    rra
    dec bc
    inc c
    rla
    jr jr_00d_4137

    db $10
    ld b, c
    cpl
    jr nc, @+$04

    rst $18
    ldh [$ff7f], a
    ld b, d
    ret nz

    cp a
    nop

jr_00d_4124:
    ret nz

    ld c, a
    rst $38
    nop
    rra
    ldh [$ffe0], a
    sbc [hl]
    ld a, [hl]
    xor $1a
    xor $1e
    ldh a, [c]
    ld c, $3d
    jp $e3dd


jr_00d_4137:
    rst $28
    pop af
    rst $28
    ld sp, $33ed
    db $dd
    db $e3
    ld [hl-], a
    adc $ee
    ld e, $ee
    ld a, [de]
    sbc [hl]
    ld a, [hl]
    ldh [$ffe0], a
    xor c
    ld bc, $03c0
    cp [hl]
    pop bc
    cp l
    jp $fb41


    add a
    dec b
    cp e
    rst $00
    cp l
    jp $714e


    and a
    ld bc, $1bd8
    nop
    nop
    add $c6
    cp [hl]
    ld a, d
    db $ec
    inc e
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$fec6]
    ldh [c], a
    cp $22
    ld a, [$fc26]
    call nz, Call_000_0cf4
    db $ec
    inc e
    cp [hl]
    ld a, d
    jp Jump_000_0302


    xor h
    ld [bc], a
    nop
    nop
    ld h, c
    ld b, c
    ld a, a
    ld b, e
    inc bc
    ld e, a
    ld h, e
    ccf
    ld hl, $02ab
    ld d, $0b
    add d
    add d
    call z, Call_00d_7ccc
    db $fc
    sbc b
    ld a, b
    rst $28
    rra
    xor $1e
    ld b, c
    db $f4
    inc c
    ld b, c
    add sp, $18
    rlca
    sbc b
    ld a, b
    ld a, h
    db $fc
    adc h
    adc h
    ld [bc], a
    ld [bc], a
    add e
    ld bc, $0152
    ld bc, $a501
    ld [bc], a
    ld b, h
    add a
    ld bc, $062e
    ld [hl], a
    ld a, b
    rst $30
    ld hl, sp+$19
    ld e, $0e
    ld [hl+], a
    rrca
    rlca
    inc c
    inc c
    ld [$0008], sp
    jr nz, jr_00d_41c8

jr_00d_41c8:
    ld h, b
    ld b, c
    nop
    ldh [$ff08], a
    nop
    ldh a, [rP1]
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    push bc
    ld [bc], a
    adc a
    ld [$00ff], sp
    ldh a, [rP1]
    ld [hl], b
    nop
    jr nc, jr_00d_41e2

jr_00d_41e2:
    db $10
    ld [hl+], a
    nop
    ld [bc], a
    ld [$0d00], sp

jr_00d_41e9:
    ld b, c
    nop
    rrca
    dec b
    nop
    rra
    nop
    rst $38
    nop
    ld a, a
    ld b, d
    nop
    ccf
    inc bc
    nop
    ld a, a
    nop
    ld h, c
    dec l
    nop
    dec b

Jump_00d_41fe:
    inc bc
    nop
    rrca
    inc bc
    inc a
    rrca
    ld b, c
    di
    inc a
    inc bc
    inc a
    rrca
    rrca
    inc bc
    ret


    ld [bc], a
    ret z

    ld b, c
    jr jr_00d_4212

jr_00d_4212:
    ld b, c
    inc a
    jr jr_00d_4257

    ld h, [hl]
    inc a
    ld b, e
    db $db
    ld h, [hl]
    ld b, c
    ld h, [hl]
    inc a
    ld b, c
    inc a
    jr jr_00d_41e9

    ld [bc], a
    ldh [c], a
    rrca
    jr c, jr_00d_4227

jr_00d_4227:
    ld a, $18
    scf
    ld e, $19
    rrca
    dec de

jr_00d_422e:
    inc c
    rrca
    inc b
    dec c
    ld b, $06
    inc bc
    adc d
    ld bc, $0549
    nop
    ret nz

    ret nz

    jr nc, jr_00d_422e

    ret z

    add e
    nop
    inc bc
    inc b
    or $fa
    cp $fd
    rst $08
    ld b, c
    db $fd
    add a
    rlca
    db $fd
    ld c, a
    cp $3d
    cp $79
    cp $f1
    and h
    nop
    ret c

jr_00d_4257:
    xor c
    inc bc
    rra
    ld [bc], a
    ld h, c
    ld e, a
    ld h, e
    ld b, e
    cp a
    rst $00
    dec b
    ld a, a
    add [hl]
    ld a, a
    add e
    ld a, a
    add b
    xor c
    inc bc
    ld a, [hl-]
    inc bc
    ld hl, sp-$08
    db $fc
    call z, $fe41
    add [hl]
    dec bc
    db $fd
    rst $08
    db $fd
    ld a, a
    db $fd
    rst $38
    db $fd
    ei
    cp $f1
    cp $01
    xor e
    inc bc
    ld e, b
    inc bc
    rla
    add hl, de
    cpl
    inc sp
    ld b, c
    ld e, a
    ld h, a
    add hl, bc
    cp a
    add $bf
    call nz, $c6bf
    cp a
    jp $807f


    xor [hl]
    inc bc
    halt
    ld [bc], a
    ld hl, sp-$0c
    ld a, h
    ld b, c
    ld a, [$413e]
    db $fd
    ld a, e
    dec b
    db $fd
    dec sp
    db $fd
    ld [hl], e
    cp $e1
    adc l
    inc bc
    halt
    inc bc
    inc de
    rra
    cpl
    ld [hl], $41
    ld e, a
    ld l, h
    add hl, bc
    cp a
    adc $bf
    rst $08
    cp a
    adc $bf
    rst $00
    ld a, a
    add e
    adc b
    inc bc
    sub [hl]
    xor d
    inc bc
    dec de
    ld bc, $1817
    ld b, e
    cpl
    jr nc, jr_00d_42d1

    rla
    jr jr_00d_42e3

    inc e

jr_00d_42d1:
    inc c
    adc e
    ld [bc], a
    call nc, Call_000_0006
    inc bc
    inc bc
    ld [$030f], sp
    inc c
    ld b, e
    rla
    jr @+$06

    inc bc
    inc c

jr_00d_42e3:
    ld [$030f], sp
    adc $02
    ret z

    dec b
    inc e
    inc e
    ld [hl+], a
    ld a, $5d
    ld h, e
    ld b, c
    cp l
    jp $ba06


    add $44
    ld a, h
    jr c, jr_00d_4332

    nop
    pop de
    nop
    ld e, a
    nop

Jump_00d_42ff:
    ld b, d
    ld b, e
    ld a, [hl]
    add c

Call_00d_4303:
    inc bc
    inc a
    ld b, d
    nop
    inc a
    rst $08
    ld bc, $0307
    jr jr_00d_432d

    daa
    jr c, @-$7b

    nop
    call z, Call_00d_7f01
    add b
    ld b, [hl]
    rst $38
    nop
    nop
    nop
    xor [hl]
    inc bc
    rla
    dec b
    daa
    jr c, jr_00d_4351

    jr nc, jr_00d_4373

    ld [hl], b
    ld b, d
    ld e, a
    ld h, b
    adc c
    ld bc, $833c
    inc bc

jr_00d_432d:
    ld b, b
    dec b
    inc sp
    inc a
    ld c, a

jr_00d_4332:
    ld [hl], b
    ld e, a
    ld h, b
    ld b, l
    cp a
    ret nz

    ld b, c
    ld e, a
    ld h, b
    ld bc, $203f
    ld b, c
    cpl
    jr nc, @-$79

    inc b
    sub d
    sbc c
    inc b
    ld l, h
    and e
    inc b
    jr z, jr_00d_434e

    sbc d
    and $bd

jr_00d_434e:
    jp $049b


jr_00d_4351:
    ld l, [hl]
    dec h
    nop
    rlca
    ld hl, sp-$08
    ld b, $fe
    ld sp, hl
    rlca
    cp $01
    sub e
    inc b
    ld hl, sp+$07
    rrca
    rrca
    ld [hl], b
    ld a, a
    adc a
    ldh a, [$ff7f]
    add b
    adc a
    inc b
    ld [hl], h
    daa
    ld bc, $0241
    inc bc
    dec b
    dec b

jr_00d_4373:
    ld b, $1b
    inc e
    ld h, a
    ld a, b
    xor c
    dec b
    inc d
    rst $38
    add hl, hl
    nop
    rrca
    jr c, jr_00d_43b9

    ld a, [hl]
    ld b, [hl]
    rst $38
    add c
    pop hl
    sbc a
    rst $28
    sub c
    pop hl
    sbc a
    rst $38
    add c
    ld a, [hl]
    ld b, [hl]
    rlc b
    dec bc
    nop
    ld bc, $0163
    ld [bc], a
    rlca
    dec b
    ld b, $41
    add hl, bc
    ld c, $0f
    dec c
    ld c, $0e
    dec bc
    ld c, $0f
    rlca
    dec b
    ccf
    ccf
    ld a, l
    ld d, l
    ld e, l
    ld l, l
    adc [hl]
    rst $30
    ld b, l
    add b
    rst $38
    ld b, c
    ld b, b
    ld a, a
    add hl, bc
    jr nz, jr_00d_43f6

    db $10
    rra

jr_00d_43b9:
    ld [$060f], sp
    rlca
    ld bc, $f001
    jr nz, jr_00d_43c2

jr_00d_43c2:
    inc e
    inc b
    ld [hl], l
    db $fd
    call $f78e
    adc l
    nop
    ld b, [hl]
    add l
    nop
    ld d, d
    dec b
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    sbc a
    nop
    inc e
    dec b
    ld a, c
    ld l, c
    db $fd
    sbc l
    sbc [hl]
    rst $28
    add l
    nop
    ld c, d
    sbc e
    nop
    adc d
    adc e
    nop
    nop
    dec b
    ld a, a
    ld b, a
    db $fd
    add e
    pop af
    adc a
    sub e
    nop

jr_00d_43f2:
    ld [de], a
    inc hl
    nop
    dec bc

jr_00d_43f6:
    ldh [$ffe0], a
    jr c, jr_00d_43f2

    inc h
    db $fc
    ld [hl-], a
    cp $ea
    xor $09
    rrca
    ld b, d
    dec b
    rlca
    ld c, $27
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    jr @+$01

    inc a
    rst $38
    push bc
    ld bc, $042d
    nop
    rst $38
    nop
    inc a
    jp Jump_000_0044


    rst $38
    rlca
    ld bc, $02ff
    rst $38
    dec b
    cp $1f
    ld hl, sp+$42
    rra
    ldh a, [$ff0d]
    dec e
    or $1b
    rst $38
    db $10
    rst $38
    inc bc
    cp $c1
    rst $38
    ccf
    ccf
    nop
    nop
    adc d
    ld bc, $0220
    nop
    rst $38
    jr @-$7b

    ld bc, $9a30
    ld bc, $1032
    pop af
    ccf
    pop hl
    inc sp
    db $ed
    ld a, $ef
    jr nc, @+$01

    nop
    rst $38
    inc bc
    cp $e1
    rst $38
    rra
    rra
    adc [hl]
    ld bc, $025e
    db $10
    rst $38
    nop
    sbc c
    ld bc, $0870
    dec de
    db $fc
    cpl
    di
    ld a, [hl-]
    rst $20
    ld e, [hl]
    rst $28
    ld [hl], b
    add h
    ld bc, $0532
    db $e3
    cp $1f
    ld e, $01
    ld bc, $0031
    ld bc, $c0c0
    add l
    ld bc, $0110
    jp z, $85ce

    ld bc, $0118
    nop
    nop
    sbc l
    nop
    nop
    ldh [$ff28], a
    ret nz

    ret nz

    ccf
    rst $38
    rrca
    ld hl, sp+$0f
    cp $0f
    pop af
    rlca
    ld sp, hl
    add e
    ld a, l
    add b
    ld a, a
    add h
    ld a, a
    add [hl]
    ld a, e
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld sp, hl
    ld b, $fb
    inc b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ret c

    cp a
    or $0f
    cp $03
    db $fc
    add h
    ld bc, $0f4c
    and $fb
    adc [hl]
    di
    sbc [hl]
    db $e3
    inc e
    rst $38
    ld bc, $e2ff
    ld a, $cc
    ld a, h
    ldh a, [$fff0]
    and e
    nop
    inc h
    nop
    ld a, a
    adc [hl]
    ld [bc], a
    inc hl
    nop
    add a
    add [hl]
    ld [bc], a
    inc sp
    nop
    rlca
    add [hl]
    ld [bc], a
    dec sp
    ld b, $fc
    sbc a
    db $fc
    rlca
    db $fc
    ccf
    ldh a, [rSTAT]
    ccf
    ldh [rIF], a
    rst $38
    add [hl]
    ei
    ld c, $f3
    ld e, $e3
    ld e, $ff
    inc bc
    rst $38
    and $3e
    ret c

    ld a, b
    ldh [$ffa4], a
    nop
    ld e, c
    dec b
    rst $38
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    add a
    ld [bc], a
    jr z, jr_00d_450b

    add [hl]
    ld a, a
    add a

jr_00d_450b:
    ld a, c
    ld b, d
    rlca
    ld hl, sp+$0e
    rlca
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    ld hl, sp-$01
    adc b
    rst $38
    ldh a, [$ff3f]
    and b
    ld a, a
    ret nz

    call nz, Call_00d_4f00
    rrca
    ld b, $fb
    dec c
    di
    rra
    pop hl
    rla
    ld sp, hl
    rrca
    rst $38
    db $ec
    inc a
    ldh a, [$ff30]
    ret nz

    ld b, b
    xor e
    nop
    ld e, d
    ld [$0038], sp
    ld a, [hl]
    jr c, @+$01

    ld a, [hl]
    pop hl
    ld a, [hl]
    rst $28
    jp $f102


    ld bc, $7e7e
    call nz, $ef00
    sbc c
    ld bc, $01de
    ret


    rst $08
    ld b, d
    dec b
    rlca
    add e
    ld bc, $410c
    ldh a, [rNR10]
    inc bc
    ldh [rNR41], a
    ldh [$ffa0], a
    and e
    nop
    jr z, @-$1e

    cpl
    ccf
    rst $38
    rra
    pop af
    ld e, $f2
    adc [hl]
    ld a, [$fc0c]
    ld [$04f8], sp
    db $fc
    ld b, h
    db $fc
    ld h, h
    cp h
    ld [hl], h
    sbc h
    ld h, h
    cp h
    ld b, h
    db $fc
    inc b
    db $fc
    ld [hl-], a
    sbc $77
    sbc c
    rst $30
    add hl, de
    db $e3
    db $fd
    dec c
    di
    dec e
    db $e3
    xor $92
    ldh a, [c]
    adc [hl]
    ld [hl], h
    ld c, h
    ld a, b
    ld e, b
    ld [hl], b
    ld [hl], b
    sub e
    inc bc
    jr nz, jr_00d_459a

    sbc [hl]
    ldh a, [c]
    adc $fa

jr_00d_459a:
    adc h
    add [hl]
    inc bc
    add hl, sp
    inc b
    ld [hl], h
    cp h
    ld a, h
    sbc h
    ld [hl], h
    adc [hl]
    inc bc
    ld b, l
    dec c
    rra
    pop hl
    xor $92
    or $8a
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    jr nc, @+$32

    nop
    nop
    ld [hl+], a
    ld hl, sp+$00
    ld [$0384], sp
    inc h
    inc c
    and b
    ret nz

    ret nz

    ld b, b
    ret nz

    ccf
    rst $38
    ccf
    pop hl
    sbc a
    pop af
    sbc $72
    add l
    inc bc
    ld [hl], $0d
    ld h, h
    db $fc
    ld [hl], h
    sbc h
    ld a, h
    adc h
    ld [hl], h
    sbc h
    ld h, h
    db $fc
    inc b
    db $fc
    inc sp
    rst $18
    add e
    inc bc
    ld c, h
    dec c
    di
    db $fd
    ld c, $f2
    ld e, $e2
    db $ec
    sbc h
    ld hl, sp-$78
    ldh a, [$ff90]
    ld [hl], b
    ld [hl], b
    cpl
    nop
    ld [$e060], sp
    cp b
    ld a, b
    and h
    ld a, h
    or d
    ld a, [hl]
    ld l, d
    add h
    ld bc, $8317
    ld bc, $99fc
    nop
    jr nz, jr_00d_4606

    rlca

jr_00d_4606:
    rlca
    daa
    ld bc, $0241
    inc bc
    ld [de], a
    ld e, $1f
    ld a, h
    ld [hl], a
    db $fc
    and a
    cp b
    rst $38
    sbc b
    rst $20
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    jr c, jr_00d_465e

    rlca
    add h
    ld bc, $83ff
    inc bc
    add b
    inc de
    ld [hl], d
    cp [hl]
    ld b, d
    cp $02
    cp $31
    rst $18
    ld [hl], l
    sbc e
    push af
    dec de
    push hl
    ei
    dec bc
    push af
    ld a, [de]
    and $da
    and [hl]
    ld b, c
    db $ec
    sub h
    ld bc, $c8b8
    adc c
    inc bc
    call c, $0305
    inc bc
    rrca
    ld c, $3f
    jr c, @+$43

    rst $38
    ldh [rTIMA], a
    ccf
    jr c, jr_00d_4661

    ld c, $03
    inc bc
    adc e
    nop
    ld e, $1b
    inc bc
    ld [bc], a
    dec b
    ld b, $7f

jr_00d_465e:
    ld a, h
    rst $38
    add b

jr_00d_4661:
    cp l
    jp $665b


    ccf
    dec h
    rra
    dec d
    dec de
    ld d, $3d
    inc hl
    ccf
    jr nz, jr_00d_46ed

    ld b, e
    ld d, [hl]
    ld l, [hl]
    ld a, b
    ld a, b
    inc hl
    nop
    rla
    add hl, sp
    add hl, sp
    halt
    ld c, a
    ld e, l
    ld h, d
    dec sp
    daa
    daa
    inc a
    rra
    dec de
    cpl
    dec sp
    ld [hl], a
    ld l, h
    ld e, e
    ld h, a
    cp e
    call nz, $becd
    ld [hl], e
    ld [hl], e
    push bc
    inc bc
    pop hl
    inc bc
    ret nc

    or b
    ld d, b
    or b
    ld b, c
    ldh a, [rNR10]
    dec bc
    ld l, b
    sbc b
    or [hl]
    adc $fd
    ld b, e
    ei
    ld b, a
    xor h
    call c, $9070
    ld b, c
    ldh a, [rNR10]
    inc bc
    ld [hl], b
    sub b
    sub b
    ldh a, [$ff85]
    inc bc
    call c, Call_000_1c09
    inc e
    inc hl
    ccf
    ld e, [hl]
    ld h, a
    ld a, e
    ld b, h
    cp a
    pop bc
    ld b, c
    rst $38
    add b
    rlca
    cp a
    pop bc
    ld a, e
    ld b, h
    ld e, [hl]
    ld h, a
    inc hl
    ccf
    and l
    nop
    ld a, [de]
    dec c
    inc c
    inc c
    ld a, [hl-]
    ld [hl], $7a
    ld b, [hl]
    xor $f6
    reti


    ccf
    rst $18
    ld sp, $9efe
    ld b, c
    rst $30
    add hl, de
    inc de
    cp $9e
    rst $18
    ld sp, $3fd9
    xor $f6
    ld a, d
    ld b, [hl]
    ld a, [hl-]
    ld [hl], $0c

jr_00d_46ed:
    inc c
    ret nz

    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    jp $ad03


    add e
    inc bc
    xor d
    ld bc, $a0e0
    add l
    dec b
    ld a, [hl+]
    jp Jump_000_2f05


    inc bc
    ldh [rNR41], a
    and b
    ld h, b
    and e
    nop
    sbc b
    dec bc
    dec c
    dec c
    inc de
    rra
    rla
    dec de
    ld l, $33
    ccf
    jr nz, jr_00d_4752

    ld h, $41
    dec a
    ld [hl+], a
    dec bc
    dec sp
    ld h, $3f
    jr nz, jr_00d_474f

    inc sp
    rla
    dec de
    inc de
    rra
    dec c
    dec c
    add h
    inc b
    ld h, [hl]
    ld a, [bc]
    rrca
    ccf
    dec sp
    cp $e7
    db $fc
    adc a
    ld hl, sp+$1e
    ldh a, [$ff3c]
    ld b, c
    ldh [$ff78], a
    add hl, bc
    ldh a, [$ff3c]
    ld hl, sp+$1e
    db $fc
    adc a
    cp $e7
    ccf
    dec sp
    jp Jump_00d_6305


    rst $38
    rrca
    jr c, jr_00d_478b

    ld a, l
    ld b, [hl]
    rst $38

jr_00d_474f:
    adc d
    cp $87

jr_00d_4752:
    rst $38
    add l
    push af
    adc $78
    ld a, e
    nop
    ld bc, $22e4
    nop
    nop
    ld bc, $0041
    inc bc
    inc de
    ld [bc], a
    ld bc, $0201
    ld bc, $090a
    ld d, $17
    ld [$1d03], sp
    ld b, $0b
    ld c, $03
    inc c
    rla
    inc e
    rlca
    ld b, c
    inc c
    rla
    dec bc
    dec e
    ld d, $3b
    ld h, $36
    dec hl
    dec sp
    dec h
    dec l
    ld [hl-], a
    inc e
    rra
    add e
    nop
    ld c, $89

jr_00d_478b:
    nop
    ld b, b
    ld de, $7f7d
    db $eb
    sbc [hl]
    ld a, [$ba8f]
    rst $08
    db $fd
    sub [hl]
    db $ed
    sub [hl]
    or a
    adc $7f
    ld a, a
    ld bc, $8306
    nop
    ld c, $03
    add hl, sp
    ld a, $59
    ld h, a
    ld b, c
    ld a, [hl]
    ld b, e
    dec b
    ld e, h
    ld [hl], a
    inc a
    daa
    inc d
    rra
    ld b, c
    inc c
    rla
    add hl, bc
    dec bc
    ld b, $06
    dec bc
    dec b
    dec bc
    ld [bc], a
    dec b
    ld bc, $8302
    nop
    ld c, $41
    jr jr_00d_47f5

    add hl, bc
    inc d
    ld l, a
    inc e
    ld h, a
    ld a, [de]
    rst $20
    dec e
    inc bc
    ld e, $01
    ld b, c
    rra
    nop
    adc l
    nop
    ld c, $00
    jr @+$43

    nop
    ld a, [hl]
    ld b, h
    nop
    rst $38
    nop
    nop
    jp c, $ce00

    ld b, c
    ld [bc], a
    nop
    nop
    ld [$0041], sp
    ld c, h
    dec c
    ld [$4842], sp
    ld b, $48
    ld [hl], $7c
    add e

jr_00d_47f5:
    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    ld b, c
    ld b, $f9
    ld b, c
    nop
    rst $38
    dec d
    jp Jump_00d_66bd


    db $db
    inc h
    rst $38
    and l
    ld a, [hl]
    add c
    ld a, [hl]
    inc a
    rst $20
    jr @+$01

    jp $ffff


    inc a
    inc a
    jp Jump_00d_7e00


    ld a, [hl+]
    nop
    ld d, $20
    nop
    ld h, c
    nop
    ld b, b
    nop
    ld l, h
    inc b
    ld [bc], a
    ld [bc], a
    dec [hl]
    ld [hl+], a
    ld b, l
    ld b, $f9
    ld a, $c1
    rst $38
    ld e, $e1
    ld a, a
    add b
    rst $38
    ld b, c
    inc bc
    db $fc
    add hl, de
    nop
    rst $38
    inc b
    ei
    call z, $d8b7
    xor a
    ld d, b
    rst $38
    ld d, [hl]
    ld sp, hl
    ld b, $f9
    ld a, b
    rst $08
    jr nc, @+$01

    pop bc
    rst $38
    cp a
    ld a, [hl]
    ld a, [hl]
    add c
    nop
    ccf
    add a
    ld bc, $0540
    nop
    rst $38
    adc b
    rst $38
    ret nc

    ld a, a
    ld b, c
    db $e3
    inc a
    dec c
    ldh [$ff3f], a

jr_00d_4860:
    db $fc
    daa
    ret c

    ld a, a
    pop bc
    rst $38
    cp [hl]
    ld a, a
    ld a, a
    add b
    nop
    ld a, a
    adc c
    ld bc, $8760
    ld bc, $0648
    ld b, $f9
    ld a, d
    call $ff78
    ld sp, hl
    add [hl]
    ld bc, $3859
    nop
    ld b, $0f
    rra
    jr nz, @+$81

    sbc [hl]
    pop hl
    ld a, a
    adc l
    nop
    daa
    ld b, c
    ld bc, $081e
    ld [bc], a
    dec e
    dec b
    dec de

jr_00d_4892:
    ld a, [$7c07]
    rlca
    ld [hl], h
    ld b, c
    rrca
    jr c, jr_00d_4860

    ld bc, $41b9
    and b
    nop
    inc b
    add b
    add b
    nop
    add b
    jr z, @+$43

    add b
    ld a, b
    rlca
    ret z

jr_00d_48ab:
    or d
    ld l, b
    jp nc, $e038

    jr c, @-$1c

    ld b, d
    jr jr_00d_48ab

    or c
    nop
    ld [hl+], a
    dec c
    ld e, $de
    xor a
    ld [hl], e
    rst $28
    sub c
    ld a, a
    pop bc
    ccf
    pop hl
    ld a, [hl-]
    and $1c
    db $f4
    ld [hl-], a
    nop
    ldh [$ff2c], a
    stop
    jr nc, jr_00d_48cf

jr_00d_48cf:
    inc h
    nop
    call nz, Call_000_2ac4
    xor b
    ld d, [hl]
    add sp, -$6a
    ld l, d
    push de
    inc [hl]
    db $eb
    ld e, $f1
    inc e
    ldh a, [c]
    inc c
    ei
    dec c
    ld a, [$f90e]
    inc a
    ld a, [$c67c]
    cp $a2
    cp $c2
    ld a, [hl]
    jp nz, $e6de

    cp h
    ld a, h
    nop
    ret nz

    nop
    nop
    adc c
    ld [bc], a
    ld b, b
    ld de, $fb0c
    ld c, $f9
    inc c
    ld a, [$fa14]
    jr @-$08

    jr z, @-$0a

    ld d, b
    db $ec
    and b
    ret c

    ret nz

    jr nc, jr_00d_4892

    ld [bc], a
    ld e, h
    inc bc
    ld a, [hl]
    db $fd
    ld a, $e3
    ld b, c
    ld a, a
    pop bc
    dec b
    dec a
    db $e3
    ld a, [hl]
    sbc $2c
    ld a, [$0284]
    ld l, [hl]
    nop

jr_00d_4924:
    db $f4
    adc c
    ld [bc], a
    ld [hl], h
    ld a, [hl-]
    nop
    ld b, $c0
    add b
    ld a, b
    cp $00
    ld hl, sp-$7a
    add h
    ld [bc], a
    dec c
    dec c
    ld bc, $03c0
    ldh [rTAC], a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    cp l
    ld a, [hl]
    jp $ff4a


    nop
    ld bc, $81ff
    add h
    nop
    add $00
    inc h
    add h
    nop
    add $00
    ld [$018b], sp
    rla
    ld b, c
    ld bc, $1700
    inc b
    nop
    ld b, $00
    rla
    inc b
    inc de
    inc b
    inc bc
    dec b
    ld [bc], a
    rlca
    add hl, de
    ld b, $5b
    inc c
    ld [hl], a
    ld c, h
    scf
    jr c, jr_00d_49bf

    jr jr_00d_49a1

    jr jr_00d_4924

    ld [bc], a
    rra
    inc bc
    ld e, $1e
    dec a
    inc hl
    ld b, c
    ld a, a
    ld b, c
    rlca
    ld b, a
    ld a, a
    ld a, a
    ld a, c
    ld c, $1f
    inc c
    rla
    ld b, d
    jr @+$11

    inc bc
    dec de
    rrca
    ld d, $0d
    call nz, Call_00d_4303
    nop
    jr @+$44

    rra
    db $10
    dec b
    ld e, $11
    dec d
    dec de
    ld c, $0e
    inc hl
    nop
    rlca

jr_00d_49a1:
    or b
    rst $08
    ld e, a
    rst $38
    adc l
    cp $f2
    rst $38
    ld b, c
    ld a, [$06fd]
    ld hl, sp-$01
    ret z

    rst $38
    ret nc

    rst $38
    ld h, b
    add e
    nop
    add $8a
    ld bc, $1057
    dec bc
    db $f4
    db $db
    xor h

jr_00d_49bf:
    ldh a, [$ff9f]
    and b
    rst $38
    xor h
    di
    inc b
    ei
    ldh a, [$ff9f]
    ld h, b
    rst $38
    nop
    adc h
    inc bc
    ld [hl], e
    add [hl]
    ld [bc], a
    dec bc
    inc d
    ld b, b
    nop
    nop
    ld hl, sp+$04
    nop
    ld hl, sp-$0e
    dec c
    ld hl, sp+$06
    db $fc
    inc bc
    add b
    ld [hl], b
    ret nz

    jr jr_00d_49e5

jr_00d_49e5:
    ld b, b
    ldh [rNR32], a
    add e
    ld [bc], a
    or [hl]
    inc bc
    ld a, a
    ld hl, sp-$4a
    call z, $fb41
    add [hl]
    ldh [rNR44], a
    sbc a
    db $e4
    cp $99
    ld l, a
    ld hl, sp+$0e
    ld sp, hl
    rla
    ld hl, sp+$1c
    di
    ccf
    ldh [rSVBK], a
    rst $08
    db $fc
    add e
    ret nz

    jr c, jr_00d_4a0a

jr_00d_4a0a:
    rst $38
    nop
    ldh [$ff08], a
    rrca
    dec e
    ld b, $37
    ld a, [bc]
    jr c, @+$09

    dec de
    dec b
    ld bc, $df02
    nop
    ld [hl], $03
    ld h, [hl]
    add c
    ld h, [hl]
    jp $c342


    add c
    inc b
    jp Jump_00d_7ea5


    jp $843c


    nop
    add $17
    add h
    nop
    add h
    ld a, [bc]
    adc [hl]
    ld d, h
    cp $8c
    halt
    db $fc
    and $1c
    ld [$0cfe], sp
    ld hl, sp+$18
    db $f4
    jr nc, @-$16

    ldh [$ffd0], a
    ld b, b
    and b
    and a
    nop
    ld c, $07
    add hl, bc
    rst $38
    ld l, c
    sbc a
    ld bc, $1eff
    di
    ld b, c
    sbc a
    cp $03
    xor [hl]
    db $dd
    sbc h
    db $e3
    ld b, c
    add b
    rst $38
    ld d, $e0
    rst $38
    rst $18
    cp a
    rra
    jr nz, jr_00d_4aa3

    ld [hl+], a
    inc a
    inc h
    jr c, jr_00d_4aa2

jr_00d_4a6a:
    add hl, sp
    rst $38
    pop hl
    rra
    inc de
    rst $38
    ld a, [hl+]
    rst $38
    xor e
    cp $a4
    ld b, c
    rst $38
    add b
    nop
    rst $38
    adc c
    inc b
    ld d, b
    dec d
    rra
    ld de, $090f
    rlca
    rlca
    ret nz

    jr nz, jr_00d_4ab7

    ret z

    ld b, b
    add b
    add b
    ld [bc], a
    add d
    nop
    add d
    ld bc, $8245
    add hl, sp
    add $41
    ld bc, $17fe
    ld a, [bc]
    db $fd
    ld h, d
    db $fc
    ld h, h
    ld a, [$f408]
    jr nc, jr_00d_4a6a

jr_00d_4aa2:
    ret nz

jr_00d_4aa3:
    jr nz, jr_00d_4aa8

    inc bc
    inc c
    rrca

jr_00d_4aa8:
    rla
    jr jr_00d_4ada

    jr nc, jr_00d_4b0c

    ld h, b
    ld a, a
    ld b, b
    ld b, e
    cp a
    ret nz

    dec bc
    ld a, a
    ld b, b
    ld e, a

jr_00d_4ab7:
    ld h, b
    cpl
    jr nc, jr_00d_4ad2

    jr jr_00d_4ac9

    rrca
    inc bc
    inc bc
    and e
    inc b
    add b
    dec d
    db $10
    cpl
    ld h, $5f
    halt

jr_00d_4ac9:
    ccf
    ld [hl], b
    adc a
    add b
    ld a, a
    add d
    ld a, a
    and h
    ld a, a

jr_00d_4ad2:
    adc h
    ld [hl], a
    ld e, [hl]
    xor a
    ld d, l
    dec sp
    jr z, @+$59

jr_00d_4ada:
    and l
    inc b
    sbc d
    sub l
    nop
    ld e, $62
    ld bc, $0506
    ld b, $0b
    inc c
    rlca
    inc b
    rra
    ld b, c
    jr jr_00d_4afc

    inc bc
    add hl, de
    rrca
    dec de
    ld c, $41
    rra
    dec c
    inc de
    rlca
    ld e, $0f
    ld b, $07
    ld a, [bc]

jr_00d_4afc:
    inc bc
    dec b
    rlca
    inc b
    ld c, $0b

jr_00d_4b02:
    rra
    ld de, $203f
    ld e, [hl]
    ld h, c
    ld a, a
    ld a, a
    jr nc, jr_00d_4b0c

jr_00d_4b0c:
    ld e, $89
    nop
    nop
    inc b
    ld hl, $0001
    dec c
    add h
    cpl
    ld a, [bc]
    rlca
    inc b
    rra
    and b
    ld bc, $0401
    ld b, $1e
    ld a, [de]
    ld l, h
    ld [hl], h
    or h
    call z, $08f8
    add sp, $18
    ldh a, [rNR10]
    ld b, c
    ret nc

    jr nc, @+$07

    jr nc, jr_00d_4b02

    ldh a, [$fff0]
    ld [$8508], sp
    nop
    cp d
    ld b, l
    jr jr_00d_4b4b

    ld e, $04
    rra
    inc c
    rlca
    ld b, $0b
    dec bc
    dec c
    rra
    inc d
    ld a, $23
    ld a, l
    ld b, e

jr_00d_4b4b:
    cp l
    jp $83fd


    cp $fe
    nop
    ret nz

    db $fc
    nop
    ldh a, [$ff08]
    db $fc
    inc bc
    db $fc
    ld [bc], a
    rst $38
    and e
    ld bc, $837e
    dec b
    adc e
    inc c
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    ret nz

    inc a
    nop
    cp $86
    dec b
    inc b
    nop
    ld c, $41
    rra
    inc c
    dec c
    rlca
    inc e
    rrca
    ld [bc], a
    rlca
    dec bc
    inc bc
    dec b
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$1f41], sp
    stop
    rrca
    jp nc, $b901

    dec c
    ccf
    ld b, b
    cp a
    ld a, a
    adc $f1
    nop
    rst $38
    ld [$1cf7], sp
    ei
    dec c
    rst $38
    add e
    inc b
    ld b, b
    add hl, bc
    add c
    rst $38
    add d
    rst $38
    rst $28
    db $f4
    db $f4
    dec sp
    ld hl, sp+$4f
    ld b, c
    ld hl, sp+$0f
    inc c
    ldh a, [$ff1f]
    ldh [rIE], a
    cp a
    ld a, a
    ccf
    ld b, b
    add a
    add a
    add l

jr_00d_4bbb:
    add [hl]
    inc bc
    xor h
    ld [bc], a
    sbc l
    add hl, bc
    ld a, [hl]
    add c
    ld a, [hl]
    rst $38
    add e
    rst $38
    rlca
    db $fc
    inc c
    ld a, [$0c41]
    ld hl, sp+$04
    inc c
    ld a, [$fc07]
    inc bc
    sub b
    ld [bc], a
    db $db
    inc bc
    ld a, [hl]
    rst $38
    ld a, [hl]
    add c
    dec hl
    nop
    ld b, c
    add hl, bc
    rst $38
    add hl, bc
    ld h, c
    sbc a
    ld a, $ff
    dec sp
    db $fc
    ld a, h
    or e
    jr nc, jr_00d_4bbb

    ld b, d
    nop
    rst $38
    nop
    ret nz

    add h
    dec b
    push af
    inc bc
    rlca
    rlca
    ld [bc], a
    inc bc
    jp $f604


    dec b
    rst $38
    rst $38
    dec sp
    inc a
    rlca
    ld b, $d1
    inc b
    or $85
    ld b, $68
    dec c
    add hl, bc
    rst $38
    jp hl


    sbc a
    add c
    rst $38
    ldh [c], a
    ld a, a

jr_00d_4c12:
    rst $38
    sub h
    db $f4
    dec de
    ldh a, [$ff1f]
    and l
    ld b, $1c
    dec bc
    ret nz

    rst $38
    rst $38
    ld a, a
    cp a
    ld b, b
    rst $38
    ccf

jr_00d_4c24:
    or e
    ld a, h
    rst $18
    rst $18
    or e
    nop
    jr nz, jr_00d_4c37

    ld b, b
    and b
    ldh [$ffd0], a
    jr nc, jr_00d_4c12

    ld a, b
    ldh a, [$fffc]
    add b
    add b

jr_00d_4c37:
    ld b, b
    sub l
    inc b
    jr nz, jr_00d_4c45

    ld d, d
    or d
    ld a, a
    db $ed
    cp a
    pop bc
    cp $02
    db $fc

jr_00d_4c45:
    db $fc
    or b
    nop
    dec h
    dec c
    add b
    add b
    nop
    stop
    jr c, jr_00d_4c61

    jr nc, jr_00d_4c6f

    inc a
    ld e, b
    db $ec
    jr c, jr_00d_4c24

    ld b, d
    ld hl, sp+$0c
    ld [bc], a
    ld hl, sp+$10
    db $fc
    and e
    dec b

jr_00d_4c61:
    ld l, d
    dec b
    ld d, b
    ldh [$ffa0], a
    ret nz

    add b
    ld b, b
    dec l
    nop
    rrca
    jr nc, jr_00d_4c9e

    ld [hl], b

jr_00d_4c6f:
    ld d, b
    cp $9e
    rst $28
    sub c
    rst $28
    ld de, $01ff

jr_00d_4c78:
    cp [hl]
    jp nz, Jump_00d_7c7c

    inc sp
    nop
    add hl, bc
    ldh [$ffe0], a
    ret c

    jr c, jr_00d_4c78

    adc h
    ld a, d
    ld b, [hl]
    dec a
    inc hl
    ld b, c
    ccf
    ld hl, $3d07
    inc hl
    ld a, d
    ld b, [hl]
    ld [hl], h
    ld c, h
    ld hl, sp-$68
    push bc
    rlca
    ld b, l
    sub l
    inc b
    jr nz, @+$0b

    ld d, b
    or b

jr_00d_4c9e:
    ld a, b
    add sp, -$48
    ret z

    ldh a, [rNR10]
    ldh [$ffe0], a
    rst $38
    daa
    nop
    rlca
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    ld b, c
    jr nz, jr_00d_4cf4

    add hl, bc
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    ld a, b
    ld l, a
    ccf
    daa
    ccf
    jr nz, jr_00d_4d04

    rra
    db $10
    ld b, c
    ccf
    jr nz, @+$43

    ld a, a
    ld b, b
    dec bc
    ld e, a
    ld h, b
    ccf
    jr nz, jr_00d_4cfe

    jr nc, jr_00d_4ce8

    jr @+$0f

    ld c, $03
    inc bc
    dec hl
    nop
    dec c
    rlca
    rlca
    jr jr_00d_4cfc

    db $10
    rra
    jr jr_00d_4d00

    ld [$0e0f], sp
    rrca
    ld bc, $8901

jr_00d_4ce8:
    nop
    nop
    ld b, c
    inc bc
    ld [bc], a
    ld bc, $3c3f
    add l
    nop
    ld h, $9b

jr_00d_4cf4:
    nop
    ld a, [hl+]
    push bc
    nop
    ld d, a
    ld b, c
    ld [bc], a
    inc bc

jr_00d_4cfc:
    ld b, c
    inc b

jr_00d_4cfe:
    rlca
    ld b, c

jr_00d_4d00:
    ld [$410f], sp
    db $10

jr_00d_4d04:
    rra
    dec b
    ld de, $211e
    ld a, $23
    ld a, $41
    ld hl, $413f
    ld b, b
    ld a, a
    inc c
    ld b, h
    ld a, a
    ld b, a
    ld a, e
    ld b, a
    ld a, b
    rst $20
    ld hl, sp+$27
    ld hl, sp+$13
    db $fc
    inc c
    ld [hl+], a
    rst $38
    add [hl]
    nop
    ld [bc], a
    nop
    cp $45
    ld bc, $41ff
    ld [bc], a
    rst $38
    add hl, bc
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    ret nz

    rst $00
    nop
    rlca
    ld b, c
    nop
    rrca
    sub l
    nop
    ret nz

    inc bc
    add hl, sp
    cp $c1
    ret nz

    ld b, c
    ld [bc], a
    nop
    nop
    inc b
    add h
    nop
    ld b, e
    add hl, bc
    jr c, jr_00d_4d8d

    ret nz

    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $28
    push bc
    ld bc, $410c
    nop
    rst $38
    dec bc
    ld h, b
    rst $38
    ldh a, [$ff9f]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    db $fc
    rlca
    ld b, d
    ld hl, sp+$0f
    add hl, bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ld b, c
    ldh a, [$ff1f]
    inc bc
    ld hl, sp-$01
    rrca
    rrca
    dec h
    nop
    ld bc, $1f1f
    and e
    ld bc, $032b
    inc c
    rst $38
    ld e, $f7
    push bc

jr_00d_4d8d:
    ld bc, $004a
    nop
    and h
    nop
    jp $e007


    rst $38
    jr nz, jr_00d_4dd8

    ret nc

    rst $28
    ld a, h
    add e
    adc [hl]
    ld bc, $4220
    nop
    rst $38
    inc b
    ld bc, $03fe
    cp $ff
    ld b, c
    inc b
    rlca
    ld a, [bc]
    inc bc
    inc bc
    ld bc, $0f01
    rrca
    jr nc, jr_00d_4df4

    ld b, b
    ld a, a
    add b
    add e
    ld bc, $0a17
    rst $18
    ldh [rIE], a
    ld b, b
    rst $38
    ld bc, $67ff
    cp $ff
    sbc b
    ld b, [hl]
    rst $38
    nop
    inc bc
    rst $38

jr_00d_4dcc:
    add b
    rst $38
    add b
    adc $01
    xor b
    and a
    nop
    cp c
    ld b, c
    ld b, b
    ret nz

jr_00d_4dd8:
    inc b
    ld e, h
    add b
    cp h
    nop
    inc a
    ld b, c
    nop
    ld a, b
    ld b, c
    nop
    ldh a, [rSTAT]
    nop
    ldh [rSTAT], a
    nop
    ret nz

    ld b, c
    nop
    add b
    add e
    ld bc, $41be
    ret z

    ld b, b
    inc de

jr_00d_4df4:
    or b
    and b
    ret c

    add sp, -$58
    ret c

    jr nc, jr_00d_4dcc

    ld d, b
    or b
    ld h, b
    and b
    add b
    ld h, b
    add b
    ld b, b
    nop
    ret nz

    nop
    nop
    ret


    ld bc, $0441
    rrca
    db $fc
    inc bc
    cp $01
    ld c, [hl]
    rst $38
    nop
    ld b, c
    rst $38
    add b
    inc bc
    ld a, a
    ret nz

    ccf
    ldh a, [$ffc8]
    nop
    push de
    inc bc
    rlca
    rst $38
    db $fc
    db $fc
    and a
    nop
    add h
    ld b, d
    ret nz

    ld b, b
    ld bc, $8080
    and a
    nop
    add [hl]
    and l
    nop
    ld a, [bc]
    ld bc, $f808
    and e
    ld bc, $8d3a
    ld [bc], a
    jr nz, jr_00d_4e41

    ret nz

    ccf
    cp h

jr_00d_4e40:
    ld a, a

jr_00d_4e41:
    jp nz, Jump_000_0086

    jp Jump_000_0603


    cp $38
    ld hl, sp-$5d
    nop
    ld a, b
    sub l
    nop
    ld a, d
    add a
    nop
    ld d, d
    inc hl
    ld bc, $0203
    inc bc
    inc bc
    ld [bc], a
    ld h, d
    dec b
    ld b, $04
    dec bc
    inc c
    ld c, $09
    inc d
    dec de
    add e
    nop
    sbc h
    dec b
    jr z, jr_00d_4ea9

    ld e, h
    ld a, a
    ld e, [hl]
    ld a, a
    ld b, c
    cp a
    rst $38
    sub l
    nop
    ret nz

    ldh [rNR42], a
    dec [hl]
    or $c5
    add $0a
    dec c
    dec bc
    dec c
    dec b
    inc bc
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld h, d
    ld a, [hl]
    ld h, d
    ld e, [hl]
    ld [hl], d
    ld c, [hl]
    ld a, d

jr_00d_4e8f:
    ld b, [hl]

jr_00d_4e90:
    inc a
    inc h
    inc [hl]
    inc l
    inc h
    inc a
    inc [hl]
    inc a
    daa
    jr jr_00d_4e40

    ld [bc], a
    sbc [hl]
    and e
    ld bc, $0980

jr_00d_4ea1:
    ld hl, sp-$78
    ld a, b
    ret z

    jr c, jr_00d_4e8f

    jr jr_00d_4ea1

jr_00d_4ea9:
    ld e, $fe
    ld b, c
    rrca
    ld sp, hl
    rlca
    rlca
    db $fd
    ld b, $fe
    inc bc
    rst $38
    inc bc
    cp $95
    nop
    ret nz

    dec b
    rra
    rst $38
    ldh [$ffe0], a
    nop
    nop
    adc c
    ld bc, $133c
    ld e, $e1
    ccf
    ret nz

    ld a, a
    adc h
    ld a, a
    sub [hl]
    ld a, a
    sbc [hl]
    ld a, a
    adc h
    ccf
    ret nz

    sbc [hl]
    pop hl
    add d
    db $fd
    ldh [c], a
    db $fd
    add l
    ld bc, $035a
    rrca
    rrca
    rst $38
    ldh a, [$ff85]
    ld [bc], a
    inc b
    ld b, e
    add b
    ld a, a
    adc l
    ld [bc], a
    ld a, [bc]
    cpl
    nop
    inc hl
    jr jr_00d_4efa

    inc l
    inc [hl]
    inc a
    inc h
    ld d, d
    ld l, [hl]
    ld b, [hl]
    ld a, d
    or c
    rst $38
    ld sp, hl

jr_00d_4efa:
    rst $38
    xor c
    ld [bc], a
    and b
    dec d
    and b

Call_00d_4f00:
    ld h, b
    db $10
    ldh a, [rSVBK]
    sub b
    ret z

    jr c, jr_00d_4e90

    ld a, b
    inc c
    db $fc
    inc e
    db $fc
    ld a, [de]
    cp $3e
    cp $37
    rst $38
    cp a
    rst $38
    add l
    ld bc, $02e0
    sub h
    add b
    inc d
    ld b, c
    nop
    jr z, jr_00d_4f61

    nop
    ld b, b
    nop
    add b
    ld b, c
    add b
    ld b, b
    nop
    nop
    add $03
    ld b, $a4
    ld bc, $0cfd
    adc h
    db $fc
    add d
    adc h
    ldh a, [c]
    ld b, d
    ld a, l
    ld a, b
    ld a, a
    inc a
    ccf
    ld c, $0f
    cpl
    nop
    inc hl
    inc a
    ld b, c
    ld e, d
    ld h, [hl]
    ld b, c
    cp l
    jp $ff43


    add c
    ld b, c
    cp l
    jp Jump_00d_5a41


    ld h, [hl]
    jp Jump_000_0304


    adc e
    inc bc
    db $fc
    ld b, e
    ld a, [hl]
    ld b, d
    adc e
    inc b
    jr @-$7a

    inc bc
    adc h
    dec b
    inc a

jr_00d_4f61:
    jr @+$3e

    inc a
    ld h, [hl]
    inc a
    adc b
    inc b
    dec hl
    ld b, c
    inc a
    ld h, [hl]
    inc bc
    jr jr_00d_4fab

    jr jr_00d_4fad

    or c
    inc bc
    add h
    add e
    ld [bc], a
    ldh a, [c]
    ld bc, $3c24
    jp $9303


    db $e4
    dec h
    nop
    ld bc, $0101
    rst $38
    ldh [$ff7f], a
    inc bc
    inc bc
    rrca
    ld c, $1b
    rla
    scf
    jr c, jr_00d_4ffa

    ld e, h
    ld [hl], a
    ld c, a
    ei
    add a
    rst $30
    adc h
    db $db
    cp [hl]
    rst $38
    pop hl
    ld e, e
    ld a, h
    ld e, a
    ld h, h
    ld l, $33
    rla
    add hl, de
    dec c
    ld c, $03
    inc bc
    dec sp
    dec sp
    ld d, a
    ld l, h
    sbc d

jr_00d_4fab:
    rst $20
    db $ed

jr_00d_4fad:
    di
    ld e, e
    ld a, h
    or $8f
    rst $38
    add a
    cp e
    rst $18
    cp d
    db $fd
    ld l, l
    ld e, [hl]
    ld a, a
    ld b, e
    rst $30
    ld hl, sp-$23
    cp [hl]
    or a
    rst $08
    ld l, l
    ld [hl], e
    ld e, $1e
    ret nz

    ret nz

    ldh a, [$ff30]
    add sp, -$68
    ld a, h
    db $fc
    ldh a, [c]
    ld c, $7a
    add [hl]
    rst $38
    rst $38
    db $fd
    db $db
    db $fd
    ld [hl], e
    rst $38
    rlca
    adc d
    cp $72
    cp $e4
    inc e
    adc b
    ld hl, sp+$70
    ldh a, [$ffc0]
    ret nz

    sbc h
    sbc h
    ld l, d
    or $d9
    ccf
    push de
    rst $28
    ld a, l
    ei
    ld a, [$fc06]
    db $fc
    sbc $ee
    db $fd
    rst $38
    ld a, a
    db $fd

jr_00d_4ffa:
    db $dd
    dec sp
    ld a, [$bdc6]
    ld a, a
    ld a, l
    add e
    jp c, Jump_000_3ce6

    inc a
    rst $38

    db $0f

    INCBIN "gfx/image_00d_5008.2bpp"

    db $42

    cp $02

    db $e0, $21

    INCBIN "gfx/image_00d_501d.2bpp"

    ld a, a
    ld b, b

    db $a3, $00, $18, $03

    rra
    rra
    inc d
    inc d

    db $23

    nop

    db $05

    ld b, b
    ld b, b
    or b
    ld a, b
    db $f4
    inc c

    db $84, $00, $08, $00

    rla

    db $87, $00, $10, $01

    ld [hl], h
    adc h

    db $85, $00, $1a, $01

    nop
    nop

    db $87, $00, $1e, $13

    INCBIN "gfx/image_00d_5065.2bpp"

    rla
    rra
    ccf
    ccf

    db $a3, $00, $3e, $05

    inc bc
    inc bc
    dec c
    ld c, $17
    db $18

    db $a4, $00, $48, $12

    INCBIN "gfx/image_00d_5087.2bpp"

    rra
    rlca
    rlca

    db $8b, $00, $82, $08

    cp a
    ret z

    cp a
    call c, $b6ff
    rst $38
    db $e3
    cp a

    db $8a, $00, $95, $ff, $09

    ldh [$ffe0], a
    sbc [hl]
    cp $81
    rst $38
    add b
    rst $38
    ld d, b
    ld a, a

    db $41

    jr nz, jr_00d_50f8

    db $01

    ld b, b
    ld a, a

    db $41

    ld b, [hl]
    ld a, c

    db $41

    ld b, b
    ld a, a

    db $07

    jr nz, jr_00d_5104

    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc

    db $25

    nop

    db $03

    rrca
    rrca
    db $10
    rra

    db $83, $00, $0c, $03

    sub b
    rst $38
    ldh [rIE], a

    db $87, $00, $10, $83, $00, $16, $01

    rra
    rra

    db $f0, $3f, $00, $00, $04

    ld c, $0e
    ld [hl-], a
    ld a, $c2

    db $a4, $00, $09, $41

    sub d
    db $fe

    db $05

    sub c
    rst $38
    rlca
    ld sp, hl

jr_00d_50f8:
    rst $30
    ld sp, hl

    db $41

    pop af

jr_00d_50fc:
    sbc a

    db $07

    ld h, d
    cp $04
    db $fc
    jr jr_00d_50fc

jr_00d_5104:
    ldh [$ffe0], a

    db $25

    nop

    db $10

    INCBIN "gfx/image_00d_5109.2bpp"

    pop af

    db $41

    rst $38
    db $01

    db $13

    INCBIN "gfx/image_00d_511e.2bpp"

    adc c
    rst $38
    rst $38
    db $01

    db $22

    rst $38

    db $08

    cp $ea
    cp $fe
    cp [hl]
    cp $ff
    db $eb
    ld a, l

    db $84, $00, $bb, $8b, $00, $a0, $13

    INCBIN "gfx/image_00d_5145.2bpp"

    ld b, $fe
    ld hl, sp-$08

    db $ff

    rra
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
    daa
    nop
    dec de
    jr c, jr_00d_51b8

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
    ld a, $41
    rst $00
    ld a, h
    inc bc
    add e
    cp $81
    rst $38
    ld b, c
    adc h
    di
    rrca

jr_00d_51a6:
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
    jr jr_00d_51a6

    inc a
    rst $08
    rst $08
    cpl
    nop

jr_00d_51b8:
    dec b
    inc bc
    inc bc
    dec b
    ld b, $0b
    dec c
    ld b, c
    ld c, $0b
    dec d
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
    and e
    nop
    ld d, b
    dec bc
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
    add e
    nop
    ld [hl], b
    inc de
    rlca
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
    inc hl
    ld bc, $0029
    dec b
    inc e
    inc e
    ld a, [hl-]
    ld h, $7d
    ld b, e
    ld b, c
    ld a, a
    ld b, c
    ldh [rNR44], a
    db $dd
    db $e3
    cp [hl]
    ld [hl], d
    cp $ce
    ccf
    di
    dec bc
    db $fd
    rlca
    rst $38
    dec a
    rst $38
    jp c, $8066

    add b
    db $fc
    ld a, h
    db $e3
    ccf
    ld hl, sp+$3f
    add $7d
    add e
    cp $83
    ld a, a
    ld bc, $81ff
    rst $38
    pop bc
    ld a, a
    add e
    nop
    ld d, h
    dec e
    ei
    rlca
    rst $30
    rrca
    call c, $e03c
    ldh [$ff7d], a
    ld a, l
    add e
    rst $38
    dec c
    di
    dec b
    ei
    ld bc, $03ff
    cp $0f
    db $fc
    dec a
    di
    rst $30
    rst $08
    rst $38
    ld a, $c7
    cp $41
    cp e
    add $e0
    ld hl, $c7ba
    rst $00
    rst $38
    cp a
    ld a, h
    db $ec
    rst $18
    cp $27
    rst $38
    inc de
    db $fd
    inc de
    rst $30

jr_00d_526b:
    add hl, de
    rst $28
    add hl, sp
    rst $08
    ld sp, hl
    ld c, l
    ei
    ld d, [hl]
    ei
    rst $38
    ldh a, [c]
    ld l, l
    sbc [hl]
    ld a, [$fd07]
    inc bc
    rst $38
    rst $38
    inc hl
    nop
    rla
    ei
    ei
    rlca
    cp $1b
    rst $20
    add hl, bc
    rst $30
    ld bc, $07ff
    cp $1f
    ld hl, sp+$7b
    rst $20
    rst $28
    sbc [hl]
    rst $38
    ld a, [hl]
    adc a
    cp $77
    adc [hl]
    ld b, c
    ld [hl], a
    adc a
    ld b, $cf
    db $fc
    cp a
    ld a, b
    add b
    add b
    ld b, b
    and e
    nop
    and c
    ldh [rNR43], a
    jr nz, jr_00d_526b

    ret nz

    ld h, b
    ldh [$ffbc], a
    ld a, h
    or $3a
    xor $b2
    db $fc
    inc h
    cp b
    ld l, b
    ld [hl], b
    ret nc

    ldh [$ffa0], a
    and b
    ld h, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld [hl], a
    adc a
    ret z

    scf
    adc b
    ld [hl], a
    sbc b
    ld h, a
    ld [hl], b
    adc a
    ld b, d
    nop
    rst $38
    add hl, bc
    ret nz

    rst $38
    pop af
    ccf
    rst $38
    adc [hl]
    ld a, a
    ld h, c
    ld e, $1e
    add a
    nop
    ret nz

    ld bc, $233f
    ld b, c
    ld a, a
    ld b, c
    inc b
    ld a, [hl]
    ld b, e
    inc a
    daa
    jr jr_00d_532b

    rra
    db $10
    ld [de], a
    rra
    inc de
    rra
    rrca
    inc c
    ccf
    dec sp
    ld a, a
    ld c, a
    ld e, e
    ld h, a
    ld l, [hl]
    ld [hl], c
    sbc e
    db $fc
    add a
    rst $38
    add e
    cp $41
    ld b, a
    ld a, h
    rrca
    daa
    inc a
    ld b, a
    ld a, [hl]
    ld b, a
    ld a, a
    adc [hl]
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    add c
    rst $38
    ld b, [hl]
    ld a, a
    and e
    nop
    db $fc
    inc hl
    nop
    inc bc
    jr nc, @+$32

    ld c, b
    ld a, b
    ld b, c
    add h
    db $fc
    ld b, $82
    cp $02
    cp $61
    rst $38
    pop af
    ld b, c

jr_00d_532a:
    rst $38

jr_00d_532b:
    ld sp, hl
    ld a, [bc]
    adc a
    rst $38
    rlca
    cp $06
    db $fc
    inc b
    ld hl, sp-$78
    ldh a, [$fff0]
    and e
    nop
    ld l, [hl]
    ldh [rNR51], a
    ldh [rNR41], a
    ret nc

    jr nc, jr_00d_532a

    jr @-$06

    ld [$0cf4], sp
    ld e, h
    db $e4
    db $fc
    db $fc
    ldh a, [$ff30]
    ldh a, [rNR10]
    ld hl, sp+$18
    ld hl, sp-$08
    cp $1e
    rst $38
    ld sp, $c1ff
    rst $28
    rra
    ld a, [$fa76]
    ld b, $76
    adc [hl]
    cp $fa
    ld b, c
    rst $38
    ld de, $1e0d
    ldh a, [c]
    inc e
    db $fc
    db $10
    ldh a, [$fffc]
    inc a
    xor $72
    rst $38
    pop bc
    cp a
    pop bc
    add l
    ld bc, $833a
    ld [bc], a
    nop
    ld b, c
    ldh a, [rNR10]
    inc bc
    ld hl, sp+$08
    add sp, $18
    ld [hl+], a
    ldh a, [rNR30]
    jr nc, @-$06

jr_00d_5388:
    jr jr_00d_5388

    cp $fd
    dec de
    rst $38
    ld sp, $c6fa
    db $fc
    inc e
    and b
    ld h, b
    ret nz

    ret nz

    ldh a, [$ff30]
    db $fc
    inc c
    ld a, [$bfc6]
    ld a, a
    rst $18
    ld sp, $0295
    ld a, [hl+]
    ld [bc], a
    rst $30
    adc a
    ld a, b
    ld b, e
    rst $38
    nop
    ld bc, $40ff
    ld b, c
    rst $38
    add b
    ld [de], a
    rst $38
    add c
    rst $38
    jp $fd7f


    cp $5f
    ld h, b
    scf
    jr c, jr_00d_53cb

    ld c, $03
    inc bc
    jr c, @+$3a

    ld a, a
    ld b, a
    ld b, c
    cp $83
    rrca
    db $fc
    add a

jr_00d_53cb:
    ld a, b
    ld c, a
    jr nc, jr_00d_540e

    jr nz, jr_00d_5410

    ld hl, $273f
    ld a, $1f
    add hl, de
    ccf
    scf
    add a
    ld bc, $17b8
    ei
    ei
    rrca
    db $fc
    rlca
    db $fc
    ld h, a
    sbc h
    cpl
    rst $18
    rla
    ld hl, sp+$2f
    ldh a, [$ff7f]
    ldh [$ffbf], a
    rst $28
    rst $38
    ld h, b
    rst $28
    ldh a, [$fff7]
    adc b
    ld b, c
    rst $38
    adc a
    ld [bc], a
    rst $38
    cp $ff
    and h
    nop
    rra
    ld bc, $0f0f
    and e
    ld [bc], a
    ld b, $03
    rra
    inc de
    inc e
    rla
    ld b, c
    ld [$410f], sp

jr_00d_540e:
    db $10
    rra

jr_00d_5410:
    ld b, c
    ld [$030f], sp
    inc b
    rlca
    ld [bc], a
    inc bc
    add a
    nop
    cp d
    dec b
    db $10
    db $10
    ccf
    cpl
    ld a, a
    ld c, [hl]
    ld b, c
    rst $38
    adc d
    rrca
    cp a
    jp z, $eaff

    cp a
    db $e4
    ld e, a
    ld [hl], a
    rst $38
    or a
    rst $28
    sbc a
    cp $c1

jr_00d_5434:
    cp a
    db $fc
    inc hl
    nop
    add hl, bc
    ld hl, sp-$08
    ld b, [hl]
    cp [hl]
    pop af
    rrca
    ldh [$ff1f], a
    ret nz

    ccf
    ld b, c
    add b
    ld a, a
    ld c, h
    nop
    rst $38
    ld bc, $f00f
    ld b, e
    rst $38
    nop
    dec b
    ld sp, hl
    rlca
    ld c, $fe
    ldh a, [$fff0]
    dec h
    nop

jr_00d_5458:
    dec c
    ld h, e
    ld h, e
    db $fc
    sbc a
    pop hl
    cp a
    and $bf
    ld hl, sp-$61
    ld [hl], b
    ld e, a
    ld h, c
    ld a, a
    jp $b002


    dec b
    db $10
    rra
    inc e
    rra
    rrca
    dec bc
    and e
    ld bc, $0966
    nop
    nop
    ldh [$ffe0], a
    ld a, [hl]
    cp $f6
    sbc d
    db $fc
    adc h
    ld b, c
    ld hl, sp-$78
    inc bc
    ldh a, [$ff90]
    ldh [$ffe0], a
    and e
    nop
    cp d
    add l
    ld bc, $4160
    ret nc

    jr nc, jr_00d_5434

    ld bc, $0bda
    ldh [$ffe0], a
    ld a, b
    ret c

    inc a
    db $e4
    inc a
    db $fc
    ld a, b
    ret z

    ld a, h
    call nz, $fc41
    add h
    add hl, bc
    cp [hl]
    jp z, $f9ff

    add a
    add h
    jp $e142


    ld hl, $0183
    ld h, [hl]
    rla
    rrca
    rrca
    db $10
    rra
    jr z, jr_00d_54f7

    inc a
    scf
    ld a, $3b
    ld a, [hl]
    ld c, e
    ld a, a
    ld b, l
    rst $38
    add l
    rst $38
    add [hl]
    ld sp, hl
    adc c
    or b
    ret nc

    ld h, b
    ld h, b
    add a
    nop
    jr nz, jr_00d_5458

    ld [bc], a
    and b
    ldh [rNR43], a
    rst $08
    jr nc, @+$01

    jr nz, @+$01

    ld hl, $27ff
    cp $1f
    ld sp, hl
    ccf
    rst $30
    ld a, a
    rst $08
    ld e, e
    rst $20
    ld l, [hl]
    pop af
    sbc e
    db $fc
    nop
    nop
    ld e, b
    ld e, b
    or h
    db $ec

jr_00d_54ed:
    rst $38
    and a
    call c, $f7af
    sbc b
    rst $28
    ld [hl], b
    ld b, c
    rst $18

jr_00d_54f7:
    ld h, b
    ld b, c
    cp a
    ret nz

    ld b, c
    ld a, [hl]
    add c
    dec b
    inc a

Jump_00d_5500:
    jp $f3cc


    ldh a, [$ff3f]
    daa
    nop
    add e
    ld bc, $0160
    jr nz, jr_00d_54ed

    and a
    ld [bc], a
    xor $01
    ld [$43f8], sp
    inc b
    db $fc
    inc bc
    inc a
    inc a
    ld a, a
    ld b, e
    add e
    ld [bc], a
    and [hl]
    dec de
    ld hl, sp-$71
    ld [hl], b
    ld a, a
    jr nz, jr_00d_5564

    inc hl
    ccf
    daa
    inc a
    dec e
    dec de
    ld a, [hl]
    ld h, a
    db $fd
    sbc [hl]
    db $fd
    adc [hl]
    ld e, d
    rst $20
    ccf
    pop af
    rst $38
    ld hl, sp+$1f
    db $fc
    ccf
    ldh [c], a
    ld b, d
    rst $38
    pop bc
    ld [bc], a
    rst $38
    ldh [c], a
    ld a, a
    call nz, $6104
    add hl, bc
    dec sp
    rst $00
    rst $28
    inc e
    rst $30
    ld hl, sp+$17
    jr jr_00d_555e

    ld [$02a3], sp
    ld e, h
    rla
    rst $30
    rst $30
    dec bc
    db $fc
    scf
    call z, $ec17
    rlca
    db $fc

jr_00d_555e:
    rrca
    ld hl, sp+$1f
    di
    ld a, a
    db $e4

jr_00d_5564:
    rst $38
    sbc b
    rst $38

jr_00d_5567:
    ld a, e
    adc a
    ld hl, sp+$77
    adc h
    jp $5a01


    ld b, $cf
    db $fc
    cp a
    ld a, [hl]
    rst $38
    ld de, $42ff
    ldh [$ff3f], a
    ldh [$ff2b], a
    pop af
    ccf
    cp $7a
    rst $38
    ld [hl], e
    rst $38
    ld h, a
    rst $38
    rrca
    rst $38
    sub d
    cp $fd
    db $e3
    cp $c1
    cpl

jr_00d_558e:
    jr nc, @+$1d

    inc e
    rlca
    rlca
    ldh [$ffe0], a
    ret c

    ld a, b
    db $e4
    inc a
    ldh a, [c]
    ld e, $fa
    ld c, $fd
    rlca
    rst $38
    dec sp
    rst $38
    ld h, l
    rst $38
    jp $fb7f


    ld a, a
    ld b, c
    jp $e0ff


    ld h, $27
    rst $38
    sbc l
    rst $38
    jp $fdff


    rst $38
    db $e3
    rst $38
    add l
    rst $38
    dec de
    cp $f3
    cp $13
    adc $3b
    rrca
    ld sp, hl
    rrca
    db $f4
    rra
    and $fb
    rrca
    db $fd
    inc sp
    sbc $e1
    ccf
    jr nz, jr_00d_55e6

    jr jr_00d_55e0

    inc c
    inc bc
    inc bc
    adc e
    inc b
    jr nz, jr_00d_55df

    and b
    ld h, b
    ldh a, [$ff30]
    ret nc

    jr nc, jr_00d_5567

jr_00d_55df:
    ld a, b

jr_00d_55e0:
    add e
    inc b
    inc [hl]
    ld c, b
    inc b
    db $fc

jr_00d_55e6:
    add h
    ld [bc], a
    ld c, b
    inc b
    db $10
    ret nc

    jr nc, jr_00d_558e

    ld h, b
    xor c
    ld [bc], a
    db $fc
    rla
    nop
    nop
    di
    di
    rrca
    db $fc
    ld h, a
    sbc h
    daa
    call c, $f81f
    ccf
    ldh [$fffb], a
    rst $00
    rst $18
    dec a
    ld a, a
    ldh a, [$ffbf]
    ldh a, [$ffdf]
    scf
    ld b, c
    rst $18
    jr nc, jr_00d_5623

    rst $18
    add hl, sp
    ld a, $ff
    rst $30
    ld hl, sp-$23
    ld h, e
    rst $38
    ld c, a
    ei
    daa
    or $39
    ei
    inc l
    cp [hl]
    ld h, a
    rst $08
    ld [hl], c

jr_00d_5623:
    ret nz

    and e
    ld bc, $08d3
    sbc [hl]
    db $fc
    adc h
    db $fc
    ld [hl], h
    cp h
    ld h, h
    ld hl, sp+$28
    and l
    inc b
    db $fc
    add e
    nop
    nop
    add e
    ld bc, $0d64
    ldh a, [rNR10]
    db $fc
    call c, $72fe
    cp $22
    db $fc
    db $e4
    ld hl, sp+$28
    ldh a, [$ff50]
    add a
    ld bc, $2778
    add b
    add hl, bc
    ld b, b
    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ld [hl], b
    sub b
    xor b
    ret c

    push bc
    ld bc, $83e3
    ld bc, $8b60
    dec b
    inc [hl]
    dec b
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$78
    ld b, d
    db $fc
    inc b
    inc b
    ld a, [$7a8e]
    cp $7a
    ld b, d
    cp $3a
    inc b
    cp $12
    cp $02
    cp $41
    add h
    db $fc
    dec c
    ld c, d
    cp $31
    rst $38
    inc bc
    rst $38
    rst $08
    db $fd
    cp $32
    db $fc
    inc b
    ld hl, sp-$08
    add l
    dec b
    and [hl]
    jp Jump_00d_6301


    and l
    inc b
    jr z, @-$59

    inc b
    inc l
    ld bc, $0f0c
    and e
    ld bc, $0376
    inc bc
    ld [bc], a
    ld bc, $3901
    nop
    add hl, bc
    cp $fe
    inc e
    inc e
    jr c, jr_00d_56e5

    ld [hl], b
    ld [hl], b
    cp $fe
    ret z

    dec b
    dec a
    add [hl]
    ld [bc], a
    ld b, c
    dec b
    ldh a, [rNR10]
    or b
    ret nc

    ldh [$ffe0], a
    ld b, c
    ldh [$ffa0], a
    ld c, $f0
    ldh a, [$fff8]
    cp b
    db $fc
    db $fc
    cp [hl]
    jp z, Jump_000_09ff

    cp a
    ld [hl], c
    db $fd
    di
    cp $41
    cp $fa
    ld [$eaee], sp
    ld e, $d4
    inc a
    ld hl, sp-$08
    ldh [$ffe0], a
    ld sp, $0600
    ldh [$ffe0], a
    db $fc
    inc e

jr_00d_56e5:
    ld a, [$dee6]
    ld b, c
    ld a, $ca
    nop
    ld a, $41
    sub h
    ld a, h
    add hl, bc

jr_00d_56f1:
    sub [hl]
    ld a, a
    dec l
    ei
    ld l, $ff
    jr z, jr_00d_56f1

    ldh a, [$fff0]
    add e
    inc bc
    sbc h
    add hl, bc
    jr nc, @+$32

    ld [hl], b
    ld d, b
    ret nc

    ldh a, [$ff38]
    ld hl, sp-$3a
    cp $c3
    nop
    call c, $c70d
    dec a
    cp $0a
    ld a, [hl]
    adc d
    ld c, $fa
    sbc h
    db $f4
    ld a, h
    db $f4
    sub h
    db $fc
    and e
    ld bc, $1f98
    ld bc, $3301
    inc sp
    ld l, l
    ld e, a
    ld e, d
    ld l, a
    inc [hl]
    ccf
    jr z, jr_00d_576a

    ld d, c
    ld a, [hl]
    db $e3
    db $fc
    and a
    ld hl, sp-$61
    ldh a, [$ff7f]
    ld c, b
    ld a, $25
    ld e, $13
    dec c
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    adc e
    dec b
    ld b, b
    inc de
    rst $38
    rst $38
    db $dd
    ld h, e
    cp [hl]
    pop bc
    rst $38
    add b
    rst $38
    sbc [hl]
    cp a
    ret nz

    cp $01
    db $ed
    inc de
    cp $1f
    rst $38
    ld hl, sp-$01
    dec l
    nop
    inc bc
    add b
    add b
    ret nz

    ret nz

    inc hl
    ldh [rNR44], a
    ldh a, [rNR52]
    ld hl, sp-$08
    jr nz, jr_00d_5768

jr_00d_5768:
    jr nz, jr_00d_578f

jr_00d_576a:
    nop
    inc bc
    ldh a, [$fff0]
    db $fc
    db $fc
    inc [hl]
    rst $38
    ld hl, sp+$2c
    nop
    ld h, b
    xor c
    nop
    ld b, $0f
    ld [bc], a
    inc bc
    dec b
    ld b, $0f
    rrca
    jr jr_00d_57a1

    inc d
    rra
    ld [hl+], a
    ccf
    ld h, $3b
    dec l
    inc sp
    ld b, c
    ccf
    jr nz, jr_00d_5799

    cpl

jr_00d_578f:
    jr nc, jr_00d_57af

    ld de, $1b14
    add hl, bc
    ld c, $0b
    inc c
    rlca

jr_00d_5799:
    ld b, $a7
    nop
    ld [hl-], a
    add hl, bc
    jr c, @+$01

    db $10

jr_00d_57a1:
    rst $38
    ld e, $ff
    rst $38
    di
    rst $38
    ld bc, $ff42
    nop
    ld b, e
    ld a, a
    add b
    rlca

jr_00d_57af:
    ld a, a
    add c
    ld a, a
    adc a
    ld [hl], e
    di
    add b
    add b
    ld b, c
    ld a, $22
    ld bc, $213f
    ld b, c
    rra
    ld de, $0f03
    add hl, bc
    rlca
    rlca
    ld sp, $0100
    inc e
    inc e
    and l
    nop
    jr z, jr_00d_57d3

    rst $20
    rst $20
    rst $38
    rst $38
    ld a, a

jr_00d_57d3:
    ld a, a
    and a
    nop
    ld c, d
    dec b
    ld a, a
    ld h, h
    db $ec
    rst $30
    db $e4
    rst $38
    add e
    nop
    ld c, e
    nop
    add hl, sp
    ld b, c
    rst $38
    db $10
    ld [de], a
    rst $38
    ld hl, sp-$01
    db $fc
    rra
    rst $38
    dec de
    rst $38
    ld [$0cff], sp
    ld a, a
    adc [hl]
    ld a, a
    adc h
    ld a, a
    adc b
    ld a, a
    adc h
    add l
    ld bc, $0130
    rst $38
    rst $38
    and e
    nop
    ld l, $07
    inc bc
    inc bc
    pop bc
    pop bc
    ld a, c
    ld a, c
    ccf
    ccf
    and e
    nop
    ld h, $83
    ld bc, $080a
    ld a, a
    ld a, a
    rst $38
    cp c
    cp e
    ld a, l
    ld sp, hl
    rst $38
    rlca
    ld b, c
    rst $38
    inc bc
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    db $fc
    rst $38
    or $0f
    db $fd
    inc bc
    add e
    nop
    adc $0f
    sbc $21
    rst $18
    ld hl, $619f
    sbc l
    ld h, e
    cp a
    ld b, e
    ccf
    jp $c2ff


    ccf
    ccf
    and e
    nop
    jr nc, jr_00d_5846

    pop hl
    pop hl
    ld a, h

jr_00d_5846:
    ld a, h
    add e
    ld bc, HeaderDestinationCode
    rra
    rra
    add l
    ld bc, $990a
    ld bc, $0f54
    rst $38
    nop
    xor $11
    rst $08
    ld sp, $23dd
    sbc a
    ld h, e
    rra
    db $e3
    rst $18
    and $3f
    inc a
    jp Jump_00d_4101


    ld [bc], a
    nop
    rst $38
    rrca
    inc hl
    rst $38
    inc c
    sbc a
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    ld a, e
    rst $38
    ld [hl], c
    rst $38
    jr nz, @+$01

    ld a, a
    add hl, hl
    rst $38
    ld [bc], a
    ld [hl], c
    cp $1f
    ld b, d
    rst $38
    nop
    rlca
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    xor a
    rst $18
    rst $28
    ld b, c
    rst $18
    rst $38
    ld [de], a
    rra
    ld e, a
    cp a
    ld a, a
    xor a
    rst $38
    ld c, a
    rst $38
    ld b, a
    db $fc
    call nz, Call_000_0808
    inc c
    inc c
    adc $ce
    cp $fe
    ld l, $ff
    ld b, $00
    nop
    rst $38
    rst $28
    push af
    rst $30
    ld a, e
    ld h, d
    ld a, a
    ld bc, $7ffe
    ld b, d
    rst $38
    nop
    ld bc, $00ff
    ld [hl-], a
    rst $38
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    jp $f3c3


    di
    sub c
    ld [bc], a
    dec l
    rlca
    add b
    ld a, a
    dec e
    cp $9e
    rst $28
    rst $08
    ldh a, [$ff85]
    ld bc, $10e0
    ld b, $ff
    rrca
    ld sp, hl
    rst $08
    ei
    rst $38
    ld a, [$9aef]
    rst $28
    jp c, $dbff

    rst $38
    add hl, de
    rst $18
    ld b, c
    cp a
    rst $38
    ld a, [bc]
    ccf
    rst $38
    ccf
    ret nz

    ret nz

    add d
    add d
    db $e3
    db $e3
    ei
    ei
    sbc l
    ld [bc], a
    ld b, [hl]
    rrca
    inc c
    rst $38
    ld e, $f3
    rra
    rst $30
    rst $18
    db $f4
    ld a, a
    db $f4
    cp a
    call nc, $d7ff
    rst $38
    db $d3
    add h
    ld bc, $00f4
    cp a
    ld b, c
    rst $38
    ld a, a
    ld de, $8080
    ldh a, [$fff0]
    inc c
    db $fc
    db $e3
    rst $38
    rst $38
    inc a
    rst $38
    cp h
    rst $38
    adc $ff
    rst $28
    rst $38
    pop af
    adc a
    nop
    ld l, d
    ret z

    ld [bc], a
    dec l
    nop
    rst $38
    dec sp
    nop
    and e
    ld [bc], a
    nop
    ld bc, $6060
    add l
    nop
    inc l
    inc hl
    ret nz

    ld b, c
    ldh [rNR41], a
    add h
    inc bc

jr_00d_593d:
    ld [de], a
    ldh [rNR41], a
    ld h, b
    ld hl, sp+$78
    and [hl]
    cp $12
    cp $1e
    cp $18
    ld hl, sp+$38
    ld hl, sp-$04
    call nc, $b4fc
    db $fc
    db $f4
    db $fc
    or h
    or $9a
    or $ba
    or $fa
    or $ba
    db $f4
    sbc h
    ld hl, sp-$08
    add l
    nop
    ld a, [bc]
    dec b
    add h
    add h
    call z, $d8cc
    ret c

    add a
    nop
    inc h
    rrca
    ldh a, [$fff0]
    ld hl, sp+$08
    jr c, jr_00d_593d

    ldh a, [$ffb0]
    cp $7e
    pop af
    rra
    pop af
    ccf
    jp hl


    rst $38
    ld b, c
    ld c, $fe
    ld bc, $fa1e
    adc c
    ld [bc], a
    ldh [$ff03], a
    ld a, [$fabe]
    sbc [hl]
    add e
    inc bc
    ld [hl], h
    ld bc, $8cfc
    add a
    inc bc
    ld a, $05
    adc b
    adc b
    ret c

    ret c

    ld hl, sp-$08
    sbc c
    inc bc
    ld c, h
    ld bc, $fe0a
    adc c
    ld [bc], a
    ldh [$ff0d], a
    cp $fe
    cp [hl]
    adc $ee
    sbc $fe
    sbc $ec
    call c, $ccf4
    ld a, b
    ld a, b
    dec h
    nop
    ld a, [bc]
    ret nz

    ret nz

    ldh a, [$ff30]
    db $fc
    inc c
    cp $02
    rst $38
    db $fd
    add e
    ld b, c
    rst $38
    add c
    jp $ce03


    adc b
    nop
    ld [hl], a
    dec b
    add b
    add b
    ret nz

    ld b, b
    add b
    add b
    dec a
    nop
    inc bc
    inc b
    inc b
    ld b, $06
    dec h
    inc bc
    dec h
    ld bc, $0341
    ld [bc], a
    ld [$0302], sp
    dec b
    rlca
    rrca
    rrca
    ld sp, $403f
    ld b, c
    ld a, a
    ld b, c
    inc e
    ld a, a
    cp a
    rst $38
    sbc a
    ldh [$ffbf], a
    ret nz

    rst $38
    add b
    cp [hl]
    pop bc
    xor h
    db $d3
    ld c, l
    ld [hl], e
    ld c, c
    ld [hl], a
    ld hl, $193f
    rra
    rlca
    rlca
    ld bc, $0801
    ld [$141c], sp
    ld b, c
    cp $e2
    ld b, [hl]
    rst $38
    db $e3
    ld [bc], a
    rst $38
    ld [hl+], a
    ld a, $41
    db $e3
    rst $38
    ld [bc], a
    ld h, e
    ld a, a
    and d
    adc e
    ld bc, $03e0
    rst $38
    rst $38
    rst $28
    sbc a
    add l
    ld bc, $89f0
    ld [bc], a
    halt
    sbc b
    ld bc, $86e0
    ld [bc], a
    cp c
    ld b, $80
    nop
    ret nz

    nop
    ld h, b
    nop
    ld [hl], b
    ld b, c
    nop
    ld a, b
    ld b, c
    nop
    inc a
    ld b, d
    nop

Jump_00d_5a41:
    ld a, $44
    nop
    rra
    ld sp, $0200
    inc a
    inc a
    ld b, d
    ld b, e
    ld a, [hl]
    add c
    dec bc
    inc a
    ld b, d
    nop
    inc a
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ccf
    rra
    ld b, c
    ld a, a
    ccf
    ld b, e
    rst $38
    ld a, a
    ld [bc], a
    ld a, a
    ccf
    ld a, a
    add l
    ld bc, $0c4a
    inc bc
    inc bc
    nop
    ld bc, $8301
    add e
    jp $e7c3


    rst $20
    rst $30
    rst $30
    inc l
    rst $38
    dec bc
    add b
    ret nz

    cp a
    cp e
    db $fd
    cp a
    rst $18
    rst $18
    ldh [c], a
    ldh a, [c]
    rst $38
    adc a
    ld b, c
    cp $03
    dec de
    cp $82
    rst $38
    db $e3
    cp $de
    cp a
    xor $df
    db $fc
    rst $28
    rst $38
    call $8eff
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    adc a
    ldh a, [$fff0]
    cp a
    ldh [c], a
    ld a, a
    ld b, c
    db $e3
    ld a, $05
    db $e3
    ld a, a
    db $e3
    rst $38
    cp [hl]
    rst $38
    jp Jump_000_1705


    nop
    db $e3
    adc l
    ld [bc], a
    dec bc
    add a
    inc bc
    ld h, b
    dec c
    ld a, [de]
    ld a, [$fa3e]
    db $fd
    db $db
    rst $38
    sbc c
    ei
    cp l
    ei
    sbc l
    ld sp, hl
    adc a
    adc c
    inc bc
    halt
    add a
    inc bc
    and b
    inc c
    ld e, $fa
    dec a
    ei
    rst $18
    ld sp, hl

jr_00d_5ad6:
    cp a
    reti


    ei
    cp l
    rst $28
    sbc l
    or [hl]
    adc d
    inc bc
    or l
    ld [hl-], a
    nop
    ld [bc], a
    jr jr_00d_5afd

    inc a
    ld b, c
    inc a
    ld a, [hl]
    inc bc
    jr jr_00d_5b28

    nop
    jr jr_00d_5b25

    nop
    ld [bc], a
    jr jr_00d_5b0b

    inc a
    adc h
    dec b
    cp d
    call nz, $fe04
    ld bc, $1f0f

jr_00d_5afd:
    ld b, e
    rra
    ccf
    ld bc, $1f0f
    call nz, $e504
    nop
    inc bc
    dec l
    nop
    inc bc

jr_00d_5b0b:
    ccf
    ccf
    ld a, a
    ld b, b
    ld b, c
    rst $38
    add b
    inc bc
    ld a, a
    ld b, b
    ccf
    ccf
    ret


    ld [bc], a
    di
    sub [hl]
    ld bc, $42c0
    add a
    rst $38
    ld [bc], a
    jp $c3ff


    add l

jr_00d_5b25:
    dec b
    rst $18
    xor c

jr_00d_5b28:
    nop

jr_00d_5b29:
    jr nc, jr_00d_5ad6

    nop
    jr nc, @-$5b

    nop
    ld c, $01
    inc e
    rra
    ld b, c
    jr nz, @+$41

    ld bc, $3f3f
    ld b, d
    rrca
    ld [$1f01], sp
    db $10
    ld b, c
    dec de
    inc d
    ld bc, $243b
    ld b, d
    inc sp
    inc l
    inc bc
    ccf
    inc a
    rlca
    rlca
    sbc l
    nop
    add b
    add hl, bc
    ld [$0c0f], sp
    rrca
    ld a, [de]
    rra

jr_00d_5b57:
    ld [de], a
    rra
    dec d
    dec de
    ld b, e
    rra
    db $10
    add hl, bc
    ld e, $11
    inc e
    inc de
    ld [$090f], sp
    ld c, $07
    inc b
    push bc
    dec b
    and $ff
    dec de
    nop
    nop
    add b
    add b
    ldh [$ffe0], a
    ld hl, sp-$08
    call nc, $feec
    sub $d6
    xor $ff
    rst $38
    rrca
    rst $38
    rst $38
    ld bc, $06fa
    db $ec
    inc e
    ret nc

    jr nc, jr_00d_5b29

    ld h, b
    ld b, c
    ret nz

    ld b, b
    ld bc, $0000
    and e
    nop
    inc b
    inc hl
    ccf

jr_00d_5b95:
    daa
    ld a, a
    dec d
    ld a, h
    ld a, a
    cp c
    adc $fd
    add [hl]
    jp $fbbc


    add h
    ld a, a
    ld b, h
    dec sp
    inc a
    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, @+$43

    ldh a, [rNR10]
    rlca
    ret nc

    jr nc, jr_00d_5b95

    jr nz, jr_00d_5b57

    ld h, b
    ret nz

    ret nz

    dec hl
    nop
    ld [bc], a
    ccf
    inc a
    rra
    ld h, d
    inc e
    ld b, d
    rrca
    ld c, $09
    rra
    ld e, $1d
    ld e, $3b
    inc a
    ld l, $31
    rra
    rra
    add hl, hl
    nop
    sub e
    nop
    jr nz, jr_00d_5be1

    ld a, c
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld [hl], a
    ld c, b
    rst $28
    sub b
    rst $38
    add h
    ld a, e

jr_00d_5be1:
    ld c, h
    jp Jump_00d_5500


    add hl, bc
    ldh a, [$fff0]
    ld l, b
    sbc b
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$4106]
    cp $02
    dec c
    ld a, [$ff06]
    dec b
    rst $30
    dec c
    db $eb
    dec e
    sub $3a
    db $fc
    inc a
    and b
    ld h, b
    and l
    nop
    nop
    rlca
    rrca
    rrca
    ld e, $1f
    rra
    ld e, $3d
    ld a, $42
    ccf
    inc a
    dec bc
    ld d, l
    ld l, [hl]
    ld l, a
    ld d, d
    ld [hl], a
    ld c, b
    ld a, e
    ld b, h
    dec hl
    inc [hl]
    rra
    jr @+$44

    ret nz

    ld b, b
    dec c
    and b
    ld h, b
    sbc $3e
    db $fd
    inc bc
    ei
    rlca
    xor [hl]
    sbc $fc
    db $fc
    ldh a, [$fff0]
    call z, $8100
    ld b, c
    jr @+$21

    inc bc
    jr @+$1d

    inc e
    rrca
    ld h, d
    inc c
    inc bc
    ld c, $0f
    rlca
    rlca
    xor l
    nop
    ld d, d
    ld bc, $0000
    rst $38

    db $e0, $33

    INCBIN "gfx/image_00d_5c4b.2bpp"

    jr c, @-$06

    add sp, -$08

    db $41

    inc b
    db $fc

    db $41

    ld [bc], a
    db $fe

    db $e0, $39

    INCBIN "gfx/image_00d_5c87.2bpp"

    add sp, $18
    ld hl, sp-$08
    sbc b
    ld hl, sp+$24
    db $fc
    db $c2
    db $fe

    db $41

    ld b, c
    rst $38

    db $05

    or c
    rst $38
    db $e3
    rst $38
    sbc $de

    db $ff, $03

    ld bc, $0301
    ld [bc], a

    db $62

    ld [bc], a

    db $0a

    rlca
    ld [$100f], sp
    rra
    jr nz, @+$41

    ld b, b
    ld a, a
    ld c, h
    ld a, a

    db $41

    add b
    rst $38

    db $09

    add e
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_00d_5d2a

    rrca
    rrca

    db $83, $00, $00, $00

    db $06

    db $8e, $00, $07, $00

    add c

    db $84, $00, $17, $05

    jr nz, jr_00d_5d3c

    jr @+$21

    rlca
    rlca

    db $8d, $00, $00, $05

    ld b, h
    ld a, a
    ld b, b
    ld a, a
    sbc b
    rst $20

    db $41

    add e
    rst $38

    db $00

    add c

    db $8a, $00, $19, $41

    ld [bc], a
    inc bc

    db $17

    INCBIN "gfx/image_00d_5d17.2bpp"

    sbc a
    push af
    ld c, a

jr_00d_5d2a:
    ld a, a
    scf
    dec a
    rrca
    rrca

    db $39

    nop

    db $05

    ld a, [hl]
    ld a, [hl]
    add e
    rst $38
    db $fc
    db $fc

    db $39

    nop

    db $05

    inc a

jr_00d_5d3c:
    inc a
    inc h
    inc a
    jr @+$1a

    db $ff, $0b

    ld h, e
    ld h, e
    rst $38
    sbc a
    cp $9f
    ld a, e
    ld a, h
    inc de
    rra
    dec d
    db $1e

    db $42

    dec bc
    inc c

    db $1b

    INCBIN "gfx/image_00d_5d53.2bpp"

    ld c, $0f
    rra
    inc e
    ld a, [hl-]
    ccf
    ld a, a
    ld c, h
    ld a, e
    ld c, h
    dec sp
    inc a

    db $85, $00, $10, $23

    rra

    db $05

    rrca
    rrca
    dec bc
    inc c
    rrca
    db $08

    db $23

    rlca

    db $07

    add hl, de
    ld e, $20
    ccf
    ld b, e
    ld a, h
    ld b, c
    ld a, [hl]

    db $41

    add c
    db $fe

    db $42

    add b
    rst $38

    db $09

    ret nz

    cp a
    ld b, b
    ld a, a
    ld h, b
    ld e, a
    jr nc, @+$31

    inc e
    dec de

    db $84, $00, $3e, $0e

    rra
    jr nz, @+$41

    ld b, d
    ld a, l
    ld b, e
    ld a, [hl]
    add a
    rst $38
    adc a
    rst $38
    sbc l
    rst $38
    adc c
    rst $38

    db $41

    ld b, b
    ld a, a

    db $e0, $5e

    INCBIN "gfx/image_00d_5daf.2bpp"

    inc l
    db $fc
    ld [hl-], a
    cp $9a
    ld a, [hl]
    push bc
    ccf
    pop hl
    rra
    ld a, e
    add l
    add hl, bc
    rst $30
    db $01

    db $a4, $00, $71, $a3, $00, $78, $1a

    INCBIN "gfx/image_00d_5e15.2bpp"

    adc e
    ld a, a
    jp hl


    rst $38
    ld [hl], c
    rst $38
    ld sp, hl
    rst $20
    jp nz, $82fe

    db $86, $00, $d9, $ff

    rlca
    nop
    nop
    ld bc, $0f01
    rrca
    db $10
    rra
    ld b, e
    jr nz, @+$41

    rlca
    ccf
    ccf
    ld e, e
    ld h, a
    ld a, a
    ld b, e
    ld e, e
    ld h, a
    add e
    nop
    db $10
    dec bc
    ld b, e
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld bc, $0301
    ld [bc], a
    rra
    rra
    jr nz, jr_00d_5e98

    ld b, c
    ld b, b
    ld a, a
    inc bc
    ld [hl], b
    ld a, a
    xor b
    rst $18
    ld b, c
    rst $38
    adc a
    ld bc, $dfaf
    inc hl
    ld a, a
    dec b
    ld a, $3f
    inc e
    rra
    inc bc
    inc bc
    ld [hl+], a
    rra
    nop
    ld de, $3f41
    ld hl, $7d0f
    ld b, e
    ld a, d
    ld b, [hl]
    db $f4
    adc h
    add sp, -$68
    ret nc

    jr nc, @-$5e

    ld h, b
    ld b, b
    ret nz

    add b
    add b
    inc hl
    ret nz

    inc hl
    nop
    add hl, bc
    ret nz

    ret nz

    ldh [rNR41], a
    db $fc
    db $fc
    cp $02
    rra
    pop hl
    ld b, c

jr_00d_5e98:
    ld bc, $02ff
    rra
    rst $38
    sbc a
    ld b, c
    rst $38
    add c
    inc h
    rst $38
    dec b
    cp $fe
    pop af
    rst $38
    rra
    rra
    and l
    nop
    jr nz, @+$05

    db $fc
    inc b
    ld a, $c2
    ld b, c
    ld [bc], a
    cp $01
    ld a, $fe
    call nz, $8e00
    inc h
    cp $0d
    ld a, h
    sbc h
    db $10
    ldh a, [$ffe0]
    ldh [rP1], a
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    ld [hl], b
    ld b, c
    nop
    ld a, b
    ld b, c
    nop
    inc a
    ld b, d
    nop
    ld a, $44
    nop
    rra
    rst $38
    inc bc
    rrca
    rrca
    ccf
    ccf
    ld b, d
    ld b, b
    ld a, a
    dec d
    ld b, c
    ld a, a
    ld a, e
    ld a, [hl]
    ccf
    ld a, $5b
    ld h, [hl]
    ld a, a
    ld b, d
    ld a, [hl]
    ld b, e
    ld e, e
    ld h, a
    ccf
    ccf
    dec hl
    scf
    ld c, l
    ld [hl], e
    ld a, a
    ld a, a
    adc c
    nop
    nop
    rlca
    ld b, b
    ld a, a
    dec a
    ccf
    ld a, a
    ld a, a
    or a
    rst $08
    ld b, c
    rst $38
    add a
    add hl, bc
    or a
    rst $08
    ld a, a
    ld a, a
    rra
    inc e
    add hl, bc
    ld c, $07
    rlca
    dec h
    nop
    add hl, bc
    jr nc, jr_00d_5f47

    ld c, b
    ld a, b
    adc d
    ld a, [$f795]
    cp l
    rst $38
    ld b, c
    ei
    db $fd
    rrca
    di
    db $fd
    ld h, a
    ld a, c
    call $9ef3
    ldh [c], a
    db $f4
    adc h
    ld a, b
    ld a, b
    ld hl, sp-$08
    cp $fe
    ld b, d
    dec a
    jp $ff22


    nop
    ld bc, $ff41
    ld l, l
    nop
    db $db
    jp Jump_00d_6f00


    ld [$fe83], sp
    sub d
    rst $38

jr_00d_5f47:
    rst $38
    ld sp, hl
    rst $38
    rrca
    rrca
    add e
    nop
    ld h, b
    ld b, d
    dec e
    db $e3
    inc bc
    rst $38
    rst $38
    ld a, a
    add c
    ld b, c
    rst $38
    dec de
    ld de, $1bed
    ld a, a
    add c
    rst $38
    pop bc
    rst $18
    push hl
    ld a, [hl]
    cp $b8
    ld a, b
    ldh [$ffe0], a
    ld e, $1e
    dec l
    inc sp
    ld b, c
    ccf
    ld hl, $2d03
    inc sp
    ld e, $1e
    inc sp
    nop
    rst $38
    ld [$0101], sp
    rrca
    ld c, $10
    rra
    ld de, $ff1f
    ld b, c
    rst $38
    add b
    inc b
    rst $38
    ld a, a
    ld a, a
    ld e, e
    ld a, h
    ld b, c
    ld e, a
    ld a, b
    add hl, bc
    dec sp
    inc a
    ld b, a
    ld a, a
    cp l
    jp $f38d


    ld a, [hl]
    ld a, [hl]
    add l
    nop
    nop
    add hl, bc
    db $10
    rra
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld e, [hl]
    ld a, a
    ld l, l
    ld [hl], e
    ld b, c
    ccf
    ld hl, $2d10
    inc sp
    ccf
    ccf
    inc l
    ccf
    add hl, de
    ld e, $08
    rrca
    rlca
    rlca
    ret nz

    ret nz

    ld hl, sp+$38
    inc b
    ld [hl+], a
    db $fc
    and e
    nop
    ld [$0d1d], sp
    di
    adc l
    di
    ld a, a
    pop bc
    rst $38
    ld b, c
    call $4d73
    di
    add c
    rst $38
    cp $fe
    pop af
    rst $38
    rra
    rra
    nop
    nop
    xor $ee
    or $fa
    sbc d
    cp $dc
    cp h
    inc hl
    cp $19
    and $fe
    rst $30
    db $ed
    db $fd
    rst $38
    cp $3e
    ld a, h
    cp h
    ld a, [$f6fe]
    ld a, [$2eee]
    ret nz

    ret nz

    jp $ffc3


    inc a
    rlca
    rst $38
    db $fd
    rst $38
    sub c
    nop
    ld c, b
    ld bc, $ffff
    add e
    nop
    ld e, h
    ld b, $c0
    ret nz

    rst $38
    ccf
    rlca
    db $fc
    ld a, a
    add h
    nop
    add a
    inc bc
    inc bc
    db $fd
    db $e3
    db $fd
    ld b, c
    rst $28
    pop af
    ld b, c
    db $e3
    db $fd
    ld bc, $ff21
    ld b, c
    rst $18
    ccf
    ld bc, $e3e3
    add l
    nop
    ld b, b
    ld bc, $fc7c
    sub c
    nop
    xor b
    add hl, bc
    sbc $3e
    call c, $f03c
    ldh a, [rNR34]
    ld e, $2d
    inc sp
    add l
    nop
    jr nc, @+$03

    ld e, $1e
    inc sp
    nop
    rst $38

    db $27

    nop

    db $01

    ld a, [bc]
    ld a, [bc]

    db $41

    rra
    dec d

    db $09

    rrca
    dec bc
    inc d
    rra
    db $10
    rra
    jr nz, jr_00d_6092

    ld c, [hl]
    ld a, a

    db $42

    add b
    rst $38

    db $01

    ld a, a
    ld a, a

    db $91, $00, $04, $04

    ld l, $3f
    ld l, $35
    ld c, h

    db $88, $00, $17, $15

    INCBIN "gfx/image_00d_6068.2bpp"

    ld l, $35
    ld c, [hl]
    ld [hl], c
    ld b, h
    ld a, e

    db $42

    add b
    rst $38

    db $03

    ld b, b
    ld a, a
    ccf
    ccf

    db $2b

    nop

    db $03

    jr jr_00d_60a3

    inc a
    inc h

    db $41

    ld a, [hl]
    ld b, d

    db $41

    cp l

jr_00d_6092:
    db $c3

    db $07

    sbc c
    rst $20
    add c
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a

    db $ff, $23

    nop

    db $05

    ld bc, $0601

jr_00d_60a3:
    rlca
    add hl, bc
    db $0e

    db $41

    rla
    db $18

    db $0d

    cpl
    jr nc, jr_00d_60dc

    ld sp, $302f
    daa
    inc a
    cpl
    jr c, @+$1a

    rla
    rrca

jr_00d_60b7:
    rrca

    db $23

    nop

    db $ff

    dec de
    ld a, a
    ld a, a
    ld h, [hl]
    ld e, c
    ld h, e
    ld e, h

jr_00d_60c2:
    inc sp
    inc l
    ld sp, $112e
    ld e, $1b
    inc d
    rra
    db $10
    ld c, $09
    inc c
    dec bc
    inc b
    rlca
    ld b, $05
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc hl
    ld bc, $fe00

jr_00d_60dc:
    ld b, c
    cp $1a
    ld b, $f6
    inc [hl]
    db $ec
    or h
    ld l, h
    add sp, $78
    ld b, c
    add sp, -$08
    ld b, c
    ld [hl], b
    ldh a, [rSTAT]
    ld h, b
    ldh [rNR44], a
    ret nz

    inc hl
    add b
    rst $38

    db $23

    nop

    db $03

    ld h, b
    ld h, b
    ld a, e
    ld a, e

    db $22

    ld a, a

    db $04

    ld a, h
    ld [hl], a
    ld a, b
    rra
    db $10

    db $41

    ccf
    db $20

    db $02

    ld a, a
    ld a, a

jr_00d_610a:
    ret nz

    db $41

    rst $38
    add b

    db $04

    rst $38
    ret nz

    rst $38
    ld a, a
    ld a, a

    db $23

    nop

    db $23

    ret nz

    db $03

    call nz, $f8c4
    db $38

    db $a4, $00, $0c, $02

    ld d, h
    db $fc
    ld d, h

    db $ad, $00, $14, $23

    rra

    db $01

    nop
    nop

    db $23

    rlca

    db $01

    nop
    nop

    db $23

    db $01

    db $31

    nop

    db $85, $00, $42, $85, $00, $46, $01

    nop
    nop

    db $8d, $00, $4c, $23

    rra

    db $23

    rlca

    db $95, $00, $4e, $01

    nop
    nop

    db $ff, $11

    INCBIN "gfx/image_00d_614d.2bpp"

    ld a, a
    ld b, c

    db $41

    ld e, a
    ld h, b

    db $09

    cpl
    jr nc, jr_00d_61dd

    ld a, b
    adc h
    rst $38
    add e
    rst $38
    ld a, h
    ld a, h

    db $29

    nop

    db $09

    ld e, $1e
    dec l
    inc sp
    dec a
    ld [hl+], a
    ccf
    jr nz, @+$31

    db $30

    db $41

    rla
    db $18

    db $03

    rrca
    ld [$0f0b], sp

    db $41

    ld b, $05

    db $41

    inc b
    rlca

    db $41

    db $08
    rrca

    db $17

    INCBIN "gfx/image_00d_618c.2bpp"

    rra
    db $10
    inc de
    inc e
    inc c
    rrca
    inc bc
    inc bc

    db $2f

    nop

    db $23

    add b

    db $41

    ld b, b
    ret nz

    db $02

    ret nz

    ld b, b
    ret nz

    db $c4, $00, $78, $42

    jr nz, @-$1e

    db $f4, $21, $00, $46, $03

    dec e
    dec e

jr_00d_61bc:
    dec hl
    db $36

    db $41

    ccf
    db $20

    db $1e

    INCBIN "gfx/image_00d_61c2.2bpp"

    di
    ld c, a
    ldh a, [$ffcf]
    ld h, b
    sbc a
    nop
    rst $38
    inc bc
    cp $07

jr_00d_61dd:
    db $fc
    ld b, $fd

jr_00d_61e0:
    inc bc

    db $41

    rst $38
    nop

    db $08

    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ld a, e
    ld h, h
    rra
    rra

    db $37

    nop

    db $01

    add b
    add b

    db $87, $00, $70, $0f

    INCBIN "gfx/image_00d_61f7.2bpp"

    db $41

    rst $38
    db $01

    db $0d

    or $0a
    db $fc
    inc e
    ldh [c], a
    ld a, $c2
    ld a, [hl]
    ld b, d
    cp $c4
    db $fc
    jr c, @+$3a

    db $29

    nop

    db $0b

    ld hl, sp-$08
    halt
    adc [hl]
    db $fd
    dec hl
    cp $29
    add hl, sp
    xor $ff
    nop

    db $41

    rst $38
    db $10

    db $02

    ld a, l
    add e
    db $fe

    db $84, $00, $cf, $07

    jp $c3bd


    rst $38
    jr @+$01

    srl h

    db $41

    rst $38
    nop

    db $01

    ld a, [hl]
    add c

    db $41

    rst $38
    ld b, d

    db $01

    rst $38
    add c

    db $43

    rst $38
    nop

    db $03

    rst $38
    rst $38
    nop
    nop

    db $bb, $00, $dc, $a5, $00, $fa, $0d

    inc e
    dec de
    inc a
    inc hl
    ld a, h
    ld b, e
    ld [hl], b
    ld c, a
    ld a, h
    ld b, e
    inc a
    inc sp
    ld c, $0f

    db $d5, $01, $7d, $18

    INCBIN "gfx/image_00d_6268.2bpp"

    ld a, [$e945]
    rra
    cp $f7
    db $ec
    rra
    db $f0

    db $86, $01, $56, $05

    ldh [$ff3f], a
    ldh a, [$ff1f]
    or b
    ld e, a

    db $c7, $01, $c8, $05

    ld bc, $6ffe
    sub e
    db $fc
    db $fc

    db $23

    nop

    db $83, $00, $84, $0d

    inc e
    db $ec
    ld e, $e2
    rra
    pop hl

jr_00d_62a1:
    rlca
    ld sp, hl
    rra
    pop hl
    ld e, $e6
    jr c, jr_00d_62a1

    db $83, $00, $76, $ab, $01, $94, $85, $01, $7c, $a3, $00, $79, $07

    inc b
    rlca
    dec b
    rlca
    ld [$090f], sp
    rrca

    db $41

    db $10
    rra

    db $13

    INCBIN "gfx/image_00d_62c2.2bpp"

    dec b
    ld b, $0b
    inc c

    db $41

    rrca
    db $08

    db $01

    add hl, bc
    db $0e

    db $41

    dec b
    db $06

    db $83, $02, $07, $41

    inc b
    rlca

    db $83, $00, $5e, $04

    sbc h
    sbc h
    ld h, e
    rst $38
    ld [hl+], a

    db $83, $00, $d1, $02

    rst $38
    db $e3
    rst $38

    db $41

    rst $30
    cp [hl]

    db $05

    rst $30
    ret


    ld [$7eff], sp
    adc c

    db $41

    rst $38

Jump_00d_6301:
    nop

    db $03

    inc h
    db $db

Jump_00d_6305:
    ld h, [hl]
    sbc c

    db $41

    rst $38
    nop

    db $07

    nop
    rst $38
    push de
    rst $38
    ld l, d
    push de
    rst $38
    nop

    db $41

    rst $38
    inc d

    db $a7, $01, $32, $09

    rst $38
    nop
    ld a, $c1
    inc e
    rst $38
    rst $30
    rst $30
    nop
    nop

    db $a5, $02, $38, $00

    db $20

    db $22

    db $e0

    db $07

    sub b
    ldh a, [$ffd0]
    ldh a, [$ff88]
    ld hl, sp-$38
    db $f8

    db $41

    inc b
    db $fc

    db $0d

    add d
    ld a, [hl]
    jp z, $ea3e

    ld e, $ee
    ld e, $ce
    ld a, $9c
    ld a, h
    ld a, b
    db $f8

    db $41

    and b
    db $e0

    db $03

    ret nz

    ld b, b

jr_00d_634c:
    ldh [rNR41], a

    db $41

    ldh a, [rNR10]

    db $41

    ld hl, sp+$08

    db $03

    xor b
    ld e, b
    ldh a, [rSVBK]

    db $41

    db $10
    db $f0

    db $e0, $53

    INCBIN "gfx/image_00d_635e.2bpp"

    ccf
    scf
    ccf
    db $38

    db $41

    ld a, a
    ld b, b

    db $41

    rst $38
    add b

    db $01

    rst $38
    add c

    db $87, $02, $dc, $41

    rst $38
    add c

    db $05

    rst $38
    ld bc, $02fe
    cp $82

    db $85, $00, $94, $09

    db $fc
    inc d
    cp $22
    db $fc
    ld c, h
    ld hl, sp-$38
    jr nc, jr_00d_6406

    db $a7, $01, $a2, $03

    rrca
    add hl, bc
    rra
    db $18

    db $a5, $03, $30, $03

    ccf
    dec hl
    ld c, [hl]
    ld a, l

    db $91, $02, $d4, $15

    INCBIN "gfx/image_00d_63ea.2bpp"

    cp b
    ld a, b
    ldh a, [$ff50]
    ldh [$ffe0], a

    db $8b, $01, $fa, $09

    dec b
    rlca

jr_00d_6406:
    dec bc
    ld c, $17
    ld e, $2f
    jr c, @+$29

    inc a

    db $41

    ld b, e
    ld a, [hl]

    db $00

    add e

    db $83, $03, $18, $02

    rst $38
    add [hl]
    db $fe

    db $83, $02, $de, $02

    ld h, c
    ld a, a
    add c

    db $a4, $03, $97, $03

    ldh a, [c]
    ld a, [hl]
    ldh a, [c]
    db $1e

    db $41

    db $e4
    inc a

    db $02

    ld hl, sp+$18
    db $f0

    db $c4, $02, $ae, $85, $01, $f6, $ff

    dec b
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $ff41


    add c
    dec b
    cp l
    jp Jump_00d_665a


    inc a
    inc a
    cpl
    nop
    rst $38
    daa
    nop
    dec b
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    ld b, c
    rrca
    ld [$0b05], sp
    inc c
    dec b
    ld b, $03
    inc bc
    ld sp, $0300
    ld bc, $0301
    ld [bc], a
    ld b, c
    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $3501
    nop
    add e
    nop
    ld a, [hl+]
    adc a
    nop
    ld [hl-], a
    db $f4
    ld e, a
    nop
    nop
    rst $38
    ldh a, [c]
    ld h, h
    dec de
    ld h, l
    ld b, h
    ld h, l
    ld l, l
    ld h, l
    halt
    ld h, l
    ld a, a
    ld h, l
    adc b
    ld h, l
    sub c
    ld h, l
    sbc d
    ld h, l
    and e
    ld h, l
    xor h
    ld h, l
    or l
    ld h, l
    add $65
    rst $10
    ld h, l
    add sp, $65
    ld sp, hl
    ld h, l
    ld [bc], a
    ld h, [hl]
    dec bc
    ld h, [hl]
    inc d
    ld h, [hl]
    dec e
    ld h, [hl]
    ld [hl+], a
    ld h, [hl]
    dec hl
    ld h, [hl]
    inc [hl]
    ld h, [hl]
    dec a
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    ld c, a
    ld h, [hl]
    ld e, b
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld a, d
    ld h, [hl]
    sub e
    ld h, [hl]
    xor h
    ld h, [hl]
    push bc
    ld h, [hl]
    sbc $66
    rst $20
    ld h, [hl]
    ldh a, [$ff66]
    ld bc, $1267
    ld h, a
    inc hl
    ld h, a
    inc [hl]
    ld h, a
    ld b, l
    ld h, a
    ld c, d
    ld h, a
    ld e, e
    ld h, a
    ld l, h
    ld h, a
    ld [hl], l
    ld h, a
    ld a, [hl]
    ld h, a
    add a
    ld h, a
    sub b
    ld h, a
    and c
    ld h, a
    or d
    ld h, a
    jp $d467


    ld h, a
    db $dd
    ld h, a
    and $67
    rla
    ld l, b
    ld c, b
    ld l, b
    ld h, c
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, a
    ld l, b
    ld a, b
    ld l, b
    add c
    ld l, b
    ld a, [bc]
    add sp, -$08
    ld a, [bc]
    nop
    ld [$0af8], sp
    ld b, b
    add sp, $00
    ld a, [bc]
    jr nz, jr_00d_6508

    nop
    ld a, [bc]
    ld h, b
    ldh a, [$fff0]
    inc c
    nop
    nop

jr_00d_6508:
    ldh a, [$ff0c]
    ld b, b
    ldh a, [$ff08]
    inc c
    jr nz, jr_00d_6510

jr_00d_6510:
    ld [$600c], sp
    ld hl, sp-$18
    ld c, $00
    ld hl, sp+$10
    ld c, $21
    ld a, [bc]
    add sp, -$08
    stop
    ld [$10f8], sp
    ld b, b
    ldh a, [$ff08]
    ld [de], a
    jr nz, @-$16

    nop
    db $10
    jr nz, jr_00d_6535

    nop
    db $10
    ld h, b
    ldh a, [$fff0]
    ld [de], a
    nop
    nop

jr_00d_6535:
    ldh a, [rNR12]
    ld b, b
    nop
    ld [$6012], sp
    ld hl, sp-$18
    inc d
    nop
    ld hl, sp+$10
    inc d
    ld hl, $e80a
    ld hl, sp+$16
    nop
    ld [$16f8], sp
    ld b, b
    add sp, $00
    ld d, $20
    ld [$1600], sp
    ld h, b
    ldh a, [$fff0]
    jr jr_00d_6559

jr_00d_6559:
    ldh a, [$ff08]
    jr jr_00d_657d

    nop
    ldh a, [rNR23]
    ld b, b
    nop
    ld [$6018], sp
    ld hl, sp-$18
    inc d
    nop
    ld hl, sp+$10
    inc d
    ld hl, $f802
    nop
    ld b, $00
    ld hl, sp-$08
    ld [$0201], sp
    ld hl, sp-$08
    ld b, $20
    ld hl, sp+$00

jr_00d_657d:
    ld [$0221], sp
    ld hl, sp-$08
    ld b, $60
    ld hl, sp+$00
    ld [$0261], sp
    ld hl, sp+$00
    ld b, $40
    ld hl, sp-$08
    ld [$0241], sp
    ld hl, sp+$00
    nop
    nop
    ld hl, sp-$08

jr_00d_6598:
    ld [bc], a
    ld bc, $f802
    ld hl, sp+$00
    jr nz, jr_00d_6598

    nop
    ld [bc], a
    ld hl, $f802
    ld hl, sp+$00
    ld h, b
    ld hl, sp+$00
    ld [bc], a
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    nop
    ld b, b
    ld hl, sp-$08
    ld [bc], a
    ld b, c
    inc b
    add sp, -$09
    inc b
    ld b, b
    rst $28
    ld [$4004], sp
    ld [$0401], sp
    nop
    ld bc, $04f0
    ld bc, $e704
    db $fc
    inc b
    ld b, b
    db $f4
    add hl, bc
    inc b
    ld b, b
    add hl, bc
    db $fc
    inc b
    nop
    db $fc
    rst $28
    inc b
    ld bc, $e804
    ld bc, $4004
    rst $28
    ldh a, [rDIV]
    ld b, b
    ld bc, $0408
    nop
    ld [$04f7], sp
    ld bc, $eb04
    di
    inc b
    ld b, b
    db $eb
    dec b
    inc b
    ld b, b
    dec b
    dec b
    inc b
    nop
    dec b
    di
    inc b
    ld bc, $f802
    ld hl, sp+$2c
    nop
    ld hl, sp+$00
    inc l
    ld hl, $f802
    ld hl, sp+$2c
    nop
    ld hl, sp+$00
    inc l
    ld hl, $f802
    nop
    jr nc, jr_00d_6630

    ld hl, sp-$08
    jr nc, @+$43

    ld [bc], a
    ld hl, sp-$08
    jr nc, jr_00d_6619

jr_00d_6619:
    ld hl, sp+$00
    jr nc, jr_00d_667e

    ld bc, $fcf8
    ld l, $01
    ld [bc], a
    ld sp, hl
    nop
    inc h
    nop
    ld sp, hl
    ld hl, sp+$26
    ld bc, $f902
    ld hl, sp+$24
    ld h, b

jr_00d_6630:
    ld sp, hl
    nop
    ld h, $61
    ld [bc], a
    ld hl, sp+$00
    jr z, jr_00d_6639

jr_00d_6639:
    ld hl, sp-$08
    ld a, [hl+]
    ld bc, $f802
    ld hl, sp+$28
    ld h, b
    ld hl, sp+$00
    ld a, [hl+]
    ld h, c
    ld [bc], a
    ld hl, sp-$08
    ld b, b
    nop
    ld hl, sp+$00
    ld b, b
    ld hl, $f802
    ld hl, sp+$50
    nop
    ld hl, sp+$00
    ld d, b
    ld hl, $f802

Jump_00d_665a:
    ld hl, sp+$52
    nop
    ld hl, sp+$00
    ld d, d
    ld hl, $f006
    nop
    ld [hl-], a
    nop
    ldh a, [$fff8]
    inc [hl]
    nop
    ld hl, sp-$10
    ld d, h
    nop
    ld hl, sp+$08
    ld d, h
    jr nz, jr_00d_6673

jr_00d_6673:
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [de]
    ld bc, $f806
    ldh a, [rHDMA4]

jr_00d_667e:
    nop
    ld hl, sp+$08
    ld d, h
    jr nz, jr_00d_6684

jr_00d_6684:
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [de]
    nop
    ldh a, [rP1]
    ld [hl], $00
    ldh a, [$fff8]
    jr c, @+$03

    ld b, $f8
    ldh a, [rHDMA4]
    nop
    ld hl, sp+$08
    ld d, h
    jr nz, jr_00d_669d

jr_00d_669d:
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [de]
    nop
    ldh a, [rP1]
    ld a, [hl-]
    nop
    ldh a, [$fff8]
    inc a
    ld bc, $f806
    ldh a, [rHDMA4]
    nop
    ld hl, sp+$08
    ld d, h
    jr nz, jr_00d_66b6

jr_00d_66b6:
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [de]
    nop

Jump_00d_66bd:
    ldh a, [$fff8]
    ld [hl], $20
    ldh a, [rP1]
    jr c, jr_00d_66e6

    ld b, $f8
    ldh a, [rHDMA4]
    nop
    ld hl, sp+$08
    ld d, h
    jr nz, jr_00d_66cf

jr_00d_66cf:
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [de]
    nop
    ldh a, [$fff8]
    ld [hl-], a
    jr nz, @-$0e

    nop
    inc [hl]
    ld hl, $f802
    ld hl, sp+$46
    nop
    ld hl, sp+$00
    ld b, [hl]

jr_00d_66e6:
    ld hl, $f002
    ld hl, sp+$48
    nop
    ldh a, [rP1]
    ld c, b
    ld hl, $e804
    ld hl, sp+$4a
    nop
    ld hl, sp-$08
    ld c, h
    nop
    add sp, $00

jr_00d_66fb:
    ld c, d
    jr nz, @-$06

    nop
    ld c, h
    ld hl, $f804
    ld hl, sp+$4e
    nop
    ld hl, sp+$00

jr_00d_6708:
    ld c, [hl]
    jr nz, jr_00d_66fb

    ld [$0042], sp
    ldh a, [$fff0]
    ld b, d
    ld hl, $f804
    ld hl, sp+$46
    nop
    ld hl, sp+$00
    ld b, [hl]
    jr nz, jr_00d_6708

    inc c
    ld b, h
    nop
    db $ec
    db $ec
    ld b, h
    ld bc, $f004
    ld hl, sp+$48
    nop
    ldh a, [rP1]
    ld c, b
    jr nz, @-$1e

    ld hl, sp+$3e
    nop
    ldh [rP1], a
    ld a, $21
    inc b
    ld hl, sp-$08
    ld b, [hl]
    nop
    ldh [$fff8], a
    ld b, b
    nop
    ldh [rP1], a
    ld b, b
    jr nz, @-$06

jr_00d_6742:
    nop
    ld b, [hl]
    ld hl, $de01
    db $fc
    ld b, h
    ld bc, $f804
    ld hl, sp+$4e
    nop
    ld hl, sp+$00
    ld c, [hl]

jr_00d_6752:
    jr nz, jr_00d_6742

    ld a, [bc]
    ld b, d
    nop
    xor $ee
    ld b, d
    ld hl, $f804
    ld hl, sp+$46
    nop
    ld hl, sp+$00
    ld b, [hl]
    jr nz, jr_00d_6752

    dec c
    ld b, h
    nop
    db $ed
    db $eb
    ld b, h
    ld bc, $f802
    nop
    inc e
    nop
    ld hl, sp-$08
    ld e, $01
    ld [bc], a
    ld hl, sp+$00
    jr nz, jr_00d_677a

jr_00d_677a:
    ld hl, sp-$08
    ld [hl+], a
    ld bc, $f802
    nop
    inc e
    ld b, b
    ld hl, sp-$08
    ld e, $41
    ld [bc], a
    ld hl, sp+$00
    jr nz, jr_00d_67cc

    ld hl, sp-$08
    ld [hl+], a
    ld b, c
    inc b
    ld sp, hl
    add hl, bc
    inc b
    nop
    rst $20
    ld sp, hl
    inc b
    ld b, b
    add hl, bc
    rst $38
    inc b
    nop
    or $ef
    inc b
    ld b, c
    inc b
    rst $38
    add hl, bc
    inc b
    nop
    rst $20
    rst $38
    inc b
    ld b, b
    add hl, bc
    ld sp, hl
    inc b
    nop
    pop af
    rst $28
    inc b
    ld b, c
    inc b
    jp hl


    inc bc
    inc b
    ld b, b
    inc bc
    rlca
    inc b
    nop
    rlca
    push af
    inc b
    nop
    db $ed
    pop af
    inc b
    ld b, c
    inc b
    db $ec
    rlca
    inc b
    ld b, b
    rlca
    inc b
    inc b
    nop

jr_00d_67cc:
    inc b
    pop af
    inc b
    nop
    jp hl


    push af
    inc b
    ld b, c
    ld [bc], a
    ld hl, sp-$02
    nop
    ld b, b
    ld hl, sp-$0a
    ld [bc], a

jr_00d_67dc:
    ld b, c
    ld [bc], a
    ld hl, sp+$01
    nop
    ld b, b
    ld hl, sp-$07
    ld [bc], a
    ld b, c
    inc c
    add sp, -$0a
    stop
    ld [$10f6], sp
    ld b, b
    ldh a, [rTMA]
    ld [de], a
    jr nz, jr_00d_67dc

    cp $10
    jr nz, jr_00d_6800

    cp $10
    ld h, b
    ldh a, [$ffee]
    ld [de], a
    nop
    nop

jr_00d_6800:
    xor $12
    ld b, b
    nop
    ld b, $12
    ld h, b
    ld hl, sp-$1a
    inc d
    nop
    ld hl, sp+$0e

jr_00d_680d:
    inc d
    jr nz, @-$06

    cp $06
    ld b, b
    ld hl, sp-$0a
    ld [$0c41], sp
    add sp, -$07
    stop
    ld [$10f9], sp
    ld b, b
    ldh a, [$ff09]
    ld [de], a
    jr nz, jr_00d_680d

    ld bc, $2010
    ld [$1001], sp
    ld h, b
    ldh a, [$fff1]
    ld [de], a
    nop
    nop
    pop af
    ld [de], a
    ld b, b
    nop
    add hl, bc
    ld [de], a
    ld h, b
    ld hl, sp-$17
    inc d
    nop
    ld hl, sp+$11
    inc d
    jr nz, @-$06

    ld bc, $4006
    ld hl, sp-$07
    ld [$0641], sp
    ld hl, sp-$12
    ld d, h
    nop
    ld hl, sp+$06
    ld d, h
    jr nz, jr_00d_6852

jr_00d_6852:
    or $1a
    nop
    nop
    cp $1a
    nop
    ldh a, [$fffe]
    ld a, [hl-]
    nop
    ldh a, [$fff6]
    inc a
    ld bc, $f401
    db $fc
    inc b
    ld b, c
    ld [bc], a
    ld hl, sp-$08
    inc l
    db $10
    ld hl, sp+$00
    inc l
    ld sp, $f802
    nop
    jr nc, jr_00d_68a4

    ld hl, sp-$08
    jr nc, @+$53

    ld [bc], a
    ld hl, sp-$08
    jr nc, jr_00d_688d

    ld hl, sp+$00
    jr nc, jr_00d_68f2

    ld bc, $fcf8
    ld l, $11
    xor [hl]
    ld l, b
    rst $10
    ld l, b
    nop
    ld l, c
    add hl, hl

jr_00d_688d:
    ld l, c
    ld d, d
    ld l, c
    ld a, e
    ld l, c
    and h
    ld l, c
    call $f669
    ld l, c
    rra
    ld l, d
    ld c, b
    ld l, d
    ld d, c
    ld l, d
    ld e, d
    ld l, d
    ld h, e
    ld l, d
    ld l, h
    ld l, d

jr_00d_68a4:
    ld [hl], l
    ld l, d
    ld a, [hl]
    ld l, d
    add a
    ld l, d
    or b
    ld l, d
    reti


    ld l, d
    ld a, [bc]
    rst $18
    push af
    stop
    rst $18
    db $ed
    nop
    nop
    rst $38
    ld [$0034], sp
    rst $38
    nop
    inc h
    nop
    rst $38
    ld hl, sp+$14
    nop
    rst $38
    ldh a, [rDIV]
    nop
    rst $28
    ld [$0032], sp
    rst $28
    nop
    ld [hl+], a
    nop
    rst $28
    ld hl, sp+$12
    nop
    rst $28
    ldh a, [rSC]
    ld bc, $e00a
    push af
    jr nc, jr_00d_68dc

jr_00d_68dc:
    ldh [$ffed], a
    jr nz, jr_00d_68e0

jr_00d_68e0:
    nop
    ld [$0038], sp
    nop
    nop
    jr z, jr_00d_68e8

jr_00d_68e8:
    nop
    ld hl, sp+$18
    nop
    nop
    ldh a, [$ff08]
    nop
    ldh a, [$ff08]

jr_00d_68f2:
    ld [hl], $00
    ldh a, [rP1]
    ld h, $00
    ldh a, [$fff8]
    ld d, $00
    ldh a, [$fff0]
    ld b, $01
    ld a, [bc]
    pop hl
    push af
    ld e, $00
    pop hl
    db $ed
    ld c, $00
    ld bc, $3c08
    nop
    ld bc, $2c00
    nop
    ld bc, $1cf8
    nop
    ld bc, $0cf0
    nop
    pop af
    ld [$003a], sp
    pop af
    nop
    ld a, [hl+]
    nop
    pop af
    ld hl, sp+$1a
    nop
    pop af
    ldh a, [$ff0a]
    ld bc, $e00a
    db $fd
    db $10
    jr nz, @-$1e

    dec b
    nop
    jr nz, jr_00d_6933

jr_00d_6933:
    dec bc
    ld b, h
    nop
    nop
    di
    ld b, d
    nop
    ldh a, [$fff3]
    ld b, b
    nop
    nop
    inc bc
    jr z, jr_00d_6942

jr_00d_6942:
    nop
    ei
    jr jr_00d_6946

jr_00d_6946:
    ldh a, [$ff0b]
    ld [hl], $00
    ldh a, [$ff03]
    ld h, $00
    ldh a, [$fffb]
    ld d, $01
    ld a, [bc]
    ldh [$fffb], a
    jr nc, @+$32

    ldh [$ff03], a
    jr nz, jr_00d_698b

    nop
    add hl, bc
    ld b, h
    stop
    pop af
    ld b, d
    db $10
    ldh a, [$fff1]
    ld b, b
    stop
    ld bc, $1028
    nop
    ld sp, hl
    jr @+$12

    ldh a, [$ff09]
    ld [hl], $10
    ldh a, [rSB]
    ld h, $10
    ldh a, [$fff9]
    ld d, $11
    ld a, [bc]
    rst $18
    push af
    ld a, $00
    rst $18
    db $ed
    ld l, $00
    rst $38
    ld [$0034], sp
    rst $38
    nop
    inc h

jr_00d_698b:
    nop
    rst $38
    ld hl, sp+$14
    nop
    rst $38
    ldh a, [rDIV]
    nop
    rst $28
    ld [$0032], sp
    rst $28
    nop
    ld [hl+], a
    nop
    rst $28
    ld hl, sp+$12
    nop
    rst $28
    ldh a, [rSC]
    ld bc, $e00a
    push af
    ld a, $00
    ldh [$ffed], a
    ld l, $00
    nop
    ld [$0038], sp
    nop
    nop
    jr z, jr_00d_69b5

jr_00d_69b5:
    nop
    ld hl, sp+$18
    nop
    nop
    ldh a, [$ff08]
    nop
    ldh a, [$ff08]
    ld [hl], $00
    ldh a, [rP1]
    ld h, $00
    ldh a, [$fff8]
    ld d, $00
    ldh a, [$fff0]
    ld b, $01
    ld a, [bc]
    pop hl
    push af
    ld a, $00
    pop hl
    db $ed
    ld l, $00
    ld bc, $3c08
    nop
    ld bc, $2c00
    nop
    ld bc, $1cf8
    nop
    ld bc, $0cf0
    nop
    pop af
    ld [$003a], sp
    pop af
    nop
    ld a, [hl+]
    nop
    pop af
    ld hl, sp+$1a
    nop
    pop af
    ldh a, [$ff0a]
    ld bc, $e00a
    push af
    stop
    ldh [$ffed], a
    nop
    nop
    nop
    ld [$0038], sp
    nop
    nop
    jr z, jr_00d_6a07

jr_00d_6a07:
    nop
    ld hl, sp+$18
    nop
    nop
    ldh a, [$ff08]
    nop
    ldh a, [$ff08]
    ld [hl], $00
    ldh a, [rP1]
    ld h, $00
    ldh a, [$fff8]
    ld d, $00
    ldh a, [$fff0]
    ld b, $01
    ld a, [bc]
    pop hl
    push af
    stop
    pop hl
    db $ed
    nop
    nop
    ld bc, $3c08
    nop
    ld bc, $2c00
    nop
    ld bc, $1cf8
    nop
    ld bc, $0cf0
    nop
    pop af
    ld [$003a], sp
    pop af
    nop
    ld a, [hl+]
    nop
    pop af
    ld hl, sp+$1a
    nop
    pop af
    ldh a, [$ff0a]
    ld bc, $f802
    nop
    ld d, [hl]
    nop
    ld hl, sp-$08

jr_00d_6a4f:
    ld b, [hl]
    ld bc, $f802
    nop
    ld c, b
    jr nz, jr_00d_6a4f

    ld hl, sp+$48
    ld bc, $f802
    ld hl, sp+$4c
    ld h, b
    ld hl, sp+$00
    ld c, d
    ld h, c
    ld [bc], a
    ld hl, sp-$08
    ld c, b
    ld b, b
    ld hl, sp+$00
    ld c, b
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld c, h
    nop

jr_00d_6a71:
    ld hl, sp-$08
    ld c, d
    ld bc, $f802
    nop
    ld d, b
    nop
    ld hl, sp-$08
    ld c, [hl]
    ld bc, $f802
    ld hl, sp+$54
    nop
    ld hl, sp+$00
    ld d, d
    ld bc, $000a
    dec bc
    jr c, jr_00d_6a8c

jr_00d_6a8c:
    ldh [$fffe], a
    db $10
    jr nz, jr_00d_6a71

    ld b, $00
    jr nz, jr_00d_6a95

jr_00d_6a95:
    di
    ld b, d
    nop
    ldh a, [$fff3]
    ld b, b
    nop
    nop
    inc bc
    jr z, jr_00d_6aa0

jr_00d_6aa0:
    nop
    ei
    jr jr_00d_6aa4

jr_00d_6aa4:
    ldh a, [$ff0b]
    ld [hl], $00
    ldh a, [$ff03]
    ld h, $00
    ldh a, [$fffb]
    ld d, $01
    ld a, [bc]
    nop
    dec bc
    jr c, jr_00d_6ab5

jr_00d_6ab5:
    ldh [$fff9], a
    stop
    ldh [$fff1], a
    nop
    nop
    nop
    di
    ld b, d
    nop
    ldh a, [$fff3]
    ld b, b
    nop
    nop
    inc bc
    jr z, jr_00d_6ac9

jr_00d_6ac9:
    nop
    ei
    jr jr_00d_6acd

jr_00d_6acd:
    ldh a, [$ff0b]
    ld [hl], $00
    ldh a, [$ff03]
    ld h, $00
    ldh a, [$fffb]
    ld d, $01
    ld [bc], a
    ld hl, sp+$00
    ld d, [hl]
    nop
    ld hl, sp-$08
    ld b, [hl]
    ld bc, $6b52
    ld l, e
    ld l, e
    add h
    ld l, e
    sbc l
    ld l, e
    or [hl]
    ld l, e
    rst $08
    ld l, e
    add sp, $6b
    ld bc, $1a6c
    ld l, h
    inc sp
    ld l, h
    ld c, h
    ld l, h
    ld h, l
    ld l, h
    ld a, [hl]
    ld l, h
    sub a
    ld l, h
    or b
    ld l, h
    ret


    ld l, h
    ldh [c], a
    ld l, h
    ei
    ld l, h
    inc d
    ld l, l
    dec l
    ld l, l
    ld b, [hl]
    ld l, l
    ld e, a
    ld l, l
    ld a, b
    ld l, l
    sub c
    ld l, l
    xor d
    ld l, l
    or e
    ld l, l
    call z, $e56d
    ld l, l
    cp $6d
    rra
    ld l, [hl]
    inc a
    ld l, [hl]
    ld d, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    add a
    ld l, [hl]
    and b
    ld l, [hl]
    cp c
    ld l, [hl]
    jp nc, $eb6e

    ld l, [hl]
    inc b
    ld l, a
    dec e
    ld l, a
    ld [hl], $6f
    ld c, a
    ld l, a
    ld e, b
    ld l, a
    ld h, c
    ld l, a
    ld l, d
    ld l, a
    ld [hl], e
    ld l, a
    ld a, h
    ld l, a
    adc c
    ld l, a

jr_00d_6b42:
    sub [hl]
    ld l, a
    sbc a
    ld l, a

jr_00d_6b46:
    xor b
    ld l, a
    or l
    ld l, a
    cp [hl]
    ld l, a
    rst $00
    ld l, a
    ret nc

    ld l, a
    jp hl


    ld l, a
    ld b, $ea
    dec b
    ld [bc], a
    jr nz, jr_00d_6b42

    db $fd
    ld [de], a

jr_00d_6b5a:
    jr nz, jr_00d_6b46

    push af
    ld [hl+], a

jr_00d_6b5e:
    jr nz, jr_00d_6b5a

    dec b
    inc b

jr_00d_6b62:
    jr nz, jr_00d_6b5e

    db $fd
    inc d
    jr nz, jr_00d_6b62

    push af
    inc h
    ld hl, $ea06
    di
    ld [bc], a
    nop
    ld [$12fb], a
    nop
    ld [$2203], a

jr_00d_6b77:
    nop

jr_00d_6b78:
    ld a, [$0405]

jr_00d_6b7b:
    jr nz, jr_00d_6b77

    db $fd
    inc d
    jr nz, jr_00d_6b7b

    push af
    inc h
    ld hl, $fa06
    db $fd
    jr jr_00d_6ba9

    ld [$0205], a
    jr nz, jr_00d_6b78

    db $fd
    ld [de], a

jr_00d_6b90:
    jr nz, @-$14

    push af
    ld [hl+], a

jr_00d_6b94:
    jr nz, jr_00d_6b90

    dec b
    inc b
    jr nz, jr_00d_6b94

    push af
    inc h
    ld hl, $fa06
    db $fd
    jr jr_00d_6bc2

    ld [$02f3], a
    nop
    ld [$12fb], a

jr_00d_6ba9:
    nop
    ld [$2203], a

jr_00d_6bad:
    nop

jr_00d_6bae:
    ld a, [$0405]
    jr nz, jr_00d_6bad

    push af
    inc h
    ld hl, $fa06
    dec b
    ld [$fa20], sp
    db $fd
    jr jr_00d_6bdf

    ld a, [$28f5]

jr_00d_6bc2:
    jr nz, jr_00d_6bae

    dec b
    ld [bc], a
    jr nz, @-$14

    db $fd
    ld [de], a
    jr nz, @-$14

    push af
    ld [hl+], a
    ld hl, $fa06
    dec b
    ld [$fa20], sp
    db $fd
    jr jr_00d_6bf8

    ld a, [$28f5]
    jr nz, @-$14

    di
    ld [bc], a

jr_00d_6bdf:
    nop

jr_00d_6be0:
    ld [$12fb], a
    nop

jr_00d_6be4:
    ld [$2203], a
    ld bc, $fa06
    dec b
    ld [$fa20], sp
    push af
    jr z, jr_00d_6c11

    ld [$0205], a
    jr nz, jr_00d_6be0

    db $fd
    ld [de], a

jr_00d_6bf8:
    jr nz, jr_00d_6be4

    push af
    ld [hl+], a
    jr nz, jr_00d_6bf8

    db $fd
    inc d
    ld hl, $fa06
    dec b
    ld [$fa20], sp
    push af
    jr z, jr_00d_6c2a

    ld [$02f3], a
    nop
    ld [$12fb], a

jr_00d_6c11:
    nop

jr_00d_6c12:
    ld [$2203], a
    nop

jr_00d_6c16:
    ld a, [$14fd]
    ld hl, $fa06
    dec b
    ld [$fa20], sp
    push af
    jr z, jr_00d_6c43

    ld [$0205], a
    jr nz, jr_00d_6c12

    db $fd
    ld [de], a

jr_00d_6c2a:
    jr nz, jr_00d_6c16

    push af
    ld [hl+], a
    jr nz, jr_00d_6c2a

    db $fd
    jr c, jr_00d_6c54

    ld b, $fa
    dec b
    ld [$fa20], sp
    push af
    jr z, jr_00d_6c5c

    ld [$02f3], a
    nop
    ld [$12fb], a

jr_00d_6c43:
    nop
    ld [$2203], a
    nop

jr_00d_6c48:
    ld a, [$38fd]
    ld hl, $fa06
    inc b
    ld b, $20
    ld a, [$16fc]

jr_00d_6c54:
    jr nz, @-$04

    db $f4
    ld h, $20
    ld [$0204], a

jr_00d_6c5c:
    jr nz, jr_00d_6c48

    db $fc
    ld [de], a
    jr nz, @-$14

    db $f4
    ld [hl+], a
    ld hl, $fa06
    inc b
    ld b, $20
    ld a, [$16fc]
    jr nz, @-$04

    db $f4
    ld h, $20
    ld [$02f2], a
    nop
    ld [$12fa], a
    nop
    ld [$2202], a
    ld bc, $fa06
    dec b
    ld [$fa20], sp
    push af
    jr z, jr_00d_6ca7

    ld [$02f3], a
    nop
    ld [$12fb], a
    nop

jr_00d_6c8f:
    ld [$2203], a
    nop

jr_00d_6c93:
    ld a, [$36fd]
    ld hl, $fa06
    dec b
    ld [$fa20], sp
    push af
    jr z, jr_00d_6cc0

    ld [$0205], a
    jr nz, jr_00d_6c8f

    db $fd
    ld [de], a

jr_00d_6ca7:
    jr nz, jr_00d_6c93

    push af
    ld [hl+], a
    jr nz, jr_00d_6ca7

    db $fd
    ld [hl], $21
    ld b, $fa
    dec b
    ld [$fa20], sp
    db $fd
    jr jr_00d_6cd9

    ld [$1afd], a

jr_00d_6cbc:
    jr nz, @-$14

    push af
    ld a, [hl+]

jr_00d_6cc0:
    jr nz, jr_00d_6cbc

    push af
    inc a
    jr nz, @-$07

    db $ed
    ld a, [hl-]
    ld hl, $fa06
    dec b
    ld [$fa20], sp
    db $fd
    jr jr_00d_6cf2

    ld [$1afd], a

jr_00d_6cd5:
    jr nz, @-$14

jr_00d_6cd7:
    push af
    ld a, [hl+]

jr_00d_6cd9:
    jr nz, jr_00d_6cd5

    push af
    inc a
    jr nz, jr_00d_6cd7

    db $ed
    ld a, [hl-]
    ld h, c

jr_00d_6ce2:
    ld b, $fa
    db $fc
    ld l, $00
    pop af
    inc b
    ld e, $00
    pop af
    db $f4
    jr nc, jr_00d_6cef

jr_00d_6cef:
    ld bc, $3ef4

jr_00d_6cf2:
    nop
    ld bc, $3e04
    jr nz, jr_00d_6ce2

    db $fc
    ld c, $01
    ld b, $f1
    inc b
    ld e, $00
    pop af
    db $f4
    jr nc, jr_00d_6d04

jr_00d_6d04:
    ld [$0efc], a
    nop
    ld a, [$10fc]
    nop
    ld bc, $00f4
    nop
    ld bc, $0004
    ld hl, $f106
    db $f4
    ld e, $20
    pop af
    inc b
    jr nc, @+$22

    ld [$0efc], a
    jr nz, @-$04

    db $fc
    stop
    ld bc, $00f4
    nop
    ld bc, $0004
    ld hl, $ff06
    inc b
    ld e, $40
    rst $38
    db $f4
    jr nc, jr_00d_6d76

    ld b, $fc
    ld c, $40
    rst $28
    inc b
    jr nz, jr_00d_6d3e

jr_00d_6d3e:
    rst $28
    db $f4
    jr nz, jr_00d_6d62

    or $fc
    ld l, $41
    ld b, $ff
    db $f4
    ld e, $60
    rst $38
    inc b
    jr nc, jr_00d_6daf

    ld b, $fc
    ld c, $60
    rst $28
    inc b
    jr nz, jr_00d_6d57

jr_00d_6d57:
    rst $28
    db $f4
    jr nz, jr_00d_6d7b

    or $fc
    ld l, $41
    ld b, $ff
    inc b

jr_00d_6d62:
    ld e, $40
    rst $38
    db $f4
    jr nc, jr_00d_6da8

    ld b, $fc
    ld c, $40
    or $fc

jr_00d_6d6e:
    ld l, $40
    rst $28
    inc b
    ld a, $60
    rst $28
    db $f4

jr_00d_6d76:
    ld a, $41
    ld b, $f0
    inc b

jr_00d_6d7b:
    inc e
    jr nz, jr_00d_6d6e

    db $fc
    inc l
    jr nz, jr_00d_6d82

jr_00d_6d82:
    inc b
    ld a, [bc]
    jr nz, jr_00d_6d86

jr_00d_6d86:
    db $f4
    inc e
    ld b, b
    nop
    db $fc
    inc l
    ld b, b
    ldh a, [$fff4]
    ld a, [bc]
    ld b, c
    ld b, $f0
    db $f4
    inc e
    nop
    ldh a, [$fffc]
    inc l
    nop
    nop
    db $f4
    ld a, [bc]
    nop
    nop
    inc b
    inc e
    ld h, b
    nop
    db $fc
    inc l
    ld h, b
    ldh a, [rDIV]

jr_00d_6da8:
    ld a, [bc]
    ld h, c
    ld [bc], a
    ld hl, sp-$08
    ld c, h
    ld b, b

jr_00d_6daf:
    ld hl, sp+$00
    ld c, h
    ld hl, $ed06
    di
    ld c, [hl]
    nop
    db $ed
    ei
    ld e, h
    nop
    db $ed
    inc bc
    ld l, d
    nop
    db $fd
    di
    ld d, b
    nop
    db $fd
    ei
    ld e, [hl]
    nop
    db $fd
    inc bc
    ld l, h
    ld bc, $ed06
    db $f4
    ld c, [hl]
    nop
    db $ed
    db $fc
    ld e, h
    nop
    db $ed
    inc b
    ld l, d
    nop
    db $fd
    db $f4
    ld e, d
    nop
    db $fd
    db $fc
    ld l, b
    nop
    db $fd
    inc b
    halt
    ld bc, $ed06
    di
    ld [hl-], a
    nop
    db $fd
    inc bc
    ld b, d
    nop
    db $fd
    di
    inc [hl]
    nop
    db $fd
    ei
    ld b, h
    nop
    db $ed
    ei
    ld e, h
    nop
    db $ed
    inc bc
    ld l, d
    ld bc, $ed08
    di
    ld c, [hl]
    nop
    db $ed
    ei
    ld e, h
    nop
    db $ed
    inc bc
    ld l, d
    nop
    db $fd
    di
    ld d, b
    nop
    db $fd
    ei
    ld e, [hl]
    nop
    db $fd
    inc bc
    ld l, h
    nop
    db $eb
    db $ed
    ld h, [hl]
    nop
    db $eb
    push af
    ld [hl], h
    ld bc, $fd07
    di
    ld d, [hl]
    nop
    db $fd
    ei
    ld h, h
    nop
    nop
    add hl, bc
    ld [hl], d
    nop
    db $fd
    inc bc
    ld l, h
    nop
    db $ed
    ei
    ld e, h
    nop
    db $ed
    inc bc
    ld l, d
    nop
    db $ed
    di
    ld [hl-], a
    ld bc, $ed06
    db $f4
    ld [hl-], a
    nop
    db $fd
    db $f4
    inc [hl]
    nop
    db $fd
    db $fc
    ld b, [hl]
    nop
    db $ed
    db $fc
    ld e, h
    nop
    db $ed
    inc b
    ld l, d
    nop
    db $fd
    inc b
    ld b, d
    ld bc, $f306
    db $fc
    ld b, b
    nop
    inc bc
    inc b
    ld [hl], b
    nop
    inc bc
    db $f4
    ld [hl], b
    jr nz, jr_00d_6e66

    db $fc
    ld h, d
    nop

jr_00d_6e66:
    di
    inc b
    ld [hl], b
    ld b, b
    di
    db $f4
    ld [hl], b
    ld h, c
    ld b, $f3
    db $fc
    ld h, b
    nop
    di
    inc b
    ld l, [hl]
    nop
    inc bc
    db $fc
    ld h, d
    nop
    inc bc
    inc b
    ld [hl], b
    nop
    di
    db $f4
    ld [hl], b
    ld h, b
    inc bc
    db $f4
    ld [hl], b
    ld hl, $f006
    inc bc
    ld l, d
    nop
    nop
    inc bc
    ld b, d
    nop

jr_00d_6e90:
    inc bc
    db $fc
    ld h, d
    nop
    di
    db $fc
    ld h, d
    ld b, b
    inc bc
    db $f4
    ld [hl], b
    jr nz, jr_00d_6e90

    db $f4
    ld [hl], b
    ld h, c
    ld b, $06
    inc bc
    ld l, d
    ld b, b
    or $03
    ld b, d
    ld b, b
    di
    db $fc
    ld h, d
    ld b, b
    inc bc
    db $fc
    ld h, d
    nop
    di
    db $f4
    ld [hl], b
    ld h, b
    inc bc
    db $f4
    ld [hl], b
    ld hl, $0306
    db $fc
    ld h, b
    ld b, b
    inc bc
    inc b
    ld l, [hl]
    ld b, b

jr_00d_6ec2:
    di
    db $fc
    ld h, d
    ld b, b
    di
    inc b
    ld [hl], b
    ld b, b
    inc bc
    db $f4
    ld [hl], b
    jr nz, jr_00d_6ec2

    db $f4
    ld [hl], b
    ld h, c
    ld b, $03
    db $fc
    ld b, b
    ld b, b
    di
    inc b
    ld [hl], b
    ld b, b
    di
    db $f4
    ld [hl], b
    ld h, b
    di
    db $fc
    ld h, d
    ld b, b
    inc bc
    inc b
    ld [hl], b
    nop
    inc bc
    db $f4
    ld [hl], b
    ld hl, $0306
    db $fc
    ld h, b
    ld h, b
    inc bc
    db $f4
    ld l, [hl]
    ld h, b
    di
    db $fc
    ld h, d
    ld h, b
    di
    db $f4
    ld [hl], b
    ld h, b
    inc bc
    inc b
    ld [hl], b
    nop

Jump_00d_6f00:
    di
    inc b
    ld [hl], b
    ld b, c
    ld b, $06
    push af
    ld l, d
    ld h, b

jr_00d_6f09:
    or $f5
    ld b, d
    ld h, b
    di
    db $fc
    ld h, d
    ld h, b
    inc bc
    db $fc
    ld h, d
    jr nz, jr_00d_6f09

    inc b
    ld [hl], b
    ld b, b
    inc bc
    inc b
    ld [hl], b
    ld bc, $f006
    push af
    ld l, d
    jr nz, jr_00d_6f23

jr_00d_6f23:
    push af
    ld b, d
    jr nz, @+$05

    db $fc
    ld h, d
    jr nz, @-$0b

    db $fc
    ld h, d
    ld h, b
    inc bc

jr_00d_6f2f:
    inc b
    ld [hl], b
    nop
    di
    inc b
    ld [hl], b
    ld b, c
    ld b, $f3
    db $fc
    ld h, b
    jr nz, jr_00d_6f2f

    db $f4
    ld l, [hl]
    jr nz, @+$05

    db $fc
    ld h, d
    jr nz, @+$05

    db $f4
    ld [hl], b
    jr nz, @-$0b

    inc b
    ld [hl], b
    ld b, b
    inc bc
    inc b
    ld [hl], b
    ld bc, $f802
    nop
    ld c, b
    nop
    ld hl, sp-$08

jr_00d_6f56:
    ld c, h
    ld bc, $f802
    db $fc
    ld h, [hl]
    jr nz, jr_00d_6f56

    db $f4
    ld [hl], h
    ld hl, $f802
    db $fc
    ld h, [hl]
    ld h, b
    ld hl, sp-$0c
    ld [hl], h
    ld h, c
    ld [bc], a
    ld hl, sp-$04
    ld h, [hl]
    ld b, b
    ld hl, sp+$04
    ld [hl], h
    ld b, c
    ld [bc], a
    ld hl, sp-$04
    ld h, [hl]
    nop
    ld hl, sp+$04

jr_00d_6f7a:
    ld [hl], h
    ld bc, $f803

jr_00d_6f7e:
    nop
    ld c, d
    jr nz, jr_00d_6f7a

    ld hl, sp+$58
    jr nz, jr_00d_6f7e

    ldh a, [$ff3a]
    ld hl, $f803
    nop
    ld c, d
    jr nz, @-$06

    ld hl, sp+$58
    ld h, b
    ld hl, sp-$10

jr_00d_6f94:
    ld a, [hl-]
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld c, d
    jr nz, jr_00d_6f94

    ld hl, sp+$58
    ld hl, $f802
    ld hl, sp+$4a
    nop
    ld hl, sp+$00
    ld c, d
    ld hl, $f403
    db $f4
    inc c
    nop
    db $fc
    db $fc
    inc c
    nop
    db $f4
    inc b
    inc c
    ld bc, $f402
    db $ec
    ld d, d
    nop
    db $f4
    inc c

jr_00d_6fbc:
    ld d, d
    ld hl, $f802
    ld hl, sp+$54
    jr nz, jr_00d_6fbc

    nop
    ld d, h
    ld b, c
    ld [bc], a
    ld hl, sp+$00
    ld d, h
    nop
    ld hl, sp-$08
    ld d, h
    ld h, c
    ld b, $ed
    pop af
    ld [hl-], a
    nop
    db $fd
    pop af
    inc [hl]
    nop
    db $fd
    ld sp, hl
    ld b, [hl]
    nop
    db $ed
    ld sp, hl
    ld e, h
    nop
    db $ed
    ld bc, $006a
    db $fd
    ld bc, $0142
    ld b, $fa
    ld [bc], a
    ld [$fa20], sp
    ldh a, [c]
    jr z, jr_00d_7012

    ld [$02f0], a
    nop
    ld [$12f8], a
    nop
    ld [$2200], a
    nop
    ld a, [$36fa]
    ld hl, $7030
    ld d, l
    ld [hl], b
    ld a, d
    ld [hl], b
    and e
    ld [hl], b
    call z, $f170
    ld [hl], b
    ld d, $71
    dec sp
    ld [hl], c

jr_00d_7012:
    ld h, b
    ld [hl], c
    ld h, l
    ld [hl], c
    ld l, d
    ld [hl], c
    ld l, a
    ld [hl], c
    ld [hl], h
    ld [hl], c
    ld a, c
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    add e
    ld [hl], c
    adc h
    ld [hl], c
    or c
    ld [hl], c
    jp c, $ff71

    ld [hl], c
    inc h
    ld [hl], d
    ld c, l
    ld [hl], d
    halt
    ld [hl], d
    add hl, bc
    nop
    add sp, $24
    jr nz, jr_00d_7038

    ldh a, [$ff32]

jr_00d_7038:
    jr nz, jr_00d_703c

    ld hl, sp+$22

jr_00d_703c:
    jr nz, jr_00d_7040

    nop
    ld [de], a

jr_00d_7040:
    jr nz, @+$04

    ld [$2002], sp
    ldh a, [c]
    ldh a, [$ff30]
    jr nz, jr_00d_703c

    ld hl, sp+$20
    jr nz, jr_00d_7040

    nop

jr_00d_704f:
    db $10
    jr nz, @-$0c

    ld [$2100], sp
    add hl, bc
    cp $e8
    inc h
    jr nz, jr_00d_705b

jr_00d_705b:
    ldh a, [$ff32]
    jr nz, jr_00d_704f

    ldh a, [$ff30]
    jr nz, @-$0e

    ld hl, sp+$20
    jr nz, jr_00d_7067

jr_00d_7067:
    ld hl, sp+$26
    jr nz, jr_00d_706b

jr_00d_706b:
    nop
    ld d, $20
    nop
    ld [$2006], sp
    ldh a, [rP1]
    inc d
    jr nz, jr_00d_7067

    ld [$2104], sp
    ld a, [bc]
    ldh a, [$ffe8]
    ld c, b
    nop
    nop
    add sp, $1c
    jr nz, jr_00d_7084

jr_00d_7084:
    ldh a, [$ff0c]
    jr nz, @-$0e

    ldh a, [$ff30]
    jr nz, @-$0e

    ld hl, sp+$20
    jr nz, jr_00d_7090

jr_00d_7090:
    ld hl, sp+$26
    jr nz, jr_00d_7094

jr_00d_7094:
    nop
    ld d, $20
    nop
    ld [$2006], sp
    ldh a, [rP1]
    inc d
    jr nz, jr_00d_7090

    ld [$2104], sp
    ld a, [bc]
    inc bc
    db $10
    jr z, jr_00d_70c8

    inc bc
    nop
    ld a, [de]
    jr nz, jr_00d_70b0

    ld [$200a], sp

jr_00d_70b0:
    di
    nop
    jr jr_00d_70d4

    di
    ld [$2008], sp
    inc bc
    add sp, $28
    nop
    inc bc
    ld hl, sp+$1a
    nop
    inc bc
    ldh a, [$ff0a]
    nop
    di
    ld hl, sp+$18
    nop

jr_00d_70c8:
    di
    ldh a, [$ff08]
    ld bc, $0009
    nop
    ld [hl+], a
    nop
    nop
    ld hl, sp+$12

jr_00d_70d4:
    nop
    cp $10
    inc h
    nop
    nop
    ld [$0032], sp
    ldh a, [$ff08]
    jr nc, jr_00d_70e1

jr_00d_70e1:
    ldh a, [rP1]
    jr nz, jr_00d_70e5

jr_00d_70e5:
    nop
    ldh a, [rTMA]
    nop
    ldh a, [$fff8]
    inc d
    nop
    ldh a, [$fff0]
    inc b
    ld bc, $f009

jr_00d_70f3:
    rst $30
    ld [hl], $20
    ldh a, [rIE]
    inc [hl]

jr_00d_70f9:
    jr nz, jr_00d_70f9

    rst $20
    inc h
    jr nz, jr_00d_70ff

jr_00d_70ff:
    rst $28
    ld [hl-], a
    jr nz, jr_00d_70f3

    rst $28
    jr nc, jr_00d_7126

    nop
    rst $30
    ld h, $20
    nop
    rst $38
    ld d, $20
    nop
    rlca
    ld b, $20
    ldh a, [rTAC]
    inc b
    ld hl, $f009

jr_00d_7118:
    db $f4
    ld [hl], $30
    ldh a, [$fffc]
    inc [hl]

jr_00d_711e:
    jr nc, jr_00d_711e

    db $e4
    inc h
    jr nc, jr_00d_7124

jr_00d_7124:
    db $ec
    ld [hl-], a

jr_00d_7126:
    jr nc, jr_00d_7118

    db $ec
    jr nc, jr_00d_715b

    nop
    db $f4
    ld h, $30
    nop
    db $fc
    ld d, $30

jr_00d_7133:
    nop
    inc b
    ld b, $30

jr_00d_7137:
    ldh a, [rDIV]
    inc b
    ld sp, $fc09
    add sp, $24

jr_00d_713f:
    jr nz, jr_00d_713f

    ldh a, [$ff32]
    jr nz, jr_00d_7133

    ldh a, [$ff30]
    jr nz, jr_00d_7137

    ld hl, sp+$20

jr_00d_714b:
    jr nz, jr_00d_714b

    ld hl, sp+$26

jr_00d_714f:
    jr nz, jr_00d_714f

    nop
    ld d, $20
    cp $08
    ld b, $20
    xor $00
    inc d

jr_00d_715b:
    jr nz, jr_00d_714b

    ld [$2104], sp
    ld bc, $fcf8
    ld b, [hl]
    ld bc, $f801
    db $fc
    ld b, h
    ld b, c
    ld bc, $fcf8
    ld b, d
    ld bc, $f801
    db $fc
    ld b, b
    ld b, c
    ld bc, $fcf8
    ld l, $01
    ld bc, $fcfc
    ld a, $31
    ld bc, $fcf8
    jr c, jr_00d_7184

    ld [bc], a

jr_00d_7184:
    ld hl, sp+$00
    ld a, [hl-]
    nop
    ld hl, sp-$08
    ld a, [hl+]
    ld bc, $0209
    add sp, $24
    jr nz, jr_00d_7196

    ldh a, [$ff32]
    jr nz, jr_00d_719a

jr_00d_7196:
    ld hl, sp+$22
    jr nz, jr_00d_719e

jr_00d_719a:
    nop
    ld [de], a
    jr nz, jr_00d_71a2

jr_00d_719e:
    ld [$2002], sp
    db $f4

jr_00d_71a2:
    ldh a, [$ff30]
    jr nz, jr_00d_719a

    ld hl, sp+$20
    jr nz, jr_00d_719e

    nop
    db $10
    jr nz, jr_00d_71a2

    ld [$2100], sp
    ld a, [bc]
    inc b
    db $10
    jr z, jr_00d_71d6

    inc b
    nop
    ld a, [de]
    jr nz, jr_00d_71bf

    ld [$200a], sp
    db $f4

jr_00d_71bf:
    nop
    jr jr_00d_71e2

    db $f4
    ld [$2008], sp
    inc b
    add sp, $28
    nop
    inc b
    ld hl, sp+$1a
    nop
    inc b
    ldh a, [$ff0a]
    nop
    db $f4
    ld hl, sp+$18

jr_00d_71d5:
    nop

jr_00d_71d6:
    db $f4
    ldh a, [$ff08]
    ld bc, $ff09
    ld [$2024], a
    ld bc, $32f2

jr_00d_71e2:
    jr nz, jr_00d_71d5

    ldh a, [c]
    jr nc, jr_00d_7207

    pop af
    ld a, [$2020]
    ld bc, $26fa
    jr nz, jr_00d_71f1

    ld [bc], a

jr_00d_71f1:
    ld d, $20
    ld bc, $060a
    jr nz, @-$0d

    ld [bc], a
    inc d
    jr nz, @-$0d

    ld a, [bc]
    inc b
    ld hl, $fc09
    ld [$2024], a
    cp $f2
    ld [hl-], a

jr_00d_7207:
    jr nz, @-$10

    ldh a, [c]
    jr nc, jr_00d_722c

    xor $fa
    jr nz, jr_00d_7230

    cp $fa
    ld h, $20
    cp $02
    ld d, $20
    cp $0a
    ld b, $20
    xor $02
    inc d
    jr nz, @-$10

    ld a, [bc]

jr_00d_7222:
    inc b
    ld hl, $f00a

jr_00d_7226:
    add sp, $48
    nop
    nop
    add sp, $3c

jr_00d_722c:
    jr nz, jr_00d_722e

jr_00d_722e:
    ldh a, [$ff2c]

jr_00d_7230:
    jr nz, jr_00d_7222

    ldh a, [$ff30]
    jr nz, jr_00d_7226

    ld hl, sp+$20
    jr nz, jr_00d_723a

jr_00d_723a:
    ld hl, sp+$26
    jr nz, jr_00d_723e

jr_00d_723e:
    nop
    ld d, $20
    nop
    ld [$2006], sp
    ldh a, [rP1]
    inc d
    jr nz, jr_00d_723a

    ld [$2104], sp
    ld a, [bc]
    ldh a, [$ffe8]
    ld c, b
    nop
    nop
    add sp, $1e
    jr nz, jr_00d_7257

jr_00d_7257:
    ldh a, [$ff0e]
    jr nz, @-$0e

    ldh a, [$ff30]
    jr nz, @-$0e

    ld hl, sp+$20
    jr nz, jr_00d_7263

jr_00d_7263:
    ld hl, sp+$26
    jr nz, jr_00d_7267

jr_00d_7267:
    nop
    ld d, $20
    nop
    ld [$2006], sp
    ldh a, [rP1]
    inc d
    jr nz, jr_00d_7263

    ld [$2104], sp
    ld a, [bc]
    cp $10
    jr z, @-$5e

    cp $00
    ld a, [de]
    and b
    cp $08
    ld a, [bc]
    and b
    xor $00
    jr @-$5e

    xor $08
    ld [$fea0], sp
    add sp, $28
    add b
    cp $f8
    ld a, [de]
    add b
    cp $f0
    ld a, [bc]
    add b
    xor $f8
    jr @-$7e

    xor $f0
    ld [$ab81], sp
    ld [hl], d
    or h
    ld [hl], d
    cp l
    ld [hl], d
    add $72
    rst $08
    ld [hl], d
    ret c

    ld [hl], d
    ld [bc], a
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp-$08
    nop
    ld bc, $f802
    nop
    ld b, $00
    ld hl, sp-$08
    ld [bc], a
    ld bc, $f802
    rst $38
    inc b
    nop
    ld hl, sp-$09
    nop
    ld bc, $f802
    ld bc, $0004
    ld hl, sp-$07
    nop
    ld bc, $f802
    ld bc, $0006
    ld hl, sp-$07
    ld [bc], a
    ld bc, $f802
    rst $38
    ld b, $00
    ld hl, sp-$09
    ld [bc], a
    db $01

    db $e9, $72, $f2, $72, $fb, $72, $04, $73, $02, $f8, $f8, $02, $00, $f8, $00, $00
    db $01, $02, $f8, $f8, $06, $00, $f8, $00, $04, $01, $02, $f8, $00, $08, $20, $f8
    db $f8, $08, $01, $02, $f8, $00, $0a, $20, $f8, $f8, $0a, $01, $21, $73, $2a, $73

    inc sp
    ld [hl], e
    inc a
    ld [hl], e
    ld b, l
    ld [hl], e
    ld c, [hl]
    ld [hl], e
    ld d, a
    ld [hl], e
    ld h, b
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], d
    ld [hl], e

    db $02, $f8, $00, $08, $00, $f8, $f8, $00, $01, $02, $f8, $00, $0a, $00, $f8, $f8
    db $02, $01

    ld [bc], a
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$08
    inc b
    ld bc, $f802
    nop
    ld c, $00
    ld hl, sp-$08
    ld b, $01
    ld [bc], a
    ld hl, sp+$01
    ld a, [bc]
    nop
    ld hl, sp-$07
    ld [bc], a
    ld bc, $f802
    rst $38
    ld a, [bc]
    nop
    ld hl, sp-$09
    ld [bc], a
    ld bc, $f802
    rst $38
    inc c
    nop
    ld hl, sp-$09
    inc b
    ld bc, $f802
    ld bc, $000c
    ld hl, sp-$07
    inc b
    ld bc, $f802
    ld bc, $000e
    ld hl, sp-$07
    ld b, $01
    ld [bc], a
    ld hl, sp-$01
    ld c, $00
    ld hl, sp-$09
    ld b, $01
    cp a
    ld [hl], e
    ret c

    ld [hl], e
    pop af
    ld [hl], e
    ld c, $74
    dec hl
    ld [hl], h
    ld b, h
    ld [hl], h
    ld e, l
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    sbc e
    ld [hl], h
    call nz, $e974
    ld [hl], h
    ld a, [bc]
    ld [hl], l
    cpl
    ld [hl], l
    ld c, h
    ld [hl], l
    ld l, l
    ld [hl], l
    ld a, [hl]
    ld [hl], l
    sbc e
    ld [hl], l
    cp b
    ld [hl], l
    db $dd
    ld [hl], l
    ld [bc], a
    halt
    daa
    halt
    ld c, h
    halt
    ld [hl], c
    halt
    sbc d
    halt
    and e
    halt
    xor h
    halt
    or l
    halt
    cp d
    halt
    rst $10
    halt
    db $f4
    halt
    ld de, $2e77
    ld [hl], a
    ld b, a
    ld [hl], a
    ld h, b
    ld [hl], a
    ld b, $f2
    db $fc
    stop
    ldh a, [c]
    inc b
    jr nz, jr_00d_73c8

jr_00d_73c8:
    ld [bc], a
    db $fc
    ld [de], a
    nop
    ld [bc], a
    inc b
    ld [hl+], a
    nop
    ldh a, [c]
    db $f4
    ld a, [de]
    nop
    ld [bc], a
    db $f4
    inc e
    ld bc, $f206
    db $fc
    inc d
    nop
    ldh a, [c]
    inc b
    inc h
    nop
    ld [bc], a
    inc b
    ld h, $00
    ld [bc], a
    db $fc
    ld [de], a
    nop
    ld [bc], a
    db $f4
    inc e
    nop
    ldh a, [c]
    db $f4
    ld a, [hl+]
    ld bc, $f007
    db $fd
    inc d
    nop
    ldh a, [rTIMA]
    inc h
    nop
    nop
    push af
    jr jr_00d_73fe

jr_00d_73fe:
    nop
    db $fd
    jr z, jr_00d_7402

jr_00d_7402:
    nop
    dec b
    jr c, jr_00d_7406

jr_00d_7406:
    ldh a, [$fff5]
    ld a, [hl+]
    nop
    nop
    db $ed
    inc a
    ld bc, $f007
    push af
    ld b, h
    nop
    ldh a, [$fffd]
    ld d, h
    nop
    ldh a, [rTIMA]
    ld h, h
    nop
    nop
    push af
    ld b, [hl]
    nop
    nop
    db $fd
    ld d, [hl]
    nop
    nop
    dec b
    ld h, [hl]
    nop
    db $fc
    db $ed
    ld [hl], $01
    ld b, $00
    rlca
    nop
    nop
    ldh a, [rIE]
    ld [bc], a
    nop
    nop
    rst $38
    inc b
    nop
    ldh a, [$fff7]
    ld b, $00
    nop
    rst $30
    ld [$0000], sp
    rst $28
    ld a, [bc]
    ld bc, $0206
    ld a, [$0012]
    ldh a, [c]
    ldh a, [c]
    jr nc, jr_00d_744d

jr_00d_744d:
    ldh a, [c]
    ld a, [$0040]
    ldh a, [c]
    ld [bc], a
    ld d, b
    nop
    ld [bc], a
    ld [bc], a
    ld d, d
    nop
    ld [bc], a
    ldh a, [c]
    inc e
    ld bc, $0208
    ld a, [$0012]
    ldh a, [c]
    ldh a, [c]
    jr nc, jr_00d_7466

jr_00d_7466:
    ldh a, [c]
    ld a, [$0040]
    ld [bc], a
    ld a, [bc]
    ld d, d
    nop
    ldh a, [c]
    ld [bc], a
    ld [hl-], a
    nop
    ldh a, [c]
    ld a, [bc]
    ld b, d
    nop
    ld [bc], a
    ld [bc], a
    inc [hl]
    nop
    ld [bc], a
    ldh a, [c]
    inc e
    ld bc, $f007
    db $fc
    ld c, b
    nop
    ldh a, [rDIV]
    ld e, b
    nop
    nop
    db $fc
    ld c, d
    nop
    nop
    inc b
    ld e, d
    nop
    nop
    db $ec
    ld h, b
    nop
    nop
    db $f4
    jr jr_00d_7497

jr_00d_7497:
    ldh a, [$fff4]
    ld a, [hl+]
    ld bc, $f00a
    db $fd
    inc d
    nop
    ldh a, [rTIMA]
    inc h
    nop
    nop
    push af
    jr jr_00d_74a8

jr_00d_74a8:
    nop
    db $fd
    jr z, jr_00d_74ac

jr_00d_74ac:
    nop
    dec b
    jr c, jr_00d_74b0

jr_00d_74b0:
    ldh a, [$ffed]
    ld l, $00
    ldh a, [$fff5]
    ld a, $00
    db $e4
    db $e3
    ld l, h
    nop
    db $e4
    db $eb
    ld l, h
    ld h, b
    nop
    db $ed
    inc a
    ld bc, $f009
    push af
    ld b, h
    nop
    ldh a, [$fffd]
    ld d, h
    nop
    ldh a, [rTIMA]
    ld h, h
    nop
    nop
    push af
    ld b, [hl]
    nop
    nop
    db $fd
    ld d, [hl]
    nop
    nop
    dec b
    ld h, [hl]
    nop
    db $fc
    db $ed
    ld [hl], $00
    ldh [$fff5], a
    ld l, d
    ld b, b
    ldh [$ffed], a
    ld l, d
    ld hl, $f008
    db $fd
    inc d
    nop
    ldh a, [rTIMA]
    inc h
    nop
    nop
    push af
    jr jr_00d_74f6

jr_00d_74f6:
    nop
    db $fd
    jr z, jr_00d_74fa

jr_00d_74fa:
    nop
    dec b
    jr c, jr_00d_74fe

jr_00d_74fe:
    ldh a, [$ffed]
    ld l, $00
    ldh a, [$fff5]
    ld a, $00
    nop
    db $ed
    inc a
    ld bc, $0409
    ld a, [bc]
    ld l, h
    nop
    inc b
    ld [de], a
    ld l, h
    ld h, b
    ld a, [$60ec]
    nop
    ld a, [$18f4]
    nop
    ld [$14fc], a
    nop
    ld [$2404], a
    nop
    ld a, [$3a04]
    nop
    ld a, [$28fc]
    nop
    ld [$2af4], a
    ld bc, $0007
    db $fd
    ld c, d
    nop
    nop
    dec b
    ld e, d
    nop
    nop
    db $ed
    ld h, b
    nop
    nop
    push af
    jr jr_00d_7540

jr_00d_7540:
    ldh a, [rTIMA]
    ld d, $00
    ldh a, [$fff5]
    ld a, [hl+]
    nop
    ldh a, [$fffd]
    inc l
    ld bc, $f008
    nop
    ld c, h
    nop
    ldh a, [$ff08]
    ld e, h
    nop
    nop
    nop
    ld c, [hl]
    nop
    nop
    ld [$005e], sp
    ldh a, [$fff8]
    ld c, h
    jr nz, @-$0e

    ldh a, [$ff5c]
    jr nz, jr_00d_7566

jr_00d_7566:
    ld hl, sp+$4e
    jr nz, jr_00d_756a

jr_00d_756a:
    ldh a, [$ff5e]
    ld hl, $0004
    nop
    ld c, $00
    nop
    ld [$001e], sp
    nop
    ld hl, sp+$0e
    jr nz, jr_00d_757b

jr_00d_757b:
    ldh a, [rNR34]
    ld hl, $f007
    ld a, [$0048]
    ldh a, [rSC]
    ld e, b
    nop
    nop
    ld a, [$004a]
    nop
    ld [bc], a
    ld e, d
    nop
    nop
    ld [$0060], a
    nop
    ldh a, [c]
    jr jr_00d_7597

jr_00d_7597:
    ldh a, [$fff2]
    ld a, [hl+]
    ld bc, $0007
    ei
    ld c, d
    stop
    inc bc
    ld e, d
    stop
    db $eb
    ld h, b
    stop
    di
    jr jr_00d_75bc

    ldh a, [$ff03]
    ld d, $10
    ldh a, [$fff3]
    ld a, [hl+]
    db $10
    ldh a, [$fffb]
    inc l
    ld de, $0709
    ld a, [bc]
    ld l, h

jr_00d_75bc:
    nop
    rlca
    ld [de], a
    ld l, h
    ld h, b
    db $fd
    db $ec
    ld h, b
    nop
    db $fd
    db $f4
    jr jr_00d_75c9

jr_00d_75c9:
    db $ed
    db $fc
    inc d
    nop
    db $ed
    inc b
    inc h
    nop
    db $fd
    inc b
    ld a, [hl-]
    nop
    db $fd
    db $fc
    jr z, jr_00d_75d9

jr_00d_75d9:
    db $ed
    db $f4
    ld a, [hl+]
    ld bc, $ff09
    add hl, de
    ld l, b
    nop
    rst $38
    ld de, $6068
    ldh a, [$fffd]
    inc d
    nop
    ldh a, [rTIMA]
    inc h
    nop
    nop
    push af
    jr jr_00d_75f2

jr_00d_75f2:
    nop
    db $fd
    jr z, jr_00d_75f6

jr_00d_75f6:
    nop
    dec b
    jr c, jr_00d_75fa

jr_00d_75fa:
    rst $38
    db $ed
    ld h, b
    nop
    ldh a, [$fff5]
    ld a, [hl+]
    ld bc, $f209
    ld de, $2068
    ldh a, [c]
    add hl, de
    ld l, b
    ld b, b
    ldh a, [$fffd]
    inc d
    nop
    ldh a, [rTIMA]
    inc h

jr_00d_7612:
    nop
    nop
    push af
    jr jr_00d_7617

jr_00d_7617:
    nop
    db $fd
    jr z, jr_00d_761b

jr_00d_761b:
    nop
    dec b
    jr c, jr_00d_761f

jr_00d_761f:
    rst $38
    db $ed
    ld h, b
    nop
    ldh a, [$fff5]
    ld a, [hl+]
    ld bc, $e509
    ld [de], a
    ld l, h
    jr nz, jr_00d_7612

    ld a, [bc]
    ld l, h
    ld b, b
    ldh a, [$fff6]
    ld b, h
    nop
    ldh a, [$fffe]
    ld d, h
    nop
    ldh a, [rTMA]
    ld h, h
    nop
    nop
    or $46
    nop
    nop
    cp $56
    nop
    nop
    ld b, $66
    nop
    db $fc
    xor $36
    ld bc, $dd09
    ld b, $6a
    nop
    db $dd
    cp $6a

jr_00d_7654:
    ld h, b
    ldh a, [$fff6]
    ld b, h
    nop
    ldh a, [$fffe]
    ld d, h
    nop
    ldh a, [rTMA]
    ld h, h
    nop
    nop
    or $46
    nop
    nop
    cp $56
    nop
    nop
    ld b, $66
    nop
    db $fc
    xor $36
    ld bc, $dd0a
    pop af
    ld l, d
    jr nz, jr_00d_7654

    ld sp, hl
    ld l, d
    ld b, b
    ldh a, [$fffd]
    inc d
    nop
    ldh a, [rTIMA]
    inc h
    nop
    nop
    push af
    jr jr_00d_7686

jr_00d_7686:
    nop
    db $fd
    jr z, jr_00d_768a

jr_00d_768a:
    nop
    dec b
    jr c, jr_00d_768e

jr_00d_768e:
    ldh a, [$ffed]
    ld l, $00
    ldh a, [$fff5]
    ld a, $00
    nop
    db $ed

jr_00d_7698:
    inc a
    ld bc, $f802
    ld hl, sp+$68
    jr nz, jr_00d_7698

    nop

jr_00d_76a1:
    ld l, b
    ld b, c
    ld [bc], a
    ld hl, sp+$00
    ld l, h
    jr nz, jr_00d_76a1

    ld hl, sp+$6c
    ld b, c
    ld [bc], a
    ld hl, sp+$00
    ld l, d
    nop
    ld hl, sp-$08
    ld l, d
    ld h, c
    ld bc, $fcf5
    ld h, d
    ld bc, $0007
    push af
    jr jr_00d_76cf

    nop
    db $fd
    jr z, jr_00d_76d3

    nop
    dec b
    jr c, jr_00d_76d7

    ldh a, [$fff5]
    ld a, [hl+]
    stop
    db $ed
    inc a
    db $10

jr_00d_76cf:
    ldh a, [$fffd]
    inc l
    db $10

jr_00d_76d3:
    ldh a, [rTIMA]
    ld d, $11

jr_00d_76d7:
    rlca
    ldh a, [$fff5]
    ld b, h
    db $10
    ldh a, [rTIMA]
    ld h, h
    stop
    push af
    ld b, [hl]
    stop
    db $fd
    ld d, [hl]
    stop
    dec b
    ld h, [hl]
    db $10
    db $fc
    db $ed
    ld [hl], $10
    ldh a, [$fffd]
    ld l, [hl]
    ld de, $0007
    db $f4
    jr jr_00d_7709

    nop
    db $fc
    jr z, jr_00d_770d

    nop
    inc b
    jr c, jr_00d_7711

    ldh a, [$fff4]
    ld a, [hl+]
    stop
    db $ec
    inc a
    db $10

jr_00d_7709:
    ldh a, [$fffc]
    inc l
    db $10

jr_00d_770d:
    ldh a, [rDIV]
    ld d, $11

jr_00d_7711:
    rlca
    ldh a, [$fff4]
    ld b, h
    db $10
    ldh a, [rDIV]
    ld h, h
    stop
    db $f4
    ld b, [hl]
    stop
    db $fc
    ld d, [hl]
    stop
    inc b
    ld h, [hl]
    db $10
    db $fc
    db $ec
    ld [hl], $10
    ldh a, [$fffc]
    ld l, [hl]
    ld de, $0006
    rlca
    nop
    db $10
    ldh a, [rIE]
    ld [bc], a
    stop
    rst $38
    inc b
    db $10
    ldh a, [$fff7]
    ld b, $10
    nop
    rst $30
    ld [$0010], sp
    rst $28
    ld a, [bc]
    ld de, $0006
    add hl, bc
    nop
    db $10
    ldh a, [rSB]
    ld [bc], a
    stop
    ld bc, $1004
    ldh a, [$fff9]
    ld b, $10
    nop
    ld sp, hl
    ld [$0010], sp
    pop af
    ld a, [bc]
    ld de, $0006
    rlca
    nop
    stop
    rst $38
    inc b
    db $10
    ldh a, [$fff7]
    ld b, $10
    nop
    rst $30
    ld [$0010], sp
    rst $28
    ld a, [bc]
    db $10
    ldh a, [rIE]
    inc c
    db $11

    db $bf, $77, $c8, $77, $d1, $77, $da, $77, $e3, $77, $ec, $77, $f5, $77

    cp $77
    rrca
    ld a, b
    jr nz, jr_00d_7805

    ld sp, $4278
    ld a, b
    ld d, e
    ld a, b
    ld h, h
    ld a, b
    ld [hl], l
    ld a, b
    sub [hl]
    ld a, b
    or a
    ld a, b
    ret c

    ld a, b
    ld sp, hl
    ld a, b
    ld a, [de]
    ld a, c
    dec sp
    ld a, c
    ld e, h
    ld a, c
    add l
    ld a, c
    xor [hl]
    ld a, c
    rst $10
    ld a, c
    nop
    ld a, d
    add hl, hl
    ld a, d
    ld d, d
    ld a, d
    ld a, e
    ld a, d
    sbc h
    ld a, d
    cp l
    ld a, d
    sbc $7a
    rst $38
    ld a, d
    jr nz, jr_00d_7838

    ld b, c
    ld a, e

    db $02, $f4, $f8, $2c, $00, $f4, $00, $2e, $01, $02, $f4, $f8, $30, $00, $f4, $00
    db $32, $01, $02, $f4, $f8, $34, $00, $f4, $00, $36, $01, $02, $f4, $f8, $38, $00
    db $f4, $00, $3a, $01, $02, $f4, $00, $34, $60, $f4, $f8, $36, $61, $02, $f4, $00
    db $30, $60, $f4, $f8, $32, $61, $02, $f4, $00, $2c, $60, $f4, $f8, $2e, $61

    inc b
    rst $20
    ld hl, sp+$2c
    nop
    rst $20
    nop

jr_00d_7805:
    ld l, $00
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    db $10
    ld bc, $e704
    ld hl, sp+$30
    nop
    rst $20
    nop
    ld [hl-], a
    nop
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    db $10
    ld bc, $e704
    ld hl, sp+$34
    nop
    rst $20
    nop
    ld [hl], $00
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    db $10
    ld bc, $e704
    ld hl, sp+$38
    nop
    rst $20
    nop

jr_00d_7838:
    ld a, [hl-]
    nop
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    db $10
    ld bc, $e704
    nop
    inc [hl]
    ld h, b
    rst $20
    ld hl, sp+$36
    ld h, b
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    db $10
    ld bc, $e704
    nop
    jr nc, jr_00d_78b8

    rst $20
    ld hl, sp+$32
    ld h, b
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    db $10
    ld bc, $e704
    nop
    inc l
    ld h, b
    rst $20
    ld hl, sp+$2e
    ld h, b
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    db $10
    ld bc, $e008
    ld hl, sp+$2c
    nop
    ldh [rP1], a
    ld l, $00
    db $eb
    db $f4
    ld [bc], a
    nop
    db $eb
    db $fc
    ld [de], a
    nop
    ei
    db $f4
    inc b
    nop
    ei
    db $fc
    inc d
    nop
    db $eb
    inc b
    ld b, $00
    ei
    inc b
    ld [$0801], sp
    ldh [$fff8], a
    jr nc, jr_00d_789b

jr_00d_789b:
    ldh [rP1], a
    ld [hl-], a
    nop
    db $eb
    db $f4
    ld [bc], a
    nop
    db $eb
    db $fc
    ld [de], a
    nop
    ei
    db $f4
    inc b
    nop
    ei
    db $fc
    inc d
    nop
    db $eb
    inc b
    ld b, $00
    ei
    inc b
    ld [$0801], sp

jr_00d_78b8:
    ldh [$fff8], a
    inc [hl]
    nop
    ldh [rP1], a
    ld [hl], $00
    db $eb
    db $f4
    ld [bc], a
    nop
    db $eb
    db $fc
    ld [de], a
    nop
    ei
    db $f4
    inc b
    nop
    ei
    db $fc
    inc d
    nop
    db $eb
    inc b
    ld b, $00
    ei
    inc b
    ld [$0801], sp
    ldh [$fff8], a
    jr c, jr_00d_78dd

jr_00d_78dd:
    ldh [rP1], a
    ld a, [hl-]
    nop
    db $eb
    db $f4
    ld [bc], a
    nop
    db $eb
    db $fc
    ld [de], a
    nop
    ei
    db $f4
    inc b
    nop
    ei
    db $fc
    inc d
    nop
    db $eb
    inc b
    ld b, $00
    ei
    inc b
    ld [$0801], sp
    ldh [rP1], a
    inc [hl]
    ld h, b
    ldh [$fff8], a
    ld [hl], $60
    db $eb
    db $f4
    ld [bc], a
    nop
    db $eb
    db $fc
    ld [de], a
    nop
    ei
    db $f4
    inc b
    nop
    ei
    db $fc
    inc d
    nop
    db $eb
    inc b
    ld b, $00
    ei
    inc b
    ld [$0801], sp
    ldh [rP1], a
    jr nc, @+$62

    ldh [$fff8], a
    ld [hl-], a
    ld h, b
    db $eb
    db $f4
    ld [bc], a
    nop
    db $eb
    db $fc
    ld [de], a
    nop
    ei
    db $f4
    inc b
    nop
    ei
    db $fc
    inc d
    nop
    db $eb
    inc b
    ld b, $00
    ei
    inc b
    ld [$0801], sp
    db $eb
    db $f4
    ld [bc], a
    nop
    db $eb
    db $fc
    ld [de], a
    nop
    ei
    db $f4
    inc b
    nop
    ei
    db $fc
    inc d
    nop
    db $eb
    inc b
    ld b, $00
    ei
    inc b
    ld [$e000], sp
    nop
    inc l
    ld h, b
    ldh [$fff8], a
    ld l, $61
    ld a, [bc]
    rst $18
    ld hl, sp+$2c
    nop
    rst $18
    nop
    ld l, $00
    db $eb
    ldh a, [rNR21]
    nop
    ei
    ldh a, [rNR23]
    nop
    db $eb
    ld hl, sp+$0a
    nop
    db $eb
    nop
    ld a, [de]
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    inc e
    nop
    db $eb
    ld [$000e], sp
    ei
    ld [$011e], sp
    ld a, [bc]
    rst $18
    ld hl, sp+$30
    nop
    rst $18
    nop
    ld [hl-], a
    nop
    db $eb
    ldh a, [rNR21]
    nop
    ei
    ldh a, [rNR23]
    nop
    db $eb
    ld hl, sp+$0a
    nop
    db $eb
    nop
    ld a, [de]
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    inc e
    nop
    db $eb
    ld [$000e], sp
    ei
    ld [$011e], sp
    ld a, [bc]
    rst $18
    ld hl, sp+$34
    nop
    rst $18
    nop
    ld [hl], $00
    db $eb
    ldh a, [rNR21]
    nop
    ei
    ldh a, [rNR23]
    nop
    db $eb
    ld hl, sp+$0a
    nop
    db $eb
    nop
    ld a, [de]
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    inc e
    nop
    db $eb
    ld [$000e], sp
    ei
    ld [$011e], sp
    ld a, [bc]
    rst $18
    ld hl, sp+$38
    nop
    rst $18
    nop
    ld a, [hl-]
    nop
    db $eb
    ldh a, [rNR21]
    nop
    ei
    ldh a, [rNR23]
    nop
    db $eb
    ld hl, sp+$0a
    nop
    db $eb
    nop
    ld a, [de]
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    inc e
    nop
    db $eb
    ld [$000e], sp
    ei
    ld [$011e], sp
    ld a, [bc]
    rst $18
    nop
    inc [hl]
    ld h, b
    rst $18
    ld hl, sp+$36
    ld h, b
    db $eb
    ldh a, [rNR21]
    nop
    ei
    ldh a, [rNR23]
    nop
    db $eb
    ld hl, sp+$0a
    nop
    db $eb
    nop
    ld a, [de]
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    inc e
    nop
    db $eb
    ld [$000e], sp
    ei
    ld [$011e], sp
    ld a, [bc]
    rst $18
    nop
    jr nc, jr_00d_7a8e

    rst $18
    ld hl, sp+$32
    ld h, b
    db $eb
    ldh a, [rNR21]
    nop
    ei
    ldh a, [rNR23]
    nop
    db $eb
    ld hl, sp+$0a
    nop
    db $eb
    nop
    ld a, [de]
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    inc e
    nop
    db $eb
    ld [$000e], sp
    ei
    ld [$011e], sp
    ld a, [bc]
    rst $18
    nop
    inc l
    ld h, b
    rst $18
    ld hl, sp+$2e
    ld h, b
    db $eb
    ldh a, [rNR21]
    nop
    ei
    ldh a, [rNR23]
    nop
    db $eb
    ld hl, sp+$0a
    nop
    db $eb
    nop
    ld a, [de]
    nop
    ei
    ld hl, sp+$0c
    nop
    ei
    nop
    inc e
    nop
    db $eb
    ld [$000e], sp
    ei
    ld [$011e], sp
    ld [$f8de], sp
    inc l
    nop
    sbc $00
    ld l, $00
    db $ed
    db $f4
    jr nz, jr_00d_7a88

jr_00d_7a88:
    db $fd
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $fc

jr_00d_7a8e:
    inc h
    nop
    db $fd
    db $fc
    ld h, $00
    db $ed
    inc b
    jr z, jr_00d_7a98

jr_00d_7a98:
    db $fd
    inc b
    ld a, [hl+]
    ld bc, $de08
    ld hl, sp+$30
    nop
    sbc $00
    ld [hl-], a
    nop
    db $ed
    db $f4
    jr nz, jr_00d_7aa9

jr_00d_7aa9:
    db $fd
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $fc
    inc h
    nop
    db $fd
    db $fc
    ld h, $00
    db $ed
    inc b
    jr z, jr_00d_7ab9

jr_00d_7ab9:
    db $fd
    inc b
    ld a, [hl+]
    ld bc, $de08
    ld hl, sp+$34
    nop
    sbc $00
    ld [hl], $00
    db $ed
    db $f4
    jr nz, jr_00d_7aca

jr_00d_7aca:
    db $fd
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $fc
    inc h
    nop
    db $fd
    db $fc
    ld h, $00
    db $ed
    inc b
    jr z, jr_00d_7ada

jr_00d_7ada:
    db $fd
    inc b
    ld a, [hl+]
    ld bc, $de08
    ld hl, sp+$38
    nop
    sbc $00
    ld a, [hl-]
    nop
    db $ed
    db $f4
    jr nz, jr_00d_7aeb

jr_00d_7aeb:
    db $fd
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $fc
    inc h
    nop
    db $fd
    db $fc
    ld h, $00
    db $ed
    inc b
    jr z, jr_00d_7afb

jr_00d_7afb:
    db $fd
    inc b
    ld a, [hl+]
    ld bc, $de08
    nop
    inc [hl]
    ld h, b
    sbc $f8
    ld [hl], $60
    db $ed
    db $f4
    jr nz, jr_00d_7b0c

jr_00d_7b0c:
    db $fd
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $fc
    inc h
    nop
    db $fd
    db $fc
    ld h, $00
    db $ed
    inc b
    jr z, jr_00d_7b1c

jr_00d_7b1c:
    db $fd
    inc b
    ld a, [hl+]
    ld bc, $de08
    nop
    jr nc, jr_00d_7b85

    sbc $f8
    ld [hl-], a
    ld h, b
    db $ed
    db $f4
    jr nz, jr_00d_7b2d

jr_00d_7b2d:
    db $fd
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $fc
    inc h
    nop
    db $fd
    db $fc
    ld h, $00
    db $ed
    inc b
    jr z, jr_00d_7b3d

jr_00d_7b3d:
    db $fd
    inc b
    ld a, [hl+]
    ld bc, $de08
    nop
    inc l
    ld h, b
    sbc $f8
    ld l, $60
    db $ed
    db $f4
    jr nz, jr_00d_7b4e

jr_00d_7b4e:
    db $fd
    db $f4
    ld [hl+], a
    nop
    db $ed
    db $fc
    inc h
    nop
    db $fd
    db $fc
    ld h, $00
    db $ed
    inc b
    jr z, jr_00d_7b5e

jr_00d_7b5e:
    db $fd
    inc b
    ld a, [hl+]
    ld bc, $0001
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00d_7b85:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    jr nz, jr_00d_7ba7

jr_00d_7ba7:
    nop
    nop
    nop
    nop
    nop
    ld de, $0080
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_00d_7be3

jr_00d_7be3:
    nop
    ld bc, $0500
    jr nz, jr_00d_7be9

jr_00d_7be9:
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    jr nz, jr_00d_7bf5

jr_00d_7bf5:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld hl, $0000
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
    add b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00d_7c69

    nop

jr_00d_7c69:
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
    ld c, b

Jump_00d_7c7c:
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
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_00d_7ccc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec b
    nop
    ld bc, $0000
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
    ld [$1000], sp
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
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
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_00d_7da5

jr_00d_7da5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4000
    ld [bc], a
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
    inc h
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

Jump_00d_7e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    db $10
    add b
    nop
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
    jr nz, jr_00d_7e62

jr_00d_7e62:
    nop
    nop
    nop
    nop
    nop
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
    inc b
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

Jump_00d_7ea5:
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
    nop
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
    adc b
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
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld h, b
    ld [bc], a
    nop
    rst $38

Call_00d_7f01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
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
    stop
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
    jr nz, jr_00d_7fa2

jr_00d_7fa2:
    nop
    ld [bc], a
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
    ld b, b
    nop
    nop
    nop
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
