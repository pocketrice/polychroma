; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    ret


    ld [bc], a
    rst $38
    rst $38
    ld a, a
    ld d, e
    rst $38
    ccf
    dec b
    rst $38
    nop
    add b
    nop
    nop
    rst $38
    db $f4
    ld a, [hl+]
    nop
    nop
    ld bc, $0001
    add e
    nop
    ld l, $42
    ld sp, $0049
    ld a, c
    ld b, c
    ld a, c
    ld c, c
    ld [bc], a
    rst $38
    add a
    rst $38
    xor a
    nop
    ld h, b
    ld b, c
    rst $38
    nop
    dec b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld b, c
    ld bc, $41fe
    nop
    rst $38
    ld b, c
    ld bc, $05fe
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [rSTAT], a
    rst $38
    nop
    ld bc, $f00f
    ld c, l
    nop
    rst $38
    ld bc, $f00f

jr_017_404e:
    cp a
    nop
    and b
    cp a
    nop
    add b
    inc hl
    nop
    rlca
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    add e
    nop
    adc l
    rst $08
    ld bc, $9c0e
    nop
    and c
    ld bc, $f000
    cp a
    ld bc, $f41f
    jr nz, jr_017_4071

jr_017_4071:
    rst $38
    rst $00
    nop
    db $fd
    ld bc, $c03f
    push bc
    nop
    jp hl


    xor a
    ld bc, $8780
    ld bc, $0002
    db $fc
    add [hl]
    ld bc, $af15
    ld bc, $06a0
    rst $38
    nop
    jr nc, jr_017_404e

    inc c
    ldh a, [rTMA]
    ret z

    ld bc, $af9c
    ld bc, $03c0
    rst $38
    nop
    inc bc
    db $fc
    adc e
    nop
    sub d
    xor a
    ld bc, $41e0
    ld bc, $41ff
    inc bc
    rst $38
    ld [bc], a
    rlca
    rst $38
    rlca
    ld b, d
    rst $38
    rrca
    add [hl]
    ld [bc], a
    nop
    ld b, c
    cp $07
    ld b, c
    db $fc
    rrca
    add hl, bc
    ld bc, $ffff
    ld bc, $00ff
    ccf
    ret nz

    ld bc, $c4ff
    nop
    sub d
    ld [hl+], a
    rst $38
    ld b, c
    db $fd
    inc bc
    ld bc, $c33d
    ld b, e
    inc bc
    rst $38
    ld bc, $3fc3
    adc l
    ld [bc], a
    ld [hl-], a
    ld b, d
    rrca
    nop
    ld b, d
    rlca
    nop
    ld [bc], a
    inc bc
    nop
    inc bc
    add $01
    nop
    jp $f700


    ld bc, $07f8
    jp Jump_000_2702


    ld bc, $3fc0
    ld b, d
    nop
    rst $38
    rlca
    rlca
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    rst $38
    jr z, jr_017_40fe

jr_017_40fe:
    ld [bc], a
    ld a, [hl]
    inc a
    jp Jump_000_3e43


    pop bc
    dec bc
    inc a
    jp $c639


    inc sp
    call z, $d827
    rrca
    ldh a, [$ff3f]
    ret nz

    jr z, jr_017_4114

jr_017_4114:
    ld [bc], a
    rrca
    rlca
    jr jr_017_415c

    rrca
    db $10
    ld [$f807], sp
    di
    inc c
    ld sp, hl
    ld b, $fc
    inc bc
    cp $aa
    ld [bc], a
    ld a, [hl]
    inc bc
    nop
    ccf

jr_017_412b:
    rra
    ld h, b
    ld b, e

jr_017_412e:
    ccf
    ld b, b
    inc c
    rra
    ldh [$ffcf], a
    jr nc, @-$17

    jr jr_017_412b

    inc c
    ld hl, sp+$07
    rst $38

Jump_017_413c:
    nop
    rst $38
    adc [hl]
    ld [bc], a
    nop
    ld b, c
    rra
    ld hl, sp+$41
    ccf
    ldh a, [rSC]
    ld a, b
    rst $38
    ld a, b
    and h
    ld [bc], a
    dec bc
    ld bc, $9ce3
    xor l
    ld [bc], a
    ld [hl+], a
    ld b, c
    add a
    ld hl, sp+$41
    rrca
    ldh a, [rSB]
    rra

jr_017_415c:
    ldh [$ff85], a

jr_017_415e:
    ld bc, $b084
    ld [bc], a
    ldh [rSC], a
    jr jr_017_415e

    jr @+$43

    db $fc
    inc c
    ld b, c
    ld e, $fe
    db $f4
    inc hl
    ld [bc], a
    db $fc
    ret


    nop
    sbc a
    dec b
    ld a, $c1
    rlca
    ld hl, sp+$01
    cp $f4
    ld l, a
    ld [bc], a
    ld [hl], b
    xor a
    ld [bc], a
    jr nz, @+$03

    jp Jump_017_413c


    rst $38
    nop
    ld bc, $c33c
    ld b, h
    nop
    rst $38
    adc h
    inc bc
    ldh a, [c]
    or b
    ld [bc], a
    ld c, a
    cp a
    ld [bc], a
    jr nc, jr_017_41bb

jr_017_4198:
    add b

Jump_017_4199:
    inc hl
    ret nz

    inc hl
    ldh [rNR44], a
    ldh a, [$ff87]
    inc b
    ld b, b
    ld b, c
    ld h, b
    ldh [rSC], a
    jr nc, jr_017_4198

    jr nc, jr_017_412e

    nop
    and c
    ld bc, $c13e
    ld b, c
    ld a, a
    add b
    ld bc, $c13e
    call $0504
    add e
    inc bc
    db $f4

jr_017_41bb:
    ld bc, $c33c
    dec h
    rst $38
    nop
    inc e
    ld b, d
    inc e
    rst $38
    ld [bc], a
    nop
    rst $38
    nop
    adc b
    nop
    and d
    rst $00
    ld [bc], a
    add [hl]
    dec c
    cp $0f
    rrca
    adc a
    adc a
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    cp $ff
    and h
    inc b
    sbc a
    inc hl
    rst $38
    inc bc
    cp $fe
    db $fc
    db $fc
    and e
    inc b
    xor h
    call nz, $b804
    nop
    rst $38
    jp $a704


    ld bc, $1f1f
    add h
    inc b
    xor l
    ld b, $ff
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    ldh a, [$fff0]
    xor c
    inc b
    ret z

    rlca
    rra
    rra
    rrca
    rrca
    rra
    rra
    rrca
    rrca
    add a
    inc b
    jp z, Jump_000_0483

    or d
    ld bc, $f8f8
    jp $b504


    xor e
    inc b
    db $ec
    push bc
    inc b
    push hl
    ld bc, $e01f
    add e
    inc b
    ldh a, [$ff83]
    inc b
    call nc, Call_000_04c5
    push af
    ld bc, $3fc0
    call Call_000_0d05
    ld bc, $fc03
    xor c
    dec b
    nop
    ld bc, $f0f0
    and h
    dec b
    inc c
    nop
    cp $25

Jump_017_4240:
    adc a
    add e
    inc b
    and d
    inc bc
    cp $fe
    nop
    nop
    xor c
    dec b
    ld b, b
    and e
    inc b
    or [hl]
    add e
    nop
    ld l, $01
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
    dec b
    sub h
    ld b, e
    cp a
    add b
    ld bc, $bfc0
    and h
    dec b
    adc [hl]
    ld b, c
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
    dec b
    ret nc

    ld bc, $e5ff
    ld b, h
    rst $38
    db $fd
    ld bc, $b5b7
    call nz, $c505
    xor l
    dec b
    cp [hl]
    ld [hl+], a
    rst $38
    inc bc
    sbc a
    sbc a
    rst $38
    rst $38
    and l
    dec b
    db $dd
    adc c
    dec b
    ld sp, hl
    xor [hl]
    dec b
    db $e3
    rlca
    ld hl, sp-$08
    ldh a, [c]
    ldh a, [c]
    or $f6
    ldh a, [$fff0]
    push bc
    inc b

Jump_017_42c1:
    db $d3
    xor a
    ld b, $20
    inc bc
    ld a, a
    ld a, a
    db $fc
    db $fc
    daa
    cp $a5
    dec b
    ld c, h
    add hl, hl
    ccf
    and h
    dec b
    ld e, h
    ld [$7f07], sp
    inc c
    ld a, a
    inc e
    inc a
    ccf
    ld a, b
    ld a, a
    ld b, e
    ld hl, sp-$01
    nop
    cp $41
    ld a, a
    rst $38
    rlca
    ld a, [hl]
    cp $f9
    ld hl, sp-$19
    ldh [rIE], a
    ldh [$ffa4], a
    inc b
    or l
    inc d
    inc hl
    ccf
    ld de, $081f
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $3f01

Jump_017_4300:
    rst $00
    ccf
    call z, $dc3f
    inc a
    rst $38
    ld a, b
    add [hl]
    ld b, $6b
    ld bc, $0101
    and e
    inc b
    ld b, b
    add hl, hl
    inc bc
    ld b, c
    ld b, $07
    inc bc
    and $07
    cp $07
    ld b, e
    db $fc
    rrca
    ld b, e
    ld hl, sp+$1f
    ld b, e
    rst $38
    ccf
    ld b, e
    cp $7f
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld b, l
    ldh a, [rIF]
    ld b, c
    inc sp
    rst $08
    ld bc, $fe01
    add [hl]
    nop
    and d
    ld bc, $01fe

Jump_017_433f:
    add h
    nop
    and d

Jump_017_4342:
    xor a
    ld b, $f0
    adc c
    ld [bc], a
    ret nz

    ld bc, $3f00
    ld b, c
    rrca
    jr nc, @+$45

    rra
    ld h, b
    ld bc, $e01f
    add l
    nop
    sbc d
    and e
    dec b
    ld h, b
    inc bc
    ret nz

    add b
    jp $ad80


    dec b
    add b
    ret


    rlca
    ld b, h
    ld bc, $ffff
    rst $00
    ld bc, $0602
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    adc [hl]
    inc b
    ld bc, $0683
    rst $00
    ld [hl+], a
    rst $38
    inc b
    ccf
    ccf
    rst $18
    rra
    ldh [$ff85], a
    inc bc
    ld [hl], h
    nop
    rst $38
    add h
    ld b, $6b
    inc b
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, $84
    nop
    jr nc, @+$44

    ld a, [hl]
    ld a, a
    ld b, d
    db $fc
    rst $38
    nop
    db $fc
    jr z, @+$01

    ld b, e
    rrca
    ldh a, [rSCX]
    rra
    ldh [rSTAT], a
    ccf
    rst $08
    ld b, c
    inc a
    rst $08
    ld b, e
    ld a, b
    sbc a
    inc bc
    ldh a, [rIE]
    ldh a, [rIE]
    ld b, h
    ld bc, $07fe
    inc bc
    db $fc
    db $e3
    db $fc
    dec de
    db $fc
    rlca
    cp $b1
    ld b, $de
    and e

Jump_017_43c0:
    inc bc
    ld e, [hl]
    ld b, c
    ld hl, sp+$07
    ld bc, $02fd
    ld b, c
    ld a, h
    add e
    dec b
    nop
    rst $38
    adc a
    ldh a, [$ff80]
    rst $38
    ld b, h
    adc a
    ldh a, [rSB]
    add b
    rst $38
    rlc a
    rla
    ld b, a
    db $fc
    inc bc
    db $f4
    dec [hl]
    rlca
    inc l
    inc hl
    nop
    add h
    inc bc
    rst $30
    adc e
    rlca
    ld [bc], a
    adc b
    rlca
    nop
    add e
    inc bc
    dec e
    ld a, [bc]
    ld h, b
    rst $38
    jr nz, @+$01

    ld a, $f1
    rra
    ldh a, [$ff1f]
    ld hl, sp-$01
    ld b, h
    ld hl, sp+$07
    nop
    ld hl, sp+$42
    rrca
    ldh a, [$ffc7]
    inc bc
    dec hl
    adc c
    inc b
    ld d, $42
    ret nz

    nop
    ld [bc], a
    nop
    ldh [rP1], a
    adc h
    ld [$8fa8], sp
    inc b
    ld l, h
    add h
    ld bc, $0181
    ld a, a
    add b
    ld b, l
    rst $38
    ldh a, [rSTAT]
    rst $38
    di
    nop
    rst $38
    ld b, e
    ret nz

    jr nc, @+$43

    ret nz

    ccf
    add l
    nop
    ldh [rP1], a
    nop
    add h
    ld b, $df
    ld b, d
    rst $30
    ld [$0701], sp
    ld hl, sp-$0c
    jr nz, jr_017_4444

    db $10
    ld [bc], a
    ldh a, [rIE]
    ldh [$ff8c], a
    inc b
    adc h

jr_017_4444:
    nop
    ld hl, sp+$45
    ldh a, [$ff08]
    rst $08
    nop
    cp a
    ld b, c
    ldh a, [rIF]
    add h
    ld [bc], a
    ld [hl], b
    inc bc
    ccf
    ret nz

    rrca

jr_017_4456:
    ldh a, [$fff4]
    sub h
    ld [$476b], sp
    ldh a, [rIE]
    cp e
    rlca
    db $10
    db $f4
    ld b, e
    add hl, bc
    inc l
    db $f4
    ld hl, $7007
    call nz, $d506
    db $f4
    ld c, b
    rlca
    sub a
    adc d
    ld [$04d0], sp
    jr jr_017_4456

    ld h, b
    add b
    add b
    xor a
    add hl, bc
    nop
    ld b, a
    rrca
    rst $38
    ld b, a
    rst $38
    ld bc, $0b87
    ld de, $014f
    inc bc
    ld [bc], a
    ld bc, $01ff
    adc l
    dec bc
    rrca
    ld [bc], a
    pop hl
    rra
    ld sp, hl
    and e
    ld b, $dc
    inc b
    ldh [$ffe0], a
    ldh a, [$ff30]
    ld hl, sp-$0c
    ld a, [hl-]
    ld b, $65
    ld bc, $80ff
    adc b
    inc bc
    jr nz, jr_017_44ab

    ret nz

    rst $38
    ret nz

    rst $08

jr_017_44ab:
    ret nz

    ld b, e
    ld h, b
    ldh [rSCX], a
    jr nc, @-$0e

    nop
    jr @-$40

    ld b, $c1
    xor a
    ld a, [bc]
    ldh [$ffaf], a
    ld [$ae00], sp
    rlca
    ldh a, [$fff4]

jr_017_44c1:
    ld d, b
    dec bc
    rrca
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    inc bc
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    add a
    inc c
    ld h, b
    rst $10
    inc c
    ld [hl], a
    rst $38
    nop
    ld b, b
    rla
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ldh [$ff67], a
    ld a, [hl]
    xor d
    add b
    and c
    jp nz, $d4d4

    sub $d4
    ld a, [hl]
    jp c, Jump_000_03dc

    jr nz, @+$7f

    jr nz, jr_017_4502

    ld a, l
    reti


    db $dd
    ld [bc], a
    ld [hl+], a
    add b
    ld e, d
    ld b, d
    ld a, [hl]
    or c
    xor b
    ld a, [hl]
    and l
    xor e
    xor h
    add b

jr_017_4502:
    add b
    or c
    xor c
    xor l
    add b
    xor [hl]
    ret z

    ld a, l
    cp h
    xor l
    or b
    add b
    xor a
    and a
    jp z, $d97d

    sbc $80
    nop
    rrca
    jr nz, jr_017_4539

    dec c
    jr nz, jr_017_44c1

    db $10
    ld [bc], a
    ld [hl+], a
    ld a, [hl-]
    ld c, c
    ld a, [de]
    ld a, [hl]
    ld e, d
    ld b, d
    inc b
    inc h
    and e
    db $e3
    ld e, h
    xor l
    db $e3
    ld b, h
    ld b, $26
    xor c
    inc e
    ld e, [hl]
    and l
    inc a
    ld b, [hl]
    add b
    cpl
    ld a, [hl]
    and h

jr_017_4539:
    xor c
    or c
    xor h
    xor b
    or b
    and l
    and l
    or c
    xor l
    xor c
    ld a, l
    and h
    xor d
    ld a, l
    or l
    or e
    ld [hl+], a
    ret nc

    ldh [$ff2b], a
    ld a, l
    or l
    or e
    ld a, [hl]
    ld a, l
    add b
    xor c
    and l
    xor e
    ret nc

    ld a, [hl]
    ld a, [hl]
    add c
    cp $fe
    rst $28
    rst $28
    db $ed
    db $ed
    db $eb
    db $eb
    jp hl


    jp hl


    rst $20
    rst $20
    push hl
    push hl
    db $fc
    db $fc
    sbc e
    ld a, [$f49b]
    add b
    ld a, h
    ld a, l
    xor c
    xor [hl]
    add b
    ld a, [hl]
    ld a, l
    xor h
    add b
    add hl, hl
    db $e4
    ld h, h
    add b
    add e
    nop
    ld bc, $65e0

Jump_017_4581:
    add b
    add b
    and b
    call nz, $c4c6
    call nz, Call_017_7ed2
    cp l
    jp c, $2010

    xor h
    jr nz, jr_017_45e4

    ld a, l
    cp [hl]
    reti


    ld [de], a
    add hl, de
    add b
    ld [hl-], a
    ld d, d
    ld a, [hl]
    xor a
    and [hl]
    ld a, [hl]
    and e
    add b
    xor d
    add b
    add b
    xor a
    and a
    xor e
    or b
    ld a, l
    ret c

    xor l
    call z, $aeab
    or c
    xor c
    cp d
    reti


    xor h
    adc $80
    add b
    db $10
    rra
    jr nz, jr_017_45d5

    jr nz, jr_017_45da

    and e
    ld d, b
    ld [de], a
    add hl, de
    ld a, [hl]
    ld e, c
    ld a, [hl+]
    ld c, d
    ld [hl-], a
    ld d, d
    inc d
    db $e3
    ld a, l
    ld c, h
    db $e3
    xor e
    inc [hl]
    ld d, h
    ld d, $0c
    and a
    ld c, [hl]
    inc l
    and e
    ld [hl], $56
    add b

jr_017_45d5:
    ccf
    and l
    and d
    and a
    xor a

jr_017_45da:
    xor d
    and [hl]
    xor [hl]
    and e
    and e
    xor a

jr_017_45e0:
    xor e
    and a
    ld a, l
    and d

jr_017_45e4:
    or b
    ld a, l
    ld a, l
    ld [hl+], a
    ret nz

    ldh [$ff2c], a
    or d
    or h
    ld a, l
    ld a, [hl]
    or d
    or h
    or c
    and a
    and e
    add b
    ret nz

    ld a, [hl]
    ld a, [hl]
    add b
    rst $38
    rst $38
    xor $ee
    db $ec
    db $ec
    ld [$e8ea], a
    add sp, -$1a
    and $e4
    db $e4
    db $fd
    db $fd
    sbc [hl]
    rst $30
    sbc [hl]
    pop af
    add b
    add b
    ld a, l
    and a
    ld a, l
    add b
    ld a, [hl]
    ld a, l
    xor d
    add b
    add hl, sp
    db $e4
    ld h, h
    add b
    add e
    nop
    ld bc, $76e0
    ld a, l
    xor h
    ldh [c], a
    jp $d5d5


    rst $10
    push de
    ldh [c], a
    reti


    db $dd
    ld bc, $7d21
    add hl, bc
    ld b, c
    pop hl
    reti


    db $dd
    add b
    jr jr_017_45e0

    pop hl
    jr c, jr_017_46b6

    or b
    xor c
    and l
    xor l
    add b
    xor l
    xor [hl]
    or b
    xor h
    or c
    add b
    xor [hl]
    and [hl]
    ret


    xor e
    reti


    add b
    or c
    add b
    or b
    res 0, b
    and h
    add b
    cp a
    rst $18
    ld bc, $212d
    ld b, b
    ld c, $40
    ld a, l
    ld b, c
    add b
    inc hl
    ldh [c], a
    ld a, l
    ld e, e
    ldh [c], a
    ld a, l
    ld b, e
    dec b
    dec h
    xor b
    dec de
    ld e, l
    and d
    dec sp
    ld b, l
    rlca
    daa
    and h
    daa
    ld e, a
    ld a, [hl]
    daa
    ld b, a
    ld l, $c1
    and e
    ld a, [hl]
    xor b
    xor b
    and h
    ld a, [hl]
    ld a, l
    and h
    ld a, l
    add b
    ld a, l
    or c
    xor l
    and l
    ld c, b
    ld c, b
    add b
    ldh [$ffb3], a
    ld a, [hl]
    or e
    or [hl]
    or b
    ld a, [hl]
    ld a, [hl]
    cp b
    add b
    or c
    xor l
    add b
    ld a, [hl]
    xor c
    and l
    add b
    ld b, [hl]
    sbc d
    di
    db $10
    sbc d
    ld sp, hl
    sbc h
    ei
    sbc h
    push af
    add b
    add b
    xor b
    ld a, l
    ld c, b
    add b
    ld [$7da4], sp
    add b
    daa
    db $e4
    ld h, h
    add b
    add e
    nop
    ld bc, $ac13
    xor d
    ldh [c], a

jr_017_46b6:
    push bc
    rst $00
    push bc
    push bc
    db $d3
    ldh [c], a
    cp [hl]
    reti


    ld de, $ad0a
    ld sp, $e151
    cp [hl]
    reti


    jr z, jr_017_4709

    pop hl
    add b
    ldh [$ff5e], a
    ld a, l
    xor [hl]
    and a
    and e
    xor e
    add b
    xor e
    ld a, l
    xor [hl]
    xor d
    xor a
    or b
    xor b
    ld a, [hl]
    reti


    add b
    call $af80

jr_017_46df:
    add b
    cp e
    db $db
    add b
    and d
    add b
    rst $08
    add b
    ld de, $303d
    ld e, $30
    ld sp, $51ad
    inc de
    ld a, l
    ldh [c], a
    ld c, e
    ld a, l
    ldh [c], a
    inc sp
    ld a, l
    dec d
    dec bc
    and [hl]
    ld c, l
    dec hl
    xor h
    dec [hl]
    ld d, l
    rla
    scf
    and d
    ld c, a
    scf
    and h
    scf
    ld d, a
    ld a, $d1

jr_017_4709:
    ld a, l
    ld a, [hl]
    and [hl]
    and [hl]
    and d
    ld a, [hl]
    ld a, l
    and d
    ld a, l
    add b
    xor h
    xor a
    xor e
    and e
    ld e, b
    ld e, b
    or a
    or d
    ld a, [hl]
    or d
    ldh [$ff80], a
    cp c
    ld a, [hl]
    ld a, [hl]
    xor d
    add b
    xor a
    xor e
    add b
    ld a, [hl]
    and a
    and e
    add b
    ld b, [hl]
    sbc l
    ldh a, [rNR10]
    sbc l
    or $9f
    ld hl, sp-$61
    ldh a, [c]
    ld a, h
    add b
    and [hl]
    ld a, l
    ld e, b
    or b
    jr jr_017_46df

    ld a, l
    add b
    scf
    db $e4
    ld h, e
    add b
    inc hl
    nop
    inc bc
    ld bc, $0000
    ld [bc], a
    daa
    nop
    inc b
    inc b
    inc bc
    nop
    inc bc
    dec b
    db $e4
    ld [hl+], a
    nop
    nop
    inc b
    inc h
    inc bc
    ld bc, $0500
    db $e4
    add hl, hl
    nop
    jr z, @+$03

    sub $04
    ld l, l
    rlca
    inc bc
    inc bc
    jr jr_017_4769

jr_017_4769:
    stop
    db $fd
    cp $86
    inc b
    ld e, a
    nop
    ld bc, $64e4
    nop
    rst $38
    ld h, [hl]
    ld [$00ff], sp
    rst $28
    nop
    pop hl
    nop
    add e
    nop
    jp Jump_000_00c5


    dec b
    rrca
    nop
    ld d, l
    nop
    xor [hl]
    nop
    ld h, c
    nop
    add d
    nop
    ld b, e
    nop
    and c
    nop
    ld l, a
    nop
    cp d
    ld [hl+], a
    nop
    ld b, $10
    nop
    ld e, $00
    ld a, h
    nop
    inc a
    jp Jump_000_2500


    ld l, $00
    ld c, $0d
    nop
    cp $00
    ld bc, $af00
    nop
    ld e, a
    nop
    cp [hl]
    nop
    ld d, l
    nop
    xor d
    add e
    nop
    ld b, a
    inc h
    nop
    ld [bc], a
    ld d, h
    nop
    xor d
    ld b, c
    nop
    rst $38
    ld bc, $7f00
    add [hl]
    nop
    ld c, l
    ld [bc], a
    ld bc, $0a00
    add [hl]
    nop
    ld b, a
    ld [bc], a
    xor e
    nop
    ld d, l
    ld b, [hl]
    nop
    rst $38
    ld bc, $f500
    add [hl]
    nop
    ld [hl], c
    ld [bc], a
    ld a, a
    nop
    inc bc
    ld a, [hl+]
    nop
    ld [bc], a
    and b
    nop
    ld d, h
    add [hl]
    nop
    ld c, c
    ld b, c
    rst $38
    nop
    inc bc
    ldh a, [rIF]
    ld c, $f1
    ld b, c
    ld a, a
    add b
    inc bc
    inc a
    jp $ff00


    call $8e00
    nop
    rst $38
    add e
    nop
    ld h, d
    ld [$0003], sp
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    rra
    ld b, c
    nop
    rrca
    dec hl
    nop
    inc bc
    rrca
    nop
    rst $38
    nop
    xor a
    nop
    ret nc

    ld b, d
    nop
    rst $38
    inc bc
    rrca
    ldh a, [$ff3f]
    ret nz

    ld b, d
    rst $38
    nop
    inc bc
    ld e, $e1
    ld a, a
    add b
    and h
    nop
    ld e, b
    ld [bc], a
    ld bc, $8778
    ld b, c
    nop
    rst $38
    add e
    ld bc, $0506
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    ld b, d
    nop
    rst $38
    dec b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld b, e
    ld bc, $01fe
    inc bc
    db $fc
    xor c
    nop
    adc [hl]
    nop
    xor d
    xor d
    nop
    sbc c
    add e
    nop
    ld c, d
    inc b
    xor b
    nop
    ld b, b
    nop
    add b
    xor h
    ld bc, $0a31
    ld a, a
    nop
    cp a
    nop
    rlca
    nop
    ccf
    nop
    db $fd
    nop
    ld [$0084], a
    ld l, e
    add e
    nop
    or [hl]
    nop
    ld e, a
    ret nc

    nop
    ld a, a
    xor l
    nop
    ld [hl], b
    inc h
    nop
    xor d
    nop
    ld e, a
    inc bc
    rst $38
    nop
    ret nz

    ccf
    ld b, l
    nop
    rst $38
    add e
    ld bc, $0306
    ldh a, [rIF]
    ldh [$ff1f], a
    ld b, d
    ret nz

    ccf
    ld bc, $7f80
    jp $ef00


    and [hl]
    nop
    adc c
    ld [bc], a
    ret nz

    nop
    ld hl, sp-$76
    nop
    db $dd
    ld a, [bc]
    rlca
    nop
    ccf
    ret nz

    ccf
    db $fc
    inc bc
    ret nz

    ccf
    ld hl, sp+$07
    and l
    ld bc, $0302
    cp $01
    ld hl, sp+$07
    add e
    ld bc, $0118
    rrca
    ldh a, [$ff8c]
    ld bc, $0284
    rst $38
    nop
    rra
    adc e
    nop
    adc c
    dec b
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$43
    inc bc
    db $fc
    xor l
    ld bc, $01a2
    inc bc
    db $fc
    add a
    nop
    sbc $02
    ld a, [bc]
    nop
    ld d, l
    add h
    nop
    ld b, c
    nop
    cp a
    and e
    ld bc, $8659
    ld bc, $0443
    ld a, [hl+]
    nop
    dec b
    nop
    ld [bc], a
    jr z, jr_017_48ee

jr_017_48ee:
    nop
    ld b, b
    and [hl]
    ld [bc], a
    scf
    nop
    push af
    add l
    nop
    ld c, c
    adc b
    ld bc, $026f
    ret nz

    nop
    ldh a, [$ff8e]
    nop
    ld [hl], e
    ld [bc], a
    xor d
    nop
    push de
    xor d
    nop
    or l
    ld [bc], a
    rlca
    nop
    nop
    rst $08
    nop
    db $eb
    ld bc, $01f0
    add [hl]
    ld [bc], a
    add [hl]
    ld bc, $fe01
    add $00
    and l
    inc b
    rst $38
    ld b, h
    cp e
    ld de, $43ee
    nop
    rst $38
    xor c
    ld bc, $84c3
    nop
    call c, Call_000_00c3
    call $3f00
    adc e
    ld bc, $00a6
    rst $38
    and h
    ld [bc], a
    nop
    nop
    ldh [rSTAT], a
    nop
    ret nz

    ld bc, $c000
    sub c
    ld bc, $cd83
    ld [bc], a
    db $dd
    inc b
    rlca
    rlca
    ld hl, sp+$1f
    ldh [$ff8e], a
    ld bc, $86f4
    nop
    ld [hl], d
    ld bc, $f807
    add a
    ld bc, $838c
    nop
    ld l, h
    nop
    push de
    and h
    ld [bc], a
    dec sp
    inc b
    ld a, [$4000]
    nop
    xor d
    adc b
    ld bc, $0257
    ld e, a
    nop
    xor d
    inc l
    nop
    add a
    inc bc
    ld b, b
    nop
    ld d, a
    and h
    nop
    ret z

    nop
    ld hl, sp-$7c
    ld [bc], a
    ld b, c
    ld [bc], a
    rlca
    nop
    rra
    and [hl]
    inc bc
    inc b
    nop
    ret nz

    add [hl]
    inc bc
    cpl
    ld [bc], a
    and d
    nop
    ld d, b
    adc $02
    add e
    and l
    ld [bc], a
    and $02
    ld bc, $0100
    and a
    ld bc, $01d2
    nop
    db $fc
    adc [hl]
    nop
    ld [hl], c
    ld [bc], a
    ld hl, sp+$00
    ldh [$ff86], a
    ld bc, HeaderComplementCheck
    ld bc, $42fe
    inc bc
    db $fc
    inc bc
    rlca
    ld hl, sp+$0f
    ldh a, [$ff83]
    ld bc, $0102
    inc bc
    db $fc
    add e
    nop
    or $01
    ld a, a
    add b
    and l
    ld bc, $0112
    nop
    rst $38
    push bc
    ld [bc], a
    ld bc, $028f
    sub $8a
    ld bc, $0288
    rst $38
    inc c
    di
    adc c
    inc bc
    call nc, $0303
    db $fc
    nop
    inc bc
    add l
    inc bc
    sub a
    call $9701
    inc bc
    rlca
    ld hl, sp+$7f
    add b
    add h
    ld bc, $a88a
    nop
    ld d, c
    nop
    ld a, a
    add a
    nop
    ld c, c
    jp z, Jump_017_4b01

    nop
    push af
    adc h
    inc bc
    ld c, l
    ld [bc], a
    ld [bc], a
    nop
    dec d
    ret z

    nop
    ld e, a
    add h
    ld [bc], a
    call nz, Call_000_0001
    inc bc
    sub d
    ld bc, $a385
    inc b
    ld e, d
    ld [bc], a
    dec d
    nop
    adc d
    add h
    nop
    ld b, a
    nop
    db $fd
    ret


    ld [bc], a
    adc a
    ld [bc], a
    ld bc, $1fe0
    add l
    ld bc, $d189
    ld bc, $0096
    ld hl, sp-$34
    ld bc, $c79b
    inc bc
    cp h
    nop
    ldh a, [$ff88]
    ld [bc], a
    rst $20
    call nz, $cc04
    ld bc, $fc00
    sub b
    inc bc
    add hl, de
    add e
    ld [bc], a
    xor h
    adc e
    inc bc
    ld e, $03
    inc e
    db $e3
    ld a, $c1
    add e
    inc bc
    adc $89
    nop
    or $03
    db $fc
    inc bc
    ldh a, [rIF]
    call z, $a103
    ld [bc], a
    rrca

jr_017_4a50:
    nop
    ccf
    xor a
    ld [bc], a
    and b
    inc bc
    ld d, l
    rst $38
    xor d
    rst $38
    add e
    dec b
    jr nc, jr_017_4a5e

jr_017_4a5e:
    ld d, h
    add e
    dec b
    dec [hl]
    ld bc, $28ff
    add e
    dec b
    dec sp

jr_017_4a68:
    ld bc, $14ff
    add e
    dec b
    ld b, c
    dec b

jr_017_4a6f:
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$04aa], sp
    pop hl
    dec c
    ld bc, $80fe
    ld a, a
    ld b, c
    cp [hl]
    add d
    ld a, l
    ld b, c
    cp [hl]
    and d
    ld e, l
    ld b, l
    cp d
    add e
    dec b
    ld h, h
    dec b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    and l
    dec b
    ld l, h
    ld bc, $54ab
    add e
    dec b
    halt
    ld bc, $28d7
    add e
    dec b
    ld a, h
    ld bc, $14eb
    add e
    dec b
    add d
    dec b
    rst $30
    ld [$10ef], sp
    rst $30
    ld [$00c9], sp
    cp [hl]
    inc c
    cp $00
    ld a, a
    nop
    cp [hl]
    nop
    ld a, l
    nop
    cp [hl]
    nop
    ld e, l
    nop
    cp d
    add e
    dec b
    and e
    adc b
    nop
    ld b, a
    and l
    ld [bc], a
    ld b, [hl]
    add e
    dec b
    or [hl]
    nop
    jr z, jr_017_4a50

    dec b
    cp e
    ld bc, $1400
    add e
    dec b
    pop bc
    ld b, $00
    ld [$1000], sp
    nop
    ld [$8700], sp
    dec b
    jr nc, jr_017_4a68

    dec b
    jr nc, jr_017_4a6f

    dec b
    ld l, h
    add e
    dec b
    ld l, h
    nop
    ld d, l
    xor h
    dec b
    xor e
    nop
    xor d
    add e
    dec b
    rst $08
    ldh [rNR52], a
    rst $20
    ld b, c
    pop hl
    add d
    add e
    ld b, c
    jp $e1a0


    ld b, l
    rst $28
    xor d

Jump_017_4b01:
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld e, $e1
    ld a, h
    add e
    inc a
    jp $e11e


    db $10
    rst $28
    nop
    rst $38
    xor d
    ld d, l
    ld b, l
    xor d
    and b
    ld b, c
    ld bc, $8282
    ld b, c
    push bc
    ld b, $25
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp Jump_000_3306


    add a
    ld b, $30
    rst $10
    ld b, $47
    rst $38
    halt
    ld b, a
    rla
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ldh [rLYC], a
    ld [hl-], a
    add b
    jr c, jr_017_4b88

    add b
    add b
    db $10
    jr nc, @+$03

    ld hl, $1241
    add b
    ld [hl], $07
    ld a, [hl]
    ld a, [hl]
    scf
    ld [$0a28], sp
    ld a, [hl+]
    ld a, [hl]
    ld a, l
    add b
    ld a, l
    dec bc
    ld a, l
    ld c, a
    ld a, [hl]
    ld a, [hl]
    jr z, jr_017_4bd8

    ld a, [hl]
    dec sp
    dec sp
    inc l
    ld c, a
    ld a, [hl]
    ld a, [hl]
    dec c
    ld a, [hl]
    ld a, l
    ld a, l
    rrca
    ld e, d
    ld a, $7e
    ld c, e
    ld l, $7e
    jr z, jr_017_4bc9

    ld a, [hl]
    ld e, e
    ld a, $7e
    jr z, @+$80

    ld a, [hl]
    ld e, d
    ld d, b
    ld d, d
    ld e, e
    ld d, h
    ld d, [hl]
    ld e, h
    ld e, b
    ld a, [hl]
    ld e, e
    ld h, d
    db $fd
    ld bc, $7d5a
    db $e4
    or b
    add b

jr_017_4b88:
    ld h, e
    ld a, l
    ld a, [de]
    add b
    ld c, b
    dec bc
    add b
    nop
    jr nz, jr_017_4bd2

    ld de, $0231
    ld [hl+], a
    ld h, $46
    rla
    ld a, [hl]
    daa
    ld b, a
    jr jr_017_4bc5

    ld a, [de]
    ld a, [hl]
    ld a, [hl-]
    ld a, l
    add b
    ld c, d
    add b
    ld a, l
    inc hl
    ld a, [hl]
    add hl, bc
    ld a, l
    ld a, [hl]
    dec sp
    daa
    inc a
    ld a, [hl]
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld a, [hl-]

jr_017_4bb3:
    ld [hl+], a
    ld a, l
    inc c
    ld e, l
    ld a, [hl]
    ld a, [hl]
    inc c
    ld a, l
    jr z, jr_017_4c3b

    ld e, d
    ld a, [hl]
    ld e, e
    ld a, [hl]
    jr z, jr_017_4c41

    adc c
    nop

jr_017_4bc5:
    ld a, $04
    ld e, [hl]
    ld e, a

jr_017_4bc9:
    ld a, l
    ld e, h
    add b
    ldh a, [$ffb5]
    nop
    ld c, l
    ldh [$ff27], a

jr_017_4bd2:
    dec [hl]
    ld b, $49
    ld a, l
    ld b, d
    inc de

jr_017_4bd8:
    inc sp
    inc b
    inc d
    inc [hl]
    dec b
    dec d
    add b
    add hl, bc
    ld a, [hl]
    add b
    add hl, hl
    ld a, l
    ld c, a
    add hl, sp
    ld a, l
    dec de
    ld a, [hl]
    ld a, [hl-]
    ld c, b
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, l
    dec de
    ld a, [hl]
    ld e, $28
    ld c, e
    inc e
    add b
    add b
    dec l
    ld c, l
    inc hl
    ld a, [hl]
    ld b, $2e
    ld e, d
    add b
    dec l
    ld a, l
    ld a, l
    ld a, [hl]
    add e
    ld bc, $0e36
    ld c, [hl]
    jr z, @+$80

    ld a, [hl]
    cpl
    ld e, d
    ld d, c
    ld d, e
    ld e, e
    ld d, l
    ld d, a
    ld e, h
    ld e, c
    ld a, [hl]
    ld e, e
    ldh a, [$ffb8]
    ld bc, $1249
    ld b, l
    ld d, $80
    dec hl
    inc bc
    inc hl
    ld b, e
    inc b
    inc h
    ld b, h
    inc b
    dec h
    add b
    ld a, [hl]
    add hl, de
    add b
    ld a, l
    ld a, l
    jr z, jr_017_4bb3

    ld [bc], a
    ld [hl-], a
    inc b
    ld a, l
    add b
    ld a, l
    ld a, l
    dec sp
    add h
    inc bc
    inc d

jr_017_4c3b:
    ld b, $7e
    inc c
    ld a, l
    add b
    dec e

jr_017_4c41:
    dec a
    ld c, $84
    ld bc, $061f
    ld e, d
    dec e
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [hl-]
    ld h, d
    ld e, l
    inc b
    ld a, [hl]
    ld a, [hl]
    jr z, @+$21

    ccf
    ldh a, [$ffbe]
    ld [bc], a
    ld a, $e4
    ld c, h
    nop
    ld bc, $fdfe
    db $e4
    xor a
    nop
    rst $38

    db $73, $23

    nop

    db $05

    rlca
    rlca
    rra
    rra
    ccf
    ccf

    db $23

    ld a, a

    db $01

    rst $38
    rst $38

    db $af, $00, $00, $0c

    rst $38
    nop
    ccf
    ret nz

    rrca
    rst $30
    rra
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38

    db $af, $00, $1d, $a4, $00, $0d, $01

    ld a, [hl]
    ld a, [hl]

    db $27

    ld b, d

    db $c3, $00, $43, $87, $00, $40, $c7, $00, $57, $87, $00, $40, $c7, $00, $67, $87
    db $00, $40, $c7, $00, $77, $87, $00, $40, $c7, $00, $87, $87, $00, $40, $c7, $00
    db $97, $f0, $5f, $00, $40, $14

    INCBIN "gfx/image_017_4cb5.2bpp"

    ccf
    rst $38
    ld h, b
    ret nz

    db $c3

    db $42

    add b
    sbc h

    db $41

    add b
    and e

    db $00

    add b

    db $c9, $01, $1e, $03

    and b
    add e
    ret nz

    ld a, a

    db $83, $00, $27, $02

    nop
    nop
    db $c3

    db $42

    nop
    inc a

    db $41

    nop
    db $c3

    db $00

    nop

    db $84, $01, $20, $8a, $01, $15, $e0, $2f

    INCBIN "gfx/image_017_4cf1.2bpp"

    db $c4, $01, $3e, $8a, $01, $35, $03

    ccf
    ccf
    ld h, b
    ld b, b

    db $97, $01, $14, $e0, $23

    INCBIN "gfx/image_017_4d31.2bpp"

    inc bc
    ld [bc], a
    db $01
    db $01

    db $22

    rst $38

    db $04

    ret nz

    rst $20
    ld hl, sp-$31
    db $f0

    db $83, $01, $d4, $00

    db $e0

    db $22

    rst $38

    db $05

    ldh a, [$ff7f]
    rst $20
    ld a, b
    di
    ld a, h

    db $83, $01, $e2, $83, $01, $e2, $83, $01, $e2, $8d, $01, $e2, $a9, $01, $00, $02

    dec bc
    nop
    ld e, a

    db $a4, $01, $0d, $03

    ld [bc], a
    rlca
    pop bc
    rlca

    db $42

    add hl, sp
    inc bc

    db $41

    pop bc
    rlca

    db $00

    pop bc

    db $88, $02, $13, $01

    db $01
    rst $00

    db $a3, $01, $2c, $89, $02, $20, $85, $02, $1a, $89, $01, $80, $01

    nop
    db $c3

    db $c3, $00, $21, $1e

    INCBIN "gfx/image_017_4da7.2bpp"

    rst $38
    add b
    db $fc
    ld b, e
    jr nc, jr_017_4dec

    jr nc, @+$21

    jr c, jr_017_4dd0

    ccf
    inc b
    jp $c302


    db $bc, $01, $6f, $41

    ret nz

    inc bc

    db $03

    db $fc
    db $fc
    ld [bc], a

jr_017_4dd0:
    db $06

    db $97, $02, $14, $a5, $01, $ac, $15

    INCBIN "gfx/image_017_4dd8.2bpp"

    jp nz, Jump_000_3402

    inc c

jr_017_4dec:
    jr z, @+$1a

    db $c5, $02, $b7, $f4, $31, $01, $ce, $c3, $01, $df, $85, $01, $d6, $02

    rst $20
    ld hl, sp-$40

    db $24

    rst $38

    db $00

    ret nz

    db $44

    add b
    rst $08

    db $04

    add b
    rst $38
    rst $38
    rst $20
    ld b, b

    db $43

    ld h, a
    ret nz

    db $42

    rst $20
    ld b, b

    db $22

    rst $38

    db $23

    add c

    db $47

    add c
    cp a

    db $00

    add c

    db $41

    pop bc
    cp a

    db $e0, $23

    INCBIN "gfx/image_017_4e20.2bpp"

    rrca
    ldh a, [c]
    ccf
    pop bc

    db $42

    rst $38
    nop

    db $41

    nop
    rst $38

    db $08

    rst $38
    nop
    rst $38
    rst $38
    db $fc
    inc bc
    rst $38
    rst $38
    db $e0

    db $99, $01, $13, $23

    rst $38

    db $08

    jr @+$41

    ret c

    rra
    ld hl, sp+$1b
    db $fc
    inc h
    rst $38

    db $42

    db $fc
    daa

    db $01

    rst $20
    ld b, d

    db $42

    ld e, e
    db $e6

    db $01

    db $c3
    add c

    db $45

    and l
    db $c3

    db $01

    db $c3
    add c

    db $42

    db $da
    ld h, a

    db $03

    and $43
    rst $38
    inc h

    db $41

    ccf
    db $e4

    db $0f

    INCBIN "gfx/image_017_4e81.2bpp"

    db $41

    ld c, $00

    db $05

    pop hl
    ld c, $1f
    rst $28
    db $fc
    di

    db $84, $00, $20, $00

    rst $38

    db $41

    rst $30
    db $f8

    db $05

    rst $08
    ccf
    ldh a, [rIF]
    db $fc
    inc bc

    db $b1, $03, $00, $01

    rrca
    db $01

    db $44

    di
    dec c

    db $03

    rst $38
    rst $38
    rst $20
    ld a, [de]

    db $43

    and $1b

    db $42

    rst $20
    ld a, [de]

    db $02

    rst $38
    nop
    rst $38

    db $84, $00, $0e, $00

    nop

    db $42

    nop
    rst $38

    db $00

    nop

    db $af, $03, $70, $0e

    pop bc
    inc bc
    jp Jump_000_0402


    ccf
    ld [$103f], sp
    ccf
    inc hl
    inc a
    ld c, a
    ldh a, [$ffbf]

    db $84, $04, $4f, $0b

    rlca
    inc a
    dec bc
    inc a
    db $10
    ccf
    jr nz, @+$41

    ld [hl], b
    rst $08
    db $fc
    add e

    db $d1, $00, $4f, $00

    inc bc

    db $98, $02, $13, $f4, $44, $03, $9c, $ae, $03, $f1, $b0, $03, $e0, $84, $00, $0f
    db $1b

    inc e
    nop
    ld a, a
    inc e
    rst $38
    ld a, a
    add $f9
    cp b

    db $c7

    INCBIN "gfx/image_017_4f0f.2bpp"

    rst $38
    ld a, a

    db $41

    sub b
    ret nz

    db $0f

    INCBIN "gfx/image_017_4f25.2bpp"

    db $41

    ld l, a
    sub b

    db $1c

    INCBIN "gfx/image_017_4f39.2bpp"

    nop
    ret c

    add hl, de
    db $e4
    inc a
    jp $8778


    inc sp
    ld c, a
    adc h
    inc a
    ldh a, [c]

    db $84, $02, $07, $03

    rla
    ld c, b
    ld a, c
    add [hl]

    db $84, $00, $20, $c3, $00, $34, $c5, $04, $f0, $06

    inc bc
    jr c, @-$37

    dec de
    db $e4
    daa
    ret c

    db $41

    cpl
    ret nc

    db $03

    daa
    ret c

    dec de
    db $e4

    db $41

    inc a
    db $c3

    db $87, $05, $72, $0c

    adc d
    ld [hl], l
    sub l
    ld l, d
    ret nz

    ccf
    ld e, $e1
    call $e332
    inc e
    rst $30

    db $84, $05, $17, $09

    db $ed
    ld [de], a
    sbc [hl]
    ld h, c
    ld e, $e1
    db $ed
    ld [de], a
    di
    inc c

    db $41

    rst $30
    db $08

    db $0a

    and d
    ld e, l
    ld d, l
    xor d
    nop
    rst $38
    rlca
    nop
    jr jr_017_4fa7

jr_017_4fa7:
    db $20

    db $41

    nop
    ld b, b

    db $42

    nop
    add b

    db $00

    nop

    db $ce, $05, $be, $05

    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    db $83, $05, $b9, $26

    nop

    db $cf, $05, $de, $02

    rst $38
    ccf
    db $e0

    db $8c, $01, $93, $af, $05, $20, $01

    inc e
    db $e3

    db $ad, $05, $32, $a7, $05, $00, $02

    db $fc
    jr c, @-$2f

    db $ac, $05, $0b, $00

    rst $20

    db $a6, $05, $19, $aa, $05, $40, $02

    dec bc
    ld e, b
    rlca

    db $ac, $05, $4e, $02

    ld [$10ed], sp

    db $b1, $05, $5e, $b9, $05, $90, $01

    xor d
    ld d, l

    db $83, $05, $ac, $b9, $05, $70, $05

    and c
    ld e, [hl]
    ld d, c
    xor [hl]
    inc bc
    db $fc

    db $f4, $41, $05, $b0, $00

    inc bc

    db $8c, $02, $93, $f0, $2f, $00, $40, $ff, $64, $4c, $17, $ff, $00, $80, $62, $7d
    db $06, $00, $09, $09, $03, $03, $09, $04, $c3, $00, $0a, $1f, $04, $08, $08, $04
    db $08, $08, $46, $15, $25, $18, $01, $01, $03, $01, $04, $01, $03, $04, $08, $80
    db $1b, $0c, $18, $28, $28, $03, $28, $04, $28, $03, $04, $08, $41, $09, $01, $41
    db $09, $28, $1e, $07, $01, $28, $01, $01, $28, $04, $04, $0d, $0f, $44, $55, $55
    db $47, $57, $57, $67, $67, $47, $57, $57, $80, $5b, $4c, $80, $42, $40, $40, $43
    db $53, $53, $85, $00, $41, $02, $47, $57, $57, $62, $42, $0a, $47, $47, $2a, $2c
    db $2e, $2f, $4b, $80, $5b, $80, $4c, $22, $80, $00, $5c, $83, $00, $4c, $14, $09
    db $03, $80, $46, $7f, $7f, $80, $46, $04, $04, $46, $82, $80, $82, $00, $82, $46
    db $21, $22, $7f, $7c, $23, $46, $07, $33, $23, $08, $7c, $7c, $00, $46, $43, $41
    db $7d, $5d, $05, $4e, $80, $7d, $4e, $5d, $80, $83, $00, $98, $02, $7c, $7d, $4e
    db $84, $00, $9f, $02, $7d, $5d, $4e, $24, $80, $83, $00, $98, $03, $82, $80, $09
    db $0b, $22, $7d, $09, $80, $4f, $04, $03, $4f, $4f, $03, $82, $7d, $09, $83, $00
    db $c1, $22, $80, $01, $4f, $04, $25, $80, $43, $46, $15, $43, $25, $18, $37, $80
    db $62, $7d, $e0, $51, $10, $19, $03, $03, $19, $19, $13, $13, $03, $03, $19, $08
    db $08, $13, $08, $08, $13, $05, $56, $08, $35, $11, $03, $11, $11, $13, $03, $11
    db $08, $13, $0b, $80, $08, $1c, $38, $03, $38, $38, $13, $03, $38, $08, $13, $19
    db $11, $11, $19, $19, $38, $38, $19, $17, $11, $11, $38, $38, $11, $13, $13, $1d
    db $1f, $45, $45, $54, $49, $49, $59, $67, $67, $49, $49, $59, $4b, $80, $80, $5c
    db $52, $52, $50, $41, $41, $51, $85, $01, $40, $0c, $49, $49, $59, $50, $51, $54
    db $59, $59, $3a, $3c, $3e, $3f, $5b, $83, $01, $4b, $c3, $00, $6e, $83, $01, $4b
    db $14, $03, $19, $80, $56, $7f, $7f, $80, $56, $13, $13, $56, $84, $80, $84, $10
    db $84, $56, $31, $32, $7f, $7f, $23, $56, $07, $23, $33, $08, $80, $08, $10, $56
    db $51, $41, $4d, $7d, $05, $80, $5e, $7d, $5e, $4d, $80, $84, $01, $97, $02, $7d
    db $80, $5e, $83, $01, $97, $83, $01, $97, $22, $80, $84, $01, $9e, $03, $84, $80
    db $19, $1b, $83, $00, $bc, $07, $5f, $13, $5f, $03, $03, $5f, $84, $7d, $84, $01
    db $bf, $22, $80, $01, $19, $13, $25, $80, $43, $05, $56, $43, $08, $35, $9a, $00
    db $e8, $07, $46, $0a, $0a, $14, $14, $04, $04, $0a, $85, $00, $0f, $e0, $39, $0a
    db $14, $14, $06, $08, $46, $36, $02, $02, $14, $04, $02, $04, $08, $02, $14, $0b
    db $08, $80, $1c, $29, $29, $14, $04, $29, $04, $08, $29, $14, $02, $0a, $0a, $02
    db $29, $0a, $0a, $29, $80, $29, $29, $02, $04, $04, $02, $29, $0e, $20, $47, $49
    db $49, $47, $49, $49, $68, $68, $48, $4a, $4a, $83, $01, $4b, $05, $43, $41, $41
    db $43, $41, $41, $85, $02, $3f, $08, $48, $4a, $4a, $43, $43, $47, $47, $48, $2b
    db $62, $2d, $07, $4c, $80, $5c, $4b, $80, $80, $5b, $80, $84, $01, $6f, $01, $29
    db $14, $83, $00, $77, $06, $f0, $f2, $0a, $29, $f2, $83, $80, $41, $83, $46, $03
    db $22, $21, $7f, $7f, $23, $46, $07, $27, $24, $08, $80, $08, $f2, $f2, $43, $41
    db $4d, $80, $01, $7d, $5e, $87, $01, $97, $01, $7d, $7d, $84, $02, $9e, $83, $02
    db $9f, $85, $01, $ae, $06, $80, $7d, $5e, $83, $80, $0a, $0c, $83, $00, $bc, $0c
    db $04, $02, $14, $02, $04, $08, $83, $7d, $04, $0a, $14, $0a, $0a, $c3, $00, $d4
    db $00, $02, $25, $80, $43, $06, $08, $43, $46, $36, $9a, $00, $e8, $07, $56, $1a
    db $14, $14, $1a, $13, $13, $1a, $85, $01, $0e, $1c, $14, $14, $1a, $08, $16, $26
    db $56, $12, $14, $12, $13, $12, $08, $13, $14, $12, $08, $1b, $0c, $80, $39, $14
    db $39, $13, $39, $08, $13, $14, $39, $41, $12, $1a, $41, $39, $1a, $14, $80, $39
    db $12, $39, $13, $13, $39, $12, $1e, $30, $57, $57, $59, $57, $57, $59, $68, $68
    db $58, $58, $5a, $83, $00, $4c, $05, $53, $53, $51, $53, $53, $51, $85, $03, $3e
    db $08, $58, $58, $5a, $51, $51, $59, $59, $5a, $3b, $62, $3d, $00, $5c, $c4, $00
    db $6c, $23, $80, $04, $5b, $4c, $80, $14, $39, $83, $01, $76, $06, $f1, $f3, $39
    db $1a, $f3, $85, $80, $41, $85, $56, $02, $32, $31, $7c, $84, $01, $88, $07, $24
    db $34, $7c, $80, $08, $f3, $f3, $51, $41, $80, $5d, $01, $4e, $7d, $c3, $00, $a9
    db $06, $4e, $7d, $80, $5d, $7d, $7d, $4e, $c5, $00, $a0, $01, $5d, $4e, $c5, $00
    db $b4, $06, $5d, $4e, $7d, $85, $80, $1a, $1c, $83, $00, $bc, $0c, $13, $12, $12
    db $14, $08, $13, $85, $7d, $13, $12, $1a, $14, $14, $c3, $01, $d3, $00, $1a, $25
    db $80, $43, $08, $16, $43, $26, $56, $36, $80, $23, $00, $00, $80, $2f, $01, $63
    db $84, $28, $01, $63, $04, $30, $01, $00, $02, $28, $01, $25, $a8, $00, $00, $c3
    db $04, $43, $23, $20, $22, $03, $cb, $03, $fe, $00, $03, $83, $04, $51, $23, $88
    db $2c, $00, $05, $01, $01, $20, $80, $10, $90, $83, $03, $ff, $02, $b0, $21, $00
    db $41, $21, $80, $07, $01, $01, $fd, $fe, $a8, $b8, $a0, $b0, $83, $04, $82, $05
    db $fe, $80, $a8, $00, $20, $20, $2b, $00, $00, $fe, $22, $20, $23, $30, $23, $28
    db $02, $20, $30, $28, $24, $38, $06, $21, $28, $31, $01, $30, $28, $38, $a6, $04
    db $51, $01, $21, $00, $a7, $03, $f7, $c7, $04, $72, $0f, $a4, $a5, $ac, $ad, $b4
    db $b5, $bc, $bd, $a6, $a7, $ae, $af, $b6, $b7, $be, $bf, $36, $00, $ff, $73, $23

    nop

    db $05

    rlca
    rlca
    rra
    rra
    ccf
    ccf

    db $23

    ld a, a

    db $01

    rst $38
    rst $38

    db $af, $00, $00, $41

    rst $38
    nop

    db $08

    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38

    db $af, $00, $1d, $e0, $20

    INCBIN "gfx/image_017_53fd.2bpp"

    rst $28

    db $41

    ldh [$ff9f], a

    db $0d

    ldh a, [$ffef]
    jr nc, jr_017_5455

    ld [hl], b
    ld c, a
    ld a, b
    ld b, a
    ld a, $27
    add hl, de
    ccf
    db $01

jr_017_542f:
    ccf

    db $bf, $00, $50, $0b

    ld bc, $19fd
    db $fd
    ccf
    and $7f
    ret nz

    ld [hl], b
    rst $08
    jr nc, jr_017_542f

    db $88, $00, $5c, $0a

    rst $28
    ld [hl], b
    rst $08
    ld a, b
    rst $00
    ld a, $e7
    add hl, de
    db $fd
    db $01
    db $fd

    db $bf, $00, $90, $03

    nop
    nop

jr_017_5455:
    ld a, [hl]
    ld a, [hl]

    db $27

    ld b, d

    db $c3, $00, $d3, $87, $00, $d0, $d7, $00, $e7, $07

    rst $38
    ld a, a
    jp $bcc3


    add b
    and e
    sbc h

    db $41

    and b
    sbc a

    db $43

    db $d3
    db $cc

    db $43

    and l
    sbc d

    db $41

    db $d3
    db $cc

    db $01

    inc a
    db $c3

    db $41

    rst $38
    nop

    db $e0, $2f

    INCBIN "gfx/image_017_547f.2bpp"

    db $83, $00, $96, $01

    ld [hl], b
    xor a

    db $87, $00, $5c, $01

    ld [hl], b
    xor a

    db $83, $00, $a6, $09

    ld a, [hl]
    and a
    ld e, c
    sbc c
    ld b, c
    add c
    ld bc, $1901
    add hl, de

    db $98, $00, $54, $00

    add hl, de

    db $22

    db $01

    db $03

    nop
    add hl, de
    nop
    ccf

    db $41

    nop
    ld a, a

    db $01

    nop
    ccf

    db $41

    nop
    rst $38

    db $00

    nop

    db $cd, $01, $9e, $04

    nop
    nop
    ld b, b
    add b
    ld b, b

    db $43

    add b
    ld a, a

    db $41

    add b
    ld b, b

    db $00

    add b

    db $44

    nop
    db $01

    db $42

    db $01
    ld [bc], a

    db $41

    ld [bc], a
    inc b

    db $01

    inc bc
    inc b

    db $42

    rlca
    db $08

    db $43

    db $08
    db $10

    db $00

    inc e

    db $41

    jr nz, @+$20

    db $e0, $22

    INCBIN "gfx/image_017_550a.2bpp"

    rst $38
    inc a
    db $c3

    db $c5, $02, $0b, $01

    ld a, a
    add b

    db $83, $01, $26, $0b

    cp $00
    rst $38
    nop
    ld h, a
    add b
    ld a, a
    add b
    inc a
    jp Jump_000_00ff


    db $87, $02, $14, $02

    rst $20
    nop
    rst $38

    db $a3, $01, $c8, $02

    ld b, b
    ld h, b
    ld h, b

    db $b9, $01, $36, $02

    add [hl]
    add c
    sbc [hl]

    db $b8, $01, $53, $06

    sbc [hl]
    sbc c
    add [hl]
    add c
    jp $ffc3


    db $c4, $02, $0a, $49

    nop
    rst $38

    db $c3, $02, $73, $00

    db $c3

    db $4d

    nop
    rst $38

    db $01

    nop
    db $c3

    db $84, $01, $af, $03

    ld h, b
    add b
    ld [hl], b
    add b

    db $c6, $02, $b6, $00

    add b

    db $41

    ret nz

    nop

    db $00

    db $e0

    db $41

    nop
    db $f0

    db $01

    nop
    db $e0

    db $28

    nop

    db $03

    cp $00
    rst $38
    nop

    db $c7, $02, $d6, $41

    ld b, b
    add b

    db $03

    ld a, [hl]
    add b
    ld a, a
    add b

    db $c6, $02, $e6, $03

    add b
    adc b
    nop
    db $dc

    db $86, $02, $d3, $05

    ei
    inc b
    ld sp, $00ce
    rst $38

    db $bf, $02, $00, $03

    ld a, a
    add b
    ld [hl], a
    add b

    db $c6, $03, $1a, $e0, $20

    INCBIN "gfx/image_017_55bd.2bpp"

    add hl, sp

    db $83, $03, $3c, $02

    ret nz

    add b
    ret c

    db $b8, $01, $73, $03

    ret c

    sbc b
    ret nz

    add b

    db $f4, $3f, $01, $70, $a7, $02, $b8, $a7, $02, $b0, $02

    rrca
    nop
    rlca

    db $88, $01, $c0, $a3, $02, $c2, $02

    rlca
    nop
    inc bc

    db $24

    nop

    db $02

    nop
    nop
    nop

    db $8f, $03, $cb, $24

    nop

    db $af, $02, $f0, $bf, $01, $00, $03

    cp $01
    or $01

    db $87, $03, $24, $0b

    cp $01
    sbc [hl]
    ld bc, $8880
    ld b, b
    ld e, h
    ld h, b
    ld a, [hl]
    or b
    ccf

    db $b7, $03, $38, $02

    rlca
    db $01
    rra

    db $98, $01, $73, $05

    rra
    add hl, de
    rlca
    ld bc, $ffc3

    db $9c, $02, $72, $00

    rst $38

    db $87, $03, $b0, $af, $02, $e0, $ab, $02, $b0, $43

    cp $01

    db $02

    ld b, $01
    db $0e

    db $b0, $01, $bf, $41

    ret nz

    db $20

    db $01

    ld b, b

jr_017_5659:
    db $20

    db $41

    jr nz, @+$12

    db $01

    nop
    db $10

    db $43

    ldh a, [$ff08]

    db $06

    ld [$0804], sp
    ld b, $08
    rlca
    db $08

    db $b4, $01, $eb, $46

    ret nz

    ccf

    db $00

    ret nz

    db $4d

    ccf
    nop

    db $43

    ld a, a

jr_017_5678:
    nop

    db $86, $01, $9c, $05

jr_017_567d:
    add c
    ld a, [hl]
    jp $e73c


    db $18

    db $f4, $3f, $05, $00, $a4, $02, $d6, $0c

    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    db $01
    db $fe

    db $c8, $05, $38, $04

jr_017_569c:
    ccf
    nop
    rra
    nop
    rrca

    db $c5, $03, $cf, $28

    nop

    db $02

    nop
    rst $38
    nop

    db $f4, $2e, $05, $80, $0a

    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr c, jr_017_567d

    ld a, h
    add e
    cp $01

    db $c8, $05, $39, $06

    add b
    ld a, $c1
    inc e
    db $e3
    db $08
    rst $30

    db $8c, $02, $78, $07

    ld a, a
    nop
    ld a, $00
    inc e
    nop
    db $08
    nop

    db $c8, $06, $0f, $85, $05, $3a, $86, $01, $9b, $00

    cp a

    db $85, $05, $10, $01

    nop
    ccf

    db $ac, $05, $fe, $05

    db $fc
    nop
    db $fc
    rst $38
    nop
    rst $30

    db $c7, $03, $1b, $08

    nop
    rst $38
    nop
    sbc a
    nop
    ld bc, $19ff
    rst $38

    db $98, $00, $94, $02

    rst $38
    db $01
    rst $38

    db $9f, $04, $70, $bf, $06, $50, $a4, $06, $8f, $05

    ld h, $ff
    ld b, b
    ldh a, [rVBK]
    db $f0

    db $84, $00, $5b, $af, $00, $40, $00

    rst $38

    db $9c, $02, $71, $01

    rst $38
    db $c3

    db $af, $06, $b0, $f0, $2f, $00, $d0, $ff, $d9, $53, $17, $ff, $00, $80, $62, $7d
    db $1b, $00, $00, $20, $20, $80, $13, $51, $04, $01, $01, $54, $32, $54, $33, $51
    db $0c, $2c, $0e, $2e, $41, $80, $2b, $80, $3b, $80, $2b, $80, $43, $41, $80, $39
    db $83, $00, $18, $16, $07, $17, $17, $09, $19, $19, $4f, $2b, $35, $17, $41, $4f
    db $4f, $48, $7d, $37, $4a, $4c, $7d, $2b, $40, $19, $2b, $41, $80, $7f, $e0, $21
    db $7c, $80, $45, $51, $47, $80, $45, $4f, $4f, $7d, $2b, $7d, $39, $4f, $39, $47
    db $43, $33, $33, $80, $80, $fd, $2b, $fd, $80, $fd, $41, $82, $80, $09, $2b, $19
    db $2b, $7d, $22, $80, $13, $55, $57, $57, $5b, $5d, $5d, $35, $5d, $f5, $57, $f9
    db $17, $4f, $7e, $4f, $2b, $7e, $39, $7e, $2b, $22, $7e, $09, $80, $57, $5d, $7c
    db $54, $80, $80, $51, $7f, $7c, $e4, $76, $80, $62, $7d, $e0, $2d, $30, $10, $10
    db $30, $03, $80, $23, $54, $31, $22, $54, $31, $14, $51, $51, $1c, $3c, $80, $3e
    db $45, $1b, $80, $0b, $80, $1b, $80, $80, $47, $1e, $80, $1b, $80, $1e, $80, $0b
    db $80, $17, $17, $27, $19, $19, $29, $1b, $4f, $17, $25, $83, $00, $49, $08, $4b
    db $37, $49, $4d, $1b, $7d, $44, $1b, $19, $41, $80, $7f, $08, $7f, $41, $80, $43
    db $51, $41, $80, $4f, $4f, $41, $1b, $7d, $06, $1b, $4f, $23, $23, $43, $43, $80
    db $42, $80, $ff, $06, $45, $84, $80, $1b, $29, $1b, $19, $83, $00, $64, $0f, $57
    db $57, $59, $5d, $5d, $5f, $5d, $25, $57, $f7, $17, $fb, $4f, $7e, $1b, $4f, $41
    db $1b, $7e, $83, $00, $7c, $02, $5d, $59, $7d, $84, $00, $83, $00, $31, $e4, $76
    db $80, $62, $7d, $07, $01, $01, $02, $21, $03, $14, $24, $54, $84, $00, $0c, $08
    db $14, $7d, $0d, $2d, $0f, $2f, $42, $80, $2b, $84, $00, $18, $00, $7d, $41, $80
    db $3a, $83, $00, $18, $e0, $3c, $08, $18, $18, $0a, $1a, $1a, $50, $2b, $36, $18
    db $41, $52, $50, $49, $4b, $38, $80, $4d, $7d, $2b, $40, $1a, $2b, $80, $7f, $f0
    db $7f, $7f, $80, $46, $7d, $7d, $80, $45, $50, $53, $7d, $2b, $7d, $3a, $50, $3a
    db $24, $24, $14, $14, $80, $80, $fe, $2b, $fe, $80, $fe, $41, $83, $80, $0a, $2b
    db $1a, $2b, $f2, $22, $80, $e0, $20, $56, $58, $58, $5c, $5e, $5e, $36, $5e, $f6
    db $58, $fa, $18, $7e, $50, $7e, $2b, $50, $3a, $7e, $2b, $50, $53, $52, $80, $58
    db $5e, $7d, $54, $80, $f0, $7d, $7f, $32, $e4, $76, $80, $62, $7d, $06, $31, $11
    db $12, $31, $04, $13, $04, $84, $01, $0a, $08, $54, $34, $7d, $1d, $3d, $1f, $3f
    db $46, $1b, $c4, $01, $1c, $01, $80, $7d, $42, $1b, $80, $13, $0b, $80, $18, $18
    db $28, $1a, $1a, $2a, $1b, $50, $18, $26, $45, $53, $50, $48, $4c, $38, $4a, $80
    db $83, $01, $39, $0d, $1a, $80, $7f, $f1, $7c, $7f, $42, $80, $7d, $7d, $41, $80
    db $52, $50, $84, $01, $4b, $05, $50, $04, $04, $34, $34, $80, $42, $80, $e0, $07
    db $45, $85, $80, $1b, $2a, $1b, $1a, $f3, $22, $80, $1e, $58, $58, $5a, $5e, $5e
    db $f4, $5e, $26, $58, $f8, $18, $fc, $7e, $50, $1b, $7e, $1b, $50, $1b, $7e, $52
    db $50, $53, $80, $5e, $5a, $7d, $7c, $80, $f1, $7d, $f0, $77, $01, $86, $23, $00
    db $23, $01, $02, $04, $05, $04, $25, $01, $00, $05, $35, $00, $02, $03, $03, $03
    db $84, $04, $1f, $cf, $04, $25, $03, $10, $00, $fd, $fe, $2d, $00, $04, $04, $04
    db $05, $05, $00, $42, $00, $61, $01, $00, $21, $8b, $04, $1b, $22, $03, $ce, $04
    db $69, $84, $04, $21, $06, $fe, $fd, $40, $00, $40, $10, $fe, $e4, $75, $00, $ff
    db $73, $23

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

    db $af, $00, $00, $22

    nop

    db $0c

    add b
    nop
    add $00
    rst $28
    ld [$1cf7], sp
    db $e3
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a

    db $a7, $00, $20, $05

    nop
    rst $38
    ld h, e
    sbc h
    ld [hl], a
    adc b

    db $a4, $00, $2e, $10

    INCBIN "gfx/image_017_59be.2bpp"

    ld a, [hl]

    db $27

    ld b, d

    db $c3, $00, $53, $87, $00, $50, $c7, $00, $67, $87, $00, $50, $c7, $00, $77, $87
    db $00, $50, $c7, $00, $87, $87, $00, $50, $c7, $00, $97, $87, $00, $50, $f8, $57
    db $00, $a7, $17

    INCBIN "gfx/image_017_59f4.2bpp"

    ldh [$ff9f], a
    add a
    ld hl, sp-$01
    add b
    ld hl, sp-$79

    db $41

    add b
    rst $38

    db $03

    ret nz

    rst $38
    rst $38
    ld a, a

    db $89, $01, $10, $83, $01, $12, $01

    ldh a, [$ff8f]

    db $c9, $01, $2b, $83, $01, $32, $04

    ldh [$ff9f], a
    rst $38
    rst $38
    nop

    db $84, $00, $0f, $10

    INCBIN "gfx/image_017_5a2d.2bpp"

    rst $38

    db $c5, $01, $45, $01

    rst $38
    db $01

    db $63

    db $01

    db $0c

    ld b, $08
    inc c
    db $10
    jr jr_017_5a6e

    jr nc, jr_017_5a90

    ld h, b
    add b
    rst $00
    nop
    add e

    db $41

    rlca
    nop

    db $11

    INCBIN "gfx/image_017_5a58.2bpp"

    nop
    rst $38

    db $85, $01, $80, $41

jr_017_5a6e:
    ldh [$ff1f], a

    db $c9, $01, $89, $0f

    INCBIN "gfx/image_017_5a74.2bpp"

    db $83, $01, $3c, $0a

    rra
    rra
    inc a
    daa
    ld e, e
    ld h, [hl]
    ld h, a
    ld b, d

jr_017_5a90:
    sbc c
    db $c3
    sbc c

    db $41

    add c
    and l

    db $00

    add b

    db $c4, $01, $be, $0a

    add c
    sbc c
    jp $4366


    ld e, e
    ld h, a
    inc a
    daa
    rra
    rra

    db $83, $01, $40, $06

    rst $38
    nop
    add $00
    add hl, sp
    nop
    add b

    db $26

    nop

    db $09

    ld c, $00
    pop af
    nop
    sbc [hl]
    ld h, c
    ld h, c
    sbc [hl]
    inc c
    di

    db $83, $01, $5c, $42

    and b
    ret nz

    db $02

    sub b
    ret nz

    sub b

    db $c6, $01, $f7, $a7, $01, $00, $13

    INCBIN "gfx/image_017_5ad0.2bpp"

    ccf
    pop bc
    ld sp, hl
    rlca

    db $a3, $01, $1c, $87, $02, $10, $17

    INCBIN "gfx/image_017_5aeb.2bpp"

    inc bc
    db $fd
    ld bc, $fdff
    inc bc
    ccf
    pop bc

    db $87, $01, $40, $07

    xor b
    nop
    ld d, h
    xor b
    xor d
    ld d, h
    rst $38
    nop

    db $8b, $01, $90, $ad, $01, $5c, $e0, $21

    INCBIN "gfx/image_017_5b17.2bpp"

    nop
    rst $38

    db $83, $02, $7c, $89, $01, $50, $85, $01, $96, $0b

    ld hl, $91c1
    ld h, c
    pop hl
    ld bc, $a151
    dec bc
    pop af
    dec b
    ei

    db $83, $02, $3c, $89, $01, $d0, $12

    INCBIN "gfx/image_017_5b56.2bpp"

    inc c
    di
    ret nz

    db $22

    rst $38

    db $09

    ldh a, [$fff8]
    inc c
    db $fc
    ldh a, [c]
    ld c, $3a
    ld b, $d1
    rrca

    db $a4, $01, $f2, $10

    INCBIN "gfx/image_017_5b7a.2bpp"

    db $f8

    db $41

    add hl, hl
    rlca

    db $41

    db $11
    rrca

    db $42

    add hl, hl
    rlca

    db $01

    db $11
    rrca

    db $a3, $00, $42, $01

    db $08
    nop

    db $83, $02, $ff, $05

    ld b, $09
    nop
    rrca
    nop
    rlca

    db $af, $02, $d0, $00

    rst $38

    db $84, $00, $0e, $07

    jr c, jr_017_5bb2

jr_017_5bb2:
    ld b, h
    jr c, @-$63

    ld h, h
    inc h
    db $c3

    db $2e

    nop

    db $1b

    INCBIN "gfx/image_017_5bbb.2bpp"

    add h
    inc bc
    db $fc
    ld [bc], a
    inc b
    inc b
    jr jr_017_5be3

    jr nz, @+$25

    ld b, b
    db $2e

    db $86, $03, $49, $03

    ld a, c
    add b
    ld a, b
    add b

    db $41

    inc [hl]
    ret nz

    db $0d

jr_017_5be3:
    inc d
    ldh [$ff50], a
    and b
    ld e, b
    and b
    add hl, sp
    ret nz

    add hl, hl
    ret nz

    ld l, b
    add b
    jr z, @-$3e

    db $41

    ld h, b
    add b

    db $01

    ld b, b
    add b

    db $c4, $02, $bd, $0e

    nop
    jr c, jr_017_5bfe

jr_017_5bfe:
    ld h, b
    nop
    and e
    ld b, b
    inc b
    add b
    adc l
    nop
    ld a, [$ff00]
    nop

    db $a7, $00, $40, $08

    ld h, $00
    ld d, c
    nop
    and b
    ld b, b
    ld e, a
    and b
    rrca

    db $41

    nop
    rra

    db $01

    nop
    ld a, a

    db $47

    nop
    rst $38

    db $c7, $03, $a7, $02

    nop
    rrca
    db $f0

    db $41

    rra
    db $e0

    db $01

    ld a, a
    add b

    db $8e, $03, $aa, $02

    add b
    ld a, a
    add b

    db $41

    rra
    db $e0

    db $01

    rlca
    db $f8

    db $d0, $03, $cf, $00

    rst $38

    db $c3, $03, $d7, $01

    add b
    ld a, a

    db $85, $03, $b7, $01

    ld a, [bc]
    dec b

    db $af, $03, $00, $0f

    INCBIN "gfx/image_017_5c4f.2bpp"

    db $a7, $04, $10, $07

    ld b, b
    ccf
    xor b
    ld d, [hl]
    ld e, b
    add [hl]
    dec d
    ld [bc], a

    db $f4, $2f, $03, $30, $41

    inc l
    inc bc

    db $01

    inc e
    inc bc

    db $41

    sub h
    dec bc

    db $01

    db $10
    rrca

    db $41

    jr z, @+$09

    db $04

    inc l
    inc bc
    ld h, $01
    inc b

    db $ac, $03, $75, $a6, $03, $92, $86, $00, $49, $ab, $03, $80, $0d

    rst $08
    jr nc, jr_017_5cbb

    ret c

    ldh a, [rP1]
    adc b
    ld [hl], b
    ld l, b
    sub b
    and $18
    pop af
    db $0e

    db $41

    db $fd
    ld [bc], a

    db $41

    ei
    inc b

    db $41

    db $fd
    ld [bc], a

    db $07

    pop af
    ld c, $e6
    jr @+$6a

    sub b
    adc b
    ld [hl], b

    db $f4, $42, $03, $be, $84, $03, $a8, $05

    inc bc
    db $fc

jr_017_5cbb:
    rrca
    ldh a, [rIF]
    db $f0

    db $43

    rra
    db $e0

    db $41

    rrca
    db $f0

    db $01

    inc bc
    db $fc

    db $42

    nop
    rst $38

    db $86, $03, $ba, $01

    nop
    inc bc

    db $86, $04, $33, $8d, $00, $20, $41

    rst $38
    nop

    db $05

    xor $11
    call nz, $802a
    ld b, h

    db $87, $01, $d9, $02

    db $e3
    nop
    inc e

    db $34

    nop

    db $06

    jr jr_017_5ced

jr_017_5ced:
    inc a
    nop
    rst $38
    nop
    db $e3

    db $84, $03, $93, $00

    db $20

    db $41

    nop
    ld b, b

    db $43

    nop
    add b

    db $41

    nop
    ret nz

    db $0b

    nop

Jump_017_5d02:
    ld h, b
    nop
    ld [hl], b
    nop
    inc a
    nop
    rra
    nop
    rlca
    nop
    ld a, a

    db $9c, $01, $01, $83, $00, $1b, $9c, $05, $92, $03

    rst $38
    jp $8100


    db $28

    nop

    db $02

    add c
    nop
    db $c3

    db $a3, $05, $6b, $41

    nop
    add e

    db $c6, $05, $e5, $85, $01, $58, $01

    inc e
    db $e3

    db $42

    ld a, $c1

    db $03

    inc e
    db $e3
    nop
    rst $38

    db $bf, $05, $00, $41

    ldh a, [$ff08]

    db $05

    ldh [rNR10], a
    ret nz

    jr nc, jr_017_5d44

jr_017_5d44:
    ret nz

    db $ad, $05, $2a, $83, $00, $38, $01

    rst $30
    db $08

    db $83, $03, $d4, $05

    dec sp
    ld b, h
    ld de, $002a
    db $11

    db $22

    nop

    db $83, $04, $7f, $f4, $20, $05, $6f, $bf, $05, $50, $00

    db $fe

    db $9c, $02, $01, $a3, $05, $ae, $9c, $06, $92, $91, $00, $1f, $86, $03, $a8, $87
    db $05, $38, $44

    nop
    rst $38

    db $84, $06, $3a, $f0, $30, $00, $5f, $ff, $8e, $59, $17, $ff, $00, $80, $62, $7d
    db $05, $00, $00, $14, $14, $00, $03, $c3, $00, $09, $0a, $03, $08, $08, $03, $08
    db $08, $80, $16, $07, $08, $0b, $22, $0d, $1c, $0f, $21, $0d, $80, $80, $31, $22
    db $7e, $5f, $80, $36, $7e, $33, $26, $80, $80, $53, $37, $23, $7e, $53, $27, $80
    db $f3, $80, $3f, $7e, $7d, $f3, $84, $00, $31, $0d, $2b, $2d, $7e, $2f, $7d, $2d
    db $7d, $7d, $2b, $2d, $7d, $2d, $3c, $40, $41, $7d, $2b, $0f, $3a, $80, $7d, $3c
    db $2d, $7e, $2f, $2b, $80, $3c, $3e, $3c, $7e, $7d, $2d, $7e, $24, $3f, $0f, $80
    db $4e, $7d, $3f, $7e, $53, $f2, $37, $7e, $7d, $7e, $7e, $49, $14, $4b, $14, $22
    db $80, $00, $49, $41, $03, $08, $03, $80, $7f, $80, $47, $22, $45, $03, $36, $47
    db $36, $80, $41, $0a, $08, $e0, $22, $53, $22, $80, $7f, $82, $53, $7c, $7f, $82
    db $80, $0b, $80, $82, $7e, $82, $36, $82, $26, $82, $80, $22, $33, $1d, $21, $7e
    db $33, $7e, $7e, $80, $80, $7c, $14, $7c, $7c, $08, $e4, $50, $80, $62, $7d, $e0
    db $3e, $10, $04, $04, $10, $10, $13, $13, $04, $04, $10, $18, $18, $13, $18, $18
    db $13, $06, $80, $18, $17, $1b, $0d, $1d, $0d, $1f, $0d, $1d, $37, $23, $22, $32
    db $80, $43, $26, $80, $7e, $80, $80, $36, $7e, $5e, $33, $27, $7e, $f2, $80, $37
    db $43, $2f, $80, $7e, $7d, $f2, $80, $37, $f2, $2f, $80, $3d, $3b, $3f, $7e, $3d
    db $22, $7d, $05, $3d, $3b, $3d, $7d, $50, $2c, $41, $3b, $7d, $03, $80, $2a, $7d
    db $2c, $c3, $01, $41, $07, $80, $2e, $2c, $7e, $2c, $3d, $7d, $7e, $23, $2f, $10
    db $80, $2f, $7d, $7d, $7e, $2f, $43, $27, $f3, $7e, $4d, $7e, $7e, $04, $59, $04
    db $5b, $22, $80, $00, $59, $41, $18, $13, $0a, $80, $7f, $80, $57, $45, $55, $26
    db $45, $26, $55, $80, $41, $18, $1a, $0a, $f2, $22, $36, $7f, $84, $43, $7f, $7f
    db $84, $80, $1d, $43, $80, $84, $06, $36, $22, $23, $1f, $1d, $23, $7e, $83, $00
    db $a6, $04, $04, $04, $80, $7d, $18, $e4, $50, $80, $62, $7d, $e0, $34, $01, $01
    db $15, $15, $02, $02, $01, $02, $09, $09, $02, $09, $09, $01, $05, $05, $06, $17
    db $09, $09, $0c, $0e, $0e, $30, $0f, $0f, $30, $f4, $80, $26, $80, $7e, $54, $80
    db $36, $2f, $35, $26, $80, $80, $54, $39, $25, $7e, $54, $28, $29, $34, $80, $26
    db $3f, $3b, $34, $83, $02, $2f, $19, $80, $80, $3f, $3f, $80, $3d, $7e, $2d, $7d
    db $42, $3f, $3d, $41, $7d, $2c, $3b, $80, $3b, $42, $7d, $2a, $3d, $7d, $7e, $2c
    db $80, $83, $01, $4f, $06, $7d, $2c, $3d, $41, $3e, $80, $26, $23, $80, $0a, $7d
    db $7d, $80, $7e, $54, $24, $39, $2f, $4e, $7e, $7e, $41, $02, $09, $0b, $80, $f1
    db $80, $02, $4a, $05, $4c, $05, $80, $7f, $80, $48, $22, $46, $e0, $21, $36, $48
    db $36, $f1, $02, $09, $01, $05, $54, $80, $f1, $7f, $83, $54, $7f, $7f, $83, $80
    db $0c, $80, $83, $7e, $83, $36, $83, $26, $83, $80, $80, $35, $1e, $0f, $7e, $35
    db $c3, $02, $3e, $04, $15, $15, $80, $7d, $09, $e4, $50, $80, $62, $7d, $16, $11
    db $05, $05, $11, $12, $12, $11, $19, $19, $12, $19, $19, $12, $15, $15, $11, $07
    db $16, $19, $19, $1c, $0e, $1e, $41, $20, $1f, $05, $39, $25, $80, $36, $80, $44
    db $86, $01, $24, $1c, $44, $35, $28, $3f, $24, $38, $39, $44, $80, $80, $2f, $2b
    db $24, $38, $39, $24, $36, $80, $2f, $80, $80, $2f, $7e, $2d, $7d, $3d, $2f, $52
    db $51, $c3, $00, $54, $04, $2b, $52, $2b, $3a, $7d, $c3, $00, $5e, $02, $80, $80
    db $3a, $41, $3c, $7d, $03, $51, $2d, $2e, $36, $24, $80, $0a, $7d, $4d, $7e, $80
    db $44, $28, $34, $3f, $7d, $4f, $4f, $41, $19, $12, $e0, $21, $80, $f0, $80, $12
    db $15, $5a, $15, $5c, $80, $7f, $80, $58, $46, $56, $26, $46, $26, $56, $f0, $19
    db $12, $15, $11, $24, $80, $f0, $7f, $85, $44, $7f, $7c, $85, $80, $1e, $43, $80
    db $85, $0f, $36, $80, $25, $1f, $1f, $25, $7e, $2f, $2f, $80, $80, $05, $7c, $80
    db $7d, $7c, $e4, $4f, $80, $23, $00, $2f, $01, $01, $04, $05, $ca, $04, $08, $01
    db $03, $03, $e4, $4d, $00, $23, $01, $00, $40, $86, $03, $fe, $01, $40, $10, $28
    db $00, $84, $04, $17, $0a, $03, $00, $10, $21, $00, $fe, $fd, $21, $00, $01, $01
    db $43, $21, $00, $01, $03, $00, $c7, $04, $6e, $04, $fe, $fd, $fe, $fe, $fd, $e4
    db $4f, $00, $ff

    ld [hl], e
    inc hl
    rst $38
    dec b
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    inc hl
    ld bc, $0001
    nop
    xor l
    nop
    nop
    db $e4
    pop hl
    nop
    dec c
    add b
    ret nz

    ccf
    cp a
    ld h, b
    ld b, b
    ld b, a
    ld a, b
    ld a, b
    ld b, a
    ld a, a
    ld b, b
    ld b, a
    ld a, b
    ld b, c
    ld h, b
    ld e, a
    inc bc
    ld b, a
    ld a, b
    ld a, a
    ld b, b
    jp Jump_000_0d01


    dec b
    ld b, b
    ld a, a
    ccf
    cp a
    add b
    ret nz

    adc c
    ld bc, $8310
    ld bc, $4112
    ld [hl], b
    ld c, a
    rst $00
    ld bc, $8519
    ld bc, $830a
    nop
    ld c, $09
    nop
    nop
    ld a, a
    add b
    inc bc
    db $fc
    nop
    rst $38
    db $fc
    inc bc
    ld b, c
    ccf
    ret nz

    ld b, $f0
    rrca
    ret nz

    ccf
    rrca
    ldh a, [rIE]
    add h
    nop
    ld c, $e0
    daa
    nop
    nop
    db $fc
    cp $f9
    db $fd
    ldh a, [c]
    ei
    push hl
    or $c8
    rst $28
    sub b
    rst $18
    ccf
    and b
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    cpl
    or b
    sub b
    rst $18
    ret z

    rst $28
    push hl
    or $f2
    ei
    ld sp, hl
    db $fd
    db $fc
    cp $03
    db $fc
    add b
    ld a, a
    ld hl, sp+$07
    sub e
    ld bc, $0646
    ld hl, sp+$07
    nop
    rst $38
    rlca
    ld hl, sp-$7d
    sbc h
    ld bc, $0581
    add a
    ld hl, sp-$40
    nop
    cp a
    ccf
    sub a
    ld bc, $0b04
    cp a
    ccf
    ret nz

    nop
    ld b, $ff
    ld [hl], l
    adc [hl]
    cp e
    rlca
    sbc c
    rlca
    ld b, c
    add [hl]
    inc bc
    ld [bc], a
    add l
    inc bc
    cp l
    add e
    ld bc, $0ceb
    inc bc
    cp [hl]
    inc bc
    jp nz, Jump_017_7d3f

    add e
    inc bc
    rst $38
    dec b
    cp $06
    rst $38
    and l
    ld bc, $0100
    cp $02
    ld b, c
    ld [bc], a
    cp $a3
    ld bc, $0514
    ld e, $e2
    ldh a, [c]
    ld c, $c2
    ld a, $a3
    ld bc, $a530
    ld bc, $011a
    ld a, $c2
    add a
    ld [bc], a
    ld [de], a
    inc bc
    ld a, [$0206]
    cp $41
    ld b, $fa
    dec b
    add d
    ld a, [hl]
    ld a, [$7e06]
    add d
    add l
    ld [bc], a
    ld [$3e01], sp
    jp nz, Jump_000_0185

    ld b, b
    ld bc, $ff00
    push bc
    ld bc, $419f
    ldh [$ff1f], a
    ld bc, $f807
    add l
    ld bc, $f498
    dec h
    ld bc, $c55a
    ld bc, $939f
    ld [bc], a
    ld b, [hl]
    add e
    ld [bc], a
    ld d, d
    ld [bc], a
    ldh a, [rIF]
    ld sp, hl
    sbc h
    ld [bc], a
    add c
    ld bc, $0ff1
    and e
    ld bc, $97c0
    ld [bc], a
    inc b
    and e
    ld bc, $c6dc
    ld [bc], a
    ld b, a
    nop
    rst $38
    add e
    ld [bc], a

jr_017_61b3:
    ld c, d
    ld bc, $0ff0
    ld b, c
    ld a, $c1
    ld [$07f8], sp
    jp Jump_000_1f3c


    ldh [$fff0], a
    rrca
    rst $38
    rst $00
    ld [bc], a
    ld b, a
    add h
    ld [bc], a
    db $e3
    dec b

jr_017_61cb:
    rrca
    ldh a, [$ffe1]
    ld e, $7c
    add e
    ld b, c
    ld a, $c1
    rlca
    ld a, h
    add e
    pop hl
    ld e, $0c
    di
    ld a, a
    add b
    add l
    ld [bc], a
    ld b, d
    add hl, bc
    rst $30
    rst $38
    call nz, $98f8
    ldh [$ffa3], a
    ret nz

    jr jr_017_61cb

    ld b, e
    ld b, b
    add b
    inc c
    ld h, a
    add b
    jr c, jr_017_61b3

    rlca
    ld hl, sp-$68
    rst $20
    add b
    rst $38
    rst $08
    rst $38
    ldh a, [$ffbf]
    inc bc
    rra
    ld [bc], a
    rst $38
    ld d, b
    add b
    ld b, c
    ret nc

    nop
    ld [bc], a
    and b
    nop
    jr nz, jr_017_6231

    nop
    ld b, d
    and b
    ret nz

    ld [bc], a
    sub b
    ret nz

    sub b
    add $03
    ld [hl], a
    inc b
    rst $38
    rst $38
    add b
    rst $38
    nop
    add e
    nop
    dec e
    ld bc, $8080
    ld [hl+], a
    rst $38
    ld bc, $f8e6
    ld b, c
    ld e, h
    ld h, e
    ld b, c
    ld e, b
    ld h, a
    inc bc
    ld a, b
    ld b, a
    ld [hl], b

jr_017_6231:
    ld c, a
    ld b, c
    ld [hl], c
    ld c, [hl]
    ld b, e
    ld h, e
    ld e, h
    ld b, c
    ld b, a
    ld a, b
    ld b, c
    ld b, [hl]
    ld a, c
    inc d
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$fdff]
    rst $38
    ei
    rst $38
    push af
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38

jr_017_6253:
    rst $10
    and h
    inc bc
    cp a
    and e
    inc bc

jr_017_6259:
    cp h
    ld b, $ae

jr_017_625c:
    rst $38
    ld e, l
    rst $38
    cp [hl]
    rst $38
    ld e, l
    and h
    inc bc
    rst $08

jr_017_6265:
    dec b
    cp e
    rst $38
    ld [hl], l
    rst $38
    cp e
    rst $38
    add e
    ld bc, $039c
    jr jr_017_6259

    jr nz, jr_017_6253

    ld b, c
    ld b, b
    cp a
    ld bc, $ff00
    ld b, c
    jr nz, jr_017_625c

    ld bc, $cf30
    ld b, c
    ld b, b
    cp a
    inc bc
    jr nz, jr_017_6265

    jr @-$17

    add e
    ld [bc], a
    add h
    cp a
    ld bc, $83e0
    ld bc, $0442
    add hl, sp
    nop
    add $00
    jr c, jr_017_62c0

    nop
    dec e
    ld c, $00
    pop af
    nop
    sbc [hl]
    ld h, c
    ld h, c
    sbc [hl]
    nop
    rst $38
    jp Jump_000_3cff


    rst $38
    nop
    nop
    rlca
    nop
    ld [$0f00], sp
    nop
    nop
    rlca
    ld b, $09
    nop
    rrca
    nop
    rlca
    xor a
    inc b
    ld b, b
    ld b, $24
    inc bc
    ld h, $01

jr_017_62c0:
    rra
    nop
    rlca
    jr z, jr_017_62c5

jr_017_62c5:
    ld b, c
    add hl, hl
    rlca
    ld b, c
    ld de, $420f
    add hl, hl
    rlca
    ld bc, $0f11
    or l
    inc bc
    add b
    ld bc, $e21e
    xor l
    inc bc
    sbc b
    ld b, c
    ldh [c], a
    ld e, $01
    ldh a, [c]
    ld c, $41
    ld [hl], d
    adc [hl]
    inc b
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    xor b
    inc bc
    or a
    nop
    xor a
    add h
    inc bc
    push bc
    nop
    rst $28
    and l
    inc b
    cp a
    rrca
    rst $38
    ld a, e
    rst $38
    push af
    rst $38
    ld a, e
    rst $38
    cp l
    rst $38
    ld a, d
    rst $38
    cp l
    rst $38
    sbc $ff
    xor l
    add e
    inc b
    rst $10
    db $f4
    jr nz, @+$05

    rst $18
    add hl, bc
    ldh a, [rIE]
    xor $f1
    jp hl


    or $98
    rst $20
    ld [hl], b
    adc a
    add l
    inc bc
    db $f4
    add l
    inc bc
    and $08
    ld [hl], b
    adc a
    sbc b
    rst $20
    jp hl


    or $ee
    pop af
    ldh a, [rNR52]
    rst $38
    nop
    db $fc
    ld b, c
    rst $38
    ldh a, [rSTAT]
    rst $38
    ldh [rP1], a
    rst $38
    ld b, c
    ldh a, [$ffef]
    inc bc
    ld hl, sp-$09
    db $fc
    di
    rst $00
    dec b
    daa
    inc c
    cp $ff
    db $e3
    rst $38
    db $fd
    rst $38
    ret


    rst $38
    sub l
    rst $28
    add a
    rst $38
    adc a
    and h
    dec b
    dec a
    inc b
    add a
    rst $38
    sbc a
    rst $38
    or e
    and l
    dec b
    ld b, a
    ld a, [hl+]
    rst $38
    and l
    dec b
    ld d, b
    ld [bc], a
    adc l
    rst $38
    add l
    and h
    dec b
    dec hl
    nop
    rra
    jr z, @+$01

    db $e4
    ld a, a
    nop
    and l
    dec b
    ld a, [hl+]
    nop
    ld bc, $ff47
    nop
    add $06
    rlca
    or c
    dec b
    ld e, $cc
    ld b, $2e
    or d
    dec b
    ld e, l
    ld bc, $f7a9
    xor l
    dec b
    ld [hl], d
    db $e4
    rst $08
    nop
    rst $38
    ld a, [hl]
    ld h, b
    rla
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    dec e
    nop
    nop
    inc d
    inc d
    nop
    ld [bc], a
    inc bc
    nop
    inc d
    inc d
    inc bc
    ld [$0308], sp
    ld [$7f08], sp
    ld d, $07
    ld a, [de]
    inc c
    inc c
    inc d
    inc c
    inc bc
    inc c
    inc d
    inc bc
    ld [$220a], sp
    ld [$0e03], sp
    ld e, $20
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    dec e
    ld h, $27
    ld [hl+], a
    ld [hl-], a
    daa
    ld h, $28
    add hl, hl
    dec hl
    dec l
    ld a, a
    inc l
    ld a, [hl]
    ld a, $7e
    ccf
    ld a, [hl]
    ld a, [hl]
    ld l, $3e
    ld b, b
    ld l, $7f
    ld d, b
    ld b, d
    ld d, b
    ld a, [hl]
    ccf
    ld a, [hl]
    ld l, $41
    ld b, c
    ld a, [hl]
    add e
    nop
    ld b, d
    add e
    nop
    ld b, d
    ld b, c
    ld b, c
    ccf
    ld b, c
    ld b, c
    ld l, $04
    ld a, a
    ld b, h
    ld b, [hl]
    ld d, h
    ld d, h
    inc hl
    ld a, a
    ld b, $45
    ld a, a
    ld b, e
    ld d, c
    add b
    add b
    add d
    db $e4
    sub c
    add b
    ld h, d
    ld a, l
    ldh [$ff2b], a
    db $10
    inc b
    inc b
    db $10
    db $10
    ld [de], a
    inc de
    inc b
    inc b
    db $10
    jr @+$1a

    inc de
    jr jr_017_6427

    inc de
    ld b, $7f
    add hl, bc
    rla
    inc e
    inc b
    inc e
    inc e
    inc de
    inc b
    inc e
    jr jr_017_6430

    jr jr_017_6439

    jr jr_017_6439

    ld e, $1e
    jr nc, jr_017_6457

    ld [hl-], a
    inc h

jr_017_6427:
    ld [hl-], a
    ld [hl], $37
    ld [hl-], a
    inc h
    ld h, e
    ld [hl], $15
    dec sp

jr_017_6430:
    dec a
    ld a, a
    inc a
    ld a, [hl]
    ld l, $7e
    cpl
    ld a, [hl]
    ld a, [hl]

jr_017_6439:
    ld a, $2e
    ld a, $50
    ld b, b
    ld a, a
    ld b, b
    ld d, d
    cpl
    ld a, [hl]
    ld a, $7e
    ld b, c
    ld a, [hl]
    ld d, c
    add e
    ld bc, $8441
    ld bc, $0141
    ld d, c
    cpl
    ld b, c
    ld d, c
    ld a, $10
    ld d, c
    ld b, [hl]

jr_017_6457:
    ld d, h
    ld b, h
    ld a, a
    ld d, h
    ld a, a
    ld b, a
    ld a, a
    ld d, l
    ld a, a
    ld b, h
    ld b, c
    ld d, e
    add b
    add b
    add h
    db $e4
    sub c
    add b
    ld h, d
    ld a, l
    ldh [$ff33], a
    ld bc, $1501
    dec d
    ld [bc], a
    inc bc
    ld bc, $0902
    add hl, bc
    ld [bc], a
    add hl, bc
    add hl, bc
    ld bc, $0505
    ld b, $18
    ld a, a
    rla
    dec c
    dec c
    dec d
    ld [bc], a
    dec c
    ld [bc], a
    add hl, bc
    dec c
    dec b
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    rrca
    rra
    ld hl, $3323
    inc sp
    dec [hl]
    dec [hl]
    daa
    daa
    dec [hl]
    inc hl
    inc sp
    ld a, a
    ld a, [hl+]
    inc l
    inc l
    dec hl
    dec l
    jp Jump_000_3b00


    dec b
    ld a, [hl]
    ld a, $2f
    ccf
    ld a, [hl]
    cpl
    ld b, c
    ld b, b
    ld a, [hl]
    rlca
    ld a, [hl]
    ld a, [hl]
    ld b, c
    cpl
    ld a, a
    ld d, c
    ld b, e
    ld d, c
    ld b, c
    ld b, b
    ld a, $02
    ld b, b
    cpl
    ld b, b
    add h
    ld [bc], a
    ld b, a
    add e
    ld [bc], a
    ld c, b
    inc b
    ld a, a
    ld b, l
    ld b, a
    ld d, l
    ld d, l
    daa
    ld a, a
    ld [bc], a
    pop af
    add b
    add e
    db $e4
    sub c
    add b
    ld h, d
    ld a, l
    ld [bc], a
    ld de, $0505
    ld h, d
    ld de, $1116
    add hl, de
    add hl, de
    ld [de], a
    add hl, de
    add hl, de
    ld [de], a
    dec d
    dec d
    ld de, $160a
    rlca
    ld a, a
    dec e
    dec b
    dec e
    ld [de], a
    dec e
    add hl, de
    ld [de], a
    dec d
    dec e
    ld [hl+], a
    add hl, de
    rlca
    dec de
    rra
    rra
    ld sp, $3333
    dec h
    inc [hl]
    ld b, c
    inc [hl]
    scf
    rlca
    inc sp
    dec h
    ld a, a
    ld a, [hl-]
    inc a
    inc a
    dec sp
    dec a
    jp Jump_000_3a01


    dec b
    ld l, $7e
    ccf
    cpl
    ccf
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld d, b
    rlca
    ld a, [hl]
    ld a, [hl]
    ccf
    ld d, c
    ld b, c
    ld a, a
    ld b, c
    ld d, e
    ld b, c
    ld l, $50
    ld b, c
    ccf
    ld d, b
    add e
    inc bc
    ld b, a
    add e
    inc bc
    ld b, a
    ld b, $47
    ld d, l
    ld b, l
    ld a, a
    ld d, l
    ld b, [hl]
    ld a, a
    add h
    nop
    ld h, d
    inc bc
    ld a, a
    ldh a, [$ff80]
    add l
    db $e4
    sub b
    add b
    inc hl
    nop
    cpl
    ld bc, $0463
    cpl
    ld bc, $0323
    ld bc, $0000
    add e
    inc b
    ld h, $01
    ld [bc], a
    ld bc, $37e4
    nop
    ld bc, $2110
    db $e4
    sub b
    nop
    rst $38

    db $62, $01

    rst $38
    rst $38

    db $23

    nop

    db $07

    rlca
    nop
    ccf
    nop
    ld hl, sp+$07
    ret nz

    ccf

    db $41

    nop
    rst $38

    db $41

    inc c
    di

    db $44

    nop
    rst $38

    db $41

    nop
    db $fe

    db $41

    nop
    db $fc

    db $0e

    nop

jr_017_657c:
    ld hl, sp+$00
    ldh [$ffb4], a
    nop
    ret nz

    nop
    rst $38
    nop
    ld bc, $f0fe
    rst $38
    db $fc

    db $41

    rst $38
    db $fe

    db $3a

    rst $38

    db $c6, $00, $3a, $02

    rst $38
    db $01
    db $fe

    db $86, $00, $20, $1b

    INCBIN "gfx/image_017_659a.2bpp"

    jp $c334


    ld d, b
    and a
    ld l, b
    add a
    jr z, @-$37

    jr c, jr_017_657c

    ld e, b

    db $87, $00, $7b, $8c, $00, $7b, $16

    INCBIN "gfx/image_017_65bd.2bpp"

    ld de, $11e2
    ldh [rNR10], a
    pop hl
    db $10

    db $41

    ldh [rNR12], a

    db $0e

    ldh [rNR22], a
    ldh [$ff15], a
    ldh [c], a
    dec h
    jp nz, $c324

    ld c, b
    add a
    adc h
    inc bc
    nop
    nop

    db $41

    nop
    db $01

    db $0d

    nop
    ld b, e
    nop
    rst $10
    nop
    rst $38
    ld bc, $11fe
    xor $3a
    call nz, $847a

    db $41

    db $f4
    db $08

    db $13

    INCBIN "gfx/image_017_65fd.2bpp"

    db $10
    inc b
    jr @+$06

    db $41

    db $10
    inc c

    db $0f

    INCBIN "gfx/image_017_6615.2bpp"

    db $b1, $00, $00, $01

    nop
    rst $38

    db $8b, $00, $0e, $f4, $3f, $00, $60, $f4, $40, $00, $20, $06

    nop
    nop
    add d
    nop
    add [hl]
    nop
    db $ce

    db $c3, $00, $22, $07

    add b
    ld a, a
    add c
    ld a, [hl]
    ld d, e
    inc l
    ld d, a
    db $28

    db $41

    cpl
    db $10

    db $02

    add [hl]
    db $08
    adc b

    db $a4, $00, $db, $f4, $20, $00, $a0, $0e

    inc l
    ld [$2424], sp
    jr @+$1a

    jr nz, @+$12

    ld [$0800], sp
    db $10
    ld [$1000], sp

    db $47

    rst $38
    nop

    db $2d

    nop

    db $0b

    inc de
    nop
    ld a, $00
    db $e4
    dec de
    ld e, b
    inc h
    ld [$20e0], sp
    db $08

    db $42

    jr nz, jr_017_6695

    db $29

    nop

    db $03

    ret c

    nop
    ld a, h
    add b

    db $a3, $02, $12, $03

    inc e
    inc bc
    inc d
    nop

    db $87, $00, $e8, $00

    db $10

    db $c6, $01, $18, $41

jr_017_6695:
    ld a, a
    add b

    db $06

    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp-$01

    db $8c, $01, $1c, $02

    rlca
    nop
    nop

    db $8f, $02, $50, $0a

    ld [de], a
    ld [bc], a
    jr jr_017_66ca

    ld [bc], a
    ld [bc], a
    inc c
    add hl, bc

jr_017_66b2:
    ld b, $00
    inc b

    db $26

    nop

    db $17

    INCBIN "gfx/image_017_66b8.2bpp"

    add e
    db $ed

jr_017_66ca:
    ld [bc], a
    rst $08
    nop
    adc l
    nop
    add hl, bc

    db $24

    nop

    db $02

    cp a
    ld a, [hl]
    pop bc

    db $41

    ld b, c
    rst $38

    db $0b

    ld b, c
    db $dd
    ld a, a
    cp $36
    db $f4
    inc e
    add sp, $1c
    rra
    rst $38
    ld b, c

    db $41

    pop bc
    ld a, a

    db $12

    INCBIN "gfx/image_017_66ea.2bpp"

    add l
    ld e, d
    dec b

    db $47

    ld e, [hl]
    db $01

    db $05

    ld d, [hl]
    add hl, bc
    ld h, [hl]
    add hl, de
    ld b, b
    ccf

    db $41

    ld e, d
    dec b

    db $03

    ld [hl], b
    ld c, $20
    ld e, h

    db $41

    nop
    ld [hl], b

    db $c4, $02, $03, $98, $01, $f0, $00

    inc de

    db $aa, $02, $2b, $02

    jr nz, @+$0a

    db $30

    db $90, $02, $19, $86, $02, $26, $a4, $02, $11, $01

    inc d
    inc bc

    db $83, $00, $e8, $83, $02, $3c, $f4, $2f, $02, $40, $0d

    jr nz, @+$06

    ld h, b
    inc c
    ld b, h
    jr nc, @+$16

    ld h, b
    ld d, b
    and b
    nop
    jr nc, jr_017_6745

jr_017_6745:
    db $20

    db $8b, $02, $7e, $12

    INCBIN "gfx/image_017_674a.2bpp"

    inc c
    nop
    db $08

    db $22

    nop

    db $01

    ld a, [hl]
    ccf

    db $87, $00, $f2, $06

    cp $37
    halt
    dec e
    jr z, @+$21

    ld a, a

    db $88, $03, $a1, $05

    cp a
    ld [hl], $17
    inc e
    dec bc
    inc e

    db $83, $00, $04, $02

    jr jr_017_677d

jr_017_677d:
    db $20

    db $41

    nop
    ld b, b

    db $a4, $00, $c2, $41

    ret nz

    nop

    db $02

    ld h, b
    nop
    ld a, b

    db $85, $02, $59, $32

    nop

    db $00

    rst $38

    db $38

    nop

    db $85, $01, $fa, $bc, $03, $c0, $e5, $f2

    nop

    db $ff, $5c, $65, $17, $ff, $12, $00, $01, $2b, $39, $10, $2c, $03, $07, $23, $21
    db $05, $1b, $39, $1d, $05, $09, $80, $2d, $2d, $24, $10, $08, $80, $38, $20, $20
    db $28, $3e, $43, $80, $38, $22, $25, $23, $37, $04, $20, $25, $02, $10, $02, $e4
    db $d1, $80, $0f, $00, $11, $3b, $29, $10, $3c, $13, $17, $33, $31, $0b, $29, $0d
    db $19, $15, $19, $87, $00, $10, $08, $28, $80, $20, $20, $38, $41, $80, $27, $27
    db $22, $35, $04, $38, $27, $27, $80, $35, $41, $20, $12, $e4, $d1, $80, $e0, $2b
    db $00, $02, $04, $3a, $80, $08, $04, $08, $24, $22, $06, $1c, $3a, $1e, $06, $0a
    db $0f, $2f, $2e, $3e, $80, $3d, $42, $28, $0f, $0f, $35, $20, $80, $0f, $0f, $42
    db $0f, $27, $27, $30, $0f, $28, $80, $3d, $35, $27, $12, $20, $f0, $d3, $00, $2c
    db $19, $12, $14, $2a, $80, $18, $14, $18, $34, $32, $0c, $2a, $0e, $1a, $16, $1a
    db $0f, $2e, $2f, $41, $1f, $40, $80, $38, $0f, $0f, $25, $83, $02, $19, $0b, $1f
    db $0f, $30, $37, $37, $0f, $38, $28, $40, $37, $25, $10, $f0, $d4, $01, $2a, $04
    db $01, $02, $00, $02, $02, $2c, $00, $22, $02, $01, $02, $02, $31, $00, $01, $fd
    db $fe, $e4, $d2, $00, $ff

    ld [hl], e
    ld a, [bc]
    ld hl, sp+$00
    ldh a, [rP1]
    db $e3
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    ld [hl+], a
    cp $01
    rst $38
    rst $38
    xor a
    nop
    nop
    dec b
    rlca
    ld hl, sp+$0f
    ldh a, [$fffc]
    db $e3
    add h
    nop
    rlca
    ld bc, $ffff
    xor a
    nop
    dec e
    dec bc
    ld a, a
    rst $38
    rst $38
    cp l
    nop
    add c
    nop
    ld sp, hl
    ldh [$fffd], a
    ld hl, sp-$03
    add e
    nop
    jr z, jr_017_68a8

jr_017_68a8:
    cp $22
    rst $38
    ld bc, $c300
    xor a
    nop
    ld b, e
    ld a, [bc]
    nop
    sbc b
    rlca
    and l
    jr @-$61

    jr nz, @-$65

    ld b, b
    add c
    ld b, b
    ld b, c
    dec a
    add b
    ld [bc], a
    ld bc, $1980
    ld b, c
    add b
    dec a
    ld b, $80
    add hl, de
    add b
    ld b, e
    add b
    ld a, a
    add b
    call Call_017_7e00
    nop
    nop
    add e
    nop
    ccf
    xor b
    nop
    ld h, e
    ld bc, $02c1
    xor a
    nop
    ld a, [hl]
    xor a
    nop
    ld l, [hl]
    dec b
    nop
    rst $38
    nop
    nop
    ld a, [hl]

jr_017_68e9:
    ld a, [hl]
    daa
    ld b, d
    jp $c300


    add a
    nop
    ret nz

    rst $00
    nop
    rst $10
    sbc a
    nop
    ret nz

    ld b, d
    and l
    jp $c309


    add c
    db $db
    ld h, [hl]
    ld e, e
    ld h, [hl]
    jp c, $e666

    ld b, d
    ld b, c
    ccf
    inc h
    ld b, $fc
    inc h
    rst $20
    inc a
    rst $38
    jr jr_017_68e9

    ld b, c
    jr jr_017_6933

    dec c
    jr @+$01

    ccf
    add $47
    cp [hl]
    add a
    cp a
    add e
    cp a
    add b
    rst $38
    ldh [rIE], a
    ld b, d
    ldh a, [$ff9f]
    db $10
    ldh a, [rIE]
    ldh [$ffbf], a
    add b
    cp a
    add e
    cp [hl]
    add a
    ld b, [hl]
    ld a, a
    ccf

jr_017_6933:
    ccf
    rst $38
    rst $38
    add $c7
    sub a
    ld bc, $0024
    add $22
    rst $38
    ld [bc], a
    ccf
    rst $38
    ld b, [hl]
    sbc c
    ld bc, $1a43
    ld a, a
    rst $38
    ccf
    ld hl, sp-$40
    or b
    and b
    sub e
    sub b
    xor a
    adc b
    or a
    add h
    ei
    ldh [c], a
    db $fd
    pop af
    sbc [hl]
    ldh a, [rIE]
    ld a, a
    sub b
    add b
    sbc a
    ldh a, [rIE]
    rst $38
    add e
    ld bc, $0f36
    ld b, a
    db $fc
    ccf
    ld hl, sp-$39
    ld hl, sp-$51
    or b
    sbc h
    sub e
    xor b
    adc a
    or h
    add a
    ld a, [$83e3]
    ld bc, $838c
    nop
    nop
    inc bc
    inc bc
    nop
    rst $38
    nop
    add $01
    or [hl]
    nop
    nop
    xor a
    ld bc, $0fb0
    sbc [hl]
    pop af
    sbc l
    di
    ei
    and $b4
    adc a
    xor b
    sbc a
    sbc [hl]
    or b
    or e
    db $ec
    rst $20
    ret c

    add h
    nop
    jr nz, jr_017_69a0

    inc bc
    nop

jr_017_69a0:
    rst $38
    add [hl]
    ld bc, $8ab8
    ld bc, $05cf
    sbc a
    or b
    or b
    rst $28
    ldh [$ffdf], a
    db $f4
    ld hl, $0001
    rlca
    inc hl
    ldh [c], a
    dec a
    db $e3
    db $fd
    jp Jump_000_03fd


    xor h
    ld bc, $052a
    inc bc
    db $fd
    jp $e33d


    ld [hl+], a
    and h
    ld bc, $013d
    inc hl
    db $e3
    sub a
    ld [bc], a
    inc h
    nop
    inc hl
    and h
    ld bc, $005d
    ld [hl+], a
    sbc c
    ld [bc], a
    ld b, e
    ld [bc], a
    cp $ff
    db $fc
    adc l
    ld bc, $11c0

jr_017_69e0:
    sbc a
    add b
    ld a, b
    ld b, b
    or b
    jr nz, @-$2b

    db $10
    rst $28
    ld [$c4f7], sp
    dec sp
    ldh [c], a
    ld hl, $fffd
    rst $38
    and a
    ld bc, $13e0
    nop
    rst $38
    ccf
    ret nz

    ldh a, [rIF]
    ldh [$ff9f], a
    ld b, a
    ld a, b
    xor a
    jr nc, @-$22

    inc de
    add sp, $0f
    db $f4
    rst $00
    ld a, [hl-]
    db $e3
    add e
    ld [bc], a
    sbc h
    rla
    rst $38
    rst $38
    ld hl, $3bff
    and $f4
    rst $08
    add sp, $1f
    sbc $30
    or e
    ld l, h
    ld h, a
    ret c

    adc b
    ldh a, [rNR10]
    ldh [$ffc3], a
    nop
    ld a, a
    add b
    add a
    ld bc, $89b8
    ld [bc], a
    ret nz

    ld b, $df
    jr nc, jr_017_69e0

    ld l, a
    ld h, b
    rst $18
    add a
    xor l
    ld [bc], a
    and c
    nop
    ld hl, sp+$27
    jr jr_017_6a3d

    inc h

jr_017_6a3d:
    inc a
    ld b, d
    inc a
    inc h
    ld bc, $4266
    ld b, d
    ld e, d
    ld h, [hl]
    ld bc, $81c3
    ld b, d
    and l
    jp $f805


    ldh a, [$ff1f]
    rst $28
    pop hl
    ld c, $41
    ld c, $00
    ld b, $e1
    ld c, $1f
    rst $28
    ld hl, sp-$10
    rst $38
    adc h
    inc bc
    ld hl, $ff00
    add h
    ld bc, $01af
    rrca
    rrca
    ld b, c
    rst $30
    ld hl, sp+$01
    rrca
    rrca
    add a
    ld bc, $00bc
    rst $08
    add h

jr_017_6a76:
    inc bc
    ld b, l
    ld bc, $0fcf
    and e
    ld [bc], a
    call c, Call_000_0188
    jr nz, jr_017_6a85

    add e
    rst $38
    db $e3

jr_017_6a85:
    rst $38
    ld b, d
    rst $38
    sbc a
    inc b
    rst $38
    rst $38
    db $e3
    cp a
    add e
    add [hl]
    ld bc, $ba38
    ld [bc], a
    ld a, a
    ld [bc], a
    sbc $47
    add [hl]
    cp h
    ld [bc], a
    sbc l
    ld [bc], a
    ld e, [hl]
    rst $00
    add [hl]
    and h
    ld [bc], a
    cp l
    ld [bc], a
    add [hl]
    rst $38
    sbc $bc
    ld [bc], a
    push bc
    ld [bc], a
    add [hl]
    rst $38
    sbc $f4
    jr nz, jr_017_6ab3

    push hl
    nop

jr_017_6ab3:
    jr c, @-$46

    inc bc
    rlca
    cp a
    inc bc
    ld b, b
    nop
    rrca
    xor h
    inc bc
    ld hl, $0f00
    or b
    inc bc
    cpl
    adc b
    ld [bc], a
    jr nz, jr_017_6ac8

jr_017_6ac8:
    jp $03ac


    ld l, d
    nop
    jp Jump_000_0287


    jr c, jr_017_6a76

    ld bc, $0480
    dec bc
    push af
    inc de
    db $ed
    inc hl
    cp d
    ld bc, $048a
    rl l
    di
    dec l
    db $e3
    and l
    ld bc, $8eaa
    inc bc
    and b
    nop
    ld hl, sp-$51
    inc b
    or b
    and [hl]
    ld bc, $04d0
    di
    dec d
    ei
    ld a, c
    rrca
    cp d
    ld bc, $04dc
    di
    dec d
    ei
    ld sp, hl
    rrca
    and e
    ld bc, $8bfc
    ld bc, $0990
    ld b, h
    rst $38
    jr c, @+$01

    ld b, d
    cp l
    ld a, [hl]
    add c
    ld h, [hl]
    sbc c
    ld b, c
    cp l
    nop
    nop
    sbc c
    jp $5300


    ldh [rNR51], a
    nop
    inc b
    rst $38
    dec a
    add $67
    sbc a
    cp a
    rlca
    cp a
    inc bc
    sbc c
    ld bc, $0181
    cp l
    inc bc
    cp a
    inc bc
    add e
    ld [bc], a
    sbc e
    ld [bc], a
    cp a
    inc bc
    cp l
    inc bc
    sbc c
    ld bc, $01c3
    db $fd
    inc bc
    rst $38
    inc bc
    jp nz, $9a02

    add [hl]
    dec b
    dec [hl]
    ld [bc], a
    add c
    ld bc, $86bf
    dec b
    cpl
    adc c
    dec b
    ld d, $05
    cp l
    nop
    add c
    nop
    sbc c

jr_017_6b54:
    nop
    adc c
    dec b
    ld d, $8b
    inc b
    sub b
    add hl, bc
    ld h, d
    cp a
    ld e, [hl]
    cp l
    nop
    rst $38
    inc a
    jp $9966


    ret


    dec b
    ld l, b
    inc bc
    ld [hl+], a
    db $fd
    cp [hl]
    ld h, c
    and h
    dec b
    inc h
    xor b
    dec b
    add hl, sp
    nop
    jp $05a8


    inc sp
    and l
    dec b

jr_017_6b7b:
    inc l
    nop
    ld b, c
    xor b
    dec b
    ld b, e
    ld [bc], a
    jp $ff80


    add e
    dec b
    sbc a
    ld [bc], a
    ld b, b
    reti


    ld b, b

jr_017_6b8c:
    jp nc, $6805

    add [hl]
    dec b
    adc c
    add e
    inc b
    cpl
    nop
    db $e3
    adc c
    ld bc, $afb5
    dec b
    rst $18
    nop
    nop
    add $02
    ld e, $02
    jr jr_017_6b8c

    inc a
    call nz, $1402
    ld [bc], a
    inc h
    ld h, a
    ld b, d
    call nz, Call_000_0c02
    adc b
    inc b
    rla
    cp a
    ld b, $00
    nop
    cp l
    ld b, c
    jr jr_017_6b54

    dec b
    jr jr_017_6b7b

    jr @-$59

    inc a
    cp l
    ld b, c
    inc h
    rst $38
    dec b
    inc h
    rst $20
    ld b, d
    db $db
    ld h, [hl]
    db $db
    adc d
    ld b, $15
    ld [bc], a
    rst $38
    jr @-$23

    adc b
    ld b, $43
    ld [bc], a
    cp l
    inc h
    cp l
    sub b
    ld b, $4f
    inc bc
    db $fc
    inc a
    jp nz, Jump_017_4342

    cp l
    add e
    ld b, $c2
    ld a, [hl]
    db $fc
    inc a
    ccf
    inc a
    ld b, e
    adc b
    ld b, $83
    and e
    ld b, $8c
    nop
    ld [$028e], sp
    pop de
    xor [hl]
    ld b, $a0
    nop
    nop
    ldh a, [$ff3f]
    nop
    ret nz

    ldh a, [$ff2f]
    nop
    ret nz

    rst $38
    ld [hl], d
    ld l, b
    rla
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    inc de
    dec bc
    ld b, [hl]
    ld c, $41
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld b, $26
    ld h, $02
    ld b, $20
    nop
    nop
    inc h
    inc b
    inc b
    jr nz, jr_017_6c47

    add a
    nop
    db $10
    add l
    nop
    ld [$5001], sp
    ld d, h
    dec h
    ld h, a
    ldh [rOBP1], a
    add hl, bc
    ld b, b
    ld b, c
    ld c, c
    ld b, [hl]
    ld c, e
    dec sp
    ld c, $43
    ld b, l
    ld a, a
    ld a, a
    dec bc
    dec sp
    ld b, [hl]
    ld a, a
    ld a, h
    add b
    rst $30
    ld a, a
    ld b, c
    ld b, c
    ld b, [hl]

jr_017_6c47:
    add hl, bc
    dec bc
    dec bc
    inc b
    add b
    add hl, bc
    add b
    ld [$0428], sp
    inc l
    add d
    dec bc
    add d
    ld c, $80
    add b
    dec e
    dec bc
    ld b, c
    ld b, [hl]
    ld d, h
    inc b
    ld l, a
    ld l, a
    ld a, a
    ld a, a
    add d
    ld b, [hl]
    ld h, $58
    ld d, b
    ld h, $58
    dec bc
    ld b, [hl]
    ld b, [hl]
    inc b
    inc b
    dec bc
    inc b
    ld c, $04
    inc h
    ld [hl+], a
    dec bc
    ld a, h
    ld b, [hl]
    add hl, bc
    add b
    add b
    ld [hl+], a
    inc b
    ld [bc], a
    nop
    ld e, d
    dec bc
    add h
    nop
    halt
    ld [hl+], a
    add b
    add h
    nop
    ld a, [hl]
    db $e4
    ld [hl], h
    add b
    ld h, d
    ld a, l
    inc de
    inc c
    ld c, l
    ld a, $48
    ld [hl-], a
    ld [hl-], a
    ld [de], a
    ld [hl], $36
    ld d, $12
    ld d, $10
    db $10
    jr nc, jr_017_6cb2

    inc d
    inc [hl]
    jr nc, jr_017_6cd6

    add a
    ld bc, $850f
    ld bc, $0107
    ld d, d
    ld d, [hl]
    dec h
    ld h, a
    ldh [$ff2d], a
    add hl, sp
    ld b, a
    ld b, d

jr_017_6cb2:
    ld c, b
    ld b, h
    ld c, l
    inc a
    ld a, $4a
    ld c, h
    ld a, a
    ld a, a
    inc c
    inc a
    ld c, l
    ld a, a
    ld a, a
    add b
    ld a, [$487f]
    ld c, b
    ld c, l
    add hl, sp
    inc c
    inc c
    inc d
    add b
    add hl, sp
    add b
    jr @+$3a

    inc e
    inc d
    add h
    inc c
    add h
    ld a, $80

jr_017_6cd6:
    add b
    inc c
    dec l
    ld c, b
    ld c, l
    ld d, [hl]
    inc d
    ld b, c
    ld l, a
    ld a, a
    rla
    add h
    ld c, l
    ld [hl], $59
    ld d, d
    ld [hl], $59
    inc c
    ld c, l
    ld c, l
    inc d
    inc d
    inc c
    inc d
    ld a, $14
    inc [hl]
    ld [hl-], a
    inc c
    inc c
    ld c, l
    add hl, sp
    add b
    add b
    ld [hl+], a
    inc d
    ld [bc], a
    db $10
    inc c
    ld e, e
    add h
    ld bc, $2275
    add b
    add h
    ld bc, $e47d
    ld [hl], h
    add b
    add h
    ld bc, $0900
    inc c
    ld c, l
    ld hl, $0101
    dec h
    dec b
    dec b
    ld hl, $8725
    ld [bc], a
    ld b, $07
    inc bc
    inc hl
    inc hl
    rlca
    daa
    daa
    inc bc
    rlca
    add l
    ld [bc], a
    ld d, $01
    ld d, c
    ld d, l
    dec h
    ld l, b
    ldh [rNR42], a
    ld a, $48
    ld c, l
    ld c, d
    ld c, l
    ld c, h
    inc a
    pop af
    ld b, h
    ld c, l
    ld a, a
    ld a, a
    pop af
    di
    push af
    ld a, a
    ld a, a
    add b
    ld hl, sp+$7f
    or $f5
    ld c, l
    ld a, $0c
    inc c
    dec b
    add b
    ld c, b
    add b
    dec b
    add hl, hl
    dec c
    dec l
    ld b, c
    add e
    inc c
    ld d, $80
    add b
    inc c
    inc c
    ld c, l
    ld c, l
    ld d, l
    dec b
    ld a, a
    ld l, a
    ld a, a
    ld a, a
    add e
    ld c, l
    daa
    ld d, c
    ld d, c
    daa
    ld e, c
    inc c
    or $f5
    dec b
    ld b, c
    dec b
    inc c
    ld [$2505], sp
    inc hl
    inc c
    inc c
    ld c, l
    ld c, b
    add b
    add b
    ld [hl+], a
    dec b
    ld [bc], a
    ld bc, $0c0c
    add h
    ld [bc], a
    ld [hl], h
    ld [hl+], a
    add b
    add h
    ld [bc], a
    ld a, h
    db $e4
    ld [hl], h
    add b
    add h
    nop
    ld bc, $0b09
    ld b, [hl]
    ld de, $3111
    dec d
    dec d
    dec [hl]
    ld sp, $8735
    inc bc
    dec b
    rlca
    inc sp
    inc sp
    inc de
    scf
    scf
    rla
    inc de
    rla
    add l
    inc bc
    dec d
    ld bc, $5753
    dec h
    ld l, b
    ldh [rNR42], a
    ld c, $41
    ld b, e
    ld b, [hl]
    ld b, l
    ld b, [hl]
    dec sp
    ldh a, [rWX]
    ld b, [hl]
    ld a, a
    ld a, a
    ldh a, [$fff2]
    db $f4
    ld a, h
    ld a, a
    add b
    ei
    ld a, a
    ld sp, hl
    db $f4
    ld b, [hl]
    ld c, $0b
    dec bc
    dec d
    add b
    ld b, c
    add b
    add hl, de
    dec d
    dec e
    dec a
    ld b, c
    add l
    dec bc
    rlca
    add b
    add b
    dec bc
    dec bc
    ld b, [hl]
    ld b, [hl]
    ld d, a
    dec d
    jp Jump_017_5d02


    ld a, [bc]
    add l
    ld b, [hl]
    scf
    ld d, e
    ld d, e
    scf
    ld e, b
    dec bc
    ld sp, hl
    db $f4
    dec d
    ld b, c
    dec d
    dec bc
    ld [$3515], sp
    inc sp
    dec bc
    ld a, h
    ld b, [hl]
    ld b, c
    add b
    add b
    ld [hl+], a
    dec d
    ld [bc], a
    ld de, $0b0b
    add h
    inc bc
    ld [hl], e
    ld [hl+], a
    add b
    add h
    inc bc
    ld a, e
    db $e4
    ld [hl], e
    add b
    daa
    nop
    dec a
    ld bc, $0801
    ld [$0025], sp
    nop
    ld [bc], a
    call nz, $2a04
    nop
    add b
    ld [hl+], a
    nop
    ld a, [de]
    db $10
    sub b
    nop
    add b
    nop
    db $fd
    cp $00
    ld b, b
    db $10
    ld b, b
    nop
    ld b, b
    ld [bc], a
    ld b, b
    db $10
    ld bc, $8281
    nop
    dec b
    inc b
    rlca
    ld b, $21
    nop
    ld hl, $0387
    rst $38
    add h
    inc b
    nop
    ld a, [bc]
    ld hl, $3100
    ld bc, $3108
    ld bc, $4000
    nop
    ld [bc], a
    add h
    inc b
    ld c, h
    dec b
    ld [$4008], sp
    db $10
    ld b, b
    ld [bc], a
    add h
    inc b
    ld [bc], a
    nop
    ld [$04cb], sp
    ld e, d
    ld [bc], a
    ld bc, $0101
    db $e4
    ld [hl], e
    nop
    rst $38
    ld [hl], e
    inc hl
    nop
    dec b
    ldh [$ffe0], a
    ld hl, sp-$08
    db $fc
    db $fc
    inc hl
    cp $01
    rst $38
    rst $38
    xor a
    nop
    nop
    ld b, c
    rst $38
    nop
    ld [$e0ff], sp
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    xor a
    nop
    dec e
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    ld b, c
    ldh a, [rP1]
    ld [bc], a
    ldh a, [$ffe0]
    ld hl, sp-$51
    nop
    scf
    adc b
    nop
    scf
    ld b, c
    rrca
    ldh a, [$ff03]
    rst $28
    ldh a, [rIE]
    ld hl, sp-$7b
    nop
    add hl, hl
    xor a
    nop
    ld e, [hl]
    add e
    nop
    ld c, $01
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp $8300


    add a
    nop
    add b
    rst $00
    nop
    sub a
    add a
    nop
    add b
    rst $00
    nop
    and a
    add a
    nop
    add b
    rst $00
    nop
    or a
    ldh a, [$ff3f]
    nop
    add b
    inc b
    ccf
    ccf
    ld b, b
    ld b, b
    add e
    ld b, d
    add b
    sbc a
    ld b, c
    add b
    cp a
    nop
    add b
    call nz, $0e01
    adc d
    ld bc, $4505
    rst $38
    nop
    inc de
    ld a, a
    add b
    ccf
    ret nz

    sub a
    add sp, $43
    ld a, h
    ld hl, $103e
    rra
    add hl, bc
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $8301
    nop
    ld c, $00
    jp Jump_000_018a


    ld hl, $c001
    cp a
    add e
    ld bc, $4112
    ldh [$ff9f], a
    sub l
    ld bc, $410a
    db $fd
    inc bc
    ld b, e
    ld sp, hl
    rlca
    ld b, c
    db $fd
    inc bc
    ld a, [bc]
    rrca
    rrca
    jr nc, jr_017_6f42

    ld b, b
    ld b, b
    ld b, e
    ld b, b
    adc a
    add b
    adc a
    adc b
    ld bc, $4113
    adc a
    add b
    rlca
    ld b, e
    ld e, h
    ld b, b
    ld a, a
    jr nc, @+$41

    rrca
    rrca
    and h
    ld bc, $0280
    ld b, $c2
    ld c, $41
    pop af
    rrca
    ld b, e
    ld sp, hl
    rlca
    ld b, c
    pop af
    rrca
    ld bc, $3ec2
    and l
    ld bc, $039a

jr_017_6f3f:
    nop
    rrca
    nop

jr_017_6f42:
    jr nc, jr_017_6f85

    nop
    ld b, b
    ld b, a
    nop
    add b
    inc b
    inc e
    ld b, b
    ccf
    ld b, b
    rrca
    call nz, $c301
    ld [$0c00], sp
    inc b
    ld [bc], a
    inc c
    ld [bc], a
    ld c, $01
    ld c, $43
    ld bc, $4106
    ld bc, $010e
    ld bc, $a63c
    ld bc, $a4d9
    ld bc, $8a00
    ld bc, $8f75
    ld bc, $f470
    jr nz, @+$03

    jr nz, jr_017_6f3f

    ld bc, $004d
    inc a
    jp $2100


    ld bc, $ff03
    add e
    ld bc, $4172
    rlca

jr_017_6f85:
    rst $38
    add l
    ld bc, $287a
    nop
    dec bc
    inc bc
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    ldh [$ff1f], a
    db $fc
    inc bc
    cp $a4
    ld bc, $051f
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    cp a
    ld [bc], a
    ld h, b
    add hl, hl
    nop
    jp $9c02


    ld bc, $003f
    call nz, $ae02
    jr nc, jr_017_6fb2

jr_017_6fb2:
    nop
    rrca
    ld b, e
    nop
    rst $38
    nop
    nop
    ret z

    ld [bc], a
    adc $bf
    ld [bc], a
    cp c
    dec h
    nop
    db $f4
    jr nz, jr_017_6fc6

    sbc a
    rlca

jr_017_6fc6:
    ld bc, $0f00
    nop
    ccf
    nop

jr_017_6fcc:
    ld a, a
    nop
    add $03
    ld h, $af
    inc bc
    rra
    rrca
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    add hl, bc
    ld [$1010], sp
    ld hl, $4320
    ld b, b
    sub a
    rlc c
    rrca
    inc b
    cp h
    ld b, b
    ld a, a
    ccf
    ccf
    or b
    inc bc
    ld b, b
    adc b
    ld bc, $0171
    pop bc
    ccf
    and e
    inc bc
    ld e, h
    ldh [rSCY], a
    rrca
    pop af
    ld c, $f2
    inc c
    db $f4
    add hl, bc
    ld hl, sp-$10
    db $10
    pop hl
    jr nz, jr_017_6fcc

    ld b, b
    sub a
    add b
    pop af
    rrca
    ldh a, [c]
    ld c, $f4
    inc c
    ld sp, hl
    ld [$f010], sp
    ld hl, $43e0
    ret nz

    sub a
    add b
    sub a
    add sp, -$3d
    ld a, h
    pop hl
    ld a, $f0
    rra
    add hl, bc
    cp $0c
    rst $30
    ld c, $f3
    rrca
    pop af
    sub a
    add sp, $43
    db $fc
    ld hl, $10fe
    rst $38
    ld sp, hl
    ld c, $f4
    rrca
    ldh a, [c]
    rrca
    pop af
    rrca
    ccf
    nop
    ld a, a
    ld c, e
    nop
    rst $38
    add h
    inc bc
    daa
    ld [bc], a
    db $fc
    inc bc
    cp $ac
    ld bc, $af1f
    inc bc
    ret nz

    ld b, $f1
    ld bc, $02f2
    db $f4
    inc b
    ld sp, hl
    adc b
    inc bc
    ld b, a
    nop
    rrca

jr_017_705c:
    jp $e901


    ld [bc], a
    inc b
    add hl, bc
    ld [$0387], sp
    adc b
    cp a
    inc b
    nop
    add a
    ld [bc], a
    jr nc, jr_017_7074

    sbc a
    ld [hl], b
    cpl
    ldh [rVBK], a
    ret nz

    adc a

jr_017_7074:
    add b
    xor b
    inc bc
    and b
    dec b
    ld [hl], b
    jr nc, jr_017_705c

    ld [hl], b
    ret nz

    ldh a, [$ffbf]
    inc b
    ccf
    nop
    ld bc, $3ff4
    inc bc
    add b
    ld b, d
    rrca
    nop
    nop
    rrca
    ld b, a
    nop
    ldh a, [$ffa8]
    inc b
    rst $00
    ld b, e
    ldh a, [rIF]
    ld b, a
    rrca
    ldh a, [rSCX]
    ldh a, [rIF]
    dec b
    ld h, [hl]
    ld a, [hl]
    sbc e
    sbc c
    cp l
    add e
    ld b, c
    ld a, [hl]
    jp $bd06


    add e
    reti


    cp a
    ld h, [hl]
    ld a, [hl]
    rst $20
    adc h
    dec b
    ld bc, $e701
    ld a, [hl]
    and e
    ld [bc], a
    ld c, l
    inc bc
    rst $20
    ld hl, sp-$31
    ldh a, [$ff83]
    dec b
    inc h
    nop
    ldh [$ff83], a
    nop
    ld l, l
    inc b
    ld a, a
    rst $20
    ld a, b
    di
    ld a, h
    add e
    dec b
    ld [hl-], a
    add e
    dec b
    ld [hl-], a
    add e
    dec b
    ld [hl-], a
    adc l
    dec b
    ld [hl-], a
    jp Jump_000_2f05


    add l
    dec b
    ld h, $02
    rst $20
    ld hl, sp-$40
    ld [hl+], a
    rst $38
    db $f4
    ccf
    dec b
    jr nz, @+$25

    rst $38
    dec b
    db $eb
    cp a
    pop bc
    cp a
    push de
    xor e
    ld b, l
    db $fd
    add e
    dec b
    push de
    xor e
    pop bc
    cp a
    db $eb
    cp a
    inc h
    rst $38
    add e
    ld [bc], a
    ld c, h
    ld b, $ff
    xor d
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    ld b, e
    ld a, a
    add b
    ld bc, $aa55
    add $05
    ret z

    ld [bc], a
    rst $38
    rst $38
    nop
    adc e
    dec b
    ret nz

    ld b, e
    rst $38
    nop
    adc h
    dec b
    call nc, $ff22
    dec b
    push de
    rst $38
    pop bc
    cp a
    jp hl


    sub a
    ld b, l
    db $fd
    add e
    inc bc
    jp hl


    sub a
    pop bc
    cp a
    call nz, $0406
    nop
    rst $38
    add l
    ld bc, $0330
    sub b
    rra
    add hl, bc
    ld c, $85
    inc b
    sbc d
    adc a
    ld b, $20
    cp a
    ld b, $20
    ld [bc], a
    rst $38
    ccf
    ret nz

    sub [hl]
    ld bc, $0803
    add e
    cp h
    ld b, b
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
    inc bc
    sub [hl]
    ld [bc], a
    inc bc
    ld bc, $3fc1
    and e
    ld b, $7c
    ld a, [bc]
    rrca
    nop
    rst $08
    ret nz

    ccf
    jr nc, @-$2f

    inc c
    inc bc
    di
    inc c
    add h
    inc b
    di
    xor a
    ld b, $a0
    add [hl]
    inc b
    jr nz, jr_017_7176

    inc e
    dec bc
    dec bc

jr_017_7176:
    add h
    and h
    inc b
    dec de
    xor a
    ld b, $c0
    adc e
    inc bc
    ld d, b
    inc bc
    ret nz

    ld a, a
    rst $38
    ccf
    adc e
    inc bc
    ld [hl], b
    and e
    ld b, $ec
    ldh a, [$ff2f]
    nop
    add b
    rst $38
    ld h, d
    ld l, [hl]
    rla
    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ldh [rNR52], a
    nop
    inc b
    inc b
    inc bc
    ld a, l
    ld [de], a
    dec b
    ld b, $08
    inc c
    add b
    ld a, [de]
    ld e, $80
    ld a, l
    add b
    add b
    ld d, $7c
    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld bc, $7c16
    add b
    nop
    ld bc, $7d7d
    nop
    ld d, [hl]
    add b
    add b
    ld bc, $2c7d
    ld [hl+], a
    ld a, l
    rra
    add b
    ld h, $3c
    ld a, $3e
    jr c, jr_017_71f5

    ld [de], a
    ld a, l
    ld a, l
    jr nc, @+$33

    inc [hl]
    ld [hl], $40
    ld b, c
    ld a, a
    ld a, $42
    ld b, h
    ld c, d
    ld c, [hl]
    ld b, h
    ld b, d
    ld a, l
    add b
    ld d, d
    ld [de], a
    add d
    add b
    add b
    nop
    ld b, d
    inc l
    ld a, l
    ld [$5a5a], sp
    ld e, h
    ld a, $56
    inc b
    ld bc, $827d
    ld b, c
    ld a, $3c
    dec c

jr_017_71f5:
    ld [hl-], a
    ld [hl], $12
    ld bc, $3c7d
    add c
    add d
    inc a
    inc a
    ld [$3c0c], sp
    ld a, h
    inc hl
    add b
    ld b, $26
    inc bc
    ld [de], a
    ld a, [de]
    ld e, $08
    inc c
    dec h
    add b
    dec b
    ld a, h
    ld a, l
    ld a, $56
    nop
    ld d, [hl]
    db $e4
    ld a, c
    add b
    ld h, d
    ld a, l
    ld [de], a
    inc b
    inc b
    db $10
    ld [bc], a
    ld a, l
    inc de
    dec d
    rlca
    ld a, [bc]
    ld c, $80
    inc e
    jr nz, jr_017_724c

    inc hl
    add b
    add b
    jr jr_017_72ae

    add h
    nop
    rla
    ldh [rHDMA1], a
    ld a, l
    jr jr_017_724f

    add b
    db $10
    ld a, l
    ld a, l
    ld de, $5810
    add b
    add b
    ld a, l
    ld de, $7d7d
    ld l, $7d
    inc h
    add b
    dec a
    ccf
    jr z, jr_017_728b

jr_017_724c:
    ld [bc], a
    ld a, [hl-]
    ld a, l

jr_017_724f:
    cpl
    ld [hl-], a
    inc sp
    ld [hl], $34
    ld b, b
    ld b, c
    ld a, a
    ccf
    ld b, [hl]
    ld c, b
    ld c, h
    ld d, b
    ld c, b
    ld b, [hl]
    ld a, l
    add b
    ld [bc], a
    ld d, h
    add h
    add b
    add b
    db $10
    ld a, l
    cpl
    cpl
    ld a, l
    ld a, l
    cpl
    ld e, e
    ld e, l
    ld e, e
    ccf
    inc b
    ld e, b
    ld a, l
    ld de, $3f84
    dec a
    ccf
    jr nc, jr_017_72b7

    ld [bc], a
    inc [hl]
    ld a, l
    ld de, $803d
    add h
    dec a
    dec a
    ld a, [bc]
    ld c, $3d
    inc hl
    add b
    rlca
    inc h
    add b

jr_017_728b:
    ld [bc], a
    inc de
    inc e
    jr nz, jr_017_729a

    ld c, $25
    add b
    dec b
    inc b
    ld de, $583f
    ld e, b
    db $10

jr_017_729a:
    db $e4
    ld a, c
    add b
    ld h, d
    ld a, l
    ld de, $7d01
    ld a, l
    add b
    inc d
    inc de
    ld b, $06
    add hl, bc
    dec c
    add b
    dec de
    rra
    add b

jr_017_72ae:
    add b
    ld [hl+], a
    inc hl
    rla
    ld [hl+], a
    ld a, a
    ldh [$ff34], a
    pop af

jr_017_72b7:
    add b
    ld a, a
    ld bc, $1717
    add b
    ld bc, $7d01
    ld a, l
    ld e, [hl]
    ld d, a
    add b
    add b
    dec h
    inc d
    ld a, l
    dec l
    ld a, l
    ld a, l
    inc h
    cpl
    ld a, $3e
    add hl, hl
    cpl
    ld a, $3b
    ld [bc], a
    ld a, l
    ld sp, $3530
    scf
    add b
    inc a
    ld a, a
    rst $30
    ld b, e
    ld b, l
    ld c, e
    ld c, a
    ld b, h
    ld a, l
    ld b, l
    add b
    cpl
    ld d, l
    add e
    add b
    add b
    dec h
    ld b, c
    ld a, l
    ld [bc], a
    ld bc, $7d02
    add e
    ld [bc], a
    cpl
    dec d
    ld bc, $577d
    inc d
    add e
    ld a, $3c
    ld a, $31
    cpl
    inc a
    dec [hl]
    ld e, [hl]
    inc d
    inc a
    add b
    add e
    inc a
    push af
    add hl, bc
    dec c
    inc a
    ld [hl+], a
    add b
    ld [$24f1], sp
    cpl
    add b
    inc de
    dec de
    rra
    add hl, bc
    dec c
    dec h
    add b
    ld [bc], a
    ld bc, $3c14
    ld [hl+], a
    ld e, [hl]
    db $e4
    ld a, c
    add b
    ld h, d
    ld a, l
    inc c
    ld a, l
    ld a, l
    ld de, $1403
    add b
    rlca
    rlca
    dec bc
    rrca
    add b
    dec e
    ld hl, $00c3
    inc d
    inc d
    add hl, de
    ld a, a
    ld a, h
    ld a, a
    ldh a, [$ff80]
    ld a, a
    ld a, h
    add hl, de
    ld a, h
    add b
    ld de, $7d7d
    ld de, $595f
    add b
    add b
    inc d
    daa
    ld [hl+], a
    ld a, l
    ldh [rNR43], a
    ld [de], a
    inc l
    ld h, $3f
    ccf
    inc l
    add hl, sp
    dec hl
    ccf
    ld a, l
    ld a, l
    inc sp
    ld [hl-], a
    scf
    dec [hl]
    add b
    dec a
    ld a, a
    or $47
    ld c, c
    ld c, l
    ld d, c
    ld c, b
    ld a, l
    ld c, c
    add b
    ld d, e
    inc l
    add l
    add b
    add b
    daa
    ld [de], a
    ld a, l
    ld b, c
    ld a, l
    ld [de], a
    ldh [rNR51], a
    ccf
    inc l
    add hl, sp
    ccf
    ld a, l
    ld de, $5914
    add l
    ccf
    dec a
    ccf
    inc l
    inc sp
    scf
    dec a
    inc d
    ld e, a
    dec a
    add c
    add l
    dec a
    db $f4
    dec bc
    rrca
    dec a
    add b
    ld a, h
    add b
    ldh a, [$ff2c]
    ld h, $03
    add b
    dec e
    ld hl, $0f0b
    dec h
    add b
    ld [bc], a
    ld a, l
    ld a, h
    dec a
    ld [hl+], a
    ld e, a
    db $e4
    ld a, b
    add b
    inc hl
    nop
    ld [hl+], a
    ld bc, $0606
    ld bc, $0107
    ld bc, $0131
    daa
    nop
    add hl, bc
    cp $fd
    stop
    ld b, b
    db $10
    db $fd
    ld b, b
    stop
    dec h
    ld bc, $0000
    add [hl]
    inc b
    dec de
    inc bc
    inc b
    dec b
    add b
    add b
    ld h, e
    add h
    dec h
    ld bc, $0203
    ld [bc], a
    sub b
    add b
    ld h, $01
    inc bc
    db $10
    ld bc, $2101
    add a
    inc b
    ld [hl+], a
    inc b
    ld bc, $8480
    add l
    and b
    inc hl
    ld bc, $2103
    add b
    nop
    or b
    ld h, e
    inc b
    dec c
    ld bc, $4001
    db $10
    ld hl, $0000
    ld sp, $0001
    cp $fd
    jr c, jr_017_7436

    ld h, e
    inc a
    inc b
    jr c, @+$3a

    ld sp, $3801
    add [hl]
    inc b
    dec c
    inc bc
    nop
    ld bc, $0101
    db $e4
    ld a, b
    nop
    rst $38

    db $73, $41

    rst $38
    nop

    db $05

    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf

    db $41

    rst $38
    ld a, a

    db $08

    rst $38
    rst $38
    ld bc, $0f00
    nop
    di
    ldh [$fffb], a

    db $a7, $00, $07, $8f, $00, $00, $08

    rst $38
    cp $01
    ldh a, [rIF]

jr_017_7436:
    db $ec
    di
    db $fc
    ei

    db $a7, $00, $28, $03

    nop
    nop
    ld a, [hl]
    ld a, [hl]

    db $27

    ld b, d

    db $c3, $00, $43, $87, $00, $40, $c7, $00, $57, $87, $00, $40, $c7, $00, $67, $87
    db $00, $40, $c7, $00, $77, $87, $00, $40, $c7, $00, $87, $87, $00, $40, $c7, $00
    db $97, $f0, $5f, $00, $40, $0a

    rra
    rra
    ccf
    ccf
    ld a, b
    ld [hl], b
    ld hl, sp-$20
    db $fc
    ret nz

    db $dc

    db $41

    ret nz

    rst $08

    db $02

    ret nz

    db $e3
    ld b, b

    db $42

    pop hl
    ld h, b

    db $0f

    INCBIN "gfx/image_017_7480.2bpp"

    db $41

    ld h, e
    ld h, b

    db $0c

    ldh [$ff6f], a
    ldh [rVBK], a
    ret nz

    rst $20
    ret nz

    rst $28
    ret nz

    rst $38
    ldh [rIE], a
    db $f0

    db $c3, $00, $0f, $15

    INCBIN "gfx/image_017_74a5.2bpp"

    ldh a, [$ff61]
    ldh [$ff0e], a
    rst $38
    dec c

    db $84, $00, $06, $83, $01, $48, $e0, $43

    INCBIN "gfx/image_017_74c3.2bpp"

    ret z

    ldh a, [rSVBK]
    add b

    db $83, $00, $10, $15

    INCBIN "gfx/image_017_750b.2bpp"

    ld h, b
    rst $20
    ld h, b
    db $e3
    ld b, b
    pop bc

    db $8c, $01, $1a, $00

    ret nc

    db $41

    ld h, e
    db $e0

    db $05

    ld h, b
    db $e3
    ld h, b
    jp $e3c0


    db $83, $01, $30, $02

    ldh [rIE], a
    db $f0

    db $c6, $00, $0c, $03

    ld a, h
    rst $38
    add e
    add e

    db $27

    add b

    db $41

    ld b, b
    ret nz

    db $41

    ld b, b
    db $c3

    db $01

    add b
    add e

    db $42

    add b
    sbc a

    db $c3, $01, $e2, $0d

    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp+$70
    nop
    ld bc, $3000
    nop
    jr nz, jr_017_759d

    nop

    db $83, $01, $7c, $03

    rst $20
    jr @-$17

    db $10

    db $41

    rst $38
    nop

    db $02

    cp a
    ld b, b
    rst $38

    db $a4, $02, $0d, $03

    rst $38
    nop
    rst $28
    db $10

    db $42

    rst $38
    nop

    db $05

    ld h, a
    sbc b
    ld h, a
    sub b
    ld b, $f1

    db $42

    nop
    rst $38

    db $00

    ld [hl], b

    db $25

    rst $38

    db $02

    rlca
    ld h, b
    ld sp, hl

    db $a9, $01, $42, $06

    adc l
    rrca
    add $07
    ld h, b
    rst $38
    or b

    db $88, $02, $43, $0e

    rrca
    rrca
    sub [hl]

jr_017_759d:
    daa
    pop hl
    nop
    rst $08
    nop
    sub e
    nop
    inc de
    nop
    rra
    nop
    ccf

    db $84, $02, $27, $10

    INCBIN "gfx/image_017_75ad.2bpp"

    db $06

    db $86, $01, $91, $00

    halt

    db $86, $01, $99, $8f, $02, $60, $15

    INCBIN "gfx/image_017_75ca.2bpp"

    db $e3
    rra
    pop hl
    rra
    add sp, $17

    db $41

    db $fc
    inc bc

    db $1d

    INCBIN "gfx/image_017_75e4.2bpp"

    ld sp, hl
    jr c, @-$0d

    ld [hl], b
    db $e3
    ldh [$ffc2], a
    pop bc
    add b
    add a
    nop
    rra
    nop
    ld a, a

    db $85, $02, $38, $05

jr_017_7606:
    rlca
    rst $38
    ld a, $ff
    db $c3
    pop bc

    db $42

    rra
    db $01

    db $01

    rst $38
    db $01

    db $41

    cp $03

    db $41

    ld a, $c3

    db $01

    ccf
    pop bc

    db $42

    rlca
    ld sp, hl

    db $a3, $01, $fc, $00

    pop hl

    db $a5, $02, $01, $22

    nop

    db $03

    ld b, b
    nop
    db $e3
    nop

    db $89, $02, $16, $01

    di
    inc c

    db $a5, $02, $1c, $00

    ld a, a

    db $a4, $02, $19, $03

    rst $00
    jr c, jr_017_7606

    db $20

    db $42

    rst $38
    nop

    db $01

    inc a
    db $c3

    db $ab, $02, $32, $01

    ldh [$ffe0], a

    db $f4, $20, $00, $e0, $05

    rlca
    db $fc
    inc bc
    db $fc
    nop
    db $f8

    db $41

    nop
    ret z

    db $03

    nop
    ldh a, [rP1]
    add b

    db $41

    nop
    rst $38

    db $03

    ld bc, $03ff
    db $fe

    db $a5, $02, $77, $06

    ld a, b
    ldh [c], a
    ld l, h
    ldh [$ff79], a
    ldh a, [$ff7f]

    db $a5, $02, $84, $05

    inc bc
    ccf
    pop hl
    rra
    ldh a, [rIF]

    db $83, $03, $60, $00

    db $fd

    db $89, $03, $65, $8c, $02, $9f, $06

    adc [hl]
    ld a, [hl]
    rst $00
    ccf
    inc bc
    rst $38
    db $01

    db $8b, $03, $33, $00

    rst $38

    db $89, $02, $c0, $00

    db $f8

    db $84, $02, $cb, $08

    rst $00
    ret nz

    adc l
    add d
    rra
    nop
    rlca
    jr c, @+$09

    db $86, $03, $29, $0f

    INCBIN "gfx/image_017_76aa.2bpp"

    db $84, $01, $a0, $8a, $02, $65, $a3, $00, $06, $03

    ld c, $0e
    rlca
    rlca

    db $41

    inc bc
    ccf

    db $41

    inc bc
    rst $38

    db $07

    jp $c73e


    ld a, $07
    cp $07
    cp [hl]

    db $83, $02, $f1, $01

    db $c3
    ccf

    db $43

    add e
    ld a, a

    db $01

    ld [bc], a
    cp [hl]

    db $41

jr_017_76e4:
    add $3e

    db $03

    ld b, $fe
    ld [bc], a
    db $fe

    db $41

    inc bc
    rst $38

    db $a9, $01, $34, $00

    rst $38

    db $f8, $20, $03, $60, $01

    rst $38
    nop

    db $83, $02, $c2, $86, $03, $76, $09

    jr nc, jr_017_76e4

    ld h, b
    pop hl
    and $c1
    call nz, $808f
    rrca

    db $84, $02, $67, $41

    ld a, a
    nop

    db $05

    cp $01
    ccf
    ret nz

    cpl
    ret nc

    db $a3, $01, $84, $0b

    add e
    db $fc
    jp $e0f0


    cp $e0
    ld a, a
    pop af
    ld a, $f9
    db $3e

    db $a3, $01, $96, $05

    rlca
    ccf
    db $e3
    rra
    ldh a, [rIF]

    db $88, $02, $a0, $83, $02, $42, $02

    ld hl, sp-$01
    db $f0

    db $41

    rst $38
    nop

    db $03

    db $fc
    nop
    cp $06

    db $a3, $00, $16, $0d

    di
    ld [hl], a
    db $e3
    rst $20
    jp nz, $86cf

    adc a
    ld b, $1f
    ld b, $3f
    ld [bc], a
    ld a, a

    db $85, $04, $1a, $87, $02, $c0, $09

    adc $0f
    rst $18
    rra
    rst $38
    rra
    adc a
    rrca
    rst $38
    db $fe

    db $41

    db $cd
    inc sp

    db $41

    ldh a, [c]
    rrca

    db $05

    ld [hl], c
    rrca
    ld a, c
    rlca
    rst $38
    db $fe

    db $83, $04, $b0, $8b, $03, $64, $84, $00, $30, $05

    inc de
    db $ec
    inc de
    ldh [$ff1f], a
    ret nz

    db $83, $02, $6a, $85, $00, $2f, $00

    inc de

    db $89, $02, $66, $01

    nop
    nop

    db $8d, $05, $02, $84, $04, $5f, $00

    db $fc

    db $8a, $03, $66, $03

    rra
    rst $38
    ccf
    db $f8

    db $8a, $01, $05, $01

    ld h, e
    ret nz

    db $42

    ld h, c
    db $e0

    db $01

    ld h, c
    ret nz

    db $8b, $01, $1a, $01

    db $e3
    ld d, b

    db $41

    db $e3
    ld h, b

    db $03

    ld h, b
    rst $28
    ld h, b
    rst $08

    db $89, $01, $30, $83, $01, $da, $03

    ld a, a
    sbc a
    rlca
    rst $38

    db $8d, $02, $02, $8d, $02, $30, $10

    INCBIN "gfx/image_017_77ce.2bpp"

    add c

    db $22

    inc bc

    db $00

    rrca

    db $41

    ld [bc], a
    inc de

    db $07

    inc bc
    dec e
    inc bc
    ccf
    ld bc, $01ff
    db $fd

    db $41

    inc bc
    rst $38

    db $05

    ld [bc], a
    cp $02
    ei
    inc bc
    ret


    db $84, $05, $a9, $00

    add e

    db $86, $05, $af, $88, $05, $16, $f0, $21, $00, $4f, $84, $05, $31, $01

    rlca
    db $f8

    db $41

    scf
    ret z

    db $03

    rrca
    ldh a, [$ff7f]
    add b

    db $8f, $05, $30, $01

    nop
    nop

    db $8d, $06, $02, $8f, $05, $10, $83, $00, $17, $00

    rrca

    db $8a, $04, $05, $09

    jp nz, $c63f

    ccf
    ld b, $ff
    ld b, $bf
    db $c2
    ccf

    db $8b, $04, $1a, $02

    inc bc
    cp [hl]
    rst $00

    db $84, $04, $11, $00

    inc bc

    db $8a, $04, $2f, $a5, $01, $da, $01

    cp $e1

    db $8a, $03, $02, $90, $03, $2d, $0c

    rst $38
    ldh [$ff3e], a
    pop hl
    or b
    ld l, a
    db $ec
    di
    di
    ldh [$ffdf], a
    ret nz

    cp a

    db $a8, $05, $bb, $14

    INCBIN "gfx/image_017_7862.2bpp"

    ld d, e
    ld b, b
    db $d3
    ret nz

    sbc a

    db $84, $06, $a9, $00

    rst $38

    db $86, $06, $af, $88, $06, $16, $f0, $50, $00, $4f, $ff, $12, $74, $17, $ff, $00
    db $80, $62, $7d, $17, $00, $20, $02, $22, $08, $14, $06, $2f, $08, $28, $0a, $0c
    db $2a, $2f, $2f, $2d, $00, $20, $00, $02, $0e, $2e, $41, $2f, $62, $40, $e0, $3a
    db $16, $2f, $2f, $44, $58, $46, $22, $44, $58, $44, $46, $00, $20, $44, $58, $00
    db $02, $44, $46, $00, $58, $5a, $5c, $0c, $2d, $82, $2f, $82, $40, $2f, $40, $7f
    db $41, $7c, $7f, $82, $41, $2f, $19, $08, $23, $44, $41, $44, $19, $20, $20, $12
    db $01, $37, $22, $46, $22, $22, $48, $02, $22, $22, $37, $22, $22, $03, $7f, $41
    db $5a, $42, $26, $80, $41, $82, $41, $13, $82, $2f, $82, $80, $08, $14, $82, $80
    db $41, $41, $2f, $7f, $2f, $2e, $2f, $2f, $7c, $22, $7c, $00, $e4, $7f, $80, $62
    db $7d, $17, $10, $30, $12, $32, $04, $38, $3f, $36, $18, $38, $3f, $1b, $3f, $3b
    db $1c, $32, $10, $30, $30, $32, $1e, $3e, $4a, $3f, $62, $50, $0c, $3f, $26, $4c
    db $48, $54, $12, $56, $48, $54, $54, $56, $10, $30, $83, $01, $25, $1f, $30, $32
    db $48, $30, $51, $3f, $1b, $56, $84, $3f, $84, $50, $3f, $50, $7f, $51, $7f, $7f
    db $84, $51, $29, $3f, $13, $38, $54, $51, $30, $3f, $20, $10, $12, $1b, $22, $12
    db $06, $56, $12, $58, $11, $32, $07, $07, $22, $12, $03, $7f, $4a, $51, $52, $26
    db $80, $41, $84, $51, $13, $84, $80, $84, $3f, $04, $38, $84, $80, $51, $51, $3f
    db $7f, $3f, $3e, $3f, $3f, $10, $32, $32, $10, $e4, $7f, $80, $62, $7d, $16, $01
    db $21, $03, $23, $05, $07, $07, $27, $09, $29, $0b, $0d, $2b, $2c, $3d, $23, $03
    db $23, $01, $03, $0f, $43, $3f, $41, $3f, $50, $22, $3f, $01, $45, $21, $41, $47
    db $59, $03, $45, $47, $47, $59, $83, $02, $12, $12, $45, $47, $03, $59, $5b, $5d
    db $0d, $59, $83, $3f, $83, $50, $f0, $f2, $7f, $f0, $7f, $7f, $83, $22, $3f, $01
    db $09, $5a, $41, $03, $3f, $0a, $23, $21, $13, $01, $21, $21, $45, $21, $59, $11
    db $01, $22, $21, $06, $38, $38, $21, $7f, $3f, $5d, $f2, $26, $80, $02, $83, $3f
    db $83, $83, $02, $65, $10, $3f, $05, $07, $83, $80, $3f, $f0, $3f, $7f, $3f, $43
    db $3f, $f0, $01, $23, $23, $01, $e4, $7f, $80, $62, $7d, $16, $11, $31, $13, $33
    db $37, $15, $17, $37, $19, $39, $1a, $13, $3a, $3c, $1d, $33, $13, $33, $31, $33
    db $1f, $53, $4b, $41, $2f, $40, $04, $2f, $2f, $4d, $11, $55, $41, $49, $57, $1a
    db $55, $57, $49, $57, $13, $33, $55, $57, $31, $33, $49, $33, $2f, $2f, $13, $57
    db $85, $2f, $85, $40, $f1, $f3, $7f, $f1, $7f, $7c, $85, $22, $2f, $01, $4a, $15
    db $41, $33, $2f, $41, $23, $11, $22, $11, $05, $55, $49, $21, $11, $31, $11, $41
    db $11, $08, $03, $7f, $4d, $2f, $f3, $26, $80, $01, $85, $80, $42, $85, $2f, $0f
    db $37, $15, $85, $80, $2f, $f1, $2f, $7f, $2f, $53, $2f, $f1, $11, $7c, $33, $7c
    db $e4, $7e, $80, $22, $00, $a6, $00, $7f, $08, $05, $04, $07, $06, $05, $01, $05
    db $04, $04, $25, $01, $01, $02, $00, $41, $00, $80, $01, $00, $00, $b2, $00, $7f
    db $23, $00, $09, $21, $00, $21, $80, $00, $80, $10, $00, $fe, $fd, $c3, $04, $34
    db $04, $07, $06, $21, $00, $21, $91, $04, $1d, $03, $90, $00, $00, $80, $25, $00
    db $43, $00, $21, $84, $04, $31, $07, $40, $00, $40, $10, $40, $02, $40, $00, $41
    db $fe, $fd, $e4, $7e, $00, $ff

    ld [hl], e
    add hl, bc
    rra
    nop
    rst $18
    nop
    rra
    rlca
    rst $38
    rra
    ccf
    ccf
    inc hl
    ld a, a
    ld bc, $ffff
    xor a
    nop
    nop
    inc c
    ldh [$ff1f], a
    jr nz, @-$1f

    rst $20
    rra
    rra
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    xor a
    nop
    dec e
    ld b, $fe
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    daa
    ld b, d
    jp Jump_017_4300


    add a
    nop
    ld b, b
    rst $00
    nop
    ld d, a
    add a
    nop
    ld b, b
    rst $00
    nop
    ld h, a
    add a
    nop
    ld b, b
    rst $00
    nop
    ld [hl], a
    add a
    nop
    ld b, b
    rst $00
    nop
    add a
    add a
    nop
    ld b, b
    rst $00
    nop
    sub a
    ldh a, [$ff5f]
    nop
    ld b, b
    ld de, $1f1f
    rst $38
    ccf
    ld [hl], b
    ld [hl], b
    ld hl, sp-$20
    call c, $cec0
    ret nz

    rst $00
    ret nz

    jp Jump_017_43c0


    ld b, b
    ld b, d
    db $e3
    ld h, b
    ld bc, $40c3
    ld b, l
    jp Jump_000_01c0


    jp Jump_017_4240


    ld h, e
    ld h, b
    ld bc, $4043
    call nz, $0e01
    dec b
    pop bc
    call c, $f8c3
    rst $20
    ldh a, [$ffc3]
    nop
    dec hl
    inc d
    rra
    ld b, $ff
    rrca
    rst $38
    rra
    rst $38
    ld a, $fe
    ld a, h
    db $fc
    ld hl, sp-$08
    or b
    ldh a, [$ff61]
    ldh [$ff0e], a
    rst $38
    dec c
    rst $38
    jp $3f01


    add e
    ld bc, $e048
    ld d, [hl]
    ldh a, [$fff0]
    ld h, d
    db $ec

jr_017_7b7a:
    sbc a
    add b
    rst $18
    ret nz

    rst $38
    ldh [$ff7f], a
    ld [hl], b
    ccf
    jr c, jr_017_7ba4

    inc e
    rrca
    ld c, $86
    ld b, $c7
    rlca
    db $e3
    inc bc
    pop af
    ld bc, $00f8
    db $fc
    nop
    ld a, [hl]
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_017_7b7a

    nop
    cp a
    nop
    ld a, [hl]
    ld bc, $03fc
    ld hl, sp+$07

jr_017_7ba4:
    pop af
    rrca
    db $e3
    rra
    rst $00
    ccf
    add a
    ld a, [hl]
    rrca
    db $fc
    rra
    db $fc
    ccf
    ld hl, sp+$71
    cp $e4
    ld hl, sp-$3d
    ld hl, sp-$78
    ldh a, [rP1]
    nop
    ldh [rP1], a
    ldh a, [$ff60]
    ld hl, sp-$10
    rst $38
    ld hl, sp-$24

jr_017_7bc5:
    db $fc
    rst $08
    sbc $c7
    rst $08
    jp $e14f


    ld b, c
    ld h, a
    ldh [rDIV], a
    ld h, e
    ret nz

    ld b, e
    jp nz, $8bc1

    ld bc, $861c
    ld bc, $9012
    ld bc, $152f
    ld a, h
    rst $38
    add e
    add e
    add b
    add b
    sbc a
    add b
    sbc e
    add h
    sub l
    add d
    ld e, d
    pop bc
    ld e, l
    ret nz

    ld e, l
    jp nz, $c45a

    sub l
    adc b
    call nz, $e801
    ld a, [bc]
    cp a
    add e
    rst $38
    ld a, h
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    ld [hl], b
    ld [hl], b
    dec h
    nop
    ld b, c
    rst $38
    nop
    inc c
    rst $08
    jr nc, jr_017_7bc5

    ld c, b
    ld a, e
    add h
    ld a, l
    ld [bc], a
    cp [hl]
    ld bc, $00df
    rst $28
    ld b, c
    nop
    rst $30
    inc b
    ld [$10ef], sp
    rst $18
    jr nz, jr_017_7bc5

    ld [bc], a
    ld d, $03
    ld a, e
    nop
    or a
    nop
    add $02
    db $10
    ld b, c
    rst $38
    nop
    ld bc, $70ff
    ld [hl+], a
    rst $38
    inc bc
    rra
    rlca
    ld h, b
    ld sp, hl
    xor c
    ld bc, $0642
    adc l
    rrca
    add $07
    ld h, b
    rst $38
    or b
    adc b
    ld [bc], a
    ld b, e
    dec c
    rrca
    rrca
    sub [hl]
    daa
    rlca
    nop
    db $e3
    nop
    pop af
    nop
    ld hl, sp+$00
    rst $38
    nop
    add h
    nop
    db $10
    ld [hl+], a
    nop
    ld [bc], a
    add a
    add b
    rst $28
    adc b
    ld bc, $1065
    add a
    rlca
    add a
    ld a, a
    ld c, $ff
    rra
    db $fc
    jr c, @+$01

    ld [hl], d
    db $fc
    db $e4
    ld hl, sp-$38
    ldh a, [$fff0]
    and [hl]
    ld [bc], a
    ld l, c
    and e
    ld [bc], a
    ld l, b
    ld [bc], a
    rrca
    nop
    rlca
    ld [hl+], a
    nop
    dec de
    add b
    add b
    rst $00
    ret nz

    rst $28
    ldh [$ff7f], a
    ldh a, [$ff3f]
    ld hl, sp+$1f
    db $fc
    rrca
    cp $87
    ld a, a
    jp $e13f


    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld b, c
    rst $38
    nop
    xor l
    ld bc, $0960
    pop hl
    ldh [$ffc3], a
    ret nz

    add a
    add b
    nop
    rra
    nop
    ld a, a
    add l
    ld [bc], a
    jr c, jr_017_7cc9

    rst $38
    rlca
    ld a, $ff
    pop bc
    jp $0701


    ld sp, hl
    rlca
    reti


    daa
    xor c
    ld b, a
    ld e, d
    add a
    cp d
    rlca
    cp d
    ld b, a
    ld e, d
    daa
    xor c

jr_017_7cc9:
    rla
    call nz, $e802
    nop
    rst $38
    db $f4
    ld b, e
    ld bc, $8ffc
    ld [bc], a
    sub b
    add h
    ld bc, $8aa0
    ld [bc], a
    ld h, l
    or c
    ld [bc], a
    ld h, b
    ld bc, $03e3
    or c
    ld [bc], a
    ld [hl], h
    ld [$7f9c], sp
    ld l, [hl]
    rra
    scf
    rrca
    dec de
    rlca
    rrca
    add e
    ld [bc], a
    ld h, a
    ld bc, $f903
    xor d
    ld [bc], a
    sub l
    add h
    ld bc, $8e60
    ld [bc], a
    and l
    adc c
    inc bc
    inc [hl]
    ld b, $ff
    ldh [rSB], a
    ld bc, $03e3
    rst $30
    adc [hl]
    ld [bc], a
    push bc
    and e
    inc bc
    ld d, h
    ld [bc], a
    ccf
    nop
    ld a, a
    ld b, d
    nop
    rst $38
    nop
    ld a, a
    add e
    ld bc, $03e4
    ld sp, hl
    ld b, d
    ld sp, hl
    ld b, [hl]
    and e
    ld [bc], a
    ld hl, sp+$07
    rst $38
    ld a, a
    rst $38
    nop
    rra
    ldh [rIF], a
    ldh a, [$ff89]
    ld [bc], a
    ld h, [hl]
    xor b
    ld bc, $0700
    rlca
    ld [hl], e
    rrca
    db $e3
    rra
    jp $c23f


    ld b, d
    ld a, $c7
    ld [bc], a

Jump_017_7d3f:
    ld a, $c3
    ld a, $45
    jp Jump_000_003f


    jp Jump_000_3e42


    add $0a
    ld a, $c2
    ld a, $c3
    ccf
    db $e3
    rra
    ld [hl], e
    adc a
    dec sp
    rst $00

jr_017_7d56:
    and a
    ld bc, $bf38
    inc bc
    ld b, b
    adc h
    ld [bc], a

jr_017_7d5e:
    ret nz

    nop
    jr nc, jr_017_7d56

    ld sp, $6e01
    adc e
    ld [bc], a
    and b
    add e
    inc b
    inc a
    xor c
    ld bc, $10a0
    ccf
    ccf
    di
    ld [hl], a
    db $e3
    rst $28
    jp $87ce


    sbc [hl]
    rlca
    ld e, $07
    ld a, $03
    ld a, $43
    add h
    inc b
    dec de
    adc b
    inc bc
    ret nz

    ld bc, $fc1d
    and h
    inc b
    xor e
    and l
    inc bc
    ldh [$ff03], a
    sbc [hl]
    inc hl
    sbc [hl]
    ld h, e
    or l
    inc bc
    ld [$0083], a
    jr nz, jr_017_7d5e

    inc bc
    di
    nop
    ldh [$ff84], a
    ld [bc], a
    or e
    ld bc, $00ff
    add l
    inc bc
    ldh a, [$ffa3]
    dec b
    inc b
    and [hl]
    dec b
    nop
    nop
    nop
    adc l
    dec b
    ld [bc], a
    add l
    dec b
    nop
    adc c
    ld [bc], a
    sub [hl]
    inc b
    rst $38
    rra
    ccf
    rst $38
    ldh a, [$ff8a]
    ld bc, $0105
    jp Jump_017_4240


    ld h, e
    ldh [rP1], a
    ld b, e
    ld b, l
    ret nz

    jp $c002


    ld b, e
    ret nz

    sub c
    ld bc, $00c8
    ld [hl], b
    add h
    inc b
    call c, $0701
    rst $38
    adc h
    ld [bc], a
    ld [bc], a
    adc [hl]
    ld [bc], a
    cpl
    ld b, $e7
    rra
    db $e4
    rra
    inc h
    rst $18
    rst $20
    jp $0700


    dec b
    inc bc
    rrca
    ld bc, $0107
    ld bc, $0322
    ld d, $e2
    ld [bc], a
    ldh a, [c]
    ld [bc], a
    ei
    inc bc
    db $fd
    inc bc
    ld sp, hl

Call_017_7e00:
    ld bc, $01fb
    ld sp, hl
    inc bc
    rra
    inc bc
    rst $18
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    inc bc
    dec e
    add h
    dec b
    xor c
    nop
    inc bc
    add [hl]
    dec b
    xor a
    adc b
    ld [bc], a
    ld h, [hl]
    sub b
    ld [bc], a
    cp a
    adc l
    inc bc
    jr nc, jr_017_7e21

    rst $38

jr_017_7e21:
    ldh [$fff4], a
    ld c, b
    dec b
    nop
    add [hl]
    inc b
    add hl, bc
    ld bc, $3ec3
    ld b, d
    add $3f
    nop
    jp nz, $3f45

    jp $3f02


    jp nz, $863f

    inc b
    ld [de], a
    adc b
    inc b
    cpl
    db $f4
    ld h, a
    dec b
    ld a, b
    ldh a, [rVBK]
    nop
    ld b, b
    rst $38
    jp nc, Jump_000_177a

    rst $38
    nop
    add b
    ld h, d
    ld a, l
    ldh [$ff33], a
    nop
    jr nz, @+$04

    ld [hl+], a
    ld [$0614], sp
    inc h
    ld [$0a28], sp
    inc c
    ld a, [hl+]
    inc h
    inc h
    dec l

jr_017_7e61:
    nop
    jr nz, jr_017_7e64

jr_017_7e64:
    ld [bc], a
    ld c, $2e
    ld d, e
    inc h
    ld b, b
    ld b, e
    ld b, d
    add hl, de
    inc h
    inc [hl]
    ld b, h
    ld e, b
    ld b, [hl]
    ld [hl+], a
    ld b, h
    ld e, b
    ld b, h
    ld b, [hl]
    nop
    jr nz, jr_017_7ebe

    ld e, b
    nop
    ld [bc], a
    ld b, h
    ld b, [hl]
    nop
    ld e, b
    ld e, d
    ld e, h
    inc c
    dec l
    ld [hl+], a
    add b
    ld [$247f], sp
    ld b, b
    ld a, a
    ld b, e
    ld a, h
    ld [hl+], a
    add d
    inc h
    inc hl
    add b
    rla
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld [hl], l
    halt
    halt
    ld [hl], a
    ld [hl], a
    add c
    add c
    inc h
    ld a, a
    inc h
    inc h
    add b
    add b
    daa
    ld a, a
    db $e4
    sub a
    add b
    ld h, d
    ld a, l
    ldh [$ff27], a
    db $10
    jr nc, @+$14

    ld [hl-], a
    inc b
    jr c, jr_017_7ef0

    ld [hl], $18

jr_017_7ebe:
    jr c, jr_017_7ef4

    dec de
    inc [hl]
    dec sp
    ld c, [hl]
    ld [hl-], a
    db $10
    jr nc, jr_017_7ef8

    ld [hl-], a
    ld e, $3e
    ld c, d
    inc [hl]
    ld d, b
    ld d, e
    ld d, d
    inc [hl]
    add hl, hl

Call_017_7ed2:
    ld c, h
    ld c, b
    ld d, h
    ld [de], a
    ld d, [hl]
    ld c, b
    ld d, h
    ld d, h
    ld d, [hl]
    db $10
    jr nc, jr_017_7e61

    ld bc, $0725
    jr nc, jr_017_7f15

    ld c, b
    jr nc, jr_017_7f37

    ccf
    dec de
    ld d, [hl]
    add e
    nop
    jr c, jr_017_7ef4

    inc [hl]
    ld d, b
    ld a, a

jr_017_7ef0:
    ld d, e
    db $10
    ld [hl-], a
    add h

jr_017_7ef4:
    inc [hl]
    inc hl
    add b
    ld b, a

jr_017_7ef8:
    add h
    ld h, b
    dec b
    add c
    add c
    inc [hl]
    ld a, a
    inc [hl]
    inc [hl]
    ldh a, [$ffa4]
    nop
    ld e, [hl]
    ld d, $01
    ld hl, $2303
    dec b
    rlca
    rlca
    daa
    add hl, bc
    ld d, $0b
    dec c
    dec hl
    inc l
    dec a

jr_017_7f15:
    inc hl
    inc bc
    inc hl
    ld bc, $0f03
    cpl
    dec [hl]
    ld b, c
    dec h
    ld b, c
    inc b
    dec h
    dec h
    dec [hl]
    ld b, l
    ld hl, $4741
    ld e, c
    inc bc
    ld b, l
    ld b, a
    ld b, a
    ld e, c
    add e
    ld [bc], a
    ld [de], a
    rlca
    ld b, l
    ld b, a
    inc bc
    ld e, c
    ld e, e

jr_017_7f37:
    ld e, l
    dec c
    ld e, c
    add e
    nop
    jr c, jr_017_7f45

    ldh a, [$fff2]
    ld a, a
    ldh a, [rSB]
    inc hl
    add e

jr_017_7f45:
    dec h
    inc hl
    add b
    ld b, a
    add e
    ld h, b
    dec b
    add c
    add c
    dec h
    ld a, a
    dec h
    ldh a, [$fff0]
    and h
    nop
    ld e, [hl]
    ld d, $11
    ld sp, $3313
    scf
    dec d
    rla
    scf
    ld h, $39
    ld a, [de]
    inc de
    ld a, [hl-]
    inc a
    ld c, a
    inc sp
    inc de
    inc sp
    ld sp, $1f33
    ccf
    ld c, e
    ld b, c
    dec [hl]
    ld d, c
    inc b
    dec [hl]
    dec [hl]
    ld c, l
    ld de, $4155
    ld c, c
    ld d, a
    rrca
    ld d, l
    ld d, a
    ld c, c
    ld d, a
    inc de
    inc sp
    ld d, l
    ld d, a
    ld sp, $4933
    inc sp
    cpl
    cpl
    inc de
    ld d, a
    add e
    nop
    jr c, jr_017_7f96

    pop af
    di
    ld a, a
    pop af
    ld de, $857c

jr_017_7f96:
    dec [hl]
    inc hl
    add b
    ld b, a
    add l
    ld h, b
    dec b
    add c
    add c
    dec [hl]
    ld a, a
    dec [hl]
    pop af
    ldh a, [$ffa0]
    nop
    ld e, [hl]
    inc hl
    nop
    dec h
    ld bc, $0508
    inc b
    rlca
    ld b, $05
    ld bc, $0405
    inc b
    dec h
    ld bc, $0201
    nop
    ld b, c
    nop
    add b
    ld [bc], a
    nop
    nop
    nop
    ld sp, $2601
    nop
    rlca
    sub b
    nop
    add b
    stop
    cp $fd
    ld hl, $0024
    inc d
    add hl, hl
    nop
    ld b, c
    nop
    ld c, c
    nop
    ld d, c
    nop
    ld e, c
    nop
    ld h, c
    nop
    ld l, c
    nop
    ld [hl], c
    nop
    ld [$4088], sp
    db $10
    ld b, b
    ld [hl+], a
    nop
    rlca
    jr nz, @+$2a

    jr nc, @+$3a

    and b
    xor b
    or b
    cp b
    db $e4
    sub [hl]
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
