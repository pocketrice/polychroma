; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    db $0b, $21, $40, $0f, $3c, $00, $10, $45, $1a, $3b, $04, $2c, $57, $0a, $0d, $a7
    db $74, $0e, $07, $25, $40, $f5, $40, $bd, $42

    cp l
    ld b, d
    ld d, b
    ld c, d
    db $dd
    ld c, d

    db $b6, $4b, $0f, $51, $05, $0c, $0f, $50, $00, $03, $40, $40, $42, $0b, $5c, $3a
    db $10, $3c, $11, $37, $40, $0b, $d7, $40, $19, $02, $1e, $19, $01, $0f, $06, $37
    db $40

    call Call_000_359a
    call Call_000_3602
    call Call_002_40c0
    jr nc, jr_002_4053

    ld e, $02
    ld bc, $4025
    call Call_000_0846

jr_002_4053:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_406e

    ld e, $02
    ld bc, $42bd
    jp Jump_000_37f4


jr_002_406e:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_407c

    ld e, $02
    ld bc, $41ed
    jp Jump_000_37f4


jr_002_407c:
    call Call_000_3650
    jr nc, jr_002_4089

    ld e, $02
    ld bc, $4393
    jp Jump_000_37f4


jr_002_4089:
    call Call_002_7663
    jr nc, jr_002_4096

    ld e, $02
    ld bc, $40f5
    jp Jump_000_37f4


jr_002_4096:
    call Call_000_369d
    jr nc, jr_002_40a3

    ld e, $02
    ld bc, $4352
    jp Jump_000_37f4


jr_002_40a3:
    call Call_000_36e6
    jr nc, jr_002_40b0

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_40b0:
    call Call_000_3724
    jr nc, jr_002_40bd

    ld e, $01
    ld bc, $40f9
    jp Jump_000_37f4


jr_002_40bd:
    jp Jump_000_37f7


Call_002_40c0:
    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $3b
    ld a, [de]
    xor b
    rla
    ret nc

    ld a, b
    ld [de], a
    ld a, $07
    ld e, $3c
    ld [de], a
    ld a, $04
    ld e, $15
    ld [de], a
    ret


    db $0d, $e2, $40, $05, $01, $10, $3c, $12, $d7, $40, $0c

    ld e, $3c
    ld a, [de]
    cp $04
    ld a, $04
    jr nc, jr_002_40ec

    dec a

jr_002_40ec:
    ld e, $15
    ld [de], a
    ld e, $3c
    ld a, [de]
    dec a
    ld [de], a
    ret


    db $0f, $50, $01, $03, $33, $41, $42, $0b, $5c, $3a, $10, $3c, $11, $07, $41, $0b
    db $d7, $40, $0d, $3c, $38, $0e, $06, $18, $41, $24, $41, $30, $41

    jr @+$43

    inc h
    ld b, c
    jr nc, @+$43

    db $19, $01, $08, $19, $02, $08, $19, $00, $08, $06, $18, $41, $19, $01, $06, $19
    db $02, $06, $19, $00, $06, $06, $24, $41, $01, $02, $00

    call Call_000_359a
    call Call_002_796d

Jump_002_4139:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_002_76c5
    jr nc, jr_002_4151

    ld e, $02
    ld bc, $4025
    jp Jump_000_37f4


jr_002_4151:
    call Call_002_75a1
    jr nc, jr_002_415e

    ld e, $02
    ld bc, $42bd
    jp Jump_000_37f4


jr_002_415e:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_416c

    ld e, $02
    ld bc, $41ed
    jp Jump_000_37f4


jr_002_416c:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_417b

    ld e, $02
    ld bc, $4025
    jp Jump_000_37f4


jr_002_417b:
    call Call_000_3650
    jr nc, jr_002_4188

    ld e, $02
    ld bc, $4393
    jp Jump_000_37f4


jr_002_4188:
    call Call_000_369d
    jr nc, jr_002_4195

    ld e, $02
    ld bc, $4352
    jp Jump_000_37f4


jr_002_4195:
    call Call_000_373b
    jr nc, jr_002_41a2

    ld e, $02
    ld bc, $41cc
    jp Jump_000_37f4


jr_002_41a2:
    call Call_000_36e6
    jr nc, jr_002_41af

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_41af:
    call Call_000_374e
    jr nc, jr_002_41bc

    ld e, $02
    ld bc, $40f5
    jp Jump_000_37f4


jr_002_41bc:
    call Call_000_3724
    jr nc, jr_002_41c9

    ld e, $01
    ld bc, $40f9
    jp Jump_000_37f4


jr_002_41c9:
    jp Jump_000_37f7


    db $0f, $50, $03, $24, $0d, $03, $e4, $41, $42, $0d, $ff, $37, $10, $45, $1a, $3b
    db $0f, $3c, $07, $01, $04, $06, $ff, $40

    call Call_000_359a
    call Call_002_7968
    jp Jump_002_4139


    db $0f, $50, $04, $03, $2f, $42, $42, $08, $70, $fc, $24, $04, $06, $0a, $42, $03
    db $2f, $42, $42, $06, $0a, $42, $08, $50, $ff, $03, $d8, $42, $42, $10, $3c, $12
    db $1c, $42, $01, $00, $05, $01, $10, $10, $14, $80, $11, $42, $06, $bd, $42, $0d
    db $e2, $40, $05, $01, $10, $10, $13, $80

    cp l
    ld b, d

    db $10, $3c, $12, $1c, $42, $06, $0f, $42

    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_002_4240

    ld e, $02
    ld bc, $4203
    jp Jump_000_37f4


jr_002_4240:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_002_4253

    ld h, d
    ld l, $1f
    ld [hl], $42
    inc l
    ld [hl], $42
    inc l
    ld [hl], $d8

jr_002_4253:
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7ab3
    call Call_002_40c0
    jr nc, jr_002_426b

    ld e, $02
    ld bc, $41fc
    call Call_000_0846

jr_002_426b:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_4286

    ld e, $02
    ld bc, $400a
    jp Jump_000_37f4


jr_002_4286:
    call Call_000_39bc
    jr nc, jr_002_4293

    ld e, $02
    ld bc, $42bd
    jp Jump_000_37f4


jr_002_4293:
    call Call_000_3650
    jr nc, jr_002_42a0

    ld e, $02
    ld bc, $4393
    jp Jump_000_37f4


jr_002_42a0:
    call Call_000_3765
    jr nc, jr_002_42ad

    ld e, $02
    ld bc, $4a41
    jp Jump_000_37f4


jr_002_42ad:
    call Call_000_36e6
    jr nc, jr_002_42ba

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_42ba:
    jp Jump_000_37f7


    db $0f, $50, $05, $03, $d8, $42, $42, $0b, $5c, $3a, $10, $3c, $11, $cf, $42, $0b
    db $d7, $40, $19, $01, $08, $19, $00, $08, $06, $cf, $42

    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7ab3
    call Call_002_40c0
    jr nc, jr_002_42f3

    ld e, $02
    ld bc, $42bd
    call Call_000_0846

jr_002_42f3:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_430e

    ld e, $02
    ld bc, $400a
    jp Jump_000_37f4


jr_002_430e:
    call Call_000_39bc
    jr nc, jr_002_431b

    ld e, $02
    ld bc, $42bd
    jp Jump_000_37f4


jr_002_431b:
    call Call_000_3650
    jr nc, jr_002_4328

    ld e, $02
    ld bc, $4393
    jp Jump_000_37f4


jr_002_4328:
    call Call_000_3765
    jr nc, jr_002_4335

    ld e, $02
    ld bc, $4a41
    jp Jump_000_37f4


jr_002_4335:
    call Call_000_36e6
    jr nc, jr_002_4342

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4342:
    call Call_000_3724
    jr nc, jr_002_434f

    ld e, $01
    ld bc, $40f9
    jp Jump_000_37f4


jr_002_434f:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $05, $03, $6d, $43, $42, $0d, $af, $35, $10, $3c, $11
    db $67, $43

    dec bc
    rst $10
    ld b, b

    db $19, $01, $01, $06, $0a, $40

    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_4390

    ld e, $02
    ld bc, $400a
    jp Jump_000_37f4


jr_002_4390:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0c, $0f, $3c, $00, $0d, $06, $38, $0e, $08, $72, $4c
    db $b1, $43

    or l
    ld b, e
    sbc e
    ld b, h
    ld a, [hl+]
    ld b, [hl]
    dec [hl]
    ld c, d
    add hl, sp
    ld c, d
    dec a
    ld c, d

    db $1b, $c8, $6a, $07

    inc bc
    dec [hl]
    ld b, h
    ld b, d
    rrca
    ld a, [hl-]
    nop
    rrca
    ccf
    nop
    inc b
    push hl
    ld e, c
    ld a, [bc]
    add hl, de
    nop
    ld b, $0f
    ld a, $04
    rrca
    ccf
    ld bc, $0119
    ld b, $24
    ld b, [hl]
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    rrca
    ld a, [hl-]
    ld bc, $3e0f
    ld [bc], a
    add hl, de
    dec b
    inc b
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    inc b
    inc b
    ld b, $dd
    ld b, e
    inc bc
    dec [hl]
    ld b, h
    ld b, d
    rrca
    ld a, [hl-]
    nop
    rrca
    ccf
    nop
    add hl, de
    ld bc, $1906
    nop
    ld b, $0d
    inc de
    ld b, h
    inc b
    inc l
    ld d, a
    ld a, [bc]
    rrca
    inc a
    rlca
    dec bc
    rst $10
    ld b, b
    dec c
    inc e
    ld b, h
    ld [de], a
    cp a
    ld b, e
    dec de
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld e, $45
    ld a, [de]
    cpl
    ld [de], a
    ld e, $3b
    ld [de], a
    ret


    ldh a, [$ffa5]
    and $02
    ld e, $27
    ld [de], a
    ret


    inc bc
    dec [hl]
    ld b, h
    ld b, d
    rrca
    ld a, [hl-]
    nop
    add hl, de
    ld bc, $1906
    nop
    ld b, $1b
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld hl, $7ea8
    ld a, $02
    call Call_000_05cf
    call Call_000_378b
    call Call_000_37a8
    ld e, $3f
    ld a, [de]
    or a
    jr z, jr_002_4461

    ld e, $15
    ld a, [de]
    cp $01
    jr c, jr_002_4461

    ld hl, $4491
    jr z, jr_002_4458

    ld hl, $4496

jr_002_4458:
    ld e, $3e
    ld a, [de]
    call Call_000_3aaa
    call Call_000_3ae4

jr_002_4461:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_002_448e

    ldh a, [$ffa5]
    bit 1, a
    jr nz, jr_002_4475

    ld e, $02
    ld bc, $4424
    jp Jump_000_37f4


jr_002_4475:
    and $30
    jr z, jr_002_448e

    bit 5, a
    ld e, $45
    ld a, [de]
    jr nz, jr_002_448b

    rla
    jr nc, jr_002_448e

jr_002_4483:
    ld e, $02
    ld bc, $43ec
    jp Jump_000_37f4


jr_002_448b:
    rla
    jr nc, jr_002_4483

jr_002_448e:
    jp Jump_000_37f7


    inc bc
    ld a, [bc]
    ld sp, hl
    ld [$030a], sp
    dec bc
    push hl
    add hl, bc
    ld a, [bc]
    rrca
    ld d, b
    db $10
    inc b
    bit 3, d
    ld a, [bc]
    inc h
    ld c, h
    jr @+$0f

    ld [hl], a
    rrca
    ld [bc], a
    inc bc
    jp z, $4244

    add hl, de
    ld a, [bc]
    ld b, $08
    nop
    cp $19
    nop
    inc b
    jr jr_002_44c5

    and a
    ld [hl], h
    ld c, $07
    add a
    ld b, l
    add a
    ld b, l
    and $44
    and $44
    add a

jr_002_44c5:
    ld b, l
    and $44
    and $44
    ld a, $04
    ld [$a05d], a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_3972
    call Call_000_3952
    jp Jump_000_37f7


    inc bc
    db $eb
    ld b, h
    ld b, d
    nop
    ld a, [$a070]
    or a
    ld e, $60
    ld bc, $0400
    jr z, jr_002_44fb

    ld e, $40
    ld bc, $0200

jr_002_44fb:
    call Call_000_0d23
    ld a, [$a070]
    or a
    ld e, $0e
    jr z, jr_002_4508

    ld e, $09

jr_002_4508:
    call Call_000_0d04
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_4557
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_4529

    ld e, $02
    ld bc, $457f
    jp Jump_000_37f4


jr_002_4529:
    call Call_000_3952
    ldh a, [$ffa6]
    and $02
    jr z, jr_002_453a

    ld e, $02
    ld bc, $461f
    jp Jump_000_37f4


jr_002_453a:
    call Call_000_3765
    jr nc, jr_002_4547

    ld e, $02
    ld bc, $4567
    jp Jump_000_37f4


jr_002_4547:
    call Call_000_377c
    jr nc, jr_002_4554

    ld e, $02
    ld bc, $4573
    jp Jump_000_37f4


jr_002_4554:
    jp Jump_000_37f7


Call_002_4557:
    ld a, $02
    ld hl, $4562
    call Call_000_3aaa
    jp Jump_000_3ae4


    inc bc
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    dec c
    ld d, c
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $b7
    ld b, h
    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $b7
    ld b, h
    jr jr_002_458e

    ld [hl], a
    rrca
    ld c, $06
    add a
    ld b, l
    rrca
    ld a, [hl-]
    ld a, b
    inc bc
    adc $45
    ld b, d

jr_002_458e:
    dec b
    inc d
    inc bc
    bit 0, l
    ld b, d
    rra
    sbc d
    ld b, l
    ld b, $94
    ld b, l
    ld e, $4d
    ld a, [de]
    cp $04
    ld a, $08
    jr c, jr_002_45a5

    ld a, $04

jr_002_45a5:
    ld e, $24
    ld [de], a
    ld e, $0e
    ld a, [de]
    ld h, a
    dec e
    ld a, [de]
    or h
    ret z

    ld e, $45
    ld a, [de]
    xor h
    rla
    ld e, $15
    ld a, [de]
    jr c, jr_002_45c2

    inc a
    cp $08
    jr c, jr_002_45c9

    xor a
    jr jr_002_45c9

jr_002_45c2:
    dec a
    cp $08
    jr c, jr_002_45c9

    ld a, $07

jr_002_45c9:
    ld [de], a
    ret


    call Call_002_79fb
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    call nz, Call_002_4557
    call Call_002_7926
    call Call_002_76df
    call Call_002_75a1
    jr nc, jr_002_45f3

    ld e, $02
    ld bc, $44e6
    jp Jump_000_37f4


jr_002_45f3:
    ldh a, [$ffa6]
    and $02
    jr z, jr_002_4601

    ld e, $02
    ld bc, $461f
    jp Jump_000_37f4


jr_002_4601:
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    ld e, $3a
    jr z, jr_002_460f

    ld a, $78
    ld [de], a

jr_002_460f:
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_002_461c

    ld e, $02
    ld bc, $461f
    jp Jump_000_37f4


jr_002_461c:
    jp Jump_000_37f7


    dec c
    ld [hl], a
    rrca
    ld [bc], a
    inc h
    ld c, h
    dec b
    inc b
    ld b, $0a
    ld b, b
    rrca
    ld a, [hl-]
    nop
    rrca
    ld a, h
    nop
    inc b
    ld c, h
    ld e, h
    ld a, [bc]
    inc bc
    ld a, l
    ld b, [hl]
    ld b, d
    inc h
    ccf
    add hl, de
    nop
    ld [$0119], sp
    inc b
    rrca
    ld d, c
    inc c
    dec c
    xor a
    rrca
    ld a, [bc]
    nop
    nop
    inc b
    ld c, h
    ld e, h
    ld a, [bc]
    dec c
    and a
    ld [hl], h
    ld c, $07
    adc [hl]
    ld b, [hl]
    xor $46
    inc e
    ld c, b
    inc e
    ld c, b
    adc $48
    jr nz, @+$4b

    or d
    ld c, c
    rrca
    ld d, c
    dec b
    db $10
    ld a, [hl-]
    ld de, $466c
    dec de
    ld b, $52
    ld bc, $4c04
    ld e, h
    ld a, [bc]
    inc bc
    ld a, l
    ld b, [hl]
    ld b, d
    add hl, de
    ld bc, $1904
    nop
    ld [$0a06], sp
    ld b, b
    call Call_002_7ea8
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


Call_002_4689:
    ld e, $7c
    ld a, [de]
    rra
    ret


    rrca
    ld d, b
    nop
    inc bc
    sbc e
    ld b, [hl]
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    ld bc, $0002
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_46b6

    ld e, $02
    ld bc, $481c
    jp Jump_000_37f4


jr_002_46b6:
    call Call_002_4689
    jr nc, jr_002_46c3

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_46c3:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_46d1

    ld e, $02
    ld bc, $478a
    jp Jump_000_37f4


jr_002_46d1:
    call Call_002_7663
    jr nc, jr_002_46de

    ld e, $02
    ld bc, $46ee
    jp Jump_000_37f4


jr_002_46de:
    call Call_000_369d
    jr nc, jr_002_46eb

    ld e, $02
    ld bc, $487f
    jp Jump_000_37f4


jr_002_46eb:
    jp Jump_000_37f7


    rrca
    ld d, b
    ld bc, $1b03
    ld b, a
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    dec c
    inc a
    jr c, jr_002_470a

    ld b, $09
    ld b, a
    add hl, bc
    ld b, a
    add hl, bc
    ld b, a
    add hl, bc
    ld b, a
    add hl, bc
    ld b, a
    add hl, bc
    ld b, a
    add hl, de

jr_002_470a:
    ld [bc], a
    ld [$0d19], sp
    ld [$0906], sp
    ld b, a
    add hl, de
    ld [bc], a
    dec b
    add hl, de
    dec c
    dec b
    ld b, $12
    ld b, a
    call Call_002_799d
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_002_76c5
    jr nc, jr_002_4736

    ld e, $02
    ld bc, $468e
    jp Jump_000_37f4


jr_002_4736:
    call Call_002_75a1
    jr nc, jr_002_4743

    ld e, $02
    ld bc, $481c
    jp Jump_000_37f4


jr_002_4743:
    call Call_002_4689
    jr nc, jr_002_4750

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_4750:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_475e

    ld e, $02
    ld bc, $478a
    jp Jump_000_37f4


jr_002_475e:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_476d

    ld e, $02
    ld bc, $468e
    jp Jump_000_37f4


jr_002_476d:
    call Call_000_369d
    jr nc, jr_002_477a

    ld e, $02
    ld bc, $487f
    jp Jump_000_37f4


jr_002_477a:
    call Call_000_374e
    jr nc, jr_002_4787

    ld e, $02
    ld bc, $46ee
    jp Jump_000_37f4


jr_002_4787:
    jp Jump_000_37f7


    rrca
    ld d, b
    inc b
    inc bc
    xor e
    ld b, a
    ld b, d
    ld [$fc70], sp
    ld b, $9e
    ld b, a
    ld [$ff50], sp
    inc bc
    cpl
    ld c, b
    ld b, d
    ld bc, $050d
    ld bc, $1010
    inc d
    add b
    and b
    ld b, a
    ld b, $1c
    ld c, b
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_002_47b9

    ld e, $02
    ld bc, $4797
    jp Jump_000_37f4


jr_002_47b9:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_002_47cc

    ld h, d
    ld l, $1f
    ld [hl], $42
    inc l
    ld [hl], $48
    inc l
    ld [hl], $2f

jr_002_47cc:
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7abc
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_47f2

    ld e, $02
    ld bc, $4649
    jp Jump_000_37f4


jr_002_47f2:
    call Call_000_39bc
    jr nc, jr_002_47ff

    ld e, $02
    ld bc, $481c
    jp Jump_000_37f4


jr_002_47ff:
    call Call_002_4689
    jr nc, jr_002_480c

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_480c:
    call Call_000_3765
    jr nc, jr_002_4819

    ld e, $02
    ld bc, $48c2
    jp Jump_000_37f4


jr_002_4819:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    inc bc
    cpl
    ld c, b
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    add hl, de
    ld [bc], a
    ld [$0d19], sp
    ld [$2606], sp
    ld c, b
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7abc
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_4855

    ld e, $02
    ld bc, $4649
    jp Jump_000_37f4


jr_002_4855:
    call Call_000_39bc
    jr nc, jr_002_4862

    ld e, $02
    ld bc, $481c
    jp Jump_000_37f4


jr_002_4862:
    call Call_002_4689
    jr nc, jr_002_486f

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_486f:
    call Call_000_3765
    jr nc, jr_002_487c

    ld e, $02
    ld bc, $48c2
    jp Jump_000_37f4


jr_002_487c:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    inc bc
    adc a
    ld c, b
    ld b, d
    dec c
    xor a
    dec [hl]
    add hl, de
    ld [bc], a
    ld bc, $4906
    ld b, [hl]
    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_48b2

    ld e, $02
    ld bc, $4649
    jp Jump_000_37f4


jr_002_48b2:
    call Call_002_4689
    jr nc, jr_002_48bf

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_48bf:
    jp Jump_000_37f7


    dec c
    ld c, b
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $49
    ld b, [hl]
    rrca
    ld d, b
    nop
    inc bc
    db $db
    ld c, b
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    ld bc, $0002
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_48f6

    ld e, $02
    ld bc, $49b2
    jp Jump_000_37f4


jr_002_48f6:
    call Call_002_4689
    jr nc, jr_002_4903

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_4903:
    call Call_000_37bd
    jr nc, jr_002_4910

    ld e, $02
    ld bc, $49b2
    jp Jump_000_37f4


jr_002_4910:
    call Call_002_7663
    jr nc, jr_002_491d

    ld e, $02
    ld bc, $4920
    jp Jump_000_37f4


jr_002_491d:
    jp Jump_000_37f7


    rrca
    ld d, b
    ld bc, $4403
    ld c, c
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    dec c
    inc a
    jr c, jr_002_493c

    ld b, $3b
    ld c, c
    dec sp
    ld c, c
    dec sp
    ld c, c
    dec sp
    ld c, c
    dec sp
    ld c, c
    dec sp
    ld c, c
    add hl, de

jr_002_493c:
    ld [bc], a
    ld [$0d19], sp
    ld [$3b06], sp
    ld c, c
    call Call_002_7afd
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_002_76c5
    jr nc, jr_002_495f

    ld e, $02
    ld bc, $48ce
    jp Jump_000_37f4


jr_002_495f:
    call Call_002_75a1
    jr nc, jr_002_496c

    ld e, $02
    ld bc, $49b2
    jp Jump_000_37f4


jr_002_496c:
    call Call_002_4689
    jr nc, jr_002_4979

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_4979:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_4988

    ld e, $02
    ld bc, $48ce
    jp Jump_000_37f4


jr_002_4988:
    call Call_000_37bd
    jr nc, jr_002_4995

    ld e, $02
    ld bc, $49b2
    jp Jump_000_37f4


jr_002_4995:
    call Call_000_374e
    jr nc, jr_002_49a2

    ld e, $02
    ld bc, $4920
    jp Jump_000_37f4


jr_002_49a2:
    call Call_000_377c
    jr nc, jr_002_49af

    ld e, $02
    ld bc, $4a29
    jp Jump_000_37f4


jr_002_49af:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc bc
    db $db
    ld c, c
    ld b, d
    db $10
    ld l, a
    ld c, $03
    add $49
    ret c

    ld c, c
    rst $08
    ld c, c
    add hl, de
    ld [bc], a
    ld a, [bc]
    add hl, de
    dec c
    ld a, [bc]
    ld b, $c6
    ld c, c
    add hl, de
    ld [bc], a
    ld b, $19
    dec c
    ld b, $06
    rst $08
    ld c, c
    ld bc, $0002
    call Call_002_7b81
    call Call_002_7bb6
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_49fc

    ld e, $02
    ld bc, $4649
    jp Jump_000_37f4


jr_002_49fc:
    call Call_000_393e
    call Call_002_4689
    jr nc, jr_002_4a0c

    ld e, $02
    ld bc, $4660
    jp Jump_000_37f4


jr_002_4a0c:
    call Call_000_37cb
    jr nc, jr_002_4a19

    ld e, $02
    ld bc, $49b2
    jp Jump_000_37f4


jr_002_4a19:
    call Call_000_377c
    jr nc, jr_002_4a26

    ld e, $02
    ld bc, $4a29
    jp Jump_000_37f4


jr_002_4a26:
    jp Jump_000_37f7


    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$8a06], sp
    ld b, a
    dec de
    jr nc, jr_002_4aa3

    rlca
    dec de
    sbc c
    ld l, e
    rlca
    dec de
    reti


    ld l, e
    rlca

    db $0b, $21, $40, $0d, $48, $3a, $0d, $92, $0f, $07, $00, $00, $06, $0a, $40

    rrca
    ld d, b
    nop
    inc bc
    ld l, e
    ld c, d
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    db $10
    inc a
    ld de, $4a62
    dec bc
    rst $10
    ld b, b
    add hl, de
    ld [bc], a
    inc a
    add hl, de
    ld bc, $061e
    ld h, d
    ld c, d
    call Call_000_359a
    call Call_000_3602
    call Call_002_40c0
    jr nc, jr_002_4a7e

    ld e, $02
    ld bc, $4a50
    call Call_000_0846

jr_002_4a7e:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_4a99

    ld e, $02
    ld bc, $4bb6
    jp Jump_000_37f4


jr_002_4a99:
    call Call_000_37bd
    jr nc, jr_002_4aa6

    ld e, $02
    ld bc, $4bb6

jr_002_4aa3:
    jp Jump_000_37f4


jr_002_4aa6:
    call Call_000_3650
    jr nc, jr_002_4ab3

    ld e, $02
    ld bc, $4393
    jp Jump_000_37f4


jr_002_4ab3:
    call Call_002_7663
    jr nc, jr_002_4ac0

    ld e, $02
    ld bc, $4add
    jp Jump_000_37f4


jr_002_4ac0:
    call Call_000_36e6
    jr nc, jr_002_4acd

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4acd:
    call Call_000_3724
    jr nc, jr_002_4ada

    ld e, $01
    ld bc, $40f9
    jp Jump_000_37f4


jr_002_4ada:
    jp Jump_000_37f7


    rrca
    ld d, b
    ld bc, $1b03
    ld c, e
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    db $10
    inc a
    ld de, $4aef
    dec bc
    rst $10
    ld b, b
    dec c
    inc a
    jr c, jr_002_4b01

    ld b, $00
    ld c, e
    inc c
    ld c, e
    jr @+$4d

    nop
    ld c, e
    inc c
    ld c, e
    jr @+$4d

    add hl, de

jr_002_4b01:
    ld bc, $1908
    ld [bc], a
    ld [$0019], sp
    ld [$0006], sp
    ld c, e
    add hl, de
    ld bc, $1906
    ld [bc], a
    ld b, $19
    nop
    ld b, $06
    inc c
    ld c, e
    ld bc, $0002
    call Call_000_359a
    call Call_000_3602
    call Call_002_40c0
    jr nc, jr_002_4b2e

    ld e, $02
    ld bc, $4add
    call Call_000_0846

jr_002_4b2e:
    call Call_002_7ad3
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_002_76c5
    jr nc, jr_002_4b49

    ld e, $02
    ld bc, $4a50
    jp Jump_000_37f4


jr_002_4b49:
    call Call_002_75a1
    jr nc, jr_002_4b56

    ld e, $02
    ld bc, $4bb6
    jp Jump_000_37f4


jr_002_4b56:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_4b65

    ld e, $02
    ld bc, $4a50
    jp Jump_000_37f4


jr_002_4b65:
    call Call_000_37bd
    jr nc, jr_002_4b72

    ld e, $02
    ld bc, $4bb6
    jp Jump_000_37f4


jr_002_4b72:
    call Call_000_3650
    jr nc, jr_002_4b7f

    ld e, $02
    ld bc, $4393
    jp Jump_000_37f4


jr_002_4b7f:
    call Call_000_36e6
    jr nc, jr_002_4b8c

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4b8c:
    call Call_000_374e
    jr nc, jr_002_4b99

    ld e, $02
    ld bc, $4add
    jp Jump_000_37f4


jr_002_4b99:
    call Call_000_3724
    jr nc, jr_002_4ba6

    ld e, $01
    ld bc, $40f9
    jp Jump_000_37f4


jr_002_4ba6:
    call Call_000_377c
    jr nc, jr_002_4bb3

    ld e, $02
    ld bc, $4c62
    jp Jump_000_37f4


jr_002_4bb3:
    jp Jump_000_37f7


    db $0f, $50, $05, $0f, $52, $00, $03, $ea, $4b, $42, $10, $3c, $11, $c8, $4b

    dec bc
    rst $10
    ld b, b

    db $10, $6f, $0e, $03, $d2, $4b

    rst $20
    ld c, e

    db $db, $4b, $19, $01, $0a

    add hl, de
    nop
    ld a, [bc]
    ld b, $d2
    ld c, e

    db $19, $01, $06, $19, $02, $06, $19, $00, $06, $06, $db, $4b

    ld bc, $0002

    call Call_000_359a
    call Call_002_7b55
    call Call_002_7bad
    call Call_002_40c0
    jr nc, jr_002_4c00

    ld e, $02
    ld bc, $4bb6
    call Call_000_0846

jr_002_4c00:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_4c1b

    ld e, $02
    ld bc, $400a
    jp Jump_000_37f4


jr_002_4c1b:
    call Call_000_393e
    call Call_000_3650
    jr nc, jr_002_4c2b

    ld e, $02
    ld bc, $4393
    jp Jump_000_37f4


jr_002_4c2b:
    call Call_000_37cb
    jr nc, jr_002_4c38

    ld e, $02
    ld bc, $4bb6
    jp Jump_000_37f4


jr_002_4c38:
    call Call_000_377c
    jr nc, jr_002_4c45

    ld e, $02
    ld bc, $4c62
    jp Jump_000_37f4


jr_002_4c45:
    call Call_000_36e6
    jr nc, jr_002_4c52

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4c52:
    call Call_000_3724
    jr nc, jr_002_4c5f

    ld e, $01
    ld bc, $40f9
    jp Jump_000_37f4


jr_002_4c5f:
    jp Jump_000_37f7


    db $0d, $57, $3a, $04, $2c, $57, $0a, $0d, $92, $0f, $07, $00, $08, $06, $ed, $41
    db $10, $70, $12

    sub e
    ld d, d

    db $0f, $3c, $00, $0f, $50, $09, $0d, $9c, $4c, $0f, $80, $ff, $0f, $81, $0c, $03
    db $a5, $4c, $42, $0f, $39, $1e, $0f, $3d, $01, $24, $01, $04, $e9, $57, $0a, $19
    db $00, $08, $01, $01, $00

    ld hl, $72be
    ld a, $01
    call Call_000_05cf
    ret


    call Call_002_7ea8
    ld a, [$a056]
    or a
    jr z, jr_002_4cbc

    ld a, [$a055]
    or a
    jr nz, jr_002_4cbc

    ld e, $02
    ld bc, $4d2c
    jp Jump_000_37f4


jr_002_4cbc:
    ld h, d
    ld l, $39
    ld a, [hl]
    or a
    jr z, jr_002_4cc6

    dec [hl]
    jr jr_002_4ce0

jr_002_4cc6:
    ldh a, [$ffa5]
    bit 1, a
    jr nz, jr_002_4ce0

    ld a, [$a056]
    or a
    jr nz, jr_002_4ce0

    ld a, [$a055]
    or a
    jr nz, jr_002_4ce0

    ld e, $02
    ld bc, $4d0d
    jp Jump_000_37f4


jr_002_4ce0:
    call Call_000_3a24
    jr nc, jr_002_4ced

    ld e, $02
    ld bc, $4a41
    jp Jump_000_37f4


jr_002_4ced:
    ld e, $3d
    ld a, [de]
    or a
    jr z, jr_002_4cf7

    dec a
    ld [de], a
    jr jr_002_4cff

jr_002_4cf7:
    ld hl, $7348
    ld a, $01
    call Call_000_05cf

jr_002_4cff:
    ld hl, $4d08
    call Call_000_3aaa
    jp Jump_000_37f7


    db $00, $16, $ff, $16, $14, $24, $ff, $03, $19, $4d, $42, $19, $00, $08, $06, $00
    db $40

    call Call_002_7ea8
    call Call_000_3765
    jr nc, jr_002_4d29

    ld e, $02
    ld bc, $4a41
    jp Jump_000_37f4


jr_002_4d29:
    jp Jump_000_37f7


    db $24, $02, $03, $44, $4d, $42, $19, $02, $03, $19, $01, $02, $19, $03, $02, $19
    db $05, $02, $19, $03, $02, $06, $73, $4d

    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_796d
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_3972
    call Call_000_3952
    call Call_000_3765
    jr nc, jr_002_4d70

    ld e, $02
    ld bc, $51c0
    jp Jump_000_37f4


jr_002_4d70:
    jp Jump_000_37f7


    db $0b, $8d, $4d, $04, $e9, $57, $0a, $0d, $a7, $74, $0e, $07, $91, $4d, $0c, $4e
    db $8a, $4f

    adc d
    ld c, a
    db $fd
    ld c, a
    ld a, b
    ld d, b
    jr c, @+$53

    db $0f, $51, $09, $0c, $0f, $50, $00, $03, $a4, $4d, $42, $0b, $5c, $3a, $19, $03
    db $0c, $19, $04, $08, $06, $9b, $4d

    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_4dc5

    ld e, $02
    ld bc, $4f8a
    jp Jump_000_37f4


jr_002_4dc5:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_4dd3

    ld e, $02
    ld bc, $4ee2
    jp Jump_000_37f4


jr_002_4dd3:
    call Call_002_7663
    jr nc, jr_002_4de0

    ld e, $02
    ld bc, $4e0c
    jp Jump_000_37f4


jr_002_4de0:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_4dee

    ld e, $02
    ld bc, $51db
    jp Jump_000_37f4


jr_002_4dee:
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_4dfc

    ld e, $02
    ld bc, $5220
    jp Jump_000_37f4


jr_002_4dfc:
    call Call_000_36e6
    jr nc, jr_002_4e09

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4e09:
    jp Jump_000_37f7


    db $0f, $50, $01, $03, $3c, $4e, $42, $0b, $5c, $3a, $0d, $3c, $38, $0e, $06, $27
    db $4e, $30, $4e, $39, $4e

    daa
    ld c, [hl]
    jr nc, @+$50

    add hl, sp
    ld c, [hl]

    db $19, $03, $0a, $19, $04, $06, $06, $27, $4e, $19, $03, $08

    add hl, de
    inc b
    inc b
    ld b, $30
    ld c, [hl]

    db $01, $03, $00

    call Call_000_359a
    call Call_002_796d

Jump_002_4e42:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_002_76c5
    jr nc, jr_002_4e5a

    ld e, $02
    ld bc, $4d91
    jp Jump_000_37f4


jr_002_4e5a:
    call Call_002_75a1
    jr nc, jr_002_4e67

    ld e, $02
    ld bc, $4f8a
    jp Jump_000_37f4


jr_002_4e67:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_4e75

    ld e, $02
    ld bc, $4ee2
    jp Jump_000_37f4


jr_002_4e75:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_4e84

    ld e, $02
    ld bc, $4d91
    jp Jump_000_37f4


jr_002_4e84:
    call Call_000_373b
    jr nc, jr_002_4e91

    ld e, $02
    ld bc, $4eca
    jp Jump_000_37f4


jr_002_4e91:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_4e9f

    ld e, $02
    ld bc, $51db
    jp Jump_000_37f4


jr_002_4e9f:
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_4ead

    ld e, $02
    ld bc, $5220
    jp Jump_000_37f4


jr_002_4ead:
    call Call_000_36e6
    jr nc, jr_002_4eba

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4eba:
    call Call_000_374e
    jr nc, jr_002_4ec7

    ld e, $02
    ld bc, $4e0c
    jp Jump_000_37f4


jr_002_4ec7:
    jp Jump_000_37f7


    rrca
    ld d, b
    inc bc
    inc h
    dec c
    inc bc
    reti


    ld c, [hl]
    ld b, d
    dec c
    rst $38
    scf
    ld b, $16
    ld c, [hl]
    call Call_000_359a
    call Call_002_7968
    jp Jump_002_4e42


    db $0f, $50, $04, $03, $05, $4f, $42, $08, $70, $fc, $24, $04, $06, $f8, $4e, $08
    db $50, $ff, $03, $29, $4f, $42, $01, $04, $05, $01, $10, $10, $14, $80, $fa, $4e
    db $06, $8a, $4f

    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_002_4f16

    ld e, $02
    ld bc, $4ef1
    jp Jump_000_37f4


jr_002_4f16:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_002_4f29

    ld h, d
    ld l, $1f
    ld [hl], $42
    inc l
    ld [hl], $4f
    inc l
    ld [hl], $9c

jr_002_4f29:
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7ab3
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_4f52

    ld e, $02
    ld bc, $4d76
    jp Jump_000_37f4


jr_002_4f52:
    call Call_000_39bc
    jr nc, jr_002_4f5f

    ld e, $02
    ld bc, $4f8a
    jp Jump_000_37f4


jr_002_4f5f:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_4f6d

    ld e, $02
    ld bc, $51db
    jp Jump_000_37f4


jr_002_4f6d:
    call Call_000_3765
    jr nc, jr_002_4f7a

    ld e, $02
    ld bc, $51c0
    jp Jump_000_37f4


jr_002_4f7a:
    call Call_000_36e6
    jr nc, jr_002_4f87

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4f87:
    jp Jump_000_37f7


    db $0f, $50, $05, $03, $9c, $4f, $42, $0b, $5c, $3a, $01, $03, $19, $04, $08, $06
    db $94, $4f

    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7ab3
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_4fc5

    ld e, $02
    ld bc, $4d76
    jp Jump_000_37f4


jr_002_4fc5:
    call Call_000_39bc
    jr nc, jr_002_4fd2

    ld e, $02
    ld bc, $4f8a
    jp Jump_000_37f4


jr_002_4fd2:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_4fe0

    ld e, $02
    ld bc, $51db
    jp Jump_000_37f4


jr_002_4fe0:
    call Call_000_3765
    jr nc, jr_002_4fed

    ld e, $02
    ld bc, $51c0
    jp Jump_000_37f4


jr_002_4fed:
    call Call_000_36e6
    jr nc, jr_002_4ffa

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_4ffa:
    jp Jump_000_37f7


    rrca
    ld d, b
    nop
    inc bc
    ld de, $4250
    dec bc
    ld e, h
    ld a, [hl-]
    add hl, de
    inc bc
    db $10
    add hl, de
    inc b
    inc c
    ld b, $07
    ld d, b
    nop
    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_5032

    ld e, $02
    ld bc, $5138
    jp Jump_000_37f4


jr_002_5032:
    call Call_000_37bd
    jr nc, jr_002_503f

    ld e, $02
    ld bc, $5138
    jp Jump_000_37f4


jr_002_503f:
    call Call_002_7663
    jr nc, jr_002_504c

    ld e, $02
    ld bc, $5078
    jp Jump_000_37f4


jr_002_504c:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_505a

    ld e, $02
    ld bc, $51db
    jp Jump_000_37f4


jr_002_505a:
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_5068

    ld e, $02
    ld bc, $5220
    jp Jump_000_37f4


jr_002_5068:
    call Call_000_36e6
    jr nc, jr_002_5075

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_5075:
    jp Jump_000_37f7


    rrca
    ld d, b
    ld bc, $a803
    ld d, b
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    dec c
    inc a
    jr c, jr_002_5094

    ld b, $93
    ld d, b
    sbc h
    ld d, b
    and l
    ld d, b
    sub e
    ld d, b
    sbc h
    ld d, b
    and l
    ld d, b
    add hl, de

jr_002_5094:
    inc bc
    ld a, [bc]
    add hl, de
    inc b
    ld b, $06
    sub e
    ld d, b
    add hl, de
    inc bc
    ld [$0419], sp
    inc b
    ld b, $9c
    ld d, b
    ld bc, $0003
    call Call_000_359a
    call Call_000_3602
    call Call_002_7ad3
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_002_76c5
    jr nc, jr_002_50c9

    ld e, $02
    ld bc, $4ffd
    jp Jump_000_37f4


jr_002_50c9:
    call Call_002_75a1
    jr nc, jr_002_50d6

    ld e, $02
    ld bc, $5138
    jp Jump_000_37f4


jr_002_50d6:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_50e5

    ld e, $02
    ld bc, $4ffd
    jp Jump_000_37f4


jr_002_50e5:
    call Call_000_37bd
    jr nc, jr_002_50f2

    ld e, $02
    ld bc, $5138
    jp Jump_000_37f4


jr_002_50f2:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_5100

    ld e, $02
    ld bc, $51db
    jp Jump_000_37f4


jr_002_5100:
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_510e

    ld e, $02
    ld bc, $5220
    jp Jump_000_37f4


jr_002_510e:
    call Call_000_36e6
    jr nc, jr_002_511b

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_511b:
    call Call_000_374e
    jr nc, jr_002_5128

    ld e, $02
    ld bc, $5078
    jp Jump_000_37f4


jr_002_5128:
    call Call_000_377c
    jr nc, jr_002_5135

    ld e, $02
    ld bc, $51cf
    jp Jump_000_37f4


jr_002_5135:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc bc
    ld h, c
    ld d, c
    ld b, d
    db $10
    ld l, a
    ld c, $03
    ld c, h
    ld d, c
    ld e, [hl]
    ld d, c
    ld d, l
    ld d, c
    add hl, de
    inc bc
    inc c
    add hl, de
    inc b
    ld [$4c06], sp
    ld d, c
    add hl, de
    inc bc
    ld a, [bc]
    add hl, de
    inc b
    ld b, $06
    ld d, l
    ld d, c
    ld bc, $0003
    call Call_000_359a
    call Call_002_7b55
    call Call_002_7bad
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5185

    ld e, $02
    ld bc, $4d76
    jp Jump_000_37f4


jr_002_5185:
    call Call_000_393e
    call Call_000_37cb
    jr nc, jr_002_5195

    ld e, $02
    ld bc, $5138
    jp Jump_000_37f4


jr_002_5195:
    call Call_000_377c
    jr nc, jr_002_51a2

    ld e, $02
    ld bc, $51cf
    jp Jump_000_37f4


jr_002_51a2:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_51b0

    ld e, $02
    ld bc, $51db
    jp Jump_000_37f4


jr_002_51b0:
    call Call_000_36e6
    jr nc, jr_002_51bd

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_51bd:
    jp Jump_000_37f7


    dec bc
    adc l
    ld c, l
    dec c
    ld c, b
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $76
    ld c, l
    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$e206], sp
    ld c, [hl]

    db $0d, $a2, $35, $0f, $51, $05, $0f, $50, $0a, $03, $0d, $52, $42, $0f, $58, $ff
    db $0d, $18, $3a, $12, $fc, $51, $0d, $af, $0f, $01, $08, $ff, $24, $1b, $06, $04
    db $52, $0d, $af, $0f, $06, $08, $ff, $24, $32, $19, $01, $0c, $19, $00, $0c, $06
    db $00, $40

    call Call_002_7ea8
    call Call_000_3765
    jr nc, jr_002_521d

    ld e, $02
    ld bc, $4a41
    jp Jump_000_37f4


jr_002_521d:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    dec bc
    inc bc
    adc c
    ld d, d
    ld b, d
    dec c
    ldh a, [$ff39]
    ld c, $03
    dec [hl]
    ld d, d
    ld c, a
    ld d, d
    ld c, a
    ld d, d
    rrca
    ld e, b
    rst $38
    rrca
    ld e, e
    rst $38
    rrca
    ld e, h
    nop
    rrca
    ld d, c
    dec b
    inc h
    inc bc
    add hl, de
    ld b, $04
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld b, $0a
    ld b, $00
    ld b, b
    inc h
    add hl, hl
    dec c
    rlca
    ld a, [hl-]
    add hl, de
    ld b, $04
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld b, $0a
    inc b
    inc l
    ld d, a
    ld a, [bc]
    ld bc, $1802
    dec c
    ld b, d
    inc a
    dec c
    ld h, a
    db $10
    dec c
    ld a, a
    dec [hl]
    inc bc
    adc a
    ld d, d
    ld b, d
    dec c
    ld [hl], a
    rrca
    ld bc, $0219
    ld [$0105], sp
    db $10
    ld h, h
    ld [de], a
    ld a, b
    ld d, d
    inc e
    rst $10
    ld l, [hl]
    rlca
    dec c
    add b
    db $10
    ld b, $00
    ld b, b
    call Call_002_7ea8
    jp Jump_000_37f7


    call Call_000_34fd
    ret


    rrca
    ld d, b
    inc c
    inc bc
    ldh a, [rHDMA2]
    ld b, d
    inc b
    jp hl


    ld d, a
    ld a, [bc]
    add hl, de
    nop
    ld b, $24
    dec d
    inc bc
    ret nz

    ld d, d
    ld b, d
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    add hl, de
    ld a, [bc]
    inc b
    ld b, $a7
    ld d, d
    inc bc
    ldh a, [rHDMA2]
    ld b, d
    add hl, de
    nop
    ld b, $06
    ld a, [bc]
    ld b, b
    call Call_002_7ea8
    ld a, $02
    ld hl, $52eb
    call Call_000_3aaa
    call Call_000_3ae9
    call Call_000_375b
    jr nc, jr_002_52db

    ld e, $02
    ld bc, $52b6
    jp Jump_000_37f4


jr_002_52db:
    call Call_000_377c
    jr nc, jr_002_52e8

    ld e, $02
    ld bc, $4c62
    jp Jump_000_37f4


jr_002_52e8:
    jp Jump_000_37f7


    inc bc
    rrca
    inc bc
    add hl, bc
    ld b, $cd
    xor b
    ld a, [hl]
    call Call_000_377c
    jr nc, jr_002_5300

    ld e, $02
    ld bc, $4c62
    jp Jump_000_37f4


jr_002_5300:
    jp Jump_000_37f7


    db $0b, $27, $53, $0f, $3c, $00, $10, $45, $1a, $3b, $0f, $40, $00, $04, $99, $5e
    db $0a, $0d, $a7, $74, $0e, $07, $2b, $53, $2f, $54, $b7, $56

    or a
    ld d, [hl]

    db $c8, $60

    ret z

    ld h, b

    db $c8, $60, $0f, $51, $06, $0c, $0f, $50, $00, $03, $46, $53, $42, $0b, $5c, $3a
    db $10, $3c, $11, $3d, $53, $0b, $fb, $53, $19, $08, $32, $19, $09, $14, $06, $3d
    db $53

    call Call_000_359a
    call Call_000_3602
    ld c, $00
    call Call_002_53d3
    jr nc, jr_002_535b

    ld e, $02
    ld bc, $532b
    call Call_000_0846

jr_002_535b:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_5376

    ld e, $02
    ld bc, $56b7
    jp Jump_000_37f4


jr_002_5376:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_5384

    ld e, $02
    ld bc, $55da
    jp Jump_000_37f4


jr_002_5384:
    call Call_002_7663
    jr nc, jr_002_5391

    ld e, $02
    ld bc, $542f
    jp Jump_000_37f4


jr_002_5391:
    call Call_000_369d
    jr nc, jr_002_539e

    ld e, $02
    ld bc, $5759
    jp Jump_000_37f4


jr_002_539e:
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_002_53a9

    call Call_002_602d
    jr jr_002_53d0

jr_002_53a9:
    call Call_000_3650
    jr nc, jr_002_53b6

    ld e, $02
    ld bc, $57a3
    jp Jump_000_37f4


jr_002_53b6:
    call Call_000_36e6
    jr nc, jr_002_53c3

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_53c3:
    call Call_000_3724
    jr nc, jr_002_53d0

    ld e, $01
    ld bc, $410c
    jp Jump_000_37f4


jr_002_53d0:
    jp Jump_000_37f7


Call_002_53d3:
    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $3b
    ld a, [de]
    xor b
    rla
    ret nc

    ld a, b
    ld [de], a
    bit 0, c
    ld a, $0f
    jr z, jr_002_53e7

    ld a, $07

jr_002_53e7:
    ld e, $3c
    ld [de], a
    ld a, $04
    ld e, $15
    ld [de], a
    ret


    db $0d, $0d, $54, $05, $01, $10, $3c, $12, $f0, $53, $0c, $0d, $06, $54, $05, $01
    db $10, $3c, $12, $fb, $53, $0c

    ld e, $3c
    ld a, [de]
    cp $08
    jr jr_002_5412

    ld e, $3c
    ld a, [de]
    cp $04

jr_002_5412:
    ld a, $04
    jr nc, jr_002_5417

    dec a

jr_002_5417:
    ld e, $15
    ld [de], a
    ld e, $3c
    ld a, [de]
    dec a
    ld [de], a
    ret


    dec c
    rst $38
    scf
    db $10
    ld b, l
    ld a, [de]
    dec sp
    rrca
    inc a
    rrca
    ld bc, $0604
    add hl, sp
    ld d, h

    db $0f, $50, $01, $03, $3e, $55, $42, $0b, $5c, $3a, $10, $3c, $11, $41, $54, $0b
    db $fb, $53, $0d, $3c, $38, $0e, $06, $52, $54, $74, $54, $96, $54

    cp b
    ld d, h
    jp c, $fc54

    ld d, h

    db $01, $09, $0d, $1c, $38, $12, $65, $54, $0d, $1e, $55, $12

    jr nz, jr_002_54b4

    db $05, $01, $06, $54, $54, $26, $60, $01, $19, $07, $07, $19, $08, $06, $19, $09
    db $07, $06, $54, $54, $01, $09, $0d, $1c, $38, $12, $87, $54

    dec c
    ld e, $55
    ld [de], a
    jr nz, jr_002_54d6

    dec b
    ld bc, $7606
    ld d, h

    db $26, $b0, $00, $19, $07, $04, $19, $08, $04, $19, $09, $04, $06, $76, $54, $01
    db $09, $0d, $1c, $38, $12, $a9, $54

    dec b
    ld bc, $1e0d
    ld d, l
    ld [de], a
    jr nz, @+$56

    ld b, $98
    ld d, h

    db $26, $f0, $01, $19, $07, $09, $19, $08, $07

    add hl, de
    add hl, bc

jr_002_54b4:
    add hl, bc
    ld b, $98
    ld d, h
    ld bc, $0d09
    inc e
    jr c, jr_002_54d0

    bit 2, h
    dec c
    ld e, $55
    ld [de], a
    jr nz, jr_002_551a

    dec b
    ld bc, $ba06
    ld d, h
    ld h, $20
    ld bc, $0719

jr_002_54d0:
    rlca
    add hl, de
    ld [$1906], sp
    add hl, bc

jr_002_54d6:
    rlca
    ld b, $ba
    ld d, h
    ld bc, $0d09
    inc e
    jr c, jr_002_54f2

    db $ed
    ld d, h
    dec c
    ld e, $55
    ld [de], a
    jr nz, jr_002_553c

    dec b
    ld bc, $dc06
    ld d, h
    ld h, $80
    nop
    add hl, de
    rlca

jr_002_54f2:
    inc b
    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    ld b, $dc
    ld d, h
    ld bc, $0d09
    inc e
    jr c, jr_002_5514

    rrca
    ld d, l
    dec c
    ld e, $55
    ld [de], a
    jr nz, @+$56

    dec b
    ld bc, $fe06
    ld d, h
    ld h, $c0
    ld bc, $0719

jr_002_5514:
    add hl, bc
    add hl, de
    ld [$1907], sp
    add hl, bc

jr_002_551a:
    add hl, bc
    ld b, $fe
    ld d, h

    call Call_002_5528
    ld a, $00
    rla
    ld e, $27
    ld [de], a
    ret


Call_002_5528:
    ld e, $45
    ld a, [de]
    rla
    ldh a, [$ffa5]
    jr nc, jr_002_5536

    bit 4, a
    jr nz, jr_002_553c

    jr jr_002_553a

jr_002_5536:
    bit 5, a
    jr nz, jr_002_553c

jr_002_553a:
    and a
    ret


jr_002_553c:
    scf
    ret


    call Call_000_359a
    call Call_002_7bcd
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_002_76c5
    jr nc, jr_002_555c

    ld e, $02
    ld bc, $532b
    jp Jump_000_37f4


jr_002_555c:
    call Call_002_75a1
    jr nc, jr_002_5569

    ld e, $02
    ld bc, $56b7
    jp Jump_000_37f4


jr_002_5569:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_5577

    ld e, $02
    ld bc, $55da
    jp Jump_000_37f4


jr_002_5577:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_558b

    call Call_000_3826
    jr c, jr_002_558b

    ld e, $02
    ld bc, $532b
    jp Jump_000_37f4


jr_002_558b:
    call Call_000_369d
    jr nc, jr_002_5598

    ld e, $02
    ld bc, $5759
    jp Jump_000_37f4


jr_002_5598:
    call Call_000_374e
    jr nc, jr_002_55a5

    ld e, $02
    ld bc, $542f
    jp Jump_000_37f4


jr_002_55a5:
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_002_55b0

    call Call_002_602d
    jr jr_002_55d7

jr_002_55b0:
    call Call_000_3650
    jr nc, jr_002_55bd

    ld e, $02
    ld bc, $57a3
    jp Jump_000_37f4


jr_002_55bd:
    call Call_000_36e6
    jr nc, jr_002_55ca

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_55ca:
    call Call_000_3724
    jr nc, jr_002_55d7

    ld e, $01
    ld bc, $410c
    jp Jump_000_37f4


jr_002_55d7:
    jp Jump_000_37f7


    db $0f, $50, $04, $03, $1c, $56, $42, $08, $70, $fc, $24, $04, $06, $f7, $55, $03
    db $1c, $56, $42, $06, $f7, $55, $08, $50, $ff, $03, $d2, $56, $42, $10, $3c, $12
    db $09, $56, $01, $00, $05, $01, $10, $10, $14, $80, $fe, $55, $06, $b7, $56, $0d
    db $06, $54, $05, $01, $10, $10, $13, $80

    or a
    ld d, [hl]

    db $10, $3c, $12, $09, $56, $06, $fc, $55

    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_002_562d

    ld e, $02
    ld bc, $55f0
    jp Jump_000_37f4


jr_002_562d:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_002_5640

    ld h, d
    ld l, $1f
    ld [hl], $42
    inc l
    ld [hl], $56
    inc l
    ld [hl], $d2

jr_002_5640:
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c3c
    ld c, $00
    call Call_002_53d3
    jr nc, jr_002_565a

    ld e, $02
    ld bc, $55e9
    call Call_000_0846

jr_002_565a:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5675

    ld e, $02
    ld bc, $5310
    jp Jump_000_37f4


jr_002_5675:
    call Call_000_39bc
    jr nc, jr_002_5682

    ld e, $02
    ld bc, $56b7
    jp Jump_000_37f4


jr_002_5682:
    call Call_000_3765
    jr nc, jr_002_568f

    ld e, $02
    ld bc, $60a3
    jp Jump_000_37f4


jr_002_568f:
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_002_569a

    call Call_002_602d
    jr jr_002_56b4

jr_002_569a:
    call Call_000_3650
    jr nc, jr_002_56a7

    ld e, $02
    ld bc, $57a3
    jp Jump_000_37f4


jr_002_56a7:
    call Call_000_36e6
    jr nc, jr_002_56b4

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_56b4:
    jp Jump_000_37f7


    db $0f, $50, $05, $03, $d2, $56, $42, $0b, $5c, $3a, $10, $3c, $11, $c9, $56, $0b
    db $fb, $53, $19, $01, $08, $19, $02, $08, $06, $c9, $56

    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c3c
    ld c, $00
    call Call_002_53d3
    jr nc, jr_002_56ef

    ld e, $02
    ld bc, $56b7
    call Call_000_0846

jr_002_56ef:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_570a

    ld e, $02
    ld bc, $5310
    jp Jump_000_37f4


jr_002_570a:
    call Call_000_39bc
    jr nc, jr_002_5717

    ld e, $02
    ld bc, $56b7
    jp Jump_000_37f4


jr_002_5717:
    call Call_000_3765
    jr nc, jr_002_5724

    ld e, $02
    ld bc, $60a3
    jp Jump_000_37f4


jr_002_5724:
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_002_572f

    call Call_002_602d
    jr jr_002_5756

jr_002_572f:
    call Call_000_3650
    jr nc, jr_002_573c

    ld e, $02
    ld bc, $57a3
    jp Jump_000_37f4


jr_002_573c:
    call Call_000_36e6
    jr nc, jr_002_5749

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_5749:
    call Call_000_3724
    jr nc, jr_002_5756

    ld e, $01
    ld bc, $410c
    jp Jump_000_37f4


jr_002_5756:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    dec b
    inc bc
    ld [hl], h
    ld d, a
    ld b, d
    dec c
    xor a
    dec [hl]
    db $10
    inc a
    ld de, $576e
    dec bc
    ei
    ld d, e
    add hl, de
    ld bc, $0601
    db $10
    ld d, e
    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5797

    ld e, $02
    ld bc, $5310
    jp Jump_000_37f4


jr_002_5797:
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_002_57a0

    call Call_002_602d

jr_002_57a0:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0c, $0f, $3c, $00, $0d, $06, $38, $0e, $08, $ae, $61
    db $c1, $57

    push bc
    ld d, a
    ld hl, $955b
    ld e, h

    db $99, $5c, $9d, $5c

    ld [hl+], a
    ld h, b

    db $1b, $57, $6c, $07

    inc b
    cp e
    ld h, c
    ld a, [bc]
    inc bc
    ei
    ld d, a
    ld b, d
    rrca
    ld a, [hl-]
    nop
    inc h
    ld b, [hl]
    add hl, de
    nop
    ld b, $19
    ld bc, $1904
    ld [bc], a
    inc b
    add hl, de
    inc bc
    ld [$3a0f], sp
    ld d, $04
    cp e
    ld h, c
    ld a, [bc]
    rrca
    inc e
    add b
    dec c
    and a
    ld [hl], h
    ld c, $07
    or b
    ld e, b
    or b
    ld e, b
    ld [hl], b
    ld e, d
    ld [hl], b
    ld e, d
    ld c, e
    ld e, b
    ld c, e
    ld e, b
    ld c, e
    ld e, b
    call Call_002_7ee2
    call Call_002_581e
    call Call_000_3765
    jr nc, jr_002_580e

    ld e, $02
    ld bc, $5b12
    jp Jump_000_37f4


jr_002_580e:
    call Call_000_377c
    jr nc, jr_002_581b

    ld e, $02
    ld bc, $58a4
    jp Jump_000_37f4


jr_002_581b:
    jp Jump_000_37f7


Call_002_581e:
    ld e, $15
    ld a, [de]
    or a
    jr z, jr_002_583b

    cp $02
    ld hl, $583c
    jr c, jr_002_5833

    ld hl, $5841
    jr z, jr_002_5833

    ld hl, $5846

jr_002_5833:
    ld a, $04
    call Call_000_3aaa
    call Call_000_3ae4

jr_002_583b:
    ret


    inc bc
    inc c
    nop
    ld b, $04
    inc bc
    ld [de], a
    nop
    ld [$0305], sp
    inc de
    nop
    ld b, $08
    rrca
    ld b, e
    nop
    inc bc
    ld d, l
    ld e, b
    ld b, d
    ld bc, $0003
    call Call_002_7c5c
    call Call_002_7d3f
    ld hl, $6e08
    ld a, $08
    call Call_000_05cf
    call Call_002_581e
    call Call_002_793c
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    call Call_002_6193
    call Call_000_377c
    jr nc, jr_002_5882

    ld e, $02
    ld bc, $58a4
    jp Jump_000_37f4


jr_002_5882:
    call Call_002_5892
    jr nc, jr_002_588f

    ld e, $07
    ld bc, $6c92
    jp Jump_000_37f4


jr_002_588f:
    jp Jump_000_37f7


Call_002_5892:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_002_58a2

    dec a
    ld [de], a
    ldh a, [$ffa5]
    and $02
    jr z, jr_002_58a2

    and a
    ret


jr_002_58a2:
    scf
    ret


    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$dc06], sp
    ld e, c
    inc bc
    add e
    ld e, c
    ld b, d
    ld [hl+], a
    ld d, d
    ld e, b
    ld [bc], a
    dec c
    inc a
    jr c, jr_002_58ca

    ld b, $c9
    ld e, b
    add sp, $58
    rlca
    ld e, c
    ld h, $59
    ld b, l
    ld e, c
    ld h, h
    ld e, c
    dec c

jr_002_58ca:
    ld h, e
    ld e, [hl]
    ld [de], a
    call nc, $0558
    ld bc, $c906
    ld e, b
    inc d
    ld [bc], a
    ldh [$ff58], a
    ld h, $a0
    rst $38
    dec b
    inc d
    ld b, $c9
    ld e, b
    ld h, $60
    ld bc, $1405
    ld b, $c9
    ld e, b
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    di
    ld e, b
    dec b
    ld bc, $e806
    ld e, b
    inc d
    ld [bc], a
    rst $38
    ld e, b
    ld h, $40
    rst $38
    dec b
    add hl, de
    ld b, $e8
    ld e, b
    ld h, $b0
    nop
    dec b
    inc c
    ld b, $e8
    ld e, b
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    ld [de], a
    ld e, c
    dec b
    ld bc, $0706
    ld e, c
    inc d
    ld [bc], a
    ld e, $59
    ld h, $c0
    rst $38
    dec b
    inc c
    ld b, $07
    ld e, c
    ld h, $f0
    ld bc, $1905
    ld b, $07
    ld e, c
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    ld sp, $0559
    ld bc, $2606
    ld e, c
    inc d
    ld [bc], a
    ldh [$ff58], a
    ld h, $a0
    rst $38
    dec b
    inc d
    ld b, $26
    ld e, c
    ld h, $20
    ld bc, $1405
    ld b, $26
    ld e, c
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    ld d, b
    ld e, c
    dec b
    ld bc, $4506
    ld e, c
    inc d
    ld [bc], a
    ld e, h
    ld e, c
    ld h, $40
    rst $38
    dec b
    add hl, de
    ld b, $45
    ld e, c
    ld h, $80
    nop
    dec b
    inc c
    ld b, $45
    ld e, c
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    ld l, a
    ld e, c
    dec b
    ld bc, $6406
    ld e, c
    inc d
    ld [bc], a
    ld a, e
    ld e, c
    ld h, $c0
    rst $38
    dec b
    inc c
    ld b, $64
    ld e, c
    ld h, $c0
    ld bc, $1905
    ld b, $64
    ld e, c
    call Call_002_7bcd
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_581e
    call Call_002_793c
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_59a4

    ld e, $02
    ld bc, $5a70
    jp Jump_000_37f4


jr_002_59a4:
    call Call_000_369d
    jr nc, jr_002_59b1

    ld e, $02
    ld bc, $5acc
    jp Jump_000_37f4


jr_002_59b1:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_59bf

    ld e, $02
    ld bc, $59dc
    jp Jump_000_37f4


jr_002_59bf:
    call Call_000_374e
    jr nc, jr_002_59cc

    ld e, $02
    ld bc, $58b0
    jp Jump_000_37f4


jr_002_59cc:
    call Call_002_5892
    jr nc, jr_002_59d9

    ld e, $07
    ld bc, $6c92
    jp Jump_000_37f4


jr_002_59d9:
    jp Jump_000_37f7


    inc bc
    db $fc
    ld e, c
    ld b, d
    ld [$fc70], sp
    ld b, $ed
    ld e, c
    ld [$ff50], sp
    inc bc
    ld a, c
    ld e, d
    ld b, d
    ld [hl+], a
    ld d, d
    ld e, b
    ld [bc], a
    dec b
    ld bc, $1010
    inc d
    add b
    pop af
    ld e, c
    ld b, $70
    ld e, d
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_002_5a0a

    ld e, $02
    ld bc, $59e6
    jp Jump_000_37f4


jr_002_5a0a:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_002_5a1d

    ld h, d
    ld l, $1f
    ld [hl], $42
    inc l
    ld [hl], $5a
    inc l
    ld [hl], $79

jr_002_5a1d:
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c45
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_581e
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5a46

    ld e, $02
    ld bc, $57e1
    jp Jump_000_37f4


jr_002_5a46:
    call Call_000_39bc
    jr nc, jr_002_5a53

    ld e, $02
    ld bc, $5a70
    jp Jump_000_37f4


jr_002_5a53:
    call Call_000_3765
    jr nc, jr_002_5a60

    ld e, $02
    ld bc, $5b12
    jp Jump_000_37f4


jr_002_5a60:
    call Call_002_5892
    jr nc, jr_002_5a6d

    ld e, $07
    ld bc, $6c92
    jp Jump_000_37f4


jr_002_5a6d:
    jp Jump_000_37f7


    inc bc
    ld a, c
    ld e, d
    ld b, d
    ld [hl+], a
    ld d, d
    ld e, b
    ld [bc], a
    nop
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c45
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_581e
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5aa2

    ld e, $02
    ld bc, $57e1
    jp Jump_000_37f4


jr_002_5aa2:
    call Call_000_39bc
    jr nc, jr_002_5aaf

    ld e, $02
    ld bc, $5a70
    jp Jump_000_37f4


jr_002_5aaf:
    call Call_000_3765
    jr nc, jr_002_5abc

    ld e, $02
    ld bc, $5b12
    jp Jump_000_37f4


jr_002_5abc:
    call Call_002_5892
    jr nc, jr_002_5ac9

    ld e, $07
    ld bc, $6c92
    jp Jump_000_37f4


jr_002_5ac9:
    jp Jump_000_37f7


    inc bc
    call c, $425a
    dec c
    xor a
    dec [hl]
    ld [hl+], a
    ld d, d
    ld e, b
    ld [bc], a
    dec b
    ld bc, $e106
    ld d, a
    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_581e
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5b02

    ld e, $02
    ld bc, $57e1
    jp Jump_000_37f4


jr_002_5b02:
    call Call_002_5892
    jr nc, jr_002_5b0f

    ld e, $07
    ld bc, $6c92
    jp Jump_000_37f4


jr_002_5b0f:
    jp Jump_000_37f7


    dec c
    ld c, b
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    rrca
    ccf
    nop
    ld b, $e1
    ld d, a
    rrca
    ld d, b
    ld [de], a
    inc b
    dec sp
    ld h, d
    ld a, [bc]
    inc h
    ld c, h
    jr @+$0f

    ld [hl], a
    rrca
    ld [bc], a
    inc bc
    ld c, a
    ld e, e
    ld b, d
    add hl, de
    nop
    ld b, $08
    nop
    cp $05
    inc b
    jr jr_002_5b4a

    and a
    ld [hl], h
    ld c, $07
    inc d
    ld e, h
    inc d
    ld e, h
    ld l, e
    ld e, e
    ld l, e
    ld e, e
    inc d

jr_002_5b4a:
    ld e, h
    ld l, e
    ld e, e
    ld l, e
    ld e, e
    ld a, $04
    ld [$a05d], a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_3972
    call Call_000_3952
    jp Jump_000_37f7


    inc bc
    ld a, b
    ld e, e
    ld b, d
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld b, $06
    ld l, a
    ld e, e
    ld a, [$a070]
    or a
    ld e, $60
    ld bc, $0400
    jr z, jr_002_5b88

    ld e, $40
    ld bc, $0200

jr_002_5b88:
    call Call_000_0d23
    ld a, [$a070]
    or a
    ld e, $0e
    jr z, jr_002_5b95

    ld e, $08

jr_002_5b95:
    call Call_000_0d04
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_5be4
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5bb6

    ld e, $02
    ld bc, $5c0c
    jp Jump_000_37f4


jr_002_5bb6:
    call Call_000_3952
    ldh a, [$ffa6]
    and $02
    jr z, jr_002_5bc7

    ld e, $02
    ld bc, $5c8a
    jp Jump_000_37f4


jr_002_5bc7:
    call Call_000_3765
    jr nc, jr_002_5bd4

    ld e, $02
    ld bc, $5bf4
    jp Jump_000_37f4


jr_002_5bd4:
    call Call_000_377c
    jr nc, jr_002_5be1

    ld e, $02
    ld bc, $5c00
    jp Jump_000_37f4


jr_002_5be1:
    jp Jump_000_37f7


Call_002_5be4:
    ld hl, $5bef
    ld a, $08
    call Call_000_3aaa
    jp Jump_000_3ae4


    ld bc, $0000
    ld a, [bc]
    ld a, [bc]
    dec c
    ld d, c
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $3c
    ld e, e
    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $3c
    ld e, e
    jr jr_002_5c1b

    ld [hl], a
    rrca
    ld c, $06
    inc d
    ld e, h
    rrca
    ld a, [hl-]
    ld a, b
    inc bc
    inc [hl]
    ld e, h
    ld b, d

jr_002_5c1b:
    add hl, de
    nop
    inc b
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld b, $03
    ld sp, $425c
    add hl, de
    ld bc, $1908
    ld [bc], a
    ld b, $06
    jr z, jr_002_5c8d

    call Call_002_7be3
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld a, $04
    ld [$a05d], a
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    call nz, Call_002_5be4
    call Call_002_793c
    call Call_002_76df
    call Call_002_75a1
    jr nc, jr_002_5c5e

    ld e, $02
    ld bc, $5b6b
    jp Jump_000_37f4


jr_002_5c5e:
    ldh a, [$ffa6]
    and $02
    jr z, jr_002_5c6c

    ld e, $02
    ld bc, $5c8a
    jp Jump_000_37f4


jr_002_5c6c:
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    ld e, $3a
    jr z, jr_002_5c7a

    ld a, $78
    ld [de], a

jr_002_5c7a:
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_002_5c87

    ld e, $02
    ld bc, $5c8a
    jp Jump_000_37f4


jr_002_5c87:
    jp Jump_000_37f7


    dec c
    ld [hl], a
    rrca

jr_002_5c8d:
    ld [bc], a
    inc h
    ld c, h
    dec b
    inc b
    ld b, $10
    ld d, e
    dec de
    db $d3
    ld l, h
    rlca

    db $1b, $f3, $6c, $07, $03, $e6, $5c, $42, $0f, $3a, $00, $04, $99, $5e, $0a, $19
    db $02, $06, $04, $b9, $63, $0a, $19, $00, $04, $0f, $3a, $0a, $04, $b9, $63, $0a
    db $0f, $1c, $80, $0d, $a7, $74, $0e, $07, $90, $5d, $90, $5d, $75, $5f

    ld [hl], l
    ld e, a
    inc e
    ld e, l
    inc e
    ld e, l

    db $1c, $5d

Call_002_5ccf:
    ld a, [$db76]
    or a
    ret z

    ld a, [$da36]
    or a
    ret nz

    ld hl, $cd00
    ld a, $e4
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $e4
    ld [hl+], a
    ret


    call Call_002_7ee2
    call Call_000_3765
    jr nc, jr_002_5cf6

    ld e, $02
    ld bc, $6013
    jp Jump_000_37f4


jr_002_5cf6:
    call Call_000_377c
    jr nc, jr_002_5d03

    ld e, $02
    ld bc, $5d84
    jp Jump_000_37f4


jr_002_5d03:
    jp Jump_000_37f7


Call_002_5d06:
    ld e, $15
    ld a, [de]
    cp $02
    ret c

    ld a, $02
    ld hl, $5d17
    call Call_000_3aaa
    jp Jump_000_3ae4


    db $03, $10, $00, $08, $09, $0f, $43, $00, $03, $32, $5d, $42, $04, $b9, $63, $0a
    db $24, $1d, $19, $02, $02, $19, $03, $02, $06, $27, $5d

    call Call_002_5ccf
    call Call_002_7c5c
    call Call_002_7d3f
    ld hl, $6e08
    ld a, $08
    call Call_000_05cf
    call Call_002_5d06
    call Call_002_793c
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    call Call_002_6193
    call Call_000_377c
    jr nc, jr_002_5d62

    ld e, $02
    ld bc, $5d84
    jp Jump_000_37f4


jr_002_5d62:
    call Call_002_5d72
    jr nc, jr_002_5d6f

    ld e, $07
    ld bc, $6d5c
    jp Jump_000_37f4


jr_002_5d6f:
    jp Jump_000_37f7


Call_002_5d72:
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_002_5d7c

    dec a
    ld [de], a

jr_002_5d7a:
    and a
    ret


jr_002_5d7c:
    ldh a, [$ffa5]
    and $02
    jr nz, jr_002_5d7a

    scf
    ret


    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$de06], sp
    ld e, [hl]

    db $03, $82, $5e, $42, $22, $23, $5d, $02, $0d, $3c, $38, $0e, $06, $a9, $5d, $c8
    db $5d, $e7, $5d

    ld b, $5e
    dec h
    ld e, [hl]
    ld b, h
    ld e, [hl]

    db $0d, $63, $5e, $12, $b4, $5d, $05, $01, $06, $a9, $5d, $14, $02, $c0, $5d

    ld h, $a0
    rst $38
    dec b
    inc d
    ld b, $a9
    ld e, l

    db $26, $60, $01, $05, $14, $06, $a9, $5d, $0d, $63, $5e, $12, $d3, $5d, $05, $01
    db $06, $c8, $5d, $14, $02, $df, $5d

    ld h, $40
    rst $38
    dec b
    add hl, de
    ld b, $c8
    ld e, l

    db $26, $b0, $00, $05, $0c, $06, $c8, $5d, $0d, $63, $5e, $12

    ldh a, [c]
    ld e, l

    db $05, $01, $06, $e7, $5d

    inc d
    ld [bc], a
    cp $5d
    ld h, $c0
    rst $38
    dec b
    inc c
    ld b, $e7
    ld e, l
    ld h, $f0
    ld bc, $1905
    ld b, $e7
    ld e, l
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    ld de, $055e
    ld bc, $0606
    ld e, [hl]
    inc d
    ld [bc], a
    ret nz

    ld e, l
    ld h, $a0
    rst $38
    dec b
    inc d
    ld b, $06
    ld e, [hl]
    ld h, $20
    ld bc, $1405
    ld b, $06
    ld e, [hl]
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    jr nc, @+$60

    dec b
    ld bc, $2506
    ld e, [hl]
    inc d
    ld [bc], a
    inc a
    ld e, [hl]
    ld h, $40
    rst $38
    dec b
    add hl, de
    ld b, $25
    ld e, [hl]
    ld h, $80
    nop
    dec b
    inc c
    ld b, $25
    ld e, [hl]
    dec c
    ld h, e
    ld e, [hl]
    ld [de], a
    ld c, a
    ld e, [hl]
    dec b
    ld bc, $4406
    ld e, [hl]
    inc d
    ld [bc], a
    ld e, e
    ld e, [hl]
    ld h, $c0
    rst $38
    dec b
    inc c
    ld b, $44
    ld e, [hl]
    ld h, $c0
    ld bc, $1905
    ld b, $44
    ld e, [hl]

    ldh a, [$ffa5]
    and $30
    ld h, $00
    jr z, jr_002_5e7d

    bit 4, a
    ld e, $45
    ld a, [de]
    jr z, jr_002_5e78

    inc h
    rla
    jr c, jr_002_5e7d

    jr jr_002_5e7c

jr_002_5e78:
    inc h
    rla
    jr nc, jr_002_5e7d

jr_002_5e7c:
    inc h

jr_002_5e7d:
    ld e, $27
    ld a, h
    ld [de], a
    ret


    call Call_002_5ccf
    call Call_002_7bcd
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_5d06
    call Call_002_793c
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_5ea6

    ld e, $02
    ld bc, $5f75
    jp Jump_000_37f4


jr_002_5ea6:
    call Call_000_369d
    jr nc, jr_002_5eb3

    ld e, $02
    ld bc, $5fca
    jp Jump_000_37f4


jr_002_5eb3:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_5ec1

    ld e, $02
    ld bc, $5ede
    jp Jump_000_37f4


jr_002_5ec1:
    call Call_000_374e
    jr nc, jr_002_5ece

    ld e, $02
    ld bc, $5d90
    jp Jump_000_37f4


jr_002_5ece:
    call Call_002_5d72
    jr nc, jr_002_5edb

    ld e, $07
    ld bc, $6d5c
    jp Jump_000_37f4


jr_002_5edb:
    jp Jump_000_37f7


    inc bc
    cp $5e
    ld b, d
    ld [$fc70], sp
    ld b, $ef
    ld e, [hl]
    ld [$ff50], sp
    inc bc
    ld a, [hl]
    ld e, a
    ld b, d
    ld [hl+], a
    inc hl
    ld e, l
    ld [bc], a
    dec b
    ld bc, $1010
    inc d
    add b
    di
    ld e, [hl]
    ld b, $75
    ld e, a
    call Call_002_5ccf
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_002_5f0f

    ld e, $02
    ld bc, $5ee8
    jp Jump_000_37f4


jr_002_5f0f:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_002_5f22

    ld h, d
    ld l, $1f
    ld [hl], $42
    inc l
    ld [hl], $5f
    inc l
    ld [hl], $7e

jr_002_5f22:
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c45
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_5d06
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5f4b

    ld e, $02
    ld bc, $5cb5
    jp Jump_000_37f4


jr_002_5f4b:
    call Call_000_39bc
    jr nc, jr_002_5f58

    ld e, $02
    ld bc, $5f75
    jp Jump_000_37f4


jr_002_5f58:
    call Call_000_3765
    jr nc, jr_002_5f65

    ld e, $02
    ld bc, $6013
    jp Jump_000_37f4


jr_002_5f65:
    call Call_002_5d72
    jr nc, jr_002_5f72

    ld e, $07
    ld bc, $6d5c
    jp Jump_000_37f4


jr_002_5f72:
    jp Jump_000_37f7


    db $03, $7e, $5f, $42, $22, $23, $5d, $02, $00

    call Call_002_5ccf
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c45
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_5d06
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_5faa

    ld e, $02
    ld bc, $5cb5
    jp Jump_000_37f4


jr_002_5faa:
    call Call_000_39bc
    call Call_000_3765
    jr nc, jr_002_5fba

    ld e, $02
    ld bc, $6013
    jp Jump_000_37f4


jr_002_5fba:
    call Call_002_5d72
    jr nc, jr_002_5fc7

    ld e, $07
    ld bc, $6d5c
    jp Jump_000_37f4


jr_002_5fc7:
    jp Jump_000_37f7


    inc bc
    jp c, $425f

    dec c
    xor a
    dec [hl]
    ld [hl+], a
    inc hl
    ld e, l
    ld [bc], a
    dec b
    ld bc, $b506
    ld e, h
    call Call_002_5ccf
    ld e, $20
    ld bc, $0280
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_5d06
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_6003

    ld e, $02
    ld bc, $5cb5
    jp Jump_000_37f4


jr_002_6003:
    call Call_002_5d72
    jr nc, jr_002_6010

    ld e, $07
    ld bc, $6d5c
    jp Jump_000_37f4


jr_002_6010:
    jp Jump_000_37f7


    db $0d, $48, $3a, $0d, $92, $0f, $07, $00, $00, $0f, $3f, $00, $06, $b5, $5c

    inc h
    ld b, h
    rrca
    ld b, b
    ld a, b
    rrca
    ld a, [hl-]
    ld [bc], a
    ld b, $10
    ld d, e

Call_002_602d:
    ld e, $40
    ld a, [de]
    or a
    ret z

    dec a
    ld [de], a
    jr z, jr_002_606a

    and $01
    jr nz, jr_002_605a

    ld a, [de]
    and $02
    ld e, $47
    ld a, [de]
    jr nz, jr_002_6046

    res 4, a
    jr jr_002_6048

jr_002_6046:
    set 4, a

jr_002_6048:
    ld [de], a
    ld bc, $6077
    call Call_000_0f77
    ld e, $3a
    ld a, [de]
    inc a
    cp $0b
    jr c, jr_002_6059

    ld a, $02

jr_002_6059:
    ld [de], a

jr_002_605a:
    ld a, $02
    ld hl, $6072
    call Call_000_3aaa
    call Call_000_3ae4
    ldh a, [$ffa5]
    and $02
    ret nz

jr_002_606a:
    ld e, $02
    ld bc, $6078
    jp Jump_000_0846


    dec b
    nop
    nop
    ld [de], a
    ld [de], a
    inc c
    db $10
    ld b, b
    rrca
    ld b, b
    nop
    inc d
    ld [bc], a
    and b
    ld h, b
    inc bc
    ld [hl], a
    ld l, h
    ld b, a
    inc h
    ld c, c
    inc b
    ld c, b
    ld h, h
    ld a, [bc]
    add hl, de
    nop
    ld a, [bc]
    add hl, de
    ld bc, $1906
    nop
    inc b
    add hl, de
    ld bc, $1902
    nop
    ld [bc], a
    add hl, de
    ld bc, $191e
    nop
    inc b
    ld b, $10
    ld d, e

    db $0b, $27, $53, $0d, $48, $3a, $0d, $92, $0f, $07, $00, $00, $0d, $b8, $60, $0f
    db $3f, $00, $06, $10, $53

    ld e, $15
    ld a, [de]
    cp $03
    ret nz

    ld e, $3c
    ld a, [de]
    cp $04
    ret c

    ld a, $03
    ld [de], a
    ret


    db $0f, $43, $00, $0f, $50, $05, $0f, $52, $00, $03, $15, $61, $42, $10, $3c, $11
    db $dd, $60, $0b, $f0, $53, $10, $6f, $0e, $03, $e7, $60, $f6, $60, $07, $61, $19
    db $01, $12, $19, $00, $18, $19, $01, $12

    add hl, de
    ld [bc], a
    ld [de], a
    ld b, $e7
    ld h, b

    db $24, $48, $19, $01, $06, $19, $00, $08, $19, $01, $06, $19, $02, $06, $06, $f6
    db $60, $24, $48, $19, $01, $03, $19, $02, $17, $0f, $6f, $01, $06, $f6, $60

    call Call_000_359a
    call Call_002_7c5c
    call Call_002_7cd9
    ld c, $01
    call Call_002_53d3
    jr nc, jr_002_612d

    ld e, $02
    ld bc, $60cb
    call Call_000_0846

jr_002_612d:
    ld hl, $6e08
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    call Call_002_6193
    call Call_002_78da
    jr nc, jr_002_6151

    ld e, $02
    ld bc, $60cb
    jp Jump_000_37f4


jr_002_6151:
    call Call_000_377c
    jr nc, jr_002_615e

    ld e, $02
    ld bc, $619e
    jp Jump_000_37f4


jr_002_615e:
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_002_6169

    call Call_002_602d
    jr jr_002_6190

jr_002_6169:
    call Call_000_3650
    jr nc, jr_002_6176

    ld e, $02
    ld bc, $57a3
    jp Jump_000_37f4


jr_002_6176:
    call Call_000_36e6
    jr nc, jr_002_6183

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_6183:
    call Call_000_3724
    jr nc, jr_002_6190

    ld e, $01
    ld bc, $410c
    jp Jump_000_37f4


jr_002_6190:
    jp Jump_000_37f7


Call_002_6193:
    ld h, d
    ld e, $0f
    ld l, $8f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    db $0d, $57, $3a, $04, $99, $5e, $0a, $0d, $92, $0f, $07, $00, $08, $06, $da, $55
    db $0f, $3c, $00, $0f, $50, $09, $0d, $d3, $61, $0f, $80, $00, $0f, $81, $0c, $03
    db $dc, $61, $42, $0f, $39, $1e, $0f, $3d, $01, $24, $01, $04, $a7, $5f, $0a, $19
    db $00, $08, $01, $01, $00

    ld hl, $72be
    ld a, $01
    call Call_000_05cf
    ret


    call Call_002_7ee2
    ld a, [$a056]
    or a
    jr z, jr_002_61f3

    ld a, [$a055]
    or a
    jr nz, jr_002_61f3

    ld e, $02
    ld bc, $6263
    jp Jump_000_37f4


jr_002_61f3:
    ld h, d
    ld l, $39
    ld a, [hl]
    or a
    jr z, jr_002_61fd

    dec [hl]
    jr jr_002_6217

jr_002_61fd:
    ldh a, [$ffa5]
    bit 1, a
    jr nz, jr_002_6217

    ld a, [$a056]
    or a
    jr nz, jr_002_6217

    ld a, [$a055]
    or a
    jr nz, jr_002_6217

    ld e, $02
    ld bc, $6244
    jp Jump_000_37f4


jr_002_6217:
    call Call_000_3a24
    jr nc, jr_002_6224

    ld e, $02
    ld bc, $60a3
    jp Jump_000_37f4


jr_002_6224:
    ld e, $3d
    ld a, [de]
    or a
    jr z, jr_002_622e

    dec a
    ld [de], a
    jr jr_002_6236

jr_002_622e:
    ld hl, $7348
    ld a, $01
    call Call_000_05cf

jr_002_6236:
    ld hl, $623f
    call Call_000_3aaa
    jp Jump_000_37f7


    db $00, $16, $00, $16, $14

    inc h
    rst $38
    inc bc
    ld d, b
    ld h, d
    ld b, d
    add hl, de
    nop
    ld [$0306], sp
    ld d, e
    call Call_002_7ee2
    call Call_000_3765
    jr nc, jr_002_6260

    ld e, $02
    ld bc, $60a3
    jp Jump_000_37f4


jr_002_6260:
    jp Jump_000_37f7


    db $24, $02, $03, $7b, $62, $42, $19, $02, $03, $19, $01, $02, $19, $03, $02, $19
    db $05, $02, $19, $03, $02, $06, $a5, $62

    call Call_002_7f09
    call Call_002_7bcd
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_3972
    call Call_000_3952
    call Call_000_3765
    jr nc, jr_002_62a2

    ld e, $02
    ld bc, $665d
    jp Jump_000_37f4


jr_002_62a2:
    jp Jump_000_37f7


    db $0b, $bf, $62, $04, $a7, $5f, $0a, $0d, $a7, $74, $0e, $07, $c3, $62, $48, $63
    db $4b, $65

    ld c, e
    ld h, l
    cp a
    ld h, l
    cp a
    ld h, l

    db $bf, $65, $0f, $51, $0a, $0c, $0f, $50, $00, $03, $d6, $62, $42, $0b, $5c, $3a
    db $19, $03, $0a

    add hl, de
    inc b
    ld [$cd06], sp
    ld h, d

    call Call_000_359a
    call Call_000_3602
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_62f7

    ld e, $02
    ld bc, $654b
    jp Jump_000_37f4


jr_002_62f7:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_6305

    ld e, $02
    ld bc, $64a3
    jp Jump_000_37f4


jr_002_6305:
    call Call_002_7663
    jr nc, jr_002_6312

    ld e, $02
    ld bc, $6348
    jp Jump_000_37f4


jr_002_6312:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_6320

    ld e, $02
    ld bc, $6678
    jp Jump_000_37f4


jr_002_6320:
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_632e

    ld e, $02
    ld bc, $66bd
    jp Jump_000_37f4


jr_002_632e:
    call Call_000_36e6
    jr nc, jr_002_633b

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_633b:
    jp Jump_000_37f7


    dec c
    rst $38
    scf
    db $10
    ld b, l
    ld a, [de]
    dec sp
    ld b, $52
    ld h, e

    db $0f, $50, $01, $03, $1d, $64, $42, $0b, $5c, $3a, $0d, $3c, $38, $0e, $06

    ld h, e
    ld h, e

    db $82, $63

    and c
    ld h, e
    ret nz

    ld h, e
    rst $18
    ld h, e
    cp $63
    ld bc, $0d03
    inc e
    jr c, jr_002_637b

    halt
    ld h, e
    dec c
    ld e, $55
    ld [de], a
    ld a, $63
    dec b
    ld bc, $6506
    ld h, e
    ld h, $60
    ld bc, $0319

jr_002_637b:
    inc c
    add hl, de
    inc b
    ld [$6506], sp
    ld h, e

    db $01, $03, $0d, $1c, $38, $12, $95, $63

    dec c
    ld e, $55
    ld [de], a
    ld a, $63
    dec b
    ld bc, $8406
    ld h, e

    db $26, $b0, $00, $19, $03, $07

    add hl, de
    inc b
    dec b
    ld b, $84
    ld h, e
    ld bc, $0d03
    inc e
    jr c, jr_002_63b9

    or h
    ld h, e
    dec c
    ld e, $55
    ld [de], a
    ld a, $63
    dec b
    ld bc, $a306
    ld h, e
    ld h, $f0
    ld bc, $0319

jr_002_63b9:
    rrca
    add hl, de
    inc b
    ld a, [bc]
    ld b, $a3
    ld h, e
    ld bc, $0d03
    inc e
    jr c, jr_002_63d8

    db $d3
    ld h, e
    dec c
    ld e, $55
    ld [de], a
    ld a, $63
    dec b
    ld bc, $c206
    ld h, e
    ld h, $20
    ld bc, $0319

jr_002_63d8:
    inc c
    add hl, de
    inc b
    ld [$c206], sp
    ld h, e
    ld bc, $0d03
    inc e
    jr c, jr_002_63f7

    ldh a, [c]
    ld h, e
    dec c
    ld e, $55
    ld [de], a
    ld a, $63
    dec b
    ld bc, $e106
    ld h, e
    ld h, $80
    nop
    add hl, de
    inc bc

jr_002_63f7:
    rlca
    add hl, de
    inc b
    dec b
    ld b, $e1
    ld h, e
    ld bc, $0d03
    inc e
    jr c, jr_002_6416

    ld de, $0d64
    ld e, $55
    ld [de], a
    ld a, $63
    dec b
    ld bc, $0006
    ld h, h
    ld h, $c0
    ld bc, $0319

jr_002_6416:
    rrca
    add hl, de
    inc b
    ld a, [bc]
    ld b, $00
    ld h, h

    call Call_000_359a
    call Call_002_7bcd
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_002_76c5
    jr nc, jr_002_643b

    ld e, $02
    ld bc, $62c3
    jp Jump_000_37f4


jr_002_643b:
    call Call_002_75a1
    jr nc, jr_002_6448

    ld e, $02
    ld bc, $654b
    jp Jump_000_37f4


jr_002_6448:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_6456

    ld e, $02
    ld bc, $64a3
    jp Jump_000_37f4


jr_002_6456:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_646a

    call Call_000_3826
    jr c, jr_002_646a

    ld e, $02
    ld bc, $62c3
    jp Jump_000_37f4


jr_002_646a:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_6478

    ld e, $02
    ld bc, $6678
    jp Jump_000_37f4


jr_002_6478:
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_6486

    ld e, $02
    ld bc, $66bd
    jp Jump_000_37f4


jr_002_6486:
    call Call_000_36e6
    jr nc, jr_002_6493

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_6493:
    call Call_000_374e
    jr nc, jr_002_64a0

    ld e, $02
    ld bc, $6348
    jp Jump_000_37f4


jr_002_64a0:
    jp Jump_000_37f7


    rrca
    ld d, b
    inc b
    inc bc
    add $64
    ld b, d
    ld [$fc70], sp
    inc h
    inc b
    ld b, $b9
    ld h, h
    ld [$ff50], sp
    inc bc
    ld [$4264], a
    ld bc, $0504
    ld bc, $1010
    inc d
    add b
    cp e
    ld h, h
    ld b, $4b
    ld h, l
    call Call_000_359a
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_002_64d7

    ld e, $02
    ld bc, $64b2
    jp Jump_000_37f4


jr_002_64d7:
    ld bc, $ff50
    call Call_000_37eb
    jr nc, jr_002_64ea

    ld h, d
    ld l, $1f
    ld [hl], $42
    inc l
    ld [hl], $65
    inc l
    ld [hl], $5e

jr_002_64ea:
    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c3c
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_6513

    ld e, $02
    ld bc, $62a8
    jp Jump_000_37f4


jr_002_6513:
    call Call_000_39bc
    jr nc, jr_002_6520

    ld e, $02
    ld bc, $654b
    jp Jump_000_37f4


jr_002_6520:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_652e

    ld e, $02
    ld bc, $6678
    jp Jump_000_37f4


jr_002_652e:
    call Call_000_3765
    jr nc, jr_002_653b

    ld e, $02
    ld bc, $665d
    jp Jump_000_37f4


jr_002_653b:
    call Call_000_36e6
    jr nc, jr_002_6548

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_6548:
    jp Jump_000_37f7


    db $0f, $50, $05, $03, $5e, $65, $42, $0b, $5c, $3a, $19, $03, $0a, $19, $04, $08

    ld b, $55
    ld h, l

    call Call_000_359a
    ld e, $20
    ld bc, $0280
    call Call_000_0d23
    call Call_002_7c3c
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_6587

    ld e, $02
    ld bc, $62a8
    jp Jump_000_37f4


jr_002_6587:
    call Call_000_39bc
    jr nc, jr_002_6594

    ld e, $02
    ld bc, $654b
    jp Jump_000_37f4


jr_002_6594:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_65a2

    ld e, $02
    ld bc, $6678
    jp Jump_000_37f4


jr_002_65a2:
    call Call_000_3765
    jr nc, jr_002_65af

    ld e, $02
    ld bc, $665d
    jp Jump_000_37f4


jr_002_65af:
    call Call_000_36e6
    jr nc, jr_002_65bc

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_65bc:
    jp Jump_000_37f7


    db $0f, $43, $00, $0f, $50, $05, $0f, $52, $00, $03, $f8, $65, $42, $10, $6f, $0e
    db $03, $d6, $65, $df, $65, $ea, $65, $19, $03, $0e

    add hl, de
    inc b
    ld a, [bc]
    ld b, $d6
    ld h, l

    db $24, $48, $19, $03, $08, $19, $04, $06, $06, $df, $65, $24, $48, $19, $03, $03
    db $19, $04, $17, $0f, $6f, $01, $06, $df, $65

    call Call_000_359a
    call Call_002_7c5c
    call Call_002_7cd9
    ld hl, $6e08
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    call Call_002_6193
    call Call_002_78da
    jr nc, jr_002_6625

    ld e, $02
    ld bc, $65c2
    jp Jump_000_37f4


jr_002_6625:
    call Call_000_377c
    jr nc, jr_002_6632

    ld e, $02
    ld bc, $666c
    jp Jump_000_37f4


jr_002_6632:
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_6640

    ld e, $02
    ld bc, $6678
    jp Jump_000_37f4


jr_002_6640:
    call Call_000_3629
    jr nc, jr_002_664d

    ld e, $02
    ld bc, $66bd
    jp Jump_000_37f4


jr_002_664d:
    call Call_000_36e6
    jr nc, jr_002_665a

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_665a:
    jp Jump_000_37f7


    db $0b, $bf, $62, $0d, $48, $3a, $0d, $92, $0f, $07, $00, $00, $06, $a8, $62

    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$a306], sp
    ld h, h
    dec c
    and d
    dec [hl]
    rrca
    ld d, c
    ld b, $0f
    ld d, b
    ld a, [bc]
    inc bc
    xor d
    ld h, [hl]
    ld b, d
    rrca
    ld e, b
    rst $38
    dec c
    jr @+$3c

    ld [de], a
    sbc c
    ld h, [hl]
    dec c
    xor a
    rrca
    inc e
    ld [$2400], sp
    dec de
    ld b, $a1
    ld h, [hl]
    dec c
    xor a
    rrca
    dec e
    ld [$2400], sp
    ld [hl-], a
    add hl, de
    ld bc, $190c
    nop
    inc c
    ld b, $03
    ld d, e
    call Call_002_7ee2
    call Call_000_3765
    jr nc, jr_002_66ba

    ld e, $02
    ld bc, $60a3
    jp Jump_000_37f4


jr_002_66ba:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0b, $03, $26, $67, $42, $0d, $f0, $39, $0e, $03, $d2
    db $66, $ec, $66

    db $ec
    ld h, [hl]

    db $0f, $58, $ff, $0f, $5b, $ff, $0f, $5c, $00, $0f, $51, $06, $24, $03, $19, $06
    db $04, $19, $03, $02, $19, $06, $0a, $06, $03, $53, $0d, $07, $3a, $24, $29, $19
    db $06, $04, $19, $03, $02, $19, $06, $0a, $04, $99, $5e, $0a, $01, $02, $18, $0d
    db $42, $3c, $0d, $67, $10, $0d, $7f, $35, $03, $2c, $67, $42, $0d, $77, $0f, $01
    db $19, $02, $08, $05, $01, $10, $64, $12, $15, $67, $1c, $d7, $6e, $07, $0d, $80
    db $10, $06, $03, $53

    call Call_002_7ee2
    jp Jump_000_37f7


    call Call_000_34fd
    ret


    db $0b, $63, $67, $0f, $3c, $00, $10, $45, $1a, $3b, $0f, $3d, $00, $0f, $3e, $00
    db $10, $3e, $11, $4c, $67

    inc b
    or l
    ld l, d
    ld a, [bc]
    ld b, $50
    ld h, a

    db $04, $29, $65, $0a, $0d, $a7, $74, $0e, $07, $67, $67, $60, $68, $60, $68

    ld h, b
    ld l, b
    ld a, [hl+]
    ld l, [hl]
    ret


    ld l, [hl]
    ret


    ld l, [hl]

    db $0f, $51, $07, $0c, $0f, $50, $00, $03, $7c, $67, $42, $0b, $5c, $3a, $10, $3c
    db $11, $79, $67

    dec bc
    add hl, sp
    ld l, b

    db $01, $05, $00

    call Call_000_359a
    call Call_000_3602
    call Call_002_6822
    jr nc, jr_002_678f

    ld e, $02
    ld bc, $6767
    call Call_000_0846

jr_002_678f:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_67aa

    ld e, $02
    ld bc, $6860
    jp Jump_000_37f4


jr_002_67aa:
    call Call_002_7663
    jr nc, jr_002_67b7

    ld e, $02
    ld bc, $6860
    jp Jump_000_37f4


jr_002_67b7:
    call Call_000_369d
    jr nc, jr_002_67c4

    ld e, $02
    ld bc, $696b
    jp Jump_000_37f4


jr_002_67c4:
    ldh a, [$ffa5]
    and $40
    jr z, jr_002_67d2

    ld e, $02
    ld bc, $6860
    jp Jump_000_37f4


jr_002_67d2:
    ldh a, [$ffa6]
    and $01
    jr z, jr_002_67e0

    ld e, $02
    ld bc, $6857
    jp Jump_000_37f4


jr_002_67e0:
    ld e, $3e
    ld a, [de]
    or a
    jr z, jr_002_67f8

    call Call_002_6d18
    call $6d3c
    jr nc, jr_002_67f6

    ld e, $07
    ld bc, $6e2c
    jp Jump_000_37f4


jr_002_67f6:
    jr jr_002_681f

jr_002_67f8:
    call Call_000_366b
    jr nc, jr_002_6805

    ld e, $02
    ld bc, $69b8
    jp Jump_000_37f4


jr_002_6805:
    call Call_000_36e6
    jr nc, jr_002_6812

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_6812:
    call Call_000_3724
    jr nc, jr_002_681f

    ld e, $01
    ld bc, $411f
    jp Jump_000_37f4


jr_002_681f:
    jp Jump_000_37f7


Call_002_6822:
    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $3b
    ld a, [de]
    xor b
    rla
    ret nc

    ld a, b
    ld [de], a
    ld a, $07
    ld e, $3c
    ld [de], a
    ld a, $04
    ld e, $15
    ld [de], a
    ret


    db $0d, $44, $68, $05, $01, $10, $3c, $12, $39, $68, $0c

    ld e, $3c
    ld a, [de]
    cp $04
    ld a, $04
    jr nc, jr_002_684e

    dec a

jr_002_684e:
    ld e, $15
    ld [de], a
    ld e, $3c
    ld a, [de]
    dec a
    ld [de], a
    ret


    db $08, $0d, $fe, $0f, $3d, $04, $06, $63, $68, $0f, $43, $00, $0f, $50, $05, $03
    db $c7, $68, $42, $10, $3c, $11, $72, $68, $0b, $39, $68, $10, $3d, $0e, $06, $82
    db $68, $8e, $68, $9a, $68, $9d, $68, $a9, $68, $b8, $68, $19, $00, $10, $19, $01
    db $10, $19, $02, $0c, $06, $82, $68, $19, $00, $08, $19, $01, $08

    add hl, de
    ld [bc], a
    ld b, $06
    adc [hl]
    ld l, b

    db $01, $00, $00, $19, $00, $0c, $19, $01, $0c, $19, $02, $09, $06, $9d, $68, $19
    db $00, $04

    add hl, de
    ld bc, $1904
    ld [bc], a
    ld a, [bc]
    rrca
    dec a
    nop
    ld b, $82
    ld l, b

    db $19, $02, $03, $19, $00, $03, $19, $01, $17, $0f, $3d, $03, $06, $9d, $68

    call Call_000_359a
    call Call_002_7d84
    call Call_002_7d56
    call Call_002_6822
    jr nc, jr_002_68dd

    ld e, $02
    ld bc, $6860
    call Call_000_0846

jr_002_68dd:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    jr nc, jr_002_690c

    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_68ff

    ld e, $02
    ld bc, $6767
    jp Jump_000_37f4


jr_002_68ff:
    call Call_000_369d
    jr nc, jr_002_690c

    ld e, $02
    ld bc, $696b
    jp Jump_000_37f4


jr_002_690c:
    call Call_000_393e
    call Call_000_3765
    jr nc, jr_002_691c

    ld e, $02
    ld bc, $6e1b
    jp Jump_000_37f4


jr_002_691c:
    call Call_002_78fb
    jr nc, jr_002_6929

    ld e, $02
    ld bc, $6863
    jp Jump_000_37f4


jr_002_6929:
    ld e, $3e
    ld a, [de]
    or a
    jr z, jr_002_6941

    call Call_002_6d18
    call $6d3c
    jr nc, jr_002_693f

    ld e, $07
    ld bc, $6e2c
    jp Jump_000_37f4


jr_002_693f:
    jr jr_002_6968

jr_002_6941:
    call Call_000_366b
    jr nc, jr_002_694e

    ld e, $02
    ld bc, $69b8
    jp Jump_000_37f4


jr_002_694e:
    call Call_000_36e6
    jr nc, jr_002_695b

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_695b:
    call Call_000_3724
    jr nc, jr_002_6968

    ld e, $01
    ld bc, $411f
    jp Jump_000_37f4


jr_002_6968:
    jp Jump_000_37f7


    dec c
    and d
    dec [hl]
    rrca
    ld d, b
    dec b
    inc bc
    add [hl]
    ld l, c
    ld b, d
    dec c
    xor a
    dec [hl]
    db $10
    inc a
    ld de, $6980
    dec bc
    add hl, sp
    ld l, b
    add hl, de
    nop
    ld bc, $4006
    ld h, a
    ld e, $0e
    ld bc, $0060
    call Call_000_0d35
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    ld e, $3e
    ld a, [de]
    or a
    jr z, jr_002_69b5

    call Call_002_6d18
    call $6d3c
    jr nc, jr_002_69b5

    ld e, $07
    ld bc, $6e2c
    jp Jump_000_37f4


jr_002_69b5:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0c, $0f, $3c, $00, $0d, $06, $38, $0e, $08, $aa, $6f

    sub $69
    ld h, h
    ld l, d
    ld [hl], c
    ld l, e

    db $10, $6d

    inc d
    ld l, l
    ld c, l
    ld l, l
    ld d, c
    ld l, l
    inc b
    add b
    ld h, a
    ld a, [bc]
    inc bc
    ld [$426a], sp
    jr @+$11

    add hl, sp
    nop
    add hl, de
    ld [bc], a
    ld b, $24
    ld a, $0f
    add hl, sp
    ld bc, $0709
    add hl, de
    ld bc, $1902
    nop
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $0f02
    add hl, sp
    nop
    add hl, de
    ld [bc], a
    ld b, $06
    ld b, b
    ld h, a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_3972
    call Call_000_391a
    call c, Call_000_3972
    call Call_000_393e
    ld e, $39
    ld a, [de]
    or a
    jr z, jr_002_6a56

    ld a, [$a070]
    or a
    ld bc, $0160
    jr z, jr_002_6a31

    ld bc, $0042

jr_002_6a31:
    call Call_000_3c2b
    ld e, $0f
    ld a, [$a070]
    or a
    jr nz, jr_002_6a44

    ld a, $60
    ld [de], a
    inc e
    ld a, $01
    jr jr_002_6a4a

jr_002_6a44:
    ld a, $42
    ld [de], a
    inc e
    ld a, $00

jr_002_6a4a:
    ld [de], a
    ld hl, $6a5f
    ld a, $04
    call Call_000_3aaa
    call Call_000_3ae4

jr_002_6a56:
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    ld bc, $0000
    ld a, [bc]
    dec c
    rrca
    ld b, e
    nop
    inc b
    pop de
    ld h, a
    ld a, [bc]
    inc bc
    ld bc, $426b
    db $10
    ld b, l
    ld a, [de]
    add hl, sp
    rrca
    ld a, [hl-]
    nop
    add hl, de
    ld [$1904], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [$e222], sp
    ld l, d
    ld [bc], a
    inc h
    scf
    add hl, de
    nop
    dec b
    add hl, de
    ld bc, $1905
    ld [bc], a
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    inc b
    inc bc
    add hl, de
    dec b
    inc bc
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    add hl, bc
    inc bc
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1901
    ld [bc], a
    ld bc, $0319
    ld [bc], a
    add hl, de
    inc b
    ld bc, $0519
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld bc, $190a
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    inc bc
    add hl, de
    inc bc
    inc bc
    add hl, de
    inc b
    inc b
    add hl, de
    dec b
    inc b
    add hl, de
    ld b, $05
    add hl, de
    rlca
    dec b
    rrca
    inc e
    add b
    rrca
    ld a, [hl-]
    ld bc, $0919
    ld b, $19
    ld [$0604], sp
    ld b, b
    ld h, a
    dec b
    ld b, $10
    dec sp
    ld [de], a
    push af
    ld l, d
    rrca
    dec sp
    ld bc, $920d
    rrca
    inc d
    nop
    ld [$e206], sp
    ld l, d
    rrca
    dec sp
    nop
    dec c
    sub d
    rrca
    dec d
    nop
    ld [$e206], sp
    ld l, d
    ld a, [$a070]
    or a
    jr nz, jr_002_6b0c

    call Call_002_7d84
    jr jr_002_6b14

jr_002_6b0c:
    ld e, $08
    ld bc, $00e0
    call Call_000_0d23

jr_002_6b14:
    ld a, [$a070]
    or a
    jr nz, jr_002_6b1f

    call Call_002_7d56
    jr jr_002_6b24

jr_002_6b1f:
    ld e, $09
    call Call_000_0d04

jr_002_6b24:
    ld e, $39
    ld a, [de]
    ld e, $45
    ld [de], a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    jr nc, jr_002_6b45

    call Call_000_369d
    jr nc, jr_002_6b45

    call Call_000_35af

jr_002_6b45:
    call Call_000_393e
    ld e, $3a
    ld a, [de]
    or a
    ld hl, $6b6c
    ld a, $02
    jr z, jr_002_6b58

    ld hl, $6b67
    ld a, $02

jr_002_6b58:
    call Call_000_3aaa
    call Call_000_3ae4
    call Call_000_378b
    call Call_000_37a8
    jp Jump_000_37f7


    inc bc
    nop
    ld [$0408], a
    ld bc, $fc00
    ld a, [bc]
    ld de, $500f
    ld de, $2f04
    ld l, c
    ld a, [bc]
    inc h
    ld c, h
    jr jr_002_6b7f

    and d
    ld l, e
    ld b, d

jr_002_6b7f:
    add hl, de
    inc b
    ld b, $19
    dec b
    inc b
    add hl, de
    ld b, $04
    ld [$fe00], sp
    add hl, de
    nop
    inc b
    jr jr_002_6b9d

    and a
    ld [hl], h
    ld c, $07
    ld l, e
    ld l, h
    ld l, e
    ld l, h
    cp [hl]
    ld l, e
    cp [hl]
    ld l, e
    ld l, e

jr_002_6b9d:
    ld l, h
    cp [hl]
    ld l, e
    cp [hl]
    ld l, e
    ld a, $04
    ld [$a05d], a
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    call Call_000_3952
    jp Jump_000_37f7


    inc bc
    push bc
    ld l, e
    ld b, d
    ld bc, $0000
    ld a, [$a070]
    or a
    ld e, $60
    ld bc, $0400
    jr z, jr_002_6bd5

    ld e, $40
    ld bc, $0200

jr_002_6bd5:
    call Call_000_0d23
    ld a, [$a070]
    or a
    ld e, $0e
    jr z, jr_002_6be2

    ld e, $09

jr_002_6be2:
    call Call_000_0d04
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_6c36
    call Call_002_7952
    call Call_000_391a
    call Call_000_398d
    jr nc, jr_002_6c03

    ld e, $02
    ld bc, $6c63
    jp Jump_000_37f4


jr_002_6c03:
    call Call_000_3952
    ldh a, [$ffa6]
    and $02
    jr z, jr_002_6c14

    ld e, $02
    ld bc, $6d02
    jp Jump_000_37f4


jr_002_6c14:
    call Call_000_3765
    jr nc, jr_002_6c21

    ld e, $02
    ld bc, $6c4b
    jp Jump_000_37f4


jr_002_6c21:
    call Call_000_377c
    jr nc, jr_002_6c2e

    ld e, $02
    ld bc, $6c57
    jp Jump_000_37f4


jr_002_6c2e:
    jp Jump_000_37f7


Call_002_6c31:
    ld hl, $6c46
    jr jr_002_6c39

Call_002_6c36:
    ld hl, $6c41

jr_002_6c39:
    ld a, $04
    call Call_000_3aaa
    jp Jump_000_3ae4


    ld bc, $0000
    ld a, [bc]
    ld c, $01
    nop
    nop
    ld a, [de]
    ld e, $0d
    ld d, c
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $8f
    ld l, e
    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $8f
    ld l, e
    jr jr_002_6c72

    ld [hl], a
    rrca
    ld c, $06
    ld l, e
    ld l, h
    rrca
    ld a, [hl-]
    ld a, b
    inc bc
    sbc h
    ld l, h
    ld b, d

jr_002_6c72:
    db $10
    ld [hl], b
    ld [de], a
    adc a
    ld l, h
    dec c
    sub d
    rrca
    ld [de], a
    or $14
    dec c
    sub d
    rrca
    inc de
    ld a, [bc]
    inc d
    add hl, bc
    dec b
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld b, $92
    ld l, h
    add hl, de
    inc bc
    inc d
    inc bc
    sbc c
    ld l, h
    ld b, d
    ld bc, $0003
    call Call_002_7e4f
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    ld a, $04
    ld [$a05d], a
    ld e, $15
    ld a, [de]
    cp $01
    jr z, jr_002_6cb4

    cp $02
    jr nz, jr_002_6cb9

jr_002_6cb4:
    call Call_002_6c31
    jr jr_002_6cc3

jr_002_6cb9:
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    call nz, Call_002_6c36

jr_002_6cc3:
    call Call_002_7952
    call Call_002_76df
    call Call_002_75a1
    jr nc, jr_002_6cd6

    ld e, $02
    ld bc, $6bbe
    jp Jump_000_37f4


jr_002_6cd6:
    ldh a, [$ffa6]
    and $02
    jr z, jr_002_6ce4

    ld e, $02
    ld bc, $6d02
    jp Jump_000_37f4


jr_002_6ce4:
    ld e, $0d
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    or b
    ld e, $3a
    jr z, jr_002_6cf2

    ld a, $78
    ld [de], a

jr_002_6cf2:
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_002_6cff

    ld e, $02
    ld bc, $6d02
    jp Jump_000_37f4


jr_002_6cff:
    jp Jump_000_37f7


    inc h
    ld c, h
    add hl, de
    dec b
    inc b
    add hl, de
    ld b, $02
    add hl, de
    inc b
    ld [$4006], sp
    ld h, a

    db $1b, $b2, $6d, $07

    dec de
    rst $28
    ld l, l
    rlca

Call_002_6d18:
    ld e, $3e
    ld a, [de]
    or a
    ret z

    ld e, $15
    ld a, [de]
    cp $07
    ld hl, $6d32
    jr nz, jr_002_6d2a

    ld hl, $6d37

jr_002_6d2a:
    ld a, $04
    call Call_000_3aaa
    jp Jump_000_3ae4


    inc bc
    nop
    rrca
    dec bc
    rrca
    inc bc
    nop
    inc c
    ld [$1e0a], sp
    ld a, $1a
    dec a
    jr z, jr_002_6d4b

    ld [de], a
    ldh a, [$ffa5]
    and $02
    jr z, jr_002_6d4b

    and a
    ret


jr_002_6d4b:
    scf
    ret


    dec de
    ld b, l
    ld l, [hl]
    rlca
    inc b
    rst $20
    ld l, h
    ld a, [bc]
    inc bc
    call $426d
    rrca
    ld a, [hl-]
    dec c
    add hl, de
    nop
    inc b
    ld bc, $0301
    sub l
    ld l, l
    ld b, d
    rrca
    ccf
    ld [$1e24], sp
    dec c
    xor a
    rrca
    ld [de], a
    nop
    nop
    dec b
    ld b, $06
    ld l, b
    ld l, l
    inc bc
    call $426d
    rrca
    ld a, [hl-]
    nop
    dec c
    add l
    ld l, l
    add hl, de
    nop
    inc b
    ld b, $40
    ld h, a
    ld e, $15
    ld a, [de]
    cp $04
    ret c

    ld e, $45
    ld a, [de]
    xor $80
    ld [de], a
    ld e, $3b
    ld [de], a
    ret


    ld e, $3f
    ld a, [de]
    or a
    jr z, jr_002_6d9f

    dec a
    ld [de], a
    jr jr_002_6dcd

jr_002_6d9f:
    ldh a, [$ffa5]
    and $30
    jr z, jr_002_6dcd

    and $10
    ld e, $45
    ld a, [de]
    ld e, $15
    jr z, jr_002_6db8

    rla
    ld a, [de]
    jr nc, jr_002_6db5

    inc a
    jr jr_002_6dc0

jr_002_6db5:
    dec a
    jr jr_002_6dc0

jr_002_6db8:
    rla
    ld a, [de]
    jr nc, jr_002_6dbf

    dec a
    jr jr_002_6dc0

jr_002_6dbf:
    inc a

jr_002_6dc0:
    or a
    jr z, jr_002_6dcd

    cp $07
    jr z, jr_002_6dcd

    ld [de], a
    ld a, $08
    ld e, $3f
    ld [de], a

jr_002_6dcd:
    call Call_002_7f36
    call Call_002_6e05
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    call Call_000_378b
    call Call_000_37a8
    ld e, $3a
    ld a, [de]
    dec a
    jr nz, jr_002_6e01

    ldh a, [$ffa5]
    and $02
    jr nz, jr_002_6e02

    ld e, $02
    ld bc, $6d75
    jp Jump_000_37f4


jr_002_6e01:
    ld [de], a

jr_002_6e02:
    jp Jump_000_37f7


Call_002_6e05:
    ld a, [$a070]
    or a
    jr nz, jr_002_6e13

    ld e, $0e
    ld bc, $0060
    jp Jump_000_0d23


jr_002_6e13:
    ld e, $0e
    ld bc, $0060
    jp Jump_000_0d23


    dec bc
    ld h, e
    ld h, a
    dec c
    ld c, b
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $40
    ld h, a
    rrca
    ld d, b
    nop
    inc bc
    ccf
    ld l, [hl]
    ld b, d
    dec bc
    ld e, h
    ld a, [hl-]
    db $10
    inc a
    ld de, $6e3c
    dec bc
    add hl, sp
    ld l, b
    ld bc, $0005
    call Call_000_359a
    call Call_000_3602
    call Call_002_6822
    jr nc, jr_002_6e52

    ld e, $02
    ld bc, $6e2a
    call Call_000_0846

jr_002_6e52:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_002_75a1
    jr nc, jr_002_6e6d

    ld e, $02
    ld bc, $6ec9
    jp Jump_000_37f4


jr_002_6e6d:
    call Call_000_37bd
    jr nc, jr_002_6e7a

    ld e, $02
    ld bc, $6ec9
    jp Jump_000_37f4


jr_002_6e7a:
    call Call_002_7663
    jr nc, jr_002_6e87

    ld e, $02
    ld bc, $6ec9
    jp Jump_000_37f4


jr_002_6e87:
    ld e, $3e
    ld a, [de]
    or a
    jr z, jr_002_6e9f

    call Call_002_6d18
    call $6d3c
    jr nc, jr_002_6e9d

    ld e, $07
    ld bc, $6e2c
    jp Jump_000_37f4


jr_002_6e9d:
    jr jr_002_6ec6

jr_002_6e9f:
    call Call_000_366b
    jr nc, jr_002_6eac

    ld e, $02
    ld bc, $69b8
    jp Jump_000_37f4


jr_002_6eac:
    call Call_000_36e6
    jr nc, jr_002_6eb9

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_6eb9:
    call Call_000_3724
    jr nc, jr_002_6ec6

    ld e, $01
    ld bc, $411f
    jp Jump_000_37f4


jr_002_6ec6:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc bc
    nop
    ld l, a
    ld b, d
    db $10
    inc a
    ld de, $6edb
    dec bc
    add hl, sp
    ld l, b
    db $10
    ld l, a
    ld c, $03
    push hl
    ld l, [hl]
    db $fd
    ld l, [hl]
    pop af
    ld l, [hl]
    add hl, de
    nop
    db $10
    add hl, de
    ld bc, $1910
    ld [bc], a
    inc c
    ld b, $e5
    ld l, [hl]
    add hl, de
    nop
    ld b, $19
    ld bc, $1906
    ld [bc], a
    dec b
    ld b, $f1
    ld l, [hl]
    ld bc, $0000
    call Call_000_359a
    call Call_002_7e1a
    call Call_002_7e46
    call Call_002_6822
    jr nc, jr_002_6f16

    ld e, $02
    ld bc, $6ec9
    call Call_000_0846

jr_002_6f16:
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    jr nc, jr_002_6f38

    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_6f38

    ld e, $02
    ld bc, $6e2a
    jp Jump_000_37f4


jr_002_6f38:
    call Call_000_393e
    call Call_000_37cb
    jr nc, jr_002_6f48

    ld e, $02
    ld bc, $6ec9
    jp Jump_000_37f4


jr_002_6f48:
    call Call_000_377c
    jr nc, jr_002_6f55

    ld e, $02
    ld bc, $6f97
    jp Jump_000_37f4


jr_002_6f55:
    ld e, $3e
    ld a, [de]
    or a
    jr z, jr_002_6f6d

    call Call_002_6d18
    call $6d3c
    jr nc, jr_002_6f6b

    ld e, $07
    ld bc, $6e2c
    jp Jump_000_37f4


jr_002_6f6b:
    jr jr_002_6f94

jr_002_6f6d:
    call Call_000_366b
    jr nc, jr_002_6f7a

    ld e, $02
    ld bc, $69b8
    jp Jump_000_37f4


jr_002_6f7a:
    call Call_000_36e6
    jr nc, jr_002_6f87

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_6f87:
    call Call_000_3724
    jr nc, jr_002_6f94

    ld e, $01
    ld bc, $411f
    jp Jump_000_37f4


jr_002_6f94:
    jp Jump_000_37f7


    dec c
    ld d, a
    ld a, [hl-]
    inc b
    add hl, hl
    ld h, l
    ld a, [bc]
    rrca
    ld a, $00
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$6006], sp
    ld l, b

    db $0d, $a2, $35, $10, $70, $12

    ret nc

    ld [hl], d

    db $0f, $3c, $00, $0f, $50, $09, $0d, $d7, $6f, $0f, $80, $08, $0f, $81, $08, $03
    db $e0, $6f, $42, $0f, $39, $1e, $0f, $3d, $01, $24, $01, $04, $01, $66, $0a, $19
    db $00, $08, $01, $01, $00

    ld hl, $72be
    ld a, $01
    call Call_000_05cf
    ret


    call Call_002_7f1c
    ld a, [$a056]
    or a
    jr z, jr_002_6ff7

    ld a, [$a055]
    or a
    jr nz, jr_002_6ff7

    ld e, $02
    ld bc, $7067
    jp Jump_000_37f4


jr_002_6ff7:
    ld h, d
    ld l, $39
    ld a, [hl]
    or a
    jr z, jr_002_7001

    dec [hl]
    jr jr_002_701b

jr_002_7001:
    ldh a, [$ffa5]
    bit 1, a
    jr nz, jr_002_701b

    ld a, [$a056]
    or a
    jr nz, jr_002_701b

    ld a, [$a055]
    or a
    jr nz, jr_002_701b

    ld e, $02
    ld bc, $7048
    jp Jump_000_37f4


jr_002_701b:
    call Call_000_3a24
    jr nc, jr_002_7028

    ld e, $02
    ld bc, $6e1b
    jp Jump_000_37f4


jr_002_7028:
    ld e, $3d
    ld a, [de]
    or a
    jr z, jr_002_7032

    dec a
    ld [de], a
    jr jr_002_703a

jr_002_7032:
    ld hl, $7348
    ld a, $01
    call Call_000_05cf

jr_002_703a:
    ld hl, $7043
    call Call_000_3aaa
    jp Jump_000_37f7


    db $00, $16, $08, $16, $14

    inc h
    rst $38
    inc bc
    ld d, h
    ld [hl], b
    ld b, d
    add hl, de
    nop
    ld [$3006], sp
    ld h, a
    call Call_002_7f1c
    call Call_000_3765
    jr nc, jr_002_7064

    ld e, $02
    ld bc, $6e1b
    jp Jump_000_37f4


jr_002_7064:
    jp Jump_000_37f7


    db $24, $02, $03, $7f, $70, $42, $19, $02, $03, $19, $01, $02, $19, $03, $02, $19
    db $05, $02, $19, $03, $02, $06, $ae, $70

    ld e, $0e
    ld bc, $0060
    call Call_000_0d23
    call Call_002_7d7b
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    call Call_000_3765
    jr nc, jr_002_70ab

    ld e, $02
    ld bc, $71fd
    jp Jump_000_37f4


jr_002_70ab:
    jp Jump_000_37f7


    db $0b, $c8, $70, $04, $01, $66, $0a, $0d, $a7, $74, $0e, $07

    db $cc
    ld [hl], b

    db $cc, $70, $cc, $70

    call z, Call_002_7270
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], d
    ld [hl], c

    db $0f, $51, $0b, $0c, $0f, $43, $00, $0f, $50, $05, $03, $10, $71, $42, $10, $3d
    db $0e, $06, $e6, $70, $ef, $70, $f8, $70, $fb, $70

    inc b
    ld [hl], c

    db $04, $71, $19, $03, $10, $19, $04, $10, $06, $e6, $70, $19, $03, $08

    add hl, de
    inc b
    ld [$ef06], sp
    ld [hl], b

    db $01, $03, $00, $19, $03, $0c, $19, $04, $0c

    ld b, $fb
    ld [hl], b

    db $19, $03, $03, $19, $04, $17

    rrca
    dec a
    inc bc
    ld b, $fb
    ld [hl], b

    call Call_000_359a
    call Call_002_7d84
    call Call_002_7d56
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_713b

    ld e, $02
    ld bc, $7218
    jp Jump_000_37f4


jr_002_713b:
    call Call_000_3629
    jr nc, jr_002_7148

    ld e, $02
    ld bc, $725d
    jp Jump_000_37f4


jr_002_7148:
    call Call_000_3765
    jr nc, jr_002_7155

    ld e, $02
    ld bc, $71fd
    jp Jump_000_37f4


jr_002_7155:
    call Call_002_78fb
    jr nc, jr_002_7162

    ld e, $02
    ld bc, $70cf
    jp Jump_000_37f4


jr_002_7162:
    call Call_000_36e6
    jr nc, jr_002_716f

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_716f:
    jp Jump_000_37f7


    rrca
    ld d, b
    dec b
    rrca
    ld d, d
    nop
    inc bc
    sbc e
    ld [hl], c
    ld b, d
    db $10
    ld l, a
    ld c, $03
    add [hl]
    ld [hl], c
    sbc b
    ld [hl], c
    adc a
    ld [hl], c
    add hl, de
    inc bc
    db $10
    add hl, de
    inc b
    db $10
    ld b, $86
    ld [hl], c
    add hl, de
    inc bc
    ld b, $19
    inc b
    ld b, $06
    adc a
    ld [hl], c
    ld bc, $0003
    call Call_000_359a
    call Call_002_7e1a
    call Call_002_7e46
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    call Call_000_393e
    ldh a, [$ffb4]
    and $02
    jr z, jr_002_71c6

    ld e, $02
    ld bc, $7218
    jp Jump_000_37f4


jr_002_71c6:
    call Call_000_3629
    jr nc, jr_002_71d3

    ld e, $02
    ld bc, $725d
    jp Jump_000_37f4


jr_002_71d3:
    call Call_000_37cb
    jr nc, jr_002_71e0

    ld e, $02
    ld bc, $7172
    jp Jump_000_37f4


jr_002_71e0:
    call Call_000_377c
    jr nc, jr_002_71ed

    ld e, $02
    ld bc, $720c
    jp Jump_000_37f4


jr_002_71ed:
    call Call_000_36e6
    jr nc, jr_002_71fa

    ld e, $08
    ld bc, $6282
    jp Jump_000_37f4


jr_002_71fa:
    jp Jump_000_37f7


    dec bc
    ret z

    ld [hl], b
    dec c
    ld c, b
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    nop
    ld b, $b1
    ld [hl], b
    dec c
    ld d, a
    ld a, [hl-]
    dec c
    sub d
    rrca
    rlca
    nop
    ld [$cc06], sp
    ld [hl], b

    db $0d, $a2, $35, $0f, $51, $07, $0f, $50, $0a, $03, $4a, $72, $42, $0f, $58, $ff
    db $0d, $18, $3a, $12, $39, $72, $0d, $af, $0f, $01, $08, $08, $24, $1b, $06, $41
    db $72, $0d, $af, $0f, $06, $08, $08, $24, $32, $19, $01, $0c, $19, $00, $0c, $06
    db $30, $67

    call Call_002_7f1c
    call Call_000_3765
    jr nc, jr_002_725a

    ld e, $02
    ld bc, $6e1b
    jp Jump_000_37f4


jr_002_725a:
    jp Jump_000_37f7


    db $0d, $a2, $35, $0f, $50, $0b, $03, $c6, $72, $42, $0d, $f0, $39, $0e, $03

    ld [hl], d
    ld [hl], d

    db $8c, $72

Call_002_7270:
    adc h
    ld [hl], d
    rrca
    ld e, b
    rst $38
    rrca
    ld e, e
    rst $38
    rrca
    ld e, h
    nop
    rrca
    ld d, c
    rlca
    inc h
    inc bc
    add hl, de
    ld b, $04
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld b, $0a
    ld b, $30
    ld h, a

    db $0d, $07, $3a, $24, $29, $19, $06, $04, $19, $03, $02, $19, $06, $0a, $04, $29
    db $65, $0a, $01, $02, $18, $0d, $42, $3c, $0d, $67, $10, $0d, $7f, $35, $03, $cc
    db $72, $42, $0d, $77, $0f, $01, $19, $02, $08, $05, $01, $10, $64, $12, $b5, $72
    db $1c, $d7, $6e, $07, $0d, $80, $10, $06, $30, $67

    call Call_002_7f1c
    jp Jump_000_37f7


    call Call_000_34fd
    ret


    rrca
    ld d, b
    inc c
    inc bc
    dec l
    ld [hl], e
    ld b, d
    inc b
    ld bc, $0a66
    add hl, de
    nop
    ld b, $24
    dec d
    inc bc
    db $fd
    ld [hl], d
    ld b, d
    add hl, de
    rlca
    inc b
    add hl, de
    ld [$1904], sp
    add hl, bc
    inc b
    add hl, de
    ld a, [bc]
    inc b
    ld b, $e4
    ld [hl], d
    inc bc
    dec l
    ld [hl], e
    ld b, d
    add hl, de
    nop
    ld b, $06
    ld b, b
    ld h, a
    call Call_002_7f1c
    ld a, $02
    ld hl, $7328
    call Call_000_3aaa
    call Call_000_3ae9
    call Call_000_375b
    jr nc, jr_002_7318

    ld e, $02
    ld bc, $72f3
    jp Jump_000_37f4


jr_002_7318:
    call Call_000_377c
    jr nc, jr_002_7325

    ld e, $02
    ld bc, $6f97
    jp Jump_000_37f4


jr_002_7325:
    jp Jump_000_37f7


    inc bc
    add hl, bc
    rlca
    add hl, bc
    ld b, $cd
    inc e
    ld a, a
    call Call_000_377c
    jr nc, jr_002_733d

    ld e, $02
    ld bc, $6f97
    jp Jump_000_37f4


jr_002_733d:
    jp Jump_000_37f7


    db $10, $43, $1a, $71, $18, $0d, $6b, $3a, $22, $9b, $73, $02, $0f, $50, $0f, $0d
    db $53, $74, $24, $29, $0d, $42, $3c, $0d, $67, $10, $0d, $17, $74, $0d, $76, $35
    db $0f, $3a, $00, $03, $6b, $74, $42, $0d, $77, $0f, $01, $05, $01, $10, $64, $12
    db $6b, $73, $0d, $7f, $35, $05, $01, $10, $64, $12, $75, $73, $05, $01, $10, $3a
    db $12

    ld a, h
    ld [hl], e

    db $0f, $1c, $80, $0d, $80, $10, $0d, $20, $74, $0d, $2f, $74, $10, $71, $0e, $04

    nop
    ld b, b

    db $00, $40, $03, $53, $30, $67, $04, $a7, $70, $0a, $10, $71, $0e, $04

    xor e
    ld [hl], e

    db $ab, $73, $cf, $73, $f3, $73, $19, $00, $03, $19, $01, $03, $19, $02, $03, $19
    db $03, $03, $19, $04, $03, $19, $05, $03, $19, $06, $03, $19, $07, $03, $19, $08
    db $03

    add hl, de
    add hl, bc
    inc bc
    add hl, de
    ld a, [bc]
    inc bc
    ld b, $ab
    ld [hl], e

    db $19, $0b, $03, $19, $0c, $03, $19, $0d, $03, $19, $0e, $03, $19, $0f, $03, $19
    db $10, $03, $19, $11, $03, $19, $12, $03, $19, $13, $03

    add hl, de
    inc d
    inc bc
    add hl, de
    dec d
    inc bc
    ld b, $cf
    ld [hl], e

    db $19, $16, $03, $19, $17, $03, $19, $18, $03, $19, $19, $03, $19, $1a, $03, $19
    db $1b, $03, $19, $1c, $03, $19, $1d, $03, $19, $1e, $03

    add hl, de
    rra
    inc bc
    add hl, de
    jr nz, jr_002_7417

    ld b, $f3
    ld [hl], e

jr_002_7417:
    ld hl, $40da
    ld a, $01
    call Call_000_05cf
    ret


    ld a, $06
    ld [$a072], a
    xor a
    ld [$dee5], a
    ld hl, $dedf
    set 1, [hl]
    ret


    ld a, [$deff]
    or a
    ret nz

    ld a, [$a071]
    cp $02
    ld e, $09
    jr z, jr_002_7445

    cp $03
    ld e, $0b
    jr z, jr_002_7445

    ld e, $14

jr_002_7445:
    push bc
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    push bc
    ld a, [$a071]
    ld hl, $7467
    ld e, a
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    inc bc
    ld [bc], a
    db $01

    ld a, [$a064]
    or a
    jr z, jr_002_7474

    call Call_000_34fd

jr_002_7474:
    ld hl, $70bc
    ld a, $08
    call Call_000_05cf
    ret


    ld a, [$a051]
    ld hl, $7499
    add l
    ld l, a
    jr nc, jr_002_7488

    inc h

jr_002_7488:
    ld a, [hl]
    or a
    jr z, jr_002_7498

    ld [$a05b], a
    inc a
    ld [$dee0], a
    ld hl, $dede
    set 3, [hl]

jr_002_7498:
    ret


    db $ff

    rst $38
    nop
    nop
    nop

    db $00

    nop

    db $00

    nop
    rst $38
    rst $38
    rst $38
    nop
    nop

    push bc
    call Call_000_1ab3
    pop bc
    jr nz, jr_002_74e8

    ld a, $01
    ld [$a070], a
    push bc
    ld a, [$a071]
    ld hl, $7532
    add a
    add l
    ld l, a
    jr nc, jr_002_74c0

    inc h

jr_002_74c0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0620
    call Call_002_753a
    pop bc
    jr nc, jr_002_74d2

    ld e, $27
    ld a, $06
    ld [de], a
    ret


jr_002_74d2:
    ld h, d
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ld e, $27
    jr nz, jr_002_74e4

    ld a, $04
    ld [de], a
    ret


jr_002_74e4:
    ld a, $05
    ld [de], a
    ret


jr_002_74e8:
    xor a
    ld [$a070], a
    ld a, [$a050]
    cp $0d
    jr nz, jr_002_74f9

    ld e, $27
    ld a, $03
    ld [de], a
    ret


jr_002_74f9:
    ld e, $10
    ld a, [de]
    rla
    jr c, jr_002_7518

    push bc
    ld a, [$a071]
    ld hl, $7532
    add a
    add l
    ld l, a
    jr nc, jr_002_750c

    inc h

jr_002_750c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0620
    call Call_002_753a
    pop bc
    jr nc, jr_002_751e

jr_002_7518:
    ld e, $27
    ld a, $02
    ld [de], a
    ret


jr_002_751e:
    ld h, d
    ld l, $0f
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ld e, $27
    jr nz, jr_002_7530

    ld a, $00
    ld [de], a
    ret


jr_002_7530:
    ld a, $01
    ld [de], a
    ret


    db $26, $79, $3c, $79, $52, $79

Call_002_753a:
    ld h, d
    ldh a, [$ffaf]
    inc a
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00
    ld c, b
    call Call_000_1ad9
    call Call_000_184e
    jr c, jr_002_758f

    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_002_7568

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_002_758f

    ldh a, [$ffb1]
    add l
    jr jr_002_758f

jr_002_7568:
    ldh a, [$ffb3]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_002_7585

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_002_758f

    ldh a, [$ffb0]
    cpl
    scf
    adc l
    jr jr_002_758f

jr_002_7585:
    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ld a, $00
    ld [de], a
    scf
    ret


jr_002_758f:
    inc a
    jr nz, jr_002_7585

    ldh a, [$ff9a]
    ld d, a
    ldh a, [$ff9e]
    ld e, $4d
    ld [de], a
    ldh a, [$ff9f]
    ld e, $4e
    ld [de], a
    and a
    ret


Call_002_75a1:
    ld h, d
    ld e, $4d
    ld a, [de]
    ldh [$ff84], a
    xor a
    ldh [$ff85], a
    ldh a, [$ffaf]
    inc a
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00
    ld c, b
    call Call_000_1ad9
    call Call_000_184e
    jr c, jr_002_761e

    ldh a, [$ff84]
    cp $05
    ldh a, [$ffb0]
    jr z, jr_002_75e7

    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_002_75df

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_002_7610

    ldh a, [$ffb1]
    add l
    jr jr_002_760c

jr_002_75df:
    ldh a, [$ff84]
    cp $04
    jr z, jr_002_7602

    ldh a, [$ffb3]

jr_002_75e7:
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_002_7602

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_002_7610

    ldh a, [$ffb0]
    cpl
    scf
    adc l
    jr jr_002_760c

jr_002_7602:
    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ld a, $00
    ld [de], a
    scf
    ret


jr_002_760c:
    ld hl, $ff85
    inc [hl]

jr_002_7610:
    ld b, a
    ldh a, [$ff84]
    cp $04
    jr nc, jr_002_761d

    ldh a, [$ff9e]
    cp $04
    jr nc, jr_002_7602

jr_002_761d:
    ld a, b

jr_002_761e:
    inc a
    ld l, a
    rlca
    sbc a
    ld b, a
    ldh a, [$ff9a]
    ld h, a
    ld a, l
    ld l, $06
    ld [hl], $80
    inc l
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ldh a, [$ff9e]
    ld l, $4d
    ld [hl], a
    ldh a, [$ff9f]
    ld l, $4e
    ld [hl], a
    ldh a, [$ff85]
    or a
    jr z, jr_002_7658

    xor a
    ldh [$ff85], a
    ldh a, [$ffaf]
    inc a
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00
    ld c, b
    call Call_000_1ad9
    call Call_000_184e
    jr c, jr_002_761e

    ldh a, [$ff9a]
    ld h, a

jr_002_7658:
    ld d, h
    ld e, $4e
    ld a, [de]
    cp $31
    call z, Call_000_3c63
    and a
    ret


Call_002_7663:
    ldh a, [$ffa5]
    and $30
    jr z, jr_002_76c3

    ld h, d
    bit 4, a
    ld de, $0000
    jr z, jr_002_7696

    ldh a, [$ffb1]
    inc a
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_17a3
    jr nc, jr_002_7683

    rla
    jr c, jr_002_76c0

jr_002_7683:
    ldh a, [$ffae]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_17a3
    jr nc, jr_002_76bb

    rla
    jr nc, jr_002_76bb

    jr jr_002_76c0

jr_002_7696:
    ldh a, [$ffb0]
    dec a
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_16ef
    jr nc, jr_002_76a9

    dec a
    rla
    jr nc, jr_002_76c0

jr_002_76a9:
    ldh a, [$ffae]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_16ef
    jr nc, jr_002_76bb

    dec a
    rla
    jr nc, jr_002_76c0

jr_002_76bb:
    ldh a, [$ff9a]
    ld d, a
    scf
    ret


jr_002_76c0:
    ldh a, [$ff9a]
    ld d, a

jr_002_76c3:
    and a
    ret


Call_002_76c5:
    call Call_002_76df
    jr nc, jr_002_76dd

    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $0e
    ld a, [de]
    xor b
    rla
    jr c, jr_002_76dd

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_002_76dd:
    and a
    ret


Call_002_76df:
    ld h, d
    ld l, $0e
    ld de, $0000
    bit 7, [hl]
    jr nz, jr_002_7726

    ldh a, [$ffb1]
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_17a3
    jr nc, jr_002_76fc

    ld l, a
    rlca
    jp c, Jump_000_1e2a

jr_002_76fc:
    ldh a, [$ffae]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_17a3
    jr nc, jr_002_770f

    ld l, a
    rlca
    jp c, Jump_000_1e2a

jr_002_770f:
    ldh a, [$ffb2]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_17a3
    jp nc, Jump_000_1e6d

    ld l, a
    rlca
    jp c, Jump_000_1e2a

    jp Jump_000_1e6d


jr_002_7726:
    ldh a, [$ffb0]
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_16ef
    jr nc, jr_002_773a

    ld l, a
    dec a
    rlca
    jp nc, Jump_000_1e4c

jr_002_773a:
    ldh a, [$ffae]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_16ef
    jr nc, jr_002_774e

    ld l, a
    dec a
    rlca
    jp nc, Jump_000_1e4c

jr_002_774e:
    ldh a, [$ffb2]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, de
    ld d, h
    ld e, l
    call Call_000_16ef
    jp nc, Jump_000_1e6d

    ld l, a
    dec a
    rlca
    jp nc, Jump_000_1e4c

    jp Jump_000_1e6d


    ld h, d
    ldh a, [$ffae]
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00
    ld c, b
    call Call_000_1ad9
    call Call_000_18d7
    jr nc, jr_002_7780

    ld l, a
    dec a
    rlca
    jr nc, jr_002_77cb

    jp Jump_000_1e6d


jr_002_7780:
    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_18d7
    jp nc, Jump_002_77a6

    ld l, a
    ldh a, [$ff9e]
    cp $07
    jp z, Jump_002_77a6

    cp $06
    ld a, l
    jr nz, jr_002_77a2

    ldh a, [$ffb1]
    cpl
    scf
    adc l
    ld l, a

jr_002_77a2:
    dec a
    rlca
    jr nc, jr_002_77cb

Jump_002_77a6:
    ldh a, [$ffb3]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_18d7
    jp nc, Jump_000_1e6d

    ld l, a
    ldh a, [$ff9e]
    cp $06
    jp z, Jump_000_1e6d

    cp $07
    ld a, l
    jr nz, jr_002_77c6

    ldh a, [$ffb0]
    add l
    ld l, a

jr_002_77c6:
    dec a
    rlca
    jp c, Jump_000_1e6d

jr_002_77cb:
    ldh a, [$ff9a]
    ld h, a
    ld a, l
    ld l, $06
    ld [hl], $80
    inc l
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ld d, h
    scf
    ret


    xor a
    ld [$db7c], a
    ld h, d
    ldh a, [$ffaf]
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00
    ld c, b
    call Call_000_1ad9
    call Call_000_184e
    jr nc, jr_002_7801

    ld l, a
    rlca
    jr c, jr_002_7855

    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ldh a, [$ff9e]
    ld [de], a
    jr jr_002_784d

jr_002_7801:
    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_002_7822

    ld l, a
    ldh a, [$ff9e]
    cp $05
    jr z, jr_002_7822

    cp $04
    ld a, l
    jr nz, jr_002_781f

    ldh a, [$ffb1]
    add l
    ld l, a

jr_002_781f:
    rlca
    jr c, jr_002_7887

jr_002_7822:
    ldh a, [$ffb3]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_002_7845

    ld l, a
    ldh a, [$ff9e]
    cp $04
    jr z, jr_002_7845

    cp $05
    ld a, l
    jr nz, jr_002_7842

    ldh a, [$ffb0]
    cpl
    scf
    adc l
    ld l, a

jr_002_7842:
    rlca
    jr c, jr_002_7887

Jump_002_7845:
jr_002_7845:
    ldh a, [$ff9a]
    ld h, a
    ld d, a
    ld l, $4d
    ld [hl], $00

jr_002_784d:
    ld e, $4f
    ld a, [$db7c]
    ld [de], a
    and a
    ret


jr_002_7855:
    ld a, $01
    ld [$db7c], a
    ldh a, [$ff9a]
    ld h, a
    ld c, l
    ld l, $4d
    ld a, [hl]
    cp $04
    jr nc, jr_002_78bd

    ldh a, [$ff9e]
    ld e, $00
    cp $04
    jr c, jr_002_78a9

    ld l, $4f
    bit 0, [hl]
    jr nz, jr_002_788b

    ld l, $06
    ld b, [hl]
    ld l, $0f
    ld a, [hl+]
    scf
    sbc b
    ld a, [hl]
    sbc $ff
    bit 7, a
    jr nz, jr_002_788b

    add c
    jr nc, jr_002_788b

    jr jr_002_78bd

jr_002_7887:
    ldh a, [$ff9a]
    ld h, a
    ld c, l

jr_002_788b:
    ldh a, [$ff9e]
    cp $04
    ld e, $00
    jr c, jr_002_78a9

    ld l, $03
    ld b, [hl]
    ld l, $0d
    ld a, [hl+]
    jr z, jr_002_78a3

    scf
    sbc b
    ld a, [hl]
    sbc $00
    cpl
    jr jr_002_78a8

jr_002_78a3:
    scf
    sbc b
    ld a, [hl]
    sbc $ff

jr_002_78a8:
    ld e, a

jr_002_78a9:
    ld l, $06
    ld b, [hl]
    ld l, $0f
    ld a, [hl+]
    scf
    sbc b
    ld a, [hl]
    sbc $ff
    add e
    bit 7, a
    jr nz, jr_002_7845

    add c
    jp nc, Jump_002_7845

jr_002_78bd:
    ld l, $06
    ld [hl], $80
    inc l
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, $ff
    adc [hl]
    ld [hl], a
    ldh a, [$ff9e]
    ld l, $4d
    ld [hl], a
    ld d, h
    ldh a, [$ff9f]
    ld l, $4e
    ld [hl], a
    ld l, $4f
    ld [hl], $00
    scf
    ret


Call_002_78da:
    ld e, $6f
    ldh a, [$ffa6]
    and $01
    ld b, $02
    jr nz, jr_002_78f7

    ldh a, [$ffa5]
    and $f1
    ld b, $00
    jr z, jr_002_78ed

    inc b

jr_002_78ed:
    ld a, [de]
    cp $02
    jr z, jr_002_78f5

    cp b
    jr nz, jr_002_78f7

jr_002_78f5:
    and a
    ret


jr_002_78f7:
    ld a, b
    ld [de], a
    scf
    ret


Call_002_78fb:
    ld e, $3d
    ldh a, [$ffa6]
    and $01
    ld b, $05
    jr nz, jr_002_7922

    ldh a, [$ffa5]
    ld b, $00
    and $f0
    jr z, jr_002_7918

    inc b
    bit 6, a
    jr nz, jr_002_7918

    inc b
    bit 7, a
    jr nz, jr_002_7918

    inc b

jr_002_7918:
    ld a, [de]
    cp $05
    jr z, jr_002_7920

    cp b
    jr nz, jr_002_7922

jr_002_7920:
    and a
    ret


jr_002_7922:
    ld a, b
    ld [de], a
    scf
    ret


Call_002_7926:
    ld hl, $ffae
    ld a, $f3
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $f7
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $17
    ld [hl+], a
    ld a, $ef
    ld [hl+], a
    ret


Call_002_793c:
    ld hl, $ffae
    ld a, $f5
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $f7
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $13
    ld [hl+], a
    ld a, $ef
    ld [hl+], a
    ret


Call_002_7952:
    ld hl, $ffae
    ld a, $f4
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $f7
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $ef
    ld [hl+], a
    ret


Call_002_7968:
    ld e, $28
    jp Jump_000_0d04


Call_002_796d:
    ld e, $6d
    ld a, [de]
    cp $03
    jr nc, jr_002_7995

    cp $01
    jr z, jr_002_7983

    jr nc, jr_002_798c

jr_002_797a:
    ld hl, $200e
    ld bc, HeaderMaskROMVersion
    jp Jump_000_386e


jr_002_7983:
    ld hl, $080e
    ld bc, $00a0
    jp Jump_000_386e


jr_002_798c:
    ld hl, $200e
    ld bc, $01e0
    jp Jump_000_386e


jr_002_7995:
    cp $04
    jr z, jr_002_7983

    jr nc, jr_002_798c

    jr jr_002_797a

Call_002_799d:
    ld e, $6d
    ld a, [de]
    cp $03
    jr nc, jr_002_79f3

    cp $01
    jr z, jr_002_79c1

    jr nc, jr_002_79da

jr_002_79aa:
    ld bc, HeaderMaskROMVersion
    ld hl, $00a6
    ld a, $20
    ldh [$ff85], a
    ld a, $10
    ldh [$ff86], a
    ld a, $0e
    ldh [$ff80], a
    ldh [$ff81], a
    jp Jump_000_38bc


jr_002_79c1:
    ld bc, $00a0
    ld hl, $00f0
    ld a, $08
    ldh [$ff85], a
    ld a, $10
    ldh [$ff86], a
    ld a, $0e
    ldh [$ff80], a
    ld a, $0e
    ldh [$ff81], a
    jp Jump_000_38bc


jr_002_79da:
    ld bc, $01e0
    ld hl, $0050
    ld a, $20
    ldh [$ff85], a
    ld a, $04
    ldh [$ff86], a
    ld a, $0e
    ldh [$ff80], a
    ld a, $0e
    ldh [$ff81], a
    jp Jump_000_38bc


jr_002_79f3:
    cp $04
    jr z, jr_002_79c1

    jr nc, jr_002_79da

    jr jr_002_79aa

Call_002_79fb:
    ld b, $00
    ld e, $4d
    ld a, [de]
    cp $04
    jr c, jr_002_7a76

    ldh a, [$ffa5]
    jr nz, jr_002_7a3f

    and $10
    ld a, [$a070]
    jr z, jr_002_7a27

    or a
    jr nz, jr_002_7a1f

    bit 0, b
    ld e, $04
    jr z, jr_002_7a1a

    ld e, $04

jr_002_7a1a:
    ld bc, $0010
    jr jr_002_7a24

jr_002_7a1f:
    ld e, $02
    ld bc, $0008

jr_002_7a24:
    jp Jump_000_0ca2


jr_002_7a27:
    or a
    jr nz, jr_002_7a37

    bit 0, b
    ld e, $20
    jr z, jr_002_7a32

    ld e, $18

jr_002_7a32:
    ld bc, $fe20
    jr jr_002_7a3c

jr_002_7a37:
    ld e, $0b
    ld bc, $ff00

jr_002_7a3c:
    jp Jump_000_0cd3


jr_002_7a3f:
    and $20
    ld a, [$a070]
    jr z, jr_002_7a5e

    or a
    jr nz, jr_002_7a56

    bit 0, b
    ld e, $04
    jr z, jr_002_7a51

    ld e, $04

jr_002_7a51:
    ld bc, $fff0
    jr jr_002_7a5b

jr_002_7a56:
    ld e, $02
    ld bc, $fff8

jr_002_7a5b:
    jp Jump_000_0cd3


jr_002_7a5e:
    or a
    jr nz, jr_002_7a6e

    bit 0, b
    ld e, $20
    jr z, jr_002_7a69

    ld e, $18

jr_002_7a69:
    ld bc, $01e0
    jr jr_002_7a73

jr_002_7a6e:
    ld e, $0b
    ld bc, $0100

jr_002_7a73:
    jp Jump_000_0ca2


jr_002_7a76:
    ldh a, [$ffa5]
    and $30
    jr z, jr_002_7a9e

    ld h, a
    ld a, [$a070]
    or a
    jr nz, jr_002_7a90

    bit 0, b
    ld e, $20
    jr z, jr_002_7a8b

    ld e, $18

jr_002_7a8b:
    ld bc, HeaderMaskROMVersion
    jr jr_002_7a95

jr_002_7a90:
    ld e, $0b
    ld bc, $0099

jr_002_7a95:
    ld a, h
    and $10
    jp nz, Jump_000_0ca2

    jp Jump_000_0cc9


jr_002_7a9e:
    ld a, [$a070]
    or a
    jr nz, jr_002_7aae

    bit 0, b
    ld e, $0e
    jr z, jr_002_7ab0

    ld e, $04
    jr jr_002_7ab0

jr_002_7aae:
    ld e, $05

jr_002_7ab0:
    jp Jump_000_0d04


Call_002_7ab3:
    ld hl, $160e
    ld bc, HeaderMaskROMVersion
    jp Jump_000_3894


Call_002_7abc:
    ld bc, HeaderMaskROMVersion
    ld hl, $00a6
    ld a, $16
    ldh [$ff85], a
    ld a, $0b
    ldh [$ff86], a
    ld a, $0e
    ldh [$ff80], a
    ldh [$ff81], a
    jp Jump_000_38bc


Call_002_7ad3:
    ld e, $6d
    ld a, [de]
    cp $03
    jr c, jr_002_7adc

    sub $03

jr_002_7adc:
    cp $01
    jr z, jr_002_7aeb

    jr nc, jr_002_7af4

    ld hl, $0b05
    ld bc, $0099
    jp Jump_000_386e


jr_002_7aeb:
    ld hl, $0305
    ld bc, $0040
    jp Jump_000_386e


jr_002_7af4:
    ld hl, $0b05
    ld bc, $0100
    jp Jump_000_386e


Call_002_7afd:
    ld e, $6d
    ld a, [de]
    cp $03
    jr c, jr_002_7b06

    sub $03

jr_002_7b06:
    cp $01
    jr z, jr_002_7b23

    jr nc, jr_002_7b3c

    ld bc, $0099
    ld hl, $004d
    ld a, $0b
    ldh [$ff85], a
    ld a, $06
    ldh [$ff86], a
    ld a, $05
    ldh [$ff80], a
    ldh [$ff81], a
    jp Jump_000_38bc


jr_002_7b23:
    ld bc, $0040
    ld hl, $0080
    ld a, $03
    ldh [$ff85], a
    ld a, $06
    ldh [$ff86], a
    ld a, $05
    ldh [$ff80], a
    ld a, $05
    ldh [$ff81], a
    jp Jump_000_38bc


jr_002_7b3c:
    ld bc, $0100
    ld hl, $0020
    ld a, $0b
    ldh [$ff85], a
    ld a, $02
    ldh [$ff86], a
    ld a, $05
    ldh [$ff80], a
    ld a, $05
    ldh [$ff81], a
    jp Jump_000_38bc


Call_002_7b55:
    ld h, d
    ld l, $6e
    ld a, [hl]
    or a
    jr z, jr_002_7b5f

    dec [hl]
    jr jr_002_7b6e

jr_002_7b5f:
    ldh a, [$ffa5]
    and $41
    jr z, jr_002_7b6e

    ld [hl], $0f
    ld l, $0f
    ld [hl], $00
    inc l
    ld [hl], $ff

jr_002_7b6e:
    ld e, $08
    ld bc, $00e0
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_7b7e

    ld e, $10
    ld bc, $0200

jr_002_7b7e:
    jp Jump_000_0d23


Call_002_7b81:
    ld h, d
    ld l, $6e
    ld a, [hl]
    or a
    jr z, jr_002_7b8b

    dec [hl]
    jr jr_002_7b9a

jr_002_7b8b:
    ldh a, [$ffa5]
    and $41
    jr z, jr_002_7b9a

    ld [hl], $0f
    ld l, $0f
    ld [hl], $00
    inc l
    ld [hl], $ff

jr_002_7b9a:
    ld e, $08
    ld bc, $00e0
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_7baa

    ld e, $10
    ld bc, $0200

jr_002_7baa:
    jp Jump_000_0d23


Call_002_7bad:
    ld hl, $0809
    ld bc, $010c
    jp Jump_000_3894


Call_002_7bb6:
    ld bc, $010c
    ld hl, $0086
    ld a, $08
    ldh [$ff85], a
    ld a, $04
    ldh [$ff86], a
    ld a, $09
    ldh [$ff80], a
    ldh [$ff81], a
    jp Jump_000_38bc


Call_002_7bcd:
    ld e, $6d
    ld a, [de]
    ld hl, $7bdd
    add l
    ld l, a
    jr nc, jr_002_7bd8

    inc h

jr_002_7bd8:
    ld a, [hl]
    ld e, a
    jp Jump_000_0d04


    db $16, $16, $16

    inc b
    inc b
    inc b

Call_002_7be3:
    ld e, $4e
    ld a, [de]
    and $f0
    cp $70
    ld b, $00
    jr z, jr_002_7bf6

    inc b
    ld a, [$a070]
    or a
    jr nz, jr_002_7bf6

    inc b

jr_002_7bf6:
    ld e, $4d
    ld a, [de]
    cp $04
    jr c, jr_002_7c2b

    ld e, $20
    jr nz, jr_002_7c16

    bit 1, b
    jr nz, jr_002_7c10

    ld e, $0b
    bit 0, b
    ld bc, $ff00
    jr nz, jr_002_7c13

    ld e, $18

jr_002_7c10:
    ld bc, $fe20

jr_002_7c13:
    jp Jump_000_0cd3


jr_002_7c16:
    bit 1, b
    jr nz, jr_002_7c25

    ld e, $0b
    bit 0, b
    ld bc, $0100
    jr nz, jr_002_7c28

    ld e, $18

jr_002_7c25:
    ld bc, $01e0

jr_002_7c28:
    jp Jump_000_0ca2


jr_002_7c2b:
    bit 1, b
    ld e, $0e
    jr nz, jr_002_7c39

    bit 0, b
    ld e, $05
    jr nz, jr_002_7c39

    ld e, $04

jr_002_7c39:
    jp Jump_000_0d04


Call_002_7c3c:
    ld hl, $160e
    ld bc, $0160
    jp Jump_000_3894


Call_002_7c45:
    ld bc, $0160
    ld hl, $00a6
    ld a, $16
    ldh [$ff85], a
    ld a, $0b
    ldh [$ff86], a
    ld a, $0e
    ldh [$ff80], a
    ldh [$ff81], a
    jp Jump_000_38bc


Call_002_7c5c:
    ldh a, [$ffa5]
    and $c1
    ldh [$ff84], a
    bit 0, a
    jr z, jr_002_7c7e

    ld e, $43
    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_002_7c75

    ld a, [de]
    or a
    jr z, jr_002_7c7e

    dec a
    jr jr_002_7c77

jr_002_7c75:
    ld a, $10

jr_002_7c77:
    ld [de], a
    ldh a, [$ff84]
    and $fe
    ldh [$ff84], a

jr_002_7c7e:
    ld h, d
    ld l, $10
    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_002_7cbc

jr_002_7c87:
    ld a, [hl-]
    rla
    jr c, jr_002_7c98

    ld a, [hl+]
    sub $e0
    ld a, [hl]
    sbc $00
    jr c, jr_002_7ca0

jr_002_7c93:
    ld e, $12
    jp Jump_000_0d85


jr_002_7c98:
    ld a, [hl+]
    sub $20
    ld a, [hl]
    sbc $ff
    jr c, jr_002_7c93

jr_002_7ca0:
    ldh a, [$ff84]
    or a
    jr nz, jr_002_7caa

    ld e, $08
    jp Jump_000_0d85


jr_002_7caa:
    ld e, $10
    bit 7, a
    jr z, jr_002_7cb6

    ld bc, $00e0
    jp Jump_000_0d35


jr_002_7cb6:
    ld bc, $ff20
    jp Jump_000_0d70


jr_002_7cbc:
    ldh a, [$ff84]
    and $c0
    or a
    jr nz, jr_002_7ccb

    ldh a, [$ffa5]
    and $30
    jr nz, jr_002_7c87

    jr jr_002_7cd2

jr_002_7ccb:
    bit 7, a
    ld bc, $0150
    jr nz, jr_002_7cd5

jr_002_7cd2:
    ld bc, $feb0

jr_002_7cd5:
    ld [hl], b
    dec l
    ld [hl], c
    ret


Call_002_7cd9:
    ld e, $45
    ldh a, [$ffa5]
    and $30
    ldh [$ff84], a
    jr z, jr_002_7cec

    bit 4, a
    ld a, $40
    jr nz, jr_002_7ceb

    ld a, $c0

jr_002_7ceb:
    ld [de], a

jr_002_7cec:
    ld h, d
    ld l, $0e
    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_002_7d2a

jr_002_7cf5:
    ld a, [hl-]
    rla
    jr c, jr_002_7d06

    ld a, [hl+]
    sub $0c
    ld a, [hl]
    sbc $01
    jr c, jr_002_7d0e

jr_002_7d01:
    ld e, $12
    jp Jump_000_0d04


jr_002_7d06:
    ld a, [hl+]
    sub $f4
    ld a, [hl]
    sbc $fe
    jr c, jr_002_7d01

jr_002_7d0e:
    ldh a, [$ff84]
    or a
    jr nz, jr_002_7d18

    ld e, $08
    jp Jump_000_0d04


jr_002_7d18:
    ld e, $10
    bit 4, a
    jr z, jr_002_7d24

    ld bc, $010c
    jp Jump_000_0cb4


jr_002_7d24:
    ld bc, $fef4
    jp Jump_000_0cef


jr_002_7d2a:
    ldh a, [$ff84]
    or a
    jr z, jr_002_7cf5

    ld e, $45
    ld a, [de]
    rla
    ld bc, $0192
    jr nc, jr_002_7d3b

    ld bc, $fe6e

jr_002_7d3b:
    ld [hl], b
    dec l
    ld [hl], c
    ret


Call_002_7d3f:
    ld bc, $010c
    ld hl, $0086
    ld a, $10
    ldh [$ff85], a
    ld a, $04
    ldh [$ff86], a
    ld a, $08
    ldh [$ff80], a
    ldh [$ff81], a
    jp Jump_000_38bc


Call_002_7d56:
    ldh a, [$ffa6]
    bit 0, a
    jr z, jr_002_7d72

    ldh a, [$ffa5]
    and $30
    jr z, jr_002_7d72

    bit 4, a
    ld bc, $01b9
    jr nz, jr_002_7d6c

    ld bc, $fe47

jr_002_7d6c:
    ld h, d
    ld l, $0e
    ld [hl], b
    dec l
    ld [hl], c

jr_002_7d72:
    ld hl, $1a0c
    ld bc, $0126
    jp Jump_000_3894


Call_002_7d7b:
    ld hl, $1a0c
    ld bc, $0126
    jp Jump_000_386e


Call_002_7d84:
    ldh a, [$ffa5]
    and $c1
    ldh [$ff84], a
    bit 0, a
    jr z, jr_002_7da6

    ld e, $43
    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_002_7d9d

    ld a, [de]
    or a
    jr z, jr_002_7da6

    dec a
    jr jr_002_7d9f

jr_002_7d9d:
    ld a, $10

jr_002_7d9f:
    ld [de], a
    ldh a, [$ff84]
    and $fe
    ldh [$ff84], a

jr_002_7da6:
    ld h, d
    ld l, $10
    ldh a, [$ffa6]
    bit 0, a
    jr nz, jr_002_7dfd

jr_002_7daf:
    ld a, [hl-]
    rla
    jr nc, jr_002_7dc0

    ld a, [hl+]
    sub $b3
    ld a, [hl]
    sbc $fe
    jr nc, jr_002_7dc0

    ld e, $1c
    jp Jump_000_0d85


jr_002_7dc0:
    ldh a, [$ff84]
    bit 6, a
    jr nz, jr_002_7dd6

    bit 0, a
    jr nz, jr_002_7dd6

    bit 7, a
    jr z, jr_002_7dde

    ld e, $20
    ld bc, HeaderMaskROMVersion
    jp Jump_000_0d23


jr_002_7dd6:
    ld e, $20
    ld bc, $feb3
    jp Jump_000_0d70


jr_002_7dde:
    ld bc, $0060
    ld l, $10
    ld a, [hl-]
    rla
    jr c, jr_002_7df8

    ldh a, [$ffa5]
    and $30
    jr nz, jr_002_7df3

    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_002_7df8

jr_002_7df3:
    ld e, $0e
    jp Jump_000_0d85


jr_002_7df8:
    ld e, $0e
    jp Jump_000_0d23


jr_002_7dfd:
    ldh a, [$ff84]
    ld e, a
    and $c0
    jr nz, jr_002_7e0c

    ldh a, [$ffa5]
    and $30
    jr nz, jr_002_7daf

    jr jr_002_7e13

jr_002_7e0c:
    bit 7, a
    ld bc, $01f3
    jr nz, jr_002_7e16

jr_002_7e13:
    ld bc, $fe0d

jr_002_7e16:
    ld [hl], b
    dec l
    ld [hl], c
    ret


Call_002_7e1a:
    ld h, d
    ld l, $6e
    ld a, [hl]
    or a
    jr z, jr_002_7e24

    dec [hl]
    jr jr_002_7e33

jr_002_7e24:
    ldh a, [$ffa5]
    and $41
    jr z, jr_002_7e33

    ld [hl], $0f
    ld l, $0f
    ld [hl], $00
    inc l
    ld [hl], $ff

jr_002_7e33:
    ld e, $08
    ld bc, $00e0
    ldh a, [$ffa5]
    and $80
    jr z, jr_002_7e43

    ld e, $10
    ld bc, $0200

jr_002_7e43:
    jp Jump_000_0d23


Call_002_7e46:
    ld hl, $0809
    ld bc, $010c
    jp Jump_000_3894


Call_002_7e4f:
    ld e, $4e
    ld a, [de]
    and $f0
    cp $70
    ld b, $00
    jr z, jr_002_7e62

    inc b
    ld a, [$a070]
    or a
    jr nz, jr_002_7e62

    inc b

jr_002_7e62:
    ld e, $4d
    ld a, [de]
    cp $04
    jr c, jr_002_7e97

    ld e, $20
    jr nz, jr_002_7e82

    bit 1, b
    jr nz, jr_002_7e7c

    ld e, $0b
    bit 0, b
    ld bc, $ff00
    jr nz, jr_002_7e7f

    ld e, $18

jr_002_7e7c:
    ld bc, $fe20

jr_002_7e7f:
    jp Jump_000_0cd3


jr_002_7e82:
    bit 1, b
    jr nz, jr_002_7e91

    ld e, $0b
    bit 0, b
    ld bc, $0100
    jr nz, jr_002_7e94

    ld e, $18

jr_002_7e91:
    ld bc, $01e0

jr_002_7e94:
    jp Jump_000_0ca2


jr_002_7e97:
    bit 1, b
    ld e, $0e
    jr nz, jr_002_7ea5

    bit 0, b
    ld e, $05
    jr nz, jr_002_7ea5

    ld e, $04

jr_002_7ea5:
    jp Jump_000_0d04


Call_002_7ea8:
    call Call_002_7ec2
    call Call_002_7ecf
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7926
    call Call_000_391a
    call Call_000_3972
    jp Jump_000_3952


Call_002_7ec2:
    ld a, [$a070]
    or a
    ld e, $0e
    jr z, jr_002_7ecc

    ld e, $09

jr_002_7ecc:
    jp Jump_000_0d04


Call_002_7ecf:
    ld a, [$a070]
    or a
    ld e, $20
    ld bc, $0280
    jr z, jr_002_7edf

    ld e, $08
    ld bc, $00e0

jr_002_7edf:
    jp Jump_000_0d23


Call_002_7ee2:
    call Call_002_7efc
    call Call_002_7f09
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_793c
    call Call_000_391a
    call Call_000_3972
    jp Jump_000_3952


Call_002_7efc:
    ld a, [$a070]
    or a
    ld e, $0e
    jr z, jr_002_7f06

    ld e, $08

jr_002_7f06:
    jp Jump_000_0d04


Call_002_7f09:
    ld a, [$a070]
    or a
    jr z, jr_002_7f14

    ld e, $08
    jp Jump_000_0d85


jr_002_7f14:
    ld e, $20
    ld bc, $0280
    jp Jump_000_0d23


Call_002_7f1c:
    call Call_002_7f36
    call Call_002_7f43
    ld hl, $6e10
    ld a, $08
    call Call_000_05cf
    call Call_002_7952
    call Call_000_391a
    call Call_000_3972
    jp Jump_000_393e


Call_002_7f36:
    ld a, [$a070]
    or a
    ld e, $0c
    jr z, jr_002_7f40

    ld e, $09

jr_002_7f40:
    jp Jump_000_0d04


Call_002_7f43:
    ld a, [$a070]
    or a
    jr nz, jr_002_7f4e

    ld e, $0e
    jp Jump_000_0d85


jr_002_7f4e:
    ld e, $08
    ld bc, $00e0
    jp Jump_000_0d23


    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
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
    add b
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
    ld a, a
    rst $38
    cp a
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
