; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    ld bc, $1777
    ld hl, $5aa4
    ld a, $07
    call Call_000_05cf
    xor a
    ld [$df17], a
    call Call_000_1584
    ld hl, $df19
    ld [hl+], a
    ld [hl], a
    ld [$df1b], a
    ld [$da2e], a
    ld [$da2f], a
    ld e, $ff
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ld a, $19
    call Call_019_40cd

jr_019_402f:
    call Call_000_0496
    call Call_000_086b
    call Call_000_04ae
    call Call_000_0343
    ld a, [$df18]
    ld h, a
    ld l, $00
    ld a, [hl]
    inc a
    jr nz, jr_019_402f

    ld a, [$df17]
    cp $03
    jr z, jr_019_4068

    cp $04
    jr z, jr_019_4068

    cp $06
    jr nc, jr_019_4083

    ld hl, $40bb
    add l
    ld l, a
    jr nc, jr_019_405c

    inc h

jr_019_405c:
    ld a, [hl]
    ld d, a
    ld e, $04
    ld hl, $4271
    ld a, $1a
    call Call_000_05cf

jr_019_4068:
    call Call_000_0437
    ld a, [$df17]
    ld hl, $40c1
    add a
    add l
    ld l, a
    jr nc, jr_019_4077

    inc h

jr_019_4077:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0620
    ld hl, $df17
    inc [hl]
    jr jr_019_402f

jr_019_4083:
    call Call_000_0496
    call Call_000_04ae
    call Call_000_0343
    call Call_000_0357
    ldh a, [$ffa5]
    bit 0, a
    jr nz, jr_019_4099

    bit 3, a
    jr z, jr_019_4083

jr_019_4099:
    ld e, $ff
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ld a, [$df0a]
    cp $04
    ld de, $1505
    jr nz, jr_019_40b0

    ld de, $1705

jr_019_40b0:
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    jp Jump_000_0437


    ld c, $0f
    db $10
    ld de, $1312
    ld a, [hl+]
    ld b, c
    ld c, h
    ld b, c
    ld l, [hl]
    ld b, c
    sub e
    ld b, c
    cp b
    ld b, c
    db $e4
    ld b, c

Call_019_40cd:
    call Call_019_4233
    call Call_019_4218
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $da
    ld hl, $a0b3
    call Call_000_07c4
    ld a, h
    ld [$df18], a
    ld a, $e4
    ld [$cd09], a
    ld a, $d0
    ld [$cd0a], a
    ld a, $e4
    ld [$cd0b], a
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    ld de, $0d16
    push de
    ld a, e
    cp $ff
    jr z, jr_019_410e

    ld hl, $6011
    ld a, $1e
    call Call_000_05cf

jr_019_410e:
    push af
    ld hl, $5df3
    ld a, $1e
    call Call_000_05cf
    call Call_000_0357
    pop af
    dec a
    jr nz, jr_019_410e

    pop de
    ld e, $04
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf
    ret


    call Call_019_4251
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $db
    ld hl, $a0b3
    call Call_000_07c4
    ld a, h
    ld [$df18], a
    ld a, $e4
    ld [$cd09], a
    ld de, $0f17
    jp Jump_019_434c


    call Call_019_426f
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $db
    ld hl, $a0b3
    call Call_000_07c4
    ld a, h
    ld [$df18], a
    ld a, $e4
    ld [$cd09], a
    ld de, $1018
    jp Jump_019_434c


    call Call_019_428d
    call Call_019_422a
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $dc
    ld hl, $a0b3
    call Call_000_07c4
    ld a, h
    ld [$df18], a
    ld a, $e4
    ld [$cd09], a
    ld de, $1119
    jp Jump_019_434c


    call Call_019_42ab
    call Call_019_4218
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $de
    ld hl, $a0b3
    call Call_000_07c4
    ld a, h
    ld [$df18], a
    ld a, $d2
    ld [$cd09], a
    ld de, $121b
    jp Jump_019_434c


    call Call_019_42c9
    call Call_019_4221
    ld hl, $4000
    ld a, $08
    call Call_000_05cf
    ld a, $e2
    ld hl, $a0b3
    call Call_000_07c4
    ld a, h
    ld [$df18], a
    ld a, $e8
    ldh [rSCY], a
    ld [$da2e], a
    ld a, $e4
    ld [$cd09], a
    ld de, $141c
    jp Jump_019_434c


    call Call_019_4305
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld [$da00], a
    ld [$da01], a
    ld [$da2e], a
    ld [$da2f], a
    ld a, $e4
    ld [$cd09], a
    ld hl, $5ada
    ld a, $07
    call Call_000_05cf
    ld a, [$df0a]
    cp $04
    jr z, jr_019_4212

    ld de, $161e
    jp Jump_019_434c


jr_019_4212:
    ld de, $1823
    jp Jump_019_434c


Call_019_4218:
    ld hl, $4f74
    ld de, $8000
    jp Jump_000_0708


Call_019_4221:
    ld hl, $5193
    ld de, $8000
    jp Jump_000_0708


Call_019_422a:
    ld hl, $5635
    ld de, $8000
    jp Jump_000_0708


Call_019_4233:
    ld hl, $5b87
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $729c
    ld de, $9800
    jp Jump_000_0708


Call_019_4251:
    ld hl, $5f00
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $731c
    ld de, $9800
    jp Jump_000_0708


Call_019_426f:
    ld hl, $62a4
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $73c9
    ld de, $9800
    jp Jump_000_0708


Call_019_428d:
    ld hl, $668b
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $7478
    ld de, $9800
    jp Jump_000_0708


Call_019_42ab:
    ld hl, $6ba8
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $752c
    ld de, $9800
    jp Jump_000_0708


Call_019_42c9:
    ld hl, $6dfc
    ld de, $8000
    call Call_000_0708
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $75bc
    ld de, $cf00
    call Call_000_0708
    ld hl, $cf00
    ld de, $9800
    ld bc, $0400
    call Call_000_0621
    ld a, l
    ld [$df1c], a
    ld a, h
    ld [$df1d], a
    ld hl, $df1e
    ld bc, $9800
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_019_4305:
    ld a, [$df0a]
    cp $04
    jr z, jr_019_432c

    ld a, $1a
    ld hl, $543d
    ld de, $8000
    call Call_000_060d
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $7732
    ld de, $9800
    jp Jump_000_0708


jr_019_432c:
    ld a, $1a
    ld hl, $58ff
    ld de, $8000
    call Call_000_060d
    ld hl, $8000
    ld de, $9000
    ld bc, $0800
    call Call_000_0621
    ld hl, $7815
    ld de, $9800
    jp Jump_000_0708


Jump_019_434c:
    push de
    ld a, $d0
    ld [$cd0a], a
    ld a, $e4
    ld [$cd0b], a
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    pop de
    push de
    ld a, e
    cp $ff
    jr z, jr_019_436d

    ld hl, $6011
    ld a, $1e
    call Call_000_05cf

jr_019_436d:
    pop de
    ld e, $04
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf
    ret


    rla
    or $0d
    inc b
    xor a
    ld d, [hl]
    add hl, de
    add hl, de
    rst $38
    inc a
    inc bc
    ld sp, hl
    ld b, e
    ld e, c
    jr nz, @-$46

    nop
    ld hl, $0008
    jr nz, @-$46

    nop
    ld hl, $0008
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    ld bc, $0700
    nop
    rst $38
    ld [$0080], sp
    dec b
    inc d
    ld bc, $0501
    ld b, $01
    nop
    dec b
    inc d
    ld bc, $0503
    inc e
    ld bc, $0504
    ld a, [bc]
    ld bc, $0703
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld [bc], a
    ld bc, $0500
    ld [bc], a
    ld bc, $0501
    ld [bc], a
    ld bc, $2402
    ld e, a
    dec b
    ld [bc], a
    ld bc, $0501
    ld [bc], a
    ld bc, $0500
    ld [bc], a
    ld bc, $0503
    ld [bc], a
    ld bc, $0504
    ld [bc], a
    ld bc, $07ff
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld a, b
    dec c
    or [hl]
    db $10
    dec hl
    add hl, de
    rst $38
    or h
    ld d, $cd
    add b
    inc c
    call Call_000_0c91
    call Call_000_0da4
    call Call_000_0357
    ldh a, [$ff9a]
    ld d, a
    ret


    add hl, de
    rst $38
    ldh a, [rNR21]
    rla
    or $0d
    inc b
    ld [hl], b
    ld e, e
    add hl, de
    add hl, de
    rst $38
    or h
    jr nz, jr_019_4461

    nop
    ld hl, $0058
    add hl, de
    nop
    inc a
    dec c
    ld h, $44
    dec b
    db $10
    ld d, $c5
    ld de, $1104
    ld hl, $4292
    ld a, $1a
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    rla
    or $0d
    inc bc
    ld sp, hl
    ld b, e
    ld e, c
    inc b
    xor a
    ld d, [hl]
    add hl, de
    jr nz, @+$52

    nop
    ld hl, $0050
    dec c
    ld d, b
    rrca
    db $dd
    and b
    or e
    ld bc, $050e
    rst $38
    ld bc, $240f
    dec c
    dec b
    inc a
    ld bc, $2410
    dec c
    dec b
    inc b
    ld bc, $050f

jr_019_4461:
    ld b, $01
    db $10
    inc h
    dec c
    dec b
    rst $38
    dec c
    ld l, [hl]
    ld b, h
    dec b
    db $10
    ld d, $c5
    ld de, $1204

jr_019_4472:
    ld hl, $4292
    ld a, $1a
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    rla
    or $0d
    inc bc
    ld sp, hl
    ld b, e
    ld e, c
    inc b
    xor a
    ld d, [hl]
    add hl, de
    jr nz, jr_019_448c

jr_019_448c:
    nop
    ld hl, $0000
    jr nz, jr_019_4472

    rst $38
    ld hl, $0078
    dec c
    ld d, b
    rrca
    ldh [$ffa0], a
    or e
    ld bc, $05ff
    ld a, [bc]
    jr nz, @-$7e

    nop
    ld hl, $0078
    dec c
    ld d, b
    rrca
    rst $18
    and b
    or e
    ld bc, $05ff
    ld [de], a
    jr nz, jr_019_4502

jr_019_44b2:
    nop
    ld hl, $0078
    dec c
    ld d, b
    rrca
    ldh [$ffa0], a
    or e
    ld bc, $05ff
    ld a, [bc]
    jr nz, jr_019_44b2

jr_019_44c2:
    rst $38
    ld hl, $0078
    dec c
    ld d, b
    rrca
    rst $18
    and b
    or e
    ld bc, $05ff
    inc d
    jr nz, jr_019_453a

    nop
    ld hl, $0078
    dec c
    ld d, b
    rrca
    rst $18
    and b
    or e
    ld bc, $05ff
    ld a, [bc]
    jr nz, jr_019_4552

    nop
    ld hl, $0078
    dec c
    ld d, b
    rrca
    ldh [$ffa0], a
    or e
    ld bc, $05ff
    inc d
    jr nz, jr_019_4542

    nop
    ld hl, $0078
    dec c
    ld d, b
    rrca
    rst $18
    and b
    or e
    ld bc, $05ff
    ld a, [bc]
    jr nz, jr_019_44c2

jr_019_4502:
    rst $38
    ld hl, $0078
    dec c
    ld d, b
    rrca
    rst $18
    and b
    or e
    ld bc, $05ff
    ld a, [bc]
    ld b, $90
    ld b, h
    rla
    or $0d
    inc bc
    ld sp, hl
    ld b, e
    ld e, c
    inc b
    xor a
    ld d, [hl]
    add hl, de
    rlca
    nop
    ld [bc], a
    ld [$ff00], sp
    add hl, hl
    db $10
    ld a, [hl+]
    ldh [$ff09], a
    ld [bc], a
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    ld bc, $0507
    inc b
    ld bc, $0508
    inc b

jr_019_453a:
    ld a, [bc]
    ld bc, $0505
    inc b
    ld bc, $0506

jr_019_4542:
    inc b
    ld bc, $0507
    ld [bc], a
    ld d, $17
    or $0d
    inc bc
    ld sp, hl
    ld b, e
    ld e, c
    inc b
    xor a
    ld d, [hl]

jr_019_4552:
    add hl, de
    rlca
    nop
    ld bc, $0008
    rst $38
    add hl, hl
    db $10
    ld a, [hl+]
    ldh a, [$ff09]
    inc bc
    ld bc, $0509
    inc b
    ld bc, $050a
    inc b
    ld bc, $050b
    inc b
    ld bc, $050c
    inc b
    ld a, [bc]
    ld d, $17
    or $0d
    inc bc
    cp l
    ld c, e
    ld e, c
    inc b
    ret


    ld d, a
    add hl, de
    dec c
    ld d, b
    rrca
    push af
    and b
    or e
    jr nz, jr_019_45e4

    nop
    ld hl, $0040
    dec c
    ld d, b
    rrca
    pop hl
    and b
    or e
    jr nz, jr_019_45f0

    nop
    ld hl, $0040
    rlca
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, bc
    inc bc
    ld bc, $0827
    ret nz

    rst $38
    dec b
    jr jr_019_45a9

    daa

jr_019_45a9:
    ld [$0040], sp
    dec b
    jr jr_019_45b9

    ld bc, $0528
    ld b, $09
    inc bc
    ld bc, $0800
    ret nz

jr_019_45b9:
    rst $38
    dec b
    jr jr_019_45be

    nop

jr_019_45be:
    ld [$0040], sp
    dec b
    jr jr_019_45ce

    ld bc, $0701
    add b
    rst $38
    ld [$0080], sp
    dec b
    ld [hl-], a

jr_019_45ce:
    ld bc, $0701
    nop
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    inc d
    ld bc, $0502
    inc b
    dec c
    ld d, b
    rrca
    jp hl


jr_019_45e4:
    and b
    or e
    ld bc, $0503
    inc b
    dec c
    ld d, b
    rrca
    ld [$b3a0], a

jr_019_45f0:
    add hl, bc
    dec b
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0804
    ret nz

    rst $38
    dec b
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    and $a0
    or e
    ld bc, $0804
    ld b, b
    nop
    dec b
    ld [$500d], sp
    rrca
    and $a0
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$070a], sp
    nop
    ld [bc], a
    ld [$fe00], sp
    add hl, hl
    add sp, $2a
    inc d
    add hl, bc
    ld [bc], a
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$290a], sp
    jr nz, jr_019_468d

    db $ec
    add hl, bc
    ld [bc], a
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$070a], sp
    nop
    ld bc, $0008
    rst $38
    add hl, hl
    push af

jr_019_468d:
    ld a, [hl+]
    ld a, [bc]
    add hl, bc
    ld bc, $500d
    rrca
    and $a0
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$090a], sp
    inc b
    ld bc, $0709
    nop
    rst $38
    ld [$0040], sp
    add hl, hl
    ld [$fd2a], sp
    dec b
    dec b
    ld bc, $0510
    dec b
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0510
    ld a, [bc]
    dec c
    ld d, b
    rrca
    rst $20
    and b
    or e
    ld bc, $0510
    ld a, [bc]
    dec c
    ld d, b
    rrca
    add sp, -$60
    or e
    ld bc, $0510
    dec b
    ld bc, $0509
    dec b
    dec c
    ld d, b
    rrca
    jp hl


    and b
    or e
    ld bc, $0709
    nop
    ld bc, $c008
    rst $38
    add hl, hl
    db $f4
    ld a, [hl+]
    ld b, $05
    dec b
    ld bc, $050a
    dec b
    dec c
    ld d, b
    rrca
    ld [$b3a0], a
    ld bc, $050a
    ld a, [bc]
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $050a
    ld a, [bc]
    dec c
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $050a
    dec b
    ld bc, $0509
    dec b
    dec c
    ld d, b
    rrca
    push hl
    and b
    or e
    ld a, [bc]
    ld bc, $0704
    nop
    nop
    ld [$0040], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld a, [bc]
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0705
    nop
    nop
    ld [$ffc0], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    ld b, $05
    ld b, $07
    add b
    ld bc, $0008
    rst $38
    add hl, hl
    db $fc
    ld a, [hl+]
    inc bc
    add hl, bc
    inc bc
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $051f
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $051f
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $051f
    ld [$500d], sp
    rrca
    db $e3
    and b
    or e
    ld bc, $051f
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $051f
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $051f
    ld [$010a], sp
    ld b, $07
    nop
    nop
    ld [$0040], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    dec b
    dec b
    ld b, $0d
    ld d, b
    rrca
    rst $20
    and b
    or e
    ld bc, $0804
    ret nz

    rst $38
    dec b
    inc c
    rlca
    nop
    cp $08
    nop
    nop
    add hl, hl
    ld a, [bc]
    ld a, [hl+]
    nop
    add hl, bc
    ld bc, $500d
    rrca
    xor $a0
    or e
    ld bc, $0809
    ld h, b
    nop
    dec b
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    ldh a, [$ffa0]
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    and $a0
    or e
    ld bc, $0809
    ldh a, [rIE]
    dec b
    ld [$500d], sp
    rrca
    rst $28
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0509
    ld [$070a], sp
    ld b, b
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, bc
    ld bc, $500d
    rrca
    xor $a0
    or e
    ld bc, $0809
    ld b, b
    nop
    dec b
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    ldh a, [$ffa0]
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    and $a0
    or e
    ld bc, $0809
    ldh [rIE], a
    dec b
    ld [$500d], sp
    rrca
    rst $28
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0509
    ld [$010a], sp
    ld a, [bc]
    rlca
    nop
    nop
    ld [$0040], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld a, [bc]
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0706
    nop
    nop
    ld [$ffe0], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec b
    ld b, $01
    dec b
    dec b
    ld b, $09
    inc b
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0708
    ret nc

    rst $38
    ld [$0030], sp
    dec b
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $051e
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0508
    ld [$500d], sp
    rrca
    db $e3
    and b
    or e
    ld bc, $071e
    ld d, b
    nop
    ld [$ffc0], sp
    dec b
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0508
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $051e
    ld [$070a], sp
    ld b, b
    nop
    ld [$00a0], sp
    ld a, [hl+]
    cp $09
    inc bc
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0519
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0519
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0519
    ld [$500d], sp
    rrca
    db $e3
    and b
    or e
    ld bc, $0519
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0519
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0519
    ld [$090a], sp
    inc b
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0709
    ret nz

    rst $38
    ld [$0040], sp
    ld a, [hl+]
    db $fd
    dec b
    ld b, $0d
    ld d, b
    rrca
    db $ec
    and b
    or e
    ld bc, $050a
    ld b, $0d
    ld d, b
    rrca
    push hl
    and b
    or e
    ld bc, $050b
    ld b, $0d
    ld d, b
    rrca
    db $eb
    and b
    or e
    ld bc, $070c
    ld b, b
    nop
    ld [$ffc0], sp
    dec b
    ld b, $0d
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $050d
    ld b, $0d
    ld d, b
    rrca
    db $ed
    and b
    or e
    ld bc, $050e
    ld b, $0d
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $050f
    ld b, $0d
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $0510
    ld b, $0a
    rlca
    and b
    rst $38
    ld [$0040], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    add hl, bc
    ld [bc], a
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0518
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0518
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0518
    ld [$500d], sp
    rrca
    db $e3
    and b
    or e
    ld bc, $0518
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0518
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0518
    ld [$070a], sp
    add b
    db $fd
    ld [$0200], sp
    add hl, hl
    inc e
    ld a, [hl+]
    ldh a, [$ff09]
    ld [bc], a
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$290a], sp
    ldh [$ff2a], a
    inc b
    add hl, bc
    ld bc, $500d
    rrca
    and $a0
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$070a], sp
    add b
    cp $08
    nop
    nop
    add hl, hl
    inc b
    ld a, [hl+]
    nop
    add hl, bc
    inc b
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0511
    inc b
    ld bc, $0512
    inc b
    dec c
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $0513
    inc b
    ld bc, $0514
    inc b
    dec c
    ld d, b
    rrca
    push hl
    and b
    or e
    ld bc, $0515
    inc b
    ld bc, $0516
    inc b
    dec c
    ld d, b
    rrca
    xor $a0
    or e
    ld bc, $0517
    inc b
    ld bc, $0518
    inc b
    ld a, [bc]
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0505
    inc b
    ld bc, $0506
    inc b
    dec c
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $0504
    ld [$0209], sp
    dec c
    ld d, b
    rrca
    and $a0
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    rst $20
    and b
    or e
    ld bc, $0504
    ld [$500d], sp
    rrca
    add sp, -$60
    or e
    ld bc, $0504
    ld [$070a], sp
    nop
    nop
    ld [$ffc0], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0522
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0521
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0520
    ld [$500d], sp
    rrca
    db $e3
    and b
    or e
    ld bc, $0820
    ld b, b
    nop
    dec b
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0521
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0522
    ld [$500d], sp
    rrca
    db $e3
    and b
    or e
    ld bc, $0723
    nop
    cp $08
    inc c
    nop
    add hl, hl
    dec b
    dec b
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0523
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0523
    ld [$0309], sp
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    db $e3
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    db $e4
    and b
    or e
    ld bc, $0509
    ld [$500d], sp
    rrca
    push hl
    and b
    or e
    ld bc, $0509
    ld [$0d0a], sp
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0509
    ld [$0007], sp
    nop
    ld [$0000], sp
    add hl, hl
    nop
    ld a, [hl+]
    nop
    jr nz, jr_019_4b8f

    nop
    ld hl, $0058
    dec c
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $0509
    ld [$8007], sp
    cp $08
    add b
    rst $38
    add hl, hl
    db $10
    ld a, [hl+]
    nop
    add hl, bc
    inc b
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $0509
    ld b, $0d
    ld d, b
    rrca
    db $ec
    and b
    or e
    ld bc, $050a
    ld b, $0d
    ld d, b
    rrca
    push hl
    and b
    or e
    ld bc, $050b
    ld b, $0d
    ld d, b
    rrca
    db $eb
    and b
    or e
    ld bc, $050c
    ld b, $0d
    ld d, b
    rrca
    db $e4
    and b
    or e

jr_019_4b8f:
    ld bc, $050d
    ld b, $0d
    ld d, b
    rrca
    db $ed
    and b
    or e
    ld bc, $050e
    ld b, $0d
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $050f
    ld b, $0d
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $0510
    ld b, $0a
    ld bc, $05ff
    ld a, [bc]
    dec c
    ld d, b
    rrca
    db $f4
    and b
    or e
    ld d, $cd
    ld d, a
    inc bc
    ldh a, [$ff9a]
    ld d, a
    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    call Call_019_4f02
    ld hl, $df1b
    bit 1, [hl]
    ret nz

    ld hl, $df1a
    ld bc, $002c
    ld a, c
    add [hl]
    ld [hl], a
    ld hl, $da2e
    ld a, b
    adc [hl]
    ld [hl], a
    ld hl, $df1b
    bit 0, [hl]
    jr nz, jr_019_4bfd

    ld a, [$da2e]
    and $07
    jr nz, jr_019_4bfa

    bit 2, [hl]
    ret z

    res 2, [hl]
    jp Jump_019_4c0f


jr_019_4bfa:
    set 2, [hl]
    ret


jr_019_4bfd:
    bit 2, [hl]
    jr nz, jr_019_4c0a

    ld a, [$da2e]
    cp $80
    ret nz

    set 1, [hl]
    ret


jr_019_4c0a:
    res 2, [hl]
    jp Jump_019_4c0f


Jump_019_4c0f:
    ld h, $c4
    ldh a, [$ff92]
    ld l, a
    ld bc, $df1e
    ld a, [bc]
    ld [hl], a
    inc l
    inc bc
    ld a, [bc]
    ld [hl], a
    inc l
    ld [hl], $20
    inc l
    ld bc, $df1c
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    ld b, a
    ld c, e
    ld e, $20

jr_019_4c2c:
    ld a, [bc]
    ld [hl], a
    inc l
    inc bc
    dec e
    jr nz, jr_019_4c2c

    ld a, l
    ldh [$ff92], a
    ld hl, $df1c
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $df1e
    ld a, $20
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    cp $9c
    ret nz

    ld hl, $df1b
    set 0, [hl]
    ret


    rla
    or $0d
    inc bc
    ld sp, hl
    ld b, e
    ld e, c
    inc b
    ret


    ld d, a
    add hl, de
    jr nz, @+$42

    nop
    ld hl, $0060
    add hl, bc
    rrca
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $051b
    inc b
    ld bc, $051c
    inc b
    dec c
    ld d, b
    rrca
    db $e4
    and b
    or e
    ld bc, $051b
    inc b
    ld bc, $051c
    inc b
    dec c
    ld d, b
    rrca
    push hl
    and b
    or e
    ld bc, $051b
    inc b
    ld bc, $051c
    inc b
    ld a, [bc]
    dec c
    ld d, b
    rrca
    db $e3
    and b
    or e
    ld bc, $051b
    inc b
    ld bc, $051c
    inc b
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ldh a, [rIE]
    dec c
    ld b, b
    db $10
    stop
    ld bc, $071a
    nop
    nop
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4cdf

    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ldh a, [rIE]
    dec c
    ld b, b
    db $10
    stop
    ld bc, $071a
    nop
    nop
    ld [$0100], sp
    add hl, hl
    dec h
    ld a, [hl+]
    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ldh a, [rIE]
    dec c
    ld b, b

jr_019_4cdf:
    db $10
    stop
    ld bc, $071a
    nop
    rst $38
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4d17

    db $db
    dec b
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    stop
    dec c
    ld b, b
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    nop
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4d33

    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    stop
    dec c
    ld b, b

jr_019_4d17:
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    nop
    ld [$0100], sp
    add hl, hl
    dec h
    ld a, [hl+]
    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    stop
    dec c
    ld b, b

jr_019_4d33:
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    rst $38
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4d6b

    db $db
    dec b
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ld hl, sp-$01
    dec c
    ld b, b
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    rst $38
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4d87

    db $db
    dec b
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ld [$0d00], sp
    ld b, b

jr_019_4d6b:
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    rst $38
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4da3

    db $db
    dec b
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ldh a, [rIE]
    dec c
    ld b, b

jr_019_4d87:
    stop
    nop
    ld bc, $071a
    nop
    nop
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4dbf

    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ldh a, [rIE]
    dec c
    ld b, b

jr_019_4da3:
    stop
    nop
    ld bc, $071a
    nop
    nop
    ld [$0100], sp
    add hl, hl
    dec h
    ld a, [hl+]
    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    ldh a, [rIE]
    dec c
    ld b, b

jr_019_4dbf:
    stop
    nop
    ld bc, $071a
    nop
    rst $38
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4df7

    db $db
    dec b
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    stop
    dec c
    ld b, b
    stop
    nop
    ld bc, $071a
    nop
    nop
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4e13

    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    stop
    dec c
    ld b, b

jr_019_4df7:
    stop
    nop
    ld bc, $071a
    nop
    nop
    ld [$0100], sp
    add hl, hl
    dec h
    ld a, [hl+]
    ldh [rTIMA], a
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    stop
    dec c
    ld b, b

jr_019_4e13:
    stop
    nop
    ld bc, $071a
    nop
    rst $38
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4e4b

jr_019_4e21:
    db $db
    dec b
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    inc d
    nop
    dec c
    ld b, b
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    nop
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4e67

    nop
    dec b
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    inc d
    nop
    dec c
    ld b, b

jr_019_4e4b:
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    nop
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4e83

    add sp, $05
    ld [hl-], a
    ld d, $0b
    ld a, c
    ld c, [hl]
    dec c
    ld b, h
    db $10
    inc d
    nop
    dec c
    ld b, b

jr_019_4e67:
    db $10
    ldh a, [rIE]
    ld bc, $071a
    nop
    nop
    ld [$0000], sp
    add hl, hl
    jr nz, jr_019_4e9f

    jr @+$07

    ld [hl-], a
    ld d, $17
    dec b
    ld c, $03
    ld sp, hl
    ld b, e
    ld e, c
    inc b
    ret


    ld d, a

jr_019_4e83:
    add hl, de
    jr nz, jr_019_4e86

jr_019_4e86:
    nop
    ld hl, $0000
    inc c
    rla
    or $0d
    dec c
    xor $4e
    dec c
    and $4e
    inc bc
    ld [de], a
    ld c, a
    ld e, c
    dec c
    ld l, a
    ld c, a
    inc b
    ret


    ld d, a
    add hl, de

jr_019_4e9f:
    jr nz, jr_019_4e21

    nop
    ld hl, $0080
    ld bc, $24ff
    inc d
    dec b
    inc b
    jr nz, @-$5e

    nop
    ld hl, $0050
    add hl, bc
    inc b
    dec c
    ld d, b
    rrca
    pop af
    and b
    or e
    ld bc, $0724
    nop
    db $fc
    dec b
    inc b
    ld bc, $0525
    inc b
    dec c
    ld d, b
    rrca
    ldh a, [c]
    and b
    or e
    ld bc, $0526
    inc b
    ld bc, $0524
    inc b
    dec c
    ld d, b
    rrca
    di
    and b
    or e
    ld bc, $0525
    inc b
    ld bc, $0526
    inc b
    ld a, [bc]
    ld bc, $0524
    db $10
    ld d, $3e
    ret nc

    sub $18
    ld [$df20], a
    ret


    push bc
    ld e, $1a
    ld hl, $6035
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld hl, $da2f
    inc [hl]
    pop bc
    ret


Call_019_4f02:
    ld hl, $df19
    ld bc, $ffc0
    ld a, c
    add [hl]
    ld [hl], a
    ld hl, $da2f
    ld a, b
    adc [hl]
    ld [hl], a
    ret


    call Call_000_0c80
    call Call_000_0c91
    call Call_000_0da4
    call Call_019_4f02
    ld e, $15
    ld a, [de]
    cp $ff
    ret z

    ld e, $04
    ld a, [de]
    ld hl, $da2f
    add [hl]
    add $18
    ld e, a
    and $f8
    cp e
    jr z, jr_019_4f35

    add $08

jr_019_4f35:
    ld e, a
    ld a, [$df20]
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
    ld [hl], $28
    inc l
    ld a, $20
    add c
    ld [hl], a
    inc l
    ld a, b
    adc $00
    ld [hl], a
    inc l
    ld [hl], $01
    inc l
    ld [hl], $29
    inc l
    ld a, l
    ldh [$ff92], a
    ret


    ld a, d
    ld [$df18], a
    ret


    scf
    nop
    ld [bc], a

Jump_019_4f77:
    rlca
    rlca
    rrca
    ret


    nop
    ld a, [de]
    nop
    ld bc, $0041
    inc bc
    ld b, d
    nop
    rlca
    jp $2800


    ld sp, $0000
    db $10
    ld a, $00
    ld bc, $0018
    rst $10
    nop
    ld h, [hl]
    ld bc, $0101
    ld b, c
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    ld a, h
    ld a, a
    ld b, c
    add b
    rst $38
    inc bc
    ld b, b
    ld a, a
    jr nz, jr_019_4fe6

    ld b, c
    db $10
    rra
    ld b, c
    jr nz, jr_019_4fec

    dec b
    ld b, c
    ld a, a
    ld b, [hl]
    ld a, [hl]
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
    ccf
    jr nz, jr_019_4fef

    jr nc, jr_019_4fd9

    jr jr_019_4ff3

    jr nc, @+$81

    ld h, b
    ld e, a
    ld h, b
    cp e
    call nz, $becd
    ld [hl], e
    ld [hl], e
    inc hl
    nop
    dec b
    ld [hl], b
    ld [hl], b
    ret nc

    or b
    ld d, b
    or b
    ld b, c

jr_019_4fd9:
    ldh a, [rNR10]
    add hl, bc
    add sp, $18
    or $0e
    db $fd
    inc bc
    ei
    rlca
    db $ec
    inc e

jr_019_4fe6:
    ld b, d
    ldh a, [rNR10]
    dec d
    ld [hl], b
    sub b

jr_019_4fec:
    sub b
    ldh a, [rSVBK]

jr_019_4fef:
    ld [hl], b
    jr jr_019_500a

    ccf

jr_019_4ff3:
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, jr_019_5030

    add hl, sp
    nop
    ld bc, $0202
    inc hl
    rlca
    dec bc
    rrca
    rrca

jr_019_500a:
    rra
    rra
    ld a, $3e
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    and h
    nop
    inc e
    ld [bc], a
    inc a
    nop
    cp $42
    nop
    rst $38
    ld b, c
    nop
    cp $05
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    xor [hl]
    nop
    add hl, sp
    nop
    ld [$0842], sp
    nop

jr_019_5030:
    ld b, c
    ld [$0310], sp
    ld a, b
    add h
    ld e, $21
    ld b, c
    db $10
    ld [$1042], sp
    nop
    add h
    ld bc, $0b57
    nop
    ld [$1800], sp
    nop
    ld a, h
    nop
    ld a, $00
    jr jr_019_504d

jr_019_504d:
    db $10
    sbc h
    nop
    ld l, c
    ld bc, $3f3c
    add e
    nop
    sub b
    ld b, c
    ld [$060f], sp
    db $10
    rra
    ld de, $161f
    ld e, $18
    adc d
    nop
    ld l, b
    inc de
    dec e
    dec e
    ld a, [de]
    rla
    dec e
    ld [de], a
    rrca
    ld [$0c0b], sp
    rla
    jr jr_019_5092

    db $10
    dec l
    ld [hl-], a
    daa
    ld a, $19
    add hl, de
    add hl, hl
    nop

jr_019_507c:
    inc bc
    ld h, b
    ld h, b
    and b
    ldh [rSTAT], a
    ldh [rNR41], a
    rlca
    ret c

    jr c, jr_019_507c

    inc c
    db $fc
    inc c
    ld hl, sp+$38
    ld b, c
    ldh [rNR41], a
    inc bc
    and b

jr_019_5092:
    ldh [$ff60], a
    ld h, b
    sub c
    nop
    ld [$3f01], sp
    ccf
    and e
    ld bc, $d818
    nop
    add hl, de
    nop
    ld a, h
    ld b, e
    nop
    cp $05
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [$ff89], a
    nop
    jr nz, jr_019_50b6

    nop
    inc bc
    nop
    inc bc
    nop

jr_019_50b6:
    ld bc, $01d7
    dec b
    ld [hl+], a
    jr c, jr_019_50c1

    ld a, b
    inc l
    ld a, h
    ld d, h

jr_019_50c1:
    ld l, h
    ld b, c
    ld a, [hl]
    ld b, [hl]
    inc bc
    ld d, a
    ld l, a
    ld a, a
    ld a, a
    add l
    ld bc, $01ee
    ld c, $0e
    dec hl
    nop
    inc hl
    inc bc
    ld bc, $0101
    db $d3
    nop
    add c
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld h, d
    dec b
    ld h, d
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    add [hl]
    ld [bc], a
    ld l, e
    ld [hl+], a
    add b
    inc hl
    ret nz

    dec h
    ldh [rNR50], a
    ldh a, [rSC]
    ldh [$fff0], a
    ld b, b
    or a
    ld bc, $08f5

jr_019_50fa:
    nop
    ld [$1808], sp
    jr jr_019_5138

    jr c, jr_019_50fa

    ld hl, sp-$7c
    ld [bc], a
    and h
    ld [bc], a
    pop hl
    ret nz

    jp $028b


    inc h
    dec b
    jr nc, @+$32

    ld a, b
    ld a, b
    ld a, h
    ld a, h
    inc hl
    ld a, [hl]
    add h
    ld bc, $84ee
    ld [bc], a
    ld d, a
    ld sp, $0100
    jr c, @+$3a

    ld [hl+], a
    ld a, h
    dec b
    ld a, [hl]
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld b, b
    adc [hl]
    ld bc, $06db
    jr nz, @+$62

jr_019_5130:
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    ld a, h
    add h
    ld [bc], a
    db $e4

jr_019_5138:
    dec b
    ld a, $7e
    ld a, $3e
    inc e
    inc e
    ld [hl], $00
    ld a, [bc]
    ret nz

    ldh a, [$fff0]
    ld a, b
    sbc b
    db $fc
    adc h
    xor h
    call c, $fefe
    inc hl
    ld a, [hl]
    inc b
    ld a, $3e

jr_019_5152:
    ld e, $3e
    inc c
    add [hl]
    inc bc
    ld sp, $800d
    ret nz

    ld b, b
    ldh [$ffe0], a
    jr nz, jr_019_5130

    jr nc, jr_019_5152

    db $10
    ld hl, sp+$18
    ld e, b
    cp b
    inc h
    db $fc
    nop
    cp $83
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc e
    ld a, $08
    add h
    inc bc
    ld sp, $0c11
    inc e
    ld e, $3e
    dec sp
    scf
    dec l
    inc sp
    ld l, $31
    rra
    db $10
    rla
    jr jr_019_519f

    dec e
    rrca
    rrca
    push bc
    ld bc, $0311
    inc bc
    inc bc
    ld bc, $3f01
    nop
    rst $38
    add hl, bc
    rra
    rra
    ccf
    inc l
    ld [hl], a
    ld e, b
    ld a, a
    ld d, b
    ld a, a
    ld l, d
    ld b, c

jr_019_519f:
    ccf
    ld a, [hl+]
    dec de

jr_019_51a2:
    ld e, a
    ld h, b
    ld d, l
    ld l, [hl]
    ld e, a
    ld h, h
    cpl
    jr nc, jr_019_51de

    inc a
    dec e
    ld e, $07
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    rlca
    rlca
    rrca
    inc c
    rla
    jr jr_019_51dc

    db $10
    ld b, c
    ccf
    jr nz, jr_019_51a2

    ld b, c
    ccf
    ld [hl+], a
    ld e, a
    ld h, d
    ld a, a
    ld b, d
    rst $38
    add b
    db $fd
    add e
    rst $38
    add c
    or a
    call z, Call_019_7f7f
    nop
    nop
    scf
    scf
    ld a, e
    ld c, h
    rst $28
    sub b
    rst $38

jr_019_51dc:
    add l
    rst $18

jr_019_51de:
    and l
    cp a
    push bc
    cp a
    ret nz

    ld e, a
    ld h, b
    ld a, a
    ld b, d
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    cpl
    jr nc, jr_019_5229

    inc a
    daa
    ccf
    ld [hl+], a
    ld a, $1c
    inc e
    jr jr_019_520f

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, jr_019_5235

    dec [hl]
    nop
    rrca
    inc e
    inc e
    dec de
    rla
    ld d, $19
    rrca

jr_019_520f:
    ld [$0c0b], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $3301
    nop
    rrca
    add b
    add b
    ldh a, [rSVBK]
    ldh a, [$ff50]
    ldh [$ffa0], a
    ldh a, [rSVBK]
    ld hl, sp-$08
    ld l, h
    ld a, h

jr_019_5229:
    inc [hl]
    inc a
    rst $10
    nop
    add a
    ld bc, $6060
    ld b, c
    ld [hl], b
    ld d, b
    ld b, h

jr_019_5235:
    ld hl, sp-$78
    ld bc, $84fc
    ld b, h
    ld a, h
    ld b, h
    ld bc, $427e
    ld b, h
    ld a, $22
    ld [hl+], a
    ld a, a
    ld b, $41
    ccf
    ccf
    call c, $bedc
    ld h, d
    ld b, c
    rst $38
    ld bc, $fd05
    inc bc
    cp $02
    db $fd
    inc bc
    add l
    ld bc, $1306
    ld a, [$e406]
    inc e
    jp c, $e23e

    cp $52
    sbc $8c
    adc h
    ld a, b
    ld a, b
    db $f4
    adc h
    cp d
    ld b, [hl]
    cp $02
    add l
    ld bc, $410a
    rst $38
    add c
    dec c
    db $fd
    add e
    rst $38
    inc bc
    ld a, e
    add a
    push hl
    rra
    reti


    ccf
    cp $fe
    ldh [$ffe0], a
    ld [hl+], a
    cp $04
    ld b, d
    rst $18
    ld hl, $01ff
    ld b, c
    ei
    dec b
    add l
    ld bc, $1010
    db $fc
    inc b
    db $f4
    inc c
    db $ec
    inc e
    or h
    ld a, h
    call nz, Call_000_24fc
    inc a
    jr jr_019_52b9

    rst $18
    db $dd
    cp a
    sbc h
    ld bc, $8303
    nop
    xor b
    dec b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    and e
    nop
    jr z, @+$0d

    cp $82
    ld a, a
    ld b, c

jr_019_52b9:
    ccf
    jr nz, jr_019_52db

    db $10
    rrca
    ld [$0407], sp
    ld [hl+], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    add hl, sp
    nop
    add l
    nop
    xor d
    nop
    ld e, $41
    ld e, $0e
    ld b, c
    ld e, $0a
    ld [bc], a
    ld c, $04
    ld c, $e4
    dec h
    nop

jr_019_52db:
    inc bc
    ld h, b
    ld h, b
    rst $38
    cp a
    ld b, d
    rst $38
    and b
    dec bc
    rst $38
    cp a
    ldh [$ffe0], a
    rlca
    rlca
    rra
    jr @+$31

    jr nc, jr_019_532e

    jr nz, @+$44

    ld a, a
    ld d, h
    dec bc
    cp [hl]
    pop bc
    xor e
    call c, $c8bf
    ld e, a

jr_019_52fb:
    ld h, b
    ld h, a
    ld a, b
    dec sp
    inc a
    jp Jump_000_2300


    add e
    nop
    jr nz, jr_019_531a

    rra
    jr jr_019_5349

    jr nz, @+$81

    ld c, b
    ld d, a
    ld a, b
    rst $18
    or h
    ei
    adc h
    rst $18
    add sp, -$01
    ldh [$ffb7], a
    ret z

    cp e

jr_019_531a:
    call nz, Call_000_0083
    ld d, d
    inc bc
    dec [hl]
    ld a, [hl-]
    ld c, $0f
    inc hl
    ld bc, $061d
    rlca
    dec e
    ld a, [de]
    ccf
    jr nz, jr_019_5384

    ld l, b

jr_019_532e:
    ld [hl], a
    ld c, b
    or a
    call z, $ecff
    rst $38
    and b
    rst $38
    adc h
    ld a, e
    ld b, h
    ld d, a
    ld l, b
    scf
    jr z, jr_019_535c

    ld a, [de]
    ld b, $07
    ld bc, $8601
    ld [bc], a
    jr nz, jr_019_5352

    ld d, b

jr_019_5349:
    halt
    ld e, c
    db $fd
    jp z, $e0bf

    rst $38
    xor b
    ei

jr_019_5352:
    adc h
    ld b, c
    cp a
    ret nz

    dec b
    ld e, a
    ld h, b
    scf
    jr c, jr_019_5368

jr_019_535c:
    rrca
    add e
    ld bc, $879e
    ld [bc], a
    ld b, b
    ld b, c
    ld l, a
    ld d, b
    dec c
    rst $38

jr_019_5368:
    ldh [rIE], a
    adc b
    rst $38
    db $ec
    rst $00
    cp b
    ld l, a
    ld d, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_019_52fb

    ld [bc], a
    ld e, d
    dec b
    dec sp
    dec sp
    ld [hl], a
    ld c, h
    ei
    add h
    and l
    ld bc, HeaderLogo
    rst $38

jr_019_5384:
    ret nz

    and a
    ld bc, $074a
    daa
    jr c, @+$1b

    rra
    ld b, $07
    ld [bc], a
    inc bc
    sub l
    nop
    sub h
    ld bc, $ffff
    ld b, d
    rst $38
    nop
    db $d3
    ld [bc], a
    push de
    inc bc
    inc bc
    inc bc
    rst $38
    db $fc
    add h
    ld [bc], a
    sub $02
    ld bc, $7efe
    and e
    nop
    ld e, $07
    ret nz

    ret nz

    or b
    ld [hl], b
    db $ec
    inc e
    ldh [c], a
    ld e, $42
    rst $38
    ld bc, $7f0d
    add c
    di
    rrca
    db $fd
    rlca
    push af
    rrca
    jp hl


    rra
    cp [hl]
    ld a, [hl]
    ld hl, sp-$08
    inc hl
    nop
    dec b
    ldh a, [$fff0]
    sbc b
    ld a, b
    db $ec
    inc e
    and e
    ld [bc], a
    inc b
    ld bc, $06fa
    ld b, c
    rst $38
    inc bc

jr_019_53d9:
    rra
    ld a, [$f306]
    rrca
    db $eb
    rra
    db $fd
    rrca
    ld sp, hl
    rrca
    xor $1e
    ret c

jr_019_53e7:
    jr c, jr_019_53d9

jr_019_53e9:
    ldh a, [$ffe0]
    ldh [$ffd0], a

jr_019_53ed:
    jr nc, jr_019_53e7

    jr jr_019_53ed

    inc e
    jp c, $f52e

    rrca
    db $fd
    rlca
    cp $06
    ld b, c
    db $fd
    rlca
    rrca
    push af
    rrca
    jp c, $fc2e

    inc e
    ld hl, sp+$18
    ret nc

    jr nc, jr_019_53e9

    ldh [$fff8], a
    ld hl, sp-$24
    ld h, h
    ld b, e
    cp $02
    ld bc, $0ff7
    ld b, c
    db $fd
    rlca
    add hl, bc
    ld sp, hl

jr_019_5419:
    rrca
    cp $0e
    db $f4
    inc e
    db $e4
    ld a, h
    ld a, b
    ld hl, sp-$5b
    nop
    ld e, $0b
    ret nc

    jr nc, jr_019_5419

    db $10
    db $fc
    inc a
    jp nc, $f13e

    rra
    jp hl


    rra
    ld b, c
    xor $1e
    add hl, bc
    jp hl


    rra
    pop af
    rra
    jp nc, $fc3e

    inc a
    ldh a, [rNR10]
    add e
    inc bc
    ld e, h
    and [hl]
    nop
    nop
    nop
    xor d
    ld b, c
    cp $56
    inc de
    ld a, [$fa06]
    ld [hl], $fa
    ld d, $fc
    inc b
    cp $3e
    ret


    rst $38
    add hl, bc
    rst $38
    ld [de], a
    cp $64
    db $fc
    sbc b
    sbc b
    inc sp
    nop
    rlca
    ldh a, [$fff0]
    db $fc
    inc c
    cp $02
    db $fc
    inc c
    db $d3
    inc bc
    push de
    inc bc
    ldh a, [$fff0]
    cp $0e
    adc l
    inc bc
    ret c

    rlca
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_019_54dd

    ld h, c
    and [hl]
    ld bc, $0028
    ret nz

    add h
    inc b
    inc c
    ld b, $82
    cp e
    add $54
    ld l, a
    ccf
    ccf
    add l
    ld [bc], a
    ld a, [hl]
    dec b
    dec bc
    inc c
    scf
    jr c, jr_019_54f7

    ld h, b
    add l
    ld [bc], a
    and [hl]
    dec d
    ld b, a
    ld a, b
    ccf
    jr nc, @+$19

    jr jr_019_54af

    inc c
    ld c, $0f
    add hl, bc
    rrca

Jump_019_54a9:
    inc b
    rlca
    inc bc
    inc bc
    ccf
    ccf

jr_019_54af:
    ld a, e
    ld b, [hl]
    cp $81
    add e
    ld [bc], a
    xor b
    add l
    inc b
    jr z, jr_019_54c5

    rst $38
    and b
    rst $38
    sbc b
    rst $38
    ldh [c], a
    rst $18
    ei
    rst $30
    cp b
    ld a, h

jr_019_54c5:
    ld c, a
    add e
    inc b
    inc e
    inc bc
    cp $fe
    rst $10
    add hl, sp
    add h
    ld [bc], a
    sub $14
    and b
    db $fc
    and e
    rst $38
    and c
    rst $38
    ld bc, $e35d
    cp $42

jr_019_54dd:
    ei
    rlca
    push af
    rrca
    reti


    ccf
    pop af
    rst $38
    ld c, [hl]
    adc $ab
    nop
    sub h
    ld d, $01
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop

jr_019_54f7:
    ld a, a
    nop
    rst $38
    ld bc, $007c
    jr c, jr_019_54ff

jr_019_54ff:
    stop
    nop
    sub [hl]
    inc b
    add b
    ld [bc], a
    ld bc, $00ff
    adc [hl]
    inc b
    sbc d
    ldh [$ff39], a
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, h
    ld a, h
    jr c, jr_019_555a

    db $10
    db $10
    ld hl, sp-$08
    ld [hl], h
    adc h
    db $fc
    inc b
    call c, $ec34
    ld e, h
    db $fc
    xor h
    db $fc
    and h
    db $fc
    inc b
    ld a, [hl]
    add $f5
    ld c, a
    ld sp, hl
    rrca
    reti


    ccf
    or $76
    adc b
    ld hl, sp+$08
    ld hl, sp-$10
    ldh a, [$fffe]
    cp $df
    inc sp
    add h
    ld bc, $0404
    and e
    rst $38
    and e
    db $fd
    and e
    sub c
    inc b
    ld l, [hl]
    dec b
    sbc $de
    and c
    ld a, a
    pop de

jr_019_555a:
    ccf
    add e
    inc bc
    inc [hl]
    inc bc
    push af
    rrca
    cp $06
    ld b, d
    db $fc
    inc b
    ld b, c
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ld h, b
    ldh [$ff87], a
    inc b
    ld a, [hl]
    inc hl
    add b
    ld bc, $8080
    or l
    nop
    sub h
    nop
    rlca
    add [hl]
    inc b
    sub c
    ld de, $01fe
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    adc [hl]
    dec b
    ld e, c
    add l
    ld [bc], a
    sub $89
    dec b
    ld [hl], b
    nop
    rst $38
    add a
    inc bc
    db $fc
    add l
    inc b
    jp nc, $fe06

    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$ff2a]
    rst $38
    and a
    nop
    add b
    inc bc
    inc a
    inc l
    ld b, $06
    ld [hl+], a
    inc bc
    nop
    ld bc, $019b
    sbc [hl]
    ld b, d
    rst $38
    nop
    nop
    rst $38
    add [hl]
    dec b
    db $e4
    rlc l
    cp d
    add [hl]
    inc b
    ld [bc], a
    inc b
    ld h, b
    ld a, a
    ld b, c
    cp a
    ret nz

    add a
    ld [bc], a
    and [hl]
    rra
    rst $38
    add b
    db $fd
    add d
    cp h
    jp Jump_019_4f77


    ld a, [hl-]
    dec sp
    ld bc, $e001
    ldh [$ffdc], a
    inc a
    cp $02
    rst $38
    ld b, c
    rst $38
    dec h
    rst $38
    and e
    cp $82
    cp $02
    ld a, [$fe26]
    ld b, $85
    inc bc
    inc d
    dec b
    ret nc

    ldh a, [rNR10]
    ldh a, [$ffe0]
    ldh [$ffa3], a
    inc bc
    nop

Call_019_5600:
    nop
    rla
    add e
    ld [bc], a
    inc bc
    ld b, $21
    ld a, a
    ld h, h
    cp a
    jp nz, $81ff

    add l
    ld [bc], a
    and [hl]
    inc bc
    ld [hl], a
    ld a, b
    dec e
    ld e, $c5
    inc b
    call $fc03
    db $fc
    cp d
    ld h, [hl]
    add h
    ld bc, $0204
    rlca
    ld a, [$a386]
    nop
    ld d, b
    inc bc
    ei
    rlca
    db $fd
    daa
    add l
    inc bc
    inc d
    nop
    ret z

    add h
    inc b
    ei
    rst $38
    cpl
    nop
    ld bc, $0101
    ld b, d
    inc bc
    ld [bc], a
    ld bc, $0101
    push bc
    nop
    ld de, $1f03
    ld de, $101f
    ld b, c
    rrca
    ld [$070f], sp
    dec b
    rrca
    ld c, $7f
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    rlca
    and [hl]
    nop
    ld l, $00
    add b
    ld [hl+], a
    rst $30
    ld b, $d5
    rst $30
    ld [hl], $ff
    ld a, a
    rst $38
    add b
    ld b, d
    rst $38
    nop
    dec bc
    rst $38
    inc a
    rst $38
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    rst $38
    ld a, $41
    rst $38
    nop
    inc bc
    cp $c2
    cp $82
    ld b, c
    db $fc
    inc b
    dec b
    ld hl, sp-$38
    ld hl, sp+$38
    rst $38
    rrca
    add h
    nop
    ld c, d
    inc b
    ret nz

    rst $38
    db $fc
    rst $38
    ld hl, sp-$3a
    nop
    ld [hl], h
    call z, $1000
    dec b
    ret nz

    ret nz

    ldh [rNR41], a
    ld hl, sp+$18
    ld b, d
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ldh [rNR41], a
    and e
    nop
    ld d, $ff
    db $d3
    ld d, [hl]
    ret c

    ld d, [hl]
    db $dd
    ld d, [hl]

jr_019_56b5:
    ldh [c], a
    ld d, [hl]
    rst $20
    ld d, [hl]
    db $ec
    ld d, [hl]
    push af
    ld d, [hl]
    cp $56
    rlca
    ld d, a
    db $10
    ld d, a
    add hl, de
    ld d, a
    ld [hl+], a
    ld d, a
    dec hl
    ld d, a
    inc [hl]
    ld d, a
    add hl, sp
    ld d, a
    ld e, d
    ld d, a
    ld a, e
    ld d, a
    and b
    ld d, a
    ld bc, $fcfc
    ld b, $01
    ld bc, $fcfc
    ld d, $01
    ld bc, $fcf8
    inc d
    ld bc, $fc01
    db $fc
    inc b
    ld bc, $fc01
    db $fc
    inc b
    ld de, $f802
    nop
    ld [$f820], sp
    ld hl, sp+$08
    ld bc, $f802
    nop
    inc c
    nop
    ld hl, sp-$08
    ld a, [bc]
    ld bc, $f802
    nop
    ld [$f860], sp
    ld hl, sp+$08
    ld b, c
    ld [bc], a
    ld hl, sp-$08
    inc c
    ld h, b

jr_019_570c:
    ld hl, sp+$00
    ld a, [bc]
    ld h, c
    ld [bc], a
    ld hl, sp+$00
    jr jr_019_56b5

    ld hl, sp-$08
    jr @-$7d

    ld [bc], a
    ld hl, sp+$00
    inc e
    add b
    ld hl, sp-$08
    ld a, [de]
    add c
    ld [bc], a
    ld hl, sp-$08
    jr @-$3e

    ld hl, sp+$00
    jr jr_019_570c

    ld [bc], a
    ld hl, sp-$08
    inc e
    ldh [$fff8], a
    nop
    ld a, [de]
    pop hl
    ld bc, $fcfc
    ld c, $01
    ld [$0aef], sp
    ld l, $00
    ret c

    jr @+$22

    nop
    ret c

    db $10
    inc l
    nop
    ret c

    ld [$001e], sp
    di
    db $f4
    ld [de], a
    nop
    di
    db $ec
    ld [bc], a
    nop
    ldh [$fff8], a
    stop
    ldh [$fff0], a
    nop
    ld bc, $e208
    dec c
    ld [hl+], a
    nop
    jp c, Jump_000_2015

    nop
    ldh a, [$fff6]
    ld [de], a
    nop
    ldh a, [$ffee]
    ld [bc], a
    nop
    ldh a, [$ff0c]
    jr nc, jr_019_576f

jr_019_576f:
    ret c

    ld [$0034], sp
    ret c

    nop
    ld h, $00
    ldh [$fffa], a
    inc h
    ld bc, $e409
    inc c
    ld [hl+], a
    nop
    call c, Call_000_2014
    nop
    ldh a, [$fff9]
    ld [de], a
    nop
    ldh a, [$fff1]
    ld [bc], a
    nop
    db $dd
    ld hl, sp+$38
    nop
    add sp, $00
    ld a, [hl+]
    nop
    ret c

    ld [$0036], sp
    ret c

    nop
    jr z, jr_019_579c

jr_019_579c:
    ldh a, [$ff0b]
    ld [hl-], a
    ld bc, $f80a
    db $fc
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add b
    ld hl, sp-$04
    ld a, [hl-]
    add c
    dec de
    ld e, b
    inc h
    ld e, b
    dec l
    ld e, b
    ld d, d
    ld e, b
    ld a, e
    ld e, b
    sub b
    ld e, b
    and l
    ld e, b
    cp d
    ld e, b
    rst $08
    ld e, b
    db $e4
    ld e, b
    push af
    ld e, b
    ld a, [bc]
    ld e, c
    rra
    ld e, c
    inc [hl]
    ld e, c
    ld c, c
    ld e, c
    ld e, [hl]
    ld e, c
    ld [hl], e
    ld e, c
    adc b
    ld e, c
    sbc l
    ld e, c
    or d
    ld e, c
    rst $00
    ld e, c
    call c, $f159
    ld e, c
    ld b, $5a
    dec de
    ld e, d
    jr nc, @+$5c

    ld b, l
    ld e, d
    ld c, d
    ld e, d
    ld d, a
    ld e, d
    ld h, h
    ld e, d
    adc l
    ld e, d
    and [hl]
    ld e, d
    cp e
    ld e, d
    ret nc

    ld e, d
    pop hl
    ld e, d
    ldh a, [c]
    ld e, d
    rlca
    ld e, e
    inc h
    ld e, e
    ld b, c
    ld e, e
    ld e, [hl]
    ld e, e
    ld h, a
    ld e, e
    ld [bc], a
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
    ld bc, $f809

jr_019_582f:
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    inc d
    nop
    db $d3
    push af
    inc c
    nop
    db $e3
    push af
    ld c, $00
    di
    push af
    inc e
    nop
    ldh [c], a

jr_019_5843:
    db $eb
    ld b, $00

jr_019_5846:
    db $eb
    db $e4
    ld b, $10
    or $e0
    ld b, $00
    ld [bc], a
    sbc $06
    ld de, $f80a
    nop
    inc b
    jr nz, @-$06

    ld hl, sp+$14
    jr nz, jr_019_582f

    inc bc
    inc c
    jr nz, jr_019_5843

    inc bc
    ld c, $20
    di
    inc bc
    inc e
    jr nz, jr_019_5846

    ld hl, sp+$06
    nop
    ldh [c], a
    db $eb
    ld b, $10
    db $eb
    db $e4
    ld b, $00
    or $de
    ld b, $10
    ld [bc], a
    db $dd
    ld b, $01
    dec b
    ld hl, sp-$08
    nop
    nop
    add sp, $10

jr_019_5882:
    ld [$ec20], sp

jr_019_5885:
    ld [$2018], sp
    add sp, $00
    ld a, [de]
    jr nz, jr_019_5885

    nop
    ld d, $01
    dec b
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    inc d
    nop
    db $d3
    push af
    inc c
    nop
    db $e3
    push af
    ld c, $00
    di
    push af

jr_019_58a3:
    inc e
    ld bc, $f805
    nop
    inc b
    jr nz, jr_019_58a3

    ld hl, sp+$14
    jr nz, jr_019_5882

    inc bc
    inc c
    jr nz, @-$1b

    inc bc
    ld c, $20
    di
    inc bc
    inc e
    ld hl, $f805
    ld hl, sp+$2a
    nop
    ld hl, sp+$00
    ld a, [hl-]
    nop
    add sp, $0f
    ld [$ec20], sp
    rlca
    jr jr_019_58eb

    add sp, -$01
    ld a, [de]
    ld hl, $f805
    ld hl, sp+$42
    nop
    ld hl, sp+$00
    ld d, b
    nop
    ldh a, [c]
    pop af
    ld e, $20
    ldh a, [c]
    jp hl


    ld l, $20
    ldh a, [c]
    pop hl
    ld a, $21
    inc b
    ld hl, sp-$08
    jr nz, jr_019_58e9

jr_019_58e9:
    ld hl, sp+$00

jr_019_58eb:
    jr nc, jr_019_58ed

jr_019_58ed:
    ldh a, [c]
    ld [$002c], sp
    ldh a, [c]
    db $10
    inc a
    ld bc, $ec05
    inc b
    ld e, $00
    db $ec
    inc c
    ld l, $00
    db $ec
    inc d

Jump_019_5900:
    ld a, $00
    ld hl, sp-$08
    ld [hl+], a
    nop
    ld hl, sp+$00
    ld [hl-], a
    ld bc, $f805
    ld hl, sp+$24
    nop
    ld hl, sp+$00
    inc [hl]
    nop
    add sp, $0d
    ld [$ec20], sp
    dec b
    jr jr_019_593b

    add sp, -$03
    ld a, [de]
    ld hl, $f805
    ld hl, sp+$22
    ld b, b
    ld hl, sp+$00
    ld [hl-], a
    ld b, b
    ldh a, [rTIMA]
    ld e, $00
    ldh a, [$ff0d]
    ld l, $00
    ldh a, [$ff15]
    ld a, $01
    dec b
    ld hl, sp-$08
    jr nz, jr_019_5979

    ld hl, sp+$00

jr_019_593b:
    jr nc, jr_019_597d

    cp $10
    inc l
    ld b, b
    cp $18
    inc a
    ld b, b
    cp $08
    ld e, $41
    dec b
    ld hl, sp-$08
    ld h, $40
    ld hl, sp+$00
    ld [hl], $40
    inc bc
    dec b
    ld e, $40
    inc bc
    dec c
    ld l, $40
    inc bc
    dec d
    ld a, $41
    dec b
    ld hl, sp-$08
    jr z, jr_019_5963

jr_019_5963:
    ld hl, sp+$00
    jr c, jr_019_5967

jr_019_5967:
    ld [$080c], sp
    ld h, b
    inc b
    inc b
    jr jr_019_59cf

    ld [$1afc], sp
    ld h, c
    dec b
    ld [bc], a
    ld bc, $401e
    ld [bc], a

jr_019_5979:
    add hl, bc
    ld l, $40
    ld [bc], a

jr_019_597d:
    ld de, $403e
    ld hl, sp-$08
    ld h, $00
    ld hl, sp+$00
    ld [hl], $01
    dec b
    ld hl, sp-$08
    jr nz, jr_019_598d

jr_019_598d:
    ld hl, sp+$00
    jr nc, jr_019_5991

jr_019_5991:
    db $fc
    jp hl


    inc l
    ld h, b
    db $fc
    pop hl
    inc a
    ld h, b
    db $fc
    pop af
    ld e, $61
    dec b
    ld hl, sp-$08
    ld [hl+], a
    nop
    ld hl, sp+$00
    ld [hl-], a
    nop
    ei
    jp hl


    inc l
    ld h, b
    ei
    pop hl
    inc a
    ld h, b
    ei
    pop af
    ld e, $61
    dec b
    ld hl, sp-$08
    inc h
    nop
    ld hl, sp+$00
    inc [hl]
    nop
    ld sp, hl
    pop af
    ld e, $60
    ld sp, hl
    jp hl


    ld l, $60
    ld sp, hl
    pop hl
    ld a, $61
    dec b
    ld hl, sp-$08
    ld [hl+], a
    ld b, b
    ld hl, sp+$00
    ld [hl-], a

jr_019_59cf:
    ld b, b
    ei
    db $eb
    inc l
    ld h, b
    ei
    db $e3
    inc a
    ld h, b
    ei
    di
    ld e, $61
    dec b
    ld hl, sp-$08
    jr nz, @+$42

    ld hl, sp+$00
    jr nc, jr_019_5a25

    db $fd
    db $ec
    inc l
    ld h, b
    db $fd
    db $e4
    inc a
    ld h, b
    db $fd
    db $f4
    ld e, $61
    dec b
    ld hl, sp-$08
    ld h, $40
    ld hl, sp+$00
    ld [hl], $40
    cp $eb
    inc l
    ld h, b
    cp $e3
    inc a
    ld h, b
    cp $f3
    ld e, $61
    dec b
    ld hl, sp-$08
    jr z, jr_019_5a0b

jr_019_5a0b:
    ld hl, sp+$00
    jr c, jr_019_5a0f

jr_019_5a0f:
    or $f1
    ld e, $20
    or $e9
    ld l, $20
    or $e1
    ld a, $21
    dec b
    ld hl, sp-$08
    ld h, $00
    ld hl, sp+$00
    ld [hl], $00
    db $fd

jr_019_5a25:
    jp hl


    inc l
    ld h, b

Jump_019_5a28:
    db $fd
    pop hl
    inc a
    ld h, b
    db $fd
    pop af
    ld e, $61
    dec b
    ld hl, sp-$08
    ld b, h
    nop
    ld hl, sp+$00
    ld d, d
    nop
    nop
    pop af
    ld e, $60
    nop
    jp hl


    ld l, $60
    nop
    pop hl
    ld a, $61
    ld bc, $fcfc
    ld b, $01
    inc bc
    ld bc, $08ef
    ld b, b
    db $fd
    rst $30
    jr jr_019_5a93

    ld sp, hl
    rst $38
    ld a, [bc]
    ld b, c
    inc bc
    ld bc, $08ef
    ld d, b
    db $fd
    rst $30
    jr jr_019_5ab0

    ld sp, hl
    rst $38
    ld a, [bc]
    ld d, c
    ld a, [bc]
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, b
    ld hl, sp-$04
    ld b, [hl]
    ld b, c
    ld b, $f8
    ld hl, sp+$42
    nop
    ldh a, [c]

jr_019_5a93:
    pop af
    ld e, $20
    ldh a, [c]
    jp hl


    ld l, $20
    ldh a, [c]
    pop hl
    ld a, $20
    ld hl, sp+$00
    ld b, [hl]
    nop
    ld hl, sp+$08
    ld d, h
    ld bc, $f805
    ld hl, sp+$42
    nop
    ld hl, sp+$00
    ld d, b
    nop
    ei

jr_019_5ab0:
    pop af
    ld e, $60

jr_019_5ab3:
    ei
    jp hl


    ld l, $60
    ei
    pop hl
    ld a, $61
    dec b
    ldh a, [c]
    ld c, $40
    jr nz, jr_019_5ab3

    ld b, $4e
    jr nz, @-$1c

    ld hl, sp+$08
    nop
    and $00
    jr jr_019_5acc

jr_019_5acc:
    ldh [c], a
    ld [$011a], sp
    inc b
    push af
    dec bc
    ld b, b
    jr nz, @-$09

    inc bc
    ld c, [hl]
    jr nz, jr_019_5ab0

    ld [bc], a
    inc c
    nop
    and $02

jr_019_5adf:
    ld c, $01
    inc b
    ld hl, sp+$00
    ld a, [hl+]
    jr nz, jr_019_5adf

    ld hl, sp+$3a
    jr nz, @-$25

    ld a, [$200c]

jr_019_5aee:
    jp hl


    ld a, [$210e]
    dec b
    ld hl, sp-$08
    jr nz, jr_019_5af7

jr_019_5af7:
    ld hl, sp+$00
    jr nc, jr_019_5afb

jr_019_5afb:
    ld [$0810], a
    jr nz, jr_019_5aee

    ld [$2018], sp
    ld [$1a00], a
    ld hl, $eb07
    ld [$1048], sp
    db $eb
    db $10
    ld d, [hl]
    db $10
    ld hl, sp+$03
    ld e, h
    nop
    ld a, [$1601]
    nop
    ld a, [$00f9]
    nop
    add sp, $18
    ld e, [hl]
    db $10
    add sp, $20
    ld e, [hl]
    ld de, $f807
    inc bc
    ld e, h
    nop
    ld a, [$1601]
    nop
    ld a, [$00f9]
    nop
    add sp, $18
    ld e, [hl]
    db $10
    add sp, $20
    ld e, [hl]
    db $10
    db $eb
    ld [$104a], sp
    db $eb
    db $10
    ld e, b
    ld de, $f807
    inc bc
    ld e, h
    nop
    ld a, [$1601]
    nop
    ld a, [$00f9]
    nop
    add sp, $18
    ld e, [hl]
    db $10
    add sp, $20
    ld e, [hl]
    db $10
    db $eb
    ld [$104c], sp
    db $eb
    db $10
    ld e, d
    ld de, $f802
    ld hl, sp+$60
    nop
    ld hl, sp+$00
    ld h, d
    ld bc, $f802
    ld hl, sp+$64
    nop
    ld hl, sp+$00
    ld h, [hl]
    ld bc, $5b72
    dec b
    nop
    jr nz, jr_019_5b7e

    nop
    nop
    jr jr_019_5b80

    nop
    nop
    db $10
    inc b

jr_019_5b7e:
    nop
    nop

jr_019_5b80:
    ld [$0002], sp
    nop
    nop
    nop
    ld bc, $0030
    ld b, [hl]
    rst $38
    nop
    inc bc
    rst $38
    inc bc
    rst $38
    rra
    inc a
    rst $38
    nop
    db $fc
    ld l, $ff
    adc h
    nop
    inc d
    ld bc, $fffc
    adc h
    nop
    rrca
    ld bc, $00ff
    adc e
    nop
    ld e, [hl]
    ld bc, $8778
    ld b, c
    rst $38
    nop
    ld bc, $f807
    ld b, c
    ccf
    ret nz

    ld b, e
    nop
    rst $38
    inc bc
    ldh [$ff1f], a
    ld a, a
    add b
    ld b, h
    nop
    rst $38
    rlca
    db $fc
    inc bc
    add b
    ld a, a
    rst $38
    nop
    rra
    ldh [$ffa6], a
    nop
    adc b
    add h
    nop
    ld hl, $0089
    ld e, [hl]
    ld [bc], a
    ret nz

    rst $38
    cp $22
    rst $38
    ld bc, $1fe0
    xor l
    nop
    inc d
    add hl, hl
    rst $38
    jp $bc00


    nop
    add b
    adc b
    nop
    add hl, sp
    rst $00
    nop
    adc [hl]
    inc b
    ldh a, [rIE]
    ldh [rIE], a
    add b
    jp nc, Jump_019_5900

    ld b, $df
    rst $38
    rst $10
    rst $38
    sub l
    rst $38
    add h
    add [hl]
    nop
    push de
    inc b
    db $fc
    rst $38
    db $f4
    rst $38
    call nz, Call_000_0086
    ei
    ld b, c
    cp a
    rst $38
    ld [bc], a
    rla
    rst $38
    ld de, $ff41
    ld bc, $ff01
    ld bc, $ff2e
    nop
    ld hl, sp-$7a
    ld bc, $0411
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    adc h
    nop
    ei
    nop
    ld a, a
    and [hl]
    ld bc, $0445
    rst $38
    rst $38
    pop af
    rst $38
    pop hl
    ld b, d
    rst $38
    ld h, b
    rlca
    rst $38
    jr nc, @+$01

    or b
    rst $38
    nop
    rst $38
    inc b
    add [hl]
    nop
    ld de, $0141
    cp $01
    dec b
    ld a, [$0044]
    rst $38
    ld d, $01
    cp $6b
    sub h
    db $ed
    db $10
    dec b
    ei
    ld bc, $05ff
    ei
    dec d
    db $eb
    inc [hl]
    res 6, h
    ld c, e
    inc h
    ld c, e
    dec h
    dec bc
    rst $38
    adc h
    nop
    rst $08
    nop
    ldh a, [$ff83]
    ld bc, $8c45
    nop
    rst $28
    nop
    ld bc, $008e
    ld de, $0185
    ld d, [hl]
    nop
    ld bc, $0188
    cp a
    nop
    or d
    ld b, d
    db $fd
    ldh a, [c]
    inc bc
    db $fd
    ldh [c], a
    db $fd
    pop hl
    ld b, c
    cp $f1
    ld a, [bc]
    cp $0d
    ldh a, [c]
    dec l
    jp nc, Jump_019_54a9

    and c
    ld d, h
    ld d, c
    and h
    ld b, c
    ld c, b
    and b
    ld bc, $e008
    ld b, c
    ld c, c
    db $10
    inc b
    ld c, b
    db $10
    ld [$0800], sp
    ld h, $00
    ld bc, $0b25
    ld b, d
    ld de, $4107
    db $10
    rlca
    ld b, c
    inc b
    dec bc
    nop
    rst $38
    ld b, [hl]
    rst $38
    add b
    ld bc, $80ff
    ld c, d
    rst $38
    nop
    xor b
    ld [bc], a
    ld hl, $e942
    cp $44
    ld [$00fd], a
    ld e, $42
    ldh [rNR30], a
    nop
    ldh [rSCX], a
    ld d, h
    and b
    jr z, jr_019_5ccb

jr_019_5ccb:
    ld bc, $180c
    ld b, c
    ld a, $3c
    nop
    ld a, $41
    inc b
    dec bc
    ld b, c
    dec b
    dec bc
    rlca
    ld bc, $0d07
    dec de
    add hl, de
    rra
    dec e
    rra
    add l
    ld [bc], a
    ld l, $08
    inc c
    rst $38
    rrca
    ei
    rrca
    ld sp, hl
    ccf
    ldh a, [$ff3f]
    add [hl]
    nop
    and e
    inc bc
    jp $efff


    dec a
    add l
    ld bc, $af27
    ld [bc], a
    jr z, @+$03

    ld [$42fd], a
    add sp, -$01
    ld b, e
    ld [$04fd], a
    ld d, h
    and b
    ld b, h
    or b
    and h
    ld b, h
    ld d, b
    xor d
    ld [bc], a
    ld d, b
    ld a, [hl]
    ld a, [hl]
    ld b, h
    ld a, [hl]
    cp $23
    ld a, [hl]
    nop
    dec a
    ld a, [hl+]
    ccf
    ld b, c
    dec a
    ccf
    nop
    rra
    ld b, c
    ldh a, [$ff3f]
    nop
    ldh [rSTAT], a
    ld a, a
    ret nz

    sub l
    ld [bc], a
    dec l
    nop
    add b
    ret z

    inc bc
    ld c, $c3
    inc bc
    rlca
    ld bc, $3fe0
    adc c
    nop
    ld h, h
    xor e
    nop
    sub b
    inc bc
    nop
    rst $38
    add c
    ld a, a
    ld b, d
    ld bc, $03ff
    or $fd
    db $f4
    rst $38
    ld b, h
    push af
    cp $01
    db $fc
    rst $38
    ld b, c
    xor d
    ld d, b
    inc bc
    ld a, [hl+]
    ret nc

    ld l, $d0
    ld b, e
    ld d, h
    and b
    ld bc, $7e7e
    inc hl
    inc a
    ld bc, $1818
    daa
    nop
    ld bc, $3f3d

jr_019_5d68:
    ld b, c
    dec de
    rra
    ld bc, $0b0b
    ld b, d
    dec bc
    inc bc
    ld bc, $0701
    and a
    ld [bc], a
    ld b, e
    rlca
    ld a, a
    ldh [$ff7f], a
    ret nz

    rst $38
    adc b
    rst $38
    db $10
    adc e
    ld [bc], a
    dec a
    inc bc
    cp $87
    db $fc
    add a
    ld b, d
    ldh [$ff3f], a
    ld bc, $7fe0
    rlc b
    adc $8b
    nop
    add d
    inc bc
    ld bc, $7dff
    add e

jr_019_5d99:
    push bc
    inc bc
    ld c, l
    ld b, c
    ld bc, $01ff
    ld bc, $47ff
    ld [$03fd], a
    jr c, jr_019_5d68

    ld a, [hl+]
    ret nz

    ld b, d
    xor d
    ld b, b
    dec d
    and h
    ld b, b
    or h
    ld b, b
    and h
    ld d, b
    rra
    rlca
    ld l, $11
    rra
    jr nz, @+$13

    ld c, $00
    ccf
    scf
    ld c, b
    add hl, de
    ld h, [hl]
    jr c, jr_019_5deb

    and e
    nop
    dec a
    dec b
    jr nc, jr_019_5d99

    rst $00
    jr c, @+$04

    db $fd
    add $00
    ld [hl], c
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, c
    ld a, [$0604]
    ld [hl+], a
    call c, Call_000_0cf0
    nop
    cp $07
    add h
    inc bc
    sub d
    ld b, c
    ret nz

    rst $38
    inc bc
    cp $c1
    rst $38
    ret nz

jr_019_5deb:
    adc c
    ld [bc], a
    ld l, $41
    inc bc
    db $fc
    ld bc, $3fc0
    sub a
    nop
    ld h, d
    ld bc, $00ff
    adc a
    inc b
    ld d, [hl]
    ld bc, $07f8
    xor h
    ld [bc], a
    inc a
    nop
    ld a, a
    add a
    ld bc, $8574
    ld bc, $b5c2
    inc bc
    jr nc, jr_019_5e10

    db $fc

jr_019_5e10:
    inc bc
    adc e
    nop
    ld l, h
    nop
    jp $01ca


    dec [hl]
    nop
    rrca
    jp z, $5901

    ld bc, $f9d6
    ld b, h
    push de
    ld a, [$d441]
    ei
    ld b, c
    inc h
    ret nc

    ld b, c
    ld a, [hl+]
    ret nc

    ld b, c
    ld l, d
    sub b
    ld b, c
    ld c, d
    or b
    ld [de], a
    jr nc, jr_019_5e75

    rra
    rra
    rlca
    rrca
    rlca
    rra
    inc bc
    rrca
    ld [hl], e
    rlca
    pop bc
    scf
    pop af
    ld a, e
    rst $38
    rst $38
    ldh a, [$ff86]
    ld [bc], a
    ld hl, $8302
    rst $38
    adc a
    add l
    nop
    ld c, e
    adc h
    inc b
    pop bc
    add h
    nop
    db $ec
    sub d
    nop
    ld b, l
    ld [bc], a
    ldh [rIE], a
    db $fc
    adc [hl]
    nop
    ld c, e
    inc b
    ld bc, $8fff
    rst $38
    rst $38
    xor [hl]
    dec b
    ld sp, $ff00
    and e
    nop
    rra
    ld bc, $feff
    sub b
    nop
    ld b, l

jr_019_5e75:
    ld [bc], a
    ret nz

    rst $38
    ld hl, sp-$74
    nop
    ld c, c
    nop
    rlca
    and a
    dec b
    ld h, c
    adc [hl]
    inc bc
    rst $18
    dec b
    db $eb
    db $fc
    ld c, d
    or b
    ld c, l
    or b
    ld b, c
    ld d, l
    xor b
    ld b, e
    push de
    jr z, jr_019_5ed3

    inc bc
    nop
    nop
    inc bc
    ld b, e
    ld bc, $0707
    ld bc, $0103
    pop af
    ei
    ld sp, hl
    ei
    ei
    ld b, h
    db $fd
    ld sp, hl
    ld [bc], a
    db $fd
    pop de
    cp $45
    push de
    ld a, [$d407]
    ei
    jp nc, Jump_019_5a28

    and b
    ld c, d
    or b
    ld b, d

jr_019_5eb6:
    ld a, [hl+]
    ret nc

    dec b
    dec hl
    ret nc

    daa
    ret nc

    inc bc
    ld bc, $8343
    nop
    nop
    add c
    ld b, c
    nop
    add b
    ld a, [bc]
    nop
    rst $30
    ld sp, hl
    push af
    ei
    db $ed
    di
    db $ed
    ld [hl], e
    ld sp, hl
    rlca

jr_019_5ed3:
    ld b, c
    pop af
    rrca
    ld bc, $0f11
    ld b, d
    xor $f9
    ld b, e
    db $ec
    ei
    inc bc
    add sp, -$01
    ld b, l
    or b
    ld b, e
    ld d, l
    and b
    ld b, d
    dec h
    ret nc

    ld b, c
    add b
    nop
    ld b, d
    add b
    inc b
    rlca
    add b
    inc h
    ret nz

    jr z, jr_019_5eb6

    ld a, [hl+]
    ld de, $430f
    dec d
    dec bc
    ld b, d
    add hl, hl
    rlca
    rst $38
    cpl
    nop
    ld c, c
    nop
    rst $38
    ld bc, $0300
    ld [hl+], a
    nop
    nop
    ccf
    adc h
    nop
    stop
    rra
    ld c, d
    nop
    rst $38
    ld bc, $8000
    xor d
    nop
    dec l
    inc b
    rlca
    ldh [$ff1f], a
    add c
    ld a, [hl]
    ld b, e
    rst $38
    nop
    rlca
    ld a, a
    add b
    rst $38
    nop
    db $fc
    inc bc
    pop af
    ld c, $44
    rst $38
    nop
    dec b
    db $fc
    inc bc
    ldh a, [rIF]
    pop bc
    ld a, $a9
    nop
    ld [hl], d
    dec b
    ld a, a
    add b
    ld sp, hl
    ld b, $e3
    inc e
    cpl
    rst $38
    and a
    nop
    ld h, c
    adc h
    nop
    ld [$f000], sp
    adc c
    nop
    ld b, $d0
    nop
    inc d
    nop
    ldh [$ff9b], a
    nop
    ld [bc], a
    ld bc, $fc03
    rst $00
    nop
    xor b
    inc bc
    inc bc
    db $fc
    ccf
    ret nz

    add l
    nop
    pop bc
    inc bc
    rlca
    ret nz

    ccf
    ret nz

    xor d
    nop
    ld b, l
    ld [bc], a
    cp $02
    db $fd
    ld b, l
    nop
    rst $38
    inc bc
    add e
    ld a, h
    inc b
    ei
    adc l
    nop
    ldh [c], a
    ld bc, $f906
    ld b, l
    nop
    rst $38
    ld bc, $7986
    sub $00
    ld e, $8d
    ld bc, $ca49
    nop
    dec h
    inc bc
    ldh [$ff1f], a
    ld hl, sp+$07
    ld b, h
    rst $38
    nop
    inc bc
    rrca
    ldh a, [$ff3f]
    ret nz

    ld b, d
    rst $38
    nop
    nop
    rst $38
    rst $18
    nop
    inc h
    inc b
    ld bc, $0f00
    nop
    ccf
    ld b, c
    nop
    rlca
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    rst $38
    call c, $c400
    and h
    ld bc, $01a7
    nop
    cp $ae
    ld bc, $a4d0
    nop
    pop de
    adc h
    ld bc, $8960
    ld bc, $87e7
    ld bc, $004b
    inc bc
    adc h
    nop
    ld [hl], $02
    add b
    nop
    db $fc
    sub b
    ld bc, $8d44
    ld bc, $0045
    ld bc, $009a
    ld a, [hl+]
    nop
    ldh [$ff8c], a
    nop
    db $10
    ld [bc], a
    ldh a, [rP1]
    nop
    sub b
    ld bc, $aa46
    ld [bc], a
    ld h, e
    sub b
    nop
    inc c
    nop
    ccf
    and [hl]
    ld bc, $00ca
    ldh [rSTAT], a
    nop
    add b
    ld bc, $c000
    add h
    ld bc, $00ca
    ld hl, sp-$34
    ld bc, $00de
    ret nz

    jp $fc01


    xor [hl]
    ld bc, $00c0
    inc bc
    xor b
    ld [bc], a
    and [hl]
    nop
    ld a, a
    adc h
    nop
    db $10
    inc b
    cp $00
    ld hl, sp+$00
    ld hl, sp-$52
    ld [bc], a
    add d
    ld [hl+], a
    nop
    xor l
    nop
    ld [hl], $90
    nop
    ld h, $02
    ccf
    nop
    rst $38
    xor l
    inc bc
    inc d
    sub d
    ld bc, $0242
    ldh [rP1], a
    cp $b6
    nop
    stop
    ldh [$ffac], a
    nop
    inc e
    ld [bc], a
    nop
    nop
    nop
    jp z, $4a02

    ld [hl+], a
    nop
    adc d
    ld [bc], a
    call c, Call_000_0f04
    nop
    ld bc, $0700
    add e
    nop
    db $10
    sbc d
    ld [bc], a
    ld d, d
    inc b
    rst $38
    nop
    inc bc
    nop
    ldh a, [$ff90]
    ld bc, $0042
    ldh [$ffab], a
    ld [bc], a
    ld d, d
    or h
    inc bc
    ld b, h
    dec b
    db $fc
    nop
    ldh [rP1], a
    ldh [rP1], a
    adc a
    nop
    sbc a
    call nz, $c903
    ld bc, $e000
    adc l
    nop
    ld [$02b0], sp
    ld a, [$02af]
    rst $38
    ld [bc], a
    ccf
    nop
    ccf
    sub h
    nop
    db $10
    ld [bc], a
    ldh a, [rP1]
    ret nz

    add e
    inc bc
    or b
    and a
    inc bc
    ld [hl], b
    sub h
    ld bc, $0052
    rlca
    adc c
    inc bc
    ret z

    sub b
    ld [bc], a
    ld b, b
    adc d
    ld [bc], a
    db $dd
    ld b, e
    ld bc, $03ff
    inc bc
    rst $38
    ld [bc], a
    cp $83
    nop
    adc a
    rlca
    ccf
    db $10
    rra
    nop
    sbc a
    nop
    rst $38
    add b
    call nz, $2b00
    dec c
    rst $38
    ret nz

    rst $38
    ld hl, sp+$3f
    cp $07
    ld a, a
    ld b, e
    rst $38
    pop bc
    ld sp, hl
    ld bc, $8402
    ld bc, $0067
    ld b, b
    add e
    inc b
    xor d
    ld bc, $c0ff
    adc a
    inc bc
    ld c, a
    nop
    ldh a, [$ffad]
    inc bc
    ld [hl], $92
    inc bc
    adc h
    ld bc, $01ff
    adc d
    inc bc
    ld b, a
    dec b
    ld e, $e1
    ld a, a
    add b
    rst $38
    nop
    reti


    ld bc, $a58f
    ld [bc], a
    ld a, $01
    rlca
    cp $41
    rlca
    db $fc
    ld b, c
    rrca
    ld hl, sp+$02
    ld c, $08
    inc e
    ld [hl+], a
    db $10
    ld b, e
    inc b
    rlca
    rlca
    inc d
    rla
    sub h
    sub a
    ld h, h
    ld h, a
    inc b
    rlca
    add l
    ld [bc], a
    ld h, [hl]
    adc h
    inc bc
    or b
    nop
    db $fc
    sub b
    nop
    inc c
    ld [bc], a
    rrca
    nop
    ccf
    xor a
    dec b
    jr jr_019_611e

    inc a

jr_019_611e:
    jp Jump_000_05c3


    dec d
    adc [hl]
    dec b
    ld c, $04
    ld a, $f8
    inc b
    nop
    rst $38
    adc l
    inc bc
    ld [$04b8], a
    adc $84
    nop
    ld de, $3801
    rst $00
    and e
    ld bc, $0172
    ld a, a
    add b
    reti


    dec b
    add hl, bc
    jp $d705


    and l
    dec b
    ret nc

    adc a
    dec b
    adc d
    add e
    dec b
    inc e
    ld a, [bc]
    db $fc
    inc bc
    inc e
    ldh a, [rNR34]
    ldh a, [rIF]
    ld hl, sp+$1f
    or $1b
    and h
    inc b
    push bc
    ld bc, $ff0f
    ret z

    inc b
    ld e, l
    ld [$ffff], sp
    add e
    ld a, a
    pop hl
    rst $38
    rst $38
    inc b
    rlca
    ld b, c
    ld [$010f], sp
    ld [hl], b
    ccf
    push bc
    inc b
    jp z, $f000

    adc h
    nop
    ld de, $0703
    ld hl, sp+$3f
    ret nz

    xor a
    dec b
    ldh a, [$ff8f]
    ld bc, $8582
    dec b
    ld a, [de]
    ld bc, $01fe
    xor a
    ld b, $68
    ld b, l
    rst $38
    nop
    ld a, [bc]
    rst $30
    ld [$30cf], sp
    adc a
    ld [hl], b
    inc e
    db $e3
    nop
    rst $38
    nop
    add [hl]
    nop
    sbc [hl]
    rlca
    rst $18
    jr nz, jr_019_61dc

jr_019_61a3:
    add $61
    sbc [hl]
    add b
    ld a, a
    xor c
    ld b, $9e
    dec b
    rst $20
    jr jr_019_61b6

    ld hl, sp+$08
    rst $30
    add l
    ld b, $9e
    rlca

jr_019_61b6:
    db $fd
    ld [bc], a
    di
    inc c
    rst $00
    jr c, @+$08

    ld sp, hl
    add [hl]
    ld b, $9c
    rlca
    ld bc, $03ff
    di
    rrca
    rst $00
    ccf
    rlca
    ld b, c
    rst $38
    rrca
    ld [de], a
    rst $38
    rst $38
    cp $ff
    db $e4
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38

jr_019_61dc:
    ld c, b
    rst $38
    add h
    rst $38
    rra
    jp z, $9d04

    ld [bc], a
    ld bc, $02ff
    add h
    ld b, $90
    ld a, [bc]
    adc b
    rst $08
    or b
    adc a
    ldh a, [$ff9e]
    pop hl

jr_019_61f3:
    or b
    rst $08
    add b
    rst $38
    ret


    ld bc, $032b
    ld h, e
    sbc h
    add b
    ld a, a
    add a
    nop
    sbc l
    add hl, bc
    rst $30
    ld [$38c7], sp
    rrca
    ldh a, [rNR32]
    db $e3
    nop
    rst $38
    adc c
    ld b, $8e
    inc b
    inc c
    di
    db $10
    rst $28
    nop
    adc d
    rlca
    rrca
    inc bc
    rst $20
    jr jr_019_61a3

    ld a, c
    adc c
    rlca

jr_019_6220:
    ld a, $07
    rst $28
    db $10
    sbc a
    ld h, b
    ld e, $e1
    jr nc, @-$2f

    ld b, h
    rst $38
    nop
    inc bc
    sbc a
    ld h, b
    ccf
    ret nz

    rlc c
    ld hl, $df05
    jr nz, jr_019_6258

    ldh [$ff3f], a
    ret nz

    ld b, d
    rrca
    rst $38
    ld [bc], a
    rlca
    rst $38
    ld [bc], a
    rst $00
    nop
    and l
    ld [$ff83], sp
    add d
    rst $18
    and d
    rst $08
    ldh a, [c]
    add $fb
    and l
    rlca
    adc b
    ld a, [bc]
    rst $38
    ldh [rIE], a
    db $10

jr_019_6258:
    db $fd
    ld a, [de]
    push af
    ld c, $e5
    rra
    ld h, h

jr_019_625f:
    add l
    rlca
    adc e
    rlca
    inc b
    cp a
    ld b, c
    or [hl]
    ld e, a
    jr nc, @+$01

    jr nz, jr_019_61f3

jr_019_626c:
    ld bc, $0019
    rst $38
    ld b, c

jr_019_6271:
    rlca
    cp $02
    rlca
    rst $38
    rlca
    add $04
    sub l
    and h
    ld b, $f2
    ld b, $40
    rst $18
    jr nz, jr_019_6220

    ld h, c
    jr jr_019_626c

    push bc
    inc b
    adc $a3
    dec b
    inc [hl]
    dec b
    cp b
    ld c, a
    jr c, jr_019_625f

    jr nc, jr_019_6271

    sub c
    inc b
    ld hl, sp-$7d
    ld bc, $ad70
    rlca
    ldh a, [c]
    inc bc
    inc a
    jp $8f70


    xor e
    ld bc, $ff12
    jr c, jr_019_62a6

jr_019_62a6:
    inc c
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld b, h
    nop
    rst $38
    inc bc
    nop
    rlca
    nop
    rrca
    add e
    nop
    ld [hl+], a
    ld c, c
    nop
    rst $38
    ld bc, $fe00
    and [hl]
    nop
    inc h
    inc b
    ld hl, sp+$00
    ldh [rP1], a
    add b
    dec h
    nop
    add a
    nop
    ld e, b
    ld bc, $0100
    add l
    nop
    jr nz, jr_019_62df

    rlca
    nop
    rst $18
    ret nz

    rst $38

jr_019_62df:
    add b
    ld c, h
    rst $38
    nop
    ld [hl+], a
    rst $38
    ld [bc], a
    ccf
    rst $38
    ld c, $8a
    nop
    add hl, sp
    ld [bc], a
    ldh a, [rIE]
    ret nz

    ld b, l
    rst $38
    nop
    ld b, c
    nop
    rst $38
    ld bc, $fd02
    adc b
    nop
    add a
    jr nc, @+$01

    adc b
    nop
    ld h, d
    nop
    rrca
    add l
    nop
    ld h, $85

jr_019_6307:
    nop
    jr @+$54

    nop
    rst $38
    ld bc, $fe00
    xor b
    nop
    db $e4
    nop
    pop bc
    jr z, jr_019_6316

jr_019_6316:
    ld [bc], a
    ld bc, $c300
    xor d
    nop
    ld b, [hl]
    nop
    ld a, a
    inc hl
    rst $38
    add hl, bc
    ld a, a
    rst $38
    rrca
    rst $38
    jr nz, jr_019_6307

    nop
    rst $38
    ld [$89f7], sp
    nop
    cp [hl]
    inc bc
    ldh a, [rIE]
    ld b, c
    cp [hl]
    add a
    nop
    cp h
    inc bc
    ld sp, hl
    rst $38
    db $10
    rst $28
    adc l
    nop
    cp b
    nop
    ccf
    and h
    nop
    ld [hl], h
    inc bc
    add b
    ld a, a
    inc b
    ei
    and l
    nop
    ld d, d
    ld b, e
    nop
    inc bc
    call z, $3200
    ld a, [bc]
    rst $38
    nop
    ldh a, [rP1]
    ret nz

    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [$ffa4], a
    ld bc, $0374
    add b
    nop
    add b
    ld bc, $002c
    inc bc
    ldh [rP1], a
    db $fc
    nop
    jp $2400


    push bc
    nop
    ld a, [de]
    dec b
    ld bc, $0f01
    rrca
    ccf
    ccf
    jp $6a01


    dec b
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    ld a, a
    and l
    ld bc, $0561
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld c, b
    nop
    rst $38
    adc d
    ld bc, $04d4
    cp $00
    ldh a, [rP1]
    add b
    xor c
    nop
    db $10
    ld l, $00
    ld bc, $000f
    adc l
    ld bc, $cb9e
    nop
    dec hl
    ld b, $1f
    nop
    rrca
    nop
    add b
    nop
    add b
    and l
    nop
    ldh [$ffd0], a
    ld [bc], a
    ld h, $89
    ld [bc], a
    dec sp
    ld [bc], a
    ld bc, $0700
    add a
    nop
    inc h
    sub b
    nop
    ldh [c], a
    nop
    cp $43
    nop
    db $fc
    add l
    nop
    ld c, h
    ld b, d
    nop
    rrca
    ret z

    ld [bc], a
    jr nc, jr_019_63d2

jr_019_63d2:
    rst $38
    adc [hl]
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    rst $38
    nop
    nop
    xor c
    nop
    ret nc

    ret nc

    ld [bc], a
    inc h
    adc l
    ld [bc], a
    dec a
    ld [bc], a
    inc bc
    nop
    rlca
    ret z

    ld [bc], a
    ld [de], a
    nop
    inc bc
    xor h
    ld [bc], a
    jr c, jr_019_63f0

jr_019_63f0:
    ld bc, $01c3
    or [hl]
    push bc
    nop
    db $ec
    sbc b
    nop
    inc [hl]
    nop
    rst $38
    add e
    ld bc, $a890
    ld bc, $007e
    ld hl, sp-$72
    ld [bc], a
    jr jr_019_6408

jr_019_6408:
    inc bc
    ret nc

    ld [bc], a
    xor b
    ld b, $7f
    nop
    ccf
    nop
    ccf
    nop
    rra
    adc [hl]
    nop
    jr c, jr_019_6418

jr_019_6418:
    pop hl
    adc h
    nop
    ld b, d
    ld [bc], a
    ld hl, sp+$00
    ldh [$ff8a], a
    ld bc, $86ec
    ld bc, $01fb
    nop
    add b
    jr c, jr_019_642b

jr_019_642b:
    ld b, $01
    nop
    rlca
    nop
    rra
    nop
    rra
    ret nc

    inc bc
    ld b, b
    ld [bc], a
    rst $38
    nop
    ld hl, sp-$3a
    ld [bc], a
    jr c, jr_019_6442

    nop
    nop
    rst $38
    nop

jr_019_6442:
    ldh [$ff92], a
    ld [bc], a
    inc d
    ld [bc], a
    rst $38
    nop
    db $fc
    add l
    ld bc, $8896
    nop
    ld b, [hl]
    nop
    ld a, $a5
    ld bc, $8a92
    ld bc, $02f6
    ld bc, $8700
    adc b
    ld bc, $0026
    ld a, [hl]
    add a
    nop
    ld c, h
    sub [hl]
    inc bc
    ld [hl], d
    ret


    ld [bc], a
    cpl
    ld [bc], a
    nop
    nop
    nop
    adc h
    ld bc, $007e
    rrca
    sub d
    nop
    ld a, $02

jr_019_6477:
    cp $00
    cp $d2
    inc bc
    ret z

    nop
    ldh [$ffc5], a
    inc bc
    inc [hl]
    sub b
    ld [bc], a
    ret nc

    ld [bc], a
    rst $38
    nop
    ret nz

    push bc
    ld [bc], a
    xor d
    call nc, $e402
    nop
    rst $38
    xor b
    ld bc, $a770
    ld bc, $02a6
    rlca
    nop
    rrca
    add [hl]
    inc bc
    sub h
    ld [bc], a
    rrca
    nop
    inc bc
    ret nc

    ld bc, $0290
    ld bc, $0f00
    sbc d
    nop
    or $00
    db $fc
    adc b
    ld [bc], a
    ld [$1f41], a
    nop
    nop
    rra
    sub b
    nop
    ld [hl], $00
    jp Jump_000_0184


    xor b
    ld [bc], a
    ldh [$fff8], a
    ld hl, sp-$5c
    ld bc, $02c8
    db $fc
    rst $38
    ldh a, [$ff84]
    nop
    inc de
    adc d
    ld [bc], a
    and $02
    nop
    nop
    jr nc, jr_019_6477

    nop
    inc h
    adc [hl]
    ld [bc], a
    sbc b
    nop
    add b
    rst $00
    inc bc
    ld h, b
    nop
    nop
    or b
    inc bc
    ld [hl], d
    add l
    nop
    ld c, c
    nop
    inc e
    dec h
    nop
    inc bc
    inc e
    inc e
    nop
    di
    or h
    dec b
    ld b, d
    ld b, c
    ccf
    nop
    nop
    ccf
    jp z, $6402

    ld b, c
    rst $38
    ld bc, $ff0f
    rlca
    cp $0d
    adc h
    jr c, @+$01

    ld b, h
    rst $00
    add d
    add e
    sub c
    add c
    ld de, $1001
    add h
    nop
    xor e
    ld bc, $fe00
    ret z

    nop
    ld a, e
    ld b, $ff
    ldh a, [$ff7f]
    db $fc
    rrca
    nop
    inc bc
    sbc [hl]
    nop
    ldh a, [$ff87]
    nop
    ld c, e
    nop
    rst $08
    add [hl]
    ld [bc], a
    ld [de], a
    nop
    ld bc, $028b
    db $e4
    ld bc, $7f1c
    or b
    nop
    ld [hl], b
    ld bc, $ffff
    add a
    ld bc, $0030
    rlca
    add l
    ld [bc], a
    dec a
    rlca
    add b
    add b
    ldh [$ffe0], a
    ldh a, [$fff0]
    db $fc
    db $fc
    add [hl]
    nop
    rlc b
    ld b, $29
    nop
    dec bc
    pop bc
    pop bc
    rst $38
    ld bc, $1017
    daa
    jr nz, jr_019_65a9

    ld b, b
    ld a, a
    ld [hl], b
    ld b, c
    sbc a
    add b
    nop
    ccf
    sub c
    nop
    db $e4
    nop
    ldh [$ffa3], a
    nop
    and d
    ld bc, $008f
    ld b, c
    scf
    jr nc, @+$07

    rlca
    nop
    adc a
    ld bc, $03ff
    jp $a500


    dec bc
    ldh [$ff7e], a
    ldh a, [$ff38]
    cp $1e
    db $e3
    ld h, e
    add c
    add c
    ld bc, $8501
    ld [bc], a
    ld e, h
    and a
    inc bc
    or d
    inc bc
    rst $38
    nop
    nop
    db $fc
    and a
    inc b
    add [hl]
    inc b
    inc bc
    inc bc
    rrca
    rrca
    rst $38
    adc b
    ld bc, $87b7
    nop
    ret


    add [hl]
    ld bc, $02c8
    cp $ff
    db $fc
    add e

jr_019_65a9:
    nop
    and b
    add a
    nop
    cp l
    nop
    rlca
    add h
    ld bc, $8bd1
    nop
    cp h
    nop
    rra
    and h
    nop
    or c
    adc e
    nop
    cp [hl]
    nop
    ld a, h
    add h
    nop
    or c
    xor c

jr_019_65c4:
    ld b, $c0
    ld bc, $df20
    and a
    ld b, $cc
    dec b
    cp $ff
    add b
    rst $38
    ld c, b
    or a
    add a
    nop
    adc e
    inc bc
    ld hl, sp-$01
    ld b, b
    cp a
    xor c
    ld bc, $0556
    and l
    ld e, d
    ld [bc], a
    db $fd
    jr nz, jr_019_65c4

    ld b, h
    nop
    rst $38
    dec b
    dec d
    db $eb
    ld bc, $41ff
    cp a
    ret


    dec b
    adc d
    rlca
    rst $38
    pop hl
    ccf
    ld bc, $81ff
    rst $38
    pop af
    rst $00
    nop
    call nz, Call_000_1f07
    jr @+$09

    inc b
    rst $00
    ret nz

    rlca
    nop
    add l
    ld bc, $0362
    nop
    rst $38
    cp $02
    ld b, c
    db $fc
    inc b
    ld bc, $3cfc
    add e
    ld b, $e6
    inc c
    ld bc, $7fff
    rst $38
    dec e
    dec e
    jr c, jr_019_665c

    ld b, b
    ld a, a
    ld e, h
    ld a, a
    db $ec
    and e
    rlca
    dec a
    ld [$e0ff], sp
    rst $38
    inc h
    db $db
    nop
    rst $38
    ld [hl+], a
    db $dd
    ld b, h

jr_019_6634:
    nop
    rst $38
    inc bc
    and c
    ld e, [hl]
    nop
    rst $38
    xor e
    rlca
    inc d
    inc bc
    ld d, b
    xor a
    ld b, b
    cp a
    xor e
    rlca
    inc b
    rlca
    ld a, a
    rst $38
    rlca
    rst $38
    ld hl, $04df
    ei
    adc c
    ld bc, $05d0
    jr nz, jr_019_6634

    ld bc, $00fe
    rst $38
    and a
    nop
    or b

jr_019_665c:
    nop
    ld bc, $00ae
    scf
    nop
    ccf
    add e
    rlca
    ld c, e
    ld bc, $07ff
    adc b
    dec b
    add c
    nop
    cp $c6
    ld b, $b2
    nop
    rra
    add h
    rlca
    dec sp
    nop
    rst $38
    add h
    dec b
    and l
    nop
    rra
    and e
    rlca
    call Call_000_0086
    and d
    ld [bc], a
    ld a, [hl]
    rst $38
    jr c, @-$72

    nop
    add hl, sp
    rst $38
    cpl
    nop
    cpl
    rst $38
    ld b, e
    nop
    rst $38
    inc bc
    nop
    rra
    nop
    inc bc
    add e
    nop
    dec bc
    ld b, l
    nop
    rst $38
    inc bc
    nop
    ld a, a
    nop
    ccf
    ld b, a
    nop
    rst $38
    or b
    nop
    ld a, $08
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp $ca
    nop
    ld [hl], $22
    nop
    ret z

    nop
    ld a, [hl+]
    ld b, $1f
    nop
    rrca
    nop
    rra
    nop
    ccf
    ld b, d
    nop
    rst $38
    or [hl]
    nop
    ld b, b
    nop
    cp $ae
    nop
    add h
    ld [bc], a
    rlca
    nop
    ld bc, $0024
    nop
    ldh a, [$ff8a]
    nop
    ld d, b
    nop
    inc bc
    inc [hl]
    nop
    nop
    ld bc, $0042
    rlca
    add h
    nop
    add d
    inc bc
    rra
    nop
    ld a, a
    nop
    call $1000
    ld [bc], a
    ldh [rP1], a
    db $fc
    add $00
    add sp, $00
    inc bc
    and h
    nop
    db $fc
    nop
    ccf
    call z, $b600
    ld [bc], a
    rst $38
    nop
    rlca
    ret nc

    nop
    ld h, d
    ld [bc], a
    rrca
    nop
    rlca
    add a
    nop
    ld a, b
    nop
    add b
    ld b, c
    rst $38
    add c
    add [hl]
    nop
    rra
    inc bc
    rlca
    rst $38
    ld a, a
    db $fc
    call nz, Call_000_3b01
    nop
    nop
    ret z

    nop
    inc h
    nop
    ld bc, $0086
    ld e, e
    ld [bc], a
    add b
    nop
    pop bc
    add e
    ld bc, $0238
    ldh [rIE], a
    ldh a, [rSTAT]

jr_019_6731:
    rst $38
    ld hl, sp+$04
    rst $38
    nop
    ld bc, $0300
    add [hl]
    nop
    db $e4
    nop
    ld a, a
    add [hl]
    nop
    ld c, h
    nop
    add b
    xor b
    nop
    ret c

    inc b
    ldh a, [rP1]
    ld hl, sp+$00
    rlca
    adc [hl]
    nop
    ret z

    add [hl]
    nop
    add hl, sp
    inc bc
    nop
    inc bc
    nop
    nop
    sub b
    nop
    inc l
    ld [bc], a
    rst $38
    nop
    ld a, a
    adc b
    ld bc, $0084
    cp $8a
    ld bc, $0016
    nop
    call z, Call_000_2001
    nop
    rrca
    rlc c
    ld [hl-], a
    ld b, c
    add c
    rst $38
    ld [hl+], a
    rst $38
    nop
    jp Jump_019_7f41


    ld h, b
    ld b, c
    ccf
    jr nz, jr_019_677e

jr_019_677e:
    rst $38
    add a
    ld bc, $0634
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nc, jr_019_6731

    ld bc, $0935
    inc bc
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b
    ld hl, sp+$23
    rst $38
    nop
    pop bc
    adc c
    nop
    ld d, a
    jp $e000


    sub d
    ld bc, $0094
    rrca
    adc h
    nop
    or h
    nop
    cp $d0
    ld bc, $00ba
    add b
    and a
    ld bc, $0174
    nop
    rrca
    adc $00
    ldh [c], a
    adc e
    nop
    dec [hl]
    add h
    ld bc, $a3a7
    ld bc, $8372
    nop
    cp h
    ret nc

    ld [bc], a
    add [hl]
    nop
    ret nz

    add e
    nop
    and [hl]
    ret nc

    nop
    ret c

    ld [bc], a
    ret nz

    nop
    ldh [$ff98], a
    ld [bc], a

jr_019_67d7:
    sub h
    nop
    ldh a, [$ffa3]
    nop
    ld a, b
    add $01
    inc c
    nop
    inc bc
    add h
    nop
    or [hl]
    inc b
    ld bc, $f000
    nop
    db $fc
    ret nc

    nop
    inc a
    adc d
    ld bc, $0111
    nop
    rlca
    sub b
    nop
    ld d, d
    nop
    cp $90
    ld [bc], a
    db $f4
    ld [bc], a
    ret nz

    nop
    rst $38
    jp nc, $8802

    nop
    pop hl
    add h
    nop
    jr nz, jr_019_6809

jr_019_6809:
    ld bc, $0085
    sbc $8c
    nop
    ld a, $02
    ldh a, [rP1]
    add b
    adc b
    ld [bc], a
    ld h, d
    inc b
    rst $38
    nop
    rst $38
    nop
    ccf
    sub b
    ld [bc], a
    halt
    inc b
    ld a, a
    nop
    rrca
    nop
    rlca
    sub d
    nop
    inc l
    nop
    rra
    sub b
    nop
    ld d, d
    nop
    ld hl, sp-$6e
    ld [bc], a
    ldh a, [c]
    ld [bc], a
    ret nz

    nop
    ldh a, [$ff8c]
    nop
    cp h
    ld [bc], a
    ccf
    nop
    rrca
    add l
    nop
    ret z

    add e
    inc bc
    jr nz, jr_019_67d7

    ld bc, $02b2
    ret nz

    nop
    ret nz

    and e
    ld bc, $92e4
    nop
    call nz, $e000
    jp $7c00


    sub b
    ld bc, $0294
    rrca
    nop
    ld bc, $0290
    ld a, b
    add h
    inc bc
    push de
    ld bc, $0100
    ld b, [hl]
    nop
    rst $38
    nop
    inc bc
    add [hl]
    nop
    rra
    ld [$ff0e], sp
    ccf
    rst $38
    ld [hl], c
    pop af
    ldh [$ffe0], a
    ret nz

    adc b
    inc bc
    dec [hl]
    rlca
    add e
    rst $38
    rst $20
    rst $38
    db $fc
    db $fc
    cp $ce
    ld b, d
    nop
    rst $38
    rlca
    ldh a, [rIE]
    db $fc
    rst $38
    ld c, $0f
    ld [bc], a
    inc bc
    and [hl]
    inc b
    ld e, [hl]
    ld [bc], a
    cp $00
    cp $90
    nop
    ld l, b
    add [hl]
    ld [bc], a
    ld e, c
    sub b
    ld bc, $02aa
    nop
    nop
    nop
    adc e
    inc bc
    sbc [hl]
    ret nc

    ld bc, $00c0
    ldh a, [$ff90]
    nop
    ld d, d
    adc a
    ld [bc], a
    di
    nop
    rrca
    adc e
    nop
    ld d, h
    adc a
    ld bc, $0f1e
    rlca
    rst $38
    rrca
    db $fc
    rra
    ld sp, hl
    ccf
    pop af
    ld a, $e2
    ld a, [hl]
    and $78
    ret z

    ldh a, [$ffd0]
    ld [hl+], a
    add b
    xor h
    ld [bc], a
    ld sp, $7f01
    ld b, c
    add h
    ld bc, $19fa
    jr nc, jr_019_68f8

    jr jr_019_68ea

    inc c
    rlca
    ld b, $01
    ld bc, $8181
    pop bc
    ld b, c
    pop hl
    ld hl, $13f3
    ei
    dec bc

jr_019_68ea:
    cp $0f
    cp $07
    cp $87
    add b
    jp Jump_000_0a02


    ld c, d
    rst $38
    nop
    ld [bc], a

jr_019_68f8:
    ldh a, [rP1]
    db $fc
    ret nc

    dec b
    nop
    nop
    add b
    adc [hl]
    nop
    sub d
    nop
    nop
    and l
    ld [bc], a
    dec b
    add e
    ld [bc], a
    dec d
    dec d
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $fe
    ldh [$ffa0], a
    pop bc
    pop bc
    add a
    add a
    adc l
    adc l
    add hl, de
    add hl, de
    add hl, sp
    add hl, sp
    ld sp, $5131
    ld [hl], c
    push bc
    dec b
    daa
    ld [bc], a
    jp Jump_000_3ec3


    ld b, c
    ld a, $36
    ldh [rNR43], a
    ld a, $f7
    rst $38
    jr nz, jr_019_6953

    ld [hl], b
    ld [hl], b
    db $fc
    db $fc
    rst $28
    rst $28
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ldh [c], a
    db $e3
    ld a, [hl]
    ld b, a
    ccf
    inc hl
    rra
    inc de
    rrca
    dec bc
    add a
    add a
    rst $00
    rst $00
    ld h, e
    db $e3
    ld [hl-], a
    ldh a, [c]
    rlc l

jr_019_6953:
    ld e, [hl]
    dec b
    ret nz

    rst $38
    ld h, b
    ld a, [hl]
    nop
    rst $38
    ret nc

    inc bc
    ld b, b
    ld [bc], a
    nop
    nop
    ldh [$ff8e], a
    ld [bc], a
    ld d, [hl]
    nop
    ld bc, $008c
    sub h
    nop
    inc bc
    adc [hl]
    nop
    ld d, h
    nop
    ret nz

    add e
    nop
    ld h, [hl]
    adc h
    dec b
    add h
    ld [bc], a
    nop
    nop
    nop
    and a
    ld [bc], a
    inc bc
    inc bc
    ld e, $fe
    ld [hl-], a
    ld [hl-], a
    inc hl
    ld h, d
    inc bc
    jp $c1c3


    pop bc
    inc hl
    add c
    inc bc
    ld d, c
    ld [hl], c
    sub b
    ldh a, [rSTAT]
    adc b
    ld hl, sp+$0f
    add l
    db $fd
    adc $fe
    ld hl, sp-$08
    add b
    add b
    rst $30
    rst $38
    push de
    db $dd
    ld [hl], $3e
    ld a, a
    ld a, a
    add a
    dec b
    ld [hl+], a
    inc bc
    jp nz, $82c3

    add e
    ld b, c
    inc b
    rlca
    ldh [rNR41], a
    ret z

    rst $08
    jr c, jr_019_69f5

    rrca
    rrca
    nop
    nop
    ld de, $19f1
    ld sp, hl
    add hl, bc
    ld sp, hl
    dec bc
    ei
    ld a, [bc]
    ld a, [$fe0e]
    call c, $3cfc
    inc a
    jr nc, jr_019_6a0b

    jr jr_019_69ed

    ld [$0c0f], sp
    rrca
    inc b
    ld b, d
    rlca
    ld b, $04
    rlca
    nop
    nop
    nop
    ldh a, [$ffb4]
    nop
    add [hl]
    ld b, $00
    ldh [$ffe0], a
    db $fc
    ld a, a
    cp $0f
    ret


    ld b, $1e
    ret nc

    ld b, $00

jr_019_69ed:
    inc bc
    rrca
    nop
    nop
    ld a, a
    sub c
    nop
    sub c

jr_019_69f5:
    inc b
    ld hl, sp+$00
    ret nz

    nop
    ldh a, [$ffab]
    dec b
    ldh a, [c]
    add e
    inc b
    ldh a, [rP1]
    nop
    sub a
    dec b
    ld d, l
    nop
    cp $ce
    inc b
    ld c, h

jr_019_6a0b:
    inc bc
    nop
    ld bc, $01ff
    xor d
    dec b
    db $e3
    inc bc
    rlca
    ld b, $81
    add c
    inc hl
    add d
    add hl, bc
    jp nz, $e1c2

    pop hl
    pop af
    sub c
    ld hl, sp+$08
    db $fc
    inc b
    and e
    dec b
    or d
    inc bc
    inc bc
    inc bc
    inc e
    inc e
    rst $00
    dec b
    daa
    ld bc, $3c3c
    rst $08
    nop
    ld de, $8005
    add b
    ldh a, [$fff0]
    ld e, $1e
    and a
    rlca
    ld a, h
    ld bc, $1818
    dec h
    ld [$1111], sp
    ld de, $2223
    ld b, a
    ld b, h
    adc a
    adc b
    inc c
    rrca
    inc e
    rra
    inc a
    ccf
    cp $e7
    rst $38
    add e
    and l
    ld bc, $8c4a
    dec b
    ldh [rSC], a
    pop bc
    ldh [$ff60], a
    jp $9b05


    ld b, l
    rst $38
    ld bc, $0100
    ld b, d
    rst $38
    rlca
    ld b, d
    rst $38
    rrca
    dec h
    rst $38
    ld [bc], a
    ldh a, [rIE]
    ldh [rLY], a
    rst $38
    ret nz

    ld bc, $ffff
    call $4f04
    and h
    dec b
    ld c, $41
    rra
    ld hl, sp+$41
    rrca
    ld hl, sp+$02
    ld c, $f8
    rrca
    adc c
    inc b
    ld b, [hl]
    dec b
    rlca
    rst $38
    rlca
    rlca
    rrca
    adc a
    adc b
    ld bc, $c650
    dec b
    db $ec
    and l
    nop
    ld a, b
    inc bc
    add b
    rst $38
    rst $38
    ld a, a
    add l
    ld bc, $0158
    rrca
    inc c
    and l
    ld [HeaderLogo], sp
    ccf
    ldh a, [$ff85]
    rlca
    ldh [c], a
    inc bc
    cp $06
    cp $02
    ret


    dec b
    sbc c
    dec c
    rst $38
    nop
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    inc de
    rra
    ld de, $081f
    rrca
    inc b
    rlca
    ld b, c
    add h
    add a
    dec h
    nop
    inc b
    pop bc
    pop bc
    ld a, a
    rst $38
    ld e, $85
    inc b
    ld d, c
    ld [$3e0e], sp
    ld a, $74
    ld a, h
    db $e4
    db $fc
    adc b
    ld hl, sp-$5d
    ld b, $a2

jr_019_6ae5:
    inc bc
    db $10
    ldh a, [rIF]
    ld [$1f41], sp
    db $10
    ld b, c
    ccf
    jr nz, jr_019_6b33

    ld a, a
    ld b, b
    ld b, a
    rst $38
    nop
    inc bc
    ldh [$ff60], a
    ldh a, [$ff30]
    ld b, c
    ld hl, sp+$1f
    ld bc, $1fff
    add $07
    reti


    add e
    dec b
    sbc d
    inc b
    inc b
    rst $38
    ld [$10ff], sp
    add e
    ld [bc], a
    inc e
    inc b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    xor a
    inc b
    ld b, b
    nop
    ret nz

    and h
    ld [$00c4], sp
    jr jr_019_6ae5

    ld [$00c8], sp
    ld b, $8e
    nop
    ld b, c
    nop
    ld bc, $f841
    rrca
    inc bc
    rst $38
    rra
    rst $38
    inc e
    add h

jr_019_6b33:
    ld [$02ca], sp
    ret nz

    rst $38
    ret nz

    add [hl]
    rlca
    jp c, $0700

    or b
    dec b
    ld d, e
    add h
    dec b
    ld [$ff01], a
    ld [hl], b
    add a
    ld [$0113], sp
    cp $0e
    and e
    dec b
    ld [hl], $01
    ld hl, sp+$18
    and [hl]
    rlca
    ret nz

    inc b
    ldh a, [$ff1f]
    jr jr_019_6b62

    rlca
    sub b
    ld bc, $04ad
    add c
    ld a, a

jr_019_6b62:
    ld h, c
    add e
    add e
    ld b, d
    add e
    add d
    ld bc, $8687
    ld b, c
    add a
    add h
    ld bc, $0c0f
    add e
    nop
    dec e
    ld b, c
    ld b, $00
    ld b, c
    adc a
    nop
    ld b, c
    rst $18
    nop
    ld [hl+], a
    ldh a, [rNR52]
    db $10
    rlca
    jr @+$1a

    cp b
    ld [$0cbc], sp
    ld a, a
    ld b, b
    add a
    ld bc, $01f8
    ccf
    jr nc, @+$43

    rra
    db $10
    adc c
    inc b
    ld b, l
    dec b
    cp $06
    db $fc
    inc c
    ld hl, sp+$38
    add h
    dec b
    sbc c
    ld [bc], a
    ccf
    ldh [$ffe0], a
    add a
    dec b
    ld [hl+], a
    rst $38
    ld b, a
    rst $38
    nop
    cpl
    rst $38
    dec a
    nop
    rla
    ld bc, $0001
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    ld e, $3f
    inc a
    ld a, a
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    db $fc
    rst $38
    ldh [rIE], a
    add b
    adc c
    nop
    nop
    ld bc, $01ff
    ld b, [hl]
    rst $38
    nop
    ld [$fcfc], sp
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    cp $86
    nop
    ld h, c
    and l
    nop
    ld a, [hl-]
    add hl, bc
    ret nz

    ret nz

    ldh [$ffe0], a
    ldh a, [rSVBK]
    ld hl, sp+$38
    db $fc
    inc e
    and h
    nop
    add [hl]
    inc b
    rrca
    rrca
    ld c, $1d
    ld e, $a3
    nop
    adc h
    inc bc
    ccf
    jr c, @+$01

    ret nz

    xor [hl]
    nop
    ld h, b
    and e
    nop
    ld c, l
    ld bc, $fd03
    xor b
    nop
    and c
    ld c, $00
    nop
    ldh [$ffe0], a
    ld hl, sp-$08
    cp $fe
    cp a
    rst $18
    rst $38
    add a
    rst $38
    add c
    rst $38
    xor h
    nop
    inc sp
    inc bc
    ret nz

    ret nz

    ldh [$ffe0], a
    adc c
    nop
    ld [hl], $23
    ld bc, $0301
    inc bc
    ld b, c
    ld a, a
    ld [hl], b
    ld b, c
    rst $38
    ldh [rSB], a
    rst $18
    ldh [rSTAT], a
    rst $38
    ret nz

    ld bc, $80ff
    add e
    nop
    adc d
    dec bc
    ld hl, sp+$18
    db $fc
    inc e
    db $fc
    inc c
    cp $0e
    cp $06
    rst $38
    rlca
    inc hl
    inc bc
    add hl, hl
    rlca
    ld bc, $0f0e
    ld b, c
    rst $38
    add b
    nop
    ld a, a
    adc e
    nop
    ld d, l
    ld b, c
    inc bc
    rst $38
    nop
    inc bc
    ld b, h
    rst $38
    ld bc, $00a3
    db $e4
    dec hl
    add b
    ld b, e
    rrca
    ld c, $01
    rra
    ld e, $83
    nop
    sbc b
    ld bc, $1c1f
    ld b, l
    rst $38
    nop
    inc bc
    db $fd
    ld [bc], a
    cp $03
    jp z, Jump_000_3c01

    inc b
    rlca
    cp $06
    cp $0e
    rlc c
    ld c, e
    inc hl
    nop
    inc bc
    ccf
    inc a
    dec sp
    inc a
    ld b, c
    ccf
    jr c, jr_019_6c90

    ld [hl], a

jr_019_6c90:
    ld a, b
    ld b, c
    ld a, a
    ld [hl], b
    ld bc, $f0ef
    ld b, c
    ld a, [$0007]
    cp $41
    rlca
    rst $38
    db $10
    rlca
    cp $06

jr_019_6ca3:
    or $0e
    cp $0e
    ld a, h
    sbc h
    jr c, jr_019_6ca3

    ldh a, [$fff0]
    ldh [$ffe0], a
    add b
    add b
    adc l
    nop
    ld [hl-], a
    daa
    ld bc, $ff01
    ldh [$ff8a], a
    nop
    db $f4
    ld b, c
    ret nz

    rst $38
    ld c, $0f
    rst $38
    rrca
    rst $28
    rra
    db $ec
    rra
    db $fc
    rra
    ld hl, sp+$1f
    ret c

    ccf
    ld hl, sp+$3f
    add a
    nop
    add d
    rlca
    ld [hl], b
    ldh a, [$ff38]
    ld hl, sp+$1c
    db $fc
    inc c
    db $fc
    cpl
    inc bc
    ld bc, $c0bf
    ld b, [hl]
    rst $38
    add b
    ld b, e
    rst $38
    nop
    nop
    cp $85
    ld bc, $0873
    rlca
    ld hl, sp+$3f
    ldh a, [$ff7f]
    ldh a, [$ff7f]
    ldh [rIE], a
    add [hl]
    nop
    ld sp, hl
    nop
    rst $38
    rst $08
    ld bc, $af7f
    nop
    ldh [rSB], a
    inc bc
    inc bc
    call $ef00
    xor b
    ld bc, $c572
    ld [bc], a
    ld a, [hl-]
    ld bc, $fb70
    ld b, c
    inc b
    rst $38
    ld bc, $f704
    ld b, d
    inc c
    rst $38
    ld [bc], a
    inc e
    db $db
    inc a
    adc d
    ld bc, $a362
    ld [bc], a
    ld a, c
    add hl, bc
    rra
    rst $38
    rrca
    cp $1f
    db $fc
    ccf
    ld hl, sp+$7f
    ldh a, [$ff85]
    ld [bc], a
    scf
    ld c, l
    rst $38
    nop
    add h
    ld bc, $2d36
    ret nz

    ld b, $80
    add b
    ld a, a
    ld a, b
    ccf
    inc a
    rra
    push bc
    nop
    ld b, [hl]
    ret


    nop
    add e
    ld [bc], a
    nop
    rst $38
    ldh [rNR44], a
    rst $38
    ld [bc], a
    rra
    rra
    nop
    add a
    ld [bc], a
    sub l
    inc b
    rra
    rst $38
    rst $38
    cp $fe
    add e
    nop
    sbc $02
    cp c
    ld a, [hl]
    ld a, [hl]
    ld [hl+], a
    rst $38
    inc bc
    rst $28
    rst $28
    add a
    add a
    dec h
    inc bc
    ld b, c
    rst $38
    nop
    ld bc, $e8e7
    ld [hl+], a
    rst $38
    push bc
    nop
    or d
    nop

jr_019_6d75:
    rst $38
    adc e
    nop
    ld a, [bc]
    add l
    inc bc
    inc l
    ld [bc], a
    ei
    rlca
    ld a, a
    ld [hl+], a
    rst $38
    nop
    db $fc
    add [hl]
    ld [bc], a
    xor l
    add h
    inc bc
    ld b, h
    ld bc, $f8fc
    ld b, e
    ld hl, sp+$38
    dec bc
    ld hl, sp-$10
    rst $38
    db $fc
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    inc bc
    inc bc
    nop
    adc b
    ld [bc], a
    ld [$8000], a
    inc h
    rst $38
    ld bc, $7f7f
    call nz, $ed02
    ld a, [bc]
    rst $38
    rrca
    rst $38
    ld a, [hl]
    cp $fc
    db $fc
    ldh a, [$fff0]
    add b
    add b
    and e
    nop
    ld a, [hl-]
    adc l
    ld bc, $03b8
    nop
    nop
    inc bc
    inc bc
    adc l
    ld [bc], a
    ld h, b
    ld [bc], a
    add b

jr_019_6dc6:
    rst $38
    add b
    adc h
    ld [bc], a
    ld [hl], b
    ld b, d
    jr c, jr_019_6dc6

    nop
    jr nc, jr_019_6d75

    ld bc, $0050
    ld h, b
    ld [hl+], a
    ldh [$ffc5], a
    nop
    push af
    inc bc
    jr c, jr_019_6e1c

    inc a
    ccf
    add l
    ld [bc], a
    db $e4
    ld b, l
    nop
    rst $38
    inc bc
    ldh [rIE], a
    rst $38
    rst $38
    and a
    ld [bc], a
    ld l, a
    and e
    inc bc
    ret nc

    and e
    inc bc
    ret c

    inc bc
    ldh [$ffe0], a
    ret nz

    ret nz

    rlc b
    db $dd
    rst $38
    cpl
    nop
    inc bc
    rst $38
    rst $38
    add e
    add e
    inc hl
    ld de, $0103
    ld bc, $1111
    dec h
    rst $38
    inc b
    inc bc
    inc bc
    ld de, $0311
    jp z, $2600

    ld bc, $8181
    ld [hl+], a
    rra
    adc $00

jr_019_6e1c:
    ld [hl], $00
    ld de, $00ca
    ld b, [hl]
    inc b
    ld bc, $1f01
    rra
    inc bc
    call nz, Call_019_5600
    adc l
    nop
    ld c, h
    ld bc, $1f1f
    adc c
    nop
    inc l
    inc hl
    ld de, $0087
    ld a, [hl-]
    add h
    nop
    inc d
    jp z, $8600

    ld bc, $8383
    ld [hl+], a
    rst $00
    jp z, $9600

    daa
    pop af
    ret


    nop
    inc hl
    ld [bc], a
    inc bc
    inc bc
    rlca
    jp z, $b600

    dec h
    rra
    adc c
    nop
    ld e, b
    ld bc, $3939
    add e
    nop
    ld d, $01
    add hl, hl
    add hl, hl
    rst $00
    nop
    db $d3
    ld bc, $3131
    add l
    nop
    ld d, $01
    add hl, de
    add hl, de
    add a
    nop
    adc h
    ld [bc], a
    ld de, $1111
    call nz, $f600
    adc e
    nop
    inc a
    inc bc
    inc bc
    inc bc
    rra
    rra
    adc e
    nop
    db $ec
    ld bc, $0303
    adc l
    nop
    ld a, [hl-]
    adc c
    nop
    cp b
    rlca
    add c
    add c
    rrca
    rrca
    add e
    add e
    pop hl
    pop hl
    adc c
    nop
    ld c, d
    daa
    rst $00
    add a
    nop
    ld a, h
    adc l
    nop
    db $f4
    add l
    nop
    or $03
    rst $00
    rst $00
    rst $28
    rst $28
    push de
    nop
    pop hl
    add h
    ld bc, $c464
    ld bc, $8d86
    ld bc, $875c
    ld bc, $094a
    ld bc, $e301
    db $e3
    rst $00
    rst $00
    adc a
    adc a
    ld bc, $2901
    rst $38
    ld bc, $8383
    cpl
    rst $38
    inc bc
    ccf
    ccf
    ccf
    ccf
    dec [hl]
    rst $38
    inc bc
    db $e3
    db $e3
    ldh [c], a
    ldh [c], a
    and l
    ld bc, $a548
    ld bc, $074a
    rlca
    rlca
    inc hl
    inc hl
    jp $8fc3


    adc a
    and e
    nop
    and b
    dec c
    rst $38
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $28
    jr z, @-$37

    nop
    rst $28
    db $10
    rst $28
    ld b, e
    nop
    rst $38
    ld bc, $df00
    ld b, h

jr_019_6efc:
    nop
    rst $38
    nop
    nop
    add [hl]
    ld [bc], a
    inc c
    add l
    ld [bc], a
    jr nz, jr_019_6f07

jr_019_6f07:
    nop
    adc b
    ld [bc], a
    ld e, $85
    ld [bc], a
    rra
    rlc d
    inc l
    add l
    ld [bc], a
    inc h
    ld bc, $ff00
    rlc d
    ld [hl+], a
    ld bc, $00ff
    ld b, a
    nop
    rst $38
    ret nc

    ld [bc], a
    ld l, a
    inc bc
    nop
    nop
    nop
    nop
    adc a
    ld [bc], a
    jr jr_019_6f56

    rst $38
    nop
    nop
    add h
    ld bc, $03ff
    jr z, jr_019_6efc

    db $10
    rst $28
    ld b, [hl]
    nop
    rst $38
    ld bc, $f708
    adc b
    ld [bc], a
    ld [hl-], a
    add l
    ld [bc], a
    ld a, l
    add e
    ld [bc], a
    ld a, l
    add [hl]
    ld [bc], a
    ld c, l
    ret


    ld [bc], a
    ccf
    call $1000
    ld [bc], a
    inc bc
    nop
    rrca
    jr z, jr_019_6f55

jr_019_6f55:
    ld [bc], a

jr_019_6f56:
    rlca
    nop
    ld a, a
    adc d
    ld [bc], a
    ld a, e
    nop
    ccf
    adc d
    ld [bc], a
    ld b, l
    ld [bc], a
    ld bc, $ff00
    ret


    ld [bc], a
    ld c, l
    rst $00
    ld [bc], a
    add c
    cp d
    inc bc
    rlca
    xor h
    inc bc
    ld [bc], a
    or [hl]
    ld [bc], a
    rst $28
    xor c
    ld [bc], a
    and $c4
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rst $00
    nop
    adc l
    ld [bc], a
    xor c
    adc c
    ld [bc], a
    dec bc
    ld [bc], a
    rra
    nop
    rra
    jp $ef02


    ret nc

    inc bc
    ld d, a
    ld [bc], a
    ccf
    nop
    ld bc, $02d0
    add e
    adc a
    inc bc
    xor h
    nop
    ccf
    sbc $03
    ld sp, $fc00
    or d
    inc bc
    sbc l
    ld [bc], a
    ld hl, sp+$00
    ld hl, sp-$3d
    inc bc
    ld l, a
    ld [hl], $00
    nop
    rlca
    ld a, [hl+]
    nop
    nop
    rrca
    adc h
    inc bc
    ld c, e
    nop
    rra
    adc h
    ld [bc], a
    ld a, c
    nop
    ld a, a
    ret c

    ld [bc], a
    adc l
    add [hl]
    inc bc
    ld h, [hl]
    sub b
    inc bc
    ld b, a
    ld [bc], a
    add b
    nop
    db $fc
    sub d
    inc bc
    ld e, e
    nop
    ld hl, sp-$3a
    inc bc
    sub l
    ld [bc], a
    rrca
    nop
    ld bc, $0490
    ld c, a
    nop
    rrca
    sub b
    inc bc
    xor e
    nop
    inc bc
    adc [hl]
    inc bc
    rra
    nop
    ldh [$ff8c], a
    ld [bc], a
    ld b, c
    nop
    cp $86
    inc bc
    ld b, c
    ld b, c
    cp $00
    ld [bc], a
    db $fc
    nop
    ldh a, [$ff32]
    nop
    nop
    ld bc, $028e
    db $dd
    ld bc, $00fe
    rst $08
    nop
    stop
    cp $cc
    inc b
    sbc e
    add h
    inc b
    inc [hl]
    xor e
    inc b
    rst $08
    sub b
    inc bc
    rra
    ld [bc], a
    cp $00
    ldh [$ffaa], a
    inc b
    ld b, l
    nop
    ld hl, sp-$78
    inc bc
    ld h, l
    ld [bc], a
    ldh [rP1], a
    ldh [$ffca], a
    inc b
    ld a, c
    nop
    ld bc, $05aa
    ld h, l
    ld [bc], a
    inc bc
    nop
    ccf
    xor c
    dec b
    ld d, e
    jp nc, $ef03

    add l
    inc b
    adc d
    ld b, c
    cp $00
    ld [bc], a
    ld hl, sp+$00
    add b
    adc [hl]
    inc b
    rst $28
    ld [bc], a
    rra
    nop
    ld a, a
    adc e
    inc b
    ld hl, $04ba
    dec hl
    or c
    dec b
    or [hl]
    nop
    rlca
    and e
    inc b
    rst $18
    ld bc, $3f00
    add a
    dec b
    db $e3
    sub d
    dec b
    rst $10
    ld [bc], a
    nop
    nop
    add b
    jp $c105


    ld bc, $1f00
    jp nc, $1b06

    nop
    nop
    push bc
    dec b
    rst $30
    and l
    ld b, $1d
    ld bc, $0000
    jp c, Jump_000_2904

    adc a
    dec b
    ld c, $00
    ld hl, sp+$3a
    nop
    ld [bc], a
    ld bc, $0000
    adc [hl]
    inc b
    cpl
    nop
    ld a, a
    xor h
    inc b
    inc de
    ld [bc], a
    ldh a, [rP1]
    ret nz

    add e
    dec b
    ld hl, $05c7
    rst $38
    add l
    inc bc
    ld b, c
    sub b
    ld [bc], a
    ld [hl], l
    ld [bc], a
    add b
    nop
    ldh [$ffce], a
    ld b, $ad
    add e
    ld [bc], a
    or $06
    rra
    nop
    ccf
    nop
    rra
    nop
    inc bc
    ldh a, [$ff29]
    ld b, $bb
    nop
    inc bc
    add e
    ld b, $b1
    adc b
    ld [bc], a
    ld a, l
    nop
    ld a, [hl]
    adc l
    ld [bc], a
    ld [hl], a
    inc b
    ld bc, $0700
    ret nz

    rlca
    add l
    dec b
    ret c

    ld bc, $1f00
    adc b
    inc b
    ld b, l
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    ret z

    inc b
    ld a, [bc]
    dec b
    rlca
    ret nz

    ccf
    inc bc
    db $fc
    rrca
    add l
    inc b
    add sp, $00
    ld c, $85
    ld [bc], a
    ld sp, hl
    and a
    rlca
    ld e, h
    add e
    rlca
    ld [hl], $02
    rrca
    ldh a, [rSB]
    adc b
    inc bc

jr_019_70ea:
    ld e, d
    and e
    ld b, $e6
    rlca
    cp $01
    ld hl, sp+$07
    nop
    rst $38
    ld a, h
    add e
    add [hl]
    inc b
    or $02
    ld [hl], b
    inc bc
    db $fc
    adc e
    ld [bc], a
    ld a, c
    add e
    inc bc
    ld l, h
    dec b
    ld a, e
    add b
    rra
    ldh [$ff03], a
    db $fc
    and e
    ld b, $de
    adc h
    rlca
    add b
    nop
    nop
    and a
    dec b
    sbc l
    adc h
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ldh a, [rP1]
    db $fc
    adc l
    inc bc
    ld c, c
    rlca
    inc bc
    nop
    rrca
    add b
    rra
    ldh [rTAC], a
    ld hl, sp-$55
    dec b
    ld l, h
    inc bc
    db $fc
    nop
    ld hl, sp+$07
    ret nc

    inc b
    push af
    adc h
    ld [bc], a
    ld l, l
    nop
    cp $88
    ld [bc], a
    ld sp, $fe04
    nop
    ldh a, [rP1]
    rst $38
    ret z

    ld [bc], a
    ldh [c], a
    add h
    ld b, $d8
    ld [$e008], sp
    inc e
    inc bc
    sbc h
    nop
    rst $38
    ccf
    ret nz

    push bc
    dec b
    add h
    add hl, bc
    ld bc, $0700
    jr nz, jr_019_70ea

    ld [hl], b
    ld a, $c1
    or $09
    ret


    ld [bc], a
    cp c
    inc bc
    db $fc
    nop
    db $fc
    inc bc
    ld b, c
    cp a
    ld b, b
    adc c
    inc b
    or h
    inc bc
    inc bc
    db $fc
    sbc a
    ld h, b
    ld c, b
    rst $38
    nop
    ld b, c
    db $ed
    ld [de], a
    and [hl]
    inc b
    or [hl]
    nop
    ccf
    add e
    dec b
    ld e, d
    ld [bc], a
    and b
    ld b, b
    cp b
    add [hl]
    ld [$0465], sp
    cp $01
    rst $38
    nop
    inc bc
    add e
    dec b
    rra
    add a
    inc b
    add hl, hl
    inc b
    rst $38
    ldh [$ff1f], a
    cp $01
    adc l
    ld [bc], a
    rla
    ld bc, $fe01
    ld b, e
    rst $38
    nop
    dec b
    call nz, $0000
    rst $38
    ld [hl], b

jr_019_71a9:
    adc a
    rst $00
    inc bc
    ld [hl], $03
    add b
    nop
    ld [hl], b
    nop
    add l
    rlca
    ld a, d
    ld [bc], a
    ldh [$ff1f], a
    rra
    add h
    dec b
    ld [hl], e
    inc bc
    rra
    nop
    add b
    ld a, a
    add a
    ld [bc], a
    ld a, [hl-]
    ld b, c
    cp $01
    adc c
    ld [bc], a
    jr c, jr_019_71ce

    rst $18
    jr nz, jr_019_71a9

jr_019_71ce:
    inc h
    add h
    inc b
    ret z

    ld [bc], a
    inc bc
    add b
    scf
    ld b, e
    add b
    ld a, a
    dec de
    ret z

    scf
    db $fc
    inc bc
    nop
    dec c
    nop
    adc a
    nop
    rst $18
    nop
    sbc $00
    cp $03
    db $fc
    rra
    ldh [$ff7f], a
    add b
    inc hl
    call c, $c837
    inc bc
    ret nz

    nop
    add b
    add a
    inc bc
    ld [de], a
    ld b, c
    adc a
    ld [hl], b
    ld bc, $20df
    adc e
    inc b
    jp nz, $c002

    nop
    ldh [$ff90], a
    inc bc
    ld b, l
    nop
    rrca
    adc d
    dec b
    inc sp
    nop
    ccf
    add e
    ld [bc], a
    ld sp, hl
    adc [hl]
    dec b
    adc a
    ld [bc], a
    ld e, $00
    ld bc, $058c
    cpl
    nop
    rlca
    adc b
    dec b
    rst $10
    nop
    add b
    add [hl]
    rlca
    ld h, a
    ld bc, $1768
    add l
    ld [$09b4], sp
    ld a, a
    add b
    dec e
    ldh [$ff0b], a
    ldh a, [rIF]
    ldh a, [$ff1f]
    ldh [$ff85], a
    ld [$0064], sp
    cp a
    ld c, b
    nop
    rst $38
    add e
    inc b
    db $e3
    inc bc
    nop
    db $fc
    nop
    cp $ce
    inc b
    ld l, l
    add [hl]
    ld b, $04
    inc bc
    nop
    rra
    nop
    inc bc
    sub b
    ld b, $25
    nop
    rst $38
    call nz, $e906
    ld [bc], a
    inc bc
    nop
    ld bc, $0883
    ld e, c
    jp $d909


    ld bc, $fe00
    jp nc, $070a

    nop
    ret nz

    add [hl]
    inc bc
    and e
    ld b, $0f
    nop
    rlca
    nop
    rlca
    nop
    rrca
    xor [hl]
    dec b
    adc a
    ld bc, $01fe
    ld b, c
    db $fc
    inc bc
    add l
    rlca
    ld c, b
    ld bc, $3fc0
    adc e
    ld [bc], a
    ld l, b
    ld bc, $f807
    adc a
    ld [bc], a
    ld h, [hl]
    inc bc
    ld a, a
    add b
    rlca
    ld hl, sp-$6f
    ld [bc], a
    ld l, d
    add e
    rlca
    xor h
    rst $38
    inc sp
    inc bc
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
    ld hl, sp+$30
    nop
    add hl, sp
    ld h, d
    dec c
    dec h
    ld bc, $008e
    inc d
    ld h, d
    db $10
    ld [hl+], a
    inc bc
    ld bc, $1413
    ld [hl+], a
    ld bc, $0091
    ld l, [hl]
    ld bc, $0315
    ld h, e
    ld d, $04
    inc bc
    ld a, [de]
    dec de
    ld bc, $9401
    nop
    adc e
    ld h, a
    inc e
    nop
    ld bc, $0096
    xor c
    nop
    ld bc, $2466
    sbc b
    nop
    ret z

    ld h, a
    dec hl
    sub [hl]
    nop
    xor c
    ld l, b
    inc sp
    ld h, $01
    ld h, e
    dec b
    dec hl
    nop
    ld h, e
    inc a
    nop
    nop
    ld l, d
    ld b, b
    ld h, e
    add hl, bc
    dec hl
    nop
    ld h, e
    ld c, e
    nop
    nop
    ld h, [hl]
    ld c, a
    nop
    ld [bc], a
    ld h, d
    ld d, [hl]
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc b
    adc l
    nop
    inc d
    ld h, e
    ld e, c
    sbc e
    nop
    ld b, $63
    ld e, l
    sbc e
    nop
    ld b, $63
    ld h, c
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld hl, sp+$6a
    nop
    ld l, d
    dec hl
    nop
    rst $38
    inc sp
    add hl, bc
    dec h
    nop
    push bc
    nop
    add hl, de
    adc c
    nop
    nop
    ld hl, sp+$29
    nop
    add hl, hl
    dec [hl]
    nop
    ld bc, $1b1a
    daa
    ld bc, $002b
    ld bc, $1d1c
    inc hl
    nop
    ld h, e
    ld e, $01
    ld bc, $9301
    nop
    ld l, h
    ld [hl+], a
    ld bc, $2267
    sub a
    nop
    adc e
    ld [bc], a
    ld bc, $2b2a
    inc h
    nop
    inc b
    inc l
    dec l
    ld bc, $2f2e
    ld h, e
    ld a, [bc]
    jp nc, Jump_019_7f00

    ld [$2330], sp
    inc hl
    ld sp, $0132
    ld bc, $3433
    ld [hl+], a
    dec d
    nop
    ld d, $8c
    nop
    sub h
    ld bc, $2735
    ld h, d
    ld [hl], $25
    ld bc, $3901
    ld a, [hl-]
    sub d
    nop
    adc [hl]
    ld h, d
    dec sp
    inc h
    ld bc, $3e65
    sub b
    nop
    ld l, a
    ld l, b
    ld b, h
    inc h
    ld bc, $4d05
    ld c, [hl]
    ld [bc], a
    inc bc
    ld bc, $2b04
    nop
    ld h, d
    ld c, a
    inc bc
    ld bc, $5352
    nop
    ld l, b
    ld d, h
    nop
    ld bc, $0e62
    dec hl
    nop

jr_019_739b:
    ld bc, $195d
    ld l, b
    ld e, [hl]
    inc b
    add hl, de
    ld e, [hl]
    ld h, a
    ld l, b
    ld e, [hl]
    ld h, d
    rla
    nop
    add hl, de
    dec hl
    nop

jr_019_73ac:
    ld h, l
    ld l, c
    nop
    add hl, de
    ld l, b
    ld l, a
    ld h, d
    dec b
    nop
    ld [$008f], sp
    or h
    ld h, [hl]
    ld a, b
    ld bc, $0101
    ld h, d
    ld a, a
    ld h, e
    ld de, $5ff8
    nop
    ld e, a
    dec hl
    nop
    rst $38
    inc sp
    inc c
    dec h
    nop
    push bc
    nop
    add hl, de
    adc c
    nop
    nop
    ld hl, sp+$29
    nop
    add hl, hl
    dec hl
    nop
    dec b
    rra
    jr nz, jr_019_73dd

jr_019_73dd:
    ld hl, $0f22
    ld h, e
    inc hl
    ld [bc], a
    rrca
    rrca
    daa
    inc h
    nop
    ld bc, $0201
    cpl
    nop
    nop
    jr z, jr_019_7417

    rrca
    ld h, d
    add hl, hl
    ld h, d
    dec c
    nop
    rrca
    inc l
    nop
    ld [bc], a
    inc l
    dec l
    ld c, $2f
    rrca
    dec hl
    nop
    ld bc, $2f2e
    ld h, $0f
    ld h, e
    jr nc, jr_019_739b

    nop
    xor l
    inc h
    rrca
    ld bc, $0f34
    ld h, d
    dec [hl]
    add hl, bc
    nop
    jr c, @+$3b

    rrca

jr_019_7417:
    ld a, [hl-]
    dec sp
    rla
    rrca
    rrca
    jr jr_019_73ac

    nop
    call nc, $3c64
    nop
    nop
    ld h, d
    ld b, c
    nop
    rrca
    ld h, d
    ld b, h
    ld h, e
    inc bc
    dec hl
    nop
    ld h, d
    ld b, a
    inc c
    nop
    ld c, d
    rrca
    rrca
    ld c, e
    ld c, h
    rrca
    ld c, l
    dec b
    ld c, [hl]
    rrca
    rrca
    ld c, a
    ld h, d
    db $10
    adc h
    nop
    sub e
    ld l, e
    ld d, b
    nop
    rrca
    ld h, d
    ld e, h
    ld h, e
    add hl, de
    dec hl
    nop
    inc hl
    ld [$5f6b], sp
    ld h, e
    rlca
    dec hl
    nop
    ld l, a
    ld l, e
    ld h, e
    inc de
    dec hl
    nop
    ld bc, $7c7b
    dec h
    rrca
    ld h, d
    ld a, l
    dec h
    rrca
    ld [bc], a
    dec e
    dec e
    ld e, $d4
    nop
    cp a
    nop
    add b
    jr z, jr_019_747e

    nop
    dec bc
    ld hl, sp+$5f
    nop
    ld e, a
    dec hl
    nop
    rst $38
    inc sp
    ld bc, $0025
    push bc
    nop

jr_019_747e:
    add hl, de
    adc c
    nop
    nop
    ld hl, sp+$29
    nop
    add hl, hl
    dec l
    nop
    ld [bc], a
    inc hl
    inc h
    inc bc
    inc hl
    inc b
    ld bc, $2625
    inc h
    nop
    inc bc
    dec c
    ld c, $04
    inc b
    cpl
    nop
    ld bc, $2827
    inc h
    inc b
    ld b, $29
    ld a, [hl+]
    nop
    nop
    dec hl
    rla
    inc b
    adc l
    nop
    ld [hl], d
    ld bc, $2d2c
    inc hl
    nop
    nop
    ld l, $25
    inc b
    ld h, d
    cpl
    nop
    inc b
    adc [hl]
    nop
    sub c
    ld b, $04
    inc b
    ld [hl-], a
    inc sp
    inc e
    inc [hl]
    dec [hl]
    ld h, $04
    inc bc
    ld [hl], $37
    ld [bc], a
    inc bc
    adc l
    nop
    ld [hl], d
    inc b
    jr c, jr_019_7508

    inc b
    inc b
    ld a, [hl-]
    jr z, jr_019_74d8

    inc bc
    dec sp
    inc a
    rrca

jr_019_74d8:
    db $10
    adc [hl]
    nop
    ld [hl], d
    nop
    add hl, de
    ld h, [hl]
    dec a
    nop
    inc b
    ld h, e
    ld b, h
    ld bc, $4804
    ld h, e
    jr jr_019_7515

    nop
    ld h, e
    ld c, c
    nop
    inc b
    ld h, e
    ld c, l
    nop
    inc b
    ld h, h
    ld d, c
    ld h, h
    inc b
    adc h
    nop
    or h
    ld h, d
    ld d, [hl]
    nop
    ld [de], a
    inc hl
    inc b
    ld h, [hl]
    ld e, c
    ld bc, $1211
    adc a
    nop
    or d

jr_019_7508:
    nop
    dec sp
    ld h, d
    ld h, b
    nop
    inc b
    ld l, b
    ld h, e
    ld h, d
    inc e
    adc h
    nop
    ld [hl], e

jr_019_7515:
    ld l, a
    ld l, h
    ld h, e
    add hl, bc
    dec hl
    nop
    ld l, a
    ld a, h
    ld h, e
    inc de
    dec hl
    nop
    ld l, a
    adc h
    ld h, e
    rra
    ld hl, sp+$5f
    nop
    ld e, a
    dec hl
    nop
    rst $38
    inc sp
    ld bc, $0025
    push bc
    nop
    add hl, de
    adc c
    nop
    nop
    ld hl, sp+$29
    nop
    add hl, hl
    dec hl
    nop
    dec h
    ld [bc], a
    ld h, d
    inc bc
    ld bc, $0000
    ld h, d
    ld b, $d1
    nop
    ld h, l
    dec h
    ld [bc], a
    ld bc, $0a09
    inc h
    nop
    ld h, d
    dec bc
    sub h
    nop
    ld [hl], b
    ld bc, $0f0e
    daa
    nop
    nop
    db $10
    sub h
    nop
    ld [hl], b
    ld bc, $1211
    daa
    nop
    ld bc, $1413
    sub e
    nop
    ld [hl], c
    nop
    dec d
    daa
    nop
    ld h, d
    ld d, $93
    nop
    ld [hl], c
    nop
    add hl, de
    daa
    nop
    ld bc, $1b1a
    sub e
    nop
    ld [hl], b
    ld bc, $1d1c
    daa
    nop
    ld bc, $1f1e
    sub e
    nop
    ld [hl], b
    ld bc, $2120
    ld h, $00
    ld h, e
    ld [hl+], a
    sub d
    nop
    ld [hl], c
    inc b
    ld h, $27
    nop
    nop
    jr z, jr_019_75ba

    nop
    ld h, h
    add hl, hl
    sub e
    nop
    ld [hl], c
    ld l, e
    ld l, $94
    nop
    ld [hl], c
    rlca
    ld [bc], a

jr_019_75a5:
    ld [bc], a
    ld a, [hl-]
    dec sp
    dec hl
    dec hl
    inc a
    ld [bc], a
    sub a
    nop
    ld l, [hl]
    ld [hl+], a
    ld [bc], a
    ld h, e
    dec a
    nop
    ld [bc], a
    ld hl, sp+$65
    nop
    ld h, l
    dec hl

jr_019_75ba:
    nop
    rst $38
    db $e4

jr_019_75bd:
    ld b, c
    ld h, $00
    jr nz, jr_019_75ea

    ld h, $00
    dec hl
    call z, $4300
    nop
    ld a, [hl+]
    ld sp, $c626
    nop
    ld c, h
    nop
    ld hl, $00c4
    ld [hl], c
    add [hl]
    nop
    ld h, b
    add $00
    ld [hl], e
    add hl, hl
    ld h, $dd
    nop
    ld l, h
    sub c
    nop
    ld e, b
    inc bc
    ld hl, $262b
    ld hl, $00c4
    ld b, h

jr_019_75ea:
    ret


    nop
    ld c, e
    jp z, $9600

    sub [hl]
    nop
    ld [hl], l
    ld hl, sp+$29
    nop
    or c
    ld bc, $2026
    add l
    nop
    ld l, [hl]
    nop
    ld hl, $59e4
    ld h, $00
    ld a, [hl+]
    sub e
    ld bc, $051a
    ld a, [hl+]
    ld h, $26
    dec hl
    ld h, $26
    ld hl, sp+$29
    nop
    ld c, e
    sub e
    ld bc, $0029
    ld hl, $0189
    ret nz

    sub e
    nop
    ld d, e
    nop
    jr nz, jr_019_75a5

    nop
    rst $08
    add l
    ld bc, $9324
    nop
    jp z, Jump_000_2101

    dec hl
    add h
    ld bc, $c325
    nop
    sbc b
    adc l
    nop
    ld a, d
    db $e4
    ld [hl], $26
    nop
    jr nz, jr_019_75bd

    ld bc, $9b26
    ld bc, $0412
    ld hl, $2126
    ld h, $21
    call nz, $a001
    sub [hl]
    ld bc, $0002
    ld hl, $01c9
    ldh a, [$fff0]
    add hl, hl
    ld bc, $0028
    ld a, [hl+]
    sbc h
    nop
    ld a, e
    nop
    dec hl
    sbc b

jr_019_765c:
    nop
    rst $38
    ld [bc], a
    ld a, [hl+]
    ld h, $2b
    ret c

    nop
    sbc l
    nop
    dec hl
    push de
    ld bc, $01bd
    ld h, $26
    ldh a, [$ff29]
    nop
    di
    add h
    nop
    ld e, d
    ccf
    dec h
    ccf
    inc hl
    ccf

jr_019_7679:
    dec l
    dec hl
    daa
    nop
    jr c, jr_019_76b7

    daa
    nop
    scf
    sub e
    inc bc
    di
    add e
    inc bc
    jp hl


    ld [bc], a
    daa
    daa
    jr c, jr_019_765c

    inc b
    dec d
    db $e4
    add hl, sp
    daa
    nop
    jr c, jr_019_7679

    ld b, l
    daa
    nop
    jr c, @-$6b

    inc b
    ld e, c
    db $e4
    ld [hl], a
    daa
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    inc l
    db $e4
    ld e, a
    nop
    nop
    ld [hl], $25
    nop
    ld h, h
    ld l, $63
    ld [hl-], a
    adc a
    ld b, $00
    nop
    ld b, b
    dec h
    nop

jr_019_76b7:
    ld h, h
    add hl, sp
    inc bc
    dec a
    ld a, $3b
    ccf
    adc a
    ld b, $20
    db $e4
    ccf
    nop
    ld h, a
    ld b, c
    daa
    nop
    adc a
    ld b, $80
    ld h, d
    ld c, c
    ld bc, $3d3d
    ld h, d
    ld c, h
    ld [hl+], a
    nop
    ld h, d
    ld c, a
    adc a
    ld b, $9e
    ld a, [hl+]
    nop
    inc bc
    ld d, d
    ld d, e
    daa
    daa
    ld h, d
    ld d, h
    adc a
    ld b, $c0
    db $e4
    ld b, d
    nop
    ld h, e
    ld d, a
    inc hl
    nop

jr_019_76ec:
    ld h, e
    ld e, e
    inc hl
    nop
    adc h
    rlca
    inc hl
    inc bc
    ld e, a
    ld b, h
    ld h, b
    ld h, c
    ld h, $00
    inc bc
    ld h, d
    ld h, e
    ld h, e
    ld h, h
    adc a
    rlca
    ccf
    nop
    nop
    ld h, d
    ld h, l
    nop
    nop
    ld h, d
    ld l, b
    nop
    nop
    ld h, d
    ld l, e
    ld bc, $0000
    ld h, d
    ld l, [hl]
    adc h
    rlca
    ld h, b
    ld [hl], d
    ld l, [hl]
    ld a, a
    ld [hl], c
    ld a, e
    add c
    inc hl
    daa
    adc a
    rlca
    ret nz

    nop
    daa
    ld h, e
    sbc l
    ld bc, $2727
    ld h, d
    and c
    nop
    daa
    ld h, h
    and h
    adc a
    rlca
    ldh [rIE], a
    inc sp
    adc c
    dec h
    inc bc
    push bc
    nop
    add hl, de
    adc c
    nop
    nop
    ld hl, sp+$29
    nop
    add hl, hl
    dec hl
    inc bc
    ld h, d
    nop
    jr z, jr_019_7749

    ld h, e
    inc b
    ld h, e

jr_019_7749:
    ld l, e
    add h
    nop
    ld h, a
    nop
    inc b
    dec hl
    inc bc
    ld h, d
    ld [$0301], sp
    inc bc
    ld h, h
    dec bc
    inc bc
    ld a, b
    inc bc
    inc bc
    inc bc
    sub b
    nop
    ld [hl], h
    ld h, l
    db $10
    ld [$160c], sp
    rla
    inc bc
    jr jr_019_76ec

    add h
    inc bc
    inc bc
    add l
    nop
    add a
    dec h
    inc bc
    ld h, e
    add hl, de
    inc h
    inc bc
    ld h, e
    dec e
    ld h, $03
    add l
    nop
    and a
    ld h, $03
    nop
    ld hl, $0326
    ld h, e
    ld [hl+], a
    ld [bc], a
    ld [de], a
    ld h, $03
    ld h, e
    ld l, a
    adc h
    nop
    rst $00
    inc hl
    inc bc
    ld h, d
    daa
    ld [bc], a
    dec e
    ld a, [hl+]
    dec hl
    inc h
    inc bc
    ld h, e
    ld a, c
    add l
    nop
    rst $20
    dec h
    inc bc
    ld bc, $2d2c
    dec h
    inc bc
    ld h, d
    ld l, $22
    inc bc
    ld [bc], a
    ld sp, $8532
    ld [hl+], a
    inc bc
    adc b
    ld bc, $2207
    inc bc
    ld l, c
    inc sp
    inc b
    inc bc
    add hl, sp
    ld a, [hl-]
    inc bc
    inc bc
    adc e
    ld bc, $2422
    inc bc
    ld l, d
    dec a
    ld [$4803], sp
    inc bc
    ld c, c
    ld c, d
    inc bc
    ld [hl], e
    ld [hl-], a
    ld [hl], h
    adc e
    ld bc, $6f47
    ld c, e
    ld h, e
    ld a, l
    add [hl]
    ld bc, $2467
    inc bc
    ld h, a
    ld e, e
    nop
    ld h, d
    inc h
    ld h, e
    ld bc, $6564
    ld h, d
    add [hl]
    nop
    adc b
    ld h, l
    ld d, d
    dec h
    inc bc
    ld h, d
    ld h, [hl]
    jr z, jr_019_784f

    rlca
    ld l, c
    ld l, d
    ld e, e
    ld e, h
    ld e, e
    ld e, l
    adc d
    adc e
    add l
    ld bc, $99a7
    nop
    ld a, [de]
    add l
    ld bc, $91c7
    nop
    ld a, [de]
    ld h, d
    ld [hl], l
    dec b
    adc c
    ld [hl], a
    add c
    add d
    adc c
    ld [hl], d
    add e
    ld bc, $9a70
    nop
    add hl, de
    ld h, h
    ld a, h
    ld h, $03
    rst $38
    inc hl
    ld bc, $1101
    ld [de], a
    dec l
    ld bc, $002b
    inc hl
    ld bc, $2062
    sbc h
    nop
    rlca
    ld [bc], a
    ld bc, $2c2b
    sbc b
    nop
    rlca
    ld h, e
    inc sp
    nop
    inc bc
    ld h, d
    scf
    ld bc, $0303
    ld h, d
    ld a, [hl-]
    inc h
    nop
    ld bc, $0302
    dec hl
    nop
    ld bc, $0303
    ld h, a
    dec a
    ld bc, $0303
    ld h, e
    ld b, l
    ld bc, $100f
    adc $00
    add c
    nop

jr_019_784f:
    ld c, c
    inc hl
    nop
    ld h, [hl]
    ld c, d
    ld [hl+], a
    inc bc
    ld h, d
    dec e
    inc l
    nop
    nop
    inc bc
    ld l, l
    ld d, c
    ld bc, $2a03
    ld l, $00
    ld h, e
    ld e, a
    ld [bc], a
    inc bc
    inc bc
    dec e
    ld h, l
    ld h, e
    inc bc
    nop
    ld l, c
    inc bc
    inc bc
    ld h, d
    ld [$002b], sp
    ld h, e
    ld l, d
    ld bc, $0303
    ld l, c
    ld l, [hl]
    ld h, e
    dec d
    adc l
    nop
    ld [hl], h
    ld [$7803], sp
    ld a, c
    ld d, $7a
    inc bc
    ld a, e
    ld a, h
    nop
    ld h, h
    ld a, l
    inc bc
    nop
    nop
    inc h
    dec h
    dec hl
    nop
    ld l, [hl]
    add d
    inc b
    inc bc
    dec l
    ld l, $03
    cpl
    dec hl
    nop
    ld l, a
    sub c
    ld h, e
    dec bc
    dec hl
    nop
    ld l, a
    and c
    ld h, e
    add hl, de
    dec hl
    nop
    ld [bc], a
    or c
    nop
    nop
    ld l, h
    or d
    ld h, e
    ld h, $2b
    nop
    ld l, a
    cp a
    inc bc
    jr nc, @+$1e

    ld sp, $d132
    nop
    rra
    sbc l
    nop
    ld b, $00
    ld bc, $0462
    ld b, $04
    rlca
    rlca
    inc b
    inc de
    inc d
    inc hl
    ld hl, sp+$30
    ld [bc], a
    inc b
    rst $38
    nop
    ld bc, $0512
    jr @+$07

    inc bc
    dec d
    inc d
    add hl, bc
    ld d, $05
    dec e
    db $10
    ld [de], a
    rrca
    inc b
    dec d
    inc bc
    dec b
    ld [de], a
    ld bc, $1003
    ld [$1209], sp
    rrca
    inc de
    ld [$1d09], sp
    add hl, de
    ld bc, $010d
    dec d
    inc bc
    ld [$0009], sp
    ld a, [bc]
    add hl, bc
    db $10
    ld [de], a
    rrca
    inc b
    dec d
    inc bc
    dec b
    ld [de], a
    inc de
    ld bc, $0c07
    inc de
    ld bc, $0f14
    ld [de], a
    dec d
    dec e
    add hl, bc
    rla
    ld bc, $0114
    ld bc, $1003
    inc de
    ld [$0709], sp
    dec b
    ld [de], a
    dec d
    dec e
    dec c
    add hl, bc
    add hl, de
    ld bc, $0f0d
    inc d
    rrca
    nop
    inc b
    rrca
    db $10
    ld [de], a
    rrca
    ld a, [bc]
    dec b
    inc bc
    inc d
    dec e
    dec c
    ld bc, $010e
    rlca
    dec b
    ld [de], a
    ld bc, $0e05
    ld bc, $1314
    dec d
    inc de
    ld [$1d09], sp
    dec bc
    ld bc, $150b
    inc d
    ld bc, $0b00
    ld [$0904], sp
    ld [de], a
    dec b
    inc bc
    inc d
    rrca
    ld [de], a
    ld bc, $1201
    inc de
    ld [$0e09], sp
    add hl, bc
    inc bc
    ld [$1d09], sp
    inc de
    ld [$0d09], sp
    rrca
    dec c
    dec d
    ld [de], a
    ld bc, $0800
    dec bc
    db $10
    ld [de], a
    rrca
    rlca
    ld [de], a
    ld bc, $0d0d
    dec b
    ld [de], a
    inc de
    ld bc, $0e05
    add hl, de
    rrca
    inc de
    ld [$0b09], sp
    add hl, bc
    dec e
    inc de
    dec d
    ld a, [de]
    dec d
    dec bc
    add hl, bc
    ld bc, $0a09
    inc de
    ld [$0d09], sp
    dec b
    add hl, bc
    dec e
    inc d
    dec b
    add hl, bc
    ld bc, $0e05
    dec c
    ld bc, $0113
    inc de
    ld [$1d09], sp
    add hl, de
    ld bc, $010d
    ld c, $05
    nop
    ld b, $0d
    inc bc
    inc e
    rlca
    inc e
    inc b
    dec b
    inc de
    add hl, bc
    rlca
    ld c, $05
    ld [de], a
    inc de
    ld bc, $1201
    inc de
    ld [$0709], sp
    dec b
    ld [de], a
    dec d
    dec e
    ld [$1301], sp
    ld [$0709], sp
    dec d
    inc bc
    ld [$0109], sp
    rlca
    inc c
    dec bc
    ld bc, $151a
    add hl, de
    ld bc, $0d1d
    add hl, bc
    dec d
    ld [de], a
    ld bc, $0501
    ld c, $19
    rrca
    inc de
    ld [$0b09], sp
    rrca
    dec e
    rrca
    ld [$150b], sp
    ld [bc], a
    rrca
    nop
    ld a, [bc]
    add hl, bc
    inc bc
    rrca
    dec c
    db $10
    rrca
    inc de
    dec b
    ld [de], a
    inc de
    ld bc, $0d06
    ld [$1209], sp
    rrca
    dec bc
    ld bc, $151a
    dec e
    ld bc, $040e
    rrca
    ld bc, $0f04
    inc d
    ld bc, HeaderLogo
    inc de
    ld [$1d09], sp
    add hl, bc
    dec bc
    dec b
    rlca
    ld bc, $090d
    nop
    rlca
    inc c
    dec b
    inc e
    inc de
    inc e
    inc b
    dec b
    inc de
    add hl, bc
    rlca
    ld c, $05
    ld [de], a
    ld bc, $0e05
    ld bc, $1314
    dec d
    inc de
    ld [$1d09], sp
    dec bc
    ld bc, $150b
    inc d
    ld bc, $0600
    dec c
    dec c
    ld bc, $1d10
    inc b
    dec b
    inc de
    add hl, bc
    rlca
    ld c, $05
    ld [de], a
    inc de
    ld bc, $1201
    inc de
    ld [$0e09], sp
    add hl, bc
    inc bc
    ld [$1d09], sp
    inc de
    ld [$0d09], sp
    rrca
    dec c
    dec d
    ld [de], a
    ld bc, $0501
    ld c, $0b
    dec b
    ld c, $13
    dec d
    dec bc
    dec b
    dec e
    inc d
    ld bc, $010e
    ld [bc], a
    dec b
    ld bc, $0c07
    ld [$0409], sp
    dec b
    dec bc
    add hl, bc
    dec e
    ld b, $15
    ld a, [bc]
    add hl, bc
    add hl, bc
    nop
    inc bc
    db $10
    inc d
    rrca
    rrca
    inc c
    dec e
    db $10
    ld [de], a
    rrca
    rlca
    ld [de], a
    ld bc, $0d0d
    dec b
    ld [de], a
    inc de
    ld bc, $0d06
    inc de
    dec b
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec e
    rrca
    inc d
    rrca
    rlca
    dec d
    ld [de], a
    rrca
    ld bc, $1102
    add hl, de
    rrca
    inc de
    ld [$0d09], sp
    add hl, bc
    dec e
    inc d
    ld bc, $010b
    ld [$1301], sp
    ld [$0009], sp
    ld [bc], a
    ld de, $1013
    dec b
    inc bc
    add hl, bc
    ld bc, $1d0c
    inc d
    ld [$0e01], sp
    dec bc
    inc de
    dec e
    inc d
    rrca
    ld bc, $0e05
    inc de
    ld bc, $0f14
    inc de
    ld [$1d09], sp
    add hl, bc
    inc de
    ld [$0409], sp
    ld bc, $0501
    ld c, $03
    ld [$0509], sp
    dec bc
    rrca
    dec e
    rrca
    ld [bc], a
    add hl, bc
    dec bc
    ld bc, $050e
    nop
    dec c
    sub c
    ld a, e
    dec b
    ld e, b
    add hl, bc
    dec d
    dec b
    inc b
    dec c
    ld [hl-], a
    ld a, e
    dec b
    ld l, h
    dec c
    inc d
    ld a, e
    db $10
    ld b, e
    ld [de], a
    ld b, $7b
    dec c
    ld [$0a7b], sp
    ld d, $c5
    ld bc, $9de0
    jr jr_019_7b18

    push bc
    ld bc, $9e00
    jr jr_019_7b18

    push bc
    ld bc, $9e20

jr_019_7b18:
    ldh a, [$ff92]
    ld l, a
    ld h, $c4
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld a, $14
    ld [hl], a
    inc l
    ld b, a
    ld a, $ff

jr_019_7b28:
    ld [hl], a
    inc l
    dec b
    jr nz, jr_019_7b28

    ld a, l
    ldh [$ff92], a
    pop bc
    ret


    push bc
    push de
    call Call_019_7b3e
    pop de
    pop bc
    ld a, [hl]
    ld e, $43
    ld [de], a
    ret


Call_019_7b3e:
    ld hl, $df35
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld a, [hl+]
    and a
    jr nz, jr_019_7b67

    inc hl
    ld bc, $9de1
    ldh a, [$ff92]
    ld e, a
    ld d, $c4
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld b, a

jr_019_7b5d:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_019_7b5d

    ld a, e
    ldh [$ff92], a
    inc hl

jr_019_7b67:
    ld a, [hl+]
    ld bc, $9e20
    add c
    ld c, a
    jr nc, jr_019_7b70

    inc b

jr_019_7b70:
    ldh a, [$ff92]
    ld e, a
    ld d, $c4
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld b, a

jr_019_7b7f:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_019_7b7f

    ld a, e
    ldh [$ff92], a
    ld bc, $df35
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ret


    ld hl, $df35
    ld a, $d1
    ld [hl+], a
    ld a, $78
    ld [hl], a
    ret


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
    ld b, b
    nop
    inc h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_019_7bfb

jr_019_7bfb:
    nop
    nop
    nop
    nop
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
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
    ld [$0000], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
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
    ld [$0000], sp
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

Jump_019_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    add hl, bc
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
    jr nz, jr_019_7f30

jr_019_7f30:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_019_7f41:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_019_7f7f:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_019_7fe8

jr_019_7fe8:
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
