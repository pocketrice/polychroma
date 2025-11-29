; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    ld bc, $0105
    ld bc, $4705
    nop
    ld b, b
    ld d, $78
    ld a, a
    inc de
    ld [hl], $4d
    ld [$0000], sp
    cp [hl]
    daa
    ld bc, $5c00
    dec h
    nop
    inc h
    ld bc, $d605
    sub $01
    ld bc, $96d6
    adc c
    nop
    dec bc
    nop
    ld e, d
    call nz, Call_000_1900
    inc c
    ld d, c
    ld e, h
    ld [hl], a
    nop
    ld e, l
    ld bc, $6e01
    ld bc, $9e54
    ld e, b
    ld d, l
    add h
    nop
    inc d
    ld [bc], a
    and $51
    ld bc, $0424
    dec b
    sbc [hl]
    sbc [hl]
    inc b
    inc b
    adc a
    sub $29
    inc b
    dec b
    sub [hl]
    sbc [hl]
    inc b
    inc b
    sbc [hl]
    adc a
    dec h
    inc b
    ld bc, $8f9e
    ld [hl+], a
    sub $04
    sub [hl]
    ld e, c
    sbc [hl]
    sbc [hl]
    sub a
    inc hl
    sub $83
    nop
    ld b, e
    nop
    ld e, b
    add h
    nop
    ld h, d
    ld bc, $d697
    add a
    nop
    ld l, e
    nop
    sbc [hl]
    add h
    nop
    ld h, c
    inc bc
    sub $d6
    adc [hl]
    adc a
    add l
    nop
    ld l, l
    ld c, $04
    inc b
    sbc [hl]
    ccf
    inc b
    inc b
    sub $27
    inc b
    inc b
    ld e, b
    adc a
    inc b
    inc b
    ld e, c
    add [hl]
    nop
    ld d, [hl]
    add a
    nop
    adc l
    ld [bc], a
    sub $96
    sbc [hl]
    add [hl]
    nop
    ld l, b
    ld bc, $96d6
    push bc
    nop
    ld [hl], d
    nop
    ld e, e
    add [hl]
    nop
    ld a, b
    add e
    nop
    ld h, h
    ld bc, $0404
    dec l
    sub $84
    nop
    and a
    inc b
    inc b
    sub $d6
    inc b
    inc b
    adc e
    nop
    db $dd
    ld bc, $8ed6
    call $e800
    inc bc
    adc [hl]
    sbc [hl]
    sbc [hl]
    adc a
    adc c
    nop
    reti


    add e
    nop
    ld h, h
    add [hl]
    nop
    ld [hl], c
    inc bc
    sub $04
    inc b
    adc a
    add a
    nop
    or a
    ld bc, $8f9e
    add l
    nop
    ld l, h
    add h
    nop
    ld [hl], e
    nop
    daa
    add [hl]
    nop
    or e
    rrca
    inc b
    inc b
    jr jr_014_40fd

    sbc [hl]
    adc a
    ld b, [hl]
    ld b, [hl]
    sub $96
    jr @+$1a

    ccf
    sub $46
    ld b, [hl]
    add e
    nop
    ld b, e
    add hl, bc
    jr @+$1a

    ld e, b
    adc a
    ld b, [hl]
    ld b, [hl]
    sub [hl]
    sub a

jr_014_40fd:
    ld b, [hl]
    ld b, [hl]
    add l

Jump_014_4100:
    ld bc, $873d
    ld bc, $0051
    sub $84

jr_014_4108:
    ld bc, HeaderMaskROMVersion
    sub [hl]
    ld e, c
    add l
    ld bc, $0161
    ccf
    sub $85
    ld bc, $015b
    ld b, [hl]
    ld b, [hl]
    add e
    ld bc, $0171
    sub a
    ld e, e

jr_014_411f:
    add a
    ld bc, $0169
    sub $d6
    add a
    ld bc, $0357
    ld b, [hl]
    ld b, [hl]
    adc [hl]
    adc a
    rst $00

jr_014_412e:
    ld bc, $8470
    ld bc, $0099
    ld e, b
    rst $00
    ld bc, $0062

jr_014_4139:
    adc [hl]
    add e
    ld bc, $0044
    daa
    ret z

    ld bc, $0454
    adc [hl]
    jr jr_014_415e

    adc a
    sub $83
    ld bc, $c381
    ld bc, $8a42
    ld bc, $0424
    sub $96
    sbc [hl]
    inc b
    inc b
    add a
    ld bc, $8523
    nop
    ld [hl], e
    add [hl]

jr_014_415e:
    nop
    rst $08
    nop
    ld e, e
    adc c
    ld bc, $0027
    ld b, [hl]
    ld [hl+], a
    sub $06
    ld b, [hl]
    sub $8e
    sbc [hl]
    ld e, c
    jr jr_014_4108

    push bc
    ld [bc], a
    inc bc
    ld b, c
    ld b, [hl]
    sub $83
    ld bc, $0058
    ld e, e
    push bc
    ld [bc], a
    inc d
    inc bc
    adc [hl]
    adc a
    ld b, [hl]
    sub $85
    ld bc, $00a3
    sub $84
    ld bc, $075c
    sbc [hl]

jr_014_418e:
    jr jr_014_411f

    ld b, [hl]
    ld e, d
    ld b, [hl]
    sub $d6
    rst $00
    ld [bc], a
    ld d, $08
    jr jr_014_4139

    sbc [hl]
    ld e, b
    jr jr_014_412e

    adc [hl]
    adc a
    ld e, d
    add $02
    dec b
    nop
    ld e, e
    add h
    nop
    ld h, [hl]
    inc bc
    sub [hl]
    sbc [hl]
    sbc [hl]
    adc a
    adc b
    ld bc, $010b
    sub [hl]
    sub a
    add h
    nop
    cp d
    ld [bc], a
    adc a
    adc [hl]
    adc a
    ret


    nop
    pop hl
    nop
    adc [hl]
    inc hl
    sbc [hl]
    ld bc, $8f9e
    adc b
    nop
    rst $08
    ld [bc], a
    sub [hl]
    sbc [hl]
    sbc [hl]
    add $00
    add h
    adc e
    ld [bc], a
    add c
    nop
    sub a
    add h
    ld bc, $00ff
    ld b, [hl]
    add h
    ld [bc], a
    and b
    inc b
    inc b
    jr jr_014_423a

    sub a
    ld b, [hl]
    add l
    ld bc, $841f
    nop
    ret nc

    nop
    inc b
    add [hl]
    ld bc, $023b
    adc a
    ld e, d
    ld b, [hl]
    rlc d
    xor d
    add e
    ld [bc], a
    ld a, e
    ret z

    ld [bc], a
    cp d
    add l
    ld [bc], a
    ld a, $c7
    ld [bc], a

Call_014_4200:
    xor e
    ld bc, $8f8e
    add e
    ld bc, $006e
    jr jr_014_418e

    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld b, [hl]
    sub $5a
    add e
    ld bc, $04c4
    inc b
    inc b
    sub $96
    sub a
    adc c
    ld [bc], a
    ld [hl], e
    nop
    sub a
    adc d
    ld [bc], a
    adc a
    add h
    nop
    ld h, a
    inc bc
    inc b
    inc b
    adc a
    ld e, d
    adc c
    ld [bc], a
    ld [hl], c
    inc bc
    adc a
    sub $04
    inc b
    adc b
    ld bc, $0006
    sub [hl]
    add l
    inc bc
    dec de
    dec b

jr_014_423a:
    jr @+$1a

    sub a
    sub $46
    ld b, [hl]
    add a
    ld bc, $0391
    inc b
    inc b
    sub [hl]
    sub a
    add a
    ld bc, $cba1
    ld bc, $0094
    sub $cc
    inc bc
    ld h, a
    ld bc, $8f8e
    adc h
    ld bc, $8697
    ld bc, $01c4
    sub $8e
    add h
    ld bc, $01ad
    adc [hl]
    ld e, b
    add e
    nop
    or e
    adc c
    nop
    cp b
    ld [bc], a
    sub [hl]
    sbc [hl]
    sub a
    adc c
    inc bc
    ld [bc], a
    add e
    nop
    cp a
    nop
    ld e, e
    adc d
    ld [bc], a
    ld [hl], c
    ld bc, $0404
    adc c
    nop
    reti


    nop
    sub [hl]
    adc h
    ld [bc], a
    adc h
    add e
    nop
    cp c
    adc [hl]
    inc bc
    call $d601
    ld e, e
    add l
    ld bc, $02ee
    adc [hl]
    adc a
    ld e, d
    adc e
    nop
    rst $10
    rlca
    adc [hl]
    sbc [hl]
    inc b
    sbc [hl]
    adc a
    sub $d6
    inc b
    adc e
    inc bc
    jp $9e02


    ld e, b
    adc a
    adc d
    inc bc
    ld a, [$9e05]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    adc a
    adc h
    inc b
    dec bc
    ld [bc], a
    sbc [hl]
    ld e, c

jr_014_42b8:
    sub a
    adc d
    ld [bc], a
    ld e, e
    inc b
    sub [hl]
    inc b
    inc b
    adc a
    sub $cb
    ld bc, $0314
    ld e, e
    sub [hl]
    sub a
    sub $86
    ld bc, $8e1b
    nop
    jp nc, $9e02

    ld e, b
    adc a
    adc h
    nop
    call nc, $0183
    ld b, c
    add [hl]
    ld [bc], a
    dec h
    add a
    ld bc, $004c
    sub a
    call nz, Call_000_3a02
    ld bc, $8f8e
    add l
    ld [bc], a
    inc l
    nop
    ld e, c
    add h
    ld bc, $845a
    ld bc, $83c3
    ld bc, $879d
    ld [bc], a
    db $f4
    ld [bc], a
    sbc [hl]
    jr jr_014_4315

    add h
    ld [bc], a
    adc h
    add a
    ld [bc], a
    ld [hl], e
    adc h
    ld [bc], a
    adc c
    nop
    sub [hl]
    add h
    inc b
    rst $00
    sbc b
    inc b
    cp h
    adc b
    inc b
    add $01
    sbc [hl]
    rst $00
    rst $38

jr_014_4315:
    ld a, $11
    ld hl, $03ff
    rst $38
    ld [$8860], sp
    jr c, jr_014_42b8

    ld [hl], b
    cp a
    add d
    ld h, [hl]
    ld bc, $0101
    ld bc, $0301
    nop
    ld b, b
    ld d, $15
    ld b, e
    inc d
    ld a, [hl-]
    ld c, l
    ld [$0100], sp
    or [hl]
    ld e, l
    inc h
    ld bc, $5401
    ld d, l
    ld [hl+], a
    ld bc, $0323
    nop
    xor a
    add h
    nop
    inc b
    inc bc
    ld d, h
    nop
    nop
    ld d, l
    add l
    nop
    ld a, [bc]
    inc bc
    nop
    ld d, l
    ld bc, $2554
    nop
    ld bc, $55ac
    inc hl
    inc bc
    dec hl
    inc b
    add l
    nop
    inc l
    inc hl
    add a
    rlc b
    ld b, l
    inc hl
    add e
    rlc b
    ld d, l
    dec h
    add l
    nop
    ld [hl], $ce
    nop
    ld h, d
    ld bc, $832e
    jp z, Jump_014_4100

    nop
    adc h
    ret


    nop
    add l
    ld a, [bc]

jr_014_437b:
    nop
    ld e, l
    ld d, c
    ld e, h
    inc b
    ld e, l
    ld d, c
    inc b
    ld e, h
    ld e, l
    ld e, h
    call nz, Call_000_2000
    add e
    nop
    ld bc, $0423
    inc bc
    ld d, l
    ld bc, $ae01
    add $00
    rrca
    inc hl
    ld bc, $5c04
    ld e, l
    ld bc, $b754
    db $e4
    ld b, e
    inc bc
    rst $38
    ld l, $37
    ld a, [bc]
    dec b
    ld b, $07
    inc c
    rst $38
    inc b
    dec b
    inc b
    ld bc, $0401
    inc bc
    inc b
    rst $38
    add sp, -$78
    ret c

    adc b
    cp b
    ld a, b
    jr z, jr_014_43bb

jr_014_43bb:
    ld e, b
    sbc b
    ldh [$ff60], a
    ret c

    ld h, b
    add sp, $58
    jr jr_014_43ed

    ld l, b
    ld a, b
    xor b
    ret c

    nop
    adc b
    jr z, jr_014_43cd

jr_014_43cd:
    sbc b
    sbc b
    call z, $98cc
    call z, $78cc
    sbc b
    ret z

    jr jr_014_43f1

    add sp, $18
    ld hl, sp+$28
    ld [$b8d8], sp
    ld e, b
    jr jr_014_437b

    sub b
    sbc b
    ld e, b
    ld d, b
    add [hl]
    add [hl]
    sbc a
    sbc a
    add [hl]
    sbc a

jr_014_43ed:
    sbc a
    inc d
    add [hl]
    dec c

jr_014_43f1:
    rrca
    rrca
    dec c
    rrca
    ld a, [de]
    dec c
    dec c
    ld a, [de]
    ld a, [de]
    add [hl]
    ld a, [de]
    add [hl]
    dec hl
    add [hl]
    add [hl]
    dec hl
    ld [bc], a
    inc b
    ld bc, $1504
    scf
    nop
    ld b, b
    ld d, $a2
    ld b, e
    inc d
    ld b, d
    ld c, l
    ld [$e400], sp
    cpl
    inc bc
    nop
    cp [hl]
    inc h
    ld bc, $5401
    ld d, l
    add e
    nop
    inc sp
    ld [hl+], a
    nop
    nop
    ld e, l
    add h
    nop
    inc sp
    ld b, $54
    nop
    nop
    ld d, l
    ld bc, $5c01
    add [hl]
    nop
    dec a
    ld bc, $0000
    add [hl]
    nop
    inc a
    nop
    ld e, h
    adc l
    nop
    ld c, [hl]
    dec h
    ld bc, $0083
    ld c, e
    ld bc, $5d5c
    adc c
    nop
    ld sp, $0100
    adc b
    nop
    ld [hl], l
    add e
    nop
    ld b, l
    nop
    sbc b
    daa
    ld bc, $0084
    dec sp
    ld c, $5c
    ld e, l
    sbc b
    ld bc, $9898
    ld bc, $9801
    sbc b
    and b
    sub b
    cp b
    db $10
    cp b
    inc hl
    sbc b
    add hl, bc
    ld bc, $9898
    ld [hl], c
    ld [hl], c
    sbc b
    and b
    sub b
    sub b
    or b
    inc h
    sbc b
    ld b, $a0
    ld bc, $9898
    ld d, h
    ld d, l
    ld d, h
    adc b
    nop
    ld h, h
    inc bc
    ld e, h
    ld bc, $a098
    adc c
    nop
    ld h, d
    add e
    nop
    ld [hl], $00
    and b
    inc h
    sub b
    add h
    nop
    xor e
    add e
    nop
    or [hl]
    nop
    ld d, h
    adc h
    nop
    ldh [c], a
    ld bc, $b890
    db $e4
    cpl
    inc bc
    add a
    nop
    sub d
    nop
    ld e, l
    add l
    nop
    ld l, [hl]
    nop
    nop
    adc d
    ld bc, $0231
    ld bc, $5c01
    add [hl]
    ld bc, $023e
    ld e, h
    nop
    ld d, l
    add a
    nop
    sub e
    add l
    nop
    inc [hl]
    ld bc, $5d5c
    add h
    nop
    inc [hl]
    ld [bc], a
    ld e, h
    nop
    nop
    adc b
    ld bc, $8444
    nop
    ld b, l
    dec b
    ld e, h
    nop
    and b
    nop
    nop
    ld d, l
    add [hl]
    nop
    sub h
    ld b, $75
    ld e, l
    ld bc, $5c01
    stop
    add l
    ld bc, $0881
    ld e, h
    nop
    nop
    ld a, b
    ld d, l
    ld bc, $0101

jr_014_44eb:
    and b
    add [hl]
    nop
    db $e4
    inc c
    and b
    sub b
    sub b
    inc b
    sub b
    or b
    sbc b
    ld bc, $9090
    sub b
    sub b
    or b
    add l
    nop
    and l
    add e
    nop
    push hl
    ld bc, $5d01
    add l
    nop
    ld c, e
    add e
    nop
    ld e, h
    inc bc
    ld e, h
    nop
    or b
    sbc b
    adc c
    nop
    ld a, a
    add e
    nop
    add hl, sp
    ld [bc], a
    sub b
    or b
    ld bc, $9829
    dec b
    and b
    nop
    nop
    sub b
    sub b
    ld d, l
    add a
    ld bc, $0ae3
    or b
    sbc b
    db $10
    adc h
    adc h
    sub b
    sub b
    ld e, l
    ld e, h
    sub b
    sub b
    add h
    nop
    ld [hl], h
    ld bc, $b054
    add h
    nop
    jp nc, Jump_014_5503

    ld bc, $b810
    add [hl]
    ld bc, $00d7
    sub b
    inc h
    nop
    add l
    nop
    or b
    ld [bc], a
    sbc b
    db $10
    sub b
    jp $fe01


    ld [bc], a
    sub b
    sub b
    sub b
    add [hl]
    nop
    and b
    inc bc
    ld bc, $b85c
    db $10
    add e
    ld bc, $00eb
    ld e, l
    add a
    ld [bc], a
    jr nc, jr_014_44eb

    nop
    ret nc

    ld [bc], a
    sub b
    cp b
    ld bc, $0286
    jr nz, jr_014_4572

    sbc b

jr_014_4572:
    sbc b
    add e
    ld bc, $02f9
    cp b
    sbc b
    sbc b
    adc c
    ld [bc], a
    ld b, b
    rrca
    sbc b
    ld e, h
    ld e, l
    sbc b
    sbc b
    ld d, h
    ld bc, $a098
    ld d, l
    ld d, h
    or b
    sbc b
    ld bc, $b054
    add l
    ld [bc], a
    ld b, [hl]
    ld bc, $a001
    add e
    ld [bc], a
    ld a, [hl+]
    dec c
    or b
    and b
    sub b
    nop
    ld d, l
    ld [hl], c
    ld [hl], c
    sbc b
    db $10
    sub b
    ld bc, $9010
    nop
    add l
    ld [bc], a
    jr jr_014_45aa

jr_014_45aa:
    ld e, l
    add a
    ld [bc], a
    ld a, e
    ld [bc], a
    nop
    nop
    sub b
    add [hl]
    nop
    xor b
    inc bc
    and b
    sub b
    sub b
    ld d, h
    add e
    ld [bc], a
    add hl, hl
    add l
    nop
    and $84
    ld [bc], a
    dec h
    add a
    ld [bc], a
    nop
    nop
    ld bc, $0085
    and e
    inc bc
    sub b
    ld bc, $b810
    add a
    nop
    ld a, d
    ld bc, $a098
    add e
    ld [bc], a
    dec l
    add [hl]
    nop
    jp hl


    ld [$0198], sp
    ld d, h
    ld d, l
    ld e, h
    ld e, l
    ld e, h
    sub b
    ld bc, $0285
    cp d
    ld bc, $98b8
    add l
    nop
    ld b, l
    inc bc
    db $10
    ld bc, $9898
    add l
    nop
    ld b, d
    ld [bc], a
    or b
    sbc b
    ld e, h
    add e
    ld [bc], a
    ld c, h
    ld [bc], a
    ld d, l

Call_014_4600:
    sbc b
    sbc b
    add l
    nop
    ld d, d
    nop
    cp b
    add e
    ld [bc], a
    ld [hl], $06
    sbc b
    ld bc, $98b8
    and b
    adc h
    adc h
    add e
    nop
    db $e4
    rst $00
    ld [bc], a
    ld d, [hl]
    ld b, $98
    stop
    nop
    cp b
    db $10
    ld e, l
    adc [hl]
    ld [bc], a
    ld h, b
    jp z, $6802

    add e
    ld [bc], a
    ld d, d
    ret


    ld [bc], a
    ld e, c
    nop
    ld d, l
    adc d
    inc bc
    ld b, l
    add e
    ld [bc], a
    ld [hl], h
    add [hl]
    inc bc
    ld b, h
    nop
    ld d, h
    add h
    inc bc
    db $10
    dec b
    cp b
    sbc b
    ld bc, $01b0
    ld bc, $0085
    or e
    add hl, bc
    ld d, l
    ld d, h
    adc h
    adc h
    or b
    sbc b
    ld bc, $5500
    ld bc, $0384
    cpl
    add a
    inc bc
    inc d
    add [hl]
    nop
    or a
    nop
    db $10
    add [hl]
    nop
    db $e3
    inc bc
    ld bc, $9090
    cp b
    add a
    ld [bc], a
    cp b
    nop
    cp b
    call nz, $e302
    add e
    ld bc, $8756
    nop
    ld a, [hl]
    add e
    inc bc
    cp l
    add a
    ld bc, $0281
    ld d, l
    ld d, h
    ld d, l
    add $02
    inc sp
    ld bc, $98b8
    add a
    nop
    add hl, sp
    add a
    inc bc
    xor l
    add l
    nop
    ld a, [hl-]
    adc b
    inc bc
    ld b, a
    add h
    ld bc, $03ca
    db $10
    sub b
    sub b
    cp b
    add l
    ld [bc], a
    rst $00
    add l
    ld bc, $03d9
    and b
    sub b
    cp b
    sbc b
    add [hl]
    inc b
    dec c
    add l
    nop
    ld d, d
    ld bc, $b000
    add [hl]
    nop
    xor h
    ld bc, $5c01
    add a
    inc bc
    sub a
    add h
    nop
    xor l
    inc bc
    and b
    ld d, l
    ld bc, $865c
    ld bc, $07c0
    ld bc, $9801
    ld bc, $90a0
    nop
    ld d, l
    adc c
    nop
    ld a, a
    inc bc
    sbc b
    ld d, h
    sub b
    sub b
    adc c
    nop
    ld h, [hl]
    add e
    ld bc, $026a
    sub b
    sub b
    ld e, l
    adc d
    nop
    sub b
    add e
    ld [bc], a
    rrca
    adc e
    nop
    ld l, b
    add e
    ld [bc], a
    cpl
    ld [bc], a
    ld bc, $5401
    adc b
    ld bc, $0357
    sub b
    ld bc, $9898
    add a
    ld bc, HeaderNewLicenseeCode
    and b
    sub b
    add [hl]
    ld [bc], a
    dec l
    add l
    ld bc, $0155
    ld d, h
    sub b
    add a
    inc b
    xor h
    add h

Jump_014_4704:
    inc bc
    ld b, $01
    and b
    sub b
    add l
    ld [bc], a
    ld bc, $0385
    ld de, $b800
    adc c
    inc b
    ld [$0186], sp
    and b
    add l
    nop
    ld e, e
    ld bc, $0198
    adc b
    inc bc
    or a
    add h
    nop
    dec [hl]
    ld [bc], a
    sbc b
    ld e, h
    ld e, l
    add [hl]
    ld [bc], a
    ldh a, [rSB]
    nop
    ld d, l
    rst $00
    inc b
    inc d
    add l
    nop
    jp hl


    add [hl]
    inc bc
    ld sp, hl
    nop
    sbc b
    add a
    ld [bc], a
    inc de
    add e
    ld [bc], a
    or [hl]
    add a
    dec b
    dec e
    ld bc, $005c
    add a
    ld [bc], a
    or l
    add e
    ld bc, $01df
    sbc b
    sbc b
    adc b
    inc b
    ld d, a
    add l
    dec b
    ld a, $86
    nop
    adc a
    adc d
    dec b
    dec bc
    ld [bc], a
    sbc b
    sbc b
    sbc b
    add a
    inc bc
    ld h, l
    ld bc, $0155
    add [hl]
    ld bc, $83f3
    inc bc
    ld a, [hl+]
    add [hl]
    inc bc
    sbc [hl]
    add l
    ld bc, $c678
    ld [bc], a
    inc [hl]
    ld [bc], a
    cp b
    and b
    or b
    add a
    nop
    dec sp
    add e
    inc bc
    xor l
    nop
    ld e, l
    add e
    ld bc, $893b
    dec b
    ld [hl], $00
    cp b
    add l
    nop
    add hl, sp
    ld bc, $b090
    ret z

    dec b
    ld l, b
    add l
    nop
    ldh a, [rSB]
    sub b
    ld d, l
    adc c
    inc b
    ld c, $22
    sub b
    ld bc, $9090
    add [hl]
    dec b
    sbc c
    inc b
    sbc b
    db $10
    cp b
    db $10
    sub b
    add e
    nop
    ld h, h
    adc d
    dec b
    ld c, c
    nop
    db $10
    add a
    nop
    dec a
    add a
    ld [bc], a
    ld h, l
    add l
    nop
    ld sp, $9002
    sub b
    or b
    ret


    dec b
    ld d, c
    ld [bc], a
    ld bc, $5c01
    add e
    ld bc, $00b1
    sbc b
    jp z, Jump_014_6f05

    add e
    ld bc, $00ba
    sbc b
    jp z, $5f03

    ld [bc], a
    and b
    sub b
    cp b
    add l
    inc b
    ld a, $00
    ld bc, $0389
    jp $0105


    ld bc, $90a0
    nop
    ld d, l
    add hl, hl
    ld bc, $5401
    ld d, h
    add e
    nop
    db $e4
    add hl, hl
    sbc b
    dec b
    db $10
    ld e, h
    sub b
    sub b
    sub b
    or b
    add hl, hl
    sbc b
    dec b
    inc b
    ld bc, $9010
    nop
    ld e, l
    adc b
    nop
    ld a, c
    add h
    inc bc
    sub d
    nop
    ld e, l
    add [hl]
    ld bc, $c876
    dec b
    ld e, d
    ld b, $04
    sbc b
    and b
    sub b
    sub b
    sub b
    cp b
    add l
    dec b
    ld a, [hl-]
    adc e
    inc bc
    or e
    ld [bc], a
    sbc b
    sbc b
    inc b
    adc h
    ld b, $44
    ld bc, $5554
    inc l
    ld bc, $5402
    nop
    ld e, l
    adc [hl]
    ld b, $d0
    inc l
    ld bc, $0485
    ld [$0089], a
    ld a, [hl]
    ld [$005c], sp
    or b
    sbc b
    ld bc, $0198
    ld bc, $9601
    ld bc, $03d4
    sub b
    sub b
    sub b
    cp b
    adc d
    ld bc, $83df
    ld [bc], a
    daa
    nop
    or b
    adc e
    ld b, $cc
    add h
    inc bc
    dec bc
    adc b
    inc bc
    pop de
    ld bc, $0101
    add h
    inc bc
    dec de
    add a
    ld bc, $01b1
    sub b
    or b
    add l
    ld [bc], a
    ld [hl-], a
    inc bc
    inc b
    sub b
    sub b
    cp b
    add [hl]
    ld [bc], a

jr_014_486f:
    ldh a, [c]
    add e
    inc bc
    dec hl
    add e
    nop
    ld e, d
    add l
    ld bc, $cb42
    dec b
    ld h, d
    add e
    ld b, $97
    adc e
    dec b
    ld c, c

jr_014_4882:
    nop
    db $10
    adc b
    ld b, $71
    ld bc, $0401
    adc l
    ld b, $b1
    adc b
    ld b, $f3
    nop
    ld e, l
    db $e4
    dec [hl]
    ld bc, $bf00

jr_014_4897:
    rst $38
    ld a, [hl-]
    ld bc, $0c16
    nop
    scf
    rst $38
    rlca
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    rst $38
    ld e, b
    ld a, b
    sbc b
    cp b
    ret c

    ld hl, sp-$38
    jr c, @+$5a

    ld a, b
    sbc b
    cp b
    ret c

    ld hl, sp+$58
    jr jr_014_486f

    ld a, b
    sbc b
    cp b
    ret c

    ld hl, sp+$18
    jr c, jr_014_4917

    jr z, jr_014_4939

    ret z

    ret c

    ld hl, sp+$18
    ret z

    jr c, jr_014_4920

    jr c, jr_014_4882

    ld a, b
    sbc b
    cp b
    jr c, jr_014_4897

    ld e, b
    ld a, b
    sbc b

jr_014_48d2:
    cp b
    ret z

    ret c

    ld hl, sp+$18
    ld a, b
    sbc b
    cp b
    ret c

    jr jr_014_4915

    ld e, b
    ld [$4868], sp
    jr c, @+$2a

    jr jr_014_492d

    jr c, jr_014_491f

    jr jr_014_4931

    jr c, jr_014_4913

    jr jr_014_4935

    jr c, jr_014_492f

    jr z, jr_014_4929

    jr c, jr_014_491b

    jr jr_014_493d

    jr c, jr_014_491f

    jr jr_014_4941

    ld a, h
    ld a, h
    ld l, b
    ld c, b
    jr c, jr_014_4927

    ld a, b

Call_014_4900:
    jr jr_014_494a

    jr c, jr_014_493c

    jr c, jr_014_492e

    jr jr_014_4920

    ld l, b
    ld c, b
    jr c, jr_014_4934

    jr jr_014_4946

    ld c, b
    jr c, jr_014_4939

    jr c, @+$2a

jr_014_4913:
    jr jr_014_495d

jr_014_4915:
    jr z, jr_014_492f

jr_014_4917:
    ld c, b
    ld l, b
    jr z, jr_014_48d2

jr_014_491b:
    or a
    or a
    or a
    or a

jr_014_491f:
    or a

jr_014_4920:
    dec b
    or a
    or a
    or a
    or a
    or a
    or a

jr_014_4927:
    or a
    ld c, a

jr_014_4929:
    or a
    dec b
    or a
    or a

jr_014_492d:
    or a

jr_014_492e:
    or a

jr_014_492f:
    or a
    or a

jr_014_4931:
    or a
    or a
    ld c, e

jr_014_4934:
    ld c, e

jr_014_4935:
    inc h
    or a
    or a
    or a

jr_014_4939:
    ld bc, $b7b7

jr_014_493c:
    dec b

jr_014_493d:
    dec b
    or a
    or a
    or a

jr_014_4941:
    or a
    ld bc, $b7b7
    or a

jr_014_4946:
    or a
    dec b
    or a
    or a

jr_014_494a:
    or a
    or a
    or a
    or a
    or a
    or a
    or a
    or a
    ld bc, $069f
    ld bc, $0101
    ld d, l
    inc bc
    ld d, b
    ld [hl], h
    dec d

jr_014_495d:
    sbc b
    ld c, b
    inc d
    ld c, c
    ld c, l
    ld [$0101], sp
    add $e7
    dec l
    jp hl


    nop
    rst $20
    db $e4
    ld a, $e9
    inc bc
    ld bc, $5b01
    ld e, h
    inc hl
    ld bc, $5900
    add e
    nop
    ld d, b
    rla
    ld e, c
    ld e, e
    ld e, h
    ld e, c
    ld e, c
    ld e, l
    nop
    ld e, h
    ld e, e
    ld e, h
    ld bc, $5c95
    ld e, c
    ld e, l
    nop
    ld c, $2c
    rrca
    inc l
    inc l
    sub h
    inc l
    inc l
    push bc
    nop
    ld [hl], h
    inc b
    sub [hl]
    ld c, $2d
    ld hl, $292b
    ld hl, $2b05
    rrca
    dec h
    inc h
    inc b
    inc e
    add hl, hl
    inc b
    dec b
    inc e
    dec de
    inc c
    dec d
    add hl, de
    inc de
    adc e
    nop
    sub b
    inc bc
    nop
    inc c
    inc d
    dec c
    adc h
    nop
    and b
    ld [hl+], a
    nop
    db $e4
    ccf
    inc bc
    db $e4
    ld b, e
    jp hl


    ld bc, $e5e4
    adc e
    nop
    ld b, [hl]
    rlca
    ld e, c
    ld bc, $ce5d
    ld e, h
    ld bc, $5901
    add l
    nop
    ld e, d
    add e
    nop
    ld h, [hl]
    add hl, bc
    ld e, e
    adc $00
    ld e, h
    ld e, c
    sub l
    sub [hl]
    ld c, $2c
    inc l
    add h
    nop
    ld a, b
    ld [$2c2c], sp
    db $ec
    inc l
    inc l
    rrca
    nop
    ld c, $2d
    inc hl
    ld hl, $1b02
    ld c, $2d
    adc c
    nop
    add l
    jp $b200


    ld bc, $2425
    add [hl]
    nop
    sub l
    add l
    ld bc, $008a
    nop
    adc a
    ld bc, $8e91
    ld bc, $e491
    ccf
    inc bc
    db $e4
    ccf
    jp hl


    ld bc, $e5e4
    inc l
    jp hl


    ld [bc], a
    db $e4
    ld e, l
    nop
    add h
    nop
    ld e, h
    add h
    ld bc, $8358
    ld bc, $0351
    sub h
    rrca
    nop
    ld c, $84
    nop
    ld a, b
    nop
    sub h
    add h
    ld [bc], a
    ld h, l
    ld bc, $2194
    ld h, d
    dec hl
    nop
    ld hl, $0284
    ld [hl], b
    add l
    ld [bc], a
    ld [hl], b
    rlca
    inc b
    inc b
    ld hl, $0404
    inc b
    inc b
    ld hl, $02c4
    add [hl]
    db $e4
    ld l, $04
    ldh a, [$ff83]
    ld bc, $8bbc
    ld [bc], a
    ld b, c
    add e
    ld bc, $0344
    nop
    ld e, h
    ld bc, $8659
    nop
    ld d, h
    nop
    ld bc, $0283
    ld d, b
    rlca
    inc l
    inc l
    sub h
    rrca
    ld e, h
    ld e, c
    ld bc, $835b
    nop
    ld h, e
    inc bc
    ld e, e
    nop
    nop
    ld c, $84
    nop
    add a
    ld bc, $9600
    ld h, $00
    ld bc, $2d0e
    add e
    nop
    sub a
    nop
    ret c

    jr z, @-$3e

    ld bc, $24db
    adc b
    nop
    or a
    inc hl
    nop
    ld bc, $2500
    adc a
    inc bc
    adc a
    sub b
    inc bc
    adc a
    db $e4
    ccf
    inc bc
    db $e4
    ld b, d
    jp hl


    add e
    ld bc, $0044
    sub a
    add a
    ld [bc], a
    ld c, b
    dec b
    ld e, e

jr_014_4aa7:
    ld e, h
    ld e, e
    ld c, $2c
    sub h
    add h
    inc bc
    ld h, d
    ld b, c
    ld bc, $0459
    sub l
    inc l
    inc l
    inc l
    dec l
    add l
    inc bc
    ld [hl], b
    ld bc, $5b5c
    add e
    inc bc
    ld [hl], l
    inc bc
    ld hl, $2121
    inc b
    adc e
    inc bc
    add b
    adc h
    nop
    or e
    ld [bc], a
    nop
    nop
    nop
    adc a
    inc b
    add b
    sbc e
    inc b
    add b
    ldh a, [$ff83]
    nop
    cp h
    add l
    inc b
    ld b, h
    nop
    sub a
    adc b
    ld bc, $0b44
    nop
    ld e, h
    ld e, e
    ld c, $94
    sub h
    inc l
    rrca
    nop
    ld e, h
    sbc $59
    add e
    nop
    ld d, d
    nop
    nop
    add l
    ld bc, $0379
    dec hl
    inc l
    inc l
    or b
    add e
    dec b
    ld d, [hl]
    nop
    ld e, h
    add [hl]
    inc bc
    adc h

jr_014_4b04:
    nop
    inc b
    add l
    nop
    add [hl]
    add l
    inc bc
    sbc d
    adc c
    nop
    or d
    adc a
    dec b
    ld a, [hl]
    sbc a
    dec b
    ld a, [hl]
    ld bc, $c700
    db $e4
    ccf
    inc bc
    rst $38
    rra
    ld a, $ff
    ld [bc], a
    rst $38
    ld a, b
    jr @+$2a

    jr jr_014_4aa7

    add $01
    ld bc, $0101
    inc b
    ld bc, $7450
    dec d
    inc e
    ld c, e
    inc d
    ld d, b
    ld c, l
    ld [$0001], sp
    add $2d
    inc b
    nop
    inc bc
    inc hl
    inc b
    inc hl
    add hl, de
    jp z, Jump_000_1600

jr_014_4b44:
    nop
    db $10
    ld [hl+], a
    ld de, $a200
    ld [hl+], a
    ld de, $1200
    add l
    nop
    inc c
    ld a, [bc]
    db $10
    add hl, bc
    ld bc, $5ba0
    sbc b
    ld e, h
    and b
    ld bc, $1208
    add e
    nop
    dec c
    inc b
    inc e
    jr nz, jr_014_4b04

    ld e, e
    sbc b
    ld [hl+], a
    nop
    inc b
    sbc b
    ld e, h
    and b
    ld a, [de]
    inc h
    add e
    nop
    ld a, $0a
    sbc h
    sbc b
    nop
    nop
    ld c, $2c
    rrca
    nop
    nop
    sbc b
    sbc l
    add h
    nop
    ld c, l
    ld a, [bc]
    dec de
    nop
    ld c, $2c
    dec l
    ld hl, $2c2b
    rrca
    nop
    dec e
    add e
    nop
    ld c, l
    nop
    inc b
    ld h, d
    dec hl
    nop
    ld hl, $0422
    nop
    ld hl, $2b62
    add l
    nop
    dec c
    nop
    ld hl, $0423
    jp $8600


    pop de
    nop
    ld [de], a
    nop
    rst $00
    db $e4
    ld h, b
    inc bc
    rst $38
    rra
    cpl
    ld a, $ff
    rlca
    rst $38
    jr c, jr_014_4c1e

    ld c, b
    adc b
    ld d, b
    add b
    ld c, b
    jr z, jr_014_4c05

    ld l, b
    ld l, b
    ld d, b
    ld d, b
    jr z, jr_014_4b44

    adc b
    adc b
    adc b
    adc b
    adc b
    pop bc
    ld bc, $0101

jr_014_4bcc:
    ld bc, $0102
    ld d, b
    ld [hl], h
    dec d
    xor [hl]
    ld c, e
    inc d
    ld l, a
    ld c, l
    ld [$0001], sp
    add $2b
    inc b
    ld bc, $0303
    call nz, Call_000_0d00
    ld [hl+], a
    add hl, de
    rlc b
    dec d
    nop
    db $10
    inc h
    ld de, $1200
    add a
    nop
    ld a, [bc]
    ld [$201c], sp
    ld bc, $5901
    ld bc, $1a01
    inc h
    adc b
    nop
    dec hl
    inc b
    ld e, c
    ld e, e
    xor b
    ld e, h
    ld e, c
    adc c

jr_014_4c05:
    nop
    add hl, sp
    ld b, $9c
    nop
    nop
    sbc b
    nop
    nop
    sbc l
    adc b
    nop
    ld a, [hl-]
    nop
    dec de
    inc h
    nop
    nop
    dec e
    add a
    nop
    ld a, [hl-]
    ld bc, $2b04

jr_014_4c1e:
    inc h
    inc l
    nop
    dec l
    adc c
    nop
    ld a, [bc]
    ld [hl+], a
    ld hl, $2101
    ld hl, $00d2
    inc de
    nop
    rst $00
    db $e4
    ld h, d
    inc bc
    rst $38
    rra
    nop
    ld d, $3e
    rst $38
    ld [$38ff], sp
    ret nc

    ld c, b
    adc b
    ld l, b
    ld d, b
    add b
    jr z, @+$2a

    jr jr_014_4cad

    ld l, b
    ld c, b
    ld d, b
    ld d, b
    jr z, jr_014_4bcc

    ld bc, $4f4f
    ld c, a
    ld c, a
    ld c, a
    cp l

jr_014_4c52:
    ld bc, $0101
    ld bc, $0102
    ld d, b
    ld [hl], h
    dec d
    inc sp
    ld c, h
    inc d
    halt
    ld c, l
    ld [$0001], sp
    add $2b
    inc b
    ld bc, $0303
    call nz, Call_000_0d00
    ld [hl+], a
    add hl, de
    rlc b
    dec d
    nop
    db $10
    inc h
    ld de, $1200
    add a
    nop
    ld a, [bc]
    ld [$201c], sp
    ld bc, $5901
    ld bc, $1a01
    inc h
    adc b
    nop
    dec hl
    inc b
    ld e, c
    ld e, e
    xor b
    ld e, h
    ld e, c
    adc c
    nop
    add hl, sp
    ld b, $9c
    nop
    nop
    sbc b
    nop
    nop
    sbc l
    adc b
    nop
    ld a, [hl-]
    nop
    dec de
    inc h
    nop
    nop
    dec e
    add a
    nop
    ld a, [hl-]
    ld bc, $2b04
    inc h
    inc l
    nop
    dec l
    adc c
    nop

jr_014_4cad:
    ld a, [bc]
    ld [hl+], a
    ld hl, $2101
    ld hl, $00d2
    inc de
    nop
    rst $00
    db $e4
    ld h, d
    inc bc
    rst $38
    rra
    ld a, [hl+]
    ld a, $ff
    rlca
    rst $38
    jr c, jr_014_4d0c

    adc b
    ld l, b
    add b
    ld d, b
    jr z, jr_014_4cf2

    ld l, b
    ld l, b
    ld c, b
    ld d, b
    ld d, b
    jr z, jr_014_4c52

    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ret nz

    ld bc, $0101
    ld bc, $0102
    ld d, b
    ld [hl], h
    dec d
    cp h
    ld c, h
    inc d
    ld a, l
    ld c, l
    ld [$0001], sp
    add $2b
    inc b
    ld bc, $0303
    call nz, Call_000_0d00
    ld [hl+], a

jr_014_4cf2:
    add hl, de
    rlc b
    dec d
    nop
    db $10
    inc h
    ld de, $1200
    add a
    nop
    ld a, [bc]
    ld [$201c], sp
    ld bc, $5901
    ld bc, $1a01
    inc h
    adc b
    nop
    dec hl

jr_014_4d0c:
    inc b
    ld e, c
    ld e, e
    xor b
    ld e, h
    ld e, c
    adc c
    nop
    add hl, sp
    ld b, $9c
    nop
    nop
    sbc b
    nop
    nop
    sbc l
    adc b
    nop
    ld a, [hl-]
    nop
    dec de
    inc h
    nop
    nop
    dec e
    add a
    nop
    ld a, [hl-]
    ld bc, $2b04
    inc h
    inc l
    nop
    dec l
    adc c
    nop
    ld a, [bc]
    ld [hl+], a
    ld hl, $2101
    ld hl, $00d2
    inc de
    nop
    rst $00
    db $e4
    ld h, d
    inc bc
    rst $38
    inc e
    rra
    dec d
    rst $38
    rlca
    rst $38
    ld l, b
    jr c, jr_014_4db2

    ld d, b
    add b
    adc b
    ld c, b
    jr c, jr_014_4d78

    jr nz, jr_014_4d7a

    jr z, jr_014_4d94

    ld b, b
    ld e, c
    add c
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]

jr_014_4d5a:
    ld c, [hl]
    ld c, [hl]
    ld bc, $0101
    ld bc, $0102
    ld d, b
    ld [hl], h
    dec d
    ld b, c
    ld c, l
    inc d
    add h
    ld c, l
    ld [$0001], sp
    add $2b
    inc b
    ld bc, $0303
    call nz, Call_000_0d00
    ld [hl+], a
    add hl, de

jr_014_4d78:
    rlc b

jr_014_4d7a:
    dec d
    nop
    db $10
    inc h
    ld de, $1200
    add a
    nop
    ld a, [bc]
    ld [$201c], sp
    ld bc, $a001
    ld bc, $1a01
    inc h
    adc b
    nop
    dec hl
    inc b
    ld e, c
    ld e, e

jr_014_4d94:
    sbc b
    ld e, h
    ld e, c
    adc c
    nop
    add hl, sp
    nop
    sbc h
    inc h
    nop
    nop
    sbc l
    adc b
    nop
    ld a, [hl-]
    nop
    dec de
    inc h
    nop
    nop
    dec e
    add a
    nop
    ld a, [hl-]
    ld bc, $2b04
    inc h
    inc l
    nop

jr_014_4db2:
    dec l
    adc c
    nop
    ld a, [bc]
    ld [hl+], a
    ld hl, $2101
    ld hl, $00d2
    inc de
    nop
    rst $00
    db $e4
    ld h, d
    inc bc
    rst $38
    rra
    inc h
    ld a, $ff
    rlca
    rst $38
    jr c, jr_014_4e14

    adc b
    ld l, b
    ld d, b
    add b
    jr z, jr_014_4dfa

    ld l, b
    ld l, b
    ld c, b
    ld d, b
    ld d, b
    jr z, jr_014_4d5a

    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    jp $0101


    ld bc, $0201
    ld bc, $7450
    dec d
    call nz, Call_000_144d
    adc b
    ld c, l
    ld [$0001], sp
    add $2b
    inc b
    ld bc, $0303
    call nz, Call_000_0d00
    ld [hl+], a

jr_014_4dfa:
    add hl, de
    rlc b
    dec d
    nop
    db $10
    inc h
    ld de, $1200
    add a
    nop
    ld a, [bc]
    ld [$201c], sp
    ld bc, $5901
    ld bc, $1a01
    inc h
    adc b
    nop
    dec hl

jr_014_4e14:
    inc b
    ld e, c
    ld e, e
    xor b
    ld e, h
    ld e, c
    adc c
    nop
    add hl, sp
    ld b, $9c
    nop
    nop

jr_014_4e21:
    sbc b
    nop
    nop
    sbc l
    adc b
    nop
    ld a, [hl-]
    nop
    dec de
    inc h
    nop
    nop
    dec e
    add a
    nop
    ld a, [hl-]
    ld bc, $2b04
    inc h
    inc l
    nop
    dec l
    adc c
    nop
    ld a, [bc]
    ld [hl+], a
    ld hl, $2101
    ld hl, $00d2
    inc de
    nop
    rst $00
    db $e4
    ld h, d
    inc bc
    rst $38
    ld a, [hl-]
    jr nc, jr_014_4e62

    dec b
    inc c
    inc [hl]
    dec d
    ld [hl+], a
    rst $38
    ld de, $0f0e
    add hl, bc
    dec c
    dec c
    inc b
    ld bc, $18ff
    ld c, b
    ld a, b
    xor b
    ret c

    add sp, -$48

jr_014_4e62:
    sub b
    jr jr_014_4ead

    xor b
    ret c

    jr z, jr_014_4e21

    ret z

    sbc b
    xor b
    xor b
    ld a, b
    ld c, b
    jr jr_014_4e79

    ld d, b
    ld e, b
    jr c, jr_014_4e7d

    ld e, b
    cp b
    ld l, b
    ret c

jr_014_4e79:
    nop
    ret z

    ld hl, sp-$38

jr_014_4e7d:
    cp b
    and b
    ld l, b
    xor b
    ld c, b
    jr c, jr_014_4efc

    add sp, $78
    jr @+$7a

    ld hl, sp+$48
    ld a, b
    ld a, b
    xor b
    ld e, b
    ret c

    jr jr_014_4ea9

    ld [$1828], sp
    ld e, b

jr_014_4e95:
    xor b
    ret c

    ldh [$ffb0], a
    sub b
    sbc b
    adc b
    ld d, b
    ld b, b
    ret z

    add sp, -$58
    jr jr_014_4ef3

    ld a, b
    ld h, b

jr_014_4ea5:
    ret nz

    ld e, b
    or b
    ld a, b

jr_014_4ea9:
    ld c, b
    db $10
    jr z, jr_014_4ea5

jr_014_4ead:
    ld hl, sp-$08
    ret z

jr_014_4eb0:
    jr z, jr_014_4eda

    jr c, jr_014_4efc

    jr z, @+$3a

    xor b
    adc b
    and b
    add sp, -$08
    add sp, -$08
    ld e, b
    ld d, b
    cp b
    cp b
    ld e, b
    sbc b
    xor b
    adc b
    sbc b
    ld c, b
    ld e, b
    cp b
    jr z, @-$46

    ld b, b
    and b
    ld e, b
    adc b
    ld e, b
    ld a, b
    ld l, b
    ret c

    jr jr_014_4e95

    or b
    jr jr_014_4eb0

    nop
    ret nz

jr_014_4eda:
    ld a, b
    ret c

    ret nz

    ld [$4800], sp
    ld l, b
    ld h, b
    ld e, b
    ld a, b
    ld [hl], b
    db $10
    ld e, b
    jr jr_014_4f11

    ld l, b
    adc b
    sbc b
    add b
    jr c, jr_014_4f0f

    ret nz

    ld [$0838], sp

jr_014_4ef3:
    ld c, b
    add b
    jr c, jr_014_4f0f

    ld l, b
    ld a, b
    sbc b
    ret nz

    sbc b

jr_014_4efc:
    ld [$3868], sp
    jr nz, jr_014_4f11

Jump_014_4f01:
    add b
    jr jr_014_4f3c

    ret c

    ld e, b
    ld e, b
    or a
    or a
    or a
    or a
    or a
    or a
    or a
    or a

jr_014_4f0f:
    or a
    or a

jr_014_4f11:
    or a
    or a
    or a
    or a
    or a
    adc [hl]
    adc [hl]
    or a
    or a
    or a
    or a
    or a
    or a
    or a
    or a
    adc [hl]
    or a
    ld c, a
    adc [hl]
    or a
    adc [hl]
    or a
    or a
    or a
    or a
    or a
    or a
    adc [hl]
    or a
    ld c, a
    ld c, a
    adc d
    adc d
    or a
    or a
    or a
    or a
    or a
    ld c, a
    or a
    or a
    or a
    or a

jr_014_4f3c:
    or a
    adc [hl]
    or a
    or a
    or a
    or a
    or a
    or a
    or a
    ld c, a
    dec c
    or a
    or a
    or a
    inc h
    or a
    or a
    or a
    or a
    or a
    ld c, a
    or a
    dec c
    or a
    or a
    or a
    or a
    dec h
    sbc b
    ld c, [hl]
    ld l, h
    ld l, h
    ld l, h
    ld [bc], a
    inc b
    ld bc, $1401
    scf
    ld d, b
    ld [hl], h
    dec d
    ld c, c
    ld c, [hl]
    inc d

jr_014_4f69:
    adc a
    ld c, l
    ld [$0001], sp
    add $2e
    inc b
    cpl
    add hl, de
    inc h
    ldh a, [rP1]
    ld l, a
    add hl, hl
    ldh a, [rNR52]
    add sp, $00
    or $22
    add sp, $01
    add sp, -$18
    call z, $3c00
    add l
    nop
    ld [hl], $2d
    ld hl, sp+$01
    ld a, a
    ld hl, sp+$2f
    ld hl, $008f
    ld a, [bc]
    inc h
    inc b
    ld [bc], a
    db $10
    pop af

jr_014_4f97:
    ld a, c
    daa
    pop af
    add h
    nop
    add c
    nop
    xor a
    dec h
    jp hl


    nop
    rst $30
    ld [hl+], a
    jp hl


    ld [hl+], a
    inc b
    inc bc
    inc e
    db $f4
    jp hl


    rst $30
    jr z, jr_014_4f97

    add l
    nop
    and b
    inc bc
    jp hl


    and [hl]
    ld sp, hl
    ld a, b
    inc hl
    ld sp, hl
    ld bc, $f978
    add e
    nop
    and b
    inc b
    jr jr_014_5019

    ld bc, $c51a
    ld h, $21
    ld [hl+], a
    add hl, de
    dec b
    db $10
    add hl, bc
    ld bc, $4f01
    ld [de], a
    adc c
    nop
    add hl, de
    nop
    xor l
    inc hl
    add sp, $00
    xor h
    add [hl]
    nop
    jr nz, jr_014_4f69

    nop
    inc [hl]
    ld bc, $e8e8
    ld l, $04
    nop
    inc bc
    adc $00
    jr jr_014_4fe9

jr_014_4fe9:
    inc bc
    adc b
    nop
    inc hl
    nop
    ld [de], a
    add l
    ld bc, $880a
    nop
    inc sp
    ld bc, $12ac
    add h
    ld bc, $892b
    nop
    ld a, [hl-]
    ld bc, $24f5
    add e
    ld bc, $260c
    ld hl, sp+$01
    and l
    add sp, -$7a
    ld bc, $2549
    ld hl, $c305
    jr @+$03

    ld bc, $241a
    add [hl]
    ld bc, $8b0c

jr_014_5019:
    nop
    ret nc

    nop
    inc bc
    call nz, $8a00
    nop
    pop af
    add h
    nop
    sub l
    nop
    xor [hl]
    jp $8201


    dec hl
    jp hl


    rlca
    rst $30
    jp hl


    jp hl


    inc bc
    jp hl


    rst $30
    jp hl


    jp hl


    ret


    nop
    sbc a
    ld bc, $03e9
    ld a, [hl+]
    ld sp, hl
    add e
    nop
    cp c
    nop
    inc bc
    ld l, $21
    nop
    inc bc
    adc $00
    inc d
    nop
    inc bc
    adc d
    ld bc, $8524
    ld bc, $002b
    or $84
    ld bc, $8336
    ld bc, $84e7
    ld bc, $ce3b
    nop
    cp $01
    add sp, -$08
    call nz, $5f00
    ret z

    nop
    ld e, a
    nop
    ld a, a
    sub l
    nop
    ld h, b
    add e
    nop
    inc c
    adc $00
    dec d
    nop
    db $10
    adc c
    nop
    adc d
    add [hl]
    nop
    sub b
    nop
    rst $30
    add [hl]
    nop
    xor h
    nop
    inc b
    add [hl]
    nop
    or b
    add e
    nop
    sbc c
    adc e
    ld [bc], a
    ld e, a
    add h
    nop
    or a
    add a
    ld [bc], a
    ld h, b
    ld bc, $0118
    add l
    nop
    add $00
    add hl, de
    adc l
    ld bc, $0070
    inc b
    add $00
    dec hl
    ld [bc], a
    xor l
    add sp, -$0a
    add h
    nop
    and $00
    ld [de], a
    adc e
    nop
    inc sp
    inc bc
    or $e8
    add sp, -$54
    adc a
    nop
    ld a, [hl-]
    adc c
    ld [bc], a
    dec d
    add e
    ld [bc], a
    ld de, $a501
    or $2c
    ld hl, $c302
    ld l, h
    db $fc
    inc l
    add hl, de
    ld [bc], a
    db $10
    add hl, bc
    ld bc, $e823
    add e
    ld bc, $8758
    ld bc, $8308
    ld bc, $8b54
    inc bc
    inc b
    add h
    ld bc, $0264
    ld e, b
    ld a, [de]
    inc h
    adc c
    ld bc, $8308
    nop
    db $d3
    nop
    ld [$0087], sp
    ret c

    ld bc, $7903
    adc c
    ld bc, $0085
    ld a, c
    add e
    ld bc, $8c8c
    ld bc, $03a2
    jp hl


    jp hl


    inc bc
    jp hl


    call Call_014_5e03
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ret z

    ld bc, $93be
    ld bc, $8fbc
    ld bc, $8f00
    ld bc, $0000
    ld [de], a
    adc [hl]
    ld bc, $0101
    push af
    inc h
    adc a
    inc bc
    or d
    adc l
    ld bc, $0002
    ld a, h
    adc [hl]
    inc bc
    pop bc
    ld bc, $124f
    inc l
    add hl, de
    nop
    inc bc
    daa
    ld h, h
    add h
    nop
    add a
    dec b
    xor a
    jp hl


    jp hl


    pop de
    pop de
    add d
    inc hl
    pop de
    adc b
    ld bc, $01a4
    add sp, -$2f
    add e
    inc b
    inc de
    adc c
    ld bc, $0793
    add sp, -$18
    pop de
    pop de
    add d
    and [hl]
    ld sp, hl
    ld a, b
    add a
    ld bc, $00b6
    add sp, -$7d
    inc b
    jr nc, jr_014_5158

    ld h, b

jr_014_5158:
    push bc
    jr z, jr_014_517c

    add e
    nop
    ld [hl], $02
    pop de
    ld h, b
    rst $18
    jr z, jr_014_517d

    inc h
    add sp, $06
    ld h, a
    ldh a, [$fff0]
    ld l, a
    ldh a, [$fff0]
    ld l, a
    add e
    nop
    inc l
    adc [hl]
    nop
    ld [hl-], a
    nop
    or $83
    nop
    inc [hl]
    adc e
    nop
    ld [hl-], a

jr_014_517c:
    add [hl]

jr_014_517d:
    nop
    ld e, b
    ld [$e8a5], sp
    add sp, -$5c
    ld hl, sp+$7f
    ld hl, sp-$5b
    add sp, -$78
    ld [bc], a
    rst $20
    ld [bc], a
    db $fc
    ld a, h
    push bc
    add e
    ld [bc], a
    db $ec
    adc d
    ld [bc], a
    add c
    inc b
    inc h
    inc b
    db $10
    add hl, bc
    ld bc, $0426
    inc bc
    jr z, jr_014_51ca

    add hl, hl
    ld a, [hl+]
    add e
    inc b
    cp h
    nop
    ld bc, $02c9
    scf
    dec b
    inc b
    db $10
    add hl, bc
    ld e, b
    ld a, [bc]
    add hl, hl
    adc c
    nop
    dec bc
    inc b
    db $10
    add hl, bc
    ld bc, $2a0a
    add h
    nop
    ld l, a
    nop
    db $10
    inc h
    ld de, $0483
    db $eb
    inc bc
    inc b
    inc b
    jp hl


    xor [hl]

jr_014_51ca:
    rst $00
    nop
    adc l
    dec b
    pop af
    pop af
    ld a, c
    pop af
    pop af
    inc bc
    call nz, Call_014_6d03
    nop
    jp hl


    sbc l
    inc bc
    ld d, [hl]
    add h
    nop
    cp c
    nop
    ld h, [hl]
    add h
    ld bc, $88aa
    ld bc, $02bf
    jp $d061


    jp $a301


    adc b
    ld bc, $030f
    rst $10
    ld h, c
    ret nc

    add c
    add e
    ld bc, $01ac
    ldh a, [$ff6f]
    add [hl]
    nop
    ld hl, $ad00
    ld [hl+], a
    ret nc

    ld bc, $e9e9
    adc c
    ld bc, $06ff
    ret nc

    add c
    ret nc

    ret nc

    ret nc

    jp hl


    inc bc
    add a
    nop
    ld [hl-], a
    nop
    ret nc

    call nz, $7d05
    ld [bc], a
    ret nc

    inc bc
    and h
    add [hl]
    inc b
    sub h
    nop
    ld a, a
    dec h
    ld h, l
    ld [bc], a
    inc bc
    ld a, h

jr_014_5227:
    push bc
    add a
    inc b
    and l
    add l
    ld bc, $01ca
    ld [$8712], sp
    inc b
    or l
    add l
    ld bc, $020a
    ld bc, $124f
    add h
    inc b
    add $87
    ld bc, $0308
    dec bc
    ld bc, $1208
    jp z, $da04

    dec b
    inc bc
    jr z, @+$41

    ld bc, $1208
    adc c
    nop
    ld a, e
    dec b
    inc bc
    inc b
    jr z, jr_014_5263

    ld bc, $2408
    ld de, $1200
    add a
    inc bc
    sbc e
    ld b, $1c

jr_014_5263:
    jr nz, jr_014_52bd

    ld bc, $0a01
    add hl, hl
    add e
    inc b
    ret z

    ld [bc], a
    add hl, sp
    add hl, sp
    ld [de], a
    add e
    ld b, $01
    inc bc
    ld bc, $0a59
    ld a, [hl+]
    add e
    nop
    ld l, l
    dec bc
    jr nc, @+$33

    ld sp, $1208
    inc b
    inc a
    ld [hl], $2f
    adc c
    scf
    ld b, h
    ld [hl+], a
    inc b
    inc bc
    jr nc, jr_014_5227

    rlca
    rlca
    add e
    dec b
    pop de
    inc c
    ld c, b
    ld d, e
    rlca
    ld d, b
    ld [hl-], a
    add hl, sp
    add hl, sp
    jr nc, jr_014_52ed

    rlca
    ld d, d
    ld c, c
    ld bc, $0685
    jr nc, jr_014_52ad

    ld [hl], b
    ld d, b
    ld sp, $5131
    rlca
    ld d, d
    ld c, d
    ld b, c

jr_014_52ad:
    ld bc, $0686
    ld b, b
    ld [$0707], sp
    ld [hl], b
    rlca
    rlca
    ld a, [hl-]
    ld b, h
    inc b
    ld bc, $0686

jr_014_52bd:
    ld d, b
    ld [hl+], a
    ld c, c
    dec b
    ld d, e
    ld [hl], b
    ld d, b
    ld [hl-], a
    add hl, sp
    ld bc, $0686
    ld h, b
    ld [hl+], a
    ld b, c
    add e
    ld b, $34
    ld bc, $0131
    add [hl]
    ld b, $70
    ld [bc], a
    add hl, de
    add hl, de
    add hl, de
    add h
    ld b, $55
    ld h, $01
    nop
    ld [$0584], sp
    rst $30
    ld [bc], a
    ld c, b
    ld d, e
    rlca
    ld a, [hl+]
    ld bc, $1a04
    inc h
    inc a

jr_014_52ed:
    jr c, jr_014_535f

    adc [hl]
    ld b, $a0
    adc a
    ld b, $9f
    nop
    adc a
    adc h
    ld b, $a0
    ld [bc], a
    inc b
    ld c, b
    or c

jr_014_52fe:
    adc l
    ld b, $d0
    ld bc, $4104
    adc [hl]
    ld b, $e0
    ld bc, $3904
    add e
    inc b
    add $01
    add hl, hl
    dec bc
    ld [hl+], a
    ld bc, $2200
    add h
    ld bc, HeaderOldLicenseeCode
    ld sp, $c332
    nop
    ld [hl], b
    inc bc
    jr z, jr_014_535f

    ld bc, $8359
    rlca
    ld a, [bc]
    ld b, $10
    inc bc
    rlca
    ld d, b
    ld [hl-], a
    inc b
    inc b
    add a
    ld b, $22
    inc b
    db $10
    add hl, bc
    inc bc
    ld d, e
    ld [hl], b
    add a
    ld b, $37
    nop
    ld c, d
    add e
    inc b
    cp h
    nop
    inc bc
    add h
    ld b, $7b
    inc bc
    ld sp, $0751
    sbc e
    add h
    rlca
    ld a, [hl-]
    inc bc
    ld bc, $3c03
    jr c, jr_014_5374

    rlca
    nop
    ld [hl], b
    add l
    rlca
    add hl, sp
    ld b, $01
    ld bc, $3003
    ld d, c
    rlca
    sbc e

jr_014_535f:
    ld [hl+], a
    ld c, c
    add [hl]
    rlca
    ld e, b
    ld [bc], a
    ld bc, $9a03
    add e
    ld b, $4c
    ld bc, $4141
    add [hl]
    rlca
    ld l, b
    ld bc, $0301

jr_014_5374:
    add e
    rlca
    jr c, jr_014_52fe

    nop

jr_014_5379:
    ret nc

    add h
    rlca
    ld l, e
    ld bc, $4a52
    add h
    inc b
    di
    add [hl]
    rlca
    adc b
    dec b
    ld bc, $3a03
    ld b, h
    inc e
    jr nz, jr_014_53b1

    ld bc, $078f
    sbc b
    sub a
    rlca
    sbc b
    ld bc, $044a
    adc l
    rlca
    and d
    nop
    inc b
    adc a
    rlca
    pop de
    adc h
    rlca
    pop de
    ld bc, $03c7
    rst $38
    ld a, [hl-]
    ld bc, $141c
    inc de
    ld d, $15

jr_014_53ae:
    nop
    cpl
    rra

jr_014_53b1:
    inc c
    inc b
    rst $38

jr_014_53b4:
    dec bc
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$68ff], sp
    adc b
    ld a, b
    ld h, b
    jr c, jr_014_5379

    adc b
    ld a, b
    ld h, b
    sub b
    ld l, b
    xor b
    ld c, b
    xor b
    ld c, b
    adc b
    ld h, b
    ld [hl], b
    adc b
    ld h, b
    ld a, b
    ld [hl], b
    xor b
    ld c, b
    xor b
    ld c, b
    xor b
    ld h, b
    ld a, b
    adc b
    ld l, b
    adc b
    add b
    xor b
    ld c, b
    ld c, b
    xor b
    adc b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld h, b
    add b
    ld l, b
    ld c, b
    ld a, b
    adc b
    ld l, b
    add b
    adc b
    ld l, b
    ld b, b
    or b
    ld hl, sp-$78
    ld [hl], b
    add b
    ld l, b
    adc b
    ld a, b
    ld a, b
    ret c

    and b
    ld a, b
    ld b, b
    adc b
    ld a, b
    ld d, b
    ld c, b
    ld h, b

jr_014_5401:
    ld h, b
    ld d, b
    jr c, jr_014_545d

    xor b
    ret z

    jr nc, @-$16

    or b
    sub b
    ld b, b
    ld [$1810], sp
    ld c, b
    ld a, b
    sbc b
    add sp, -$48
    sbc b
    ld [hl], b
    ld e, b
    jr z, jr_014_5401

    ld c, b
    jr jr_014_53b4

    ret z

    ld [hl], b
    ld d, b
    db $10
    add sp, -$40
    and b
    xor b
    jr jr_014_53ae

    sbc b
    ld h, b
    jr c, jr_014_542a

jr_014_542a:
    add sp, $68
    ld l, b
    ld hl, sp+$20
    ld b, b
    ld l, b
    adc b
    xor b
    ret nc

    nop
    or a
    or a
    or a
    or a
    ld [$6959], sp
    ld l, b
    ld c, a
    ld c, a
    ld l, d
    ld b, $18
    jr jr_014_544a

    or a
    or a
    or a
    or a
    or a
    or a

jr_014_544a:
    or a
    adc b
    ld b, $06
    jr jr_014_5456

    or a
    or a
    or a
    or a
    or a
    or a

jr_014_5456:
    jr jr_014_545e

    adc b
    ld b, $b7
    or a
    or a

jr_014_545d:
    or a

jr_014_545e:
    or a
    or a
    or a
    ld b, $b7
    or a
    or a
    or a
    or a
    and b
    inc sp
    ld sp, $a016
    and b
    and b
    and b
    and b
    and b
    and b
    ld bc, $0106
    ld bc, $5504
    ld d, b
    ld [hl], h
    dec d
    and a
    ld d, e
    inc d
    sub [hl]
    ld c, l
    ld [$0101], sp
    add $5e
    ld [hl+], a
    ld bc, $cb24
    inc h
    ld bc, $0302
    ld e, [hl]
    ld bc, $008d
    ld [bc], a
    ld b, $01
    ld bc, $0158
    ld bc, $83cb
    ld [hl+], a
    rlc c
    ld e, e
    ld e, h
    add e
    nop
    inc c
    add h
    nop
    ld a, [hl+]
    ld a, [bc]
    set 1, e
    ld a, d
    ld a, e
    ld a, d
    nop
    nop
    sub [hl]
    ld e, h
    ld e, e
    inc bc
    add h
    nop
    ld a, [hl-]
    ld bc, $7a7b
    ld [hl+], a
    jp z, Jump_000_0024

    ld bc, $5d03
    add $00
    ld c, l
    ld [$4eca], sp
    ld e, l
    nop
    ld e, [hl]
    ld e, d
    ld e, d
    inc bc
    ld bc, $0083
    ld e, d
    ld b, $3e
    jp z, $4eca

    rlc c
    ld e, d
    add l
    nop
    inc e
    dec c
    ld e, d
    ld bc, $cb01
    ld a, $4e
    set 1, e
    ld bc, $01de
    ld e, b
    ld bc, $2303
    add hl, hl
    nop
    dec bc
    inc h
    rlc c
    ld a, [bc]
    or b
    jp $8200


    ld [hl+], a
    ld hl, $c301
    jr jr_014_551e

    rlc c
    ld a, [de]
    push bc
    jp $9200


    ld [hl+], a
    inc b

Jump_014_5503:
    ld bc, $0910
    inc h
    rlc c
    ld [$c312], sp
    nop
    and d
    add e
    nop
    and c
    add [hl]
    nop
    inc b
    add e
    nop
    xor d
    inc bc
    inc bc
    inc b
    db $10
    add hl, bc
    adc b
    nop

jr_014_551e:
    inc hl
    dec b
    ld [$0412], sp
    inc bc
    db $10
    add hl, bc
    add a
    nop
    ld [bc], a
    add hl, bc
    ld e, l
    nop
    ld e, h
    ld [$0312], sp
    add hl, bc
    ld bc, $5c5b
    add l
    nop
    inc b
    add hl, bc
    ld e, b
    sub l
    ld e, [hl]
    ld bc, $0308
    ld bc, $005b
    ld e, [hl]
    add h
    nop
    inc b
    add a
    nop
    ld l, c
    ld bc, $5e5d
    adc b
    nop
    inc bc
    ld bc, $5c5b
    call nz, Call_000_2000
    ld bc, $5c5b
    add [hl]
    nop
    dec b
    ld [$005d], sp
    ld e, h
    inc bc
    ld bc, $5b59
    nop
    ld e, [hl]
    jp $2800


    ld [$01cb], sp
    ld e, b
    ld bc, $0095
    inc bc
    ld e, e
    nop
    adc b
    nop
    ldh a, [c]
    add e
    ld bc, $c31a
    nop
    ld c, a
    nop
    ld e, h
    adc c
    nop
    inc b
    ld [bc], a
    ld e, l
    inc bc
    nop
    adc b
    ld bc, $8531
    nop
    ld a, [hl+]
    add e
    ld bc, $0031
    ld e, b
    add [hl]
    nop
    push de
    inc b
    sub [hl]
    ld e, h
    ld bc, $0003
    adc c
    nop
    ld bc, $9505
    nop
    nop
    ld e, h
    inc bc
    ld e, [hl]
    add a
    ld bc, $0311
    add e
    ld bc, $005d
    call nz, Call_014_6101
    inc b
    ld e, e
    nop
    ld e, [hl]
    res 0, e
    add [hl]
    ld bc, $8317
    ld bc, $008e
    ld e, l
    adc c
    ld bc, $0153
    ld e, l
    nop
    jp z, Jump_000_0f00

    add e
    ld bc, $0201
    ld e, l
    inc bc
    ld bc, $0090
    ld de, $0103
    ld bc, $7b5b
    add h
    nop
    ld b, $03
    ld e, e
    ld e, h
    ld e, c
    ld bc, $0183
    rra
    ld [bc], a
    sub [hl]
    nop
    ld c, [hl]
    add h
    nop
    ld b, $00
    ld e, l
    add e
    ld bc, $007c
    ld e, e
    add e
    ld bc, $8650
    nop
    dec b
    nop
    sub l
    jp $4101


    ld [bc], a
    nop
    ld e, [hl]
    ld e, d
    jp Jump_000_2a01


    add [hl]
    ld bc, $8b98
    ld bc, $836f
    ld bc, $89fa
    ld bc, $027f
    ld a, d
    ld e, h
    ld e, c
    add [hl]
    ld bc, $00ac
    sub l
    add h
    ld bc, $03f4
    ld a, $00
    nop
    ld e, h
    add h
    ld bc, $01bd
    ld e, b
    ld e, d
    add a
    nop
    call nc, Call_014_5e00
    ret z

    nop
    ld hl, $8300
    add [hl]
    nop
    rst $30
    adc l
    ld bc, $020e
    ld bc, $0158
    add l
    ld bc, $c91f
    ld [bc], a
    ld e, c
    adc l
    ld bc, $012f
    ld bc, $8a01
    ld bc, $043f
    ld e, e
    ld e, h
    ld e, c
    ld bc, $8a01
    ld bc, $024f
    ld e, l
    nop
    nop
    add h
    nop
    dec a
    nop
    ld e, [hl]
    add a
    ld [bc], a
    ld d, e
    inc bc
    ld e, l
    nop
    nop
    ld e, [hl]
    adc e
    ld bc, $056f
    ld e, e
    nop
    ld e, [hl]
    ld bc, $5e03
    adc c
    ld bc, $05d1
    ld e, l
    nop
    ld e, h
    ld bc, $5903
    adc c
    ld bc, $05e1
    ld bc, $5e5d
    ld bc, $0003
    add e
    ld bc, $8cf1
    ld [bc], a
    add l
    add [hl]
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    add hl, hl
    ld bc, $5c5b
    adc c
    ld bc, $836f
    ld [bc], a
    add hl, sp
    ld bc, $5e5d
    adc d
    nop
    rrca
    ld bc, $5d5a
    add l
    ld [bc], a
    ld c, h
    ld [bc], a
    ld e, e
    ld e, h
    ld e, b
    adc e
    nop
    dec d
    nop
    ld e, e
    adc l
    ld bc, $0052
    ld e, e
    adc b
    ld bc, $0141
    ld e, l
    ld e, [hl]
    adc h
    ld [bc], a
    sbc h
    ld [$0183], sp
    ld e, e
    nop
    ld e, h
    ld bc, $0003
    nop
    add e
    ld bc, $8902
    ld bc, $01e6
    nop
    ld e, [hl]
    adc b
    ld [bc], a
    ld d, d
    inc bc
    ld bc, $5e5d
    ld e, l
    add [hl]
    ld [bc], a
    rst $08
    adc h
    ld bc, $02c6
    ld e, e
    nop
    ld c, [hl]
    adc h
    ld bc, $01c6
    ld e, l
    ld e, [hl]
    adc [hl]
    ld bc, $cdc5
    ld [bc], a
    ld e, d
    nop
    ld e, b
    sub a
    ld bc, $02c3
    ld bc, $0101
    adc h
    ld bc, $83de
    ld [bc], a
    ld a, e
    adc d
    ld bc, $00ef
    ld e, c
    adc e
    ld [bc], a
    ei
    ld [bc], a
    set 1, e
    ld a, d
    add e
    ld bc, $046b
    ld bc, $5d03
    ld e, [hl]
    ld e, c
    add [hl]
    inc bc
    inc de
    add hl, bc
    ld e, [hl]
    ld e, l
    nop
    sub [hl]
    sub [hl]
    inc bc
    ld e, h
    ld e, e
    nop
    ld e, h
    add l
    ld [bc], a
    inc b
    inc b
    ld e, b
    ld e, e
    nop
    nop
    nop
    adc d
    ld bc, $024f
    ld bc, $0095
    add e
    inc bc
    adc l
    add e
    ld bc, $0401
    ret nc

    set 1, e
    add e
    ret nc

    add e
    ld bc, $8500
    nop
    ld a, [hl]
    inc b
    add hl, hl
    ld h, l
    ld h, [hl]
    bit 5, c
    add $04
    ld h, l
    inc h
    ld hl, $c306
    ld h, c
    bit 5, b
    push bc
    ld hl, $8621
    nop
    sbc h
    ld b, $04
    inc b
    inc e
    ld h, c
    bit 5, b
    inc h
    call nz, $8404
    adc a
    inc b
    ld a, a
    sub l
    inc b
    ld a, a
    inc b
    inc a
    ld l, d
    add b
    ld l, e
    ld b, h
    adc e
    inc b
    xor d
    ld [bc], a
    ld h, d
    or [hl]
    ld h, e
    adc a
    inc b
    cp c
    adc a
    inc b
    cp c
    adc a
    inc b
    cp c
    adc a
    inc b
    cp c
    adc a
    inc b
    cp c
    adc a
    inc b
    cp c
    adc a
    inc b
    cp c
    adc a
    inc b
    cp c
    ldh a, [$ff8f]
    inc b
    cp c
    add h
    inc b
    cp c
    nop
    rst $00
    sub b
    inc b
    cp a
    cpl
    inc bc
    rst $38
    ld de, $01ff
    nop
    rst $38
    adc b
    ld a, b
    add d
    ld [bc], a
    ld bc, $0101
    ld b, $03
    nop
    ld b, b
    ld d, $93
    ld d, a
    inc d
    sbc d
    ld c, l
    ld [$0000], sp
    cp [hl]
    db $e4
    ld hl, $2a01
    inc b
    add l
    nop
    rra
    inc hl
    ld bc, $5002
    ld bc, $8550
    nop
    jr nc, jr_014_57d6

    ld d, h
    inc b
    ld d, l
    ld bc, $5001
    ld d, h
    nop
    xor h
    nop
    ld d, l
    ld d, b
    ld bc, HeaderLogo
    ld d, h
    nop
    inc b
    nop
    ld d, l
    ld d, h
    nop
    nop

jr_014_57d6:
    ld c, h
    ld [hl+], a
    nop
    ld a, [bc]
    ld [hl], a
    ld d, l
    inc b
    ld d, h
    nop
    nop
    inc b
    nop
    nop
    nop
    inc b
    call nz, Call_014_6500

jr_014_57e8:
    nop
    ld a, b
    add l
    nop
    ld h, c
    dec b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ret z

    nop
    ld [hl], a
    ld [bc], a
    nop
    inc b
    ld l, b
    inc hl
    inc b
    ret z

    nop
    add a
    ld b, $00
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    jp $9700


    inc bc
    nop
    nop
    nop
    nop
    jp $9f00


    nop
    nop
    sub a
    nop
    adc [hl]
    ld bc, $0000
    db $e4
    ccf
    inc bc
    nop
    ld bc, $002e
    adc b
    ld bc, $c600
    ld bc, $9f17
    ld bc, $0000
    ld d, h
    db $e4
    ld l, [hl]
    nop
    nop
    or a
    db $e4
    ld c, [hl]
    nop
    rst $38
    add hl, sp
    ld [de], a
    rra
    ld a, $ff
    inc b
    rst $38
    ld c, b
    or b
    sbc b
    ld [$6018], sp
    ld c, b
    jr jr_014_57e8

    ld c, c
    add c
    call nz, $0101
    ld bc, $0301
    ld bc, $61c3
    dec d
    ld [hl], $58
    inc d
    and c
    ld c, l
    ld [$0000], sp
    ld d, [hl]
    ld a, [hl+]
    ld h, a
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    ld h, $67
    ld h, e
    ld h, b
    inc b
    ld h, a
    rrca
    rrca
    inc bc
    inc bc
    add [hl]
    nop
    dec d
    inc h
    ld h, a
    add e
    nop
    inc e
    ld h, d
    ld h, l
    ld bc, $6767
    ld h, e
    ld h, h

jr_014_587b:
    ld [bc], a
    ld h, a
    ld h, b
    ld h, c
    add e
    nop
    inc e
    inc hl
    rlca
    nop
    inc a
    ld [hl+], a
    nop
    ld h, d
    dec a
    nop
    nop
    add e
    nop
    inc e
    inc hl
    rrca
    rlca
    nop
    nop
    dec sp
    inc a
    nop
    nop
    ld l, d
    inc a
    adc c
    nop
    ld c, h
    inc hl
    nop
    nop
    ld l, h
    adc b
    nop
    ld c, e
    daa
    rlca
    add e
    nop
    ld c, h
    dec hl
    rrca
    adc a
    nop
    ld a, h
    ld bc, $5c0f
    db $e4
    ld h, c
    inc bc

Call_014_58b4:
    rst $38
    ld d, $0e
    ld [hl+], a
    rst $38
    dec b
    inc bc
    dec b
    inc b
    inc b
    inc bc
    rst $38
    ld c, b
    adc b
    add sp, $48
    ret z

    xor b
    jr z, @-$16

    ld l, b
    jr z, jr_014_58f3

    ld l, b
    jr z, jr_014_5916

    ld c, b
    adc b
    ret z

    jr z, jr_014_587b

    add sp, $68
    ld l, b
    jr z, jr_014_5940

    cp b
    sbc b
    sbc b
    ld e, b
    ret c

    ret c

    sbc b
    sbc b
    ld e, b
    ld e, b
    cp b
    cp b
    ld hl, sp+$38
    sbc b
    ld e, b
    jr @+$5a

    sbc b
    ld e, b
    sbc b
    jr c, @+$5a

    sbc b
    ld c, a
    ld b, e
    ld b, e

jr_014_58f3:
    ld b, e
    ld l, h
    ld b, e
    ld l, h
    ld l, h
    ld c, a
    ld b, e
    ld b, e
    ld b, e
    ld l, h
    ld c, a
    ld b, e
    ld l, h

Call_014_5900:
    ld l, h
    ld l, h
    ld b, e
    ld l, h
    ld b, e
    ld c, a
    ld l, h
    ld b, e
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rra
    inc d
    inc de
    ld d, b
    rla
    or l
    ld e, b
    inc d
    xor b
    ld c, l

jr_014_5916:
    ld [$e401], sp
    jr nz, jr_014_591e

    nop
    adc c
    cpl

jr_014_591e:
    inc bc

jr_014_591f:
    ld bc, $0d2b
    dec hl
    rlca
    inc bc
    inc bc
    inc bc
    rrca
    jr jr_014_5955

    ld a, b
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld a, b
    adc a
    nop
    ld b, h
    sub c
    nop
    ld b, h
    nop
    dec d
    add h
    nop
    inc sp
    nop
    dec de
    adc b
    nop
    ld c, l

jr_014_5940:
    ld bc, $180f
    adc l
    nop
    ld c, b
    ld bc, $780a
    adc a
    nop
    adc b
    ld h, $78
    nop
    dec d
    adc c
    nop
    sub b
    add h
    nop

jr_014_5955:
    halt
    rlca
    inc de
    inc bc
    inc bc
    rrca
    ld d, $78
    dec d
    ld de, $0088
    add e
    ld b, $03
    inc bc
    rrca
    db $10
    rlca
    inc de
    jr jr_014_58f3

    nop
    sub e
    add [hl]
    nop
    ld b, b
    add e
    nop
    rst $10
    adc [hl]
    nop
    ld c, e
    add e
    nop
    ld d, d
    ld bc, $071a
    db $e4
    cpl
    inc bc
    cpl
    rlca
    db $e4
    cpl
    ld a, b
    nop
    dec d
    adc h
    nop
    inc sp
    ld bc, $0d07
    adc l
    nop
    ld b, d
    ld [bc], a
    ld a, b
    rla
    ld a, [bc]
    ld l, $78
    nop
    ld de, $782e
    nop
    jr jr_014_591f

    nop
    ei
    add [hl]
    ld bc, $0079
    ld d, $2d
    ld a, b
    nop
    rla
    ret nc

    ld bc, $8fa0
    ld bc, $c3cd
    ld bc, $8a42
    ld bc, $03b5
    ld a, [bc]
    ld a, b
    ld a, b
    ld a, b
    ldh a, [$ff32]
    ld bc, $2200
    dec c
    ld [bc], a
    rlca
    dec c
    inc l
    ret


    ld [bc], a
    ld b, $05
    rla
    db $10
    jr jr_014_5a42

    rla
    ld de, $0286
    add hl, sp
    ret z

    nop
    sbc d
    adc a
    ld [bc], a
    ld c, c
    ld h, $03
    nop
    ld d, $8e
    ld [bc], a
    ld d, c
    nop
    ld de, $028e
    ld d, c
    add e
    nop
    ld d, d
    nop
    dec e
    adc [hl]
    ld [bc], a
    add l
    nop
    ld a, b
    add a
    ld [bc], a
    sub l
    jp nc, $ab02

    nop
    rrca
    add l
    ld bc, $00bc
    dec d
    add a
    ld [bc], a
    ld c, b
    ld bc, $100f
    inc h
    rlca
    nop

Jump_014_5a01:
    db $10

Call_014_5a02:
    adc b
    ld [bc], a
    ret z

    add h
    nop
    ld b, e
    ld [bc], a
    ld a, h
    rla
    ld de, $028c
    sbc c
    nop
    ld a, d
    add e
    ld [bc], a

jr_014_5a13:
    ld d, a
    adc l
    ld [bc], a
    cp c
    adc c
    nop
    reti


    inc bc
    db $10
    rlca
    dec c
    ld d, $8d
    nop
    rst $10
    add h
    ld bc, $01cb
    rrca
    ld d, $8d
    nop
    adc h
    ld bc, $1317
    add e
    nop
    inc a
    sbc [hl]
    nop
    sub b

jr_014_5a34:
    add e
    nop
    ld a, a
    add h
    inc bc
    daa
    adc l
    nop
    ld c, b
    ld bc, $1317
    add a
    nop

jr_014_5a42:
    jr c, jr_014_5a34

    ld hl, $5000
    ld bc, $160f
    adc l
    nop
    ld b, h
    ld bc, $132d
    rlc c
    dec sp
    db $e4
    ccf
    inc bc
    adc b
    ld bc, $8ec4
    ld bc, $02d9
    ld a, [bc]
    ld a, b
    ld a, b
    ret nc

    inc b
    add hl, de
    add e
    nop
    ld d, d
    add e
    nop
    ld a, h
    nop
    inc e
    adc [hl]
    inc b
    dec d
    nop
    ld a, [bc]
    add e
    inc b
    dec [hl]
    jp nc, Jump_014_4704

    add [hl]
    nop
    ld d, d
    nop
    dec d
    add a
    ld [bc], a
    add b
    ld bc, $160f
    add e
    ld bc, $02ee
    rlca
    inc de
    jr jr_014_5a13

    inc bc
    inc sp
    add h
    ld bc, $f8d4
    ld hl, $ef01
    ld [bc], a
    dec d
    db $10
    ld d, $cc
    ld bc, $0245
    inc de
    inc de
    inc de
    ldh a, [rLYC]
    inc bc
    cp d
    ld bc, $780a
    adc l
    ld [bc], a
    jp nz, Jump_000_0085

    ld [hl], d
    ld bc, $1007

jr_014_5aad:
    adc e
    ld [bc], a
    add sp, $00
    rrca
    adc d
    ld [bc], a
    ld b, l
    nop
    dec e
    add a
    ld [bc], a
    ld d, c
    ldh a, [rNR52]
    ld [bc], a
    ld c, c
    add h
    inc b
    ld h, b
    adc d
    ld [bc], a
    ld d, l
    add h
    inc b
    ld [hl], b
    adc [hl]
    ld [bc], a
    ld d, l
    nop
    ld a, b
    adc a
    dec b
    ld [hl], l
    sub c
    dec b
    ld [hl], l
    ld bc, $1115
    adc l
    ld bc, $0129
    inc de
    ld l, $2f
    inc bc
    nop
    adc b
    db $e4
    dec [hl]
    inc bc
    rst $38
    rra
    dec e
    rst $38
    ld [$0000], sp
    nop
    rst $38
    sbc b
    jr c, jr_014_5b56

    ld a, b
    cp b
    ret z

    ld hl, sp-$68
    jr c, jr_014_5aad

    sbc b
    ret z

    ret z

    sbc b
    cp b
    ld a, b
    ld e, d
    ld e, l
    ld e, h
    ld e, e
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, e
    ld [bc], a
    ld [bc], a
    ld bc, $0801
    ld [$7a31], sp
    ld d, $e3
    ld e, d
    inc d
    xor a
    ld c, l
    ld [$0000], sp
    ld a, e

jr_014_5b15:
    cpl
    inc bc
    ld [hl+], a
    ld bc, $6e62
    nop
    ld bc, $0085
    ld de, $6e04
    ld l, a
    inc bc
    ld l, h
    ld l, l
    inc h
    ld bc, $6b02
    ld l, h
    ld l, l
    add h
    nop
    ld h, $00
    inc bc
    add l
    nop
    ld h, $88
    nop
    inc hl
    nop
    inc bc
    add e
    nop
    ld [hl], $8a
    nop
    ld sp, $0300
    add a
    nop
    inc de
    rlca
    ld bc, $6b01
    ld l, l
    ld bc, $6e01
    inc bc
    add [hl]
    nop
    dec [hl]
    ld h, d
    dec b
    ld [hl+], a
    ld bc, $5c06

jr_014_5b56:
    ld bc, $4903
    ld bc, $5a4a
    ld h, a
    ld [$0103], sp
    ld e, l
    ld e, [hl]
    inc bc
    ld h, h
    ld c, e
    ld b, $01
    ld [de], a
    inc de
    add h
    dec d
    ld d, $01
    ld h, d
    ld e, a
    nop
    inc bc
    ld h, e
    ld d, b
    nop
    add hl, de
    ld h, d
    add hl, de
    rlca
    add b
    dec e
    ld e, $19
    add hl, de
    ld d, e
    ld h, h
    inc bc
    ld h, e
    ld d, h
    ld bc, $7401
    ld h, h
    ld [hl+], a
    nop
    ld a, h
    ld h, d
    ld h, [hl]
    inc d
    inc bc
    ld e, b
    ld e, c
    ld e, e
    ld e, e
    jr z, jr_014_5b15

    ld a, [hl+]
    dec hl
    ld bc, $2e2d
    add d
    db $10
    ld e, e
    ld e, e
    inc bc
    nop
    nop
    halt
    nop
    ld h, e
    jr nc, jr_014_5ba4

jr_014_5ba4:
    ld bc, $3562
    ldh [$ff2a], a
    jr jr_014_5bab

jr_014_5bab:
    ld a, [hl]
    inc bc
    inc b
    inc b
    add d
    inc b
    jr c, jr_014_5bec

    ld [hl], d
    dec sp
    ld bc, $783d
    ccf
    jr nz, jr_014_5bbf

    add d
    inc bc
    inc l
    inc l

jr_014_5bbf:
    add hl, hl
    ld b, [hl]
    ld b, b
    inc [hl]
    add d
    inc a
    inc [hl]
    inc [hl]
    add d
    inc [hl]
    ld de, $1c29
    inc bc
    cpl
    ld c, b
    ld b, a
    ld hl, $4514
    ld a, $62
    ld b, d
    inc b
    ld a, [hl-]
    ld b, c
    ld hl, $2114
    cpl
    inc bc
    nop
    ld [hl], b
    adc $00
    ld de, $6b01
    ld l, h
    adc a
    nop
    inc bc
    add [hl]
    nop
    inc bc

jr_014_5bec:
    sub $01
    jr c, jr_014_5bf0

jr_014_5bf0:
    ld l, a
    sbc $01
    ld d, b
    ld bc, $0908
    dec l
    inc bc
    ld bc, $6362
    dec l
    inc bc
    ld bc, $6552
    dec l
    inc bc
    nop
    ld d, [hl]
    adc [hl]
    ld bc, $0091
    ld e, e
    adc [hl]
    ld bc, $0191
    ld l, c
    ld l, d
    dec l
    inc bc
    nop
    inc b
    adc $01
    ret nc

    nop
    inc l
    adc $01
    ldh [rSB], a
    ld a, [hl-]
    ld a, $3d
    inc bc
    db $e4
    rst $28
    nop
    ld [bc], a
    inc bc
    inc bc
    ld a, d
    ldh a, [$fffc]
    ld [bc], a
    inc bc
    rst $38
    dec hl
    ld a, $ff
    ld [bc], a
    rst $38
    sbc b
    xor b
    adc b
    adc b
    ld a, a
    rlc c
    ld bc, $0301
    ld bc, $5203
    ld d, h
    dec d
    dec l
    ld e, h
    inc d
    jr jr_014_5c94

    ld [$3f00], sp
    inc bc
    nop
    inc l
    ld l, $03
    nop
    dec l
    adc d
    nop
    ld h, $23
    inc bc
    nop
    cpl
    ld l, b
    db $10
    ld bc, $3628
    inc hl
    inc bc
    ld bc, $022e
    ld h, [hl]
    add hl, de
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    dec [hl]
    inc hl
    inc bc
    nop
    inc sp
    ld h, a
    jr nz, jr_014_5c70

    nop
    nop

jr_014_5c70:
    inc [hl]
    inc hl
    inc bc
    nop
    ld sp, $0029
    ld [bc], a
    ld sp, $0303
    pop de
    nop
    ld a, l
    nop
    jr nc, jr_014_5cea

    ld b, $00
    ld [hl-], a
    inc hl
    inc bc
    ld b, l
    dec b
    inc b
    inc hl
    inc bc
    ld b, h
    add hl, sp
    jr c, jr_014_5c90

    add hl, sp

jr_014_5c90:
    dec hl
    db $e4
    ld b, e
    inc bc

jr_014_5c94:
    rst $38
    ld [$151f], sp
    rst $38
    ld bc, $0201
    inc b
    rst $38
    ret z

    ld c, b
    xor b
    ret z

    ld l, b
    ld c, b
    ld [$e808], sp
    add sp, $48
    jr z, jr_014_5cf3

    jr z, @+$5a

    xor b
    ret c

    sub $d9
    reti


    push de
    push de
    call $024e
    ld [bc], a
    dec b
    ld bc, $1512
    sub b
    ld [hl], c
    rla
    sub l
    ld e, h

jr_014_5cc1:
    inc d
    add hl, de
    ld c, [hl]
    ld [$2301], sp
    inc bc
    nop
    ld l, [hl]
    ld a, [hl+]
    nop
    inc hl
    inc bc
    inc bc
    nop
    nop
    ld de, $8512
    nop
    ld [$00cf], sp
    dec d
    ld bc, $1211
    adc d
    nop
    jr nz, @+$03

    ld de, $8612
    nop
    dec c
    ld bc, $1211
    pop de
    nop

jr_014_5cea:
    dec l
    rlca
    inc b
    ld b, $00
    inc b
    ld b, $00
    nop

jr_014_5cf3:
    inc b
    add a
    nop
    jr nz, jr_014_5cff

    rlca
    ld c, c
    dec b
    ld c, b
    ld c, c
    ld b, $04

jr_014_5cff:
    ld c, b
    adc b
    nop

Call_014_5d02:
    jr nz, @+$64

    ld hl, $6403
    ld h, l
    ld h, h
    ld h, e
    adc b
    nop
    jr nz, @+$08

    rlca
    ld [hl], $23
    ld e, b
    dec b
    ld b, $5e
    add a
    nop
    jr nz, jr_014_5d1c

    inc de
    inc d
    rlca

jr_014_5d1c:
    add hl, hl
    ld h, d
    ld hl, $5e00
    adc e
    nop
    jr nz, @+$04

    rlca
    ld [$8465], sp
    nop
    adc a
    ld bc, $1413
    ld h, $00
    ld bc, $0604
    adc d
    nop
    sbc a
    inc bc
    inc de
    inc d
    nop
    jr z, jr_014_5cc1

    nop
    xor [hl]
    ld [bc], a
    nop
    inc de
    inc d
    sub d
    nop
    or a
    add e
    nop
    halt
    nop
    inc hl
    adc d
    nop
    adc a
    rlca
    nop
    nop
    inc b
    ld c, b
    ld c, c
    ld b, $00
    nop
    adc l
    nop
    dec b
    adc a
    ld bc, $8a00
    nop
    dec [hl]
    add h
    ld bc, $020b
    nop
    ld de, $9612
    ld bc, $0103
    ld de, $8312
    nop
    rrca
    ld bc, $0605
    adc b
    nop
    ld d, [hl]
    add h
    nop
    ld c, $00
    ld [$0083], sp
    ld l, h
    inc bc
    ld c, c
    dec b
    ld c, b
    add hl, bc
    add [hl]
    nop
    inc c
    inc b
    ld l, d
    ld h, d
    ld h, l
    ld h, h
    ld h, l
    ld h, d
    ld hl, $0087
    dec hl
    rlca
    jr jr_014_5df1

    inc b
    dec b
    ld e, c
    ld hl, $092d
    add a
    nop
    dec bc
    ld bc, $5e5e
    ld h, d
    ld hl, $2801
    add hl, bc
    adc b
    nop
    ld a, [bc]
    inc b
    dec a
    ld e, [hl]
    ld h, h
    ld [$8a09], sp
    nop
    jr c, jr_014_5db4

    ld e, [hl]
    ld e, [hl]
    inc b

jr_014_5db4:
    ld b, $8b
    nop
    rlca
    inc b
    ld e, [hl]
    ld e, [hl]
    ld h, h
    add hl, hl
    db $10
    adc d
    nop
    jr z, jr_014_5dc2

jr_014_5dc2:
    dec a
    adc c
    ld bc, $01b1
    inc de
    inc d
    add l
    ld bc, $008d
    inc hl
    add h
    nop
    inc d
    ld bc, $1413
    add l
    ld bc, $8b8b
    nop
    db $fc
    ld [hl+], a
    inc bc
    adc e
    nop
    or b
    inc bc
    jr z, jr_014_5e2b

    ld c, b
    ld h, l
    adc b
    nop
    jr nz, jr_014_5de9

    inc de

jr_014_5de9:
    inc d
    adc b
    nop
    db $eb
    jr z, jr_014_5e04

    adc [hl]
    ld [bc], a

jr_014_5df1:
    dec e
    ld [bc], a
    inc b
    ld c, b
    ld h, e
    adc e
    nop
    sbc a
    inc bc
    ld l, $2a
    inc hl
    ld e, [hl]
    adc d
    ld [bc], a

Call_014_5e00:
    rra
    inc b
    inc b

Call_014_5e03:
    ld c, b

jr_014_5e04:
    ld [hl+], a
    inc hl
    ld e, [hl]
    adc d
    nop
    sbc a
    inc bc
    jr z, jr_014_5e5c

    ld c, b
    ld h, e
    adc e
    ld [bc], a
    ld e, [hl]
    add e
    nop
    call z, Call_000_028c
    ld l, [hl]
    ld bc, $0604
    ld [hl+], a
    ld d, h
    adc c
    nop
    jr nz, @+$07

    inc b
    ld c, [hl]
    ld c, c
    inc sp
    ld sp, $8a31
    ld [bc], a
    ld h, b
    inc bc

jr_014_5e2b:
    ld c, c
    ld a, [hl+]
    scf
    inc sp
    adc c
    ld [bc], a
    sbc a
    ld b, $04
    dec b
    ld c, b
    ld [hl], $22
    ld c, c
    ld e, c
    adc d
    nop
    ld [hl], b
    inc b
    scf
    ld c, b
    ld c, c
    ld a, [hl+]
    inc hl
    adc d
    nop
    ld [hl], b
    inc b
    ld [hl+], a
    inc hl
    ld hl, $2322
    ccf
    inc bc
    inc b
    dec a
    ld h, h
    ld c, c
    ld c, b
    add hl, hl
    adc h
    ld bc, $04b5
    ld hl, $0023
    inc de

jr_014_5e5c:
    inc d
    adc h
    inc bc
    rlca
    rlc d
    inc l
    inc b
    dec a
    ld e, [hl]
    ld h, d
    ld c, c
    ld b, $8a
    inc bc
    dec h
    ld [hl+], a
    ld e, [hl]
    ld [bc], a
    ld hl, $2f37
    adc e
    ld bc, $04b6
    ld e, [hl]
    ld hl, $4922
    ld b, $88
    inc bc
    daa
    ld b, $24
    ld e, [hl]
    ld e, [hl]
    ld h, d
    ld c, c
    ld c, [hl]
    add hl, hl
    adc e
    inc bc
    ld b, a
    ld [bc], a
    ld e, [hl]
    ld h, h
    add hl, hl
    adc c
    nop
    add hl, bc
    inc hl
    ld d, h
    ld bc, $0604
    adc c
    nop
    add hl, bc
    ld [hl+], a
    ld sp, $3203
    ld c, b
    ld c, a
    ld b, $8a
    inc bc
    add a
    inc bc
    ld [hl-], a
    ld a, [hl+]
    scf
    ld c, b
    adc c
    inc bc
    ld h, [hl]
    ld bc, $5825
    add e
    ld [bc], a
    cp e
    ld bc, $0605
    adc b
    inc bc
    xor b
    nop
    ld hl, $0283
    rlc c
    ld [hl+], a
    inc hl
    adc c
    inc bc
    cp b
    add e
    ld [bc], a
    db $db
    add l
    inc bc
    add $00
    ld l, a
    db $e4
    ld [hl+], a
    inc bc
    rst $38
    nop
    ld l, $25
    dec c
    dec d
    rst $38
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $c8ff
    ld c, b
    ret z

    ld c, b
    ret z

    ld c, b
    ret z

    ld c, b
    ret z

    ld c, b
    ld hl, sp-$38
    ld c, b
    ret z

    ld c, b
    ld c, b
    ld c, b
    jr z, jr_014_5f17

    ld c, b
    ld c, b
    ld e, b
    ld e, b
    ld c, b
    ld c, b
    ld e, b
    jr z, jr_014_5f20

    ld c, b
    ld c, b
    ld bc, $8601
    ld a, e
    ld b, d
    ld bc, $3f86
    ld bc, $4e7b
    ld bc, $7b3f
    ccf
    ld [$0201], sp
    ld bc, $0173
    sub b
    ld [hl], c
    rla
    call $145e
    jr nz, jr_014_5f65

jr_014_5f17:
    ld [$0100], sp
    inc bc
    ld l, [hl]
    dec l
    nop
    nop
    inc bc

jr_014_5f20:
    ld l, $00
    inc b
    inc bc
    rrca
    stop
    nop
    add e
    nop
    ld hl, $0f01
    db $10
    add a
    nop
    dec bc
    dec b
    ld de, $0012
    nop
    inc de
    inc d
    add h
    nop
    ld sp, $1304
    inc d
    inc bc
    nop
    ld a, [de]
    adc l
    nop
    inc bc
    ld [hl+], a
    dec b
    nop
    ld b, $24
    inc c
    nop
    inc b
    add h
    nop
    ld d, e
    nop
    inc bc
    ld [hl+], a
    ld [$0900], sp
    inc h
    nop
    ld [bc], a
    rlca
    ld [$8509], sp
    nop
    dec c
    nop
    ld a, [bc]
    ld h, $00
    add h
    nop
    ld [hl], e

jr_014_5f65:
    inc bc
    inc bc
    dec d
    dec d
    dec bc
    ld h, $15
    add h
    nop
    add e
    inc bc
    inc bc
    nop
    nop
    dec bc
    ld h, $00
    add h
    nop
    sub e
    db $e4
    ld e, a
    inc bc
    db $e4
    jr nz, jr_014_5f7f

jr_014_5f7f:
    add h
    nop
    add hl, hl
    ld bc, $100f
    add a
    nop
    jr z, jr_014_5f89

jr_014_5f89:
    nop
    add l
    nop
    ld sp, $0000
    add a
    nop
    ld e, b
    inc h
    nop
    adc d
    nop
    ld h, l
    add [hl]
    nop
    ld e, b
    call nz, $7f00
    adc e
    ld bc, $8544
    nop
    sbc b
    ld bc, $0504
    jp z, Jump_014_7e00

    nop
    dec bc
    add e
    nop
    ld l, b
    call $8e00
    ld bc, $0a15
    call $9e00
    ld bc, $0b00
    db $e4
    ld e, a
    inc bc
    ldh a, [rNR50]
    ld bc, $8a00
    nop
    dec h
    add [hl]
    nop
    ld e, b
    adc b
    nop
    scf
    add h
    ld bc, $2d60
    nop
    nop

jr_014_5fd0:
    ld a, [bc]
    adc d
    ld [bc], a
    inc l
    inc b
    inc c
    ld b, $00
    nop
    dec bc
    adc e
    ld bc, $0044
    add hl, bc
    call Call_014_7d01
    nop
    nop
    adc [hl]
    ld bc, $0180
    dec d
    nop
    ldh a, [$ff93]
    nop
    sub c
    ld [bc], a
    rrca
    stop
    adc [hl]
    ld bc, $8828
    ld [bc], a
    scf
    cpl
    nop
    add h
    nop
    ld e, b
    ld bc, $0000
    sub b
    ld bc, $013f
    nop
    nop
    add l
    ld bc, $8f3a
    ld bc, $8a58
    ld bc, $0080
    ld a, [bc]
    ldh a, [$ffc3]
    ld [bc], a
    adc h
    ret


    inc bc
    ld e, [hl]
    nop
    inc b
    adc c
    nop
    ld d, e
    add a
    ld bc, $8d5d
    ld bc, $845d
    ld [bc], a
    ld a, e
    jp $8e03


    ldh a, [$ffb2]
    ld [bc], a
    add h
    ldh a, [$ff57]
    ld bc, $0037
    dec bc
    pop af
    ld a, l
    ld bc, $0090
    inc bc
    ret nc

    rlca
    ld c, $8d
    ld [bc], a
    jr nz, jr_014_6041

    inc bc

jr_014_6041:
    inc bc
    adc d
    inc bc
    jr nc, jr_014_6046

jr_014_6046:
    add hl, de
    adc [hl]
    rlca
    inc c
    nop
    jr jr_014_5fd0

    nop
    sbc [hl]
    ld bc, $0c0c
    adc c
    inc b
    ld e, d
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    adc e
    inc b
    ld l, b
    inc bc
    ld [$0308], sp
    inc bc
    adc $00
    ld a, [hl]
    nop
    inc bc
    adc $00
    adc [hl]
    nop
    inc bc
    adc h
    ld bc, $0090
    ld l, a
    db $e4
    ld h, c
    inc bc
    rst $38

jr_014_6075:
    ld d, $00
    scf
    rst $38
    ld bc, $0405
    nop
    ld bc, $0000
    nop
    rst $38
    ld c, b
    ld a, b
    ld c, b
    xor b
    ret c

    jr jr_014_6091

    ld l, b
    ret c

    jr c, jr_014_6075

    ld b, b
    ld c, b
    ld b, b
    ld b, b

jr_014_6091:
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld b, b
    ld c, b
    jr nc, jr_014_60e8

    xor [hl]
    or h
    or h
    xor [hl]
    xor [hl]
    or h
    or h
    sbc a
    xor [hl]
    ld c, a
    inc b
    ld [bc], a
    ld bc, $3501
    dec c
    ld b, $6c
    rla
    ld [hl], l
    ld h, b
    inc d
    ld l, $4e
    ld [$0000], sp
    ld a, $e4
    jr nz, jr_014_60bb

    dec l
    ld c, b
    ld [bc], a

jr_014_60bb:
    inc bc
    inc bc
    ld c, b
    inc l
    ld b, $02
    inc bc
    inc bc
    ld c, b
    inc l
    inc b
    add l
    nop
    jr nz, jr_014_60f0

    ld l, $c7
    nop
    inc h
    ld bc, $7148
    inc h
    inc b
    nop
    ld [hl], b
    rst $00
    nop
    ld [hl+], a
    add h
    nop
    ld d, l
    push bc
    nop
    ld a, b
    sbc a
    nop
    ld h, b
    sbc a
    nop
    ld h, b
    ldh a, [rLY]
    nop
    ld h, b

jr_014_60e8:
    ldh a, [$ff28]
    nop
    rlca
    ld bc, $4848
    cpl

jr_014_60f0:
    ld b, $2f
    inc b
    rst $08
    ld bc, $e42f
    cp a
    inc bc
    sbc h
    ld bc, $0120
    dec [hl]
    ld b, $8d
    nop

Call_014_6101:
    ld b, d
    ld [bc], a
    jr c, @+$06

    ld c, b
    adc a

jr_014_6107:
    ld bc, $e550
    and h
    inc bc
    adc d
    nop
    ld h, l
    sub c
    nop
    ld d, b
    nop
    ld c, b
    adc c
    ld bc, $863d
    nop
    dec a
    nop
    ld [hl], d
    adc d
    nop
    ld b, l
    ld bc, $0303
    ldh a, [$ffce]
    ld bc, $8752
    nop
    inc de
    rst $00
    dec b
    rla
    rst $00
    dec b
    rra
    sub $05
    daa
    nop
    ld c, b
    and $1d
    inc bc
    nop
    dec a
    db $e4
    sbc a
    inc bc
    rst $38
    rra
    inc e
    ld a, $10
    rst $38
    inc b
    rst $38
    jr z, jr_014_61be

    jr c, jr_014_60f0

    jr z, jr_014_6172

    jr z, jr_014_61bc

    add c
    ld e, c
    cp l
    ld b, [hl]
    ld bc, $0101
    ld bc, HeaderLogo
    ld b, $6c
    rla
    dec a
    ld h, c
    inc d
    dec sp
    ld c, [hl]
    ld [$0000], sp
    ld a, $2f
    inc bc
    inc l
    ld c, b
    add h
    nop
    ld c, $23
    rlca
    nop
    ld b, d
    jp z, $2600

    inc hl
    dec b

jr_014_6172:
    nop
    ld b, b
    jp z, Jump_000_3600

    inc hl
    dec b
    nop
    ld [hl], h
    adc [hl]
    nop
    jr c, jr_014_617f

jr_014_617f:
    dec b
    sbc a
    nop
    jr c, jr_014_6107

    nop
    jr c, jr_014_617f

    ld hl, $2200
    nop
    dec a
    db $e4
    ld h, b
    inc bc
    rst $38
    nop
    ld c, $35
    inc [hl]
    rst $38
    dec b
    ld bc, $0504
    dec bc
    ld bc, $48ff
    xor b
    xor b
    ld h, b
    sub b
    ld hl, sp+$58
    adc b
    cp b
    jr z, jr_014_617f

    ld a, b
    xor b
    ret c

    ret c

    jr c, jr_014_6215

    sbc b
    ld [$3868], sp
    sbc b
    ret z

    and b
    ld [$2830], sp
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b

jr_014_61bc:
    cp b
    cp b

jr_014_61be:
    cp b
    cp b
    cp b
    ld a, b
    ret z

    ret z

    ret z

    and b
    jr jr_014_61e0

    jr @-$36

    ld l, b
    sbc b
    ld l, b
    ld l, b
    ld b, b
    ld c, b
    ld e, b
    ld e, b
    ld bc, $4747
    ld b, e
    ld bc, $9a9a
    sbc d
    sbc d
    sbc d
    sbc b
    sub [hl]
    sub [hl]
    sub [hl]

jr_014_61e0:
    ld b, e
    sbc b
    sbc b
    sbc b
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld b, e
    sbc b
    ld b, e
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $2501
    rla
    sub b
    ld [hl], c
    rla
    sub b
    ld h, c
    inc d
    ccf
    ld c, [hl]
    ld [$0001], sp
    ld d, $2f

Call_014_6200:
    inc bc
    dec b
    ld [$4849], sp
    ld [$4849], sp
    add l
    nop
    ld de, $0809
    ld c, c
    ld c, b
    inc bc
    dec b
    ld c, b
    ld c, c
    dec b
    ld c, b

jr_014_6215:
    ld c, c
    add l
    nop
    ld hl, $050e
    ld c, b
    ld c, c
    inc bc
    ld [hl+], a
    inc hl
    ld hl, $652d
    ld h, h
    ld [$6465], sp
    ld [hl], $23
    ld h, d
    ld hl, $2100
    add e
    nop
    stop
    ld h, e
    inc h
    ld e, [hl]
    nop
    ld h, d
    add a
    nop
    dec de
    nop
    ld h, l
    ld h, $5e
    nop
    ld h, h
    add [hl]
    nop
    inc l
    jr z, jr_014_62a2

    add [hl]
    nop
    inc a
    nop
    ld b, $26
    ld e, [hl]
    nop
    inc b
    ldh a, [$ff2f]
    nop
    ld c, h
    ldh a, [rHDMA2]
    nop
    ld c, h
    nop
    ld [hl+], a
    sbc [hl]
    nop
    ld bc, $0800
    adc [hl]

jr_014_625d:
    nop
    ld hl, $0501
    ld [hl+], a

jr_014_6262:
    add h
    nop
    dec sp
    ld [bc], a
    ld [hl+], a
    inc hl
    ld hl, $0186
    jr nc, jr_014_625d

    cpl
    ld bc, $f010
    dec l
    ld bc, $0010
    ld [hl+], a
    sbc [hl]
    ld bc, $013f
    ld h, e
    ld e, [hl]
    adc l
    ld bc, $0130
    ld e, [hl]
    ld e, [hl]
    adc h
    nop
    ld de, $6302
    ld e, [hl]
    ld e, [hl]
    adc h
    ld bc, $22b3
    ld e, [hl]
    add e
    ld bc, $049c
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    add [hl]
    nop
    ld h, c
    cpl
    inc bc
    adc [hl]
    ld bc, $0011
    nop
    adc [hl]

jr_014_62a2:
    ld bc, $0021
    nop
    adc [hl]
    ld bc, $0031
    nop
    ldh a, [$ff2f]
    ld [bc], a
    db $10
    ldh a, [$ff2f]
    ld [bc], a
    db $10
    dec b
    ld h, e
    ld h, d
    ld [$6263], sp
    ld [$0285], sp
    and b
    add e
    ld [bc], a
    inc e
    dec hl
    ld e, [hl]
    ld [bc], a
    ld h, d
    ld c, c
    dec b
    adc e
    ld [bc], a
    xor a
    inc bc

jr_014_62ca:
    ld l, d
    ld e, [hl]
    ld hl, $8b22
    ld [bc], a
    xor a
    nop
    jr jr_014_6262

    ld [bc], a
    call z, Call_000_3d00
    adc [hl]
    ld [bc], a
    call z, Call_000_0083
    ld l, d
    nop
    nop
    ldh a, [rNR43]
    nop
    ld [hl], b
    jr z, jr_014_633a

    add [hl]
    nop
    inc a
    nop
    ld e, c
    ld h, $31
    nop
    ld e, b
    add [hl]
    nop
    inc e
    nop
    ld e, e
    ld h, $31
    rlca
    ld e, d
    ld c, c
    dec b
    ld c, b
    dec [hl]
    inc bc
    ld [hl+], a
    inc hl
    jr z, @+$33

Jump_014_6301:
    ld h, d
    ld hl, $3100
    adc d
    inc bc
    jr nc, jr_014_630d

    ld sp, $0834
    dec [hl]

jr_014_630d:
    ld sp, $0383
    ld b, b
    dec hl
    ld sp, $0302
    ld [hl+], a
    inc hl
    inc l
    ld sp, $0383
    ld h, b
    adc h
    inc bc
    ld [hl], h
    add e
    nop
    ld hl, $3300
    adc h
    inc bc
    halt
    ld [bc], a
    ld hl, $2322
    adc h
    inc bc
    add [hl]
    inc bc
    ld c, b
    ld [$3349], sp
    ld h, d
    ld sp, $3101
    ld [hl-], a
    add e
    inc bc

jr_014_633a:
    add $93
    nop
    jr nz, jr_014_62ca

    ld bc, $9330
    nop
    ld bc, $0286
    and b
    inc h
    ld e, [hl]
    ld [bc], a
    dec b
    ld c, b
    ld h, e
    inc l
    ld e, [hl]
    ld bc, $2322
    dec l
    ld d, h
    ld bc, $3508
    dec sp
    ld sp, $3201
    dec b
    dec l
    ld sp, $2101
    ld [hl+], a
    add a
    inc b
    ld b, a
    add l
    inc bc
    add $01
    ld c, b
    ld [$0485], sp

jr_014_636c:
    ld c, c
    adc c
    nop
    ld hl, $0384
    ld d, a
    adc d
    ld bc, $8432
    inc b
    ld c, d
    adc d
    nop
    inc de
    adc h
    inc b
    ld [hl], e
    inc b
    ld c, b
    ld c, c
    dec b
    ld sp, $8d31
    ld bc, $0132
    ld sp, $f032
    dec l
    ld bc, $d212
    ld [bc], a
    rrca
    inc b
    ld h, b
    ld h, c
    ld e, [hl]
    ld h, b
    ld h, c
    add h
    dec b
    ld [bc], a
    add e
    ld [bc], a
    xor l
    nop
    ld h, b
    adc l
    ld [bc], a
    ld [hl+], a
    nop
    ld d, h
    adc [hl]
    ld [bc], a
    ld sp, $3200
    adc a
    ld [bc], a
    ld de, $3502
    ld sp, $8c34
    ld [bc], a
    inc h
    adc l
    inc b
    add d
    inc b
    nop
    ld c, c
    inc sp
    ld sp, $f032
    adc e
    ld [bc], a
    inc d
    ld l, $03
    nop
    rla
    rst $38
    rlca
    dec [hl]
    ld a, [bc]
    rst $38
    ld [bc], a
    ld bc, $0503
    ld [bc], a
    rst $38
    ld a, b
    ret z

    jr jr_014_636c

    ret z

    ld hl, sp-$48
    add sp, $28
    ld e, b
    adc b
    jr jr_014_6435

    ld e, b
    ld e, b
    ld e, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld a, b
    ld a, [de]
    ld a, [de]
    ld a, [de]
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    ld [de], a
    dec b
    ld bc, $0101
    ld b, l
    rlca
    ld b, $6c
    rla
    add $63

Call_014_6402:
    inc d
    ld b, [hl]
    ld c, [hl]
    ld [$0000], sp
    ld a, $2f
    inc bc
    ld l, $48
    adc b
    nop
    db $10
    rst $10
    nop
    daa
    inc hl
    ld c, b
    nop
    ld c, [hl]
    ld [hl+], a
    ld b, $00
    ld c, a
    add h
    nop
    ld b, l
    ld bc, $034e
    add e
    nop
    ld b, h
    nop
    ld a, h
    ld [hl+], a
    inc b
    nop
    ld a, l
    add h
    nop
    ld d, l
    inc bc
    ld a, h
    inc bc
    ld c, b
    ld d, [hl]
    inc hl
    inc b
    ld [bc], a

jr_014_6435:
    ld d, b
    inc b
    inc b
    push bc
    nop
    ld l, c
    ld [bc], a
    inc bc
    ld c, b
    ld c, h
    inc l
    inc b
    add l
    nop
    db $10
    ld [hl+], a
    inc b
    nop
    ld c, b
    jp $8900


    add a
    nop
    ld e, $22
    ld h, $00
    ld c, b
    jp $9900


    ld bc, $4848
    ldh a, [$ff2b]
    nop
    db $10
    ld hl, sp+$43
    nop
    ld b, h
    db $e4
    jr z, jr_014_64ab

    inc bc
    ld c, [hl]
    ld b, $35
    ld c, a
    add [hl]
    nop
    ld b, e
    add h
    nop
    ld b, c
    inc b
    ld d, [hl]
    inc b
    jr c, jr_014_64ca

    ld c, b
    add h
    nop
    ld h, c
    ld [bc], a
    ld a, l
    ld b, $06
    add l
    nop
    ld d, e
    dec b
    ld c, l
    ld c, b
    ld c, b
    ld c, h
    inc b
    ld d, b
    daa
    inc b
    ld [bc], a
    ld c, b
    ld c, b
    ld c, b
    jp z, Jump_014_6c01

    ld bc, $0404
    add l
    ld bc, $873a
    ld bc, $0167
    ld c, h
    inc b
    add l
    ld bc, $c74a
    nop
    sbc b
    ld bc, $4c48
    add h
    ld bc, $005a
    ld c, h
    db $e4
    ld e, a
    ld c, b

jr_014_64ab:
    ldh a, [$ff2f]
    ld bc, $0200
    dec [hl]
    ld b, $4f
    inc l
    ld c, b
    ld [bc], a
    jr c, jr_014_64bc

    ld d, a
    add l
    ld [bc], a
    ld [hl-], a

jr_014_64bc:
    ld bc, $4806
    jp $4a02


    nop
    ld b, $87
    ld bc, $0250
    ld b, $04

jr_014_64ca:
    ld b, $c3
    ld [bc], a
    ld e, d
    ld [bc], a
    inc b
    ld c, b
    ld c, b
    dec l
    inc b
    ld bc, $0635
    dec l
    inc b
    inc bc
    jr c, jr_014_64e0

    inc b
    ld c, l
    ld h, $48

jr_014_64e0:
    ld [hl+], a
    ld h, l
    ld bc, $4848
    adc c
    ld [bc], a
    add c
    jp $8900


    inc h
    ld c, b
    ld bc, $4848
    rst $00
    ld [bc], a
    and e
    push bc
    ld [bc], a
    xor e
    ld bc, $4848
    ld hl, sp+$20
    ld [bc], a
    or e
    add l
    nop
    add c

Call_014_6500:
    nop
    ld h, d
    adc [hl]
    ld [bc], a
    sbc l
    nop
    add c
    adc a
    ld [bc], a
    db $dd
    nop
    inc b
    ld hl, sp+$43
    ld [bc], a
    ld de, $02c8
    ld c, a
    add h
    ld [bc], a
    ld c, c
    adc b
    ld [bc], a
    ld d, a
    add l
    ld [bc], a
    ld d, a
    nop
    ld b, $3f
    inc b
    jp $8e02


    add h
    ld [bc], a
    adc b
    jp z, $8703

    adc b
    ld [bc], a
    sbc b
    ld [bc], a
    inc b
    inc b
    inc b
    adc b
    inc bc
    sub b
    add $03
    and a
    sbc a
    inc bc
    sub b
    add e
    ld [bc], a
    jp c, $0288

    ret c

    ld [bc], a
    inc b
    ld h, d
    inc b
    add e
    ld [bc], a
    ld [$0288], a
    add sp, $01
    inc b
    add c
    adc a
    inc bc
    rst $18
    nop
    inc b
    ldh a, [rLCDC]
    nop
    ld bc, $03cd
    ld b, d
    nop
    inc bc
    call nz, Call_014_5a02
    add h
    ld bc, $cd40
    nop
    add l
    ld bc, $4f57
    adc $00
    add l
    inc b
    ld a, l
    ld b, $06
    dec [hl]
    ld c, a
    adc b
    nop
    rra
    add h
    nop
    ld [hl], d
    inc b
    jr c, jr_014_65cf

    ld c, b
    inc bc
    ld c, b
    adc e
    inc b
    add b
    nop
    ld c, l
    ldh a, [$ff60]
    nop
    sbc a
    nop
    dec a
    rst $38
    ld de, $3113
    rst $38
    inc b
    ld bc, $80ff
    sbc b
    sbc b
    add b
    sbc b
    ld d, b
    ret z

    add sp, -$78
    ld [$4c82], sp
    ld c, h
    sub b
    ld c, h
    ld bc, $0102
    ld bc, $0c05
    ld b, $6c
    rla
    add a
    ld h, l
    inc d
    ld h, l
    ld c, [hl]
    ld [$0000], sp
    ld a, $e4
    inc hl
    inc bc
    ld [hl+], a
    ld c, b
    call z, Call_000_2700
    inc bc
    ld c, b
    rlca
    jr nc, jr_014_65ed

    call z, Call_000_3600
    inc b
    dec b
    ld [hl-], a
    inc sp
    dec b
    ld c, b
    adc d
    nop
    ld e, $01
    dec b
    dec b
    ret


    nop
    ld d, a
    nop

jr_014_65cf:
    ld c, b
    ld [hl+], a
    rlca
    ld bc, $0505
    jp z, $6700

    ld bc, $6005
    ld [hl+], a
    dec b
    jp z, Jump_014_7700

    ld bc, $6805
    ld [hl+], a

jr_014_65e4:
    dec b
    rlc b
    add a
    inc bc
    ld b, b
    dec b
    dec b
    ld c, b

jr_014_65ed:
    ret


    nop
    sub a
    ld a, [hl+]
    ld c, b
    ld [bc], a
    ld c, b
    inc bc
    inc bc
    jp nc, $af00

    inc b
    ld b, $35
    ld b, $06
    ld c, b
    jp z, $c700

    inc b
    inc b
    jr c, @+$06

    inc b
    ld c, b
    jp z, $d700

    inc b
    ld c, b
    ld c, b
    inc b
    ld l, $48
    jp z, $e700

    inc b
    ld c, b
    ld c, b
    inc b
    inc b
    ld c, b
    call nz, $f700
    sbc a
    nop
    db $dd

jr_014_6620:
    adc d
    nop
    sbc l
    ld hl, sp+$26

jr_014_6625:
    nop
    ld a, [hl+]
    nop
    dec a
    ld l, $00
    nop
    inc bc
    db $e4
    sbc a
    nop
    rst $38
    rra
    inc e
    ld a, $12
    rst $38
    inc b
    rst $38
    jr z, jr_014_66b2

    jr c, jr_014_65e4

    jr z, jr_014_6666

    jr z, jr_014_66b0

    add c
    ld e, c
    cp [hl]
    ld c, d
    ld bc, $0101
    ld bc, HeaderLogo
    ld b, $6c
    rla
    ld sp, $1466
    ld a, [hl]
    ld c, [hl]
    ld [$0000], sp
    ld a, $2f
    inc bc
    inc l
    add c
    add h
    nop
    ld c, $23
    rlca
    nop
    ld b, d
    jp z, $2600

    inc hl
    dec b

jr_014_6666:
    nop
    ld b, b
    jp z, Jump_000_3600

    inc hl
    dec b
    nop
    ld [hl], h
    adc [hl]
    nop
    jr c, jr_014_6673

jr_014_6673:
    dec b
    sbc a
    nop
    jr c, @-$7b

    nop
    jr c, jr_014_6673

    ld hl, $2200
    nop
    dec a
    db $e4
    ld h, b
    inc bc
    rst $38
    ld [bc], a
    inc b
    dec b
    rlca
    ld b, $17
    inc c
    rst $38
    inc bc
    inc b
    rst $38
    ld [hl], b
    and b
    ret nc

    jr nc, @+$62

    sub b
    nop
    jr c, jr_014_6620

    jr c, @+$3a

    adc b
    jr c, jr_014_6625

    jp nc, Jump_000_0dd1

    ld a, [de]
    rrca
    ld d, b
    inc [hl]
    ld [bc], a
    ld bc, $0204
    ld [de], a
    ld [bc], a
    sub b
    ld [hl], c
    rla
    add h
    ld h, [hl]
    inc d

jr_014_66b0:
    add d
    ld c, [hl]

jr_014_66b2:
    ld [$3200], sp
    inc bc
    rlca
    add b
    ld b, $25
    ld hl, $2523
    ld hl, $8423
    nop
    dec d
    ld [hl+], a
    inc bc
    ld b, $28
    ld e, e
    dec h
    ld e, d
    ld e, e
    dec h
    ld e, d
    add l
    nop
    inc h
    ld [hl+], a
    inc bc
    ld b, $04
    ld e, c
    add e
    add d
    add d
    add e
    add d
    call nz, Call_000_3900
    nop
    add d
    add e
    nop
    jr nz, jr_014_66e2

jr_014_66e2:
    ld h, l
    inc hl
    inc h
    nop
    ld e, [hl]
    call nz, Call_014_4900
    nop
    ld e, [hl]
    add h
    nop
    jr nc, jr_014_6713

jr_014_66f0:
    add d
    nop
    ld e, [hl]
    call nz, Call_014_5900
    nop
    ld e, [hl]
    add h
    nop
    ld b, b
    ld a, [hl+]
    ld e, [hl]
    add e
    nop

jr_014_66ff:
    jr nc, jr_014_6703

    ld b, $5e

jr_014_6703:
    ld e, [hl]
    ret z

    nop
    ld c, a
    add a
    nop
    ld h, b
    inc bc
    add h
    add d
    add d
    add l
    add e
    nop
    add [hl]
    add h

jr_014_6713:
    nop
    ld [hl], b
    ld h, d
    inc b
    ld b, $24
    inc b
    ld b, $24
    inc b
    ld b, $24
    jp $3300


    ld bc, $2928
    ld h, e
    ld hl, $2106
    inc hl
    inc h
    ld hl, $2423
    ld hl, $5fe4
    inc bc
    nop
    inc hl
    adc c
    nop
    dec d
    ld bc, $0604
    ld [hl+], a
    inc bc
    adc e
    nop
    inc h
    nop
    add hl, hl
    call Call_014_4200
    ld bc, $0658
    call $5200
    ld bc, $2964
    call Call_014_6200
    ld bc, $0658
    call Call_014_7200
    ld bc, $2964
    rlc b
    add d
    ld bc, $5e6a
    add h
    ld bc, $011b
    add d
    add l
    add [hl]
    nop
    add [hl]
    nop
    jr jr_014_66f0

    ld bc, $886a
    nop
    sub a
    ld bc, $0605
    add h
    ld bc, $881b
    nop
    and a
    inc bc
    ld [hl+], a
    inc hl
    jr z, jr_014_66ff

    db $e4
    ld d, d
    inc bc
    rst $38
    ld a, [bc]
    dec b
    ld a, [hl+]
    cpl
    ld d, $07
    inc d
    rst $38
    inc bc
    ld bc, $0504
    inc bc
    ld [bc], a
    nop
    rst $38
    ld hl, sp-$08
    ld hl, sp-$58
    ld e, b
    jr c, jr_014_67d1

    ld a, b
    sbc b
    ld [$98d8], sp
    cp b
    ld l, b
    ld hl, sp-$08
    jr c, jr_014_67bc

    jr z, jr_014_680e

    xor b
    jr c, jr_014_67d1

    ld a, b
    cp b
    ld a, b
    jr c, jr_014_67e6

    ld a, b
    ld a, b
    xor b
    jr c, jr_014_682b

    cp b
    ld a, b
    jr z, @+$16

    inc d
    inc d
    inc d
    dec c
    ld a, l

jr_014_67bc:
    adc b
    ld a, l
    adc b
    dec c
    ld c, a
    ld c, a
    ld a, [de]
    ld c, l
    ld c, a
    adc b
    ld c, a
    inc d
    rlca
    ld bc, $0101
    ld h, l
    ld b, $06
    ld l, h
    rla

jr_014_67d1:
    add d
    ld h, a
    inc d
    adc c
    ld c, [hl]
    ld [$0000], sp
    ld a, $2f
    inc bc
    ld l, $48
    adc e
    nop
    db $10
    inc hl
    ld b, $8b
    nop
    db $10

jr_014_67e6:
    ld [hl+], a
    inc b
    nop
    ld d, b
    adc [hl]
    nop
    jr nc, jr_014_67ee

jr_014_67ee:
    inc b
    sub c
    nop
    db $10
    daa
    ld b, $00
    ld c, a
    add [hl]
    nop
    dec hl
    ld h, $04
    ld bc, $5745
    add [hl]
    nop
    dec sp
    ld bc, $4604
    add $00
    ld a, b
    adc h
    nop
    ld c, e
    ld [bc], a
    inc b
    inc b

jr_014_680d:
    inc b

jr_014_680e:
    adc h
    nop
    dec de
    inc bc
    inc b
    ld b, l
    inc b
    ld b, $8b
    nop
    inc l
    inc hl
    inc b
    adc e
    nop
    inc a
    nop
    ld c, h
    ld [hl+], a
    inc b
    add e
    nop
    ld c, h
    rst $08
    nop
    jr nz, jr_014_680d

    cpl
    inc bc

jr_014_682b:
    cpl
    ld c, b
    add l
    nop
    ld h, l
    jr z, @+$4a

    nop
    ld c, [hl]
    inc h
    inc b
    nop
    ld d, a
    add l
    nop
    add hl, hl
    ld [hl+], a
    ld c, b
    ld b, $56
    inc b
    inc b
    inc b
    inc b
    ld b, l
    inc b
    adc b
    nop
    sub l
    adc b
    ld bc, $8345
    ld bc, $022f
    ld c, a
    ld c, b
    ld c, b
    add e
    nop
    xor d
    ld [hl+], a
    inc b
    ld [bc], a
    ld b, $06
    ld a, h
    ld [hl+], a
    inc b
    ld [bc], a
    ld a, l
    ld b, $06
    add l
    nop
    ld [hl], h
    add h
    nop
    cp d
    nop
    ld d, b
    inc [hl]
    inc b
    adc c
    ld bc, HeaderSGBFlag
    inc b
    inc b
    add e
    nop
    jr z, jr_014_6877

    ld b, $06

jr_014_6877:
    ld b, $8b
    ld bc, $0043
    ld c, b
    adc b
    ld bc, $028a
    ld h, $26
    ld h, $88
    nop
    or h
    nop
    ld c, l
    add hl, hl
    ld c, b
    nop
    ld c, b
    ldh a, [rHDMA3]
    nop
    pop de
    nop
    ld b, $89
    ld bc, $8a20
    ld bc, $8475
    ld bc, $0035
    ld b, l
    inc h
    inc b
    adc [hl]
    ld bc, $0040
    ld c, b
    adc e
    ld bc, $2350
    ld b, $89
    ld bc, $0060
    ld b, l
    add h
    ld bc, $0476
    inc b
    inc b
    inc b
    inc b
    ld b, l
    sub a
    ld bc, $cc7b
    ld [bc], a
    ld d, a
    add e
    ld [bc], a
    ld e, $ca
    nop
    xor a
    ld [bc], a
    inc b
    ld c, b
    ld c, b
    adc c
    ld bc, $8377
    ld bc, $c5b6
    ld bc, $8591
    ld bc, $83c0
    ld bc, $f8cc
    ld d, a
    ld [bc], a
    rra
    rst $08
    ld [bc], a
    add hl, hl
    adc c
    ld [bc], a
    or d
    rst $08
    ld [bc], a
    sub l
    ld bc, $484f
    adc l
    nop
    ld sp, $7d00
    adc b
    inc bc
    ld a, [hl+]
    adc $01
    ld a, [hl]
    rst $08
    ld bc, $0090
    ld c, b
    add h
    ld bc, $018a
    inc b
    ld c, b
    call nc, Call_014_5d02
    add a
    ld [bc], a
    ld h, d
    nop
    ld h, $cd
    ld [bc], a
    cp a
    nop
    inc b
    add l
    nop
    jp $0289


    add [hl]
    ldh a, [$ff50]
    ld bc, $8ad0
    ld bc, $8325
    ld [bc], a
    ld h, l
    sbc e
    ld bc, $0234
    ld b, l
    inc b
    inc b
    adc h
    ld bc, $c353
    ld [bc], a
    or e
    adc l
    ld bc, $0264
    ld b, $06
    ld b, l
    add $01
    ld a, a
    add h
    ld [bc], a
    halt
    sbc l
    ld bc, $247b
    ld c, b
    adc l
    ld [bc], a
    ld c, d
    ld bc, $0606
    adc e
    ld bc, $01b4
    ld c, b
    ld c, b
    adc a

jr_014_6946:
    ld bc, $f0c2
    ld d, b
    inc bc
    adc $02
    inc bc
    ld b, $06
    adc h
    ld bc, $0020
    inc bc
    add a
    ld [bc], a
    inc [hl]
    call z, $d700
    jp c, $aa00

    ld [bc], a
    ld b, $48
    ld b, $ca
    ld [bc], a
    ld l, l
    ld bc, $0348
    rlc e
    ld a, h
    inc bc
    ld a, [hl-]
    inc b
    ld c, b
    inc bc
    adc e
    inc bc
    ld a, d
    ld bc, $0441
    add [hl]
    dec b
    ld c, [hl]
    jp c, $ba00

    add h
    inc bc
    ld a, [hl-]
    adc $00
    sbc d
    add e
    ld bc, $c6c2
    nop
    daa
    adc a
    nop
    ret nc

    push hl
    rrca
    inc bc
    nop
    dec a
    cpl
    inc bc
    rst $38
    rra
    inc e
    ld a, $18
    rst $38
    inc b
    rst $38
    jr z, @+$7a

    jr c, jr_014_6946

    jr z, jr_014_69c8

    jr z, @+$72

    add c
    ld e, c
    cp a
    ld d, e
    ld bc, $0101
    ld bc, HeaderLogo
    ld b, $6c
    rla
    sub e
    ld l, c
    inc d
    sub [hl]
    ld c, [hl]
    ld [$0000], sp
    ld a, $2f
    inc bc
    inc l
    ld c, b
    add h
    nop
    ld c, $23
    rlca
    nop
    ld b, d
    jp z, $2600

    inc hl
    dec b

jr_014_69c8:
    nop
    ld b, b
    jp z, Jump_000_3600

    inc hl
    dec b
    nop
    ld [hl], h
    adc [hl]
    nop
    jr c, jr_014_69d5

jr_014_69d5:
    dec b
    sbc a
    nop
    jr c, @-$7b

    nop
    jr c, jr_014_69d5

    ld hl, $2200
    nop
    dec a
    db $e4
    ld h, b
    inc bc
    rst $38
    rrca
    dec b
    inc c
    scf
    rst $38
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $ff08
    ldh [$ffc0], a
    and b
    nop
    cp b
    cp b
    cp b
    ld c, b
    adc b
    add sp, -$58
    ld c, b
    nop
    jr nz, jr_014_6a41

    ld h, b
    add b
    and b
    ret nz

    ldh [$ff28], a
    jr c, jr_014_6a51

    jr jr_014_6a23

    jr jr_014_6a25

    jr jr_014_6a27

    ld e, b
    ld c, b
    jr nc, jr_014_6a2b

    jr jr_014_6a2d

    jr @+$1a

    jr @+$1a

    jr jr_014_69c8

    xor l
    xor l
    xor l
    xor l
    xor e
    xor c
    dec c
    dec c

jr_014_6a23:
    dec [hl]
    dec [hl]

jr_014_6a25:
    inc h
    sbc a

jr_014_6a27:
    sbc a
    sbc a
    sbc a
    sbc a

jr_014_6a2b:
    sbc a
    sbc a

jr_014_6a2d:
    sbc a
    ld b, $01
    ld bc, $5501
    ld bc, $7190
    rla
    and $69
    inc d
    sbc d
    ld c, [hl]
    ld [$0000], sp
    ld l, [hl]
    ld [hl-], a

jr_014_6a41:
    nop
    ld bc, $100f
    adc h
    nop
    add hl, bc
    adc d
    nop
    dec bc
    ldh a, [rNR41]
    nop
    ld a, [bc]
    nop
    inc b

jr_014_6a51:
    inc l
    nop
    ld [bc], a
    inc b
    ld b, $21
    adc l
    nop
    ld d, d
    inc b
    inc hl
    ld hl, $1515
    dec e
    dec h
    dec d
    add h
    nop
    ld l, e
    jp $6e00


    ld b, $05
    dec b
    ld b, $04
    ld b, $04
    ld b, $43
    ld hl, $0223
    ld hl, $2222
    ld b, l
    inc hl
    ld hl, $5fe4
    inc bc
    nop
    nop
    ldh a, [$ff2a]
    nop
    ld bc, $0093
    dec hl
    ld [bc], a
    ld b, $04
    cpl
    adc h
    nop
    ld de, $2304
    ld hl, $0423
    cpl
    add l
    nop
    ld c, d
    ld bc, $0605
    add h
    ld bc, $874d
    ld bc, $6250
    rlca
    add a
    ld bc, $015d
    ld hl, $2323
    dec d
    nop
    ld a, [bc]
    call Call_014_7a01
    ld bc, $0b00
    jp $8a01


    adc e
    ld bc, $f880
    ld h, e
    ld bc, $0103
    nop
    nop
    ldh a, [rSCX]
    nop
    ld bc, $0003
    nop
    ld l, $06
    call nz, $4101
    nop
    inc c
    add a
    ld [bc], a
    ld b, h
    add e
    ld bc, $8b83
    ld [bc], a
    ld d, b
    add a
    ld bc, $4583
    ld hl, $0323
    dec d
    dec d
    dec d
    dec d
    ld b, c
    ld hl, $9723
    ld [bc], a
    ld h, h
    ldh a, [$ffa3]
    ld bc, $009c
    inc c
    add e
    nop
    ld e, d
    ld [bc], a
    ld b, $04
    cpl
    dec hl
    nop
    add e
    ld bc, $8b61
    inc bc
    ld b, h
    ld b, e
    ld hl, $8323
    inc bc
    ld b, h
    ldh a, [rNR44]
    ld [bc], a
    ld a, h
    ld b, l
    ld hl, $e423
    ld e, a
    inc bc
    nop
    nop
    adc c
    ld [bc], a
    nop
    ldh a, [$ff29]
    ld bc, $9716
    nop
    rrca
    ld [bc], a
    ld l, $06
    inc b
    adc b
    ld bc, $8357
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld hl, $2123
    adc b
    ld bc, $0167
    ld l, $06
    ret z

    ld [bc], a
    add h
    nop
    ld a, [bc]
    adc d
    ld [bc], a
    ld a, h
    add h
    ld bc, $8387
    ld [bc], a
    ld l, h
    add e
    inc b
    ld a, c
    rlc h
    adc e
    ldh a, [$ff7a]
    nop
    sbc c
    sub b
    nop
    ld [de], a
    sbc d
    nop
    inc c

jr_014_6b49:
    nop
    ld b, $8e

jr_014_6b4c:
    nop
    ld c, $02
    inc hl

jr_014_6b50:
    inc b
    ld b, $2c
    nop
    ld bc, $2123
    adc d
    dec b
    ld d, b
    nop
    add hl, de
    add a
    ld bc, $005e
    ld b, $25
    dec d
    ld [bc], a
    jr jr_014_6b7b

    dec d
    adc c
    inc bc
    ld h, l
    add e
    nop
    add b
    ld bc, $0406
    ld b, l
    inc hl
    ld hl, $2203
    ld [hl+], a
    inc hl
    inc e
    db $e4
    ld e, a
    inc bc

jr_014_6b7b:
    rst $38
    ld sp, $1432

jr_014_6b7f:
    ld a, [bc]
    inc sp
    rst $38
    ld bc, $0203
    ld [bc], a

jr_014_6b86:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $b8ff
    jr c, jr_014_6b86

    cp b
    jr c, jr_014_6b49

    cp b
    jr c, jr_014_6b4c

    jr c, @-$46

    jr c, jr_014_6b50

    jr c, jr_014_6bd2

    ld c, b
    ld c, b
    ld e, b
    jr z, @+$2a

    ld c, b
    ld e, b
    ld c, b
    ld c, b
    ld e, b
    jr z, jr_014_6bee

    ld c, b
    jr z, jr_014_6bf1

    sub b
    sub d
    ld c, l
    inc d
    sub b
    inc d
    sub b
    sub h
    sub b
    inc d
    sub h
    sub d
    inc d
    inc d
    inc d
    ld [$0201], sp
    ld bc, $0173
    sub b
    ld [hl], c
    rla
    ld a, h
    ld l, e
    inc d
    xor b
    ld c, [hl]
    ld [$0100], sp
    inc bc
    ld l, [hl]
    dec l
    nop
    nop
    inc bc
    ld l, $00
    inc b

jr_014_6bd2:
    inc bc
    rrca
    stop
    nop
    add e
    nop
    ld hl, $0f01
    db $10
    add a
    nop
    dec bc
    nop
    add hl, de
    ld [hl+], a
    nop
    inc c
    inc de
    inc d
    nop
    nop
    ld de, $0012
    inc de
    inc d

jr_014_6bee:
    inc bc
    nop
    nop

jr_014_6bf1:
    jr jr_014_6b7f

    nop
    inc b
    ld [hl+], a
    dec b
    nop
    ld b, $24
    inc c
    nop
    inc b
    add h
    nop
    ld d, e
    nop

Jump_014_6c01:
    inc bc
    ld [hl+], a
    ld [$0900], sp
    inc h
    nop
    ld [bc], a
    rlca
    ld [$8509], sp
    nop
    dec c
    nop
    ld a, [bc]
    ld h, $00
    add h
    nop
    ld [hl], e
    inc bc
    inc bc
    dec d
    dec d
    dec bc
    ld h, $15
    add h
    nop
    add e
    inc bc
    inc bc
    nop
    nop
    dec bc
    ld h, $00
    add h
    nop
    sub e
    db $e4
    ld e, a
    inc bc
    db $e4
    jr nz, jr_014_6c30

jr_014_6c30:
    add h
    nop
    add hl, hl
    ld bc, $100f
    add a
    nop
    jr z, jr_014_6c3a

jr_014_6c3a:
    nop
    add h
    nop
    add hl, sp
    ld bc, $0000
    add a
    nop
    ld e, b
    inc h
    nop
    adc d
    nop
    ld h, l
    add [hl]
    nop
    ld e, b
    call nz, $7f00
    adc e
    ld bc, $8544
    nop
    sbc b
    ld bc, $0504
    jp z, Jump_014_7e00

    nop
    dec bc
    add e
    nop
    ld l, b
    call $8e00
    ld bc, $0a15
    call $9e00
    ld bc, $0b00
    db $e4
    ld e, a
    inc bc
    ldh a, [rNR50]
    ld bc, $8a00
    nop
    dec h
    add [hl]
    nop
    ld e, b
    adc b
    nop
    scf
    add h
    ld bc, $2d60
    nop
    nop
    ld a, [bc]
    adc d
    ld [bc], a
    inc l
    inc b
    inc c
    ld b, $00
    nop
    dec bc
    adc e
    ld bc, $0044
    add hl, bc
    call Call_014_7d01
    nop
    nop
    adc [hl]
    ld bc, $0180
    dec d
    nop
    ldh a, [$ff93]
    nop
    sub c
    ld [bc], a
    rrca
    stop
    adc [hl]
    ld bc, $8828
    ld [bc], a
    scf
    cpl
    nop
    add h
    nop
    ld e, b
    ld bc, $0000
    sub b
    ld bc, $013f
    nop
    nop
    add l
    ld bc, $8f3a
    ld bc, $8a58
    ld bc, $0080
    ld a, [bc]
    ldh a, [$ffc3]
    ld [bc], a
    adc h
    ret


    inc bc
    ld e, [hl]
    nop
    inc b
    adc c
    nop
    ld d, e
    add a
    ld bc, $8d5d
    ld bc, $845d
    ld [bc], a
    ld a, e
    jp $8e03


    ldh a, [$ffb2]
    ld [bc], a
    add h
    ldh a, [$ff57]
    ld bc, $0037
    dec bc
    pop af
    ld a, l
    ld bc, $0090
    inc bc
    ret nc

    rlca
    ld c, $8d
    ld [bc], a
    jr nz, jr_014_6cf3

    inc bc

jr_014_6cf3:
    inc bc
    adc b
    inc bc
    jr nc, @-$6d

    rlca
    add hl, bc
    nop
    ld a, [de]
    add e
    nop
    sbc [hl]
    ld bc, $0c0c
    adc c

Call_014_6d03:
    inc b
    ld e, d
    inc bc
    dec b
    dec b
    inc bc
    inc bc

jr_014_6d0a:
    adc e
    inc b
    ld l, b
    inc bc
    ld [$0308], sp
    inc bc
    adc $00
    ld a, [hl]
    nop
    inc bc
    adc $00
    adc [hl]
    nop
    inc bc
    adc h
    ld bc, $0090
    ld l, a
    db $e4
    ld h, c
    inc bc
    rst $38
    ld a, [hl+]
    inc h
    scf
    ld [bc], a
    ld d, $ff
    nop
    ld [bc], a
    dec b
    ld bc, $0000
    nop
    ld bc, $c8ff
    add b
    nop
    adc b
    jr z, jr_014_6d0a

    ld d, b
    cp b
    jr @+$42

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nc, jr_014_6dc5

    ld a, b
    sbc a
    ld a, l
    jp nc, $9e77

    ld c, a
    ld c, a
    inc b
    ld [bc], a
    ld bc, $3501
    dec c
    ld b, $6c
    rla
    dec h
    ld l, l
    inc d
    or [hl]
    ld c, [hl]
    ld [$0000], sp
    ld a, $e5
    ld e, $03
    jr nc, jr_014_6dae

    ld bc, $3506
    inc l
    ld b, $07
    ld c, b
    inc b
    jr c, jr_014_6d74

    inc b
    ld d, b
    inc b
    inc b

jr_014_6d74:
    add h
    ld bc, $0243
    inc b
    ld d, b
    inc b
    ld hl, sp-$31
    ld bc, $902f
    ld bc, $0221
    ld d, d
    ld b, $52
    dec hl
    ld b, $41
    inc b
    ld d, b
    nop
    inc b
    jp z, Jump_014_4f01

    ldh a, [$ffdd]
    ld bc, $0150
    inc bc
    inc bc
    adc l
    ld bc, $0133
    inc bc
    inc bc
    inc l
    inc b
    nop
    ld c, b
    call nz, Call_000_2f03
    ld h, $2e
    add a
    ld bc, $015c
    ld c, b
    ld [hl], c
    inc h
    inc b

jr_014_6dae:
    nop
    ld [hl], b
    add a
    ld bc, $845f
    inc bc
    ld d, d
    add $03
    ld [hl], l
    sbc a
    inc bc
    ld e, [hl]

jr_014_6dbc:
    sbc a
    inc bc
    ld e, [hl]
    ldh a, [$ff3b]
    inc bc
    ld e, [hl]
    nop
    ld c, b

jr_014_6dc5:
    and $23
    inc bc
    adc b
    ld bc, $c75f
    ld b, $26
    rst $00
    ld b, $2e
    ld hl, sp-$37
    ld b, $36
    adc e
    inc bc
    ld h, d
    sub c
    inc bc
    ld c, [hl]
    ld [bc], a
    ld b, $06
    ld b, $26
    inc b
    sub b
    inc bc
    ld a, [hl-]
    ld [bc], a
    ld [hl], d
    inc b
    ld c, b
    ld hl, sp+$20
    inc bc
    cpl
    nop
    dec a
    db $e4
    sbc a
    inc bc
    rst $38
    rra
    inc e
    ld a, $1a
    rst $38
    inc b
    rst $38
    jr z, @+$7a

    jr c, jr_014_6e45

    jr z, jr_014_6e27

    jr z, @+$72

    add c
    ld e, c
    ret nz

    ld d, a
    ld bc, $0101
    ld bc, HeaderLogo
    ld b, $6c
    rla
    ldh a, [c]
    ld l, l
    inc d
    jp $084e


    nop
    nop
    ld a, $2f
    inc bc
    inc l
    ld c, b
    add h
    nop
    ld c, $23
    rlca
    nop
    ld b, d
    jp z, $2600

    inc hl
    dec b

jr_014_6e27:
    nop
    ld b, b
    jp z, Jump_000_3600

    inc hl
    dec b
    nop
    ld [hl], h
    adc [hl]
    nop
    jr c, jr_014_6e34

jr_014_6e34:
    dec b
    sbc a
    nop
    jr c, jr_014_6dbc

    nop
    jr c, jr_014_6e34

    ld hl, $2200
    nop
    dec a
    db $e4
    ld h, b
    inc bc
    rst $38

jr_014_6e45:
    inc c
    ld [hl+], a
    nop
    ld c, $ff
    inc b
    nop
    rlca
    nop
    inc bc
    dec b
    rst $38
    ret c

    ld c, b
    ld a, b
    xor b
    xor b
    ld c, b
    ret z

    ret z

    ret z

    ld c, b
    adc b
    and b
    ld l, b
    ret nz

    adc b
    jr z, jr_014_6eaa

    ld l, b
    ret z

    ret nz

    ret c

    ld hl, sp-$20
    xor b
    ld l, b
    ld l, b
    sbc b
    ld hl, sp-$38
    ret c

    ld e, b
    jr c, @+$2a

    jr c, @-$66

    jr z, @+$0a

    ld e, b
    ld hl, $216c
    jr nz, jr_014_6e9e

    ld bc, $6c01
    ld l, h
    ld b, e
    inc hl
    ld b, e
    ld hl, $2343
    ld hl, $2243
    ld l, h
    inc bc
    ld [bc], a
    ld bc, $2501
    rla
    sub b
    ld [hl], c
    rla
    ld b, l
    ld l, [hl]
    inc d
    rst $00
    ld c, [hl]
    ld [$0001], sp
    ld d, $2f
    inc bc

jr_014_6e9e:
    dec b
    ld [$4849], sp
    ld [$4849], sp
    add l
    nop
    ld de, $0809

jr_014_6eaa:
    ld c, c
    ld c, b
    inc bc
    dec b
    ld c, b
    ld c, c
    dec b
    ld c, b
    ld c, c
    add l
    nop
    ld hl, $0505
    ld c, b
    ld c, c
    inc bc
    ld [hl+], a
    inc hl
    ld h, d
    ld hl, $2100
    add l
    nop
    ld sp, $2202
    inc hl
    ld hl, $2ff0
    nop
    db $10
    ldh a, [$ff34]
    nop
    db $10
    inc b
    dec [hl]
    inc [hl]
    ld [$3435], sp
    add l
    nop
    and h
    inc bc
    inc bc
    dec b
    ld c, b
    dec [hl]
    dec hl
    ld sp, $0304
    ld [hl+], a
    inc hl
    ld sp, $8e3f
    nop
    or l
    nop
    ld a, $8e
    nop
    or l
    adc a
    nop
    or h
    adc e
    nop
    or h
    sbc [hl]
    nop
    ld bc, $0800
    adc [hl]
    nop
    ld hl, $0500
    adc [hl]
    nop
    ld sp, $2200
    ldh a, [$ff2f]

Jump_014_6f05:
    ld bc, $f010
    ccf
    ld bc, $0110
    ld sp, $8d34
    ld bc, $0122
    ld sp, $8d31
    ld bc, $0232
    ld sp, $3431
    adc l
    ld bc, $01a3
    ld sp, $8c31
    ld bc, $22b0
    ld sp, $018c
    ret nz

    cpl
    inc bc
    adc [hl]
    ld bc, $0011
    inc bc
    adc [hl]
    ld bc, $0021
    inc bc
    add h
    nop
    ld [hl-], a
    add hl, bc
    dec l
    ld h, l
    ld h, h
    ld [$6465], sp
    ld [hl], $23
    ld hl, $8522
    ld [bc], a
    rrca
    nop
    ld h, e
    inc h
    ld e, [hl]
    nop
    ld h, d
    add a
    ld [bc], a
    inc e
    nop
    ld h, l
    ld h, $5e
    nop
    ld h, h
    add [hl]
    ld [bc], a
    dec l
    jr z, jr_014_6fb8

    add [hl]
    ld [bc], a
    dec a
    nop
    ld b, $26
    ld e, [hl]
    nop
    inc b
    add [hl]
    ld [bc], a
    dec e
    nop
    ld e, e
    ld h, $54
    nop
    ld e, d
    add h
    ld [bc], a
    dec l
    adc d
    nop
    pop hl
    add [hl]
    ld [bc], a
    dec a
    nop
    ld e, c
    ld h, $31
    nop
    ld e, b
    add a
    ld [bc], a
    ld a, l
    ld h, $31
    ldh a, [$ff2f]
    ld [bc], a
    adc h
    sub e
    ld [bc], a
    adc h
    inc bc
    inc bc
    ld [$3349], sp
    ld h, d
    ld sp, $3101
    ld [hl-], a
    add h
    inc bc
    inc bc
    ld bc, $3131
    adc l
    nop
    jr nz, jr_014_6f9c

    inc sp

jr_014_6f9c:
    ld sp, $008e
    jr nc, jr_014_6fa1

jr_014_6fa1:
    ld sp, $008e
    stop
    inc sp
    adc e
    nop
    jr nz, @+$04

    dec [hl]
    ld sp, $8c34
    nop
    cpl
    ld [bc], a
    ld sp, $3131
    adc h
    nop
    ccf

jr_014_6fb8:
    ld [bc], a
    inc sp
    ld sp, $f032
    add c
    nop
    rra
    db $d3
    ld bc, $870e
    nop
    and [hl]
    ld [bc], a
    ld c, c
    ld c, b
    ld [$312c], sp
    ld [bc], a
    inc [hl]
    ld c, c
    dec b
    dec l
    ld sp, $2101
    ld [hl+], a
    dec l
    ld sp, $3403
    ld [$3305], sp
    adc $04
    dec a
    adc l
    nop
    ldh [c], a
    nop
    ld sp, $0389
    ld bc, $04c5
    dec h
    adc e
    inc bc
    inc d
    add e
    inc b
    ld c, h
    adc l
    inc bc
    ld d, c
    ld bc, $3131
    adc e
    inc bc
    ld h, c
    add e
    inc b
    ld l, h
    adc [hl]
    inc bc
    ld de, $3100
    adc [hl]
    inc bc
    ld hl, $3100
    adc [hl]
    inc bc
    ld sp, $3100
    sbc a
    ld bc, $8e20
    ld [bc], a
    nop
    ldh a, [rLCDC]
    ld [bc], a
    sbc a
    nop
    inc [hl]
    adc [hl]
    ld [bc], a
    or c
    nop
    ld sp, $028e
    sub c
    inc b
    ld sp, $0834
    dec [hl]
    ld sp, $0289
    and l
    call z, $c000
    inc bc
    ld e, d
    ld c, c
    dec b
    inc bc
    adc [hl]
    inc b
    ld hl, $0584
    ld l, a
    sub l
    dec b
    ld h, h
    ld [bc], a
    ld [hl-], a
    dec b
    ld c, b
    adc h
    dec b
    ld a, l
    add l
    ld bc, $88fb
    inc bc
    dec b
    nop
    ld [hl-], a
    sub l
    ld [bc], a
    ld a, [de]
    sbc [hl]
    inc b
    pop hl
    nop
    rla
    rst $38
    ld a, [hl+]
    ld b, $0a
    inc b
    inc c
    rst $38
    ld bc, $0305
    ld bc, $ff02
    add sp, $78
    ld c, b
    jr @-$56

    ret c

    ld [$3868], sp
    add sp, $38
    adc b
    ld l, b
    ld c, b
    ld c, b
    ld c, b
    ld l, b
    ld c, b
    ld c, b
    ld l, b
    ld c, b
    ld e, b
    ld e, b
    ld e, b
    ld a, l
    rrca
    ld [de], a
    ld d, $7d
    rrca
    ld [de], a
    ld a, l
    ld d, $20
    ld hl, $0520
    ld bc, $0101
    ld b, l
    rlca
    ld b, $6c
    rla
    ld d, c
    ld [hl], b
    inc d
    adc $4e
    ld [$0000], sp
    ld a, $2f
    inc bc
    ld l, $48
    adc b
    nop
    db $10
    add $00
    daa
    sbc l
    nop
    stop
    ld b, $87
    nop
    rra
    nop
    ld c, [hl]
    dec h
    ld b, $01
    inc b
    ld b, $85
    nop
    db $10
    ld bc, $564e
    daa
    inc b
    rlca
    inc bc
    ld c, b
    ld c, [hl]
    dec [hl]
    ld b, $06
    ld a, h
    inc b
    adc c
    nop
    ld l, b
    ld bc, $3856
    inc hl
    inc b
    nop
    ld c, l
    adc b
    nop
    add hl, de
    nop
    ld c, h

jr_014_70cc:
    add h
    nop
    add h
    rst $00
    nop
    ld c, b
    ldh a, [rNR43]
    nop
    db $10
    ld hl, sp+$4c
    nop
    ld c, l
    db $e4
    jr nc, jr_014_7125

    ld b, $06
    ld c, b
    ld c, b

jr_014_70e1:
    ld b, $48
    ld c, b
    ld b, $88
    ld bc, $003f
    inc b
    add e
    nop
    ld e, h
    ld [bc], a
    ld b, $04
    ld b, $86
    ld bc, $3f50
    inc b
    ld [hl+], a
    ld c, b
    inc b
    ld h, d
    ld h, d
    ld h, d
    ld c, b
    ld c, b
    add $01

Jump_014_7100:
    add [hl]
    nop
    ld h, d
    add l
    ld bc, $017d
    inc b
    inc b
    add $01
    sub [hl]
    nop
    ld c, b
    add a
    ld bc, $c790
    ld bc, $9fa6
    ld bc, $0790
    inc b
    ld h, d
    inc b
    ld c, b
    ld c, b
    ld c, b
    inc b
    ld h, d
    ret z

    ld bc, $06d6
    ld c, b

jr_014_7125:
    inc b
    ld c, b
    ld c, b
    ld c, b
    inc b
    ld c, b
    push bc
    ld bc, $8fe6
    ld bc, $00de
    inc b
    ldh a, [$ff3d]
    nop
    rst $38
    ld [bc], a
    ld c, [hl]
    ld b, $35
    rlc c
    ld b, a
    inc bc
    ld c, [hl]
    ld d, [hl]
    inc b
    jr c, jr_014_70cc

    ld bc, $0351
    ld b, $06
    ld b, $7c
    sub d
    ld bc, $ce6f
    ld bc, $026d
    dec [hl]
    ld h, d
    ld h, d
    add hl, hl
    ld c, b
    inc bc
    ld c, h
    inc b
    inc b
    jr c, jr_014_70e1

    ld bc, $8a94
    ld [bc], a
    add h
    adc h
    ld [bc], a
    sub b
    ld [bc], a
    ld c, b
    ld c, b
    ld c, b
    add e
    ld [bc], a
    and b
    rst $00
    ld [bc], a
    or d
    sub $02
    cp d
    nop
    ld h, d
    adc [hl]
    ld [bc], a
    and h
    nop
    ld c, b
    add a
    ld [bc], a

jr_014_717b:
    call nc, Call_000_02c8
    ld [$3af0], a
    nop
    push af
    ld bc, $484f
    add e
    nop
    ld [hl], c
    ret


    inc bc
    jr nc, jr_014_718e

    ld d, a

jr_014_718e:
    ld c, b
    add e
    nop
    add c
    ld bc, $4f57
    add a
    nop
    ld d, e
    nop
    ld c, l
    add h
    ld [bc], a
    adc d
    ld bc, $7d04
    add h
    ld [bc], a
    ld e, b
    add l
    ld [bc], a
    sub d
    jp z, $8201

    ld bc, $0450
    add e
    inc bc
    jr nc, jr_014_717b

    ld [bc], a
    ld a, a
    add h
    inc bc
    ld b, b
    add a
    nop
    add [hl]
    add l
    nop
    add l
    nop
    ld c, h
    adc b
    nop
    add [hl]
    ld [bc], a
    ld h, $26
    ld h, $e4
    ld e, a
    ld c, b
    ldh a, [$ff3f]
    nop
    ld bc, $4f00
    add e
    nop
    ld d, a
    add e
    inc b
    ld b, b
    add l
    inc bc
    dec [hl]
    ld bc, $7d03
    add e
    nop
    halt
    ld bc, $7c7d
    add l
    inc bc
    ld d, h
    nop
    ld c, a
    jp Jump_014_7100


    push bc
    inc bc
    ld l, a
    nop
    ld d, b
    add h
    inc bc
    ld a, h
    ld bc, $0348
    inc l
    inc b
    dec b
    ld c, l
    ld c, b
    inc bc
    ld c, b
    ld c, b
    inc b
    adc e
    ld [bc], a
    sbc [hl]
    nop
    inc bc

Call_014_7200:
    add h
    inc bc
    sbc e
    add h
    inc bc
    sbc e
    ldh a, [$ff64]
    nop
    sbc e
    nop
    dec a
    rst $38
    ld de, $3113
    rst $38
    inc b
    ld bc, $80ff
    ld l, b
    ld l, b
    add b
    ld l, b
    ld d, b
    ret z

    add sp, -$78
    ld [$4c82], sp
    ld c, h
    sub b
    ld c, h
    ld bc, $0102
    ld bc, $1005
    ld b, $6c
    rla
    dec c
    ld [hl], d
    inc d
    db $ed
    ld c, [hl]
    ld [$0000], sp
    ld a, $e4
    inc hl
    inc bc
    ld [hl+], a
    ld c, b
    call z, Call_000_2700
    inc bc
    ld c, b
    rlca
    jr nc, jr_014_7273

    call z, Call_000_3600
    inc b
    dec b
    ld [hl-], a
    inc sp
    dec b
    ld c, b
    adc d
    nop
    ld e, $01
    dec b
    dec b
    ret


    nop
    ld d, a
    nop
    ld c, b
    ld [hl+], a
    rlca
    ld bc, $0505
    jp z, $6700

    ld bc, $6005
    ld [hl+], a
    dec b
    jp z, Jump_014_7700

    ld bc, $6805
    ld [hl+], a
    dec b
    rlc b
    add a
    inc bc
    ld b, b
    dec b
    dec b
    ld c, b

jr_014_7273:
    ret


    nop
    sub a
    ld a, [hl+]
    ld c, b
    ld [bc], a
    ld c, b
    inc bc
    inc bc
    jp nc, $af00

    inc b
    ld b, $35
    ld b, $06
    ld c, b
    jp z, $c700

    inc b
    inc b
    jr c, @+$06

    inc b
    ld c, b
    jp z, $d700

    inc b
    ld c, b
    ld c, b
    inc b
    ld l, $48
    jp z, $e700

    inc b
    ld c, b
    ld c, b
    inc b
    inc b
    ld c, b
    jp z, $f700

    ld bc, $6f6f
    add l
    nop
    push hl
    ld bc, $6d6d
    adc b
    nop
    db $fd
    add h
    nop
    sub $01
    ld l, e
    ld l, e
    add a
    nop
    db $fd
    dec h
    ld c, b
    ld bc, $6a6a
    add h
    nop
    ld a, [hl+]
    nop
    ld e, a
    add hl, hl
    inc bc
    ld [bc], a
    ld e, a
    inc bc
    inc bc
    pop de
    ld bc, $2b3f
    ld e, a
    db $e4
    jr nc, jr_014_72d3

    nop
    dec a
    cpl

jr_014_72d3:
    inc bc
    db $e4
    ld e, a
    nop
    rst $38
    ld de, $3113
    rst $38
    inc b
    ld bc, $80ff
    sbc b
    sbc b
    add b
    sbc b
    ld d, b
    ret z

    add sp, -$78
    ld [$4c82], sp
    ld c, h
    sub b
    ld c, h
    ld bc, $0102
    ld bc, $1005
    ld b, $6c
    rla
    ret c

    ld [hl], d
    inc d
    ld b, $4f
    ld [$0000], sp
    ld a, $e4
    inc hl
    inc bc
    ld [hl+], a
    ld c, b
    call z, Call_000_2700
    inc bc
    ld c, b
    rlca
    jr nc, jr_014_733e

    call z, Call_000_3600
    inc b
    dec b
    ld [hl-], a
    inc sp
    dec b
    ld c, b
    adc d
    nop
    ld e, $01
    dec b
    dec b
    ret


    nop
    ld d, a
    nop
    ld c, b
    ld [hl+], a
    rlca
    ld bc, $0505
    jp z, $6700

    ld bc, $6005
    ld [hl+], a
    dec b
    jp z, Jump_014_7700

    ld bc, $6805
    ld [hl+], a
    dec b
    rlc b
    add a
    inc bc
    ld b, b
    dec b
    dec b
    ld c, b

jr_014_733e:
    ret


    nop
    sub a
    ld a, [hl+]
    ld c, b
    ld [bc], a
    ld c, b
    inc bc
    inc bc
    jp nc, $af00

    inc b
    ld b, $35
    ld b, $06
    ld c, b
    jp z, $c700

    inc b
    inc b
    jr c, @+$06

    inc b
    ld c, b
    jp z, $d700

    inc b
    ld c, b
    ld c, b
    inc b
    ld l, $48
    jp z, $e700

    inc b
    ld c, b
    ld c, b
    inc b
    inc b
    ld c, b
    jp z, $f700

    ld bc, $6d6d
    add l
    nop
    push hl
    ld bc, $6f6f
    add l
    nop
    ld e, l
    ld bc, $6b6b
    add h
    nop
    push de
    adc b
    ld bc, $010a
    ld l, d
    ld l, d
    dec h
    ld c, b
    add [hl]
    ld bc, $000b
    ld e, a
    add hl, hl
    inc bc
    ld [bc], a
    ld e, a
    inc bc
    inc bc
    pop de

jr_014_7394:
    ld bc, $2b3f
    ld e, a
    db $e4

jr_014_7399:
    jr nc, @+$05

    nop
    dec a
    ld l, $00
    nop
    inc bc
    db $e4
    ld e, a
    nop
    rst $38
    inc e
    ld a, $1f
    add hl, de
    rst $38
    inc b
    rst $38
    ld a, b
    jr c, @+$2a

    ld c, b
    jr z, jr_014_73da

    jr z, jr_014_7424

    ld e, c
    pop bc
    add c
    ld d, l
    ld bc, $0101
    ld bc, HeaderLogo
    ld b, $6c
    rla
    and l
    ld [hl], e
    inc d
    rra
    ld c, a
    ld [$0000], sp
    ld a, $2f
    inc bc
    inc l
    ld c, b
    add h
    nop
    ld c, $23
    rlca
    nop
    ld b, d
    jp z, $2600

    inc hl
    dec b

jr_014_73da:
    nop
    ld b, b
    jp z, Jump_000_3600

    inc hl
    dec b
    nop
    ld [hl], h
    adc [hl]
    nop
    jr c, jr_014_73e7

jr_014_73e7:
    dec b
    sbc a
    nop
    jr c, @-$7b

    nop
    jr c, jr_014_73e7

    ld hl, $2200
    nop
    dec a
    db $e4
    ld h, b
    inc bc
    rst $38
    ld [bc], a
    inc b
    dec b
    rlca
    ld b, $17
    inc c
    rst $38
    inc bc
    inc b
    rst $38
    ld [hl], b
    and b
    ret nc

    jr nc, @+$62

    sub b
    nop
    jr c, jr_014_7394

    jr c, @+$3a

    adc b
    jr c, jr_014_7399

    jp nc, Jump_000_0dd1

    ld a, [de]
    rrca
    ld d, b
    dec [hl]
    ld [bc], a
    ld bc, $0204
    ld [de], a
    ld [bc], a
    sub b
    ld [hl], c
    rla
    ld hl, sp+$73
    inc d

jr_014_7424:
    inc hl
    ld c, a
    ld [$3200], sp
    inc bc
    rlca
    add b
    ld b, $25
    ld hl, $2523
    ld hl, $8423
    nop
    dec d
    ld [hl+], a
    inc bc
    ld b, $28
    ld e, e
    dec h
    ld e, d
    ld e, e
    dec h
    ld e, d
    add l
    nop
    inc h
    ld [hl+], a
    inc bc
    ld b, $04
    ld e, c
    add e
    add d
    add d
    add e
    add d
    call nz, Call_000_3900
    nop
    add d
    add e
    nop
    jr nz, jr_014_7456

jr_014_7456:
    ld h, l
    inc hl
    inc h
    nop
    ld e, [hl]
    call nz, Call_014_4900
    nop
    ld e, [hl]
    add h
    nop
    jr nc, jr_014_7487

    add d
    nop
    ld e, [hl]
    call nz, Call_014_5900
    nop
    ld e, [hl]
    add h
    nop
    ld b, b
    ld a, [hl+]
    ld e, [hl]
    add e
    nop
    jr nc, jr_014_7477

jr_014_7475:
    ld b, $5e

jr_014_7477:
    ld l, d
    ret z

    nop
    ld c, a
    add l
    nop
    ld h, b
    add hl, bc
    jr jr_014_74df

    add h
    add d
    add d
    add l
    ld e, [hl]
    ld e, [hl]

jr_014_7487:
    add h
    add d
    add h
    nop
    ld [hl], b
    ld h, d
    inc b
    ld b, $24
    inc b
    ld b, $24
    inc b
    ld b, $24
    jp $3300


    ld bc, $2928
    ld h, e
    ld hl, $2106
    inc hl
    inc h
    ld hl, $2423
    ld hl, $5fe4
    inc bc
    nop
    inc hl
    adc c
    nop
    dec d
    ld bc, $0604
    ld [hl+], a
    inc bc
    adc e
    nop
    inc h
    nop
    add hl, hl
    call Call_014_4200
    ld bc, $0658
    call $5200
    ld bc, $2964
    call Call_014_6200
    ld bc, $0658
    call Call_014_7200
    ld bc, $2964
    rlc b
    add d
    ld bc, $5e5e
    add h
    ld bc, $021b
    add d
    add l
    ld e, [hl]
    add h
    nop

jr_014_74df:
    add a
    add a
    ld bc, $8868
    nop

jr_014_74e5:
    sub a
    ld bc, $0605
    add h
    ld bc, $881b
    nop
    and a
    inc bc
    ld [hl+], a
    inc hl
    jr z, jr_014_7475

    db $e4
    ld d, d
    inc bc
    rst $38
    dec h
    ld sp, $3233
    ld d, $ff
    ld bc, $0103
    inc b
    inc b
    inc b
    ld bc, $a8ff
    ret z

    ret z

    ret z

    ld a, b
    jr z, jr_014_74e5

    jr z, jr_014_7537

    adc b
    adc b
    ld l, b
    xor b
    add sp, $38
    add sp, -$38
    ld [$6848], sp
    xor b
    jr z, jr_014_7585

    xor b
    ld l, b
    jr z, jr_014_7589

    jr z, @-$56

    ld a, b
    ld a, b
    jr z, @+$6a

    xor b
    ld a, b
    ld a, b
    ld a, e
    sub c
    sub l
    sub e
    sub c
    sub h
    sub e
    sub d
    sub b
    sub d
    sub h
    ld c, a
    ld c, a

jr_014_7537:
    sub d
    sub l
    sub h
    ld c, a
    ld c, a
    rlca

jr_014_753d:
    ld bc, $0101
    ld h, d
    ld b, $06
    ld l, h
    rla
    ld hl, sp+$74
    inc d
    ld a, [hl+]
    ld c, a
    ld [$0000], sp
    ld a, $37
    inc bc
    ld [hl+], a
    ld c, b
    ld bc, $0303
    jp z, $1a00

    ld bc, $3648
    adc a
    nop
    dec de
    sbc a
    nop
    dec de
    adc [hl]
    nop
    dec de
    nop
    scf
    add e
    nop
    dec de
    nop
    ld b, $89
    nop
    stop
    dec b
    add e
    nop
    dec de
    nop
    inc b
    adc a
    nop
    ld [hl], b
    adc [hl]
    nop
    ld [hl], b
    adc d
    nop
    rra
    nop
    ld e, d
    add h
    nop
    dec de
    sbc c
    nop

jr_014_7585:
    stop
    ld c, b
    sub h

jr_014_7589:
    nop
    xor e
    db $e4
    cpl
    inc bc
    jr c, jr_014_75d8

    inc hl
    ld b, $cb
    ld bc, $222b
    inc b
    nop
    ld d, b
    rlc c
    dec sp
    inc hl
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    sub [hl]
    ld bc, $0019
    ld c, a
    add a
    ld bc, $0028
    ld a, [hl-]
    inc h
    inc b
    ld bc, $5745
    add a
    ld bc, $0038
    jr c, jr_014_753d

    ld bc, $8c49
    ld bc, $8f48
    ld bc, $034d
    inc b
    ld b, l
    inc b
    ld b, $8b
    ld bc, $2329
    inc b

jr_014_75c9:
    adc e
    ld bc, $0039
    ld c, h
    ld [hl+], a
    inc b
    add [hl]
    ld bc, $f849
    ld b, c
    ld bc, $8f1f

jr_014_75d8:
    ld bc, $001b
    ld c, a
    jr z, jr_014_7626

    nop
    ld c, [hl]
    jp $aa01


    ld bc, $5704
    add l
    ld bc, $2226
    ld c, b
    ld b, $56
    inc b
    inc b
    inc b
    inc b
    ld b, l
    inc b
    add h
    ld bc, $c992
    ld [bc], a
    ld b, [hl]
    inc bc
    inc b
    ld c, b
    ld c, b
    ld c, [hl]
    ld [hl+], a
    inc b
    ld [bc], a
    ld c, a
    ld c, b
    ld c, b
    add [hl]
    ld bc, $0285
    ld b, $06
    ld a, h
    ld [hl+], a
    inc b
    nop
    ld a, l
    call nz, Call_014_6402
    ld [bc], a
    ld b, $04
    ld b, l
    adc b
    ld bc, $02b7
    inc b
    inc b
    ld b, l
    inc [hl]
    inc b
    adc h
    ld bc, $0192
    inc b
    ld b, l
    adc h

jr_014_7626:
    ld [bc], a
    sub d
    nop
    ld b, $85
    ld bc, $023d
    ld h, $26
    ld h, $88
    ld bc, $0033
    ld c, l
    adc e
    ld bc, $f099
    ld d, d
    ld bc, $83cf
    ld bc, $8961
    ld [bc], a
    jr nz, jr_014_75c9

    ld [bc], a
    ld [hl], l
    adc c
    ld [bc], a
    jr nc, jr_014_764b

    inc b

jr_014_764b:
    inc b
    rst $08
    ld [bc], a
    ld d, d
    add e
    ld bc, $8991
    ld [bc], a
    ld d, b
    push bc
    ld bc, $89ad
    ld [bc], a
    ld h, b

jr_014_765b:
    ld [bc], a
    inc b
    inc b
    ld d, b
    jp z, $8102

    sub h
    ld [bc], a
    add c
    rlc d
    sbc e
    nop
    ld c, b
    rlc c
    xor l
    ld [bc], a
    inc b
    inc b
    inc b
    add [hl]
    inc bc
    cpl
    adc c
    ld [bc], a
    or b
    inc h
    inc b
    add e
    ld [bc], a
    cp a
    add $01
    ld h, $f0
    ld c, a
    ld bc, $85d0
    inc bc
    dec de
    adc [hl]
    inc bc
    jr nz, jr_014_768a

jr_014_768a:
    inc b
    adc b
    inc bc
    jr nc, jr_014_765b

    ld bc, $d3d5
    ld bc, $01a7
    ld b, $06
    ret


    inc bc
    and l
    add e
    ld [bc], a
    ld l, h
    add e
    ld [bc], a
    ld a, d
    add h
    ld bc, $8784
    ld [bc], a
    ld a, c
    adc [hl]
    ld bc, $d481
    inc bc
    ld e, d
    nop
    ld b, $8e
    inc bc
    and b
    nop
    inc b
    adc b
    inc bc
    or b
    add [hl]
    ld bc, $88c2
    inc bc
    ret nz

    ld hl, sp+$57
    inc b
    jr nz, jr_014_76c2

    ld c, b

jr_014_76c2:
    ld c, [hl]
    add [hl]
    ld bc, $8c29
    ld [bc], a
    inc [hl]
    ld [bc], a
    inc b
    ld d, b
    inc b
    rst $08
    inc bc
    ld d, b
    adc e
    ld [bc], a
    ld d, h
    add e
    ld bc, $8b25
    ld [bc], a
    ld h, h
    inc bc
    ld b, $06
    ld c, b
    ld b, $83
    ld [bc], a
    ld [hl], h
    ret


    inc b
    add d
    rst $08
    ld [bc], a
    sub e
    ld bc, $0448
    add e
    ld bc, $d593
    ld bc, $00a5
    ld c, b
    add h
    ld bc, $8d2b
    ld [bc], a
    or h
    ld bc, $0450
    jp z, Jump_014_5a01

    ldh a, [$ff50]

Jump_014_7700:
    ld bc, $c3cb
    nop
    ld [hl], e
    adc e
    inc bc
    inc h
    jp $8300


    add h
    inc b
    ld a, [hl-]
    adc l
    ld b, $25

jr_014_7711:
    ld bc, $0445
    adc d
    ld bc, $84d9
    ld bc, $8c93
    ld b, $15
    ret z

    inc bc
    ld l, b
    add h
    ld b, $3b
    adc d
    ld [bc], a
    ld a, d
    adc b
    ld b, $2b
    inc h
    inc b
    ld bc, $0446
    sub a
    ld b, $4b
    ld bc, $0445
    adc [hl]
    ld b, $25
    adc a
    ld b, $a4
    nop
    ld c, l
    add [hl]
    ld b, $45
    rst $18
    ld b, $1f
    nop
    dec a
    ld [hl-], a
    inc bc
    rst $38
    rra
    inc e
    ld a, $21
    rst $38
    inc b
    rst $38
    jr z, jr_014_77c8

    jr c, @-$56

    jr z, jr_014_777c

    jr z, jr_014_77c6

    add c
    ld e, c
    jp nz, Jump_000_0167

    ld bc, $0101
    inc b
    ld bc, $6c06
    rla
    ld b, a

jr_014_7764:
    ld [hl], a
    inc d
    scf
    ld c, a
    ld [$0000], sp
    ld a, $2f
    inc bc
    inc l
    ld c, b
    add h
    nop
    ld c, $23
    rlca
    nop
    ld b, d
    jp z, $2600

    inc hl
    dec b

jr_014_777c:
    nop
    ld b, b
    jp z, Jump_000_3600

    inc hl
    dec b
    nop
    ld [hl], h
    adc [hl]
    nop
    jr c, jr_014_7789

jr_014_7789:
    dec b
    sbc a
    nop
    jr c, jr_014_7711

    nop
    jr c, jr_014_7789

    ld hl, $2200
    nop
    dec a
    db $e4
    ld h, b
    inc bc
    rst $38
    inc c
    dec d
    ld d, $13
    add hl, sp
    rst $38
    inc b
    ld bc, $0303
    ld bc, $ff05
    ldh [$ffa0], a
    ld h, b
    jr nz, jr_014_7764

    jr nc, jr_014_781e

    or b
    ld d, b
    sub b
    ret nc

    ld c, b
    jr z, jr_014_77fd

    ld l, b
    adc b
    ret c

    jr c, jr_014_77f2

    jr c, jr_014_77f4

    jr jr_014_77f6

    jr z, jr_014_77d8

    jr @+$2a

    jr c, jr_014_77dc

    jr jr_014_77ee

jr_014_77c6:
    jr c, jr_014_7810

jr_014_77c8:
    ld c, b
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld c, [hl]
    ld c, e
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, h
    ld c, a
    ld c, a
    ld c, a

jr_014_77d8:
    ld c, a
    and e
    ld b, $01

jr_014_77dc:
    ld bc, $5501
    ld bc, $7190
    rla
    sbc d
    ld [hl], a
    inc d
    dec sp
    ld c, a
    ld [$0000], sp
    ld l, [hl]
    ld [hl-], a
    ld [hl], b

jr_014_77ee:
    ld bc, $7776
    adc h

jr_014_77f2:
    nop
    add hl, bc

jr_014_77f4:
    adc d
    nop

jr_014_77f6:
    dec bc
    ldh a, [rNR41]
    nop
    ld a, [bc]
    nop
    inc b

jr_014_77fd:
    inc l
    ld [hl], b
    dec b
    inc b
    ld b, $21
    ld [hl], b
    ld [hl], b
    ld [hl], c
    adc d
    nop
    ld d, l
    inc b
    inc hl
    ld hl, $1515
    jr jr_014_7835

jr_014_7810:
    dec d
    add h
    nop
    ld l, e
    jp $6e00


    ld b, $05
    dec b
    ld b, $04
    ld b, $04

jr_014_781e:
    ld b, $43
    ld hl, $0223
    ld hl, $2222
    ld b, l
    inc hl
    ld hl, $5fe4
    inc bc
    nop
    ld [hl], b
    ldh a, [$ff2a]
    nop
    ld bc, $0093
    dec hl

jr_014_7835:
    ld [bc], a
    ld b, $04
    ld [hl], e
    adc h
    nop
    ld de, $2304
    ld hl, $0423
    ld [hl], e
    add l
    nop
    ld c, d
    ld bc, $0605
    add h
    ld bc, $874d
    ld bc, $0250
    ld [hl], h
    ld [$8775], sp
    ld bc, $015d
    ld hl, $2323
    dec d
    nop
    ld a, [bc]
    jp z, Jump_014_7a01

    inc hl
    nop
    nop
    dec bc
    jp $8a01


    adc a
    ld bc, $e480
    ld e, a
    inc bc
    nop
    ld [hl], b
    ldh a, [$ff2c]
    ld bc, $9700
    nop
    add hl, bc
    inc bc
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld b, $c4
    ld bc, $0041
    ld a, b
    add a
    ld [bc], a
    ld b, h
    jp Jump_014_6301


    adc e
    ld [bc], a
    ld d, b
    add a
    ld [bc], a
    ld e, b
    ld b, l
    ld hl, $0323
    dec d
    dec d
    dec d
    dec d
    ld b, l
    ld hl, $2323
    nop
    adc e
    ld [bc], a
    add b
    ldh a, [$ff90]
    ld bc, $929c
    nop
    inc l
    nop
    ld a, b
    add e
    nop
    ld e, d
    ld [bc], a
    ld b, $04
    ld [hl], e
    dec hl
    ld [hl], b
    add e
    ld bc, $8b61
    inc bc
    ld b, h
    ld b, e
    ld hl, $8323
    inc bc
    ld b, h
    ldh a, [rNR44]
    ld [bc], a
    ld a, h
    ld b, l
    ld hl, $e423
    ld e, a
    inc bc
    nop
    ld [hl], b
    adc c
    ld [bc], a
    nop
    ldh a, [$ff29]
    ld bc, $9716
    nop
    rrca
    ld [bc], a
    ld [hl], d
    ld b, $04
    adc b
    ld bc, $8357
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld hl, $2123
    adc b
    ld bc, $0167
    ld [hl], d
    ld b, $c8
    ld [bc], a
    add h
    nop
    ld a, [bc]
    adc d
    ld [bc], a
    ld a, h
    add h
    ld bc, $8387
    ld [bc], a
    adc h
    add e
    inc b
    ld a, c
    rlc h
    adc e
    ldh a, [$ff7a]
    nop
    sbc c
    sub b
    nop
    ld [de], a
    sbc d
    nop
    inc c
    nop
    ld b, $8e
    nop
    ld c, $02
    inc hl
    inc b
    ld b, $2c
    ld [hl], b
    ld bc, $2123
    adc l
    dec b
    ld d, b
    add [hl]
    inc bc
    ld h, a
    dec h
    dec d
    ld [bc], a
    dec e
    dec d
    dec d
    adc c
    inc bc
    ld h, l
    add e
    nop
    add b
    ld bc, $0406
    ld b, l
    inc hl
    ld hl, $2203
    ld [hl+], a
    inc hl
    inc e
    db $e4
    ld e, a
    inc bc
    rst $38
    ld [$ff0c], sp
    nop
    ld [bc], a
    ld bc, $88ff
    adc b
    adc b
    add sp, -$38
    ld [$231c], sp
    ld [hl+], a
    ld bc, $0203
    inc bc

jr_014_7944:
    dec b
    ld h, $06
    ld l, h
    rla
    jr nc, jr_014_79c4

    inc d
    ld c, c
    ld c, a
    ld [$e400], sp
    jr nz, jr_014_7956

    nop
    ld a, $2f

jr_014_7956:
    inc bc
    inc l
    ld a, b
    ld bc, $0303
    ret nc

    nop
    ccf
    inc hl
    ld a, b
    nop
    ld c, [hl]
    ld [hl+], a
    ld b, $00
    ld c, a
    adc d
    nop
    dec sp
    inc b
    ld d, [hl]
    inc b
    ld a, [hl-]
    inc b
    ld d, a
    adc d
    nop
    dec sp
    ld [bc], a
    inc b
    inc b
    jr c, jr_014_7944

    nop
    ld [hl], a
    ld [bc], a
    inc b
    inc b
    ld b, l
    adc h
    nop
    ld a, c
    nop
    ld c, h
    ld [hl+], a
    inc b
    nop
    ld c, l
    adc e
    nop
    dec sp
    ld [bc], a
    ld [hl], c
    ld b, l
    ld [hl], b
    adc h
    nop
    ld a, [hl-]
    inc bc
    ld [hl], c
    inc b
    ld [hl], b
    ld a, b
    sbc a
    nop
    sbc e
    sbc a
    nop
    sbc e
    sbc a
    nop
    sbc e
    ldh a, [$ff79]
    nop
    sbc e
    ld bc, $064e
    ld [hl+], a
    inc b
    ld bc, $4f06
    adc b
    nop
    inc a
    nop
    ld d, [hl]
    inc h
    inc b
    nop
    ld d, a
    adc b
    nop
    inc a
    ld [hl+], a
    ld b, l
    nop
    ld a, b
    rlc c
    or a
    add e
    ld bc, $0297
    inc b
    inc b

jr_014_79c4:
    inc b
    adc h
    ld bc, $cfac
    ld bc, $02d7
    inc b
    inc b
    inc b
    ldh a, [$ff3f]
    ld bc, $88ac
    nop
    inc a
    ld [bc], a
    ld c, h
    inc b
    inc b
    add e
    nop
    sub a
    adc d
    nop
    inc a
    ld [bc], a
    ld b, l
    ld b, l
    ld b, l
    sbc l
    ld bc, $008a
    ld b, l
    adc e
    ld bc, $23a9
    inc b
    adc e
    ld bc, $03c9
    inc b
    inc b
    inc b
    ld b, l
    db $db
    ld [bc], a
    add a
    ld [hl+], a
    inc b
    nop
    ld h, l
    add a
    ld [bc], a
    sbc c
    db $d3

Call_014_7a01:
Jump_014_7a01:
    ld [bc], a
    xor a
    ld [hl+], a
    ld h, $03
    ld h, d
    ld h, $26
    ld h, $f8

jr_014_7a0b:
    ld [hl+], a
    nop
    ld b, h
    nop
    dec a
    cpl
    inc bc
    rst $38
    nop
    inc c
    ld l, $0d
    inc b
    ld [bc], a
    rst $38
    nop
    ld b, $ff
    ld c, b
    xor b
    ld c, b
    xor b
    ld c, b
    xor b
    jr jr_014_7a3d

    sbc b
    sbc b
    ld e, b
    ld e, b
    ld bc, $8634
    ccf
    pop de
    jp nc, Jump_000_0201

    ld bc, $0401
    rla
    ld b, $67
    dec d
    inc de
    ld a, d
    inc d
    ld d, d
    ld c, a

jr_014_7a3d:
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    jr z, jr_014_7a70

    dec b
    ld b, $30
    rst $00
    nop
    add h

jr_014_7a70:
    inc bc
    ld b, $0c
    ld b, $1c
    ld [hl+], a
    ld b, $03
    ld [hl+], a
    ld b, $0c
    ld b, $c9
    nop
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    jr c, jr_014_7a0b

    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l

jr_014_7ac1:
    ld bc, $0313
    rst $38
    ld d, $17
    ld b, $05
    ld c, $0d
    inc b
    rst $38
    ld bc, $ff06
    ld a, b
    ld c, b
    xor b
    ld c, b
    xor b
    ld c, b
    xor b
    call nc, $9898
    ld e, b
    ld e, b
    jr jr_014_7af6

    ld c, a
    ld d, b
    rrca
    dec c
    ld b, e
    ld b, d
    pop de
    ld bc, $0102
    ld bc, $1704
    ld b, $67
    dec d
    push bc
    ld a, d
    inc d
    ld h, l
    ld c, a
    ld [$0000], sp

jr_014_7af6:
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    ld [hl-], a
    ld b, $05
    ld b, $2a
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $24
    ld [hl+], a
    ld b, $03
    ld a, [de]
    ld b, $0c
    ld b, $c9
    nop
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    jr c, jr_014_7ac1

    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l

jr_014_7b77:
    ld bc, $0313
    rst $38
    ld d, $22
    rlca
    dec h
    inc [hl]
    ld a, [bc]
    ld [bc], a
    rst $38
    ld bc, $ff06
    ld a, b
    xor b
    ld c, b
    xor b
    ld c, b
    ld c, b
    xor b
    call nc, $9818
    sbc b
    ld e, b
    jr jr_014_7bec

    ld c, a
    ld l, h
    ld a, [de]
    ld a, e
    sub [hl]
    ld [de], a
    jp nc, Jump_000_0201

    ld bc, $0401
    rla
    ld b, $67
    dec d
    ld a, e
    ld a, e
    inc d
    ld a, b
    ld c, a
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    inc l
    ld b, $05
    ld b, $28
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $18
    ld [hl+], a
    ld b, $03
    inc e
    ld b, $0c
    ld b, $c9
    nop
    add c
    nop

jr_014_7bec:
    dec b
    adc b
    nop
    ld a, b
    nop
    jr c, jr_014_7b77

    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313

jr_014_7c30:
    rst $38
    ld d, $06
    ld [hl+], a
    inc [hl]
    ld a, [bc]
    rlca
    ld [bc], a
    rst $38
    ld [bc], a
    ld b, $ff
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    xor b
    ld c, b
    xor b
    xor b
    call nc, $98b4
    ld e, b
    ld e, b
    jr @+$1a

    sbc b
    ld c, a
    ld c, a
    rrca
    ld l, h
    sub [hl]
    ld [de], a
    ld a, [de]
    jp nc, Jump_000_0201

    ld bc, $0401
    rla
    ld b, $67
    dec d
    ld sp, $147c
    adc e
    ld c, a
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    inc l
    ld b, $05
    ld b, $2e
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $18
    ld [hl+], a

jr_014_7c9b:
    ld b, $03
    jr nz, jr_014_7ca5

    inc c
    ld b, $c9
    nop
    add c
    nop

jr_014_7ca5:
    dec b
    adc b
    nop
    ld a, b
    nop
    jr c, jr_014_7c30

    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313

jr_014_7ce9:
    rst $38
    ld d, $30
    inc [hl]
    rlca
    dec b
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld b, $ff
    ld a, b
    ld a, b
    xor b
    ld c, b
    ld c, b
    xor b
    ld c, b
    xor b
    call nc, Call_014_58b4
    ld e, b

Call_014_7d01:
    jr jr_014_7c9b

    sbc b
    jr @+$51

    ld c, a
    adc [hl]
    sub [hl]
    ld a, [de]
    dec c
    jp nc, Jump_000_01d1

    ld [bc], a
    ld bc, $0401
    rla
    ld b, $67
    dec d
    ld [$147c], a
    sbc [hl]
    ld c, a
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    jr z, jr_014_7d4e

    dec b
    ld b, $2a
    rst $00
    nop
    add h

jr_014_7d4e:
    inc bc
    ld b, $0c
    ld b, $1c
    ld [hl+], a
    ld b, $03
    ld a, [de]
    ld b, $0c
    ld b, $c9
    nop
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    jr c, jr_014_7ce9

    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313

jr_014_7da2:
    rst $38
    ld d, $06
    jr nc, jr_014_7dc9

    ld a, [bc]
    dec b
    inc b
    rst $38
    ld [bc], a
    ld b, $ff
    ld a, b
    ld a, b
    xor b
    ld c, b
    xor b
    xor b
    ld c, b
    ld c, b
    call nc, $98b4
    ld e, b
    ld e, b
    jr @-$66

    jr @+$51

    ld c, a
    rrca
    adc [hl]
    ld l, h
    ld [de], a
    dec c
    pop de
    ld bc, $0102

jr_014_7dc9:
    ld bc, $1704
    ld b, $67
    dec d
    and e
    ld a, l
    inc d
    or c
    ld c, a
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    ld a, [hl+]

Jump_014_7e00:
    ld b, $05
    ld b, $32
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $1a
    ld [hl+], a
    ld b, $03
    inc h
    ld b, $0c
    ld b, $c9
    nop
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    jr c, jr_014_7da2

    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313
    rst $38
    ld d, $05
    ld b, $0a
    nop
    inc b
    rla
    rst $38
    inc bc
    ld b, $ff
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    xor b
    ld c, b
    xor b
    xor b
    call nc, $94b4
    ld e, b
    sbc b
    sbc b
    jr jr_014_7ed0

    jr jr_014_7ec9

    ld c, a
    ld c, a
    dec c
    rrca
    ld [de], a
    ld bc, $50d1
    ld bc, $0102
    ld bc, $1704
    ld b, $67
    dec d
    ld e, h
    ld a, [hl]
    inc d
    call nz, Call_000_084f
    nop
    nop
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    ld c, [hl]
    ld b, $05
    ld b, $32
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $1e
    ld [hl+], a

jr_014_7ec9:
    ld b, $03
    inc h
    ld b, $0c
    ld b, $c9

jr_014_7ed0:
    nop
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    ld a, $84
    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313
    rst $38
    ld d, $07
    dec b
    ld a, [bc]
    jr nc, jr_014_7f20

    inc b
    rst $38

jr_014_7f20:
    inc bc
    ld b, $ff
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld c, b
    xor b
    xor b
    xor b
    ld c, b
    call nc, $94b4
    jr jr_014_7ec9

    sbc b
    ld e, b
    jr jr_014_7f8d

    ld c, a
    ld c, a
    ld c, a
    ld a, [de]
    dec c
    ld [de], a
    adc [hl]
    jp nc, Jump_000_01d1

    ld [bc], a
    ld bc, $0401
    rla
    ld b, $67
    dec d
    jr @+$81

    inc d
    rst $10
    ld c, a
    ld [$0000], sp
    inc d
    db $e4
    inc sp
    inc bc
    ld [hl+], a
    inc b
    call z, Call_000_3600
    ld [bc], a
    inc b
    rlca
    dec c
    call Call_014_4600
    ld bc, $0c06
    call $5600
    inc bc
    ld b, $05
    ld b, $04
    adc e
    nop
    ld l, $01
    ld b, $06
    ret z

    nop
    halt
    add e
    nop
    ld b, l
    inc b
    inc l
    ld b, $05
    ld b, $2a
    rst $00
    nop
    add h
    inc bc
    ld b, $0c
    ld b, $18
    ld [hl+], a
    ld b, $03
    ld a, [de]
    ld b, $0c
    ld b, $c9
    nop

jr_014_7f8d:
    add c
    nop
    dec b
    adc b
    nop
    ld a, b
    nop
    ccf
    add h
    nop
    ld d, d
    nop
    ld b, $98
    nop
    ld e, b
    nop
    inc bc
    add l
    nop
    or d
    ld hl, sp+$24
    nop
    sub $88
    nop
    cpl
    ld bc, $0f0f
    jp z, $0601

    inc b
    inc b
    rlca
    inc b
    ld b, $06
    call $1601
    ld [bc], a
    ld b, $05
    ld b, $ce
    ld bc, $d005
    ld bc, $8e36
    ld bc, $f809
    ld l, [hl]
    ld bc, $0156
    ld b, $06
    ld hl, sp+$34
    nop
    ld b, l
    ld bc, $0313
    rst $38
    ld d, $0a
    ld b, $07
    dec [hl]
    ld [bc], a
    inc b
    rst $38
    inc bc
    ld b, $ff
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    xor b
    ld c, b
    ld c, b
    xor b
    xor b
    call nc, $94b4
    jr @+$1a

    ld e, b
    sbc b
    ld e, b
    sbc b
    ld c, a
    ld c, a
    ld c, a
    ld [de], a
    rrca
    ld a, [de]
    sbc d
    jp nc, $ffd1

    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
