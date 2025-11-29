; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    db $00

Call_000_0001:
Jump_000_0001:
    nop
    nop

Call_000_0003:
Jump_000_0003:
    nop

Jump_000_0004:
    nop

Jump_000_0005:
    nop

Call_000_0006:
    nop

    db $00

RST_08::
    nop

Call_000_0009:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_10::
    ld b, b
    nop
    nop

Jump_000_0013:
    nop
    nop
    nop
    nop
    nop

RST_18::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0024:
Jump_000_0024:
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_002e:
Jump_000_002e:
    rst $38
    rst $38

RST_30::
    rst $38
    rst $38
    rst $38

Call_000_0033:
    rst $38
    rst $38
    rst $38

Jump_000_0036:
    rst $38
    rst $38

RST_38::
    ret


    rst $38
    rst $38

Jump_000_003b:
    rst $38
    rst $38
    rst $38

Call_000_003e:
Jump_000_003e:
    rst $38

Jump_000_003f:
    rst $38

VBlankInterrupt::
    push af

Jump_000_0041:
    push hl

Jump_000_0042:
    push bc

Jump_000_0043:
    push de

Jump_000_0044:
    jp Jump_000_0159


    nop

LCDCInterrupt::
    jp $da13


    nop
    nop

Jump_000_004d:
    nop
    nop
    nop

TimerOverflowInterrupt::
    push af
    push hl
    push bc
    push de
    jp Jump_000_0333


    nop

SerialTransferCompleteInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0067:
    rst $38

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_006d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_000_0081:
    nop
    nop

Call_000_0083:
Jump_000_0083:
    nop

Call_000_0084:
Jump_000_0084:
    nop

Call_000_0085:
Jump_000_0085:
    nop

Call_000_0086:
Jump_000_0086:
    nop

Jump_000_0087:
    nop

Call_000_0088:
Jump_000_0088:
    nop

Call_000_0089:
    nop

Jump_000_008a:
    nop

Call_000_008b:
    nop

Jump_000_008c:
    nop

Jump_000_008d:
    nop
    nop
    nop

Jump_000_0090:
    nop

Call_000_0091:
    nop
    nop

Call_000_0093:
    nop
    nop
    nop
    nop
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

Call_000_00a3:
Jump_000_00a3:
    rst $38

Call_000_00a4:
Jump_000_00a4:
    rst $38
    rst $38

Call_000_00a6:
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

Call_000_00b5:
    rst $38
    rst $38
    rst $38

Call_000_00b8:
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

Call_000_00c3:
Jump_000_00c3:
    nop

Jump_000_00c4:
    nop

Jump_000_00c5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00cf:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00d5:
    nop
    nop
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

Call_000_00fc:
    rst $38
    rst $38
    rst $38

Call_000_00ff:
Jump_000_00ff:
    rst $38

Boot::
    db $00, $c3, $50, $01

HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "KIRBY2", $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $03

HeaderROMSize::
    db $04

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $93

HeaderGlobalChecksum::
    db $dc, $99

Jump_000_0150:
    di
    ld a, $1a

Jump_000_0153:
    ld [$2100], a
    jp $4000


Call_000_0159:
Jump_000_0159:
    ldh a, [$ffb5]
    or a
    jr z, jr_000_016f

jr_000_015e:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_015e

    ld hl, $ff40

Jump_000_0167:
    res 7, [hl]
    xor a
    ldh [$ffb5], a
    jp Jump_000_029f


Jump_000_016f:
jr_000_016f:
    ld a, [$da0f]
    cp $01
    jp c, Jump_000_0193

    ld a, $c0
    jr z, jr_000_017c

    inc a

jr_000_017c:
    ldh [$ff89], a
    call $ff88
    ld a, [$da0f]

Call_000_0184:
Jump_000_0184:
    dec a

Jump_000_0185:
    ld hl, $da02

Call_000_0188:
Jump_000_0188:
    jr z, jr_000_018d

Call_000_018a:
Jump_000_018a:
    ld hl, $da04

jr_000_018d:
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl]
    ldh [rSCX], a

Jump_000_0193:
    ld hl, $cd00
    ld c, $47
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl]
    ldh [c], a
    ld a, [$da27]
    or a
    jp z, Jump_000_0210

    ld [$da25], sp
    ld de, $001f
    bit 2, a
    jr z, jr_000_01dd

    bit 0, a
    jr z, jr_000_01c8

    ld a, [$da23]
    ld sp, $c200

jr_000_01bb:
    pop hl
    pop bc
    ld [hl], c
    inc l
    ld [hl], b

Jump_000_01c0:
    add hl, de
    pop bc
    ld [hl], c

Call_000_01c3:
    inc l
    ld [hl], b
    dec a
    jr nz, jr_000_01bb

jr_000_01c8:
    ld a, [$da24]
    ld sp, $c300

jr_000_01ce:
    pop hl
    pop bc
    ld [hl], c

Jump_000_01d1:
    inc l
    ld [hl], b
    add hl, de
    pop bc
    ld [hl], c
    inc l
    ld [hl], b
    dec a
    jr nz, jr_000_01ce

    jr jr_000_0207

jr_000_01dd:
    bit 1, a
    jr z, jr_000_01f4

    ld a, [$da24]
    ld sp, $c300

jr_000_01e7:
    pop hl
    pop bc
    ld [hl], c
    inc l
    ld [hl], b
    add hl, de
    pop bc
    ld [hl], c
    inc l
    ld [hl], b
    dec a
    jr nz, jr_000_01e7

jr_000_01f4:
    ld a, [$da23]
    ld sp, $c200

jr_000_01fa:
    pop hl
    pop bc
    ld [hl], c
    inc l
    ld [hl], b

Jump_000_01ff:
    add hl, de

Jump_000_0200:
    pop bc

Call_000_0201:
Jump_000_0201:
    ld [hl], c

Jump_000_0202:
    inc l
    ld [hl], b
    dec a
    jr nz, jr_000_01fa

jr_000_0207:
    ld sp, $da25
    pop hl
    ld sp, hl
    xor a
    ld [$da27], a

Jump_000_0210:
    xor a

Call_000_0211:
    ldh [rLYC], a
    ld hl, $da14
    ld a, $a4
    ld [hl+], a
    ld [hl], $02
    ld [$da18], sp

Call_000_021e:
    ld sp, $da1a

Jump_000_0221:
    pop de
    pop hl
    ld c, h
    ld h, $c4
    ldh a, [$ff92]
    ld b, a
    pop af
    reti


jr_000_022b:
    ld a, l
    cp b
    jr z, jr_000_023e

jr_000_022f:
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l

Call_000_0233:
    ld c, [hl]
    inc l

jr_000_0235:
    ld a, [hl]
    ld [de], a
    inc l
    inc de
    dec c
    jr nz, jr_000_0235

Jump_000_023c:
    jr jr_000_022b

jr_000_023e:
    di

Jump_000_023f:
    cp b
    jr z, jr_000_0245

    ei
    jr jr_000_022f

jr_000_0245:
    ld h, c
    ld bc, $022b
    push bc
    push af
    push hl
    push de

jr_000_024d:
    ld sp, $da18
    pop hl
    ld sp, hl
    ld a, [$da29]
    ldh [rLYC], a
    ld hl, $da14
    ld a, [$da16]
    ld [hl+], a
    ld a, [$da17]

Call_000_0261:
    ld [hl], a
    ld hl, $ff40
    ld a, [$da2b]
    or a
    jr z, jr_000_026f

    res 1, [hl]
    jr jr_000_0271

Call_000_026f:
jr_000_026f:
    set 1, [hl]

Call_000_0271:
jr_000_0271:
    ldh a, [rIF]
    and $fd
    ldh [rIF], a
    ldh a, [rIE]
    and $fe

Jump_000_027b:
    ldh [rIE], a
    ei
    call $da10
    xor a
    ld [$da0f], a

Jump_000_0285:
    ld a, $01

Call_000_0287:
Jump_000_0287:
    ld [$da0c], a

Jump_000_028a:
    ldh a, [$ffa4]

Call_000_028c:
    push af
    ld a, $00
    call Call_000_05f3
    call Call_000_2bfd
    pop af
    call Call_000_05f3
    ldh a, [rIE]
    or $01
    ldh [rIE], a

Call_000_029f:
Jump_000_029f:
jr_000_029f:
    pop de
    pop bc
    pop hl
    pop af
    reti


    ld h, c

Call_000_02a5:
    push af
    push hl
    push de
    jr jr_000_024d

    push af

Jump_000_02ab:
    push hl
    push bc
    push de
    ld hl, $ff40
    bit 5, [hl]
    jr z, jr_000_029f

    ld b, $0f

jr_000_02b7:
    nop
    dec b
    jr nz, jr_000_02b7

    res 1, [hl]
    ld a, $e4
    ldh [rBGP], a
    jp Jump_000_029f


    push af

Jump_000_02c5:
    push hl
    push bc
    push de

Call_000_02c8:
    ld hl, $ff40
    ld a, [hl]
    set 3, a
    res 1, a
    ld b, $0c

jr_000_02d2:
    nop
    dec b
    jr nz, jr_000_02d2

    ld [hl], a
    xor a
    ld hl, $ff42
    ld [hl+], a
    ld [hl], a
    jp Jump_000_029f


    push af
    push hl
    push bc
    push de
    ld hl, $ff40
    ld a, [hl]
    res 3, a
    set 1, a
    ld b, $0c

jr_000_02ee:
    nop
    dec b
    jr nz, jr_000_02ee

    ld [hl], a
    ld hl, $da2e
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl]
    ldh [rSCX], a

Jump_000_02fc:
    ld hl, $da14

Jump_000_02ff:
    ld a, $c4

Call_000_0301:
    ld [hl+], a

Call_000_0302:
Jump_000_0302:
    ld [hl], $02

Jump_000_0304:
    ld a, [$da2a]
    ldh [rLYC], a

Jump_000_0309:
    jp Jump_000_029f


    push af

Call_000_030d:
    push hl
    push bc
    push de
    ld a, [$da2d]
    ld hl, $ff43
    ld b, $0f

jr_000_0318:
    nop
    dec b
    jr nz, jr_000_0318

    ld [hl], a
    jp Jump_000_029f


    push af
    push hl
    push bc
    push de

Call_000_0324:
    ld a, $00
    ld hl, $ff43
    ld b, $0f

jr_000_032b:
    nop
    dec b
    jr nz, jr_000_032b

    ld [hl], a
    jp Jump_000_029f


Jump_000_0333:
    ld a, $01
    ld [$da0d], a
    ldh a, [rLCDC]
    bit 7, a
    jp z, Jump_000_028a

    jp Jump_000_029f


    ret


Call_000_0343:
    ld hl, $da0c

jr_000_0346:
    di
    bit 0, [hl]
    jr nz, jr_000_034f

    halt
    ei
    jr jr_000_0346

jr_000_034f:
    ei
    ld [hl], $00
    ld hl, $da0e
    inc [hl]
    ret


Call_000_0357:
Jump_000_0357:
    ld a, [$da3e]
    ldh [$ff84], a
    ld a, [$deed]
    or a
    jr nz, jr_000_0369

    ld b, $01
    ld hl, $da3e

Jump_000_0367:
    jr jr_000_0386

jr_000_0369:
    ld a, [$da38]
    or a
    ret nz

    ld b, $02
    ldh a, [rP1]
    ld c, a
    jr jr_000_037a

jr_000_0375:
    ldh a, [rP1]
    cp c
    jr z, jr_000_03b2

jr_000_037a:
    cpl
    and $03
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $da3e

Call_000_0385:
    add hl, de

Jump_000_0386:
jr_000_0386:
    ld e, [hl]

Call_000_0387:
Jump_000_0387:
    ld a, $20
    ldh [rP1], a

Jump_000_038b:
    ldh a, [rP1]
    ldh a, [rP1]
    swap a
    and $f0
    ld d, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $0f
    or d
    cpl
    call Call_000_041e
    ld a, $30
    ldh [rP1], a
    dec b
    jr nz, jr_000_0375

jr_000_03b2:
    ld a, [$da3a]
    or a
    jp z, Jump_000_03f8

    ld hl, $da3c
    ld a, [hl+]
    ld b, [hl]
    ld c, a

Jump_000_03bf:
    cp $fe
    jr nz, jr_000_03ca

    ld a, b
    cp $be
    jr nz, jr_000_03ca

    dec bc
    dec bc

jr_000_03ca:
    ld a, [$da3a]
    cp $02
    jr z, jr_000_03d1

jr_000_03d1:
    ld a, [$da3b]
    dec a
    jr nz, jr_000_03e2

    inc bc
    inc bc
    inc bc
    ld a, [bc]
    dec bc

Jump_000_03dc:
    ld hl, $da3c
    ld [hl], c
    inc hl
    ld [hl], b

jr_000_03e2:
    ld [$da3b], a
    ldh a, [$ffa5]
    ld e, a
    ld a, [bc]
    ld hl, $ffa5
    call Call_000_041e
    ld b, $04
    ld hl, $da42
    ld c, $a9
    jr jr_000_03ff

Jump_000_03f8:
    ld b, $08
    ld hl, $da3e

Jump_000_03fd:
    ld c, $a5

Call_000_03ff:
jr_000_03ff:
    ld a, [hl+]

Call_000_0400:
Jump_000_0400:
    ldh [c], a

Call_000_0401:
Jump_000_0401:
    inc c

Jump_000_0402:
    dec b

Call_000_0403:
    jr nz, jr_000_03ff

Call_000_0405:
Jump_000_0405:
    ldh a, [$ffa5]

Call_000_0407:
    cp $0f
    ret nz

    ldh a, [$ffa6]
    cp $0f
    ret z

    or a
    ret z

    ld e, $34
    ld hl, $6002
    ld a, $1e
    call Call_000_05cf
    jp Jump_000_0150


Call_000_041e:
    ld d, a
    ld [hl+], a
    xor e
    and d
    ld [hl+], a
    jr z, jr_000_0429

    ld [hl+], a
    ld [hl], $14
    ret


jr_000_0429:
    inc hl
    or [hl]
    jr z, jr_000_0432

    dec [hl]
    dec hl
    ld [hl], $00
    ret


jr_000_0432:
    ld [hl], $03
    dec hl
    ld [hl], d
    ret


Call_000_0437:
Jump_000_0437:
    call Call_000_0496
    call Call_000_04ae
    call Call_000_0343
    ld d, $01
    ld hl, $5feb
    ld a, $1e
    call Call_000_05cf
    ld hl, $5dff
    ld a, $1e
    call Call_000_05cf

Call_000_0452:
    ld a, $01

Call_000_0454:
    ldh [$ffb5], a

jr_000_0456:
    ldh a, [$ffb5]
    or a
    jr nz, jr_000_0456

    di
    ld hl, $ff0f
    res 0, [hl]

Call_000_0461:
Jump_000_0461:
    res 1, [hl]
    ld a, $ff
    ldh [rTIMA], a
    ld a, $04
    ldh [rTAC], a
    ei
    ret


Call_000_046d:
    call Call_000_0483
    ld hl, $5dff
    ld a, $1e
    call Call_000_05cf
    ld d, $00
    ld hl, $5feb
    ld a, $1e
    call Call_000_05cf
    ret


Call_000_0483:
Jump_000_0483:
    ld hl, $da0d

Jump_000_0486:
    ld [hl], $00

Call_000_0488:
jr_000_0488:
    halt

Call_000_0489:
    bit 0, [hl]
    jr z, jr_000_0488

    xor a
    ldh [rTAC], a
    ld hl, $ff40
    set 7, [hl]
    ret


Call_000_0496:
    ld a, [$da28]
    ld de, $da23
    rra
    jr nc, jr_000_04a0

    inc de

jr_000_04a0:
    xor a
    ld [$da09], a
    ld [$da22], a
    ld [de], a
    ld hl, $da06
    ld [hl+], a
    ld [hl], a
    ret


Call_000_04ae:
    ld a, [$da08]
    ld c, a
    ld h, a
    ld de, $da0a
    rra
    jr nc, jr_000_04ba

    inc de

jr_000_04ba:
    ld a, [de]
    ld b, a
    ld a, [$da09]

Jump_000_04bf:
    ld l, a

Call_000_04c0:
    ld [de], a
    sub b
    jr nc, jr_000_04ca

    ld b, a

Call_000_04c5:
    xor a

jr_000_04c6:
    ld [hl+], a
    inc b
    jr nz, jr_000_04c6

jr_000_04ca:
    srl h
    ld hl, $da02
    jr nc, jr_000_04d4

    ld hl, $da04

jr_000_04d4:
    ld a, [$da00]
    ld b, a

Call_000_04d8:
    ld a, [$da06]
    add b
    ld [hl+], a
    ld a, [$da01]
    ld b, a
    ld a, [$da07]
    add b
    ld [hl+], a
    ld a, [$da28]
    ld b, a
    ld de, $da23
    rra
    jr nc, jr_000_04f1

    inc de

jr_000_04f1:
    ld a, [de]
    or a
    jr z, jr_000_050e

    bit 0, b
    ld hl, $da27
    di
    jr nz, jr_000_0503

    set 0, [hl]

Call_000_04ff:
    res 2, [hl]
    jr jr_000_0507

jr_000_0503:
    set 1, [hl]
    set 2, [hl]

jr_000_0507:
    ei
    ld a, b
    xor $01
    ld [$da28], a

jr_000_050e:
    ld a, c
    and $01
    inc a
    ld [$da0f], a
    ld a, c
    xor $01
    ld [$da08], a
    ret


Call_000_051c:
Jump_000_051c:
    ld a, [$da09]
    rrca
    rrca
    add [hl]
    cp $29
    ret nc

    ld a, [de]
    dec e
    or a
    jr z, jr_000_0532

    inc a
    ret nz

    ld a, [de]
    cp $c0
    ret c

    jr jr_000_0536

jr_000_0532:
    ld a, [de]
    cp $c0
    ret nc

jr_000_0536:
    add $10
    ld c, a
    dec e
    ld a, [de]
    dec e
    or a
    jr z, jr_000_0547

    inc a
    ret nz

    ld a, [de]
    cp $cc
    ret c

    jr jr_000_054b

jr_000_0547:
    ld a, [de]
    cp $cc
    ret nc

jr_000_054b:
    add $08
    ld b, a
    inc hl
    ld a, [$da08]
    ld d, a
    ld a, [$da09]
    ld e, a
    ldh a, [$ff93]
    rla
    jr c, jr_000_058b

jr_000_055c:
    ld a, [hl+]
    add c
    cp $a0
    jr nc, jr_000_0581

    ld [de], a
    inc e
    ld a, [hl+]
    add b
    cp $a8
    jr nc, jr_000_0586

    ld [de], a
    inc e
    ldh a, [$ff94]
    add [hl]
    inc hl
    ld [de], a
    inc e
    ldh a, [$ff95]
    xor [hl]
    inc hl
    ld [de], a

Call_000_0577:
    inc e

jr_000_0578:
    bit 0, a
    jr z, jr_000_055c

    ld a, e
    ld [$da09], a
    ret


jr_000_0581:
    inc hl
    inc hl

Jump_000_0583:
    ld a, [hl+]

Call_000_0584:
    jr jr_000_0578

Jump_000_0586:
jr_000_0586:
    dec e

Call_000_0587:
Jump_000_0587:
    inc hl
    ld a, [hl+]

Call_000_0589:
    jr jr_000_0578

jr_000_058b:
    ld a, [hl+]
    add c
    cp $a0
    jr nc, jr_000_05b5

    ld [de], a
    inc e
    ld a, [hl+]
    cpl
    sub $07
    add b
    cp $a8
    jr nc, jr_000_05ba

    ld [de], a
    inc e
    ldh a, [$ff94]
    add [hl]
    inc hl
    ld [de], a

Jump_000_05a3:
    inc e

Call_000_05a4:
    ldh a, [$ff95]
    xor [hl]
    xor $20
    inc hl
    ld [de], a

Jump_000_05ab:
    inc e

jr_000_05ac:
    bit 0, a
    jr z, jr_000_058b

    ld a, e
    ld [$da09], a
    ret


jr_000_05b5:
    inc hl
    inc hl
    ld a, [hl+]
    jr jr_000_05ac

jr_000_05ba:
    dec e
    inc hl

Jump_000_05bc:
    ld a, [hl+]
    jr jr_000_05ac

Call_000_05bf:
    ldh [$ff96], a
    ldh a, [$ffa4]

Jump_000_05c3:
    push af
    ldh a, [$ff96]
    call Call_000_05dd
    call Call_000_0621
    pop af
    jr jr_000_05dd

Call_000_05cf:
    ldh [$ff96], a
    ldh a, [$ffa4]
    push af
    ldh a, [$ff96]
    call Call_000_05dd
    call Call_000_0620
    pop af

Call_000_05dd:
Jump_000_05dd:
jr_000_05dd:
    di
    ld [$2100], a
    ldh [$ffa4], a
    ei
    ret


Call_000_05e5:
    ldh [$ff96], a
    ldh a, [$ffa4]
    push af
    ldh a, [$ff96]
    call Call_000_05f3
    call Call_000_0620
    pop af

Call_000_05f3:
    ld [$2100], a
    ldh [$ffa4], a
    ret


Call_000_05f9:
Jump_000_05f9:
    di
    ld a, l
    ld [$da11], a

Jump_000_05fe:
    ld a, h
    ld [$da12], a
    ei

Jump_000_0603:
    ret


Call_000_0604:
Jump_000_0604:
    ld a, l

Jump_000_0605:
    ld [$da11], a
    ld a, h
    ld [$da12], a
    ret


Call_000_060d:
    ldh [$ff96], a
    ldh a, [$ffa4]
    push af
    ldh a, [$ff96]
    call Call_000_05dd
    call Call_000_0708
    pop af
    jr jr_000_05dd

    call Call_000_05dd

Call_000_0620:
    jp hl


Call_000_0621:
Jump_000_0621:
    inc b
    inc c
    jr jr_000_0628

jr_000_0625:
    ld a, [hl+]
    ld [de], a
    inc de

jr_000_0628:
    dec c
    jr nz, jr_000_0625

    dec b
    jr nz, jr_000_0625

    ret


Call_000_062f:
    inc b
    inc c
    jr jr_000_0634

jr_000_0633:
    ld [hl+], a

jr_000_0634:
    dec c
    jr nz, jr_000_0633

    dec b
    jr nz, jr_000_0633

    ret


Call_000_063b:
    call Call_000_0647
    push bc
    ld b, a
    ld c, e
    call Call_000_2885
    ld a, b
    pop bc
    ret


Call_000_0647:
    push de
    push hl
    ld hl, $da30
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    add hl, hl

Jump_000_0652:
    add hl, hl

Jump_000_0653:
    add hl, de
    ld de, $3711
    add hl, de
    ld a, l

Call_000_0659:
    ld [$da30], a
    ld a, h
    ld [$da31], a
    pop hl
    pop de
    ret


Call_000_0663:
    ld hl, $066d
    add l
    ld l, a
    jr nc, jr_000_066b

Call_000_066a:
    inc h

jr_000_066b:
    ld a, [hl]
    ret


    db $01, $02, $04

    ld [$2010], sp
    ld b, b
    add b

Call_000_0675:
    push de
    add $03
    ld e, a
    ldh a, [$ff92]
    ld d, a
    ld a, [$da1c]
    sub d
    dec a
    cp e
    pop de
    ret


    ld a, [$da0f]

Jump_000_0687:
    or a
    jr nz, jr_000_0693

Jump_000_068a:
    ld a, [$da39]
    or a
    ret z

    xor a
    ld [$da39], a

jr_000_0693:
    ld hl, $da33
    dec [hl]
    ret nz

    ld a, [$da34]
    cp $0c
    jr z, jr_000_06bf

    ld e, a
    ld d, $cd
    ld a, [$da38]
    or a
    jr nz, jr_000_06c9

    ld hl, $cd00
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]

Jump_000_06af:
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl], a
    ld a, e
    ld [$da34], a

jr_000_06b8:
    ld a, [$da32]
    ld [$da33], a
    ret


jr_000_06bf:
    xor a

jr_000_06c0:
    ld [$da36], a
    ld hl, $0342
    jp Jump_000_0604


jr_000_06c9:
    ld a, [$cd0c]
    or a
    jr nz, jr_000_06d5

    xor a
    ld [$da38], a
    jr jr_000_06c0

jr_000_06d5:
    dec a
    ld [$cd0c], a
    jr nz, jr_000_06ef

    ld a, [$da37]
    cp $ff
    jr z, jr_000_06ef

    cp $01
    ld a, $ff
    jr z, jr_000_06e9

    xor a

jr_000_06e9:
    ld hl, $cd00
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_000_06ef:
    ld a, [de]
    ld h, a
    inc e
    ld a, e
    ld [$da34], a
    ldh a, [$ffa4]
    push af
    ld a, $1e
    call Call_000_05f3
    ld e, h
    call $600c
    pop af

Call_000_0703:
    call Call_000_05f3
    jr jr_000_06b8

Call_000_0708:
Jump_000_0708:
    ld a, e
    ldh [$ff97], a
    ld a, d
    ldh [$ff98], a

Jump_000_070e:
jr_000_070e:
    ld a, [hl]
    cp $ff
    ret z

    and $e0
    cp $e0
    jr nz, jr_000_0728

    ld a, [hl]
    add a
    add a
    add a
    and $e0
    push af
    ld a, [hl+]
    and $03
    ld b, a
    ld a, [hl+]
    ld c, a
    inc bc
    jr jr_000_0730

jr_000_0728:
    push af
    ld a, [hl+]
    and $1f
    ld c, a
    ld b, $00
    inc c

jr_000_0730:
    inc b
    inc c
    pop af
    bit 7, a
    jr nz, jr_000_077b

    cp $20
    jr z, jr_000_074f

    cp $40
    jr z, jr_000_075b

    cp $60
    jr z, jr_000_076e

jr_000_0743:
    dec c
    jr nz, jr_000_074a

    dec b
    jp z, Jump_000_070e

jr_000_074a:
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_0743

jr_000_074f:
    ld a, [hl+]

jr_000_0750:
    dec c
    jr nz, jr_000_0757

    dec b
    jp z, Jump_000_070e

jr_000_0757:
    ld [de], a
    inc de
    jr jr_000_0750

jr_000_075b:
    dec c
    jr nz, jr_000_0762

    dec b
    jp z, Jump_000_076a

jr_000_0762:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    inc de
    jr jr_000_075b

Jump_000_076a:
    inc hl
    inc hl
    jr jr_000_070e

jr_000_076e:
    ld a, [hl+]

jr_000_076f:
    dec c
    jr nz, jr_000_0776

    dec b
    jp z, Jump_000_070e

jr_000_0776:
    ld [de], a
    inc de
    inc a
    jr jr_000_076f

jr_000_077b:
    push hl
    push af
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ldh a, [$ff97]
    add l
    ld l, a
    ldh a, [$ff98]
    adc h
    ld h, a
    pop af
    cp $80
    jr z, jr_000_0795

    cp $a0
    jr z, jr_000_07a0

    cp $c0
    jr z, jr_000_07b2

jr_000_0795:
    dec c
    jr nz, jr_000_079b

    dec b
    jr z, jr_000_07be

jr_000_079b:
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_0795

jr_000_07a0:
    dec c
    jr nz, jr_000_07a7

    dec b
    jp z, Jump_000_07be

jr_000_07a7:
    ld a, [hl+]
    push hl
    ld h, $d9
    ld l, a
    ld a, [hl]
    pop hl
    ld [de], a
    inc de
    jr jr_000_07a0

jr_000_07b2:
    dec c
    jr nz, jr_000_07b9

    dec b
    jp z, Jump_000_07be

jr_000_07b9:
    ld a, [hl-]
    ld [de], a
    inc de
    jr jr_000_07b2

Jump_000_07be:
jr_000_07be:
    pop hl
    inc hl
    inc hl
    jp Jump_000_070e


Call_000_07c4:
    ldh [$ff84], a

Call_000_07c6:
    push de
    push bc
    ld b, h
    ld c, l

Jump_000_07ca:
    call Call_000_0b94
    jr nc, jr_000_07d8

    pop hl
    pop de
    ld h, $00
    ld a, h
    ld [$da4a], a
    ret


jr_000_07d8:
    ld a, h
    ld [$da4a], a
    ld l, $22
    ld [hl], $42
    inc l
    ld [hl], $03
    ld a, $80

Call_000_07e5:
    ld l, $03
    ld [hl], a
    ld l, $06
    ld [hl], a
    pop bc
    ld l, $04
    ld [hl], c
    inc l
    ld [hl], b
    pop bc
    ld l, $07
    ld [hl], c
    inc l
    ld [hl], b
    call Call_000_0c06

Jump_000_07fa:
    ldh a, [$ff84]

Call_000_07fc:
    ld l, $00

Jump_000_07fe:
    ld [hl], a
    ld e, a

Call_000_0800:
    ld d, $00
    sla a
    rl d
    add e
    ld e, a

Call_000_0808:
    ld a, $77
    adc d
    ld d, a

Jump_000_080c:
    xor a
    ld l, $0d
    ld [hl+], a
    ld [hl], a
    ld l, $0f
    ld [hl+], a
    ld [hl], a
    ld l, $11
    ld [hl+], a
    ld [hl], a
    ld l, $45
    ld [hl+], a
    ld [hl], a
    ld l, $4a
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    ld l, $15
    ld [hl], a
    ld l, $49
    ld [hl], a
    ld l, $48
    ld [hl], a
    ldh a, [$ffa4]
    ldh [$ff84], a
    ld a, $07
    call Call_000_05dd
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld e, a
    ldh a, [$ff84]
    call Call_000_05dd
    call Call_000_0855
    ret


Call_000_0846:
Jump_000_0846:
    ldh a, [$ff9a]
    ld h, a

Call_000_0849:
Jump_000_0849:
    ld a, h

Jump_000_084a:
    cp $a0

Jump_000_084c:
    ret c

    cp $b3

Call_000_084f:
    ret nc

Call_000_0850:
    ld l, $00
    ld a, [hl]
    inc a
    ret z

Call_000_0855:
    call Call_000_0c2a
    ld l, $19
    ld [hl], e
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    xor a
    ld l, $24
    ld [hl], a
    ld l, $47
    ld [hl], a
    ld l, $28
    ld [hl], $39
    ret


Call_000_086b:
    ld a, [$da46]
    jr jr_000_087f

jr_000_0870:
    ldh [$ff9a], a
    ld h, a
    ld l, $01
    ld a, [hl]
    ld [$da49], a
    call Call_000_08a1
    ld a, [$da49]

jr_000_087f:
    or a
    jr nz, jr_000_0870

    ld a, [$da46]

Jump_000_0885:
    jr jr_000_089d

jr_000_0887:
    ldh [$ff9a], a
    ld d, a
    ld e, $01
    ld a, [de]
    ld [$da49], a
    ld e, $22
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    call Call_000_0620
    ld a, [$da49]

jr_000_089d:
    or a
    jr nz, jr_000_0887

    ret


Call_000_08a1:
    ld l, $19
    ld a, $24
    ldh [$ff9b], a
    ld e, a

jr_000_08a8:
    ld a, [hl+]
    ld b, a
    and $a0
    jr nz, jr_000_08b9

    bit 6, b
    jr nz, jr_000_08de

    ld d, h
    ld a, [de]
    or a
    jr z, jr_000_08c6

    dec a
    ld [de], a

jr_000_08b9:
    inc l
    inc l

jr_000_08bb:
    ldh a, [$ff9b]
    cp $26
    ret nc

    inc a
    ldh [$ff9b], a
    ld e, a
    jr jr_000_08a8

jr_000_08c6:
    ld a, b
    call Call_000_05dd
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    push hl

Jump_000_08ce:
    ld a, [bc]
    inc bc
    add a
    ld h, $3f

Jump_000_08d3:
    ld l, a
    ld a, [hl+]

Call_000_08d5:
    ld h, [hl]
    ld l, a
    jp hl


Jump_000_08d8:
    pop hl
    ld [hl], c
    dec l
    ld [hl], b
    jr jr_000_08b9

jr_000_08de:
    ld a, b
    and $1f
    call Call_000_05dd

Call_000_08e4:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    push hl
    ld d, h
    ld l, a
    ld h, b
    call Call_000_0620
    pop hl
    jr jr_000_08bb

    ld h, d
    push de
    call Call_000_0bba
    pop de
    jp Jump_000_08d8


    ldh a, [$ff9b]
    sub $24

Call_000_08fe:
Jump_000_08fe:
    ld l, a
    add a
    add l
    add $19
    ld l, a
    ld h, d
    set 7, [hl]
    jp Jump_000_08d8


    ldh a, [$ff9b]
    ld e, a
    ld a, [bc]
    inc bc

Call_000_090f:
    dec a
    ld [de], a
    jp Jump_000_08d8


    ld h, d

Call_000_0915:
    ldh a, [$ff9b]
    ld l, a
    ld e, $27
    ld a, [de]
    dec a
    ld [hl], a
    jp Jump_000_08d8


    ld a, [bc]
    inc bc
    ld e, $15
    ld [de], a
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld e, $15
    ld [de], a
    ldh a, [$ff9b]
    ld e, a
    ld a, [bc]
    inc bc
    dec a
    ld [de], a
    jp Jump_000_08d8


    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld [de], a
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld e, a
    ld a, [de]
    ld e, $27
    ld [de], a
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld e, a
    ld h, d
    ld l, $27
    ld a, [hl]
    ld [de], a
    jp Jump_000_08ce


    ld e, $25
    xor a
    ld [de], a
    ld h, d
    ld l, $1e
    ld a, [bc]
    inc bc
    ld [hl-], a
    ld a, [bc]
    inc bc
    ld [hl-], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jp Jump_000_08ce


    ld e, $26
    xor a
    ld [de], a

    ld h, d
    ld h, d
    ld l, $21
    ld a, [bc]
    inc bc
    ld [hl-], a

Call_000_0973:
    ld a, [bc]
    inc bc
    ld [hl-], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jp Jump_000_08ce


    ld e, $22
    ld a, [bc]
    inc bc

Jump_000_0980:
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    ld [de], a
    jp Jump_000_08ce


    ld h, d
    ld l, $18
    ld a, [bc]
    inc bc
    ld [hl-], a
    ld a, [bc]
    inc bc
    ld [hl-], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    ld b, a
    ld c, e
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    inc bc
    ld h, a
    ldh a, [$ff9b]
    sub $24
    ld e, a
    add a
    add e
    add $19

Jump_000_09af:
    ld e, a
    ld a, [bc]
    ld [de], a
    call Call_000_05dd
    ld b, h
    ld c, l
    jp Jump_000_08ce


    ld e, $27

Jump_000_09bc:
    ld a, [de]
    or a
    jr nz, jr_000_09c9

Call_000_09c0:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]

Jump_000_09c4:
    ld b, a
    ld c, e
    jp Jump_000_08ce


Jump_000_09c9:
jr_000_09c9:
    inc bc
    inc bc
    jp Jump_000_08ce


    ld e, $27
    ld a, [de]
    or a
    jr z, jr_000_09dd

    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    ld b, a
    ld c, e
    jp Jump_000_08ce


jr_000_09dd:
    inc bc
    inc bc
    jp Jump_000_08ce


    ld h, b
    ld l, c
    ld e, $27
    ld a, [de]
    cp [hl]
    jr nc, jr_000_09f1

    inc hl
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    jp Jump_000_08ce


jr_000_09f1:
    inc bc
    inc bc
    inc bc
    jp Jump_000_08ce


    ld h, b
    ld l, c
    ld e, $27
    ld a, [de]
    cp [hl]
    jr c, jr_000_0a06

Jump_000_09ff:
    inc hl

Jump_000_0a00:
    ld a, [hl+]

Jump_000_0a01:
    ld c, a

Jump_000_0a02:
    ld b, [hl]
    jp Jump_000_08ce


jr_000_0a06:
    inc bc
    inc bc
    inc bc
    jp Jump_000_08ce


    ld e, $0d
    ld a, [bc]
    inc bc
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    ld [de], a
    jp Jump_000_08ce


    ld e, $0f
    ld a, [bc]
    inc bc
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    ld [de], a
    jp Jump_000_08ce


    xor a
    ld h, d
    ld l, $0d
    ld [hl+], a
    ld [hl], a
    ld l, $0f
    ld [hl+], a
    ld [hl], a
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld e, $11
    ld [de], a
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld e, $12
    ld [de], a
    jp Jump_000_08ce


    ld a, [bc]
    ld e, a
    inc bc
    ld h, d
    ld l, $28
    ld a, [hl]
    dec a
    ld l, a
    ld [hl], b
    dec l
    ld [hl], c
    dec l
    ld [hl], e
    ld e, $28
    ld a, l
    ld [de], a
    jp Jump_000_08ce


    ld h, d
    ld l, $28
    ld a, [hl]
    ld l, a
    dec [hl]
    jr z, jr_000_0a65

    inc l
    ld c, [hl]
    inc l
    ld b, [hl]

Jump_000_0a62:
    jp Jump_000_08ce


jr_000_0a65:
    inc l
    inc l
    inc l
    ld e, $28
    ld a, l

Jump_000_0a6b:
    ld [de], a
    jp Jump_000_08ce


    ld h, d
    ld l, $28
    ld a, [hl]
    dec a
    ld l, a
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld [hl], b
    dec l
    ld [hl], c
    ld b, a
    ld c, e
    ld e, $28
    ld a, l
    ld [de], a
    jp Jump_000_08ce


Jump_000_0a86:
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    inc bc
    ld h, a
    push hl
    ldh a, [$ff9b]
    sub $24
    ld e, a
    add a
    add e
    add $19
    ld e, a
    ld a, [de]
    ldh [$ff84], a
    ld a, [bc]
    inc bc
    ld [de], a
    call Call_000_05dd
    ld h, d
    ld l, $28
    ld a, [hl]
    dec a
    ld l, a
    ldh a, [$ff84]
    ld [hl-], a
    ld [hl], b
    dec l
    ld [hl], c
    pop bc
    ld e, $28
    ld a, l
    ld [de], a
    jp Jump_000_08ce


    ld h, d
    ld l, $28
    ld a, [hl]
    ld l, a
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    ld e, $28
    ld a, l
    ld [de], a
    jp Jump_000_08ce


    ld h, d
    ld l, $28
    ld a, [hl]
    ld l, a
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    ldh a, [$ff9b]
    sub $24
    ld e, a
    add a
    add e
    add $19
    ld e, a
    ld a, [hl+]
    ld [de], a
    call Call_000_05dd
    ld e, $28
    ld a, l
    ld [de], a
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    inc bc
    ld h, a
    call Call_000_0620
    jp Jump_000_08ce


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    inc bc
    ld h, a
    call Call_000_0620
    ldh a, [$ff9b]
    ld e, a
    ld a, [de]
    dec a
    ld [de], a
    jp Jump_000_08d8


Jump_000_0b01:
    call Call_000_1099
    jp Jump_000_08ce


    call Call_000_10b6
    jp Jump_000_08ce


    call Call_000_1018
    jp Jump_000_08ce


    call Call_000_1ec0
    jp Jump_000_08ce


    call Call_000_1011
    jp Jump_000_08ce


    ld h, b
    ld l, c
    ld e, $27
    ld a, [de]
    cp [hl]
    jr nc, jr_000_0b33

    inc hl

Call_000_0b28:
    rlca
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    jp Jump_000_08ce


Call_000_0b33:
jr_000_0b33:
    ld a, [hl+]
    rlca
    ld c, a
    ld b, $00
    add hl, bc
    ld b, h
    ld c, l
    jp Jump_000_08ce


    push bc
    ld a, [bc]
    inc bc

Jump_000_0b41:
    rlca
    add c

Call_000_0b43:
    ld c, a
    jr nc, jr_000_0b47

    inc b

jr_000_0b47:
    ld h, d

Jump_000_0b48:
    ld l, $28
    ld a, [hl]
    dec a
    ld l, a
    ld [hl], b
    dec l
    ld [hl], c
    ld e, $28
    ld a, l

Call_000_0b53:
    ld [de], a
    pop bc
    ld h, b
    ld l, c
    ld e, $27
    ld a, [de]
    cp [hl]
    jr nc, jr_000_0b69

    inc hl
    rlca
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    jp Jump_000_08ce


jr_000_0b69:
    ld a, [hl+]
    rlca
    ld c, a
    ld b, $00
    add hl, bc
    ld b, h
    ld c, l
    jp Jump_000_08ce


    ld e, $03
    ld a, $80
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    ld [de], a
    jp Jump_000_08ce


    ld e, $06
    ld a, $80
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    ld [de], a
    jp Jump_000_08ce


Call_000_0b94:
    ld a, [$da48]
    or a
    jr z, jr_000_0ba8

    ld h, a
    ld l, $01

jr_000_0b9d:
    cp b
    jr c, jr_000_0ba3

    cp c
    jr c, jr_000_0baa

jr_000_0ba3:
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_000_0b9d

jr_000_0ba8:
    scf
    ret


jr_000_0baa:
    cp h
    jr nz, jr_000_0bb3

    ld a, [hl]
    ld [$da48], a
    and a
    ret


jr_000_0bb3:
    ld d, h
    ld e, l
    ld h, a
    ld a, [hl]
    ld [de], a
    and a
    ret


Call_000_0bba:
Jump_000_0bba:
    ld a, h
    cp $a0
    ret c

    cp $b3
    ret nc

    ld l, $00
    ld a, [hl]
    inc a
    ret z

    ld [hl], $ff
    call Call_000_0c2a
    ld l, $01
    ld a, [hl]
    or a
    ld l, $02
    jr nz, jr_000_0bd8

    ld de, $da47
    jr jr_000_0bda

jr_000_0bd8:
    ld d, a
    ld e, l

jr_000_0bda:
    ld a, [hl]
    ld [de], a
    or a
    ld l, $01
    jr nz, jr_000_0be6

    ld de, $da46
    jr jr_000_0be8

jr_000_0be6:
    ld d, a
    ld e, l

jr_000_0be8:
    ld a, [hl]
    ld [de], a
    ld a, [$da49]
    cp h
    jr nz, jr_000_0bf4

    ld a, [hl]
    ld [$da49], a

jr_000_0bf4:
    ld de, $da48
    ld a, [de]
    ld l, $01
    ld [hl], a
    ld a, h
    ld [de], a
    ld l, $49
    ld e, [hl]

Call_000_0c00:
    ld d, $bb

Call_000_0c02:
    xor a
    ld [de], a
    ld d, h
    ret


Call_000_0c06:
    ld de, $da47
    ld a, [de]
    ld l, $02

Jump_000_0c0c:
    ld [hl], a
    ld l, $01
    ld [hl], $00
    or a
    jr nz, jr_000_0c1a

    ld a, h
    ld [de], a
    ld [$da46], a
    ret


jr_000_0c1a:
    ld b, h
    ld h, a
    ld [hl], b
    ld a, b
    ld [de], a
    ld h, a
    ld a, [$da49]
    or a
    ret nz

    ld a, h
    ld [$da49], a
    ret


Call_000_0c2a:
    ld l, $1c
    ld [hl], $80
    ld l, $1f
    ld [hl], $80
    ld l, $25
    ld [hl], $00
    inc l
    ld [hl], $00
    ret


Call_000_0c3a:
    call Call_000_0c48
    push hl
    ld hl, $747d
    ld a, $02
    call Call_000_05cf
    pop hl

Jump_000_0c47:
    ret


Call_000_0c48:
    xor a
    ldh [$ffb4], a
    ld hl, $a06c
    res 0, [hl]
    ld a, [$a054]
    cp $80
    jr c, jr_000_0c5c

    ld a, $60
    ld [$a054], a

Jump_000_0c5c:
jr_000_0c5c:
    ld h, $a0
    jp Jump_000_0849


Call_000_0c61:
    ld h, d
    ld l, $03
    ld de, $da4b
    ld bc, $009b
    call Call_000_0621
    ldh a, [$ff9a]
    ld d, a

Call_000_0c70:
    ret


Call_000_0c71:
    ld e, $03
    ld hl, $da4b
    ld bc, $009b
    call Call_000_0621
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_0c80:
    ld e, $11
    ld a, [de]

Call_000_0c83:
    ld e, $0d

Jump_000_0c85:
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ret


Call_000_0c91:
    ld e, $12
    ld a, [de]

Call_000_0c94:
    ld e, $0f
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ret


Call_000_0ca2:
Jump_000_0ca2:
    ld h, d
    ld l, $0e
    ld a, [hl-]
    rla
    jr c, jr_000_0cb7

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    jr c, jr_000_0cb7

    ld e, $0c
    jp Jump_000_0d04


Call_000_0cb4:
Jump_000_0cb4:
    ld h, d
    ld l, $0d

jr_000_0cb7:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    rla
    ret c

    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    ret c

    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


Jump_000_0cc9:
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

Call_000_0cd3:
Jump_000_0cd3:
    ld h, d
    ld l, $0e
    ld a, [hl-]
    rla
    jr nc, jr_000_0cf2

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    jr nc, jr_000_0cf2

    ld e, $0c
    jp Jump_000_0d04


Call_000_0ce5:
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

Call_000_0cef:
Jump_000_0cef:
    ld h, d

Call_000_0cf0:
Jump_000_0cf0:
    ld l, $0d

jr_000_0cf2:
    ld a, [hl]
    sub e

Call_000_0cf4:
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl-], a
    rla
    ret nc

Call_000_0cfb:
    ld a, [hl+]

Jump_000_0cfc:
    sub c
    ld a, [hl]
    sbc b
    ret nc

Call_000_0d00:
Jump_000_0d00:
    ld a, b

Jump_000_0d01:
    ld [hl-], a
    ld [hl], c
    ret


Call_000_0d04:
Jump_000_0d04:
    ld h, d

Call_000_0d05:
    ld l, $0e

Call_000_0d07:
    ld a, [hl-]
    rla
    jr c, jr_000_0d17

    ld a, [hl]

Call_000_0d0c:
Jump_000_0d0c:
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ret nc

    xor a
    ld [hl-], a
    ld [hl], a
    ret


jr_000_0d17:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret nc

    xor a
    ld [hl-], a
    ld [hl], a
    ret


Call_000_0d23:
Jump_000_0d23:
    ld h, d
    ld l, $10
    ld a, [hl-]
    rla
    jr c, jr_000_0d38

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    jr c, jr_000_0d38

    ld e, $0c
    jp Jump_000_0d85


Call_000_0d35:
Jump_000_0d35:
    ld h, d
    ld l, $0f

jr_000_0d38:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    rla
    ret c

    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    ret c

    ld a, b
    ld [hl-], a

Jump_000_0d48:
    ld [hl], c
    ret


    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

Call_000_0d54:
Jump_000_0d54:
    ld h, d
    ld l, $10
    ld a, [hl-]
    rla
    jr nc, jr_000_0d73

    ld a, [hl+]
    sub c
    ld a, [hl-]
    sbc b
    jr nc, jr_000_0d73

    ld e, $0c

Jump_000_0d63:
    jp Jump_000_0d85


Call_000_0d66:
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b

Call_000_0d6c:
    cpl
    adc $00

Jump_000_0d6f:
    ld b, a

Call_000_0d70:
Jump_000_0d70:
    ld h, d
    ld l, $0f

jr_000_0d73:
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]

Call_000_0d77:
    sbc $00
    ld [hl-], a
    rla
    ret nc

    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    ret nc

    ld a, b
    ld [hl-], a

Jump_000_0d83:
    ld [hl], c
    ret


Call_000_0d85:
Jump_000_0d85:
    ld h, d
    ld l, $10
    ld a, [hl-]
    rla
    jr c, jr_000_0d98

    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ret nc

    xor a
    ld [hl-], a
    ld [hl], a
    ret


jr_000_0d98:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret nc

    xor a
    ld [hl-], a
    ld [hl], a
    ret


Call_000_0da4:
Jump_000_0da4:
    ld e, $0d
    ld h, d
    ld l, $03

Call_000_0da9:
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc e
    ld a, [de]
    ld b, $00
    bit 7, a
    jr z, jr_000_0db5

    dec b

Jump_000_0db5:
jr_000_0db5:
    adc [hl]
    ld [hl+], a
    inc e
    ld a, b
    adc [hl]
    ld [hl+], a
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc e
    ld a, [de]
    ld b, $00
    bit 7, a
    jr z, jr_000_0dc7

    dec b

jr_000_0dc7:
    adc [hl]
    ld [hl+], a
    inc e
    ld a, b
    adc [hl]
    ld [hl], a
    ret


    ld a, [$a06c]

Jump_000_0dd1:
    rra
    jr nc, jr_000_0dde

    ld a, $07
    call Call_000_05dd
    call $740a
    jr jr_000_0df0

jr_000_0dde:
    call Call_000_0e2c

Call_000_0de1:
    ld a, [$a05d]
    cp $00
    jr nz, jr_000_0df0

    ld a, $0b
    call Call_000_05dd
    call $785b

jr_000_0df0:
    jp Jump_000_0f22


    call Call_000_3467

Jump_000_0df6:
    call Call_000_0e2c
    jp Jump_000_0f22


    call Call_000_347d
    call Call_000_0e4b

Jump_000_0e02:
    jp Jump_000_0f22


    call Call_000_0f01
    jp Jump_000_0f22


    call Call_000_0e9d
    jp Jump_000_0f22


    ld a, $08
    call Call_000_05dd
    call $57ac
    ret


    ld a, $08
    call Call_000_05dd
    call $53cb
    ret


    ld a, $08
    call Call_000_05dd
    call $56a6
    ret


Call_000_0e2c:
    ld e, $04
    ld hl, $db51
    ld b, d
    ld c, $09

Call_000_0e34:
    ld a, [de]
    sub [hl]
    ld [bc], a
    inc e
    inc hl
    inc c
    ld a, [de]
    sbc [hl]
    ld [bc], a
    inc e
    inc e
    inc hl
    inc c
    ld a, [de]
    sub [hl]
    ld [bc], a
    inc e
    inc hl
    inc c
    ld a, [de]
    sbc [hl]
    ld [bc], a
    ret


Call_000_0e4b:
    ld e, $04
    ld hl, $db51
    ld b, d
    ld c, $09
    ld a, [de]

Call_000_0e54:
    sub [hl]
    ld [bc], a
    ldh [$ff84], a
    inc e
    inc hl
    inc c

Jump_000_0e5b:
    ld a, [de]
    sbc [hl]
    ld [bc], a
    inc a
    cp $01
    ldh a, [$ff84]
    jr z, jr_000_0e6d

    jr nc, jr_000_0e94

    cp $e0
    jr nc, jr_000_0e71

    jr jr_000_0e94

jr_000_0e6d:
    cp $c0
    jr nc, jr_000_0e94

jr_000_0e71:
    inc e
    inc e
    inc hl
    inc c
    ld a, [de]
    sub [hl]
    ld [bc], a
    ldh [$ff84], a
    inc e
    inc hl
    inc c
    ld a, [de]
    sbc [hl]
    ld [bc], a
    inc a
    cp $01
    ldh a, [$ff84]
    jr z, jr_000_0e8f

    jr nc, jr_000_0e94

    cp $e0
    jr nc, jr_000_0e93

    jr jr_000_0e94

jr_000_0e8f:
    cp $a0
    jr nc, jr_000_0e94

jr_000_0e93:
    ret


jr_000_0e94:
    ld e, $15
    ld a, $ff
    ld [de], a
    ld h, d
    jp Jump_000_0bba


Call_000_0e9d:
    ld e, $04
    ld hl, $db51
    ld b, d
    ld c, $09
    ld a, [de]
    sub [hl]
    ld [bc], a
    ldh [$ff84], a
    inc e
    inc hl
    inc c
    ld a, [de]
    sbc [hl]
    ld [bc], a
    inc a
    cp $01
    ldh a, [$ff84]
    jr z, jr_000_0ebf

    jr nc, jr_000_0ee6

    cp $e0
    jr nc, jr_000_0ec3

    jr jr_000_0ee6

jr_000_0ebf:
    cp $c0
    jr nc, jr_000_0ee6

jr_000_0ec3:
    inc e
    inc e
    inc hl
    inc c
    ld a, [de]
    sub [hl]
    ld [bc], a
    ldh [$ff84], a
    inc e
    inc hl
    inc c
    ld a, [de]
    sbc [hl]
    ld [bc], a
    inc a
    cp $01
    ldh a, [$ff84]
    jr z, jr_000_0ee1

    jr nc, jr_000_0ee6

    cp $e0
    jr nc, jr_000_0ee5

    jr jr_000_0ee6

jr_000_0ee1:
    cp $a0
    jr nc, jr_000_0ee6

jr_000_0ee5:
    ret


jr_000_0ee6:
    ld e, $15
    ld a, $ff
    ld [de], a
    ld h, d
    push de
    call Call_000_0bba
    pop de
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $15
    ld a, $ff
    ld [hl], a
    call Call_000_0bba
    ldh a, [$ff9a]
    ld d, a

Call_000_0f00:
Jump_000_0f00:
    ret


Call_000_0f01:
Jump_000_0f01:
    ld e, $48
    ld a, [de]

Call_000_0f04:
    ld h, a
    ld e, $04
    ld l, $09
    ld b, d
    ld c, l
    ld a, [de]
    add [hl]
    ld [bc], a
    inc e
    inc l
    inc c
    ld a, [de]
    adc [hl]
    ld [bc], a
    inc e
    inc e
    inc l
    inc c
    ld a, [de]
    add [hl]
    ld [bc], a
    inc e
    inc l
    inc c
    ld a, [de]
    adc [hl]
    ld [bc], a
    ret


Jump_000_0f22:
    ld e, $15
    ld a, [de]
    cp $ff
    ret z

    add a
    ld c, a
    ld h, d
    ld l, $16
    ld a, [hl+]
    call Call_000_05dd
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $93

Call_000_0f3c:
    ld e, $45
    ld a, [de]
    ldh [c], a

Call_000_0f40:
    inc e
    inc c
    ld a, [de]

Call_000_0f43:
    ldh [c], a
    inc e
    inc c

Jump_000_0f46:
    ld a, [de]
    ldh [c], a
    ld e, $0c
    push de
    call Call_000_051c
    pop de
    ret


Call_000_0f50:
Jump_000_0f50:
    push de
    ld h, b
    ld l, c
    ld a, [hl+]
    ldh [$ff84], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a

Jump_000_0f5a:
    push hl
    call Call_000_0f67
    pop bc
    pop de
    ld a, h
    or a
    ret z

    ld l, $48
    ld [hl], d
    ret


Call_000_0f67:
    ld h, d
    ld l, $07
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push de
    ld l, $04
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push de
    jp Jump_000_07ca


Call_000_0f77:
    ld a, [bc]
    inc bc
    ld e, a

Call_000_0f7a:
Jump_000_0f7a:
    push de
    push bc
    ld a, $01
    ldh [$ff84], a
    ld bc, $a2a5
    call Call_000_0f67
    pop bc
    pop de
    ld a, h
    or a
    ret z

    ld l, $48
    ld [hl], d
    ld l, $51
    ld [hl], e
    ret


Jump_000_0f92:
    ld a, $01
    ldh [$ff84], a
    ld hl, $db34
    ld a, $a5
    ld [hl+], a
    ld [hl], $a2
    ld h, b
    ld l, c
    call Call_000_0fd0
    ret z

    ld l, $51
    ldh a, [$ff80]
    ld [hl], a
    ld e, $45
    ld l, e
    ld a, [de]
    ld [hl], a
    ret


Call_000_0faf:
    ld a, $02
    ldh [$ff84], a
    ld hl, $db34
    ld a, $a8
    ld [hl+], a
    ld [hl], $a5
    ld h, b
    ld l, c
    call Call_000_0fd0
    ret z

    ld l, $5a
    ldh a, [$ff80]
    ld [hl], a
    ld e, $45
    ld l, e
    ld a, [de]
    ld [hl], a
    ld l, $4c
    ld [hl], $00
    ret


Call_000_0fd0:
    ld a, [hl+]
    ldh [$ff80], a
    ld a, [hl+]
    ldh [$ff85], a
    ld a, [hl+]
    ldh [$ff86], a
    push de
    push hl
    ld h, d
    ld l, $45
    ld a, [hl]
    rla
    ldh a, [$ff85]
    jr nc, jr_000_0fe6

    cpl
    inc a

jr_000_0fe6:
    ld c, a
    rla
    sbc a
    ld b, a
    ld l, $04
    ld a, [hl+]
    add c
    ld c, a
    ld a, [hl+]

Jump_000_0ff0:
    adc b
    ld b, a
    inc l
    ldh a, [$ff86]
    ld e, a
    rla
    sbc a
    ld d, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    ld hl, $db34

Jump_000_1002:
    ld a, [hl+]
    ld h, [hl]

Call_000_1004:
    ld l, a
    call Call_000_07c6
    pop bc
    pop de
    ld a, h
    or a

Jump_000_100c:
    ret z

    ld l, $48
    ld [hl], d
    ret


Call_000_1011:
    call Call_000_0647
    ld e, $27
    ld [de], a
    ret


Call_000_1018:
    ld e, $45

Jump_000_101a:
    ld a, [de]
    rla
    ld e, $0d

Jump_000_101e:
    ld a, [bc]
    inc bc
    jr c, jr_000_1026

    ld [de], a
    ld a, [bc]
    jr jr_000_102e

jr_000_1026:
    cpl
    add $01
    ld [de], a
    ld a, [bc]
    cpl
    adc $00

jr_000_102e:
    inc e

Call_000_102f:
    inc bc
    ld [de], a
    ret


    ld e, $45

Call_000_1034:
    ld a, [de]
    rla
    ld e, $11
    ld a, [bc]
    inc bc
    jr nc, jr_000_103e

    cpl
    inc a

jr_000_103e:
    ld [de], a
    ret


    ld e, $07
    jr jr_000_1046

    ld e, $04

jr_000_1046:
    ld h, b
    ld l, c
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a
    inc hl
    ld b, h
    ld c, l
    ret


    ld h, $a0
    ld a, h

jr_000_1057:
    cp d
    jr z, jr_000_1060

    call Call_000_0bba
    ldh a, [$ff9a]
    ld d, a

jr_000_1060:
    inc h
    ld a, h

Call_000_1062:
    cp $b3
    jr nz, jr_000_1057

    ret


Call_000_1067:
    ld h, $a0
    ld a, h

jr_000_106a:
    cp d
    jr z, jr_000_1079

    ld l, $19
    set 5, [hl]
    ld l, $1c
    set 5, [hl]

Jump_000_1075:
    ld l, $1f
    set 5, [hl]

jr_000_1079:
    inc h
    ld a, h
    cp $b3
    jr nz, jr_000_106a

    ret


    ld h, $a0
    ld a, h

jr_000_1083:
    cp d
    jr z, jr_000_1092

    ld l, $19
    res 5, [hl]
    ld l, $1c
    res 5, [hl]
    ld l, $1f
    res 5, [hl]

jr_000_1092:
    inc h
    ld a, h
    cp $b3
    jr nz, jr_000_1083

    ret


Call_000_1099:
    ld a, [bc]
    ld e, a
    inc bc
    push bc
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_10aa:
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_10b6:
    ld a, [bc]

jr_000_10b7:
    ld e, a
    inc bc
    push bc
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


    ld a, [bc]
    ld [$db6f], a
    jr jr_000_10b7

    ld a, [bc]
    inc bc
    ld e, a
    push bc
    ld hl, $606d
    ld a, $1e
    call Call_000_05cf
    pop bc
    ldh a, [$ff9a]
    ld d, a
    ret


Jump_000_10de:
    ld a, $08
    call Call_000_05dd
    jp $4062


    ld e, $09
    ld hl, $602e
    ld a, $1e
    call Call_000_05cf
    call Call_000_1126
    call Call_000_1134
    ld hl, $5b28
    ld a, $07
    call Call_000_05cf
    ld hl, $dede

Call_000_1101:
    set 2, [hl]

Call_000_1103:
    set 1, [hl]
    set 3, [hl]
    set 5, [hl]
    set 6, [hl]
    ld a, [$a05b]
    inc a
    ld [$dee0], a
    ld a, [$a071]
    or a
    jr z, jr_000_111d

    ld hl, $dedf
    set 1, [hl]

jr_000_111d:
    ld a, $07
    ldh [rWX], a
    ld a, $80
    ldh [rWY], a
    ret


Call_000_1126:
    ld a, $0b
    call Call_000_05dd
    ld hl, $68a0
    ld de, $8000
    jp Jump_000_0708


Call_000_1134:
    ld a, $0b
    call Call_000_05dd
    ld hl, $7122
    ld de, $9630
    call Call_000_0708
    ld a, $0b

Call_000_1144:
    call Call_000_05dd
    ld hl, $720f

Jump_000_114a:
    ld de, $8800
    call Call_000_0708
    ld a, $0b
    call Call_000_05dd
    ld hl, $6d87
    ld de, $8600
    call Call_000_0708
    ret


    ld a, $07
    call Call_000_05dd
    jr jr_000_1196

    ld hl, $747d
    ld a, $02
    call Call_000_05cf
    ld a, [$a051]
    cp $0d
    jr nz, jr_000_1183

    ld a, $0b
    call Call_000_05dd
    ld hl, $6980
    ld de, $8000
    jp Jump_000_0708


jr_000_1183:
    ld a, $07
    call Call_000_05dd
    call $7458
    call Call_000_1196
    ld a, $07
    call Call_000_05dd
    call $7472

Call_000_1196:
jr_000_1196:
    ld a, [$df11]
    ld h, $00
    ld l, a
    ld b, h
    ld c, l
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    ld bc, $74bb
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ldh [$ff84], a
    push bc
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    pop hl
    ldh a, [$ff84]
    call Call_000_05dd
    jp Jump_000_0621


    xor a
    ld [$a082], a
    ldh [$ffa5], a
    ldh [$ffa6], a

jr_000_11c6:
    call Call_000_0496
    ld a, [$a06c]
    rra
    jr c, jr_000_11d4

    ld a, $ff
    ld [$a05d], a

jr_000_11d4:
    call Call_000_086b
    ld a, $07
    call Call_000_05dd
    call $4259
    ld a, $07
    call Call_000_05dd
    call $43cb
    call Call_000_04ae
    ld hl, $5b85
    ld a, $07
    call Call_000_05cf
    ld hl, $5bd2
    ld a, $07
    call Call_000_05cf
    call Call_000_0343
    call Call_000_0357

Jump_000_1200:
    ld a, [$a082]
    or a
    jr nz, jr_000_1219

    ld a, [$da3a]
    cp $02
    jr nz, jr_000_1219

Jump_000_120d:
    ld a, [$da3f]
    and $0b
    jr z, jr_000_1219

    ld a, $09
    ld [$a082], a

jr_000_1219:
    ld a, [$a082]
    or a
    jr z, jr_000_11c6

    ret


    call Call_000_1564
    ld bc, $000e
    add hl, bc
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, b
    call Call_000_05dd
    ld de, $a004
    ld a, [de]
    and $f0
    swap a
    ld b, a
    inc e
    ld a, [de]
    swap a
    or b
    ld b, a
    ld e, $07
    ld a, [de]
    and $f0
    swap a
    ld c, a
    inc e
    ld a, [de]
    swap a
    or c
    ld c, a

Jump_000_124d:
    ld de, $0003

jr_000_1250:
    ld a, [hl+]
    cp b
    jr nz, jr_000_125a

    ld a, [hl+]
    cp c
    jr nz, jr_000_125b

    jr jr_000_1267

jr_000_125a:
    inc hl

Call_000_125b:
Jump_000_125b:
jr_000_125b:
    ld a, [hl+]
    cp $20
    jr nc, jr_000_125b

    cp $01
    jr z, jr_000_1250

    add hl, de
    jr jr_000_1250

jr_000_1267:
    push hl

Call_000_1268:
    ld a, [hl+]

Call_000_1269:
    cp $60
    ld e, $04
    jr nz, jr_000_1279

    ld hl, $4276
    ld a, $1a
    call Call_000_05cf
    jr jr_000_1281

jr_000_1279:
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf

jr_000_1281:
    call Call_000_0437
    pop hl
    ret


    call Call_000_1564

Call_000_1289:
    ld a, [hl+]
    ld [$db3d], a
    ld c, a
    ld a, [hl+]
    ld [$db3e], a
    push hl
    ld b, a
    ld hl, $cd2d
    ld a, $b3
    jr jr_000_129c

jr_000_129b:
    add c

jr_000_129c:
    ld [hl+], a
    dec b
    jr nz, jr_000_129b

    sla c
    ld a, [$db3e]
    ld b, a
    ld hl, $cd35
    ld a, $3d
    jr jr_000_12ae

jr_000_12ad:
    add c

jr_000_12ae:
    ld [hl+], a
    dec b
    jr nz, jr_000_12ad

    pop hl
    ld c, $04
    ld de, $db45

jr_000_12b8:
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    ld [de], a
    inc de
    ld a, b
    and $0f
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_12b8

    push hl
    ld hl, $db45
    ld de, $db3f
    ld a, [hl+]
    add $08
    ld [de], a
    inc de
    ld a, [hl+]
    adc $00
    ld [de], a
    inc de
    ld a, [hl+]
    add $08
    ld [de], a
    inc de
    ld a, [hl+]
    adc $00
    ld [de], a
    inc de
    ld a, [hl+]
    add $98
    ld [de], a
    inc de
    ld a, [hl]
    adc $00
    ld [de], a
    pop hl
    push hl

Jump_000_12ee:
    ld bc, $000a
    add hl, bc
    ld de, $b300
    call Call_000_0708
    pop hl
    inc hl
    inc hl
    push hl
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld l, [hl]

Jump_000_1300:
    ld h, a

Call_000_1301:
Jump_000_1301:
    ld a, b

Call_000_1302:
    call Call_000_05dd
    ld bc, $0003
    add hl, bc
    push hl
    ld a, [hl+]
    ld [$db5c], a
    ld de, $cf00
    call Call_000_0708
    ld c, $05
    ld hl, $cf00
    ld de, $c500

jr_000_131c:
    ld a, [$db5c]
    ld b, a

jr_000_1320:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_1320

    ld e, $00
    inc d
    dec c
    jr nz, jr_000_131c

    pop hl
    dec hl
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, b
    ld [$db5a], a
    call Call_000_05dd
    ld a, [hl+]
    cpl
    inc a
    swap a
    ld d, a
    and $f0
    ld e, a
    ld a, d
    or $f0
    ld d, a
    ld a, e
    add $30
    ld e, a
    ld a, d
    adc $96
    ld d, a
    and $0f
    or e
    swap a
    ld [$db59], a
    ld a, l
    ld [$db5b], a
    ld a, h
    ld [$db5c], a
    call Call_000_0708
    ld a, [$db58]
    call Call_000_05dd
    pop hl
    push hl

Jump_000_136a:
    ld bc, $0007
    add hl, bc
    bit 0, [hl]
    ld a, $86
    jr z, jr_000_1388

    ld a, $0c
    call Call_000_05dd
    ld hl, $47d1
    ld de, $8860
    call Call_000_0708
    ld a, d
    and $0f
    or e
    swap a

jr_000_1388:
    ld [$db5e], a
    ld a, [$db73]
    or a
    jr z, jr_000_13a3

    pop hl
    ld a, [$db60]
    ld hl, $14d0
    add a
    add l
    ld l, a
    jr nc, jr_000_139e

    inc h

jr_000_139e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_13ae

jr_000_13a3:
    ld a, [$db58]
    call Call_000_05dd
    pop hl
    ld bc, $0003
    add hl, bc

jr_000_13ae:
    ld a, [hl-]
    ld b, a
    ld [$db5d], a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, b
    call Call_000_05dd
    ld de, $db7f

Jump_000_13bd:
    ld a, [hl+]
    cp $ff
    jp z, Jump_000_1445

    ldh [$ff84], a
    push hl
    ld l, a
    ld h, $00
    ld [de], a
    inc de
    ld a, [$db5e]
    ld [de], a
    inc de
    add hl, hl
    ld b, h
    ld c, l
    add hl, hl
    add hl, bc
    ld bc, $5629
    add hl, bc
    ld a, $07
    call Call_000_05dd
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ldh a, [$ff84]
    cp $13
    jr z, jr_000_143b

    cp $14
    jr z, jr_000_143b

    cp $15
    jr z, jr_000_143b

    cp $16
    jr z, jr_000_143b

    cp $1c
    jr z, jr_000_143b

    cp $1f
    jr z, jr_000_143b

Call_000_1401:
    cp $3e
    jr z, jr_000_143b

Call_000_1405:
    push de
    inc hl
    inc hl
    ld a, [hl-]

Call_000_1409:
    ld b, a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, b
    call Call_000_05dd
    ldh a, [$ff84]
    cp $11
    jr nz, jr_000_141f

    ld de, $8d80
    call Call_000_0708
    jr jr_000_143a

jr_000_141f:
    ld a, [$db5e]
    swap a
    ld d, a
    and $f0
    ld e, a
    ld a, d
    and $0f
    add $80
    ld d, a
    call Call_000_0708
    ld a, d
    and $0f
    or e
    swap a
    ld [$db5e], a

jr_000_143a:
    pop de

jr_000_143b:
    pop hl
    ld a, [$db5d]
    call Call_000_05dd
    jp Jump_000_13bd


Jump_000_1445:
    ld a, $ff
    ld [de], a
    ld b, $00
    ld de, $cd3d

Call_000_144d:
jr_000_144d:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_145c

    ld [de], a
    ld c, a
    inc e
    ld a, b
    ld [de], a
    inc e
    add c
    ld b, a
    jr jr_000_144d

jr_000_145c:
    ld a, b
    ld [$db5f], a
    ld c, $03
    ld de, $ca00

jr_000_1465:
    ld a, [$db5f]
    ld b, a

jr_000_1469:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_1469

    ld e, $00
    inc d
    dec c
    jr nz, jr_000_1465

    ld hl, $bb00
    ld bc, $0100
    ld a, $00
    call Call_000_062f
    xor a
    ld hl, $db4f
    ld [hl+], a
    ld [hl+], a
    ld de, $a004
    ld a, [de]
    inc e
    sub $50
    ld [hl+], a
    ld a, [de]
    inc e
    sbc $00
    ld [hl+], a
    inc e
    ld a, [de]
    inc e
    sub $40
    ld [hl+], a
    ld a, [de]
    sbc $00
    ld [hl], a
    call Call_000_1513
    ld hl, $db51
    ld a, [hl+]
    and $f0
    sub $10
    ld [$db55], a
    ld [$db7d], a
    inc hl
    ld a, [hl]
    and $f0
    sub $10
    ld [$db56], a
    ld [$db7e], a
    ld hl, $cd56
    ld bc, $0018
    ld a, $00
    call Call_000_062f
    xor a
    ld [$db72], a
    ld [$db70], a
    ld [$db71], a
    ret


    sbc $14
    pop hl
    inc d
    db $e4
    inc d
    rst $20
    inc d
    ld [$ed14], a
    inc d
    dec l
    ld b, b
    rlca
    jr c, @+$42

    rlca
    ld b, e
    ld b, b
    rlca
    or a
    ld b, b
    rlca
    jp nz, $0740

    rst $10
    ld b, b
    rlca
    ld a, [$db5a]
    call Call_000_05dd
    ld a, [$db59]
    bit 7, a
    ld b, $90
    jr z, jr_000_14ff

    ld b, $80

jr_000_14ff:
    swap a

Call_000_1501:
    ld d, a
    and $f0
    ld e, a
    ld a, d
    and $0f
    add b
    ld d, a
    ld hl, $db5b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_000_0708


Call_000_1513:
Jump_000_1513:
    ld hl, $db45
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db51
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_000_1526

    bit 7, [hl]
    jr z, jr_000_1529

jr_000_1526:
    ld a, b
    ld [hl-], a
    ld [hl], c

jr_000_1529:
    ld hl, $db49
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db51
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_000_153b

    ld a, b
    ld [hl-], a
    ld [hl], c

jr_000_153b:
    ld hl, $db47
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]

Jump_000_1547:
    sbc b
    jr c, jr_000_154e

    bit 7, [hl]
    jr z, jr_000_1551

jr_000_154e:
    ld a, b
    ld [hl-], a
    ld [hl], c

jr_000_1551:
    ld hl, $db4b
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $db53
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr c, jr_000_1563

    ld a, b

Jump_000_1561:
    ld [hl-], a
    ld [hl], c

jr_000_1563:
    ret


Call_000_1564:
    ld a, $08
    call Call_000_05dd
    ld a, [$db57]
    ld l, a
    ld h, $00
    ld b, h

Jump_000_1570:
    ld c, l
    add hl, hl
    add hl, bc
    ld bc, $511f
    add hl, bc
    ld a, [hl-]
    ld b, a
    ld [$db58], a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, b
    call Call_000_05dd
    ret


Call_000_1584:
    xor a
    ld hl, $ff42
    ld [hl+], a
    ld [hl], a
    ld hl, $da00
    ld [hl+], a
    ld [hl], a
    ld hl, $db51
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_000_1597:
    ldh [$ff80], a
    ldh a, [$ffa4]
    push af
    ld a, $07
    call Call_000_05dd
    call $437b
    pop af
    jp Jump_000_05dd


Call_000_15a8:
    ldh [$ff84], a
    call Call_000_15e3
    ldh a, [$ff84]
    ld [hl], a

Call_000_15b0:
    call Call_000_15fc
    ld d, h
    ld e, l
    ld a, [$da22]
    ld l, a
    ld a, [$da28]
    ld h, a
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ldh a, [$ff84]
    ld c, a
    ld b, $c5
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    inc b
    ld a, [bc]
    ld [hl+], a
    ld a, l
    ld [$da22], a
    ld a, [$da28]
    ld hl, $da23
    rra
    jr nc, jr_000_15e1

    ld hl, $da24

jr_000_15e1:
    inc [hl]
    ret


Call_000_15e3:
    ld hl, $cd2d
    ld a, d
    add l
    ld l, a
    ld a, [hl]
    add b
    ld h, a
    ldh [$ff9d], a
    ld a, e
    and $f0
    ld l, a
    ld a, c
    swap a
    and $0f
    add l
    ld l, a
    ldh [$ff9c], a
    ret


Call_000_15fc:
    ld a, e
    ld h, $26
    rla

Jump_000_1600:
    rl h
    rla
    rl h
    and $c0
    ld l, a
    ld a, c
    rra
    rra
    rra
    and $1e
    add l
    ld l, a
    ret


Call_000_1611:
    ldh [$ff84], a
    ld hl, $db62
    add l
    ld l, a
    jr nc, jr_000_161b

    inc h

jr_000_161b:
    ld e, [hl]
    ldh a, [$ff84]
    ld hl, $163e
    add l
    ld l, a
    jr nc, jr_000_1626

    inc h

jr_000_1626:
    ld a, [hl]
    or e
    inc a
    ret


Call_000_162a:
    ldh [$ff84], a
    ld a, e
    call Call_000_0663
    ld e, a
    ldh a, [$ff84]
    ld hl, $db62
    add l
    ld l, a
    jr nc, jr_000_163b

    inc h

jr_000_163b:
    ld a, [hl]
    and e
    ret


    db $f8, $f8, $f8

    ldh a, [$ffe0]

Jump_000_1643:
    ret nz

    add b
    rst $38

Call_000_1646:
    ld a, [$db3d]
    dec a
    cp b
    jr c, jr_000_165c

    ld a, [$db3e]
    dec a
    cp d
    jr c, jr_000_165c

    call Call_000_15e3
    ld l, [hl]
    ld h, $c9
    ld a, [hl]
    ret


jr_000_165c:
    xor a
    ld hl, $ff9c
    ld [hl+], a
    ld [hl], a
    ld a, $00
    ret


Call_000_1665:
    ld hl, $ff9c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_1684

    ld a, l
    sub $10
    ld l, a
    jr nc, jr_000_167f

Jump_000_1674:
    ld a, d
    or a
    jr z, jr_000_1684

    ld a, [$db3d]
    cpl
    inc a

Call_000_167d:
    add h
    ld h, a

jr_000_167f:
    ld l, [hl]
    ld h, $c9
    ld a, [hl]
    ret


jr_000_1684:
    ld a, $00
    ret


Call_000_1687:
    ld hl, $ff9c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_16a7

    ld a, l
    add $10
    ld l, a
    jr nc, jr_000_16a2

    ld a, [$db3e]
    dec a
    cp d
    jr z, jr_000_16a7

    ld a, [$db3d]
    add h
    ld h, a

jr_000_16a2:
    ld l, [hl]
    ld h, $c9
    ld a, [hl]
    ret


jr_000_16a7:
    ld a, $00
    ret


Call_000_16aa:
    ld hl, $ff9c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_16ca

    inc l
    ld a, l
    and $0f
    jr nz, jr_000_16c5

    ld a, [$db3d]
    dec a
    cp b
    jr z, jr_000_16ca

    ld a, l
    sub $10
    ld l, a
    inc h

jr_000_16c5:
    ld l, [hl]
    ld h, $c9
    ld a, [hl]
    ret


jr_000_16ca:
    ld a, $00
    ret


Call_000_16cd:
    ld hl, $ff9c

Call_000_16d0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_16ec

    dec l
    ld a, l
    and $0f
    cp $0f
    jr nz, jr_000_16e7

    ld a, b
    or a
    jr z, jr_000_16ec

    ld a, l
    add $10
    ld l, a
    dec h

jr_000_16e7:
    ld l, [hl]
    ld h, $c9
    ld a, [hl]
    ret


jr_000_16ec:
    ld a, $00
    ret


Call_000_16ef:
    call Call_000_1646
    and $07
    ldh [$ff9e], a
    cp $01
    jr z, jr_000_16fc

    and a
    ret


jr_000_16fc:
    call Call_000_16aa
    and $07
    cp $01
    jr c, jr_000_170b

Jump_000_1705:
    jr z, jr_000_1714

    cp $04
    jr nc, jr_000_1714

jr_000_170b:
    ld a, c
    and $0f
    ld l, a
    ld a, $10
    sub l
    scf
    ret


jr_000_1714:
    and a
    ret


Call_000_1716:
    call Call_000_1646
    and $07
    ldh [$ff9e], a
    ld hl, $172a
    add a
    add l
    ld l, a
    jr nc, jr_000_1726

    inc h

jr_000_1726:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $52, $17, $54, $17

    ld d, d
    rla

    db $52, $17

    ld d, d
    rla
    ld a, [hl-]
    rla
    ld d, d
    rla

    db $44, $17

    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    sub l
    scf
    ret


    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    ld h, a
    ld a, $0f
    sub h
    sub l
    scf
    ret


    and a
    ret


    call Call_000_16aa
    and $07
    ld hl, $1766
    add a
    add l
    ld l, a
    jr nc, jr_000_1762

    inc h

jr_000_1762:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $98, $17, $a1, $17

    sbc b
    rla
    sbc b
    rla
    sbc b
    rla
    halt
    rla
    sbc b
    rla
    add [hl]
    rla
    ld a, $05
    ldh [$ff9e], a

Jump_000_177a:
    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    add $10
    sub l
    scf
    ret


    ld a, $07
    ldh [$ff9e], a
    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    ld h, a
    ld a, $1f
    sub h
    sub l
    scf
    ret


    ld a, c
    and $0f
    ld l, a
    ld a, $10
    sub l
    scf
    ret


    and a
    ret


Call_000_17a3:
    call Call_000_1646
    and $07
    ldh [$ff9e], a
    cp $01
    jr z, jr_000_17b0

    and a
    ret


jr_000_17b0:
    call Call_000_16cd
    and $07
    cp $01
    jr c, jr_000_17bf

    jr z, jr_000_17c5

    cp $04
    jr nc, jr_000_17c5

jr_000_17bf:
    ld a, c
    and $0f
    cpl
    scf
    ret


jr_000_17c5:
    and a
    ret


Call_000_17c7:
    call Call_000_1646
    and $07

Jump_000_17cc:
    ldh [$ff9e], a
    ld hl, $17db
    add a
    add l
    ld l, a
    jr nc, jr_000_17d7

    inc h

jr_000_17d7:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $03, $18, $05, $18

    inc bc
    db $18

    db $03, $18, $eb, $17, $03, $18, $f9, $17, $03, $18

    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    ld h, a
    ld a, $0f
    sub h
    sub l
    scf
    ret


    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    sub l
    scf
    ret


    and a
    ret


    call Call_000_16cd
    and $07
    ld hl, $1817
    add a
    add l
    ld l, a
    jr nc, jr_000_1813

    inc h

jr_000_1813:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $46, $18, $4c, $18

    ld b, [hl]
    jr @+$48

    db $18

    db $27, $18

    ld b, [hl]
    jr jr_000_185a

Call_000_1824:
    jr @+$48

    db $18

    ld a, $05
    ldh [$ff9e], a
    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    cpl
    sub l
    scf
    ret


    ld a, $07
    ldh [$ff9e], a
    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    sub $10
    sub l
    scf
    ret


    ld a, c

jr_000_1847:
    and $0f
    cpl
    scf
    ret


    and a
    ret


Call_000_184e:
    call Call_000_1646
    ldh [$ff9f], a
    and $07
    ldh [$ff9e], a

jr_000_1857:
    ld hl, $1864

jr_000_185a:
    add a
    add l
    ld l, a
    jr nc, jr_000_1860

jr_000_185f:
    inc h

jr_000_1860:
    ld a, [hl+]

jr_000_1861:
    ld h, [hl]

Call_000_1862:
    ld l, a
    jp hl


    db $8c, $18, $8e, $18, $8e, $18, $8e, $18, $74, $18, $82, $18, $8e, $18, $8e, $18

    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    ld h, a
    ld a, $0f
    sub l
    sub h
    scf
    ret


    ld a, e
    and $0f
    ld h, a
    ld a, c
    and $0f
    sub h
    scf
    ret


    and a
    ret


    call Call_000_1665
    and $07
    ld hl, $18a0
    add a
    add l
    ld l, a
    jr nc, jr_000_189c

    inc h

jr_000_189c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $b0, $18, $b6, $18

    or b
    jr jr_000_1857

    db $18

    db $b8, $18, $c7, $18

    or b
    jr jr_000_185f

    db $18

    ld a, e
    and $0f
    cpl
    scf
    ret


    and a
    ret


    ld a, $04
    ldh [$ff9e], a

Call_000_18bc:
    ld a, e
    and $0f
    ld h, a
    ld a, c
    and $0f
    cpl
    sub h
    scf
    ret


    ld a, $05
    ldh [$ff9e], a
    ld a, e
    and $0f
    ld h, a
    ld a, c
    and $0f
    sub $10
    sub h
    scf
    ret


Call_000_18d7:
    call Call_000_1646
    and $07
    ldh [$ff9e], a
    ld hl, $18eb
    add a
    add l
    ld l, a
    jr nc, jr_000_18e7

    inc h

jr_000_18e7:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $13, $19, $15, $19, $13, $19, $13, $19, $13, $19, $13, $19, $fb, $18, $05, $19

    ld a, e
    and $0f
    ld h, a
    ld a, c

Call_000_1900:
    and $0f
    sub h
    scf
    ret


    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    ld h, a
    ld a, $0f
    sub l
    sub h
    scf
    ret


    and a
    ret


    call Call_000_1687
    and $07
    ld hl, $1927
    add a
    add l
    ld l, a
    jr nc, jr_000_1923

    inc h

jr_000_1923:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $37, $19, $40, $19

    scf

jr_000_192c:
    add hl, de

Call_000_192d:
    scf
    add hl, de
    scf
    add hl, de
    scf
    add hl, de
    ld b, d
    add hl, de
    ld d, d
    add hl, de

    ld a, e
    and $0f
    ld h, a
    ld a, $10
    sub h
    scf
    ret


    and a
    ret


    ld a, $06
    ldh [$ff9e], a
    ld a, e
    and $0f
    ld h, a
    ld a, c
    and $0f
    add $10
    sub h
    scf
    ret


    ld a, $07
    ldh [$ff9e], a
    ld a, c
    and $0f
    ld l, a
    ld a, e
    and $0f
    ld h, a
    ld a, $1f
    sub l
    sub h
    scf
    ret


Call_000_1964:
    xor a
    ldh [$ffad], a
    ld hl, $ffaf
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06

Call_000_1972:
    ld [hl+], a

Call_000_1973:
Jump_000_1973:
    call Call_000_1af6
    ld hl, $ffad
    jr c, jr_000_197d

    set 7, [hl]

Call_000_197d:
jr_000_197d:
    ld a, [hl]
    ret


Call_000_197f:
    call Call_000_1aea
    ld l, $0f
    ld a, [hl+]
    or [hl]
    jr z, jr_000_19a5

    bit 7, [hl]
    jr nz, jr_000_1996

    call Call_000_184e
    jr nc, jr_000_199f

    rlca
    jr c, jr_000_19c6

    jr jr_000_199f

jr_000_1996:
    call Call_000_18d7
    jr nc, jr_000_199f

    dec a
    rlca
    jr nc, jr_000_19c6

jr_000_199f:
    ldh a, [$ff9e]
    cp $01
    jr z, jr_000_19c6

jr_000_19a5:
    ldh a, [$ff9a]
    ld h, a
    ld l, $0e
    bit 7, [hl]
    jr nz, jr_000_19b8

    call Call_000_17c7
    jr nc, jr_000_19c1

    rlca
    jr c, jr_000_19c6

    jr jr_000_19c1

jr_000_19b8:
    call Call_000_1716
    jr nc, jr_000_19c1

    dec a
    rlca
    jr nc, jr_000_19c6

jr_000_19c1:
    ldh a, [$ff9a]
    ld d, a
    and a
    ret


jr_000_19c6:
    ldh a, [$ff9a]
    ld d, a
    scf
    ret


Call_000_19cb:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a

Jump_000_19dd:
    call Call_000_1d8b
    jr nc, jr_000_19e7

    ld hl, $ffad
    set 5, [hl]

jr_000_19e7:
    call Call_000_1b61
    ld hl, $ffad
    jr c, jr_000_19f1

    set 7, [hl]

jr_000_19f1:
    ld a, [hl]
    ret


Call_000_19f3:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a

Jump_000_1a05:
    call Call_000_1d8b
    jr nc, jr_000_1a0f

    ld hl, $ffad
    set 5, [hl]

jr_000_1a0f:
    call Call_000_1b61
    ld hl, $ffad
    jr c, jr_000_1a23

    set 7, [hl]
    call Call_000_1bda
    ld hl, $ffad
    jr c, jr_000_1a23

    set 4, [hl]

jr_000_1a23:
    ld a, [hl]
    ret


Call_000_1a25:
Jump_000_1a25:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $0d
    ld [hl+], a

Jump_000_1a3a:
    call Call_000_1dc7
    jr nc, jr_000_1a44

    ld hl, $ffad
    set 5, [hl]

jr_000_1a44:
    ld e, $10
    ld a, [de]
    rla
    jr nc, jr_000_1a56

    call Call_000_1c0a
    ld hl, $ffad
    jr nc, jr_000_1a60

    set 6, [hl]
    jr jr_000_1a60

jr_000_1a56:
    call Call_000_1c88
    ld hl, $ffad
    jr nc, jr_000_1a60

    set 7, [hl]

jr_000_1a60:
    ld a, [hl]
    ret


Call_000_1a62:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $f9
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    call Call_000_1dc7

Call_000_1a7a:
    jr nc, jr_000_1a81

    ld hl, $ffad
    set 5, [hl]

jr_000_1a81:
    call Call_000_1c0a
    jr nc, jr_000_1a8b

    ld hl, $ffad
    set 6, [hl]

jr_000_1a8b:
    call Call_000_1c88
    ld hl, $ffad
    jr nc, jr_000_1a95

    set 7, [hl]

jr_000_1a95:
    ld a, [hl]
    ret


Call_000_1a97:
    call Call_000_1aea
    call Call_000_1646
    and $7f
    cp $08
    ldh a, [$ff9a]
    ld d, a
    ret


    push bc
    call Call_000_1ab3
    ld e, $27
    ld a, $00
    jr nz, jr_000_1ab0

    inc a

jr_000_1ab0:
    ld [de], a
    pop bc
    ret


Call_000_1ab3:
    call Call_000_1aea
    call Call_000_1646
    and $c0
    cp $80
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_1ac1:
    ld h, d
    xor a
    ld b, a
    ld c, a
    bit 7, e
    jr z, jr_000_1aca

    cpl

jr_000_1aca:
    ld d, a
    call Call_000_1ad9
    call Call_000_1646

Jump_000_1ad1:
    and $c0
    cp $80
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_1ad9:
    ld l, $04
    ld a, [hl+]
    add c
    ld c, a
    ld a, [hl]
    adc b
    ld b, a
    ld l, $07
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    ret


Call_000_1aea:
    ld h, d
    ld l, $04
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld l, $07
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret


Call_000_1af6:
    ld h, d
    ldh a, [$ffaf]
    inc a
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00

Jump_000_1b00:
    ld c, b
    call Call_000_1ad9
    call Call_000_184e
    jr c, jr_000_1b4f

    bit 3, c
    jr z, jr_000_1b28

    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_000_1b45

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_000_1b4f

    ldh a, [$ffb1]
    add l
    jr jr_000_1b4f

jr_000_1b28:
    ldh a, [$ffb0]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_000_1b45

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_000_1b4f

    ldh a, [$ffb0]
    cpl
    scf
    adc l
    jr jr_000_1b4f

jr_000_1b45:
    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ld a, $00
    ld [de], a
    scf
    ret


jr_000_1b4f:
    inc a
    jr nz, jr_000_1b45

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


Call_000_1b61:
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
    jr c, jr_000_1bba

    bit 3, c
    jr z, jr_000_1b93

    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_000_1bb0

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_000_1bba

    ldh a, [$ffb1]
    add l
    jr jr_000_1bba

jr_000_1b93:
    ldh a, [$ffb0]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_000_1bb0

    ld l, a
    ldh a, [$ff9e]
    cp $04
    ld a, l
    jr c, jr_000_1bba

    ldh a, [$ffb0]
    cpl
    scf
    adc l
    jr jr_000_1bba

jr_000_1bb0:
    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ld a, $00
    ld [de], a
    scf
    ret


Call_000_1bba:
jr_000_1bba:
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
    ld d, h
    and a
    ret


Call_000_1bda:
    ld h, d
    ldh a, [$ffaf]
    inc a
    ld e, a
    rla
    sbc a
    ld d, a
    ld l, $4d
    ld a, [hl]
    cp $04
    jr nc, jr_000_1bf1

    ld l, $0e
    bit 7, [hl]
    jr z, jr_000_1bf6

    jr jr_000_1bfa

jr_000_1bf1:
    ld b, $00
    ld c, b
    jr jr_000_1c00

jr_000_1bf6:
    ldh a, [$ffb1]
    jr jr_000_1bfc

jr_000_1bfa:
    ldh a, [$ffb0]

jr_000_1bfc:
    ld c, a
    rla
    sbc a
    ld b, a

Jump_000_1c00:
jr_000_1c00:
    call Call_000_1ad9
    call Call_000_184e
    ldh a, [$ff9a]
    ld d, a

Call_000_1c09:
    ret


Call_000_1c0a:
    ld h, d
    ldh a, [$ffae]
    ld e, a
    rla
    sbc a
    ld d, a
    ld b, $00

Jump_000_1c13:
    ld c, b
    call Call_000_1ad9
    call Call_000_18d7
    jr nc, jr_000_1c24

    ld l, a
    dec a
    rlca
    jr nc, jr_000_1c76

    jp Jump_000_1e6d


jr_000_1c24:
    bit 3, c
    jr z, jr_000_1c51

    ldh a, [$ffb1]
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
    cp $07
    jp z, Jump_000_1e6d

    cp $06
    ld a, l
    jr nz, jr_000_1c4a

    ldh a, [$ffb1]
    cpl
    scf
    adc l
    ld l, a

jr_000_1c4a:
    dec a
    rlca
    jr nc, jr_000_1c76

    jp Jump_000_1e6d


jr_000_1c51:
    ldh a, [$ffb0]
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
    jr nz, jr_000_1c71

    ldh a, [$ffb0]
    add l
    ld l, a

jr_000_1c71:
    dec a
    rlca
    jp c, Jump_000_1e6d

jr_000_1c76:
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


Call_000_1c88:
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
    jr nc, jr_000_1cac

    ld l, a
    rlca
    jr c, jr_000_1d06

    ldh a, [$ff9a]
    ld d, a
    ld e, $4d
    ldh a, [$ff9e]
    ld [de], a
    jr jr_000_1cfe

jr_000_1cac:
    bit 3, c
    jr z, jr_000_1cd3

    ldh a, [$ffb1]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_000_1cf6

    ld l, a
    ldh a, [$ff9e]
    cp $05
    jr z, jr_000_1cf6

    cp $04
    ld a, l
    jr nz, jr_000_1cce

    ldh a, [$ffb1]
    add l
    ld l, a

jr_000_1cce:
    rlca
    jr c, jr_000_1d38

    jr jr_000_1cf6

jr_000_1cd3:
    ldh a, [$ffb0]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_000_1cf6

    ld l, a
    ldh a, [$ff9e]
    cp $04
    jr z, jr_000_1cf6

    cp $05
    ld a, l
    jr nz, jr_000_1cf3

    ldh a, [$ffb0]
    cpl
    scf
    adc l
    ld l, a

jr_000_1cf3:
    rlca
    jr c, jr_000_1d38

Jump_000_1cf6:
jr_000_1cf6:
    ldh a, [$ff9a]
    ld h, a
    ld d, a
    ld l, $4d
    ld [hl], $00

jr_000_1cfe:
    ld e, $4f
    ld a, [$db7c]
    ld [de], a
    and a
    ret


jr_000_1d06:
    ld a, $01
    ld [$db7c], a
    ldh a, [$ff9a]
    ld h, a
    ld c, l
    ld l, $4d
    ld a, [hl]
    cp $04
    jr nc, jr_000_1d6e

    ldh a, [$ff9e]
    ld e, $00
    cp $04
    jr c, jr_000_1d5a

    ld l, $4f
    bit 0, [hl]
    jr nz, jr_000_1d3c

    ld l, $06
    ld b, [hl]
    ld l, $0f
    ld a, [hl+]
    scf
    sbc b
    ld a, [hl]
    sbc $ff
    bit 7, a
    jr nz, jr_000_1d3c

    add c
    jr nc, jr_000_1d3c

    jr jr_000_1d6e

jr_000_1d38:
    ldh a, [$ff9a]
    ld h, a
    ld c, l

jr_000_1d3c:
    ldh a, [$ff9e]
    cp $04
    ld e, $00
    jr c, jr_000_1d5a

    ld l, $03
    ld b, [hl]
    ld l, $0d
    ld a, [hl+]
    jr z, jr_000_1d54

    scf
    sbc b
    ld a, [hl]
    sbc $00
    cpl
    jr jr_000_1d59

jr_000_1d54:
    scf
    sbc b
    ld a, [hl]
    sbc $ff

jr_000_1d59:
    ld e, a

jr_000_1d5a:
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
    jr nz, jr_000_1cf6

    add c
    jp nc, Jump_000_1cf6

jr_000_1d6e:
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
    ldh a, [$ff9f]
    ld l, $4e
    ld [hl], a
    ld l, $4f
    ld [hl], $00
    ld d, h
    scf
    ret


Call_000_1d8b:
    ld h, d
    ld l, $0e
    ldh a, [$ffae]
    ld e, a
    rla
    sbc a
    ld d, a
    bit 7, [hl]

Jump_000_1d96:
    jr nz, jr_000_1daf

    ldh a, [$ffb1]
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_17a3
    jp nc, Jump_000_1e6d

    ld l, a
    rlca
    jp c, Jump_000_1e2a

    jp Jump_000_1e6d


jr_000_1daf:
    ldh a, [$ffb0]
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_16ef
    jp nc, Jump_000_1e6d

    ld l, a
    dec a
    rlca
    jp nc, Jump_000_1e4c

    jp Jump_000_1e6d


Call_000_1dc7:
    ld h, d
    ld l, $0e
    ldh a, [$ffae]
    ld e, a
    rla
    sbc a
    ld d, a
    bit 7, [hl]
    jr nz, jr_000_1dfe

    ldh a, [$ffb1]
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_17a3
    jr nc, jr_000_1de7

    ld l, a
    rlca
    jp c, Jump_000_1e2a

jr_000_1de7:
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


jr_000_1dfe:
    ldh a, [$ffb0]
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_16ef
    jr nc, jr_000_1e12

    ld l, a
    dec a
    rlca
    jp nc, Jump_000_1e4c

jr_000_1e12:
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


Jump_000_1e2a:
    ld c, l
    ldh a, [$ff9a]
    ld h, a
    ld l, $03
    ld b, [hl]
    ld l, $0d
    ld a, [hl+]
    scf
    sbc b
    ld a, [hl]
    sbc $ff
    add c
    jp nc, Jump_000_1e6d

    ld l, $03
    ld [hl], $80
    inc l
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, $ff
    adc [hl]
    ld [hl], a
    ld d, h
    scf
    ret


Jump_000_1e4c:
    ld c, l
    ldh a, [$ff9a]
    ld h, a
    ld l, $03
    ld b, [hl]
    ld l, $0d
    ld a, [hl+]
    scf
    sbc b
    ld a, [hl]
    sbc $00
    add c
    jr c, jr_000_1e6d

    ld l, $03
    ld [hl], $80
    inc l
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ld d, h
    scf
    ret


Jump_000_1e6d:
jr_000_1e6d:
    ldh a, [$ff9a]
    ld d, a
    and a
    ret


    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc hl
    ld a, [de]
    sbc [hl]
    ld e, $0a
    ld [de], a
    dec e
    ld a, c
    ld [de], a
    ld e, $45
    ld a, [de]
    rlca
    ld e, $0a
    ld a, [de]
    jr c, jr_000_1ea5

    rlca
    jp c, Jump_000_0df6

    rrca
    ld b, a
    dec e
    ld a, [de]
    sub $ac
    ld a, b
    sbc $00
    jp c, Jump_000_0df6

jr_000_1e9d:
    ld e, $05
    ld bc, $40eb
    jp Jump_000_0846


jr_000_1ea5:
    rlca
    jp nc, Jump_000_0df6

    dec e
    ld a, [de]
    cp $f4
    jr c, jr_000_1e9d

    jp Jump_000_0df6


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

Call_000_1ec0:
Jump_000_1ec0:
    ld e, $04
    ld l, e
    ld h, $a0
    ld a, [de]
    sub [hl]
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ld e, $45
    and $80
    xor $c0
    ld [de], a
    ret


Call_000_1ed3:
    ld h, d
    ld l, $12
    ld a, [hl]
    or a
    ret z

    ld l, $0f
    ld c, a
    rlca
    sbc a
    ld b, a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret


Call_000_1ee6:
Jump_000_1ee6:
    ld h, d
    ld l, $11
    ld a, [hl]
    or a
    ret z

    ld l, $0d
    ld c, a

Call_000_1eef:
    rlca
    sbc a
    ld b, a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret


Call_000_1ef9:
Jump_000_1ef9:
    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld e, $0d
    ld a, [de]

Call_000_1f02:
    cpl

Call_000_1f03:
    add $01

Call_000_1f05:
    ld [de], a
    inc e

Call_000_1f07:
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    ret


Call_000_1f0d:
    ld hl, $dd2c
    ld a, [hl]
    bit 2, a
    ret


Call_000_1f14:
    push de
    push bc
    ld e, $04
    ld l, e
    ld h, $a0
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, c
    sub e
    ld a, b
    sbc d
    jr c, jr_000_1f3b

    ld a, c
    sub e
    ld e, a
    ld a, b
    cp d
    jr z, jr_000_1f34

    ld a, $ff
    add e
    ld e, a

jr_000_1f34:
    ld a, e
    pop bc
    pop de
    cp b
    ret nc

    jr jr_000_1f4b

jr_000_1f3b:
    ld a, e

Jump_000_1f3c:
    sub c
    ld c, a
    ld a, d
    cp b
    jr z, jr_000_1f46

    ld a, $ff
    add c
    ld c, a

jr_000_1f46:
    ld a, c
    pop bc
    pop de
    cp b
    ret nc

jr_000_1f4b:
    push de
    push bc
    ld e, $07
    ld l, e
    ld h, $a0
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, c
    sub e
    ld a, b
    sbc d
    jr c, jr_000_1f70

    ld a, c
    sub e
    ld c, a
    ld a, b
    cp d
    jr z, jr_000_1f6b

    ld a, $ff
    add c
    ld c, a

jr_000_1f6b:
    ld a, c
    pop bc
    pop de
    cp c
    ret


jr_000_1f70:
    ld a, e
    sub c
    ld e, a
    ld a, b
    cp d
    jr z, jr_000_1f7b

    ld a, $ff
    add e
    ld e, a

jr_000_1f7b:
    ld a, e
    pop bc
    pop de
    cp c
    ret


    push bc
    call Call_000_1964
    and $80
    ld e, $27
    ld [de], a
    call Call_000_2235
    ld e, $40
    ld [de], a
    pop bc
    ret


    push bc
    call Call_000_1964
    and $80
    ld e, $27
    ld [de], a
    pop bc
    ret


Call_000_1f9c:
    ld h, $a0

Call_000_1f9e:
    ld l, e
    ld a, [de]
    sub [hl]
    ld c, a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    jr nc, jr_000_1fac

    ld a, c
    cpl
    inc a
    ld c, a

jr_000_1fac:
    ld a, c
    cp b
    ret


Call_000_1faf:
Jump_000_1faf:
    ld e, $0f
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    ret


Call_000_1fbd:
Jump_000_1fbd:
    ld e, $0d
    ld a, [de]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [de]
    cpl
    adc $00
    ld [de], a
    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


Call_000_1fd1:
    ld a, [bc]
    inc bc
    ld h, d
    ld l, $45
    bit 7, [hl]
    jr z, jr_000_1fdc

    cpl
    inc a

jr_000_1fdc:
    ld l, a
    rla
    sbc a
    ld h, a
    ld e, $04
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    ld a, [bc]
    inc bc
    ld l, a
    rla
    sbc a
    ld h, a
    ld e, $07
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld e, $46
    ld l, e

Call_000_2000:
Jump_000_2000:
    ld a, [hl]

Call_000_2001:
    ld [de], a

Jump_000_2002:
    ret


Call_000_2003:
Jump_000_2003:
    ld a, [$da4a]
    and a
    ret z

    ld h, a
    ld e, $46
    ld l, e
    ld a, [de]
    ld [hl], a
    ret


    ld e, $5e
    ld a, [bc]
    ld [de], a
    inc bc

Call_000_2014:
    inc e

Jump_000_2015:
    ld a, [bc]
    ld [de], a
    inc bc
    inc e
    ld a, [bc]
    ld [de], a
    inc bc
    ret


Call_000_201d:
    call Call_000_202b

Jump_000_2020:
    ld e, $27
    jr nc, jr_000_2028

    ld a, $01
    ld [de], a
    ret


jr_000_2028:
    xor a
    ld [de], a
    ret


Call_000_202b:
    ld e, $07

Jump_000_202d:
    ld l, e

Call_000_202e:
    ld h, $a0
    ld a, [de]
    sub [hl]
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ret


    call Call_000_203d
    jp Jump_000_2020


Call_000_203d:
    ld e, $04
    jp Jump_000_202d


Jump_000_2042:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

Call_000_2048:
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_000_2053

    inc h

Call_000_2053:
Jump_000_2053:
jr_000_2053:
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld e, $39
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    jp Jump_000_2053


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    ld e, a
    add a
    add e
    add l
    jr nc, jr_000_2078

    inc h

jr_000_2078:
    ld l, a
    jp Jump_000_2053


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    ld e, $3d
    ld [de], a
    ld a, [hl]
    inc e
    ld [de], a
    ld e, $10
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

Call_000_2096:
    ld e, $5c
    ld a, [de]
    add a
    add l
    jr nc, jr_000_209e

    inc h

jr_000_209e:
    ld l, a
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    ld e, $3d
    ld [de], a
    ld a, [hl]
    inc e
    ld [de], a
    ld e, $10
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_000_20be

    inc h

Call_000_20be:
Jump_000_20be:
jr_000_20be:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    jp Jump_000_20be


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    jp Jump_000_20f0


    ld a, [bc]
    ld l, a
    inc bc

Jump_000_20df:
    ld a, [bc]
    ld h, a
    inc bc
    jp Jump_000_20e5


Jump_000_20e5:
    ld e, $27
    ld a, [de]
    add a
    add l
    ld l, a
    jr nc, jr_000_20f9

    inc h
    jr jr_000_20f9

Jump_000_20f0:
    ld e, $5c
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_000_20f9

    inc h

Call_000_20f9:
Jump_000_20f9:
jr_000_20f9:
    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_000_2107

    ld e, $0d

Jump_000_2101:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]

Call_000_2105:
    ld [de], a
    ret


jr_000_2107:
    ld e, $0d
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


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_000_2123

    inc h

Call_000_2123:
Jump_000_2123:
jr_000_2123:
    ld e, $45
    ld a, [de]
    rlca
    ld e, $11
    ld a, [hl+]
    jr c, jr_000_212e

    ld [de], a
    ret


jr_000_212e:
    cpl
    inc a
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    jr jr_000_214f

    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jp nc, Jump_000_2164

    inc h
    jp Jump_000_2164


jr_000_214f:
    ld e, $27
    ld a, [de]
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jp nc, Jump_000_2164

    inc h
    jp Jump_000_2164


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

Call_000_2164:
Jump_000_2164:
    ld e, $45
    ld a, [de]
    rlca
    jr nc, jr_000_217e

    ld e, $11
    ld a, [hl+]
    cpl
    inc a
    ld [de], a
    ld e, $3b
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


jr_000_217e:
    ld a, [hl+]
    ld e, $11
    ld [de], a
    ld e, $3b
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jp nc, Jump_000_21a5

    inc h
    jp Jump_000_21a5


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc

Call_000_21a5:
Jump_000_21a5:
    ld e, $11
    ld a, [hl+]
    ld [de], a
    ld e, $45
    ld a, [de]
    rlca
    jr nc, jr_000_21bd

    ld e, $3b
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


jr_000_21bd:
    ld e, $3b
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


Call_000_21c5:
    ld h, d
    ld l, $11
    ld e, [hl]
    ld l, $3b
    ld c, [hl]
    inc l
    ld b, [hl]
    bit 7, b
    jr nz, jr_000_21d5

    jp Jump_000_0cb4


jr_000_21d5:
    jp Jump_000_0cef


Call_000_21d8:
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    bit 7, b
    jr nz, jr_000_21e8

    jp Jump_000_0d35


jr_000_21e8:
    jp Jump_000_0d70


Call_000_21eb:
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    jp Jump_000_0d35


Call_000_21f7:
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]

Jump_000_2200:
    jp Jump_000_0d70


    ld a, [bc]
    inc bc
    push bc
    ld e, $07
    ld h, $a0
    ld l, e
    ld c, a
    rlca
    jr c, jr_000_2220

    ld a, [de]
    add c
    ld c, a
    inc e
    ld a, [de]
    adc $00
    ld b, a
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_000_222e

jr_000_221d:
    xor a
    jr jr_000_2230

jr_000_2220:
    ld a, [de]
    add c
    ld c, a
    inc e
    ld a, [de]
    adc $ff
    ld b, a
    ld a, [hl+]
    sub c
    ld a, [hl]
    sbc b
    jr nc, jr_000_221d

jr_000_222e:
    ld a, $01

jr_000_2230:
    ld e, $27
    ld [de], a
    pop bc
    ret


Call_000_2235:
    ld e, $4d
    ld a, [de]
    cp $04
    jr z, jr_000_2242

    cp $05
    jr z, jr_000_2242

    xor a
    ret


jr_000_2242:
    ld a, $01
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_000_2253

    inc h

jr_000_2253:
    ld e, $24
    ld a, [hl]
    ld [de], a
    ret


    ld e, $12
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld h, $a0
    ld l, $86
    ld e, $4c
    ld a, [de]
    ld [hl], a
    ld hl, $dedf
    set 0, [hl]
    ld hl, $dee4
    ld [hl], $00
    ret


    ld h, $a0
    ld e, $4c
    ld l, $85
    ld a, [de]
    ld [hl], a
    ret


    ld h, $a0
    xor a
    ld l, $85
    ld [hl], a
    ret


    ld hl, $dedf
    res 0, [hl]
    ld hl, $dede
    set 0, [hl]
    ret


Call_000_228d:
    ld h, $a5
    ld c, $03

jr_000_2291:
    push bc
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_000_22b4

    ld l, $4c
    ld a, [hl]
    or a
    jr z, jr_000_22b4

    ld e, $04
    ld b, $28
    call Call_000_1f9e
    jr nc, jr_000_22b4

    ld e, $07
    ld b, $20
    call Call_000_1f9e
    jr nc, jr_000_22b4

    pop bc
    scf
    ret


jr_000_22b4:
    pop bc
    dec c
    ret z

    inc h
    jr jr_000_2291

    ld h, b
    ld l, c
    ld a, [hl+]
    ldh [$ff84], a
    ld bc, $a8b2
    ld a, [hl+]

Jump_000_22c3:
    push af
    push de
    push hl
    call Call_000_0f67
    pop bc
    pop de
    ld a, h
    or a
    jr z, jr_000_22e4

    ld l, $48
    ld [hl], d
    ld e, l
    ld a, h
    ld [de], a
    ld e, $45
    ld l, e
    ld a, [de]
    ld [hl], a
    ld e, $5c
    ld l, e
    ld a, [de]
    ld [hl], a
    pop af
    ld l, $5b
    ld [hl], a
    ret


jr_000_22e4:
    pop af
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ldh [$ff84], a
    ld bc, $a8b2
    ld a, [hl+]

Jump_000_22ef:
    push af
    push de
    push hl
    call Call_000_0f67
    pop bc
    pop de
    ld a, h
    or a
    jr z, jr_000_230d

    ld l, $48
    ld [hl], d
    ld e, $45

Jump_000_2300:
    ld l, e
    ld a, [de]

Call_000_2302:
    ld [hl], a
    ld e, $5c
    ld l, e
    ld a, [de]
    ld [hl], a
    pop af
    ld l, $5b
    ld [hl], a
    ret


jr_000_230d:
    pop af
    ret


Call_000_230f:
Jump_000_230f:
    ld hl, $ff84
    ld [hl], e
    ld bc, $a8b2
    jp Jump_000_22c3


Call_000_2319:
Jump_000_2319:
    ld hl, $ff84
    ld [hl], e
    ld bc, $a8b2
    jp Jump_000_22ef


Call_000_2323:
    ld bc, $1eb2
    call Call_000_255b
    ld e, $41
    ld a, [de]
    or a
    ret nz

    call Call_000_0c71
    ld h, d
    ld l, $60
    ld [hl], $3f
    ld l, $44
    ld [hl], $18
    xor a
    ret


Call_000_233c:
    ld e, $44
    ld a, [de]
    bit 7, a
    jr nz, jr_000_2348

    sub $01
    ld [de], a
    jr c, jr_000_2360

jr_000_2348:
    call Call_000_255b
    ld a, [$dd2c]
    bit 1, a
    jr nz, jr_000_235d

    bit 0, a
    jr nz, jr_000_2358

    xor a
    ret


jr_000_2358:
    call Call_000_0c61
    scf
    ret


jr_000_235d:
    pop hl
    scf
    ret


jr_000_2360:
    ld l, $60
    ld h, d
    ld [hl], $2d
    jr jr_000_2348

    push bc
    ld e, $08
    ld bc, $6410
    call Call_000_0c3a
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


Call_000_2375:
    ld e, $f8
    call Call_000_1ac1
    ret nz

    ld e, $03
    ld bc, $4d53
    call Call_000_0846
    pop hl
    ret


Call_000_2385:
    call Call_000_1a97
    ret nz

    ld e, $03
    ld bc, $4e33
    call Call_000_0846
    pop hl
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    inc bc
    push bc
    ld b, a
    ld c, l
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_000_23ac

    call Call_000_0849

jr_000_23ac:
    pop bc
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $21
    ld a, [bc]
    ld [hl-], a
    inc bc
    ld a, [bc]
    ld [hl-], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    call Call_000_23ca
    pop bc
    ret


Call_000_23ca:
    ld e, $40
    ld a, [de]
    rlca
    rlca
    ld c, a
    ld e, $5c
    ld a, [de]
    rlca
    add c
    add l
    ld l, a
    jr nc, jr_000_23da

    inc h

jr_000_23da:
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld e, $45
    ld a, [de]
    rlca
    jr nc, jr_000_23ed

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_23ed:
    ld h, d
    ld l, $0d
    ld [hl], c
    inc l
    ld [hl], b
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_000_2402

    inc h

Jump_000_2402:
jr_000_2402:
    ld a, [hl]
    or a
    jr z, jr_000_2414

    cp $ff

Call_000_2408:
    jr z, jr_000_2411

    ld l, a
    ld e, $3f
    ld a, [de]
    cp l
    jr c, jr_000_2414

jr_000_2411:
    xor a
    jr jr_000_2416

jr_000_2414:
    ld a, $01

jr_000_2416:
    ld e, $27
    ld [de], a
    ret


    call Call_000_0f50
    ld a, h
    ld e, $27
    ld [de], a
    ret


Call_000_2422:
    ldh a, [$ffa4]
    push af
    ld a, $10
    call Call_000_05dd
    call Call_000_2435
    pop af
    call Call_000_05dd
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_2435:
    ld hl, $cd52
    ld a, [hl+]
    or [hl]
    ldh a, [$ff92]
    ld c, a
    ld a, [$da1c]
    jr nz, jr_000_2449

Jump_000_2442:
    cp c
    ret nz

    ld l, $4d
    ld [hl], $00
    ret


jr_000_2449:
    sub c
    dec a
    cp $04
    ret c

    sub $03
    ld e, a
    ld a, [hl-]
    or a
    jr nz, jr_000_245a

    ld a, [hl]
    cp e
    jr nc, jr_000_245a

    ld e, a

jr_000_245a:
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ld b, $c4
    ld l, $4e
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, e
    ld [bc], a
    ldh [$ff84], a
    inc c
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_2473:
    ld a, [hl+]
    ld [bc], a
    inc c
    dec e
    jr nz, jr_000_2473

    ld a, c
    ldh [$ff92], a
    ld de, $cd4e
    ldh a, [$ff84]
    ld c, a
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


Call_000_2491:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    jp Jump_000_1973


Call_000_24a5:
Jump_000_24a5:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    jp Jump_000_19dd


Call_000_24b9:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    jp Jump_000_1a05


Call_000_24cd:
Jump_000_24cd:
    xor a
    ldh [$ffad], a
    ld hl, $ffae
    ld a, [bc]
    ld e, a
    inc bc
    ld [hl+], a
    ld a, [bc]
    ldh [$ff80], a
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    ldh a, [$ff80]
    sub e
    ld [hl+], a
    jp Jump_000_1a3a


Call_000_24e8:
Jump_000_24e8:
    ld e, $48
    ld a, [de]
    ld h, a

Call_000_24ec:
    ld a, [bc]
    inc bc
    ldh [$ff80], a
    ld a, [bc]
    inc bc
    push bc
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $07
    ld l, e
    ld a, [hl+]
    add c

Call_000_24fc:
    ld [de], a
    inc e
    ld a, [hl]
    adc b

Jump_000_2500:
    ld [de], a
    ldh a, [$ff80]
    ld l, $45
    bit 7, [hl]
    jr z, jr_000_250b

    cpl
    inc a

jr_000_250b:
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $04
    ld l, e
    ld a, [hl+]
    add c
    ld [de], a
    inc e
    ld a, [hl]
    adc b
    ld [de], a
    pop bc
    ret


Call_000_251b:
    ld e, $44
    ld a, [de]
    bit 7, a
    jr nz, jr_000_252c

    sub $01
    ld [de], a
    jr c, jr_000_254d

    ld l, $60
    ld h, d
    ld [hl], $3f

jr_000_252c:
    call Call_000_255b
    ld a, [$dd2c]
    bit 1, a
    jr nz, jr_000_2546

    bit 0, a
    jr nz, jr_000_253c

    xor a
    ret


jr_000_253c:
    call Call_000_0c61
    ld hl, $dd12
    set 3, [hl]
    scf
    ret


jr_000_2546:
    ld e, $4c
    xor a
    ld [de], a
    pop hl
    scf
    ret


jr_000_254d:
    ld hl, $dd12
    bit 2, [hl]
    jr nz, jr_000_252c

    ld l, $60
    ld h, d
    ld [hl], $2d
    jr jr_000_252c

Call_000_255b:
Jump_000_255b:
    xor a
    ld [$dd2c], a
    ld a, c
    ld [$dd29], a
    ld a, b
    ld [$dd2a], a
    call Call_000_2588
    jr c, jr_000_2584

    ld h, $a5
    ld l, $00

jr_000_2570:
    ld a, [hl]
    inc a
    jr z, jr_000_257b

    push hl
    call Call_000_26b6
    pop hl
    jr c, jr_000_2584

jr_000_257b:
    inc h
    ld a, h
    cp $a8
    jr nz, jr_000_2570

    call Call_000_2753

jr_000_2584:
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_2588:
    ld a, [$a05d]
    inc a
    jr z, jr_000_25fc

    cp $05
    jr z, jr_000_25fc

    cp $01
    jr z, jr_000_259d

    ld e, $61
    ld a, [de]
    bit 7, a
    jr nz, jr_000_25fc

jr_000_259d:
    ld e, $04
    ld hl, $a05e
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    jr z, jr_000_25b4

    inc a
    jr nz, jr_000_25fc

    ld a, c
    cpl
    inc a
    jr z, jr_000_25fc

    ld c, a

jr_000_25b4:
    ldh a, [$ffa2]
    ld b, a
    ld e, $5e
    ld a, [de]
    add b
    scf
    sbc c
    jr c, jr_000_25fc

    ld e, $07
    ld l, $60
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    jr z, jr_000_25d5

    inc a
    jr nz, jr_000_25fc

    ld a, c
    cpl
    inc a
    jr z, jr_000_25fc

    ld c, a

jr_000_25d5:
    ldh a, [$ffa3]
    ld b, a
    ld e, $5f
    ld a, [de]
    add b
    scf
    sbc c
    jr c, jr_000_25fc

    ld a, [$a05d]
    ld hl, $25f0
    add a
    add l
    ld l, a
    jr nc, jr_000_25ec

    inc h

jr_000_25ec:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $fe, $25, $82, $26

    and [hl]
    db $26

    db $82, $26

    cp $25
    ld h, a
    db $26

jr_000_25fc:
    and a
    ret


    ld a, [$a057]

Jump_000_2601:
    bit 6, a
    jr nz, jr_000_2665

    ld hl, $dd2c

Jump_000_2608:
    set 2, [hl]
    ld e, $60
    ld a, [de]

Call_000_260d:
    bit 3, a
    jr nz, jr_000_2665

    ld hl, $a055
    inc [hl]
    ld h, d
    ld l, $0d
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $0f
    ld [hl+], a
    ld [hl], a
    ld l, $22
    ld [hl], $f6
    inc l
    ld [hl], $0d
    ld hl, $a057
    set 7, [hl]
    ld e, $00
    ld a, [de]
    cp $2f
    jr nz, jr_000_2641

    ld hl, $a057
    set 0, [hl]
    ld a, $01
    ld [$a059], a
    ld e, $3c
    ld a, [de]
    jr jr_000_265b

jr_000_2641:
    ld a, [$a057]
    rra
    jr c, jr_000_2662

    ld hl, $dd29
    ld a, [hl+]
    add $00
    ld h, [hl]
    jr nc, jr_000_2651

    inc h

jr_000_2651:
    ld l, a
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_2662

    ld hl, $a059
    inc [hl]

jr_000_265b:
    ld [$a058], a
    xor a
    ld [$a05a], a

jr_000_2662:
    jp Jump_000_284f


jr_000_2665:
    and a
    ret


    ld e, $60
    ld a, [de]
    bit 1, a
    jr nz, jr_000_2680

    ld a, [$a062]
    ld b, a
    ld e, $4c
    ld a, [de]
    sub b
    jp c, Jump_000_2829

    jp z, Jump_000_2829

    ld [de], a
    jp Jump_000_2820


jr_000_2680:
    and a
    ret


jr_000_2682:
    ld e, $60
    ld a, [de]
    bit 1, a
    jr nz, jr_000_26a4

    call Call_000_2871
    ld a, [$a045]
    ld [$dd2b], a
    ld a, [$a062]
    ld b, a
    ld e, $4c
    ld a, [de]
    sub b
    jp c, Jump_000_2836

    jp z, Jump_000_2836

    ld [de], a
    jp Jump_000_2820


jr_000_26a4:
    and a
    ret


    ld e, $60
    ld a, [de]
    bit 2, a
    jr nz, jr_000_26b4

    ld hl, $a06c
    set 3, [hl]
    jr jr_000_2682

jr_000_26b4:
    and a
    ret


Call_000_26b6:
    ld l, $4c
    ld a, [hl]
    or a
    jr z, jr_000_2706

    ld e, $60
    ld a, [de]
    bit 7, a
    jr nz, jr_000_2706

    ld e, $04
    ld l, e
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ld [$dd2b], a
    jr z, jr_000_26db

    inc a
    jr nz, jr_000_2706

    ld a, c
    cpl
    inc a
    jr z, jr_000_2706

    ld c, a

jr_000_26db:
    ld l, $39
    ld b, [hl]
    ld e, $5e
    ld a, [de]
    add b
    scf
    sbc c
    jr c, jr_000_2706

    ld e, $07
    ld l, e
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    jr z, jr_000_26fb

    inc a
    jr nz, jr_000_2706

    ld a, c
    cpl
    inc a
    jr z, jr_000_2706

    ld c, a

jr_000_26fb:
    ld l, $3a
    ld b, [hl]
    ld e, $5f

Call_000_2700:
    ld a, [de]

Jump_000_2701:
    add b

Jump_000_2702:
    scf
    sbc c

Jump_000_2704:
    jr nc, jr_000_2708

Call_000_2706:
jr_000_2706:
    and a
    ret


Jump_000_2708:
jr_000_2708:
    ld e, $60
    ld a, [de]
    bit 6, a
    jr nz, jr_000_2726

    ld l, $5a
    ld a, [hl]
    cp $06
    jr z, jr_000_2726

    cp $0a
    jr z, jr_000_2726

    cp $16
    jr z, jr_000_2726

    ld e, $07
    ld bc, $4c83
    call Call_000_0849

jr_000_2726:
    ld e, $60
    ld a, [de]
    bit 4, a
    jr nz, jr_000_2706

    ld l, $5a
    ld a, [hl]
    cp $00
    jr nz, jr_000_2739

    ld a, [de]
    bit 5, a
    jr nz, jr_000_2706

jr_000_2739:
    ld e, $4c
    ld l, e
    ld a, [de]
    sub [hl]
    jp c, Jump_000_2748

    jp z, Jump_000_2748

    ld [de], a
    jp Jump_000_2820


Jump_000_2748:
    ld l, $5a
    ld a, [hl]
    cp $12
    jp nz, Jump_000_2836

    jp Jump_000_2829


Call_000_2753:
    ld e, $04
    ld l, e
    ld h, $a0
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ld [$dd2b], a
    jr z, jr_000_276d

    inc a
    jr nz, jr_000_279a

    ld a, c
    cpl
    inc a
    jr z, jr_000_279a

    ld c, a

jr_000_276d:
    ldh a, [$ffa0]
    ld b, a
    ld e, $5e
    ld a, [de]
    add b
    scf
    sbc c
    jr c, jr_000_279a

    ld e, $07
    ld hl, $cd54
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    jr z, jr_000_278f

    inc a
    jr nz, jr_000_279a

    ld a, c
    cpl
    inc a
    jr z, jr_000_279a

    ld c, a

jr_000_278f:
    ldh a, [$ffa1]
    ld b, a
    ld e, $5f
    ld a, [de]
    add b
    scf
    sbc c
    jr nc, jr_000_279c

jr_000_279a:
    and a
    ret


jr_000_279c:
    ld hl, $dd2c
    set 3, [hl]
    ld e, $61
    ld a, [de]
    bit 6, a
    jr nz, jr_000_279a

    call Call_000_2809
    jr c, jr_000_279a

    ld a, [$a05d]
    cp $01
    jr z, jr_000_279a

    cp $04
    jr z, jr_000_279a

    ld a, [$a054]
    or a
    jp nz, Jump_000_27f3

    ld hl, $dd29
    ld a, [hl+]
    add $01
    ld h, [hl]
    jr nc, jr_000_27c9

    inc h

jr_000_27c9:
    ld l, a
    ld a, [hl]
    ld [$a044], a
    or a
    jr z, jr_000_27d7

    and $0f
    ld b, a
    call Call_000_3a8b

jr_000_27d7:
    ld a, $ff
    ld [$a05d], a
    ld e, $01
    ld bc, $4ec9
    call Call_000_0c48
    ld a, [$dd2b]
    and $80
    or $40
    ld [$a053], a
    ld a, $01

Jump_000_27f0:
    ld [$a054], a

Jump_000_27f3:
    ld e, $60
    ld a, [de]
    bit 0, a
    jr nz, jr_000_279a

    ld e, $4c
    ld a, [de]
    sub $02
    jp c, Jump_000_2836

    jp z, Jump_000_2836

    ld [de], a
    jp Jump_000_2820


Call_000_2809:
    ld a, [$a050]
    cp $09
    jr nz, jr_000_281e

    ld a, [$a056]
    or a
    jr nz, jr_000_281c

    ld a, [$a055]
    or a
    jr z, jr_000_281e

jr_000_281c:
    scf
    ret


jr_000_281e:
    and a
    ret


Jump_000_2820:
    ld hl, $dd2c
    set 0, [hl]
    ld b, $08
    jr jr_000_2851

Jump_000_2829:
    ld hl, $dd2c
    set 1, [hl]
    ld b, $0b
    call Call_000_2851
    ret nc

    jr jr_000_2841

Jump_000_2836:
    ld hl, $dd2c
    set 1, [hl]
    ld b, $05
    call Call_000_2851
    ret nc

jr_000_2841:
    ld e, $4a
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    ld h, $02
    call Call_000_30e0
    scf

Jump_000_284e:
    ret


Jump_000_284f:
    ld b, $02

Call_000_2851:
jr_000_2851:
    ld hl, $dd29
    ld a, [hl+]
    add b
    ld h, [hl]
    jr nc, jr_000_285a

    inc h

jr_000_285a:
    ld l, a
    ld a, [hl+]

Jump_000_285c:
    ld c, a
    ld a, [hl+]
    ld b, a
    or c
    jr z, jr_000_286f

    ld e, [hl]
    call Call_000_0846
    ld a, [$dd2b]
    cpl
    ld l, $5d
    ld [hl], a
    scf
    ret


jr_000_286f:
    and a
    ret


Call_000_2871:
    ld hl, $a06c
    bit 0, [hl]
    ret nz

    set 0, [hl]
    ld hl, $a076
    ld [hl], $00
    ret


Call_000_287f:
    bit 7, a
    ret z

    cpl
    inc a
    ret


Call_000_2885:
    push af
    xor a
    ldh [$ff80], a
    jr jr_000_289a

    push af
    ld a, b
    xor c
    ldh [$ff80], a
    ld a, b
    call Call_000_287f
    ld b, a
    ld a, c
    call Call_000_287f
    ld c, a

jr_000_289a:
    push de
    push hl
    ld a, b
    cp c
    jr nc, jr_000_28a2

    ld b, c
    ld c, a

jr_000_28a2:
    ld h, $d7
    ld l, c
    ld d, [hl]
    inc h
    ld e, [hl]
    dec h
    ld l, b
    ld a, [hl]
    inc h
    ld l, [hl]
    ld h, a
    add hl, de
    push af
    ld d, $d8
    ld a, b
    sub c
    ld e, a
    ld a, [de]
    ld c, a
    dec d
    ld a, [de]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_000_28c6

    pop af
    ccf

Call_000_28c4:
    jr jr_000_28c7

jr_000_28c6:
    pop af

jr_000_28c7:
    rr h
    rr l
    ld b, h
    ld c, l
    ldh a, [$ff80]
    rlca
    jr nc, jr_000_28dc

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_28dc:
    pop hl
    pop de
    pop af
    ret


Call_000_28e0:
    push af
    push hl
    ld a, b
    xor d
    ldh [$ff81], a
    bit 7, b
    jr z, jr_000_28f4

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b

Jump_000_28f0:
    cpl
    adc $00
    ld b, a

jr_000_28f4:
    push bc
    ld b, e
    call Call_000_2885
    ld l, c
    ld h, b
    ld bc, $0080
    add hl, bc

Call_000_28ff:
    ld l, h

Call_000_2900:
    ld h, $00
    pop bc
    ld c, e

Jump_000_2904:
    call Call_000_2885
    add hl, bc
    ldh a, [$ff81]
    rlca
    jr nc, jr_000_2917

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_000_2917:
    ld c, l
    ld b, h
    pop hl
    pop af
    ret


Call_000_291c:
    add $40

Call_000_291e:
    push hl
    ldh [$ff80], a
    and $7f
    cp $40
    jr c, jr_000_292a

    cpl
    add $81

jr_000_292a:
    ld hl, $2988
    ld d, $00
    ld e, a
    add hl, de
    ld e, [hl]
    ld d, $00
    ldh a, [$ff80]
    sla a
    jr nc, jr_000_293c

    ld d, $ff

jr_000_293c:
    pop hl
    ret


Call_000_293e:
    push af
    xor a
    ldh [$ff87], a
    push de
    push hl
    ld a, b
    cp c
    jr nc, jr_000_294a

    ld b, c
    ld c, a

jr_000_294a:
    ld h, $d7
    ld l, c
    ld d, [hl]
    inc h
    ld e, [hl]
    dec h
    ld l, b
    ld a, [hl]
    inc h
    ld l, [hl]
    ld h, a
    add hl, de
    push af
    ld d, $d8
    ld a, b
    sub c
    ld e, a
    ld a, [de]
    ld c, a
    dec d
    ld a, [de]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_000_296e

    pop af
    ccf
    jr jr_000_296f

jr_000_296e:
    pop af

jr_000_296f:
    rr h
    rr l
    ld b, h
    ld c, l
    ldh a, [$ff87]
    rlca
    jr nc, jr_000_2984

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_2984:
    pop hl
    pop de
    pop af
    ret


    nop

    db $06, $0d, $13, $19, $1f, $26

    inc l

    db $32, $38, $3e, $44, $4a, $50, $56, $5c, $62, $68, $6d, $73, $79, $7e, $84, $89
    db $8e, $93, $98, $9d, $a2, $a7, $ac, $b1, $b5, $b9, $be, $c2, $c6, $ca, $ce, $d1
    db $d5, $d8, $dc, $df, $e2, $e5, $e7, $ea, $ed, $ef, $f1, $f3, $f5, $f7, $f8, $fa
    db $fb

    db $fc

    db $fd, $fe, $ff, $ff, $ff, $ff

    rst $38

    db $04, $0b, $1b, $34, $59, $1b, $00, $40, $1b, $91, $41, $4d, $07, $0e, $1b, $50
    db $6b, $1b, $d1, $43, $1b, $04, $48, $54, $1e, $11, $1b, $e3, $61, $1b, $3b, $42
    db $1b, $2e, $43, $4f

    jr nz, jr_000_2a02

    dec de

Call_000_29f0:
    ld h, a
    halt
    dec de
    ret nc

    ld c, b
    dec de
    ld b, $4c
    ld e, h
    nop
    ld [de], a
    inc e
    nop
    ld b, b
    dec de
    and l
    ld c, h

Jump_000_2a01:
    dec de

jr_000_2a02:
    ld [$6551], a
    dec h
    inc d
    inc e
    sub b
    ld c, [hl]
    dec de
    sub l
    ld d, d
    dec de
    bit 2, e
    ld l, l
    rrca
    dec d
    inc e
    ld h, b
    ld e, e
    dec de
    ld a, b
    ld d, h
    dec de
    and b
    ld e, b
    ld [hl], e
    dec e
    ld a, [bc]
    ld c, $c3
    ld c, h
    ld c, $5a
    ld e, c
    ld c, $4c
    ld e, e
    ld [hl], a
    ld e, $07

    ld a, e
    ld [$dd2e], a
    add a
    add a
    ld b, a
    add a
    add b
    ld bc, $29c9
    add c
    jr nc, jr_000_2a3b

    inc b

jr_000_2a3b:
    ld c, a
    call Call_000_2af8
    ld a, [bc]
    inc bc
    ld e, a
    push bc
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    pop bc
    ld a, [bc]
    inc bc
    ld e, a
    push de
    ld a, [bc]

Call_000_2a51:
    inc bc
    push bc
    call Call_000_05dd
    pop bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld de, $8000

Jump_000_2a60:
    push bc
    call Call_000_0708
    pop bc
    ld a, [bc]
    inc bc
    push bc
    call Call_000_05dd
    pop bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld de, $9000
    push bc
    call Call_000_0708
    pop bc
    ld a, [bc]
    inc bc
    push bc
    call Call_000_05dd
    pop bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld de, $9800
    push bc
    call Call_000_0708
    ld a, $47
    ldh [rLCDC], a
    call Call_000_046d
    ld a, $08
    call Call_000_05dd
    call $4000
    pop bc
    ld a, [bc]
    ld h, $a0
    ld l, $b3
    ld b, $00
    ld c, b
    ld d, c
    ld e, d
    call Call_000_07c4
    pop de
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld a, [$dd2e]
    add $03
    ld d, a
    ld e, $04
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf

Call_000_2ac4:
jr_000_2ac4:
    call Call_000_0496
    call Call_000_086b
    call Call_000_04ae
    call Call_000_0343
    ld a, [$dd2d]
    and a
    jr nz, jr_000_2adc

    ld a, [$da46]
    and a
    jr nz, jr_000_2ac4

jr_000_2adc:
    ld a, [$dd2e]
    add $03
    ld d, a
    ld e, $04
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld hl, $5ada
    ld a, $07
    call Call_000_05cf
    ret


Call_000_2af8:
    call Call_000_1584
    ld hl, $dd2d
    ld [hl], a
    ld hl, $ffa5
    ld [hl], a
    ld a, $e4
    ld [$cd09], a
    ld a, $d0
    ld [$cd0a], a
    ld a, $e4
    ld [$cd0b], a
    ret


    ld a, [$dd2f]
    inc a
    ret z

    ld a, [$cd4d]
    or a
    ret z

    push de
    call Call_000_2435
    pop de
    ld a, [$cd4d]
    or a
    ret nz

    dec a
    ld [$dd2f], a
    ret


    ld de, $cf00
    call Call_000_0708
    di
    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $cf
    ld hl, $cd53
    ld [hl-], a
    ld [hl], e
    ld a, $01
    ld [$cd4d], a
    xor a
    ld [$dd58], a
    ld a, $ff
    ldh [rLYC], a
    ld [$da29], a
    jr jr_000_2b83

    push af
    push hl
    push bc
    push de
    ldh a, [$ffa4]
    ld [$dd34], a
    ld [$dd32], sp
    ld hl, $da14
    ld a, $77
    ld [hl+], a
    ld [hl], $2b
    ld a, $80
    ldh [rLYC], a
    ld a, [$dd37]
    call Call_000_05f3
    ld sp, $dd35
    pop hl
    ld sp, hl
    jp Jump_000_029f


    push af
    push hl
    push bc
    push de
    ldh a, [$ffa4]
    ld [$dd37], a
    ld [$dd35], sp

jr_000_2b83:
    ld a, [$dd34]
    call Call_000_05f3
    ld sp, $dd32
    pop hl
    ld sp, hl
    jp Jump_000_029f


    ld hl, $dd2d
    ld [hl], $01
    ret


Call_000_2b97:
    ld hl, $ce8a
    add hl, bc
    ld [hl], $24
    xor a
    ld hl, $ce92
    add hl, bc
    ld [hl], a
    ld hl, $ce9a
    add hl, bc
    ld [hl], a
    ld hl, $cea2
    add hl, bc
    ld [hl], a
    ld hl, $ceaa
    add hl, bc
    ld [hl], a
    ld hl, $ceb2
    add hl, bc
    ld [hl], a
    ld hl, $2bf5
    add hl, bc
    ld a, [hl]
    ld hl, $ceba
    add hl, bc
    ld [hl], a
    inc de
    ld a, [de]
    ld hl, $ce5a
    add hl, bc
    ld [hl], a
    inc de
    ld a, [de]
    ld hl, $ce62
    add hl, bc
    ld [hl], a
    inc de
    ld a, [de]
    sra a
    sra a
    add $f0
    ld l, a
    ld h, $2b
    jr nc, jr_000_2bdd

    inc h

jr_000_2bdd:
    ld a, [hl]
    ld hl, $ce4a
    add hl, bc
    ld [hl], a
    ld hl, $ce52
    add hl, bc
    ld [hl], $01
    ld hl, $ce82
    add hl, bc
    ld [hl], $01
    ret


    db $00, $05

    rst $38

    db $0f, $0a, $10, $20, $30, $40, $50, $60, $70, $80

Call_000_2bfd:
    ld a, $1f
    call Call_000_05f3

Call_000_2c02:
    ld b, $07

jr_000_2c04:
    ld h, $ce
    ld a, $52
    add b
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_2c48

    ld a, b
    cp $04
    ld a, $1a
    jr c, jr_000_2c17

    ld a, $2e

jr_000_2c17:
    ldh [$ff99], a
    ld h, $ce
    ld a, $5a
    add b
    ld l, a
    push hl
    ld e, [hl]
    add $08
    ld l, a
    push hl
    ld d, [hl]
    push bc
    call Call_000_2c5a
    pop bc
    pop hl
    ld [hl], d
    pop hl
    ld [hl], e
    call Call_000_2f31
    ld h, $ce
    ld a, $72
    add b
    ld l, a
    push hl
    ld e, [hl]
    add $08
    ld l, a
    push hl
    ld d, [hl]
    push bc
    call Call_000_2f4b
    pop bc
    pop hl
    ld [hl], d
    pop hl
    ld [hl], e

jr_000_2c48:
    ld a, $04
    cp b
    jr nz, jr_000_2c52

    ld a, $1e
    call Call_000_05f3

jr_000_2c52:
    dec b
    bit 7, b
    jr z, jr_000_2c04

    jp $4368


Call_000_2c5a:
    ld h, $ce
    ld a, $52
    add b
    ld l, a
    dec [hl]
    jr z, jr_000_2c65

    ret


Jump_000_2c64:
    inc de

Jump_000_2c65:
jr_000_2c65:
    ld h, $ce
    ld a, [de]
    ld c, a
    and $e0
    cp $e0
    jp z, Jump_000_2d60

    ld a, $4a
    add b
    ld l, a
    ld a, [hl]
    cp $0f
    jr nz, jr_000_2c97

    bit 4, c
    jp nz, Jump_000_2cca

    ld a, c
    and $0f
    cp $0f
    jr z, jr_000_2cb3

    add $d1
    ld l, a
    ld h, $30
    jr nc, jr_000_2c8d

    inc h

jr_000_2c8d:
    ld c, [hl]
    ld a, $12
    call Call_000_30bf
    ld [hl], c
    jp Jump_000_2cca


jr_000_2c97:
    ld a, c
    and $1f
    cp $10
    jr z, jr_000_2cb3

    bit 4, a
    jr z, jr_000_2ca4

    or $e0

jr_000_2ca4:
    ld c, a
    ld a, $8a
    add b
    ld l, a
    ld a, [hl]
    add c
    push de
    call Call_000_2ef5
    pop de
    jp Jump_000_2cca


jr_000_2cb3:
    call Call_000_2d34
    ld c, a
    ld h, $ce
    ld a, $82
    add b
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_2cc3

    ld [hl], $01

Jump_000_2cc3:
jr_000_2cc3:
    ld a, c
    and a
    jp z, Jump_000_2c64

    inc de
    ret


Jump_000_2cca:
    call Call_000_2d34
    ld c, a
    ld h, $ce
    ld a, $82
    add b
    ld l, a
    ld [hl], $ff
    add $10
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_2cef

    push bc
    push de
    ld e, a
    ld h, $ce
    ld a, $82
    add b
    ld l, a
    push hl
    ld b, e
    call Call_000_293e
    pop hl
    ld [hl], b
    pop de
    pop bc

jr_000_2cef:
    push bc

Call_000_2cf0:
    call Call_000_2cf7
    pop bc
    jp Jump_000_2cc3


Call_000_2cf7:
    ld h, $ce
    ld a, $a2
    add b
    ld l, a
    ld a, [hl]
    bit 7, a

Jump_000_2d00:
    jr nz, jr_000_2d33

Call_000_2d02:
    add a

Jump_000_2d03:
    add a

Jump_000_2d04:
    push de
    add $00
    ld e, a
    ld d, $40
    jr nc, jr_000_2d0d

    inc d

jr_000_2d0d:
    ld h, $ce
    ld a, $72
    add b
    ld l, a
    ld a, [de]
    ld [hl], a
    ld a, $7a
    add b
    ld l, a
    inc de
    ld a, [de]
    ld [hl], a
    ld h, $30
    ld a, $c7
    add b
    ld l, a
    jr nc, jr_000_2d25

    inc h

jr_000_2d25:
    ld c, [hl]
    ld h, $ce
    ld a, $c2
    add b
    ld l, a
    ld [hl], c
    add $a8
    ld l, a
    ld [hl], $01
    pop de

jr_000_2d33:
    ret


Call_000_2d34:
    ld a, [de]
    and $e0
    cp $c0
    jr nz, jr_000_2d3f

    inc de
    ld a, [de]
    jr jr_000_2d56

jr_000_2d3f:
    ld h, $ce
    ld a, $aa
    add b
    ld l, a
    ld a, [de]
    and $e0
    swap a
    srl a
    add [hl]
    add $15
    ld l, a
    ld a, $00
    adc $de
    ld h, a
    ld a, [hl]

jr_000_2d56:
    ld c, a
    ld h, $ce
    ld a, $52
    add b
    ld l, a
    ld a, c
    ld [hl], a
    ret


Jump_000_2d60:
    ld a, c
    cp $f0
    jr nz, jr_000_2d7d

    inc de
    ld h, $ce
    ld a, $9a
    add b
    ld l, a
    ld a, [de]

jr_000_2d6d:
    swap a
    and $f0
    ld c, a
    ld a, [hl]
    and $0f
    or c
    ld [hl], a
    call Call_000_3043
    jp Jump_000_2c64


jr_000_2d7d:
    cp $f1
    jr nz, jr_000_2da1

    inc de
    ld a, [de]
    ld c, a
    ld h, $ce
    ld a, $9a
    add b
    ld l, a
    ld a, [hl]
    swap a
    and $0f
    add c
    bit 7, c
    jr nz, jr_000_2d9c

    cp $10
    jr c, jr_000_2d9f

    ld a, $0f
    jr jr_000_2d9f

jr_000_2d9c:
    jr c, jr_000_2d9f

    xor a

jr_000_2d9f:
    jr jr_000_2d6d

jr_000_2da1:
    cp $f2
    jr nz, jr_000_2db6

    inc de
    ld a, [de]
    add a
    ld c, a
    add a
    add c
    ld hl, $ceaa

Jump_000_2dae:
    ld c, a
    ld a, l
    add b
    ld l, a
    ld [hl], c
    jp Jump_000_2c64


jr_000_2db6:
    cp $f3
    jr nz, jr_000_2dcb

    inc de
    ld h, $ce
    ld a, $52
    add b
    ld l, a
    ld a, [de]
    ld [hl], a
    ld a, $82
    add b
    ld l, a
    ld [hl], $ff
    inc de
    ret


jr_000_2dcb:
    cp $f4
    jr nz, jr_000_2dd7

    inc de
    ld a, [de]
    ld hl, $ce92
    jp Jump_000_2dae


jr_000_2dd7:
    cp $f5
    jr nz, jr_000_2de3

    inc de
    ld a, [de]
    ld hl, $ce8a
    jp Jump_000_2dae


jr_000_2de3:
    cp $f6
    jr nz, jr_000_2df8

    inc de
    ld h, $ce
    ld a, $a2
    add b
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 7, a
    call nz, Call_000_2d02
    jp Jump_000_2c64


jr_000_2df8:
    cp $f7
    jr nz, jr_000_2e04

    inc de
    ld a, [de]
    ld hl, $ceb2

Call_000_2e01:
Jump_000_2e01:
    jp Jump_000_2dae


jr_000_2e04:
    cp $e2
    jr nz, jr_000_2e1a

    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    push de
    ld d, a
    ld e, c
    call Call_000_2f11
    call Call_000_2cf7
    pop de
    jp Jump_000_2c64


jr_000_2e1a:
    cp $e3
    jr nz, jr_000_2e31

    inc de
    ld a, [de]
    push de
    cpl
    inc a
    ld e, a
    ld d, $00
    rla
    jr nc, jr_000_2e2a

    dec d

jr_000_2e2a:
    call Call_000_30aa
    pop de
    jp Jump_000_2c64


jr_000_2e31:
    cp $fe
    jr nz, jr_000_2e6b

    inc de
    ld a, [de]
    ld c, a
    push de
    ld h, $ce
    ld a, $4a
    add b
    ld l, a
    ld e, [hl]
    srl e
    srl e
    ld d, $00
    ld hl, $ce42
    add hl, de
    ld a, c
    rra
    jr nc, jr_000_2e50

    set 4, d

jr_000_2e50:
    rra
    jr nc, jr_000_2e54

    inc d

jr_000_2e54:
    inc e
    dec e
    jr z, jr_000_2e5d

jr_000_2e58:
    rlc d
    dec e
    jr nz, jr_000_2e58

jr_000_2e5d:
    ld a, b
    cp $04
    jr c, jr_000_2e66

    inc l
    inc l
    inc l
    inc l

jr_000_2e66:
    ld [hl], d
    pop de
    jp Jump_000_2c64


jr_000_2e6b:
    cp $e1
    jr nz, jr_000_2e77

    inc de
    ld a, [de]
    ld [$ce00], a
    jp Jump_000_2c64


jr_000_2e77:
    cp $ff
    jr nz, jr_000_2e8b

    ld h, $ce
    ld a, $52
    add b
    ld l, a
    ld [hl], $00
    add $18
    ld l, a
    xor a
    ld [hl], a
    jp Jump_000_3037


jr_000_2e8b:
    ld hl, $ceba
    call Call_000_2e94
    jp Jump_000_2c65


Call_000_2e94:
    ld a, l
    add b
    ld l, a
    push hl
    ld a, $64
    add [hl]
    ld l, a
    ld a, $dd
    adc $00
    ld h, a
    call Call_000_2eaa
    ld a, l
    sub $64
    pop hl
    ld [hl], a
    ret


Call_000_2eaa:
    ld a, [de]
    cp $f8
    jr nz, jr_000_2eb7

    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld d, a
    ld e, c
    ret


jr_000_2eb7:
    cp $fa
    jr nz, jr_000_2eca

    inc de
    inc de
    inc de
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec de
    ld a, [de]
    ld c, a
    dec de
    ld a, [de]
    ld e, a
    ld d, c
    ret


jr_000_2eca:
    cp $fb
    jr nz, jr_000_2ed3

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ret


jr_000_2ed3:
    cp $fc
    jr nz, jr_000_2ee2

    inc de
    ld a, [de]
    ld c, a
    inc de
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], c
    ret


jr_000_2ee2:
    cp $fd
    jr nz, jr_000_2ef4

    dec [hl]
    jr z, jr_000_2ef0

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec hl
    ret


jr_000_2ef0:
    inc hl
    inc hl
    inc hl
    inc de

jr_000_2ef4:
    ret


Call_000_2ef5:
    ld e, a
    ld a, $b2
    add b
    ld l, a
    ld a, [hl]
    add a
    add $cf
    ld l, a
    ld a, $00
    adc $30

Call_000_2f03:
    ld h, a
    ld a, [hl+]

Jump_000_2f05:
    rlc e
    add e
    ld e, a
    ld a, [hl]
    adc $00
    ld h, a
    ld l, e
    ld a, [hl+]
    ld d, a
    ld e, [hl]

Call_000_2f11:
    ld h, $ce
    ld a, $4a
    add b
    ld l, a
    ld a, [hl]
    cp $0a
    jr z, jr_000_2f23

    ld a, $03
    call Call_000_30be
    jr jr_000_2f2d

jr_000_2f23:
    ld a, $00
    call Call_000_30be
    ld [hl], $80
    inc l
    inc l
    inc l

jr_000_2f2d:
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_000_2f31:
    ld h, $ce
    ld a, $82
    add b
    ld l, a
    ld a, [hl]
    and a
    ret z

    cp $ff
    ret z

    dec [hl]
    ret nz

    ld a, $a2
    add b
    ld l, a
    ld a, [hl]
    add a
    add a
    add $02
    jp Jump_000_2d04


Call_000_2f4b:
    ld h, $ce
    ld a, $6a
    add b
    ld l, a
    dec [hl]
    jr z, jr_000_2f56

    ret


Jump_000_2f55:
jr_000_2f55:
    inc de

Jump_000_2f56:
jr_000_2f56:
    ld h, $ce
    ld a, [de]
    ld c, a
    and $e0
    jr nz, jr_000_2f69

    ld a, c
    and $1f
    ld c, a
    ld a, $6a
    add b
    ld l, a
    ld [hl], c
    inc de
    ret


jr_000_2f69:
    cp $20
    jr nz, jr_000_2f86

    push bc
    push de
    call Call_000_309c
    call Call_000_30aa
    pop de
    pop bc

Jump_000_2f77:
    ld a, [de]
    and $10
    jr z, jr_000_2f55

    ld h, $ce
    ld a, $6a
    add b
    ld l, a
    ld [hl], $01
    inc de
    ret


jr_000_2f86:
    cp $40
    jr nz, jr_000_2f90

    ld a, c
    and $0f
    jp Jump_000_2fae


jr_000_2f90:
    cp $60
    jr nz, jr_000_2fb6

    push de
    call Call_000_309c
    ld h, $ce
    ld a, $9a
    add b
    ld l, a
    ld a, [hl]
    and $0f
    add e
    bit 7, a
    jr z, jr_000_2fa7

    xor a

jr_000_2fa7:
    cp $10
    jr c, jr_000_2fad

    ld a, $0f

jr_000_2fad:
    pop de

Jump_000_2fae:
    push de
    call Call_000_3037
    pop de
    jp Jump_000_2f77


jr_000_2fb6:
    cp $80
    jr nz, jr_000_300d

    ld h, $ce
    ld a, $4a
    add b
    ld l, a
    ld a, [hl]
    cp $0a
    jr z, jr_000_2fd8

    ld a, $01
    call Call_000_30be
    ld a, c
    rrca
    rrca
    and $c0
    ld c, a
    ld a, [hl]
    and $3f
    or c
    ld [hl], a
    jp Jump_000_2f77


jr_000_2fd8:
    ld a, c
    and $0f
    ld hl, $ced2
    cp [hl]
    jr z, jr_000_2ffe

    push de
    ld [hl], a
    swap a
    ld e, a
    ld d, $00
    ld hl, $dde5
    add hl, de
    xor a
    ldh [rNR30], a
    call Call_000_3001
    ld a, $80
    ldh [rNR30], a
    ld a, [$ce14]
    set 7, a
    ldh [rNR34], a
    pop de

jr_000_2ffe:
    jp Jump_000_2f77


Call_000_3001:
    ld de, $ff30
    ld c, $10

jr_000_3006:
    ld a, [hl+]
    ld [de], a
    inc de

Call_000_3009:
    dec c
    jr nz, jr_000_3006

    ret


Jump_000_300d:
jr_000_300d:
    cp $e0
    jr nz, jr_000_3036

    ld a, c
    cp $f0
    jr nz, jr_000_3022

    inc de
    ld a, [de]
    ld c, a
    ld a, $00
    call Call_000_30b6
    ld [hl], c
    jp Jump_000_2f55


jr_000_3022:
    cp $ff
    jr nz, jr_000_302d

    ld a, $6a
    add b
    ld l, a
    ld [hl], $00
    ret


jr_000_302d:
    ld hl, $cec2
    call Call_000_2e94

Call_000_3033:
    jp Jump_000_2f56


jr_000_3036:
    ret


Call_000_3037:
Jump_000_3037:
    ld c, a
    ld h, $ce
    ld a, $9a
    add b
    ld l, a
    ld a, [hl]
    and $f0
    or c
    ld [hl], a

Call_000_3043:
    push de
    ld a, $ff
    sub [hl]
    swap a
    and $0f
    ld e, a
    ld a, [hl]
    and $0f
    sub e
    ld e, a
    jr nc, jr_000_3055

    ld e, $00

jr_000_3055:
    push hl
    ld hl, $ce01
    ld a, b
    cp $04
    jr c, jr_000_305f

    inc l

jr_000_305f:
    ld a, $ff
    sub [hl]
    swap a
    and $0f
    ld d, a
    pop hl
    ld a, e
    sub d
    jr nc, jr_000_306d

    xor a

jr_000_306d:
    ld e, a
    ld a, $4a
    add b

Call_000_3071:
    ld l, a
    ld a, [hl]
    cp $0a
    jr z, jr_000_3085

    ld a, $02
    call Call_000_30be
    swap e
    ld a, [hl]
    and $0f
    or e
    ld [hl], a
    pop de
    ret


jr_000_3085:
    srl e
    srl e
    ld d, $00
    ld hl, $3098
    add hl, de
    ld e, [hl]
    ld a, $02
    call Call_000_30b6
    ld [hl], e
    pop de
    ret


    db $00, $60, $40, $20

Call_000_309c:
    ld a, c
    and $0f
    ld d, $00
    bit 3, a
    jr z, jr_000_30a8

    or $f0
    dec d

jr_000_30a8:
    ld e, a
    ret


Call_000_30aa:
    ld a, $03
    call Call_000_30b6
    ld a, e
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl], a
    ret


Call_000_30b6:
    push af
    ld h, $ce
    ld a, $4a
    add b
    ld l, a
    pop af

Call_000_30be:
    add [hl]

Call_000_30bf:
    ld hl, $ff99
    add [hl]
    ld l, a
    ld h, $ce
    ret


    db $06, $16, $26, $36, $46, $56, $66, $76, $50, $3f

    nop

    db $10, $20, $30, $07, $23, $50, $33, $60, $43, $70, $45, $47, $55, $65

Call_000_30e0:
    push de
    ld l, c
    ld d, b
    ld e, $00
    jr jr_000_30f4

jr_000_30e7:
    ld a, c
    add l
    daa
    ld c, a
    ld a, b
    adc d
    daa
    ld b, a
    ld a, e
    adc $00
    daa
    ld e, a

jr_000_30f4:
    dec h
    jr nz, jr_000_30e7

    ld hl, $dedd
    ld a, [hl]
    add c

Call_000_30fc:
    daa
    ld [hl-], a
    ld a, [hl]

Call_000_30ff:
    adc b

Jump_000_3100:
    daa
    ld [hl-], a
    ld a, [hl]
    adc e
    daa
    ld [hl], a
    jr c, jr_000_310f

    ld hl, $dede

jr_000_310b:
    set 0, [hl]
    pop de
    ret


jr_000_310f:
    ld a, $99
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld e, $21
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld hl, $a084
    ld a, [hl]
    cp $99
    jr nc, jr_000_3129

    and a
    inc a
    daa

jr_000_3129:
    ld [hl], a
    ld hl, $dede
    set 2, [hl]
    jr jr_000_310b

Call_000_3131:
    xor a
    ld [$dede], a
    ld hl, $9c21
    ld c, $70
    ld de, $dedb
    ld a, [de]
    ld b, a
    inc de
    ld b, a
    swap a
    and $0f
    add c
    ld [hl+], a
    ld a, b
    and $0f
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    swap a
    and $0f
    add c
    ld [hl+], a
    ld a, b
    and $0f
    add c
    ld [hl+], a
    ld a, [de]
    ld b, a
    swap a
    and $0f
    add c
    ld [hl+], a
    ld a, b
    and $0f
    add c
    ld [hl+], a
    ld a, c
    ld [hl], a
    ld hl, $9c02
    ld a, [$a071]
    and a
    jr nz, jr_000_3178

    ld a, [$dee3]
    rra
    jr jr_000_317b

jr_000_3178:
    ld a, [$dee5]

jr_000_317b:
    ld d, $06
    and a
    jr z, jr_000_3187

jr_000_3180:
    ld [hl], $64
    inc hl
    dec d
    dec a
    jr nz, jr_000_3180

jr_000_3187:
    ld a, d
    and a
    jr z, jr_000_3191

jr_000_318b:
    ld [hl], $63
    inc hl
    dec d
    jr nz, jr_000_318b

jr_000_3191:
    ld hl, $9c09
    ld de, $dee1
    ld a, [de]
    and a
    ld b, a
    ld c, $07
    ld a, $68

jr_000_319e:
    jr z, jr_000_31a7

    ld [hl+], a
    dec c
    dec b
    jr nz, jr_000_319e

    jr jr_000_31ad

jr_000_31a7:
    ld a, $67

jr_000_31a9:
    ld [hl+], a
    dec c
    jr nz, jr_000_31a9

jr_000_31ad:
    ld hl, $9c2a
    ld de, $a084
    ld a, [de]
    ld d, $70
    ld e, a
    swap a
    and $0f
    add d
    ld [hl+], a
    ld a, e
    and $0f
    add d
    ld [hl], a
    ld hl, $9c2f
    ld a, [$db60]
    inc a
    ld e, $70
    add e
    ld [hl], a

Call_000_31cd:
    ld bc, $9690
    ld de, $dee0
    ld a, [de]
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    ld l, a
    sla l
    rl h
    sla l
    rl h
    ldh a, [$ffa4]
    push af
    ld a, $07
    call Call_000_05dd
    ld de, $57dc
    add hl, de
    ld d, $40

jr_000_31f4:
    ld a, [hl+]
    ld [bc], a
    inc c
    dec d
    jr nz, jr_000_31f4

    pop af
    jp Jump_000_05dd


    db $0f, $64, $4a

Jump_000_3201:
    rst $38

Call_000_3202:
    nop

    db $0f, $a9, $4c, $e9, $4e

    rrca
    or l
    ld d, b
    inc e
    ld d, e

    db $0f, $a7, $55, $b1, $58

    ld a, $01
    ld [$df03], a
    ld a, $e4
    ld [$cd09], a
    ld a, $d0
    ld [$cd0a], a
    ld a, $90
    ld [$cd0b], a
    call Call_000_33cb
    ld e, $15
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ld a, $0f
    call Call_000_05dd
    ld hl, $4983
    ld de, $8000
    call Call_000_0708
    ld bc, $31fe
    ld a, [$a071]
    ld d, a
    add a
    add a
    add d
    add c
    ld c, a
    jr nc, jr_000_3250

    inc b

jr_000_3250:
    ld a, [bc]
    inc bc
    push bc
    call Call_000_05dd
    pop bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    ld de, $8200
    call Call_000_0708
    ld a, [$a071]
    and a
    pop bc
    jr z, jr_000_3276

    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    ld de, $8e00
    call Call_000_0708

jr_000_3276:
    ld a, $08
    call Call_000_05dd
    call $4000
    ld a, $92
    ld [$db5e], a
    ld bc, $0060
    ld de, $0240
    ld a, $ce
    ld hl, $a0a1
    call Call_000_07c4
    ld a, $0a
    ld [$db58], a
    call Call_000_05dd
    ld hl, $781c
    call Call_000_1289
    ld a, $07
    call Call_000_05dd
    call $41dc
    ld a, $67
    ldh [rLCDC], a
    call Call_000_046d
    ld e, $04
    ld hl, $424e
    ld a, $1a
    call Call_000_05cf

jr_000_32b8:
    call Call_000_0496
    call Call_000_086b
    ld a, $07
    call Call_000_05dd
    call $4259
    ld a, $07
    call Call_000_05dd
    call $43cb
    call Call_000_04ae
    ld hl, $5b85
    ld a, $07
    call Call_000_05cf
    ld hl, $5bd2
    ld a, $07
    call Call_000_05cf
    call Call_000_0343
    ld hl, $dd2d
    ld a, [hl]
    and a
    jr nz, jr_000_32f1

    ld a, [$da46]
    and a
    jr nz, jr_000_32b8

jr_000_32f1:
    ld e, $04
    ld hl, $4280
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ret


    ld a, $ff
    ldh [rLYC], a
    ld [$da29], a

Jump_000_3306:
    ld a, $00
    ld [$df03], a
    ld a, $e4
    ld [$cd09], a
    ld a, $e0
    ld [$cd0a], a
    ld a, $e4
    ld [$cd0b], a
    call Call_000_33cb
    ld e, $1c
    ld hl, $4232
    ld a, $1f
    call Call_000_05cf
    ld a, $47
    ldh [rLCDC], a
    ld a, $0f
    call Call_000_05dd
    ld hl, $4000
    ld de, $8000
    call Call_000_0708
    ld a, $08
    call Call_000_05dd
    call $4000
    ld a, $0f
    call Call_000_05dd
    ld hl, $6111
    ld a, [$db60]
    add a
    add a
    add l
    ld l, a
    jr nc, jr_000_3353

    inc h

jr_000_3353:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, $9a
    ld hl, $a0a1
    call Call_000_07c4
    call Call_000_34cc
    call Call_000_33d5
    call Call_000_3467
    call Call_000_3492
    ld a, $07
    call Call_000_05dd
    call $41dc
    call Call_000_046d
    ld a, [$db60]
    ld e, a
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld a, [$db60]
    add $1b
    ld d, a
    ld e, $04
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf

jr_000_3396:
    call Call_000_0496
    call Call_000_086b
    ld a, $07
    call Call_000_05dd
    call $4259
    call Call_000_04ae
    call Call_000_0343
    ld hl, $dd2d
    ld a, [hl]
    and a
    jr nz, jr_000_33b7

    ld a, [$da46]
    and a
    jr nz, jr_000_3396

jr_000_33b7:
    ld a, [$db60]
    add $1b
    ld d, a
    ld e, $04
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ret


Call_000_33cb:
    ld hl, $dd2d
    xor a
    ld [hl], a
    ld hl, $ffa5
    ld [hl], a
    ret


Call_000_33d5:
    call Call_000_34a3
    ld a, [hl+]
    ld [$db3d], a

Call_000_33dc:
    ld c, a
    ld a, [hl+]
    ld [$db3e], a
    push hl
    ld b, a
    ld hl, $cd2d
    ld a, $b3
    jr jr_000_33eb

jr_000_33ea:
    add c

jr_000_33eb:
    ld [hl+], a
    dec b
    jr nz, jr_000_33ea

    pop hl
    ld c, $04
    ld de, $db45

jr_000_33f5:
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    ld [de], a
    inc de
    ld a, b
    and $0f
    ld [de], a
    inc de

Call_000_3402:
Jump_000_3402:
    dec c

Call_000_3403:
    jr nz, jr_000_33f5

    push hl
    ld bc, $000a
    add hl, bc
    ld de, $b300
    call Call_000_0708
    pop hl
    inc hl
    inc hl
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, b
    call Call_000_05dd
    ld bc, $0003
    add hl, bc
    push hl
    ld a, [hl+]
    ld [$db5c], a
    ld de, $cf00
    call Call_000_0708
    ld c, $05
    ld hl, $cf00
    ld de, $c500

jr_000_3433:
    ld a, [$db5c]
    ld b, a

jr_000_3437:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_3437

    ld e, $00
    inc d
    dec c
    jr nz, jr_000_3433

    pop hl
    dec hl
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, b
    call Call_000_05dd
    inc hl
    xor a
    ld [$db59], a
    ld a, [$df03]
    and a
    jr nz, jr_000_3460

    ld de, $8800
    call Call_000_0708
    ret


jr_000_3460:
    ld de, $9000
    call Call_000_0708
    ret


Call_000_3467:
    ld de, $a004
    ld hl, $db51
    ld a, [de]
    inc e
    sub $50
    ld [hl+], a
    ld a, [de]
    inc e
    sbc $00
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_000_1513


Call_000_347d:
    ld hl, $db51
    xor a
    ld [hl+], a
    ld [hl+], a
    ld de, $a007
    ld a, [de]
    inc e
    sub $40
    ld [hl+], a
    ld a, [de]
    sbc $00
    ld [hl], a
    jp Jump_000_1513


Call_000_3492:
    ld hl, $db51
    ld a, [hl+]
    and $f0
    ld [$db55], a
    inc hl
    ld a, [hl]
    and $f0
    ld [$db56], a
    ret


Call_000_34a3:
    ld a, $0f
    call Call_000_05dd
    ld a, [$db6a]
    and $7f
    ld b, $00

jr_000_34af:
    srl a
    jr nc, jr_000_34b6

    inc b
    jr jr_000_34af

jr_000_34b6:
    ld a, b
    add a
    add b
    ld hl, $612d
    add l
    ld l, a
    jr nc, jr_000_34c1

    inc h

jr_000_34c1:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld h, b
    ld l, c
    call Call_000_05dd
    ret


Call_000_34cc:
    ld a, [$dd63]
    ld b, a
    ld a, $00

jr_000_34d2:
    ld hl, $6111
    rr b
    call c, Call_000_34e0
    inc a
    cp $07
    ret z

    jr jr_000_34d2

Call_000_34e0:
    push bc
    push af
    add a
    add a
    add l
    ld l, a
    jr nc, jr_000_34e9

    inc h

jr_000_34e9:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, $9d
    ld h, $a8
    ld l, $b2
    call Call_000_07c4
    pop af
    pop bc
    ret


Call_000_34fd:
Jump_000_34fd:
    ldh a, [$ffa4]
    push af
    ld a, [$a069]

Call_000_3503:
    call Call_000_05dd
    ld h, d
    ld l, $6a
    ld a, [hl+]
    or [hl]
    ldh a, [$ff92]
    ld c, a
    ld a, [$da1c]
    jr nz, jr_000_351c

    cp c
    jr nz, jr_000_3563

    ld l, $64
    ld [hl], $00
    jr jr_000_3563

jr_000_351c:
    sub c
    dec a
    cp $04
    jr c, jr_000_3563

    sub $03
    ld e, a
    ld a, [hl-]
    or a
    jr nz, jr_000_352e

    ld a, [hl]
    cp e
    jr nc, jr_000_352e

    ld e, a

jr_000_352e:
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ld b, $c4
    ld l, $65
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, e
    ld [bc], a
    ldh [$ff84], a
    inc c
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_3547:
    ld a, [hl+]
    ld [bc], a
    inc c
    dec e
    jr nz, jr_000_3547

    ld a, c
    ldh [$ff92], a
    ld e, $65
    ldh a, [$ff84]
    ld c, a
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a

jr_000_3563:
    pop af
    call Call_000_05dd
    ret


    ld a, [bc]
    ld [$df11], a
    inc bc
    ld hl, $748b
    ld a, $07
    call Call_000_05cf
    ret


    ld hl, $7452
    ld a, $07
    call Call_000_05cf
    ret


    ld hl, $746c
    ld a, $07
    call Call_000_05cf
    ret


    ld a, [$a071]
    or a
    jr nz, jr_000_3594

    ld hl, $a04c
    ld [hl], $0c
    ret


jr_000_3594:
    ld hl, $a072
    ld [hl], $06
    ret


Call_000_359a:
    ld hl, $ffb4
    ldh a, [$ffa6]
    or [hl]
    ld [hl], a
    ret


Call_000_35a2:
    xor a
    ldh [$ffb4], a
    ret


    ld a, [$db60]
    sub $02
    ld e, $27
    ld [de], a
    ret


Call_000_35af:
    ld e, $07
    ld a, [de]
    add $01
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    ret


Call_000_35bb:
    ld e, $87
    call Call_000_35e2

Call_000_35c0:
    ld a, [$a071]
    push bc
    ld hl, $35dc
    add l
    ld l, a
    jr nc, jr_000_35cc

    inc h

jr_000_35cc:
    ld a, [hl]
    ld c, a
    rla
    sbc a
    ld b, a
    ld h, d
    ld l, $8b
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    pop bc
    ret


    db $00

    db $fc
    cp $fa

Call_000_35e0:
    ld e, $03

Call_000_35e2:
    xor a
    ld [de], a
    inc e
    ld hl, $db51
    ld a, [bc]
    add [hl]
    ld [de], a
    inc hl
    inc e
    inc bc
    ld a, [bc]
    adc [hl]
    ld [de], a
    inc hl
    inc e
    xor a
    ld [de], a
    inc e
    inc bc
    ld a, [bc]
    add [hl]
    ld [de], a
    inc hl
    inc e
    inc bc
    ld a, [bc]
    adc [hl]
    ld [de], a

Call_000_3600:
Jump_000_3600:
    inc bc

Jump_000_3601:
    ret


Call_000_3602:
Jump_000_3602:
    ldh a, [$ffa5]

Call_000_3604:
    and $30
    jr z, jr_000_3613

    bit 4, a
    ld a, $40
    jr nz, jr_000_3610

    ld a, $c0

jr_000_3610:
    ld e, $45
    ld [de], a

jr_000_3613:
    ret


Call_000_3614:
    ld e, $7d
    ld a, [de]
    rra
    ret


Call_000_3619:
    ld a, [$da36]
    or a
    jr nz, jr_000_3627

    ldh a, [$ffa5]
    and $40
    jr z, jr_000_3627

    scf
    ret


jr_000_3627:
    and a
    ret


Call_000_3629:
    ldh a, [$ffa5]
    and $80
    jr z, jr_000_3646

    ld a, [$a071]
    ld hl, $3648
    add a

Call_000_3636:
    add l
    ld l, a
    jr nc, jr_000_363b

    inc h

jr_000_363b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0620
    call $753a
    jr nc, jr_000_3648

jr_000_3646:
    and a
    ret


jr_000_3648:
    scf
    ret


    ld h, $79

    db $3c, $79, $52, $79

Call_000_3650:
    ldh a, [$ffb4]
    and $02
    jr z, jr_000_3664

    ld hl, $a500

jr_000_3659:
    ld a, [hl]
    cp $ff
    jr z, jr_000_3669

    inc h
    ld a, h
    cp $a8
    jr nz, jr_000_3659

jr_000_3664:
    call Call_000_35a2
    and a
    ret


jr_000_3669:
    scf
    ret


Call_000_366b:
    ldh a, [$ffb4]
    and $02
    jr z, jr_000_3686

    ld a, [$a05b]
    cp $03
    jr z, jr_000_368d

    ld hl, $a500

jr_000_367b:
    ld a, [hl]
    cp $ff
    jr z, jr_000_368b

    inc h
    ld a, h
    cp $a8
    jr nz, jr_000_367b

jr_000_3686:
    call Call_000_35a2
    and a
    ret


jr_000_368b:
    scf
    ret


jr_000_368d:
    ld hl, $a500

jr_000_3690:
    ld a, [hl]
    cp $ff
    jr nz, jr_000_3686

    inc h
    ld a, h
    cp $a8
    jr nz, jr_000_3690

    jr jr_000_368b

Call_000_369d:
    ldh a, [$ffa5]
    and $80
    jr nz, jr_000_36a5

    and a
    ret


Call_000_36a5:
jr_000_36a5:
    ld h, d
    ld e, $4d
    ld a, [de]
    cp $02
    jr nz, jr_000_36e4

    ldh a, [$ffaf]
    inc a
    ld e, a
    rla
    sbc a
    ld d, a
    ldh a, [$ffb1]
    ld c, a
    rla
    sbc a
    ld b, a
    call Call_000_1ad9
    call Call_000_184e
    jr nc, jr_000_36c8

    ldh a, [$ff9e]
    cp $02
    jr nz, jr_000_36e1

jr_000_36c8:
    ldh a, [$ffb3]
    ld l, a
    rla
    sbc a
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    call Call_000_184e
    jr nc, jr_000_36dc

    ldh a, [$ff9e]
    cp $02
    jr nz, jr_000_36e1

jr_000_36dc:
    ldh a, [$ff9a]
    ld d, a
    scf
    ret


jr_000_36e1:
    ldh a, [$ff9a]
    ld d, a

jr_000_36e4:
    and a
    ret


Call_000_36e6:
    ldh a, [$ffa5]
    and $40
    jr nz, jr_000_36ee

    and a
    ret


jr_000_36ee:
    ld h, d
    ld l, $04
    ld c, [hl]
    inc l
    ld b, [hl]
    ld l, $07
    ld e, [hl]
    inc l
    ld d, [hl]
    call Call_000_1646
    cp $10
    jr z, jr_000_3716

    cp $90

Call_000_3702:
    jr z, jr_000_3716

    cp $18
    jr z, jr_000_370d

jr_000_3708:
    and a
    ldh a, [$ff9a]
    ld d, a
    ret


jr_000_370d:
    ld a, [$db60]
    call Call_000_1611
    or a
    jr nz, jr_000_3708

jr_000_3716:
    ld a, [$cd4d]
    or a
    jr nz, jr_000_3708

    call Call_000_1067
    scf
    ldh a, [$ff9a]
    ld d, a
    ret


Call_000_3724:
    ldh a, [$ffa6]
    and $04
    jr nz, jr_000_372c

    and a
    ret


jr_000_372c:
    ld e, $28
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    scf
    ret


Call_000_373b:
    ld e, $45
    ld a, [de]
    rla
    ldh a, [$ffa5]

Call_000_3741:
    ld b, $10
    jr c, jr_000_3747

    ld b, $20

jr_000_3747:
    and b
    jr nz, jr_000_374c

    and a
    ret


jr_000_374c:
    scf
    ret


Call_000_374e:
    call Call_000_3847
    ld e, $6d
    ld a, [de]
    cp h
    jr nz, jr_000_3759

    and a
    ret


jr_000_3759:
    scf
    ret


Call_000_375b:
    ldh a, [$ffa5]
    and $02
    jr z, jr_000_3763

    and a
    ret


jr_000_3763:
    scf
    ret


Call_000_3765:
    ld a, [$a070]
    or a
    jr nz, jr_000_377a

    call Call_000_1ab3
    jr nz, jr_000_377a

    ld e, $00
    ld bc, $0140
    call Call_000_0d35
    scf
    ret


jr_000_377a:
    and a
    ret


Call_000_377c:
    ld a, [$a070]
    or a
    jr nz, jr_000_3784

jr_000_3782:
    and a
    ret


jr_000_3784:
    call Call_000_1ab3
    jr z, jr_000_3782

    scf
    ret


Call_000_378b:
    ld a, [$a070]
    or a
    jr nz, jr_000_37a6

    call Call_000_1ab3
    jr nz, jr_000_37a6

    call Call_000_3a48
    call Call_000_3c5a
    ld e, $00
    ld bc, $0140
    call Call_000_0d35
    scf
    ret


jr_000_37a6:
    and a
    ret


Call_000_37a8:
    ld a, [$a070]
    or a
    jr nz, jr_000_37b0

jr_000_37ae:
    and a
    ret


jr_000_37b0:
    call Call_000_1ab3
    jr z, jr_000_37ae

    call Call_000_3a57
    call Call_000_3c5a
    scf
    ret


Call_000_37bd:
    ldh a, [$ffa5]
    and $41
    jr nz, jr_000_37c5

    and a
    ret


jr_000_37c5:
    xor a
    ld [$a06e], a
    scf
    ret


Call_000_37cb:
    ldh a, [$ffa5]
    ld b, $00
    and $f1
    jr z, jr_000_37df

    ld b, $02
    bit 0, a
    jr nz, jr_000_37df

    dec b
    bit 7, a
    jr nz, jr_000_37df

    inc b

jr_000_37df:
    ld e, $6f
    ld a, [de]
    cp b
    jr nz, jr_000_37e7

    and a
    ret


jr_000_37e7:
    ld a, b
    ld [de], a
    scf
    ret


Call_000_37eb:
    ld e, $0f
    ld a, [de]
    sub c
    inc e
    ld a, [de]
    sbc b
    ccf
    ret


Call_000_37f4:
Jump_000_37f4:
    call Call_000_0846

Jump_000_37f7:
    ld a, $08
    call Call_000_05dd
    jp $7358


    ld e, $45
    ld a, [de]

Call_000_3802:
    xor $80
    ld [de], a
    ret


    ld a, [$a05b]
    ld e, $27
    inc a
    ld [de], a
    ret


    ldh a, [$ffa5]
    and $40
    jr z, jr_000_3818

    ld a, [$a070]
    dec a

jr_000_3818:
    ld e, $27
    ld [de], a
    ret


    call Call_000_3826
    ld a, $00
    rla
    ld e, $27
    ld [de], a
    ret


Call_000_3826:
    ld e, $45
    ld a, [de]
    rla
    ldh a, [$ffa5]
    jr c, jr_000_3834

    bit 4, a
    jr nz, jr_000_383a

    jr jr_000_3838

jr_000_3834:
    bit 5, a
    jr nz, jr_000_383a

Call_000_3838:
jr_000_3838:
    and a
    ret


jr_000_383a:
    scf
    ret


Call_000_383c:
    call Call_000_3847
    ld e, $27
    ld a, h
    ld [de], a
    ld e, $6d
    ld [de], a
    ret


Call_000_3847:
    ld e, $4d
    ld a, [de]
    cp $04
    ld h, $00
    jr c, jr_000_3861

    ld e, $45
    ld a, [de]
    jr nz, jr_000_385c

    inc h
    rla
    jr nc, jr_000_3861

    inc h
    jr jr_000_3861

jr_000_385c:
    inc h
    rla
    jr c, jr_000_3861

    inc h

jr_000_3861:
    ld e, $4e
    ld a, [de]
    and $f0
    cp $70
    ret nz

    ld a, h
    add $03
    ld h, a
    ret


Jump_000_386e:
    ld e, $45
    ld a, [de]
    rla
    ldh a, [$ffa5]
    jr c, jr_000_387e

    bit 4, a
    jr z, jr_000_3890

    ld e, h
    jp Jump_000_0ca2


jr_000_387e:
    bit 5, a
    jr z, jr_000_3890

    ld e, h
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    jp Jump_000_0cd3


jr_000_3890:
    ld e, l
    jp Jump_000_0d04


Jump_000_3894:
    ldh a, [$ffa5]
    and $30
    jr z, jr_000_38b8

    bit 4, a
    ld e, $45
    jr z, jr_000_38a7

    ld a, $40
    ld [de], a
    ld e, h
    jp Jump_000_0ca2


jr_000_38a7:
    ld a, $c0
    ld [de], a
    ld e, h
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    jp Jump_000_0cd3


jr_000_38b8:
    ld e, l
    jp Jump_000_0d04


Jump_000_38bc:
    ldh a, [$ffa5]
    and $30
    jr z, jr_000_38fd

    bit 4, a
    ld e, $45
    ld a, [de]

Call_000_38c7:
    jr z, jr_000_38da

    rla
    jr c, jr_000_38d2

    ldh a, [$ff85]
    ld e, a
    jp Jump_000_0ca2


jr_000_38d2:
    ldh a, [$ff86]
    ld e, a
    ld b, h
    ld c, l
    jp Jump_000_0ca2


jr_000_38da:
    rla
    jr nc, jr_000_38ed

    ldh a, [$ff85]
    ld e, a
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    jp Jump_000_0cd3


jr_000_38ed:
    ldh a, [$ff86]
    ld e, a
    ld a, l
    cpl
    add $01
    ld c, a
    ld a, h
    cpl
    adc $00
    ld b, a
    jp Jump_000_0cd3


jr_000_38fd:
    ld e, $45

Jump_000_38ff:
    ld a, [de]

Call_000_3900:
    rla
    ld e, $0d
    ld a, [de]

Jump_000_3904:
    jr c, jr_000_390b

    rla
    jr nc, jr_000_390e

    jr jr_000_3914

jr_000_390b:
    rla
    jr nc, jr_000_3914

jr_000_390e:
    ldh a, [$ff80]
    ld e, a
    jp Jump_000_0d04


jr_000_3914:
    ldh a, [$ff81]
    ld e, a
    jp Jump_000_0d04


Call_000_391a:
    call $76df
    jr jr_000_3927

Call_000_391f:
    call Call_000_1dc7
    jr jr_000_3927

Call_000_3924:
    call Call_000_1d8b

jr_000_3927:
    jr nc, jr_000_393c

    ld e, $45
    ld a, [de]
    ld b, a
    ld e, $0e
    ld a, [de]
    xor b
    rla
    jr c, jr_000_393a

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a

jr_000_393a:
    scf
    ret


jr_000_393c:
    and a
    ret


Call_000_393e:
Jump_000_393e:
    call $7766
    jr jr_000_3946

Call_000_3943:
    call Call_000_1c0a

jr_000_3946:
    jr nc, jr_000_3950

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_000_3950:
    and a
    ret


Call_000_3952:
Jump_000_3952:
    call $7766
    jr jr_000_395a

Call_000_3957:
Jump_000_3957:
    call Call_000_1c0a

jr_000_395a:
    jr nc, jr_000_3970

    ldh a, [$ff9e]
    cp $01
    jr z, jr_000_3968

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a

jr_000_3968:
    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_000_3970:
    and a
    ret


Call_000_3972:
    call $77dd
    jr jr_000_397a

Call_000_3977:
    call Call_000_1c88

jr_000_397a:
    jr nc, jr_000_398b

    ldh a, [$ff9f]
    cp $31
    call z, Call_000_3c63
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_000_398b:
    and a
    ret


Call_000_398d:
    call $77dd
    jr jr_000_3995

Call_000_3992:
    call Call_000_1c88

jr_000_3995:
    jr nc, jr_000_39ba

    ldh a, [$ff9f]
    cp $31
    call z, Call_000_3c63
    ld h, d
    ld l, $10
    ld a, [hl-]
    rla
    jr c, jr_000_39b2

    ld a, [hl+]
    sub $b3
    ld a, [hl]
    sbc $00
    jr c, jr_000_39b2

    ld e, $52
    ld a, $02
    ld [de], a

jr_000_39b2:
    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_000_39ba:
    and a
    ret


Call_000_39bc:
    call $7766
    jr jr_000_39c4

Call_000_39c1:
    call Call_000_1c0a

jr_000_39c4:
    jr nc, jr_000_39ee

    ld h, d
    ld l, $10
    ld a, [hl-]
    rla
    jr nc, jr_000_39da

    ld a, [hl+]
    sub $40
    ld a, [hl]
    sbc $ff
    jr nc, jr_000_39da

    ld a, $01
    ld e, $52
    ld [de], a

jr_000_39da:
    ldh a, [$ff9e]
    cp $01
    jr z, jr_000_39e6

    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a

jr_000_39e6:
    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    scf
    ret


jr_000_39ee:
    and a
    ret


    ld a, [$a058]
    bit 7, a
    ld h, $00
    jr nz, jr_000_3a02

    inc h
    ld a, [$a059]
    cp $02

Call_000_39ff:
    jr c, jr_000_3a02

Call_000_3a01:
Jump_000_3a01:
    inc h

Call_000_3a02:
jr_000_3a02:
    ld e, $27
    ld a, h
    ld [de], a
    ret


    ld a, [$a058]
    ld [$a05b], a
    ld a, [$a05a]
    ld [$a05c], a
    xor a
    ld [$a074], a
    ret


    ld e, $56
    ld a, [de]
    cp $02
    jr nc, jr_000_3a20

    xor a

jr_000_3a20:
    ld e, $27
    ld [de], a
    ret


Call_000_3a24:
    ld a, [$a070]
    or a
    jr nz, jr_000_3a46

    call Call_000_1ab3
    jr nz, jr_000_3a46

    ld e, $00
    ld bc, $0140
    call Call_000_0d35
    call Call_000_2809
    jr c, jr_000_3a3e

    scf
    ret


jr_000_3a3e:
    ld a, $01
    ld [$a070], a
    call Call_000_3c5a

jr_000_3a46:
    and a
    ret


Call_000_3a48:
    ld a, $0c
    ld [$a06e], a
    xor a
    ld [$a06f], a
    ld a, $01
    ld [$a070], a
    ret


Call_000_3a57:
    xor a
    ld [$a070], a
    ret


    db $10, $52, $11, $6a, $3a, $0f, $52, $00, $24, $05, $0d, $77, $0f, $00, $0c

    push bc
    ld a, [$a071]
    ld hl, $3a87
    add l
    ld l, a
    jr nc, jr_000_3a77

    inc h

jr_000_3a77:
    ld a, [hl]
    ld c, a
    rla
    sbc a
    ld b, a
    ld h, d
    ld l, $07
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    pop bc
    ret


    db $00, $fc, $fe, $fa

Call_000_3a8b:
    ld a, [$a071]
    or a
    ld hl, $a04c
    jr z, jr_000_3a9d

    ld a, b
    srl a
    adc $00
    ld b, a
    ld hl, $a072

jr_000_3a9d:
    ld a, [hl]
    sub b
    ld [hl], a
    jr nc, jr_000_3aa4

    xor a
    ld [hl], a

jr_000_3aa4:
    ld a, $01
    ld [$a054], a
    ret


Call_000_3aaa:
Jump_000_3aaa:
    ld [$a062], a
    ld a, [hl+]
    ld [$a05d], a
    ld e, $45
    ld a, [de]
    rla
    ld a, [hl+]
    jr nc, jr_000_3aba

    cpl
    inc a

jr_000_3aba:
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $04
    ld a, [de]
    inc e
    add c
    ld [$a05e], a
    ld a, [de]
    adc b
    ld [$a05f], a
    ld a, [hl+]
    ld c, a
    rla
    sbc a
    ld b, a
    ld e, $07
    ld a, [de]
    inc e
    add c
    ld [$a060], a
    ld a, [de]
    adc b
    ld [$a061], a
    ld a, [hl+]
    ldh [$ffa2], a
    ld a, [hl]
    ldh [$ffa3], a
    ret


Call_000_3ae4:
Jump_000_3ae4:
    ld a, [$a05b]
    jr jr_000_3aeb

Call_000_3ae9:
    ld a, $ff

jr_000_3aeb:
    ld [$df15], a
    ld a, [$a05d]
    inc a
    jr nz, jr_000_3af6

    and a
    ret


jr_000_3af6:
    xor a
    ld [$df0b], a
    ld hl, $ffa3
    ld e, $60
    ld a, [de]

Jump_000_3b00:
    sub [hl]

Call_000_3b01:
    ld c, a
    inc e

Jump_000_3b03:
    ld a, [de]

Call_000_3b04:
    sbc $00
    ld b, a
    ld a, c
    and $f0
    ld c, a
    push bc
    dec e
    ld a, [de]
    add [hl]
    sub c
    swap a
    and $0f
    inc a
    ld [$df0e], a
    dec l
    ld e, $5e
    ld a, [de]
    sub [hl]
    ld [$df0f], a
    ld c, a
    inc e
    ld a, [de]
    sbc $00
    ld [$df10], a
    ld b, a
    ld a, c
    and $f0
    ld c, a
    dec e
    ld a, [de]
    add [hl]
    sub c
    swap a
    and $0f
    inc a
    ld [$df0c], a
    ld [$df0d], a
    pop de
    jr jr_000_3b5b

jr_000_3b3f:
    ld hl, $df0f
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$df0c]
    ld [$df0d], a
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_3b52

    inc d

jr_000_3b52:
    jr jr_000_3b5b

jr_000_3b54:
    ld a, c
    add $10
    ld c, a
    jr nc, jr_000_3b5b

    inc b

jr_000_3b5b:
    call Call_000_3b8f
    jr nc, jr_000_3b65

    ld a, $01
    ld [$df0b], a

jr_000_3b65:
    ld a, [$df0d]
    dec a
    ld [$df0d], a
    jr nz, jr_000_3b54

    ld a, [$df0e]
    dec a
    ld [$df0e], a
    jr nz, jr_000_3b3f

    ld a, [$df0b]
    or a
    jr nz, jr_000_3b82

    ldh a, [$ff9a]
    ld d, a
    and a
    ret


jr_000_3b82:
    ldh a, [$ff9a]
    ld d, a
    call Call_000_2871
    ld e, $0f
    call Call_000_0f7a
    scf
    ret


Call_000_3b8f:
    call Call_000_1646
    ld [$df13], a
    ld h, a
    and $07
    cp $01
    jr nz, jr_000_3bf2

    ld a, h
    cp $21
    jr z, jr_000_3bcd

    cp $29
    jr nz, jr_000_3bad

    ld a, [$df15]
    inc a
    jr z, jr_000_3bf2

    jr jr_000_3bcd

jr_000_3bad:
    cp $41
    jr c, jr_000_3bf2

    cp $79
    jr nc, jr_000_3bf2

    rra
    rra
    rra
    and $1f
    sub $08
    push hl
    ld hl, $3bf4
    add l
    ld l, a
    jr nc, jr_000_3bc5

    inc h

jr_000_3bc5:
    ld h, [hl]
    ld a, [$df15]
    cp h
    pop hl
    jr nz, jr_000_3bf2

jr_000_3bcd:
    push bc
    push de
    ld a, l
    ldh [$ff80], a
    call Call_000_3c02
    ldh a, [$ff80]
    inc a
    call Call_000_15a8
    ld a, [$df13]
    cp $71
    ld e, $19
    jr nz, jr_000_3be6

    ld e, $53

jr_000_3be6:
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    pop de
    pop bc
    scf
    ret


jr_000_3bf2:
    and a
    ret


    ld b, $01
    ld [bc], a
    inc bc
    inc b
    dec b
    nop

Call_000_3bfb:
    call Call_000_3c09
    ret z

    ld [hl], $10

Call_000_3c01:
Jump_000_3c01:
    ret


Call_000_3c02:
    call Call_000_3c0e
    ret z

    ld [hl], $05
    ret


Call_000_3c09:
    ld hl, $a8b2
    jr jr_000_3c11

Call_000_3c0e:
    ld hl, $a2a5

jr_000_3c11:
    push bc
    push de
    ld a, e
    and $f0
    or $08
    ld e, a
    ld a, c
    and $f0
    or $08
    ld c, a
    ld a, $01
    call Call_000_07c4
    ld a, h
    or a
    ld l, $51
    pop de
    pop bc
    ret


Call_000_3c2b:
    ld h, d
    ld l, $45
    ld a, [hl]
    rla
    jr nc, jr_000_3c3c

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_3c3c:
    ld l, $0d
    ld [hl], c
    inc l
    ld [hl], b
    ret


    ld a, [$a05b]
    inc a
    ld [$dee0], a
    ld hl, $dede
    set 3, [hl]
    ret


    ld a, [bc]
    inc bc
    ld [$dee0], a
    ld hl, $dede
    set 3, [hl]
    ret


Call_000_3c5a:
    ld bc, $3c60
    jp Jump_000_0f92


    db $07, $00, $00

Call_000_3c63:
    ld b, $08
    ld hl, $cd56

jr_000_3c68:
    ld a, [hl+]
    or a
    jr z, jr_000_3c72

    inc l
    inc l
    dec b
    jr nz, jr_000_3c68

    ret


jr_000_3c72:
    dec l
    ld [hl], $20
    inc l
    ldh a, [$ff9c]
    ld c, a
    ld [hl+], a
    ldh a, [$ff9d]
    ld b, a
    ld [hl], a
    ld a, [bc]
    inc a
    ld [bc], a
    ldh [$ff84], a
    ld e, c
    swap c
    call Call_000_15b0
    ld hl, $df12
    inc [hl]
    ldh a, [$ff9a]
    ld d, a
    and a
    ret


    call Call_000_2af8
    xor a
    ld hl, $df37
    ld [hl+], a
    ld [hl], a
    ld e, $61
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ld a, $18
    call Call_000_05dd
    ld hl, $6b11
    ld de, $9000
    call Call_000_0708
    ld a, $18
    call Call_000_05dd
    ld hl, $649f
    ld de, $8000
    call Call_000_0708
    ld hl, $dd30
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, e
    sub $00
    ld e, a
    ld a, d
    sbc $80
    ld d, a
    ld a, e
    ld b, $04

jr_000_3cd2:
    srl d
    rra
    dec b
    jr nz, jr_000_3cd2

    ld [$df34], a
    ld a, $18
    call Call_000_05dd
    ld hl, $6d6b
    ld de, $9800

Jump_000_3ce6:
    call Call_000_0708
    ld hl, $9960
    ld de, $9c00
    ld bc, $00e0
    call Call_000_0621
    ld hl, $df35
    ld a, $32
    ld [hl+], a
    ld a, $62
    ld [hl+], a
    xor a

Call_000_3cff:
Jump_000_3cff:
    ld [hl], a

Call_000_3d00:
    ld hl, $5b1b
    ld a, $07
    call Call_000_05cf
    call Call_000_046d
    ld e, $1d
    ld hl, $6011
    ld a, $1e
    call Call_000_05cf
    ld a, $08
    call Call_000_05dd
    call $4000
    ld a, $8b
    ld h, $a0
    ld l, $b3
    ld b, $00
    ld c, b
    ld d, c
    ld e, d
    call Call_000_07c4
    ld de, $0c04
    ld hl, $4246
    ld a, $1a
    call Call_000_05cf

jr_000_3d36:
    call Call_000_0496
    call Call_000_086b
    call Call_000_04ae
    call Call_000_0343
    ld a, [$dd2d]
    and a
    jr nz, jr_000_3d4e

    ld a, [$da46]
    and a
    jr nz, jr_000_3d36

jr_000_3d4e:
    ld de, $0c04
    ld hl, $427b
    ld a, $1a
    call Call_000_05cf
    call Call_000_0437
    ld hl, $5ada
    ld a, $07
    call Call_000_05cf
    ret


Call_000_3d65:
    ld hl, $df35
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld e, $43
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$dd2f], a
    ld [$df39], a
    ldh a, [$ffa4]
    push hl
    push af
    push de
    ld a, $07
    call Call_000_05dd
    ld a, [$df39]
    ld l, a
    ld h, $00
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    ld de, $5629
    add hl, de
    pop de
    ld e, $18
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl]
    ld [de], a
    ld e, $46
    ld a, [$df34]
    ld [de], a
    pop af
    call Call_000_05dd
    pop hl
    ld bc, $df35
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld hl, $5a1c
    ld a, $07
    call Call_000_05cf
    ret


Call_000_3db8:
    ld hl, $df35
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld a, [hl+]
    and $07
    swap a
    rla
    ld bc, $9c00
    add c
    ld c, a
    jr nc, jr_000_3dce

    inc b

jr_000_3dce:
    ld a, [hl+]
    add c
    ld c, a
    jr nc, jr_000_3dd4

    inc b

jr_000_3dd4:
    ldh a, [$ff92]
    ld e, a
    ld d, $c4
    ld a, [hl+]
    push af
    bit 0, a
    jr nz, jr_000_3de3

    ld a, $07
    jr jr_000_3de6

jr_000_3de3:
    ld a, $0b
    dec c

jr_000_3de6:
    ldh [rWX], a
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    inc e
    pop af
    ld [de], a
    inc e
    ld b, a

jr_000_3df2:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_3df2

    ld a, e
    ldh [$ff92], a
    ld bc, $df35
    ld a, l
    ld [bc], a
    inc bc

Jump_000_3e01:
    ld a, h
    ld [bc], a

Jump_000_3e03:
    ret


    inc c
    ld hl, $4246
    ld a, $1a
    call Call_000_05f9

jr_000_3e0d:
    call Call_000_04c0
    call Call_000_0915
    call Call_000_04d8
    call Call_000_0343
    ld a, [$dd2c]
    and a
    jr nz, jr_000_3e25

    ld a, [$da46]
    and a
    jr nz, jr_000_3e0d

jr_000_3e25:
    ld de, $0c04
    ld hl, $427b
    ld a, $1a
    call Call_000_05f9
    call Call_000_0461
    ld hl, $5aeb
    ld a, $07
    call Call_000_05f9
    ret


    ld hl, $df34

Call_000_3e3f:
    ld a, [hl+]
    ld c, a
    ld a, [hl]

Jump_000_3e42:
    ld h, a

Jump_000_3e43:
    ld l, c
    ld e, $43
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$dd2e], a
    ld [$df38], a
    ldh a, [$ffa4]
    push hl
    push af
    push de
    ld a, $07
    call $0607
    ld a, [$df38]
    ld l, a
    ld h, $00

Call_000_3e5f:
    ld d, h
    ld e, l
    add hl, hl

Call_000_3e62:
    add hl, de
    add hl, hl
    ld de, $563a
    add hl, de
    pop de
    ld e, $18
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl]
    ld [de], a
    ld e, $46
    ld a, [$df33]
    ld [de], a
    pop af
    call $0607
    pop hl
    ld bc, $df34
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld hl, $5a2d
    ld a, $07
    call Call_000_05f9
    ret


    ld hl, $df34
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld a, [hl+]
    and $07
    swap a
    rla
    ld bc, $9c00
    add c
    ld c, a
    jr nc, jr_000_3ea5

    inc b

jr_000_3ea5:
    ld a, [hl+]
    add c
    ld c, a
    jr nc, jr_000_3eab

    inc b

jr_000_3eab:
    ldh a, [$ff92]
    ld e, a
    ld d, $c4
    ld a, [hl+]
    push af
    bit 0, a
    jr nz, jr_000_3eba

    ld a, $07
    jr jr_000_3ebd

jr_000_3eba:
    ld a, $0b
    dec c

jr_000_3ebd:
    ldh [rWX], a
    ld a, c
    ld [de], a
    inc e
    ld a, b

Jump_000_3ec3:
    ld [de], a
    inc e
    pop af
    ld [de], a
    inc e
    ld b, a

jr_000_3ec9:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_3ec9

    ld a, e
    ldh [$ff92], a
    ld bc, $df34
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a

Call_000_3eda:
    ret


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

Jump_000_3eff:
    rst $38

    db $fa, $08, $20, $09

    ld e, c

Jump_000_3f05:
    add hl, bc

    db $6c, $09, $88, $09, $0a, $09, $97, $09, $0c, $0a, $18, $0a, $41, $0a, $56, $0a
    db $6f, $0a, $b4, $0a, $e3, $0a, $1f, $0b, $37, $09, $40, $09, $ba, $09, $ce, $09
    db $e2, $09, $f7, $09, $14, $09, $f1, $08, $7c, $09, $24, $0a, $28, $09, $4a, $09
    db $a0, $09, $86, $0a, $c4, $0a, $3e, $0b, $ef, $0a, $74, $0b, $84, $0b, $55, $09

    ld l, b
    add hl, bc

    db $01, $0b, $07, $0b, $0d, $0b, $13, $0b, $19, $0b, $31, $0a, $39, $0a, $00, $3b
    db $00, $aa, $01, $12, $01, $75, $01, $d3, $02, $2b, $02, $7e, $02, $cd, $03, $17
    db $03, $5d, $03, $a0, $03, $de, $04, $19, $04, $51, $04, $86, $04, $b8, $04, $e7
    db $05, $13, $05, $3d, $05, $64, $05, $8a, $05, $ad, $05, $ce, $05, $ee, $06, $0b
    db $06, $27, $06, $42, $06, $5b, $06, $72, $06, $89, $06, $9e, $06, $b2, $06, $c4
    db $06, $d6, $06, $e7, $06, $f6, $07, $05, $07, $13, $07, $21, $07, $2d, $07, $39
    db $07, $44, $07, $4e, $07, $58, $07, $62, $07, $6b, $07, $73, $07, $7b, $07, $82
    db $07, $89, $07, $90, $07, $96, $07, $9c, $07, $a2, $07, $a7, $07, $ac, $07, $b1
    db $07, $b5, $07, $b9, $07, $bd, $07, $c1, $07, $c4, $07, $c8, $07, $cb, $07, $ce
    db $07, $d1, $07, $d3, $07, $d6, $07, $d8, $07, $da, $07, $dc, $07, $de

    rst $38
    rst $38

    db $ff, $ff

    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18

Call_000_3ff3:
    rst $38
    db $fd
    rst $38
    rst $38
    ei
    rst $38
    cp a
    rst $38

Call_000_3ffb:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
