; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    add hl, de
    call z, Call_000_383c
    ld hl, sp-$40
    ret nz

    add b
    add b
    ldh [$ff60], a
    ldh [rNR41], a
    ret nc

    jr nc, jr_01c_4040

    ret nc

    ldh a, [rNR10]
    and b
    ld h, b
    ldh [$ffe0], a
    db $10
    ldh a, [$ffe0]
    ldh [rNR51], a
    nop
    add hl, bc
    rst $38
    nop
    nop
    rst $38
    push de
    rst $38
    xor d
    push de
    rst $38
    nop
    ld b, c
    rst $38
    dec b
    dec bc
    rst $20
    jr @+$01

    ld [bc], a
    ld e, a
    ldh [$ff80], a
    rst $38
    ld a, $ff
    db $e3
    db $e3
    dec h
    nop
    add hl, bc
    ld [$0c0f], sp
    rrca
    rla

jr_01c_4040:
    rra
    dec e
    rra
    inc bc
    inc bc
    and e
    nop
    ld a, [bc]
    inc bc
    dec bc
    inc c
    add hl, bc
    ld c, $c3
    nop
    ld c, e
    add e
    nop
    ld d, d
    rst $00
    nop
    rra

jr_01c_4056:
    dec c
    ret c

    jr c, jr_01c_4056

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
    add hl, de
    db $fd
    inc hl
    ld a, [$ee06]
    ld e, $f9
    rst $38
    pop bc
    rst $38
    ld a, $3e
    inc bc
    inc bc
    dec c
    ld c, $1f
    jr @+$21

    db $10
    cpl
    jr nc, jr_01c_40ff

    ld h, b
    ld a, a
    ld b, b
    ld b, d
    cp a
    ret nz

    dec bc
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
    add [hl]
    nop
    ld h, b
    nop
    ld d, h
    ld b, c
    ld a, [$0256]
    cp $02
    db $fd
    push bc
    nop
    ld [hl], l
    nop
    inc bc
    adc c
    nop
    halt
    and l
    nop
    add b
    rlca
    cp $ae
    and a
    db $fd
    rst $38
    and l
    db $fd
    rlca
    ld b, d
    ld a, [$0946]
    cp $06
    jp hl


    rra
    or c
    ld a, a
    and $fe
    inc a
    inc a
    and e
    nop
    ld e, [hl]
    dec e
    dec bc
    inc c
    ccf
    jr nc, jr_01c_4141

    ld c, b
    cp [hl]
    pop bc
    rst $38
    add b
    cp a
    ret nz

    sbc a
    ldh [$ff67], a
    ld a, b
    cpl
    jr nc, jr_01c_4117

    jr nc, @+$59

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $a9
    nop
    ld e, d
    inc bc
    cpl
    jr nc, @+$41

    jr nz, @+$43

    ld a, a
    ld b, b
    ld b, d
    rst $38
    add b
    ld a, [bc]
    cp e
    call nz, Call_01c_635f
    ld c, h
    ld [hl], a
    jr c, jr_01c_4139

    ld [$070f], sp
    ld b, d
    rlca

Jump_01c_40ff:
jr_01c_40ff:
    inc b
    nop
    rlca
    ld b, c
    add hl, bc
    ld c, $01
    rrca
    ld [$0085], sp
    ld c, [hl]
    add hl, bc
    add hl, bc
    rrca
    db $10
    rra
    ld de, $121f
    ld e, $0c
    inc c
    sub l

jr_01c_4117:
    ld bc, $0902
    cp a
    ret nz

    ld a, e
    ld b, h
    ld e, a
    ld h, e
    inc h
    ccf
    jr @+$21

    adc c
    ld bc, $4120
    ld [$050f], sp
    rrca
    ld [$0e09], sp
    ld [$870f], sp
    nop
    ld d, [hl]
    sub a
    ld bc, $0e00
    cp a

jr_01c_4139:
    ret nz

    ld [hl], a
    ld c, b
    ld e, l
    ld h, [hl]
    daa
    ccf
    inc e

jr_01c_4141:
    rra
    ld [$080f], sp
    rrca
    rlca
    add [hl]
    ld bc, $0f67
    ld [$100f], sp
    rra
    rra
    db $10
    ld de, $101e
    rra
    ld [$060f], sp
    rlca
    ld bc, $2501
    nop
    ld c, $e7
    rst $20
    sbc h
    rst $38
    add h
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    ld b, c
    rst $38
    nop
    inc c
    rst $38
    rlca
    ld hl, sp+$1b
    db $e4
    inc sp
    call z, $cc73
    or a
    ret z

    ccf
    ret nz

    rlc c
    add c
    inc hl
    ld bc, $0201
    inc bc
    add e
    ld bc, $4168
    db $10
    rra
    nop
    jr jr_01c_41b1

    rra
    ld bc, $0f0e
    and a
    ld bc, $02e4
    or b
    ld [hl], b
    add sp, -$5d
    nop
    add l
    nop
    ld e, h
    ld b, c
    db $fc
    ld d, h
    rlca
    cp $0e
    ld sp, hl
    rla
    ld hl, sp+$17
    ldh [$ffbf], a
    ld b, c
    ld b, b
    rst $38
    ld b, $80
    rst $38

jr_01c_41b1:
    pop hl
    ld e, $ff
    nop
    cp $a3
    ld bc, $02ca
    inc b
    rst $38
    inc bc
    ld b, e
    rst $38
    nop
    rlca
    ld a, a
    add c
    rst $18
    pop hl
    ld a, $3e
    nop
    nop
    sub h
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    cp $2e
    adc e
    ld [bc], a
    ld d, $03
    ld [hl], b
    adc a
    ld a, a
    add b
    ld b, c
    ccf
    ret nz

    ld bc, $827f
    and h
    ld bc, $00c9
    nop
    add e
    ld [bc], a
    ld h, h
    inc bc
    ld e, $e1
    ld hl, sp-$01
    add e
    nop
    db $fc
    sub h
    ld [bc], a
    ld b, b
    ld [$ff4a], sp
    ccf
    pop af
    cpl
    ldh a, [rVBK]
    add b
    rst $38
    adc c
    ld [bc], a
    ld e, h
    rlca
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
    ld [bc], a
    rrca
    ldh a, [rIE]
    add $00
    jr nz, jr_01c_4219

    jr jr_01c_422c

    add sp, -$08
    ld c, b
    ld hl, sp+$08

jr_01c_4219:
    ld hl, sp+$42
    inc b
    db $fc
    add hl, bc
    inc a
    db $fc
    ld [bc], a
    cp $62
    cp $f2
    ld c, [hl]
    add hl, hl
    rst $10
    ld b, c
    dec h
    db $db
    inc bc

jr_01c_422c:
    ld [hl], $ca
    ld a, [$8906]
    ld bc, $c3e4
    ld bc, $41bb
    ld [bc], a
    inc bc
    add a
    ld bc, $0566
    inc c
    rrca
    rrca
    rrca
    rlca
    rlca
    dec [hl]
    nop
    dec bc
    pop bc
    pop bc
    ld [hl-], a
    ldh a, [c]
    call z, $c3bc
    rst $38
    ld [bc], a
    cp $1e
    ldh [c], a
    call nz, $c902
    nop
    ld [$fc41], sp
    add h
    ld a, [bc]
    db $fc
    inc b

jr_01c_425d:
    ld hl, sp+$18
    db $e4
    inc a
    call nz, $883c
    ld hl, sp+$10
    and [hl]
    ld [bc], a
    db $fd
    sub e
    ld [bc], a
    cp d
    dec c
    ld [hl], $fe

jr_01c_426f:
    ld [bc], a
    cp $fa
    and $2d
    db $d3
    daa
    reti


    scf
    ret


    rst $38
    ld bc, $0385
    jr nz, jr_01c_4286

    ld a, b
    adc b
    ld hl, sp+$48
    db $f4
    ld c, h
    db $fc

jr_01c_4286:
    add h
    push bc
    ld [bc], a
    rlc l
    ldh a, [$ff30]
    jr nz, jr_01c_426f

    ld b, b
    ret nz

    and e
    ld bc, $97b8
    ld bc, $09ba
    rrca
    ldh a, [$ff3b]
    call nz, $8cf3
    rst $30
    ld [$00ff], sp
    add a
    inc bc
    jr nz, jr_01c_42a9

    db $f4
    adc h
    db $fc

jr_01c_42a9:
    add h
    and l
    ld bc, $010c
    cp $02
    add e
    inc bc
    inc l
    adc c
    inc bc
    jr c, jr_01c_42bc

    dec sp
    dec sp
    ld e, l
    ld h, [hl]
    or a

jr_01c_42bc:
    ret z

    add l
    ld bc, $0552
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, @-$7b

    nop
    ldh a, [c]
    rlca
    dec hl
    inc a
    daa
    ccf
    inc de
    rra
    ld c, $0e
    and l
    ld [bc], a
    ld b, $01
    ccf
    jr nc, jr_01c_425d

    nop
    adc h
    add a
    ld bc, $0790
    ccf
    jr c, jr_01c_4302

    db $10
    dec bc
    inc c
    rlca
    rlca
    add e
    ld bc, $3174
    nop
    dec b
    rst $38
    rst $38
    add b
    rst $38
    ld [hl], $c9
    jp $c801


    ld [bc], a
    inc bc
    cp $03
    and [hl]
    ld bc, $85cf
    ld [bc], a
    ld h, h
    inc c

jr_01c_4302:
    ccf
    ret nz

    ld a, $c1
    cp $01
    inc a
    jp $e7d9


    rst $38
    rst $38
    sbc l
    ld [hl+], a
    rst $38
    ld bc, $ffff
    dec [hl]
    nop
    nop
    ret nz

    and h
    ld bc, $0bf1
    ld c, b
    cp b
    inc b
    db $fc
    dec d
    db $ed
    ld b, $fe
    ld h, e
    rst $38
    ld h, d
    sbc $41
    ld a, [bc]
    or $05
    ld a, [de]
    and $3a
    add $f4
    inc c
    ld b, c
    db $e4
    inc e
    dec b
    ld c, b
    cp b
    db $10
    ldh a, [rNR41]
    ldh [$ffd7], a
    inc b
    ld d, l
    call nz, $5b00
    add hl, bc
    rlca
    add hl, bc
    rrca
    ld de, $3e1f
    ccf
    inc a
    ccf
    ld a, h
    ld b, c
    ld a, a
    ld a, b
    inc b
    ld a, a
    ld l, b
    ld l, a
    ld a, b
    ld a, a
    ld h, e
    ld a, e
    dec b
    ld a, l
    ld a, [hl]
    scf
    ld a, $3f
    ccf
    add e
    ld bc, $c7fc

jr_01c_4363:
    inc b
    sub a
    rlca
    jr c, jr_01c_43a0

    db $f4
    db $ec
    db $fc
    inc d
    db $fc
    inc c
    ld b, d
    db $fc
    inc l
    ld de, $06fa
    cp $02
    cp $12
    ld a, [$f406]
    inc c
    ret c

    jr c, jr_01c_4363

    db $fc
    add h
    db $fc
    ld a, b
    ld a, b
    add [hl]
    nop
    ret nz

    ld [$f70e], sp
    ld e, l
    rst $38
    ld d, l
    db $fd
    ld d, a
    ld a, [$4106]
    ld a, [$8826]
    nop
    call nc, $fc00
    sub l
    inc b

jr_01c_439b:
    ld a, d
    ld de, $d0d0
    inc [hl]

jr_01c_43a0:
    db $f4
    jr jr_01c_439b

    ret nc

    jr nc, jr_01c_440e

    sbc b
    inc a
    call z, $ec14
    ld [hl-], a
    adc $7a
    add [hl]
    ld b, c
    ld a, [$0106]
    ldh [c], a
    ld e, $c5
    inc bc
    or c
    ld [bc], a
    ld d, h
    db $fc
    cp b
    and e
    inc b
    or l
    sbc [hl]
    inc b

jr_01c_43c1:
    ld a, c
    db $10
    inc c
    rrca
    jr jr_01c_43e6

    dec a
    ccf
    ld a, $3f
    ld a, h
    ld a, a
    ld a, l
    ld a, [hl]

jr_01c_43cf:
    ld c, c
    ld a, [hl]
    ld c, b
    ld a, a

jr_01c_43d3:
    ld d, b
    push bc
    inc b
    and l
    ld [bc], a
    ld a, a
    ld a, $3f
    add e
    inc b
    or d
    nop
    rrca
    cp d
    dec b
    scf
    rrca
    rst $38
    rst $38

jr_01c_43e6:
    ld sp, hl
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    add c
    rst $38
    jr nz, jr_01c_43cf

    ld h, b
    sbc a
    jr nz, jr_01c_43d3

    ld b, c
    jr nc, @-$2f

    inc bc
    jr c, jr_01c_43c1

    ld a, h
    add e
    add h
    ld [bc], a
    ld h, $0e
    nop
    di
    inc c
    ld hl, $80de
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld hl, sp-$01
    rst $38

jr_01c_440e:
    rst $38
    dec sp
    nop
    rrca
    inc a
    inc a
    ld c, [hl]
    ld [hl], d
    add l
    ei
    cp a
    pop bc
    ld c, l
    ld [hl], e
    ld [hl+], a
    ld a, $1c
    inc e
    nop
    nop
    ret c

    inc bc
    dec d
    ld d, $0c
    inc e
    rra
    dec sp
    inc a
    ld [hl], a
    ld a, b
    ld c, a
    ld [hl], b
    rst $08
    ldh a, [$ffcf]
    db $f4
    rst $08
    ldh a, [c]
    rst $00
    ld hl, sp-$1d
    db $fc
    ldh a, [rIE]
    ld a, b
    ld a, a
    add e
    inc b
    or d
    sub a
    ld [bc], a
    cp $05
    rrca
    rrca
    rla
    jr jr_01c_4488

    jr nz, jr_01c_440e

    inc bc
    pop de
    ld bc, $407f
    and l
    dec b
    jr z, jr_01c_445b

    ld h, b
    ld a, a
    jr nc, jr_01c_4497

    inc e
    rra
    rlca

jr_01c_445b:
    rlca
    ccf
    nop
    and e
    inc bc
    ld d, $01
    jr nc, @+$41

    xor c
    inc bc
    inc e
    add e
    nop
    ldh [$ff03], a
    dec bc
    inc c
    rlca
    inc b
    ld b, d
    rlca
    dec b
    ld bc, $0605
    add l
    nop
    ld c, d
    ld b, c
    rla
    jr jr_01c_447d

    dec de

jr_01c_447d:
    inc e
    add e
    ld [bc], a
    cp $0f
    dec de
    dec de
    scf
    inc l
    ld l, a
    ld d, b

jr_01c_4488:
    ld e, a
    ld h, d
    ld a, a
    ld h, d
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    sbc a
    ldh a, [c]
    ld b, c
    adc a
    ld hl, sp+$05
    adc e

jr_01c_4497:
    db $fc
    ld c, c
    ld a, [hl]
    inc a
    ccf
    add l
    ld [bc], a
    and $a3
    nop
    inc d
    ld bc, $0f0b
    add e
    inc bc
    ldh [c], a
    add l
    ld bc, $a30a
    inc b
    adc $10
    sbc a
    ldh [rIE], a
    and b
    rst $08
    or b
    ld [hl], a
    ld e, b
    add hl, sp
    ld a, $07
    rlca
    add hl, de
    ld e, $28
    ccf
    ld h, $22
    ccf
    cp c
    dec b
    add sp, $13
    ret nc

    jr nc, jr_01c_4501

    ret z

    call c, $ee24
    ld [de], a
    ldh a, [c]
    ld c, $f9
    rlca
    ld sp, hl
    daa
    ld sp, hl
    ld b, a
    di
    rrca
    rst $20
    rra
    cp e
    ld b, $16
    add hl, bc
    rra
    rra
    ccf
    jr nz, jr_01c_4521

    ld hl, $9798
    sub b
    sbc a
    ld b, c
    ld c, b
    rst $08
    ld b, c
    db $e4
    daa
    ld bc, $7393
    and [hl]
    ld bc, $f4f4
    jr nz, jr_01c_44fd

    ld c, l
    ld [bc], a
    ld a, h
    ld a, h
    add e
    ld b, h

jr_01c_44fd:
    rst $38
    nop
    inc bc
    rst $38

jr_01c_4501:
    ld bc, $fefe
    adc c
    ld [bc], a
    dec b
    nop
    inc l
    ld b, c
    db $fc
    ld b, h
    ld bc, $34cc
    ld b, c
    db $fc
    add h
    rlca
    db $f4
    adc h
    ld hl, sp+$08
    add sp, $18
    or b
    ld [hl], b
    add e
    inc b
    ld a, d
    dec bc
    ret nz

    ret nz

jr_01c_4521:
    ldh a, [$ff30]
    add sp, $18
    cp $0e
    db $fd
    ld b, e
    rst $38
    add c
    ld b, c
    rst $38
    ld bc, $ee0b
    ld [de], a

jr_01c_4531:
    db $fc
    inc c
    db $f4
    inc c
    add sp, $18
    jr c, jr_01c_4531

    ret z

    ld hl, sp-$5d
    nop
    db $fc
    dec bc
    inc e
    inc e
    and d
    cp [hl]
    pop hl
    rst $38
    reti


    ccf
    push af
    rrca
    cp $06
    ld b, d
    cp $02
    ld bc, $06fa
    and l
    inc bc
    ld [$dd05], a
    inc hl
    and d
    ld a, [hl]
    db $fc
    db $fc
    add h
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    add b
    rst $38
    rst $38
    db $e4
    daa
    nop
    rrca
    jr jr_01c_4580

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, @+$32

    sub e
    ld b, $ee
    ld bc, $d030
    ld b, c
    db $10
    ldh a, [rNR11]

jr_01c_4580:
    inc de
    di
    inc hl
    ldh [c], a
    inc h
    rst $20
    daa
    db $e4
    dec hl
    db $ec
    set 1, h
    ld de, $081e
    rrca
    rlca
    rlca
    db $e4
    inc hl
    nop
    push bc
    inc bc
    ld a, e
    and l
    ld bc, $0366
    ldh a, [rNR10]
    ld [$b9f8], sp
    ld b, $ea
    dec b
    rla
    jr jr_01c_45c3

    inc de

jr_01c_45a8:
    jr @+$19

jr_01c_45aa:
    and e
    rlca
    sub [hl]
    ld bc, $0c0b
    and e
    inc b
    ld a, b
    db $e4
    dec l
    nop
    and e
    rlca
    nop
    add a
    ld [$019c], sp
    add hl, bc
    ld c, $83
    ld bc, $35b6

jr_01c_45c3:
    nop
    adc h
    nop
    nop
    nop
    or b
    add a
    nop
    ld c, $a3
    ld [$f048], sp
    daa
    ld [$054e], sp
    ld d, b
    or b
    ld [hl], b
    sub b
    jr nc, jr_01c_45aa

    sub a
    inc b
    ld a, b
    adc d
    nop
    jr nz, jr_01c_45e3

    nop
    rst $38

jr_01c_45e3:
    dec c
    add h
    nop
    ld l, $00
    ldh [c], a
    add l
    nop
    inc [hl]

jr_01c_45ec:
    cp a
    ld [$85bc], sp
    rlca
    ld b, [hl]
    ld bc, $18e8
    and l
    ld [$01e2], sp
    add b
    add b
    db $e4
    dec l

jr_01c_45fd:
    nop
    ld bc, $c0c0
    and a
    ld bc, $0368
    ret nc

    jr nc, jr_01c_45a8

    ld h, b
    db $f4
    cpl
    ld [$05a6], sp
    rra
    rra
    cpl
    jr nc, jr_01c_4692

    ld b, b
    jp $ed00


    add e
    nop
    ld [$8f0b], a
    ldh a, [$ff80]
    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    jr c, jr_01c_4664

    rrca
    rrca
    db $f4
    daa
    add hl, bc
    or d
    sub a
    ld [bc], a
    add sp, $03
    add hl, bc
    rrca
    ld c, $0f
    adc c
    ld a, [bc]
    ld d, $01
    add b
    rst $38
    ldh a, [$ff2b]
    ld a, [bc]
    ld [hl+], a
    or c
    inc bc
    ld d, $03
    rra
    ld de, $312f
    ld b, e
    ccf
    jr nz, jr_01c_45ec

    inc bc
    ld [hl], d
    sub c
    inc bc
    cp $01
    cpl
    jr nc, jr_01c_45fd

    inc bc
    xor h
    ld hl, sp+$27
    ld [$01d9], sp
    rst $38
    rst $38
    and e
    ld [bc], a
    ld h, h
    rlca
    db $10
    rst $28
    nop
    rst $38
    rst $38

jr_01c_4664:
    nop
    ldh [$ff1f], a

jr_01c_4667:
    push bc
    ld [bc], a
    ld [hl], c
    inc bc
    rlca
    rst $38
    jr c, jr_01c_4667

    sbc e
    add hl, bc
    add sp, -$10
    dec h
    ld bc, $03ba
    rra
    ldh [$ffc7], a
    ld hl, sp-$77
    dec bc

jr_01c_467d:
    ld d, $01
    nop
    rst $38
    ldh a, [$ff29]
    dec bc
    ld [hl+], a
    dec b
    ld a, a
    ld a, a
    add e
    db $fc
    inc bc
    db $fc
    ret z

    ld [bc], a
    dec [hl]
    nop
    db $fc
    cp e

jr_01c_4692:
    ld [bc], a
    and h
    xor d
    ld a, [bc]
    sub $08
    dec bc
    db $fc
    dec bc
    cp $49
    rst $38
    jr nc, @+$01

    nop
    add e
    dec bc
    jp z, Jump_000_27f0

    rlca
    and $11
    db $fc
    db $fc
    ld a, d
    add [hl]
    dec c
    di
    rlca
    ld sp, hl
    inc bc
    db $fd
    rst $38
    ld bc, $06fa
    adc h
    db $fc
    ld [hl], b
    ldh a, [$fff0]
    daa
    add hl, bc
    add sp, -$61
    ld [bc], a
    ret nz

    add e
    inc b
    sub $89
    inc c
    ld d, $01
    ld bc, $f0ff
    dec hl
    inc c
    ld [hl+], a
    daa
    add b
    ld b, c
    ld b, b
    ret nz

    ld [bc], a
    ldh [rNR41], a
    jr nz, jr_01c_467d

    ld bc, $b7a3
    ld bc, $276a
    nop
    push bc
    inc bc
    daa
    ld b, $84
    ld a, h
    db $fc
    inc b
    ld [$30f8], sp
    sub d
    inc c
    daa
    nop
    inc bc
    ld b, c
    inc bc
    ld [bc], a
    ld [$0f03], sp
    rrca
    inc b
    rlca
    ld a, $3f
    ld b, d
    ld a, a
    call nz, $ef03
    ld b, $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    ld a, a
    and e
    inc c
    db $e4
    add hl, bc
    ld de, $281e
    ccf
    ld a, $3f
    rlca
    rlca
    ld bc, $e401
    ld sp, $9500
    ld bc, $02ea
    inc c
    rrca
    rrca
    ldh a, [$ff2c]
    ld a, [bc]
    ld [hl], e
    adc c
    dec c
    nop
    nop
    ld [bc], a
    and [hl]
    add hl, bc

jr_01c_472b:
    reti


    nop
    db $10
    and [hl]
    ld [bc], a
    push bc
    dec b
    ld [hl-], a
    ccf
    ccf
    ld a, $1d
    ld e, $87
    ld b, $e0
    ld bc, $0101
    sub l
    ld [$83e8], sp
    dec c
    jr nz, jr_01c_4746

    rrca

jr_01c_4746:
    rrca
    sub a
    dec c
    ret z

    rlca
    nop
    nop
    sbc h
    sbc h
    ld [hl], e
    rst $38
    ld de, $c3ff
    dec bc
    jp hl


    inc de
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
    rst $38
    nop
    add a
    rlca
    ldh [rSB], a
    ld c, d
    ld c, d
    dec hl
    nop
    ldh a, [$ff31]
    dec bc
    jr nc, @-$75

    inc bc
    sub [hl]
    add e
    ld [bc], a
    ld h, h
    ldh a, [$ff2b]
    dec bc
    ld [hl], h
    sub h
    ld c, $00
    nop
    ldh [$ff83], a
    ld c, $16
    adc a
    ld c, $18
    sub l
    ld c, $26
    add e
    dec c
    nop
    rlca
    ld [hl], d
    ld [hl], e
    rst $38
    rst $38
    db $f4
    rst $28
    db $f4
    rst $08
    ld b, c
    ld a, [$0487]
    ld hl, sp-$79
    ld [hl], b
    ld c, a
    jr nc, jr_01c_472b

    ld a, [bc]
    jp nz, Jump_000_0d83

    inc e
    ld bc, $8080
    and a
    ld [bc], a
    ldh a, [rNR13]
    ld [hl], b
    ldh a, [$fffe]
    sbc $f9
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
    call nc, $f42c
    inc c
    add l
    rlca
    sub [hl]
    xor c
    ld [$f0a8], sp
    inc sp
    inc c
    ld a, [hl+]
    adc l
    inc bc
    ld d, d
    inc bc
    cp $02
    db $fc
    inc c
    ldh a, [$ff2b]
    inc c
    ld [hl], h
    dec b
    ld h, b
    ld h, b
    and b
    ldh [rNR41], a
    ldh [$ffa3], a
    ld bc, $019c
    ld [hl], b
    ldh a, [rSTAT]
    ldh a, [$ffd0]
    rrca
    ld hl, sp+$38
    adc b
    ld hl, sp-$34
    inc a
    db $e4
    inc e
    sub [hl]
    ld l, [hl]
    sub d
    ld l, [hl]
    sub $2e

jr_01c_47fa:
    or $0e
    sbc a
    rrca
    ld e, $83
    inc c
    or d
    rlca
    inc l
    db $ec
    ld a, $fe
    ld d, $fe
    ld [hl], d
    cp $41
    ldh a, [c]
    sbc $09
    db $f4
    inc a
    adc h
    db $fc
    ret z

    jr c, jr_01c_47fa

    inc e
    sub h
    ld l, h
    add l
    rrca
    ld a, [de]
    rst $38
    adc a
    ld c, b
    xor b
    ld c, b
    pop bc
    ld c, b
    jp c, Jump_000_0b48

    ld c, c
    inc a
    ld c, c
    ld l, l
    ld c, c
    sbc [hl]
    ld c, c
    cp a
    ld c, c
    ldh [rOBP1], a
    ld bc, $224a
    ld c, d
    ld b, e
    ld c, d
    ld h, h
    ld c, d
    add l
    ld c, d
    and [hl]
    ld c, d
    rst $00
    ld c, d
    ret nc

    ld c, d
    reti


    ld c, d
    ldh [c], a
    ld c, d
    db $eb
    ld c, d
    db $f4
    ld c, d
    db $fd
    ld c, d
    ld b, $4b
    rrca
    ld c, e
    jr jr_01c_489c

    add hl, sp
    ld c, e
    ld d, d
    ld c, e
    ld l, e
    ld c, e
    add h
    ld c, e
    xor c
    ld c, e
    adc $4b
    rst $38
    ld c, e
    jr nc, @+$4e

    ld h, c
    ld c, h
    sub d
    ld c, h
    xor e
    ld c, h
    call nz, $dd4c
    ld c, h
    or $4c
    rrca
    ld c, l
    jr z, jr_01c_48be

    ld b, c
    ld c, l
    ld e, d
    ld c, l
    ld [hl], e
    ld c, l
    adc h
    ld c, l
    and l
    ld c, l
    cp [hl]
    ld c, l
    rst $10
    ld c, l
    add sp, $4d

jr_01c_4881:
    ld sp, hl
    ld c, l
    ld a, [bc]
    ld c, [hl]
    dec de
    ld c, [hl]
    inc a
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld h, a
    ld c, [hl]
    ld b, $ec
    inc b
    db $10
    jr nz, jr_01c_4881

    db $fc
    jr nz, @+$22

    db $ec
    db $f4
    jr nc, jr_01c_48bc

jr_01c_489c:
    db $fc

jr_01c_489d:
    inc b
    ld [de], a
    jr nz, jr_01c_489d

jr_01c_48a1:
    db $fc
    ld [hl+], a
    jr nz, jr_01c_48a1

    db $f4
    ld [hl-], a
    ld hl, $ee06
    db $fc
    inc h

jr_01c_48ac:
    jr nz, jr_01c_48ac

    db $fc
    ld h, $20
    cp $f4
    ld [hl], $20
    cp $04
    ld d, $20
    xor $04
    inc d

jr_01c_48bc:
    jr nz, jr_01c_48ac

jr_01c_48be:
    db $f4
    jr nc, jr_01c_48e2

    ld b, $ef
    db $fd
    jr z, jr_01c_48e6

    rst $38
    db $fd
    ld a, [hl+]
    jr nz, @+$01

    push af
    ld a, [hl-]

jr_01c_48cd:
    jr nz, @+$01

    dec b
    ld a, [de]
    jr nz, @-$0f

    dec b
    jr jr_01c_48f6

    rst $28
    push af
    jr nc, @+$23

jr_01c_48da:
    inc c
    db $ed
    db $fc
    ld b, b

jr_01c_48de:
    jr nz, jr_01c_48cd

    db $f4

jr_01c_48e1:
    ld d, b

jr_01c_48e2:
    jr nz, jr_01c_48e1

    db $fc

jr_01c_48e5:
    ld b, d

jr_01c_48e6:
    jr nz, jr_01c_48e5

    db $f4
    ld d, d
    jr nz, @-$11

    inc b

jr_01c_48ed:
    ld d, h
    jr nz, jr_01c_48ed

    inc b
    ld d, [hl]
    jr nz, jr_01c_48da

    nop
    inc a

jr_01c_48f6:
    jr nz, jr_01c_48de

    ld hl, sp+$4c
    jr nz, jr_01c_48e6

    add hl, bc
    add b

jr_01c_48fe:
    nop
    ld b, $09
    add b
    ld b, b
    ld [$80ef], a
    nop
    ld b, $ef
    add b

jr_01c_490a:
    ld b, c

jr_01c_490b:
    inc c
    db $ed
    db $fc
    ld b, b

jr_01c_490f:
    jr nz, jr_01c_48fe

    db $f4

jr_01c_4912:
    ld d, b
    jr nz, jr_01c_4912

    db $fc

jr_01c_4916:
    ld b, d
    jr nz, jr_01c_4916

    db $f4
    ld d, d
    jr nz, jr_01c_490a

    inc b

jr_01c_491e:
    ld d, h
    jr nz, jr_01c_491e

    inc b
    ld d, [hl]
    jr nz, jr_01c_490b

    nop
    inc a
    jr nz, jr_01c_490f

    ld hl, sp+$4c
    jr nz, jr_01c_4916

    ld a, [bc]
    add b

jr_01c_492f:
    nop
    rlca
    ld a, [bc]
    add b
    ld b, b
    jp hl


    xor $80
    nop
    rlca
    xor $80

jr_01c_493b:
    ld b, c

jr_01c_493c:
    inc c
    db $ed
    db $fc
    ld b, b

jr_01c_4940:
    jr nz, jr_01c_492f

    db $f4

jr_01c_4943:
    ld d, b
    jr nz, jr_01c_4943

jr_01c_4946:
    db $fc

jr_01c_4947:
    ld b, d
    jr nz, jr_01c_4947

    db $f4
    ld d, d
    jr nz, jr_01c_493b

    inc b

jr_01c_494f:
    ld d, h
    jr nz, jr_01c_494f

    inc b
    ld d, [hl]
    jr nz, jr_01c_493c

    nop
    inc a
    jr nz, jr_01c_4940

    ld hl, sp+$4c
    jr nz, jr_01c_4946

    dec bc
    add b

jr_01c_4960:
    nop
    ld [$800b], sp
    ld b, b
    add sp, -$13
    add b
    nop
    ld [$80ed], sp

jr_01c_496c:
    ld b, c

jr_01c_496d:
    inc c
    db $ed
    db $fc
    ld b, b

jr_01c_4971:
    jr nz, jr_01c_4960

    db $f4

jr_01c_4974:
    ld d, b

jr_01c_4975:
    jr nz, jr_01c_4974

    db $fc

jr_01c_4978:
    ld b, d
    jr nz, jr_01c_4978

    db $f4
    ld d, d
    jr nz, jr_01c_496c

Jump_01c_497f:
    inc b

jr_01c_4980:
    ld d, h
    jr nz, jr_01c_4980

    inc b
    ld d, [hl]
    jr nz, jr_01c_496d

    nop
    inc a
    jr nz, jr_01c_4971

    ld hl, sp+$4c
    jr nz, jr_01c_4975

    dec c
    add b

jr_01c_4991:
    nop
    ld a, [bc]
    dec c
    add b
    ld b, b
    and $eb
    add b
    nop
    ld a, [bc]
    db $eb
    add b

jr_01c_499d:
    ld b, c

jr_01c_499e:
    ld [$fced], sp
    ld b, b

jr_01c_49a2:
    jr nz, jr_01c_4991

    db $f4

jr_01c_49a5:
    ld d, b
    jr nz, jr_01c_49a5

    db $fc

jr_01c_49a9:
    ld b, d
    jr nz, jr_01c_49a9

    db $f4
    ld d, d
    jr nz, jr_01c_499d

    inc b

jr_01c_49b1:
    ld d, h
    jr nz, jr_01c_49b1

    inc b
    ld d, [hl]

jr_01c_49b6:
    jr nz, jr_01c_499e

    nop
    inc a

jr_01c_49ba:
    jr nz, jr_01c_49a2

    ld hl, sp+$4c

jr_01c_49be:
    ld hl, $ed08
    db $f4

jr_01c_49c2:
    ld b, h
    jr nz, jr_01c_49c2

    db $f4
    ld b, [hl]
    jr nz, jr_01c_49b6

    inc b
    ld c, b
    jr nz, jr_01c_49ba

    db $fc

jr_01c_49ce:
    ld e, b
    jr nz, jr_01c_49ce

    inc b

jr_01c_49d2:
    ld c, d
    jr nz, jr_01c_49d2

    db $fc
    ld e, d
    jr nz, jr_01c_49be

    nop
    inc a
    jr nz, jr_01c_49c2

    ld hl, sp+$4c
    ld hl, $0508
    db $f4
    ld b, h
    ld h, b
    push af
    db $f4
    ld b, [hl]
    ld h, b
    dec b
    inc b
    ld c, b
    ld h, b
    dec b
    db $fc
    ld e, b
    ld h, b
    push af
    inc b
    ld c, d
    ld h, b
    push af
    db $fc
    ld e, d
    ld h, b
    and $00
    ld a, $20
    and $f8
    ld c, [hl]
    ld hl, $0508
    db $fc
    ld b, b
    ld h, b
    dec b
    db $f4
    ld d, b
    ld h, b
    push af
    db $fc
    ld b, d
    ld h, b
    push af
    db $f4
    ld d, d
    ld h, b
    dec b
    inc b
    ld d, h
    ld h, b
    push af
    inc b
    ld d, [hl]
    ld h, b
    push hl
    nop
    ld a, $20
    push hl
    ld hl, sp+$4e
    ld hl, $0508
    db $fc
    ld b, b

jr_01c_4a26:
    ld b, b
    dec b
    inc b
    ld d, b
    ld b, b
    push af
    db $fc
    ld b, d
    ld b, b
    push af
    inc b
    ld d, d
    ld b, b
    dec b
    db $f4
    ld d, h
    ld b, b
    push af
    db $f4
    ld d, [hl]
    ld b, b
    and $00
    inc a
    jr nz, jr_01c_4a26

    ld hl, sp+$4c
    ld hl, $0508
    inc b

jr_01c_4a46:
    ld b, h
    ld b, b
    push af
    inc b
    ld b, [hl]
    ld b, b
    dec b
    db $f4
    ld c, b
    ld b, b
    dec b
    db $fc
    ld e, b
    ld b, b
    push af
    db $f4
    ld c, d
    ld b, b
    push af
    db $fc
    ld e, d
    ld b, b
    push hl
    nop
    inc a
    jr nz, jr_01c_4a46

    ld hl, sp+$4c
    ld hl, $ed08
    inc b
    ld b, h
    nop
    db $fd
    inc b
    ld b, [hl]
    nop
    db $ed
    db $f4
    ld c, b
    nop
    db $ed
    db $fc
    ld e, b
    nop
    db $fd
    db $f4
    ld c, d
    nop
    db $fd
    db $fc
    ld e, d
    nop
    and $00
    ld a, $20
    and $f8
    ld c, [hl]
    ld hl, $ed08
    db $fc
    ld b, b
    nop
    db $ed
    inc b
    ld d, b
    nop
    db $fd
    db $fc
    ld b, d
    nop
    db $fd
    inc b
    ld d, d
    nop
    db $ed
    db $f4
    ld d, h

jr_01c_4a99:
    nop
    db $fd
    db $f4
    ld d, [hl]
    nop
    push hl
    nop
    ld a, $20
    push hl
    ld hl, sp+$4e

jr_01c_4aa5:
    ld hl, $ed08
    db $fd
    ld b, b
    jr nz, jr_01c_4a99

    push af

jr_01c_4aad:
    ld d, b
    jr nz, jr_01c_4aad

    db $fd

jr_01c_4ab1:
    ld b, d
    jr nz, jr_01c_4ab1

    push af
    ld d, d
    jr nz, jr_01c_4aa5

    dec b

jr_01c_4ab9:
    ld d, h
    jr nz, jr_01c_4ab9

    dec b
    ld d, [hl]
    jr nz, jr_01c_4aa5

    dec b
    ld a, $20
    push hl
    db $fd
    ld c, [hl]
    ld hl, $f802
    ld hl, sp+$68
    nop
    ld hl, sp+$00
    ld a, b
    ld bc, $f802
    ld sp, hl
    ld l, b
    nop
    ld hl, sp+$01
    ld a, b
    ld bc, $f802
    ld hl, sp+$6a
    nop
    ld hl, sp+$00
    ld a, d
    ld bc, $f802
    ld hl, sp+$6c
    nop
    ld hl, sp+$00

jr_01c_4ae9:
    ld a, h
    ld bc, $f802
    ld hl, sp+$06
    jr nz, jr_01c_4ae9

    nop
    ld [$0221], sp
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    ld [$0201], sp
    ld hl, sp+$00

Jump_01c_4b00:
    ld a, [bc]
    nop
    ld hl, sp-$08
    ld [$0201], sp
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$08
    ld c, $01
    ld [bc], a
    ld hl, sp-$08
    ld h, b
    nop
    ld hl, sp+$00
    ld [hl], b
    ld bc, $f808
    ld hl, sp+$60
    nop
    db $e4
    db $f4
    jp c, $e400

    db $fc
    ld [$e400], a
    inc b
    ld a, [$f800]
    nop
    ld [hl], b
    nop
    db $f4
    inc b
    db $fc
    nop
    db $f4
    db $f4
    ld l, [hl]
    nop
    db $f4
    db $fc
    ld a, [hl]
    ld bc, $eb06
    db $f4
    jp c, $eb00

    db $fc
    ld [$eb00], a
    inc b
    ld a, [$fb00]
    inc b
    nop
    nop
    ei
    db $fc
    ld [bc], a
    nop
    ei
    db $f4
    inc b
    ld bc, $fb06
    inc b
    nop
    nop
    ei
    db $fc
    ld [bc], a
    nop
    ei
    db $f4
    inc b
    nop
    db $eb
    ei
    inc e
    nop
    db $eb
    inc bc
    inc l
    nop
    db $eb
    di
    ld l, $01
    ld b, $fb
    db $f4
    inc b
    nop
    ei
    inc b
    sub b
    nop
    ei
    db $fc
    sub [hl]
    nop
    db $eb
    inc bc
    inc [hl]
    nop
    db $eb
    ei
    jr c, jr_01c_4b80

jr_01c_4b80:
    db $eb
    di
    ld e, $01
    add hl, bc
    add sp, -$0e
    and h
    nop
    add sp, -$06
    or h
    nop
    add sp, $02
    call nz, $f800
    ldh a, [c]
    and [hl]
    nop
    ld hl, sp-$06
    or [hl]
    nop
    ld hl, sp+$02
    add $00
    ld [$a8f2], sp
    db $10
    ld [$b8fa], sp
    db $10
    ld [$c802], sp
    ld de, $e809
    ldh a, [c]
    call nc, $e800
    ld a, [$00e4]
    add sp, $02
    db $f4
    nop
    ld hl, sp-$0e
    sub $00
    ld hl, sp-$06
    and $00
    ld hl, sp+$02
    or $00
    ld [$d8f2], sp
    db $10
    ld [$e8fa], sp
    db $10
    ld [$f802], sp
    ld de, $f70c
    ldh a, [c]
    and b
    nop
    rst $30
    ld a, [$00b0]
    rst $30
    ld [bc], a
    ret nz

    nop
    rlca
    ldh a, [c]
    and d
    db $10
    rlca
    ld a, [$10b2]
    rlca
    ld [bc], a
    jp nz, $ec10

    db $f4
    jp c, $ec00

    db $fc
    ld [$ec00], a
    inc b
    ld a, [$fc00]
    db $f4
    call c, $fc00
    db $fc
    db $ec
    nop
    db $fc
    inc b
    db $fc
    ld bc, $f70c
    di
    and b
    nop
    rst $30
    ei
    or b
    nop
    rst $30
    inc bc
    ret nz

    nop
    rlca
    di
    and d
    db $10
    rlca
    ei
    or d
    db $10
    rlca
    inc bc
    jp nz, $ec10

    push af
    jp c, $ec00

    db $fd
    ld [$ec00], a
    dec b
    ld a, [$fc00]
    push af
    call c, $fc00
    db $fd
    db $ec
    nop
    db $fc
    dec b
    db $fc
    ld bc, $f70c
    ldh a, [c]
    and b
    nop
    rst $30
    ld a, [$00b0]
    rst $30
    ld [bc], a
    ret nz

    nop
    rlca
    ldh a, [c]
    and d
    db $10
    rlca
    ld a, [$10b2]
    rlca
    ld [bc], a
    jp nz, $ec10

    db $f4
    ret nc

    nop
    db $ec
    db $fc
    ldh [rP1], a
    db $ec
    inc b
    ldh a, [rP1]
    db $fc
    db $f4
    jp nc, $fc00

    db $fc
    ldh [c], a
    nop
    db $fc
    inc b
    ldh a, [c]
    ld bc, $070c
    ldh a, [c]
    and d
    db $10
    rlca
    ld a, [$10b2]
    rlca
    ld [bc], a
    jp nz, $f710

    ldh a, [c]
    and b
    nop
    rst $30
    ld a, [$00b0]
    rst $30
    ld [bc], a
    ret nz

    nop
    db $eb
    inc b
    cp $00
    db $eb
    db $f4
    xor $00
    ei
    inc b
    ldh a, [c]
    nop
    ei
    db $f4
    sbc $00
    db $eb
    db $fc
    ldh [rP1], a
    ei
    db $fc
    ldh [c], a
    ld bc, $f106
    db $f4
    jp c, $f100

    db $fc
    ld [$f100], a
    inc b
    ld a, [$0100]
    db $f4
    call c, $0100
    db $fc
    db $ec
    nop
    ld bc, $fc04
    ld bc, $f206
    db $f4
    ret nc

    nop
    ldh a, [c]
    db $fc
    ldh [rP1], a
    ldh a, [c]
    inc b
    ldh a, [rP1]
    ld [bc], a
    db $f4
    jp nc, Jump_000_0200

    db $fc
    ldh [c], a
    nop
    ld [bc], a
    inc b
    ldh a, [c]
    ld bc, $f206
    inc b
    cp $00
    ld [bc], a
    inc b
    ldh a, [c]
    nop
    ldh a, [c]
    db $fc
    ldh [rP1], a
    ld [bc], a
    db $fc
    ldh [c], a
    nop
    ldh a, [c]
    db $f4
    xor $00
    ld [bc], a
    db $f4
    sbc $01
    ld b, $ed
    db $fd
    ld b, b
    jr nz, @-$11

    push af

jr_01c_4ce4:
    ld d, b
    jr nz, jr_01c_4ce4

    db $fd

jr_01c_4ce8:
    ld b, d

jr_01c_4ce9:
    jr nz, jr_01c_4ce8

    push af
    ld d, d
    jr nz, @-$11

    dec b

jr_01c_4cf0:
    ld d, h
    jr nz, jr_01c_4cf0

    dec b
    ld d, [hl]

jr_01c_4cf5:
    ld hl, $ed06
    cp $40
    jr nz, jr_01c_4ce9

Call_01c_4cfc:
    or $50
    jr nz, @-$01

    cp $42
    jr nz, @-$01

    or $52
    jr nz, jr_01c_4cf5

    ld b, $54
    jr nz, @-$01

    ld b, $56
    ld hl, $ed06
    db $fc
    ld b, b
    nop
    db $ed
    inc b
    ld d, b
    nop
    db $fd
    db $fc
    ld b, d
    nop
    db $fd
    inc b
    ld d, d
    nop
    db $ed
    db $f4
    ld d, h
    nop
    db $fd
    db $f4
    ld d, [hl]
    ld bc, $ed06
    inc b
    ld b, h
    nop
    db $fd
    inc b
    ld b, [hl]
    nop
    db $ed
    db $f4
    ld c, b
    nop
    db $ed
    db $fc
    ld e, b
    nop
    db $fd
    db $f4
    ld c, d
    nop
    db $fd
    db $fc
    ld e, d
    ld bc, $0506
    inc b
    ld b, h
    ld b, b
    push af
    inc b
    ld b, [hl]
    ld b, b
    dec b
    db $f4
    ld c, b
    ld b, b
    dec b
    db $fc
    ld e, b
    ld b, b
    push af
    db $f4
    ld c, d
    ld b, b
    push af
    db $fc
    ld e, d
    ld b, c
    ld b, $05
    db $fc
    ld b, b
    ld b, b
    dec b
    inc b
    ld d, b
    ld b, b
    push af
    db $fc
    ld b, d
    ld b, b
    push af
    inc b
    ld d, d
    ld b, b
    dec b
    db $f4
    ld d, h
    ld b, b
    push af
    db $f4
    ld d, [hl]
    ld b, c
    ld b, $05
    db $fc
    ld b, b
    ld h, b
    dec b
    db $f4
    ld d, b
    ld h, b
    push af
    db $fc
    ld b, d
    ld h, b
    push af
    db $f4
    ld d, d
    ld h, b
    dec b
    inc b
    ld d, h
    ld h, b
    push af
    inc b
    ld d, [hl]
    ld h, c
    ld b, $f4
    db $f4
    xor d
    nop
    db $f4
    db $fc
    cp d
    nop
    db $f4
    inc b
    jp z, Jump_000_0400

    db $f4
    xor h
    nop
    inc b
    db $fc
    cp h
    nop
    inc b
    inc b
    call z, $0601
    ldh a, [c]
    db $f4
    xor d
    nop
    ldh a, [c]
    db $fc
    cp d
    nop
    ldh a, [c]
    inc b
    jp z, Jump_000_0200

    db $f4
    xor h
    nop
    ld [bc], a
    db $fc
    cp h
    nop
    ld [bc], a
    inc b
    call z, $0601
    db $f4
    db $f4
    ld h, [hl]
    nop
    db $f4
    db $fc
    halt
    nop
    db $f4
    inc b
    add [hl]
    nop
    inc b
    db $f4
    xor [hl]
    nop
    inc b
    db $fc
    cp [hl]
    nop
    inc b
    inc b
    adc $01
    inc b
    db $ec
    db $f4
    add b
    nop
    db $ec
    inc b
    add b
    nop
    db $fc
    db $f4
    add b
    nop
    db $fc
    inc b
    add b
    ld bc, $e904
    pop af
    add b
    nop
    jp hl


    rlca
    add b
    nop
    rst $38
    rlca
    add b
    nop
    rst $38
    pop af
    add b
    ld bc, $e804
    ldh a, [$ff80]
    nop
    add sp, $08
    add b
    nop
    nop
    ld [$0080], sp
    nop
    ldh a, [$ff80]
    ld bc, $e404
    db $ec
    add b
    db $10
    db $e4
    inc c
    add b
    db $10
    inc b
    db $ec
    add b
    db $10
    inc b
    inc c
    add b
    ld de, $f508
    pop af
    ld h, d
    nop
    push af
    ld sp, hl
    ld [hl], d
    nop
    push af
    ld bc, $0082
    push af
    add hl, bc
    sub d
    nop
    dec b
    pop af
    ld h, h
    db $10
    dec b
    ld sp, hl
    ld [hl], h
    db $10
    dec b
    ld bc, $1084
    dec b
    add hl, bc
    sub h
    ld bc, $f004
    ld hl, sp-$78
    nop
    ldh a, [rP1]
    sbc b
    nop
    nop
    ld hl, sp-$76
    stop
    nop
    sbc d
    ld de, $f004
    ld hl, sp-$74
    nop
    ldh a, [rP1]
    sbc h
    nop
    nop
    ld hl, sp-$72
    stop
    nop
    sbc [hl]
    ld de, $f002
    db $fc
    ld e, h
    nop
    nop
    db $fc
    ld e, [hl]
    ld de, $f80a
    db $fc
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add b
    ld hl, sp-$04
    nop
    add c
    dec e
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_01c_4ec7

    jr nc, jr_01c_4ed9

    jr nz, jr_01c_4efb

    ld h, b
    ld a, a
    ld b, b
    ld a, h
    ld b, e
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_01c_4ed7

    jr nc, @+$19

    jr jr_01c_4eb9

    ld c, $03
    inc bc
    inc hl
    nop
    dec b
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, @-$7b

jr_01c_4eb9:
    nop
    ld a, [bc]
    ld de, $c0bf
    db $fd
    add d
    cp $81
    rst $38
    add b
    cp a
    ret nz

    ld a, [hl]

jr_01c_4ec7:
    ld b, c
    ld e, a
    ld h, c
    cpl
    jr nc, jr_01c_4ee8

    inc e
    jp Jump_000_2300


    adc l
    nop
    nop
    ld b, c
    ld a, a
    ld b, b

jr_01c_4ed7:
    inc bc
    ld e, a

jr_01c_4ed9:
    ld h, e
    ccf
    ld hl, $0087
    ld d, $8b
    nop
    ld [hl+], a
    dec bc
    rst $38
    add b
    or $99
    rst $38

jr_01c_4ee8:
    sbc b
    cp a
    jp nz, Jump_01c_497f

    ld e, a
    ld h, h
    add l
    nop
    ld a, [hl-]
    ld sp, $0700
    inc bc
    inc bc
    inc c
    rrca
    inc de
    inc e

jr_01c_4efb:
    rrca
    db $10
    ld b, c
    rra
    nop

Jump_01c_4f00:
    ld bc, $001f
    db $d3
    nop
    adc a
    dec b
    jr jr_01c_4f28

    daa
    jr c, jr_01c_4f2b

    jr nz, jr_01c_4f50

    ccf
    nop
    nop
    ccf
    sbc [hl]
    nop
    sbc a
    cpl
    nop
    rlca
    ld bc, $0601
    rlca
    add hl, bc
    ld c, $17
    jr @-$78

    nop
    sub [hl]
    xor e
    nop
    rra
    ld a, [bc]
    ld d, d

jr_01c_4f28:
    db $fd
    ld d, e
    rst $38

jr_01c_4f2b:
    ld d, c
    rst $38
    ld bc, $31ff
    db $fd
    inc hl
    and e
    nop
    db $10
    and a
    nop
    ld a, b
    or b
    nop
    ld b, b
    ld [$fe22], sp
    ld b, d
    ld a, [$fc16]
    and h
    db $f4
    adc h
    and l
    nop
    jr @-$53

    nop
    jr nz, jr_01c_4f4d

    ld a, l

jr_01c_4f4d:
    add e
    and e
    nop

jr_01c_4f50:
    jr nc, @+$07

    rst $38
    ld [hl], c
    db $fd
    inc bc
    cp $72
    add a
    ld bc, $8b16
    ld bc, $0322
    ld a, [hl]
    add d
    cp $02
    or c
    nop
    db $10
    add [hl]
    nop
    nop
    ld [bc], a
    inc sp
    ld sp, $832e
    nop
    ld a, [bc]
    inc c
    rst $38
    ret nz

    ccf
    ldh a, [$ffcf]
    inc a
    di
    rrca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld l, $00
    dec d
    rrca
    rrca
    scf
    jr c, @+$61

    ld h, b
    rst $38
    jp $ee31


    xor a
    ld [hl], b
    rst $10
    jr c, @-$0f

    inc e
    di
    rrca
    db $fc
    inc bc
    nop
    nop
    adc d
    ld bc, $107e
    dec [hl]
    ccf
    dec h
    ld e, a
    ld h, l
    rst $20
    ret c

    ld a, a
    jp nz, Jump_01c_40ff

    xor e
    ld [hl], a
    db $fc
    ccf
    jp $883c


    nop
    jr nz, jr_01c_4fc6

    ld l, b
    ld a, a
    ld c, c
    cp a
    jp z, $b1ce

    adc $b5
    cp a
    call nz, $c0ff
    ld e, a
    ldh [$ffaf], a
    ld [hl], b
    push de
    dec sp
    xor $1f
    pop af

jr_01c_4fc6:
    ld c, $85
    nop
    adc h
    add hl, bc
    dec b
    ld b, $0b
    inc c
    rrca
    ld [$1817], sp
    ld e, $11
    ld b, c
    rra
    db $10
    ld b, d
    rla
    jr jr_01c_4fe3

    dec bc
    inc c
    add hl, bc
    ld c, $04
    rlca
    inc bc

jr_01c_4fe3:
    inc bc
    ldh a, [$ff2d]
    nop
    ret nz

    inc hl
    nop
    dec b
    ld hl, sp-$08
    rlca
    rst $38
    ld hl, sp+$07
    ld b, c
    rst $38
    nop
    ld [bc], a
    rst $38
    nop
    rst $38
    or d
    nop
    sbc a
    dec b
    inc e
    db $fc
    db $e3
    rra
    db $fc
    inc bc
    adc c
    ld [bc], a
    ld e, b
    add l
    ld bc, $0500
    cp $1a
    ldh a, [c]
    xor [hl]
    db $fd
    inc bc
    ld b, c
    rst $38
    ld b, c
    rlca
    cp $07
    ld sp, hl
    ld e, $e7
    ld hl, sp+$1f
    ldh [$ffb7], a
    ld bc, $0f9a
    db $fd
    dec de
    ldh a, [c]
    xor a
    ld a, [$f507]
    ld c, [hl]
    ei
    inc e
    rst $20
    ld hl, sp+$1f
    ldh [rP1], a
    nop
    xor a
    nop
    ld e, $0b
    ccf
    pop bc
    rst $18
    ld hl, $23fd
    ld [$1ff7], a
    cp $e1
    ld e, $88
    ld bc, $0020
    adc h
    add e
    ld bc, $032a
    ld a, a
    add e
    ld a, [hl]
    add e
    ld b, c
    db $fd
    inc bc
    ld b, c
    rst $38
    ld bc, $f505
    ei
    rrca
    rst $38
    ldh a, [rIF]
    add e
    ld [bc], a
    xor d
    dec bc
    ld l, b
    sbc b
    db $f4
    inc c
    db $fc
    and h
    ld a, [$fe56]
    ld d, d
    ld [hl], d
    adc [hl]
    ld b, c
    cp $22
    ld bc, $26fa
    add l
    ld bc, $0372
    ret z

    jr c, jr_01c_50a6

    ldh a, [$ff85]
    ld bc, $057c
    ld [hl], e
    ld [hl], e
    cp l
    adc $ef
    sub b
    ld b, c
    rst $18
    and l
    ld c, $7f

jr_01c_5086:
    ld b, l

jr_01c_5087:
    rst $20
    ret c

jr_01c_5089:
    ld a, a
    ldh [c], a
    rst $18
    ld [hl-], a
    rst $28
    jr jr_01c_5087

    rrca
    ld hl, sp+$07
    rst $38
    ld [hl], $00
    and l
    nop
    xor $04
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [$ff36]
    nop
    ld [$c0c0], sp
    jr nz, jr_01c_5086

jr_01c_50a6:
    ret nz

    jr nz, jr_01c_5089

    nop
    ldh [$fff4], a
    jr nc, jr_01c_50ae

jr_01c_50ae:
    ld a, a
    rlca
    ld [hl], b
    ld [hl], b
    adc h
    db $fc
    ld [hl], d
    adc [hl]
    db $fc
    ld [bc], a
    ld b, d
    cp $00
    nop
    cp $9e
    inc bc
    sbc a
    sub c
    inc bc
    add d
    ld [$3ccc], sp
    ldh a, [c]
    ld c, $fd
    inc bc
    cp $01
    rst $38
    sub d
    nop
    db $dd
    inc hl
    ld bc, $0093
    ret nc

    adc l
    ld [bc], a
    add $01

jr_01c_50d9:
    rst $38
    ld bc, $0287
    call nc, $f101
    ld c, $2f
    nop

jr_01c_50e3:
    rlca
    ld b, b
    ldh [rNR10], a
    ldh a, [$ffe0]
    jr jr_01c_50e3

    ld [$f441], sp
    inc c
    ld b, c
    ld a, [$0906]
    db $fc
    inc bc
    dec b
    ld b, $03
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $9d01
    nop
    ret z

    inc de
    cp a
    ret nz

    ld l, a
    ld [hl], b
    rra
    rra
    dec c
    rrca
    ld [de], a
    dec e
    rra
    inc d
    cpl
    inc [hl]
    ccf
    dec h
    daa
    jr c, jr_01c_513b

    ld a, [hl-]
    ld b, c
    ccf
    jr nz, jr_01c_511a

    ld l, a

jr_01c_511a:
    ld [hl], b
    add l
    inc b
    ld [$0241], sp
    inc bc
    dec b
    dec b
    ld b, $1b
    inc e
    daa
    jr c, jr_01c_50d9

    ld [bc], a
    ld b, d
    nop
    db $10
    add a
    nop
    jr jr_01c_5154

    ld bc, $0341
    ld [bc], a
    ld h, d
    ld [bc], a
    nop
    rlca
    ld b, e
    rlca

jr_01c_513b:
    inc b
    ld b, c
    dec b
    ld b, $0b
    ld b, $07
    dec b
    rlca
    ld a, [bc]
    dec c
    rrca
    ld [$1817], sp
    rra
    db $10
    add l
    nop
    ld b, $01
    ccf
    ret nz

    adc a
    nop

jr_01c_5154:
    add d
    rrca
    dec c
    ld c, $ff
    ldh a, [$ff5f]
    and l
    rst $18
    dec h
    cp a
    ld b, l
    and a
    ret c

    rst $18
    ldh [c], a
    cpl
    ldh a, [$ffa3]
    ld [bc], a
    cp d
    inc b
    ld hl, sp+$07
    rst $38
    nop
    nop
    ldh a, [$ff2c]
    inc bc
    cp a
    xor d
    nop
    xor b
    ld bc, $e2fc
    adc d
    ld [bc], a
    ld [hl], l
    add hl, bc
    rst $38
    nop
    cp a
    ret nz

    ld a, a
    ld a, a
    ld a, [de]
    rra
    daa
    dec a
    sub c
    ld bc, $86ce

jr_01c_518b:
    ld [bc], a
    ld c, h
    inc c
    rlca
    di
    rrca
    rst $38
    rst $38
    ld e, b
    ld hl, sp-$5c
    ld e, h
    db $fc
    ld b, h
    ld a, [$a386]
    nop

jr_01c_519d:
    inc c
    and e
    nop
    ld c, $07
    cp $02
    ei
    rlca
    xor a
    ldh a, [$ff5f]
    or c
    add l
    ld bc, $95f8
    ld [bc], a
    ld e, d
    ld b, c
    rst $38
    nop
    ld de, $01fe
    rst $38
    rst $38
    xor e
    rst $38

jr_01c_51ba:
    ld d, l
    xor e
    rst $38
    sub c
    cp $a1
    rst $38
    nop
    rst $20
    jr @-$17

    ld e, b
    ld b, c
    rst $38
    ld b, b
    add h
    ld [bc], a
    ld e, b
    ld [$ef38], sp
    jr c, jr_01c_518b

    ld l, l
    rst $10
    rst $28
    jr c, jr_01c_519d

    ld b, d
    rst $38
    nop
    adc [hl]
    ld [bc], a
    ld e, b
    ldh a, [$ff2a]
    inc b
    dec e
    dec b
    inc e
    inc e
    ld [hl+], a
    ld a, $5d
    ld h, e
    ld b, c

jr_01c_51e8:
    cp l
    jp $ba05


jr_01c_51ec:
    add $44
    ld a, h
    jr c, jr_01c_5229

    dec sp
    nop
    rlca
    add b
    ret nz

    jr nz, jr_01c_51e8

    ret nz

    jr c, @-$0e

    ld [$0023], sp
    dec c
    rst $30
    rrca
    di
    rrca
    ldh [c], a
    rra
    call z, $ff3f
    rst $38
    ld d, h
    db $fc
    xor d
    ld d, [hl]
    sub c
    ld [bc], a
    adc $25
    nop
    nop
    and b
    ld [hl+], a
    ldh [$ffd5], a
    inc bc
    ld d, l
    add hl, bc
    ld a, [$fd07]
    add $57
    db $ec
    cp e
    ld a, h
    rst $00
    jr c, jr_01c_51ba

    ld [bc], a
    ld e, d
    rlca
    sbc b

jr_01c_5229:
    ld a, b
    inc d
    db $fc
    ld h, h
    db $fc
    db $fc
    db $fc
    xor e
    inc b
    inc b
    ld bc, $c040
    ld b, e
    ret nz

    ld b, b
    call nz, $d906
    and h
    inc b
    and a
    inc bc
    ldh [rNR41], a
    ret nc

    jr nc, jr_01c_51ec

    inc b
    add sp, $01
    ld hl, sp+$06
    ld h, $00
    ldh a, [$ff2b]
    dec b
    dec e
    ld [bc], a
    inc a
    inc a
    ld b, d
    ld b, e
    ld a, [hl]
    add c
    inc bc
    inc a
    ld b, d
    nop
    inc a
    adc a
    inc bc
    ld b, [hl]
    ld b, c
    ld b, b
    ret nz

    dec b
    or b
    ld [hl], b
    call z, $fa3c
    ld b, $85
    inc bc
    db $f4
    ld bc, $fcff
    add h
    ld [bc], a
    ld e, d
    add h
    ld b, $c9
    push bc
    ld b, $d3
    sub l
    inc bc
    jp z, $0685

    jp nc, $0685

    and $03
    db $ec
    inc e
    ldh a, [c]
    ld c, $e4
    dec h
    nop
    ld bc, $0101
    and h
    rlca
    ld c, d
    ld [bc], a
    ld a, h
    rrca
    ld [hl], b
    adc a
    rlca
    xor d
    ld bc, $0605

jr_01c_5299:
    and h
    rlca
    adc d
    nop
    ldh a, [$ffa7]
    ld [bc], a
    halt
    and l
    ld b, $d5
    inc bc
    rrca
    rrca
    inc b
    rlca
    add e
    inc b
    jp nc, $0841

    rrca
    ld b, c
    db $10
    rra
    ld b, c
    jr nz, jr_01c_52f4

    dec b
    ld [hl-], a
    ccf
    ccf
    ld a, $1d
    ld e, $a6
    ld b, $c0
    ld bc, $003f
    cp b
    inc bc
    ld e, a
    jp $1d02


    jp $ef07


    push de
    ld [$0121], sp
    ld bc, $db01
    rlca
    or a
    add a
    inc b
    and d
    rrca
    inc b
    rlca
    inc e
    dec de
    inc l
    inc sp
    inc a
    inc hl
    ld [hl], b
    ld c, a
    ld a, h
    ld b, e
    inc a
    inc hl
    ld e, $1f
    add e
    ld [$b340], sp
    rlca
    ld a, [hl-]
    inc bc
    inc de
    inc e
    cpl
    jr nc, jr_01c_5299

jr_01c_52f4:
    rlca
    ld d, b
    ld [bc], a
    rst $38
    nop
    rst $38
    adc [hl]
    nop
    rst $20
    dec b
    ld l, a
    ld [hl], b
    sbc a
    ldh [$ff7f], a
    add b
    ld b, a
    rst $38
    nop
    rla
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
    ldh [$ff7f], a
    add b
    ld b, c
    call z, Call_000_0233
    call c, $ff23
    xor b
    dec b
    cp a
    ld bc, $a5a5
    dec [hl]
    nop
    dec b
    dec bc
    inc c
    ld b, $07
    ld bc, $8901
    ld [$8382], sp
    ld [$0f20], sp
    dec c
    ld c, $13
    ld e, $21
    ccf
    ld b, b
    ld a, a
    ld c, h
    ld [hl], e
    sub [hl]
    db $ed
    sbc [hl]
    ld l, l
    adc h
    ld [hl], e
    jp $9908


    jp $e508


    inc bc
    add b
    rst $38
    add b
    rst $38
    push bc
    nop
    dec hl
    ld bc, $191e
    add a
    add hl, bc
    ld [bc], a
    add e
    ld [$09e2], sp
    rst $18
    ldh [$ff3f], a
    ccf
    dec c
    rrca
    ld a, [de]
    dec e
    rra
    dec d
    ld b, c
    cpl
    dec [hl]
    dec de
    ccf
    jr nz, @+$61

    ld h, d
    ld a, a
    ld b, d
    rst $38
    ret nz

    rst $08
    ld hl, sp-$09
    cp b
    ld a, l
    adc $3f
    db $e3
    ld e, $f9
    ld h, a
    sbc [hl]
    or c
    ld l, a
    ldh a, [$ff6f]
    ld h, b
    sbc a
    nop
    rst $38
    ld b, c
    inc bc
    cp $01
    ld [bc], a
    rst $38
    and l
    ld [$0daf], sp
    ret nz

    cp a
    ld a, e
    ld h, h
    rra
    rra
    ld e, $1e
    ld h, c
    ld a, a
    cp [hl]
    pop bc
    ld a, a

jr_01c_53a6:
    add b
    ld c, c
    rst $38
    nop
    add a
    ld [bc], a
    and [hl]
    dec b
    ld [$f4f8], sp
    inc c
    ei
    rlca
    adc c
    ld [bc], a
    halt
    inc b
    ei
    rlca
    db $fd
    ld b, $fb
    add [hl]

jr_01c_53be:
    ld [bc], a
    ld d, a
    add e
    ld b, $d2
    ld b, c
    jr nz, jr_01c_53a6

    inc bc
    db $10
    ldh a, [rSVBK]
    ldh a, [rSTAT]
    ldh a, [$ffd0]
    rlca
    ld hl, sp+$38
    adc b
    ld hl, sp-$38
    jr c, jr_01c_53be

    jr jr_01c_5419

    sub h
    ld l, h
    inc bc
    call nc, $f42c
    inc c
    and l
    inc b
    ret nz

    ret c

    inc bc
    ld [hl], a
    ld b, d
    nop
    rst $38
    ld b, $ff
    ld l, c
    ld a, a
    sub [hl]
    jp hl


    ld a, a
    add b
    ld b, c
    rst $38
    jr z, @+$10

    db $fc
    dec hl
    rst $38
    add b
    rst $38
    and b
    ld a, a
    ret nz

    rst $38
    ld sp, $8ffe
    ld a, a

Call_01c_5401:
    ldh [$ff1f], a
    add $05
    sbc $06
    ldh a, [$ff8f]
    ld hl, sp-$71
    cp b
    rst $08
    ld [hl], b
    adc b
    dec b
    ld e, h
    inc b
    ld bc, $cbfe
    dec [hl]
    cp $84
    inc bc

jr_01c_5419:
    cp [hl]
    dec bc
    ld sp, hl
    rlca
    pop af
    rrca
    and $1f
    rst $38
    rst $38
    ret c

    ld a, b
    xor h
    ld e, h
    add l
    ld bc, $012a
    ld [hl-], a
    adc $83
    ld [bc], a
    ldh a, [c]
    inc c
    db $dd
    inc hl
    db $e3
    ld a, $ff
    inc e
    rst $28
    jr jr_01c_5479

    pop af
    sbc $e7
    ld hl, sp-$58
    ld [bc], a
    ld d, [hl]
    ld b, c
    ldh [$ff3f], a
    ld bc, $7fa0
    add $09
    ld a, d
    inc b
    cp $6f
    sub e
    db $fc
    db $fc
    adc l
    rlca
    ld b, h
    inc c
    db $db
    dec a
    cp h
    ld h, a
    rst $30
    ld e, d
    rst $38
    ld e, d
    cp l
    ld h, [hl]
    db $db
    inc a
    rst $38
    sub d
    inc bc
    ld h, a
    ld b, c
    ret nc

    jr nc, @+$09

    add sp, $18
    call nc, $baec
    rst $20
    call c, $8fe3
    rlca
    jp c, Jump_000_3e03

    ccf
    ld b, d
    ld a, a
    ld b, c

jr_01c_5479:
    add b
    rst $38
    inc de
    ret nz

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    ld a, a
    jr nz, jr_01c_54c5

    ld hl, $113e
    ld e, $28
    ccf
    ld a, $3f
    rrca
    rrca
    add hl, sp
    nop
    dec bc
    adc d
    ld a, [hl]
    ld a, $fe

jr_01c_5497:
    ldh a, [$fff0]
    ld h, b
    ldh [$ffb0], a
    ld [hl], b
    ldh a, [rNR10]

jr_01c_549f:
    add e
    ld bc, $4102
    db $fc
    inc b

jr_01c_54a5:
    ld a, [bc]
    or h
    ld c, h
    ld hl, sp+$78
    ldh a, [$ff90]
    ret nc

    jr nc, jr_01c_549f

    ld [hl], b
    adc b
    ld b, d
    ld hl, sp+$08
    nop
    ld hl, sp-$3d
    ld bc, $0719
    dec bc
    push af
    rrca
    pop af
    dec e
    db $e3
    ld e, $fe
    ld b, c
    jr nz, jr_01c_54a5

jr_01c_54c5:
    and e
    inc b
    ld h, h
    adc e
    rlca
    ld b, b
    ld bc, $c0c0
    sub c
    rlca
    jr c, jr_01c_5497

    ld b, $da
    add a
    add hl, bc
    jp nz, Jump_000_1c13

    db $ec
    ld a, [de]
    and $1e
    ldh [c], a
    rlca
    ld sp, hl
    rra
    pop hl
    ld e, $e2
    inc a
    db $fc
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    cp c
    ld [HeaderDestinationCode], sp
    ret nz

    ld b, b
    add e
    rlca
    ld c, h
    and e
    rlca
    sub $8b
    add hl, bc
    ret nz

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
    ldh a, [rNR44]
    add hl, bc
    call c, Call_000_0003
    nop
    rst $38
    add b
    add a
    inc b
    add [hl]
    ld de, $0d0a
    rla
    jr jr_01c_554b

    ld [hl-], a
    ccf
    ld [hl+], a
    scf
    ld a, [hl+]
    rla
    jr jr_01c_5533

    dec c
    dec de
    rla
    rra
    db $10
    and l
    dec bc
    inc e
    rlca
    ld de, $121e
    dec e
    inc sp
    dec l

jr_01c_5533:
    ld h, c
    ld e, [hl]
    xor a
    dec bc
    ld a, [hl+]
    ldh a, [rNR42]
    ld [$8b38], sp
    ld [$035e], sp
    inc a
    inc hl
    ld a, h
    ld b, e
    add h
    ld [$026e], sp
    inc sp
    ld c, $0f

jr_01c_554b:
    adc e
    ld [$8340], sp
    rlca
    ldh [rTAC], a
    ld [hl], d
    ld [hl], e
    rst $38
    rst $38
    db $f4
    rst $28
    db $f4
    rst $08
    ld b, c
    ld a, [$0487]
    ld hl, sp-$79
    ld [hl], b
    ld c, a
    jr nc, @+$43

    ccf
    jr nz, jr_01c_5567

jr_01c_5567:
    ccf
    adc c
    ld a, [bc]
    jp c, $0701

    rlca
    add hl, sp
    nop
    add l
    inc c
    ld h, b
    dec b
    ei
    ei
    db $f4
    rst $28
    db $f4
    adc a
    and e
    dec bc
    ld [hl], b
    ld bc, $4f70
    jp $ef04


    jp Jump_000_2708


    ld b, d
    ld de, $051e
    ld [$0c0f], sp
    rrca
    rla
    rra
    cp c
    ld b, $36
    ld bc, $03fc
    add l
    dec b
    add [hl]
    inc b
    ld a, [hl+]
    cp $d5
    dec hl
    rst $38
    add h
    add hl, bc
    ld a, [hl+]
    ld [bc], a
    call z, $ffb3
    add e
    ld [bc], a
    di
    dec b
    add [hl]
    ld a, a
    ld hl, sp-$01
    inc bc
    db $fc
    push bc
    add hl, bc
    adc d
    rlca
    cp a
    rst $00
    cp b
    adc a
    ld a, b
    ld c, $f9
    rlca
    or b
    ld a, [bc]
    dec l
    sub l
    add hl, bc
    inc a
    ld c, $7f
    ld h, b
    cp a
    jp nz, $90ef

    cp a
    ret z

    ld a, a
    cp $3f
    pop af
    ld l, l
    sbc [hl]
    or e
    adc b
    add hl, bc
    ld h, a
    inc b
    rlca
    db $fc
    ld b, $fd
    inc bc
    add $07
    sbc $01
    db $db
    and h
    add e
    add hl, bc
    ld a, h
    nop
    nop
    sub l
    ld [$02bf], sp
    pop hl
    ld a, a
    add b
    ldh a, [rNR51]
    ld [$89da], sp
    dec c
    ld e, [hl]
    inc de
    ret nz

    rst $38
    ld [hl], c
    rst $38
    ei
    rst $18
    ld a, e
    rst $18
    ei
    db $e4
    inc b
    rst $38
    ccf
    call nz, Call_000_00ff
    ret


    ld [hl], $d9
    ld h, $86
    ld [bc], a
    ld e, d
    nop
    rst $38
    sbc e
    dec c
    add h
    rlca
    ret nz

    ret nz

    and b
    ldh [rNR41], a
    ldh [$ffe0], a
    ldh [$ff87], a
    rlca
    ld a, [hl]
    inc bc
    ld b, b
    ret nz

    ldh [$ffa0], a
    and e
    add hl, bc
    inc d
    ld bc, $7cc4
    and e
    add hl, bc
    jr jr_01c_562c

jr_01c_562c:
    inc bc
    and [hl]
    add hl, bc
    dec h
    ld b, c
    add c
    cp $00
    add b
    or h
    add hl, bc
    dec hl
    sub c
    ld a, [bc]
    ld a, $03
    or $0e
    dec a
    jp Jump_000_0a86


    ld d, [hl]
    dec b
    dec e
    cp $e3
    db $ec
    rra
    ldh a, [$ff88]
    ld a, [bc]
    ld h, a
    inc b
    ldh a, [$ff1f]
    or b
    ld e, a
    ldh [$ff86], a

jr_01c_5654:
    ld a, [bc]
    ld sp, $6d01
    sub d
    adc c
    ld a, [bc]
    ld a, h
    rlca
    inc l
    db $ec
    ld a, $fe
    ld d, $fe
    ld [hl], d
    cp $41
    ldh a, [c]
    sbc $07
    db $f4
    inc a
    adc h
    db $fc
    ret z

    jr c, jr_01c_5654

    inc e
    ldh a, [rNR51]
    add hl, bc
    jp c, Jump_000_0013

    nop
    ld h, b
    ld h, b
    and b
    ldh [rNR52], a
    and $2f
    rst $28
    ld e, a
    rst $30
    sbc a
    pop af
    rst $08
    ld [hl], c
    adc $72
    add $fa
    and e
    ld a, [bc]
    jp c, $c805

    jr c, @+$2a

    ret c

    and h
    ld e, h
    ld b, c
    db $e4
    inc e
    inc bc
    call z, Call_000_383c
    ld hl, sp-$7d
    dec bc
    call nz, Call_000_37f4
    ld [$9508], sp
    dec bc
    ld a, $01
    add b
    add b
    and h
    ld [$8a5e], sp
    dec bc
    ld e, a
    inc bc
    ld e, $e2
    rra
    pop hl
    add h
    dec bc
    ld l, [hl]
    ld [bc], a
    and $38
    ld hl, sp-$35
    dec bc
    ld e, e
    rst $38
    dec h
    ld d, a
    ld l, $57
    scf
    ld d, a
    ld b, b
    ld d, a
    ld c, c
    ld d, a
    ld d, d
    ld d, a
    ld e, e
    ld d, a
    ld h, h
    ld d, a
    ld l, l
    ld d, a
    halt
    ld d, a
    add a
    ld d, a
    sbc b
    ld d, a
    xor c
    ld d, a
    cp d
    ld d, a
    bit 2, a
    call c, $ed57
    ld d, a
    cp $57
    rrca
    ld e, b
    inc [hl]
    ld e, b
    ld e, l
    ld e, b
    add [hl]
    ld e, b
    sub a
    ld e, b
    xor b
    ld e, b
    cp l
    ld e, b
    jp nc, $e358

    ld e, b
    db $f4
    ld e, b
    dec c
    ld e, c
    ld h, $59
    ccf
    ld e, c
    ld e, b
    ld e, c
    ld [hl], c
    ld e, c
    adc d
    ld e, c
    and a
    ld e, c
    call nc, Call_000_0159
    ld e, d
    ld l, $5a
    ld e, e
    ld e, d
    add h
    ld e, d
    xor l
    ld e, d
    sub $5a
    rst $38
    ld e, d
    db $10
    ld e, e
    ld hl, $2a5b
    ld e, e
    inc sp
    ld e, e
    inc a
    ld e, e
    ld b, l
    ld e, e
    ld c, [hl]
    ld e, e
    ld d, a
    ld e, e
    ld [bc], a
    ld hl, sp-$08
    jr nz, jr_01c_572a

jr_01c_572a:
    ld hl, sp+$00
    jr nc, jr_01c_572f

    ld [bc], a

jr_01c_572f:
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    db $10
    ld bc, $f802
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    ld [de], a
    ld bc, $f802
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    inc d
    ld bc, $f802
    ld hl, sp+$06
    nop
    ld hl, sp+$00
    ld d, $01
    ld [bc], a
    ld hl, sp+$00
    nop
    ld h, b
    ld hl, sp-$08
    db $10
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld [bc], a
    ld h, b
    ld hl, sp-$08
    ld [de], a
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    inc b
    ld h, b
    ld hl, sp-$08
    inc d
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    ld b, $60
    ld hl, sp-$08
    ld d, $61
    inc b
    ld hl, sp-$10
    ld [$f800], sp
    ld hl, sp+$18
    nop
    ld hl, sp+$00
    jr z, jr_01c_5783

jr_01c_5783:
    ld hl, sp+$08
    jr c, jr_01c_5788

    inc b

jr_01c_5788:
    ld hl, sp-$10
    ld a, [bc]
    nop
    ld hl, sp-$08
    ld a, [de]
    nop
    ld hl, sp+$00
    ld a, [hl+]
    nop
    ld hl, sp+$08
    ld a, [hl-]
    ld bc, $f804
    ldh a, [$ff0c]
    nop
    ld hl, sp-$08
    inc e
    nop
    ld hl, sp+$00
    inc l
    nop
    ld hl, sp+$08

jr_01c_57a7:
    inc a
    ld bc, $f804
    add hl, bc
    inc c
    jr nz, jr_01c_57a7

jr_01c_57af:
    ld bc, $201c
    ld hl, sp-$07
    inc l
    jr nz, jr_01c_57af

    pop af
    inc a
    ld hl, $f804
    rst $28
    ld c, $00
    ld hl, sp-$09
    ld e, $00
    ld hl, sp-$01
    ld l, $00
    ld hl, sp+$07
    ld a, $01
    inc b
    ld hl, sp-$10
    ld b, b
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ld hl, sp+$00
    ld h, b
    nop
    ld hl, sp+$08

jr_01c_57da:
    ld [hl], b
    ld bc, $f804
    add hl, bc
    ld b, b
    jr nz, jr_01c_57da

jr_01c_57e2:
    ld bc, $2050
    ld hl, sp-$07
    ld h, b
    jr nz, jr_01c_57e2

    pop af
    ld [hl], b
    ld hl, $f804
    ldh a, [rNR43]
    nop

jr_01c_57f2:
    ld hl, sp-$08
    ld [hl-], a
    nop
    ld hl, sp+$00
    ld b, d
    nop
    ld hl, sp+$08

jr_01c_57fc:
    ld d, d
    ld bc, $f804
    add hl, bc
    ld [hl+], a
    jr nz, jr_01c_57fc

jr_01c_5804:
    ld bc, $2032
    ld hl, sp-$07
    ld b, d
    jr nz, jr_01c_5804

    pop af
    ld d, d
    ld hl, $d909
    dec b
    ld a, [hl]
    jr nz, @-$25

    db $fd
    adc h
    jr nz, jr_01c_57f2

    push af
    sbc h
    jr nz, @-$15

    push af
    ld c, h
    nop
    jp hl


    db $fd
    ld e, h
    nop
    jp hl


    dec b
    ld l, h
    nop
    ld sp, hl
    push af
    ld c, [hl]
    nop
    ld sp, hl
    db $fd
    ld e, [hl]
    nop
    ld sp, hl
    dec b
    ld l, [hl]
    ld bc, $ec0a
    ld hl, sp+$48
    nop

jr_01c_5839:
    db $ec
    nop
    ld e, b
    nop
    db $ec
    ld [$0068], sp
    db $fc
    ldh a, [rWY]
    nop
    db $fc
    ld hl, sp+$5a
    nop
    db $fc
    nop
    ld l, d
    nop
    db $fc
    ld [$0078], sp
    rst $18
    dec b
    xor h
    jr nz, @-$1f

    push af
    cp d
    jr nz, jr_01c_5839

    db $fd
    sub $21
    ld a, [bc]
    db $ec
    ld hl, sp+$48
    nop
    db $ec
    nop
    ld e, b
    nop
    db $ec
    ld [$0068], sp
    db $fc
    ldh a, [rWY]
    nop
    db $fc
    ld hl, sp+$5a
    nop
    db $fc
    nop
    ld l, d
    nop
    db $fc
    ld [$0078], sp
    rst $18
    dec b
    add $20
    rst $18
    db $fd
    sub $20
    rst $18
    push af
    and $21
    inc b
    db $f4

jr_01c_5888:
    nop
    ld h, $00
    db $f4
    ld [$0036], sp
    db $f4
    ld hl, sp+$26
    jr nz, jr_01c_5888

    ldh a, [$ff36]
    ld hl, $f504
    ldh a, [$ff7c]
    nop
    push af
    ld hl, sp-$76
    nop
    push af
    nop
    sbc d
    nop
    push af
    ld [$01aa], sp
    dec b
    ldh a, [c]
    db $ec
    ld a, d
    nop
    ldh a, [c]
    db $f4
    adc b
    nop
    ldh a, [c]
    db $fc
    sbc b
    nop
    ldh a, [c]
    inc b
    xor b
    nop
    ldh a, [c]
    inc c
    cp b
    ld bc, $f205
    db $ec
    ld a, d
    nop
    ldh a, [c]
    db $f4
    adc b
    nop
    ldh a, [c]
    db $fc
    sbc b
    nop
    ldh a, [c]
    inc c
    cp b
    nop
    ldh a, [rDIV]
    ld [hl], h
    ld bc, $f504
    or $7c
    nop
    push af
    cp $8a
    nop
    push af
    ld b, $9a
    nop
    push af
    ld c, $aa
    ld bc, $f404

jr_01c_58e5:
    ld b, $26
    nop
    db $f4
    ld c, $36
    nop
    db $f4
    cp $26
    jr nz, jr_01c_58e5

    or $36
    ld hl, $ee06
    db $f4
    ld a, [hl]
    nop
    xor $fc
    adc h
    nop
    xor $04
    sbc h
    nop
    cp $f4
    add b
    nop
    cp $fc
    adc [hl]
    nop
    cp $04
    sbc [hl]
    ld bc, $f006
    db $f4
    xor h
    nop
    ldh a, [rDIV]
    cp d
    nop
    nop
    db $f4
    xor [hl]
    nop
    nop
    inc b
    cp h
    nop
    ldh a, [$fffc]
    sub $00
    nop
    db $fc
    ret c

    ld bc, $f006
    db $f4
    add $00
    ldh a, [$fffc]
    sub $00
    ldh a, [rDIV]
    and $00
    nop
    db $f4
    ret z

    nop
    nop
    db $fc
    ret c

    nop
    nop
    inc b
    add sp, $01
    ld b, $f0
    db $f4
    jp z, $f000

    db $fc
    jp c, $f000

    inc b
    ld [$0000], a
    db $f4
    call z, $0000
    db $fc
    call c, $0000
    inc b
    db $ec
    ld bc, $f006
    inc b
    jp z, $f020

    db $fc
    jp c, $f020

    db $f4
    ld [$0020], a
    inc b

jr_01c_5967:
    call z, RST_20
    db $fc
    call c, RST_20
    db $f4
    db $ec
    ld hl, $f006

jr_01c_5973:
    inc b
    xor h
    jr nz, jr_01c_5967

    db $f4

jr_01c_5978:
    cp d
    jr nz, jr_01c_597b

jr_01c_597b:
    inc b

jr_01c_597c:
    xor [hl]
    jr nz, jr_01c_597f

jr_01c_597f:
    db $f4
    cp h
    jr nz, jr_01c_5973

    db $fc
    sub $20
    nop
    db $fc
    ret c

    ld hl, $e807
    inc bc
    ld a, [hl]
    jr nz, jr_01c_5978

jr_01c_5990:
    ei
    adc h
    jr nz, jr_01c_597c

    di
    sbc h
    jr nz, jr_01c_5990

    ldh a, [rDMA]
    nop
    ld hl, sp-$08
    ld d, [hl]
    nop
    ld hl, sp+$00
    ld h, [hl]
    nop
    ld hl, sp+$08
    halt
    ld bc, $f40b
    ldh a, [$ff84]
    nop
    db $f4
    ld hl, sp-$6c
    nop
    db $f4

jr_01c_59b1:
    nop
    and h
    nop
    db $f4

jr_01c_59b5:
    ld [$00b4], sp
    inc b
    ldh a, [$ff86]
    nop
    inc b
    ld hl, sp-$6a
    nop
    inc b
    nop
    and [hl]
    nop
    inc b
    ld [$00b6], sp
    db $e4
    inc b
    ld a, [hl]
    jr nz, jr_01c_59b1

    db $fc
    adc h
    jr nz, jr_01c_59b5

    db $f4
    sbc h
    ld hl, $f30b
    ldh a, [$ffc2]
    nop
    di
    ld hl, sp-$2e
    nop
    di

jr_01c_59de:
    nop
    ldh [c], a
    nop
    di

jr_01c_59e2:
    ld [$00f0], sp
    inc bc
    ldh a, [$ffc4]
    nop
    inc bc
    ld hl, sp-$2c
    nop
    inc bc
    nop
    db $e4
    nop
    inc bc
    ld [$00f2], sp
    db $e4
    inc b
    ld a, [hl]
    jr nz, jr_01c_59de

    db $fc
    adc h
    jr nz, jr_01c_59e2

    db $f4
    sbc h
    ld hl, $f20b
    ldh a, [$ffc2]
    nop
    ldh a, [c]
    ld hl, sp-$2e
    nop
    ldh a, [c]

jr_01c_5a0b:
    nop
    ldh [c], a
    nop
    ldh a, [c]

jr_01c_5a0f:
    ld [$00f0], sp
    ld [bc], a
    ldh a, [$ffc4]
    nop
    ld [bc], a
    ld hl, sp-$2c
    nop
    ld [bc], a
    nop
    db $e4
    nop
    ld [bc], a
    ld [$00f2], sp
    db $e4
    inc b
    xor h
    jr nz, jr_01c_5a0b

    db $f4
    cp d
    jr nz, jr_01c_5a0f

    db $fc
    sub $21
    dec bc
    di
    ldh a, [$ffc2]
    nop
    di
    ld hl, sp-$2e
    nop
    di
    nop
    ldh [c], a
    nop
    di
    ld [$00f0], sp
    inc bc
    ldh a, [$ffc4]
    nop

jr_01c_5a43:
    inc bc
    ld hl, sp-$2c
    nop

jr_01c_5a47:
    inc bc
    nop
    db $e4
    nop
    inc bc
    ld [$00f2], sp
    db $e4
    inc b
    add $20
    db $e4
    db $fc
    sub $20
    db $e4
    db $f4
    and $21
    ld a, [bc]
    ldh [c], a
    inc b
    xor h
    jr nz, jr_01c_5a43

    db $f4
    cp d
    jr nz, jr_01c_5a47

    db $fc
    sub $20
    ldh a, [c]
    db $f4
    sub b
    nop

jr_01c_5a6c:
    ldh a, [c]
    db $fc
    and b
    nop

jr_01c_5a70:
    ldh a, [c]
    inc b
    or b
    nop
    ld [bc], a
    db $f4
    sub d
    nop
    ld [bc], a
    db $fc
    and d
    nop
    ld [bc], a
    inc b
    or d
    nop
    ld [bc], a
    db $ec
    add d
    ld bc, $e20a
    inc bc
    ld a, [hl]
    jr nz, jr_01c_5a6c

    ei
    adc h
    jr nz, jr_01c_5a70

    di
    sbc h
    jr nz, @-$0c

    di
    sub b
    nop
    ldh a, [c]
    ei
    and b
    nop
    ldh a, [c]
    inc bc
    or b
    nop
    ld [bc], a
    di
    sub d
    nop
    ld [bc], a
    ei
    and d
    nop
    ld [bc], a
    inc bc
    or d
    nop
    ld [bc], a
    db $eb
    add d
    ld bc, $f20a
    rst $30
    cp [hl]

jr_01c_5ab1:
    nop
    ldh a, [c]
    rst $38
    adc $00
    ldh a, [c]
    rlca
    sbc $00
    ld [bc], a
    rst $30
    ret nz

    nop
    ld [bc], a
    rst $38
    ret nc

    nop
    ld [bc], a
    rlca
    ldh [rP1], a
    ld [bc], a
    rrca
    xor $00
    ldh [c], a
    inc b
    xor h
    jr nz, jr_01c_5ab1

    db $f4
    cp d
    jr nz, @-$1c

    db $fc
    sub $21
    ld a, [bc]
    ldh a, [c]
    rst $30
    cp [hl]

jr_01c_5ada:
    nop
    ldh a, [c]
    rst $38
    adc $00
    ldh a, [c]
    rlca
    sbc $00
    ld [bc], a
    rst $30
    ret nz

    nop
    ld [bc], a
    rst $38
    ret nc

    nop
    ld [bc], a
    rlca
    ldh [rP1], a
    ld [bc], a
    rrca
    xor $00
    ldh [c], a
    inc b
    ld a, [hl]
    jr nz, jr_01c_5ada

    db $fc
    adc h
    jr nz, @-$1c

    db $f4
    sbc h
    ld hl, $f804
    nop
    inc h
    nop
    ld hl, sp+$08
    inc [hl]
    nop
    ld hl, sp-$08
    inc h
    jr nz, @-$06

    ldh a, [$ff34]
    ld hl, $f804
    nop
    ld h, $00
    ld hl, sp+$08
    ld [hl], $00
    ld hl, sp-$08
    ld h, $20
    ld hl, sp-$10
    ld [hl], $21
    ld [bc], a
    pop af
    nop
    ld b, h
    nop
    pop af
    ld hl, sp+$44
    ld hl, $f802
    nop
    ld d, h
    nop
    ld hl, sp-$08
    ld d, h
    ld hl, $f802
    nop
    ld h, h
    nop
    ld hl, sp-$08
    ld h, h
    ld hl, $fc02
    ld bc, $0062
    db $fc
    rst $30
    ld h, d
    ld hl, $f702
    ld b, $62
    nop
    rst $30
    ldh a, [c]
    ld h, d
    ld hl, $f302
    ld a, [bc]
    ld h, d
    nop
    di
    xor $62
    ld hl, $f002
    dec c
    ld [hl], d
    nop
    ldh a, [$ffeb]
    ld [hl], d
    ld bc, $070b
    rlca
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nc, @+$81

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
    jr nc, jr_01c_5bb3

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
    ld a, [$1706]
    ld a, [$f426]
    inc l
    call z, Call_000_383c
    ld hl, sp-$20

jr_01c_5b99:
    ldh [rLCDC], a
    ret nz

    add b
    add b
    rlca
    rlca
    dec de
    inc e
    ccf
    jr nc, jr_01c_5be4

    jr nz, jr_01c_5c06

    ld h, b
    ld b, c
    ld a, a
    ld b, b
    rla
    ld e, a
    ld h, b
    ld a, [hl]
    ld h, c
    ld l, a
    ld [hl], c
    ld [hl], c

jr_01c_5bb3:
    ld e, a
    ccf
    ld l, $1b
    inc e
    rrca
    rrca
    ld [$070f], sp
    rlca
    ccf
    ccf
    ld b, l
    ld a, [hl]
    cp e
    call nz, Call_000_0086
    inc c
    ld [bc], a
    ld b, b
    ld h, a
    ld a, b
    ld b, c
    cpl
    jr nc, jr_01c_5bd5

    ccf
    inc sp
    inc e
    rra
    jr jr_01c_5bf4

jr_01c_5bd5:
    ld [$0084], sp
    ld e, e
    inc b
    ret nz

    ret nz

    or b
    ld [hl], b
    ld hl, sp-$7d
    nop
    dec h
    inc b
    inc d

jr_01c_5be4:
    db $fc
    inc d
    inc a

jr_01c_5be7:
    call nc, Call_000_00a4
    ld c, b
    inc b
    ld a, [bc]
    ld a, [$f406]
    inc c
    and e
    nop
    ld e, b

jr_01c_5bf4:
    dec b
    jr nc, jr_01c_5be7

    ldh [$ffe0], a
    nop
    nop
    add e
    nop
    ld b, b
    dec b
    cpl
    jr nc, @+$81

    ld [hl], b
    or a
    ret z

    add e

jr_01c_5c06:
    nop
    ld c, $07
    sbc a
    ldh [$ff6f], a
    ld [hl], b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_01c_5b99

    nop
    ld e, b
    ld bc, $0000
    add e
    nop
    add b
    nop
    add sp, -$74
    nop
    add l
    ld bc, $16fa
    adc c
    nop
    sub [hl]
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
    cp $56
    add l
    nop
    ld l, $0b
    rst $38
    add a
    ld a, c
    rst $08
    ld [hl], c
    rst $18
    ld h, d
    cp $e4
    db $fc
    jr jr_01c_5c5c

    adc e
    nop
    add b
    ld bc, $14fc
    adc c
    nop
    adc [hl]
    rlca
    call c, $e23c
    cp $42
    ld a, [hl]
    inc a
    inc a
    add l
    nop
    add b
    add hl, bc
    cp $0e

jr_01c_5c5c:
    rst $30
    xor l
    rst $38
    and l
    db $fd
    and a
    ld a, [$4106]
    ld a, [$0946]
    cp $06
    jp hl


    rra
    or c
    ld a, a
    and $fe
    inc a
    inc a
    inc hl
    nop
    add hl, bc
    ld bc, $0301
    ld [bc], a
    inc c
    rrca
    jr @+$19

    jr nc, jr_01c_5cae

    jp Jump_01c_4b00


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
    call nz, Call_01c_5401
    nop
    sbc a
    jp Jump_01c_4f00


    add hl, bc
    jr nc, jr_01c_5cc8

    jr jr_01c_5cb2

    inc c
    rrca
    inc bc
    ld [bc], a
    ld bc, $2f01
    nop
    add e
    ld bc, $0142
    rlca
    inc b
    add l
    ld bc, $0346
    ld [hl], b

jr_01c_5cae:
    ld c, a
    ld b, b
    ld a, a
    add e

jr_01c_5cb2:
    ld bc, $0052
    ldh [c], a
    add [hl]
    ld bc, $c455
    ld bc, $0a94
    sbc a
    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    jr c, @+$29

    jr jr_01c_5ce5

    rlca
    inc b

jr_01c_5cc8:
    sbc c
    ld bc, $0d6c
    inc b
    rlca
    jr jr_01c_5cef

    jr c, jr_01c_5cf9

    ld [hl], b
    ld c, a
    ld h, b
    ld e, a
    add c
    rst $38
    db $e3
    sbc [hl]
    adc c
    ld bc, $0594
    db $e3
    sbc [hl]
    add c
    rst $38
    ld [hl], b
    ld c, a
    add [hl]

jr_01c_5ce5:
    ld bc, $00a4
    ld b, $91
    ld bc, $a76e
    nop
    ret nz

jr_01c_5cef:
    inc bc
    cpl
    jr nc, jr_01c_5d32

    jr nz, @+$43

    ld a, a
    ld b, b
    ld b, c
    cp a

jr_01c_5cf9:
    ret nz

    dec c
    or a
    ret z

    adc a
    ld hl, sp+$7f
    ld [hl], b
    ld [hl], a
    ld a, b
    sbc a
    rst $38
    add e
    rst $38
    ld a, h
    ld a, h
    add l
    nop
    add b
    dec b
    db $fc
    inc c
    db $f4
    inc c
    ld a, [$a506]
    ld [bc], a
    inc c
    inc d
    db $fd
    rlca
    push af
    rrca
    cp $0e
    call c, $f23c
    cp $82
    cp $7c
    ld a, h
    ldh a, [$fff0]
    ld hl, sp+$08
    cp h
    ld b, h
    inc bc
    ld b, e
    rst $38
    nop
    nop
    rst $38
    add e

jr_01c_5d32:
    ld [bc], a
    ld b, [hl]
    ld bc, $ffc0
    ld b, d
    ret nz

    ccf
    nop
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
    dec l
    nop
    dec b
    ldh [$ffe0], a
    ldh a, [rNR10]
    ld a, h
    adc h
    adc e
    ld [bc], a
    ld b, [hl]
    inc bc
    add b
    rst $38
    ret nz

    ld a, a
    add [hl]
    ld [bc], a
    ld d, [hl]
    ld bc, $807f
    adc d
    ld [bc], a
    ld h, c
    inc bc
    ld a, [hl]
    add [hl]
    ld hl, sp+$18
    jp $8102


    ldh a, [rNR51]
    ld [bc], a
    ld [hl], d
    ld b, c
    pop bc
    ccf
    nop
    pop bc
    adc l
    ld [bc], a
    sbc l
    ld [bc], a
    adc [hl]
    ldh a, [$fff0]
    ld sp, $a900
    nop
    ld b, b
    dec b
    ld a, [$fe56]
    ld d, d
    db $fd

jr_01c_5d86:
    ld d, e
    add h
    ld [bc], a
    ld l, $02
    inc hl

jr_01c_5d8c:
    ld a, [$a706]
    ld [bc], a
    jr jr_01c_5d93

    nop

jr_01c_5d93:
    nop
    sub h
    nop
    jr nz, @+$07

    inc c
    ret z

    jr c, jr_01c_5d8c

    ldh a, [$ff50]
    jp z, $8202

    inc bc
    ret nz

    ret nz

    jr nz, jr_01c_5d86

    ld b, c
    db $10
    ldh a, [rNR31]
    adc b
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    ld a, [hl-]
    and $5e
    ldh [c], a
    ld [hl], h
    call z, $e25e
    ld a, [hl-]
    and $1c
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    dec sp
    nop
    adc e
    inc bc
    ld c, b
    dec c
    inc a
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
    adc c
    inc bc
    ld h, h
    ldh a, [$ff27]
    inc bc
    ld l, h
    inc c
    ld a, h
    db $fc
    cp d
    add $fe
    ld [bc], a
    call c, $fe3c
    ld [bc], a
    cp d
    add $7c
    add [hl]
    inc bc
    ld h, c
    rst $10
    inc bc
    adc c
    adc l
    ld [bc], a
    ld b, b
    ld bc, $e51e
    ld b, c
    ld [$f0f7], sp
    dec hl
    ld [bc], a
    ld d, h
    add e
    ld [bc], a
    ld b, b
    ld bc, $46be
    and l
    ld [bc], a
    sbc [hl]
    add hl, bc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld hl, sp-$3d
    db $fc
    adc c
    ld [bc], a
    ld d, [hl]
    and a
    nop
    add b
    ld [bc], a
    cpl
    jr nc, jr_01c_5e9f

    and a
    ld [bc], a
    dec hl
    rlca
    ret nz

    ld c, a
    ld a, b
    inc sp
    inc a
    inc a
    ccf
    ld b, a
    and h
    ld [bc], a
    dec sp
    add a
    nop
    ld b, b
    add l
    ld [bc], a
    ld [$7f0f], sp
    ld h, b
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
    jr nc, jr_01c_5e76

    and e
    ld [bc], a
    ld a, h
    sub l
    nop
    nop
    inc bc
    dec de
    inc e
    rla
    rra
    add e
    nop
    ld e, h
    add e
    nop
    nop
    dec b
    ccf

jr_01c_5e59:
    jr nc, jr_01c_5ed2

    ld c, b
    cp a
    ret nz

    add l
    nop
    xor h
    add e
    nop
    ld l, [hl]
    dec bc
    ccf
    jr nc, jr_01c_5ebf

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $a7
    ld bc, $077a
    ld b, b

jr_01c_5e76:
    ret nz

    jr nz, jr_01c_5e59

    sub b
    ld [hl], b
    ret nc

    jr nc, jr_01c_5ebf

    ret z

    jr c, jr_01c_5e82

    sbc h

jr_01c_5e82:
    ld a, h
    adc c

jr_01c_5e84:
    inc bc
    ld d, [hl]
    adc c
    inc bc
    ld b, b
    inc bc
    jr c, jr_01c_5e84

    inc [hl]
    db $ec
    ld b, c
    ld a, h
    call nz, $f801
    adc b
    ld b, h
    ldh a, [$ff90]
    ld bc, $88f8

jr_01c_5e9a:
    ld b, c
    ld a, h
    call nz, Call_000_3403

jr_01c_5e9f:
    db $ec
    jr c, jr_01c_5e9a

    add e
    inc bc
    and [hl]
    db $e4
    dec hl
    nop
    and e
    inc b
    and $06
    ld [hl], h
    ld [hl], a
    db $fc
    rst $38
    db $e4
    rst $38
    call nz, $ff41
    add d
    dec b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_01c_5f00

    ccf

jr_01c_5ebf:
    jr nz, jr_01c_5ec1

jr_01c_5ec1:
    ccf
    ld b, c
    db $10
    rra
    dec b
    ld [$060f], sp
    rlca
    ld bc, $9b01
    dec b
    ld b, b
    ld bc, $0704

jr_01c_5ed2:
    and l
    inc bc
    ld c, d
    ld bc, $0f08
    ld b, d
    db $10
    rra
    ld b, e
    jr nz, jr_01c_5f1d

    ld b, $31
    ccf
    rra
    rra
    ld e, $1f
    inc c
    sbc h
    dec b
    ld a, c
    add e
    ld bc, $05fe
    ld [bc], a
    inc bc
    ld [hl], d
    ld [hl], e
    rst $38
    rst $38
    sbc e
    dec b
    ld a, $03
    ld [hl], c
    ld [hl], c
    db $fd
    db $fd
    sbc a
    dec b
    ld a, [hl]
    dec b
    inc b

jr_01c_5f00:
    rlca
    ld a, $3f
    ld b, d
    ld a, a
    call nz, Call_000_0f00
    ld b, $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    ld a, a
    ldh a, [rNR44]
    dec b
    ld [hl], d
    ld b, $00
    nop
    add hl, sp
    add hl, sp
    adc $ff
    adc b
    ld c, d

jr_01c_5f1d:
    rst $38
    nop
    add h
    ld [bc], a
    ld c, a
    ld [bc], a
    add hl, bc
    rst $38
    ld b, $22
    rst $38
    ld bc, $a5a5
    ldh a, [$ff2f]
    ld b, $42
    ld [bc], a

jr_01c_5f30:
    add b
    rst $38
    add b
    add h
    ld [bc], a
    ld h, a
    ld [bc], a
    nop
    rst $38
    ld [$0684], sp
    ld a, e
    db $f4
    jr nz, jr_01c_5f46

    ld b, b
    jr c, jr_01c_5f43

jr_01c_5f43:
    dec b
    adc $ce

jr_01c_5f46:
    add hl, sp
    rst $38
    ld [$bbff], sp
    dec b
    ret nz

    ld [bc], a
    ld b, b

jr_01c_5f4f:
    ret nz

    ldh a, [$ff84]
    inc bc
    ld h, l
    inc bc
    jr c, jr_01c_5f4f

    inc h
    db $fc
    ld b, c
    ld [de], a
    cp $07
    ld [bc], a
    cp $06
    cp $0c
    db $fc
    ld [$c3f8], sp
    dec b
    rra
    nop
    db $10
    db $f4
    ld [hl+], a
    dec b
    cp c
    ld b, $4c
    call z, $fefe
    ld [hl], $fe
    ld b, d
    ld b, c
    cp $22
    nop
    cp $a7
    dec b
    ld [hl], b
    ld bc, $f808
    ldh a, [rNR44]
    rlca
    ld [hl-], a
    adc e

jr_01c_5f86:
    rlca
    jr jr_01c_5f30

    dec b
    sbc d
    inc bc
    jr jr_01c_5f86

    ld [$42f8], sp
    inc c
    db $fc
    add e
    inc bc
    ld h, d
    dec b
    sub b
    ldh a, [$ffe0]
    ldh [$ff80], a
    add b
    cp l
    dec b
    ld a, $03
    inc l
    db $ec
    ld a, $fe
    add hl, sp
    nop
    inc b
    ld b, b
    ld b, b
    xor h
    db $ec
    sbc [hl]
    sub b
    rlca
    rst $18
    rrca
    jr @+$1a

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, jr_01c_5ff1

    db $f4
    ld hl, $0007
    sub c
    ld b, $22
    rlca
    ld hl, $113e
    ld e, $28
    ccf
    ld a, $3f
    and e
    ld [bc], a
    ld [hl], b
    inc de
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
    ld b, d
    rst $38
    nop
    ld bc, $807f
    ldh a, [rNR44]

jr_01c_5ff1:
    ld b, $bc
    inc de
    ret nz

    rst $38
    ld [hl], c
    rst $38
    ei
    rst $18
    ld a, e
    rst $18
    ei
    db $e4
    inc b
    rst $38
    ccf
    call nz, Call_000_00ff
    ret


    ld [hl], $d9
    ld h, $42
    rst $38
    nop
    nop
    nop
    add h

jr_01c_600e:
    ld b, $bb
    sbc l
    dec b
    ret nz

    dec c
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
    jr nc, jr_01c_6051

    and h
    rlca
    or h
    nop
    ld c, $42
    ld de, $071e
    ld [$0c0f], sp
    rrca
    rla
    rra
    inc e
    inc e
    db $f4
    inc hl
    rlca
    add b
    add a
    dec b
    and b
    ld b, c
    jr nz, @+$41

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
    inc b
    nop
    nop
    ld d, $fe
    ld a, [de]

jr_01c_6051:
    ld b, c
    cp $0a
    inc d
    cp $7c
    db $fc
    call z, $c8fc
    cp b
    db $e4
    inc e
    sub h
    ld l, h
    call nc, $f42c
    inc c
    ld hl, sp+$08
    add sp, $18
    or b
    ld [hl], b
    add e
    inc bc
    add sp, $03
    ld d, $fe
    ld [hl], d
    cp $41
    ldh a, [c]
    sbc $05
    db $f4
    inc a
    adc h
    db $fc
    ret z

    jr c, jr_01c_600e

    add hl, bc
    ld c, [hl]
    inc bc
    db $f4
    rst $28
    db $f4
    rst $08
    ld b, c
    ld a, [$0387]
    ld hl, sp-$79
    ld [hl], b
    ld c, a
    add l
    dec b
    ld l, h
    adc c
    ld [$0152], sp
    rlca
    rlca
    add hl, sp
    nop
    ld de, $6060
    and b
    ldh [rNR52], a
    and $2f
    rst $28
    ld e, a
    rst $30
    sbc a
    pop af
    rst $08
    ld [hl], c
    adc $72
    add $fa
    and e
    ld [$0552], sp
    ret z

    jr c, @+$2a

    ret c

    and h
    ld e, h
    ld b, c
    db $e4
    inc e
    add e
    nop
    ld [hl], $03
    ret nz

    ret nz

    nop
    nop
    ld b, e
    nop
    rst $38
    nop
    rra
    add e
    add hl, bc
    push hl
    nop
    ldh [$fff0], a
    daa
    ld [$876e], sp
    ld b, $d8
    adc h
    ld [$8460], sp
    add hl, bc
    db $ed
    ldh a, [rNR44]
    ld [$0270], sp
    ld c, $0e
    add hl, bc
    adc d
    add hl, bc
    dec h
    dec b
    jr nc, jr_01c_6113

    ccf
    jr nz, jr_01c_6163

    ld b, e
    ld b, d
    ld [hl], b
    ld c, a
    ld bc, $437c
    add e
    nop
    ld c, h
    dec b
    jr z, @+$39

    jr @+$21

    rlca
    rlca
    adc l
    ld bc, $83ba
    dec b
    sbc h
    ld bc, $080f
    add a
    dec b
    and h
    add hl, bc
    ld hl, $3f3e
    jr nz, jr_01c_611a

    rra
    inc c
    rrca
    inc bc
    inc bc
    sbc l
    dec b
    inc a
    dec h

jr_01c_6113:
    ld bc, $0241
    inc bc
    ld bc, $0407

jr_01c_611a:
    adc c
    dec b
    sbc d
    inc bc
    rrca

jr_01c_611f:
    ld [$0e09], sp
    and l
    inc bc
    db $e4
    db $f4
    ld hl, $7e05
    ld bc, $f070
    ld b, c
    ldh a, [$ffd0]
    add hl, bc
    ld hl, sp+$38
    adc b
    ld hl, sp-$38
    jr c, jr_01c_611f

    jr @-$6a

    ld l, h
    adc e
    add hl, bc
    ld d, b
    cp c
    ld a, [bc]
    sbc [hl]
    nop
    db $fc
    xor h
    ld [bc], a
    ld e, e
    ld bc, $00ff
    adc e
    dec bc
    ld a, [hl-]
    ld bc, $fe01
    add e
    dec bc
    ld b, b
    ld bc, $ffff
    db $e4
    inc hl
    nop
    ld [bc], a
    ld a, $3e
    pop bc
    adc d
    ld [bc], a
    ld e, l
    ld de, $0ff0
    ld a, a
    add b

jr_01c_6163:
    cpl
    ret nc

    ccf
    ret nc

    ld a, a
    sub d
    rst $38
    inc c
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$ff9b]
    dec b
    sbc $05
    cp $fe
    pop bc
    ccf
    ret nz

    ccf
    adc e
    dec bc
    add h
    nop
    ld a, $c3
    ld [bc], a
    ret c

    nop
    add h
    push bc

jr_01c_6186:
    ld [bc], a
    ld d, c
    ld bc, $807f
    add l
    dec bc
    sbc d
    ldh a, [rNR44]
    ld a, [bc]
    sbc $0d

jr_01c_6193:
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
    ldh a, [rNR44]
    dec bc
    ld [de], a
    adc c
    ld a, [bc]
    cp d
    xor c
    ld a, [bc]
    cp h
    and e
    ld bc, $0382
    ld h, b
    and b
    jr nz, jr_01c_6193

    ld b, c
    jr nc, jr_01c_6186

    ld b, c
    ldh a, [rNR10]
    ld bc, $30d0
    add e
    inc bc
    and $0f
    pop bc
    pop bc
    ld [hl-], a
    ldh a, [c]
    inc c
    db $fc
    jp Jump_000_02ff


    cp $1e
    ldh [c], a
    db $fc
    inc b
    ld hl, sp+$08
    and a
    ld [bc], a
    ld b, $a3
    nop
    or h
    ld bc, $18f8
    cp e
    add hl, bc
    sbc h
    ld bc, $0000
    add e
    inc c
    ld h, b
    ld bc, $bccc
    adc c
    inc c
    ld h, [hl]
    add e
    rlca
    ld [hl], c
    ld bc, $8cf4
    ld b, e
    db $fc
    inc b
    dec b
    ld hl, sp+$08
    ldh a, [$ff30]
    ret nz

    ret nz

    xor c
    ld [bc], a
    ld a, [$0287]
    ld b, $42
    rst $38
    add b
    ld a, [bc]
    cp e
    call nz, Call_01c_635f
    ld c, h
    ld [hl], a
    jr c, jr_01c_6249

    ld [$070f], sp
    ld b, d
    rlca
    inc b
    nop
    rlca
    add e
    ld [$41ee], sp
    rrca
    ld [$0904], sp
    ld c, $04
    rlca
    ld a, [bc]
    and h
    inc bc
    ld c, l
    inc bc
    ld [de], a

jr_01c_6223:
    ld e, $0c
    inc c
    sub l
    inc c
    jp nz, $bf09

    ret nz

    ld a, e
    ld b, h
    ld e, a
    ld h, e
    inc h
    ccf
    jr jr_01c_6253

    adc c
    inc c
    ldh [$ff97], a
    ld a, [bc]
    ret nc

    sub e
    dec c
    inc b
    ld b, $77
    ld c, b
    ld e, l
    ld h, [hl]
    daa
    ccf
    inc e
    add l
    nop
    ld a, c
    adc d

jr_01c_6249:
    dec b
    sbc e
    inc bc
    rra
    db $10
    ld de, $911e
    dec b
    halt

jr_01c_6253:
    inc bc
    ld a, $3e
    db $dd
    db $e3
    add e
    ld [bc], a
    sbc l
    ld b, d
    rst $38
    ld a, [bc]
    inc b
    rst $38
    nop
    rst $38
    jr nz, jr_01c_6223

    jp $9502


    inc d
    ld a, a
    add b
    ld a, a
    ld b, $fd
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
    jr @-$77

    ld [$0174], sp
    rst $38
    rst $38
    or c
    ld bc, $03f4
    ld hl, sp+$08
    db $f4
    ld e, h
    ld b, c
    db $fc
    ld d, h
    rlca
    cp $0e
    ld sp, hl
    rla
    ld hl, sp+$17
    ldh [$ffbf], a
    ld b, c
    ld b, b
    rst $38
    dec bc
    add b
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
    ret


    ld [bc], a
    ld d, c
    dec b
    ld a, a

jr_01c_62ac:
    add b
    sbc a
    ldh [$ff7f], a
    ld a, a
    sub [hl]
    dec c
    cp [hl]
    ld [bc], a
    ld [bc], a
    cp $2e
    adc e
    dec c
    sub $03
    ld [hl], b
    adc a
    ld a, a
    add b
    add h
    ld [bc], a
    sbc c
    ld [bc], a
    add d
    rst $38
    ld bc, $0b87
    call nc, Call_000_1f05
    ldh [$ffc1], a
    rst $38
    ld a, a
    ld a, a
    sub [hl]
    dec c
    cp $08
    ld c, d
    rst $38
    ccf
    pop af
    cpl
    ldh a, [rVBK]
    add b
    rst $38
    add a
    ld c, $1c
    ldh a, [rNR42]
    dec bc
    jp z, Jump_000_0c85

    ld b, [hl]
    rla
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, @-$0e

    db $10
    ldh a, [rSVBK]
    or b
    ret nc

    jr nc, @-$2e

    ld [$38f8], sp
    ret c

    inc [hl]
    db $fc
    call nz, Call_01c_4cfc
    db $f4
    and h
    nop
    ld b, [hl]
    ld b, c
    ld [de], a
    cp $00
    ld c, $f0
    add hl, sp
    inc c
    ld [hl], h
    ld b, c
    db $fc
    add h
    add a
    inc c
    ld [hl], d
    add hl, bc
    db $fd
    rlca
    pop af
    rrca
    and d
    ld a, [hl]
    call z, Call_000_30fc
    jr nc, jr_01c_62ac

    ld a, [bc]
    or d
    and a
    ld c, $88
    dec b
    rlca
    inc b
    rlca
    ld b, $07
    rlca
    dec h
    inc bc
    add l
    inc c
    ld l, d
    rlca
    ld a, b
    adc b
    ld hl, sp+$48
    db $f4
    ld c, h
    db $fc
    add h
    sub c
    inc c
    or h
    add e
    rrca
    inc c
    ld b, c
    inc b
    rlca
    ld bc, $0605
    and e
    inc b
    db $ec
    and e
    inc c
    ld e, b
    inc bc
    dec bc
    inc c
    dec b
    ld b, $89
    ld a, [bc]
    sbc [hl]
    add a
    inc c
    and [hl]
    inc bc
    db $f4
    adc h
    db $fc
    add h
    ldh a, [$ff27]
    inc c
    ld [hl], d

Call_01c_635f:
    nop
    ld [hl], b
    adc c
    ld c, $95
    nop
    db $fc
    cp c
    dec bc
    jr nz, @-$79

    dec c
    sbc d
    rst $38
    rst $00
    ld h, e
    ret nc

    ld h, e
    reti


    ld h, e
    ldh [c], a
    ld h, e
    db $eb
    ld h, e
    db $f4
    ld h, e
    db $fd
    ld h, e
    ld b, $64
    rrca
    ld h, h
    jr @+$66

    ld sp, $4a64
    ld h, h
    ld h, e
    ld h, h
    ld a, h
    ld h, h
    sub l
    ld h, h
    xor [hl]
    ld h, h
    rst $00
    ld h, h
    ldh [$ff64], a
    push af
    ld h, h
    ld a, [bc]
    ld h, l
    inc hl
    ld h, l
    inc [hl]
    ld h, l
    ld c, l
    ld h, l
    ld h, [hl]
    ld h, l
    ld a, a
    ld h, l
    sbc b
    ld h, l
    or c
    ld h, l
    jp z, $e365

    ld h, l
    db $fc
    ld h, l
    dec d
    ld h, [hl]
    ld l, $66
    ld b, a
    ld h, [hl]
    ld h, b
    ld h, [hl]
    ld a, c
    ld h, [hl]
    sub d
    ld h, [hl]
    xor e
    ld h, [hl]
    call nz, $dd66
    ld h, [hl]
    or $66
    rrca
    ld h, a
    jr z, @+$69

    ld b, c
    ld h, a
    ld e, [hl]
    ld h, a
    ld a, e
    ld h, a
    ld [bc], a
    ld hl, sp-$08
    jr nz, jr_01c_63cc

jr_01c_63cc:
    ld hl, sp+$00

jr_01c_63ce:
    ld [hl+], a
    ld bc, $f802
    nop
    inc b
    jr nz, jr_01c_63ce

    ld hl, sp+$08
    ld hl, $f802
    nop
    ld a, [bc]
    jr nz, @-$06

    ld hl, sp+$0c
    ld hl, $f802
    ld hl, sp+$30
    jr nz, @-$06

    nop

jr_01c_63e9:
    ld b, [hl]
    ld hl, $f802
    nop
    ld c, h
    jr nz, jr_01c_63e9

    ld hl, sp+$12
    ld hl, $f802
    ld hl, sp+$32
    jr nz, @-$06

    nop

jr_01c_63fb:
    ld c, d
    ld hl, $f802
    nop
    ld c, b
    jr nz, jr_01c_63fb

    ld hl, sp+$10
    ld hl, $f802
    nop
    nop
    jr nz, @-$06

    ld hl, sp+$02
    ld hl, $f802
    ld hl, sp+$0e
    jr nz, @-$06

    nop
    ld b, $21
    ld b, $ec
    inc b
    call z, $ec20
    db $fc
    call c, $ec20

jr_01c_6422:
    db $f4
    db $ec
    jr nz, jr_01c_6422

    inc b
    adc $20
    db $fc
    db $fc
    sbc $20
    db $fc
    db $f4
    xor $21
    ld b, $ee
    inc b
    ret nc

jr_01c_6435:
    jr nz, @-$10

    db $fc
    ldh [rNR41], a
    cp $04
    jp nc, $fe20

    db $fc
    ldh [c], a

jr_01c_6441:
    jr nz, jr_01c_6441

    db $f4
    ldh a, [c]
    jr nz, jr_01c_6435

    db $f4
    db $ec
    ld hl, $ef06
    dec b
    call nc, $ef20
    db $fd
    db $e4
    jr nz, @+$01

    dec b
    sub $20
    rst $38

jr_01c_6458:
    db $fd
    and $20
    rst $38
    push af
    or $20
    rst $28
    push af
    db $ec
    ld hl, $ef06
    db $fd
    ret c

    jr nz, jr_01c_6458

    push af
    add sp, $20
    rst $38
    db $fd
    jp c, $ff20

    push af
    ld [$ff20], a
    dec b
    db $f4
    jr nz, @-$0f

    dec b
    ldh a, [rNR42]
    ld b, $ef
    ei
    ret c

    nop
    rst $28
    inc bc
    add sp, $00
    rst $38
    ei
    jp c, $ff00

    inc bc
    ld [$ff00], a
    di
    db $f4
    nop
    rst $28
    di
    ldh a, [rSB]
    ld b, $ec
    db $f4
    call z, $ec00
    db $fc
    call c, $ec00
    inc b
    db $ec
    nop
    db $fc
    db $f4
    adc $00
    db $fc
    db $fc
    sbc $00
    db $fc
    inc b
    xor $01
    ld b, $ee
    db $f4
    ret nc

    nop
    xor $fc
    ldh [rP1], a
    cp $f4
    jp nc, $fe00

    db $fc
    ldh [c], a
    nop
    cp $04
    ldh a, [c]
    nop
    xor $04
    db $ec
    ld bc, $ef06
    di
    call nc, $ef00
    ei
    db $e4
    nop
    rst $38
    di
    sub $00
    rst $38
    ei
    and $00
    rst $38
    inc bc
    or $00
    rst $28
    inc bc
    db $ec
    ld bc, $ef05
    or $a4
    nop
    rst $28
    cp $b2
    nop
    rst $38

jr_01c_64ea:
    or $a6
    nop
    rst $38
    cp $b4
    nop
    ei
    ld b, $c4
    ld bc, $ef05
    ld [bc], a
    and h
    jr nz, jr_01c_64ea

    ld a, [$20b2]
    rst $38
    ld [bc], a
    and [hl]
    jr nz, @+$01

    ld a, [$20b4]
    ei
    ldh a, [c]
    call nz, Call_000_0621
    db $ec
    di
    xor d
    nop
    db $ec
    ei
    cp d
    nop
    db $ec
    inc bc
    ret z

    nop
    db $fc
    di
    xor h
    nop
    db $fc
    ei
    cp h
    nop
    db $fc
    inc bc
    jp z, Jump_000_0401

    db $fc
    db $f4
    xor b
    nop
    db $fc
    db $fc
    cp b
    nop
    db $fc
    inc b
    add $00
    db $ec
    db $fc
    or [hl]
    ld bc, $ff06
    ei
    jp c, $ff00

    inc bc
    ld [$ef00], a
    inc bc
    ld hl, sp+$00
    rst $28
    ei
    ld a, [$ff00]
    di
    db $f4
    nop
    rst $28
    di
    jp nz, $0601

    rst $38
    db $fd
    jp c, $ff20

    push af
    ld [$ef20], a
    push af

jr_01c_6558:
    ld hl, sp+$20
    rst $28
    db $fd

jr_01c_655c:
    ld a, [$ff20]
    dec b
    db $f4
    jr nz, @-$0f

    dec b
    jp nz, Jump_000_0621

    db $ec
    dec b
    xor d
    jr nz, jr_01c_6558

    db $fd
    cp d
    jr nz, jr_01c_655c

jr_01c_6570:
    push af
    ret z

    jr nz, jr_01c_6570

jr_01c_6574:
    dec b
    xor h
    jr nz, jr_01c_6574

jr_01c_6578:
    db $fd
    cp h
    jr nz, jr_01c_6578

    push af
    jp z, Jump_000_0621

    add sp, -$0c
    ld e, b
    nop
    add sp, -$04
    ld l, b
    nop
    add sp, $04
    ld a, b
    nop
    ld hl, sp-$0c
    ld e, d
    nop
    ld hl, sp-$04
    ld l, d
    nop
    ld hl, sp+$04
    ld a, d
    ld bc, $e906
    db $f4
    ld h, b
    nop
    jp hl


    inc b
    ld [hl], b
    nop
    ld sp, hl
    db $f4
    ld h, d
    nop
    ld sp, hl
    inc b
    ld [hl], d
    nop
    jp hl


    db $fc
    ld h, h
    nop
    ld sp, hl
    db $fc
    ld h, [hl]
    ld bc, $e906
    db $f4
    ld d, h
    nop
    jp hl


    db $fc
    ld h, h
    nop
    jp hl


    inc b
    ld [hl], h

jr_01c_65bd:
    nop
    ld sp, hl
    db $f4
    ld d, [hl]
    nop
    ld sp, hl
    db $fc
    ld h, [hl]

jr_01c_65c5:
    nop
    ld sp, hl
    inc b
    halt

jr_01c_65c9:
    ld bc, $e906
    db $fc
    adc b
    jr nz, jr_01c_65c9

    db $fc

jr_01c_65d1:
    adc d
    jr nz, jr_01c_65bd

    db $f4
    sbc d
    jr nz, jr_01c_65d1

    db $f4

jr_01c_65d9:
    sbc h
    jr nz, jr_01c_65c5

    inc b
    adc h
    jr nz, jr_01c_65d9

    inc b
    adc [hl]
    ld hl, $e906
    db $fc
    adc b
    nop
    ld sp, hl
    db $fc
    adc d
    nop
    jp hl


    inc b
    sbc d
    nop
    ld sp, hl
    inc b
    sbc h
    nop
    jp hl


    db $f4
    adc h
    nop
    ld sp, hl
    db $f4
    adc [hl]
    ld bc, $e806
    db $f4
    sub b
    nop
    add sp, -$04
    and b
    nop
    add sp, $04
    xor [hl]
    nop
    ld hl, sp-$0c
    sub d
    nop
    ld hl, sp-$04
    and d
    nop
    ld hl, sp+$04
    or b
    ld bc, $e906
    inc b
    cp [hl]
    nop
    ld sp, hl
    inc b
    ret nz

    nop
    jp hl


    db $fc
    ld l, h
    nop
    ld sp, hl
    db $fc
    add [hl]
    nop
    jp hl


    db $f4
    add d
    nop
    ld sp, hl
    db $f4
    add h
    ld bc, $e906
    db $f4
    ld e, h
    nop
    jp hl


    db $fc
    ld l, h
    nop
    jp hl


    inc b
    ld a, h
    nop
    ld sp, hl
    db $fc
    add [hl]
    nop
    ld sp, hl
    inc b
    sub [hl]
    nop
    ld sp, hl
    db $f4
    sbc b
    ld bc, $e906
    di
    ld e, [hl]
    nop
    jp hl


    ei

jr_01c_664e:
    ld l, [hl]
    nop
    jp hl


    inc bc

jr_01c_6652:
    ld a, [hl]
    nop
    ld sp, hl
    di
    sbc b
    nop
    ld sp, hl
    inc bc
    sub h
    nop
    ld sp, hl
    ei
    sbc [hl]
    ld bc, $e806
    inc b
    sub b
    jr nz, jr_01c_664e

jr_01c_6666:
    db $fc
    and b
    jr nz, jr_01c_6652

jr_01c_666a:
    db $f4
    xor [hl]

jr_01c_666c:
    jr nz, jr_01c_6666

jr_01c_666e:
    inc b
    sub d
    jr nz, jr_01c_666a

    db $fc
    and d

jr_01c_6674:
    jr nz, jr_01c_666e

    db $f4
    or b

jr_01c_6678:
    ld hl, $e906
    db $f4
    cp [hl]
    jr nz, jr_01c_6678

    db $f4

jr_01c_6680:
    ret nz

jr_01c_6681:
    jr nz, jr_01c_666c

    db $fc
    ld l, h

jr_01c_6685:
    jr nz, jr_01c_6680

    db $fc

jr_01c_6688:
    add [hl]
    jr nz, jr_01c_6674

    inc b
    add d
    jr nz, jr_01c_6688

    inc b
    add h
    ld hl, $e906
    inc b
    ld e, h
    jr nz, jr_01c_6681

    db $fc

jr_01c_6699:
    ld l, h
    jr nz, jr_01c_6685

    db $f4

jr_01c_669d:
    ld a, h
    jr nz, jr_01c_6699

    db $fc

jr_01c_66a1:
    add [hl]
    jr nz, jr_01c_669d

    db $f4
    sub [hl]
    jr nz, jr_01c_66a1

    inc b
    sbc b
    ld hl, $f306
    push af
    inc d
    nop
    di
    db $fd
    inc h
    nop
    di
    dec b
    inc [hl]
    nop
    inc bc
    push af
    ld d, $00
    inc bc
    db $fd
    ld h, $00
    inc bc
    dec b
    ld [hl], $01
    ld b, $f4
    push af
    jr jr_01c_66c9

jr_01c_66c9:
    db $f4
    db $fd
    jr z, jr_01c_66cd

jr_01c_66cd:
    db $f4
    dec b
    jr c, jr_01c_66d1

jr_01c_66d1:
    inc b
    push af
    ld a, [de]
    nop
    inc b
    db $fd
    ld a, [hl+]
    nop
    inc b
    dec b
    ld a, [hl-]
    ld bc, $f506
    push af
    inc e
    nop
    push af
    db $fd
    inc l
    nop
    push af
    dec b
    inc a
    nop
    dec b
    push af
    ld e, $00
    dec b
    db $fd
    ld l, $00
    dec b
    dec b
    ld a, $01
    ld b, $f3
    db $fd
    ld b, h
    nop
    di
    push af
    inc d
    nop
    inc bc
    push af
    ld d, $00
    inc bc
    db $fd
    ld h, $00
    inc bc
    dec b
    ld [hl], $00
    di
    dec b
    ld c, [hl]
    ld bc, $f306
    db $fd
    ld b, b
    nop
    di
    dec b
    ld d, b
    nop
    inc bc
    db $fd
    ld b, d
    nop
    inc bc
    dec b
    ld d, d
    nop
    di
    push af
    inc d
    nop
    inc bc
    push af
    ld d, $01
    ld b, $f4
    db $fd
    ld b, b
    nop
    db $f4
    dec b
    ld d, b
    nop
    inc b
    db $fd
    ld b, d
    nop
    inc b
    dec b
    ld d, d
    nop
    db $f4
    push af
    inc d
    nop
    inc b
    push af
    ld d, $01
    rlca
    di
    db $fc
    ld b, h
    nop
    inc bc
    inc b
    ld [hl], $00
    di
    db $f4
    inc d
    nop
    inc bc
    db $f4
    ld d, $00
    inc bc
    db $fc
    ld h, $00
    di
    inc b
    ld c, [hl]
    nop
    xor $09
    add b
    ld bc, $f307
    db $fc
    ld b, h
    nop
    inc bc
    inc b
    ld [hl], $00
    di
    db $f4
    inc d
    nop
    inc bc
    db $f4
    ld d, $00
    inc bc
    db $fc
    ld h, $00
    di
    inc b
    ld c, [hl]
    nop
    jp hl


    dec bc
    add b
    ld bc, $f307
    db $fc
    ld b, h
    nop
    inc bc
    inc b
    ld [hl], $00
    di
    db $f4
    inc d
    nop
    inc bc
    db $f4
    ld d, $00
    inc bc
    db $fc
    ld h, $00
    di
    inc b
    ld c, [hl]
    nop
    and $0c
    add b
    db $01

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $aa, $5e, $1b, $20, $28
    db $00, $21, $55, $00, $20, $28, $00, $21, $55, $00, $01, $13, $05, $0a, $0d, $50
    db $0f, $4e, $a0, $b3, $01, $13, $05, $1e, $01, $0f, $05, $08, $01, $10, $05, $08
    db $01, $0c, $05, $10, $09, $03, $01, $12, $05, $08, $01, $0d, $05, $08

    ld a, [bc]
    ld bc, $050c
    inc a
    ld bc, $0705
    ld b, b
    ld bc, $0805
    ld bc, $0506
    ld a, [bc]
    ld bc, $0505
    ld [$0601], sp
    rlca
    nop
    nop
    dec b
    dec b
    ld bc, $0518
    ld [bc], a
    ld bc, $0519
    ld [bc], a
    ld bc, $051a
    ld [bc], a
    ld bc, $051b
    ld [bc], a
    ld bc, $051c
    inc b
    ld bc, $051d
    ld [bc], a
    ld bc, $051e
    ld [bc], a
    ld bc, $051f
    ld [bc], a
    ld bc, $0520
    ld [bc], a
    ld bc, $0521
    ld b, $01
    ld [hl+], a
    dec b
    ld b, $01
    inc b
    dec b
    inc d
    ld bc, $0507
    ld b, $01
    ld [$1405], sp
    add hl, bc
    add hl, bc
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld bc, $050a
    inc b
    ld bc, $050b
    inc b
    ld a, [bc]
    dec c
    sub c
    dec hl
    nop

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $aa, $5e, $1b, $20, $a0
    db $00, $21, $59, $00, $01, $01, $07, $00, $ff, $05, $08, $01, $02, $05, $0a, $01
    db $03, $05, $08, $01, $01, $05, $08, $01, $02, $05, $0a, $01, $00, $07, $00, $00
    db $05, $50

    add hl, bc
    ld [bc], a
    ld bc, $0511
    inc b
    ld bc, $0500
    ld b, $0a
    ld bc, $0500
    inc d
    ld bc, $0701
    ret nz

    cp $05
    ld [$0201], sp
    dec b
    ld a, [bc]
    ld bc, $0503
    ld [$0201], sp
    dec b
    dec b
    ld bc, $070e
    nop
    nop
    dec b
    ld [bc], a
    db $16

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $f9, $67, $1b, $20, $80
    db $00, $21, $59, $00, $01, $04, $05, $0a, $09, $02, $01, $01, $05, $08, $01, $02
    db $05, $08, $0a, $0d, $50, $0f, $53, $a0, $b3, $0d, $50, $0f, $50, $a0, $b3, $01
    db $02, $05, $3a, $01, $04, $05, $0a, $01, $23, $05, $08, $0d, $50, $0f, $51, $a0
    db $b3, $01, $24, $05, $0a, $01, $00, $05, $4e, $01, $05, $05, $0a, $01, $00, $05
    db $2c, $09, $03, $01, $00, $05, $04, $01, $03, $05, $04, $0a, $16, $17, $ff, $0d
    db $0f, $43, $50, $03, $b2, $60, $4e, $04, $f9, $67, $1b, $20, $30, $00, $21, $68
    db $00, $01, $06, $05, $08, $01, $07, $05, $0e, $09, $02, $01, $08, $05, $06, $01
    db $07, $05, $08, $0a, $01, $07, $05, $24, $01, $08, $05, $14, $01, $06, $05, $02
    db $01, $07, $05, $06, $01, $07, $05, $0a, $09, $02, $01, $08, $05, $06, $01, $07
    db $05, $08, $0a, $01, $07, $05, $20, $01, $06, $05, $08, $01, $07, $05, $08, $01
    db $06, $05, $04, $01, $07, $05, $06, $01, $09, $07, $60, $02, $08, $e4, $fc, $2a
    db $28, $05, $0a, $01, $0a, $05, $0a, $01, $0b, $05, $0a, $09, $02, $01, $25, $07
    db $00, $00, $08, $00, $00, $2a, $00, $05, $04, $01, $26, $05, $04, $0a, $01, $1d
    db $05, $02, $01, $13, $05, $02, $01, $14, $05, $02, $01, $15, $05, $02, $01, $16
    db $05, $04, $01, $17, $05, $02, $01, $18, $05, $02, $01, $19, $05, $02, $01, $1a
    db $05, $02, $01, $1b, $05, $06, $01, $1c, $05, $06, $01, $0c, $08, $f0, $01, $05
    db $06, $01, $0c, $08, $00, $00, $05, $04, $01, $0d, $05, $06, $01, $0e, $05, $08
    db $09, $02, $01, $0f, $07, $90, $ff, $05, $08, $01, $0e, $08, $10, $00, $05, $08
    db $01, $0e, $07, $00, $00, $08, $f0, $ff, $05, $08

    ld a, [bc]
    ld bc, $0728
    sub $fe
    ld [$fc00], sp
    ld a, [hl+]
    ld b, [hl]
    dec b
    ld e, $0d
    ld d, b
    rrca
    ld d, d
    and b
    or e
    ld bc, $0810
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    inc b
    ld bc, $0511
    inc b
    db $16

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $f9, $67, $1b, $20, $00
    db $00, $21, $00, $00, $20, $80, $00, $21, $58, $00, $01, $12, $07, $8a, $fd, $08
    db $e0, $fd, $2a, $26, $05, $20, $16

    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    ld sp, hl
    ld h, a
    dec de
    jr nz, @+$42

    nop
    ld hl, $006a
    ld bc, $051e
    ld [bc], a
    ld bc, $051f
    inc b
    ld bc, $0520
    inc b
    ld bc, $0521
    inc b
    ld bc, $0522
    inc b
    dec c
    sub c
    dec hl
    nop

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $f9, $67, $1b, $20, $04
    db $00, $21, $70, $00, $01, $27, $05, $ff, $01, $27, $05, $93

    nop

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $db, $71, $1b, $20, $80
    db $00, $21, $61, $00, $0d, $50, $0f, $5a, $a0, $b3, $0d, $50, $0f, $5b, $a0, $b3
    db $0d, $50, $0f, $55, $a0, $b3, $0d, $50, $0f, $56, $a0, $b3, $01, $00, $05, $0a
    db $09, $02, $01, $01, $05, $08, $01, $02, $05, $0a, $0a, $01, $00, $05, $08, $09
    db $03, $01, $00, $08, $00, $00, $2a, $00, $05, $0a, $01, $03, $08, $80, $ff, $2a
    db $1c, $05, $08, $0a

    ld bc, $0800
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    inc c
    db $16

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $db, $71, $1b, $20, $52
    db $00, $21, $4d, $00, $01, $0b, $05, $28, $01, $0d, $05, $06, $01, $0e, $05, $08
    db $01, $0e, $07, $00, $00, $08, $b3, $fe, $29, $1a, $2a, $0d, $05, $06, $01, $0d
    db $05, $06, $01, $0c, $05, $06, $01, $0d, $05, $06, $01, $0f, $07, $9a, $02, $29
    db $e5, $2a, $0d, $05, $06, $01, $10, $05, $06

    ld bc, $0513
    ld b, $01
    ld [de], a
    dec b
    ld b, $01
    ld [de], a
    ld [HeaderComplementCheck], sp
    ld a, [hl+]
    di
    dec b
    ld b, $01
    inc de
    dec b
    ld b, $01
    ld [de], a
    dec b
    ld b, $01
    inc d
    dec b
    ld b, $01
    inc d
    rlca
    ld [$08ff], sp
    nop
    nop
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    dec d
    ld a, [hl+]
    db $f4
    dec b
    ld b, $01
    ld d, $05
    ld b, $01
    dec d
    dec b
    ld b, $01
    inc d
    dec b
    ld b, $01
    jr jr_01c_6b55

    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop

jr_01c_6b55:
    dec b
    ld b, $01
    add hl, de
    rlca
    xor h
    cp $2a
    pop af
    dec b
    ld b, $01
    jr @+$07

    ld b, $01
    rla
    dec b
    ld b, $01
    ld a, [de]
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld [bc], a
    dec c
    ld d, b
    rrca
    ld e, b
    and b
    or e
    dec c
    ld d, b
    rrca
    ld e, c
    and b
    or e
    ld bc, $051b
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld bc, $051a
    ld [bc], a
    ld bc, $051b
    ld [bc], a
    ld a, [bc]
    dec c
    ld d, b
    rrca
    ld d, a
    and b
    or e
    ld bc, $0712
    add b
    cp $08
    ld b, b
    cp $2a
    jr nz, jr_01c_6ba7

    inc b
    ld bc, $0513
    add hl, de

jr_01c_6ba7:
    ld bc, $071c
    nop
    nop
    ld [$fe00], sp
    ld a, [hl+]
    nop
    dec b
    ld bc, $1d01
    ld [$0000], sp
    dec b
    inc b
    ld bc, $051e
    ld [$1f01], sp
    dec b
    ld [$2001], sp
    dec b
    dec l
    ld bc, $0521
    ld a, [bc]
    ld bc, $0522
    rla
    dec c
    sub c
    dec hl
    nop

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $db, $71, $1b, $20, $54
    db $00, $21, $5a, $00, $01, $2e, $05, $9c

    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    db $db
    ld [hl], c
    dec de
    jr nz, @+$40

    nop
    ld hl, $0048
    ld bc, $0704
    nop
    nop
    dec b
    ld [bc], a
    ld bc, $0805
    ret nc

    db $fd
    ld a, [hl+]
    ld [hl+], a
    dec b
    inc b
    ld bc, $0705
    ld d, b
    rst $38
    dec b
    ld [$0601], sp
    dec b
    ld [$0701], sp
    dec b
    ld [$0801], sp
    rlca
    or b
    rst $38
    ld [$ff00], sp
    add hl, hl
    dec b
    ld a, [hl+]
    ld e, $05
    db $10
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld a, [bc]
    ld bc, $0505
    ld [$0901], sp
    dec b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $050a
    ld b, $01
    add hl, bc
    dec b
    ld [$010a], sp
    add hl, bc
    dec b
    add hl, de
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    db $db
    ld [hl], c
    dec de
    jr nz, @+$40

    nop
    ld hl, $0050
    ld bc, $2a2e
    ld [$2c05], sp
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    db $db
    ld [hl], c
    dec de
    jr nz, @+$40

    nop
    ld hl, $0048
    ld bc, $052f
    ld [bc], a
    ld bc, $0530
    ld [bc], a
    ld bc, $0531
    ld [bc], a
    ld bc, $0532
    ld [bc], a
    db $16

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $db, $71, $1b, $20, $04
    db $00, $21, $78, $00, $01, $33, $05, $ff

    dec b
    ld b, c
    nop

    db $17, $ff, $0d, $0f, $43, $50, $03, $b2, $60, $4e, $04, $db, $71, $1b, $20, $04
    db $00, $21, $18, $00, $01, $33, $05, $ff

    dec b
    ld b, c
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, @+$52

    nop
    ld hl, $0059
    dec c
    ld d, b
    rrca
    ld h, e
    and b
    or e
    dec c
    ld d, b
    rrca
    ld h, h
    and b
    or e
    dec c
    ld d, b
    rrca
    ld e, l
    and b
    or e
    dec c
    ld d, b
    rrca
    ld e, [hl]
    and b
    or e
    dec c
    ld d, b
    rrca
    ld e, a
    and b
    or e
    dec c
    ld d, b
    rrca
    ld h, b
    and b
    or e
    dec c
    ld d, b
    rrca
    ld h, c
    and b
    or e
    dec c
    ld d, b
    rrca
    ld h, d
    and b
    or e
    ld bc, $0500
    inc d
    ld bc, $0501
    inc l
    ld bc, $0500
    inc b
    ld bc, $0502
    inc l
    ld bc, $0500
    inc b
    ld bc, $0501
    inc l
    add hl, bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0504
    inc c
    ld a, [bc]
    ld bc, $0505
    inc b
    ld bc, $0507
    ld [bc], a
    ld bc, $0508
    inc b
    ld bc, $0506
    ld a, [bc]
    add hl, bc
    inc bc
    ld bc, $0509
    inc b
    ld bc, $050a
    inc b
    ld a, [bc]
    ld bc, $050b
    db $10
    ld bc, $070c
    inc hl
    rst $38
    dec b
    ld [$0d01], sp
    dec b
    ld [$0e01], sp
    dec b
    ld [$0f01], sp
    ld [$fd30], sp
    ld a, [hl+]
    jr z, jr_01c_6d68

    db $10
    ld bc, $0510
    dec c

jr_01c_6d68:
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, jr_01c_6d99

    nop
    ld hl, $0054
    ld bc, $0518
    ld [hl-], a
    add hl, bc
    inc bc
    ld bc, $0518
    ld [$1901], sp
    dec b
    ld [$010a], sp
    jr jr_01c_6d94

    and e
    ld bc, $051a
    inc l

jr_01c_6d94:
    add hl, bc
    inc bc
    ld bc, $051b

jr_01c_6d99:
    ld b, $01
    inc e
    dec b
    ld [$010a], sp
    dec de
    dec b
    ld a, [bc]
    ld bc, $071f
    nop
    rst $38
    dec b
    ld [$1e01], sp
    rlca
    jr nz, @+$01

    dec b
    ld a, [bc]
    ld bc, $071d
    nop
    rst $38
    dec b
    ld [$1e01], sp
    rlca
    jr nz, @+$01

    dec b
    ld a, [bc]
    ld bc, $071f
    nop
    rst $38
    dec b
    ld [$1e01], sp
    rlca
    jr nz, @+$01

    dec b
    ld a, [bc]
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, @-$7e

    nop
    ld hl, $0068
    ld bc, $0514
    ld a, [bc]
    add hl, bc
    inc bc
    ld bc, $0511
    ld b, $01
    ld [de], a
    dec b
    ld [bc], a
    ld bc, $0513
    ld b, $01
    ld [de], a
    dec b
    ld [bc], a
    ld a, [bc]
    ld bc, $0514
    jr nc, jr_01c_6e07

    inc bc
    ld bc, $0511
    ld b, $01
    ld [de], a
    dec b
    ld [bc], a

jr_01c_6e07:
    ld bc, $0513
    ld b, $01
    ld [de], a
    dec b
    ld [bc], a
    ld a, [bc]
    ld bc, $0514
    ld l, [hl]
    ld bc, $0515
    ld a, b
    add hl, bc
    inc bc
    ld bc, $0516
    db $10
    ld bc, $0517
    db $10
    ld a, [bc]
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, jr_01c_6e44

    nop
    ld hl, $0000
    add hl, bc
    ld [bc], a
    jr nz, @+$12

    nop
    ld hl, $0020
    ld bc, $0820
    ld d, b

jr_01c_6e44:
    nop
    dec b
    ld h, h
    ld bc, $0521
    inc b
    ld bc, $08ff
    nop
    nop
    dec b
    ld h, h
    ld a, [bc]
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld c, b
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, jr_01c_6e6b

jr_01c_6e6b:
    nop
    ld hl, $0000
    jr nz, @-$6e

    nop
    ld hl, $0020
    ld bc, $08ff
    nop
    nop
    dec b
    ld d, b
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld h, h
    ld bc, $0521
    inc b
    jr nz, jr_01c_6ef9

    nop
    ld hl, $0020
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld d, b
    ld bc, $0521
    inc b
    ld bc, $08ff
    nop
    nop
    dec b
    ld d, b
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld h, h
    ld bc, $0521
    inc b
    ld bc, $08ff
    nop
    nop
    dec b
    inc e
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, jr_01c_6ec2

jr_01c_6ec2:
    nop
    ld hl, $0000
    jr nz, jr_01c_6f28

    nop
    ld hl, $0020
    ld bc, $08ff
    nop
    nop
    dec b
    inc d
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld a, b
    ld bc, $0521
    inc b
    ld bc, $08ff
    nop
    nop
    dec b
    jr z, jr_01c_6f06

    ld c, b
    nop
    ld hl, $0020
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld b, [hl]
    ld bc, $0521
    inc b
    jr nz, jr_01c_6f58

    nop

jr_01c_6ef9:
    ld hl, $0020
    ld bc, $08ff
    nop
    nop
    dec b
    inc d
    ld bc, $0820

jr_01c_6f06:
    ld d, b
    nop
    dec b
    ld a, b
    ld bc, $0521
    inc b
    ld bc, $08ff
    nop
    nop
    dec b
    jr z, @+$22

    ld c, b
    nop
    ld hl, $0020
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld h, $00
    rla
    rst $38
    dec c
    rrca
    ld b, e

jr_01c_6f28:
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, jr_01c_6f33

jr_01c_6f33:
    nop
    ld hl, $0000
    add hl, bc
    ld [bc], a
    jr nz, jr_01c_6f6b

    nop
    ld hl, $0020
    ld bc, $05ff
    ld [hl-], a
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld d, b
    ld bc, $0521
    inc b
    ld bc, $08ff
    nop
    nop
    dec b
    jr z, jr_01c_6f60

    jr nz, jr_01c_6f88

jr_01c_6f58:
    nop

jr_01c_6f59:
    ld hl, $0020
    ld bc, $05ff
    ld [hl-], a

jr_01c_6f60:
    ld bc, $0820
    ld d, b
    nop
    dec b
    ld d, b
    ld d, $17
    rst $38
    dec c

jr_01c_6f6b:
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, jr_01c_6f7c

    nop
    ld hl, $0018

jr_01c_6f7c:
    ld bc, $0522
    rst $38
    dec b
    push hl
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e

jr_01c_6f88:
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    inc hl
    ld a, l
    dec de
    jr nz, jr_01c_6f97

    nop
    ld hl, $0070

jr_01c_6f97:
    ld bc, $0522
    rst $38
    dec b
    push hl
    dec c
    sub c
    dec hl
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    dec e
    ld c, b
    inc e
    jr nz, jr_01c_6f59

    nop
    ld hl, $0068
    dec c
    ld d, b
    rrca
    ld l, h
    and b
    or e
    dec c
    ld d, b
    rrca
    ld h, [hl]
    and b
    or e
    add hl, bc
    inc b
    ld bc, $0700
    ret z

    rst $38
    ld [$ffc8], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld [$0101], sp
    dec b
    ld a, [bc]
    ld bc, $0502
    ld [$0101], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld bc, $0702
    nop
    nop
    ld [$0000], sp
    dec b
    ld a, [bc]
    ld bc, $0503
    ld [bc], a
    ld bc, $0504
    ld [bc], a
    ld bc, $0505
    ld [bc], a
    ld bc, $0506
    ld [bc], a
    ld bc, $0707
    jr @+$01

    ld [$0050], sp
    add hl, hl
    ld hl, sp+$2a
    ld [$0405], sp
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld bc, $050a
    inc b
    ld bc, $290b
    ld [$002a], sp
    dec b
    inc b
    ld bc, $290c
    add hl, bc
    ld a, [hl+]
    cp h
    dec b
    ld b, $01
    dec c
    ld a, [hl+]
    ld [$0805], sp
    ld bc, $050e
    ld a, [bc]
    ld bc, $290f
    db $10
    dec b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0701
    ret z

    rst $38
    ld [$ffb3], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld a, [bc]
    ld bc, $0502
    ld [$0101], sp
    dec b
    ld a, [bc]
    ld bc, $0500
    ld [$010a], sp
    ld bc, $0405
    ld bc, $0801
    nop
    nop
    dec b
    inc b
    ld bc, $0502
    ld [$0201], sp
    rlca
    nop
    nop
    dec b
    ld b, $01
    inc bc
    dec b
    ld [bc], a
    ld bc, $0504
    ld [bc], a
    ld bc, $0505
    ld [bc], a
    ld bc, $0506
    ld [bc], a
    ld bc, $0707
    nop
    rst $38
    ld [$0170], sp
    add hl, hl
    ld hl, sp+$05
    inc b
    ld bc, $0508
    inc b
    ld bc, $0509
    inc b
    ld bc, $050a
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $050d
    inc b
    ld bc, $080e
    nop
    nop
    add hl, hl
    inc b
    dec b
    inc b
    ld bc, $050f
    dec b
    ld bc, $070f
    nop
    nop
    add hl, hl
    nop
    dec b
    ld bc, $500d
    rrca
    ld l, b
    and b
    or e
    jr nz, jr_01c_70c4

    nop
    ld hl, $004d
    add hl, bc
    inc b
    ld bc, $0510
    ld [bc], a
    ld bc, $0511

jr_01c_70c4:
    ld [bc], a
    ld a, [bc]
    ld bc, $0712
    nop
    ld bc, $0008
    rst $38
    ld a, [hl+]
    ld b, d
    dec b
    ld [bc], a
    rlca
    nop
    nop
    dec b
    ld c, $01
    inc de
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc d
    ld bc, $0514
    inc b
    ld bc, $0515
    inc d
    ld bc, $0516
    inc d
    add hl, bc
    ld [bc], a
    ld bc, $0517
    inc b
    ld bc, $0516
    inc b
    ld a, [bc]
    dec c
    ld d, b
    rrca
    ld h, a
    and b
    or e
    ld bc, $0518
    jr c, jr_01c_7103

    add hl, de

jr_01c_7103:
    dec b
    jr jr_01c_7107

    ld a, [de]

jr_01c_7107:
    dec b
    ld e, $01
    dec de
    dec b
    ld d, $01
    inc e
    dec b
    jr z, jr_01c_711f

    sub c
    dec hl
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]

jr_01c_711f:
    inc b
    dec e
    ld c, b
    inc e
    jr nz, jr_01c_7132

    nop
    ld hl, $0034
    add hl, bc
    inc b
    ld bc, $051d
    ld l, $01
    ld e, $05

jr_01c_7132:
    inc h
    ld a, [bc]
    ld bc, $051d
    ld l, $01
    ld e, $05
    ld a, [bc]
    ld bc, $051f
    jr z, @+$0b

    inc b
    ld bc, $051f
    ld b, $01
    jr nz, jr_01c_714e

    ld b, $0a
    ld bc, $2a1f

jr_01c_714e:
    inc d
    dec b
    ld [$2101], sp
    dec b
    inc b
    ld bc, $0522
    ld c, $0d
    ld d, b
    rrca
    ld l, e
    and b
    or e
    ld bc, $0734
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld [$500d], sp
    rrca
    ld l, c
    and b
    or e
    dec c
    ld d, b
    rrca
    ld l, d
    and b
    or e
    ld bc, $0736
    and b
    rst $38
    ld [$ff00], sp
    ld a, [hl+]
    dec e
    dec b
    jr nz, @+$18

    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    dec e
    ld c, b
    inc e
    jr nz, jr_01c_71a6

    nop
    ld hl, $005d
    ld bc, $0530
    ld [bc], a
    ld bc, $0531
    ld [bc], a
    ld bc, $0532
    ld [bc], a

jr_01c_71a6:
    ld bc, $0533
    ld [bc], a
    ld d, $17
    rst $38
    dec c
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    dec e
    ld c, b
    inc e
    jr nz, @+$12

    nop
    ld hl, $005d
    add hl, bc
    inc b
    ld bc, $0526
    ld [bc], a
    ld bc, $0527
    ld [bc], a
    ld a, [bc]
    ld bc, $0728
    inc b
    ld bc, $fb29
    dec b
    ld [$2901], sp
    dec b
    ld a, [bc]
    ld bc, $082a
    or b
    rst $38
    ld a, [hl+]
    ld [bc], a
    dec b
    ld a, [bc]
    ld bc, $052b
    inc c
    ld bc, $052c
    inc c
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    inc b
    ld bc, $052d
    ld c, $09
    ld [bc], a
    ld bc, $052f
    ld b, $01
    ld l, $05
    ld b, $0a
    ld bc, $052f
    ld b, $01
    dec l
    dec b
    add d
    ld bc, $052f
    jr z, jr_01c_720d

jr_01c_720d:
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    dec e
    ld c, b
    inc e
    jr nz, jr_01c_7225

    nop
    ld hl, $0058
    ld bc, $0737
    nop

jr_01c_7225:
    rst $38
    ld [$fea0], sp
    ld a, [hl+]
    jr nz, jr_01c_7231

    inc e
    ld d, $17
    rst $38
    dec c

jr_01c_7231:
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    dec e
    ld c, b
    inc e
    jr nz, @+$12

    nop
    ld hl, $0058
    ld bc, $0737
    add b
    nop
    ld [$fea0], sp
    ld a, [hl+]
    jr nz, jr_01c_7252

    jr nz, @+$18

    rla
    rst $38
    dec c

jr_01c_7252:
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    dec e
    ld c, b
    inc e
    jr nz, @+$0f

    nop
    ld hl, $0058
    ld bc, $0824

jr_01c_7266:
    jr nz, jr_01c_7266

    ld a, [hl+]
    inc h
    dec b
    ld b, $01
    dec h
    dec b
    ld b, $01
    inc h
    dec b
    ld b, $01
    inc hl
    dec b
    ld [$1716], sp
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    dec e
    ld c, b
    inc e
    jr nz, jr_01c_728d

    nop
    ld hl, $0018

jr_01c_728d:
    ld bc, $0538
    rst $38
    dec b
    rst $38
    dec b
    add [hl]
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    cp a
    ld d, [hl]
    inc e
    jr nz, jr_01c_72f8

    nop
    ld hl, $0062
    ld bc, $0700
    add b
    nop
    ld [$fca0], sp
    ld a, [hl+]
    jr nc, jr_01c_72ba

    inc b
    dec c
    ld d, b
    rrca
    ld l, [hl]

jr_01c_72ba:
    and b
    or e
    ld bc, $0501
    inc b
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0709
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc b
    ld bc, $050a
    ld b, $01
    add hl, bc
    dec b
    inc b
    jr nz, jr_01c_7356

    nop
    ld hl, $0062
    dec c
    ld d, b

jr_01c_72f8:
    rrca
    ld [hl], b
    and b
    or e
    ld bc, $0700
    add b
    nop
    ld [$fca0], sp
    ld a, [hl+]
    jr nc, jr_01c_730c

    inc b
    ld bc, $0501
    inc b

jr_01c_730c:
    ld bc, $0502
    inc b
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b
    ld bc, $0709
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc b
    ld bc, $050a
    ld b, $01
    add hl, bc
    dec b
    ld a, [bc]
    dec c
    ld d, b
    rrca
    ld [hl], c
    and b
    or e
    ld bc, $050b
    ld [$0209], sp
    ld bc, $050d
    ld b, $01
    dec bc
    dec b
    ld b, $0a
    ld bc, $050b
    inc b
    add hl, bc

jr_01c_7356:
    ld [bc], a
    ld bc, $050e
    ld b, $01
    db $10
    dec b
    ld b, $0a
    ld bc, $050b
    ld [$0d01], sp
    dec b
    ld [de], a
    ld bc, $050b
    inc b
    ld bc, $050c
    ld b, $09
    ld [bc], a
    ld bc, $050f
    ld b, $01
    ld de, $0605
    ld a, [bc]
    ld bc, $050c
    ld b, $01
    dec bc
    dec b
    inc b
    ld bc, $0521
    ld c, $09
    ld bc, $1301
    dec b
    inc b
    ld bc, $0514
    inc b
    ld bc, $0513
    inc b
    ld bc, $0512
    ld b, $01
    ld hl, $0c05
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0512
    inc b
    ld a, [bc]
    ld bc, $0822
    and b
    rst $30
    ld a, [hl+]
    ld a, a
    dec b
    inc b
    dec c
    ld d, b
    rrca
    ld [hl], d
    and b
    or e
    ld bc, $0822
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    ld [bc], a
    ld bc, $0523
    ld [bc], a
    add hl, bc
    ld bc, $2201
    dec b
    inc b
    ld bc, $0523
    inc b
    ld a, [bc]
    ld bc, $0523
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0724
    nop
    rst $38
    ld [$ff60], sp
    ld a, [hl+]
    dec b
    dec b
    inc b
    ld bc, $0525
    inc b
    ld bc, $0526
    inc b
    ld bc, $0527
    inc b
    ld bc, $0524
    inc b
    ld bc, $0525
    inc b
    ld bc, $0528
    inc b
    ld bc, $0529
    inc b
    ld bc, $0524
    inc b
    ld bc, $0525
    inc b
    ld bc, $0526
    inc b
    ld bc, $0527
    inc b
    ld bc, $0524
    inc b
    ld bc, $0525
    inc b
    ld bc, $0528
    inc b
    ld bc, $0529
    inc b
    ld a, [bc]
    dec c
    sub c
    dec hl
    nop
    rla
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    cp a
    ld d, [hl]
    inc e
    jr nz, @+$2a

    nop
    ld hl, $006a
    ld bc, $0515
    inc b
    ld bc, $0516
    ld b, $01
    rla
    dec b
    inc d
    add hl, bc
    ld [bc], a
    ld bc, $0518
    inc b
    ld bc, $0517
    inc b
    ld a, [bc]
    ld bc, $0517
    ld a, [bc]
    ld bc, $0519
    ld b, $01
    ld a, [de]
    dec b
    inc b
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    cp a
    ld d, [hl]
    inc e
    jr nz, jr_01c_74b3

    nop
    ld hl, $0062
    ld bc, $052a
    inc b
    ld bc, $052b
    inc b
    ld bc, $052c
    inc b
    ld bc, $052b
    inc b
    ld bc, $052a
    inc b
    ld bc, $052d
    inc b
    ld bc, $052e
    inc b
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    cp a
    ld d, [hl]
    inc e
    jr nz, jr_01c_7508

    nop
    ld hl, $0062
    ld bc, $052a
    inc b
    ld bc, $052b
    inc b
    ld bc, $052c

jr_01c_74b3:
    inc b
    ld bc, $052b
    inc b
    ld bc, $052a
    inc b
    ld bc, $052d
    inc b
    ld bc, $052e
    inc b
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    cp a
    ld d, [hl]
    inc e
    jr nz, jr_01c_74d5

jr_01c_74d5:
    nop
    ld hl, $003e
    add hl, bc
    ld [bc], a
    ld bc, $071b
    ret nz

    nop
    dec b
    ld [$1c01], sp
    dec b
    ld [$1d01], sp
    dec b
    ld [$1c01], sp
    dec b
    ld [$010a], sp
    dec de
    rlca
    nop
    nop
    dec b

jr_01c_74f5:
    ld b, $01
    inc e
    rlca
    nop
    ld [bc], a
    ld [$00c8], sp
    dec b
    inc b
    ld bc, $051d
    inc b
    ld bc, $051c
    inc b

jr_01c_7508:
    ld bc, $051b
    inc b
    ld bc, $051c
    inc b
    ld bc, $051d
    inc b
    ld bc, $051c
    inc b
    ld bc, $051b
    inc b
    ld bc, $291c
    sbc $05
    inc b
    ld bc, $051d
    inc b
    ld bc, $0820
    nop
    nop
    add hl, hl
    db $dd
    dec b
    inc d
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    cp a
    ld d, [hl]
    inc e
    jr nz, jr_01c_75b8

    nop
    ld hl, $0066
    ld bc, $052f
    ld [$3001], sp
    dec b
    ld [$3101], sp
    dec b
    ld [$3201], sp
    dec b
    ld [$1716], sp
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    ld l, l
    ld h, e
    inc e
    jr nz, jr_01c_74f5

    nop
    ld hl, $0049
    dec c
    ld d, b
    rrca
    ld [hl], h
    and b
    or e
    dec c
    ld d, b
    rrca
    ld [hl], l
    and b
    or e
    dec c
    ld d, b
    rrca
    halt
    and b
    or e
    ld bc, $0700
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    inc h
    ld bc, $0501
    inc a
    ld bc, $0502
    ld b, $01
    ld bc, $1c05
    ld bc, $0503
    ld [bc], a
    ld bc, $0704
    rst $20
    cp $05
    inc b
    ld bc, $0505
    ld b, $01
    ld b, $05
    ld [bc], a
    ld bc, $0807
    ldh [$fffc], a
    ld a, [hl+]
    ld c, b
    dec b
    inc b
    ld bc, $0508
    inc b
    ld d, $17
    rst $38

jr_01c_75b8:
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc

jr_01c_75bd:
    or d
    ld h, b
    ld c, [hl]
    inc b
    ld l, l
    ld h, e
    inc e
    jr nz, jr_01c_7639

    nop
    ld hl, $0045
    ld bc, $0511
    inc h
    ld bc, $0512
    inc b
    ld bc, $0513
    jr c, jr_01c_75d8

    inc d

jr_01c_75d8:
    dec b
    ld b, $01
    inc de
    dec b
    jr jr_01c_75e0

    dec d

jr_01c_75e0:
    dec b
    ld [bc], a
    ld bc, $0516
    ld [bc], a
    ld bc, $0517
    ld d, $01
    dec bc
    dec b
    ld a, [bc]
    ld bc, $070a
    db $10
    rst $38
    dec b
    ld [$0b01], sp
    rlca
    nop
    nop
    dec b
    ld [bc], a
    ld bc, $0709
    ret nc

    rst $38
    add hl, hl
    ld [bc], a
    dec b
    ld b, $01
    dec bc
    rlca
    nop
    nop
    add hl, hl
    nop
    dec b
    ld [$0c01], sp
    dec b
    ld [bc], a
    ld bc, $050d
    ld [bc], a
    add hl, bc
    inc bc
    ld bc, $070e
    and b
    nop
    dec b
    ld [$0f01], sp
    dec b
    ld a, [bc]
    ld bc, $0510
    ld [$0f01], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    ld l, l

jr_01c_7639:
    ld h, e
    inc e
    jr nz, jr_01c_75bd

    nop
    ld hl, $002d
    ld bc, $0518
    ld b, $01
    add hl, de
    dec b
    ld b, $01
    ld a, [de]
    dec b
    ld b, $01
    add hl, de
    dec b
    ld b, $01
    jr @+$07

    ld b, $01
    add hl, de
    dec b
    ld b, $01
    dec de
    dec b
    inc b
    ld bc, $051c
    inc b
    ld bc, $051f
    ld b, $01
    ld e, $05
    ld b, $01
    dec e
    dec b
    ld b, $01
    ld e, $05
    ld b, $01
    rra
    dec b
    ld b, $01
    ld e, $05
    ld b, $01
    dec e
    dec b
    ld b, $01
    ld e, $05
    ld b, $01
    rra
    dec b
    inc b
    ld bc, $0520
    ld [$1f01], sp
    dec b
    ld b, $01
    ld e, $05
    ld b, $01
    dec e
    dec b
    ld b, $01
    ld e, $05
    ld b, $01
    rra
    dec b
    ld b, $09
    inc bc
    ld bc, $071e
    add b
    nop
    dec b
    ld [$1d01], sp
    dec b
    ld a, [bc]
    ld bc, $051e
    ld [$1f01], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld d, $17
    rst $38
    dec c
    rrca
    ld b, e
    ld d, b
    inc bc
    or d
    ld h, b
    ld c, [hl]
    inc b
    ld l, l
    ld h, e
    inc e
    jr nz, jr_01c_771c

    nop
    ld hl, $0045
    add hl, bc
    inc bc
    ld bc, $0524
    inc c
    ld bc, $0525
    ld [$2601], sp
    dec b
    db $10
    ld bc, $0525
    ld [$010a], sp
    inc h
    dec b
    inc c
    ld bc, $0525
    ld [$2601], sp
    dec b
    ld c, $01
    ld a, [hl+]
    rlca
    nop
    rst $38
    ld [$fe80], sp
    add hl, hl
    db $10
    ld a, [hl+]
    ld b, h
    dec b
    ld [bc], a
    ld bc, $052b
    inc b
    ld bc, $052c
    inc b
    ld bc, $0727
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    inc d
    add hl, bc
    ld [bc], a
    ld bc, $0524
    inc b
    ld bc, $0527
    inc b
    ld a, [bc]
    ld bc, $0527
    ld b, $09
    inc bc

jr_01c_771c:
    ld bc, $0528
    inc b
    ld bc, $0529
    inc b
    ld a, [bc]
    ld bc, $0527
    ld b, $01
    inc h
    dec b
    ld a, [bc]
    add hl, bc
    inc bc
    ld bc, $0726
    nop
    ld [bc], a
    ld [$fe00], sp
    ld a, [hl+]
    ld [hl], d
    dec b
    ld [$2401], sp
    rlca
    ret nz

    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld a, [bc]
    ld a, [bc]
    ld bc, $0726
    nop
    ld [bc], a
    ld [$fe00], sp
    ld a, [hl+]
    ld [hl], d
    dec b
    ld [$910d], sp
    dec hl
    nop
    nop
    nop
    nop
    nop

jr_01c_775c:
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
    jr nz, jr_01c_7784

    inc b
    ld c, h

jr_01c_7784:
    nop
    nop
    jr nz, jr_01c_7788

jr_01c_7788:
    nop
    nop
    nop
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    inc d
    ld d, b
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01c_77bf:
    rst $38
    ld b, b
    nop
    jp nz, Jump_000_080c

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01c_775c

    ld [bc], a
    ld [$0100], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld b, b
    nop
    sub d
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01c_77bf

    ld bc, $ff04
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_01c_7844

jr_01c_7844:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01c_784c

jr_01c_784c:
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    db $10
    xor d
    add h
    sub e
    ld h, d
    nop
    ld bc, $1028
    ret z

    add c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $1010
    ld d, b
    nop
    add d
    nop
    nop
    nop
    jr nz, jr_01c_789c

jr_01c_789c:
    nop
    inc b
    add b
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
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    ld bc, $0000
    nop
    add b
    and b
    db $10
    ld [hl], d
    nop
    nop
    dec b
    nop
    nop
    inc b
    jr nz, jr_01c_78ee

    ld b, h
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01c_78ee:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    stop
    nop
    db $10
    inc b
    nop
    nop
    nop
    db $10
    dec b
    ret nc

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
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01c_794a

jr_01c_794a:
    nop
    nop
    ld [hl+], a
    inc bc
    nop
    nop
    ld b, b
    jr z, jr_01c_7953

jr_01c_7953:
    ret nz

    ld bc, $0980
    nop
    nop
    dec b
    ld l, b
    ld [bc], a
    ret nc

    add c
    nop
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    stop
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    db $10
    inc b
    nop
    nop
    ld bc, $0014
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld b, c
    inc l
    dec b
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0000
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
    ld [bc], a
    dec b
    inc d
    nop
    ld hl, $0440
    ld [bc], a
    inc [hl]
    jr nz, jr_01c_79ec

    jr z, jr_01c_7a02

    ld b, b
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01c_79ec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_01c_7a02:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    ret nz

    nop
    inc b
    nop
    nop
    ld bc, $2040

jr_01c_7a1f:
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
    jr nz, jr_01c_7a46

jr_01c_7a46:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    db $10
    jr nz, jr_01c_7a52

jr_01c_7a52:
    nop
    ld b, b
    add b
    ld b, [hl]
    ld [bc], a
    ld h, b
    ld b, b
    dec b
    nop

jr_01c_7a5b:
    ld [$4008], sp
    inc b
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    nop
    stop
    add b
    ld [bc], a
    nop
    nop
    nop
    ld [$0000], sp
    inc b
    ld b, b
    nop
    add b
    add b
    nop
    inc l
    inc b
    ld b, d
    ld bc, $0000
    dec b
    jr nz, jr_01c_7a1f

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
    ld [$0000], sp
    stop
    nop
    ld bc, $0000
    ld bc, $4000
    inc b
    ld [hl+], a
    call nc, $0000
    jr nz, jr_01c_7ad8

jr_01c_7ad8:
    add b
    jr z, jr_01c_7a5b

    nop
    nop
    ld bc, $a440
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$0000], sp
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
    ld a, [bc]
    ld b, b
    nop
    nop
    ld [$a400], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    ld b, b
    ld b, d
    ld bc, $4001
    ld b, b
    nop
    ld bc, $041a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    jr nz, jr_01c_7b95

jr_01c_7b95:
    inc b
    ld b, b
    nop
    nop
    nop
    jr nz, jr_01c_7b9c

jr_01c_7b9c:
    nop
    nop
    jr nc, @+$33

    rst $38
    rst $38
    rst $38
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
    jr nz, @+$03

    ld [$0480], sp
    ld h, $88
    nop
    nop
    add c
    and b
    add l
    inc d
    ld [bc], a
    and b
    nop
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
    add b
    ld b, d
    ld bc, $0009
    ld [bc], a
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_01c_7c2e

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

jr_01c_7c2e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec b
    nop
    add b
    jr nz, jr_01c_7c5a

    nop
    db $10
    ld b, b
    nop
    nop
    stop
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

jr_01c_7c5a:
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
    ld b, b
    ld [$0080], sp
    nop
    add b
    nop
    nop
    jr nz, jr_01c_7c8b

jr_01c_7c8b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    ld [bc], a
    inc b
    nop
    ld bc, $0040
    nop
    nop
    ld b, b
    nop
    nop
    ld [$1103], sp
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
    ld [bc], a
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
    add b
    ld bc, $0001
    nop
    nop
    nop
    nop
    stop
    ld [$2040], sp
    jp Jump_000_0081


    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    ld [$0000], sp
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
    add b
    ld b, d
    ld [$8048], sp
    nop
    ld bc, $6008
    nop
    ld b, $02
    adc c
    nop
    ld bc, $0001
    nop
    nop
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    inc bc
    ld b, c
    ld [bc], a
    nop
    ld bc, $0000
    ld [hl+], a
    nop
    jr nz, jr_01c_7d8c

jr_01c_7d8c:
    stop
    ld a, [bc]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    adc c
    nop
    jr nc, jr_01c_7dc5

jr_01c_7dc5:
    ld h, b
    ld [bc], a
    nop
    nop
    nop
    and b
    ld b, h
    add b
    nop
    jr nz, jr_01c_7e20

    add b
    nop
    nop
    nop
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld d, b
    nop
    ld [$2000], sp
    nop
    ld [$2000], sp
    ld b, b
    nop
    ld [$0210], sp
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

jr_01c_7e20:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, $02
    ld b, e
    nop
    jr nz, jr_01c_7e47

jr_01c_7e47:
    ld h, h
    jr nc, @+$07

    ld b, $09
    nop
    nop
    add $00
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
    ld [bc], a
    db $10
    ld [bc], a
    ld bc, $0004
    ld [hl], b
    nop
    nop
    ld [$0200], sp
    nop
    nop
    ld [$0000], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0848
    inc b
    adc b
    nop
    jr nc, jr_01c_7ec9

jr_01c_7ec9:
    nop
    ld [$0000], sp
    nop
    and c
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
    jr nz, jr_01c_7f05

jr_01c_7f05:
    ld bc, $a400
    nop
    nop
    ld b, c
    nop
    nop
    inc b
    db $10
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
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01c_7f3d:
    rst $38
    rst $38
    rst $38
    add h
    dec h
    jr z, jr_01c_7f3d

    xor c
    ld b, h
    add b
    ld h, b
    ld [$8028], sp
    ld c, h
    ld [$a850], sp
    ld b, h
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
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
    jr nz, jr_01c_7f8c

    jr z, jr_01c_7f86

jr_01c_7f86:
    and b
    ld c, b
    stop
    ld [bc], a
    ret nc

jr_01c_7f8c:
    ld b, b
    nop
    ld l, b
    inc l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    nop
    add hl, bc
    sub d
    ld bc, $0420
    ld c, $05
    inc b
    nop
    jr z, jr_01c_7fce

    nop

jr_01c_7fce:
    jr nz, @+$5e

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
    ei
    rst $38
    rst $38
    rst $28
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
