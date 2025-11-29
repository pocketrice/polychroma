; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    rst $38
    ld [bc], a
    nop
    nop

Jump_00e_4004:
    nop
    dec c
    ld c, c
    ld c, $00
    nop
    nop
    dec c
    ld c, c
    ld c, $16
    ld b, b
    dec e
    ld b, b
    inc h
    ld b, b
    ld a, [hl+]
    ld b, b
    nop
    ld bc, $0302
    inc b
    dec b
    rst $38
    nop
    ld [bc], a
    ld bc, $0405
    inc bc
    rst $38
    ld bc, $0302
    inc b
    dec b
    rst $38
    ld [bc], a
    ld bc, $0405
    inc bc
    rst $38
    inc a
    ld b, b
    ld b, [hl]
    ld b, b
    ld d, b
    ld b, b
    ld e, c
    ld b, b
    ld h, d
    ld b, b
    ld l, e
    ld b, b
    inc c
    nop
    add hl, bc
    rlca
    ld a, [bc]
    inc c
    nop
    add hl, bc
    nop
    rst $38
    inc c
    ld bc, $0a02
    inc c
    add hl, bc
    rlca
    nop
    add hl, bc
    rst $38
    inc c
    ld a, [bc]
    inc c
    dec bc
    add hl, bc
    inc bc
    inc b
    nop
    rst $38
    add hl, bc
    add hl, bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    add hl, bc
    rst $38
    ld [bc], a
    ld bc, $0304
    ld a, [bc]
    inc c
    dec bc
    ld [$0cff], sp
    dec bc
    dec bc
    dec bc
    inc c
    rlca
    nop
    rst $38
    nop
    rst $38
    ld [$ff40], sp
    nop
    nop
    ld bc, $00f8
    nop
    ld b, $00
    rst $38
    ld [$00c0], sp
    nop
    nop
    ld bc, $00f8
    nop
    ld a, [$0006]
    ld a, [$c000]
    db $fc
    dec c
    ld b, b
    rst $38
    nop
    ret nz

    db $fc
    dec c
    ret nz

    nop
    nop
    nop
    db $fd
    inc c
    nop
    nop
    ld b, $00
    db $fd
    inc c
    nop
    nop
    ld a, [$fc80]
    ld c, $40
    ld [bc], a
    rst $30
    add b
    db $fc
    ld c, $c0
    db $fd
    add hl, bc
    ld b, $fa
    nop
    nop
    rst $30
    add hl, bc
    nop
    nop
    ld a, [$f706]
    add hl, bc
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
    sbc e
    ld c, l
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
    ld [$fd80], sp
    xor b
    inc d
    xor b
    ld l, h
    nop
    rst $38
    ld [$0000], sp
    add b
    cp $0c
    add b
    nop
    add b
    cp $0c
    nop
    rst $38
    add b
    cp $0c
    nop
    ld bc, $fe00
    db $10
    ld b, b
    rst $38
    add b
    cp $0c
    add b
    ld bc, $00fa
    ei
    cp $fc
    db $fc
    cp $fb
    ei
    ld [bc], a

Jump_00e_410a:
    db $fc
    inc b
    cp $05
    inc bc
    nop
    inc bc
    ld bc, $0202
    ld bc, $0303
    rst $38
    ld [bc], a
    cp $01
    db $fd
    jr nz, jr_00e_411e

jr_00e_411e:
    jr c, jr_00e_4120

jr_00e_4120:
    ld d, b
    nop
    ld l, b
    nop
    rla
    or $0d
    rrca
    ld b, h
    rst $38
    dec c
    ld e, a
    ld [hl+], a
    dec c
    ld [hl], d
    ld [hl+], a
    dec c
    pop de
    ld b, c

Call_00e_4133:
    rrca
    ld b, e
    nop
    rrca
    add hl, sp
    db $10
    dec c
    jp nc, Jump_000_0d48

    ldh [$ff35], a
    add b
    nop
    ld c, h
    nop
    dec c
    rrca
    jr nz, @+$0d

    dec c
    dec l
    jr z, jr_00e_415f

    add b
    ld d, h
    ld b, c
    rrca
    daa
    nop
    ld b, $57
    ld b, c
    rrca
    daa
    ld bc, $9a0d
    ld b, c
    ld c, $40
    dec a
    dec c
    or d

jr_00e_415f:
    ld b, c
    dec a
    inc d
    rst $38
    adc [hl]
    ld b, c
    dec c
    sbc d
    ld b, c
    jr nc, jr_00e_41aa

    ccf
    dec c
    or d
    ld b, c
    ccf
    ld c, $0d
    jr jr_00e_41b5

    and $42
    and $42
    and $42
    and $42
    and $42
    and $42
    jp nz, $d343

    ld b, e
    ld b, c
    ld b, h
    ld a, $46
    ld a, $46
    ld a, $46
    ld b, $5d
    ld b, c
    dec c
    ret z

    ld b, c
    dec c
    sbc d
    ld b, c
    ld c, $40
    dec a
    ld b, $5d
    ld b, c
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
    jr nc, jr_00e_41a9

    inc h

jr_00e_41a9:
    ld a, [bc]

jr_00e_41aa:
    ld e, a
    inc bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld a, [bc]
    ld e, a
    inc bc

jr_00e_41b5:
    push bc
    ld a, [de]
    ld b, e
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    ld e, b
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    pop bc
    ret


    call Call_000_0647
    and $03
    ld e, $27
    ld [de], a
    ret


Jump_00e_41d1:
    ld a, [$db51]
    ld [$dd08], a
    ret


    call Call_00e_41ed
    call Call_00e_48f9
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $0e
    ld bc, $488b
    jp Jump_000_0846


Call_00e_41ed:
    ld hl, $dd08
    ld a, [$db51]
    sub [hl]
    ld [$dd09], a
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
    jp Jump_00e_41d1


Call_00e_4207:
    ld a, [$dd09]
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
    ret


    rrca
    daa
    nop
    dec bc
    inc sp
    ld b, d
    rrca
    daa
    ld bc, $330b
    ld b, d
    rrca
    daa
    ld [bc], a
    dec bc
    inc sp
    ld b, d
    rrca
    daa
    inc bc
    dec bc
    inc sp
    ld b, d
    ld b, $6b
    ld b, c
    inc bc
    ld h, h
    ld b, d
    ld c, [hl]
    dec c
    cp b
    ld b, d
    ld [hl], e
    ld b, b
    dec c
    and $22
    call $1907
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$0119], sp
    ld [$d30d], sp
    ld b, d
    adc e
    ld b, b
    dec c
    and $22
    call $1907
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$0119], sp
    ld [$cd0c], sp
    db $ed
    ld b, c
    call Call_00e_48f9
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_00e_42b0

    ld e, $07
    ld a, [de]
    ld hl, $db53
    sub [hl]
    ld c, a
    ld e, $27
    ld a, [de]
    cp $01
    jr c, jr_00e_42a2

    jr z, jr_00e_429c

    cp $02
    jr z, jr_00e_4296

    ld a, c
    cp $4c
    jr c, jr_00e_42a6

    ret


jr_00e_4296:
    ld a, c
    cp $70
    jr nc, jr_00e_42a6

    ret


jr_00e_429c:
    ld a, c
    cp $4c
    jr nc, jr_00e_42a6

    ret


jr_00e_42a2:
    ld a, c
    cp $28
    ret nc

jr_00e_42a6:
    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ld e, $12
    ld [de], a
    ret


jr_00e_42b0:
    ld e, $0e
    ld bc, $488b
    jp Jump_000_0846


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $27
    ld a, [de]
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_00e_42ca

    inc h

jr_00e_42ca:
    call Call_000_20f9
    call Call_000_2123
    jp Jump_000_20be


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $27
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_00e_42e1

    inc h

jr_00e_42e1:
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ret


    dec c
    ld h, $44
    ld bc, $060e
    ld hl, sp+$42
    ld hl, sp+$42
    reti


    ld b, e
    and $43
    reti


    ld b, e
    and $43
    inc bc
    ret c

    ld b, c
    ld c, [hl]
    dec c
    and $22
    call $1907
    ld [de], a
    inc c
    add hl, de
    ld bc, $0d04
    and $22
    call $1907
    ld [de], a
    inc b
    add hl, de
    ld bc, $0d04
    and $22
    call $1907
    ld [de], a
    inc b
    add hl, de
    ld bc, $0d04
    and $22
    call $1907
    ld [de], a
    inc c
    add hl, de
    ld bc, $0d04
    and $22
    call $1907
    ld [de], a
    inc b
    add hl, de
    ld bc, $0d04
    and $22
    call $1907
    ld [de], a
    inc b
    add hl, de
    ld bc, $2404
    inc c
    inc bc
    di
    ld b, e
    ld c, [hl]
    dec c
    cp b
    ld b, d
    adc a
    ld b, b
    dec c
    and $22
    call $1907
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$0119], sp
    ld [$d30d], sp
    ld b, d
    or e
    ld b, b
    dec c
    and $22
    call $1907
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$0119], sp
    ld [$e60d], sp
    ld [hl+], a
    call $1907
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$0119], sp
    ld [$d30d], sp
    ld b, d
    cp c
    ld b, b
    dec c
    and $22
    call $1907
    nop
    ld [$0119], sp
    ld [$0219], sp
    ld [$0119], sp
    ld [$0213], sp
    ld l, e
    ld b, c
    inc de
    inc bc
    xor c
    ld b, e
    inc d
    dec b
    xor c
    ld b, e
    rrca
    ld b, c
    ld bc, $ac06
    ld b, e
    rrca
    ld b, c
    inc bc
    db $10
    ld c, h
    inc de
    dec d
    cp d
    ld b, e
    db $10
    ld b, c
    dec bc
    inc sp
    ld b, d
    ld b, $6b
    ld b, c
    db $10
    ld b, c
    dec bc
    sbc l
    ld b, l
    ld b, $6b
    ld b, c
    jr z, jr_00e_43d8

    add b
    call Call_000_0f43
    daa
    dec b
    ld b, $e6
    ld b, d
    rrca
    daa
    ld b, $06
    and $42
    dec c
    cpl
    ld b, h
    ld b, $ea

jr_00e_43d8:
    ld b, d
    ld a, [de]
    ld b, c
    rrca
    daa
    nop
    dec bc
    inc sp
    ld b, d
    db $10
    ld b, c
    ld b, $f8
    ld b, d
    ld a, [de]
    ld b, c
    rrca
    daa
    ld [bc], a
    dec bc
    inc sp
    ld b, d
    db $10
    ld b, c
    ld b, $f8
    ld b, d
    call Call_00e_41ed
    call Call_00e_48f9
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_00e_441e

    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    cp $7f
    ret c

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a
    ret


jr_00e_441e:
    ld e, $0e
    ld bc, $488b
    jp Jump_000_0846


    ld a, [bc]
    inc bc
    ld l, a
    ld e, $27
    ld a, [de]
    sub l
    ld [de], a
    ret


    call Call_000_0647
    ld l, $00
    ld e, $2b

jr_00e_4436:
    sub e
    jr c, jr_00e_443c

    inc l
    jr jr_00e_4436

jr_00e_443c:
    ld a, l
    ld e, $27
    ld [de], a
    ret


    db $10
    ld c, h
    inc de
    rra
    add d
    ld b, l
    rrca
    daa
    nop
    dec bc
    inc sp
    ld b, d
    inc bc
    ret c

    ld b, c
    ld c, [hl]
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_1900
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    dec c
    and $22
    call Call_000_1900
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0f02], sp
    daa
    ld bc, $330b
    ld b, d
    inc bc
    ret c

    ld b, c
    ld c, [hl]
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_1900
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    dec c
    and $22
    call Call_000_1900
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0f02], sp
    daa
    ld [bc], a
    dec bc
    inc sp
    ld b, d
    inc bc
    ret c

    ld b, c
    ld c, [hl]
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_1900
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    dec c
    and $22
    call Call_000_1900
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0f02], sp
    daa
    inc bc
    dec bc
    inc sp
    ld b, d
    inc bc
    ret c

    ld b, c
    ld c, [hl]
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_1900
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    dec c
    and $22
    call Call_000_1900
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0602], sp
    ld l, e
    ld b, c
    rrca
    daa
    nop
    dec bc
    sbc l
    ld b, l
    rrca
    daa
    ld bc, $9d0b
    ld b, l
    rrca
    daa
    ld [bc], a
    dec bc
    sbc l
    ld b, l
    rrca
    daa
    inc bc
    dec bc
    sbc l
    ld b, l
    ld b, $6b
    ld b, c
    inc bc
    ld h, h
    ld b, d
    ld c, [hl]
    dec c
    cp b
    ld b, d
    ld [hl], e
    ld b, b
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_1900
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    dec c
    and $22
    call Call_000_1900
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_0d00
    db $d3
    ld b, d
    adc e
    ld b, b
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_1900
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    dec c
    and $22
    call Call_000_1900
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0d02], sp
    and $22
    call Call_000_0c00
    dec c
    ld h, $44
    ld a, [bc]
    dec c
    ld e, a
    ld c, b
    rlca
    nop
    nop
    ld [$ff80], sp
    ld a, [hl+]
    inc b
    inc bc
    ld b, h
    ld c, b
    ld c, [hl]
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0802], sp
    nop
    nop
    ld a, [hl+]
    nop
    add hl, de
    ld de, $0d10
    ld [hl], c
    ld c, b
    ld a, [hl+]
    inc b
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$2a02], sp
    db $fc
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0802], sp
    nop
    nop
    ld a, [hl+]
    nop
    add hl, de
    ld de, $0d10
    ld [hl], c
    ld c, b
    ld a, [hl+]
    db $fc
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$2a02], sp
    inc b
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$2a02], sp
    db $fc
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    dec c
    and $22
    call $1907
    nop
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    ld [$1902], sp
    ld b, $02
    add hl, de
    ld [$0602], sp
    ld l, e
    ld b, c
    call Call_00e_41ed
    call Call_00e_48f9
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $0e
    ld bc, $488b
    jp Jump_000_0846


    call Call_000_0647
    and $01
    ld e, $41
    ld [de], a
    ld l, a
    ld e, $27
    ld a, [de]
    rlca
    add l
    add $01
    ld [de], a
    ret


    push bc
    ld e, $27
    ld a, [de]
    ld e, $cd
    call Call_000_2319
    ld e, $27
    ld a, [de]
    ld h, d
    ld l, $41
    bit 0, [hl]
    jr nz, jr_00e_4887

    inc a
    jr jr_00e_4888

jr_00e_4887:
    dec a

jr_00e_4888:
    ld [de], a
    pop bc
    ret


    rrca
    ld b, c
    ld bc, $a803
    ld c, b
    ld c, [hl]
    inc e
    ld a, [$047c]
    add hl, bc
    inc b
    dec c
    and $22
    call $1907
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, c
    nop
    nop
    call Call_00e_41ed
    ld bc, $4000
    call Call_000_255b
    ld e, $41
    ld a, [de]
    or a
    ret nz

    ld hl, $6b9d
    ld a, $1d
    call Call_000_05cf
    call Call_000_0c71
    ld hl, $6b86
    ld a, $1d
    call Call_000_05cf
    ld h, d
    ld l, $60
    ld [hl], $3f
    ld l, $44
    ld [hl], $18
    ld e, $4c
    ld a, [de]
    cp $0f
    jr c, jr_00e_48ec

    cp $1e
    jr c, jr_00e_48e8

    cp $2d
    jr c, jr_00e_48e4

    xor a
    jr jr_00e_48ee

jr_00e_48e4:
    ld a, $01
    jr jr_00e_48ee

jr_00e_48e8:
    ld a, $02
    jr jr_00e_48ee

jr_00e_48ec:
    ld a, $03

jr_00e_48ee:
    ld h, d
    ld l, $43
    cp [hl]
    ret z

    ld [hl], a
    ld l, $39
    ld [hl], $0c
    ret


Call_00e_48f9:
    ld e, $39
    ld a, [de]
    or a
    ret z

    dec a
    ld [de], a
    ld h, $a0
    ld l, $77
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


    dec c
    inc hl
    ld c, c
    dec c
    dec de
    ld c, c
    inc e
    add l
    ld b, a
    inc bc
    dec c
    ld h, a
    inc hl
    ld d, $26
    and b
    ld l, $77
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld hl, $4ce4
    ld a, $03
    call Call_000_05cf
    ret


    dec c
    pop de
    ld b, c
    rla
    rst $38
    dec c
    rrca
    ld h, c
    nop
    rrca
    ld c, h
    ld bc, $8604
    ld l, b
    dec c
    dec c
    ld sp, hl
    rra
    db $10
    ld e, e
    ld c, $08
    ld d, h
    ld c, c
    adc [hl]
    ld c, c
    adc [hl]
    ld c, c
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    or $4a
    or $4a
    ld l, a
    ld c, h
    ld d, $24
    add hl, sp
    dec c
    rrca
    jr nz, jr_00e_495e

    ld [bc], a
    cp a
    dec c
    pop de

jr_00e_495e:
    rra
    ldh a, [$ffec]
    rlca
    nop
    cp $0d
    sbc a
    ld hl, $40db
    inc bc
    halt
    ld c, c
    ld c, [hl]
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    inc de
    ld [bc], a
    ld b, $6d
    ld c, c
    call Call_00e_4207
    ld h, d
    ld l, $11
    ld e, [hl]
    ld l, $3b
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0cef
    call Call_000_0da4
    ld bc, $40bf
    jp Jump_000_255b


    rrca
    ld c, e
    nop
    rrca
    ld c, d
    jr nz, jr_00e_49a2

    rrca
    jr nz, @+$08

    dec b
    nop
    db $10
    ld e, e
    dec c
    ld h, $44
    ld bc, $d80d

jr_00e_49a2:
    ld c, c
    sbc $40
    inc bc
    ret


    ld c, c
    ld c, [hl]
    rrca
    ld h, $00
    add hl, bc
    ld b, $0d
    ld b, $4a
    ldh [c], a
    ld b, b
    add hl, de
    rrca
    jr nz, jr_00e_49cf

    add hl, hl
    nop
    add hl, de
    db $10
    db $10
    ld a, [bc]
    rlca
    nop
    cp $19
    rrca
    jr nz, jr_00e_49dd

    db $10
    db $10
    ld b, $c0
    ld c, c
    call Call_00e_4207
    call Call_000_1ee6

jr_00e_49cf:
    call Call_000_0da4
    ld bc, $40bf
    jp Jump_000_255b


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a

jr_00e_49dd:
    inc bc
    ld e, $27
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_00e_49e7

    inc h

jr_00e_49e7:
    ld a, [hl+]
    push af
    ld a, [hl]
    ld hl, $db53
    ld e, $07
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [hl]
    adc $00
    ld [de], a
    pop af
    ld hl, $db51
    ld e, $04
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [hl]
    adc $00
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $26
    ld a, [de]
    inc a
    ld [de], a
    dec a
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_00e_4a1b

    inc h

jr_00e_4a1b:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $11
    ld a, [hl+]
    ld [de], a
    ld e, $27
    ld a, [de]
    or a
    ld e, $0f
    jr nz, jr_00e_4a34

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


jr_00e_4a34:
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


    dec c
    rrca
    jr nz, jr_00e_4a4a

    ld b, $3f
    inc b
    ld hl, sp+$70
    inc c

jr_00e_4a4a:
    dec c
    db $dd
    ld c, d
    db $10
    ld e, e
    dec c
    ld h, $44
    inc bc
    dec c
    ret c

    ld c, c
    sbc $40
    ld [hl+], a
    add c
    ld c, d
    ld c, $03
    sub [hl]
    ld c, d
    ld c, [hl]
    rlca
    add b
    cp $29
    ld b, $05
    ld b, b
    rlca
    nop
    nop
    add hl, hl
    nop
    dec b
    jr nz, jr_00e_4a76

    add b
    rst $38
    dec b
    ld b, b
    inc bc
    and l
    ld c, d

jr_00e_4a76:
    ld c, [hl]
    dec c
    push hl
    ld c, d
    ld [bc], a
    dec b
    add b
    rlca
    add b
    rst $38
    nop
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $1910
    nop
    ld [$0119], sp
    ld [$0019], sp
    ld [$0119], sp
    ld [$8106], sp
    ld c, d
    call Call_00e_4207
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $40bf
    jp Jump_000_255b


    call Call_00e_4207
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $40bf
    call Call_000_255b
    call Call_000_203d
    ret nc

    ld e, $0d
    ld hl, $ffa0
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $4e
    inc l
    ld [hl], $4a
    inc l
    ld [hl], $ce
    ret


    call Call_00e_4207
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $40bf
    jp Jump_000_255b


    ld e, $46
    ld hl, $dd5c
    ld a, [hl]
    ld [de], a
    ret


    ld e, $27
    ld a, [de]
    or a
    jr nz, jr_00e_4aee

    ld a, [bc]
    jr jr_00e_4af1

jr_00e_4aee:
    ld a, [bc]
    cpl
    inc a

jr_00e_4af1:
    ld e, $12
    ld [de], a
    inc bc
    ret


    dec c
    rrca
    jr nz, jr_00e_4b02

    ld a, [bc]
    nop
    db $10
    ld e, e
    dec c
    ld h, $44
    dec b

jr_00e_4b02:
    dec c
    ret c

    ld c, c
    sbc $40
    inc bc
    add a
    ld c, e
    ld c, [hl]
    rlca
    add b
    cp $29
    ld b, $19
    dec bc
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$0e19], sp
    ld [$0b19], sp
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$0e19], sp
    ld [$0007], sp
    nop
    add hl, hl
    nop
    add hl, bc
    inc b
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
    ld c, $03
    ld a, [bc]
    rrca
    ld b, b
    nop
    dec c
    pop de
    ld c, e
    dec c
    add hl, de
    ld c, h
    nop
    ld b, c
    add hl, de
    dec bc
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$0e19], sp
    ld [$4d0d], sp
    ld c, h
    ld c, $41
    add hl, de
    dec bc
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$0e19], sp
    ld [$0b19], sp
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$0e19], sp
    ld [$2918], sp
    nop
    ld a, [hl+]
    nop
    add hl, bc
    inc b
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
    ld c, $03
    ld a, [bc]
    ld b, $3f
    ld c, e
    call Call_00e_4207
    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $40cd
    call Call_000_255b
    ld a, [$dd2c]
    bit 1, a
    ret z

    ldh [$ff80], a
    ld bc, $0005
    ld h, $02
    call Call_000_30e0
    ldh a, [$ff80]
    bit 3, a
    jr nz, jr_00e_4bc5

    call Call_000_1ec0
    cpl
    ld [de], a
    ld bc, $4bce
    call Call_000_0faf
    jr z, jr_00e_4bc5

    ld l, $46
    ld e, l
    ld a, [de]
    ld [hl], a
    ld h, d
    jp Jump_000_0bba


jr_00e_4bc5:
    ld h, d
    ld e, $03
    ld bc, $4966
    jp Jump_000_0849


    ld d, $00
    nop
    ld e, $40
    ld a, [de]
    or a
    ret z

    push bc
    ld h, $a0
    ld l, $04
    ld e, l
    ld a, [de]
    sub [hl]
    ld c, a
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
    jr nc, jr_00e_4bef

    ld e, $01

jr_00e_4bef:
    ld a, c
    srl a
    cp b
    jr nc, jr_00e_4c0e

    sla a
    cp b
    jr z, jr_00e_4c06

    jr nc, jr_00e_4c0a

    ld a, b
    sla a
    cp c
    jr c, jr_00e_4c06

    ld a, $03
    jr jr_00e_4c11

jr_00e_4c06:
    ld a, $02
    jr jr_00e_4c11

jr_00e_4c0a:
    ld a, $01
    jr jr_00e_4c11

jr_00e_4c0e:
    xor a
    jr jr_00e_4c14

jr_00e_4c11:
    add e
    add e
    add e

jr_00e_4c14:
    ld e, $27
    ld [de], a
    pop bc
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_00e_4c36

Jump_00e_4c25:
    ld e, $27
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_00e_4c2e

    inc h

jr_00e_4c2e:
    ld e, $11
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


jr_00e_4c36:
    inc a
    ld [de], a
    ld e, $11
    ld a, $fb
    ld [de], a
    ld e, $27
    ld a, [de]
    rrca
    ld e, $12
    jr c, jr_00e_4c49

    ld a, $02
    ld [de], a
    ret


jr_00e_4c49:
    ld a, $fe
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $40
    ld a, [de]
    or a
    jp nz, Jump_00e_4c25

    ld e, $11
    ld a, $03
    ld [de], a
    ld e, $27
    ld a, [de]
    rrca
    ld e, $12
    jr c, jr_00e_4c6b

    ld a, $ff
    ld [de], a
    ret


jr_00e_4c6b:
    ld a, $01
    ld [de], a
    ret


    inc b
    add [hl]
    ld d, h
    ld [$9c0d], sp
    ld c, h
    dec c
    pop de
    rra
    or $fa
    rlca
    nop
    rst $38
    add hl, hl
    jr nz, jr_00e_4c89

    nop
    nop
    dec c
    ld e, a
    jr nz, @-$65

    ld c, h
    ld [hl+], a

jr_00e_4c89:
    and e
    ld c, h
    ld c, $03
    or d
    ld c, h
    ld c, [hl]
    add hl, de
    inc de
    jr jr_00e_4cad

    inc d
    jr jr_00e_4c98

    dec d

jr_00e_4c98:
    nop
    ldh [$ff80], a
    cp $fa
    add e
    and b
    ld e, $46
    ld [de], a
    ret


    dec b
    db $10
    dec c
    xor e
    ld c, h
    ld b, $a3
    ld c, h
    ld e, $11

jr_00e_4cad:
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    call Call_000_1ee6
    call Call_000_21d8
    call Call_000_0da4
    call Call_000_1ab3
    ret z

    ld h, d
    jp Jump_000_0bba


    dec bc
    rlca
    rlca
    dec bc
    inc c
    rra
    db $10
    ccf
    jr nc, jr_00e_4d4c

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
    jr nc, @+$3d

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
    ld a, [$0d06]
    ld a, [$f426]
    inc l
    call z, Call_000_383c
    ld hl, sp-$20
    ldh [rLCDC], a
    ret nz

    add b
    add b
    inc hl
    nop
    add hl, de
    inc bc

Call_00e_4d05:
    inc bc
    dec c
    ld c, $1f
    jr jr_00e_4d2a

    db $10
    cpl
    jr nc, jr_00e_4d8e

    ld h, b
    ld a, a
    ld b, b
    cp a
    pop bc
    cp c
    add $ff
    add b
    ld [hl], a
    ld c, b
    scf
    jr c, jr_00e_4d66

    ld a, [hl]
    inc hl
    ccf
    inc bc
    ld b, l
    ld a, [hl]
    cp e
    call nz, Call_000_0086
    inc c
    ld [bc], a
    ld b, b

jr_00e_4d2a:
    ld h, a
    ld a, b
    ld b, c
    cpl
    jr nc, @+$07

    ccf
    inc sp
    inc e
    rra
    jr jr_00e_4d55

    ld b, c
    ld [$010f], sp
    rlca
    rlca
    adc a
    nop
    ld b, h
    ld b, c
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

jr_00e_4d4c:
    ld a, a
    ld a, $3e
    scf
    nop
    nop
    inc bc
    ld b, c
    inc bc

jr_00e_4d55:
    ld [bc], a
    inc b
    inc bc
    rrca
    rrca
    inc b
    rlca
    ld h, d
    ld [bc], a
    nop
    rlca
    ld b, c
    ld [$410f], sp
    db $10
    rra

jr_00e_4d66:
    ld b, c
    jr nz, @+$41

    dec de
    ld sp, $3e3f
    ccf
    inc e
    rra
    inc h
    ccf
    dec sp
    ccf
    rlca
    rlca
    nop
    nop
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

jr_00e_4d8e:
    ld [hl], c
    rst $18
    ld h, d
    cp $e4
    db $fc
    jr jr_00e_4dae

    and a
    nop
    ld b, h
    ld b, d
    db $fc
    inc d
    ld de, $06fa
    cp $02
    cp $0a
    ld a, [$f406]
    inc c
    call c, $e23c
    cp $42
    ld a, [hl]
    inc a

jr_00e_4dae:
    inc a
    add l
    ld bc, $0900
    cp $0e
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
    dec h
    nop
    rlca
    ldh [$ffe0], a
    ret c

    jr c, @-$02

    inc c
    db $fc
    inc b
    ld b, c
    ld a, [$0306]
    cp $02
    db $fd
    db $db
    ld b, c
    db $fd
    inc bc
    rlca
    db $fd
    inc hl
    ld a, [$ed06]
    rra
    cp $fe
    adc c
    ld bc, $0544
    cp $02
    cp $92
    db $fd
    inc bc
    add a
    ld bc, $0754
    xor $1e
    ld sp, hl
    rst $38
    pop bc
    rst $38
    ld a, $3e
    sub a
    ld bc, $8544
    ld bc, $9978
    nop
    sbc [hl]
    inc b
    sbc h
    sbc h
    ld [hl], e
    rst $38
    ld de, $ff43
    nop
    ld a, [bc]
    rst $38
    inc e
    rst $38
    nop
    rst $38
    ld bc, $1fff
    pop hl
    ld l, h
    sub e
    ld b, c
    call z, Call_000_0b33
    call c, $ff23
    nop
    ld a, a
    add b
    rra
    ldh [rIE], a
    rst $38
    and l
    and l
    adc e
    ld bc, $01c0
    ccf
    pop bc
    add a
    ld bc, $83d0
    ld bc, $83d6
    ld bc, $01dc
    nop
    nop
    adc a
    ld bc, $413e
    cp $02
    dec c
    db $fd
    db $db
    rst $38
    ld bc, $31ff
    db $fd
    inc bc
    rst $30
    rrca
    cp $fe
    nop
    nop
    sub l
    nop
    ld b, b
    rlca
    rst $18
    ldh [$ff7f], a
    ld [hl], b
    ld c, e
    ld a, h
    ccf
    ccf
    adc c
    ld bc, $03c0
    ccf
    jp $13ec


    add a

jr_00e_4e6a:
    ld bc, $01f0
    rst $38
    nop
    add a
    ld bc, $03fa
    db $10
    ldh a, [rSVBK]
    ldh a, [rSTAT]
    ldh a, [$ffd0]
    rlca
    ld hl, sp+$38
    adc b
    ld hl, sp-$38
    jr c, jr_00e_4e6a

    jr @+$43

    sub h
    ld l, h
    rlca
    call nc, $f42c
    inc c
    ld hl, sp+$08
    ldh a, [rNR10]
    and e
    nop
    call c, Call_000_0091
    ret nz

    dec c

jr_00e_4e96:
    ld [hl-], a
    ccf
    ccf
    ld a, $1d
    ld e, $19
    ld e, $28
    ccf
    ld [hl], $3f
    rrca
    rrca
    scf
    nop
    dec b
    ld h, b
    ld h, b
    and b
    ldh [rNR41], a

jr_00e_4eac:
    ldh [$ffa5], a
    nop
    call nz, $1000
    ld [hl+], a
    ldh a, [rSB]
    ld [$83f8], sp
    ld [bc], a
    ld l, d
    ld bc, $5ca4
    ld b, c
    sub h
    ld l, h
    rlca
    ret c

    jr z, jr_00e_4eac

    jr jr_00e_4e96

    jr nc, @+$62

    ldh [$ff83], a
    nop
    ld a, $42
    db $10
    ldh a, [rSB]
    ld hl, sp-$08
    add e
    ld [bc], a
    ret z

    rrca
    db $ec
    inc e
    sub h
    ld l, h
    sbc h
    ld h, h
    call c, $f824
    ld [$18e8], sp
    or b
    ld [hl], b
    ret nz

    ret nz

    adc [hl]
    ld bc, $0440

jr_00e_4eea:
    ld d, [hl]
    cp $52
    db $fd
    ld d, e
    sub c
    ld bc, $9490
    nop
    jr nz, @+$09

    inc c
    ret z

    jr c, jr_00e_4eea

    ldh a, [$ff50]
    ldh a, [$ffe0]
    add [hl]
    ld [bc], a
    cp a
    rlca
    ret c

    ld hl, sp+$08
    ld hl, sp-$18
    sbc b
    or h
    ld c, h
    add e
    ld [bc], a
    ldh a, [rTIMA]
    db $fc

jr_00e_4f0f:
    inc b
    ld hl, sp+$08
    ldh a, [$ff30]
    add l
    ld [bc], a
    ld a, [$0283]
    ld a, [hl]
    ld bc, $0706
    add e
    nop
    ret z

    ld bc, $3f20
    ld b, c
    ld b, b
    ld a, a
    ld [$7e63], sp
    ld a, a
    ld a, h
    dec sp
    inc a
    ld sp, $3c3e
    sub [hl]
    ld [bc], a
    sbc l
    inc hl
    ld bc, $03d1
    sub c
    inc de
    sbc b
    sbc b
    ld h, h
    db $fc
    jp c, $feb6

    ld d, d
    db $ed
    ld e, e
    rst $28
    add hl, de
    rst $28
    sbc b
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    ret nz

    ld b, d
    rst $38
    nop
    nop
    rst $38
    sub $02
    or h
    add hl, bc
    scf
    jr c, jr_00e_4fb8

    ld h, d
    cp a
    pop bc
    rst $38
    add c
    ld [hl], c
    adc [hl]
    add h
    ld bc, $06f4
    add h
    rst $28
    sbc a
    ld a, a
    ld [hl], b
    cpl
    jr nc, jr_00e_4f0f

    ld [bc], a
    sub $01
    dec bc
    inc c
    ld b, c
    rrca
    ld [$00a3], sp
    inc h
    dec b
    rra
    db $10
    rla
    add hl, de
    ld c, $0e
    add a
    ld [bc], a
    ld h, b
    nop
    add sp, -$7c
    ld [bc], a
    ld l, c
    ld bc, $7888
    adc e
    ld [bc], a
    ldh a, [$ffe4]
    inc hl
    nop
    add hl, bc
    jr nc, @+$01

    inc e
    rst $38
    ld a, [hl]
    rst $30
    ld a, $f7
    ld a, [hl]
    ld sp, hl
    add e
    ld bc, $01ca
    ld a, a
    add b
    adc c
    ld [bc], a
    ld c, [hl]
    inc bc
    ld a, [hl]
    add c
    rst $38
    rst $38
    sub b
    nop
    ld b, d
    nop
    ret nz

    adc a
    nop
    sub b
    and a
    ld bc, HeaderNewLicenseeCode
    ccf
    jr nz, @+$43

    ld a, a

jr_00e_4fb8:
    ld b, b
    rrca
    ld a, a
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
    jr nc, jr_00e_4ffa

    and e
    ld bc, $9540
    nop
    nop
    inc bc
    dec de
    inc e
    rla
    rra
    add e
    nop
    ld a, h
    add e
    nop
    nop
    inc bc
    ccf
    jr nc, jr_00e_5056

    ld c, b
    add e
    nop
    ld a, [bc]
    inc bc
    cp a
    ret nz

    sbc a
    ldh [$ff83], a
    nop
    ld l, [hl]
    dec bc
    ccf
    jr nc, @+$59

    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $35
    nop

jr_00e_4ffa:
    add hl, bc
    ccf
    ccf
    ret nz

    rst $38
    ret nz

    ccf
    add b
    ld a, a
    ld b, $fd
    adc a

jr_00e_5006:
    inc b
    nop
    ld bc, $7888
    ld b, c
    ret nc

    jr nc, jr_00e_5010

    and b

jr_00e_5010:
    ld h, b
    add a
    inc bc
    ld e, b
    add e
    ld [bc], a
    ld h, b
    rrca
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
    call nc, $8b2c
    ld [bc], a
    db $f4
    inc bc
    ld d, $fe
    ld [hl], d
    cp $41
    ldh a, [c]
    sbc $03
    db $f4
    inc a
    adc h
    db $fc
    add e
    ld [bc], a
    ld l, h
    inc bc
    sbc b
    ld l, b
    ret c

    jr z, jr_00e_5006

    ld [bc], a
    jp Jump_000_0285


    ld a, [$0405]
    rlca
    ld a, $3f
    ld b, d
    ld a, a
    call nz, Call_000_0f00
    db $10
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]

jr_00e_5056:
    ld h, b
    ld a, a
    jr nz, jr_00e_5099

    ld hl, $113e
    ld e, $28
    ccf
    ld a, $3f
    add e
    inc bc
    sub h
    inc bc
    db $f4
    rst $28
    db $f4
    rst $08
    ld b, c
    ld a, [$0487]
    ld hl, sp-$79
    ld [hl], b
    ld c, a
    jr nc, jr_00e_50b6

    ccf
    jr nz, @+$0a

    ccf
    ld hl, $513e
    ld a, [hl]
    ld a, b
    ld a, a
    ld e, $1f
    cp c
    inc b
    ld a, [de]
    dec bc
    pop bc
    pop bc
    ld [hl-], a
    ldh a, [c]
    call z, $c3bc
    rst $38
    ld [bc], a
    cp $fe
    ld [bc], a
    add e
    inc bc
    ld d, d
    inc bc
    ld hl, sp-$78
    db $fc
    add h
    and [hl]

jr_00e_5099:
    inc b

jr_00e_509a:
    adc b
    add hl, bc
    ld [bc], a
    db $fd
    rlca
    pop af
    rrca
    and d
    ld a, [hl]
    call z, Call_000_30fc
    jp c, Jump_00e_4004

    add hl, bc
    add b
    add b
    ld a, b
    ld hl, sp+$38
    ret z

    jr jr_00e_509a

    inc [hl]
    call c, $05b9

jr_00e_50b6:
    sbc $23
    ld bc, $00c4
    cp h
    nop
    ld [bc], a
    ld b, c
    inc b
    rlca
    inc bc
    dec b
    ld b, $09
    ld c, $83
    inc bc
    ldh a, [$ff03]
    dec bc
    inc c
    rlca
    inc b
    xor c
    dec b
    ld d, $05
    nop
    nop
    ld [bc], a
    inc bc
    rlca
    inc b
    ld b, c
    inc b
    rlca
    ld bc, $0e09
    add e
    ld b, $2a
    xor e
    dec b
    ld d, h
    add l
    nop
    or d
    adc a
    ld b, $22
    dec b
    dec b
    ld b, $03
    inc bc
    ld bc, $2501
    nop
    ldh a, [rNR42]
    dec b
    call c, $0404
    db $fc
    ld [bc], a
    inc bc
    inc b
    and [hl]
    ld [bc], a
    cp e
    ld bc, $0e09
    ld b, c
    rrca
    ld [$090d], sp
    ld c, $04
    rlca
    ld a, [bc]
    rrca
    ld [$110f], sp
    rra
    ld [de], a
    ld e, $0c
    inc c
    add e
    ld b, $5e
    xor d
    ld [bc], a
    cp h
    ld [$0908], sp
    ld c, $08
    rrca
    inc b
    rlca
    inc bc
    inc bc
    sub l
    inc b
    ld [hl], $01
    ld a, a
    add c
    sub c
    ld bc, $9dee
    inc b
    ldh [rNR13], a
    nop
    rst $38
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
    jr @+$01

    nop
    add a
    ld bc, $c7f4
    inc bc
    push bc
    inc bc
    ld b, $ff
    ret nz

    ccf
    adc a
    rlca
    ld h, $00
    rst $38
    adc c
    inc bc
    cp [hl]
    rlca
    rst $38
    add $3f
    ld hl, sp+$07
    rst $38
    nop
    db $fd
    ld b, c
    ld [bc], a
    rst $38
    ld [bc], a
    ld [de], a
    rst $38
    inc c
    add h
    rlca
    inc [hl]
    nop
    rst $38
    dec a
    nop
    dec b
    inc a
    inc a
    ld a, e
    ld b, a
    ld hl, sp-$39
    ld b, d
    nop
    rst $38
    add hl, bc
    pop hl
    ld e, $7f
    add b
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    inc b
    xor c
    inc bc
    or [hl]
    inc bc
    ld a, a
    add b
    sbc a
    ldh [$ffa7], a
    ld [bc], a
    ld e, $01
    add b
    ld a, a
    jp $fd04


    dec b
    ccf
    ret nz

    ld a, a
    add d
    rst $38
    ld bc, $0185
    db $f4
    dec b
    ccf
    ret nz

    rra
    ldh [$ffc1], a
    rst $38
    add a
    rlca
    cp b
    ld b, $f0
    ldh a, [$fff8]
    ld [$46be], sp
    ld bc, $07c5
    or b
    nop
    db $fc
    ld b, c
    rlca
    ld sp, hl
    inc bc
    rlca
    ld hl, sp-$3d
    db $fc
    ld b, d
    ret nz

    ccf
    nop
    ret nz

    sub d
    inc bc
    cp h
    add hl, de
    jr jr_00e_51e2

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, jr_00e_5208

    inc [hl]
    db $fc
    call z, $3cf4
    call nz, $06fa
    or $0a

jr_00e_51e2:
    ld b, c
    cp $12
    ld bc, $0efe
    add e
    dec b
    ret nz

    inc bc
    db $fc
    inc b
    ld hl, sp+$18
    rst $00
    ld bc, $0745
    inc b
    db $fc
    inc a
    db $f4
    db $fc
    call nz, $c63a
    adc e
    ld [$8928], sp
    ld [$1136], sp
    nop
    nop
    inc c
    db $f4
    inc a

jr_00e_5208:
    db $f4

Jump_00e_5209:
    ld a, [$3ec6]
    jp nz, Jump_000_12ee

    cp $22
    cp $26
    cp $1a
    adc c
    ld [$9452], sp
    rlca
    jp c, $f800

    sub l
    rlca
    ldh a, [$ffa3]
    ld b, $1c
    and e
    ld b, $46
    ld bc, $30d0
    ld b, c
    ret z

    jr c, jr_00e_523e

    sbc h
    ld a, h
    ld a, [hl-]
    and $5e
    ldh [c], a
    ld [hl], h
    call z, $e25e
    ld a, [hl-]
    and $1e
    ldh [c], a
    db $fc
    inc b
    ld a, b

jr_00e_523e:
    adc b
    ld b, c
    ld hl, sp+$48
    ld bc, $8cf4
    ld b, c
    db $fc
    inc b
    ld bc, $0cf4
    add e
    inc bc
    ld d, h
    adc a
    inc b
    ld a, [de]
    adc b
    ld [$02a6], sp
    or b
    ret z

    cp b
    adc l
    ld [$c4b2], sp
    ld b, $77
    ld [bc], a
    ld [bc], a
    inc c
    rrca
    jp $ed03


    inc bc
    ld b, b
    ld a, a
    ld h, b
    ld e, a
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
    call nz, Call_000_1409
    ld c, $9f
    ld h, b
    ld e, a
    ld b, b
    ld a, a
    jr nc, jr_00e_52b0

    jr jr_00e_529a

    inc c
    rrca
    inc bc
    ld [bc], a
    ld bc, $d201
    ld b, $85
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    add l
    add hl, bc
    ld b, $03
    ld [hl], b
    ld c, a
    ld b, b
    ld a, a
    add e
    add hl, bc

jr_00e_529a:
    ld [de], a
    nop
    ldh [c], a
    add [hl]
    add hl, bc
    dec d
    call nz, Call_00e_5409
    ld a, [bc]
    sbc a
    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    jr c, @+$29

    jr jr_00e_52cc

    rlca
    inc b
    sbc c

jr_00e_52b0:
    add hl, bc
    inc l
    dec c
    inc b
    rlca
    jr @+$21

    jr c, jr_00e_52e0

    ld [hl], b
    ld c, a
    ld h, b
    ld e, a
    add c
    rst $38
    db $e3
    sbc [hl]
    adc c
    add hl, bc
    ld d, h
    dec b
    db $e3
    sbc [hl]
    add c
    rst $38
    ld [hl], b
    ld c, a
    add [hl]

jr_00e_52cc:
    add hl, bc
    ld h, h
    nop
    ld b, $93
    ld b, $74
    add e
    rlca
    ldh [rSB], a
    cp h
    ld b, h
    add a
    rlca
    xor e
    ld bc, $e51e
    ld b, c

jr_00e_52e0:
    ld [$01f7], sp
    ret nz

    rst $38
    add [hl]
    rlca
    or $45
    rst $38
    nop
    ld [$01ff], sp
    rst $38
    cp [hl]
    ld b, [hl]
    ld hl, sp+$08
    ldh a, [$fff0]
    sbc e
    add hl, bc
    or d
    dec b
    nop
    rst $38
    inc bc
    db $fd
    nop
    rst $38
    ldh a, [$ff2b]
    add hl, bc
    call nc, $e005
    ldh [$fff0], a
    db $10
    ld a, h
    adc h
    adc e
    ld a, [bc]
    ld b, $03
    add b
    rst $38
    ret nz

    ld a, a
    add [hl]
    rlca
    or $01
    ld a, a
    add b
    adc d
    add hl, bc
    pop hl
    inc bc
    ld a, [hl]
    add [hl]
    ld hl, sp+$18
    jp Jump_00e_410a


    sbc l
    ld a, [bc]
    ld [hl-], a
    ld bc, $f907
    add l
    ld a, [bc]
    ld d, d
    ld b, c
    pop bc
    ccf
    nop
    pop bc
    adc l
    ld a, [bc]
    ld e, l
    ld [bc], a
    adc [hl]

jr_00e_5336:
    ldh a, [$fff0]
    db $db
    inc b
    dec [hl]
    inc bc
    jr c, jr_00e_5336

    inc [hl]
    db $ec
    ld b, c
    ld a, h
    call nz, $f801
    adc b
    ld b, h
    ldh a, [$ff90]
    ld bc, $88f8

jr_00e_534c:
    ld b, c
    ld a, h
    call nz, $3404
    db $ec
    jr c, jr_00e_534c

    ld b, b
    cp [hl]
    ld b, $73
    rst $00
    dec b
    ld e, e
    dec b
    adc b
    ld a, b
    ld [$1cf8], sp
    db $fc
    adc c
    ld [$07b6], sp
    inc e
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [$fff0], a
    dec hl
    ld a, [bc]
    add sp, $0d
    inc a
    db $fc
    ld e, d
    and $fe
    add d
    db $ec

jr_00e_537a:
    sbc h
    cp $82
    ld e, d
    and $3c
    db $fc
    ldh a, [rNR44]
    dec bc
    inc h
    adc c
    dec bc
    ld b, $13
    ret z

    jr c, @+$0a

    ld hl, sp+$7c
    db $fc
    cp d
    add $fe
    ld [bc], a
    call c, $fe3c
    ld [bc], a
    cp d
    add $7c
    db $fc
    ld [$a3f8], sp
    ld b, $d0
    ld bc, $c0c0

jr_00e_53a3:
    ldh a, [rNR42]
    inc b
    ld a, [hl+]
    adc e
    ld b, $ec
    and e
    rlca
    ld [hl], $90
    inc b
    inc a
    ld [bc], a
    ldh [$ff7f], a
    add b
    adc l
    ld bc, $9bee
    dec bc
    sbc $9d
    rlca
    ld [hl], b
    add l
    ld [$01a6], sp
    jr nz, jr_00e_53a3

    sbc e
    inc c
    jr nz, @+$05

    inc l
    db $ec
    ld a, $fe
    sbc e
    nop
    and b
    inc bc
    ld [hl], d
    ld [hl], e
    rst $38
    rst $38
    add a
    inc bc
    ld h, b
    adc c
    inc bc
    ld h, [hl]
    inc b
    ld a, l
    ld a, [hl]
    ld a, c
    ld a, [hl]
    jr c, jr_00e_537a

    ld [bc], a
    sbc e
    dec c
    ld bc, $0701
    ld b, $0f
    ld [$101f], sp
    ccf
    cpl
    ld [hl], b
    ld [hl], b
    ld b, b
    ld b, b
    xor b
    add hl, bc
    ld a, [hl-]
    ld [hl+], a
    ret nz

    inc bc
    ldh a, [$ffb0]
    ld a, a
    ld c, a
    and e
    ld [$c530], sp
    inc bc
    ld l, c
    adc c
    add hl, bc
    xor d
    dec bc
    jr jr_00e_541f

    inc h
    inc a

Call_00e_5409:
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld b, d
    cp l
    jp $81ff


    ld b, e
    rst $38
    nop
    add [hl]
    inc bc
    cp b
    cp h
    ld b, $7b
    add e
    add hl, bc
    ld [bc], a
    sbc a
    inc b

jr_00e_541f:
    ld h, b
    sub a
    ld bc, $a342
    inc b
    adc h
    inc bc
    jp hl


    rra
    cp $fe
    sub c
    nop
    ld b, d
    ld bc, $c2bd
    ld b, c
    cp a
    ret nz

    rlca
    ld e, a
    ld h, h
    ld a, e
    ld a, h
    ld b, h
    ld a, a
    ccf
    ccf
    or d
    inc c
    xor b
    and [hl]
    inc b
    add a
    ld b, c
    rst $38
    ld bc, $ff00
    sub b
    ld b, $75
    ld bc, $7e7e
    adc d
    inc c
    xor $00
    ret nz

jr_00e_5453:
    rst $00
    nop
    pop de
    and h
    dec c
    sub b
    ld [bc], a
    jr nz, @+$01

    ret nz

jr_00e_545d:
    rst $08
    inc c
    cp $01
    ld a, [hl]
    ld a, [hl]
    and e
    inc bc
    call nc, $fe05
    ld [bc], a
    ld a, [$fc06]
    inc b
    or l
    inc bc
    ld [$0188], a
    cp l
    inc b
    jr jr_00e_545d

    ld h, [hl]
    add c
    add c
    db $d3
    rlca
    add a
    inc hl
    rst $38
    push bc
    ld c, $25
    jp nc, Jump_000_120d

    ldh a, [rNR41]
    inc c
    di
    ld bc, $0704
    adc c
    nop
    call nz, Call_000_1f03
    db $10
    ld de, $cf1e
    inc c
    cp c
    inc bc
    add b
    ld a, a
    ld [hl], b
    adc a
    add h
    rlca
    call nz, $8402
    rst $38
    inc bc
    add a
    rlca
    call z, Call_000_0f01
    ldh a, [$ff89]
    rlca
    ld d, [hl]
    ld bc, $e21e
    adc a
    dec b
    jp nz, Jump_000_0885

    ld d, d
    add e
    inc b
    jr c, jr_00e_5453

    dec bc
    call c, $0187
    ret c

    sub e
    ld [bc], a
    ld h, b
    adc e
    ld [bc], a
    call nc, Call_000_28ff
    ld d, l
    ld sp, $3a55
    ld d, l
    ld b, e
    ld d, l
    ld c, h
    ld d, l
    ld d, l
    ld d, l
    ld e, [hl]
    ld d, l
    ld h, a
    ld d, l
    ld [hl], b
    ld d, l
    ld a, c
    ld d, l
    sub d
    ld d, l
    xor e
    ld d, l
    call nz, $dd55
    ld d, l
    or $55
    rrca
    ld d, [hl]
    jr z, jr_00e_553c

    ld b, c
    ld d, [hl]
    ld e, d
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    adc h
    ld d, [hl]
    and l
    ld d, [hl]
    cp [hl]
    ld d, [hl]
    rst $10
    ld d, [hl]
    ldh a, [rRP]
    add hl, bc
    ld d, a
    ld [hl+], a
    ld d, a
    dec sp
    ld d, a
    ld d, h
    ld d, a
    ld l, l
    ld d, a
    add [hl]
    ld d, a
    sbc a
    ld d, a
    cp b
    ld d, a
    pop de
    ld d, a
    ldh [c], a
    ld d, a
    di
    ld d, a
    inc b
    ld e, b
    dec c
    ld e, b
    ld d, $58
    cpl
    ld e, b
    ld c, b
    ld e, b
    ld h, c
    ld e, b
    ld h, [hl]
    ld e, b
    ld l, e
    ld e, b
    sub h
    ld e, b
    cp l
    ld e, b
    and $58
    rrca
    ld e, c
    jr z, jr_00e_557f

    ld b, c
    ld e, c
    ld [bc], a
    ld hl, sp-$08
    call nc, $f820
    nop

jr_00e_552f:
    sub $21
    ld [bc], a
    ld hl, sp+$00
    inc b
    jr nz, jr_00e_552f

    ld hl, sp+$14
    ld hl, $f802

jr_00e_553c:
    ld hl, sp+$20
    jr nz, @-$06

    nop

jr_00e_5541:
    ld [hl+], a
    ld hl, $f802
    ld hl, sp+$16
    jr nz, jr_00e_5541

    nop
    jp nc, Jump_000_0221

    ld hl, sp+$00
    ld [$f820], sp
    ld hl, sp+$18
    ld hl, $f802
    ld hl, sp+$30
    jr nz, @-$06

    nop

jr_00e_555c:
    ld b, [hl]
    ld hl, $f802
    ld hl, sp+$12
    jr nz, jr_00e_555c

    nop

jr_00e_5565:
    ld c, h
    ld hl, $f802
    ld hl, sp+$32
    jr nz, jr_00e_5565

    nop

jr_00e_556e:
    ld c, d
    ld hl, $f802
    ld hl, sp+$10
    jr nz, jr_00e_556e

    nop
    ld c, b
    ld hl, $e906
    db $f4
    ld a, [bc]
    nop
    jp hl


jr_00e_557f:
    db $fc
    ld a, [de]
    nop
    jp hl


    inc b
    ld a, [hl+]
    nop
    ld sp, hl
    db $f4
    inc c
    nop
    ld sp, hl
    db $fc
    inc e
    nop
    ld sp, hl
    inc b
    inc l
    ld bc, $ea06
    db $f4
    ld a, [bc]
    nop
    ld [$1afc], a
    nop
    ld [$2a04], a
    nop
    ld a, [$1efc]
    nop
    ld a, [$2e04]
    nop
    ld a, [$c8f4]
    ld bc, $fb06
    db $fc
    inc h
    nop
    ei
    inc b
    inc [hl]
    nop
    db $eb
    db $f4
    ld a, [bc]
    nop
    db $eb
    db $fc
    ld a, [de]
    nop
    db $eb
    inc b
    ld a, [hl+]
    nop
    ei
    db $f4
    ld [hl], $01
    ld b, $ea
    push af
    ld a, [bc]
    nop
    ld [$1afd], a
    nop
    ld [$2a05], a
    nop
    ld a, [$c8f5]
    nop
    ld a, [$6efd]
    nop
    ld a, [$4005]
    ld bc, $e806
    db $f4
    ld a, [bc]
    nop
    add sp, -$04
    ld a, [de]
    nop
    add sp, $04
    ld a, [hl+]
    nop
    ld hl, sp-$0c
    inc c
    nop
    ld hl, sp-$04
    db $ec
    nop
    ld hl, sp+$04
    xor $01
    ld b, $f7
    inc b
    ld h, $00
    rst $30
    db $f4
    jr z, jr_00e_55ff

jr_00e_55ff:
    rst $20
    db $f4
    ld a, [bc]
    nop
    rst $20
    db $fc
    ld a, [de]
    nop
    rst $20
    inc b
    jp nz, $f700

    db $fc
    ret nz

    ld bc, $f806
    inc b
    ld d, d
    nop
    ld hl, sp-$0c
    ld d, [hl]
    nop
    add sp, -$0c
    ld a, [bc]
    nop
    add sp, -$04
    ld a, [de]
    nop
    add sp, $04
    jp nz, $f800

    db $fc
    cp [hl]
    ld bc, $f906
    db $fc
    ld b, h
    nop
    ld sp, hl
    inc b
    ld d, h
    nop
    jp hl


jr_00e_5632:
    db $fc
    ld a, [de]
    nop
    ld sp, hl
    db $f4
    ld e, b
    nop
    jp hl


    inc b
    call nz, $e900
    db $f4
    add $01
    ld b, $eb
    dec b
    ld h, b
    jr nz, jr_00e_5632

    db $fd
    ld [hl], b
    jr nz, @-$03

    dec b
    ld h, d
    jr nz, @-$03

    db $fd
    ld [hl], d
    jr nz, @-$03

    push af

jr_00e_5654:
    add d
    jr nz, @-$13

    push af

jr_00e_5658:
    ld l, b
    ld hl, $fc06

jr_00e_565c:
    dec b
    ld h, h
    jr nz, jr_00e_565c

jr_00e_5660:
    db $fd
    ld [hl], h
    jr nz, jr_00e_5660

    push af
    add h
    jr nz, jr_00e_5654

    dec b
    ld h, b
    jr nz, jr_00e_5658

    db $fd
    ld [hl], b

jr_00e_566e:
    jr nz, jr_00e_565c

    push af
    ld l, b

jr_00e_5672:
    ld hl, $fd06
    dec b

jr_00e_5676:
    ld h, [hl]
    jr nz, jr_00e_5676

    db $fd

jr_00e_567a:
    halt
    jr nz, jr_00e_567a

    push af
    add [hl]
    jr nz, jr_00e_566e

    dec b
    ld h, b
    jr nz, jr_00e_5672

    db $fd
    ld [hl], b
    jr nz, jr_00e_5676

    push af
    ld l, b
    ld hl, $ea06
    dec b
    ld h, b

jr_00e_5690:
    jr nz, @-$04

    dec b
    ld h, d

jr_00e_5694:
    jr nz, jr_00e_5690

    db $fd
    ld [hl], d
    jr nz, jr_00e_5694

    push af
    add d
    jr nz, @-$14

    db $fd
    ld c, [hl]
    jr nz, @-$14

jr_00e_56a2:
    push af
    ld e, [hl]
    ld hl, $eb06
    dec b
    ld h, b
    jr nz, @-$03

    dec b
    ld h, d
    jr nz, @-$03

    db $fd
    ld [hl], d
    jr nz, @-$03

    push af
    add d
    jr nz, jr_00e_56a2

    db $fd
    ld c, [hl]
    jr nz, @-$13

    push af
    ld e, [hl]
    ld hl, $eb06
    ldh a, [c]
    ld h, b
    nop
    ei
    ldh a, [c]
    ld h, d
    nop
    ei
    ld a, [$0072]
    ei
    ld [bc], a
    add d
    nop
    db $eb
    ld a, [$004e]
    db $eb
    ld [bc], a
    ld e, [hl]
    ld bc, $e906
    inc bc
    ld e, d
    nop
    ld sp, hl
    inc bc
    ld e, h
    nop
    jp hl


    ei
    ld a, b
    nop
    ld sp, hl
    di
    ld l, d
    nop
    ld sp, hl
    ei
    ld a, d
    nop
    jp hl


    di
    ret nc

    ld bc, $fb06
    ldh a, [c]
    ld l, h
    nop
    ei
    ld a, [$007c]
    ei
    ld [bc], a
    adc h
    nop
    db $eb
    ld [bc], a
    ld e, d
    nop
    db $eb
    ld a, [$0078]
    db $eb
    ldh a, [c]
    ret nc

    ld bc, $f206
    db $f4
    sub b
    nop
    ldh a, [c]
    db $fc
    and b
    nop
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
    ld bc, $f306
    db $f4
    sub h
    nop
    di
    db $fc
    and h
    nop
    di
    inc b
    or h
    nop
    inc bc
    db $f4
    sub [hl]
    nop
    inc bc
    db $fc
    and [hl]
    nop
    inc bc
    inc b
    or [hl]
    ld bc, $f406
    db $f4
    sbc b
    nop
    db $f4
    db $fc
    xor b
    nop
    db $f4
    inc b
    cp b
    nop
    inc b
    db $f4
    sbc d
    nop
    inc b
    db $fc
    xor d
    nop
    inc b
    inc b
    cp d
    ld bc, $ef06
    db $f4
    sub b
    nop
    rst $38
    db $f4
    sub d
    nop
    rst $38
    db $fc
    and d
    nop
    rst $38
    inc b
    or d
    nop
    rst $28
    db $fc
    adc b
    nop
    rst $28
    inc b
    adc d
    ld bc, $f106
    db $f4
    sbc b
    nop
    pop af
    db $fc
    xor b
    nop
    pop af
    inc b
    cp b
    nop
    ld bc, $9af4
    nop
    ld bc, $aafc
    nop
    ld bc, $ba04
    ld bc, $ef06
    db $fc
    sbc h
    nop
    rst $28
    inc b
    xor h
    nop
    rst $38
    db $fc
    sbc [hl]
    nop
    rst $38
    inc b
    xor [hl]
    nop
    rst $28
    db $f4
    sub b
    nop
    rst $38
    db $f4
    sub d
    ld bc, $f006
    db $fc
    sbc h
    nop
    ldh a, [rDIV]
    xor h
    nop
    nop
    db $fc
    sbc [hl]
    nop
    nop
    inc b
    xor [hl]
    nop
    ldh a, [$fff4]
    sub b
    nop
    nop
    db $f4
    sub d
    ld bc, $eb06
    db $f4
    inc a
    nop
    ei
    db $f4
    ld a, $00
    di
    db $fc
    ld a, [hl-]
    nop
    di
    db $ec
    jr c, jr_00e_57c9

jr_00e_57c9:
    inc bc
    db $fc
    ldh [rP1], a
    ei
    inc b
    sbc $01
    inc b
    di
    db $fc
    adc $00
    inc bc
    db $fc
    ldh [rP1], a
    ei
    inc b
    sbc $00
    ei
    db $f4
    sbc $21
    inc b
    db $f4
    ei
    adc $00
    inc b
    ei
    ldh [rP1], a
    db $fc
    inc bc
    sbc $00
    db $fc
    di
    sbc $21
    inc b
    ldh a, [c]
    db $fd
    adc $00
    ld [bc], a
    db $fd
    ldh [rP1], a
    ld a, [$de05]
    nop
    ld a, [$def5]
    ld hl, $f802
    ld hl, sp+$02
    jr nz, @-$06

    nop

jr_00e_580b:
    nop
    ld hl, $f802
    ld hl, sp+$0e
    jr nz, jr_00e_580b

    nop
    ld b, $21
    ld b, $ef
    db $f4
    sub b
    nop
    rst $38
    db $f4
    sub d
    nop
    rst $38
    db $fc
    and d
    nop
    rst $38
    inc b
    or d
    nop
    rst $28
    db $fc
    ld a, [hl]
    nop
    rst $28
    inc b
    adc [hl]
    ld bc, $f106
    db $f4
    sbc b
    nop
    pop af
    db $fc
    xor b
    nop
    pop af
    inc b
    cp b
    nop
    ld bc, $9af4
    nop
    ld bc, $aafc
    nop
    ld bc, $ba04
    ld bc, $ec06
    db $f4
    jp z, $ec00

    db $fc
    jp c, $fc00

    db $f4
    call z, $fc00
    db $fc
    call c, $f000
    inc b
    ret c

    nop
    nop
    inc b
    ret c

    ld b, c
    ld bc, $fcf4
    add b
    ld bc, $f401
    db $fc
    add b
    ld hl, $010a
    ld [$80e2], sp
    ld bc, $e210
    add b
    ld bc, $e218
    add b
    ld bc, $e220
    add b
    ld bc, $e228
    add b
    ld bc, $e230
    add b
    ld bc, $e238
    add b
    ld bc, $e240
    add b
    ld bc, $e248
    add b
    ld bc, $e200
    add c
    ld a, [bc]
    ld bc, $e408
    add b
    ld bc, $e410
    add b
    ld bc, $e418
    add b
    ld bc, $e420
    add b
    ld bc, $e428
    add b
    ld bc, $e430
    add b
    ld bc, $e438
    add b
    ld bc, $e440
    add b
    ld bc, $e448
    add b
    ld bc, $e400
    add c
    ld a, [bc]
    or $08
    db $e4
    ret nz

    or $10
    db $e4
    ret nz

    or $18
    db $e4
    ret nz

    or $20
    db $e4
    ret nz

    or $30
    db $e4
    ret nz

    or $38
    db $e4
    ret nz

    or $40
    db $e4
    ret nz

    or $48
    db $e4
    ret nz

    or $00
    db $e4
    ret nz

    or $28
    db $e4
    pop bc
    ld a, [bc]
    or $08
    ldh [c], a
    ret nz

    or $10
    ldh [c], a
    ret nz

    or $18
    ldh [c], a
    ret nz

    or $20
    ldh [c], a
    ret nz

    or $30
    ldh [c], a
    ret nz

    or $38
    ldh [c], a
    ret nz

    or $40
    ldh [c], a
    ret nz

    or $28
    ldh [c], a
    ret nz

    or $48
    ldh [c], a
    ret nz

    or $00
    ldh [c], a
    pop bc
    ld b, $ec
    ld bc, $005a
    db $ec
    ld sp, hl
    ld a, b
    nop
    db $ec
    pop af
    ret nc

    nop
    db $fc
    pop af
    and $00
    db $fc
    ld sp, hl
    add sp, $00
    db $fc
    ld bc, $01ea
    ld b, $eb
    push af
    inc a
    nop
    ei
    push af
    ld a, $00
    di
    db $fd
    ld a, [hl-]
    nop
    di
    db $ed
    jr c, jr_00e_5939

jr_00e_5939:
    inc bc
    db $fd
    ldh [rP1], a
    ei
    dec b
    sbc $01
    ld b, $eb
    di
    inc a
    nop
    ei
    di
    ld a, $00
    di
    ei
    ld a, [hl-]
    nop
    di
    db $eb
    jr c, jr_00e_5952

jr_00e_5952:
    inc bc
    ei
    ldh [rP1], a
    ei
    inc bc
    sbc $01
    ld [hl+], a
    nop
    ld a, [bc]
    ld bc, $0700
    nop
    rrca
    nop
    ld e, $00
    inc a
    nop
    jr c, @+$43

    nop
    ld [hl], b
    ld b, c
    nop
    ldh a, [rSB]
    nop
    add b
    jr z, jr_00e_5973

jr_00e_5973:
    nop
    ldh [rSCX], a
    nop
    ld [hl], b
    ld b, d
    nop
    add hl, sp
    ld bc, $ffff
    daa
    ld [hl+], a
    ld bc, $0606
    inc hl
    rst $38
    ld bc, $7000
    ld b, l
    nop
    ldh [$ff88], a
    nop
    ld [hl+], a
    ld b, e
    ld [hl], c
    nop
    ld [bc], a
    ld [hl], e
    nop
    add hl, sp
    ld b, d
    nop
    rra
    ld b, d
    nop
    rrca
    ld [$0600], sp
    rst $38
    rst $38
    inc bc
    inc bc
    ccf
    ccf
    rlca
    add $00
    halt
    ld bc, $ffff
    ret nc

    nop
    db $10
    ld b, d
    ld [hl], e
    nop
    nop
    ld [hl], a
    ld b, d
    nop
    rst $30
    inc bc
    nop
    ld h, a
    nop
    ld [hl], e
    ld b, e
    nop
    db $e3
    ld b, d
    nop
    jp Jump_000_00a3


    ld [hl], b
    ld bc, $8f8f
    inc hl
    adc b
    and [hl]
    nop
    ld a, d
    nop
    jr jr_00e_5a11

    nop
    inc a
    ld b, d
    nop
    ld a, [hl]
    ld [bc], a
    nop
    rst $20
    nop
    rst $00
    nop
    ld l, a
    nop
    rrca
    and [hl]
    nop
    ld [hl+], a
    nop
    jp Jump_000_0042


    add e
    ld b, d
    nop
    inc bc
    dec b
    nop
    ld bc, $ffff
    pop bc
    pop bc
    inc hl
    adc b
    inc bc
    add b
    add b
    adc b
    adc b
    add e
    nop
    inc a
    ld b, d
    nop
    rst $20
    ld b, e
    nop
    jp Jump_000_0001


    add c
    or b
    nop
    ld d, b
    nop
    ld sp, hl
    ld b, c
    nop
    ei
    ld b, h
    nop
    add e
    dec bc
    rst $38
    rst $38
    adc a

jr_00e_5a11:
    adc a
    add [hl]
    add [hl]
    add b
    add b
    adc c
    adc c
    adc a
    adc a
    add h
    nop
    inc a
    nop
    add c
    ld b, d
    nop
    rst $38
    dec h
    nop
    xor d
    nop
    adc [hl]
    ld b, e
    xor $00
    ld [bc], a
    add e
    nop
    add e
    ld b, c
    nop
    di
    ld bc, $f300
    add a
    ld bc, $042a
    db $10
    db $10
    ld de, $1011
    add $01
    halt
    ld bc, $ffff
    add h
    nop
    nop
    inc c
    add e
    nop
    rst $00
    nop
    rst $38
    nop
    cp $00
    ld a, h
    nop
    jr c, jr_00e_5a53

jr_00e_5a53:
    rst $00
    and e
    nop
    sbc b
    adc [hl]
    ld bc, $c956
    ld bc, $072b
    ei
    rst $38
    rst $38
    ld e, $1e
    cp $fe
    ld a, $c6
    ld bc, $01b6
    rst $38
    rst $38
    jr nc, jr_00e_5a6e

jr_00e_5a6e:
    nop
    xor $a3
    nop
    sub [hl]
    adc d
    ld bc, $0892
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    sbc h
    add h
    ld bc, $0716
    add a
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    ld a, $3e
    ld b, $c6
    ld bc, $01f6
    rst $38
    rst $38
    adc $01
    and b
    nop
    rst $20
    ld b, e
    nop
    add a
    add [hl]
    ld bc, $0016
    sbc h
    rst $08
    ld bc, $83cd
    nop
    ld b, d
    ld bc, $e000
    rlc d
    ld a, [hl+]
    adc $02
    jr nz, @+$2e

    nop
    nop
    ret nz

    call nz, $5e02
    and l
    nop
    add sp, -$79
    ld [bc], a
    jr z, jr_00e_5abd

    ret nz

jr_00e_5abd:
    ret nz

    ld [hl+], a
    adc a
    add $02
    halt
    ld bc, $ffff
    inc hl
    ldh a, [rNR43]
    ld hl, sp-$3a
    ld [bc], a
    add [hl]
    ld bc, $c0c0
    rst $08
    ld [bc], a
    ld b, b
    add a
    nop
    ldh a, [$ffc3]
    nop
    push af
    sub c
    ld bc, $03bc
    inc bc
    inc bc
    nop
    ld a, [hl]
    push bc
    ld bc, $2846
    nop
    ld [$0001], sp
    add c
    nop
    pop hl
    nop
    pop af
    nop
    ld a, c
    and l
    nop
    ld a, [bc]
    dec b
    rst $38
    rst $38
    adc h
    adc h
    add h
    add h
    add e
    nop
    ld hl, sp+$01
    adc h
    adc h
    or h
    ld [bc], a
    ld a, h
    xor [hl]
    nop
    ld b, c
    and e
    ld bc, $27f0
    ld [hl], c
    inc sp
    rst $38
    ret nc

    ld [bc], a
    ret nc

    xor [hl]
    nop
    add c
    and e
    nop
    jr nc, jr_00e_5b3e

    call nz, $ff25
    ld bc, $3131
    and e
    nop
    or $01
    ld hl, $a521
    ld [bc], a
    ld [$0044], a
    ret nz

    add [hl]
    nop
    ld b, d
    nop
    add hl, sp
    ld b, e
    nop
    dec sp
    ld b, d
    nop
    ld [hl], e
    dec bc
    rst $38
    rst $38
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld b, d

jr_00e_5b3e:
    ld b, d
    ld h, e
    ld h, e
    dec h
    rst $38
    inc bc
    inc bc
    inc bc
    ld de, $a911
    nop
    or [hl]
    rst $38
    inc sp
    inc e
    dec h
    nop
    push bc
    nop
    add hl, de
    adc c
    nop
    nop
    rst $08
    nop
    add hl, hl
    push bc
    nop
    add hl, sp
    ldh a, [$ff3f]
    nop
    nop
    add e
    nop
    ld de, $010c
    inc c
    dec c
    jr @+$1b

    inc hl
    nop
    inc l
    dec l
    scf
    jr c, @+$14

    ld e, $91
    nop
    ld de, $040d
    dec b
    db $10
    ld de, $1d1c
    ld h, $04
    inc e
    jr nc, @+$04

    ld a, [bc]
    ld d, $21
    sub c
    nop
    ld de, $080d
    add hl, bc
    inc d
    dec d
    inc e
    jr nz, @+$2b

    ld [$3433], sp
    ld b, $0e
    ld a, [de]
    inc h
    ld hl, sp+$73
    nop
    add d
    nop
    dec hl
    dec l
    ld [hl+], a
    sub b
    nop
    inc d
    ld [$272f], sp
    ld a, [hl+]
    ld l, $31
    dec [hl]
    add hl, sp
    inc bc
    rlca
    dec h
    ld [hl-], a
    reti


    ld bc, $005f
    dec h
    add h
    nop
    rrca
    pop de
    ld bc, $0a7f
    dec bc
    rrca
    inc de
    rla
    dec de
    rra
    ld [hl], $3a
    jr z, jr_00e_5bde

    inc e
    ld hl, sp-$7e
    nop
    add d
    dec hl
    nop
    rst $38
    rla
    rst $38
    dec c

jr_00e_5bcd:
    inc bc
    ld sp, hl
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    dec c
    ld a, [hl+]
    ld h, c
    rrca
    daa
    nop
    dec c
    ld d, b
    rrca

jr_00e_5bde:
    ld a, e
    and b
    or e
    jr nz, @+$52

    nop
    ld hl, $0048
    dec c
    ld d, b
    rrca
    ld a, b
    and b
    or e
    dec c
    ld d, b
    rrca
    ld a, c
    and b
    or e
    dec c
    ld d, b
    rrca
    ld a, d
    and b
    or e
    ld bc, $0500
    ld e, $01
    ld bc, $0a05
    ld bc, $0502
    inc a
    ld bc, $0501
    ld a, [bc]
    ld c, $03
    ld sp, hl
    ld e, e
    sub l
    ld e, h
    add hl, hl
    ld e, [hl]
    rla
    rst $38
    dec c
    inc bc
    ld sp, hl
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    rrca
    daa
    nop
    jr nz, jr_00e_5c71

    nop
    ld hl, $0080
    ld bc, $0511
    ld e, $01
    ld [de], a
    dec b
    ld a, [bc]
    ld bc, $0513
    inc a
    ld bc, $0512
    ld a, [bc]
    ld c, $03
    dec h
    ld e, h
    ld hl, sp+$5c
    sub h
    ld e, [hl]
    rla
    rst $38
    dec c
    inc bc
    ld sp, hl
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    rrca
    daa
    nop
    jr nz, jr_00e_5bcd

    nop
    ld hl, $007e
    ld bc, $0519
    ld e, $01
    ld a, [de]
    dec b
    ld a, [bc]
    ld bc, $051b
    inc a
    ld bc, $051a
    ld a, [bc]
    ld c, $03
    ld d, c
    ld e, h
    ld d, $5d
    rst $18
    ld e, [hl]
    rla
    rst $38
    dec c
    inc bc
    ld sp, hl
    ld h, b
    ld c, [hl]
    inc b

jr_00e_5c71:
    call nz, Call_000_0e54
    rrca
    daa
    nop
    jr nz, jr_00e_5c99

    nop
    ld hl, $0080
    ld bc, $0509
    ld e, $01
    ld a, [bc]
    dec b
    ld a, [bc]
    ld bc, $050b
    inc a
    ld bc, $050a
    ld a, [bc]
    ld c, $03
    ld a, l
    ld e, h
    jp c, Jump_000_285c

    ld e, a
    rrca
    ld b, e
    nop
    inc bc

jr_00e_5c99:
    or d
    ld h, b
    ld c, [hl]

jr_00e_5c9c:
    dec c
    jr nc, @+$63

    jr nz, jr_00e_5cf1

    nop
    ld hl, $0048
    dec c
    ld d, b
    rrca
    add b
    and b
    or e
    dec c
    ld d, b
    rrca
    add c
    and b
    or e
    dec c
    ld d, b
    rrca
    add d
    and b
    or e
    dec c
    ld d, b
    rrca
    add e
    and b
    or e
    dec c
    ld d, b
    rrca
    add h
    and b
    or e
    add hl, bc
    inc b
    ld bc, $0500
    ld e, $01
    ld bc, $0a05
    ld bc, $0502
    inc a
    ld bc, $0501
    ld a, [bc]
    ld a, [bc]
    dec c
    sub c
    dec hl
    nop
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    jr nz, @+$22

    nop
    ld hl, $0080
    add hl, bc
    inc b
    ld bc, $0509
    ld e, $01
    ld a, [bc]
    dec b
    ld a, [bc]
    ld bc, $050b

jr_00e_5cf1:
    inc a
    ld bc, $050a
    ld a, [bc]
    ld a, [bc]
    nop
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    jr nz, jr_00e_5d4e

    nop
    ld hl, $0080
    add hl, bc
    inc b
    ld bc, $0511
    ld e, $01
    ld [de], a
    dec b
    ld a, [bc]
    ld bc, $0513
    inc a
    ld bc, $0512
    ld a, [bc]
    ld a, [bc]
    nop
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    jr nz, jr_00e_5c9c

    nop
    ld hl, $007e
    ld bc, $0519
    ld e, $01
    ld a, [de]
    dec b
    ld a, [bc]
    ld bc, $051b
    inc a
    ld bc, $051a
    ld a, [bc]
    ld bc, $051a
    dec de
    add hl, bc
    ld [bc], a
    ld bc, $051c
    inc b
    ld bc, $0519
    inc b
    ld a, [bc]
    ld bc, $051d
    inc a
    add hl, bc
    inc b
    ld bc, $051e
    inc b
    ld bc, $051f
    inc b
    ld a, [bc]

jr_00e_5d4e:
    ld bc, $051f
    dec h
    ld bc, $0519
    ld e, $01
    ld a, [de]
    dec b
    ld a, [bc]
    ld bc, $051b
    inc a
    ld bc, $051a
    ld a, [bc]
    ld bc, $0519
    ld e, $01
    ld a, [de]
    dec b
    ld a, [bc]
    ld bc, $051b
    ld [$0d00], sp
    ld d, b
    rrca
    add l
    and b
    or e
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    jr nz, @+$52

    nop
    ld hl, $0000
    ld bc, $0828
    ld d, b
    nop
    dec b
    ld h, h
    ld bc, $0828
    nop
    nop
    dec b
    rst $38
    ld bc, $0528
    ld d, l
    nop
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    jr nz, jr_00e_5dbe

    nop
    ld hl, $0010
    ld bc, $0829
    ld [hl], d
    nop
    dec b
    ld h, h
    ld bc, $0829
    nop
    nop
    dec b
    rst $38
    ld bc, $0529
    ld d, l
    nop
    rla

jr_00e_5dbe:
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    jr nz, jr_00e_5e2a

    nop
    ld hl, $0000
    ld bc, $082a
    jr nz, jr_00e_5dd3

jr_00e_5dd3:
    dec b
    ld h, h
    ld bc, $082a
    nop
    nop
    dec b
    rst $38
    ld bc, $052a
    ld d, l
    nop
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    jr nz, @-$7e

    nop
    ld hl, $0000
    ld bc, $0829
    add b
    nop
    dec b
    ld h, h
    ld bc, $0829
    nop
    nop
    dec b

Call_00e_5dff:
    rst $38
    ld bc, $0529
    ld d, l
    nop
    rla
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    jr nz, @+$32

    nop
    ld hl, $0000
    ld bc, $082a
    ld c, b
    nop
    dec b
    ld h, h
    ld bc, $082a
    nop
    nop
    dec b
    rst $38
    ld bc, $052a
    ld d, l
    nop
    rrca

jr_00e_5e2a:
    ld b, e
    nop
    inc bc
    or d
    ld h, b
    ld c, [hl]
    jr nz, @+$52

    nop
    ld hl, $0048
    dec c
    ld d, b
    rrca
    adc d
    and b
    or e
    ld bc, $0500
    ld e, $01
    ld bc, $2205
    add hl, bc
    ld [bc], a
    ld bc, $0503
    inc b
    ld bc, $0504
    inc b
    ld a, [bc]
    ld bc, $0505
    inc a
    ld bc, $0505
    ld [$0601], sp
    rlca
    ldh [$fffe], a
    dec b
    ld [$0701], sp
    dec b
    ld a, [bc]
    ld bc, $0724

jr_00e_5e65:
    jp z, Jump_000_08fe

    nop
    db $fd
    ld a, [hl+]
    ld [hl], d
    dec b
    ld [$2501], sp
    dec b
    inc b
    ld bc, $0720
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld e, $09
    ld b, $01
    jr nc, jr_00e_5e8a

    ld [bc], a
    ld bc, $0531
    ld [bc], a

jr_00e_5e8a:
    ld a, [bc]
    ld bc, $2920
    db $10
    ld a, [hl+]
    ld hl, sp+$05
    ld d, b
    ld d, $03
    or d
    ld h, b
    ld c, [hl]
    jr nz, @+$52

    nop
    ld hl, $0080
    ld bc, $0511
    ld e, $01
    ld [de], a
    dec b
    ld a, [bc]
    ld bc, $0513
    inc a
    ld bc, $0512
    ld a, [bc]
    ld bc, $0512
    ld e, $09
    ld [bc], a
    ld bc, $0511
    inc b
    ld bc, $0514
    inc b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0514
    ld b, $01
    ld d, $05
    ld b, $0a
    ld bc, $0516
    db $10
    add hl, bc
    inc b
    ld bc, $0717
    nop
    ld bc, $0805
    ld bc, $0518
    ld [$2f01], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    ld d, $03
    or d
    ld h, b
    ld c, [hl]
    jr nz, jr_00e_5e65

    nop
    ld hl, $007e
    ld bc, $051a
    ld e, $09
    ld [bc], a
    ld bc, $051c
    inc b
    ld bc, $0519
    inc b
    ld a, [bc]
    ld bc, $051d
    inc a
    add hl, bc
    inc b
    ld bc, $051e
    inc b
    ld bc, $051f
    inc b
    ld a, [bc]
    ld bc, $051f
    jr z, jr_00e_5f0d

    inc e

jr_00e_5f0d:
    dec b
    inc d
    add hl, bc
    inc bc
    ld bc, $0726
    nop
    ld bc, $0008
    cp $2a
    ld h, [hl]
    dec b
    ld [$2701], sp
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld a, [bc]
    ld a, [bc]
    ld d, $03
    or d
    ld h, b
    ld c, [hl]
    jr nz, jr_00e_5f4e

    nop
    ld hl, $0080
    ld bc, $050a
    ld e, $09
    ld [bc], a
    ld bc, $050a
    inc b
    ld bc, $050c
    inc b
    ld a, [bc]
    ld bc, $050d
    inc a
    add hl, bc
    inc bc
    ld bc, $050f
    inc b
    ld bc, $0510

jr_00e_5f4e:
    ld [$0f01], sp
    dec b
    inc b
    ld bc, $050e
    ld [$010a], sp
    dec c
    dec b
    inc d
    ld bc, $070f
    nop
    ld bc, $0805
    ld bc, $0510
    ld a, [bc]
    ld bc, $050f
    ld [$0e01], sp
    dec b
    ld a, [bc]
    ld bc, $070f
    nop
    ld bc, $0805
    ld bc, $0510
    ld a, [bc]
    ld bc, $050f
    ld [$0e01], sp
    dec b
    ld a, [bc]
    ld bc, $070f
    nop
    ld bc, $0805
    ld bc, $0510
    ld a, [bc]
    ld bc, $050f
    ld [$0e01], sp
    dec b
    ld a, [bc]
    ld bc, $070f
    nop
    ld bc, $0805
    ld bc, $0510
    ld a, [bc]
    ld bc, $050f
    ld [$0e01], sp
    dec b
    ld a, [bc]
    ld d, $17
    rst $38
    dec c
    inc bc
    rst $18
    ld h, b
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    jr nz, @-$7e

    nop
    ld hl, $0000
    ld bc, $0721
    db $ec
    db $fd
    ld [$0000], sp
    ld a, [hl+]
    ld d, $05
    jr z, jr_00e_5fd0

    inc bc
    ld bc, $0722
    nop
    nop
    ld [$0000], sp

jr_00e_5fd0:
    ld a, [hl+]
    nop
    dec b
    ld [bc], a
    ld bc, $0523
    ld [bc], a
    ld a, [bc]
    ld bc, $0521
    ld a, [hl]
    ld d, $17
    rst $38
    dec c
    inc bc
    db $fc
    ld e, a
    ld c, [hl]
    inc b
    call nz, Call_000_0e54
    rrca
    ld b, e
    jr nz, @+$11

    inc b
    cpl
    rrca
    rlca
    ld e, b
    rrca
    daa
    nop
    rrca
    ld e, e
    inc b
    ld bc, $002b
    ld d, $cd
    ld d, a
    inc bc
    ldh a, [$ff9a]
    ld d, a
    ld e, $5b
    ld a, [de]

Jump_00e_6005:
    and a
    jr nz, jr_00e_6019

    ld a, $04
    ld [de], a
    ld e, $27
    ld a, [de]
    and a
    jr z, jr_00e_601d

    dec a
    ld [de], a
    ld e, $15
    ld a, [de]
    dec a
    jr jr_00e_6023

jr_00e_6019:
    dec a
    ld [de], a
    jr jr_00e_6024

jr_00e_601d:
    inc a
    ld [de], a
    ld e, $15
    ld a, [de]
    inc a

jr_00e_6023:
    ld [de], a

jr_00e_6024:
    ldh a, [$ffa5]
    bit 7, a
    jr nz, jr_00e_6053

    bit 6, a
    jr z, jr_00e_6076

    ld e, $04
    ld a, $2f
    ld [de], a
    ld e, $07
    ld a, [de]
    cp $58
    ret z

    ld a, $58
    ld [de], a
    ld e, $27
    xor a
    ld [de], a
    ld e, $15
    ld a, $2b
    ld [de], a
    push de
    ld e, $2c
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    jr jr_00e_6076

jr_00e_6053:
    ld e, $04
    ld a, $21
    ld [de], a
    ld e, $07
    ld a, [de]
    cp $68
    ret z

    ld a, $68
    ld [de], a
    ld e, $27
    xor a
    ld [de], a
    ld e, $15
    ld a, $2d
    ld [de], a
    push de
    ld e, $2c
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de

jr_00e_6076:
    ld e, $43
    ld a, [de]
    and a
    jr z, jr_00e_607f

    dec a
    ld [de], a
    ret


jr_00e_607f:
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_00e_608c

    bit 1, a
    jr nz, jr_00e_608c

    bit 3, a
    ret z

jr_00e_608c:
    ld e, $07
    ld a, [de]
    cp $58
    jr nz, jr_00e_6097

    ld a, $02
    jr jr_00e_6099

jr_00e_6097:
    ld a, $01

jr_00e_6099:
    ld hl, $da2c
    ld [hl], a
    push de
    ld e, $2d
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    ld e, $0e
    ld bc, $5ffb
    jp Jump_000_0846


    ret


    call Call_000_0357
    ldh a, [$ff9a]
    ld d, a
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld e, $43
    ld a, [de]
    and a
    jr z, jr_00e_60ca

    dec a
    ld [de], a
    ret


jr_00e_60ca:
    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_00e_60d9

    bit 1, a
    jr nz, jr_00e_60d9

    bit 3, a
    jr nz, jr_00e_60d9

    ret


jr_00e_60d9:
    ld hl, $dd2d
    ld [hl], $01
    ret


    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ret


    call Call_000_0357
    ldh a, [$ff9a]
    ld d, a
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ret


    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld e, $27
    ld a, [de]
    and a
    ret nz

    ld a, [$da2c]
    ld [de], a
    ret


    dec c
    inc hl
    ld h, c
    nop
    dec b
    rrca
    dec c
    inc hl
    ld h, c
    ld d, l
    dec b
    rrca
    dec c
    inc hl
    ld h, c
    xor d
    dec b
    rrca
    dec c
    inc hl
    ld h, c
    rst $38
    ld d, $0a
    inc bc
    ld hl, $cd00
    ld [hl], a
    ret


    ld hl, $da2c
    ld [hl], $00
    ret


    push bc
    push de
    ld e, $0c
    ld hl, $602e
    ld a, $1e
    call Call_000_05cf
    pop de
    pop bc
    ret


    db $04, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $04, $02, $9b, $4d, $03, $33, $4e, $03

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

    db $10, $80, $01, $80, $00

    or b
    nop

    db $60, $00

    add b
    nop
    db $10
    inc c

    db $10

    inc c

    db $17, $ff, $0d, $0f, $62, $04, $27, $18, $0f, $3f, $00, $0d, $80, $1f, $11, $b8
    db $61, $0f, $5e, $08, $0f, $5f, $08, $27, $03, $fe, $61, $4e, $0f, $40, $00, $18
    db $0f, $11, $00, $0f, $12, $00, $0d, $be, $23, $6c, $61, $27, $0d, $9d, $62, $01
    db $00, $1f, $45, $22, $76, $61, $01, $01, $1f, $45, $22, $76, $61, $06, $a3, $61
    db $0f, $5e, $08, $0f, $5f, $08, $01, $00, $03, $3d, $62, $4e, $0d, $5f, $20, $69
    db $61, $00, $24, $4d, $0f, $5e, $0b, $0f, $5f, $08, $03, $62, $62, $4e, $0f, $3e
    db $18, $19, $02, $01, $19, $03, $01, $19, $02, $01, $19, $04, $01, $19, $02, $01
    db $19, $03, $01, $19, $02, $01, $19, $04, $01, $19, $02, $01, $19, $03, $01, $19
    db $02, $01, $19, $04, $01, $00

    call Call_000_2235
    ld e, $40
    ld [de], a
    ld hl, $616c
    call Call_000_23ca
    call Call_000_0da4
    ld bc, $613f
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_19f3
    bit 5, a
    jp nz, Jump_000_1ef9

    bit 7, a
    jr z, jr_00e_6235

    bit 4, a
    call nz, Call_00e_62ca
    ld e, $3f
    ld a, [de]
    and a
    ret z

    ld e, $0e
    ld bc, $61ca
    jp Jump_000_0846


jr_00e_6235:
    ld e, $0e
    ld bc, $61b8
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $613f
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    ld b, a
    bit 5, a
    call nz, Call_000_1ef9
    ld a, b
    bit 7, a
    ret z

    ld e, $0e
    ld bc, $6189
    jp Jump_000_0846


    ld bc, $614d
    call Call_000_255b
    ret c

    call Call_000_2375
    call Call_000_1a25
    call Call_000_19cb
    bit 7, a
    jr z, jr_00e_628f

    ld e, $3e
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld a, $09
    ld [de], a
    call Call_00e_629d
    ld e, $3f
    ld a, [de]
    and a
    ret nz

    ld e, $0e
    ld bc, $6189
    jp Jump_000_0846


jr_00e_628f:
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0e
    ld bc, $61b8
    jp Jump_000_0846


Call_00e_629d:
    ld e, $04
    ld l, e
    ld h, $a0
    ld a, [de]
    sub [hl]
    bit 7, a
    jr z, jr_00e_62aa

    cpl
    inc a

jr_00e_62aa:
    cp $2c
    jr nc, jr_00e_62c5

    ld e, $07
    ld l, e
    ld h, $a0
    ld a, [de]
    sub [hl]
    bit 7, a
    jr z, jr_00e_62bb

    cpl
    inc a

jr_00e_62bb:
    cp $40
    jr nc, jr_00e_62c5

    ld e, $3f
    ld a, $01
    ld [de], a
    ret


jr_00e_62c5:
    ld e, $3f
    xor a
    ld [de], a
    ret


Call_00e_62ca:
    ld e, $45
    ld a, [de]
    bit 7, a
    jr nz, jr_00e_62e4

    ld h, d
    ld l, $0d
    ld e, $03
    ld a, [de]
    sub [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ld [de], a
    inc e
    ld a, [de]
    sbc $00
    ld [de], a
    ret


jr_00e_62e4:
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
    ld e, $03
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    ret


    db $ff, $02, $9b, $4d, $03, $33, $4e, $03

    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc

    db $80, $01

    add b
    db $01

    db $80, $00

    ret nz

    nop

    db $40, $fd

    nop
    db $fd

    db $c0, $02

    nop
    inc bc

    db $17, $ff, $0d, $27, $10, $5b, $12, $10, $64, $0d, $80, $1f, $01, $00, $11, $8b
    db $63, $03, $97, $64, $4e, $18, $10, $5c, $12

    ld h, d
    ld h, e

    db $09, $03, $19, $00, $20, $19, $01, $08, $19, $02, $20, $19, $01, $08, $0a, $09
    db $02, $19, $00, $06, $19, $01, $02, $24, $0e, $0d, $50, $0f, $46, $a8, $b2, $19
    db $02, $06, $19, $01, $02, $0a, $06, $39, $63

    add hl, bc
    inc bc
    add hl, de
    nop
    jr jr_00e_6381

    ld bc, $1906
    ld [bc], a
    jr @+$1b

    ld bc, $0a06
    add hl, bc
    inc b
    add hl, de
    nop
    ld b, $19
    ld bc, $2402
    ld c, $0d
    ld d, b
    rrca
    ld b, [hl]
    xor b
    or d

jr_00e_6381:
    add hl, de
    ld [bc], a
    ld b, $19
    ld bc, $0a02
    ld b, $62
    ld h, e

    db $03, $c2, $64, $4e, $18, $27, $0d, $90, $20, $0e, $63, $01, $00, $00, $0d, $f9
    db $1f, $0d, $42, $65, $0d, $25, $65, $17, $ff, $0d, $10, $5b, $12, $dc, $63, $03
    db $ed, $64, $4e, $0f, $60, $3f, $0f, $61, $00, $0f, $5e, $04, $0f, $5f, $04, $0f
    db $4c, $01, $04, $2c, $55, $10, $01, $03, $18, $2a, $00, $0d, $90, $20, $16, $63
    db $05, $0c, $10, $5c, $12

    rst $10
    ld h, e

    db $2a, $20, $05, $04, $16

    ld a, [hl+]
    inc h
    dec b
    inc b
    db $16

    db $0f, $47, $40, $03, $09, $65, $4e, $0f, $60, $3f, $0f, $61, $00, $0f, $5e, $04
    db $0f, $5f, $04, $0f, $4c, $01, $04, $2c, $55, $10, $01, $03, $2a, $00, $0d, $90
    db $20, $1a, $63, $05, $0c, $10, $5c, $12

    dec bc
    ld h, h

    db $2a, $e0, $05, $04, $16

    ld a, [hl+]
    call c, Call_000_0405
    db $16

    db $0f, $47, $40, $03, $ad, $64, $4e, $0f, $40, $00, $18, $10, $5c, $12

    ld b, a
    ld h, h

    db $09, $03, $19, $00, $20, $19, $01, $08, $19, $02, $20, $19, $01, $08, $0a, $09
    db $02, $19, $00, $06, $19, $01, $02, $0d, $50, $0f, $46, $a8, $b2, $19, $02, $06
    db $19, $01, $02, $0a, $06, $20, $64

    add hl, bc
    inc bc
    add hl, de
    nop
    jr jr_00e_6466

    ld bc, $1906
    ld [bc], a
    jr jr_00e_646c

    ld bc, $0a06
    add hl, bc
    inc b
    add hl, de
    nop
    ld b, $19
    ld bc, $0d02
    ld d, b
    rrca
    ld b, [hl]
    xor b
    or d
    add hl, de
    ld [bc], a

jr_00e_6466:
    ld b, $19
    ld bc, $0a02
    dec c

jr_00e_646c:
    ld c, a
    ld h, l
    ld b, $47
    ld h, h
    inc bc
    jp nz, $4e64

    rrca
    ld b, a
    ld b, b
    jr jr_00e_64a1

    dec c
    sub b
    jr nz, jr_00e_648c

    ld h, e
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $1902
    nop
    ld [bc], a
    rrca
    ld b, a
    nop
    rrca

jr_00e_648c:
    ld e, e
    nop
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $0102
    ld [bc], a
    nop

    ld bc, $6300
    call Call_000_255b
    ret c

    call Call_000_19cb

jr_00e_64a1:
    bit 7, a
    ret nz

    ld e, $0e
    ld bc, $638b
    jp Jump_000_0846


    ret


    ld bc, $6300
    call Call_000_255b
    ret c

    ld e, $40
    ld a, [de]
    and a
    ret z

    ld e, $0e
    ld bc, $6471
    jp Jump_000_0846


    ret


    ld e, $f8
    call Call_000_1ac1
    jr z, jr_00e_64ce

    ld hl, $630e
    jr jr_00e_64d1

jr_00e_64ce:
    ld hl, $6312

jr_00e_64d1:
    call Call_000_2096
    call Call_000_0da4
    ld bc, $6300
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $0e
    ld bc, $632f
    jp Jump_000_0846


    ret


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $6300
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 6, a
    ret z

    ld e, $05
    ld bc, $5c14
    jp Jump_000_0846


    ret


    call Call_000_0c91
    call Call_000_0da4
    ld bc, $6300
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $05
    ld bc, $5c14
    jp Jump_000_0846


    ret


    ld e, $5b
    ld a, [de]
    and a
    ld e, $07
    ld a, [de]
    jr nz, jr_00e_6538

    sub $08
    ld [de], a
    jr nc, jr_00e_6537

    inc e
    ld a, [de]
    dec a
    ld [de], a

jr_00e_6537:
    ret


jr_00e_6538:
    add $08
    ld [de], a
    jr nc, jr_00e_6541

    inc e
    ld a, [de]
    inc a
    ld [de], a

jr_00e_6541:
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $5b
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    push bc
    push de
    call Call_000_0647
    pop de
    pop bc
    cp $20
    ret nc

    ld e, $40
    ld a, $01
    ld [de], a
    ret


    ld hl, $678f
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $6b91
    ld de, $9800
    call Call_000_0708
    ld hl, $6c3d
    ld de, $8000
    call Call_000_0708
    ld a, $e4
    ld [$cd09], a
    ld a, $d0
    ld [$cd0a], a
    ld a, $e4
    ld [$cd0b], a
    call Call_00e_660d
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $f6
    ld hl, $a0b3
    call Call_000_07c4
    call Call_000_1584
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    ld e, $21
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld de, $1904
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf
    ld a, $20

jr_00e_65c9:
    push af
    call Call_000_0496
    call Call_000_086b
    call Call_000_04ae
    call Call_000_0343
    call Call_000_0357
    pop af
    dec a
    jr nz, jr_00e_65c9

jr_00e_65dd:
    call Call_000_0496
    call Call_000_086b
    call Call_000_04ae
    call Call_000_0343
    call Call_000_0357
    ldh a, [$ffa5]
    bit 3, a
    jr z, jr_00e_65dd

    ld e, $2d
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld de, $1904
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_00e_660d
    jp Jump_000_0437


Call_00e_660d:
    ld e, $00
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    ld e, $ff
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ld e, $ff
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ret


    rla
    or $0d
    inc b
    ld c, e
    ld l, h
    ld c, $0d
    ld d, e
    ld h, [hl]
    ld bc, $0d00
    ld e, d
    ld h, [hl]
    dec c
    ldh [$ff35], a
    dec l
    nop
    ld [hl], h
    nop
    inc bc
    ld l, d
    ld h, [hl]
    ld c, [hl]
    nop
    dec c
    ldh [$ff35], a
    dec l
    nop
    add h
    nop
    inc bc
    bit 4, [hl]
    ld c, [hl]
    nop
    xor a
    ld hl, $df3a
    ld [hl+], a
    ld [hl], a
    ret


    push de
    push bc
    xor a
    ld e, a
    call Call_00e_6736
    xor a
    ld e, $01
    call Call_00e_6736
    pop bc
    pop de
    ret


    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_00e_66bb

    bit 1, a
    jr nz, jr_00e_66ad

    bit 6, a
    jr nz, jr_00e_66a5

    bit 7, a
    jr nz, jr_00e_66a5

    ldh a, [$ffa7]
    bit 5, a
    jr nz, jr_00e_6695

    bit 4, a
    ret z

    ld hl, $df3a
    ld a, [hl]
    inc a
    cp $2f
    jr c, jr_00e_668f

    xor a

jr_00e_668f:
    ld [hl+], a
    ld e, $00
    jp Jump_00e_6736


jr_00e_6695:
    ld hl, $df3a
    ld a, [hl]
    sub $01
    jr nc, jr_00e_669f

    ld a, $2e

jr_00e_669f:
    ld [hl+], a
    ld e, $00
    jp Jump_00e_6736


jr_00e_66a5:
    ld e, $0e
    ld bc, $6647
    jp Jump_000_0846


jr_00e_66ad:
    ld e, $ff
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


jr_00e_66bb:
    ld a, [$df3a]
    ld e, a
    ld hl, $4237
    ld a, $1f
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_00e_671c

    bit 1, a
    jr nz, jr_00e_670e

    bit 6, a
    jr nz, jr_00e_6706

    bit 7, a
    jr nz, jr_00e_6706

    ldh a, [$ffa7]
    bit 5, a
    jr nz, jr_00e_66f6

    bit 4, a
    ret z

    ld hl, $df3b
    ld a, [hl]
    inc a
    cp $62
    jr c, jr_00e_66f0

    xor a

jr_00e_66f0:
    ld [hl+], a
    ld e, $01
    jp Jump_00e_6736


jr_00e_66f6:
    ld hl, $df3b
    ld a, [hl]
    sub $01
    jr nc, jr_00e_6700

    ld a, $61

jr_00e_6700:
    ld [hl+], a
    ld e, $01
    jp Jump_00e_6736


jr_00e_6706:
    ld e, $0e
    ld bc, $663b
    jp Jump_000_0846


jr_00e_670e:
    ld e, $ff
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


jr_00e_671c:
    ld e, $ff
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld a, [$df3b]
    ld e, a
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


Call_00e_6736:
Jump_00e_6736:
    ld b, a
    ld a, $74
    swap e
    add e
    ld h, a
    ld a, b
    ld e, $68
    ld b, $0a
    call Call_00e_6758
    ld l, a
    ld a, c
    ldh [$ff80], a
    ld a, h
    call Call_00e_6762
    ld a, e
    add $08
    ld e, a
    ld a, l
    ldh [$ff80], a
    ld a, h
    jp Jump_00e_6762


Call_00e_6758:
    ld c, $00

jr_00e_675a:
    sub b
    jr c, jr_00e_6760

    inc c
    jr jr_00e_675a

jr_00e_6760:
    add b
    ret


Call_00e_6762:
Jump_00e_6762:
    push af
    push hl
    push de
    ld b, $26
    rlca
    rl b
    rlca
    rl b
    and $e0
    ld c, a
    ld a, e
    rra
    rra
    rra
    and $1f
    add c
    ld c, a
    ld h, $c4
    ldh a, [$ff92]
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], $01
    inc l
    ldh a, [$ff80]
    ld [hl], a
    inc l
    ld a, l
    ldh [$ff92], a
    pop de
    pop hl
    pop af
    ret


    inc bc
    rst $38
    rst $38
    add e
    add e
    ld [hl+], a
    ld de, $00c6
    ld b, $23
    rst $38
    ld bc, $8787
    daa
    rst $00
    dec h
    rst $38
    add hl, bc
    inc bc
    inc bc
    pop hl
    pop hl
    add e
    add e
    rrca
    rrca
    ld bc, $8b01
    nop
    inc e
    ret


    nop
    dec h
    dec h
    ld de, $0103
    ld bc, $f1f1
    rst $00
    nop
    ld sp, $1f03
    rra
    inc bc
    inc bc
    adc c
    nop
    jr c, jr_00e_67c7

    sbc a

jr_00e_67c7:
    sbc a
    add e
    nop
    ld d, h
    adc c
    nop
    ld [$0083], sp
    ld c, b
    dec b
    db $e3
    db $e3
    rst $00
    rst $00
    adc a
    adc a
    ret


    nop
    ld de, $8300
    jp z, $8600

    add e
    nop
    ld [bc], a
    dec b
    add c
    add c
    pop af
    pop af
    di
    di
    ld [hl], $ff
    inc b
    inc bc
    rst $38
    ld de, $03ff
    jp z, $b600

    ld [bc], a
    add c
    rst $38
    rra
    ld b, c
    rst $38
    ld de, $00c8
    call nz, $1e06
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld [de], a
    rst $00
    nop
    call nc, $ff42
    ccf
    jp z, $e600

    inc b
    ld bc, $1fff
    rst $38
    inc bc
    ld b, c
    rst $38
    rra
    inc hl
    rst $38
    inc bc
    ld [hl], a
    adc b
    ld l, e
    sub h
    add e
    ld bc, $0300
    ld d, l
    xor d
    ld l, e
    sub h
    ld b, c
    ld b, c
    cp [hl]
    ld c, b
    nop
    rst $38
    inc bc
    ld a, a
    rst $38
    pop bc
    rst $38
    ld b, c
    add b
    pop bc
    ld bc, $aa7f
    ld b, c
    ld a, a
    add b
    ld b, h
    nop
    rst $38
    nop
    rst $38
    add h
    ld bc, $0711
    inc e
    rst $38
    nop
    db $e3
    inc e
    db $eb
    inc e
    db $e3
    ld b, c
    inc d
    db $eb
    ld b, $00
    rst $38
    inc d
    db $eb
    nop
    rst $38
    rst $38
    add [hl]
    ld bc, $0235
    nop
    rst $38
    rst $38
    adc d
    ld bc, $0a35
    rst $38
    add a
    db $fc
    dec sp
    rst $38
    ld a, l
    rst $38
    ld l, [hl]
    nop
    rst $38
    dec c
    ld b, d
    rst $38
    rrca
    nop
    db $fc
    ld b, c
    rrca
    ld hl, sp+$11
    rra
    ldh a, [rP1]
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rrca
    cp $03
    rst $38
    ld bc, $05f7
    rst $30
    inc b
    ld b, [hl]
    nop
    rst $38
    ld bc, $ff80
    ld b, h
    rst $38
    ld l, a
    add l
    ld bc, $0557
    add b
    ld a, a
    ldh a, [$ff8f]
    rst $38
    ldh a, [rNR52]
    rst $38
    nop
    nop
    rst $00
    ld bc, $083a
    ret nz

    ccf
    ldh a, [$ffcf]
    db $fc
    rst $38
    db $fc
    rlca
    db $fc
    adc [hl]
    ld bc, $0911
    rlca
    rst $38
    rrca
    ldh a, [$ff3f]
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld c, e
    rst $38
    nop
    ld b, d
    rra
    ldh a, [rTIMA]
    rrca
    ld hl, sp+$07
    cp $ff
    rst $38
    ld b, c
    inc b
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    and e
    ld bc, $039b
    cp $07
    cp $ff
    ld b, c
    ld [bc], a
    inc bc
    ld b, c
    add e
    db $fc
    dec b
    rst $38
    add b
    ccf
    ret nz

    dec a
    ld a, [$0742]
    db $fd
    adc c
    ld bc, $c831
    ld bc, $41d4
    rlca
    db $fc
    ld [bc], a
    rlca
    cp h
    ld e, a
    ld b, d
    pop hl
    cp a
    db $10
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ldh a, [c]
    ldh a, [c]
    ld [$e7ea], a
    rst $20
    rst $38
    rst $38
    db $fd
    db $fd
    ret nz

    and e
    ld bc, $06dd
    rst $38
    ld a, b
    ld a, a
    cp b
    cp a
    ccf
    ccf
    and e

jr_00e_6916:
    nop
    jp hl


    ld bc, $ffff
    call $3f01
    nop
    ld bc, $018e
    ld d, c
    ld bc, $fdfd
    add h
    nop
    rst $18
    adc b
    ld bc, $8357
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    ld hl, sp-$01
    ldh [$ff8a], a
    ld bc, $0757
    rrca

jr_00e_6938:
    rst $38
    jr nc, @-$0e

    ld b, b
    ret nz

    add b
    add b
    dec h
    nop
    and a
    ld [bc], a
    or b
    and e
    ld [bc], a
    or [hl]
    ld [bc], a
    ld bc, $ff01
    or b
    ld bc, $05cf
    inc bc
    rst $38
    inc c
    db $fc
    db $10
    ldh a, [rSTAT]
    jr nz, jr_00e_6938

    and l
    ld [bc], a
    add $01
    rst $38
    rst $38
    dec l
    nop
    adc e
    ld [bc], a
    ldh a, [$ff03]
    rlca
    rlca
    inc e
    jr jr_00e_6916

    inc bc
    nop
    ld bc, $3878
    adc c
    ld [bc], a
    ldh a, [$ff03]
    rlca
    rlca
    inc bc
    ld [bc], a
    add e
    nop
    ld a, [hl+]
    add hl, bc
    db $10
    db $10
    ret c

    ret c

    db $fd
    or l
    rst $38
    sub d
    rst $38
    add b
    call nz, $9f01
    ld a, [bc]
    rst $38
    ld h, h
    ld h, h
    db $ec
    xor h
    rst $38
    scf
    rst $38
    ld h, $ff
    inc b
    ld b, c
    rst $38
    nop
    dec b
    ldh [rIE], a
    jr jr_00e_69ba

    add h
    add a
    ld b, c
    add d
    add e
    inc hl
    add c
    ld bc, $8080
    ld b, [hl]
    nop
    rst $38
    nop
    ld hl, sp-$70
    ld bc, $8713
    ld [bc], a
    or b
    rlca
    ld b, e
    jp $8c8c


    sub b
    sub b
    ldh [$ffe0], a
    daa

jr_00e_69ba:
    ld bc, $0300
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld b, $06
    inc b
    ccf
    jr jr_00e_69e5

    nop
    sbc a
    nop
    push bc
    ld bc, $039f
    rrca
    nop
    nop
    nop
    add e
    nop
    db $f4
    and e
    ld bc, $a73d
    inc bc
    xor b
    db $10
    add b
    add b
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    jr nz, @+$01

    ccf

jr_00e_69e5:
    jr nc, @+$32

    ld [hl], b
    jr nc, jr_00e_6a69

    ld a, a
    nop
    call z, $d602
    rra
    rst $38
    rst $38
    jr nc, jr_00e_6a24

    ldh [rNR41], a
    ret nz

    ld b, b
    call z, $b0cc
    add b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ccf
    rra
    inc e
    inc c
    rrca
    inc b
    rlca
    ld [bc], a
    rst $00
    jp nz, $0137

    rlca
    ld bc, $090f
    add e
    ld [bc], a
    ldh a, [$ffa4]
    inc bc
    ld a, [hl-]
    jp $1c02


    inc bc
    inc b
    rlca
    inc b
    rst $38
    push bc
    ld bc, $00a0
    inc a
    add e

jr_00e_6a24:
    ld bc, $02db
    ldh [rP1], a
    add b
    xor c
    ld [bc], a
    xor d
    add e
    ld bc, $01fd
    nop
    rlca
    and h
    inc bc
    rst $10
    inc bc
    rst $38
    ret nz

    rst $38
    ld b, b
    add e
    inc bc
    add $15
    adc $42
    rst $38
    ld a, a
    rst $30
    jp nz, $c7cf

    add d
    add e
    add e
    add c
    pop hl
    pop hl
    pop af
    pop af
    ld sp, $e331
    ldh [c], a
    inc bc
    ld [bc], a
    add e
    inc bc
    inc a
    ld bc, $00e3
    ld b, c
    reti


    jr jr_00e_6a5f

jr_00e_6a5f:
    db $e3
    add h
    ld bc, $0610
    ld a, [$fc3a]
    ld b, $fe

jr_00e_6a69:
    ld [bc], a
    cp $c6
    inc b
    rlca
    ld bc, $00ff
    jp $f403


    ld b, c
    rrca
    ld [$1f42], sp
    db $10
    inc b
    ld e, $10
    nop
    nop
    add b
    ld b, d
    nop
    ret nz

    ld bc, $8000
    jr z, jr_00e_6a88

jr_00e_6a88:
    and a
    ld [bc], a
    cp b
    inc bc
    inc bc
    ld bc, $0000
    ld b, c
    ldh a, [$ff9f]
    nop
    ldh [$ffa4], a
    ld [bc], a
    dec bc
    ld bc, $7f40
    ld b, c
    add b
    rst $38
    rlca
    inc a
    rst $38
    ld c, [hl]
    jp $ff7e


    halt
    jp $4241


    rst $30
    inc b
    inc a
    rst $38
    nop
    rst $38
    ldh [rWY], a
    rst $38
    nop
    rlca
    db $fc
    inc bc
    di
    rrca
    rst $38
    nop
    ldh [$ff1f], a
    xor a
    inc b
    rst $08
    nop
    rst $38
    ld b, c
    ld b, d
    or $00
    dec a
    adc e
    ld bc, $00d3
    inc b
    jp $5303


    ld bc, $80ff
    ld b, c
    ld a, a
    ret nz

    inc bc
    ccf
    pop hl
    ld a, $f2
    ld b, h
    rst $38
    nop
    dec b
    sbc a
    add b
    rlca
    inc b
    rlca
    ld d, h
    xor b
    ld bc, $0697
    ld bc, $01ff

jr_00e_6aea:
    cp $02
    db $fc
    inc b
    ld l, $ff
    nop
    cp $2c
    rst $38
    ld bc, $ff00
    call Call_00e_4d05
    ld [bc], a
    rrca
    rst $38
    ld c, $2c
    rst $38
    ld [bc], a
    inc a
    rst $38
    inc e
    inc l
    rst $38
    ld [bc], a
    inc c
    rst $38
    inc c
    adc [hl]
    dec b
    ld d, b
    nop
    rlca
    adc [hl]
    nop
    and [hl]
    nop
    inc bc
    and e
    nop
    ldh [c], a
    ld bc, $feff
    xor d
    nop
    call c, Call_000_0302
    rst $38
    inc bc
    add [hl]
    inc b
    jr nz, jr_00e_6aea

    inc b
    dec h
    ld [bc], a
    db $fc
    rst $38
    db $fc
    add h
    dec b
    ld l, h
    nop
    inc c
    call nz, $d600
    nop
    ccf
    ld b, l
    rst $38
    inc c
    ld [bc], a
    rst $38
    nop
    rst $38
    ret z

    dec b
    db $dd
    sub h
    dec b
    ret z

    jp Jump_00e_6f05


    nop
    inc bc
    add $05
    jr z, @+$04

    ld [$0cff], sp
    jp Jump_00e_6005


    ld c, l
    rst $38
    inc bc
    ld [bc], a
    rst $38
    nop
    rst $38
    call z, $2d06
    ret nc

    dec b
    sub b
    ld [bc], a
    ldh a, [rIE]
    ldh a, [$ffbc]
    dec b
    ld [hl], b
    xor a
    dec b
    ld l, l
    ld [bc], a
    ccf
    rst $38
    ccf
    ld b, a
    rst $38
    ldh a, [$ff03]
    rst $38
    ccf
    rst $38
    ccf
    xor b
    dec b
    cp h
    add a
    dec b
    or l
    ld [bc], a
    ld hl, sp-$01
    db $fc
    adc b
    ld b, $58
    ld [bc], a
    rrca
    rst $38
    rrca
    and a
    ld b, $2c
    adc d
    dec b
    ld c, h
    nop
    ld a, a
    and a
    dec b
    and b
    rst $38
    ld h, d
    ld d, e
    ld [bc], a
    ld d, h
    ld d, [hl]
    ld d, a
    ld h, d
    ld d, a
    ld a, [bc]
    ld d, h
    ld e, b
    ld h, h
    ld d, h
    ld h, l
    ld d, h
    ld h, [hl]
    ld d, h
    ld h, l
    ld d, h
    ld h, a
    dec hl
    nop
    ld h, h
    ld e, d
    nop
    ld e, l
    ld h, h
    ld e, a
    ld bc, $610a
    ld h, h
    ld l, b
    ld bc, $0a61
    dec hl
    nop
    add hl, hl
    ld a, [bc]
    sub $00
    ld c, c
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    db $10
    ld [hl+], a
    ld de, $1200
    inc hl
    ld de, $0084
    ld h, e
    sub c
    nop
    ld d, c
    add a
    nop
    ld l, b
    ld bc, $1111
    push de
    nop
    ld h, [hl]
    dec b
    inc d
    inc de
    inc de
    inc d
    inc de
    inc de
    add l
    nop
    and e
    ld bc, $1314
    sub c
    nop

jr_00e_6be4:
    ld d, c
    ld b, c
    dec d
    inc d
    nop
    ld d, $43
    inc d
    dec d
    jp nc, $a300

    nop
    ld de, $1766
    ld [hl+], a
    ld de, $1e02
    rra
    rra
    jp nc, $c200

    ld h, e
    jr nz, @+$65

    inc hl
    ld bc, $1313
    ld [hl+], a
    daa
    sub d
    nop
    or c
    inc h
    dec d
    ld h, d
    jr z, jr_00e_6be4

    ld bc, $6d27
    dec hl
    sub c
    nop
    ld d, c
    ld l, l
    add hl, sp
    sub c
    nop
    ld d, c
    ld h, l
    ld b, a
    inc bc
    ld c, e
    ld c, l
    ld c, [hl]
    ld c, e
    ld h, e
    ld c, a
    ld hl, sp+$2f
    nop
    ld h, d
    dec h
    ld a, [bc]
    ld h, e
    dec bc
    dec b
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ldh a, [$ff35]
    ld bc, $0091
    rrca
    ldh a, [$ff37]
    ld bc, $ffc8
    ld a, [hl+]
    rst $38
    inc b
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    adc $00
    ld c, $00
    rst $38
    rst $38
    ld c, l
    ld l, h
    ld bc, $fdf8
    nop
    ld bc, $0dcd
    ld h, [hl]
    ld hl, $6e42
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $6f3f
    ld de, $9800
    call Call_000_0708
    ld hl, $6f90
    ld de, $8000
    call Call_000_0708
    ld a, $e4
    ld [$cd09], a
    ld a, $d0
    ld [$cd0a], a
    ld a, $e4
    ld [$cd0b], a
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $f7
    ld hl, $a0b3
    call Call_000_07c4
    xor a
    ld [$df3a], a
    xor a
    ld [$da01], a
    ld [$da00], a
    call Call_000_1584
    ld a, $7f
    ldh [rLYC], a
    ld [$da29], a
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    ld e, $22
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld de, $1a04
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf

jr_00e_6ccc:
    call Call_000_0496
    call Call_000_086b
    call Call_000_04ae
    call Call_000_0343
    call Call_000_0357
    ld a, [$df3a]
    or a
    jr z, jr_00e_6ccc

    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_00e_6ceb

    bit 3, a
    jr z, jr_00e_6ccc

jr_00e_6ceb:
    ld e, $2d
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld de, $1a04
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    jp Jump_000_0437


    rla
    or $0d
    inc b
    ld d, e
    ld [hl], h
    ld c, $01
    rst $38
    dec b
    db $10
    rrca
    inc a
    nop
    rrca
    add hl, sp
    nop
    rrca
    ld a, [hl-]
    jr nz, jr_00e_6d21

    ld b, $0f
    daa
    nop
    rrca
    dec sp
    jr nz, jr_00e_6d2d

    ld c, d

jr_00e_6d21:
    ld l, l
    dec c
    ld e, a
    ld l, l
    dec b
    ld [$2211], sp
    ld l, l
    ld a, [bc]
    dec c
    xor c

jr_00e_6d2d:
    ld l, l
    inc h
    inc l
    dec b
    jr nz, @+$0f

    ret


    ld l, l
    inc h
    ld e, e
    dec b
    jr nz, jr_00e_6d5e

    rst $38
    jr nz, jr_00e_6d8d

    nop
    ld hl, $0048
    dec c
    push af
    ld l, l
    dec b
    ldh a, [$ff0d]
    inc a
    ld l, [hl]
    nop
    ld e, $39
    ld a, [de]
    ld hl, $df2c
    add l
    ld l, a
    jr nc, jr_00e_6d55

    inc h

jr_00e_6d55:
    ld a, [hl]
    ld e, $3d
    ld [de], a
    ld h, d
    ld l, $3c
    add [hl]
    ld [hl], a

jr_00e_6d5e:
    ret


    push bc
    ld a, $0b
    ldh [$ff80], a
    ld hl, $df2c
    ld e, $39
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_00e_6d6f

    inc h

jr_00e_6d6f:
    ld a, [hl]
    or a
    jr z, jr_00e_6d97

    ld e, $3b
    ld a, [de]
    ld h, a
    dec e
    ld a, [de]
    ld e, h
    call Call_00e_6762
    ld e, $41
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $3b
    ld a, [de]

jr_00e_6d8d:
    add $08
    ld [de], a
    ld e, $3d
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_00e_6da7

jr_00e_6d97:
    ld e, $27
    ld a, $01
    ld [de], a
    ld e, $3a
    ld a, [de]
    add $10
    ld [de], a
    ld e, $39
    ld a, [de]
    inc a
    ld [de], a

jr_00e_6da7:
    pop bc
    ret


    push bc
    ld e, $28
    ld hl, $6dc3

jr_00e_6daf:
    ld a, [hl+]
    cp $ff
    jr z, jr_00e_6dc1

    ldh [$ff80], a
    ld a, $80
    call Call_00e_6762
    ld a, $08
    add e
    ld e, a
    jr jr_00e_6daf

jr_00e_6dc1:
    pop bc
    ret


    dec c
    ld c, $0d
    rrca
    db $10
    rst $38
    push bc
    ld e, $3c
    ld a, [de]
    ld b, $0a
    call Call_00e_6deb
    ld l, a
    ld a, c
    ldh [$ff80], a
    ld e, $70
    ld a, $80
    call Call_00e_6762
    ld a, $08
    add e
    ld e, a
    ld a, l
    ldh [$ff80], a
    ld a, $80
    call Call_00e_6762
    pop bc
    ret


Call_00e_6deb:
    ld c, $00

jr_00e_6ded:
    sub b
    jr c, jr_00e_6df3

    inc c
    jr jr_00e_6ded

jr_00e_6df3:
    add b
    ret


    push bc
    ld c, $00
    ld e, $3c
    ld a, [de]
    cp $46
    jr c, jr_00e_6e0f

    inc c
    cp $4b
    jr c, jr_00e_6e0f

    inc c
    cp $50
    jr c, jr_00e_6e0f

    inc c
    cp $54
    jr c, jr_00e_6e0f

    inc c

jr_00e_6e0f:
    ld a, c
    ld e, $15
    ld [de], a
    ld hl, $6e37
    add l
    ld l, a
    jr nc, jr_00e_6e1b

    inc h

jr_00e_6e1b:
    ld e, [hl]
    ld a, c
    or a
    jr z, jr_00e_6e2a

    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    jr jr_00e_6e32

jr_00e_6e2a:
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf

jr_00e_6e32:
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    ld e, l
    jr @+$1b

    dec l
    ld a, [hl+]
    ld a, $01
    ld [$df3a], a
    ret


    ld [bc], a
    nop
    nop
    ld a, h
    ld b, d
    nop
    xor $01
    nop
    ld a, h
    ld h, $00
    nop
    ld a, b
    ld b, e
    nop
    jr c, jr_00e_6e7a

    nop
    ld [$00fc], sp
    ld e, $00
    ld a, h
    nop
    ldh a, [rP1]
    cp $8c
    nop
    dec de
    ret


    nop
    inc h
    ld b, d
    xor $00
    ld [bc], a
    cp $00
    ld c, $c8
    nop
    ld sp, $e002
    nop
    db $fc
    adc d
    nop
    scf
    nop
    ld h, b
    add e
    nop

jr_00e_6e7a:
    ld d, e
    adc d
    nop
    rlca
    add e
    nop
    ld c, b
    inc b
    inc e
    nop
    jr c, jr_00e_6e86

jr_00e_6e86:
    ld [hl], b
    jp z, $1100

    nop
    ld a, h
    adc d
    nop
    rlca
    add e
    nop
    ld [bc], a
    inc b
    ld a, [hl]
    nop
    ld c, $00
    inc c
    ld [hl], $00
    nop
    jr c, jr_00e_6ede

    nop
    cp $03
    nop
    ld a, h

jr_00e_6ea2:
    nop
    ld l, h
    add a
    nop
    xor e
    nop
    jr c, jr_00e_6ecd

    cp $03
    ld a, h
    ld a, h
    ld l, h
    ld l, h
    add a
    nop
    ld c, e
    add a
    nop
    inc de
    pop de
    nop
    ld de, $008a
    sbc $00
    cp $c8
    nop
    ld b, e
    ld b, c
    ldh [rP1], a
    nop
    ldh [$ffc3], a
    nop
    ld d, l
    inc l
    nop
    ld b, c
    ld a, a

jr_00e_6ecd:
    nop
    ld [bc], a
    ld a, [hl]
    nop
    ld a, [hl]
    jr z, jr_00e_6ed4

jr_00e_6ed4:
    ld [bc], a
    ld hl, sp+$00
    db $fc
    adc h
    ld bc, $001c
    cp $8e

jr_00e_6ede:
    ld bc, $020a
    rra
    nop
    ccf
    xor h

jr_00e_6ee5:
    ld bc, $4138
    cp $00
    ld [bc], a
    add b
    nop
    add b
    rlc c
    jr z, jr_00e_6ea2

    ld bc, $022c
    rlca
    nop
    rlca
    xor a
    ld bc, $c370
    ld bc, $8c20
    ld bc, $c418
    ld bc, $852f

Jump_00e_6f05:
    ld bc, $8c2a
    ld bc, $8714
    ld bc, $024d
    ld hl, sp+$00
    ld hl, sp-$74
    ld bc, $0234
    ccf
    nop
    rra
    and e
    ld bc, $835c
    ld bc, $acb8
    ld bc, $0244
    db $fc
    nop
    ld hl, sp-$75
    ld bc, $af64
    ld bc, $90e8
    ld bc, $02e8
    ld a, a
    nop
    ld a, a
    xor h
    nop
    cp $02
    rlca
    nop
    rlca
    xor a
    ld [bc], a
    inc e
    inc hl
    nop
    rst $38
    inc sp
    ld a, [bc]
    dec hl
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    ld de, $1112
    ld h, e
    inc de
    inc b
    ld d, $16
    ld a, [bc]
    rla
    jr jr_00e_6ee5

    nop
    db $10
    ld l, b
    add hl, de
    ld [bc], a
    inc de
    ld [hl+], a
    inc hl
    ld hl, sp+$23
    nop
    inc hl
    adc l
    nop
    inc d
    ld bc, $0a01
    dec l
    inc c
    ldh a, [$ff2f]
    nop
    ld d, d
    nop
    ld [bc], a
    ldh a, [$ff3e]
    nop
    add e
    nop
    inc bc
    ldh a, [$ff3e]
    nop
    add e
    nop
    inc b
    ldh a, [$ff3e]
    nop
    add e
    nop
    dec b
    ldh a, [$ff3e]
    nop
    add e
    nop
    ld b, $f0
    ld a, $00
    add e
    add a
    nop
    ld [bc], a
    ld hl, sp+$35
    ld [bc], a
    add hl, bc
    rst $38
    dec [hl]
    nop
    ld de, $0001
    inc bc
    ld bc, $0307
    rrca
    rlca
    rrca
    ld b, $1f
    dec c
    ccf
    inc e
    ccf
    ld e, $3f
    rra
    ld b, e
    ld a, a
    ccf
    ld b, c
    ccf
    rra
    ld b, $1f
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc a
    nop
    ld bc, $0303
    ld b, c
    rlca
    inc b
    ldh [rNR42], a
    inc b
    rlca
    ld [$0e0f], sp
    add hl, bc
    inc de
    inc e
    ld de, $211e
    ld a, $23
    inc a
    ld b, a
    ld a, b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    daa
    jr c, @+$25

    inc a
    add hl, de
    ld e, $07
    ld b, $01
    ld bc, $0095
    ld b, h
    dec b
    inc b
    rlca
    add hl, sp
    ld a, $79
    ld c, [hl]
    ld b, c
    ld a, h
    ld b, a
    ld b, d
    ld a, $23
    ld b, c
    ld a, h
    ld b, a
    rlca
    ld a, b
    ld c, a
    jr nc, jr_00e_7036

    db $10
    rra
    ld [$d30f], sp
    nop
    ld e, e
    ld bc, $0101
    ld b, c
    inc bc
    ld [bc], a
    ld b, c
    rlca
    inc b
    inc bc
    rlca
    rlca
    dec b
    dec b
    add e
    nop
    ld d, [hl]
    ld b, c
    ld [bc], a
    inc bc
    nop
    ld e, $84
    nop
    xor a
    add e
    nop
    ld e, [hl]
    ld bc, $0f08
    ld b, c
    db $10
    rra
    add e
    nop
    ld l, b
    add hl, bc
    inc hl
    inc a
    ld h, $39
    ld [hl], $39
    ld d, $19
    dec c
    ld c, $23
    rlca
    inc sp
    nop
    inc bc
    ld a, $00
    rst $38

jr_00e_7036:
    ld a, $28
    rst $38
    ld [$ff7f], sp
    add hl, sp
    rst $38
    jr nc, @+$01

    ld [hl], d
    rst $38
    ld sp, hl
    ld [hl+], a
    rst $38
    nop
    rst $18
    ld b, d
    rst $38
    sbc a
    ld bc, $bfff
    jr z, @+$01

    ld bc, $1f1f
    jr c, jr_00e_7054

jr_00e_7054:
    ld b, $ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc bc
    ld b, c
    rst $38
    nop
    nop
    rst $38
    ld b, h
    rst $38
    nop
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    call z, $6e01
    adc d
    nop
    cp a
    ld b, $07
    inc b
    ld c, $09
    ccf
    ccf
    ldh [$ffa3], a
    ld bc, $0e5b
    ccf
    ldh [$ff9f], a
    ldh [$ff1f], a
    ret nz

    ccf
    ld b, $ff
    rrca
    ld sp, hl
    rrca
    di
    rrca
    pop af
    jp $a401


    nop
    ld b, $8a
    ld bc, $1164
    ret nz

    rst $38
    ccf
    ccf
    dec e
    ld [de], a
    rrca
    ld [$0707], sp
    ld [$3e08], sp
    ld a, $e9
    rst $10
    call z, Call_00e_4133
    adc [hl]
    ld [hl], c
    ld c, $8f
    ld [hl], b
    rrca
    ldh a, [rIE]
    rst $38
    ld [$4908], sp
    ld c, c
    ld l, e
    ld l, e
    db $dd
    rst $38
    ld [$0184], sp
    ld e, a
    dec b
    ld b, c
    rst $38
    ld [hl+], a
    rst $38
    rst $30
    ld a, $c3
    ld bc, $01dc
    ld a, a
    adc b
    ld b, c
    rst $38
    nop
    ld bc, $8877
    ld b, c
    ld h, e
    sbc h
    ld bc, $1ce3
    add l
    ld bc, $015f
    and d
    and d
    cp e
    nop
    ld [bc], a
    ld b, c
    ld hl, sp-$10
    ld bc, $f8fc
    and a
    nop
    ld h, $44
    rst $38
    cp $a5
    nop
    inc l
    inc b
    ld hl, sp-$10
    ldh a, [$ff80]
    add b
    ld a, [hl-]
    nop
    add hl, bc
    ldh [$ffe0], a
    ld a, [de]
    ld a, [$fc04]
    rlca
    rst $38
    db $fc
    inc b
    ld b, d
    ld hl, sp+$08
    ld bc, $04fc
    ld b, c
    db $fc
    inc h
    ld bc, $c2fe
    ld b, c
    cp $02
    ld b, c
    db $fc
    inc b
    ld bc, $18f8
    and e
    nop
    ld a, h
    xor l
    ld bc, $0b80
    ldh [rNR41], a
    ldh [$ffa0], a
    ld h, b
    ldh [$ff30], a
    ret nc

    jr @-$16

    inc e
    db $e4
    jp Jump_00e_7702


    ld b, c
    ld b, $fa
    ld bc, $f907
    ld b, c
    ld bc, $41ff
    rlca
    ld sp, hl
    dec bc
    ld bc, $02ff
    cp $0e
    ldh a, [c]
    inc e
    db $e4
    jr c, @-$36

    ld [hl], b
    or b
    ld [hl+], a
    ret nz

    nop
    ld b, b
    add a
    ld [bc], a
    dec a
    jp $bd02


    and a
    nop
    ldh [rTMA], a
    ldh a, [$fff0]
    ld d, b
    ld d, b
    nop
    nop
    ld h, b
    call nz, $9202
    nop
    inc a
    and h
    nop
    xor l
    inc b
    db $10
    ldh a, [$ff88]
    ld a, b
    ld [$02c4], sp
    ld a, d

jr_00e_716b:
    rrca
    jp nz, $e23e

    ld e, $62
    sbc [hl]
    ld [hl-], a
    adc $36
    adc $b4
    ld c, h
    ret c

    jr c, jr_00e_716b

    ld [hl], b
    add e
    ld [bc], a
    dec sp
    db $e4
    dec a
    nop
    ldh a, [$ff3b]
    nop
    sub $27
    nop
    dec b
    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    ld a, a
    ld a, [hl]
    ld a, a
    add e
    inc bc
    add h
    ld bc, $3f00
    inc sp
    nop
    ld [bc], a
    ccf
    ccf
    ld [hl], b
    ld b, c
    ld a, a
    ld [hl], a
    inc bc
    ld a, a
    ccf
    ccf
    nop
    sub h
    ld bc, $0b3e
    ld [hl], b
    ld [hl], b
    ld a, c
    ld a, c
    ld a, a
    ld a, a
    halt
    ld a, a
    ld [hl], b
    ld a, e
    nop
    jr c, jr_00e_71e7

    nop
    dec bc
    ld a, a
    ld a, a
    ld [hl], b
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld [hl], b
    ld a, a
    ld a, a
    ld a, a
    nop
    ccf
    db $e4
    ld b, c
    nop
    add h
    ld bc, $0288
    dec b
    rrca
    inc c
    jp Jump_000_3600


    inc b
    ld e, a
    ld e, a
    cp [hl]
    rst $38
    sbc h
    ldh a, [$ff3a]
    ld bc, $86d9
    ld bc, $0a0c
    ld a, $77
    ld a, a
    ld [hl], a
    rst $38
    ld a, a
    ld a, a
    ld [hl], a
    rst $38
    nop

jr_00e_71e7:
    dec sp
    sub [hl]
    inc bc
    ld l, [hl]
    ld [$77ff], sp
    ld a, a
    ld a, [hl]
    rst $38
    ld [hl], a
    rst $38
    nop
    cp e
    inc sp
    nop
    ld bc, $eeee
    ld b, e
    xor $ff
    ld bc, $7700
    or l
    inc b
    xor [hl]
    inc bc
    ld a, $bf
    inc e
    rra
    add e
    inc b
    add d
    ld bc, $bb00
    cp c
    nop
    ld b, b
    inc de
    ldh a, [$ffb0]
    ldh a, [$ff90]
    ld hl, sp-$78
    ld a, b
    ld c, b
    ld a, h
    ld b, h
    inc a
    inc h
    ld a, $22
    ld e, $12
    rra
    ld de, $090f
    call nz, $e500
    nop
    dec b
    add e
    inc b
    ld [hl-], a
    rlca
    rlca
    rlca
    ld bc, $0f01
    rrca
    ccf
    ccf
    inc h
    rst $38
    ld b, $73
    rst $38
    ld l, c
    rst $38
    pop hl
    rst $38
    di
    rst $00
    ld bc, $0539
    ld a, $ff
    ccf
    cp $0f
    cp $41
    rra
    db $fc
    ld [bc], a
    adc a
    ld a, l
    rrca
    ld b, c
    db $fc
    rlca
    inc c
    db $fc
    jp $e33e


    rra
    ld h, e
    sbc a
    ld [hl-], a
    rst $08
    ld [hl], $cf
    or a
    ld c, a
    ldh a, [rNR42]
    ld [bc], a
    ld hl, sp-$7d
    inc bc
    add d
    ld b, c
    ld [hl], a
    rst $38
    inc bc
    ld a, [hl]
    rst $38
    nop
    cp a
    sbc b
    inc bc
    adc $04
    cp $70

jr_00e_7278:
    rst $38
    ld a, a
    ld a, a
    sub l
    dec b
    adc h
    ld bc, $fcfc
    and e
    inc b
    add h
    dec b
    db $fc
    rst $38
    xor $fe
    nop
    ld [hl], a
    sub [hl]
    inc bc
    adc [hl]
    nop
    rst $38
    ld b, c
    ld [hl], b
    ld a, b
    inc bc
    ccf
    ccf
    nop
    sbc a
    ld hl, sp+$2f
    inc bc
    dec l
    ld [hl+], a
    ldh [rTMA], a
    and b
    rst $28
    rst $28
    ld a, a
    sub b
    rst $38
    nop
    ld b, c
    rst $38
    ld a, [bc]
    rrca
    rst $38
    adc d
    adc $b1
    push af
    adc [hl]
    cp a
    call nz, $c0ff
    rst $38
    rst $38
    ldh [$ff3f], a
    ret nz

    ccf
    ld b, c
    jr nz, @+$01

    ld [bc], a
    inc c
    rst $38
    ld a, a
    and a
    ld bc, $0271
    ld hl, $21ff
    jp z, $b701

    inc b
    ret nz

    ccf
    rst $38
    ld b, b
    ret nz

    ldh a, [rNR44]
    ld [bc], a
    cp $22
    ld [hl], b
    ld [$7078], sp
    ld hl, sp+$00
    cp b
    ld [hl], b
    ldh a, [rP1]
    jr c, jr_00e_7278

    inc b
    ld l, [hl]
    jp $8b04


    nop
    ld a, a
    add e
    inc b
    ld [$04ba], a
    ld l, [hl]
    sbc b
    inc b
    ret


    inc bc
    ld a, a
    ld a, a
    ld [hl], b
    rst $38
    add e
    inc bc
    and $83
    dec b
    xor d
    db $e4
    inc sp
    nop
    ldh [rSTAT], a
    jr nc, jr_00e_7334

    ld sp, hl
    ld sp, hl
    db $fd
    dec a
    rst $18
    ccf
    ld hl, sp+$1f
    ld hl, sp+$0f
    ld a, h
    add a
    db $fc
    rlca
    ld sp, hl
    rrca
    di
    ccf
    di
    rst $38
    ei
    adc $3f
    call z, $fc87
    add a
    rst $38
    ld b, $fd
    call z, $f83b
    rla
    ldh a, [$ff1f]
    ldh a, [$ff2f]
    ldh [$ff3f], a
    ldh a, [$ff7f]
    ld hl, sp-$31
    ret z

    ld [hl], a
    ld hl, sp+$47

jr_00e_7334:
    ret z

    ld [hl], a
    ld hl, sp+$4f
    ldh a, [$ff7f]
    ldh [rIE], a
    sub b
    rst $38
    ld [hl], b
    ld a, a
    ld [$060f], sp
    rlca
    xor c
    ld [bc], a
    cp $f0
    inc sp
    inc bc
    adc [hl]
    inc bc
    ld a, a
    ld a, a
    inc e
    ccf
    ld b, d
    inc e
    sbc [hl]
    ld bc, $8e00
    sub l
    inc bc
    ld l, [hl]
    ld bc, $ffe0
    ld b, c
    ldh [$fff0], a
    inc bc
    ld a, [hl]
    ld a, [hl]
    nop
    ccf
    sub [hl]
    ld b, $6e

jr_00e_7367:
    jp $8706


    nop
    ld a, b
    ldh a, [$ff37]
    ld b, $ea
    inc hl
    ret nz

    inc hl
    ldh [rNR14], a
    jr nc, jr_00e_7367

    inc c
    db $fc
    ld [bc], a
    cp $c7
    rst $38
    rst $28
    add hl, sp
    rst $38
    sbc h
    rst $38
    call c, Call_000_39ff
    halt
    sbc a
    ld hl, sp-$01
    ld b, $88
    ld bc, $0170
    inc a
    rst $08
    jp $7301


    ld bc, $fe03
    ld b, d
    rlca
    db $fc
    ld [bc], a
    inc bc
    cp $01
    xor d
    ld bc, $03ad
    cp h
    ld c, h
    ldh a, [$fff0]
    sbc h
    inc b
    ld l, b
    jp $8704


    inc b
    rst $38
    ld a, $bf
    nop
    sbc a
    sbc c
    rlca
    adc $03
    nop
    jr c, jr_00e_7428

    ld [hl], b
    sub l
    inc bc
    call z, $e001
    ldh [rSCY], a
    ldh [$fff0], a
    inc bc
    cp $fe
    nop
    ld a, a
    sub a
    ld b, $6e
    add a
    rlca
    and $e4
    ld b, e
    nop
    inc hl
    add b
    and l
    nop
    sub $84
    ld [bc], a
    adc l
    inc b

jr_00e_73d9:
    ldh [$ff60], a
    ldh [$ff30], a
    ldh a, [rSTAT]
    jr jr_00e_73d9

    nop
    ld [$f822], sp
    dec b
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    ld [hl], h
    jp Jump_00e_5209


    ld bc, $f8f8
    and h
    nop
    xor [hl]
    nop
    ldh [$fff8], a
    ld hl, $2308
    add l
    inc b
    add d
    add e
    ld [$9588], sp
    inc bc
    xor h
    rlca
    cp $fe
    ldh [rIE], a
    db $fc
    db $fc
    ldh [$fffe], a
    add e
    ld [$9eca], sp
    inc bc
    adc $00
    cp a
    sbc [hl]
    dec b
    ld l, [hl]
    nop
    ccf
    sbc c
    ld [$04ae], sp
    nop
    ld [hl], b
    ldh [$ffe0], a
    nop
    call nc, $c203
    inc bc
    ld [hl], e

jr_00e_7428:
    ld [hl], e
    ld a, e
    ei
    add e
    ld b, $a8
    inc bc
    ld [hl], e
    ld a, e
    nop
    cp c
    ldh a, [$ff33]
    ld b, $6e
    inc bc
    cp a
    cp a
    adc [hl]
    rst $18
    ld b, d
    adc [hl]
    rst $08
    ld bc, $c700
    inc sp
    nop
    add hl, bc

jr_00e_7445:
    cp b
    cp b
    jr c, jr_00e_7445

    jr c, @+$3e

    nop
    inc e
    jr c, @+$3a

    or e
    inc bc
    call z, Call_00e_5dff
    ld [hl], h
    add [hl]
    ld [hl], h
    or e
    ld [hl], h
    db $e4
    ld [hl], h
    dec e
    ld [hl], l
    ld a, [bc]
    db $10
    ld a, [bc]
    ld l, b
    nop
    db $10
    ld [bc], a
    ld e, b
    nop
    db $10
    ld a, [$0048]
    db $10
    ldh a, [c]
    jr c, jr_00e_746e

jr_00e_746e:
    ld hl, sp+$04
    ld [hl+], a
    nop
    ld hl, sp-$04
    ld [de], a
    nop
    ld hl, sp-$0c
    ld [bc], a
    nop
    add sp, $04
    jr nz, jr_00e_747e

jr_00e_747e:
    add sp, -$04
    stop
    add sp, -$0c
    nop
    ld bc, $100b
    ld c, $a4
    nop
    db $10
    ld b, $9e
    nop
    db $10
    cp $98
    nop
    db $10
    or $88
    nop
    db $10
    xor $78
    nop
    ld a, [$2a04]
    nop
    ld a, [$1afc]
    nop
    ld a, [$0af4]
    nop
    ld [$2804], a
    nop
    ld [$18fc], a
    nop
    ld [$08f4], a
    ld bc, $100c
    ld [de], a
    adc d
    nop
    db $10
    ld a, [bc]
    ld a, d
    nop
    db $10
    ld [bc], a
    ld l, d
    nop
    db $10
    ld a, [$005a]
    db $10
    ldh a, [c]
    ld c, d
    nop
    db $10
    ld [$003a], a
    ld hl, sp+$04
    ld h, $00
    ld hl, sp-$04
    ld d, $00
    ld hl, sp-$0c
    ld b, $00
    add sp, $04
    inc h
    nop
    add sp, -$04
    inc d
    nop
    add sp, -$0c
    inc b
    ld bc, $100e
    ld a, [de]
    and b
    nop
    db $10
    ld [de], a
    sbc d
    nop
    db $10
    ld a, [bc]
    adc h
    nop
    db $10
    ld [bc], a
    ld a, h
    nop
    db $10
    ld a, [$006c]
    db $10
    ldh a, [c]
    ld e, h
    nop
    db $10
    ld [$004c], a
    db $10
    ldh [c], a
    inc a
    nop
    ld hl, sp+$04
    ld l, $00
    ld hl, sp-$04
    ld e, $00
    ld hl, sp-$0c
    ld c, $00
    add sp, $04
    inc l
    nop
    add sp, -$04
    inc e
    nop
    add sp, -$0c
    inc c
    ld bc, $1026
    ld hl, $00a8
    db $10
    add hl, de
    and [hl]
    nop
    db $10
    ld de, $00a2
    db $10
    add hl, bc
    sbc h
    nop
    db $10
    ld bc, $008e
    db $10
    ld sp, hl
    ld a, [hl]
    nop
    db $10
    pop af
    ld l, [hl]
    nop
    db $10
    jp hl


    ld e, [hl]
    nop
    db $10
    pop hl
    ld c, [hl]
    nop
    db $10
    reti


    ld a, $00
    dec b
    inc d
    sub [hl]
    nop
    dec b
    inc c
    add [hl]
    nop
    dec b
    inc b
    halt
    nop
    dec b
    db $fc
    ld h, [hl]
    nop
    dec b
    db $f4
    ld d, [hl]
    nop
    dec b
    db $ec
    ld b, [hl]
    nop
    dec b
    db $e4
    ld [hl], $00
    push af
    inc d
    sub h
    nop
    push af
    inc c
    add h
    nop
    push af
    inc b
    ld [hl], h
    nop
    push af
    db $fc
    ld h, h
    nop
    push af
    db $f4
    ld d, h
    nop
    push af
    db $ec
    ld b, h
    nop
    push af
    db $e4
    inc [hl]
    nop
    push hl
    inc d
    sub d
    nop
    push hl
    inc c
    add d
    nop
    push hl
    inc b
    ld [hl], d
    nop
    push hl
    db $fc
    ld h, d
    nop
    push hl
    db $f4
    ld d, d
    nop
    push hl
    db $ec
    ld b, d
    nop
    push hl
    db $e4
    ld [hl-], a
    nop
    push de
    inc d
    sub b
    nop
    push de
    inc c
    add b
    nop
    push de
    inc b
    ld [hl], b
    nop
    push de
    db $fc
    ld h, b
    nop
    push de
    db $f4
    ld d, b
    nop
    push de
    db $ec
    ld b, b
    nop
    push de
    db $e4
    jr nc, jr_00e_75b7

    rst $38

jr_00e_75b7:
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00e_76d9

jr_00e_76d9:
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

Jump_00e_7702:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00e_7813

jr_00e_7813:
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    ld bc, $0080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00e_7ad5

jr_00e_7ad5:
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_00e_7c45

jr_00e_7c45:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00e_7cdb

jr_00e_7cdb:
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
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
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
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_00e_7f49

    nop

jr_00e_7f49:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_00e_7fc8

jr_00e_7fc8:
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
