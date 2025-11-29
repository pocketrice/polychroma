; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    rst $38
    ld [bc], a
    nop
    nop
    nop
    inc l
    ld b, [hl]
    ld b, $00
    nop
    nop
    inc l
    ld b, [hl]
    ld b, $00
    ld bc, $02ff
    ld [bc], a
    rst $38
    db $10
    jr nc, jr_006_4067

    ld [hl], b
    sub b
    or b
    ret nc

    ldh a, [rP1]
    stop
    jr nz, jr_006_4021

jr_006_4021:
    jr nc, jr_006_4023

jr_006_4023:
    ld b, b
    nop
    ld d, b
    nop
    ld h, b
    nop

jr_006_4029:
    ld [hl], b
    nop
    add b
    nop
    sub b
    nop
    jr nz, jr_006_4049

    jr nc, jr_006_404b

    ld b, b
    ld l, $20
    ld d, b
    add b
    or b
    ldh [rP1], a
    jr nz, jr_006_403d

jr_006_403d:
    jr nc, jr_006_403f

jr_006_403f:
    ld b, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    add b
    nop
    add b
    db $fd

jr_006_4049:
    ld a, [bc]
    nop

jr_006_404b:
    ld [bc], a
    ldh [$ffc0], a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ld l, c
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], h
    ld b, b
    ld a, d
    ld b, b
    ld a, [hl]
    ld b, b
    add [hl]
    ld b, b
    adc l
    ld b, b

jr_006_4067:
    sub [hl]
    ld b, b
    ld [$0706], sp
    nop
    ld bc, $ff04
    ld bc, $0206
    rst $38
    ld [$8006], sp
    dec b
    ld [bc], a
    rst $38
    nop
    add b
    ld a, [bc]
    dec bc
    ld bc, $0105
    dec b
    add b
    rst $38
    nop
    rst $38
    ld [$0802], sp
    add b
    ld [bc], a
    inc c
    rst $38
    add b
    ld [$0601], sp
    ld b, $80
    ld [bc], a
    add hl, bc
    rst $38
    ld bc, $ff02
    jr nz, jr_006_40ab

    jr nz, @+$1a

    add b
    ld [bc], a
    db $ec
    ld b, b
    ld [bc], a
    xor $00
    nop
    xor $20
    jr jr_006_4029

    ld [bc], a
    db $ec

jr_006_40ab:
    nop
    ld [bc], a
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_006_40b6

jr_006_40b6:
    cp $30
    nop
    db $fd
    ld b, b
    nop
    db $fc
    ld h, b
    nop
    ld a, [$0080]
    ld hl, sp-$60
    nop
    or $c0
    nop
    db $f4
    add b
    ld bc, $30f4
    ld b, b
    ld [bc], a
    and b
    add b
    stop
    ld [bc], a
    ret nz

    nop
    nop
    rst $38
    db $10
    add b
    nop
    add b
    rst $38
    db $10

jr_006_40de:
    add b
    nop
    ld b, b
    rst $38
    db $10
    rst $38
    ld [bc], a
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    inc sp
    ld c, [hl]
    inc bc
    nop
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    ld a, c
    cp $4e
    db $fc
    inc de
    nop
    nop
    nop
    db $fc
    inc de
    inc sp
    ld bc, $fc30
    ld de, $02d4
    inc l
    db $fd
    ld de, $03b2
    ld a, c
    cp $11
    nop
    inc b
    nop
    nop
    db $10
    or d
    inc bc
    add a
    ld bc, $2c10
    db $fd
    inc l
    db $fd
    ld [de], a
    ldh [rIE], a
    jr nz, jr_006_4155

jr_006_4155:
    nop
    nop
    inc b
    ld b, b
    rst $38
    ret nz

    nop
    jr nz, jr_006_40de

    cp $ff
    ld [bc], a
    nop
    nop
    nop
    ld h, c
    ld d, [hl]
    ld b, $00
    nop
    nop
    ld h, c
    ld d, [hl]
    ld b, $00
    ld bc, $0002
    ld bc, $0002
    ld bc, $0100
    rst $38
    db $10
    add b
    ld bc, $8010
    ld bc, $0008
    cp $10
    add b
    ld bc, $0010
    ld [bc], a
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
    ldh [$ff35], a
    ld d, b
    nop
    ld [hl], b
    nop
    dec c
    rrca
    jr nz, jr_006_41a4

    ld c, $2d
    dec bc
    jp c, Jump_000_0b41

jr_006_41a4:
    ld e, $42
    dec c
    rrca
    jr nz, jr_006_41b0

    ld c, $2d
    jr z, jr_006_41c1

    add b
    cp c

jr_006_41b0:
    ld b, c
    dec c
    sbc l
    ld c, [hl]
    ld de, $0640
    cp [hl]
    ld b, c
    dec c
    sbc l
    ld c, [hl]
    ld c, $40
    dec c
    xor e
    ld c, [hl]

jr_006_41c1:
    inc d
    rst $38
    ret nc

    ld b, d
    ld e, $03
    dec de
    ld b, d
    ld c, [hl]
    ld b, d
    ret z

    ld b, d
    ld b, $be
    ld b, c
    dec c
    cp [hl]
    ld c, [hl]
    inc d
    ld b, b
    dec c
    db $db
    ld c, [hl]
    dec e
    ld b, b
    inc h
    jr c, jr_006_41f6

    ld a, [de]
    ld [bc], a
    add hl, de
    jr nz, @+$08

    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    ld b, $19
    ld a, [de]
    ld [bc], a
    add hl, de
    jr nz, @+$08

    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    ld b, $10
    ld e, h

jr_006_41f6:
    ld [de], a
    dec b
    ld b, d
    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    jr nz, @+$08

    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    ld b, $27
    add hl, de
    ld a, [de]
    inc b
    add hl, de
    jr nz, jr_006_4210

    inc bc
    sub a
    ld c, e
    ld b, [hl]

jr_006_4210:
    add hl, de
    ld hl, $1904
    dec de
    ld [$0d27], sp
    dec c
    ld c, a
    inc c
    dec bc
    ret nc

    ld b, c
    rra
    ld sp, hl
    ld c, [hl]
    ld e, h
    cpl
    ld b, b
    jr z, jr_006_423a

    add b
    ld [hl], $42
    rra
    ld sp, hl
    ld c, [hl]
    ld e, h
    cpl
    ld b, b
    jr z, @+$16

    add b
    ld [hl], $42
    dec b
    db $10
    rrca
    rra
    add b
    add hl, de

jr_006_423a:
    ld hl, $1904
    jr nz, jr_006_4243

    add hl, de
    ld a, [de]
    inc b
    add hl, de

jr_006_4243:
    add hl, de
    ld [$ff01], sp
    rra
    ld sp, hl
    ld c, [hl]
    ld e, h
    ld sp, $0c40
    dec bc
    ret nc

    ld b, c
    dec b
    db $10
    dec c
    ld d, h
    ld c, a
    ld [de], a
    ld e, [hl]
    ld b, d
    dec b
    ld [bc], a
    ld b, $53
    ld b, d
    dec b
    rra
    add hl, de
    ld e, $08
    add hl, bc
    inc b
    add hl, de
    dec e
    ld [bc], a
    add hl, de
    ld [hl], $02
    ld a, [bc]
    db $10
    ld e, h
    ld [de], a
    ld a, l
    ld b, d
    add hl, de
    dec e
    ld [bc], a
    add hl, de
    ld [hl], $02
    add hl, de
    dec e
    ld [bc], a
    add hl, de
    ld [hl], $02
    daa
    inc bc
    cp b
    ld c, e
    ld b, [hl]
    rrca
    daa
    nop
    rrca
    ld b, b
    nop
    rrca
    ld h, $00
    add hl, hl
    nop
    jr jr_006_42a8

    dec e
    db $10
    ld h, $80
    nop
    dec b
    ld d, $03
    cp b
    ld c, e
    ld b, [hl]
    rrca
    daa
    ld [bc], a
    rrca
    ld b, b
    nop
    rrca
    ld h, $00
    add hl, de
    inc e
    inc h
    dec c
    ld [hl-], a

jr_006_42a8:
    db $10
    db $fc
    inc bc
    cp b
    ld c, e
    ld b, [hl]
    rrca
    daa
    inc b
    rrca
    ld b, b
    nop
    rrca
    ld h, $00
    add hl, de
    dec de
    jr nz, jr_006_42e4

    nop
    dec b
    ld c, $10
    ld e, h
    ld [de], a
    ld [hl], $42
    dec b
    ld [de], a
    ld b, $36
    ld b, d
    jr z, jr_006_42dd

    add b
    dec de
    ld b, d
    ld b, $4e
    ld b, d
    dec c
    rrca
    jr nz, jr_006_42db

    rlca
    dec l
    dec c
    cp [hl]
    ld c, [hl]
    dec [hl]
    ld b, b

jr_006_42db:
    dec c
    db $db

jr_006_42dd:
    ld c, [hl]
    dec sp
    ld b, b
    ld a, [de]
    ld b, c
    add hl, de
    ld a, [de]

jr_006_42e4:
    ld [bc], a
    add hl, de
    jr nz, @+$08

    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    ld b, $19
    ld a, [de]
    ld [bc], a
    add hl, de
    jr nz, @+$08

    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    ld b, $10
    ld e, h
    ld [de], a
    dec bc
    ld b, e
    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    jr nz, @+$08

    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    ld b, $27
    inc h
    jr c, jr_006_4328

    ld a, [de]
    inc b
    add hl, de
    jr nz, jr_006_4318

    add hl, de
    ld hl, $1904

jr_006_4318:
    ld [hl+], a
    ld [$740d], sp
    ld c, a
    ldh a, [$ff0d]
    jp z, Jump_006_4720

    ld b, b
    dec c
    and $22
    rlc a

jr_006_4328:
    inc bc
    ld c, a
    ld c, h
    ld b, [hl]
    rlca
    nop
    nop
    daa
    dec b
    dec l
    dec c
    cp d
    ld [hl+], a
    rrc b
    inc bc
    and [hl]
    ld c, e
    ld b, [hl]
    add hl, de
    rlca
    jr c, jr_006_4342

    ld h, a
    ld c, h
    ld b, [hl]

jr_006_4342:
    dec c
    and [hl]
    ld c, a
    dec c
    jp z, $4a20

    ld b, b
    dec c
    push bc
    ld c, a
    nop
    dec c
    add hl, hl
    ld d, b
    jr jr_006_437c

    nop
    ld a, [hl+]
    nop
    inc bc
    or b
    ld c, h
    ld b, [hl]
    dec c
    ld b, b
    ld d, b
    ld c, $0d
    ld a, h
    ld b, e
    sub h
    ld b, e
    cp l
    ld b, e
    rst $30
    ld b, e
    add hl, hl
    ld b, h
    ld a, $44
    ld e, e
    ld b, h
    jp $fd43


    ld b, e
    ld a, h
    ld b, h
    adc [hl]
    ld b, h
    sbc c
    ld b, h
    and a
    ld b, h
    ld b, $c9
    ld b, h

jr_006_437c:
    dec c
    sub h
    ld d, b
    dec c
    ld h, h
    ld d, b
    nop
    ld bc, $0008
    ld bc, $fc2a
    dec b
    ld [hl], b
    dec c
    add d
    ld d, b
    ldh [rTIMA], a
    db $10
    ld b, $51
    ld b, e
    dec c
    sub h
    ld d, b
    dec c
    ld h, h
    ld d, b
    nop
    ld [bc], a
    ld [$0200], sp
    ld a, [hl+]
    ld hl, sp+$05
    jr z, @+$0f

    add d
    ld d, b
    ldh a, [rTIMA]
    jr jr_006_43b2

    nop
    nop
    ld a, [hl+]
    nop
    dec b
    ld [$a603], sp

jr_006_43b2:
    ld c, e
    ld b, [hl]
    rra
    ld sp, hl
    ld c, [hl]
    ld e, h
    sbc c
    ld b, b
    ld b, $51
    ld b, e
    dec bc
    call z, $0643
    ld d, c
    ld b, e
    dec bc
    call z, Call_000_0b43
    pop hl
    ld b, e
    ld b, $51
    ld b, e
    dec c
    sub h
    ld d, b
    dec c
    ld h, h
    ld d, b
    nop
    ld [bc], a
    dec b
    ld [$f82a], sp
    dec b
    jr nz, @+$0f

    add d
    ld d, b
    ldh a, [rTIMA]
    jr nz, jr_006_43ed

    rlca
    nop
    nop
    add hl, hl
    nop
    ld [$fe00], sp
    ld a, [hl+]
    jr nz, @+$0f

    or l

jr_006_43ed:
    ld b, h
    ld [de], a
    or $43
    dec b
    ld bc, $eb06
    ld b, e
    inc c
    dec bc
    ld b, $44
    ld b, $51
    ld b, e
    dec bc
    ld b, $44
    dec bc
    jr @+$46

    ld b, $51
    ld b, e
    dec c
    sub h
    ld d, b
    dec c
    ld h, h
    ld d, b
    add b
    ld bc, $820d
    ld d, b
    db $f4
    ld [$0100], sp
    dec b
    ld b, b
    inc c
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec c
    ld h, h
    ld d, b
    add b
    cp $0d
    add d
    ld d, b
    jr jr_006_442c

    jr nz, jr_006_4435

    dec bc
    cpl
    ld b, h

jr_006_442c:
    ld b, $51
    ld b, e
    ld [$ff00], sp
    dec c
    or l
    ld b, h

jr_006_4435:
    ld [de], a
    dec a
    ld b, h
    dec b
    ld bc, $3206
    ld b, h
    inc c
    dec c
    sub h
    ld d, b
    dec c
    ld h, h
    ld d, b
    add b
    ld bc, $820d
    ld d, b
    db $f4
    ld [$ff00], sp
    dec c
    or l
    ld b, h
    ld [de], a
    ld e, b
    ld b, h
    dec b
    ld bc, $4d06
    ld b, h
    ld b, $51
    ld b, e
    dec bc
    ld h, c
    ld b, h
    ld b, $51
    ld b, e
    dec c
    sub h
    ld d, b
    dec c
    ld h, h
    ld d, b
    nop
    ld [bc], a
    dec b
    jr z, jr_006_4479

    add d
    ld d, b
    ldh a, [rTIMA]
    jr nz, jr_006_4475

    and [hl]
    ld c, e
    ld b, [hl]

jr_006_4475:
    rra
    ld sp, hl
    ld c, [hl]
    ld e, h

jr_006_4479:
    sbc e
    ld b, b
    inc c
    dec bc
    ld h, c
    ld b, h
    jr @+$2b

    nop
    ld a, [hl+]
    nop
    inc bc
    or b
    ld c, h
    ld b, [hl]
    dec bc
    cpl
    ld b, h
    ld b, $51
    ld b, e
    dec bc
    ld b, $44
    jr jr_006_44bc

    nop
    ld a, [hl+]
    nop
    ld b, $29
    ld b, h
    dec bc
    ld b, $44
    dec bc
    jr jr_006_44e3

    jr jr_006_44ca

    nop
    ld a, [hl+]
    nop
    ld b, $bd
    ld b, e
    dec bc
    call z, Call_000_0b43
    pop hl
    ld b, e
    jr jr_006_44d8

    nop
    ld a, [hl+]
    nop
    ld b, $7c
    ld b, e
    ld e, $07
    ld a, [de]
    ld hl, $db53
    sub [hl]

jr_006_44bc:
    cp $19
    jr c, jr_006_44c3

    xor a
    jr jr_006_44c5

jr_006_44c3:
    ld a, $01

jr_006_44c5:
    ld e, $27
    ld [de], a
    ret


    dec c

jr_006_44ca:
    sub h
    ld d, b
    jr z, jr_006_44e2

    add b
    ld d, c
    ld b, l
    inc bc
    or b
    ld c, h
    ld b, [hl]
    dec c
    ld h, h
    ld d, b

jr_006_44d8:
    ret nz

    nop
    dec c
    jp z, $9d20

    ld b, b
    dec b
    ld b, b
    dec c

jr_006_44e2:
    ld h, h

jr_006_44e3:
    ld d, b
    ret nz

    rst $38
    dec c
    jp z, $a020

    ld b, b
    dec b
    jr nz, @+$0f

    ld b, h
    ld b, l
    nop
    dec c
    or [hl]
    ld d, b
    nop
    inc bc
    and [hl]
    ld c, e
    ld b, [hl]
    dec b
    ld bc, $4a0d
    ld b, l
    ld de, $44f9
    dec b
    jr nz, @+$0f

    ld sp, $2445
    ld [hl], $0d
    and $22
    rrc a
    dec c
    and $22
    rl b
    dec c
    and $22
    rl c
    dec c
    and $22
    rl d
    dec b
    jr jr_006_452c

    ld h, h
    ld d, b
    ld b, b
    nop
    dec c
    jp z, $a320

    ld b, b
    inc bc
    or b
    ld c, h
    ld b, [hl]

jr_006_452c:
    dec b
    jr nz, jr_006_4535

    sub c
    ld b, l
    ld e, $48
    ld a, [de]
    ld h, a

jr_006_4535:
    ld l, $00
    ld a, [hl]
    cp $ff
    ret z

    push bc
    call Call_000_0bba
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    ld a, [bc]
    inc bc
    ld [$dd07], a
    ret


    ld a, [$dd07]
    ld e, $27
    ld [de], a
    ret


    inc bc
    and [hl]
    ld c, e
    ld b, [hl]
    rra
    ld sp, hl
    ld c, [hl]
    ld e, h
    and [hl]
    ld b, b
    dec c
    ld h, h
    ld d, b
    ld b, b
    nop
    dec c
    jp z, $a820

    ld b, b
    dec b
    ld b, b
    dec c
    ld h, h
    ld d, b
    ret nz

    rst $38
    dec c
    jp z, $ab20

    ld b, b
    inc bc
    or b
    ld c, h
    ld b, [hl]
    dec b
    jr nz, jr_006_457b

    and [hl]
    ld c, e
    ld b, [hl]

jr_006_457b:
    dec c
    or [hl]
    ld d, b
    ld bc, $0805
    dec c
    ld h, h
    ld d, b
    ld b, b
    nop
    dec c
    jp z, $ae20

    ld b, b
    inc bc
    or b
    ld c, h
    ld b, [hl]
    dec b
    jr nz, jr_006_459f

    sub h
    ld d, b
    dec c
    ret nz

    ld d, b
    dec c
    jp z, $c920

    ld b, b
    add hl, hl
    nop
    inc bc

jr_006_459f:
    or b
    ld c, h
    ld b, [hl]
    dec b
    ld b, b
    ld [$fe80], sp
    dec c
    ld e, a
    jr nz, @-$32

    ld b, b
    db $10
    ld b, c
    ld a, [de]
    ld de, $cb03
    ld c, h
    ld b, [hl]
    dec b
    db $10
    add hl, hl
    nop
    rlca
    nop
    nop
    nop
    inc h
    jr c, jr_006_45c0

    rst $38

jr_006_45c0:
    dec c
    and $22
    rl e
    rra
    ld sp, hl
    ld c, [hl]
    ld e, h
    rst $08
    ld b, b
    ld b, $a6
    ld b, c
    rrca
    ld b, c
    ld bc, $1c03
    ld b, [hl]
    ld b, [hl]
    inc e
    ld a, [$047c]
    add hl, bc
    ld b, $19
    dec e
    ld [bc], a
    add hl, de
    ld [hl], $02
    ld a, [bc]
    rrca
    ld b, c
    nop
    nop
    rrca
    ld b, c
    ld bc, $1c03
    ld b, [hl]
    ld b, [hl]
    inc e
    ld a, [$047c]
    add hl, bc
    inc b
    add hl, de
    ld [hl-], a
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld bc, $3319
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld bc, $190a
    add hl, bc
    inc bc
    add hl, de
    ld [$1903], sp
    rlca
    inc bc
    add hl, de
    ld a, [bc]
    inc bc
    add hl, de
    add hl, bc
    ld [bc], a
    add hl, de
    ld [$1902], sp
    rlca
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    rrca
    ld b, c
    nop
    nop
    call Call_000_2323
    ret nz

    ld e, $4c

jr_006_4622:
    ld a, [de]
    cp $15
    ret nc

    ld a, $01
    ld e, $5c
    ld [de], a
    ret


    dec c
    rrca
    jr nz, jr_006_4637

    rlca
    ccf
    db $10
    ld b, [hl]
    dec c
    db $e3
    ld d, b

jr_006_4637:
    inc e
    adc h
    ld b, a
    inc bc
    inc b
    ld a, d
    ld h, h
    dec c
    ld a, [de]
    ld b, [hl]
    ld bc, $220a
    dec sp
    ld e, a
    dec e
    ld [$fe00], sp
    rlca
    nop
    nop
    dec c
    ld e, a
    jr nz, jr_006_4622

    ld b, b

Jump_006_4652:
    rrca
    ld h, $00
    inc bc
    ld sp, hl

Call_006_4657:
    ld c, h
    ld b, [hl]
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
    ld b, $59
    ld b, [hl]
    dec c

Jump_006_4669:
    sub h
    ld d, b

Jump_006_466b:
    dec c
    rst $38
    ld d, b

Jump_006_466e:
    call nc, Call_000_0f40
    ccf
    inc bc
    inc bc
    dec hl
    ld c, l
    ld b, [hl]
    add hl, de
    rlca
    ld [$0819], sp
    ld [$0919], sp
    ld [$0a19], sp
    ld [$7706], sp
    ld b, [hl]
    dec c
    sub h
    ld d, b
    ld bc, $0f0a
    inc e
    add b
    rlca
    nop
    nop
    ld a, [hl+]
    nop
    ld [$fe00], sp
    inc bc
    sbc b
    ld c, l
    ld b, [hl]
    dec b
    jr nz, jr_006_46c7

    db $10
    dec b
    jr nz, jr_006_46ba

    rlca
    db $10
    ld a, [hl+]
    nop
    dec b
    add hl, de
    jr jr_006_46b6

    cp d
    ld [hl+], a
    rr c
    dec b
    ld [hl+], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    add hl, de

jr_006_46b6:
    inc bc
    ld [bc], a
    add hl, de
    rlca

jr_006_46ba:
    ld [bc], a
    add hl, de
    inc bc
    inc b
    ld b, $0b
    ld d, c
    rla
    rst $38
    dec c
    rrca
    ld h, c
    nop

jr_006_46c7:
    rrca
    ld c, h
    ld bc, $7a04
    ld h, h
    dec c
    dec c
    ld sp, hl
    rra
    db $10
    ld e, e
    ld c, $29
    jr z, jr_006_471e

    jr z, jr_006_4720

    jr z, jr_006_4722

    jr z, jr_006_4724

    jr z, jr_006_4726

    jr z, @+$49

    jr z, jr_006_472a

    ld h, b
    ld b, a
    inc e
    ld c, b
    ld e, [hl]
    ld c, d
    ld l, e
    ld c, d
    ld a, b
    ld c, d
    add l
    ld c, d
    ld a, a
    ld b, a
    ldh a, [rBGP]
    sub d
    ld c, d
    or b
    ld c, d
    call nz, $d84a
    ld c, d
    ldh a, [rWY]
    ld [$664b], sp
    ld c, e
    ld a, a
    ld c, e
    add a
    ld c, e
    adc a
    ld c, e
    db $fc
    ld c, c
    rst $18
    ld d, [hl]
    ld a, d
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a
    ld d, a
    ldh [c], a

jr_006_471e:
    ld d, a
    xor e

Jump_006_4720:
jr_006_4720:
    ld e, b
    ld e, b

jr_006_4722:
    ld e, c
    ld h, c

jr_006_4724:
    ld e, c
    rst $38

jr_006_4726:
    ld e, c
    ld d, $0d
    pop de

jr_006_472a:
    rra
    nop
    ld hl, sp+$0d
    adc b
    ld c, a
    inc bc
    and h
    dec c
    ld b, b
    inc h
    dec [hl]
    dec c
    rrca
    jr nz, jr_006_473e

    inc b
    cp a
    dec b
    ld [bc], a

jr_006_473e:
    inc bc
    and h
    ld c, l
    ld b, [hl]
    add hl, bc
    ld [bc], a
    dec c
    ld e, b
    ld b, a
    jr z, jr_006_474e

    ld [bc], a
    dec c
    ld e, b
    ld b, a
    ret c

jr_006_474e:
    dec b
    ld [bc], a
    ld a, [bc]
    dec c
    ld e, b
    ld b, a
    jr z, jr_006_475b

    ld [bc], a
    ld d, $0a
    inc bc
    ld h, d

jr_006_475b:
    ld l, $15
    add [hl]
    ld [hl], a
    ret


    dec c
    pop de
    rra
    ld bc, $1910
    inc hl
    inc b
    add hl, de
    jr z, jr_006_476f

    add hl, de
    inc h
    inc b
    add hl, de

jr_006_476f:
    add hl, hl
    ld [$e60d], sp
    ld [hl+], a
    rrc l
    dec c
    and $22
    rrc [hl]
    add hl, de
    ld a, [de]
    ld [$0d16], sp
    ld b, c
    ld e, d
    dec c
    pop de
    rra
    xor $f5
    rrca
    ld c, e
    nop
    rrca
    ld c, d
    dec b
    dec c
    rrca
    jr nz, jr_006_4799

    ld [$0d08], sp
    reti


    ld c, a
    ld d, c
    ld b, c
    dec c

jr_006_4799:
    jp z, Jump_006_5520

    ld b, c
    inc bc
    xor l
    ld c, l
    ld b, [hl]
    add hl, de
    jr jr_006_47ac

    jr jr_006_47a9

    or e
    ld c, l
    ld b, [hl]

jr_006_47a9:
    add hl, bc
    inc bc
    add hl, de

jr_006_47ac:
    dec hl
    ld [bc], a
    add hl, de
    jr jr_006_47b3

    ld a, [bc]
    add hl, de

jr_006_47b3:
    dec hl
    ld [bc], a
    dec c
    reti


    ld c, a
    ld e, b
    ld b, c
    ld [$ff40], sp
    inc bc
    or b
    ld c, l
    ld b, [hl]
    dec b
    ld [$b903], sp
    ld c, l
    ld b, [hl]
    daa
    dec c
    db $ed
    ld c, a
    add hl, hl
    jr nz, jr_006_47f8

    jr nz, jr_006_47df

    ld h, $04
    rrca
    ld b, b
    ld [$600f], sp
    nop
    dec c
    dec e
    jr nz, @+$13

    rst $20
    ld b, a
    add hl, de

jr_006_47df:
    ld a, [hl+]
    ld [$2b19], sp
    ld [$ed06], sp
    ld b, a
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$d806], sp
    ld b, a
    dec c
    ld b, c
    ld e, d
    dec c
    pop de
    rra
    ld [de], a
    push af

jr_006_47f8:
    ld b, $87
    ld b, a
    dec c
    ld e, a
    jr nz, jr_006_485b

    ld b, c
    inc bc
    inc e
    ld c, [hl]
    ld b, [hl]
    dec c
    dec e
    jr nz, @+$13

    inc de
    ld c, b
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$0406], sp
    ld c, b
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$0406], sp
    ld c, b
    dec c
    rrca
    jr nz, jr_006_482e

    db $10
    cp a
    inc bc
    ld sp, $464e
    rrca
    ld b, a
    db $10
    add hl, de
    dec bc
    ld bc, $ff19

jr_006_482e:
    ld bc, $2e19
    ld bc, $ff19
    ld bc, $0c19
    ld bc, $ff19
    ld bc, $2f19
    ld bc, $ff19
    ld bc, $0d19
    ld bc, $ff19
    ld bc, $3019
    ld bc, $ff19
    ld bc, $0e19
    ld bc, $ff19
    ld bc, $3119
    ld bc, $ff19
    ld bc, $ee22

jr_006_485b:
    ld c, c
    ld b, $19
    dec bc
    ld [bc], a
    add hl, de
    ld l, $02
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    cpl
    ld [bc], a
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    jr nc, @+$04

    add hl, de
    ld c, $02
    add hl, de
    ld sp, $0d02
    and $22
    rrc c
    add hl, de
    dec bc
    inc bc
    add hl, de
    ld l, $03
    dec c
    and $22
    rrc d
    add hl, de
    inc c
    inc bc
    add hl, de
    cpl
    inc bc
    dec c
    and $22
    rrc e
    add hl, de
    dec c
    inc bc
    add hl, de
    jr nc, jr_006_4899

    dec c
    and $22

jr_006_4899:
    rrc h
    add hl, de
    ld c, $03
    add hl, de
    ld sp, $0303
    ld d, b
    ld c, [hl]
    ld b, [hl]
    rrca
    daa
    rst $38
    dec c
    and $22
    rrc c
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld l, $02
    dec c
    and $22
    rrc d
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    cpl
    ld [bc], a
    dec c
    and $22
    rrc e
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    jr nc, @+$04

    dec c
    and $22
    rrc h
    inc de
    ld bc, $48db
    add hl, de
    ld c, $02
    add hl, de
    ld sp, $0602
    xor b
    ld c, b
    dec c
    ld b, h
    ld b, l
    ld bc, $0e01
    nop
    dec c
    rrca
    jr nz, jr_006_48f6

    stop
    dec c
    sub h
    ld d, b
    inc bc
    ld h, c
    ld c, [hl]
    ld b, [hl]
    dec b
    ld [$3624], sp
    dec c
    ld h, h
    ld d, b

jr_006_48f6:
    nop
    ld [bc], a
    ld [$0200], sp
    dec c
    and $22
    rrc c
    add hl, de
    dec bc
    inc bc
    add hl, de
    ld l, $03
    dec c
    and $22
    rrc d
    add hl, de
    inc c
    inc bc
    add hl, de
    cpl
    inc bc
    dec c
    and $22
    rrc e
    add hl, de
    dec c
    inc bc
    add hl, de
    jr nc, jr_006_491f

    dec c
    and $22

jr_006_491f:
    rrc h
    add hl, de
    ld c, $03
    add hl, de
    ld sp, $0803
    nop
    nop
    dec c
    and $22
    rrc c
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld l, $02
    dec c
    and $22
    rrc d
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    cpl
    ld [bc], a
    dec c
    and $22
    rrc e
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    jr nc, @+$04

    dec c
    and $22
    rrc h
    add hl, de
    ld c, $02
    add hl, de
    ld sp, $2402
    ld de, $0f0d
    jr nz, jr_006_4968

    inc c
    ccf
    inc b
    add e
    ld [hl], a
    dec bc
    rrca
    ld b, [hl]
    nop
    add hl, de
    nop
    ld [bc], a

jr_006_4968:
    rrca
    ld b, a
    db $10
    add hl, de
    ld bc, $0f02
    ld b, a
    nop
    add hl, de
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    inc bc
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    inc b
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    ld b, $02
    rrca
    ld b, a
    db $10
    add hl, de
    rlca
    ld [bc], a
    jr jr_006_49ad

    nop
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    ld bc, $0f02
    ld b, a
    nop
    add hl, de
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    inc bc
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    inc b

jr_006_49ad:
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    ld b, $02
    rrca
    ld b, a
    db $10
    add hl, de
    rlca
    ld [bc], a
    add hl, de
    nop
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    ld bc, $0f02
    ld b, a
    nop
    add hl, de
    ld [bc], a
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    inc bc
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    inc b
    ld [bc], a
    rrca
    ld b, a
    db $10
    add hl, de
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    add hl, de
    ld b, $02
    rrca
    ld b, a
    db $10
    add hl, de
    rlca
    ld [bc], a
    ld d, $09
    ld [$470f], sp
    db $10
    dec b
    ld bc, $470f
    nop
    dec b
    ld bc, $000a
    rrca
    ld b, a
    nop
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld l, $02
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    cpl
    ld [bc], a
    add hl, de
    dec c
    ld [bc], a
    add hl, de
    jr nc, @+$04

    add hl, de
    ld c, $02
    add hl, de
    ld sp, $1902
    dec bc
    ld bc, $2e19
    ld bc, $0c19
    ld bc, $2f19
    ld bc, $0d19
    ld bc, $3019
    ld bc, $0e19
    ld bc, $3119
    ld bc, $0b19
    ld bc, $0c19
    ld bc, $0d19
    ld bc, $0e19
    ld bc, $0b19
    ld bc, $0c19
    ld bc, $0d19
    ld bc, $0e19
    ld bc, $0205
    add hl, de
    ld bc, $1902
    ld c, $02
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld c, $02
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    ld b, $78
    ld d, [hl]
    rrca
    ld b, a
    db $10
    add hl, bc
    inc b
    add hl, de
    ld sp, $1901
    rst $38
    ld bc, $160a
    rrca
    ld b, a
    db $10
    add hl, bc
    inc b
    add hl, de
    jr nc, jr_006_4a74

    add hl, de

jr_006_4a74:
    rst $38
    ld bc, $160a
    rrca
    ld b, a
    db $10
    add hl, bc
    inc b
    add hl, de
    ld l, $01
    add hl, de
    rst $38
    ld bc, $160a
    rrca
    ld b, a
    db $10
    add hl, bc
    inc b
    add hl, de
    cpl
    ld bc, $ff19
    ld bc, $160a
    dec c
    pop de
    rra
    rst $30
    rst $30
    ld h, $40
    cp $0d
    ld [hl-], a
    db $10
    ld c, $08
    ld b, b
    cp $2a
    ld c, $0d
    rrca
    jr nz, @+$06

    inc b
    nop
    ld bc, $0337
    ld l, d
    ld c, [hl]
    ld b, [hl]
    nop
    dec c
    pop de
    rra
    rst $30
    add hl, bc
    ld h, $40
    cp $0d
    ld [hl-], a
    db $10
    ld c, $08
    ret nz

    ld bc, $f22a
    ld b, $a3
    ld c, d
    dec c
    pop de
    rra
    add hl, bc
    rst $30
    ld h, $c0
    ld bc, $320d
    db $10
    ldh a, [c]
    ld [$fe40], sp
    ld a, [hl+]
    ld c, $06
    and e
    ld c, d
    dec c
    pop de
    rra
    add hl, bc
    add hl, bc
    ld h, $c0
    ld bc, $320d
    db $10
    ldh a, [c]
    ld [$01c0], sp
    ld a, [hl+]
    ldh a, [c]
    ld b, $a3
    ld c, d
    dec de
    ld c, [hl]
    ld b, e
    dec b
    add hl, de
    jr nz, jr_006_4af7

    add hl, de
    ld hl, $1904

jr_006_4af7:
    ld [hl+], a
    ld [$2519], sp
    ld [$2619], sp
    ld [$2719], sp
    ld [$e60d], sp
    ld [hl+], a
    rl h
    ld d, $0d
    ld b, c
    ld e, d
    rrca
    ld c, e
    nop
    rrca
    ld c, d
    dec b
    dec c
    pop de
    rra
    nop
    db $e4
    dec c
    rrca
    jr nz, jr_006_4b22

    ld [$0808], sp
    ldh [rIE], a
    ld a, [hl+]
    inc b
    inc bc

jr_006_4b22:
    xor l
    ld c, l
    ld b, [hl]
    add hl, de
    jr jr_006_4b30

    jr jr_006_4b2d

    or e
    ld c, l
    ld b, [hl]

jr_006_4b2d:
    add hl, bc
    inc bc
    add hl, de

jr_006_4b30:
    dec hl
    ld [bc], a
    add hl, de
    jr jr_006_4b37

    ld a, [bc]
    add hl, de

jr_006_4b37:
    dec hl
    ld [bc], a
    dec c
    sub h
    ld d, b
    ld h, $c0
    nop
    ld a, [hl+]
    ld [$0008], sp
    rst $38
    rrca
    ld h, $20
    inc bc
    adc b
    ld c, [hl]
    ld b, [hl]
    rrca
    ld h, b
    nop
    dec c
    dec e
    jr nz, @+$13

    ld e, l
    ld c, e
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$6306], sp
    ld c, e
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$4e06], sp
    ld c, e
    dec c
    pop de
    rra
    ei
    ld a, [$5204]
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    inc b
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    inc b
    ld d, $0d
    pop de
    rra
    db $fd
    or $06
    ld l, e
    ld c, e
    dec c
    pop de
    rra
    inc bc
    ld hl, sp+$06
    ld l, e
    ld c, e
    dec c
    pop de
    rra
    dec b
    ld a, [$6b06]
    ld c, e
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $06
    ld bc, $45ce
    jp Jump_000_0846


    call Call_006_5017
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $06
    ld bc, $45e6
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $10
    jr c, jr_006_4bcd

    cp $91
    jr c, jr_006_4bd8

jr_006_4bcd:
    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $4b
    inc l
    ld [hl], $d8

jr_006_4bd8:
    ld bc, $4000
    call Call_000_233c
    jr nc, jr_006_4be8

    ld e, $06
    ld bc, $45ce
    jp Jump_000_0846


jr_006_4be8:
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_4bf1

    dec a
    ld [de], a
    ret


jr_006_4bf1:
    ld a, $06
    ld [de], a
    ld e, $27
    ld a, [de]
    ld e, $cb
    call Call_000_2319
    ld e, $40
    ld a, [de]
    cp $05
    jr z, jr_006_4c0d

    inc a
    ld [de], a
    cp $03
    ret nz

    ld h, d
    ld l, $27
    inc [hl]
    ret


jr_006_4c0d:
    ld e, $27
    ld a, [de]
    cp $05
    jr nz, jr_006_4c20

    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $4c
    inc l
    ld [hl], $2c
    ret


jr_006_4c20:
    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $4b
    inc l
    ld [hl], $97
    ret


    ld bc, $4000
    call Call_000_233c
    jr c, jr_006_4c47

    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_4c3d

    dec a
    ld [de], a
    ret


jr_006_4c3d:
    ld a, $06
    ld [de], a
    ld a, $06
    ld e, $cb
    jp Jump_000_2319


jr_006_4c47:
    ld e, $06
    ld bc, $45ce
    jp Jump_000_0846


    call Call_006_5017
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $06
    ld bc, $45e6
    jp Jump_000_0846


    call Call_006_5017
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_006_4ca8

    ld b, $00
    ld h, d
    ld e, $04
    ld l, $40
    ld a, [de]
    cp [hl]
    jr nz, jr_006_4c8a

    inc b
    ld e, $0d
    xor a
    ld [de], a
    inc e
    ld [de], a

jr_006_4c8a:
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    cp $18
    ret nc

    ld e, $0f
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $12
    ld [de], a
    ld a, b
    or a
    ret z

    ld e, $06
    ld bc, $434e
    jp Jump_000_0846


jr_006_4ca8:
    ld e, $06
    ld bc, $45e6
    jp Jump_000_0846


    call Call_006_5017
    call Call_000_1ed3
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    ret nc

    ld e, $06
    ld bc, $45e6
    jp Jump_000_0846


    call Call_006_5017
    call Call_000_1ee6
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4000
    call Call_000_233c
    jr c, jr_006_4cf1

    ld e, $07
    ld a, [de]
    ld hl, $db53
    sub [hl]
    cp $70
    ret c

    ld e, $06
    ld bc, $45bc
    jp Jump_000_0846


jr_006_4cf1:
    ld e, $06
    ld bc, $45e6
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    call Call_000_1a25
    bit 7, a
    jr z, jr_006_4d14

    ld e, $06
    ld bc, $4668
    jp Jump_000_0846


Call_006_4d14:
jr_006_4d14:
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_4d1c

    dec a
    ld [de], a

jr_006_4d1c:
    ld a, $08
    ld [de], a
    call Call_000_0647
    and $03
    add $15
    ld e, $cb
    jp Jump_000_2319


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    call Call_000_255b
    call Call_000_1a25
    bit 7, a
    jr nz, jr_006_4d51

    call Call_006_4d14
    ld e, $04
    ld a, [de]
    ld h, d
    ld l, $40
    cp [hl]
    ret nz

    ld e, $06
    ld bc, $4686
    jp Jump_000_0846


jr_006_4d51:
    ld h, d
    ld l, $3f
    dec [hl]
    jr nz, jr_006_4d69

    xor a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $4d
    inc l
    ld [hl], $7c
    ret


jr_006_4d69:
    ld a, [hl]
    ld hl, $40d4
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_006_4d76

    inc h

jr_006_4d76:
    call Call_000_20f9
    jp Jump_000_20be


    call Call_000_0da4
    call Call_006_4d14
    ld bc, $4000
    call Call_000_255b
    ld e, $04
    ld a, [de]
    ld h, d
    ld l, $40
    cp [hl]
    ret nz

    ld e, $06
    ld bc, $4686
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $4000
    jp Jump_000_255b


    call Call_000_0da4
    ld bc, $40e3
    jp Jump_000_255b


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $40ff
    jp Jump_000_255b


    call Call_000_21d8
    call Call_000_21c5
    call Call_000_0da4
    ld bc, $40ff
    call Call_000_255b
    ret c

    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld [hl], $04
    ld l, $40
    dec [hl]
    jr nz, jr_006_4ddd

    ld e, $06
    ld bc, $47fb
    jp Jump_000_0846


jr_006_4ddd:
    call Call_000_203d
    ld e, $3c
    ld a, [de]
    jr nc, jr_006_4dea

    rlca
    jr nc, jr_006_4e00

    jr jr_006_4ded

jr_006_4dea:
    rlca
    jr c, jr_006_4e00

jr_006_4ded:
    ld e, $3b
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

jr_006_4e00:
    call Call_000_202b
    ld e, $3a
    ld a, [de]
    jr nc, jr_006_4e0c

    rlca
    ret nc

    jr jr_006_4e0e

jr_006_4e0c:
    rlca
    ret c

jr_006_4e0e:
    ld e, $39
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


    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d70
    call Call_000_0da4
    ld bc, $40ff
    jp Jump_000_255b


Call_006_4e31:
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $04
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld l, $07
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld l, $47
    ld e, l
    ld a, [hl]
    ld [de], a
    ld bc, $40f1
    jp Jump_000_255b


    call Call_006_4e31
    ld e, $27
    ld a, [de]
    cp $01
    ret nz

    ld e, $06
    ld bc, $48e2
    jp Jump_000_0846


    call Call_000_0da4
    ld bc, $410d
    jp Jump_000_255b


    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $411b
    call Call_000_255b
    ret c

    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ret nz

    ld e, $06
    ld bc, $4aec
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $40ff
    call Call_000_255b
    ret c

    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld [hl], $20
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    ld e, $27
    ld [de], a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    push bc
    call Call_000_0647
    ld c, $00
    ld b, a

jr_006_4ecb:
    ld a, [hl+]
    or a
    jr z, jr_006_4ed5

    cp b
    jr nc, jr_006_4ed5

    inc c
    jr jr_006_4ecb

jr_006_4ed5:
    ld a, c
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
    ld e, $27
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_006_4eea

    inc h

jr_006_4eea:
    ld e, $04
    ld a, [$db51]
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [$db52]
    adc [hl]
    ld [de], a
    ret


    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [de]
    add l
    ld l, a
    jr nc, jr_006_4f08

    inc h

jr_006_4f08:
    ld a, [hl]
    ld e, $24
    ld [de], a
    ret


    push bc
    ld h, $a0
    ld e, $04
    ld l, e
    ld a, [de]
    sub [hl]
    ld b, a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    jr nc, jr_006_4f20

    ld a, b
    cpl
    inc a
    ld b, a

jr_006_4f20:
    ld e, $07
    ld l, e
    ld a, [de]
    sub $08
    sub [hl]
    ld c, a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    jr nc, jr_006_4f32

    ld a, c
    cpl
    inc a
    ld c, a

jr_006_4f32:
    ld a, b
    sra a
    cp c
    jr c, jr_006_4f3c

    ld a, $1b
    jr jr_006_4f4f

jr_006_4f3c:
    ld a, b
    or a
    jr z, jr_006_4f4d

    ld a, c
    call Call_006_4f79
    ld a, c
    cp $05
    jr nc, jr_006_4f4d

    ld a, $1c
    jr jr_006_4f4f

jr_006_4f4d:
    ld a, $1d

jr_006_4f4f:
    ld e, $15
    ld [de], a
    pop bc
    ret


    ld e, $15
    ld a, [de]
    cp $1f
    jr z, jr_006_4f5e

    inc a
    ld [de], a
    xor a

jr_006_4f5e:
    ld a, $01
    ld e, $27
    ld [de], a
    ret


    ld e, $04

Jump_006_4f66:
    ld a, [bc]
    inc bc
    ld l, a
    rla
    sbc a
    ld h, a
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    ret


    ld e, $07
    jp Jump_006_4f66


Call_006_4f79:
    ld c, $00

jr_006_4f7b:
    sub b
    jr c, jr_006_4f81

    inc c
    jr jr_006_4f7b

jr_006_4f81:
    add b
    srl b
    sbc b
    ret c

    inc c
    ret


    ld e, $5b
    ld a, [de]

Call_006_4f8b:
    ld hl, $4129
    ld e, a
    rlca
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_006_4f97

    inc h

jr_006_4f97:
    call Call_000_20f9
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $15
    ld a, [hl]
    ld [de], a
    ret


    ld e, $04
    ld a, [de]
    ld e, $40
    ld hl, $db51
    sub [hl]
    cp $50
    jr c, jr_006_4fbb

    ld a, $88
    add [hl]
    ld [de], a
    ld a, $40
    jr jr_006_4fc1

jr_006_4fbb:
    ld a, $18
    add [hl]
    ld [de], a
    ld a, $c0

jr_006_4fc1:
    ld e, $45
    ld [de], a
    ret


    ld hl, $404d
    ld e, $41
    ld a, [de]
    rlca
    add l
    ld l, a
    jr nc, jr_006_4fd1

    inc h

jr_006_4fd1:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    inc e
    ld [de], a
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5b
    ld a, [de]
    sub $0d
    rlca
    add l
    ld l, a
    jr nc, jr_006_4fea

    inc h

jr_006_4fea:
    jp Jump_000_20f9


    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_006_4ff8

    ld hl, $0100
    jr jr_006_4ffb

jr_006_4ff8:
    ld hl, $ff00

jr_006_4ffb:
    ld e, $3b
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    call Call_000_202b
    jr nc, jr_006_500c

    ld hl, $0100
    jr jr_006_500f

jr_006_500c:
    ld hl, $ff00

jr_006_500f:
    ld e, $39
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


Call_006_5017:
    call Call_000_1ec0
    call Call_000_202b
    jr nc, jr_006_5023

    ld a, $07
    jr jr_006_5025

jr_006_5023:
    ld a, $0a

jr_006_5025:
    ld e, $15
    ld [de], a
    ret


    call Call_000_0647
    ld hl, $4059
    and $07
    rlca
    add l
    ld l, a
    jr nc, jr_006_5037

    inc h

jr_006_5037:
    ld a, [hl+]
    ld h, [hl]
    ld e, $3d
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    cp $80
    jr nz, jr_006_5059

    ld e, a
    call Call_000_0647
    cp e
    jr c, jr_006_5057

    inc hl
    ld a, [hl+]
    jr jr_006_5059

jr_006_5057:
    ld a, [hl+]
    inc hl

jr_006_5059:
    ld e, $27
    ld [de], a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld e, $42
    ld a, [de]
    rlca
    ld e, $0d
    jr c, jr_006_5074

    ld a, [bc]
    ld [de], a
    inc bc
    inc e
    ld a, [bc]
    ld [de], a
    inc bc
    ret


jr_006_5074:
    ld a, [bc]
    cpl
    add $01
    ld [de], a
    inc bc
    inc e
    ld a, [bc]
    cpl
    adc $00
    ld [de], a
    inc bc
    ret


    ld e, $42
    ld a, [de]
    rlca
    ld e, $11
    jr c, jr_006_508e

    ld a, [bc]
    ld [de], a
    inc bc
    ret


jr_006_508e:
    ld a, [bc]
    cpl
    inc a
    ld [de], a
    inc bc
    ret


    ld e, $04
    ld a, [de]
    ld e, $40
    ld hl, $db51
    sub [hl]
    cp $50
    jr nc, jr_006_50a9

    ld a, $88
    add [hl]
    ld [de], a
    ld a, $40
    jr jr_006_50af

jr_006_50a9:
    ld a, $18
    add [hl]
    ld [de], a
    ld a, $c0

jr_006_50af:
    ld e, $45
    ld [de], a
    ld e, $42
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $27
    ld a, [bc]
    inc bc
    ld [hl], a
    ret


    call Call_000_0647
    and $07
    ld e, a
    rlca
    add e
    ld hl, $40b1
    add l
    ld l, a
    jr nc, jr_006_50d0

    inc h

jr_006_50d0:
    call Call_000_20f9
    ld e, $45
    ld a, [de]
    rlca
    ld e, $41
    jr c, jr_006_50de

    ld a, [hl]
    ld [de], a
    ret


jr_006_50de:
    ld a, [hl]
    cpl
    inc a
    ld [de], a
    ret


    push bc
    ld e, $48
    ld a, [de]
    cp $a8
    jr c, jr_006_50fd

    cp $b2
    jr nc, jr_006_50fd

    ld h, a
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_006_50fd

    call Call_000_0bba
    ldh a, [$ff9a]
    ld d, a

jr_006_50fd:
    pop bc
    ret


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    call Call_000_20f9
    jp Jump_000_20be


    rrca
    ld c, e
    dec d
    rrca
    ld c, d
    nop
    dec c
    rrca
    jr nz, jr_006_5121

    inc c
    dec l
    rrca
    ld e, h
    nop
    rrca
    ld e, e
    ld bc, $4c0f
    ld d, b
    dec c

jr_006_5121:
    ld e, a
    ld [hl+], a
    dec c
    ld [hl], d
    ld [hl+], a
    jr @+$2b

    nop
    ld a, [hl+]
    nop
    dec c
    inc a
    ld d, c
    ld l, l
    ld b, c
    dec c
    ld c, b
    ld d, c
    ld c, $03
    ld h, e
    ld d, c
    call nc, Call_000_2a51
    ld d, d
    ld d, $0a
    ld l, a
    inc bc
    ld a, [bc]
    inc bc
    ld e, $3e
    ld [de], a
    dec e
    ld a, l
    ld [de], a
    ret


    ld e, $3d
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_006_5158

    ld hl, $416d
    ld a, [hl+]

jr_006_5158:
    ld e, $27
    ld [de], a
    ld e, $3d
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    jr z, jr_006_5178

    add b
    ld l, [hl]
    ld d, c
    dec bc
    cp e
    ld d, d
    ld b, $71
    ld d, c
    dec bc
    and [hl]
    ld d, d
    dec bc
    ldh [c], a
    ld d, d
    dec bc
    dec c
    ld d, h
    db $10

jr_006_5178:
    ld c, h
    inc de
    add hl, hl
    adc c
    ld d, c
    inc d
    dec a
    sub c
    ld d, c
    jr z, jr_006_5196

    add b
    adc [hl]
    ld d, c
    ld b, $91
    ld d, c
    jr z, @+$16

    ret nz

    sub c
    ld d, c
    dec bc
    scf
    ld d, h
    dec bc
    ld a, h
    ld d, h
    db $10
    ld c, h

jr_006_5196:
    inc de
    add hl, hl
    and e
    ld d, c
    inc d
    dec a
    xor c
    ld d, c
    jr z, @+$16

    add b
    xor c
    ld d, c
    dec bc
    ld l, l
    ld d, e
    ld b, $ac
    ld d, c
    dec bc
    ldh [c], a
    ld d, d
    jr z, jr_006_51c1

    add b
    or h
    ld d, c
    dec bc
    call z, Call_000_0b53
    or l
    ld d, l
    dec bc
    ld l, l
    ld d, e
    dec bc
    inc bc
    ld d, l
    dec bc
    ld a, h
    ld d, h
    dec bc

jr_006_51c1:
    ld l, l
    ld d, e
    dec bc
    dec c
    ld d, h
    dec bc
    ld a, h
    ld d, h
    jr z, jr_006_51de

    add b
    jr nc, jr_006_521f

    dec bc
    sub [hl]
    ld d, d
    ld b, $30
    ld d, c
    db $10
    ld c, h
    inc d
    inc sp
    rst $18
    ld d, c
    jr z, jr_006_51ef

    add b
    ldh [c], a

jr_006_51de:
    ld d, c
    dec bc
    cp e
    ld d, d
    dec bc
    sub [hl]
    ld d, d
    dec bc
    nop
    ld d, l
    jr z, jr_006_51fd

    ret nz

    ldh a, [rHDMA1]
    dec bc
    cp b

jr_006_51ef:
    ld d, l
    dec bc
    ld a, h
    ld d, h
    dec bc
    sub [hl]
    ld d, d
    dec bc
    nop
    ld d, l
    dec bc
    cp b
    ld d, l
    dec bc

jr_006_51fd:
    ld a, h
    ld d, h
    dec bc
    sub [hl]
    ld d, d
    dec bc
    nop
    ld d, l
    jr z, @+$15

    add b
    dec c
    ld d, d
    dec bc
    cp b
    ld d, l
    dec bc
    ld a, h
    ld d, h
    dec c
    ld d, l
    ld d, e
    ld de, $5224
    dec bc
    db $d3
    ld d, e
    jr z, jr_006_522f

    add b
    inc h
    ld d, d
    dec bc

jr_006_521f:
    dec c
    ld d, h
    dec bc
    ld a, h
    ld d, h
    dec bc
    ldh [c], a
    ld d, d
    ld b, $30
    ld d, c
    dec c
    ld d, l
    ld d, e
    ld [de], a
    ld b, c

jr_006_522f:
    ld d, d
    jr z, jr_006_5245

    add b
    dec sp
    ld d, d
    dec bc
    cp e
    ld d, d
    ld b, $3e
    ld d, d
    dec bc
    and [hl]
    ld d, d
    ld b, $44
    ld d, d
    dec bc
    sbc [hl]
    ld d, d
    dec bc

jr_006_5245:
    or l
    ld d, l
    dec bc
    ld a, h
    ld d, h
    dec bc
    ld l, l
    ld d, e
    jr z, jr_006_5262

    add b
    ld d, l
    ld d, d
    dec bc
    inc bc
    ld d, l
    dec bc
    ld a, h
    ld d, h
    dec bc
    ld l, l
    ld d, e
    dec bc
    or l
    ld d, l
    jr z, jr_006_5273

    add b
    ld h, [hl]

jr_006_5262:
    ld d, d
    dec bc
    inc bc
    ld d, l
    dec bc
    ld a, h
    ld d, h
    dec bc
    xor c
    ld d, e
    jr z, jr_006_5281

    add b
    ld a, a
    ld d, d
    dec bc
    or l

jr_006_5273:
    ld d, l
    jr z, jr_006_5289

    add b
    add a
    ld d, d
    dec bc
    inc bc
    ld d, l
    ld b, $87
    ld d, d
    jr z, @+$15

jr_006_5281:
    add b
    adc l
    ld d, d
    dec bc
    nop
    ld d, l
    dec bc
    scf

jr_006_5289:
    ld d, h
    ld b, $90
    ld d, d
    dec bc
    dec c
    ld d, h
    dec bc
    ld a, h
    ld d, h
    ld b, $30
    ld d, c
    jr z, jr_006_52ab

    ret nz

    db $d3
    ld d, e
    ld b, $cc
    ld d, e
    jr z, @+$15

    ld b, b
    db $d3
    ld d, e
    ld b, $cc
    ld d, e
    rlca
    nop
    nop
    add hl, hl
    nop

jr_006_52ab:
    ld [$0100], sp
    ld a, [hl+]
    ldh [$ff03], a
    jp z, Jump_006_4652

    dec b
    db $10
    ld a, [hl+]
    jr nz, @+$07

    db $10
    inc c
    ld [hl+], a
    jp nz, Jump_000_0652

    ld b, $a6
    ld d, d
    dec b
    ld [$e60d], sp
    ld [hl+], a
    rr d
    nop

Jump_006_52ca:
    call Call_000_1ed3
    call Call_000_0da4
    call $56cd
    ld bc, $415f
    call Call_000_233c
    ret nc

    ld e, $06
    ld bc, $560c
    jp Jump_000_0846


    dec c
    ld d, l
    ld d, e
    ld [de], a
    ld a, [bc]
    ld d, e
    ld [hl+], a
    dec bc
    ld d, e
    ld b, $03
    ld [hl+], a
    ld d, e
    ld b, [hl]
    ld [$0100], sp
    add hl, bc
    ld [bc], a
    ld a, [hl+]
    ldh a, [rTIMA]
    db $10
    jr z, jr_006_530f

    ld b, b
    inc bc
    ld d, e
    dec c
    and $22
    rr d
    dec b
    db $10
    ld a, [hl+]
    db $10
    dec b
    jr nz, jr_006_5314

    inc c
    dec c
    sub h
    ld d, b
    rlca

jr_006_530f:
    nop
    nop
    dec c
    add d
    ld d, b

jr_006_5314:
    db $10
    dec b
    db $10
    add hl, hl
    nop
    dec b
    ld h, b
    dec c
    add d
    ld d, b
    ldh a, [rTIMA]
    stop

Jump_006_5322:
    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    jr z, jr_006_534f

    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    cp $18
    jr c, jr_006_5340

    cp $88
    jr c, jr_006_534f

    ld e, $0e
    ld a, [de]
    rlca
    jr c, jr_006_534f

    jr jr_006_5346

jr_006_5340:
    ld e, $0e
    ld a, [de]
    rlca
    jr nc, jr_006_534f

jr_006_5346:
    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ld e, $11
    ld [de], a

jr_006_534f:
    call Call_000_1ee6
    jp Jump_006_52ca


    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    cp $48
    jr c, jr_006_5368

    cp $58
    jr nc, jr_006_5368

    ld a, $01
    jr jr_006_5369

jr_006_5368:
    xor a

jr_006_5369:
    ld e, $27
    ld [de], a
    ret


    dec c
    ld d, l
    ld d, e
    ld [de], a
    xor b
    ld d, e
    inc bc
    ld [hl+], a
    ld d, e
    ld b, [hl]
    ld [$0240], sp
    ld a, [hl+]
    db $f4
    dec c
    sub h
    ld d, b
    rlca
    nop
    nop
    dec c
    add d
    ld d, b
    db $10
    dec b
    db $10
    add hl, hl
    nop
    dec c
    ld h, h
    ld d, b
    add b
    ld bc, $4005
    dec c
    ld h, h
    ld d, b
    nop
    ld bc, $820d
    ld d, b
    ldh a, [rTIMA]
    db $10
    rlca
    nop
    nop
    add hl, hl
    nop
    ld [$fe80], sp
    ld a, [hl+]
    jr nc, jr_006_53ac

    db $10
    inc c
    inc bc
    ld [hl+], a
    ld d, e

jr_006_53ac:
    ld b, [hl]
    ld [$0180], sp
    ld a, [hl+]
    db $f4
    rlca
    nop
    nop
    dec c
    add d
    ld d, b
    db $10
    dec b
    db $10
    add hl, hl
    nop
    dec b
    jr nc, jr_006_53c7

    nop
    nop
    add hl, hl
    nop
    ld [$ff00], sp

jr_006_53c7:
    ld a, [hl+]
    jr nz, @+$07

    db $10
    inc c
    daa
    dec c
    jp c, Jump_000_0653

    xor c
    ld d, e
    daa
    dec c
    inc b
    ld d, h
    ld b, $a9
    ld d, e

Jump_006_53da:
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $20
    jr c, jr_006_53f9

    cp $80
    jr c, jr_006_53f2

    ld e, $45
    ld a, [de]
    rlca
    jr c, jr_006_53f2

    cpl
    inc a
    ld [de], a

jr_006_53f2:
    ld e, $45
    ld a, [de]
    ld e, $42
    ld [de], a
    ret


jr_006_53f9:
    ld e, $45
    ld a, [de]
    rlca
    jr nc, jr_006_53f2

    cpl
    inc a
    ld [de], a
    jr jr_006_53f2

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    jp Jump_006_53da


    inc bc
    ld [hl+], a
    ld d, e
    ld b, [hl]
    dec c
    ld d, l
    ld d, e
    ld [de], a
    jr nz, jr_006_546b

    dec c
    sub h
    ld d, b
    dec bc
    xor c
    ld d, e
    ld b, $23
    ld d, h
    dec c
    reti


    ld d, h
    jr jr_006_544f

    nop
    dec c
    add d
    ld d, b
    db $10
    dec b
    db $10
    add hl, hl
    nop
    dec c
    ld h, h
    ld d, b
    add b
    ld bc, $082a
    dec b
    jr nz, jr_006_545a

    dec bc
    ld d, e
    ld b, $03
    xor [hl]
    ld d, h
    ld b, [hl]
    rrca
    ld h, $10
    rrca
    ccf
    nop
    dec c
    sub e
    inc hl
    ld b, $94
    ld d, [hl]
    ld [$0080], sp
    add hl, bc

jr_006_544f:
    ld [bc], a
    ld a, [hl+]
    ld hl, sp+$05
    jr nz, @+$2c

    ld [$2005], sp
    ld a, [bc]
    rrca

jr_006_545a:
    ld b, a
    nop
    dec c
    sub e
    inc hl
    ld b, $78
    ld d, [hl]
    inc bc
    ld [hl+], a
    ld d, e
    ld b, [hl]
    rlca
    nop
    nop
    add hl, hl
    nop

jr_006_546b:
    ld [$ff80], sp
    ld a, [hl+]
    ld [$2005], sp
    db $10
    ld c, h
    inc d
    add hl, hl
    ld a, e
    ld d, h
    ld b, $03
    ld d, l
    inc c
    inc bc
    jp z, Jump_006_4652

    rlca
    nop
    nop
    ld a, [hl+]
    ldh a, [$ff08]
    nop
    ld bc, $2005
    ld a, [hl+]
    nop
    dec c
    sbc h
    ld d, h
    ld [de], a
    sub a
    ld d, h
    dec b
    ld bc, $8c06
    ld d, h
    ld a, [hl+]
    db $10
    dec b
    jr nz, @+$0e

    ld e, $07
    ld a, [de]
    ld hl, $db53
    sub [hl]
    cp $2d
    ld a, $00
    jr nc, jr_006_54aa

    inc a

jr_006_54aa:
    ld e, $27
    ld [de], a
    ret


    ld e, $3f
    ld a, [de]
    or a
    jr z, jr_006_54b8

    dec a
    ld [de], a
    jr jr_006_54c1

jr_006_54b8:
    ld a, $02
    ld [de], a
    ld e, $47
    ld a, [de]
    xor $10
    ld [de], a

jr_006_54c1:
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_54cc

    dec a
    ld [de], a
    jp Jump_006_5322


jr_006_54cc:
    ld a, $08
    ld [de], a
    ld a, $1b
    ld e, $cb
    call Call_000_2319
    jp Jump_006_5322


    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    cp $20
    jr nc, jr_006_54eb

    ld e, $45
    ld a, $40
    ld [de], a
    jr jr_006_54fc

jr_006_54eb:
    cp $80
    jr c, jr_006_54f6

    ld e, $45
    ld a, $c0
    ld [de], a
    jr jr_006_54fc

jr_006_54f6:
    call Call_000_1ec0
    ld e, $45
    ld a, [de]

jr_006_54fc:
    ld e, $42
    ld [de], a
    ret


    dec bc
    ld a, [hl]
    ld d, l
    jr jr_006_552f

    nop
    inc bc
    jp z, Jump_006_4652

    dec c
    sub e
    inc hl
    ld b, $94
    ld d, [hl]
    add hl, bc
    inc c
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    dec c
    ld c, h
    ld d, l

Jump_006_5520:
    rrca
    daa
    inc e
    add hl, bc
    rlca
    dec c
    and l
    ld d, l
    dec b
    inc b
    dec c
    and l
    ld d, l
    dec b
    inc b

jr_006_552f:
    dec c
    and l
    ld d, l
    dec b
    inc b
    add hl, bc
    dec b
    rrca
    ld b, a
    db $10
    dec b
    ld [bc], a
    rrca
    ld b, a
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    dec c
    or b
    ld d, l
    ld a, [bc]
    dec c
    sub e
    inc hl
    ld b, $78
    ld d, [hl]
    inc c
    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    ld l, $01
    cp $40
    jr c, jr_006_5563

    cp $60
    jr nc, jr_006_5567

    ld e, $45
    ld a, [de]
    dec l
    jr jr_006_5569

jr_006_5563:
    ld a, $40
    jr jr_006_5569

jr_006_5567:
    ld a, $c0

jr_006_5569:
    ld e, $3a
    ld [de], a
    ld e, $41
    ld a, l
    ld [de], a
    call Call_000_202b
    jr c, jr_006_5578

    xor a
    jr jr_006_557a

jr_006_5578:
    ld a, $01

jr_006_557a:
    ld e, $43
    ld [de], a
    ret


    inc bc
    jp z, Jump_006_4652

    rlca
    nop
    nop
    add hl, hl
    nop
    ld [$0080], sp
    ld a, [hl+]
    ld hl, sp+$05
    jr nz, jr_006_5597

    nop
    rst $38
    ld a, [hl+]
    db $10
    dec b
    jr nz, jr_006_55c0

    nop

jr_006_5597:
    dec b
    db $10
    ld a, [hl+]
    ldh a, [rTIMA]
    jr nz, jr_006_55a6

    add b
    rst $38
    ld a, [hl+]
    ld [$2005], sp
    inc c
    push bc

jr_006_55a6:
    ld e, $27
    ld a, [de]
    ld e, $cb
    call Call_000_2319
    pop bc
    ret


    ld h, d
    ld l, $27
    inc [hl]
    ret


    dec bc
    ld a, [hl]
    ld d, l
    dec c
    ld d, l
    ld d, e
    inc bc
    rst $10
    ld d, l
    ld b, [hl]
    rlca

jr_006_55c0:
    nop
    nop
    ld [$0100], sp
    rrca
    ld h, $08
    rrca
    ccf
    nop
    add hl, bc
    inc b
    ld a, [hl+]
    ret nz

    dec b
    ld [$402a], sp
    dec b
    ld [$0c0a], sp
    ld h, d
    ld l, $26
    dec [hl]
    jp nz, Jump_006_52ca

    ld e, $27
    ld a, [de]
    or a
    jr z, jr_006_55e8

    ld [hl], $04
    jr jr_006_55ea

jr_006_55e8:
    ld [hl], $0c

jr_006_55ea:
    add $25
    ld l, $3f
    add [hl]
    ld e, $cb
    call Call_000_2319
    ld e, $3f
    ld a, [de]
    inc a
    ld [de], a
    cp $02
    jp c, Jump_006_52ca

    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $52
    inc l
    ld [hl], $ca
    jp Jump_006_52ca


    rrca
    ld b, c
    ld bc, $4803
    ld d, [hl]
    ld b, [hl]
    inc e
    ld a, [$047c]
    dec c
    sub e
    inc hl
    ld b, $aa
    ld d, [hl]
    add hl, bc
    inc b
    add hl, de
    inc [hl]
    ld [bc], a
    add hl, de
    ld b, $01
    add hl, de
    dec [hl]
    ld [bc], a
    add hl, de
    ld b, $01
    ld a, [bc]
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    ld b, $04
    add hl, de
    dec b
    inc b
    add hl, de
    inc b
    inc b
    add hl, de
    inc bc
    inc b
    add hl, de
    ld b, $04
    rrca
    ld b, c
    nop
    nop
    ld bc, $415f
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
    ld [hl], $10
    xor a
    ret


    dec c
    db $e3
    ld d, b
    dec c
    ld l, a
    ld d, [hl]
    inc e
    add l
    ld b, a
    inc bc
    dec c
    ld h, a
    inc hl
    ld d, $21
    db $e4
    ld c, h
    ld a, $03
    call Call_000_05cf
    ret


    dec c
    rrca
    jr nz, @+$0e

    inc c
    cp a
    rrca
    daa
    nop
    inc bc
    ld sp, $464e
    add hl, de
    nop
    ld [$0219], sp
    ld [$0119], sp
    ld [$0219], sp
    ld [$8506], sp
    ld d, [hl]
    rrca
    daa
    ld bc, $3103
    ld c, [hl]
    ld b, [hl]
    add hl, de
    nop
    inc b
    add hl, de
    ld [bc], a
    inc b
    add hl, de
    ld bc, $1904
    ld [bc], a
    inc b
    ld b, $9b
    ld d, [hl]
    inc bc
    ld sp, $464e
    add hl, bc
    ld [$ff19], sp
    ld [bc], a
    add hl, de
    ld bc, $0a01
    add hl, bc
    inc b
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld c, $02
    ld a, b
    ld d, [hl]
    sub h
    ld d, [hl]
    ld d, $cd
    ret nz

    ld e, $cd
    dec hl
    jr nz, @+$32

    inc b
    ld a, $03
    jr jr_006_56db

    ld a, $06

jr_006_56db:
    ld e, $15
    ld [de], a
    ret


    rrca
    ld c, e
    nop
    rrca
    ld c, d
    dec b
    inc h
    ld a, [de]
    dec c
    rrca
    jr nz, @+$0a

    ld [$0d00], sp
    pop de
    rra
    nop
    db $10
    ld [$0000], sp
    dec c
    ld e, a
    jr nz, jr_006_5771

    ld b, c
    ld h, $80
    nop
    inc bc
    add hl, de
    ld d, a
    ld b, [hl]
    dec c
    dec e
    jr nz, @+$13

    db $10
    ld d, a
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$1606], sp
    ld d, a
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$0106], sp
    ld d, a
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $40ff
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $06
    ld bc, $5734
    jp Jump_000_0846


    inc bc
    ld l, [hl]
    ld d, a
    ld b, [hl]
    jr @+$2b

    nop
    dec c
    dec e
    jr nz, @+$13

    ld c, d
    ld d, a
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$5006], sp
    ld d, a
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$0d27], sp
    sbc a
    ld hl, $417b
    dec c
    dec e
    jr nz, @+$13

    ld h, l
    ld d, a
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$6b06], sp
    ld d, a
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$5606], sp
    ld d, a
    call Call_000_21c5

jr_006_5771:
    call Call_000_0da4
    ld bc, $40ff
    jp Jump_000_255b


    inc h
    dec [hl]
    dec c
    rrca
    jr nz, @+$06

    inc b
    cp a
    ld [$0400], sp
    dec c
    xor l
    ld d, a
    inc bc
    sub l
    ld d, a
    ld b, [hl]
    add hl, de
    inc de
    ld [bc], a
    add hl, de
    dec sp
    ld [bc], a
    ld b, $8c
    ld d, a
    call Call_000_0da4
    ld bc, $40e3
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $06
    ld bc, $57ba
    jp Jump_000_0846


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $0d
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    jr jr_006_57bf

    call c, Call_006_4657

jr_006_57bf:
    dec c
    and $22
    sra b
    add hl, de
    jr jr_006_57c8

    add hl, de

jr_006_57c8:
    inc d
    ld bc, $1619
    ld [bc], a
    dec c
    and $22
    sra b
    add hl, de
    jr jr_006_57d6

    add hl, de

jr_006_57d6:
    dec d
    ld bc, $1719
    inc b
    ld d, $01
    db $e3
    ld b, b
    jp Jump_000_255b


    dec c
    ld a, [de]
    ld e, b
    db $10
    ld b, e
    ld de, $57f2
    dec c
    pop de
    rra
    nop
    inc c
    ld b, $f7
    ld d, a
    dec c
    pop de
    rra
    nop
    db $f4
    dec c
    add hl, hl
    ld e, b
    dec c
    inc [hl]
    ld e, b
    inc h
    dec [hl]
    dec c
    rrca
    jr nz, jr_006_5807

    inc b
    cp a
    inc bc
    ld a, h

jr_006_5807:
    ld e, b
    ld b, [hl]
    dec b
    ld [bc], a
    dec c
    ld e, b
    ld b, a
    jr z, jr_006_5815

    ld [bc], a
    dec c
    ld e, b
    ld b, a
    ret c

jr_006_5815:
    dec b
    ld [bc], a
    ld b, $0b
    ld e, b
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $43
    ld e, l
    ld a, [hl]
    ld [de], a
    ld l, $41
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $3a
    ld a, [hl]
    ld e, $45
    ld [de], a
    ret


    ld e, $41
    ld a, [de]
    rlca
    ld hl, $586a
    add l
    ld l, a
    jr nc, jr_006_5840

    inc h

jr_006_5840:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $5b
    ld a, [de]
    sub $1c
    add l
    ld l, a
    jr nc, jr_006_584d

    inc h

jr_006_584d:
    ld a, [hl]
    call Call_006_4f8b
    ld e, $43
    ld a, [de]
    or a
    ret z

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
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


    ld l, [hl]
    ld e, b
    ld [hl], l
    ld e, b
    nop
    rlca
    nop
    ld bc, $0302
    inc b
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    call Call_000_0da4
    ld bc, $40e3
    call Call_000_255b
    ret c

    ld bc, $58a7
    call Call_000_24cd
    bit 7, a
    jr nz, jr_006_589f

    bit 5, a
    jr nz, jr_006_5897

    bit 6, a
    ret z

jr_006_5897:
    ld h, d
    call Call_000_0bba
    ldh a, [$ff9a]
    ld [de], a
    ret


jr_006_589f:
    ld e, $06
    ld bc, $57ba
    jp Jump_000_0846


    db $fc
    inc bc
    db $fc
    inc bc
    rrca
    ld c, e
    nop
    rrca
    ld c, d
    dec b
    inc h
    ld a, [de]
    dec c
    rrca
    jr nz, @+$0a

    ld [$0d00], sp
    pop de
    rra
    nop
    db $10
    ld [$0000], sp
    ld a, [hl+]
    db $10
    inc bc
    rst $18
    ld e, b
    ld b, [hl]
    dec c
    dec e
    jr nz, @+$13

    sub $58
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$dc06], sp
    ld e, b
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$c706], sp
    ld e, b
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $40ff
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $06
    ld bc, $58fa
    jp Jump_000_0846


    ld [$0000], sp
    ld a, [hl+]

jr_006_58fe:
    nop
    daa
    ld h, $80
    ld bc, $4303
    ld e, c
    ld b, [hl]
    dec c
    dec e
    jr nz, @+$13

    ld d, $59
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$1c06], sp
    ld e, c
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$5f0d], sp
    jr nz, jr_006_599e

    ld b, c
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    add hl, bc
    inc bc
    dec c
    dec e
    jr nz, @+$13

    ld [hl], $59
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$3c06], sp
    ld e, c
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$2a0a], sp
    nop
    dec de
    ld c, [hl]
    ld b, e
    dec b
    ld h, d
    ld l, $12
    ld e, [hl]
    ld l, $39
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_000_0d70
    call Call_000_0da4
    ld bc, $40ff
    jp Jump_000_255b


    inc h
    ld a, [de]
    daa
    ld h, $60
    nop
    ld b, $65
    ld e, c
    daa
    ld h, $a0
    rst $38
    rrca
    ld c, e
    nop
    rrca
    ld c, d
    dec b
    dec c
    rrca
    jr nz, jr_006_5977

    ld [$0d00], sp
    pop de
    rra
    nop
    ldh a, [$ff08]

jr_006_5977:
    nop
    cp $0d
    ld e, a
    jr nz, jr_006_58fe

    ld b, c
    inc bc
    sbc a
    ld e, c
    ld b, [hl]
    dec c
    dec e
    jr nz, @+$1c

    ccf
    dec c
    dec e
    jr nz, @+$13

    sub [hl]
    ld e, c
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$9c06], sp
    ld e, c
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$8706], sp

jr_006_599e:
    ld e, c
    call Call_000_21eb
    call Call_000_0da4
    ld bc, $40ff
    call Call_000_255b
    ret c

    ld e, $3f
    ld a, [de]
    cp $01
    jr nz, jr_006_59b9

    call Call_000_202b
    ret c

    jr jr_006_59bd

jr_006_59b9:
    call Call_000_202b
    ret nc

jr_006_59bd:
    ld e, $06
    ld bc, $59c5
    jp Jump_000_0846


    jr @+$2b

    nop
    inc bc
    ld l, [hl]
    ld d, a
    ld b, [hl]
    dec c
    dec e
    jr nz, @+$13

    db $db
    ld e, c
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$e106], sp
    ld e, c
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$0d27], sp
    sbc a
    ld hl, $4184
    dec c
    dec e
    jr nz, @+$13

    or $59
    add hl, de
    ld a, [hl+]
    ld [$2b19], sp
    ld [$fc06], sp
    ld e, c
    add hl, de
    inc l
    ld [$2d19], sp
    ld [$e706], sp
    ld e, c
    dec c
    ld b, c
    ld e, d
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    dec c
    dec hl
    ld e, d
    dec c
    pop de
    rra
    ld [$2600], sp
    jr nz, jr_006_5a15

    dec c

jr_006_5a15:
    ld [hl-], a
    db $10
    ldh a, [$ff08]
    nop
    nop
    ld a, [hl+]
    ret nc

    inc bc
    jr c, jr_006_5a7a

    ld b, [hl]
    add hl, de
    inc b

jr_006_5a23:
    ld [bc], a
    add hl, de
    dec b
    inc bc
    add hl, de
    inc b
    inc bc
    ld d, $cd
    ld b, a
    ld b, $fe
    add b
    ret c

    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    call Call_000_1ee6
    call Call_000_1ed3
    jp Jump_000_0da4


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, e
    ld a, [hl]
    ld [de], a
    ret


    rst $38
    ld [bc], a
    nop
    nop
    nop
    ld b, [hl]
    ld [hl], b
    ld b, $00
    nop
    nop
    ld b, [hl]
    ld [hl], b
    ld b, $ff
    ld [bc], a
    nop
    nop
    nop
    ld a, d
    ld [hl], b
    ld b, $00
    nop
    nop
    ld a, d
    ld [hl], b

jr_006_5a64:
    ld b, $f9
    ld b, $f9
    ld b, $f9
    dec bc
    ld sp, hl
    ld b, $12
    jr nz, jr_006_5a71

    ld b, b

jr_006_5a71:
    add b
    ret nz

    nop
    add b
    ret nz

    nop
    ld b, b
    add b
    ret nz

jr_006_5a7a:
    nop
    add b
    ret nz

    nop
    ld b, b
    add b
    ret nz

    jr nz, jr_006_5a23

    ret nz

    ld b, b
    nop
    nop
    ld b, b
    add b
    ret nz

    jr nz, jr_006_5acc

    and b
    jr nz, jr_006_5aaf

    and b
    db $10
    ret nz

    ld [bc], a
    add b
    ret nz

    db $10
    add b
    nop
    stop
    cp $54
    ld e, h
    ld d, h
    inc h
    ld d, b
    inc l
    ld c, h
    inc h
    ld c, h
    ld e, h
    ld l, e
    ld e, d
    ld h, e
    ld a, [hl-]
    ld d, b
    ld b, d
    inc a
    ld a, [hl-]
    inc [hl]
    ld e, d

jr_006_5aaf:
    jr nz, jr_006_5ab1

jr_006_5ab1:
    ld [bc], a
    jr nz, jr_006_5ab4

jr_006_5ab4:
    ld bc, $02ff
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
    nop
    ld [bc], a
    sbc e
    ld c, l
    inc bc
    inc sp
    ld c, [hl]
    inc bc
    nop

jr_006_5acc:
    nop
    nop
    ld a, [hl+]
    ld c, a
    inc bc
    inc bc
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
    nop
    nop
    nop
    jr nz, jr_006_5a64

    ld [bc], a
    inc c
    ldh a, [rP1]
    dec e
    ld b, h
    ld [bc], a
    ld d, $b8
    ld bc, $b816
    ld bc, $0010
    ld [bc], a
    cp $5a
    jr z, jr_006_5b53

    ld d, d
    ld e, e
    ld a, h
    ld e, e
    and [hl]
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    ld bc, $00f0
    rlca
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    rlca
    ldh a, [rP1]
    ld bc, $00f0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $00
    nop
    rrca
    add b
    nop
    rrca
    ldh [rP1], a
    rlca
    ldh a, [rP1]
    rlca
    ldh a, [rP1]
    inc bc
    ldh a, [rP1]
    inc bc
    ldh a, [rP1]

jr_006_5b53:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    nop
    ld h, b
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    ld bc, $00f8
    ld bc, $00f8
    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    add b
    nop
    rra
    nop
    nop
    ld a, a
    nop
    nop
    cp $00
    nop
    cp $00
    nop
    db $fc
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    nop
    ld hl, sp+$00
    nop
    cp $00
    nop
    rst $38
    add b
    nop
    cp $00
    nop
    ld hl, sp+$00
    nop
    rla
    or $0d
    rrca
    ld b, h
    rst $38
    dec c
    ldh [$ff35], a
    jr nz, jr_006_5bdb

jr_006_5bdb:
    ld d, b
    nop
    db $10
    ld c, h
    rrca
    ld b, d
    nop
    dec c
    inc c
    ld e, h
    dec c
    rrca
    jr nz, jr_006_5bed

    ld [$0d3f], sp
    cp d

jr_006_5bed:
    ld [hl+], a
    jp nc, Jump_000_0d00

    cp b
    ld e, l
    dec c
    ret z

    ld e, h
    jp hl


    ld bc, $2700
    inc bc
    ld [hl], h
    ld e, h
    ld b, [hl]
    dec c
    ld e, a
    jr nz, @+$6f

    ld e, d
    add hl, de
    ld [$1908], sp
    add hl, bc
    ld [$0306], sp
    ld e, h
    ld a, d
    ld [$dd0e], a
    ret


    rla
    or $0d
    rrca
    ld b, h
    rst $38
    rrca
    ld c, h
    jr z, jr_006_5c2a

    ld b, d
    nop
    rrca
    ld h, c
    nop
    rrca
    ld c, e
    ld [bc], a
    rrca
    ld c, d
    ld d, b
    inc b
    ldh [c], a
    ld l, d
    dec c

jr_006_5c2a:
    dec c
    ld sp, hl
    rra
    dec c
    ldh [$ff35], a
    add b
    nop
    ld d, b
    nop
    dec c
    rrca
    jr nz, jr_006_5c3c

    dec bc
    ccf
    daa
    inc bc

jr_006_5c3c:
    sbc [hl]
    ld e, h
    ld b, [hl]
    dec c
    ld e, a
    jr nz, jr_006_5cb0

    ld e, d
    rrca
    daa
    nop
    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    db $10
    ld b, $47
    ld e, h
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a49
    call Call_006_75c1
    ret nc

    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    ld bc, $5a57
    call Call_006_75c1
    ret nc

    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    ld bc, $5a65
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $06
    ld bc, $5cd1
    jp Jump_000_0846


    call Call_000_21eb
    call Call_000_0da4
    ld bc, $5a57
    call Call_000_255b
    ld bc, $5a69
    call Call_000_24cd

jr_006_5cb0:
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $06
    ld bc, $5d02
    jp Jump_000_0846


    ld a, [bc]
    inc bc
    ld [$cd00], a
    ld [$db78], a
    ret


    rrca
    daa
    nop
    jr @+$0f

    dec e
    ld e, l
    dec c
    ld e, a
    ld [hl+], a
    dec c
    ld [hl], d
    ld [hl+], a
    inc bc
    scf
    ld e, l
    ld b, [hl]
    ld [$0080], sp
    ld a, [hl+]
    ldh a, [rNR24]
    nop
    ld [$0119], sp
    ld [$8008], sp
    rst $38
    ld a, [hl+]
    db $10
    add hl, de
    nop
    ld [$0119], sp
    ld [$260d], sp
    ld e, l
    ld [de], a
    sub l
    ld e, l
    jr @+$2c

    nop
    nop
    jr jr_006_5d07

    ld h, l
    ld e, h
    ld b, [hl]

jr_006_5d07:
    ld [de], a
    rrca
    ld e, l
    dec b
    ld bc, $0706
    ld e, l
    rrca
    daa
    nop
    inc bc
    ld d, e
    ld e, l
    ld b, [hl]
    add hl, de
    add hl, de
    jr nz, jr_006_5d2c

    and d
    ld e, l
    nop
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $27
    ld [hl], $01
    ret


    call Call_000_0647
    and $01
    ld h, d

jr_006_5d2c:
    ld l, $48
    ld h, [hl]
    ld l, $27
    ld [hl], a
    xor $01
    ld e, l
    ld [de], a
    ret


    call Call_006_5d69
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    ld e, $27
    ld a, [de]
    or a
    ret z

    ld e, $06
    ld bc, $5dc5
    jp Jump_000_0846


    call Call_006_5d7f
    ld bc, $5a49
    call Call_000_255b
    ld e, $27
    ld a, [de]
    or a
    ret z

    ld e, $06
    ld bc, $5e33
    jp Jump_000_0846


Call_006_5d69:
    ld a, [$dee4]
    cp $0c
    ret c

    xor a
    ld [$dee4], a
    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $5d
    inc l
    ld [hl], $3a
    ret


Call_006_5d7f:
    ld a, [$dee4]
    cp $0c
    ret c

    xor a
    ld [$dee4], a
    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $5d
    inc l
    ld [hl], $56
    ret


    dec bc
    or d
    ld h, a
    dec c
    xor a
    ld e, l
    inc bc
    ld d, [hl]
    ld e, h
    ld b, [hl]
    ld b, $dc
    ld h, h
    dec bc
    db $e4
    ld h, a
    dec c
    xor a
    ld e, l
    inc bc
    ld h, l
    ld e, h
    ld b, [hl]
    ld b, $0f
    ld h, l
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $27
    ld [hl], $01
    ret


    xor a
    ld [$dd0a], a
    ret


    ld hl, $dd0a
    ld a, [hl]
    and $80
    ld [hl], a
    ret


    rrca
    ld b, d
    ld bc, $0f0d
    jr nz, jr_006_5dd0

    ld [$272d], sp
    dec c

jr_006_5dd0:
    ld [hl], d
    ld [hl+], a
    jr jr_006_5dd7

    ld d, b
    ld e, h
    ld b, [hl]

jr_006_5dd7:
    ld [$0080], sp
    ld a, [hl+]
    ldh a, [rNR24]
    nop
    ld [$0119], sp
    ld [$8008], sp
    rst $38
    ld a, [hl+]
    db $10
    add hl, de
    nop
    ld [$0119], sp
    ld [$400f], sp
    nop
    dec c
    ld [hl], b
    ld e, [hl]
    ld [hl], b
    ld e, d
    ld [de], a
    cp e
    ld e, [hl]
    dec c
    sbc l
    ld e, [hl]
    ld [de], a
    rla
    ld e, [hl]
    ld [$0080], sp
    ld a, [hl+]
    ldh a, [rNR24]
    nop
    ld [$0119], sp
    ld [$8008], sp
    rst $38
    ld a, [hl+]
    db $10
    add hl, de
    nop
    ld [$0119], sp
    ld [$f006], sp
    ld e, l
    ld [$0080], sp
    ld a, [hl+]
    ldh a, [rNR24]
    nop
    ld [$1119], sp
    ld [$8008], sp
    rst $38
    ld a, [hl+]
    db $10
    add hl, de
    ld [de], a
    ld [$b40d], sp
    ld e, [hl]
    add hl, de
    ld bc, $0608
    ldh a, [$ff5d]
    rrca
    ld b, d
    ld bc, $0f0d
    jr nz, jr_006_5e3e

    dec bc
    dec l
    daa
    dec c

jr_006_5e3e:
    ld [hl], d
    ld [hl+], a
    inc bc
    ld h, l
    ld e, h
    ld b, [hl]
    add hl, de
    add hl, de
    jr nz, jr_006_5e57

    ld b, b
    nop
    dec c
    ld [hl], b
    ld e, [hl]
    ld [hl], a
    ld e, d
    ld [de], a
    ldh a, [$ff5e]
    dec c
    sbc l
    ld e, [hl]
    ld [de], a
    ld e, [hl]

jr_006_5e57:
    ld e, [hl]
    add hl, de
    add hl, de
    jr nz, jr_006_5e62

    ld c, d
    ld e, [hl]
    add hl, de
    add hl, de
    inc c
    add hl, de

jr_006_5e62:
    ld a, [de]
    inc b
    dec c
    or h
    ld e, [hl]
    add hl, de
    ld a, [de]
    inc b
    add hl, de
    add hl, de
    inc c
    ld b, $4a
    ld e, [hl]
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld e, $5c
    ld a, [de]
    rlca
    rlca
    ld h, d
    ld l, $40
    add [hl]
    inc [hl]
    add l
    ld l, a
    jr nc, jr_006_5e85

    inc h

jr_006_5e85:
    ld a, [hl]
    or a
    jr nz, jr_006_5e8d

    ld a, $01
    jr jr_006_5e99

jr_006_5e8d:
    ld e, a
    call Call_000_0647
    cp e
    jr nc, jr_006_5e98

    ld a, $01
    jr jr_006_5e99

jr_006_5e98:
    xor a

jr_006_5e99:
    ld e, $27
    ld [de], a
    ret


    call Call_000_203d
    ld e, $45
    ld a, [de]
    jr c, jr_006_5eac

    rlca
    jr c, jr_006_5eaf

jr_006_5ea8:
    ld a, $01
    jr jr_006_5eb0

jr_006_5eac:
    rlca
    jr c, jr_006_5ea8

jr_006_5eaf:
    xor a

jr_006_5eb0:
    ld e, $27
    ld [de], a
    ret


    ld e, $45
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    rrca
    ld b, d
    ld bc, $0f0d
    jr nz, jr_006_5ec6

    ld [$0d2d], sp
    add c

jr_006_5ec6:
    ld e, a
    ld [de], a
    dec a
    ld l, c
    dec c
    add hl, de
    ld e, a
    ld c, $04
    sub a
    ld e, a
    and c
    ld h, c
    ld e, c
    ld h, d
    ld h, b
    ld h, h
    ld d, $0d
    rrca
    jr nz, jr_006_5ee0

    dec bc
    dec l
    dec c
    ld d, l

jr_006_5ee0:
    ld e, a
    ld de, $5dc5
    dec c
    ld l, b
    ld e, a
    ld [de], a
    push bc
    ld e, l
    dec bc
    or d
    ld h, a
    ld b, $dc
    ld h, h
    rrca
    ld b, d
    ld bc, $810d
    ld e, a
    ld [de], a
    ld e, c
    ld l, c
    dec c
    add hl, de
    ld e, a
    ld c, $04
    and h
    ld e, a
    ldh [c], a
    ld h, c
    add hl, sp
    ld h, e
    xor l
    ld h, h
    ld d, $0d
    ld d, l
    ld e, a
    ld de, $5e33
    dec c
    ld l, b
    ld e, a
    ld [de], a
    inc sp
    ld e, [hl]
    dec bc
    db $e4
    ld h, a
    ld b, $0f
    ld h, l
    push bc
    ld e, $5c
    ld a, [de]
    ld e, a
    rlca
    rlca
    rlca
    add e
    ld l, a
    ld e, $43
    ld a, [de]
    ld h, a
    inc a
    cp $03
    jr c, jr_006_5f2e

    sub $03

jr_006_5f2e:
    ld [de], a
    ld a, h
    rlca
    add h
    add l
    ld hl, $5a7e
    add l
    ld l, a
    jr nc, jr_006_5f3b

    inc h

jr_006_5f3b:
    call Call_000_0647
    ld e, a
    ld b, $00
    ld c, $03

jr_006_5f43:
    ld a, [hl]
    or a
    jr z, jr_006_5f4f

    cp e
    jr nc, jr_006_5f4f

    inc hl
    inc b
    dec c
    jr nz, jr_006_5f43

jr_006_5f4f:
    ld a, b
    ld e, $27
    ld [de], a
    pop bc
    ret


    xor a
    ld hl, $dd0a
    bit 6, [hl]
    jr nz, jr_006_5f64

    bit 0, [hl]
    jr z, jr_006_5f64

    set 1, [hl]
    inc a

jr_006_5f64:
    ld e, $27
    ld [de], a
    ret


    ld hl, $dd0a
    ld e, $4c
    ld a, [de]
    cp $15
    jr nc, jr_006_5f78

    set 6, [hl]

jr_006_5f74:
    ld a, $01
    jr jr_006_5f7d

jr_006_5f78:
    bit 7, [hl]
    jr nz, jr_006_5f74

    xor a

jr_006_5f7d:
    ld e, $27
    ld [de], a
    ret


    ld hl, $dd0a
    bit 6, [hl]
    jr nz, jr_006_5f8b

jr_006_5f88:
    xor a
    jr jr_006_5f93

jr_006_5f8b:
    bit 0, [hl]
    jr z, jr_006_5f88

    res 1, [hl]
    ld a, $01

jr_006_5f93:
    ld e, $27
    ld [de], a
    ret


    jr z, jr_006_5fac

    ret nz

    or c
    ld e, a
    jr z, jr_006_5fb1

    add b
    cp l
    ld e, a
    ld b, $e6
    ld h, b
    jr z, jr_006_5fb9

    ret nz

    or a
    ld e, a
    jr z, jr_006_5fbe

    add b

jr_006_5fac:
    jp $065f


    add hl, bc
    ld h, c

jr_006_5fb1:
    rrca
    ld b, b
    nop
    ld b, $c9
    ld e, a
    ld h, $40

jr_006_5fb9:
    nop
    ld b, $19
    ld h, b
    rrca

jr_006_5fbe:
    ld b, b
    ld bc, $c906
    ld e, a
    ld h, $c0
    rst $38
    ld b, $19
    ld h, b
    inc h
    dec c
    inc bc
    dec [hl]
    ld h, b
    ld b, [hl]
    dec c
    cp l
    ld h, b
    jr nz, jr_006_5fd4

jr_006_5fd4:
    ld [$ff40], sp
    ld a, [hl+]
    inc c
    add hl, de
    nop
    ld [$0119], sp
    ld [$c008], sp
    nop
    ld a, [hl+]
    db $f4
    add hl, de
    ld [bc], a
    ld [$0319], sp
    ld [$5203], sp
    ld h, b
    ld b, [hl]
    dec c
    cp l
    ld h, b
    ld b, b
    nop
    ld [$fd80], sp
    ld a, [hl+]
    dec c
    add hl, de
    inc b
    ld [$0519], sp
    ld [$0619], sp
    ld [$0719], sp
    ld [$0819], sp
    ld [$0919], sp
    ld [$0819], sp
    ld [$0919], sp
    ld [$0619], sp
    ld [$0719], sp
    ld [$1006], sp
    ld h, b
    inc h
    dec c
    inc bc
    ld [hl], h
    ld h, b
    ld b, [hl]
    ld [$fd80], sp
    ld a, [hl+]
    dec c
    ld bc, $001b
    jr jr_006_602c

    ld h, l
    ld e, h
    ld b, [hl]

jr_006_602c:
    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    jr @+$08

    rlca
    ld e, a

Call_006_6035:
    ld bc, $5a49
    call Call_006_75c1
    jr c, jr_006_6048

    call Call_000_1ed3
    call Call_000_0da4
    call Call_006_60ab
    xor a
    ret


jr_006_6048:
    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    scf
    ret


    call Call_006_6035
    ret c

    ld bc, $5a65
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $06
    ld bc, $5ed8
    jp Jump_000_0846


    ld bc, $5a57
    call Call_006_75c1
    jr c, jr_006_60a3

    call Call_000_1ed3
    call Call_000_0da4
    call Call_006_60ab
    ld bc, $5a69
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $06
    ld bc, $6027
    jp Jump_000_0846


jr_006_60a3:
    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


Call_006_60ab:
    call Call_006_644b
    ret nc

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
    ret


    ld e, $45
    ld a, [de]
    rlca
    ld e, $40
    ld a, [de]
    jr c, jr_006_60d9

    rrca
    jr c, jr_006_60dc

jr_006_60c9:
    ld e, $0d
    ld a, [bc]
    cpl
    add $01
    ld [de], a
    inc e
    inc bc
    ld a, [bc]
    cpl
    adc $00
    ld [de], a
    inc bc
    ret


jr_006_60d9:
    rrca
    jr c, jr_006_60c9

jr_006_60dc:
    ld e, $0d
    ld a, [bc]
    ld [de], a
    inc e
    inc bc
    ld a, [bc]
    ld [de], a
    inc bc
    ret


    inc h
    dec c
    inc bc
    jr z, jr_006_614c

    ld b, [hl]
    ld h, $c0
    rst $38
    ld [$fe80], sp
    ld a, [hl+]
    inc c
    add hl, de
    inc b
    ld [$0519], sp
    ld [$0619], sp
    ld [$0719], sp
    ld [$0819], sp
    ld [$0919], sp
    ld [$0006], sp
    ld h, c
    inc h
    dec c
    inc bc
    ld e, a
    ld h, c
    ld b, [hl]
    ld h, $c0
    rst $38
    ld [$fe80], sp
    ld a, [hl+]
    inc c
    ld bc, $001b
    jr jr_006_611f

    ld h, l
    ld e, h
    ld b, [hl]

jr_006_611f:
    add hl, de
    ld a, [de]
    ld [bc], a
    add hl, de
    add hl, de
    db $10
    ld b, $07
    ld e, a
    ld bc, $5a49
    call Call_006_75c1
    jr c, jr_006_6157

    call Call_000_1ed3
    call Call_000_0da4
    call Call_006_6196
    ld bc, $5a65
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf

jr_006_614c:
    ldh a, [$ff9a]
    ld d, a
    ld e, $06
    ld bc, $5ed8
    jp Jump_000_0846


jr_006_6157:
    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    ld bc, $5a57
    call Call_006_75c1
    jr c, jr_006_618e

    call Call_000_1ed3
    call Call_000_0da4
    call Call_006_6196
    ld bc, $5a69
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $0e
    ld hl, $4299
    ld a, $1e
    call Call_000_05cf
    ldh a, [$ff9a]
    ld d, a
    ld e, $06
    ld bc, $611a
    jp Jump_000_0846


jr_006_618e:
    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


Call_006_6196:
    call Call_006_644b
    ret nc

    xor a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    ret


    inc bc
    ld d, $62
    ld b, [hl]
    dec bc
    cp e
    ld h, c
    jr z, jr_006_61bd

    add b
    ret c

    ld e, [hl]
    dec bc
    cp e
    ld h, c
    jr z, jr_006_61c5

    ret nz

    ret c

    ld e, [hl]
    dec bc
    cp e
    ld h, c
    ld b, $d8
    ld e, [hl]
    add hl, bc
    ld [bc], a

jr_006_61bd:
    daa
    ld h, $80
    nop
    ld [$ff40], sp
    ld a, [hl+]

jr_006_61c5:
    db $10
    add hl, de
    ld b, $06
    add hl, de
    dec b
    ld b, $19
    inc b
    ld b, $19
    rlca
    ld b, $26
    jr nz, jr_006_61d5

jr_006_61d5:
    ld [$00c0], sp
    ld a, [hl+]
    ldh [rNR24], a
    nop
    ld b, $19
    ld bc, $0a06
    inc c
    ld [$0000], sp
    dec bc
    ei
    ld h, c
    jr z, jr_006_61fd

    add b
    rlca
    ld e, a
    dec bc
    ei
    ld h, c
    jr z, jr_006_6205

    ret nz

    rlca
    ld e, a
    dec bc
    ei
    ld h, c
    ld b, $07
    ld e, a
    add hl, bc
    ld [bc], a

jr_006_61fd:
    inc bc
    ld l, $62
    ld b, [hl]
    daa
    ld h, $c0
    nop

jr_006_6205:
    add hl, hl
    nop
    add hl, de
    ld a, [de]
    ld [$8026], sp
    nop
    dec c
    ld [hl-], a
    db $10
    ld hl, sp+$19
    add hl, de
    jr jr_006_621f

    inc c
    call Call_000_1ed3
    call Call_000_0da4
    call Call_006_6196

jr_006_621f:
    ld bc, $5a49
    call Call_006_75c1
    ret nc

    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    call Call_000_1ee6
    call Call_000_0da4
    call Call_006_6196
    ld bc, $5a57
    call Call_006_75c1
    jr c, jr_006_6251

    ld h, d
    ld l, $0d
    ld a, [hl+]
    or [hl]
    ret nz

    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $5c
    inc l
    ld [hl], $65
    ret


jr_006_6251:
    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


    dec c
    rrca
    jr nz, jr_006_6263

    rlca
    dec l
    inc bc
    ld d, b
    ld e, h
    ld b, [hl]

jr_006_6263:
    rlca
    nop
    nop
    ld [$0180], sp
    ld a, [hl+]
    ret nc

    add hl, de
    nop
    ld [$0119], sp
    ld [$0008], sp
    nop
    ld a, [hl+]
    nop
    add hl, bc
    inc b
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    ld a, [bc]
    inc h
    inc c
    ld h, $80
    ld [bc], a
    ld [hl+], a
    sub l
    ld h, d
    ld b, $03
    pop hl
    ld h, e
    ld b, [hl]
    add hl, de
    ld c, $02
    add hl, de
    rrca
    ld [bc], a
    ld b, $8c
    ld h, d
    dec c
    and $22
    db $d3
    ld a, [bc]
    dec b
    inc b
    ld b, $95
    ld h, d
    dec c
    ld [hl], a
    rrca
    dec c
    inc bc
    ld d, [hl]
    ld e, h
    ld b, [hl]
    rlca
    nop
    nop
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    scf
    ld [bc], a
    add hl, de
    inc c
    ld [bc], a
    add hl, de
    scf
    ld [bc], a
    inc bc
    ld d, b
    ld e, h
    ld b, [hl]
    ld h, $80
    cp $08
    add b
    cp $2a
    jr @+$1b

    inc c
    ld [$0d19], sp
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$8026], sp
    rst $38
    ld [$0180], sp
    ld a, [hl+]
    ret nc

    add hl, de
    inc c
    ld [$0d19], sp
    ld [$8026], sp
    rst $38
    ld [$ff00], sp
    ld a, [hl+]
    db $10
    add hl, de
    inc c
    ld [$0d19], sp
    ld [$0c19], sp
    ld [$0d19], sp
    ld [$c026], sp
    rst $38
    ld [$0100], sp
    ld a, [hl+]
    ldh [rNR24], a
    inc c
    ld [$0d19], sp
    ld [$9d0d], sp
    ld e, [hl]
    ld [de], a
    dec e
    ld h, e
    ld [$0080], sp
    ld a, [hl+]
    ldh a, [rNR24]
    nop
    ld [$0119], sp
    ld [$8008], sp
    rst $38
    ld a, [hl+]
    db $10
    add hl, de
    nop
    ld [$0119], sp
    ld [$d806], sp
    ld e, [hl]
    ld [$0080], sp
    ld a, [hl+]
    ldh a, [rNR24]
    nop
    ld [$1119], sp
    ld [$8008], sp
    rst $38
    ld a, [hl+]
    db $10
    add hl, de
    ld [de], a
    ld [$b40d], sp
    ld e, [hl]
    add hl, de
    ld bc, $0608
    ret c

    ld e, [hl]
    inc bc
    nop
    ld h, h
    ld b, [hl]
    rlca
    nop
    nop
    ld [$fe80], sp
    ld a, [hl+]
    jr jr_006_635f

    dec de
    db $10
    ld a, [hl+]
    nop
    add hl, de
    jr nz, @+$04

    add hl, de
    ld hl, $2a02
    jr @+$1b

    ld [hl+], a
    ld [bc], a
    add hl, de
    inc hl
    ld [bc], a
    add hl, de
    inc h
    ld [bc], a
    add hl, de
    dec h
    ld [bc], a
    add hl, de

jr_006_635f:
    ld h, $02
    add hl, de
    daa
    ld [bc], a
    add hl, de
    jr z, jr_006_6369

    add hl, de
    rra

jr_006_6369:
    ld [bc], a
    ld [$0000], sp
    ld a, [hl+]
    nop
    dec c
    sbc a
    ld hl, $5a90
    dec c
    rrca
    jr nz, jr_006_637d

    rlca
    dec l
    ld [hl+], a
    sub l
    ld h, d

jr_006_637d:
    ld b, $03
    add hl, hl
    ld h, h
    ld b, [hl]
    inc h
    inc c
    add hl, de
    rra
    ld bc, $2019
    ld bc, $2119
    ld bc, $2219
    ld bc, $2319
    ld bc, $2419
    ld bc, $2519
    ld bc, $2619
    ld bc, $2719
    ld bc, $2819
    ld bc, $8406
    ld h, e
    dec c
    ld [hl], a
    rrca
    dec c
    inc bc
    nop
    ld h, h
    ld b, [hl]
    rlca
    nop
    nop
    add hl, de
    ld e, $02
    add hl, de
    ld [hl], $02
    add hl, de
    ld e, $02
    add hl, de
    ld [hl], $02
    ld h, $00
    rst $38
    ld [$fe80], sp
    ld a, [hl+]
    jr @+$1b

    ld e, $20
    ld h, $80
    rst $38
    ld [$ff00], sp
    ld a, [hl+]
    db $10
    dec b
    jr nz, jr_006_63ea

    ld a, [hl+]
    nop
    inc bc
    ld h, l
    ld e, h
    ld b, [hl]
    add hl, de
    ld a, [de]
    inc b
    add hl, de
    add hl, de
    jr nz, @+$08

    rlca
    ld e, a
    call Call_000_0da4
    ld bc, $5a49
    call Call_006_75c1

jr_006_63ea:
    jr c, jr_006_63f8

    call Call_006_644b
    ret nc

    ld e, $06
    ld bc, $629f
    jp Jump_000_0846


jr_006_63f8:
    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    ld bc, $5a57
    call Call_006_75c1
    jr c, jr_006_6421

    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a69
    call Call_000_24cd
    bit 7, a
    ret z

    xor a
    ld e, $12
    ld [de], a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


jr_006_6421:
    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $5a57
    call Call_006_75c1
    jr c, jr_006_6443

    call Call_006_644b
    ret nc

    ld e, $06
    ld bc, $63a5
    jp Jump_000_0846


jr_006_6443:
    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


Call_006_644b:
    ld e, $0e
    ld a, [de]
    rlca
    ld hl, $db51
    ld e, $04
    ld a, [de]
    jr c, jr_006_645c

    sub [hl]
    cp $97
    ccf
    ret


jr_006_645c:
    sub [hl]
    cp $09
    ret


    jr jr_006_6465

    ld d, [hl]
    ld e, h
    ld b, [hl]

jr_006_6465:
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    dec c
    and $22
    db $d3
    nop
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    dec bc
    ld [bc], a
    inc bc
    rst $00
    ld h, h
    ld b, [hl]
    ld h, $00
    cp $0d
    ld [hl-], a
    db $10
    ld b, b
    add hl, de
    ld a, [bc]
    inc b
    add hl, de
    dec bc
    inc b
    ld h, $00
    ld bc, $0029
    add hl, de
    ld a, [bc]
    inc b
    add hl, de
    dec bc
    inc b
    ld b, $d8
    ld e, [hl]
    dec c
    and $22
    db $d3
    ld bc, $6503
    ld e, h
    ld b, [hl]
    add hl, de
    ld a, [de]
    db $10
    add hl, de
    inc e
    jr nz, jr_006_64ca

    and $22
    db $d3
    ld [bc], a
    add hl, de
    dec e
    jr nz, @+$08

    rlca
    ld e, a
    call Call_000_1ee6

jr_006_64ca:
    call Call_000_0da4
    ld bc, $5a49
    call Call_006_75c1
    ret nc

    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    rrca
    ld b, d
    nop
    dec c
    rrca
    jr nz, @+$06

    inc b
    ccf
    dec c
    ld a, $65
    dec c
    ret z

    ld e, h
    db $e4
    jr jr_006_6517

    ld [$082a], sp
    rrca
    ld b, b
    nop
    rrca
    ld b, c
    nop
    rrca
    ld h, $f0
    inc bc
    ld b, h
    ld h, l
    ld b, [hl]
    db $10
    ld c, h
    ld de, $650c
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$0306], sp
    ld h, l
    ld bc, $0018
    rrca
    ld b, d
    nop
    dec c
    rrca
    jr nz, @+$06

    inc b

jr_006_6517:
    ccf
    dec c
    ld a, $65
    dec c
    ret z

    ld e, h
    db $eb
    db $10
    ld c, h
    ld de, $6529
    ld bc, $0620
    dec hl
    ld h, l
    ld bc, $1829
    add hl, hl
    ld [$082a], sp
    rrca
    ld b, b
    nop
    rrca
    ld b, c
    nop
    rrca
    ld h, $f0
    inc bc
    ldh a, [c]
    ld h, l
    ld b, [hl]
    nop
    ld hl, $dd0a
    res 0, [hl]
    ret


    call Call_006_655f
    ld bc, $5a49
    call Call_000_255b
    call Call_006_656d
    call c, Call_000_1ec0
    call Call_006_65bc
    ret nc

    ld e, $06
    ld bc, $660a
    jp Jump_000_0846


Call_006_655f:
    ld e, $41
    ld a, [de]
    or a
    ret z

Call_006_6564:
    call Call_000_21d8
    call Call_000_21c5
    jp Jump_000_0da4


Call_006_656d:
    ld e, $41
    ld a, [de]
    or a
    jr z, jr_006_6577

    dec a
    ld [de], a
    or a
    ret


jr_006_6577:
    ld a, $08
    ld [de], a
    ld h, $a0
    ld l, $07
    ld a, [hl]
    ld hl, $db53
    sub [hl]
    cp $20
    jr c, jr_006_6594

    xor a
    ld h, d
    ld l, $0d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $41
    ld [hl], $00
    ret


jr_006_6594:
    call Call_000_202b
    jr c, jr_006_659e

    ld bc, $ffa0
    jr jr_006_65a1

jr_006_659e:
    ld bc, $0060

jr_006_65a1:
    ld h, d
    ld l, $39
    ld [hl], c
    inc l
    ld [hl], b
    call Call_000_203d
    jr c, jr_006_65b1

    ld bc, $ffa0
    jr jr_006_65b4

jr_006_65b1:
    ld bc, $0060

jr_006_65b4:
    ld h, d
    ld l, $3b
    ld [hl], c
    inc l
    ld [hl], b
    scf
    ret


Call_006_65bc:
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_65c6

    dec a
    ld [de], a
    or a
    ret


jr_006_65c6:
    ld e, $40
    ld a, [de]
    cp $02
    jr nc, jr_006_65e6

    ld hl, $5a93
    ld b, a
    add l
    ld l, a
    jr nc, jr_006_65d6

    inc h

jr_006_65d6:
    ld a, b
    inc a
    ld [de], a
    call Call_000_0647
    cp [hl]
    jr c, jr_006_65e6

    ld a, $3c
    ld e, $26
    ld [de], a
    or a
    ret


jr_006_65e6:
    xor a
    ld h, d
    ld l, $0d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    scf
    ret


    call Call_006_655f
    ld bc, $5a57
    call Call_000_255b
    call Call_006_656d
    call Call_006_65bc
    ret nc

    ld e, $06
    ld bc, $66a2
    jp Jump_000_0846


    ld [$0000], sp
    daa
    inc bc
    rst $08
    ld h, [hl]
    ld b, [hl]
    ld h, $80
    nop
    db $10
    ld c, h
    ld de, $6636
    add hl, bc
    inc b
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$030a], sp
    ld d, [hl]
    ld e, h
    ld b, [hl]
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$1619], sp
    ld [$1719], sp
    ld [$3f06], sp
    ld h, [hl]
    add hl, de
    jr jr_006_6679

    inc bc
    ld d, [hl]
    ld e, h
    ld b, [hl]
    dec b
    jr nz, jr_006_664f

    ld b, b
    nop
    ld [hl+], a
    dec sp
    ld e, a
    dec e
    rrca
    ld h, $00
    inc bc
    xor $66
    ld b, [hl]
    dec c
    ret z

jr_006_664f:
    ld e, h
    jp hl


    rlca
    nop
    nop
    db $10
    ld c, h
    ld de, $6668
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$1619], sp
    ld [$1719], sp
    ld [$6b06], sp
    ld h, [hl]
    add hl, de
    jr jr_006_668b

    daa
    ld h, $30
    nop
    db $10
    ld c, h
    ld de, $668f
    add hl, bc
    inc bc
    add hl, de
    ld d, $08

jr_006_6679:
    add hl, de
    rla
    ld [$070a], sp
    nop
    nop
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$1619], sp
    ld [$1719], sp

jr_006_668b:
    ld [$9806], sp
    ld h, [hl]
    add hl, de
    jr jr_006_66c2

    rlca
    nop
    nop
    add hl, de
    jr @+$22

    rrca
    inc e
    add b
    dec c
    ret z

    ld e, h
    db $e4
    ld b, $2a
    ld h, a
    rrca
    ld h, $00
    inc bc
    ld de, $4667
    db $10
    ld c, h
    ld de, $66b4
    add hl, de
    jr nz, jr_006_6701

    ld b, $b7
    ld h, [hl]
    add hl, de
    add hl, hl
    ld d, b
    jr z, jr_006_66cc

    ld b, b
    ld b, d
    ld h, a
    dec b
    db $10
    jr z, @+$15

    add b
    ld b, d

jr_006_66c2:
    ld h, a
    dec b
    db $10
    jr z, @+$15

    ret nz

    ld b, d
    ld h, a
    dec b
    db $10

jr_006_66cc:
    ld b, $42
    ld h, a
    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    call Call_000_203d
    ld e, $45
    ld a, [de]
    jr c, jr_006_66ea

    rlca
    ret c

jr_006_66e2:
    ld e, $06
    ld bc, $663f
    jp Jump_000_0846


jr_006_66ea:
    rlca
    ret nc

    jr jr_006_66e2

    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    call Call_006_6196
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_6703

    dec a

jr_006_6701:
    ld [de], a
    ret


jr_006_6703:
    ld a, $08
    ld [de], a
    ld h, d
    ld l, $40
    inc [hl]
    ld a, $03
    ld e, $d3
    jp Jump_000_2319


    ld bc, $5a57
    call Call_000_255b
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_6720

    dec a
    ld [de], a
    ret


jr_006_6720:
    ld a, $20
    ld [de], a
    ld a, $06
    ld e, $d3
    jp Jump_000_2319


    dec c
    ld c, d
    ld h, a
    inc bc
    ld d, b
    ld h, a
    ld b, [hl]
    db $10
    ld c, h
    ld de, $673f
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$3606], sp
    ld h, a
    ld bc, $0018
    dec c
    ld c, d
    ld h, a
    inc bc
    add c
    ld h, a
    ld b, [hl]
    nop
    ld hl, $dd0a
    set 0, [hl]
    ret


    ld bc, $5a49
    call Call_000_255b
    ld a, [$dd0a]
    bit 6, a
    jr nz, jr_006_6779

    bit 1, a
    ret z

    bit 7, a
    jr nz, jr_006_676c

    ld e, $06
    ld bc, $6891
    jp Jump_000_0846


jr_006_676c:
    ld hl, $dd0a
    res 1, [hl]
    ld e, $06
    ld bc, $64dc
    jp Jump_000_0846


jr_006_6779:
    ld e, $06
    ld bc, $696f
    jp Jump_000_0846


    ld bc, $5a57
    call Call_000_255b
    ld a, [$dd0a]
    bit 6, a
    jr nz, jr_006_67aa

    bit 1, a
    ret z

    bit 7, a
    jr nz, jr_006_679d

    ld e, $06
    ld bc, $68c1
    jp Jump_000_0846


jr_006_679d:
    ld hl, $dd0a
    res 1, [hl]
    ld e, $06
    ld bc, $650f
    jp Jump_000_0846


jr_006_67aa:
    ld e, $06
    ld bc, $6984
    jp Jump_000_0846


    rlca
    nop
    nop
    rrca
    ld b, d
    nop
    rrca
    ld h, b
    ccf
    inc bc
    ccf
    ld l, b
    ld b, [hl]
    ld [$fca0], sp
    ld a, [hl+]
    ld [de], a
    add hl, de
    inc de
    ld [$1419], sp
    ld [$1319], sp
    ld [$1419], sp
    ld [$1319], sp
    ld [$1519], sp
    inc b
    dec c
    ret z

    ld e, h
    jp hl


    add hl, de
    dec d
    inc b
    jr jr_006_6809

    nop
    rrca
    ld b, h
    rst $38
    inc c
    rlca
    nop
    nop
    rrca
    ld b, d
    nop
    rrca
    ld h, b
    ccf
    inc bc
    ld l, b
    ld l, b
    ld b, [hl]
    ld [$fca0], sp
    ld a, [hl+]
    ld [de], a
    db $10
    ld c, h
    ld de, $6803
    add hl, de
    dec de
    db $10
    dec b
    db $10
    ld b, $06
    ld l, b
    add hl, de
    ld e, $20
    jr @+$2c

    nop

jr_006_6809:
    ld de, $682a
    add hl, de
    jr nz, jr_006_6813

    add hl, de
    ld hl, $1902

jr_006_6813:
    ld [hl+], a
    ld bc, $2319
    ld bc, $2419
    ld bc, $2519
    ld bc, $2619
    ld bc, $2719
    ld bc, $2819
    ld [bc], a
    ld b, $2c
    ld l, b
    dec b
    ld c, $0d
    ret z

    ld e, h
    jp hl


    ld de, $6839
    add hl, de
    rra
    inc b
    ld b, $3b
    ld l, b
    dec b
    inc b
    rrca
    ld b, h
    rst $38
    inc c
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    cp $08
    jr c, jr_006_685c

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    ret nz

jr_006_685c:
    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $5c
    inc l
    ld [hl], $56
    ret


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a57
    call Call_000_255b
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    cp $08
    jr c, jr_006_6885

    ld h, d
    ld l, $0f
    ld a, [hl+]
    or [hl]
    ret nz

jr_006_6885:
    ld h, d
    ld l, $1f
    ld [hl], $46
    inc l
    ld [hl], $5c
    inc l
    ld [hl], $65
    ret


    rlca
    nop
    nop
    rrca
    ld b, d
    nop
    rrca
    ld h, b
    ccf
    inc bc
    inc bc
    ld l, c
    ld b, [hl]
    ld [$fee0], sp
    ld a, [hl+]
    ld [de], a
    add hl, de
    dec d
    db $10
    add hl, de
    db $10
    ld [$1119], sp
    ld [$1219], sp
    ld [$1119], sp
    ld [$1219], sp
    ld [$1119], sp
    ld [$1219], sp
    ld [$1119], sp
    ld [$b806], sp
    ld l, b
    rlca
    nop
    nop
    rrca
    ld b, d
    nop
    rrca
    ld h, b
    ccf
    inc bc
    jr nz, @+$6b

    ld b, [hl]
    ld [$fee0], sp
    ld a, [hl+]
    ld [de], a
    add hl, de
    rra
    inc b
    add hl, de
    jr z, jr_006_68dd

    add hl, de
    daa
    ld [bc], a
    add hl, de

jr_006_68dd:
    ld h, $02
    add hl, de
    dec h
    ld [bc], a
    add hl, de
    inc h
    ld [bc], a
    add hl, de
    inc hl
    ld bc, $2219
    ld bc, $2119
    ld bc, $2019
    ld bc, $1b01
    nop
    dec c
    cp l
    ld e, l
    ld b, $c5
    ld e, l
    add hl, de
    ld a, [de]
    ld [bc], a
    dec c
    cp l
    ld e, l
    ld b, $33
    ld e, [hl]
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    ld bc, $5a65
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $06
    ld bc, $68f4
    jp Jump_000_0846


    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a57
    call Call_000_255b
    ld bc, $5a69
    call Call_000_24cd
    bit 7, a
    ret z

    ld e, $06
    ld bc, $68fa
    jp Jump_000_0846


    dec c

jr_006_693e:
    ld hl, $066a
    daa
    ld l, d
    dec c
    ld bc, $116a
    sub c
    ld l, b
    inc bc
    xor e
    ld l, c
    ld b, [hl]
    dec bc
    sbc c
    ld l, c
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$5006], sp
    ld l, c
    dec c
    ld hl, $066a
    ld de, $0d6d
    ld bc, $116a
    pop bc
    ld l, b
    inc bc
    jp Jump_006_4669


    dec bc
    sbc c
    ld l, c
    ld bc, $0020
    dec c
    ld de, $066a
    ld a, $6e
    db $10
    ld c, h
    ld [de], a
    sub c
    ld l, b
    inc bc
    xor e
    ld l, c
    ld b, [hl]
    dec bc
    sbc c
    ld l, c
    ld bc, $0018
    dec c
    ld de, $066a
    ld b, a
    ld l, a
    db $10
    ld c, h
    ld [de], a
    pop bc
    ld l, b
    inc bc
    jp Jump_006_4669


    dec bc
    sbc c
    ld l, c
    ld bc, $0029
    daa
    rlca
    nop
    nop
    dec c
    sbc a
    ld hl, $5a95
    dec c
    ld e, a
    jr nz, jr_006_693e

    ld e, d
    rrca
    ld h, $08
    inc c
    call Call_006_6564
    ld bc, $5a49
    call Call_000_255b
    ld e, $10
    ld a, [de]
    rlca
    jp c, Jump_006_69db

    ld e, $06
    ld bc, $64dc
    jp Jump_000_0846


    call Call_006_6564
    ld bc, $5a57
    call Call_000_255b
    ld e, $10
    ld a, [de]
    rlca
    jp c, Jump_006_69db

    ld e, $06
    ld bc, $650f
    jp Jump_000_0846


Jump_006_69db:
    ld hl, $db53
    ld e, $07
    ld a, [de]
    sub [hl]
    cp $30
    jr nc, jr_006_69f1

    ld e, $12
    ld a, $40
    ld [de], a
    xor a
    ld e, $39
    ld [de], a
    inc e
    ld [de], a

jr_006_69f1:
    ld h, d
    ld l, $26
    dec [hl]
    ret nz

    ld [hl], $08
    call Call_000_1ec0
    ld hl, $5a95
    jp Jump_000_21a5


    ld hl, $dd0a
    bit 7, [hl]
    jr nz, jr_006_6a0c

    ld a, $01
    jr jr_006_6a0d

jr_006_6a0c:
    xor a

jr_006_6a0d:
    ld e, $27
    ld [de], a
    ret


    push bc
    call Call_000_0647
    ld b, a
    ld c, $05
    call Call_000_2885
    ld hl, $dd0b
    ld [hl], b
    pop bc
    ret


    ld hl, $dd0a
    set 1, [hl]
    ret


    dec c
    adc b
    ld l, d
    sbc e
    ld e, d
    rlca
    nop
    nop
    ld [$fd80], sp
    ld a, [hl+]
    dec c
    inc bc
    ld e, c
    ld l, d
    ld b, [hl]
    add hl, de
    inc b
    ld [$0519], sp
    ld [$0619], sp
    ld [$0719], sp
    ld [$0819], sp
    ld [$0919], sp
    ld [$0819], sp
    ld [$0919], sp
    ld [$0619], sp
    ld [$0719], sp
    ld [$5006], sp
    ld l, d
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a49
    call Call_006_75c1
    jr c, jr_006_6a80

    ld e, $10
    ld a, [de]
    rlca
    ret c

    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    ld l, $40
    ld h, d
    cp [hl]
    ret c

    ld e, $06
    ld bc, $6a9f
    jp Jump_000_0846


jr_006_6a80:
    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, [$dd0b]
    rlca
    add l
    ld l, a
    jr nc, jr_006_6a97

    inc h

jr_006_6a97:
    ld e, $3f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    dec c
    ld l, a
    ld l, e
    inc bc
    ld d, [hl]
    ld e, h
    ld b, [hl]
    jr @+$1b

    nop
    ld [$0119], sp
    ld [$c703], sp
    ld h, h
    ld b, [hl]
    ld h, $00
    rst $38
    dec c
    ld [hl-], a
    db $10
    db $10
    add hl, de
    ld [$1908], sp
    add hl, bc
    ld [$9f0d], sp
    ld hl, $5aaf
    ld [hl+], a
    call nc, Call_000_066a
    inc bc
    dec [hl]
    ld l, e
    ld b, [hl]
    add hl, de
    ld c, $04
    add hl, de
    rrca
    inc b
    ld b, $cb
    ld l, d
    dec c
    dec b
    ld l, e
    nop
    dec b
    ld bc, $050d
    ld l, e
    ld bc, $0105
    dec c
    dec b
    ld l, e
    ld [bc], a
    dec b
    ld bc, $050d
    ld l, e
    inc bc
    dec b
    ld bc, $050d
    ld l, e
    inc b
    dec b
    ld bc, $050d
    ld l, e
    dec b
    dec b
    ld bc, $050d
    ld l, e
    ld b, $05
    ld bc, $050d
    ld l, e
    rlca
    dec b
    ld bc, $0a00
    inc bc
    push bc
    ld hl, $db51
    ld c, [hl]
    inc hl
    ld b, [hl]
    swap a
    add $80
    ld hl, $db53
    add [hl]
    ld e, a
    inc hl
    ld a, $00
    adc [hl]
    ld d, a
    ld hl, $b300
    ld a, [$dd0b]
    inc a
    add h
    ld h, a
    ld a, e
    sub $80
    inc a
    add l
    ld l, a
    ld a, $0a
    call Call_000_1597
    ldh a, [$ff9a]
    ld d, a
    pop bc
    ret


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $5a49
    call Call_006_75c1
    jr c, jr_006_6b67

    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    ld h, d
    ld l, $3f
    cp [hl]
    ld e, $3c
    ld a, [de]
    jr c, jr_006_6b5d

    rlca
    ret c

    ld e, $06
    ld bc, $6b86
    jp Jump_000_0846


jr_006_6b5d:
    rlca
    ret nc

    ld e, $06
    ld bc, $6b86
    jp Jump_000_0846


jr_006_6b67:
    ld e, $06
    ld bc, $700f
    jp Jump_000_0846


    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    ld h, d
    ld l, $3f
    cp [hl]
    jr nc, jr_006_6b80

    ld a, $40
    jr jr_006_6b82

jr_006_6b80:
    ld a, $c0

jr_006_6b82:
    ld e, $45
    ld [de], a
    ret


    jr @+$11

    ld b, d
    nop
    rrca
    ld h, b
    ccf
    inc bc
    ld d, [hl]
    ld e, h
    ld b, [hl]
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$a403], sp
    ld l, e
    ld b, [hl]
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$9b06], sp
    ld l, e
    ld bc, $5a49
    call Call_000_255b
    ld hl, $dd0a
    bit 0, [hl]
    ret z

    ld e, $06
    ld bc, $6bb8
    jp Jump_000_0846


    ld [hl+], a
    ld [$066d], sp
    dec bc
    ret nc

    ld l, e
    ld b, $43
    ld l, c
    ld a, [$dd0d]
    ld hl, $da06
    add [hl]
    ld [hl], a
    ld bc, $5a49
    jp Jump_000_255b


    dec c
    ret z

    ld e, h
    db $e4
    inc bc
    jp nz, Jump_006_466b

    inc h
    ld b, b
    dec c
    ld b, e
    ld l, h
    add hl, bc
    ld [$e60d], sp
    ld [hl+], a
    db $d3
    add hl, bc
    dec c
    and $22
    db $d3
    add hl, bc
    dec c
    push bc
    ld l, h
    add b
    dec b
    ld [bc], a
    dec c
    push bc
    ld l, h
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [$c50d], sp
    ld l, h
    add b
    dec b
    ld [bc], a
    dec c
    push bc
    ld l, h
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    dec c
    push bc
    ld l, h
    add b
    dec b
    jr nz, jr_006_6c19

    db $fd
    ld [hl], c
    dec bc
    ld c, b
    ld l, h
    inc bc
    ld d, h
    ld l, h
    ld b, [hl]
    inc h
    ld c, a
    add hl, bc
    dec b

jr_006_6c19:
    dec c
    ret z

    ld e, h
    db $e4
    dec b
    ld bc, $c80d
    ld e, h
    dec de
    dec b
    ld bc, $0d0a
    db $fd
    ld [hl], c
    dec bc
    ld c, b
    ld l, h
    add hl, bc
    inc bc
    dec c
    ret z

    ld e, h
    db $e4
    dec b
    ld bc, $c80d
    ld e, h
    dec de
    dec b
    ld bc, $0d0a
    nop
    ld l, l
    dec c
    push bc
    ld l, h
    nop
    inc c
    xor a
    ld [$dd0f], a
    ret


    dec c
    ld b, e
    ld l, h
    add hl, bc
    ld [$e60d], sp
    ld [hl+], a
    db $d3
    ld [$0c0a], sp
    ld bc, $5a49
    call Call_000_255b
    ld a, [$dd0d]
    ld hl, $da06
    add [hl]
    ld [hl], a
    ld a, [$dd0b]
    ld hl, $5af4
    rlca
    add l
    ld l, a
    jr nc, jr_006_6c6e

    inc h

jr_006_6c6e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld b, $a0
    ld c, $04
    ld a, [bc]
    ld hl, $db51
    sub [hl]
    and $fc
    rra
    rra
    rra
    jr nc, jr_006_6c83

    inc a

jr_006_6c83:
    ld e, a
    and $07
    ld hl, $6cbd
    add l
    ld l, a
    jr nc, jr_006_6c8e

    inc h

jr_006_6c8e:
    ld a, [hl]
    ldh [$ff80], a
    ld c, $07
    ld a, [bc]
    ld hl, $db53
    sub [hl]
    and $fc
    rra
    rra
    rra
    jr nc, jr_006_6ca0

    inc a

jr_006_6ca0:
    ld c, a
    rlca
    add c
    ld c, a
    ld a, e
    and $f8
    swap a
    rlca
    add c
    pop hl
    add l
    ld l, a
    jr nc, jr_006_6cb1

    inc h

jr_006_6cb1:
    ldh a, [$ff80]
    and [hl]
    ret nz

    ld a, $12
    ld [$dd0c], a
    jp Jump_006_6ccc


    add b
    ld b, b
    jr nz, jr_006_6cd1

    ld [$0204], sp
    ld bc, $0d21
    db $dd
    ld a, [bc]
    inc bc
    ld [hl], a
    ret


Jump_006_6ccc:
    call Call_000_2809
    jr c, jr_006_6cff

jr_006_6cd1:
    ld a, [$a05d]
    cp $01
    jr z, jr_006_6cff

    cp $04
    jr z, jr_006_6cff

    ld a, [$a054]
    or a
    jp nz, Jump_006_6cff

    ld a, [$dd0c]
    ld [$a044], a
    or a
    jr z, jr_006_6cf2

    and $0f
    ld b, a
    call Call_000_3a8b

jr_006_6cf2:
    ld e, $01
    ld bc, $4ec9
    call Call_000_0c48
    ld a, $01
    ld [$a054], a

Jump_006_6cff:
jr_006_6cff:
    ret


    ld hl, $dd0a
    ld a, [hl]
    and $80
    ld [hl], a
    ret


    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$0806], sp
    ld l, l
    dec c
    adc b
    ld l, d
    and l
    ld e, d
    rlca
    nop
    nop
    ld [$fd80], sp
    ld a, [hl+]
    dec c
    inc bc
    dec h
    ld l, l
    ld b, [hl]
    ld bc, $001b
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a57
    call Call_006_75c1
    jr c, jr_006_6d4c

    ld e, $10
    ld a, [de]
    rlca
    ret c

    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    ld l, $40
    ld h, d
    cp [hl]
    ret c

    ld e, $06
    ld bc, $6d54
    jp Jump_000_0846


jr_006_6d4c:
    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


    dec c
    ld l, a
    ld l, e
    inc bc
    ld h, l
    ld e, h
    ld b, [hl]
    jr jr_006_6d76

    ld a, [de]
    inc b
    add hl, de
    add hl, de
    inc c
    inc bc
    sbc e
    ld l, l
    ld b, [hl]
    ld h, $00
    rst $38
    dec c
    ld [hl-], a
    db $10
    db $10
    add hl, de
    dec de
    db $10
    dec c
    sbc a
    ld hl, $5aaf
    ld [hl+], a

jr_006_6d76:
    call nc, Call_000_066a
    inc bc
    or b
    ld l, l
    ld b, [hl]
    add hl, de
    jr nz, jr_006_6d81

    add hl, de

jr_006_6d81:
    ld hl, $1901
    ld [hl+], a
    ld bc, $2319
    ld bc, $2419
    ld bc, $2519
    ld bc, $2619
    ld bc, $2719
    ld bc, $2819
    ld bc, $7d06
    ld l, l
    call Call_000_1ee6
    call Call_000_0da4
    ld bc, $5a57
    call Call_006_75c1
    ret nc

    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


    call Call_000_21c5
    call Call_000_0da4
    ld bc, $5a57
    call Call_006_75c1
    jr c, jr_006_6de2

    ld e, $04
    ld a, [de]
    ld hl, $db51
    sub [hl]
    ld h, d
    ld l, $3f
    cp [hl]
    ld e, $3c
    ld a, [de]
    jr c, jr_006_6dd8

    rlca
    ret c

    ld e, $06
    ld bc, $6dea
    jp Jump_000_0846


jr_006_6dd8:
    rlca
    ret nc

    ld e, $06
    ld bc, $6dea
    jp Jump_000_0846


jr_006_6de2:
    ld e, $06
    ld bc, $7026
    jp Jump_000_0846


    dec c
    rrca
    ld l, [hl]
    jr jr_006_6dfe

    ld b, d
    nop
    rrca
    ld h, b
    ccf
    inc bc
    ei
    ld l, l
    ld b, [hl]
    ld bc, $0020
    ld bc, $5a57

jr_006_6dfe:
    call Call_000_255b
    ld hl, $dd0a
    bit 0, [hl]
    ret z

    ld e, $06
    ld bc, $6e36
    jp Jump_000_0846


    ld e, $3f
    ld hl, $db51
    ld a, [de]
    add [hl]
    ld hl, $da07
    sub [hl]
    ld e, $04
    ld [de], a
    ld e, $40
    ld hl, $db53
    ld a, [de]
    add [hl]
    ld hl, $da06
    sub [hl]
    ld l, a
    ld e, $4c
    ld a, [de]
    or a
    ld a, l
    jr nz, jr_006_6e32

    add $02

jr_006_6e32:
    ld e, $07
    ld [de], a
    ret


    ld bc, $0b20
    ret nc

    ld l, e
    ld b, $5f
    ld l, c
    dec c
    adc b
    ld l, d
    sbc e
    ld e, d
    dec c
    ld l, a
    ld l, e
    dec c
    sbc a
    ld hl, $5ab2
    inc bc
    ld h, b
    ld l, [hl]
    ld b, [hl]
    db $10
    ld c, h
    ld de, $6e5d
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$5406], sp
    ld l, [hl]
    ld bc, $0018
    call Call_000_21c5
    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    ld h, d
    ld l, $3f
    cp [hl]
    ld e, $45
    ld a, [de]
    jr c, jr_006_6e86

    rlca
    ret c

    ld e, $06
    ld bc, $6e90
    jp Jump_000_0846


jr_006_6e86:
    rlca
    ret nc

    ld e, $06
    ld bc, $6e90
    jp Jump_000_0846


    inc bc
    xor $6e
    ld b, [hl]
    rlca
    nop
    nop
    db $10
    ld c, h
    ld de, $6ea5
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$9c06], sp
    ld l, [hl]
    ld bc, $0018
    inc bc
    jp nz, Jump_006_466e

    ld [$fe80], sp
    ld a, [hl+]
    db $10
    db $10
    ld c, h
    ld de, $6ebf
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$b606], sp
    ld l, [hl]
    ld bc, $0018
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a49
    call Call_000_255b
    ld e, $10
    ld a, [de]
    rlca
    ret c

    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc hl
    ld a, [de]
    sbc [hl]
    ret c

    ld a, c
    ld l, $40
    ld h, d
    cp [hl]
    ret c

    ld e, $06
    ld bc, $6f12
    jp Jump_000_0846


    ld bc, $5a49
    call Call_000_255b
    ld hl, $dd0a
    bit 1, [hl]
    ret z

    ld e, $06
    ld bc, $6ea8
    jp Jump_000_0846


    ld hl, $dd0a
    bit 1, [hl]
    jr nz, jr_006_6f0c

    xor a
    jr jr_006_6f0e

jr_006_6f0c:
    ld a, $01

jr_006_6f0e:
    ld e, $27
    ld [de], a
    ret


    jr jr_006_6f17

    dec l
    ld l, a
    ld b, [hl]

jr_006_6f17:
    dec c
    ld b, c
    ld l, a
    ld a, [hl+]
    db $10
    db $10
    ld c, h
    ld de, $6f2a
    add hl, de
    ld d, $08
    add hl, de
    rla
    ld [$2106], sp
    ld l, a
    ld bc, $0018
    ld bc, $5a49
    call Call_000_255b
    ld hl, $dd0a
    bit 6, [hl]
    ret nz

    ld e, $06
    ld bc, $6975
    jp Jump_000_0846


    ld hl, $dd0a
    set 0, [hl]
    ret


    dec c
    adc b
    ld l, d
    and l
    ld e, d
    dec c
    ld l, a
    ld l, e
    dec c
    sbc a
    ld hl, $5ab2
    inc bc
    ld h, e
    ld l, a
    ld b, [hl]
    db $10
    ld c, h
    ld de, $6f60
    ld bc, $0020
    ld bc, $0029
    call Call_000_21c5
    call Call_000_0da4
    ld bc, $5a57
    call Call_000_255b
    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    ld h, d
    ld l, $3f
    cp [hl]
    ld e, $45
    ld a, [de]
    jr c, jr_006_6f89

    rlca
    ret c

    ld e, $06
    ld bc, $6f93
    jp Jump_000_0846


jr_006_6f89:
    rlca
    ret nc

    ld e, $06
    ld bc, $6f93
    jp Jump_000_0846


    inc bc
    ld h, l
    ld e, h
    ld b, [hl]
    rlca
    nop
    nop
    dec c
    ld [bc], a
    ld l, a
    ld [de], a
    and l
    ld l, a
    dec b
    ld bc, $9a06
    ld l, a
    inc bc
    cp c
    ld l, a
    ld b, [hl]
    ld [$fe80], sp
    ld a, [hl+]
    db $10
    db $10
    ld c, h
    ld de, $6fb6
    ld bc, $0020
    ld bc, $0029
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5a57
    call Call_000_255b
    ld e, $10
    ld a, [de]
    rlca
    ret c

    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    ld c, a
    inc e
    inc hl
    ld a, [de]
    sbc [hl]
    ret c

    ld a, c
    ld l, $40
    ld h, d
    cp [hl]
    ret c

    ld e, $06
    ld bc, $6fe5
    jp Jump_000_0846


    dec c
    rrca
    ld l, [hl]
    jr jr_006_6fed

    ei
    ld l, a
    ld b, [hl]

jr_006_6fed:
    dec c
    ld b, c
    ld l, a
    db $10
    ld c, h
    ld de, $6ff8
    ld bc, $0020
    ld bc, $0029
    ld bc, $5a49
    call Call_000_255b
    ld hl, $dd0a
    bit 6, [hl]
    ret nz

    ld e, $06
    ld bc, $698a
    jp Jump_000_0846


    dec c
    dec a
    ld [hl], b
    rrca
    ld b, c
    ld bc, $f61c
    ld a, h
    inc b
    add hl, bc
    ld b, $19
    inc c
    ld [bc], a
    add hl, de
    scf
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, c
    nop
    nop
    dec c
    dec a
    ld [hl], b
    rrca
    ld b, c
    ld bc, $f61c
    ld a, h
    inc b
    add hl, bc
    ld b, $19
    ld e, $02
    add hl, de
    ld [hl], $02
    ld a, [bc]
    rrca
    ld b, c
    nop
    nop
    ld hl, $dd0a
    bit 0, [hl]
    ret z

    set 6, [hl]
    ret


    dec bc
    xor h
    ld [hl], b
    dec c
    and a
    ld [hl], c
    ld [de], a
    ld h, b
    ld [hl], b
    dec c
    and c
    ld [hl], c
    dec c
    sub e
    inc hl
    ld b, $c1
    ld l, b
    dec bc
    or d
    ld h, a
    ld bc, $0618
    call c, $0f64
    ld h, b
    adc b
    rrca
    ld h, c
    ret nz

    dec bc
    or d
    ld h, a
    ld bc, $0d18
    sub e
    inc hl
    ld b, $a3
    ld [hl], b
    jr jr_006_7080

    or a
    ld [hl], c
    inc bc
    dec [hl]
    ld [hl], c
    ld b, [hl]
    nop
    dec bc
    xor h
    ld [hl], b
    dec c
    and a
    ld [hl], c

jr_006_7080:
    ld [de], a
    sub d
    ld [hl], b
    dec c
    and c
    ld [hl], c
    dec c
    sub e
    inc hl
    ld b, $91
    ld l, b
    dec bc
    db $e4
    ld h, a
    ld b, $0f
    ld h, l
    rrca
    ld h, b
    adc b
    rrca
    ld h, c
    ret nz

    dec bc
    db $e4
    ld h, a
    ld bc, $0d29
    sub e
    inc hl
    ld b, $71
    ld [hl], b
    jr jr_006_70b2

    or a
    ld [hl], c
    inc bc
    dec [hl]
    ld [hl], c
    ld b, [hl]
    nop
    dec c
    inc c
    ld [hl], c
    dec c
    rst $30
    ld [hl], c

jr_006_70b2:
    dec c
    and a
    ld [hl], c
    ld de, $70bb
    dec c
    ei
    ld [hl], b
    rrca
    ld c, h
    nop
    dec c
    ld [hl], d
    ld [hl+], a
    inc h
    ld de, $600f
    ccf
    db $10
    ld b, [hl]
    inc b
    add e
    ld [hl], a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    add hl, hl
    ld [hl], c
    ld b, [hl]
    rrca
    ld b, a
    db $10
    add hl, bc
    inc b
    add hl, de
    nop
    ld [bc], a
    add hl, de
    ld bc, $1902
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    add hl, de
    inc b
    ld [bc], a
    add hl, de
    dec b
    ld [bc], a
    add hl, de
    ld b, $02
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    rrca
    ld b, a
    nop
    inc b
    ldh [c], a
    ld l, d
    dec c
    ld a, [de]
    ld b, [hl]
    inc c
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $19
    ld [hl], $80
    ld l, $1c
    ld [hl], $80
    ld l, $1f
    ld [hl], $80
    ret


    ld hl, $dd0a
    bit 7, [hl]
    ret nz

    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $4a
    ld [hl], $50
    inc l
    ld [hl], $12
    ret


    dec c
    db $e3
    ld d, b
    inc e
    add l
    ld b, a
    inc bc
    dec c
    ld h, a
    inc hl
    ld d, $21
    ld a, [bc]
    db $dd
    bit 7, [hl]
    ret nz

    ld bc, $5a49
    jp Jump_000_255b


    call Call_000_21d8
    call Call_000_21c5
    call Call_000_0da4
    ld e, $48
    ld a, [de]
    ld h, a
    ld e, $04
    ld l, e
    ld a, [de]
    sub [hl]
    jr nc, jr_006_714b

    cpl
    inc a

jr_006_714b:
    cp $20
    jr nc, jr_006_7164

    ld e, $07
    ld l, e
    ld a, [de]
    sub [hl]
    jr nc, jr_006_7158

    cpl
    inc a

jr_006_7158:
    cp $20
    jr nc, jr_006_7164

    ld e, $06
    ld bc, $711e
    jp Jump_000_0846


jr_006_7164:
    ld hl, $db51
    ld e, $04
    ld a, [de]
    sub [hl]
    cp $50
    ld e, $3c
    ld a, [de]
    jr c, jr_006_7180

    rlca
    jr c, jr_006_7183

jr_006_7175:
    xor a
    ld e, $11
    ld [de], a
    ld e, $0d
    ld [de], a
    inc e
    ld [de], a
    jr jr_006_7183

jr_006_7180:
    rlca
    jr c, jr_006_7175

jr_006_7183:
    ld hl, $db53
    ld e, $07
    ld a, [de]
    sub [hl]
    cp $20
    ld e, $3a
    ld a, [de]
    jr c, jr_006_719d

    rlca
    ret c

jr_006_7193:
    xor a
    ld e, $12
    ld [de], a
    ld e, $0f
    ld [de], a
    inc e
    ld [de], a
    ret


jr_006_719d:
    rlca
    ret nc

    jr jr_006_7193

    ld hl, $dd0a
    set 7, [hl]
    ret


    ld hl, $dd0a
    bit 7, [hl]
    jr nz, jr_006_71b1

    xor a
    jr jr_006_71b3

jr_006_71b1:
    ld a, $01

jr_006_71b3:
    ld e, $27
    ld [de], a
    ret


    ld e, $04
    ld hl, $db51
    ld a, [de]
    sub [hl]
    cp $50
    jr nc, jr_006_71c6

    ld a, $40
    jr jr_006_71c8

jr_006_71c6:
    ld a, $c0

jr_006_71c8:
    ld e, $45
    ld [de], a
    ld hl, $5af1
    call Call_000_21a5
    ld e, $07
    ld hl, $db53
    ld a, [de]
    sub [hl]
    cp $20
    ld hl, $5af1
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld e, $39
    jr c, jr_006_71f1

    ld a, [hl+]
    cpl
    add $01
    ld [de], a
    inc e
    ld a, [hl]
    cpl
    adc $00
    ld [de], a
    ret


jr_006_71f1:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld hl, $dd0a
    bit 7, [hl]
    ret z

    push bc
    ld h, $a8
    ld c, $0a

jr_006_7202:
    ld l, $00
    ld a, [hl]
    cp $ff
    jr z, jr_006_7228

    ld a, d
    cp h
    jr z, jr_006_7228

    ld e, $48
    ld a, [de]
    ld b, a
    cp h
    jr z, jr_006_7228

    ld l, e
    ld a, [hl]
    cp d
    jr z, jr_006_721c

    cp b
    jr nz, jr_006_7228

jr_006_721c:
    ld a, c
    ldh [$ff80], a
    call Call_000_0bba
    ldh a, [$ff9a]
    ld d, a
    ldh a, [$ff80]
    ld c, a

jr_006_7228:
    dec c
    jr z, jr_006_722e

    inc h
    jr jr_006_7202

jr_006_722e:
    pop bc
    ret


    rla
    rst $38
    dec c
    rrca
    ld h, c
    nop
    rrca
    ld c, h
    ld bc, $e204
    ld l, d
    dec c
    dec c
    ld sp, hl
    rra
    db $10
    ld e, e
    ld c, $0b
    ld e, e
    ld [hl], d
    xor b
    ld [hl], d
    or a
    ld [hl], d
    pop hl
    ld [hl], d
    ld c, l
    ld [hl], e
    ld e, l
    ld [hl], e
    or c
    ld [hl], e
    ld [hl], l
    ld [hl], h
    adc e
    ld [hl], h
    xor $74
    cp b
    ld [hl], l
    ld d, $0d
    rrca
    jr nz, jr_006_7265

    ld b, $bf
    inc h
    ld e, $0d
    pop de

jr_006_7265:
    rra
    inc c
    inc bc
    inc bc
    sub h
    ld [hl], d
    ld b, [hl]
    add hl, de
    ld sp, $1902
    rst $38
    ld [bc], a
    add hl, de
    ld sp, $1902
    rst $38
    ld [bc], a
    add hl, de
    ld sp, $2608
    nop
    ld bc, $320d
    db $10
    jr nz, @+$11

    ld h, $20
    add hl, de
    jr nc, jr_006_728a

    add hl, de
    cpl

jr_006_728a:
    inc b
    add hl, de
    jr nc, @+$04

    add hl, de
    ld l, $04
    ld b, $85
    ld [hl], d
    ld e, $26
    ld a, [de]
    or a
    jr z, jr_006_729f

    dec a
    ld [de], a
    call Call_000_1ee6

jr_006_729f:
    call Call_000_0da4
    ld bc, $5ab5
    jp Jump_000_255b


    dec c
    pop de
    rra
    or $f4
    add hl, de
    inc [hl]
    inc b
    add hl, de
    dec [hl]
    ld [$3419], sp
    inc b
    ld d, $0d
    rrca
    jr nz, jr_006_72bf

    ld b, $bf
    inc h
    ccf

jr_006_72bf:
    dec c
    pop de
    rra
    db $10
    inc b
    ld h, $00
    ld bc, $320d
    db $10
    db $10
    rrca
    ld h, $10
    inc bc
    sub h
    ld [hl], d
    ld b, [hl]
    add hl, de
    ld a, [hl+]
    inc bc
    add hl, de
    dec hl
    inc bc
    add hl, de
    inc l
    inc bc
    add hl, de
    dec l
    inc bc
    ld b, $d2
    ld [hl], d
    dec c
    rrca
    jr nz, jr_006_72ec

    ld [$24bf], sp
    dec [hl]
    dec c
    pop de
    rra

jr_006_72ec:
    nop
    ld [$3b22], sp
    ld e, a
    dec e
    inc bc
    rla
    ld [hl], e
    ld b, [hl]
    ld [$0600], sp
    ld bc, $0032
    dec c
    dec [hl]
    ld [hl], e
    ld de, $730c
    dec c
    and $22
    db $d3
    inc b
    dec c
    and $22
    db $d3
    dec b
    ld [$0000], sp
    inc bc
    cpl
    ld [hl], e
    ld b, [hl]
    add hl, de
    inc sp
    ld [bc], a
    ld d, $cd
    and h
    dec c
    ld bc, $5ab5
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $06
    ld bc, $72fc
    jp Jump_000_0846


    ld bc, $5ab5
    jp Jump_000_255b


    ld e, $48
    ld a, [de]
    ld h, a
    ld l, $40
    ld a, [hl]
    cp $04
    jr z, jr_006_7347

    cp $0c
    jr z, jr_006_7347

    xor a
    jr jr_006_7349

jr_006_7347:
    ld a, $01

jr_006_7349:
    ld e, $27
    ld [de], a
    ret


    rrca
    ld b, l
    ld b, b
    dec c
    pop de
    rra
    or $00
    rlca
    nop
    rst $38
    add hl, hl
    db $10
    ld b, $6a
    ld [hl], e
    rrca
    ld b, l
    ld b, b
    dec c
    pop de
    rra
    ld a, [bc]
    nop
    rlca
    nop
    ld bc, $f029
    dec c
    sbc d
    ld [hl], e
    dec c
    rrca
    jr nz, jr_006_7377

    ld b, $00
    ld [$ff00], sp
    ld a, [hl+]

jr_006_7377:
    db $10
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    and d
    ld [hl], e
    ld b, [hl]
    add hl, bc
    ld [bc], a
    add hl, de
    ld [$1902], sp
    add hl, bc
    ld [bc], a
    add hl, de
    ld a, [bc]
    ld [bc], a
    add hl, de
    rlca
    ld [bc], a
    ld a, [bc]
    inc bc
    xor e
    ld [hl], e
    ld b, [hl]
    add hl, de
    ld [$1626], sp
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, e
    ld a, [hl]
    ld [de], a
    ret


    call Call_000_1ee6
    call Call_000_1ed3
    call Call_000_0da4
    ld bc, $5ac3
    jp Jump_000_255b


    inc h
    ld b, a
    dec c
    rrca
    jr nz, jr_006_73bd

    ld b, $00
    dec c
    db $fd
    ld [hl], e
    daa

jr_006_73bd:
    dec c
    and $22
    db $d3
    rlca
    dec c
    inc [hl]
    ld [hl], h
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    rst $18
    ld [hl], e
    ld b, [hl]
    add hl, de
    ld [$1908], sp
    add hl, bc
    ld [$0a19], sp
    ld [$0719], sp
    ld [$d006], sp
    ld [hl], e
    call Call_000_21eb
    call Call_000_21c5
    call Call_000_0da4
    ld bc, $5ad1
    call Call_000_255b
    ret c

    call Call_000_1a25
    bit 7, a
    ret z

    ld e, $03
    ld bc, $4966
    jp Jump_000_0846


    push bc
    call Call_000_0647
    ld b, a
    ld c, $13
    call Call_000_2885
    ld a, b
    swap a
    rrca
    ld hl, $db51
    ld e, $04
    add [hl]
    ld [de], a
    inc hl
    inc e
    ld a, [hl]
    adc $00
    ld [de], a
    call Call_000_0647
    ld b, a
    ld c, $05
    call Call_000_2885
    ld a, b
    swap a
    rrca
    ld hl, $db53
    ld e, $07
    add [hl]
    ld [de], a
    inc hl
    inc e
    ld a, [hl]
    adc $00
    ld [de], a
    pop bc
    ret


    push bc
    ld h, $a0
    ld l, $07
    ld e, l
    ld a, [de]
    sub [hl]
    jr nc, jr_006_7440

    cpl
    inc a

jr_006_7440:
    ld c, a
    ld l, $04
    ld e, l
    ld a, [de]
    sub [hl]
    jr nc, jr_006_744a

    cpl
    inc a

jr_006_744a:
    ld b, a
    ld a, c
    sub b
    srl a
    srl a
    cp b
    jr c, jr_006_7457

    xor a
    jr jr_006_7461

jr_006_7457:
    ld a, c
    cp b
    jr c, jr_006_745f

    ld a, $01
    jr jr_006_7461

jr_006_745f:
    ld a, $02

jr_006_7461:
    ld hl, $5adf
    rlca
    ld e, a
    rlca
    add e
    add l
    ld l, a
    jr nc, jr_006_746d

    inc h

jr_006_746d:
    call Call_000_21a5
    call Call_000_2053
    pop bc
    ret


    inc b
    ldh [c], a
    ld l, d
    dec c
    dec c
    ld a, a
    ld [hl], h
    ld b, $ad
    ld [hl], d
    ld e, $48
    ld a, [de]
    ld h, a
    ld l, e
    ld h, [hl]
    ld l, $46
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


    dec c
    sbc e
    ld [hl], h
    dec c
    or b
    ld [hl], h
    rrca
    ld b, a
    add b
    inc bc
    and h
    dec c
    ld b, b
    ld bc, $0031
    ld a, [$dd0e]
    ld h, a
    ld l, $04
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld l, $07
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    ld hl, $dd0f
    ld a, [hl]
    inc [hl]
    ld hl, $74ce
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_006_74bf

    inc h

jr_006_74bf:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    nop
    nop
    nop
    ld hl, sp-$58
    dec b
    ld e, b
    ld a, [$0800]
    nop
    nop
    xor b
    dec b
    xor b
    dec b
    nop
    nop
    nop
    ld [$fa58], sp
    xor b
    dec b
    nop
    ld hl, sp+$00
    nop
    ld e, b
    ld a, [$fa58]
    dec c
    rrca
    ld [hl], l
    inc b
    ld d, d
    ld l, a
    dec bc
    rrca
    ld b, [hl]
    nop
    inc bc
    ld b, $75
    ld b, [hl]
    add hl, de
    inc b
    inc b
    add hl, de
    dec b
    ld a, [bc]
    add hl, de
    inc b
    ld [bc], a
    ld d, $cd
    and $1e
    call Call_000_1ed3
    jp Jump_000_0da4


    push bc
    ld bc, $7538
    ld hl, $dd0f
    ld a, [hl]
    inc [hl]
    rlca
    rlca
    rlca
    add c
    ld c, a
    jr nc, jr_006_7520

    inc b

jr_006_7520:
    ld a, [$dd0e]
    ld h, a
    call Call_000_24ec
    ld h, b
    ld l, c
    pop bc
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $11
    ld a, [hl+]
    ld [de], a
    jp Jump_000_20be


    nop
    db $f4
    nop
    nop
    nop
    nop
    cp $20
    nop
    inc c
    nop
    nop
    nop
    nop
    ld [bc], a
    ldh [rDIV], a
    or $00
    ld bc, $60f0
    cp $1a
    db $fc
    ld a, [bc]
    nop
    rst $38
    db $10
    and b
    ld bc, $08e6
    ld hl, sp+$60
    ld bc, $a0ea
    cp $16
    ld hl, sp+$08
    and b
    cp $16
    ld h, b
    ld bc, $0aea
    db $fc
    and b
    ld bc, $00e6
    rst $38
    db $10
    or $04
    ld h, b
    cp $1a
    nop
    ld bc, $0c00
    nop
    nop
    ld [bc], a
    ldh [rP1], a
    nop
    nop
    db $f4
    nop
    nop
    cp $20
    nop
    nop
    nop
    ld a, [bc]
    inc b
    and b
    ld bc, $00e6
    ld bc, $f6f0
    db $fc
    ld h, b
    cp $1a
    nop
    rst $38
    db $10
    ld [$6008], sp
    ld bc, $60ea
    ld bc, $f8ea
    ld hl, sp-$60
    cp $16
    and b
    cp $16
    inc b
    ld a, [bc]
    nop
    ld bc, $a0f0
    ld bc, $fce6
    or $00
    rst $38
    db $10
    ld h, b
    cp $1a
    dec c
    pop de
    rra
    nop
    inc b
    dec de
    push af
    ld [hl], d
    inc b

Call_006_75c1:
    ld e, $44
    ld a, [de]
    bit 7, a
    jr nz, jr_006_75d2

    sub $01
    ld [de], a
    jr c, jr_006_75ea

    ld l, $60
    ld h, d
    ld [hl], $3f

jr_006_75d2:
    call Call_000_255b
    ld a, [$dd2c]
    bit 1, a
    jr nz, jr_006_75e7

    bit 0, a
    jr nz, jr_006_75e2

    xor a
    ret


jr_006_75e2:
    call Call_000_0c61
    scf
    ret


jr_006_75e7:
    pop hl
    scf
    ret


jr_006_75ea:
    ld e, $42
    ld a, [de]
    or a
    jr z, jr_006_75d2

    ld l, $60
    ld h, d
    ld [hl], $2d
    jr jr_006_75d2

    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    inc e
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    sbc b
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
    rst $18
    rst $18
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
    adc c
    add c
    and b
    add b
    nop
    nop
    nop
    jr nz, jr_006_76c9

jr_006_76c9:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
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
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0002], sp
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
    ld [$0000], sp
    ld b, b
    nop
    nop
    nop
    ld bc, $2000
    ld bc, $0000
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
    inc b
    nop
    ld b, b
    stop
    ld bc, $0000
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
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sub b
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    nop
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
    jr nc, jr_006_7992

jr_006_7992:
    stop
    nop
    nop
    nop
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_006_79d6

jr_006_79d6:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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

    ld b, b
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    jr nz, jr_006_7a60

    nop

jr_006_7a60:
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc h
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
    cp a
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
    rst $38
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
    sub b
    nop
    ld [$0002], sp
    nop
    nop
    nop
    ld b, b
    add b
    nop
    jr nz, jr_006_7add

jr_006_7add:
    ld hl, $0000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_006_7b15

jr_006_7b15:
    inc b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    db $10
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
    inc b
    ld b, b
    inc b
    nop
    nop
    nop
    ld [hl+], a
    add b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    ld [$0000], sp
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    ld b, c
    nop
    ld [$0000], sp
    add c
    add b
    nop
    jr nz, jr_006_7be0

jr_006_7be0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    ei
    rst $38
    rst $38
    rst $28
    rst $30
    rst $38
    rst $38
    rst $30
    ld sp, hl
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
    jr nz, @+$42

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, c
    nop
    nop
    nop
    stop
    ld [$0000], sp
    nop
    ld b, b
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
    nop
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_006_7cc2

jr_006_7cc2:
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    nop
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_006_7d42

jr_006_7d42:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_006_7d4c

jr_006_7d4c:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    nop
    nop
    nop
    add b
    nop
    stop
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
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
    stop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    ld [$0003], sp
    nop
    nop
    ld b, h
    nop
    nop
    add b
    nop
    jr z, jr_006_7e4e

jr_006_7e4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ei
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
    stop
    nop
    jr nz, jr_006_7e90

jr_006_7e90:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub d
    nop
    nop
    nop
    ld b, b
    nop
    nop
    add b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, h
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    ld b, b
    nop
    nop
    nop
    nop
    jr nz, jr_006_7f48

jr_006_7f48:
    nop
    jr nz, jr_006_7f4b

jr_006_7f4b:
    ld b, b
    nop
    inc b
    jr nc, jr_006_7f90

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $10
    add b
    ld bc, $0000
    ld b, b
    nop
    inc b
    nop
    add b
    nop
    stop
    nop
    nop

jr_006_7f90:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, $00
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$2000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $30
    db $fd
    cp $ff
    db $fd
    rst $08
    rst $38
    rst $38
    di
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
