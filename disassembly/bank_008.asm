; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    ld a, $a0
    ld [$da48], a
    xor a
    ld [$da46], a
    ld [$da47], a
    ld hl, $b201
    ld [hl], a
    dec h
    ld b, $12
    ld a, $b2

jr_008_4015:
    ld [hl], a
    dec h
    dec a
    dec b
    jr nz, jr_008_4015

    ld a, $ff
    ld b, $13
    ld hl, $a000

jr_008_4022:
    ld [hl], a
    inc h
    dec b
    jr nz, jr_008_4022

    ret


    ld hl, $a000
    ld de, $dae6
    ld bc, $004d
    call Call_000_0621
    ld a, [$da46]
    ld [$db33], a
    ld a, $a0
    ld [$da46], a
    xor a
    ld [$a001], a
    ret


    ld de, $a000
    ld hl, $dae6
    ld bc, $004d
    call Call_000_0621
    ld a, [$db33]
    ld [$da46], a
    ret


    xor a
    ld b, $2f
    ld hl, $a050

jr_008_405d:
    ld [hl+], a
    dec b
    jr nz, jr_008_405d

    ret


    ld hl, $5fe1
    ld a, $1e
    call Call_000_05cf
    ld hl, $5f68
    ld a, $1e
    call Call_000_05cf
    xor a
    ld [$deff], a

Jump_008_4076:
    ld hl, $7a2d
    ld a, $10
    call Call_000_05cf

Jump_008_407e:
jr_008_407e:
    ld hl, $5fee
    ld a, $07
    call Call_000_05cf
    ld a, [$deff]
    or a
    jp nz, Jump_008_43f3

    ld hl, $68d2
    ld a, $0f
    call Call_000_05cf
    ld a, [$df0a]
    cp $ff
    jr z, jr_008_407e

    cp $03
    jr c, jr_008_40ab

    cp $04
    jp c, Jump_008_43e8

    jp z, Jump_008_432c

    jp Jump_008_438c


jr_008_40ab:
    call Call_008_449b
    ld hl, $db39
    ld [hl], $00

Jump_008_40b3:
    ld e, $07
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    ld hl, $32ff
    ld a, $00
    call Call_000_05cf
    ld e, $00
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    call Call_008_46ef
    cp $ff
    jr z, jr_008_40e8

    cp $07
    jr nc, jr_008_40e8

    ld e, a
    ld hl, $2a2b
    ld a, $00
    call Call_000_05cf
    ld a, $01
    ld [$db38], a

jr_008_40e8:
    ld hl, $10e6
    ld a, $00
    call Call_000_05cf
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    ld a, [$db60]
    ld hl, $4278
    add a
    add l
    ld l, a
    jr nc, jr_008_4104

    inc h

jr_008_4104:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_008_4107:
    call Call_008_44d0

Jump_008_410a:
    ld hl, $11be
    ld a, $00
    call Call_000_05cf
    ld a, [$a082]
    dec a
    ld hl, $4123
    add a
    add l
    ld l, a
    jr nc, jr_008_411f

    inc h

jr_008_411f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $35, $41, $a4, $41, $3b, $42

    add [hl]
    ld b, d
    cp [hl]
    ld b, d
    ld b, $43
    ld e, $43
    ld h, e
    ld b, e
    add a
    ld b, h

    ld a, [$db61]
    ld [$db6d], a
    cp $08
    jr nz, jr_008_4149

    ld e, $00
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf

jr_008_4149:
    ld hl, $1220
    ld a, $00
    call Call_000_05cf
    ld a, [hl]
    cp $20
    jp nc, Jump_008_4107

    cp $01
    jp nz, Jump_008_4107

    ld a, $ff
    ld [$db57], a
    ld hl, $3212
    ld a, $00
    call Call_000_05cf
    ld hl, $10e6
    ld a, $00
    call Call_000_05cf
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    ld a, [$db61]
    ld e, a
    ld a, [$db60]
    call Call_000_162a
    or a
    jr nz, jr_008_418d

    ld a, $01
    ld [$db3a], a
    jr jr_008_4195

jr_008_418d:
    ld hl, $6d6c
    ld a, $0f
    call Call_000_05cf

jr_008_4195:
    xor a
    ld [$db6e], a
    ld hl, $4851
    ld a, $08
    call Call_000_05cf
    jp Jump_008_4107


    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld a, [$df0a]
    cp $04
    jp z, Jump_008_407e

    call Call_008_46cb
    ld a, [$a084]
    or a
    jr z, jr_008_41fb

    dec a
    daa
    ld [$a084], a
    ld hl, $6d6c
    ld a, $0f
    call Call_000_05cf
    ld hl, $dede
    set 2, [hl]
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    ld e, $01
    ld hl, $459c
    ld a, $07
    call Call_000_05cf
    ld e, $02
    ld hl, $459c
    ld a, $07
    call Call_000_05cf
    ld a, [$db36]
    ld l, a
    ld a, [$db37]
    ld h, a
    jp Jump_008_4107


jr_008_41fb:
    ld a, $02
    ld [$a084], a
    ld hl, $5a7c
    ld a, $07
    call Call_000_05cf
    ld hl, $6d6c
    ld a, $0f
    call Call_000_05cf
    ld hl, $2a29
    ld a, $00
    call Call_000_05cf
    ld a, [$da2c]
    cp $01
    jp z, Jump_008_407e

    ld hl, $10e6
    ld a, $00
    call Call_000_05cf
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    ld hl, $4851
    ld a, $08
    call Call_000_05cf
    jp Jump_008_4107


    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld a, [$db61]
    cp $08
    jr nz, jr_008_425c

    ld e, $00
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    jp Jump_008_40b3


jr_008_425c:
    ld a, [$db60]
    cp $06
    jp nz, Jump_008_40b3

    ld hl, $dedf
    res 1, [hl]
    xor a
    ld [$dee3], a
    ld a, $00
    ld [$a071], a
    ld hl, $50e4
    jp Jump_008_4107


    db $81, $48, $0a, $49, $94, $49

    ld d, l
    ld c, d
    ld l, $4b
    sub b
    ld c, h
    ld [de], a
    ld c, [hl]
    ld a, [$cd4d]
    or a
    jp nz, Jump_008_410a

    ld a, [$deff]
    or a
    jp nz, Jump_008_4473

    ld hl, $6145
    ld a, $0f
    call Call_000_05cf
    ld a, [$df04]
    rra
    jp nc, Jump_008_410a

    ld hl, $79f4
    ld a, $01
    call Call_000_05cf
    ld hl, $6d6c
    ld a, $0f
    call Call_000_05cf
    ld hl, $4851
    ld a, $08
    call Call_000_05cf
    jp Jump_008_4107


    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld hl, $1126
    ld a, $00
    call Call_000_05cf
    ld hl, $79f4
    ld a, $01
    call Call_000_05cf
    ld a, [$df0a]
    cp $05
    jp z, Jump_008_43bd

    ld a, [$db60]
    call Call_000_0663
    ld hl, $db6e
    or [hl]
    ld [hl], a
    ld a, $01
    ld [$db3c], a
    ld hl, $6d6c
    ld a, $0f
    call Call_000_05cf
    ld hl, $4851
    ld a, $08
    call Call_000_05cf
    jp Jump_008_4107


    ld e, $08
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld hl, $3c92
    ld a, $00
    call Call_000_05cf
    jp Jump_008_407e


    call Call_000_0437
    ld hl, $4000
    ld a, $19
    call Call_000_05cf
    jp Jump_008_407e


Jump_008_432c:
    call Call_008_449b
    xor a
    ld [$db6a], a
    ld [$db6b], a
    ld [$a084], a
    ld [$a071], a
    ld [$a051], a
    ld hl, $dedb
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$a05b], a
    ld [$db60], a
    ld a, $7f
    ld [$dd63], a
    ld hl, $10e6
    ld a, $00
    call Call_000_05cf
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    jr jr_008_4370

    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437

jr_008_4370:
    ld hl, $dede
    set 6, [hl]
    ld a, [$db60]
    inc a
    ld [$db60], a
    inc a
    ld bc, $0005
    ld hl, $50e8
    jr jr_008_4386

jr_008_4385:
    add hl, bc

jr_008_4386:
    dec a
    jr nz, jr_008_4385

    jp Jump_008_4107


Jump_008_438c:
    call Call_008_449b
    xor a
    ld [$a084], a
    ld [$a071], a
    ld [$a051], a
    ld hl, $dedb
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$a05b], a
    ld [$db60], a
    ld a, $7f
    ld [$db6a], a
    ld hl, $10e6
    ld a, $00
    call Call_000_05cf
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    jr jr_008_43bd

Jump_008_43bd:
jr_008_43bd:
    ld hl, $dede
    set 6, [hl]
    ld a, [$db60]
    inc a
    cp $06
    jr z, jr_008_43dd

    ld [$db60], a
    inc a
    ld bc, $0005
    ld hl, $50e8
    jr jr_008_43d7

jr_008_43d6:
    add hl, bc

jr_008_43d7:
    dec a
    jr nz, jr_008_43d6

    jp Jump_008_4107


jr_008_43dd:
    ld hl, $6c52
    ld a, $0e
    call Call_000_05cf
    jp Jump_008_407e


Jump_008_43e8:
    ld hl, $655f
    ld a, $0e
    call Call_000_05cf
    jp Jump_008_407e


Jump_008_43f3:
    ld a, $06
    ld [$df0a], a
    ld e, $ff
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    call Call_008_449b
    ld a, [$deff]
    dec a
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $446a
    add hl, bc
    ld a, [hl+]
    ld [$a071], a
    ld a, [hl+]
    ld [$a051], a
    ld a, [hl]
    ld [$a05b], a
    xor a
    ld [$db6a], a
    ld hl, $dedb
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$dd63], a
    ld a, $02
    ld [$a084], a
    ld a, $0c
    ld [$dee3], a
    ld a, $06
    ld [$dee5], a
    ld hl, $10e6
    ld a, $00
    call Call_000_05cf
    ld hl, $1166
    ld a, $00
    call Call_000_05cf
    ld hl, $dede
    set 6, [hl]
    set 1, [hl]
    ld a, [$deff]
    ld hl, $4462
    add a
    add l
    ld l, a
    jr nc, jr_008_445e

    inc h

jr_008_445e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_008_4107


    dec bc
    ld d, c
    ld de, $1751
    ld d, c
    nop
    nop
    rst $38
    ld bc, $0005
    inc bc
    rlca
    inc b

Jump_008_4473:
    xor a
    ld [$da3a], a
    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    jp Jump_008_4076


    xor a
    ld [$da3a], a
    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    jp Jump_008_407e


Call_008_449b:
    ld hl, $5a7c
    ld a, $07
    call Call_000_05cf
    ld a, $86
    ld [$a083], a
    call Call_008_46cb
    xor a
    ld [$db7b], a
    ld [$db6e], a
    ld hl, $dbd0
    ld bc, $012c
    ld a, $00
    call Call_000_062f
    ld a, $d0
    ld [$dcfd], a
    ld a, $db
    ld [$dcfe], a
    ld hl, $6d21
    ld a, $0f
    call Call_000_05cf
    ret


Call_008_44d0:
    push hl
    xor a
    ld [$a07e], a
    ld [$db73], a
    ld [$db74], a
    ld [$db75], a
    ld [$db76], a
    ld [$db77], a
    ld hl, $a077
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $db78
    ld a, $e4
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $e4
    ld [hl+], a
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    pop hl
    ld a, l
    ld [$db36], a
    ld a, h
    ld [$db37], a

Jump_008_4508:
jr_008_4508:
    ld a, [hl]
    and $e0
    cp $20
    jp z, Jump_008_4647

    cp $40
    jp z, Jump_008_4650

    cp $80
    jp z, Jump_008_4694

    cp $60
    jr nz, jr_008_4521

    inc hl
    jr jr_008_4508

jr_008_4521:
    ld a, [$db3a]
    or a
    jr z, jr_008_4532

    xor a
    ld [$db3a], a
    ld a, [hl+]
    and $0f
    add $03
    jr jr_008_4565

jr_008_4532:
    ld a, [$da2c]
    cp $02
    jr nz, jr_008_4542

    xor a
    ld [$da2c], a
    inc hl
    ld a, $00
    jr jr_008_4565

jr_008_4542:
    ld a, [$db60]
    cp $06
    jr nc, jr_008_4562

    ld a, [$db61]
    cp $09
    jr nz, jr_008_4562

    push hl
    ld a, [$db60]
    call Call_000_0663
    pop hl
    ld e, a
    ld a, [$db6a]
    and e
    jr z, jr_008_4562

    ld [$db73], a

jr_008_4562:
    ld a, [hl+]
    and $1f

jr_008_4565:
    ld [$a07f], a
    ld a, [hl+]
    ld [$db57], a
    ld a, [hl+]
    ld c, a
    rla
    sbc a
    scf
    rl c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ld a, [hl+]
    ld e, a
    rla
    sbc a
    scf
    rl e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    inc de
    ld a, $00
    ld hl, $a0a1
    call Call_000_07c4
    ld a, $08
    ld [$a00b], a
    ld [$a009], a
    ld hl, $1286
    ld a, $00
    call Call_000_05cf
    ld hl, $473a
    ld a, $08
    call Call_000_05cf
    ld hl, $41dc
    ld a, $07
    call Call_000_05cf
    ld hl, $4584
    ld a, $07
    call Call_000_05cf
    ld hl, $43a0
    ld a, $07
    call Call_000_05cf
    ld a, [$a07f]
    cp $02
    jr nz, jr_008_45e0

    ld a, $10
    ld hl, $6211
    ld de, $8100
    ld bc, $0360
    call Call_000_05bf
    jr jr_008_45f4

jr_008_45e0:
    cp $05
    jr nz, jr_008_45f4

    ld a, $0b
    ld hl, $6980
    ld de, $8000
    call Call_000_060d
    ld a, $01
    ld [$db74], a

jr_008_45f4:
    ld hl, $4105
    ld a, $07
    call Call_000_05cf
    ld hl, $4128
    ld a, $07
    call Call_000_05cf
    ld hl, $40e2
    ld a, $07
    call Call_000_05cf
    ld hl, $db78
    ld de, $cd09
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    call Call_000_3131
    ld a, $67
    ldh [rLCDC], a
    call Call_000_046d
    ld hl, $dedf
    res 0, [hl]
    ld a, [$db60]
    cp $02
    jr nz, jr_008_463c

    ld a, [$db61]
    cp $09
    jr nz, jr_008_463c

    ld a, $01
    ld [$db75], a

jr_008_463c:
    ld e, $04
    ld hl, $424e
    ld a, $1a
    call Call_000_05cf
    ret


Jump_008_4647:
    ld a, [hl+]
    and $1f
    ld [$db60], a
    jp Jump_008_4508


Jump_008_4650:
    ld a, [hl+]
    and $1f
    ld [$db61], a
    push hl
    cp $08
    jr nc, jr_008_4690

    ld e, $01
    ld hl, $459c
    ld a, $07
    call Call_000_05cf
    ld e, $02
    ld hl, $459c
    ld a, $07
    call Call_000_05cf
    ld a, [$db3b]
    ld b, a
    ld a, [$db60]
    cp b
    jr z, jr_008_4690

    ld [$db3b], a
    ld e, $00
    ld hl, $459c
    ld a, $07
    call Call_000_05cf
    ld e, $03
    ld hl, $459c
    ld a, $07
    call Call_000_05cf

jr_008_4690:
    pop hl
    jp Jump_008_4508


Jump_008_4694:
    ld a, [hl+]
    push hl
    and $1f
    cp $04
    jr z, jr_008_46b8

    ld bc, $0080
    ld hl, $a077
    cp $02
    jr c, jr_008_46ae

    ld bc, $ff80
    jr z, jr_008_46ae

    ld hl, $a079

jr_008_46ae:
    ld [hl], c
    inc hl
    ld [hl], b
    ld [$db77], a
    pop hl
    jp Jump_008_4508


jr_008_46b8:
    ld a, $01
    ld [$db76], a
    ld a, $fa
    ld hl, $db78
    ld [hl+], a
    ld a, $f8
    ld [hl+], a
    ld [hl], a
    pop hl
    jp Jump_008_4508


Call_008_46cb:
    ld hl, $4057
    ld a, $08
    call Call_000_05cf
    ld hl, $dedf
    res 1, [hl]
    ld a, $0c
    ld [$a04c], a
    ld a, $06
    ld [$a072], a
    xor a
    ld [$dee3], a
    ld [$dee5], a
    ld a, $ff
    ld [$a05b], a
    ret


Call_008_46ef:
    ld hl, $db60
    ld a, [hl]
    ld b, $01
    and a

jr_008_46f6:
    jr z, jr_008_46fd

    sla b
    dec a
    jr jr_008_46f6

jr_008_46fd:
    ld hl, $db39
    ld a, [hl]
    and b
    jr nz, jr_008_470b

    ld a, [hl]
    or b
    ld [hl], a
    ld a, [$db60]
    ret


jr_008_470b:
    ld a, $ff
    ret


    push bc
    ld h, d
    ld l, $3b
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    ld e, [hl]
    inc l
    ld d, [hl]
    call Call_008_472b
    ld a, e
    sub $10
    ld e, a
    jr nc, jr_008_4723

    dec d

jr_008_4723:
    call Call_008_472b
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


Call_008_472b:
    call Call_000_15e3
    inc [hl]
    ld a, [hl]
    ldh [$ff84], a
    push bc
    push de
    call Call_000_15b0
    pop de
    pop bc
    ret


    ld a, [$db61]
    cp $08
    ret nz

    ld a, [$db60]
    ld hl, $47c0
    add a
    add l
    ld l, a
    jr nc, jr_008_474c

    inc h

jr_008_474c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_008_474f:
    ld a, [hl+]
    cp $ff
    ret z

    ld c, a
    ld a, [hl+]
    ld e, a
    push bc
    push de

jr_008_4758:
    ld a, [hl]
    and $e0
    cp $40
    jr z, jr_008_476b

    inc hl
    jr jr_008_4758

jr_008_4762:
    pop hl
    pop de
    pop bc

jr_008_4765:
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_008_474f

jr_008_476b:
    ld a, [hl+]
    push hl
    and $1f
    cp $09
    ld e, a
    ld a, [$db60]
    jr z, jr_008_4784

    inc e
    dec e
    jr z, jr_008_4762

    dec e
    call Call_000_162a
    or a
    jr nz, jr_008_4762

    jr jr_008_479c

jr_008_4784:
    call Call_000_1611
    or a
    jr nz, jr_008_479c

    ld a, [$db3c]
    or a
    jr nz, jr_008_4762

    ld a, [$db60]
    call Call_000_0663
    ld hl, $db6e
    and [hl]
    jr z, jr_008_4762

jr_008_479c:
    pop hl
    pop de
    pop bc
    push hl
    swap c
    ld a, c
    and $0f
    ld b, a
    swap e
    ld a, e
    and $0f
    ld d, a
    call Call_000_15e3
    inc [hl]
    swap e
    dec e
    swap e
    ld a, e
    and $0f
    ld d, a
    call Call_000_15e3
    inc [hl]
    pop hl
    jr jr_008_4765

    db $d1, $48, $5b, $49, $1c, $4a

    rst $20
    ld c, d
    dec sp
    ld c, h
    xor a
    ld c, l
    ld [hl], e
    ld d, b

    ld a, [$db60]
    call Call_000_1611
    or a
    ld d, $49
    jr z, jr_008_47e0

    ld a, [$db6d]
    inc a
    or $40
    ld d, a

jr_008_47e0:
    ld a, [$db60]
    ld hl, $47c0
    add a
    add l
    ld l, a
    jr nc, jr_008_47ec

    inc h

jr_008_47ec:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_008_47ef:
    ld a, [hl+]
    cp $ff
    ret z

    ld c, a
    ld a, [hl+]
    ld e, a
    push bc
    push de

jr_008_47f8:
    ld a, [hl]
    and $e0
    cp $40
    jr z, jr_008_480a

    inc hl
    jr jr_008_47f8

jr_008_4802:
    pop de
    pop bc
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_008_47ef

jr_008_480a:
    ld a, [hl+]
    cp d
    jr nz, jr_008_4802

    pop de
    pop bc
    swap c
    ld a, c
    and $0f
    ld b, a
    swap e
    ld a, e
    and $0f
    ld d, a
    push bc
    push de
    call Call_008_482c
    pop de
    pop bc
    swap e
    dec e
    swap e
    ld a, e
    and $0f
    ld d, a

Call_008_482c:
    call Call_000_15e3
    ld a, [hl]
    dec a
    ld [hl], a
    ldh [$ff81], a
    push de
    ld d, $c9
    ld e, a
    ld a, [de]
    pop de
    cp $10
    jr z, jr_008_4846

    cp $18
    jr z, jr_008_4846

    cp $90
    jr nz, jr_008_4849

jr_008_4846:
    call Call_000_3bfb

jr_008_4849:
    ldh a, [$ff81]
    ldh [$ff84], a
    call Call_000_15b0
    ret


    ld a, [$db60]
    ld hl, $4873
    add a
    add l
    ld l, a
    jr nc, jr_008_485d

    inc h

jr_008_485d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db61]
    inc a
    cp $09
    jr c, jr_008_4869

    xor a

jr_008_4869:
    add a
    add l
    ld l, a
    jr nc, jr_008_486f

    inc h

jr_008_486f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    db $ee, $48, $78, $49, $39, $4a

    dec bc
    ld c, e
    ld h, [hl]
    ld c, h
    pop hl
    ld c, l
    xor h
    ld d, b

    db $20, $48, $02, $0b, $02, $fd

    rst $38

    db $37, $06, $00, $02, $02, $05

    rst $38

    db $1a, $07, $03, $03, $03, $06, $48, $04, $01

    rst $38

    db $02, $06, $03, $02, $1b, $07

    rst $38

    db $38, $05, $00, $06, $03, $07

    rst $38

    db $4c, $04, $01

    rst $38

    db $0a, $03, $00, $05, $02, $05

    rst $38

    db $3f, $06, $00, $08, $08, $15

    rst $38

    db $08, $03, $00, $09, $04, $07

    rst $38

    db $13, $07, $03, $0a, $03, $07

    rst $38

    db $02

    rlca

    db $04

    add hl, bc
    ld [de], a
    rlca

    db $40, $03, $01

    rst $38

    db $0a, $08, $49, $00, $00, $03, $08, $0a, $0b, $40, $00, $01, $02, $07, $10, $0c
    db $42, $00, $07, $02, $07, $04, $0c, $41, $00, $04, $02, $07, $ff

    or $48

    db $fb, $48, $00, $49, $05, $49

    ld c, b
    inc bc
    dec bc
    dec bc
    db $08

    db $48, $04, $0b, $09, $0b, $48, $03, $0b, $05, $0c, $48, $04, $0b, $0f, $0c, $21
    db $48, $02, $18, $02, $fd

    rst $38

    db $4b, $05, $00, $0e, $03, $05

    rst $38

    db $08, $05, $00, $0f, $04, $04

    rst $38

    db $4a, $09, $01

    rst $38

    db $05

    inc c

    db $00

    ld [de], a
    inc b
    inc b

    db $3a, $03, $00, $11, $02, $04

    rst $38

    db $4a, $06, $01

    rst $38
    dec bc
    inc b
    nop
    db $10
    add hl, bc
    inc c
    rst $38

    db $3d, $03, $00, $14, $07, $2d

    rst $38

    db $0a, $0e, $00, $15, $03, $07

    rst $38

    db $08, $05, $00, $16, $02, $03

    rst $38

    db $0a, $27, $00, $17, $03, $14

    rst $38

    db $2d, $05, $01

    rst $38

    db $0a, $08, $49, $00, $0c, $06, $05, $06, $0a, $41, $00, $10, $04, $03, $0a, $0b
    db $40, $00, $0d, $02, $07, $0e, $0a, $42, $00, $13, $02, $07, $ff

    add b
    ld c, c

    db $85, $49, $8a, $49, $8f, $49

    ld c, b
    inc bc
    jr @+$0d

    db $08

    db $48, $04, $18, $09, $0b, $48, $03, $18, $07, $0a, $48, $04, $18, $0d, $0a, $22
    db $48, $02, $28, $00, $fe

    rst $38

    db $68, $0c, $00, $1b, $04, $0b

    rst $38

    db $25, $0c, $00, $1c, $05, $03, $29, $03, $01

    rst $38

    db $0a, $03, $00, $1b, $29, $0c

    rst $38

    db $07, $29, $00, $1e, $05, $06

    rst $38

    db $18, $0b, $04, $1f, $07, $07, $1b, $1c, $60, $84, $00, $21, $03, $08

    rst $38

    db $08, $07, $04, $1e, $17, $0b

    rst $38

    db $25, $05, $01

    rst $38

    db $2b, $08, $00, $20, $03, $0a, $10, $04, $60, $84, $00, $22, $06, $04

    rst $38

    db $06, $03, $60, $84, $03, $21, $11, $04

    rst $38
    ld c, d
    inc c
    nop
    inc h
    dec b
    ld a, [bc]
    rst $38
    ld [hl-], a
    ld a, [bc]
    nop
    dec h
    ld b, $08
    dec de
    inc d
    ld h, b
    add h
    inc bc
    ld h, $08
    ld a, [bc]
    rst $38
    ld [hl], $09
    ld bc, $07ff
    ld a, [bc]
    inc bc
    inc h
    inc e
    inc d
    dec bc
    dec b
    nop
    daa
    inc de
    dec bc
    rst $38
    inc b
    dec bc
    ld h, b
    add h
    nop
    ld h, $03
    dec b
    rst $38

    db $05, $08, $40, $00, $1a, $05, $05, $08, $09, $49, $00

    add hl, de
    inc bc
    dec b

    db $0b, $08, $41, $00, $1d, $02, $03, $08, $0d, $42, $00, $23, $02, $0b, $ff

    ld b, c
    ld c, d

    db $46, $4a, $4b, $4a

    ld d, b
    ld c, d
    ld c, b
    inc bc
    jr z, @+$0b

    add hl, bc

    db $48, $03, $28, $06, $08, $48, $04, $28, $0a, $08

    ld c, b
    inc b
    jr z, @+$09

    dec c
    inc hl
    ld c, b
    ld [bc], a
    inc a
    ld bc, $fffd
    dec hl
    rlca
    inc bc
    dec hl
    inc b
    dec b
    ld c, b
    inc b
    nop
    inc l
    ld [bc], a
    rlca
    rst $38
    inc bc
    dec b
    inc bc
    ld a, [hl+]
    inc l
    rlca
    rst $38
    ld b, a
    ld b, $00
    dec l
    inc bc
    rlca
    rst $38
    ld [$0007], sp
    ld l, $03
    add hl, bc
    rst $38
    dec c
    ld d, a
    ld bc, $43ff
    inc b
    nop
    ld sp, $4d05
    ld c, c
    inc b
    inc bc
    jr nc, jr_008_4a91

    inc bc
    rst $38
    inc bc
    inc bc

jr_008_4a91:
    inc b
    cpl
    ld c, b
    inc b
    rst $38
    rlca
    inc d
    nop
    ld [hl-], a
    inc bc
    inc bc
    rst $38
    dec de
    inc b
    ld bc, $120f
    nop
    inc sp
    ld b, $09
    rst $38
    ld b, $0b
    nop
    ld [hl-], a
    rrca
    inc de
    rst $38
    dec sp
    stop
    dec [hl]
    inc bc
    rlca
    rst $38
    ld [$0003], sp
    ld [hl], $03
    inc bc
    rst $38
    ld e, h
    inc bc
    nop
    scf
    inc bc
    add hl, bc
    rst $38
    ld c, e
    ld [$ff01], sp
    ld a, [bc]
    ld a, [bc]
    add c
    nop
    add hl, sp
    rlca
    rlca
    rst $38
    ld c, a
    inc bc
    nop
    ld a, [hl-]
    inc b
    jr @+$01

    ld a, [hl+]
    ld a, [de]
    ld bc, $1b17
    nop
    dec sp
    ld a, [bc]
    inc c
    rst $38
    ld a, [bc]
    dec b
    nop
    ld a, [hl-]
    rla
    ld c, $ff
    add hl, bc
    ld [$0049], sp
    add hl, hl
    ld [bc], a
    rlca
    dec b
    rlca
    ld b, b
    nop
    ld a, [hl+]
    ld [bc], a
    rlca
    ld b, $0b
    ld b, c
    nop
    cpl
    ld [bc], a
    rlca
    inc c
    dec bc
    ld b, d
    nop
    inc [hl]
    inc b
    rlca
    dec c
    rlca
    ld b, e
    nop
    jr c, jr_008_4b0d

    rlca
    rst $38
    dec d
    ld c, e

jr_008_4b0d:
    ld a, [de]
    ld c, e
    rra
    ld c, e
    inc h
    ld c, e
    add hl, hl
    ld c, e
    ld c, b
    inc bc
    inc a
    ld a, [bc]
    ld [$0348], sp
    inc a
    ld b, $07
    ld c, b
    inc bc
    inc a
    rlca
    dec bc
    ld c, b
    inc b
    inc a
    dec bc
    dec bc
    ld c, b
    inc b
    inc a
    inc c
    rlca
    inc h
    ld c, b
    ld [bc], a
    ld e, e
    inc bc
    cp $ff
    ld c, l
    inc b
    nop
    ld b, b
    inc b
    dec de
    inc h
    rlca
    inc bc
    ccf
    inc b
    rlca
    rst $38
    inc bc
    rlca
    inc bc
    ld a, $25
    rlca
    rst $38
    inc a
    inc d
    nop
    ld b, c
    inc bc
    ld b, $0c
    ld de, $4200
    rlca
    dec b
    rst $38
    ld c, h
    dec b
    ld bc, $07ff
    inc b
    nop
    ld b, b
    inc c
    db $10
    rst $38
    ld c, e
    dec b
    nop
    ld b, h
    ld [bc], a
    rlca
    rst $38
    rlca
    rlca
    add c
    nop
    ld b, l
    ld b, $07
    rst $38
    ld e, l
    rlca
    ld bc, $0bff
    rlca
    nop
    ld c, [hl]
    inc bc
    dec b
    inc bc
    rlca
    nop
    ld c, l
    inc bc
    rlca
    rlca
    inc bc
    nop
    ld c, h
    inc bc
    dec b
    rst $38
    ld c, h
    dec b
    nop
    ld c, b
    inc bc
    inc b
    rst $38
    ld d, b
    inc bc
    nop
    ld c, c
    ld b, $3d
    inc a
    inc bc
    ld h, b
    add h
    nop
    ld c, d
    ld b, $07
    rst $38
    ld b, $09
    ld bc, $04ff
    inc bc
    nop
    ld c, e
    inc b
    inc c
    ld [$0003], sp
    ld c, e
    ld [$ff0c], sp
    ld b, $03
    inc bc
    ld c, b
    dec a
    inc bc
    rst $38
    ld [$0005], sp
    ld b, a
    rlca
    add hl, bc
    rst $38
    ld [$0007], sp
    ld b, a
    inc b
    dec c
    rst $38
    ld [$0005], sp
    ld b, a
    ld a, [bc]
    dec c
    rst $38
    ld e, h
    inc b
    nop
    ld d, b
    inc bc
    rlca
    rst $38
    ld [$0007], sp
    ld d, c
    ld [bc], a
    rlca
    rst $38
    ld e, d
    inc bc
    nop
    ld d, d
    inc b
    ld d, $13
    rlca
    nop
    ld d, e
    rlca
    inc b
    rst $38
    inc l
    dec b
    ld bc, $07ff
    inc bc
    nop
    ld d, c
    inc de
    ld b, $ff
    ld [hl+], a
    inc b
    add e
    nop
    ld d, l
    rlca
    ld l, b
    rra
    inc b
    ld h, b
    add h
    inc b
    ld e, c
    add hl, bc
    ld b, $ff
    rlca
    inc d
    inc bc
    ld e, b
    ld [$0706], sp
    dec de
    nop
    ld d, [hl]
    ld b, $03
    rst $38
    ld b, $40
    ld bc, $07ff
    ld a, [bc]
    nop
    ld d, [hl]
    ld b, $03
    rlca
    inc bc
    inc bc
    ld e, b
    ld [$ff06], sp
    rlca
    ld b, $00
    ld d, a
    rlca
    inc b
    rst $38
    ld a, [bc]
    ld b, $00
    ld d, h
    rra
    dec b
    dec b
    inc b
    inc b
    ld e, d
    ld c, $08
    rst $38
    rrca
    ld [$8460], sp
    nop
    ld e, c
    dec b
    dec b
    rst $38
    rlca
    ld [$0041], sp
    ld b, e
    inc b
    ld b, $06
    dec bc
    ld b, b
    nop
    ld a, $03
    rlca
    dec bc
    inc c
    ld b, d
    nop
    ld b, [hl]
    rlca
    dec b
    db $10
    dec bc
    ld b, h
    nop
    ld d, h
    inc b
    dec d
    rrca
    ld [$0043], sp
    ld c, a
    ld [bc], a
    ld b, $0b
    add hl, bc
    ld c, c
    nop
    dec a
    dec b
    rlca
    rst $38
    ld [hl], d
    ld c, h
    ld [hl], a
    ld c, h
    ld a, h
    ld c, h
    add c
    ld c, h
    add [hl]
    ld c, h
    adc e
    ld c, h
    ld c, b
    inc bc
    ld e, e
    inc c
    add hl, bc
    ld c, b
    inc bc
    ld e, e
    rlca
    dec bc
    ld c, b
    inc bc
    ld e, e
    ld [$4808], sp
    inc bc
    ld e, e
    inc c
    inc c
    ld c, b
    inc b
    ld e, e
    ld c, $08
    ld c, b
    inc b
    ld e, e
    rrca
    dec bc
    dec h
    ld c, b
    ld [bc], a
    add b
    ld bc, $fffe
    ld c, e
    inc b
    nop
    ld e, [hl]
    inc bc
    inc c
    rst $38
    jr nz, jr_008_4ca6

    inc bc
    ld e, a
    inc bc
    ld b, $58
    inc c

jr_008_4ca6:
    nop
    ld h, b
    inc bc
    ld a, [hl+]
    rst $38
    ld [bc], a
    ld b, $03
    ld e, [hl]
    ld hl, $ff06
    dec c
    inc bc
    ld bc, $4bff
    dec b
    nop
    ld h, d
    inc bc
    ld a, [de]
    rst $38
    dec sp
    ld a, [de]
    nop
    ld h, h
    inc bc
    ld [$1b1f], sp
    nop
    ld l, c
    rla
    ld b, $ff
    ld c, c
    dec b
    nop
    ld h, a
    inc bc
    rlca
    rrca
    ld b, $04
    ld h, l
    add hl, bc
    dec b
    inc bc
    dec b
    ld bc, $0dff
    ld [$6300], sp
    ld a, [hl-]
    inc b
    rst $38
    ld a, [bc]
    dec b
    inc bc
    ld h, e
    db $10
    ld b, $ff
    inc bc
    rlca
    nop
    ld h, d
    dec c
    jr @+$01

    inc bc
    dec b
    nop
    ld h, e
    ld c, c
    ld b, $ff
    ld [$0007], sp
    ld h, d
    ld sp, $ff18
    inc bc
    ld b, $00
    ld h, [hl]
    ld [$2b07], sp
    ld b, $00
    ld l, b
    inc bc
    rlca
    rst $38
    ld a, e
    ld b, $00
    ld l, e
    dec d
    inc bc
    rst $38
    dec d
    stop
    ld l, h
    rlca
    inc bc
    rst $38
    rlca
    dec a
    ld bc, $0cff
    inc l
    ld bc, $69ff
    inc b
    nop
    ld [hl], d
    inc bc
    rlca
    rst $38
    inc b
    dec c
    add e
    nop
    ld [hl], b
    inc b
    inc h
    rst $38
    dec de
    dec c
    nop
    ld [hl], c
    rlca
    ld c, l
    rst $38
    dec c
    inc bc
    ld bc, $08ff
    rlca
    add e
    nop
    ld l, a
    ld a, [de]
    inc h
    rst $38
    dec de
    add hl, bc
    nop
    ld [hl], h
    inc bc
    rlca
    rst $38
    ld e, d
    ld b, $00
    ld [hl], l
    rlca
    dec b
    rst $38
    inc bc
    dec b
    nop
    halt
    ld b, $06
    dec bc
    dec b
    nop
    ld a, d
    ld b, $06
    rlca
    inc bc
    nop
    ld a, b
    ld b, $06
    dec b
    inc b
    nop
    ld a, c
    ld b, $06
    add hl, bc
    inc b
    nop
    ld [hl], a
    ld b, $06
    rst $38
    ld b, $05
    nop
    ld [hl], l
    inc bc
    ld b, $ff
    ld b, $05
    nop
    ld [hl], l
    add hl, bc
    dec b
    rst $38
    ld b, $05
    nop
    ld [hl], l
    rlca
    inc b
    rst $38
    ld b, $04
    ld bc, $06ff
    dec b
    nop
    ld [hl], l
    dec bc
    ld b, $ff
    rrca
    dec a
    nop
    ld a, a
    inc b
    rrca
    rst $38
    dec bc
    ld [$ff01], sp
    inc c
    ld b, $00
    ld a, e
    ld [bc], a
    inc bc
    rst $38
    ld a, [bc]
    ld b, $00
    ld a, l
    inc b
    ld b, $ff
    ld h, $0f
    nop
    ld a, h
    rlca
    ld e, d
    rst $38
    add hl, bc
    add hl, bc
    ld c, c
    nop
    ld e, h
    ld [bc], a
    rlca
    ld b, $0b
    ld b, c
    nop
    ld h, c
    inc bc
    ld b, $03
    dec c
    ld b, d
    nop
    ld l, d
    inc b
    dec c
    rlca
    ld c, $40
    nop
    ld e, l
    inc bc
    rlca
    dec bc
    ld c, $43
    nop
    ld l, [hl]
    inc bc
    dec b
    rrca
    dec c
    ld b, l
    nop
    ld a, [hl]
    ld [bc], a
    inc bc
    inc c
    dec bc
    ld b, h
    nop
    ld [hl], e
    inc b
    add hl, sp
    rst $38
    rst $28
    ld c, l
    db $f4
    ld c, l
    ld sp, hl
    ld c, l
    cp $4d
    inc bc
    ld c, [hl]
    ld [$0d4e], sp
    ld c, [hl]
    ld c, b
    inc bc
    add b
    ld a, [bc]
    add hl, bc
    ld c, b
    inc bc
    add b
    ld [$480e], sp
    inc bc
    add b
    rlca
    dec bc
    ld c, b
    inc bc
    add b
    inc b
    dec c
    ld c, b
    inc b
    add b
    ld a, [bc]
    ld c, $48
    inc b
    add b
    dec bc
    dec bc
    ld c, b
    inc b
    add b
    ld c, $0d
    ld h, $48
    ld [bc], a
    or c
    ld bc, $fffd
    db $10
    ld [$8100], sp
    ld [bc], a
    add hl, bc
    rst $38
    ld [bc], a
    inc b
    nop
    add e
    ld [bc], a
    inc bc
    ld a, e
    inc b
    add c
    inc bc
    add h
    dec b
    inc de
    rst $38
    dec l
    inc b
    nop
    add l
    inc b
    rlca
    inc b
    inc de
    nop
    add h
    inc b
    ld [de], a
    rst $38
    rlca
    inc bc
    ld bc, $2bff
    dec c
    nop
    adc d
    ld b, $08
    rst $38
    dec de
    inc b
    inc bc
    adc b
    dec b
    add hl, bc
    dec de
    ld [$8803], sp
    dec b
    dec c
    jr nz, jr_008_4e5c

    inc b
    adc b
    ld a, [bc]
    dec c
    jr nz, jr_008_4e5e

    inc b
    adc b

jr_008_4e5c:
    ld a, [bc]
    add hl, bc

jr_008_4e5e:
    ld c, h
    ld [$8900], sp
    inc b
    rlca
    rst $38
    inc b
    dec c
    inc b
    add a
    ld a, [de]
    ld [$0d0b], sp
    inc bc
    add a
    ld hl, $0408
    add hl, bc
    inc b
    add a
    ld a, [de]
    inc b
    dec bc
    add hl, bc
    inc bc
    add a
    ld hl, $ff04
    rlca
    inc bc
    ld bc, $19ff
    ld [$8700], sp
    inc bc
    ld b, $ff
    inc bc
    ld [$8b00], sp
    inc bc
    rlca
    ld e, h
    ld [$8c00], sp
    inc b
    rlca
    rst $38
    rlca
    inc bc
    ld bc, $02ff
    rlca
    nop
    adc l
    ld [bc], a
    ld b, $5d
    rlca
    add c
    inc bc
    adc e
    inc b
    ld [$7bff], sp
    inc b
    nop
    adc [hl]
    ld a, e
    inc bc
    inc bc
    inc b
    add d
    inc b
    adc a
    ld a, [hl-]
    inc de
    rst $38
    ld [de], a
    inc b
    nop
    sub b
    ld a, [bc]
    rlca
    dec sp
    inc de
    nop
    adc a
    dec sp
    ld [de], a
    rst $38
    rlca
    inc bc
    ld bc, $04ff
    dec c
    nop
    sub [hl]
    add hl, de
    ld [$34ff], sp
    inc b
    inc b
    sub e
    ld a, [bc]
    add hl, bc
    inc [hl]
    ld [$9304], sp
    ld a, [bc]
    dec c
    cpl
    ld [$9403], sp
    dec b
    dec c
    cpl
    inc b
    inc bc
    sub h
    dec b
    add hl, bc
    inc bc
    ld [$9500], sp
    ld a, [bc]
    rlca
    rst $38
    dec bc
    dec c
    inc bc
    sub d
    dec [hl]
    ld [$090b], sp
    inc bc
    sub d
    dec [hl]
    inc b
    inc b
    add hl, bc
    inc b
    sub d
    ld l, $04
    inc b
    dec c
    inc b
    sub d
    ld l, $08
    rst $38
    dec bc
    add hl, bc
    inc bc
    sub d
    dec [hl]
    inc b
    inc b
    add hl, bc
    inc b
    sub d
    ld l, $04
    dec bc
    dec c
    inc bc
    sub d
    dec [hl]
    ld [$0d04], sp
    inc b
    sub d
    ld l, $08
    rst $38
    rlca
    inc bc
    ld bc, $06ff
    ld [$9200], sp
    ld c, h
    ld b, $ff
    ld l, c
    ld [$9700], sp
    ld l, c
    rlca
    db $10
    ld [$9800], sp
    inc b
    rlca
    rst $38
    rlca
    inc bc
    ld bc, $5dff
    rlca
    nop
    sbc c
    ld e, l
    ld b, $02
    rlca
    add d
    inc b
    sub a
    ld l, b
    ld [$08ff], sp
    rlca
    ld h, b
    add h
    nop
    or b
    rlca
    add hl, bc
    rst $38
    rlca
    dec b
    nop
    xor e
    ld [$030d], sp
    add hl, bc
    nop
    sbc h
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    sbc l
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor h
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    and b
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    sbc [hl]
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor h
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    sbc a
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    and b
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor l
    ld a, [bc]
    dec c
    inc bc
    add hl, bc
    nop
    and c
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    and d
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor l
    ld a, [bc]
    dec c
    inc bc
    add hl, bc
    nop
    and d
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    and e
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor l
    ld a, [bc]
    dec c
    inc bc
    add hl, bc
    nop
    and d
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    and e
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor [hl]
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    and h
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    and l
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor [hl]
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    and l
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    and a
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor [hl]
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    and l
    rlca
    inc e
    dec bc
    add hl, bc
    nop
    and a
    rlca
    inc e
    rst $38
    rlca
    dec b
    nop
    xor a
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    xor c
    inc bc
    inc c
    dec bc
    add hl, bc
    nop
    xor c
    rlca
    inc c
    rst $38
    rlca
    dec b
    nop
    xor a
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    xor c
    inc bc
    inc c
    dec bc
    add hl, bc
    nop
    xor c
    dec bc
    inc c
    rst $38
    ld [$0003], sp
    xor d
    rlca
    rlca
    rst $38
    rlca
    dec b
    nop
    xor a
    add hl, bc
    dec c
    inc bc
    add hl, bc
    nop
    xor c
    inc bc
    inc c
    dec bc
    add hl, bc
    nop
    xor c
    dec bc
    inc c
    rst $38
    rst $38
    rlca
    inc b
    nop
    and [hl]
    ld [$ff0d], sp
    rlca
    inc bc
    ld bc, $08ff
    inc bc
    nop
    xor h
    add hl, bc
    dec c
    rst $38
    add hl, bc
    inc bc
    nop
    xor l
    ld a, [bc]
    dec c
    rst $38
    ld a, [bc]
    inc bc
    nop
    xor [hl]
    add hl, bc
    dec c
    rst $38
    add hl, bc
    inc bc
    nop
    xor a
    add hl, bc
    dec c
    rst $38
    add hl, bc
    inc bc
    nop
    and [hl]
    ld [$ff0d], sp
    dec d
    add hl, bc
    nop
    sbc e
    rlca
    inc e
    rst $38
    add hl, bc
    rlca
    ld c, c
    nop
    add d
    db $10
    dec d
    add hl, bc
    ld a, [bc]
    ld b, [hl]
    nop
    sbc d
    ld [$0829], sp
    dec c
    ld b, b
    inc bc
    add e
    inc bc
    inc b
    inc c
    add hl, bc
    ld b, l
    inc b
    sbc c
    ld e, h
    rlca
    dec b
    inc c
    ld b, c
    nop
    add [hl]
    rlca
    dec b
    ld b, $09
    ld b, d
    inc bc
    adc l
    inc bc
    rlca
    ld a, [bc]
    dec c
    ld b, e
    inc b
    adc [hl]
    ld a, d
    inc b
    dec c
    inc c
    ld b, h
    nop
    sub c
    jr z, jr_008_50b0

    rst $38
    cp h
    ld d, b
    pop bc
    ld d, b

jr_008_50b0:
    add $50
    bit 2, b
    ret nc

    ld d, b
    push de
    ld d, b
    jp c, $df50

    ld d, b
    ld c, b
    inc bc
    or c
    ld a, [bc]
    rlca
    ld c, b
    inc b
    or c
    rlca
    dec c
    ld c, b
    inc b
    or c
    inc b
    inc c
    ld c, b
    inc b
    or c
    dec b
    add hl, bc
    ld c, b
    inc bc
    or c
    dec bc
    dec c
    ld c, b
    inc bc
    or c
    ld c, $0c
    ld c, b
    inc bc
    or c
    dec c
    add hl, bc
    ld c, b
    inc b
    or c
    ld [$050a], sp
    xor b
    ld [bc], a
    ld a, h
    ld c, c
    nop
    nop
    inc bc
    ld [$0049], sp
    inc c
    ld b, $05
    ld c, c
    nop
    add hl, de
    inc bc
    dec b
    ld c, c
    nop
    add hl, hl
    ld [bc], a
    rlca
    ld c, c
    nop
    dec a
    dec b
    rlca
    ld c, c
    nop
    ld e, h
    ld [bc], a
    rlca
    ld c, c
    nop
    add d
    db $10
    dec d
    jr nz, @+$43

    nop
    inc b
    ld [bc], a
    rlca
    ld hl, $0042
    inc de
    ld [bc], a
    rlca
    inc hl
    ld b, d
    nop
    inc [hl]
    inc b
    rlca

    db $b2, $44, $11, $5d, $45, $11, $51, $47, $11, $5b, $49, $11, $f5, $49, $11, $93
    db $4b, $11, $0e, $4d, $11, $85, $4d, $11, $45, $4f, $11, $77, $50, $11, $a8, $51
    db $11, $7a, $53, $11, $a5, $54, $11, $64, $55, $11, $38, $57, $11, $e6, $57, $11
    db $53, $5a, $11, $fc, $5c, $11

    sbc $5e
    db $11

    db $9e, $5f, $11, $2c, $61, $11, $82, $62, $11, $34, $63, $11, $97, $65, $11, $e0
    db $67, $11

    dec l
    ld l, c
    db $11

    db $da, $6a, $11, $97, $6e, $11, $a4, $70, $11, $67, $71, $11, $e2, $72, $11, $12
    db $75, $11, $af, $75, $11, $64, $77, $11, $87, $78, $11, $4d, $79, $11

    sub c
    ld a, h
    ld de, $4101
    ld [de], a
    ld [de], a
    ld b, h
    ld [de], a
    cp l
    ld b, h
    ld [de], a

    db $ab, $45, $12

    cp c
    ld b, [hl]
    ld [de], a
    dec hl
    ld b, a
    ld [de], a
    db $eb
    ld c, b
    ld [de], a
    adc h
    ld c, c
    ld [de], a
    sbc [hl]
    ld c, e
    ld [de], a
    ld d, [hl]
    ld c, h
    ld [de], a
    ld c, c
    ld c, a
    ld [de], a
    ret nz

    ld d, b
    ld [de], a
    sub l
    ld d, c
    ld [de], a
    ld c, d
    ld d, e
    ld [de], a
    rrca
    ld d, l
    ld [de], a
    db $dd
    ld d, l
    ld [de], a
    inc e
    ld e, b
    ld [de], a
    db $fd
    ld e, b
    ld [de], a
    ld [hl], b
    ld e, h
    ld [de], a
    ld l, b
    ld e, [hl]
    ld [de], a
    ld c, l
    ld e, a
    ld [de], a
    add h
    ld h, c
    ld [de], a
    cp l
    ld h, h
    ld [de], a
    ld [hl], l
    ld h, l
    ld [de], a
    adc b
    ld h, [hl]
    ld [de], a
    xor b
    ld h, a
    ld [de], a
    ld d, d
    ld l, c
    ld [de], a
    jr z, jr_008_5249

    ld [de], a
    ld sp, hl
    ld l, [hl]
    ld [de], a
    and b
    ld [hl], b
    ld [de], a
    ld b, e
    ld [hl], c
    ld [de], a
    ld [hl], l
    ld [hl], e
    ld [de], a
    ld [hl], $74
    ld [de], a
    ld d, [hl]
    halt
    ld [de], a
    ld [hl+], a
    ld [hl], a
    ld [de], a
    and d
    ld a, c
    ld [de], a
    ld sp, $127c
    ld a, [$127d]
    ld e, l
    ld a, [hl]
    ld [de], a
    rst $20
    ld a, [hl]
    ld [de], a
    ld d, d
    ld a, a
    ld [de], a
    nop
    ld b, b
    inc de
    or e
    ld b, b
    inc de
    rlca
    ld b, h
    inc de
    sub h
    ld b, h
    inc de
    inc sp
    ld b, a
    inc de
    push af
    ld c, c
    inc de
    or l
    ld c, d
    inc de
    inc b
    ld c, l
    inc de
    adc e
    ld d, b
    inc de
    add hl, de
    ld d, e
    inc de
    ld a, [$1353]
    sbc e
    ld d, h
    inc de
    jr nc, jr_008_5282

    inc de
    ld b, a
    ld d, [hl]
    inc de
    xor c
    ld d, a
    inc de
    add a
    ld e, b
    inc de
    rla
    ld e, e
    inc de
    ld h, h
    ld e, [hl]
    inc de
    ld [hl], c
    ld e, a
    inc de
    add hl, hl
    ld h, d
    inc de
    ld [bc], a
    ld h, h
    inc de
    ret z

    ld l, b
    inc de

jr_008_5249:
    cp d
    ld l, c
    inc de
    ld d, a
    ld l, d
    inc de
    jp Jump_000_136a


    jr nc, jr_008_52bf

    inc de
    and l
    ld l, e
    inc de
    dec a
    ld l, h
    inc de
    adc b
    ld l, l
    inc de
    inc a
    ld [hl], c
    inc de
    call nz, $1375
    ld b, h
    ld a, b
    inc de
    or d
    ld a, d
    inc de
    ld a, [hl]
    ld a, l
    inc de
    sbc [hl]
    ld a, [hl]
    inc de
    nop
    ld b, b
    inc d
    inc h
    ld b, e
    inc d
    ld bc, $1444
    ld d, h
    ld c, c
    inc d
    daa
    ld c, e
    inc d
    ret


    ld c, e
    inc d

jr_008_5282:
    ld d, d
    ld c, h
    inc d
    rst $10
    ld c, h
    inc d
    ld e, h
    ld c, l
    inc d
    rst $18
    ld c, l
    inc d
    ld e, l
    ld c, a
    inc d
    ld [hl], d
    ld d, h
    inc d
    sbc e
    ld d, a
    inc d
    ld c, c
    ld e, b
    inc d
    ld [$1459], sp
    inc bc
    ld e, e
    inc d
    jr c, @+$5e

    inc d
    or [hl]
    ld e, h
    inc d
    add hl, bc
    ld e, a
    inc d
    and e
    ld h, b
    inc d
    ld d, b
    ld h, c
    inc d
    db $ed
    ld h, c
    inc d
    rst $30
    ld h, e
    inc d
    sbc l
    ld h, l
    inc d
    ld b, h
    ld h, [hl]
    inc d
    and h
    ld h, [hl]
    inc d
    ret z

jr_008_52bf:
    ld h, a
    inc d
    and [hl]
    ld l, c
    inc d
    ld l, $6a
    inc d
    cp b
    ld l, e
    inc d
    ld c, a
    ld l, l
    inc d
    dec b
    ld l, [hl]
    inc d
    adc d
    ld l, [hl]
    inc d
    add c
    ld [hl], b
    inc d
    inc hl
    ld [hl], d
    inc d
    xor $72
    inc d
    cp b
    ld [hl], e
    inc d
    jr jr_008_5355

    inc d
    inc a
    ld [hl], l
    inc d
    ld e, d
    ld [hl], a
    inc d
    jp c, $1477

    ld b, b
    ld a, c
    inc d
    cpl
    ld a, d
    inc d
    push hl
    ld a, d
    inc d
    sbc e
    ld a, e
    inc d
    ld d, h
    ld a, h
    inc d
    dec c
    ld a, l
    inc d
    add $7d
    inc d
    add d
    ld a, [hl]
    inc d
    ld a, $7f
    inc d
    nop
    ld b, b
    dec d
    cp a
    ld b, b
    dec d
    ld a, [hl]
    ld b, c
    dec d
    jr z, jr_008_5353

    dec d
    or h
    ld b, d
    dec d
    ld e, h
    ld b, e
    dec d
    sbc a
    ld b, l
    dec d
    ld [de], a
    ld b, [hl]
    dec d
    ld [hl], d
    ld b, [hl]
    dec d
    dec l
    ld b, a
    dec d
    db $e3
    ld b, a
    dec d
    cp a
    ld c, b
    dec d
    sub e
    ld c, c
    dec d
    ld b, [hl]
    ld c, d
    dec d
    ld h, $4b
    dec d

    db $0d, $3e, $53, $11, $3a, $53, $16, $17, $1a, $0e, $00

    ld a, [$db70]
    ld e, $27
    ld [de], a
    or a
    jr nz, jr_008_5357

    ld a, $01
    ld [$db70], a
    ld hl, $a17b

jr_008_534f:
    ld [hl], $00
    inc h
    ld a, h

jr_008_5353:
    cp $b3

jr_008_5355:
    jr nz, jr_008_534f

jr_008_5357:
    ld hl, $a17b

jr_008_535a:
    ld a, [hl]
    or a
    jr z, jr_008_5365

    inc h
    ld a, h
    cp $b3
    jr nz, jr_008_535a

    ret


jr_008_5365:
    ld e, $49
    ld a, [de]
    inc a
    ld [hl], a
    ld a, $ff
    ld [de], a
    ld e, $04
    ld l, $7f
    ld a, [de]
    ld [hl], a
    ld l, $88
    ld [hl], a
    inc e
    ld l, $80
    ld a, [de]
    ld [hl], a
    ld l, $89
    ld [hl], a
    inc e
    inc e
    ld l, $82
    ld a, [de]
    ld [hl], a
    ld l, $8a
    ld [hl], a
    inc e
    ld l, $83
    ld a, [de]
    ld [hl], a
    ld l, $8b
    ld [hl], a
    push bc
    push hl
    call Call_000_1aea
    call Call_000_1646
    sub $a0
    rrca
    ld l, a
    ld h, $00
    ld bc, $53bb
    add hl, bc
    pop de
    ld e, $84
    ld c, $04

jr_008_53a6:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_008_53a6

    pop bc
    ld e, $7d
    ld a, $08
    ld [de], a
    ld e, $7c
    ld a, $13
    ld [de], a
    ldh a, [$ff9a]
    ld d, a
    ret


    db $00, $00, $00, $fe

    nop
    ld [bc], a
    nop
    nop

    db $00, $00, $00, $02, $00, $fe, $00, $00

    ld hl, $ff93
    xor a
    ld [hl+], a
    ld a, $86
    ld [hl+], a
    xor a
    ld [hl], a
    ld de, $a17b

jr_008_53d8:
    push de
    ld a, [de]
    or a
    jr nz, jr_008_53e8

Jump_008_53dd:
    pop de
    inc d
    ld a, d
    cp $b3
    jr nz, jr_008_53d8

    ldh a, [$ff9a]
    ld d, a
    ret


jr_008_53e8:
    xor a
    ldh [$ff84], a
    ldh a, [$ff9a]
    ld h, a
    ld l, $19
    ld a, [hl]
    bit 5, a
    jr nz, jr_008_5428

    ld e, $7d
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_008_5420

    ld a, $08
    ld [de], a
    ld e, $7c
    ld a, [de]
    inc a
    ld [de], a
    cp $16
    jr nz, jr_008_5420

    ld a, $13
    ld [de], a
    ld h, d
    ld l, $7f
    ld e, $88
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    inc l
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld a, $01
    ldh [$ff84], a

jr_008_5420:
    ld e, $84
    ld h, d
    ld l, $7e
    call Call_000_0da9

jr_008_5428:
    ld e, $7f
    ld hl, $db51
    ld bc, $ff80
    call Call_000_0e34
    ldh a, [$ff84]
    or a
    jr z, jr_008_546f

    ldh a, [$ff81]
    inc a
    cp $01
    ldh a, [$ff80]
    jr z, jr_008_5449

    jr nc, jr_008_5462

    cp $e0
    jr nc, jr_008_544d

    jr jr_008_5462

jr_008_5449:
    cp $c0
    jr nc, jr_008_5462

jr_008_544d:
    ldh a, [$ff83]
    inc a
    cp $01
    ldh a, [$ff82]
    jr z, jr_008_545e

    jr nc, jr_008_5462

    cp $e0
    jr nc, jr_008_546f

    jr jr_008_5462

jr_008_545e:
    cp $a0
    jr c, jr_008_546f

jr_008_5462:
    ld e, $7b
    ld a, [de]
    dec a
    ld l, a
    ld h, $bb
    xor a
    ld [hl], a
    ld [de], a
    jp Jump_008_53dd


jr_008_546f:
    ld e, $7c
    ld a, [de]
    add a
    ld c, a
    ld b, $00
    ld hl, $5486
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff83
    call Call_000_051c
    jp Jump_008_53dd


    db $bc, $54, $c5, $54, $ce, $54, $d7, $54, $e0, $54, $e9, $54, $f2, $54, $fb, $54

    inc c
    ld d, l
    dec e
    ld d, l
    ld l, $55

    db $3f, $55

    ld d, b
    ld d, l
    ld h, c
    ld d, l
    ld [hl], d
    ld d, l

    db $83, $55

    sub h
    ld d, l
    and l
    ld d, l
    or [hl]
    ld d, l

    db $c7, $55, $cc, $55, $d1, $55, $d6, $55, $df, $55, $e8, $55, $f1, $55, $fa, $55
    db $02, $f8, $00, $10, $00, $f8, $f8, $00, $01, $02, $f8, $00, $12, $00, $f8, $f8
    db $02, $01, $02, $f8, $00, $04, $00, $f8, $f8, $00, $01, $02, $f8, $00, $14, $00
    db $f8, $f8, $02, $01, $02, $f8, $00, $16, $00, $f8, $f8, $06, $01, $02, $f8, $00
    db $08, $20, $f8, $f8, $08, $01, $02, $f8, $00, $0a, $20, $f8, $f8, $0a, $01, $04
    db $00, $0f, $0c, $00, $f3, $07, $18, $40, $f8, $00, $16, $00, $f8, $f8, $06, $01

    inc b
    ld bc, $0e11
    nop
    ldh a, [c]
    dec bc
    ld c, $40
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    ld b, $01
    inc b
    ldh a, [rIF]
    inc c
    ld b, b
    db $fd
    rlca
    jr jr_008_5526

jr_008_5526:
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    ld b, $01
    inc b
    rst $28
    ld de, $400e
    rst $38
    dec bc
    ld c, $00
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    ld b, $01

    db $04, $e1, $00, $0c, $40, $e9, $fb, $18, $60, $f8, $00, $08, $20, $f8, $f8, $08
    db $01

    inc b
    rst $18
    ld bc, $400e
    push hl
    ei
    ld c, $40
    ld hl, sp+$00
    ld [$f820], sp
    ld hl, sp+$08
    ld bc, $e104
    ld hl, sp+$0c
    ld h, b
    ld [$18fd], a
    ld b, b
    ld hl, sp+$00
    ld [$f820], sp
    ld hl, sp+$08
    ld bc, $df04
    ld hl, sp+$0e
    ld b, b
    push hl
    rst $38
    ld c, $40
    ld hl, sp+$00
    ld [$f820], sp
    ld hl, sp+$08
    db $01

    db $04, $0f, $f9, $0c, $00, $07, $fd, $18, $00, $f8, $00, $0a, $20, $f8, $f8, $0a
    db $01

    inc b
    ld de, $0ef8
    nop
    dec bc

jr_008_559a:
    cp $0e
    nop
    ld hl, sp+$00
    ld a, [bc]
    jr nz, jr_008_559a

    ld hl, sp+$0a
    ld bc, $0f04
    nop
    inc c
    nop
    rlca

jr_008_55ab:
    db $fc
    jr jr_008_55ae

jr_008_55ae:
    ld hl, sp+$00
    ld a, [bc]
    jr nz, jr_008_55ab

    ld hl, sp+$0a
    ld bc, $1104
    ld bc, $000e
    dec bc

jr_008_55bc:
    ld a, [$000e]
    ld hl, sp+$00
    ld a, [bc]
    jr nz, jr_008_55bc

    ld hl, sp+$0a
    db $01

    db $01, $fc, $fc, $18, $01, $01, $fc, $fc, $0e, $01, $01, $fc, $fc, $0c, $01, $02
    db $f4, $f8, $1c, $00, $f4, $00, $1c, $01, $02, $f0, $f8, $1a, $20, $f0, $00, $1a
    db $01, $02, $f0, $f4, $1a, $20, $f0, $04, $1a, $01, $02, $f0, $f0, $1c, $00, $f0
    db $08, $1c, $01, $02, $f8, $f0, $1c, $00, $f8, $08, $1c, $01

    dec c
    ld c, $56
    ld de, $560a
    ld d, $17
    inc hl
    ld c, $00
    ld a, [$db71]
    ld e, $27
    ld [de], a
    or a
    jr nz, jr_008_5627

    ld a, $01
    ld [$db71], a
    ld hl, $a18c

jr_008_561f:
    ld [hl], $00
    inc h
    ld a, h
    cp $b3
    jr nz, jr_008_561f

jr_008_5627:
    ld hl, $a18c

jr_008_562a:
    ld a, [hl]
    or a
    jr z, jr_008_5635

    inc h
    ld a, h
    cp $b3
    jr nz, jr_008_562a

    ret


jr_008_5635:
    ld e, $49
    ld a, [de]
    inc a
    ld [hl], a
    ld a, $ff
    ld [de], a
    ld e, $04
    ld l, $90
    ld a, [de]
    ld [hl], a
    ld l, $99
    ld [hl], a
    inc e
    ld l, $91
    ld a, [de]
    ld [hl], a
    ld l, $9a
    ld [hl], a
    inc e
    inc e
    ld l, $93
    ld a, [de]
    ld [hl], a
    ld l, $9b
    ld [hl], a
    inc e
    ld l, $94
    ld a, [de]
    ld [hl], a
    ld l, $9c
    ld [hl], a
    push bc
    push hl
    call Call_000_1aea
    call Call_000_1646
    cp $f0
    jr nz, jr_008_566f

    ld a, $10
    jr jr_008_5672

jr_008_566f:
    sub $20
    rrca

jr_008_5672:
    ld l, a
    ld h, $00
    ld bc, $5692
    add hl, bc
    pop de
    ld e, $95
    ld c, $04

jr_008_567e:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_008_567e

    pop bc
    ld e, $8e
    ld a, $10
    ld [de], a
    ld e, $8d
    xor a
    ld [de], a
    ldh a, [$ff9a]
    ld d, a
    ret


    nop
    nop
    nop
    cp $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    cp $00
    nop
    nop
    nop
    ret nz

    db $fc
    ld hl, $ff93
    xor a
    ld [hl+], a
    ld e, $46
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl], a
    ld de, $a18c

jr_008_56b4:
    push de
    ld a, [de]
    or a
    jr nz, jr_008_56c4

Jump_008_56b9:
    pop de
    inc d
    ld a, d
    cp $b3
    jr nz, jr_008_56b4

    ldh a, [$ff9a]
    ld d, a
    ret


jr_008_56c4:
    xor a
    ldh [$ff84], a
    ldh a, [$ff9a]
    ld h, a
    ld l, $19
    ld a, [hl]
    bit 5, a
    jr nz, jr_008_5703

    ld e, $8e
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_008_56fb

    ld a, $10
    ld [de], a
    ld e, $8d
    ld a, [de]
    inc a
    ld [de], a
    cp $03
    jr nz, jr_008_56fb

    xor a
    ld [de], a
    ld h, d
    ld l, $90
    ld e, $99
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    inc l
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld a, $01
    ldh [$ff84], a

jr_008_56fb:
    ld e, $95
    ld h, d
    ld l, $8f
    call Call_000_0da9

jr_008_5703:
    ld e, $90
    ld hl, $db51
    ld bc, $ff80
    call Call_000_0e34
    ldh a, [$ff84]
    or a
    jr z, jr_008_574a

    ldh a, [$ff81]
    inc a
    cp $01
    ldh a, [$ff80]
    jr z, jr_008_5724

    jr nc, jr_008_573d

    cp $e0
    jr nc, jr_008_5728

    jr jr_008_573d

jr_008_5724:
    cp $c0
    jr nc, jr_008_573d

jr_008_5728:
    ldh a, [$ff83]
    inc a
    cp $01
    ldh a, [$ff82]
    jr z, jr_008_5739

    jr nc, jr_008_573d

    cp $e0
    jr nc, jr_008_574a

    jr jr_008_573d

jr_008_5739:
    cp $a0
    jr c, jr_008_574a

jr_008_573d:
    ld e, $8c
    ld a, [de]
    dec a
    ld l, a
    ld h, $bb
    xor a
    ld [hl], a
    ld [de], a
    jp Jump_008_56b9


jr_008_574a:
    ld e, $8d
    ld a, [de]
    add a
    ld c, a
    ld b, $00
    ld hl, $5761
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff83
    call Call_000_051c
    jp Jump_008_56b9


    ld h, a
    ld d, a
    ld [hl], b
    ld d, a
    ld a, c
    ld d, a
    ld [bc], a
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    nop
    ld bc, $f802
    nop
    ld [$f800], sp
    ld hl, sp+$02
    ld bc, $f802
    nop
    ld a, [bc]
    nop
    ld hl, sp-$08
    inc b
    ld bc, $b60d
    ld e, b
    ld de, $5789
    ld d, $10
    ld c, h
    ld a, [de]
    ld b, l
    rrca
    ld c, h
    nop
    rla
    ld de, $100e
    ld e, e
    ld [de], a
    and d
    ld d, a
    ld h, $00
    ld [bc], a
    ld [$0080], sp
    dec c
    cp l
    ld e, b
    nop
    rlca
    nop
    nop
    ld [$fd80], sp
    dec c
    cp l
    ld e, b
    nop
    ld e, $5b
    ld a, [de]
    ldh [$ff85], a
    ld hl, $ff93
    ld e, $45
    ld a, [de]
    ld [hl+], a
    ld e, $46
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl], a
    ld de, $a170

Jump_008_57c1:
    push de
    ld a, [de]
    or a
    jp nz, Jump_008_5866

    inc a
    ld [de], a
    ldh a, [$ff85]
    or a
    jr nz, jr_008_582c

    call Call_000_0647
    ldh [$ff84], a
    bit 7, a
    jr z, jr_008_57fb

    and $3f
    rlca
    sub $08
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $75
    ld hl, $db53
    call Call_008_58ae
    ldh a, [$ff84]
    bit 6, a
    ld bc, $fff8
    jr z, jr_008_57f4

    ld bc, $00a8

jr_008_57f4:
    ld e, $72
    ld hl, $db51
    jr jr_008_5827

jr_008_57fb:
    ld hl, $ff93
    bit 7, [hl]
    ld b, $f8
    jr z, jr_008_5806

    ld b, $28

jr_008_5806:
    and $3f
    rlca
    add b
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $72
    ld hl, $db51
    call Call_008_58ae
    ldh a, [$ff84]
    bit 6, a
    ld bc, $fff8
    jr z, jr_008_5822

    ld bc, $0088

jr_008_5822:
    ld e, $75
    ld hl, $db53

jr_008_5827:
    call Call_008_58ae
    jr jr_008_5866

jr_008_582c:
    call Call_000_0647
    ld c, a
    rla
    sbc a
    ld b, a
    ld hl, $0050
    add hl, bc
    ld b, h
    ld c, l
    ld e, $72
    ld hl, $db51
    call Call_008_58ae
    call Call_000_0647
    ld b, a
    and $1f
    bit 7, b
    jr nz, jr_008_5854

    cpl
    sub $07
    ld c, a
    rla
    sbc a
    ld b, a
    jr jr_008_585e

jr_008_5854:
    ld c, a
    rla
    sbc a
    ld b, a
    ld hl, $0088
    add hl, bc
    ld b, h
    ld c, l

jr_008_585e:
    ld e, $75
    ld hl, $db53
    call Call_008_58ae

Jump_008_5866:
jr_008_5866:
    ldh a, [$ff9a]
    ld h, a
    ld l, $19
    ld a, [hl]
    bit 5, a
    jr nz, jr_008_5878

    ld e, $77
    ld h, d
    ld l, $71
    call Call_000_0da9

jr_008_5878:
    ld e, $72
    ld hl, $db51
    ld bc, $ff80
    call Call_000_0e34
    ldh a, [$ff80]
    sub $cc
    cp $08
    jr c, jr_008_5893

    ldh a, [$ff82]
    sub $bc
    cp $08
    jr nc, jr_008_5899

jr_008_5893:
    ld e, $70
    xor a
    ld [de], a
    jr jr_008_58a2

jr_008_5899:
    ld de, $ff83
    ld hl, $58e2
    call Call_000_051c

jr_008_58a2:
    pop de
    inc d
    ld a, d
    cp $aa
    jp nz, Jump_008_57c1

    ldh a, [$ff9a]
    ld d, a
    ret


Call_008_58ae:
    ld a, [hl+]
    add c
    ld [de], a
    inc e
    ld a, [hl]
    adc b
    ld [de], a
    ret


    ld a, [$db72]
    ld e, $27
    ld [de], a
    ret


    push bc
    ld a, $01
    ld [$db72], a
    ld c, $09
    ld h, $a1

jr_008_58c7:
    ld l, $70
    ld [hl], $00
    ld e, $0d
    ld l, $77
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    inc h
    dec c
    jr nz, jr_008_58c7

    pop bc
    ret


    ldh [c], a
    ld e, b
    ld bc, $fcfc
    nop
    db $01

    db $17, $f6, $0d, $04, $fb, $69, $07, $03, $2c, $5a, $48, $0f, $26, $20, $20, $00
    db $00, $21, $6d, $00, $09, $01, $01, $0a, $07, $60, $01, $08, $e8, $fd, $2a, $33
    db $05, $0a, $01, $09, $05, $0a, $01, $04, $07, $00, $00, $08, $00, $00, $2a, $00
    db $05, $06, $0a, $01, $08, $05, $32

    ld bc, $0500
    db $10
    jr nz, @+$1e

    nop
    ld hl, $006d
    add hl, bc
    dec b
    ld bc, $0701
    ret nz

    nop
    dec b
    ld b, $01
    ld [bc], a
    dec b
    ld b, $01
    inc bc
    dec b
    ld b, $01
    ld [bc], a
    dec b
    ld b, $0a
    ld bc, $0501
    ld b, $01
    ld [bc], a
    dec b
    ld b, $01
    inc bc
    dec b
    ld b, $01
    dec b
    rlca
    nop
    nop
    dec b
    ld b, $01
    ld [de], a
    dec b
    inc d
    ld bc, $0500
    ld b, $01
    ld c, $05
    ld e, $09
    dec b
    ld bc, $070b
    ld b, b
    rst $38
    dec b
    ld b, $01
    inc c
    dec b
    ld b, $01
    dec c
    dec b
    ld b, $01
    inc c
    dec b
    ld b, $0a
    ld bc, $050b
    ld b, $01
    inc c
    dec b
    ld b, $01
    ld b, $05
    ld b, $01
    ld b, $07
    nop
    nop
    dec b
    ld b, $01
    ld c, $05
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0500
    ld b, $01
    ld c, $05
    ld b, $0a
    ld bc, $0700
    nop
    nop
    dec b
    ld e, $09
    dec b
    ld bc, $0701
    ret nz

    nop
    dec b
    ld b, $01
    ld [bc], a
    dec b
    ld b, $01
    inc bc
    dec b
    ld b, $01
    ld [bc], a
    dec b
    ld b, $0a
    ld bc, $0507
    ld [de], a
    ld bc, $0707
    nop
    nop
    dec b
    ld b, $01
    inc b
    dec b
    ld b, $01
    nop
    dec b
    ld b, $01
    ld c, $05
    ld e, $09
    inc b
    ld bc, $0710
    ld b, b
    rst $38
    ld [$ff00], sp
    ld a, [hl+]
    jr jr_008_59db

    ld a, [bc]
    ld bc, $050f
    ld a, [bc]

jr_008_59db:
    ld bc, $0711
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld b, $0a
    add hl, bc
    ld [bc], a
    ld bc, $0710
    ld b, b
    rst $38
    ld [$ff00], sp
    ld a, [hl+]
    add hl, de
    dec b
    ld a, [bc]
    ld bc, $050f
    ld a, [bc]
    ld bc, $0711
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld b, $0a
    ld bc, $0710
    ld d, b
    rst $38
    ld [$ff00], sp
    ld a, [hl+]
    add hl, de
    dec b
    ld a, [bc]
    ld bc, $050f
    ld a, [bc]
    ld bc, $0711
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld b, $20
    inc e
    nop
    ld hl, $006d
    ld b, $1a
    ld e, c

    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_008_5a3e

    dec a
    ld [de], a
    ret


jr_008_5a3e:
    ldh a, [$ffa6]
    and $0b
    ret z

    ld e, $2d
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld e, $00
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    ld de, $0004
    ld hl, $42a4
    ld a, $1a
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $08
    ld bc, $5a6d
    jp Jump_000_0846


    db $05, $10, $0d, $73, $5a, $16

    ld a, $01
    ld [$df02], a
    ret


    nop
    nop
    nop
    ld sp, $8e10
    nop
    ld [$0c02], sp
    nop
    ld [hl+], a
    db $10
    cpl
    ld de, $1010
    dec d
    nop
    jr nz, jr_008_5a90

    rlca
    nop

jr_008_5a90:
    ld hl, $2610
    ld de, $1010
    dec d
    nop
    inc e
    ld [bc], a
    dec bc
    nop
    ccf
    ld [bc], a
    rlca
    nop
    ld de, $2810
    ld de, $100c
    dec c
    nop
    ld bc, $0902
    nop
    dec h
    ld [bc], a
    add hl, bc
    nop
    ld a, [de]
    db $10
    inc bc
    ld de, $1008
    dec bc
    ld [de], a
    ld [$0b10], sp
    nop
    inc h
    ld de, $101d
    ld [$2600], sp
    ld [bc], a
    rlca
    nop
    inc de
    db $10
    ld c, $00
    add hl, bc
    db $10
    ld [bc], a
    nop
    ld de, $1610
    ld de, $100d
    ld a, [bc]
    nop
    jr nc, jr_008_5ada

    ld [de], a
    nop

jr_008_5ada:
    inc de
    add b
    inc c
    nop
    ld b, h
    db $10
    jr z, jr_008_5af3

    ld a, [bc]
    db $10
    inc e
    ld [de], a
    inc h
    db $10
    inc e
    nop
    ld d, $01
    inc b
    nop
    inc c
    ld [bc], a
    ld [hl], $00
    inc l

jr_008_5af3:
    db $10
    ld [de], a
    nop
    dec bc
    ld b, b
    ld de, $0200
    db $10
    inc de
    ld de, $100a
    ld [de], a
    nop
    ld c, $01
    rlca
    nop
    dec e
    ld bc, $1102
    inc b
    db $10
    inc de
    nop
    ld bc, $2302
    nop
    ld hl, $0420
    nop
    ld bc, $1f02
    nop
    inc de
    db $10
    inc de
    ld de, $1009
    ld b, $12
    ld [bc], a
    ld [bc], a
    ld l, $00
    dec hl
    jr nz, jr_008_5b3f

    ld hl, $2009
    rra
    nop
    dec l
    ld bc, $2102
    dec b
    jr nz, @+$09

    nop
    dec bc
    ld [bc], a
    dec l
    nop
    ld de, $0410
    nop
    inc d

jr_008_5b3f:
    ld [bc], a
    ld hl, $1200
    jr nz, jr_008_5b56

    ld hl, $200c
    rlca
    ld [hl+], a
    ld bc, $2b02
    nop
    dec e
    db $10
    dec e
    ld de, $100f
    ld d, $00

jr_008_5b56:
    dec a
    db $10
    dec b
    ld [de], a
    ld [bc], a
    ld [bc], a
    dec hl
    nop
    dec de
    jr nz, jr_008_5b66

    nop
    ld [bc], a
    ld [bc], a
    inc hl
    nop

jr_008_5b66:
    db $10
    db $10
    dec bc
    nop
    ld de, $0510
    ld de, $100d
    rrca
    ld [de], a
    inc bc
    ld [bc], a
    jr z, jr_008_5b76

jr_008_5b76:
    dec e
    jr nz, @+$1b

    nop
    ld c, b
    jr nz, jr_008_5b86

    nop
    ld d, $20
    inc c
    nop
    dec b
    ld [bc], a
    dec l
    nop

jr_008_5b86:
    jr jr_008_5b9a

    dec bc
    ld [bc], a
    dec de
    nop
    inc de
    jr nz, jr_008_5b98

    nop
    inc a
    jr nz, @+$03

    ld hl, $2012
    inc b
    nop

jr_008_5b98:
    inc bc
    ld [bc], a

jr_008_5b9a:
    ld a, [hl+]
    nop
    add hl, sp
    db $10
    dec b
    nop
    inc [hl]
    ld [bc], a
    inc l
    nop
    add a
    jr nz, jr_008_5ba9

    nop
    ld l, b

jr_008_5ba9:
    ld bc, $2106
    ld c, $20
    inc b
    nop
    inc c
    db $10
    ld b, $00
    ld b, c
    ld [bc], a
    ld d, e
    nop
    adc h
    ld [$4001], sp
    nop
    nop
    nop
    ld l, b
    db $10
    ccf
    nop
    inc bc
    ld [bc], a
    ld b, c
    nop
    ld de, $3410
    ld [de], a
    ld b, $02
    dec de
    nop
    db $10
    jr nz, jr_008_5bd6

    nop
    inc h
    ld [bc], a
    cpl

jr_008_5bd6:
    nop
    rrca
    db $10
    inc b
    nop
    db $10
    ld [bc], a
    ld b, [hl]
    nop
    ld e, $04
    ld a, [bc]
    nop
    ld a, [hl-]
    db $10
    ld e, e
    ld de, $1010
    ld [$0412], sp
    ld [bc], a
    inc b
    nop
    inc e
    db $10
    dec b
    nop
    rrca
    add b
    ld c, $00
    ld h, c
    ld [bc], a
    rra
    nop
    inc c
    db $10
    db $10
    ld de, $1017
    ld a, [de]
    nop
    dec de
    ld [bc], a
    ld a, [de]
    nop
    rrca
    ld bc, $110b
    ld d, $10
    db $10
    ld de, $002a
    rra
    ld [bc], a
    jr jr_008_5c15

jr_008_5c15:
    db $10
    jr nz, jr_008_5c19

    nop

jr_008_5c19:
    ld [hl+], a
    ld [bc], a
    daa
    nop
    db $10
    ld bc, $1102
    ld d, $10
    daa
    ld de, $100f
    ld e, a
    nop
    ld [bc], a
    jr nz, jr_008_5c34

    nop
    ld bc, $2902
    ld [de], a
    dec e
    ld [bc], a
    daa

jr_008_5c34:
    nop
    ld [bc], a
    db $10
    ld d, l
    nop
    inc b
    ld [bc], a
    sbc [hl]
    nop
    jr @+$06

    add hl, bc
    nop
    ccf
    ld bc, $110d
    ld b, $10
    ld b, $00
    rlca
    ld [bc], a
    ld a, [bc]
    nop
    inc hl
    add b
    dec c
    nop
    ld [hl], $10
    add hl, de
    nop
    dec de
    jr nz, @+$06

    nop
    jr nz, jr_008_5c5d

    ld d, $00

jr_008_5c5d:
    ld de, $0d01
    ld de, $1013
    ld a, [bc]
    ld de, $1014
    dec b
    nop
    ld [bc], a
    jr nz, jr_008_5c72

    nop
    ld [bc], a
    ld [bc], a
    dec h
    nop
    inc c

jr_008_5c72:
    db $10
    inc de
    nop
    ld [bc], a
    ld b, b
    inc de
    nop
    add hl, hl
    ld [bc], a
    add hl, de
    nop
    ld b, $10
    stop
    ld [bc], a
    jr nz, @+$09

    nop
    ld [bc], a
    ld [bc], a
    inc de
    nop
    ld [de], a
    ld bc, $2113
    rlca
    ld bc, $0003
    inc b
    db $10
    dec b
    nop
    ld [hl], $02
    add hl, de
    nop
    db $10
    ld bc, $001a
    dec c
    db $10
    ld b, $11
    inc d
    db $10
    dec b
    nop
    add hl, de
    ld [bc], a
    dec de
    nop
    inc c
    jr nz, jr_008_5cb5

    ld hl, $201d
    ld de, $1e21
    ld bc, $0001

jr_008_5cb5:
    db $10
    db $10
    ld [de], a
    ld de, $101f
    inc de
    ld de, $011d
    ld [bc], a
    nop
    rla
    jr nz, jr_008_5cd2

    ld hl, $200e
    inc hl
    ld hl, $2020
    ld bc, $1800
    db $10
    ld c, $11
    inc de

jr_008_5cd2:
    inc de
    rlca
    inc bc
    dec bc
    ld bc, $0002
    ld [hl], a
    db $10
    ld de, $1a11
    db $10
    ld [bc], a
    ld d, b
    inc b
    ld b, b
    inc d
    nop
    jr jr_008_5cf7

    jr z, jr_008_5ce9

jr_008_5ce9:
    inc b
    jr nz, @+$09

    nop
    ld [bc], a
    ld [bc], a
    rrca
    nop
    ld a, [bc]
    jr nz, jr_008_5d21

    nop
    inc bc
    db $10

jr_008_5cf7:
    ld [$3600], sp
    jr nz, @+$11

    nop
    jr jr_008_5d01

    inc hl
    nop

jr_008_5d01:
    dec bc
    db $10
    ld a, [bc]
    ld de, $1009
    ld b, $00
    dec b
    jr nz, jr_008_5d11

    ld [hl+], a
    inc de
    jr nz, jr_008_5d2f

    nop

jr_008_5d11:
    inc c
    db $10
    rlca
    ld de, $100b
    dec b
    nop
    inc b
    jr nz, @+$0a

    nop
    ld bc, $1802
    nop

jr_008_5d21:
    inc c
    ld bc, $000c
    inc c
    ld [bc], a
    ld hl, $5e00
    ld [bc], a
    ld e, $00
    dec c
    db $10

jr_008_5d2f:
    dec h
    nop
    ld c, c
    db $10
    ld b, $00
    inc b
    jr nz, jr_008_5d3e

    nop
    ld c, l
    ld [bc], a
    dec hl
    nop
    ld a, [hl-]

jr_008_5d3e:
    jr nz, jr_008_5d58

    nop
    ld sp, $2a40
    nop
    inc bc
    ld [bc], a
    sbc b
    nop
    add [hl]
    ld [$0000], sp
    nop
    ld c, a
    db $10
    adc e
    sub b
    inc bc
    add b
    stop
    ld h, $02

jr_008_5d58:
    add hl, de
    nop
    rrca
    db $10
    rla
    ld d, b
    rrca
    db $10
    ld d, b
    nop
    rlca
    ld [bc], a
    inc de
    nop
    dec e
    db $10
    dec b
    ld d, b
    ld c, $10
    inc h
    nop
    ld a, $02
    ld a, [de]
    nop
    dec c
    ld b, b
    ld [$0350], sp
    db $10
    dec [hl]
    sub b
    inc b
    add b
    inc l
    nop
    adc [hl]
    inc b
    add hl, bc
    nop
    ld e, h
    db $10
    dec d
    ld [de], a
    ld [$0f10], sp
    nop
    inc de
    add b
    rrca
    nop
    ld a, [hl-]
    db $10
    dec d
    ld d, b
    db $10
    ld b, b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld b, c
    nop
    ld b, $10
    inc d
    nop
    ld a, d
    db $10
    rra
    sub b
    dec l
    db $10
    jr z, jr_008_5da6

jr_008_5da6:
    inc h
    ld b, b
    inc bc
    nop
    inc bc
    ld [bc], a
    stop
    ld [de], a
    ld b, b
    jr jr_008_5e02

    ld bc, $1610
    nop
    ld b, $02
    ld d, $00
    inc e
    db $10
    ld b, d
    sub b
    ld d, $10
    stop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    nop
    ld a, [de]
    add b
    ld [$0300], sp
    db $10
    inc d
    nop
    ld [bc], a
    ld b, b
    dec bc
    nop
    ld e, l
    db $10
    dec c
    ld d, b
    ld de, $1610
    nop
    rlca
    ld [bc], a
    add hl, hl
    nop
    dec b
    jr nz, jr_008_5df6

    and b
    dec e
    add b
    ld bc, $0400
    db $10
    rlca
    nop
    jr @+$12

    inc bc
    ld d, b
    inc d
    db $10
    ld bc, $1202
    nop
    dec bc
    db $10

jr_008_5df6:
    rla
    ld [bc], a
    sbc d
    nop
    ld [bc], a
    jr nz, jr_008_5e24

    and b
    dec b
    jr nz, jr_008_5e0a

    and b

jr_008_5e02:
    inc bc
    add b
    ld [$0190], sp
    db $10
    dec bc
    nop

jr_008_5e0a:
    dec sp
    db $10
    ld bc, $1450
    ld b, b
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld de, $1800
    inc b
    rlca
    nop
    rla
    jr nz, jr_008_5e25

    ld [bc], a
    inc b
    ld [hl+], a
    inc b
    jr nz, jr_008_5e3a

    nop

jr_008_5e24:
    inc bc

jr_008_5e25:
    db $10
    ld c, $00
    ld [$0902], sp
    nop
    nop
    nop
    ld a, [de]
    ld b, b
    inc d
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    nop
    ld d, h
    ld [bc], a
    ld b, $00

jr_008_5e3a:
    ld a, a
    ld [bc], a
    ld d, $00
    db $10
    db $10
    db $10
    ld d, b
    add hl, bc
    ld b, b
    rla
    nop
    ld a, e
    add b
    inc c
    nop
    cp b
    jr nz, @+$04

    ld h, b
    ld d, $20
    inc bc
    nop
    ld b, d
    db $10
    ld b, $00
    jr nz, jr_008_5e68

    jr z, jr_008_5e6b

    add hl, bc
    db $10
    dec c
    nop
    ld bc, $0110
    nop
    ld [bc], a
    ld b, b
    ld c, $00
    dec l
    db $10

jr_008_5e68:
    inc [hl]
    nop
    inc d

jr_008_5e6b:
    ld [bc], a
    dec c
    add d
    rlca
    sub d
    ld [$0d90], sp
    db $10
    inc [hl]
    nop
    rlca
    db $10
    inc b
    sub b
    inc b
    db $10
    ld [bc], a
    ld [bc], a
    dec e
    db $10
    dec l
    nop
    dec b
    db $10
    dec b
    ld [de], a
    ld c, $02
    ld [bc], a
    ld [de], a
    inc c
    ld b, d
    inc bc
    ld [bc], a
    ld a, a
    nop
    sbc c
    ld [$ff21], sp
    sbc $7e
    inc a
    cp $04
    jr c, jr_008_5e9d

    ld a, $01

jr_008_5e9d:
    ld [hl], a
    dec a
    add a
    add a
    ld hl, $5ebf
    add l
    ld l, a
    jr nc, jr_008_5ea9

    inc h

jr_008_5ea9:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $bc00
    call Call_000_0621
    ld hl, $4000
    ld a, $07
    call Call_000_05cf
    ret


    ld b, e
    ld bc, $5a79
    adc a
    ld bc, $5bbc
    ld b, a
    ld bc, $5d4b
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

    ld e, $27
    ld a, [$db60]
    ld [de], a
    ret


    db $0d, $d9, $5e, $12, $ed, $5e, $0d, $76, $5f, $12

    db $ed
    ld e, [hl]

    db $16, $17, $ff, $0d, $0f, $46, $00, $0d, $18, $5f, $12, $48, $5f, $0f, $5e, $0b
    db $0f, $5f, $0b, $0f, $60, $1a, $0f, $61, $40, $03, $1f, $5f, $48, $19, $07, $0a
    db $19, $08, $0a, $19, $09, $0a, $19, $0a, $0a, $06, $09, $5f

    ld a, [$a075]
    ld e, $27
    ld [de], a
    ret


    ld bc, $5ecb
    call Call_000_255b
    ld a, [$dd2c]
    bit 3, a
    ret z

    ld a, [$a051]
    cp $0c
    ret z

    push de
    ld h, $a0
    call Call_000_0bba
    pop de
    ld hl, $40da
    ld a, $01
    call Call_000_05cf
    ld e, $08
    ld bc, $5fcd
    jp Jump_000_0846


    db $05, $01, $0d, $18, $5f, $12, $48, $5f, $0d, $6a, $5f, $03, $a4, $0d, $40, $08
    db $80, $fe, $19, $07, $08, $19, $08, $08, $19, $09, $08, $19, $0a, $08, $18, $06
    db $f9, $5e

    ld e, $07
    ld a, [de]
    add $30
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    ret


    ld a, [$db60]
    call Call_000_0663
    ld hl, $db6a
    and [hl]
    ld e, $27
    ld [de], a
    ret


    db $0d, $c7, $10, $15, $17, $ff, $0d, $0d, $e0, $35, $50, $00, $38, $00, $0f, $45
    db $40, $0f, $5e, $0b, $0f, $5f, $0b, $0f, $60, $1a, $0f, $61, $40, $03, $1f, $5f
    db $48, $04, $52, $6f, $0b, $09, $02, $19, $0b, $03, $19, $0c, $03, $19, $0d, $03
    db $19, $0e, $03, $19, $0f, $03, $19, $10, $03, $0a, $19, $07, $0a

    add hl, de
    ld [$190a], sp
    add hl, bc
    ld a, [bc]
    add hl, de
    ld a, [bc]
    ld a, [bc]
    ld b, $be
    ld e, a

    db $25, $ff, $24, $ff, $24, $13, $03, $0b, $60, $48, $0d, $f3, $5f, $04, $52, $6f
    db $0b, $19, $0b, $03, $19, $0c, $03, $19, $0d, $03, $19, $0e, $03, $19, $0f, $03

    add hl, de
    db $10
    inc bc
    ld b, $de
    ld e, a

    ld hl, $cd4d
    ld [hl], $01
    inc l
    ld a, $00
    ld [hl+], a
    ld a, $81
    ld [hl+], a
    ld a, $11
    ld [hl+], a
    ld a, $62
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld [hl], $03
    ret


    call Call_000_2422
    ld a, [$cd4d]
    or a
    ret nz

    ld e, $08
    ld bc, $601b
    jp Jump_000_0846


    db $17, $f6, $0d, $0b, $69, $60, $03, $8b, $60, $48, $05, $0a, $08, $00, $03, $2a
    db $d0, $05, $10, $08, $00, $00, $2a, $00, $09, $04, $07, $60, $ff, $0f, $3a, $04
    db $0f, $3b, $80, $05, $03, $07, $a0, $00, $05, $03, $0a, $0d, $50, $0f, $a3, $a0
    db $b3, $07, $b0, $04, $08, $60, $ff, $29, $b0, $05, $1e, $07, $50, $fb, $29, $50
    db $05, $0f, $29, $20, $2a, $e0, $05, $24, $0d, $85, $60, $24, $ff, $16, $0f, $39
    db $00, $0f, $3a, $00, $0f, $3c, $03, $0f, $3d, $00, $0d, $7d, $60, $04, $a7, $6f
    db $0a, $0c

    ld a, [$a071]
    inc a
    ld e, $15
    ld [de], a
    ret


    ld hl, $a082
    ld [hl], $03
    ret


    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    jp Jump_008_6097


Call_008_6097:
Jump_008_6097:
    ld e, $3a
    ld a, [de]
    or a
    ld e, $39
    jr nz, jr_008_60a2

    xor a
    ld [de], a
    ret


jr_008_60a2:
    ld b, a
    ld a, [de]
    or a
    jr z, jr_008_60aa

    dec a
    ld [de], a
    ret


jr_008_60aa:
    ld a, b
    ld [de], a
    ld bc, $60b2
    jp Jump_000_0f50


    db $a4, $a1, $b3, $03, $c3, $60, $48, $03, $c3, $60, $48, $08, $3c, $ff, $05, $54

    db $16

    ld e, $04
    ld hl, $db51
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    ld e, $04
    ld hl, $db51
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    jp Jump_000_1513


    db $24, $14, $0f, $75, $01, $17, $f6, $0d, $0b, $69, $60, $03, $5b, $61, $48, $0f
    db $3a, $05, $0f, $3b, $e0, $07, $00, $01, $08, $00, $01, $05, $60, $0f, $3a, $00
    db $05, $20, $22, $42, $61, $08, $18, $24, $26, $0d, $67, $10, $03, $92, $61, $48
    db $0d, $76, $35, $05, $01, $10, $64, $12, $24, $61, $0d, $7f, $35, $05, $01, $10
    db $64, $12, $2e, $61, $0d, $80, $10, $0f, $1c, $80, $0f, $75, $00, $1b, $18, $40
    db $01, $04, $52, $6f, $0b, $19, $0b, $03, $19, $0c, $03, $19, $0d, $03, $19, $0e
    db $03, $19, $0f, $03, $19, $10, $03, $06, $46, $61

    call Call_000_0da4
    ld e, $05
    ld a, [de]
    rla
    jr c, jr_008_6172

    dec e
    ld a, [de]
    cp $10
    jr c, jr_008_6172

    ld hl, $7012
    ld a, $08
    call Call_000_05cf

jr_008_6172:
    ld e, $08
    ld a, [de]
    rla
    jr c, jr_008_6186

    dec e
    ld a, [de]
    cp $10
    jr c, jr_008_6186

    ld hl, $7067
    ld a, $08
    call Call_000_05cf

jr_008_6186:
    call Call_008_6097
    ld hl, $741f
    ld a, $08
    call Call_000_05cf
    ret


    jp Jump_000_34fd


    jr jr_008_61a4

    ld l, e
    ld a, [hl-]
    dec c
    ld h, a
    db $10
    inc h
    ld e, e
    rrca
    ld a, [hl-]
    nop
    inc bc
    ld a, c
    ld h, d

jr_008_61a4:
    ld c, b
    dec b
    ld b, b
    dec b
    ld bc, $3a10
    ld [de], a
    and a
    ld h, c
    dec c
    add b
    db $10
    dec h
    dec l
    inc b
    ld a, c
    ld [hl], a
    dec c
    db $10
    add hl, sp
    ld a, [de]
    ld b, [hl]
    db $10
    ld [hl], c
    ld c, $04
    rst $00
    ld h, c
    dec b
    ld h, d
    daa
    ld h, d
    ld c, c
    ld h, d
    add hl, bc
    ld [$0719], sp
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
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    dec c
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    dec c
    ld l, e
    ld h, d
    dec c
    db $fc
    ld h, c
    ld c, $03
    ldh a, [$ff61]
    db $f4
    ld h, c
    ld hl, sp+$61
    dec de
    cp a
    ld b, h
    ld bc, $311b
    ld d, [hl]
    ld bc, $541b
    ld h, c
    ld bc, $ed21
    ld [hl], a
    ld a, $01
    call Call_000_05cf
    ret


    add hl, bc
    ld [$0e19], sp
    ld [bc], a
    add hl, de
    rrca
    ld [bc], a
    add hl, de
    db $10
    ld [bc], a
    add hl, de
    ld de, $1902
    ld [de], a
    ld [bc], a
    add hl, de
    inc de
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    dec c
    ld l, e
    ld h, d
    dec de
    nop
    ld b, b
    ld [bc], a
    add hl, bc
    ld [$1519], sp
    ld [bc], a
    add hl, de
    ld d, $02
    add hl, de
    rla
    ld [bc], a
    add hl, de
    jr jr_008_6237

    add hl, de
    add hl, de

jr_008_6237:
    ld [bc], a
    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    dec de
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    dec c
    ld l, e
    ld h, d
    dec de
    inc bc
    ld d, e
    ld [bc], a
    add hl, bc
    ld [$1c19], sp
    ld [bc], a
    add hl, de
    dec e
    ld [bc], a
    add hl, de
    ld e, $02
    add hl, de
    rra
    ld [bc], a
    add hl, de
    jr nz, @+$04

    add hl, de
    ld hl, $1902
    ld [hl+], a
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    dec c
    ld l, e
    ld h, d
    dec de
    jr nc, @+$69

    ld [bc], a
    push bc
    ld hl, $4128
    ld a, $07
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    ld hl, $70bc
    ld a, $08
    call Call_000_05cf
    ret


    db $24, $07, $0b, $da, $62, $10, $71, $0e, $04, $93, $62, $a0, $62, $b3, $62, $c6
    db $62, $04, $40, $4f, $0a, $19, $0f, $08, $19, $10, $06, $06, $d6, $62, $04, $2c
    db $57, $0a, $19, $02, $06, $09, $02, $19, $03, $06, $19, $04, $06, $0a, $06, $d6
    db $62, $04, $99, $5e, $0a, $19, $00, $06, $09, $02, $19, $03, $06, $19, $04, $06
    db $0a, $06, $d6, $62, $04, $29, $65, $0a, $19, $00, $06, $09, $02, $19, $03, $06
    db $19, $04, $06, $0a, $0f, $82, $01, $16, $0f, $46, $00, $10, $71, $0e, $04, $e9
    db $62, $4c, $63, $7f, $63, $b2, $63, $04, $40, $4f, $0a, $0d, $e5, $63, $12, $21
    db $63, $0f, $51, $00, $0f, $50, $0a, $0f, $58, $ff, $0d, $18, $3a, $12

    dec c
    ld h, e

    db $0d, $af, $0f, $01, $08, $fc, $24, $1b, $06, $15, $63

    dec c
    xor a
    rrca
    ld b, $08
    db $fc
    inc h
    ld [hl-], a

    db $19, $18, $0c, $19, $12, $06, $19, $0d, $06, $06, $4b, $63, $0d, $fe, $63, $12
    db $4b, $63, $0d, $af, $0f, $00, $08, $00, $24, $1a, $0d, $07, $64, $12, $42, $63

    inc b
    ld a, b
    ld d, d
    ld a, [bc]
    add hl, de
    dec e
    inc c
    add hl, de
    inc e
    inc c
    ld b, $48
    ld h, e

    db $19, $1b, $0c, $19, $0d, $0c, $0f, $50, $00, $0c, $0d, $e5, $63, $12, $7e, $63
    db $0f, $51, $05, $0f, $50, $0a, $0f, $58, $ff, $0d, $18, $3a, $12

    ld l, h
    ld h, e

    db $0d, $af, $0f, $01, $08, $ff, $24, $1b, $06, $74, $63

    dec c
    xor a
    rrca
    ld b, $08
    rst $38
    inc h
    ld [hl-], a

    db $04, $e9, $57, $0a, $19, $01, $0c, $19, $00, $0c, $0c, $0d, $e5, $63, $12, $b1
    db $63

    rrca
    ld d, c
    ld b, $0f
    ld d, b
    ld a, [bc]
    rrca
    ld e, b
    rst $38
    dec c
    jr @+$3c

    ld [de], a
    sbc a
    ld h, e
    dec c
    xor a
    rrca
    ld bc, $0008
    inc h
    dec de
    ld b, $a7
    ld h, e
    dec c
    xor a
    rrca
    ld b, $08
    nop
    inc h
    ld [hl-], a
    inc b
    and a
    ld e, a
    ld a, [bc]
    add hl, de
    ld bc, $190c
    nop
    inc c

    db $0c, $0d, $e5, $63, $12, $e4, $63

    rrca
    ld d, c
    rlca
    rrca
    ld d, b
    ld a, [bc]
    rrca
    ld e, b
    rst $38
    dec c
    jr jr_008_63fe

    ld [de], a
    jp nc, Jump_000_0d63

    xor a
    rrca
    ld bc, $0808
    inc h
    dec de
    ld b, $da
    ld h, e
    dec c
    xor a
    rrca
    ld b, $08
    ld [$3224], sp
    inc b
    ld bc, $0a66
    add hl, de
    ld bc, $190c
    nop
    inc c

    db $0c

    ld a, [$a071]
    ld hl, $63fa
    add l
    ld l, a
    jr nc, jr_008_63f0

    inc h

jr_008_63f0:
    ld a, [hl]
    ld e, a
    ld a, [$a051]
    sub e
    ld e, $27
    ld [de], a
    ret


    db $01, $09, $0a, $0b

jr_008_63fe:
    ld a, [$a050]
    sub $0d
    ld e, $27
    ld [de], a
    ret


    ld a, [$a051]
    sub $04
    ld e, $27
    ld [de], a
    ret


    db $0f, $7e, $00, $1c, $43, $6d, $08, $0d, $9d, $65, $0d, $03, $6d, $0d, $af, $65
    db $11, $27, $64

    dec de
    ld c, b
    ld c, b
    ld a, [de]

    db $0d, $a6, $65, $12, $31, $64

    dec de
    adc a
    ld c, b
    ld a, [de]

    db $0d, $a6, $35, $11

    ld b, c
    ld h, h

    db $0d, $bb, $35, $50, $00, $69, $00, $06, $48, $64

    dec c
    cp e
    dec [hl]
    ld d, b
    nop
    ld e, c
    nop

    db $0b, $f8, $74, $0d, $a6, $35, $11

    ld e, e
    ld h, h

    db $0d, $e0, $35, $50, $00, $69, $00, $06, $62, $64

    dec c
    ldh [$ff35], a
    ld d, b
    nop
    ld e, c
    nop

    db $0d, $6b, $6d, $11

    add hl, hl
    ld h, l

    db $0f, $46, $00, $0f, $45, $40, $22, $56, $65, $08, $03, $fd, $34, $40, $0d, $6f
    db $65, $05, $01, $10, $64, $12, $79, $64, $0d, $7d, $65, $05, $01, $10, $64, $12

    add e
    ld h, h

    db $0f, $1f, $80, $0d, $50, $0f, $9e, $a0, $b3, $0d, $50, $0f, $9f, $a0, $b3, $0f
    db $1c, $80, $10, $71, $0e, $04, $a8, $64

    xor a
    ld h, h
    or [hl]
    ld h, h
    cp l
    ld h, h

    db $04, $60, $53, $0b, $06, $d0, $64

    inc b
    inc a
    ld d, [hl]
    dec bc
    ld b, $c1
    ld h, h
    inc b
    jr @+$5e

    dec bc
    ld b, $c1
    ld h, h
    inc b
    ld a, h
    ld h, d
    dec bc
    dec c
    and [hl]
    dec [hl]
    ld de, $64cd
    rrca
    ld b, [hl]
    add [hl]
    ld b, $d0
    ld h, h
    rrca
    ld b, [hl]
    and h

    db $19, $00, $24, $0d, $b6, $10, $16, $0b, $b6, $65, $0d, $88, $35, $0f, $1c, $80
    db $19, $00, $24, $0f, $46, $00, $22, $56, $65, $08, $03, $fd, $34, $40, $0d, $76
    db $35, $05, $01, $10, $64, $12, $f1, $64, $0d, $7f, $35, $05, $01, $10, $64, $12
    db $fb, $64, $0f, $1c, $80, $0d, $50, $0f, $a0, $a8, $b2, $0d, $a6, $35, $11

    dec de
    ld h, l

    db $0d, $e0, $35, $50, $00, $67, $00, $06, $22, $65

    dec c
    ldh [$ff35], a
    ld d, b
    nop
    ld d, a
    nop

    db $0d, $03, $6d, $1b, $18, $40, $01

    db $10
    ld [hl], c
    ld c, $04
    dec [hl]
    ld h, l
    ld a, [hl-]
    ld h, l
    ccf
    ld h, l
    ld b, h
    ld h, l
    ld bc, $0600
    ld b, [hl]
    ld h, l
    ld bc, $0602
    ld b, [hl]
    ld h, l
    ld bc, $0608
    ld b, [hl]
    ld h, l
    ld bc, $0d05
    ld c, l
    ld h, l
    dec c
    ld [hl], h
    ld l, l
    nop
    ld hl, $79f4
    ld a, $01
    call Call_000_05cf
    ret


    db $04, $52, $6f, $0b, $19, $0b, $03, $19, $0c, $03, $19, $0d, $03, $19, $0e, $03
    db $19, $0f, $03, $19, $10, $03, $06, $5a, $65

    ld a, $24
    ld [$df11], a
    ld hl, $748b
    ld a, $07
    call Call_000_05cf
    ret


    ld a, [$a071]
    or a
    ret z

    add $24
    ld e, a
    ld a, [$db60]
    cp $02
    jr nz, jr_008_6590

    ld a, e
    add $03
    ld e, a

jr_008_6590:
    ld a, e
    ld [$df11], a
    ld hl, $748b
    ld a, $07
    call Call_000_05cf
    ret


    ld hl, $40da
    ld a, $01
    call Call_000_05cf
    ret


    ld a, [$db60]
    sub $06
    ld e, $27
    ld [de], a
    ret


    ld a, [$db74]
    ld e, $27
    ld [de], a
    ret


    db $03, $72, $6c, $48, $29, $00, $2a, $00, $18, $0d, $6b, $6c, $0e, $07, $d2, $65
    db $7d, $66

    inc c
    ld l, d
    ld l, e
    ld l, e
    inc b
    ld l, c
    inc h
    ld h, a
    ldh a, [$ff67]

    db $01, $00, $05, $0c, $01, $04, $05, $06, $01, $09, $07, $00, $ff, $08, $f0, $fc
    db $2a, $20, $05, $06, $01, $0a, $05, $06, $01, $0b, $05, $06, $01, $0c, $05, $06
    db $01, $09, $05, $06, $01, $0a, $05, $06, $01, $0b, $05, $06, $01, $0c, $05, $06
    db $01, $04, $07, $00, $00, $08, $00, $00, $2a, $00, $05, $0c, $09, $03, $01, $01
    db $07, $c0, $00, $05, $03, $01, $0f, $05, $03, $01, $10, $05, $03, $01, $34, $05
    db $03, $01, $33, $05, $03, $01, $29, $05, $03, $0a, $01, $29, $07, $00, $01, $08
    db $00, $fe, $2a, $40, $05, $0f, $01, $29, $07, $00, $01, $08, $00, $fe, $2a, $40
    db $05, $0f, $01, $29, $07, $00, $00, $08, $00, $00, $2a, $00, $05, $06, $09, $02
    db $01, $38, $07, $70, $ff, $05, $14, $01, $2a, $07, $00, $00, $05, $15, $0a, $09
    db $03, $01, $0b, $05, $03, $01, $35, $05, $03, $01, $11, $05, $03, $01, $0c, $05
    db $03, $0a, $01, $39, $05, $1b, $01, $1e, $05, $1e, $0c, $01, $20, $07, $80, $00
    db $08, $e8, $fe, $2a, $13, $05, $1c, $01, $20, $07, $80, $00, $08, $e0, $fe, $2a
    db $14, $05, $1c, $01, $20, $07, $80, $00, $08, $e0, $fe, $2a, $14, $05, $1c, $01
    db $04, $07, $00, $00, $08, $00, $00, $2a, $00, $05, $04, $01, $1f, $07, $00, $ff
    db $08, $a0, $fd, $2a, $14, $05, $3c, $09, $02, $01, $01, $07, $80, $ff, $08, $38
    db $ff, $2a, $24, $05, $0a, $0a, $08, $00, $00, $2a, $00, $09, $02, $01, $2a, $07
    db $00, $00, $05, $0a, $01, $32, $05, $0c, $01, $31, $07, $92, $00, $05, $14, $0a
    db $01, $2c, $07, $00, $00, $05, $03, $01, $0a, $07, $1a, $00, $08, $60, $fd, $2a
    db $1c, $05, $06, $01, $09, $05, $06, $01, $0b, $2a, $1b, $05, $06, $01, $0c, $05
    db $06, $01, $0a, $05, $06, $01, $09, $05, $06, $01, $0b, $05, $06, $01, $0c, $05
    db $06, $01, $2c, $07, $00, $00, $08, $00, $00, $2a, $00, $05, $0c, $01, $1e, $05
    db $1e, $0c

    ld bc, $052c
    ld b, $01
    jr c, jr_008_6733

    ret nz

    db $fd
    ld a, [hl+]
    db $10
    dec b
    ld c, $01
    add hl, hl

jr_008_6733:
    dec b
    ld [bc], a
    ld bc, $0501
    inc b
    ld bc, $050f
    inc b
    ld bc, $0510
    inc b
    ld bc, $0534
    inc b
    ld bc, $0533
    inc b
    ld bc, $0832
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    ld d, $01
    ld sp, $0007
    ld bc, $1405
    ld bc, $0737
    nop
    nop
    ld a, [hl+]
    add hl, de
    dec b
    ld a, [bc]
    dec b
    ld [de], a
    ld bc, $082c
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    jr z, jr_008_6777

    nop
    rst $38
    dec b
    ld [$2901], sp
    dec b

jr_008_6777:
    inc b
    ld bc, $0501
    inc b
    ld bc, $050f
    inc b
    ld bc, $0510
    inc b
    ld bc, $0534
    inc b
    ld bc, $0533
    inc b
    ld bc, $0529
    inc b
    ld bc, $0501
    inc b
    ld bc, $0700
    nop
    nop
    dec b
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0733
    add b
    cp $29
    ld h, b
    dec b
    ld [$2a01], sp
    rlca
    nop
    nop
    add hl, hl
    nop
    dec b
    inc c
    ld a, [bc]
    ld bc, $0502
    inc b
    add hl, bc
    ld [bc], a
    ld bc, $070f
    add b
    ld bc, $a029
    dec b
    ld [$0201], sp
    rlca
    nop
    nop
    add hl, hl
    nop
    dec b
    inc c
    ld a, [bc]
    ld bc, $072a
    ld l, d
    nop
    dec b
    ld [$2901], sp
    dec b
    ld [$2a01], sp
    dec b
    ld [$2b01], sp
    dec b
    ld [$2a01], sp
    dec b
    ld [$2901], sp
    dec b
    ld [$2c01], sp
    rlca
    nop
    nop
    dec b
    rrca
    ld bc, $051e
    ld e, $0c
    ld bc, $0729
    add b
    nop
    dec b
    ld [$2a01], sp
    dec b
    ld [$2b01], sp
    dec b
    ld [$2a01], sp
    dec b
    ld [$2901], sp
    dec b
    ld [$2c01], sp
    rlca
    nop
    nop
    dec b
    ld [$0a01], sp
    rlca
    and b
    nop
    ld [$fd30], sp
    ld a, [hl+]
    ld a, [hl-]
    dec b
    ld [$0901], sp
    dec b
    inc b
    ld bc, $050b
    inc b
    ld bc, $053a
    ld [$0007], sp
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld a, [bc]
    ld bc, $070c
    nop
    rst $38
    ld [$fc40], sp
    ld a, [hl+]
    inc h
    dec b
    inc b
    ld bc, $050b
    inc b
    ld bc, $0535
    inc b
    ld bc, $0511
    inc b
    ld bc, $050c
    inc b
    ld bc, $050b
    inc b
    ld bc, $0535
    inc b
    ld bc, $0511
    inc b
    ld bc, $050c
    inc b
    ld bc, $050b
    inc b
    ld bc, $0535
    inc b
    ld bc, $0511
    inc b
    ld bc, $050c
    inc b
    ld bc, $0739
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld [bc], a
    ld bc, $070c
    ld b, b
    rst $38
    ld [$fda8], sp
    ld a, [hl+]
    ld a, [hl-]
    dec b
    inc c
    ld bc, $0509
    ld [$0001], sp
    rlca
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc c
    add hl, bc
    ld [bc], a
    ld bc, $052a
    ld a, [bc]
    ld bc, $050a
    ld [$010a], sp
    ld a, [hl+]
    dec b
    inc b
    add hl, bc
    ld [bc], a
    ld bc, $0502
    ld a, [bc]
    ld bc, $0509
    ld [$010a], sp
    ld [bc], a
    dec b
    inc b
    ld bc, $0700
    nop
    ld bc, $0405
    ld bc, $050c
    inc b
    ld bc, $050a
    inc b
    ld bc, $0509
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $0739
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc bc
    ld bc, $070c
    ld c, c
    nop
    ld [$fba0], sp
    ld a, [hl+]
    ld c, l
    dec b
    inc c
    ld bc, $051f
    db $10
    ld bc, $0704
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc c
    ld bc, $071e
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld e, $0c
    add hl, bc
    ld [bc], a
    ld bc, $0728
    nop
    nop
    dec b
    inc c
    ld bc, $072c
    ld d, b
    rst $38
    dec b
    ld c, $0a
    ld bc, $0728
    nop
    nop
    dec b
    inc c
    ld bc, $072c
    ld d, b
    rst $38
    dec b
    inc d
    ld bc, $070a
    ld h, b
    ld bc, $2c08
    db $fc
    ld a, [hl+]
    jr z, jr_008_6933

    inc b
    ld bc, $0509
    inc b

jr_008_6933:
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $050a
    inc b
    ld bc, $0509
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $050a
    inc b
    ld bc, $0509
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $0704
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    add hl, de
    ld bc, $070a
    nop
    rst $38
    ld [$fc2c], sp
    ld a, [hl+]
    jr z, jr_008_6977

    inc b
    ld bc, $0509
    inc b

jr_008_6977:
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $050a
    inc b
    ld bc, $0509
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $050a
    inc b
    ld bc, $0509
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld bc, $072c
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    ld a, [de]
    ld bc, $0720
    add b
    ld bc, $4408
    db $fd
    ld a, [hl+]
    ld [hl-], a
    dec b
    ld c, $01
    ld b, $07
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    rlca
    ld bc, $0738
    add b
    cp $08
    ld b, h
    db $fd
    ld a, [hl+]
    ld [hl-], a
    dec b
    ld c, $01
    ld l, $07
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    rlca
    ld bc, $0720
    add b
    nop
    ld [$fdf8], sp
    ld a, [hl+]
    dec [hl]
    dec b
    ld a, [bc]
    ld bc, $0501
    inc b
    ld bc, $050f
    inc b
    ld bc, $0510
    inc b
    ld bc, $0534
    inc b
    ld bc, $0533
    inc b
    ld bc, $072c
    nop
    nop
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec b
    inc c
    ld bc, $051e
    ld e, $0c
    add hl, bc
    ld [bc], a
    ld bc, $0824
    nop
    cp $2a
    jr nz, jr_008_6a1b

    inc b
    ld bc, $0525
    inc b

jr_008_6a1b:
    ld bc, $0526
    inc b
    ld bc, $0527
    inc b
    ld bc, $0818
    add b
    rst $38
    ld a, [hl+]
    nop
    dec b
    dec b
    ld a, [bc]
    ld bc, $0712
    ld b, b
    nop
    ld [$ffc0], sp
    dec b
    ld a, [bc]
    ld bc, $0513
    ld a, [bc]
    ld bc, $0514
    ld a, [bc]
    ld bc, $0515
    ld a, [bc]
    ld bc, $0512
    ld a, [bc]
    ld bc, $0712
    nop
    ld bc, $202a
    dec b
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld bc, $0515
    ld [bc], a
    ld bc, $2912
    ldh a, [rTIMA]
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld bc, $0515
    ld [bc], a
    ld bc, $0812
    nop
    ld [bc], a
    ld a, [hl+]
    ldh [rTIMA], a
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld bc, $0515
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld bc, $0515
    ld [bc], a
    ld bc, $290d
    nop
    ld a, [hl+]
    nop
    dec b
    inc b
    ld bc, $290e
    nop
    ld a, [hl+]
    nop
    dec b
    ld [$1901], sp
    rlca
    nop
    db $fd
    ld [$fe40], sp
    add hl, hl
    jr jr_008_6ad8

    ld c, $05
    ld [bc], a
    ld bc, $051a
    ld [bc], a
    ld bc, $051b
    ld [bc], a
    ld bc, $051c
    ld [bc], a
    ld bc, $0519
    ld [bc], a
    ld bc, $051a
    ld [bc], a
    ld bc, $051b
    ld [bc], a
    ld bc, $051c
    ld [bc], a
    ld bc, $0519
    ld [bc], a
    ld bc, $051a
    ld [bc], a
    ld bc, $051b

jr_008_6ad8:
    ld [bc], a
    ld bc, $051c
    ld [bc], a
    ld bc, $0519
    ld [bc], a
    ld bc, $051a
    ld [bc], a
    ld bc, $051b
    ld [bc], a
    ld bc, $051c
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld bc, $0712
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    db $10
    dec b
    ld d, $01
    inc de
    add hl, hl
    db $10
    ld a, [hl+]
    ret nc

    dec b
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld bc, $0515
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld bc, $0515
    ld [bc], a
    ld bc, $0512
    ld [bc], a
    ld bc, $0513
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld a, [bc]
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    rlca
    add hl, bc
    ld [bc], a
    ld bc, $0515
    inc b
    ld bc, $0510
    inc b
    ld bc, $0534
    inc b
    ld bc, $053b
    inc b
    ld a, [bc]
    ld bc, $2a15
    ld [$0405], sp
    ld bc, $0510
    inc b
    ld bc, $0534
    inc b
    ld bc, $053b
    inc b
    ld bc, $0515
    inc b
    ld bc, $0818
    nop
    nop
    ld a, [hl+]
    nop
    dec b
    dec bc
    ld bc, $051e
    ld e, $0c
    inc bc
    ld a, e
    ld l, h
    ld c, b
    rrca
    inc d
    nop
    add hl, bc
    inc bc
    ld bc, $0729
    add b
    rst $38
    dec b
    ld [bc], a
    ld bc, $052a
    inc b
    ld bc, $052b
    ld [bc], a
    ld bc, $052a
    inc b
    ld a, [bc]
    ld bc, $0813
    add b
    nop
    dec b
    ld [bc], a
    ld [$0000], sp
    dec b
    ld a, [bc]
    ld bc, $2913
    inc b
    dec b
    inc h
    add hl, bc
    ld [bc], a
    ld bc, $0714
    and b
    nop
    ld [$fa00], sp
    rrca
    ld [de], a
    sub d
    rrca
    inc d
    nop
    dec b
    ld c, $01
    ld [de], a
    dec b
    ld b, $0a
    ld bc, $0714
    and b
    nop
    ld [$fa00], sp
    rrca
    ld [de], a
    sub d
    rrca
    inc d
    nop
    dec b
    ld c, $01
    ld [de], a
    dec b
    ld b, $01
    ld de, $0008
    nop
    add hl, hl
    ld sp, hl
    rrca
    ld [de], a
    nop
    rrca
    inc d
    nop
    dec b
    jr jr_008_6bd6

    inc l

jr_008_6bd6:
    rlca
    nop
    nop
    add hl, hl
    nop
    dec b
    ld [$3801], sp
    rlca
    nop
    cp $08
    nop
    db $fd
    rrca
    ld [de], a
    ld e, d
    rrca
    inc d
    nop
    dec b
    ld [$3701], sp
    dec b
    ld [$2c01], sp
    ld [$0000], sp
    add hl, hl
    inc e
    rrca
    ld [de], a
    nop
    rrca
    inc d
    nop
    dec b
    ld [de], a
    ld bc, $0704
    nop
    nop
    add hl, hl
    nop
    dec b
    ld [$2001], sp
    rlca
    add b
    ld bc, $0008
    ld hl, sp+$0f
    ld [de], a
    ldh a, [rIF]
    inc d
    nop
    dec b
    ld [$1f01], sp
    dec b
    ld [$0401], sp
    ld [$0000], sp
    add hl, hl
    db $eb
    rrca
    ld [de], a
    nop
    rrca
    inc d
    nop
    dec b
    ld [de], a
    ld bc, $0728
    nop
    nop
    add hl, hl
    nop
    dec b
    ld [$3301], sp
    rlca
    ret nz

    rst $38
    dec b
    add hl, bc
    ld bc, $052a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld bc, $0733
    jr nc, @+$01

    dec b
    ld b, $01
    ld a, [hl+]
    rlca
    ret nz

    rst $38
    dec b
    ld b, $0a
    ld bc, $072c
    nop
    nop
    dec b
    inc c
    ld bc, $071e
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    rrca
    ld [de], a
    nop
    rrca
    inc d
    nop
    dec b
    ld e, $0c

    ld e, $27
    ld a, [$db60]
    ld [de], a
    ret


    call Call_000_0c80
    call Call_000_0c91
    jp Jump_000_0da4


    call Call_000_0c80
    call Call_008_6c84
    jp Jump_000_0da4


Call_008_6c84:
    ld e, $0f
    ld l, $12
    ld h, d
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


    db $0f, $45, $40, $17, $f6, $0d, $0d, $a6, $35, $11

    xor c
    ld l, h

    db $0d, $e0, $35, $38, $00, $69, $00, $06, $b0, $6c

    dec c
    ldh [$ff35], a
    jr c, jr_008_6cae

jr_008_6cae:
    ld e, c
    nop

    db $0b, $e9, $6c, $04, $60, $53, $0b, $0b, $b6, $65, $0b, $e9, $6c, $16, $0f, $45
    db $40, $17, $f6, $0d, $0d, $a6, $35, $11

    db $d4
    ld l, h

    db $0d, $e0, $35, $68, $00, $69, $00, $06, $db, $6c

    dec c
    ldh [$ff35], a
    ld l, b
    nop
    ld e, c
    nop

    db $0b, $e9, $6c, $04, $60, $53, $0b, $0b, $b6, $65, $0b, $e9, $6c, $16, $04, $52
    db $6f, $0b, $09, $02, $19, $0b, $03, $19, $0c, $03, $19, $0d, $03, $19, $0e, $03
    db $19, $0f, $03, $19, $10, $03, $0a, $0c

    xor a
    ld [$db6e], a
    ld a, [$db74]
    or a
    jr nz, jr_008_6d26

    ld a, [$db60]
    call Call_000_0663
    ld hl, $db6a
    or [hl]
    ld [hl], a

jr_008_6d18:
    push bc
    ld hl, $6d6c
    ld a, $0f
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


jr_008_6d26:
    ld [$db6b], a
    ld a, [$a05b]
    inc a
    ld hl, $6d3b
    add l
    ld l, a
    jr nc, jr_008_6d35

    inc h

jr_008_6d35:
    ld a, [hl]
    ld [$a051], a
    jr jr_008_6d18

    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

    db $0d, $62, $6d, $11

    ld c, d
    ld l, l

    db $1d

    inc bc
    xor b
    ld a, [hl]
    ld b, d
    inc b
    ld c, h
    ld e, h
    ld a, [bc]
    ld bc, $0502
    ld bc, $7c10
    ld de, $6d54
    add hl, de
    ld bc, $1904
    nop
    db $08
    dec e

    ld a, [$a051]
    sub $0c
    ld e, $27
    ld [de], a
    ret


    ld a, [$df0a]
    sub $04
    ld e, $27
    ld [de], a
    ret


    ld a, $08
    ld [$a082], a
    ret


Call_008_6d7a:
    ld e, $39
    ld a, [de]
    srl a
    srl a
    srl a
    ld hl, $6da9
    add a
    add l
    ld l, a
    jr nc, jr_008_6d8c

    inc h

jr_008_6d8c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, d
    ld c, $8d
    ld e, $0d
    ld a, [de]
    ld [bc], a
    add l
    ld [de], a
    inc c
    inc e
    ld a, [de]
    ld [bc], a
    adc h
    ld [de], a
    ld e, $39
    ld a, [de]
    inc a
    cp $60
    jr c, jr_008_6da7

    xor a

jr_008_6da7:
    ld [de], a
    ret


    db $80, $00, $40, $00, $10, $00

    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    stop
    ld b, b
    nop
    add b
    nop

Call_008_6dc1:
    ld e, $3f
    ld a, [de]
    srl a
    srl a
    srl a
    ld hl, $6df0
    add a
    add l
    ld l, a
    jr nc, jr_008_6dd3

    inc h

jr_008_6dd3:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, d
    ld c, $8f
    ld e, $0f
    ld a, [de]
    ld [bc], a
    add l
    ld [de], a
    inc c
    inc e
    ld a, [de]
    ld [bc], a
    adc h
    ld [de], a
    ld e, $3f
    ld a, [de]
    inc a
    cp $60
    jr c, jr_008_6dee

    xor a

jr_008_6dee:
    ld [de], a
    ret


    db $40, $00, $20, $00, $08, $00, $f8, $ff, $e0, $ff, $c0, $ff, $c0, $ff, $e0, $ff
    db $f8, $ff, $08, $00, $20, $00, $40, $00

    ld a, $02
    jr jr_008_6e11

    ld a, $01
    jr jr_008_6e11

    xor a

jr_008_6e11:
    ld [$df14], a
    ld e, $7d
    xor a
    ld [de], a
    push de
    call Call_000_1aea
    call Call_000_1646
    pop de
    ld b, a
    cp $f0
    jr z, jr_008_6e2f

    and $78
    cp $20
    jr c, jr_008_6e32

    cp $40
    jr nc, jr_008_6e32

jr_008_6e2f:
    call Call_008_7171

jr_008_6e32:
    ld a, [$df14]
    cp $01
    jr c, jr_008_6e43

    jr z, jr_008_6e40

    call Call_008_6dc1
    jr jr_008_6e43

jr_008_6e40:
    call Call_008_6d7a

jr_008_6e43:
    call Call_000_0da4
    ld a, [$db75]
    or a
    jp nz, Jump_008_6f16

    ld a, [$db74]
    or a
    jp nz, Jump_008_6f9a

    ld a, [$db77]
    or a
    jp nz, Jump_008_6e9d

    call Call_008_6e64
    call Call_008_7012
    jp Jump_008_7067


Call_008_6e64:
    ld hl, $db3f
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld h, d
    ld l, $04
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_008_6e78

    ld a, b
    ld [hl-], a
    ld [hl], c
    jr jr_008_6e78

Call_008_6e78:
jr_008_6e78:
    ld hl, $db43
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld h, d
    ld l, $04
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_008_6e8a

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_008_6e8a:
    ld hl, $db41
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld h, d
    ld l, $07
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_008_6e9c

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_008_6e9c:
    ret


Jump_008_6e9d:
    call Call_008_6ee2
    call Call_008_6efc
    ld a, [$db77]
    cp $02
    jr z, jr_008_6ec4

    jr nc, jr_008_6edc

    ld hl, $db43
    ld bc, $db51
    ld a, [bc]
    add $98
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc $00
    ld [hl], a
    call Call_008_6e64
    call Call_008_7067
    jp Jump_008_6f4d


jr_008_6ec4:
    ld hl, $db3f
    ld bc, $db51
    ld a, [bc]
    add $08
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc $00
    ld [hl], a
    call Call_008_6e64
    call Call_008_7067
    jp Jump_008_6f80


jr_008_6edc:
    call Call_008_6e64
    jp Jump_008_7012


Call_008_6ee2:
    ld hl, $db4f
    ld e, $77
    ld a, [de]
    add [hl]
    ld [hl], a
    ld hl, $db51
    inc e
    ld a, [de]
    bit 7, a
    ld b, $00
    jr z, jr_008_6ef6

    dec b

jr_008_6ef6:
    adc [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ret


Call_008_6efc:
    ld hl, $db50
    ld e, $79
    ld a, [de]
    add [hl]
    ld [hl], a
    ld hl, $db53
    inc e
    ld a, [de]
    bit 7, a
    ld b, $00
    jr z, jr_008_6f10

    dec b

jr_008_6f10:
    adc [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ret


Jump_008_6f16:
    call Call_008_6ee2
    ld a, [$db3d]
    dec a
    ld c, a
    cp [hl]
    jr nz, jr_008_6f38

    dec hl
    ld a, [hl+]
    cp $10
    jr c, jr_008_6f38

    ld [hl], $00
    ld hl, $a005

jr_008_6f2c:
    ld a, [hl]
    cp c
    jr nz, jr_008_6f32

    ld [hl], $00

jr_008_6f32:
    inc h
    ld a, h
    cp $b3
    jr nz, jr_008_6f2c

jr_008_6f38:
    ld hl, $db43
    ld bc, $db51
    ld a, [bc]
    add $98
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc $00
    ld [hl], a
    call Call_008_6e78
    jp Jump_008_6f4d


Jump_008_6f4d:
    xor a
    ld [$a07b], a
    ld hl, $db51
    ld a, [hl+]
    add $08
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a
    ld h, d
    ld l, $04
    ld a, [hl+]
    sub c
    ld c, a
    ld a, [hl-]
    sbc b
    ret nc

jr_008_6f65:
    ld a, c
    ld [$a07b], a
    cpl
    inc a
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld l, $0e
    ld a, [hl]
    add c
    ld [hl], a
    ld l, $8e
    ld a, [hl]
    add c
    ld [hl], a
    ret


Jump_008_6f80:
    xor a
    ld [$a07b], a
    ld hl, $db51
    ld a, [hl+]
    add $98
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a
    ld h, d
    ld l, $04
    ld a, [hl+]
    sub c
    ld c, a
    ld a, [hl-]
    sbc b
    ret c

    jr jr_008_6f65

Jump_008_6f9a:
    ld e, $39
    ld a, [$db53]
    ld [de], a
    call Call_008_6fb9
    call Call_008_6e64
    ld hl, $db4d
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld h, d
    ld l, $07
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_008_6fb8

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_008_6fb8:
    ret


Call_008_6fb9:
    call Call_008_6efc
    ld hl, $db47
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_008_6fce

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_008_6fce:
    ld hl, $db4b
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_008_6fe0

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_008_6fe0:
    ld h, d
    ld l, $39
    ld a, [$db53]
    sub [hl]
    ld c, a
    rla
    sbc a
    ld b, a
    ld l, $07
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld hl, $db41
    ld bc, $db53
    ld a, [bc]
    add $08
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc $00
    ld [hl], a
    ld hl, $db4d
    ld bc, $db53
    ld a, [bc]
    add $78
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc $00
    ld [hl], a
    ret


Call_008_7012:
Jump_008_7012:
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $48
    jr nc, jr_008_7047

    ld a, [de]
    inc e
    sub $48
    ld [hl+], a
    ld a, [de]
    sbc $00
    ld [hl], a
    jr nc, jr_008_7033

    ld hl, $db45
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db52
    jr jr_008_7042

jr_008_7033:
    ld hl, $db45
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db51
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_008_7066

jr_008_7042:
    ld a, b
    ld [hl-], a
    ld [hl], c
    jr jr_008_7066

jr_008_7047:
    cp $50
    jr c, jr_008_7066

    ld a, [de]
    inc e
    sub $50
    ld [hl+], a
    ld a, [de]
    sbc $00
    ld [hl], a
    ld hl, $db49
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db51
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_008_7066

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_008_7066:
    ret


Call_008_7067:
Jump_008_7067:
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    cp $38
    jr nc, jr_008_709c

    ld a, [de]
    inc e
    sub $38
    ld [hl+], a
    ld a, [de]
    sbc $00
    ld [hl], a
    jr nc, jr_008_7088

    ld hl, $db47
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db54
    jr jr_008_7097

jr_008_7088:
    ld hl, $db47
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_008_70bb

jr_008_7097:
    ld a, b
    ld [hl-], a
    ld [hl], c
    jr jr_008_70bb

jr_008_709c:
    cp $48
    jr c, jr_008_70bb

    ld a, [de]
    inc e
    sub $48
    ld [hl+], a
    ld a, [de]
    sbc $00
    ld [hl], a
    ld hl, $db4b
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_008_70bb

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_008_70bb:
    ret


    xor a
    ldh [$ff85], a
    ldh [$ff86], a
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $4f
    jr nc, jr_008_70ef

    ld a, [hl]
    sub $01
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ld a, $01
    ldh [$ff85], a
    ld hl, $db45
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db51
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_008_7114

    ld a, b
    ld [hl-], a
    ld [hl], c
    xor a
    ldh [$ff85], a
    jr jr_008_7114

jr_008_70ef:
    cp $51
    jr c, jr_008_7114

    ld a, [hl]
    add $01
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, $01
    ldh [$ff85], a
    ld hl, $db49
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db51
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_008_7114

    ld a, b
    ld [hl-], a
    ld [hl], c
    xor a
    ldh [$ff85], a

jr_008_7114:
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    cp $3f
    jr nc, jr_008_7142

    ld a, [hl]
    sub $01
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ld a, $01
    ldh [$ff86], a
    ld hl, $db47
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_008_7167

    ld a, b
    ld [hl-], a
    ld [hl], c
    xor a
    ldh [$ff86], a
    jr jr_008_7167

jr_008_7142:
    cp $41
    jr c, jr_008_7167

    ld a, [hl]
    add $01
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, $01
    ldh [$ff86], a
    ld hl, $db4b
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_008_7167

    ld a, b
    ld [hl-], a
    ld [hl], c
    xor a
    ldh [$ff86], a

jr_008_7167:
    ldh a, [$ff85]
    ld b, a
    ldh a, [$ff86]
    or b
    ld e, $3a
    ld [de], a
    ret


Call_008_7171:
    ld a, b
    cp $f0
    ld a, [$a071]
    jr nz, jr_008_71a7

    cp $03
    jr z, jr_008_718a

jr_008_717d:
    ld e, $7f
    ld bc, $fd40
    call Call_000_0d54
    call Call_008_72dc
    jr jr_008_71a1

jr_008_718a:
    ld a, [$a050]
    cp $11
    jr z, jr_008_717d

    ld e, $18
    ld bc, $fd40
    call Call_000_0d70
    ld e, $1c
    ld bc, $0040
    call Call_008_7331

jr_008_71a1:
    ld e, $7d
    ld a, $01
    ld [de], a
    ret


jr_008_71a7:
    bit 7, b
    jp nz, Jump_008_7245

    cp $03
    jr z, jr_008_71ed

    bit 3, b
    jr nz, jr_008_71d1

    bit 4, b
    jr nz, jr_008_71c5

jr_008_71b8:
    ld e, $7f
    ld bc, $fe80
    call Call_000_0d54
    call Call_008_72dc
    jr jr_008_71a1

jr_008_71c5:
    ld e, $28
    ld bc, $0300
    call Call_000_0d23
    call Call_008_72ee
    ret


jr_008_71d1:
    bit 4, b
    jr nz, jr_008_71e1

    ld e, $30
    ld bc, $0180
    call Call_000_0ca2
    call Call_008_7312
    ret


jr_008_71e1:
    ld e, $30
    ld bc, $fe80
    call Call_000_0cd3
    call Call_008_7300
    ret


jr_008_71ed:
    bit 3, b
    jr nz, jr_008_721f

    bit 4, b
    jr nz, jr_008_720e

    ld a, [$a050]
    cp $11
    jr z, jr_008_71b8

    ld e, $18
    ld bc, $fe80
    call Call_000_0d70
    ld e, $1c
    ld bc, $0040
    call Call_008_7331
    jr jr_008_71a1

jr_008_720e:
    ld e, $10
    ld bc, $0300
    call Call_000_0d35
    ld e, $1c
    ld bc, $ffc0
    call Call_008_7324
    ret


jr_008_721f:
    bit 4, b
    jr nz, jr_008_7234

    ld e, $10
    ld bc, $0180
    call Call_000_0cb4
    ld e, $1c
    ld bc, $ffc0
    call Call_008_733e
    ret


jr_008_7234:
    ld e, $10
    ld bc, $fe80
    call Call_000_0cef
    ld e, $1c
    ld bc, $0040
    call Call_008_734b
    ret


Jump_008_7245:
    cp $02
    jr z, jr_008_7285

    bit 3, b
    jr nz, jr_008_7269

    bit 4, b
    jr nz, jr_008_725d

jr_008_7251:
    ld e, $18
    ld bc, $fe80
    call Call_000_0d54
    call Call_008_72dc
    ret


jr_008_725d:
    ld e, $18
    ld bc, $0180
    call Call_000_0d23
    call Call_008_72ee
    ret


jr_008_7269:
    bit 4, b
    jr nz, jr_008_7279

    ld e, $18
    ld bc, $0180
    call Call_000_0ca2
    call Call_008_7312
    ret


jr_008_7279:
    ld e, $18
    ld bc, $fe80
    call Call_000_0cd3
    call Call_008_7300
    ret


jr_008_7285:
    bit 3, b
    jr nz, jr_008_72b6

    bit 4, b
    jr nz, jr_008_72a5

    ld a, [$a050]
    cp $12
    jr z, jr_008_7251

    ld e, $0c
    ld bc, $fe80
    call Call_000_0d70
    ld e, $14
    ld bc, $0040
    call Call_008_7331
    ret


jr_008_72a5:
    ld e, $0c
    ld bc, $0180
    call Call_000_0d35
    ld e, $14
    ld bc, $ffc0
    call Call_008_7324
    ret


jr_008_72b6:
    bit 4, b
    jr nz, jr_008_72cb

    ld e, $0c
    ld bc, $0180
    call Call_000_0cb4
    ld e, $14
    ld bc, $ffc0
    call Call_008_733e
    ret


jr_008_72cb:
    ld e, $0c
    ld bc, $fe80
    call Call_000_0cef
    ld e, $14
    ld bc, $0040
    call Call_008_734b
    ret


Call_008_72dc:
    ld bc, $ffd0
    ld l, $10
    ld a, [hl-]
    rla
    jr nc, jr_008_72ea

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret c

jr_008_72ea:
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_008_72ee:
    ld bc, $0030
    ld l, $10
    ld a, [hl-]
    rla
    jr c, jr_008_72fc

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret nc

jr_008_72fc:
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_008_7300:
    ld bc, $ffd0
    ld l, $0e
    ld a, [hl-]
    rla
    jr nc, jr_008_730e

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret c

jr_008_730e:
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_008_7312:
    ld bc, $0030
    ld l, $0e
    ld a, [hl-]
    rla
    jr c, jr_008_7320

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret nc

jr_008_7320:
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_008_7324:
    ld l, $10
    ld a, [hl-]
    rla
    ret nc

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret nc

    jp Jump_000_0d85


Call_008_7331:
    ld l, $10
    ld a, [hl-]
    rla
    ret c

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret c

    jp Jump_000_0d04


Call_008_733e:
    ld l, $0e
    ld a, [hl-]
    rla
    ret nc

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret nc

    jp Jump_000_0d04


Call_008_734b:
    ld l, $0e
    ld a, [hl-]
    rla
    ret c

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    ret c

    jp Jump_000_0d04


    ld a, [$db75]
    or a
    jr nz, jr_008_7368

    ld a, [$db77]
    or a
    jr z, jr_008_7379

    cp $03
    jr nc, jr_008_7379

jr_008_7368:
    ld a, [$a07b]
    or a
    jr z, jr_008_7379

    ld b, a
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr z, jr_008_7379

    ld a, b
    add [hl]
    ld [hl], a

jr_008_7379:
    ld e, $54
    ld a, [de]
    or a
    jr z, jr_008_7393

    bit 7, a
    jr nz, jr_008_7385

    dec a
    ld [de], a

jr_008_7385:
    and $04
    ld e, $47
    ld a, [de]
    jr nz, jr_008_7390

    res 4, a
    jr jr_008_7392

jr_008_7390:
    set 4, a

jr_008_7392:
    ld [de], a

jr_008_7393:
    call Call_008_7497
    call Call_008_741f
    ld a, [$a064]
    or a
    jr nz, jr_008_73ea

    ld e, $0b
    ld a, [de]
    sub $90
    cp $30
    jr nc, jr_008_73b0

jr_008_73a8:
    ld e, $01
    ld bc, $5383
    jp Jump_000_0846


jr_008_73b0:
    cp $68
    jr nc, jr_008_73bf

    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a

jr_008_73bf:
    ld e, $09
    ld a, [de]
    cp $9a
    jr nc, jr_008_73a8

    cp $06
    jr c, jr_008_73a8

    ld a, [$a071]
    or a
    ld e, $4c
    jr z, jr_008_73d4

    ld e, $72

jr_008_73d4:
    ld a, [de]
    or a
    jr nz, jr_008_73ea

    ld a, [$a051]
    cp $0c
    jr z, jr_008_73ea

    call Call_000_1067
    ld e, $01
    ld bc, $5396
    jp Jump_000_0846


jr_008_73ea:
    call Call_008_744f
    ldh a, [$ffa6]
    and $08
    jr z, jr_008_7417

    ld a, [$a082]
    or a
    jr nz, jr_008_7417

    ld a, [$cd4d]
    or a
    jr nz, jr_008_7417

    ld a, [$da36]
    or a
    jr nz, jr_008_7417

    ld a, [$db61]
    cp $08
    jr z, jr_008_7417

    ld a, [$a07e]
    or a
    jr nz, jr_008_7417

    ld a, $04
    ld [$a082], a

jr_008_7417:
    ld a, [$df12]
    or a
    call nz, Call_008_74a7
    ret


Call_008_741f:
    ld hl, $cd54
    ld a, [$a050]
    cp $06
    jr z, jr_008_7434

    ld e, $04
    cp $10
    jr nz, jr_008_743b

    ld bc, $ffef
    jr jr_008_743e

jr_008_7434:
    ld bc, $0006
    ld e, $01
    jr jr_008_743e

jr_008_743b:
    ld bc, $0000

jr_008_743e:
    ld a, e
    ldh [$ffa1], a
    ld e, $07
    ld a, [de]
    add c
    ld [hl+], a
    inc e
    ld a, [de]
    adc b
    ld [hl], a
    ld a, $04
    ldh [$ffa0], a
    ret


Call_008_744f:
    push de
    ld h, d
    ld bc, $0000
    ld a, [$a050]
    cp $10
    ld de, $0000
    jr nz, jr_008_7461

    ld de, $fff4

jr_008_7461:
    call Call_000_1ad9
    call Call_000_1646
    pop de
    and $7f
    cp $08
    ret nz

    ld a, [$a05d]
    cp $01
    ret z

    cp $04
    ret z

    ld a, [$a054]
    or a
    ret nz

    call Call_000_2809
    ret c

    ld b, $02
    call Call_000_3a8b
    ld e, $44
    ld a, $02
    ld [de], a
    ld e, $45
    ld a, [de]
    ld [$a053], a
    ld e, $01
    ld bc, $4ec9
    jp Jump_000_0846


Call_008_7497:
    ld a, [$a070]
    or a
    ret z

    ld a, [$da0e]
    and $3f
    ret nz

    ld e, $06
    jp Jump_000_0f7a


Call_008_74a7:
    ld e, $08
    ld hl, $cd56

jr_008_74ac:
    ld a, [hl+]
    or a
    jr z, jr_008_74b6

    dec l
    dec a
    ld [hl+], a
    call z, Call_008_74bc

jr_008_74b6:
    inc l
    inc l
    dec e
    jr nz, jr_008_74ac

    ret


Call_008_74bc:
    push hl
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    inc a
    ld [hl], a
    ldh [$ff80], a
    ld e, l
    swap l
    ld c, l
    ld a, [$db3d]
    ld b, a
    ld a, h
    ld d, $ff
    sub $b3

jr_008_74d3:
    inc d
    sub b
    jr nc, jr_008_74d3

    add b
    ld b, a
    call Call_000_3c02
    ldh a, [$ff80]
    ldh [$ff84], a
    call Call_000_15b0
    ld hl, $df12
    dec [hl]
    ld e, $45
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    pop hl
    ret


    dec bc
    ld hl, sp+$74
    dec e

    db $24, $ff, $0b, $da, $62, $0d, $9f, $75, $11, $09, $75, $0f, $45, $40, $06, $0c
    db $75, $0f, $45, $c0, $0d, $a6, $35, $11

    ldh a, [rPCM12]

    db $0d, $a4, $75, $11

    ei
    ld [hl], l

    db $0f, $3b, $00, $03, $d3, $75, $48, $22, $2d, $75, $08, $10, $3b, $12, $fb, $75
    db $05, $01, $06, $23, $75, $10, $71, $0e, $04, $39, $75

    ld d, a
    ld [hl], l
    ld l, [hl]
    ld [hl], l
    add l
    ld [hl], l

    db $2a, $20, $29, $0e, $0f, $39, $80, $0f, $3a, $02, $0d, $96, $75, $12, $50, $75

    inc b
    ld a, b
    ld d, d
    ld a, [bc]
    ld bc, $0004

    db $04, $40, $4f, $0a, $01, $1f, $00

    ld a, [hl+]
    jr nz, @+$2b

    ld c, $0f
    add hl, sp
    add b
    rrca
    ld a, [hl-]
    ld [bc], a
    inc b
    inc l
    ld d, a
    ld a, [bc]
    add hl, de
    ld bc, $1908
    nop
    ld [$6506], sp
    ld [hl], l
    ld a, [hl+]
    jr nz, @+$2b

    ld c, $0f
    add hl, sp
    add b
    rrca
    ld a, [hl-]
    ld [bc], a
    inc b
    sbc c
    ld e, [hl]
    ld a, [bc]
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$7c06], sp
    ld [hl], l
    ld a, [hl+]
    jr nz, @+$2b

    inc c
    rrca
    add hl, sp
    ld c, h
    rrca
    ld a, [hl-]
    ld bc, $2904
    ld h, l
    ld a, [bc]
    ld bc, $0000

    ld a, [$a051]
    sub $04
    ld e, $27
    ld [de], a
    ret


    call Call_008_75ae
    jr jr_008_75a7

    call Call_008_75b5

jr_008_75a7:
    ld a, $00
    rla
    ld e, $27
    ld [de], a
    ret


Call_008_75ae:
    ld e, $04
    ld hl, $a088
    jr jr_008_75ba

Call_008_75b5:
    ld e, $07
    ld hl, $a08b

jr_008_75ba:
    ld a, [de]
    sub [hl]
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ret


Call_008_75c1:
    ld e, $04
    ld hl, $a088
    jr jr_008_75cd

Call_008_75c8:
    ld e, $07
    ld hl, $a08b

jr_008_75cd:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $11
    ld a, [de]
    ld e, a
    call Call_000_0d04
    ld h, d
    ld l, $39
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld l, $12
    ld e, [hl]
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_008_75b5
    ret c

    call Call_008_75c8
    ld e, $3b
    ld a, $01
    ld [de], a
    ret


    db $0d, $9f, $75, $11, $07, $76, $0f, $45, $40, $06, $0a, $76, $0f, $45, $c0, $08
    db $00, $00, $0f, $3b, $00, $03, $ac, $76, $48, $22, $29, $76, $08, $10, $3b, $12
    db $22, $76, $05, $01, $06, $18, $76, $0f, $1c, $80, $0f, $1f, $80, $0c, $10, $71
    db $0e, $04, $35, $76

    ld l, c
    halt
    add c
    halt
    sub h
    halt

    db $29, $20, $0f, $39, $33, $0f, $3a, $01, $0d, $96, $75, $12, $56, $76

    inc b
    ld a, b
    ld d, d
    ld a, [bc]
    add hl, de
    ld bc, $190a
    ld [bc], a
    ld [$0319], sp
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [$4706], sp
    halt

    db $04, $40, $4f, $0a, $19, $02, $08, $19, $03, $0a, $19, $02, $08, $19, $01, $0a
    db $06, $5a, $76

    add hl, hl
    jr nz, @+$11

    add hl, sp
    ld c, h
    rrca
    ld a, [hl-]
    ld bc, $2c04
    ld d, a
    ld a, [bc]
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld [$0019], sp
    ld [$7506], sp
    halt
    inc b
    sbc c
    ld e, [hl]
    ld a, [bc]
    ld h, $60
    ld bc, $0719
    ld a, [bc]
    add hl, de
    ld [$1908], sp
    add hl, bc
    ld a, [bc]
    ld b, $85
    halt
    add hl, hl
    ld a, [de]
    rrca
    add hl, sp
    ld h, $0f
    ld a, [hl-]
    ld bc, $2904
    ld h, l
    ld a, [bc]
    add hl, de
    nop
    inc c
    add hl, de
    ld bc, $190c
    ld [bc], a
    add hl, bc
    ld b, $a0
    halt

    ld a, [$a071]
    cp $02
    jr nz, jr_008_76ba

    ld e, $16
    call Call_000_0d04
    jr jr_008_76d1

jr_008_76ba:
    ld h, d
    ld l, $39
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld l, $11
    ld e, [hl]
    ld l, $45
    bit 7, [hl]
    jr nz, jr_008_76ce

    call Call_000_0cb4
    jr jr_008_76d1

jr_008_76ce:
    call Call_000_0ce5

jr_008_76d1:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_008_75ae
    ld e, $45
    ld a, [de]
    jr nc, jr_008_76e5

    rla
    ret nc

    jr jr_008_76e7

jr_008_76e5:
    rla
    ret c

jr_008_76e7:
    call Call_008_75c1
    ld e, $3b
    ld a, $01
    ld [de], a
    ret


    dec c
    and h
    ld [hl], l
    ld de, $76fc
    rrca
    inc a
    ld b, b
    ld b, $ff
    halt
    rrca
    inc a
    ret nz

    rrca
    dec sp
    nop
    inc bc
    adc a
    ld [hl], a
    ld c, b
    ld [hl+], a
    add hl, de
    ld [hl], a
    ld [$3b10], sp
    inc d
    ld [bc], a
    dec d
    ld [hl], a
    dec b
    ld bc, $0a06
    ld [hl], a
    rrca
    inc e
    add b
    inc c
    ld a, [hl+]
    jr jr_008_7745

    jr @+$12

    ld [hl], c
    ld c, $04
    add hl, hl
    ld [hl], a
    ld e, h
    ld [hl], a
    ld l, h
    ld [hl], a
    ld a, a
    ld [hl], a
    inc b
    add [hl]
    ld d, h
    ld [$8310], sp
    ld a, [de]
    ld b, [hl]
    dec c
    sub [hl]
    ld [hl], l
    ld [de], a
    ld c, l
    ld [hl], a
    inc b
    ld a, b
    ld d, d
    ld a, [bc]
    rrca
    ld b, [hl]
    nop
    add hl, de
    jr nz, @+$0c

    add hl, de
    ld hl, $190a

jr_008_7745:
    ld [hl+], a
    ld a, [bc]
    add hl, de
    inc hl
    ld a, [bc]
    ld b, $3e
    ld [hl], a
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $190a
    ld [bc], a
    ld a, [bc]
    add hl, de
    inc bc
    ld a, [bc]
    ld b, $4d
    ld [hl], a
    inc b
    inc l
    ld d, a
    ld a, [bc]
    add hl, de
    ld bc, $1906
    ld [bc], a
    ld b, $19
    nop
    ld b, $06
    ld h, b
    ld [hl], a
    inc b
    sbc c
    ld e, [hl]
    ld a, [bc]
    add hl, de
    ld bc, $1906
    nop
    ld [$0119], sp
    ld b, $19
    ld [bc], a
    ld [$7006], sp
    ld [hl], a
    inc b
    add hl, hl
    ld h, l
    ld a, [bc]
    add hl, de
    nop
    ld b, $19
    ld bc, $1906
    ld [bc], a
    dec b
    ld b, $83
    ld [hl], a
    ld bc, $010c
    ld h, d
    ld l, $11
    ld e, [hl]
    ld l, $45
    bit 7, [hl]
    jr nz, jr_008_77a1

    call Call_000_0cb4
    jr jr_008_77a4

jr_008_77a1:
    call Call_000_0ce5

jr_008_77a4:
    ld bc, $00e0
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $3c
    bit 7, [hl]
    jr nz, jr_008_77b6

    call Call_000_0d35
    jr jr_008_77b9

jr_008_77b6:
    call Call_000_0d66

jr_008_77b9:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld e, $11
    ld a, [de]
    or a
    jr z, jr_008_77e8

    call Call_008_75ae
    ld e, $45
    ld a, [de]
    jr nc, jr_008_77d4

    rla
    jr nc, jr_008_77e8

    jr jr_008_77d7

jr_008_77d4:
    rla
    jr c, jr_008_77e8

jr_008_77d7:
    call Call_008_75c1
    ld e, $3b
    ld a, [de]
    inc a
    ld [de], a
    xor a
    ld e, $11
    ld [de], a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a

jr_008_77e8:
    ld e, $12
    ld a, [de]
    or a
    ret z

    call Call_008_75b5
    ld e, $3c
    ld a, [de]
    jr nc, jr_008_77f9

    rla
    ret nc

    jr jr_008_77fb

jr_008_77f9:
    rla
    ret c

jr_008_77fb:
    call Call_008_75c8
    ld e, $3b
    ld a, [de]
    inc a
    ld [de], a
    xor a
    ld e, $12
    ld [de], a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


    bit 7, [hl]
    jr nz, jr_008_7816

    call Call_000_0de1
    jr jr_008_7819

jr_008_7816:
    call $0e12

jr_008_7819:
    ld hl, $6e70
    ld a, $08
    call Call_000_05f9
    ld e, $11
    ld a, [de]
    or a
    jr z, jr_008_7848

    call $760e
    ld e, $45
    ld a, [de]
    jr nc, jr_008_7834

    rla
    jr nc, jr_008_7848

    jr jr_008_7837

jr_008_7834:
    rla
    jr c, jr_008_7848

jr_008_7837:
    call $7621
    ld e, $3b
    ld a, [de]
    inc a
    ld [de], a
    xor a
    ld e, $11
    ld [de], a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a

jr_008_7848:
    ld e, $12
    ld a, [de]
    or a
    ret z

    call $7615
    ld e, $3c
    ld a, [de]
    jr nc, jr_008_7859

    rla
    ret nc

    jr jr_008_785b

jr_008_7859:
    rla
    ret c

jr_008_785b:
    call $7628
    ld e, $3b
    ld a, [de]
    inc a
    ld [de], a
    xor a
    ld e, $12
    ld [de], a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_008_78d7

    nop
    nop

jr_008_78d7:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld [$0000], sp
    ld [bc], a
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
    add b
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
    ld bc, $0000
    nop
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_008_7b5a

jr_008_7b5a:
    stop
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
    ld bc, $0000
    nop
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
    rst $38
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
    jr nz, jr_008_7bd3

jr_008_7bd3:
    nop
    nop
    nop
    nop
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
    sbc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
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
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    nop
    stop
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
    ld [bc], a
    jr nz, jr_008_7d51

jr_008_7d51:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_008_7e8c

jr_008_7e8c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
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
    inc c
    ld [de], a
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    jr nz, jr_008_7f4e

jr_008_7f4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
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
    ld b, b
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
    db $fd
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
    inc b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    rst $28
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
    cp $ff
    rst $38
    rst $38
    nop
