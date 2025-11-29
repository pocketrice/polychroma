; Disassembly of "kdl2.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    db $a8, $40, $b6, $40, $ab, $40, $b4, $40, $ae, $40, $b4, $40, $b1, $40

    or h
    ld b, b
    cp b
    ld b, b
    or h
    ld b, b
    ret nz

    ld b, b
    or h
    ld b, b

    db $c8, $40, $b4, $40, $cc, $40, $b4, $40

    call nc, $b440
    ld b, b

    db $d8, $40, $b4, $40, $e2, $40, $b4, $40, $e6, $40, $b4, $40, $f0, $40, $b4, $40
    db $fe, $40, $13, $41, $24, $41, $13, $41, $28, $41, $b4, $40, $3a, $41, $b4, $40
    db $43, $41, $65, $41, $55, $41, $13, $41, $59, $41, $65, $41, $69, $41, $b4, $40
    db $77, $41, $b4, $40, $8b, $41, $b4, $40, $8f, $41, $65, $41, $9b, $41, $65, $41
    db $a4, $41, $65, $41, $af, $41, $65, $41, $b9, $41, $be, $41, $c4, $41, $c9, $41

    call nz, $6741
    ld b, c
    adc $41
    db $db
    ld b, c

    db $df, $41, $67, $41

    rst $20
    ld b, c
    or h
    ld b, b

    db $eb, $41, $b6, $40

    pop af
    ld b, c
    inc de
    ld b, c

    db $f5, $41, $b4, $40

    cp $40
    or [hl]
    ld b, b

    db $fc, $41, $b6, $40, $06, $42, $b6, $40

    dec d
    ld b, d
    cp [hl]
    ld b, c
    call z, $2040
    ld b, d

    db $24, $42, $b6, $40, $80, $4f, $ff, $81, $4f, $ff, $82, $4f, $ff, $83, $4f, $ff
    db $44, $08, $40, $ff

    add c
    ld c, a
    db $fc
    rrca
    ld l, a
    ld [$fffd], sp
    add d

    db $5f, $fc, $08, $03, $6e, $fd

    rst $38

    db $81, $f8, $c1, $40, $80, $4f, $02, $4d, $02, $f8, $c2, $40

    add d
    ld hl, sp-$47
    ld b, b

    db $82, $4f, $02, $4e, $fc, $0c, $6f, $03, $fd, $ff, $81, $f8, $d9, $40, $80, $fa
    db $ed, $40, $f8, $dc, $40, $5f, $5b, $fb, $81, $5f, $5c, $80, $fc, $08, $71, $7e
    db $fd, $71, $7f, $f8, $f9, $40, $82, $59, $5d, $5f, $5c, $48, $06, $fc, $04, $61
    db $03, $61, $03, $fd, $21, $03, $2f, $03, $f8, $0c, $41, $48, $05, $47, $02, $46
    db $02, $fc, $05, $45, $04, $44, $03, $fd

    ld b, d
    dec b
    ld b, b
    rst $38

    db $81, $f8, $ff, $40, $82, $4f, $02, $81, $5d, $80, $fc, $06, $6f, $02, $fd

    ld b, [hl]
    inc bc
    ld b, a
    inc bc
    ld hl, sp+$33
    ld b, c

    db $83, $5f, $5c, $fc, $05, $7e, $fd, $40, $ff, $82, $4f, $02, $4e, $05

    ld c, l
    dec b
    cpl
    ld [bc], a
    cpl
    inc bc
    ld hl, $2102
    inc bc
    ld hl, sp+$4a
    ld b, c

    db $80, $f8, $00, $41, $83, $5f, $82, $4c, $02, $2f, $03, $21, $03, $f8, $5e, $41
    db $44, $02, $40, $ff, $82, $5b, $4c, $02, $4d, $06, $4e, $21, $03, $2f, $03, $f8
    db $70, $41, $83, $5f, $80, $4e, $02, $81, $4a, $fc, $05, $7f, $fd, $6f, $03, $2f
    db $04, $21, $04, $f8, $84, $41, $2f, $f8, $69, $41, $83, $5f, $81, $4c, $02, $21
    db $03

    cpl
    inc bc
    ld hl, sp-$6c
    ld b, c

    db $80, $5f, $83, $5d, $fc, $05, $7f

    db $fd
    rst $38

    db $80, $5f, $82, $5e, $81, $5d, $5c

    ld e, e
    ld e, d
    ld e, c
    rst $38

    db $5f, $fc, $05, $7e, $fd, $53, $52

    ld d, c
    ld d, b
    rst $38

    db $82, $5f, $6e, $03, $ff, $4c, $6a, $02, $7b, $40, $ff, $80, $5f, $6f, $02, $ff
    db $4e, $68, $02, $40, $ff

    add d
    ld e, a
    add e
    db $fc
    ld b, $7f
    db $fd
    db $fc
    ld [$026f], sp
    db $fd
    rst $38
    ld b, h
    inc b
    ld b, b
    rst $38

    db $82, $5f, $7c, $fc, $03, $7d, $fd, $ff

    add e
    ld hl, sp-$33
    ld b, b

    db $82, $4f, $7f, $6e, $07

    rst $38
    add e
    ld hl, sp-$01
    ld b, b

    db $83, $4a, $65, $02

    ld hl, sp+$01
    ld b, c

    db $82, $5e, $83, $5f, $fc, $0a, $6f, $08

    db $fd
    rst $38

    db $83, $5f, $80, $55, $52

    ld d, l
    db $fc
    inc bc
    ld l, [hl]
    ld [bc], a
    ld h, c
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    add c
    ld e, a
    add e
    ld l, h
    inc bc
    db $fc
    ld a, [bc]
    ld l, a
    ld [de], a
    db $fd
    rst $38
    ld b, a
    ld l, a
    inc d
    rst $38

    db $4f, $80, $01, $92, $7f, $fc, $03, $7d, $fd, $66, $01, $f8, $25, $42

    ld a, [$dde4]
    cp e
    ret z

    ld a, e
    ld [$dde4], a
    ld b, e
    ld hl, $ce56
    ld c, $04
    xor a

jr_01f_4242:
    ld [hl+], a
    dec c
    jr nz, jr_01f_4242

    ld hl, $4281
    ld de, $ce2e
    ld c, $14

jr_01f_424e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_01f_424e

    ld a, $ff
    cp b
    ret z

    ld e, b
    ld d, $00
    ld hl, $7e0e
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    ld h, a
    push hl
    ld bc, $0007

jr_01f_4269:
    ld hl, $ce52
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_01f_4279

    call Call_000_2b97
    pop hl
    dec h
    push hl
    jr z, jr_01f_427f

jr_01f_4279:
    dec c
    ld a, $03
    cp c
    jr nz, jr_01f_4269

jr_01f_427f:
    pop hl
    ret


    db $08, $00, $08, $00, $80, $00, $00, $08, $00, $80, $80, $00, $00, $00, $80, $00
    db $00, $08, $00, $80

    inc b
    inc b
    ld b, e
    nop
    ld d, b
    ld b, l
    db $10
    ld hl, $0447
    xor b
    ld c, b
    inc c
    inc b
    ld d, e
    ld b, e
    nop
    ld b, b
    ld b, l
    db $10
    ld c, c
    ld b, a
    inc b
    cp [hl]
    ld c, b
    inc c

    db $03, $44, $49, $00, $64, $49, $04, $6d, $49, $10, $03, $87, $49, $10, $b7, $49
    db $00, $11, $4a, $04, $04, $6b, $4a, $10, $3d, $4b, $04, $82, $4c, $00, $2e, $4d
    db $0c, $04, $9a, $4a, $10, $6f, $4b, $04, $aa, $4c, $00, $44, $4d, $0c, $04, $93
    db $4d, $00, $9d, $4e, $10, $a2, $4f, $04, $65, $50, $0c, $04, $c0, $50, $04, $a5
    db $51, $10, $c4, $52, $00, $fa, $53, $0c, $04, $f6, $50, $04, $f0, $51, $10, $ee
    db $52, $00, $22, $54, $0c

    ldh a, [c]
    ld b, $fe
    inc bc
    db $fc
    ld [bc], a
    or $21
    ldh a, [$ff0a]
    db $f4
    sub [hl]
    push af
    ld e, $fa
    inc l
    ld b, l
    db $10
    add hl, de
    db $f4
    inc a
    db $10
    rlca
    db $f4
    sub [hl]
    rla
    db $f4
    inc a
    rlca
    db $f4

jr_01f_4322:
    or h
    jr jr_01f_4322

    push af
    ld a, [hl+]
    pop af
    db $fd
    ld a, [$452c]
    db $10
    add hl, de
    db $f4
    inc a
    db $10
    rlca
    db $f4
    sub [hl]
    rla
    db $f4

jr_01f_4336:
    inc a
    rlca
    db $f4
    or h

jr_01f_433a:
    jr jr_01f_4336

    inc l
    ld b, l
    add hl, de
    db $f4
    inc a
    dec de
    db $f4
    rst $38
    jr jr_01f_433a

    sub [hl]
    add hl, de
    push af
    ld [hl], $f6
    rla
    db $f4
    ld d, b
    ld [bc], a
    db $f4
    sub [hl]
    rlca
    inc c
    ldh a, [c]
    ld b, $fe
    inc bc
    or $23
    ldh a, [$ff0b]
    ld a, [$4521]
    db $10
    ld a, [$4509]
    pop af
    rst $38
    or $23
    cp e
    push af
    ld [hl], $f4
    sub [hl]
    or $17
    ldh a, [rDIV]
    rst $00
    dec b
    ldh a, [$ff03]
    rst $00
    dec b
    sub $05
    sub $05
    ldh a, [rTAC]
    db $db
    dec b
    db $db
    dec b
    or $23
    ldh a, [$ff0b]
    ld a, [$4521]
    add hl, de
    ld a, [$4509]
    pop af
    inc bc
    dec de
    ld d, b
    or $01
    push af
    ld a, [hl+]
    ldh a, [rTAC]
    db $f4
    sbc e
    rlca
    ret nc

    add hl, bc
    push af
    ld [de], a
    ldh a, [rTAC]
    or $07
    nop
    rst $18
    dec d
    ldh a, [rTAC]
    push af
    ld e, $fa
    pop af
    ld b, h
    ld a, [$44c2]
    push af
    rra
    ldh a, [$ff09]
    ld a, [$44f1]
    push af
    ld e, $fa
    add c
    ld b, h
    or $17
    ldh a, [$ff09]
    ld a, [$4476]
    db $10
    ld a, [$445e]

jr_01f_43c3:
    pop af
    cp $f6
    inc hl
    cp e
    push af
    ld [hl], $f0
    ld [$17f6], sp
    db $f4
    adc h
    rlca
    jr nc, jr_01f_43c3

    add hl, bc
    ld a, [$4476]
    add hl, de
    ld a, [$445e]
    dec de
    ldh a, [rTIMA]
    push af
    ld a, [hl+]

jr_01f_43e0:
    ld a, [$4448]
    push af
    jr z, jr_01f_43e0

    ld c, b
    ld b, h
    push af
    ld a, [hl+]
    ld a, [$4448]
    ld a, [$4421]
    push af
    ld [de], a
    or $21
    ldh a, [rTAC]
    db $f4
    sub [hl]
    ld d, b

jr_01f_43f9:
    dec de
    push af
    ld e, $f0
    ld b, $f4
    ld c, l
    dec de
    db $f4
    rst $38
    ld a, [de]
    db $f4
    ret z

    dec de
    jr nc, jr_01f_43f9

    ld [$2af5], sp
    db $f4
    sub [hl]
    nop
    db $10
    ccf
    push af
    ld b, $f4
    ld l, [hl]
    ldh a, [$ff08]
    or $07
    ld [bc], a
    db $10
    db $f4
    rst $38
    ld bc, $57f8
    ld b, e
    db $fc
    inc b
    sbc $06
    rst $10
    inc b
    db $fd
    db $fc
    inc b
    db $dd
    ld b, $d7
    inc b
    db $fd
    db $fc
    inc bc
    sbc $06
    rst $10
    inc b
    db $fd
    or $17
    ldh a, [rTAC]
    db $f4
    add d
    push af
    ld b, d
    ld a, [de]
    dec de
    db $f4
    rst $38
    ld e, $f4
    add d
    rra
    nop
    ei
    or $21
    db $f4
    jp Jump_000_02fc


    db $fc
    inc b
    ret nz

    ld b, $d9
    inc b
    db $fd
    db $fc
    inc b
    rst $18
    ld b, $d9
    inc b
    db $fd
    db $fd
    ei
    jr jr_01f_4476

    ld d, b
    db $f4
    nop
    call nc, $d605
    dec b
    ret c

    rlca
    ret nc

    inc bc
    db $f4
    sub c
    db $10
    add hl, de
    dec de
    stop
    db $10
    db $f4
    and $fb

jr_01f_4476:
    db $f4
    sbc e
    push af
    ld a, [hl+]
    jr @+$12

    add hl, de
    dec de
    ld [hl], b
    add hl, de
    ei
    ld d, b
    db $f4
    ld a, [$05c9]
    rlc l
    inc c
    db $f4
    jp nc, $1006

    push af
    ld a, [hl+]
    db $f4
    ld a, [$1004]
    db $f4
    jp nc, $f402

    ld a, [$f400]

jr_01f_449a:
    jp nc, $f01f

    rlca
    db $f4
    and b
    or $21
    push af
    ld [hl], $10
    nop
    db $10
    rra
    jr nc, jr_01f_449a

    dec b
    db $f4
    ld a, [$36f5]
    push bc
    dec b
    db $f4
    or h
    reti


    dec b
    push af
    ld a, [hl+]
    pop af
    ld [bc], a
    db $f4
    ld a, [$05c5]
    db $f4
    or h
    reti


    dec b
    ei
    ret nc

    dec bc
    rlca
    ld b, $f4
    ld a, [$f425]
    jp nc, Jump_000_101e

    dec b
    db $10
    inc b
    db $f4
    ld a, [$f40c]
    jp nc, Jump_000_09c9

    push af
    ld a, [hl+]
    ldh a, [rTIMA]
    or $07
    db $10
    db $f4
    ld a, [$f41d]
    xor d
    nop
    db $f4
    rst $38
    daa
    db $f4
    xor d
    inc b
    db $f4
    ldh a, [c]
    nop
    db $f4
    xor d
    dec e
    ei
    or $09
    db $f4
    ld a, [$0bc9]
    db $f4
    jp nc, Jump_000_1002

    add hl, bc
    db $10
    rlca
    dec h
    db $f4
    ld a, [$f407]
    jp nc, Jump_000_100c

    rst $00
    add hl, bc
    ei
    jr jr_01f_4521

    ld d, b
    db $f4
    nop
    call nc, $d605
    dec b
    ret c

    rlca
    ret nc

    inc bc
    db $f4
    sub c
    db $10
    add hl, de
    dec de
    stop
    db $10
    db $f4
    and $fb

jr_01f_4521:
    db $f4
    sbc e
    push af
    ld a, [hl+]
    jr jr_01f_4537

    add hl, de
    dec de
    ld [hl], b
    add hl, de
    ei
    db $f4
    or h
    add hl, de
    db $f4
    ld b, c
    db $10
    dec de
    db $f4
    sub [hl]
    add hl, de
    db $10

jr_01f_4537:
    add hl, de
    add hl, de
    db $f4
    ld b, c
    db $10
    dec de
    db $f4
    sub [hl]
    ei
    ldh a, [c]
    ld b, $f6
    rlca
    ldh a, [$ff0a]
    cp $03
    db $f4
    ret z

    push af
    ld [de], a
    nop
    ld hl, sp+$59
    ld b, l
    ldh a, [c]
    ld b, $fe
    inc bc
    push af
    ld [de], a
    ld a, [$46fb]
    ldh a, [$ff0a]
    db $f4
    ret z

    ld a, [$46f3]
    nop
    ld a, [$46f3]
    ld a, [$46e4]
    ld a, [$46d5]
    ldh a, [$ff0a]
    nop
    ld a, [$46f3]
    ld a, [$46c5]
    ld a, [$469a]
    push af
    ld [de], a
    ld a, [$4691]
    ld a, [$466a]
    push af
    inc de
    ld a, [$4691]
    push af
    ld [de], a
    ld a, [$4629]
    ldh a, [$ff0a]
    or $0b
    push af
    ld [de], a
    db $f4
    call nz, $fa00
    di
    ld b, [hl]
    nop
    ld a, [$46f3]
    ld a, [$46e4]
    ld a, [$46d5]
    nop
    ld a, [$46f3]
    ld a, [$46c5]
    ld a, [$45d7]
    ld a, [$45ae]
    ld hl, sp+$5b
    ld b, l
    push af
    ld b, $f0
    inc c
    jr nc, jr_01f_45c0

    jr nz, @-$0a

    and b
    rlca
    db $f4
    rst $38
    inc c
    db $f4
    ld l, [hl]
    pop af
    db $fc
    nop

jr_01f_45c0:
    pop af
    inc b
    push af
    ld [de], a
    db $f4
    add d
    dec de
    daa
    db $db
    rrca
    pop af
    db $fc
    jp nz, $f105

    inc b
    ld [bc], a
    db $10
    db $f4
    ret z

    ld bc, $fb00
    dec e
    add hl, bc
    db $10
    inc b
    ret nc

    rrca
    ret


    dec b
    ld [$c4f4], sp
    daa
    db $10
    dec de
    db $fc
    ld [bc], a
    rlca
    db $10
    dec de
    db $10
    db $fd
    daa
    dec de
    rlca
    ld b, $25
    add hl, de
    db $fc
    ld [bc], a
    dec b
    db $10
    add hl, de
    db $10
    db $fd
    dec b
    db $10
    add hl, de
    db $f4
    ldh a, [rTIMA]
    db $f4
    call nz, Call_000_2706
    dec de
    db $fc
    ld [bc], a
    rlca
    db $10
    dec de
    db $10
    db $fd
    rlca
    db $10
    dec de
    rlca
    ld b, $25
    add hl, de
    db $fc
    ld [bc], a
    dec b
    db $10
    add hl, de
    db $10
    db $fd
    ldh a, [rIF]
    db $f4
    add l
    ld a, [de]
    dec de
    db $f4
    db $fd
    ld e, $f4
    adc h
    rra
    db $f4
    add l
    nop
    ei
    db $f4
    rst $38
    ld a, [bc]
    db $f4
    call nz, Call_000_0405
    inc hl
    pop af
    db $fd
    rrca
    pop af
    inc bc
    ld a, [bc]
    inc bc
    ld [hl+], a
    pop af
    cp $0e
    pop af
    inc bc
    ld [hl+], a
    dec e

jr_01f_4640:
    inc e
    dec de
    pop af
    rst $38
    push af
    ld [de], a
    or $21
    db $10
    db $f4
    and b
    rlca
    db $10
    dec de
    jr nc, jr_01f_4640

    dec b
    or $21
    push af
    ld [hl], $f4
    ld a, [$05c7]
    db $f4
    or h
    db $db
    dec b
    push af
    ld a, [hl+]
    pop af
    ld [bc], a
    db $f4
    ld a, [$05c7]
    db $f4
    or h
    db $db
    dec b
    ei
    dec e
    db $10
    add hl, hl
    pop af
    db $fd
    dec e
    pop af
    inc bc
    db $f4
    ldh a, [$ff09]
    db $f4
    xor d
    ld [$c4f4], sp
    ld b, a
    dec sp
    nop
    db $f4
    jp nc, $f407

    call nz, $2506
    db $f4
    xor d
    nop
    db $10
    db $f4
    rst $38
    add hl, sp
    dec de
    db $f4
    call nz, $1e1d
    ei
    ld e, $f0
    dec c
    db $10
    ld a, [hl+]
    ld e, $1e
    ld a, [hl+]
    ei
    db $f4
    cp [hl]
    add hl, bc
    db $f4
    adc h
    dec e
    add hl, bc
    add hl, hl
    ld a, [bc]
    db $f4
    sbc $0b
    db $f4
    adc h
    inc l
    dec de
    dec de
    push af
    ld [hl], $f1
    ei
    or $01
    add hl, de
    push af
    ld [de], a
    ldh a, [rTAC]
    db $10
    or $0b
    db $f4
    call nz, $1f00
    ldh a, [rTIMA]

jr_01f_46bf:
    rra
    ldh a, [$ff0b]
    db $f4
    call nz, Call_000_0cfb
    db $f4
    nop
    dec b
    db $f4
    sub [hl]
    ld b, $f4
    nop
    daa
    db $f4
    cp [hl]
    ld [bc], a
    dec bc
    ld [$02fb], sp
    db $10
    ld c, $f4
    ld h, h
    daa
    push af
    ld e, $27
    db $f4
    ret z

    push af
    ld [de], a
    rlca
    ei
    nop
    db $10
    inc c
    jr nz, jr_01f_46bf

    dec b
    db $db
    dec b
    nop
    pop af
    ei
    ld bc, $05f1
    ei
    db $10
    inc c
    stop
    nop
    inc c
    db $10
    ei
    ldh a, [$ff0a]
    or $07
    db $f4
    sub [hl]
    db $fc
    inc bc
    daa
    rlca
    db $fc
    inc b
    daa
    db $fd
    rlca
    dec b
    dec b
    ld b, $06
    db $fd
    ld b, a
    daa
    jp nz, $dd05

    dec b
    ld a, [de]
    dec sp
    daa
    db $f4
    nop
    ld b, $f4

jr_01f_471c:
    add d
    daa
    dec de
    jr nz, jr_01f_471c

    ldh a, [c]
    ld b, $fe
    inc bc
    ldh a, [$ff0a]
    or $21
    db $fc
    inc bc
    ld a, [$489a]
    db $10
    rra
    jr nc, jr_01f_474f

    db $10
    db $f4
    or h
    ld e, $fd
    ld a, [$489a]
    rra
    db $10
    db $f4
    rst $38
    ld e, $f4
    xor d
    rra
    db $10
    push af
    ld [de], a
    db $f4
    sub [hl]
    dec de
    nop
    ldh a, [c]
    ld b, $fe
    inc bc
    ldh a, [rTMA]

jr_01f_474f:
    or $02
    db $fc
    ld [bc], a
    ld a, [$488d]
    ld a, [$487d]
    db $fd
    ld a, [$488d]
    ld a, [$4874]
    ld a, [$4864]
    push af
    ld e, $fa
    ld c, c
    ld c, b
    ld a, [$481e]
    push af
    rra
    ld a, [$4849]
    ld d, b
    push af
    ld e, $fa
    push af
    ld b, a
    db $fc
    ld [bc], a
    ld a, [$488d]
    ld a, [$47e5]
    db $fd
    ld a, [$488d]
    ld a, [$4874]
    ld a, [$47dc]
    push af
    ld a, [hl+]

jr_01f_478a:
    ld a, [$47d4]
    push af
    jr z, jr_01f_478a

    call nc, $f547
    ld a, [hl+]
    ld a, [$47d4]
    ld a, [$47bf]
    push af
    ld a, [hl+]
    db $f4
    sub [hl]
    ld d, b
    jr @-$0a

    ld c, l
    jr @-$0a

    rst $38
    rla
    db $f4
    ret z

    jr jr_01f_47da

    push af
    ld a, [hl+]
    db $f4
    add d
    ld [bc], a
    db $10
    daa
    db $10
    push af
    ld a, [hl+]
    rst $00
    dec b
    ret nz

    dec b
    jp nz, $db05

    dec b
    ld hl, sp+$51
    ld b, a
    db $fc
    inc b
    dec b
    add hl, de
    db $fd
    dec b
    add hl, de
    db $f4
    and b
    push bc
    dec b
    push bc
    dec b
    db $f4
    ld h, e
    ld b, $07
    ld a, [bc]
    dec bc
    inc c
    ei
    db $fc
    ld [$3cf4], sp
    rlca
    dec de

jr_01f_47da:
    db $fd
    ei
    db $fc
    ld [bc], a
    inc b
    dec e
    nop
    db $fd
    rlca
    dec de
    ei
    db $fc
    ld [bc], a
    ld [bc], a
    rra
    dec de
    db $fd
    db $f4
    cp [hl]
    rst $00
    dec b
    rst $00
    dec b
    db $f4
    ld e, d
    dec de
    ei
    rlca
    db $f4
    ldh a, [c]
    ld b, $f4
    call z, $1000
    inc c
    db $10
    rlca
    db $f4
    ldh a, [c]
    ld b, $f4

jr_01f_4804:
    call z, $f405
    and b
    db $10
    push af
    ld a, [hl+]
    dec b
    db $10
    dec b
    jr nc, jr_01f_4804

    ld h, c
    push af
    ld [hl], $c7
    dec b
    db $db
    dec b
    push af
    ld a, [hl+]
    rst $00
    dec b
    db $db
    dec b
    ei
    ret nc

    inc c
    nop
    rra
    db $f4
    ldh a, [c]
    ld a, $f4
    call z, $1019
    ld e, $10
    ld e, $f4
    ldh a, [c]
    inc b
    db $f4
    call z, Call_000_09c0
    push af
    ld a, [hl+]
    ret nc

    add hl, bc
    or $07
    db $f4
    sub [hl]
    add hl, de
    dec e
    call nz, $d00f
    dec b
    db $f4
    add d
    nop
    dec e
    add hl, de
    or $09
    ei
    db $f4
    ldh a, [c]
    ldh a, [rTAC]
    or $09
    ret nc

    ld [bc], a
    dec b
    db $f4
    call z, $101d
    dec b
    db $10
    inc b
    ld [hl+], a
    db $f4
    ldh a, [c]
    nop
    db $f4
    call z, Call_000_1004
    ret nz

    ld [$fcfb], sp
    ld [bc], a
    inc b
    dec e
    nop
    db $fd
    rlca
    inc b
    ld d, b
    db $f4
    sbc e
    push af
    ld a, [hl+]
    inc c
    ld [hl], b
    ei
    dec e
    nop
    dec b
    rra
    ld [bc], a
    dec de
    rlca
    rra
    ei
    db $fc
    ld [bc], a
    ld [bc], a
    rra
    dec de
    db $fd
    db $f4
    cp [hl]
    rst $00
    dec b
    rst $00
    dec b
    db $f4
    ld e, d
    dec de
    ei
    db $f4
    ld e, d
    push af
    ld a, [hl+]
    db $fc
    ld [bc], a
    inc b
    nop

jr_01f_4895:
    dec de
    db $fd
    rlca
    dec de
    ei
    db $f4
    or h
    push af
    ld e, $1f
    jr nc, jr_01f_4895

    sub [hl]
    rra

jr_01f_48a3:
    db $10
    rra
    rra
    jr nc, jr_01f_48a3

    ldh a, [c]
    ld b, $fe
    inc bc
    db $f4
    ld l, [hl]
    or $10
    db $fc
    rrca
    ld a, [$4939]
    db $fd
    ldh a, [$ff0a]
    ld [bc], a
    pop bc
    dec b
    pop bc
    dec b
    inc hl
    ldh a, [c]
    ld b, $fe
    inc bc
    or $10
    db $f4
    ld l, [hl]
    db $fc
    ld c, $fa
    add hl, sp
    ld c, c
    db $fd
    rrca
    ldh a, [$ff0a]
    or $1a
    jp $c204


    inc bc
    pop bc
    inc bc
    ldh a, [$ff0c]
    ld [bc], a
    ldh a, [$ff0a]
    inc bc
    ld l, a
    or $10
    db $fc
    rrca
    ld a, [$4939]
    db $fd
    ld l, a
    db $fc
    dec c
    ld a, [$4939]
    db $fd
    ldh a, [$ff0a]
    inc bc
    pop bc
    dec b
    jp Jump_000_0405


    ld bc, $04fc
    ld a, [$4910]
    db $fd
    db $f4
    ld l, [hl]
    ld a, [$4939]
    ld a, [$4939]
    rrca
    ldh a, [$ff0c]
    inc bc
    rrca
    ldh a, [$ff0b]
    ld bc, $f86f
    add $48
    or $10
    db $f4
    ld l, [hl]
    ldh a, [$ff09]
    inc h
    ld hl, $f003
    dec b
    inc bc
    ldh a, [$ff09]
    ld b, c
    ret nz

    dec b
    pop bc
    dec b
    inc bc
    inc h
    jp nz, $c205

    dec b
    ldh a, [$ff0b]
    or $0b
    db $f4
    rst $38
    jp $fc00


    dec b
    di
    inc b
    pop af
    rst $38
    db $fd
    ei
    ldh a, [rTAC]
    ld a, [bc]
    ld [bc], a
    ldh a, [$ff0a]
    inc b
    ldh a, [rTAC]
    ld [bc], a
    ei

    db $f2, $03, $fe, $01, $f6, $14, $f4, $f0, $f5, $33, $f0, $09, $00, $10, $1f, $1e
    db $10, $1d, $1c, $10, $57, $1c, $1b, $90, $f4, $00, $c6, $02, $c7, $06, $10, $ff
    db $f2, $03, $fe, $02, $f6, $16, $f8, $4a, $49, $f2, $03, $fe, $03, $f6, $07, $f0
    db $0b, $f4, $ff, $f5, $33, $14, $10, $1b, $04, $10, $14, $1c, $17, $1c, $20, $1c
    db $1b, $10, $ff, $f2, $03, $fe, $03, $f6, $21, $f5, $15, $fa, $9a, $49

    push af
    rla
    ld a, [$499a]
    ld hl, sp-$79
    ld c, c

    db $fc, $02, $f0, $0b, $f4, $6c, $3b, $3b, $30, $27, $d0, $38, $3d, $3d, $30, $22
    db $30, $3d, $f4, $82, $16, $f1, $fd, $16, $f1, $fd, $36, $fd

    ei

    db $f2, $03, $fe, $03, $f6, $23, $f5, $2d, $fa, $d0, $49, $fa, $d0, $49

    push af
    cpl
    ld a, [$49d0]
    ld a, [$49d0]
    ld hl, sp-$49
    ld c, c

    db $f4, $78, $f0, $08, $06, $10, $1f, $f1, $fa, $1f, $f1, $06, $f4, $3c, $22, $3d
    db $30, $f6, $21, $f4, $78, $1f, $f1, $fc, $1f, $f1, $04, $f4, $78, $02, $50, $f6
    db $23, $07, $10, $00, $f1, $fc, $00, $f1, $04, $f4, $3c, $24, $27, $f6, $21, $26
    db $f4, $78, $00, $f1, $fc, $0c, $f1, $04, $0e, $f1, $fd, $0e, $f1, $fd, $0e, $0e
    db $fb, $f2, $03, $fe, $03, $f6, $23, $f5, $2b, $fa, $2a, $4a, $fa, $2a, $4a

    push af
    dec l
    ld a, [$4a2a]
    ld a, [$4a2a]
    ld hl, sp+$11
    ld c, d

    db $f0, $08, $f4, $78, $1f, $10, $18, $f1, $fc, $1c, $f1, $04, $01, $10, $15, $50
    db $f6, $21, $11, $f1, $fb, $11, $f1, $05, $f4, $3c, $33, $31, $f6, $23, $f4, $78
    db $01, $10, $1a, $f1, $fc, $1d, $f1, $04, $04, $10, $16, $10, $f6, $21, $1f, $1f
    db $18, $f1, $fc, $0d, $f1, $04, $c8, $08, $f1, $fd, $08, $f1, $fd, $08, $c8, $06
    db $fb, $f2, $03, $fe, $03, $f4, $5a, $f5, $14, $fa, $2d, $4b, $fa, $2d, $4b, $f5
    db $16, $fa, $2d, $4b, $f4, $78, $1e, $3e, $25, $1e, $3e, $f5, $14, $fa, $2d, $4b
    db $fa, $2d, $4b, $f5, $16, $fa, $2d, $4b, $f4, $c8, $0a, $f4, $5a, $3e, $3e, $50
    db $f2, $03, $fe, $03, $f4, $5a, $f5, $14, $fa, $2d, $4b, $fa, $2d, $4b, $f5, $16
    db $fc, $03, $fa, $2d, $4b, $fd, $f5, $1b, $fa, $2d, $4b, $f5, $14, $fa, $2d, $4b
    db $40, $00, $0c, $00, $20, $fa, $2d, $4b, $fa, $2d, $4b, $f5, $16, $fc, $03, $fa
    db $2d, $4b, $fd, $f5, $1b, $fa, $2d, $4b, $fa, $2d, $4b, $f1, $fb, $1e, $f1, $05
    db $32, $52, $30, $f4, $76, $f5, $14, $fa, $23, $4b, $f5, $13, $fa, $23, $4b, $f5
    db $12, $1d, $1d, $10, $f1, $fb, $22, $f1, $05, $1d, $36, $1b, $07, $02, $3b, $3d
    db $1f, $f5, $15, $fa, $23, $4b, $f5, $14, $fa, $23, $4b, $1c, $3c, $f1, $fb, $23
    db $f1, $05, $17, $3c, $01, $15, $01, $12, $10, $f0, $0b, $f4, $6f, $0b, $f0, $0f
    db $13, $f0, $09, $f4, $e7, $13, $f8, $9a, $4a, $1e, $3e, $f1, $fb, $2a, $f1, $05
    db $1e, $3e, $fb, $f0, $0e, $f4, $64, $59, $f1, $fb, $f4, $50, $45, $f1, $05, $f4
    db $5a, $39, $fb, $f2, $03, $fe, $03, $f0, $07, $f4, $85, $f6, $29, $f5, $20, $fa
    db $71, $4c, $fa, $71, $4c, $fa, $54, $4c, $f5, $20, $fa, $71, $4c, $fa, $71, $4c
    db $fa, $43, $4c, $f5, $2c, $04, $07, $0e, $0c, $f1, $fa, $0c, $f1, $06, $0a, $f1
    db $fa, $0a, $f1, $03, $00, $f2, $03, $fe, $03, $f0, $07, $f4, $85, $f6, $29, $f5
    db $20, $fa, $71, $4c, $fa, $71, $4c, $fc, $02, $fa, $43, $4c, $fd, $fa, $32, $4c
    db $07, $1e, $05, $04, $f1, $fa, $04, $f1, $06, $00, $0c, $00, $fa, $71, $4c, $fa
    db $21, $4c, $fa, $71, $4c, $fa, $71, $4c, $fc, $02, $fa, $43, $4c, $fd, $fa, $32
    db $4c, $07, $1e, $05, $07, $f1, $fa, $07, $f1, $06, $1e, $05, $f1, $fc, $02, $f1
    db $04, $fa, $21, $4c, $05, $19, $f1, $fb, $19, $f1, $05, $19, $70, $f4, $6f, $f6
    db $19, $f5, $25, $fa, $14, $4c, $f5, $24, $fa, $0b, $4c, $05, $00, $03, $01, $08
    db $01, $0d, $f0, $02, $0d, $f5, $26, $fa, $14, $4c, $f5, $25, $05, $03, $01, $1e
    db $07, $03, $0d, $f0, $02, $0d, $f0, $05, $0c, $f0, $02, $0c, $10, $f6, $21, $f0
    db $09, $f5, $33, $12, $17, $f1, $fc, $03, $f1, $04, $17, $f0, $04, $17, $f8, $6f
    db $4b, $01, $1a, $01, $1a, $00, $1a, $00, $1a, $fb, $f0, $05, $fc, $04, $04, $1d
    db $fd, $fc, $04, $02, $1b, $fd, $fb, $04, $05, $06, $07, $f1, $fa, $07, $f1, $06
    db $1e, $0c, $f1, $fa, $0c, $f1, $06, $fb, $09, $1e, $02, $09, $f1, $fa, $09, $f1
    db $06, $1e, $05, $f1, $fa, $05, $f1, $06, $fb, $09, $1f, $07, $09, $f1, $fa, $09
    db $f1, $06, $1f, $05, $f1, $fa, $05, $f1, $06, $fb, $0a, $02, $05, $0a, $f1, $fa
    db $0a, $f1, $06, $07, $f1, $fa, $07, $f1, $06, $1e, $0a, $00, $04, $0e, $f1, $fa
    db $0e, $f1, $06, $0c, $00, $10, $fb, $09, $00, $07, $09, $f1, $fa, $09, $f1, $06
    db $00, $05, $f1, $fa, $05, $f1, $06, $fb, $f2, $03, $fe, $03, $fc, $0c, $70, $fd
    db $f4, $85, $f5, $2c, $f0, $07, $f6, $29, $0a, $09, $07, $05, $07, $05, $04, $02
    db $00, $04, $0a, $07, $f1, $fa, $07, $f1, $06, $04, $f1, $fa, $04, $f1, $03, $1e
    db $f2, $03, $fe, $03, $fa, $f3, $4c, $fa, $16, $4d, $fa, $f3, $4c, $0b, $09, $27
    db $3e, $1f, $42, $00, $d0, $31, $fa, $e4, $4c, $49, $c7, $38, $f5, $26, $fa, $e4
    db $4c, $26, $27, $30, $f6, $21, $f0, $09, $f5, $33, $f4, $6f, $14, $19, $f1, $fc
    db $05, $f1, $04, $19, $f0, $04, $19, $f8, $aa, $4c, $f0, $09, $f6, $29, $f4, $dc
    db $49, $4b, $2c, $47, $80, $25, $24, $05, $fb, $f5, $25, $f6, $0c, $f4, $b6, $f0
    db $09, $07, $07, $06, $10, $27, $26, $27, $09, $0b, $10, $4c, $49, $02, $10, $01
    db $c2, $46, $05, $05, $04, $10, $25, $24, $25, $07, $49, $fb, $0b, $09, $07, $07
    db $1b, $10, $24, $04, $02, $10, $f6, $10, $f5, $36, $11, $14, $1b, $1a, $16, $0e
    db $f0, $04, $0e, $fb, $f2, $03, $fe, $03, $f6, $10, $f0, $07, $fc, $0e, $fa, $88
    db $4d, $fd, $f4, $ff, $04, $2f, $fa, $88, $4d, $0f, $f2, $03, $fe, $03, $f6, $10
    db $f0, $07, $fc, $1e, $fa, $88, $4d, $fd, $fa, $61, $4d, $fc, $07, $fa, $75, $4d
    db $fd, $fa, $61, $4d, $f8, $44, $4d, $04, $21, $f4, $ff, $04, $f4, $64, $02, $01
    db $f4, $ff, $f6, $1b, $01, $f4, $64, $f6, $10, $02, $fb, $f4, $c8, $03, $f4, $64
    db $02, $01, $f4, $b4, $03, $f4, $fa, $04, $f4, $64, $02, $01, $01, $fb, $f4, $64
    db $0a, $01, $f4, $ff, $04, $f4, $64, $02, $fb, $f2, $01, $fe, $03, $f0, $0c, $f5
    db $26, $f4, $ff, $f6, $0c, $db, $04, $dd, $04, $df, $03, $c0, $03, $c2, $03, $c4
    db $03, $c5, $03, $fa, $64, $4e

    db $f4
    rst $38
    jr nz, @-$0a

    sub [hl]

jr_01f_4db5:
    dec a
    inc h
    db $f4
    rst $38
    jp nz, $f616

    add hl, de
    ldh a, [rTIMA]
    db $f4
    ld h, h
    push af
    ld a, $27
    db $db
    add hl, bc
    ldh a, [rTAC]
    push af
    ld h, $f6
    inc c
    db $f4
    rst $38
    db $db
    inc bc
    ret nz

    inc bc
    call nz, $fa03
    ld h, h
    ld c, [hl]
    ld [hl+], a
    db $f4
    jp c, $03dd

    db $dd
    inc bc
    db $dd
    inc b
    db $f4
    ld a, h
    ccf
    jr nz, jr_01f_4db5

    jr z, @-$0a

    ld l, a
    push af
    ld [hl-], a
    ld a, [$4e51]
    pop af
    db $fc
    add hl, sp
    dec sp
    add hl, sp
    ld e, b
    ret nc

    inc hl
    pop af
    inc b
    ld a, [$4e51]
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    db $db
    ld [de], a
    or $18
    ldh a, [rTMA]
    db $f4
    rst $38
    push af
    add hl, sp
    call nc, $de04
    inc b
    jp nz, $f004

    inc c
    rst $00
    inc b
    ldh a, [rDIV]
    rst $00

jr_01f_4e14:
    inc b
    rst $00
    inc b
    ret nc

    ld [$64fa], sp
    ld c, [hl]
    db $f4
    rst $38
    jr nz, jr_01f_4e14

    sub [hl]
    dec a
    inc h
    db $f4
    rst $38
    jp nz, $f616

    add hl, de
    ldh a, [rTIMA]
    db $f4
    ld h, h
    push af
    ld a, $27
    db $db
    add hl, bc
    ldh a, [rTAC]
    push af
    ld h, $f6
    inc c
    db $f4
    rst $38
    db $db
    inc bc
    ret nz

    inc bc
    call nz, $fa03
    ld h, h
    ld c, [hl]
    ld [hl+], a
    db $f4
    jp c, $03dd

    db $dd
    inc bc
    db $dd
    inc b
    db $f4
    ld a, h
    ccf
    jr nz, @+$01

    or $19
    dec a
    pop af
    ld a, [$f13d]
    ld b, $3f
    jr nz, @+$3d

    pop af
    ld a, [$f13b]
    ld b, $3f
    jr nz, @-$03

    db $f6, $0c, $f5, $26, $f0, $0c, $f4, $96, $27, $fc, $03, $07, $06, $fd, $f4, $ff
    db $27, $f4, $96, $24

    jr nz, jr_01f_4eb5

    db $f4
    rst $38
    dec a
    db $f4
    sub [hl]
    ccf
    dec a
    db $f4
    ld d, l
    ld a, e
    db $f4
    ret z

    dec sp
    ret nz

    inc b
    pop af
    ei
    ret nz

    inc bc
    ret nz

    inc bc
    pop af
    dec b
    inc h
    db $f4
    ld a, b
    dec h
    dec h
    jr nc, jr_01f_4ebd

    inc h
    inc h
    jr nc, @+$26

    ei

    db $f2, $01, $fe, $03, $f0, $0f, $d0, $17, $fa, $6a, $4f

    db $f4
    ld a, [hl]
    ld h, $30
    ld [hl+], a
    ld b, a
    ret nc

    ld b, $f4
    ldh [$fff0], a
    inc c
    db $fc

jr_01f_4eb5:
    inc bc
    sub $03
    db $fd
    push af
    ld c, $7b
    push af

jr_01f_4ebd:
    ld a, [de]
    ld a, [$4f6a]
    db $f4
    ld a, [hl]
    ld a, [hl-]
    jr nc, @+$3d

    jr nz, jr_01f_4ef8

    push af
    ld c, $f4
    sub $f0
    ld c, $fc
    inc bc
    rst $00
    inc bc
    pop af
    rst $38
    db $fd
    db $f4
    sub d
    ret nz

    dec d
    push af
    ld a, [de]
    ld a, [$4f5d]
    ld a, [$4f4e]
    db $f4
    cp a
    ld [hl], $02
    dec de
    pop af
    db $fc
    db $f4
    add e
    daa
    db $f4
    rst $38
    pop af
    inc b
    ld [hl], h
    db $f4
    ld a, h

jr_01f_4ef2:
    inc [hl]
    ld [hl], $f4
    rst $20
    jr c, jr_01f_4ef2

jr_01f_4ef8:
    ld e, l
    ld c, a
    ld a, [$4f4e]
    db $f4
    ld [hl], b
    ld [hl+], a
    ld [hl], $22
    db $f4
    db $fc
    dec sp
    jr nc, @-$0e

    dec c
    push af
    ld c, $c2
    inc b
    ldh a, [$ff0b]
    jp nz, $c203

    inc bc
    db $f4
    sbc c
    ldh a, [$ff0e]
    ld a, e
    ldh a, [$ff0b]
    ld a, [$4f6a]
    db $f4
    ld a, [hl]
    ld h, $30
    ld [hl+], a
    ld b, a
    ret nc

    ld b, $f4
    ldh [$fff0], a
    inc c
    db $fc
    inc bc
    sub $03
    db $fd
    push af
    ld c, $7b
    push af
    ld a, [de]
    ld a, [$4f6a]
    db $f4
    ld a, [hl]
    ld a, [hl-]
    jr nc, @+$3d

    jr nz, @+$32

    push af
    ld c, $f4
    sub $f0
    ld c, $fc
    inc bc
    rst $00
    inc bc
    pop af
    rst $38
    db $fd
    db $f4
    sub d
    call z, $ff15
    db $f4
    cp l
    jr c, jr_01f_4f52

jr_01f_4f52:
    nop
    inc h
    db $f4
    rst $20
    call nc, $d403
    inc bc
    call nc, $fb04
    db $f4
    cp l
    ldh a, [$ff0b]
    add hl, sp
    nop
    nop
    db $f4
    and a
    dec h
    add hl, de
    add hl, de
    ei

    db $f5, $1a, $f4, $c0, $fc, $03, $fa, $8b, $4f, $fd

    or $0c
    jr nz, @-$08

    ld hl, $b4f4
    inc b
    inc b
    db $f4
    ret nz

    or $0c
    jr @+$12

    jr nz, @+$24

    ld [hl], b

jr_01f_4f86:
    ld [hl+], a
    jr nz, jr_01f_4ff9

    jr nz, jr_01f_4f86

    db $f6, $0c, $20, $f6, $21, $f4, $b4, $04, $04, $f4, $c0, $f6, $0c, $3b, $f6, $21
    db $f4, $b4, $04, $04, $f4, $c0, $fb, $f2, $01, $fe, $03, $d0, $17, $fa, $b2, $4f

    ld a, [$5017]
    ld a, [$4fb2]
    rst $38

    db $f4, $c0, $f5, $21, $f0, $06, $f6, $21, $fc, $08, $30, $00, $00, $fd

    or $0f
    ldh a, [rTAC]
    ld l, $70
    ld l, $2c
    ld [hl], b
    inc l
    db $f4
    and b
    ldh a, [$ff09]
    or $0c
    ld [hl+], a
    add hl, sp

jr_01f_4fd2:
    dec h
    ld h, h
    ldh a, [rDIV]
    db $f4
    ld h, e
    or $19
    ld h, $3a
    jr nc, jr_01f_4fd2

    and b
    or $0c
    push af
    ld h, $f0
    rlca
    inc h
    db $fc
    inc bc
    inc b
    inc bc
    db $fd
    inc h
    jr nz, jr_01f_5029

    jr c, jr_01f_5029

    dec sp
    add hl, sp
    ld a, b
    sub b
    ld [hl+], a
    ld [hl], b
    ld [hl+], a
    jr nz, @+$72

jr_01f_4ff9:
    db $f4
    nop
    ret nz

    ld [bc], a
    jp nz, $c402

    ld [bc], a
    push bc
    ld [bc], a
    rst $00
    ld [bc], a
    db $f4
    ld a, b
    add hl, hl
    db $f4
    jp c, $03c7

    rst $00
    inc bc
    rst $00
    inc b
    db $f4
    ld a, h

jr_01f_5012:
    dec h
    inc h
    ret nc

    jr z, jr_01f_5012

    push af
    ld [hl-], a
    ldh a, [rTMA]
    or $02
    db $f4
    sub a
    db $fc
    inc b
    dec e
    ld d, $fd
    db $fc
    inc b
    dec de
    inc d
    db $fd

jr_01f_5029:
    ldh a, [$ff0b]
    or $17

jr_01f_502d:
    push af
    ld a, $f4
    ld b, h
    dec h
    daa
    dec h
    inc h
    jr nc, jr_01f_502d

    ld hl, $7cf4
    push af
    ld [hl-], a
    dec de
    pop af
    ld a, [$f11b]
    ld b, $04
    ld d, b
    db $f4
    add e
    or $19
    ld a, [$505c]
    db $f4
    set 3, d
    inc bc
    db $db
    inc bc
    call c, $f403
    ld a, c
    dec a
    jr nc, jr_01f_508c

    inc sp
    ret nc

    jr z, @-$03

    add hl, sp
    jr nc, @+$3d

    dec a
    jr c, jr_01f_5092

    call nc, $fb0b

    db $f2, $01, $cf, $17, $fe, $03, $f6, $10, $fc, $02, $fc, $08, $fa, $ad, $50, $fd

    db $fc
    inc bc
    ld a, [$50b6]
    db $fd
    ld a, [$509e]
    db $fd
    db $fc
    ld [bc], a
    db $fc
    ld b, $fa
    xor l
    ld d, b
    db $fd
    ld a, [$509e]
    db $fd
    db $fc

jr_01f_508c:
    ld [bc], a
    db $fc
    ld [$adfa], sp
    ld d, b

jr_01f_5092:
    db $fd
    db $fc
    inc bc
    ld a, [$50b6]
    db $fd
    ld a, [$509e]
    db $fd
    rst $38
    cpl
    db $f4
    adc b
    ldh a, [$ff09]
    inc hl
    db $f4
    rst $38
    or $06
    ld hl, $10f6
    cpl
    ei

    db $f4, $88, $f0, $09, $23, $f4, $a7, $21, $fb

    db $f4
    adc b
    ldh a, [$ff09]
    inc hl
    db $f4
    and a
    ld hl, $fb6f

    db $f2, $01, $fe, $03, $f5, $27, $f6, $12, $f0, $05, $f4, $dc, $fc, $04, $07, $04
    db $00, $1b, $fd, $fc, $04, $07, $05, $00, $1d, $fd, $fc, $02, $07, $05, $00, $1d
    db $fd, $fc, $02, $09, $06, $14, $1d, $fd, $fc, $02, $07, $05, $00, $1d, $fd, $fc
    db $02, $07, $05, $02, $1f, $fd, $f2, $01, $fe, $03, $fc, $02, $f5, $27, $f6, $12
    db $f0, $05, $f4, $f7, $fc, $04, $04, $00, $0c, $00, $fd, $fc, $04, $05, $02, $0c
    db $02, $fd, $fc, $04, $04, $00, $09, $00, $fd, $fc, $02, $06, $02, $0c, $02, $fd
    db $09, $02, $0c, $02, $0b, $07, $0e, $07, $fc, $04, $04, $00, $0c, $00, $fd, $fc
    db $06, $05, $00, $0c, $00, $fd, $f5, $27, $f0, $07, $f4, $c8, $09, $09, $27, $25
    db $27, $f5, $33, $f6, $29, $1c, $17, $1c, $00, $1e, $19, $1e, $02, $04, $1b, $07
    db $0c, $f0, $00, $70, $fd, $d0, $03, $f5, $1b, $f6, $12, $f0, $04, $f4, $ff, $fc
    db $08, $07, $00, $03, $00, $fd, $fc, $08, $05, $1e, $02, $1e, $fd, $fc, $08, $03
    db $1e, $00, $1c, $fd, $fc, $08, $05, $1e, $02, $1b, $fd, $fc, $08, $07, $00, $03
    db $1e, $fd, $fc, $08, $07, $02, $0a, $05, $fd, $f5, $27, $f0, $06, $fc, $08, $03
    db $00, $1c, $00, $fd, $fc, $04, $05, $00, $1d, $00, $fd, $fc, $04, $05, $1f, $1b
    db $02, $fd

    ld hl, sp-$06
    ld d, b

    db $f2, $01, $fe, $03, $f4, $b7, $f5, $1b, $f0, $0f, $f6, $1c, $fc, $04, $34, $f1
    db $fc, $00, $00, $f1, $04, $fd, $fc, $02, $36, $f1, $fc, $02, $02, $f1, $04, $fd
    db $fc, $02, $38, $f1, $fc, $04, $04, $f1, $04, $fd, $fc, $02, $39, $f1, $fc, $05
    db $05, $f1, $04, $fd, $fc, $02, $3a, $f1, $fc, $06, $06, $f1, $04, $fd, $fc, $03
    db $3b, $f1, $fc, $07, $07, $f1, $04, $fd, $3b, $06, $07, $f2, $01, $fe, $03, $fc
    db $02, $f4, $b7, $f5, $0f, $f6, $1c, $f0, $0f, $fa, $90, $52, $fa, $a5, $52, $fa
    db $90, $52, $fc, $02, $1b, $1b, $07, $07, $fd, $1d, $1d, $09, $f1, $fc, $09, $f1
    db $04, $1f, $1f, $07, $1b, $1c, $1c, $08, $08, $1e, $1e, $0a, $0a, $20, $0c, $0c
    db $70, $fd, $d0, $03, $f5, $1b, $fa, $76, $52, $f5, $16, $fa, $76, $52, $f5, $1b
    db $fa, $76, $52, $f5, $16, $fa, $76, $52, $f5, $1b, $fa, $76, $52, $fc, $02, $f0
    db $0b, $f6, $10, $3b, $f0, $04, $f6, $06, $3e, $22, $25, $27, $25, $22, $f6, $10
    db $f0, $09, $3b, $fd, $f4, $b7, $f6, $1c, $f0, $0f, $f5, $0f, $fc, $04, $3c, $08
    db $08, $fd, $fc, $04, $39, $05, $05, $fd, $fc, $08, $3b, $07, $07, $fd

    ld hl, sp-$0c
    ld d, c

    db $fc, $02, $f0, $0b, $f4, $c7, $f6, $10, $3c, $f0, $04, $f6, $06, $20, $23, $27
    db $28, $27, $23, $f0, $09, $f6, $10, $3c, $fd, $fb, $fc, $04, $20, $f1, $fc, $0c
    db $0c, $f1, $04, $fd, $fc, $04, $22, $f1, $fc, $0e, $0e, $f1, $04, $fd, $fb, $fc
    db $04, $3d, $f1, $fc, $09, $09, $f1, $04, $fd, $fc, $02, $36, $f1, $fc, $02, $02
    db $f1, $04, $fd, $fc, $02, $3b, $f1, $fc, $07, $07, $f1, $04, $fd, $fb, $f2, $01
    db $f6, $02, $f0, $04, $f4, $b7, $f5, $27, $fc, $04, $30, $04, $04, $fd, $fc, $02
    db $30, $05, $05, $fd, $fc, $02, $30, $07, $07, $fd, $fc, $04, $30, $09, $09, $fd
    db $fc, $02, $30, $07, $07, $fd, $d0, $28, $f2, $01, $fe, $03, $fc, $02, $f5, $27
    db $f0, $08, $f6, $09, $f4, $96, $fa, $c9, $53, $fa, $dc, $53, $f5, $27, $f0, $07
    db $f4, $fa, $f6, $13, $47, $30, $04, $05, $07, $2c, $07, $25, $f4, $90, $04, $f4
    db $fa, $30, $24, $05, $1d, $10, $1d, $1f, $00, $f4, $00, $27, $05, $10, $f4, $e6
    db $04, $f4, $ff, $c5, $10, $c4, $13, $62, $60, $f4, $00, $c1, $04, $f4, $fa, $c2
    db $0b, $f4, $00, $c0, $13, $fc, $02, $f1, $ff, $f3, $0d, $fd, $f4, $c8, $f0, $0f
    db $14, $14, $10, $14, $70, $fd, $d0, $03, $f6, $0e, $f0, $09, $f5, $33, $f4, $00
    db $dc, $32, $3c, $3e, $20, $63, $62, $60, $f4, $ff, $62, $f4, $00, $c2, $0e, $c5
    db $0d, $c3, $0d, $de, $00, $fc, $06, $f1, $ff, $f3, $14, $fd, $f0, $09, $f4, $ff
    db $d9, $32, $f4, $00, $39, $3b, $3c, $60, $7e, $7c, $f4, $ff, $7e, $f4, $00, $dc
    db $0e, $db, $0d, $d9, $0d, $dc, $14, $db, $00, $fc, $05, $f1, $ff, $f3, $14, $fd
    db $f0, $09, $f4, $ff, $c0, $32, $30, $22, $23, $67, $65, $63, $65, $c7, $28, $c2
    db $0e, $c7, $0d, $c2, $0d, $c5, $28, $c3, $28, $c0, $28, $c0, $0e, $c2, $0d, $c3
    db $0d, $67, $65, $63, $65, $f4, $00, $c7, $14, $fc, $07, $f1, $ff, $f3, $14, $fd

    ld hl, sp-$0e
    ld d, d

    db $27, $04, $20, $3b, $27, $07, $24, $20, $3b, $27, $05, $22, $3d, $27, $07, $25
    db $22, $3d, $fb, $25, $04, $20, $3b, $25, $05, $24, $f4, $ce, $00, $18, $1d, $1b
    db $7a, $f4, $00, $c3, $02, $f4, $96, $c4, $0d, $62, $10, $02, $04, $f4, $de, $25
    db $fb, $f2, $01, $fe, $03, $fc, $07, $fa, $9a, $54, $fa, $a9, $54, $fd, $f0, $0b
    db $f6, $1b, $f4, $b4, $0a, $0f, $0a, $0f, $0a, $0a, $f0, $08, $f6, $00, $f4, $00
    db $c7, $00, $fc, $0a, $f1, $ff, $f3, $01, $fd, $f2, $01, $fe, $03, $fc, $1e, $fa
    db $9a, $54, $fd, $fa, $67, $54, $f0, $0a, $0f, $f4, $6f, $f6, $1b, $01, $f6, $00
    db $f4, $00, $c1, $00, $fc, $0a, $f1, $ff, $f3, $01, $fd, $fc, $1e, $fa, $9a, $54
    db $fd, $fa, $67, $54, $cf, $17, $fc, $03, $fc, $07, $fa, $7a, $54, $fd, $fa, $89
    db $54, $fd, $fc, $0f, $fa, $9a, $54, $fd

    ld a, [$5467]
    ld hl, sp+$26
    ld d, h

    db $f4, $6f, $f6, $1b, $04, $f0, $0c, $01, $f6, $00, $f4, $7d, $04, $f0, $07, $f6
    db $10, $02, $fb, $f0, $0b, $f6, $1b, $f4, $6f, $04, $0f, $02, $01, $03, $0f, $02
    db $01, $fb, $04, $0f, $02, $01, $f0, $0d, $f4, $ff, $01, $f4, $6f, $f0, $0c, $02
    db $02, $01, $fb, $f0, $07, $f6, $1b, $f4, $6f, $06, $0f, $02, $f0, $04, $f6, $10
    db $02, $fb, $f0, $0d, $f6, $1b, $f4, $b4, $0a, $f4, $6f, $f0, $08, $01, $02, $01
    db $fb, $04, $e3, $55, $00, $b4, $55, $0c, $31, $55, $10, $fa, $56, $04, $03, $ee
    db $57, $00, $3d, $58, $10, $d5, $57, $04, $04, $b1, $58, $10, $87, $59, $04, $60
    db $5a, $00, $03, $5b, $0c, $04, $2c, $5b, $00, $49, $5b, $04, $6a, $5b, $10, $8c
    db $5b, $0c

    inc b
    sbc l
    ld e, e
    db $10
    dec b
    ld e, h
    nop
    ld a, d
    ld e, h
    inc b
    jp c, Jump_000_0c5c

    inc b
    add hl, bc
    ld e, l
    inc b
    cp c
    ld e, l
    nop
    ld [hl-], a
    ld e, [hl]
    db $10
    cp c
    ld e, [hl]
    inc c
    inc b
    add hl, bc
    ld e, a
    db $10
    pop de
    ld e, a
    nop
    ld [$0460], a
    add sp, $61
    inc c
    inc b
    inc a
    ld e, a
    db $10
    ldh [c], a
    ld e, a
    nop
    ld l, $61
    inc b
    add sp, $61
    inc c
    inc b
    add hl, bc
    ld h, d
    inc c
    ld h, $62
    nop
    ld d, e
    ld h, d
    db $10
    ld h, d
    ld h, d
    inc b

    db $02, $95, $62, $00, $c4, $62, $04, $f2, $15, $fe, $03, $f0, $0d, $f6, $0c, $f4
    db $c8, $f5, $17, $fc, $04, $fa, $a6, $55, $fd, $fc, $02, $f0, $0d, $fa, $a6, $55
    db $f5, $15, $fa, $a6, $55, $f5, $13, $fa, $a6, $55, $f5, $17, $fc, $02, $3b, $30
    db $fd, $3d, $3d, $fc, $03, $30, $3e, $fd, $3f, $30, $3b, $30, $fd, $fa, $94, $55
    db $fa, $a6, $55, $f5, $14, $fa, $94, $55, $f5, $17, $fa, $a6, $55, $fa, $94, $55
    db $fa, $a6, $55, $fa, $94, $55, $fc, $02, $27, $30, $fd, $25, $25, $fc, $03, $30
    db $24, $fd, $22, $36, $f1, $fb, $7b, $f8, $43, $55, $25, $70, $25, $20, $70, $25
    db $30, $25, $30, $25, $79, $f1, $fb, $25, $39, $f1, $05, $fb, $20, $70, $20, $3b
    db $70, $20, $30, $20, $30, $20, $7b, $34, $30, $fb, $f2, $15, $fe, $03, $f0, $07
    db $f6, $1a, $f4, $64, $f0, $0a, $2e, $2f, $f0, $05, $27, $26, $f0, $0a, $2e, $2f
    db $f0, $05, $26, $f0, $08, $2e, $f0, $0a, $2e, $2f, $f0, $05, $27, $26, $f0, $0a
    db $2e, $2f, $f0, $05, $27, $26, $f8, $bc, $55, $f2, $15, $fe, $03, $f0, $07, $f6
    db $16, $f4, $96, $f5, $2f, $fc, $02, $fa, $de, $56, $fd, $fc, $02, $fe, $03, $f0
    db $05, $f5, $2f, $f6, $96, $f4, $00, $c5, $00, $fc, $0d, $e3, $ff, $f3, $02, $fd
    db $f1, $ff, $f3, $06, $f1, $01, $f6, $16, $f4, $ff, $24, $70, $20, $d0, $20, $20
    db $22, $24, $30, $f6, $96, $f4, $00, $c3, $00, $fc, $0d, $e3, $ff, $f3, $02, $fd
    db $f1, $ff, $f3, $06, $f6, $16, $f1, $01, $f4, $ff, $22, $70, $3e, $90, $39, $39
    db $90, $f6, $96, $f4, $00, $c1, $00, $fc, $0f, $e3, $ff, $f3, $02, $fd, $f3, $02
    db $f6, $16, $f4, $ff, $20, $70, $3c, $d0, $20, $3c, $3e, $20, $30, $9f, $f6, $14
    db $f4, $00, $c7, $2c, $fc, $03, $f1, $ff, $f3, $14, $fd, $fd, $f0, $0c, $f6, $0b
    db $f5, $23, $fa, $c3, $56, $c7, $48, $fa, $a5, $56, $fa, $c3, $56, $c7, $28, $f1
    db $02, $c8, $20, $f1, $fe, $fa, $85, $56, $f8, $f5, $55, $f4, $ff, $c9, $28, $f4
    db $96, $6b, $2c, $f4, $ff, $c9, $20, $f4, $96, $29, $6b, $2c, $f4, $ff, $f5, $25
    db $ce, $20, $f5, $23, $ce, $20, $cc, $20, $cb, $20, $fb, $f4, $ff, $c5, $28, $f4
    db $96, $67, $29, $f4, $ff, $6b, $f4, $96, $29, $30, $27, $30, $25, $30, $f4, $ff
    db $c4, $20, $c5, $20, $67, $6c, $6b, $6c, $fb, $f4, $ff, $c9, $28, $f4, $96, $6b
    db $2c, $f4, $ff, $6e, $f4, $96, $2c, $30, $2b, $30, $29, $30, $f4, $ff, $c7, $20
    db $27, $24, $25, $fb, $24, $20, $30, $24, $20, $d0, $20, $38, $34, $30, $78, $34
    db $30, $25, $22, $30, $25, $22, $30, $70, $30, $39, $36, $30, $79, $36, $30, $fb
    db $f2, $15, $fe, $03, $f0, $08, $f6, $0f, $f4, $96, $f5, $2f, $fc, $02, $fa, $ae
    db $57, $fa, $c6, $57, $fd, $fc, $02, $f5, $23, $f4, $96, $f6, $29, $f0, $08, $fa
    db $bc, $57, $fa, $a3, $57, $fa, $99, $57, $fc, $02, $22, $3f, $30, $fd, $22, $25
    db $27, $30, $25, $30, $24, $30, $22, $30, $fd, $f6, $0b, $f0, $0b, $d0, $01, $fa
    db $7c, $57, $fa, $5e, $57, $fa, $7c, $57, $fa, $48, $57, $f8, $0f, $57, $fc, $02
    db $f4, $ff, $c5, $28, $f4, $96, $67, $29, $fd, $f4, $ff, $c7, $20, $c5, $20, $c4
    db $20, $c2, $1f, $fb, $f4, $ff, $c0, $28, $f4, $96, $7f, $20, $f4, $ff, $62, $f4
    db $96, $25, $30, $24, $30, $22, $30, $f4, $ff, $c0, $20, $df, $20, $7e, $64, $62
    db $64, $fb, $f4, $ff, $c5, $28, $f4, $96, $67, $29, $f4, $ff, $6b, $f4, $96, $29
    db $30, $27, $30, $25, $30, $f4, $ff, $c4, $20, $3f, $3b, $3d, $df, $48, $fb, $fc
    db $04, $23, $20, $30, $fd, $63, $20, $30, $fb, $fc, $03, $25, $22, $30, $fd, $70
    db $2a, $de, $20, $fb, $27, $24, $30, $27, $24, $d0, $20, $3b, $38, $30, $7b, $38
    db $30, $fb, $fc, $04, $27, $24, $30, $fd, $67, $24, $30, $fb, $27, $25, $30, $27
    db $25, $30, $70, $30, $3b, $39, $30, $7b, $39, $30, $fb, $f2, $0e, $f4, $00, $f6
    db $10, $f0, $04, $fe, $03, $d0, $02, $f5, $33, $fa, $22, $58, $f5, $36, $fa, $22
    db $58, $f8, $e1, $57, $f2, $0e, $f4, $00, $f6, $10, $f0, $05, $d0, $01, $fe, $03
    db $f5, $27, $fa, $07, $58, $f5, $2a, $fa, $07, $58, $f8, $fa, $57, $f1, $02, $24
    db $f1, $fe, $3b, $20, $24, $d0, $38, $30, $02, $04, $f1, $03, $25, $f1, $fd, $22
    db $f1, $03, $29, $f1, $fd, $27, $70, $fb, $f1, $02, $20, $f1, $fe, $38, $3b, $20
    db $d0, $38, $30, $1f, $00, $f1, $03, $22, $f1, $fd, $3b, $f1, $03, $25, $f1, $fd
    db $24, $70, $fb, $f2, $0e, $f4, $64, $f6, $07, $fe, $03, $f0, $0c, $f5, $1b, $fa
    db $78, $58, $f5, $33, $fa, $7f, $58, $f0, $0c, $f5, $1b, $fa, $9a, $58, $f5, $3f
    db $fa, $a5, $58, $f0, $0c, $f5, $1e, $fa, $78, $58, $f5, $36, $fa, $7f, $58, $f0
    db $0c, $f5, $1e, $fa, $9a, $58, $f5, $42, $fa, $a5, $58, $f8, $45, $58, $f4, $64
    db $20, $34, $34, $20, $fb, $30, $f6, $10, $f4, $c8, $f0, $09, $0c, $f0, $04, $0c
    db $f0, $09, $07, $f0, $04, $07, $f0, $08, $00, $f0, $04, $00, $30, $f6, $07, $fb
    db $f4, $c8, $1b, $1d, $f4, $64, $3f, $3b, $27, $3b, $fb, $f0, $05, $f6, $10, $30
    db $04, $f0, $04, $04, $f6, $07, $fb, $f2, $0c, $fe, $03, $f0, $0f, $f6, $07, $f5
    db $1f, $fc, $0e, $f4, $82, $3d, $f4, $b4, $1d, $1d, $fd, $f4, $82, $24, $f4, $b4
    db $02, $02, $f4, $82, $20, $f4, $b4, $1f, $1f, $f5, $1f, $f4, $96, $fa, $6d, $59
    db $fa, $39, $59, $fc, $02, $fa, $6d, $59, $fd, $fa, $6d, $59, $fa, $39, $59, $f5
    db $21, $fa, $39, $59, $fa, $53, $59, $f5, $21, $fa, $0b, $59, $f5, $1c, $fa, $0b
    db $59, $f5, $23, $fa, $23, $59, $f5, $21, $fc, $02, $fa, $39, $59, $fd, $f8, $d3
    db $58, $f6, $07, $fc, $02, $fc, $03, $f4, $96, $37, $f4, $b4, $02, $03, $fd, $f4
    db $c8, $17, $17, $f4, $b4, $03, $12, $fd, $fb, $fc, $02, $fc, $03, $f4, $96, $32
    db $f4, $b4, $1c, $1e, $fd, $f4, $c8, $12, $12, $f4, $b4, $1e, $19, $fd, $fb, $fc
    db $02, $f4, $8c, $f6, $07, $36, $f6, $21, $f4, $aa, $16, $16, $f4, $8c, $f6, $07
    db $3d, $f6, $21, $f4, $aa, $16, $16, $fd, $fb, $fc, $02, $f4, $8c, $f6, $07, $36
    db $f6, $21, $f4, $aa, $16, $16, $f4, $8c, $f6, $07, $20, $f6, $21, $f4, $aa, $16
    db $16, $fd, $fb, $fc, $02, $f4, $8c, $f6, $07, $3d, $f6, $21, $f4, $aa, $1d, $1d
    db $f6, $07, $f4, $8c, $38, $f6, $21, $f4, $aa, $1d, $1d, $fd, $fb, $f2, $0c, $fe
    db $03, $f0, $00, $d0, $a1, $f5, $37, $f6, $10, $f0, $07, $fa, $4c, $5a, $f6, $09
    db $f5, $2b, $f0, $04, $f4, $e6, $18, $f1, $01, $1c, $f1, $01, $1f, $f1, $01, $02
    db $f6, $09, $f5, $2b, $f0, $04, $f4, $e6, $fa, $1a, $5a, $f5, $32, $f1, $01, $0d
    db $09, $f1, $01, $07, $04, $f1, $ff, $01, $1d, $f1, $ff, $1b, $18, $f4, $ff, $f0
    db $08, $f5, $2b, $f6, $12, $c5, $28, $c5, $0d, $c7, $0d, $c9, $0e, $c5, $28, $67
    db $65, $c4, $28, $c0, $6e, $f5, $37, $02, $00, $c2, $28, $c2, $0d, $c4, $0d, $c5
    db $0e, $c2, $28, $64, $62, $df, $50, $f0, $03, $f4, $e6, $f6, $09, $f5, $2d, $0e
    db $0c, $f1, $02, $09, $06, $f1, $01, $0c, $09, $f1, $01, $06, $02, $f1, $01, $09
    db $06, $f1, $01, $02, $1d, $f1, $ff, $1a, $02, $f1, $fe, $1d, $1a, $f8, $aa, $59
    db $fc, $04, $04, $00, $1d, $18, $fd, $fc, $04, $02, $00, $1d, $1a, $fd, $fc, $08
    db $00, $1d, $18, $14, $fd, $fc, $04, $04, $00, $1d, $00, $fd, $fc, $04, $06, $02
    db $1d, $1a, $fd, $fc, $04, $08, $04, $02, $1f, $fd, $fc, $02, $0b, $08, $04, $02
    db $fd, $fb, $f4, $ff, $3d, $20, $24, $3b, $3f, $24, $39, $3d, $22, $39, $3d, $20
    db $38, $3b, $fb, $20, $3f, $fb, $f2, $0c, $fe, $03, $f0, $0a, $f6, $10, $f5, $2b
    db $f4, $c8, $fa, $4c, $5a, $fa, $5d, $5a, $f0, $08, $fa, $4c, $5a, $f6, $0d, $f5
    db $37, $f4, $ff, $f0, $08, $fa, $cc, $5a, $f6, $12, $f5, $2b, $f0, $09, $09, $07
    db $c9, $28, $c9, $0d, $cb, $0d, $cc, $0e, $c9, $28, $6b, $69, $c7, $28, $f4, $00
    db $c4, $23, $fc, $05, $f1, $ff, $f3, $0f, $fd, $f0, $09, $f4, $ff, $05, $04, $c5
    db $28, $c5, $0d, $c7, $0d, $c9, $0e, $c5, $28, $67, $65, $04, $05, $04, $02, $f4
    db $00, $c4, $3c, $f1, $fe, $c2, $14, $f1, $ff, $f3, $14, $f1, $ff, $f3, $14, $f8
    db $77, $5a, $1d, $1f, $00, $02, $c4, $3c, $3d, $27, $c6, $3c, $24, $22, $f4, $00
    db $c4, $1e, $fc, $05, $f1, $ff, $f3, $14, $fd, $f4, $ff, $d0, $0a, $f0, $08, $1d
    db $1f, $00, $02, $c4, $3c, $3d, $27, $c9, $28, $62, $66, $f4, $00, $c8, $32, $fc
    db $05, $f1, $ff, $f3, $14, $fd, $f4, $ff, $fb, $f2, $0c, $fe, $03, $f6, $1f, $f0
    db $07, $f4, $c8, $07, $f4, $64, $f0, $04, $03, $f4, $c8, $f0, $05, $04, $03, $f0
    db $08, $f4, $c8, $07, $f0, $04, $f4, $64, $03, $f0, $05, $f4, $c8, $04, $03, $f8
    db $09, $5b, $f2, $0c, $f4, $86, $fe, $03, $f6, $16, $f5, $33, $f0, $05, $fc, $04
    db $2c, $29, $25, $22, $fd, $fc, $04, $2b, $27, $24, $20, $fd, $f8, $38, $5b, $f2
    db $0c, $f4, $00, $f6, $1f, $f5, $27, $d0, $01, $fc, $04, $f0, $07, $65, $f1, $fe
    db $22, $3d, $fd, $fc, $04, $f0, $07, $64, $f1, $fe, $20, $3b, $fd, $f8, $53, $5b
    db $f2, $0c, $fe, $03, $f4, $64, $f6, $03, $d4, $01, $f6, $17, $f0, $07, $f5, $0f
    db $62, $6c, $6b, $d0, $28, $69, $65, $62, $60, $d0, $3c, $7b, $70, $7d, $60, $f8
    db $7a, $5b, $f2, $0c, $fe, $03, $f4, $78, $f6, $1f, $f0, $03, $24, $f0, $00, $8f
    db $f8, $94, $5b

    ldh a, [c]
    inc c
    or $00
    ldh a, [$ff0a]
    cp $03
    db $f4
    nop
    push af
    ld [de], a
    db $db
    inc d
    ldh a, [$ff0b]
    di
    inc d
    ldh a, [$ff0d]
    di
    inc d
    ldh a, [rIF]
    di
    inc d
    or $07
    push af
    ld a, [hl+]
    db $f4
    ld h, h
    db $fc
    ld [bc], a
    ld [hl+], a

jr_01f_5bc0:
    ccf
    jr nc, jr_01f_5bc0

    ld [hl+], a
    ccf
    push af
    ld e, $f0
    dec c
    db $f4
    add d
    db $fc
    inc bc
    jr nz, jr_01f_5bef

    dec sp
    ld a, $fd

jr_01f_5bd2:
    jr nz, jr_01f_5bf4

    db $f4
    and $1b
    dec de
    db $f4

jr_01f_5bd9:
    add d
    ld a, $fa
    pop hl
    ld e, e
    ld hl, sp-$25
    ld e, e
    db $fc
    inc b
    jr nz, jr_01f_5c05

    dec sp
    ld a, $fd
    db $fc
    inc b
    ld a, $3e
    add hl, sp
    inc a
    db $fd

jr_01f_5bef:
    db $fc
    inc b
    inc a
    inc a
    scf

jr_01f_5bf4:
    inc hl
    db $fd
    db $fc
    inc bc
    dec sp
    dec sp
    ld [hl+], a
    db $fd
    dec sp
    dec sp
    ld [hl], $fc
    ld [bc], a
    daa
    dec sp
    db $fd
    ei

jr_01f_5c05:
    ldh a, [c]
    inc c
    db $f4
    nop
    or $02
    cp $03
    push af
    ld [de], a
    ldh a, [rTAC]
    db $db
    jr z, @-$02

    ld [$01f1], sp
    di
    dec b
    db $fd
    push af
    ld e, $f4
    ld h, h
    db $fc
    ld [bc], a
    ld a, [hl+]

jr_01f_5c21:
    daa
    jr nc, jr_01f_5c21

    ld a, [hl+]
    daa
    ldh a, [rP1]
    ret nc

    and b
    or $13
    push af
    ld e, $f0
    ld a, [bc]
    ld a, [$5c3b]
    push af
    ld a, [hl+]
    ld a, [$5c3b]
    ld hl, sp+$2a
    ld e, h
    db $f4
    rst $38
    inc hl
    db $f4
    ret z

    jr nz, jr_01f_5bd2

    ld a, $20
    db $f4
    rst $38
    ld h, e
    jr nz, jr_01f_5bd9

    db $f4
    ret z

    dec h
    daa
    jr nc, @-$0a

    nop
    inc bc
    ld [bc], a
    jr nz, @-$6e

    db $f4
    adc h
    dec sp
    inc hl
    db $f4
    rst $38
    db $fc
    inc bc
    ld h, b
    ld e, $10
    db $fd
    dec h
    inc hl
    sub b
    dec h
    inc hl
    jr nc, jr_01f_5c87

    inc hl
    jr nc, @+$22

    inc hl
    dec h
    ld h, $27
    ld a, [hl+]
    daa
    ret nc

    jr z, jr_01f_5c9d

    daa
    ret nc

    jr z, @+$2c

    daa
    ld [hl], b
    ei
    ldh a, [c]
    inc c
    db $f4
    nop
    or $03
    ldh a, [rTAC]
    push af
    ld [de], a
    cp $03
    db $db

jr_01f_5c87:
    jr z, @-$02

    ld [$01f1], sp
    di
    dec b
    db $fd
    push af
    ld e, $f4
    ld h, h
    or $02
    db $fc
    ld [bc], a
    dec h

jr_01f_5c98:
    ld [hl+], a
    jr nc, jr_01f_5c98

    dec h
    ld [hl+], a

jr_01f_5c9d:
    ldh a, [$ff09]
    push af
    ld b, $f4
    add d
    db $fc
    inc b
    jr nz, @+$22

    daa
    ld a, $fd
    db $f4
    rst $38
    push af
    ld e, $f6
    nop
    ldh a, [rTMA]
    ld a, [$5cbd]
    push af
    ld a, [hl+]
    ld a, [$5cbd]
    ld hl, sp-$56
    ld e, h
    db $fc
    ld [$1b17], sp
    nop
    dec de
    db $fd
    db $fc
    ld [$1916], sp
    ld e, $19
    db $fd
    db $fc
    ld [$1c17], sp
    nop
    inc e
    db $fd
    db $fc
    ld [$1b19], sp
    rra
    dec de
    db $fd
    ei
    ldh a, [c]
    inc c
    or $10
    db $f4
    rst $38
    cp $03
    ldh a, [$ff0b]
    rst $08
    ld d, b
    daa
    daa
    db $fc
    ld [bc], a
    cpl
    daa
    daa
    db $fd
    ldh a, [$ff08]
    or $10
    inc bc

jr_01f_5cf3:
    pop af
    db $fd
    inc bc
    or $00
    ld hl, $03f1
    or $10
    ld b, $f1
    db $fd
    inc bc
    or $00
    ld hl, $03f1
    ld hl, sp-$10
    ld e, h
    ldh a, [c]
    rrca
    cp $03
    or $11
    ldh a, [rDIV]
    db $f4
    nop
    push af
    jr jr_01f_5cf3

    jr z, jr_01f_5cf3

    inc d
    pop af
    ld bc, $12d9
    pop af
    ld bc, $10d7
    pop af
    ld bc, $0ed5
    pop af
    ld bc, $0cd3
    db $f4
    and $d1
    add h
    db $f4
    rst $38
    or $07
    ldh a, [rIF]
    push af
    inc de
    db $fc
    ld [bc], a
    ld a, [$5d46]

jr_01f_5d3a:
    db $fd
    push af
    jr jr_01f_5d3a

    ld [bc], a
    ld a, [$5d46]
    db $fd
    ld hl, sp+$33
    ld e, l
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    dec e
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    dec de
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    dec e
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    nop
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    ld [bc], a
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    inc b
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    nop
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    ld [bc], a
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    rra
    pop af
    inc b
    or $07
    ld de, $f611
    rra
    pop af
    db $fc
    dec de
    pop af
    inc b
    or $07
    ld de, $fb11
    ldh a, [c]
    rrca
    ldh a, [rTIMA]
    or $11
    db $f4
    nop
    push af

jr_01f_5dc2:
    jr nc, jr_01f_5dc2

    inc bc
    sub $28
    pop af
    ld bc, $14d9
    pop af
    ld bc, $12dd
    pop af
    ld bc, $10dc
    pop af
    ld bc, $0ed7
    pop af
    ld bc, $0cd8
    pop af
    ld bc, $0cc4
    db $f4
    and $c3
    ld a, b
    push af
    dec hl
    ldh a, [rTIMA]
    ld a, [$5e13]
    push af
    jr nc, @-$0e

    ld b, $fa
    db $f4
    ld e, l
    ld hl, sp-$1d
    ld e, l
    db $f4
    nop
    db $dd
    ld c, b
    ld e, [hl]
    db $db
    ld h, [hl]
    db $f4
    nop
    db $dd
    ld c, b
    ld e, [hl]
    db $db
    ld c, [hl]
    db $f4
    nop
    db $dd
    dec b
    pop af
    rst $38
    call c, $db05
    dec b
    pop af
    rst $38
    jp c, $d905

    inc b
    ei
    db $f4
    nop

jr_01f_5e15:
    db $dd
    ld c, b
    ld e, [hl]
    db $db
    ld h, [hl]
    db $dd
    ld c, b
    ld e, [hl]
    db $db
    ld c, [hl]
    db $f4
    nop
    call c, $f105
    rst $38
    db $dd
    dec b
    pop af
    rst $38
    sbc $05
    pop af
    rst $38
    rst $18
    dec b
    ret nz

    inc b
    ei

jr_01f_5e32:
    ldh a, [c]
    rrca
    ldh a, [$ff08]
    db $f4
    nop
    cp $03
    or $13
    push af
    jr nc, jr_01f_5e15

    jr z, jr_01f_5e32

    ld bc, $14d9
    pop af
    ld bc, $12dd
    pop af
    ld bc, $10dc
    pop af
    ld bc, $0ed7
    pop af
    ld bc, $0cd8
    call nz, $f40c
    and $c3
    ld a, b
    ret nc

    ld [bc], a
    or $13
    push af
    dec hl
    ldh a, [$ff0a]
    ld a, [$5e94]
    push af
    jr nc, @-$0e

    dec bc
    ld a, [$5e6f]
    ld hl, sp+$5e
    ld e, [hl]
    db $f4
    rst $38
    ret c

    ld c, b
    db $f4
    nop
    ld e, c
    db $f4
    rst $38
    sub $66
    ret c

    ld c, b
    db $f4
    nop
    ld e, c
    sub $4e
    ret c

    dec b
    pop af
    rst $38
    rst $10
    dec b
    pop af
    rst $38
    sub $05
    pop af
    rst $38
    push de
    dec b
    pop af
    rst $38
    db $d3
    inc b
    ei
    db $f4
    rst $38
    ret c

    ld c, b
    db $f4
    nop
    ld e, c
    db $f4
    rst $38
    sub $66
    ret c

    ld c, b
    db $f4
    nop
    ld e, c
    sub $4e
    rst $10
    dec b
    pop af
    rst $38
    ret c

    dec b
    pop af
    rst $38
    reti


    dec b
    pop af
    rst $38
    jp c, $f105

    rst $38
    call c, $fb04
    ldh a, [c]
    rrca
    cp $03
    or $1f
    rst $08
    inc a
    ldh a, [rSB]
    db $f4
    or h
    db $fc
    inc c
    jp $c103


    inc bc
    jp $c103


    inc bc
    pop af
    ld bc, $f4fd
    sub [hl]
    ldh a, [$ff0d]
    rlca
    ld b, $f0
    ld b, $03
    ld [bc], a
    ldh a, [$ff0d]
    ld h, $f4
    ret z

    ldh a, [$ff0c]
    rlca
    ld b, $f4
    sub [hl]
    ldh a, [$ff09]
    db $f4
    ld h, h
    inc l
    cpl
    pop af
    ld [bc], a
    db $f4
    sub [hl]
    daa
    db $f4
    ld h, h
    pop af
    ei
    inc b
    pop af
    inc bc
    inc bc
    inc l
    cpl
    pop af
    ld [bc], a
    db $f4
    sub [hl]
    daa
    db $f4
    ld h, h
    pop af
    cp $2f
    ld hl, sp-$19
    ld e, [hl]
    ldh a, [c]
    inc c
    cp $03
    or $07
    ldh a, [rP1]
    ret nc

    ld bc, $0ff0
    push af
    dec de
    ld a, [$5fc2]
    ld a, [$5fc2]
    push af
    rla
    ld a, [$5fc2]
    push af
    ld d, $fa
    jp nz, $f55f

    inc d
    db $fc
    ld [bc], a
    ld a, [$5fc2]
    db $fd
    push af
    ld d, $fc
    ld [bc], a
    ld a, [$5fc2]
    pop af
    rst $38
    db $fd
    ld hl, sp+$44
    ld e, a
    ldh a, [c]
    inc c
    cp $03
    ret nc

    ld bc, $07f6
    ldh a, [$ff0d]
    db $fc
    ld [bc], a
    push af
    dec de
    db $fc
    ld [$c2fa], sp
    ld e, a
    db $fd
    push af
    add hl, de
    db $fc
    ld [$c2fa], sp
    ld e, a
    db $fd
    push af
    dec de
    db $fc
    ld [$c2fa], sp
    ld e, a
    db $fd
    db $fc
    ld [$bcfa], sp
    ld e, a
    db $fd
    push af
    ld a, [de]
    db $fc
    ld [$bcfa], sp
    ld e, a
    db $fd
    db $fd
    push af
    rrca
    db $fc
    ld [$b6fa], sp
    ld e, a
    db $fd
    push af
    ld c, $fc
    ld [$b6fa], sp
    ld e, a
    db $fd
    push af
    rrca
    db $fc
    ld [$b6fa], sp
    ld e, a
    db $fd
    push af
    ld c, $fc
    ld [$b6fa], sp
    ld e, a
    db $fd
    push af
    rrca
    db $fc
    ld [$b6fa], sp
    ld e, a
    db $fd
    push af
    ld c, $fc
    ld [$b6fa], sp
    ld e, a
    db $fd
    push af
    rrca
    db $fc
    ld [$b6fa], sp
    ld e, a
    db $fd
    db $fc
    inc b
    jr nz, jr_01f_5fb2

    inc b
    db $fd
    db $fc
    inc b
    dec a
    rlca
    inc b

jr_01f_5fb2:
    db $fd
    ld hl, sp+$44
    ld e, a
    db $f4
    rst $38
    ld a, $05
    ld bc, $f4fb
    rst $38
    ld [hl-], a
    ld e, $15
    ei
    db $f4
    and $36
    db $f4
    rst $38
    ld [bc], a
    ld d, $f4
    and $36
    db $f4
    rst $38
    ld [bc], a
    ld d, $fb
    ldh a, [c]
    inc c
    cp $03
    ldh a, [rP1]
    or $02
    call nc, $d002
    call c, $64d0
    ld hl, sp-$14
    ld e, a
    ldh a, [c]
    inc c
    cp $03
    ldh a, [rP1]
    or $02
    call nc, $fc02
    ld [bc], a
    or $1a
    ldh a, [$ff08]
    db $f4
    nop
    push af
    daa

jr_01f_5ff6:
    ld a, [$60d4]
    ret nc

    jr z, jr_01f_5ff6

    ldh [$ff60], a
    ret nc

    jr z, jr_01f_5ff6

    dec h

jr_01f_6002:
    ld a, [$60d4]
    ret nc

    jr z, jr_01f_6002

    ldh [$ff60], a
    push af

jr_01f_600b:
    daa
    db $fc
    ld [bc], a

jr_01f_600e:
    ret nc

    jr z, jr_01f_600b

    call nc, $fd60
    ldh a, [rP1]
    jr nc, jr_01f_600e

    ld [de], a
    ldh a, [rTAC]
    daa
    dec h
    inc h
    ld h, h
    dec h
    jp nz, $605a

    ld h, d
    ld h, l
    daa
    call nz, $f681
    ld [bc], a
    call nz, $fd01
    or $23
    db $f4
    rst $38
    ldh a, [rTMA]
    push af
    daa
    ld a, [$6066]
    ld a, [$607e]
    ld a, [$6066]
    ret nz

    ld c, $c2
    dec c
    sbc $0d
    jp nz, Jump_01f_6050

    ld h, d
    jp nz, $c40e

    dec c
    ret nz

    dec c
    db $f4
    nop

Jump_01f_6050:
    call nz, $c31e
    dec b
    jp nz, $c105

    rla
    db $fc
    ld [$fff1], sp
    di
    rlca
    db $fd
    or $02
    pop bc
    ld bc, $ecf8
    ld e, a
    sbc $0e
    ret nz

    dec c
    jp nz, $7e0d

    ld l, c
    ld l, c
    ld h, a
    ld h, l
    ld h, a
    add h
    ld [bc], a
    ld bc, $50c0
    db $dd
    ld c, $de
    dec c
    ret nz

    dec c
    ei
    sbc $0e
    ret nz

    dec c
    jp nz, $7e0d

    ld l, c
    ld l, c
    ld h, a
    ld h, l
    ld h, a
    add h
    add hl, bc
    dec bc
    call z, $c928
    jr z, @-$3a

    ld c, $c2
    dec c
    ret nz

    dec c
    ei
    push af
    cpl
    ld a, [$60d4]
    ld [hl], b
    ld a, [$60d4]
    db $10
    rlca
    dec b
    inc b
    inc h
    dec b
    ld [bc], a
    jr nc, @-$08

    add hl, hl
    db $f4
    nop
    push af
    inc hl
    pop af
    db $fc
    db $fc
    dec b
    dec de
    ld e, $fd
    or $07
    pop af

jr_01f_60b9:
    inc b
    db $f4
    rst $38
    push af
    cpl
    dec h
    rlca
    inc b
    jr nc, jr_01f_60b9

    add hl, hl
    db $f4
    nop
    push af
    inc hl
    pop af
    db $fc
    db $fc
    dec b
    dec e
    ld bc, $f1fd
    inc b
    ld hl, sp-$12
    ld e, a
    ld [hl], b
    ld [hl+], a
    inc h
    dec h
    add hl, hl
    inc l
    dec hl
    jr nc, jr_01f_6104

    jr nc, jr_01f_6108

    ei
    ld [hl], b
    ld [hl+], a
    inc h
    dec h
    add hl, hl
    inc l
    ld l, e
    ld l, [hl]
    add hl, hl
    ei
    ldh a, [c]
    inc c
    cp $03
    ret nc

    ld bc, $fff4
    ldh a, [$ff08]
    or $16
    push af
    daa
    db $fc
    ld [bc], a
    dec b
    nop
    dec e
    nop
    db $fd
    db $fc
    ld [bc], a
    inc b
    nop
    dec de

jr_01f_6104:
    nop
    db $fd
    db $fc
    ld [bc], a

jr_01f_6108:
    ld [bc], a
    ld e, $19
    ld e, $fd
    db $fc
    ld [bc], a
    nop
    dec e
    add hl, de
    dec e
    db $fd
    db $fc
    inc b
    ld e, $1b
    ld [bc], a
    dec de
    db $fd
    db $fc
    ld [bc], a
    dec e
    jr @+$03

    jr @-$01

    db $fc
    ld [bc], a
    pop af
    rst $38
    dec e
    jr @+$03

    jr @-$01

    ld hl, sp+$34
    ld h, c
    ldh a, [c]
    inc c
    cp $03
    ret nc

    ld bc, $02fc
    push af
    daa
    db $f4
    rst $38
    ldh a, [rTIMA]
    or $16
    db $fc
    db $10
    pop af
    inc bc
    dec b
    pop af
    db $fd
    nop
    pop af
    inc bc
    ld [bc], a
    pop af
    db $fd
    dec e
    db $fd
    db $fc
    db $10
    pop af
    inc bc
    inc bc
    pop af
    db $fd
    ld e, $f1
    inc bc
    nop
    pop af
    db $fd
    dec de
    db $fd
    db $fc
    db $10
    pop af
    inc bc
    dec b
    pop af
    db $fd
    nop
    pop af
    inc bc
    ld [bc], a
    pop af
    db $fd
    dec e
    db $fd
    db $fc
    ld [$03f1], sp
    ld [bc], a
    pop af
    db $fd
    ld e, $f1
    inc bc
    add hl, de
    pop af
    db $fd
    ld e, $fd
    db $fc
    inc b
    pop af
    inc bc
    inc b
    pop af
    db $fd
    ld bc, $03f1
    dec e
    pop af
    db $fd
    ld bc, $fcfd
    inc b
    pop af
    inc bc
    inc b
    pop af
    db $fd
    ld bc, $03f1
    dec de
    pop af
    db $fd
    dec e
    db $fd
    db $fd
    push af
    daa
    ldh a, [rTIMA]
    or $1f
    db $fc
    ld [$e3fa], sp
    ld h, c
    db $fd
    db $fc
    ld [$defa], sp
    ld h, c
    db $fd
    db $fc
    ld [$e3fa], sp
    ld h, c
    db $fd
    db $fc
    ld [$defa], sp
    ld h, c
    db $fd
    db $fc
    ld [$e3fa], sp
    ld h, c
    db $fd
    db $fc
    ld [$defa], sp
    ld h, c
    db $fd
    db $fc
    ld [$e3fa], sp
    ld h, c
    db $fd
    push af
    add hl, hl
    db $fc
    inc b
    ld a, [$61e3]
    db $fd
    push af
    ld h, $fc
    inc b
    ld a, [$61e3]
    pop af
    rst $38
    db $fd
    ld hl, sp+$34
    ld h, c
    add hl, bc
    inc b
    nop
    inc b
    ei
    ld a, [bc]
    dec b
    ld [bc], a
    dec b
    ei
    ldh a, [c]
    inc c
    or $1f
    rst $08
    ld bc, $03fe
    db $f4
    ld h, h
    ldh a, [rTIMA]
    dec hl
    db $f4
    ld a, b
    ldh a, [$ff03]
    inc bc
    ld [bc], a
    db $f4
    ret z

    ldh a, [$ff08]
    daa
    db $f4
    ld a, b
    ldh a, [$ff03]
    inc bc
    ld [bc], a
    ld hl, sp-$10
    ld h, c
    ldh a, [c]
    ld c, $fe
    inc bc
    or $10
    db $f4
    sub [hl]
    ldh a, [rTMA]
    inc h
    ld l, a
    inc b
    inc bc
    inc h
    ld l, a
    inc b
    inc bc
    inc h
    inc hl
    inc b
    inc bc
    inc b
    inc bc
    inc h
    xor a
    ld hl, sp+$13
    ld h, d
    ldh a, [c]
    ld c, $fe
    inc bc
    or $07
    db $f4
    rst $38
    ldh a, [$ff0e]
    push af
    rrca
    db $f4
    ld h, h
    inc [hl]
    ld [hl], b
    db $f4
    ret z

    inc d
    inc d
    db $f4
    ld h, h
    inc [hl]
    ld [hl], b
    db $f4
    ret z

    inc d
    inc d
    db $f4
    ld h, h
    inc [hl]
    inc [hl]
    db $f4
    ret z

    inc d
    inc d
    inc d
    inc d
    db $f4
    ld h, h
    inc [hl]
    or b
    ld hl, sp+$30
    ld h, d
    ldh a, [c]
    ld c, $fe
    inc bc
    or $10
    db $f4
    nop
    ldh a, [$ff08]
    push af
    dec de
    ld hl, sp+$70
    ld h, d
    ldh a, [c]
    ld c, $fe
    inc bc
    or $0d
    ret nc

    dec b
    db $f4
    nop
    ldh a, [rTMA]
    push af
    dec de
    db $fc
    ld [bc], a
    db $fc
    inc b
    inc b
    nop
    rlca
    nop
    db $fd
    db $fc
    inc b
    ld b, $02
    add hl, bc
    ld [bc], a
    db $fd
    db $fd
    db $fc
    ld [bc], a
    db $fc
    inc b
    rlca
    inc bc
    ld a, [bc]
    inc bc
    db $fd
    db $fc
    inc b
    add hl, bc
    dec b
    inc c
    dec b
    db $fd
    db $fd
    ld hl, sp+$70
    ld h, d

    db $f2, $0b, $fe, $03, $f0, $00, $f4, $00, $f6, $02, $c2, $01, $f6, $1a, $f0, $04
    db $f4, $00, $f5, $33, $fa, $b4, $62, $f5, $31, $fa, $b4, $62

    ld hl, sp-$59
    ld h, d

    db $fc, $05, $cc, $08, $c7, $07, $c5, $08, $ca, $07, $cf, $08, $ce, $07, $fd, $fb
    db $f2, $0b, $fe, $03, $f4, $00, $f0, $00, $f6, $01, $c2, $0f, $f6, $1a, $f0, $03
    db $f4, $00, $f5, $33, $fa, $b4, $62, $f5, $31, $fa, $b4, $62

    ld hl, sp-$2a
    ld h, d

    db $04, $be, $63, $04, $5b, $64, $0c, $ae, $64, $00, $27, $65, $10, $04, $ca, $65
    db $04, $50, $66, $00, $26, $67, $10, $ff, $66, $0c, $02, $99, $67, $00, $ae, $67
    db $04, $04, $05, $68, $00, $8e, $68, $04, $07, $69, $10, $ad, $69, $0c, $04, $cd
    db $67, $00, $40, $68, $04, $cb, $68, $10, $42, $69, $0c

    inc b
    cp b
    ld h, a
    nop
    ld c, a
    ld l, b
    inc b
    jp c, $1068

    ld c, a
    ld l, c
    inc c
    inc b
    call c, Call_000_0067
    ld h, h
    ld l, b
    inc b
    jp hl


    ld l, b
    db $10
    ld e, h
    ld l, c
    inc c

    db $04, $f1, $67, $00, $79, $68, $04, $f8, $68, $10, $75, $69, $0c

    inc b
    inc e
    ld l, b
    nop
    and a
    ld l, b
    inc b
    ld hl, $1069
    sub c
    ld l, c
    inc c

    db $04, $c9, $69, $00, $05, $6a, $10, $39, $6a, $04, $4c, $6a, $0c

    inc bc
    ld e, d
    ld l, d
    inc b
    ld a, l
    ld l, d
    nop
    or h
    ld l, d
    db $10

    db $04, $e4, $6a, $10, $93, $6b, $00, $6f, $6c, $04, $5a, $6d, $0c, $04, $fc, $6a
    db $10, $ab, $6b, $00, $87, $6c, $04, $6d, $6d, $0c

    inc b
    jp Jump_000_006d


    adc a
    ld [hl], b
    inc b
    ld c, a
    ld l, a
    db $10
    push hl
    ld l, [hl]
    inc c
    inc b
    reti


    ld l, l
    nop
    cp h
    ld [hl], b
    inc b
    and [hl]
    ld l, a
    db $10
    push af
    ld l, [hl]
    inc c
    inc bc
    ld h, d
    ld [hl], c
    inc b
    adc c
    ld [hl], c
    nop
    db $e3
    ld [hl], c
    db $10
    inc b
    dec e
    ld [hl], d
    db $10
    ld [hl], b
    ld [hl], d
    nop
    xor e
    ld [hl], d
    inc b
    xor $72
    inc c
    inc bc
    rlca
    ld [hl], e
    db $10
    jr nz, @+$75

    inc b
    ld c, h
    ld [hl], e
    nop

    db $f2, $04, $fe, $03, $f0, $03, $f5, $11, $f6, $00, $f4, $00, $fc, $06, $c1, $05
    db $dc, $05, $d5, $05, $f1, $02, $fd, $f4, $ed, $c1, $06, $f4, $b1, $dc, $04, $d5
    db $04, $f0, $0f, $f4, $e6, $fc, $02, $01, $01, $30, $fd, $f6, $1b, $fc, $02, $f5
    db $12, $fa, $32, $64, $f5, $13, $fa, $32, $64, $fd, $f4, $de, $f5, $12, $fa, $47
    db $64, $f5, $13, $fa, $47, $64, $f5, $12, $fa, $47, $64, $f5, $11, $fa, $47, $64
    db $f5, $12, $fa, $47, $64, $f5, $13, $fa, $47, $64, $f5, $12, $fa, $47, $64, $fc
    db $03, $1f, $13, $13, $fd, $1b, $fc, $04, $d4, $03, $fd, $02, $f4, $b8, $1a, $1b
    db $14, $f8, $e9, $63, $f4, $95, $fc, $02, $39, $34, $17, $38, $39, $1c, $f4, $4f
    db $1d, $f4, $95, $39, $14, $17, $18, $fd, $fb, $00, $fc, $02, $10, $14, $14, $fd
    db $00, $10, $14, $10, $00, $1b, $10, $d2, $03, $d3, $03, $14, $fb, $f2, $04, $fe
    db $03, $f6, $00, $f4, $ab, $f0, $0f, $cf, $68, $2f, $fa, $a1, $64, $f6, $1b, $fa
    db $90, $64, $2f, $fc, $07, $fa, $83, $64, $fa, $9c, $64, $fd, $fa, $83, $64, $fa
    db $a1, $64, $f8, $71, $64, $f0, $09, $f4, $de, $f6, $10, $24, $f6, $1b, $f4, $6f
    db $02, $01, $f0, $0b, $c4, $01, $fc, $0b, $f1, $ff, $f3, $01, $fd, $fb, $0f, $f0
    db $0d, $01, $fb, $f4, $cb, $f6, $10, $f0, $0f, $c3, $04, $c2, $04, $c1, $04, $fb
    db $f2, $04, $fe, $03, $f4, $bc, $d0, $68, $f0, $0a, $f5, $1d, $f4, $bb, $fc, $02
    db $1c, $1c, $30, $fd, $f0, $0a, $f4, $b2, $fc, $02, $f5, $23, $fa, $01, $65, $f5
    db $24, $fa, $01, $65, $fd, $fc, $02, $f5, $23, $f6, $25, $fa, $ef, $64, $f5, $24
    db $fa, $ef, $64, $f5, $23, $fa, $ef, $64, $f5, $21, $fa, $ef, $64, $fd, $f8, $c2
    db $64, $f0, $08, $fc, $04, $f4, $bc, $1f, $f4, $6f, $1f, $f4, $bc, $1e, $f4, $6f
    db $1e, $fd, $fb, $fc, $02, $f6, $26, $00, $10, $f6, $18, $03, $f6, $26, $1b, $00
    db $f6, $18, $05, $f6, $26, $00, $1b, $14, $10, $f6, $18, $07, $f6, $26, $00, $14
    db $f6, $18, $05, $10, $f6, $26, $1b, $fd, $fb, $f2, $04, $fe, $03, $f0, $0a, $f4
    db $00, $f6, $00, $f5, $11, $d0, $68, $f6, $26, $f4, $b2, $f0, $0c, $f5, $29, $fc
    db $02, $01, $01, $30, $fd, $fc, $02, $f4, $cb, $f0, $0c, $f5, $23, $fa, $b4, $65
    db $f5, $24, $fa, $b4, $65, $fd, $f5, $23, $fa, $a4, $65, $f5, $24, $fa, $a4, $65
    db $f5, $23, $fa, $a4, $65, $f5, $22, $fa, $a4, $65, $f5, $23, $fa, $a4, $65, $f5
    db $24, $fa, $a4, $65, $f5, $23, $fa, $a4, $65, $fc, $02, $f4, $bc, $02, $f4, $6f
    db $02, $f4, $bc, $01, $f4, $6f, $01, $fd, $f6, $26, $f5, $2f, $f4, $8b, $1b, $05
    db $15, $01, $f0, $0b, $f5, $17, $f4, $ff, $fc, $03, $c2, $04, $f1, $ff, $db, $04
    db $f1, $fe, $fd, $f8, $43, $65, $fc, $04, $f4, $bc, $02, $f4, $6f, $02, $f4, $bc
    db $01, $f4, $6f, $01, $fd, $fb, $fc, $02, $f6, $26, $1b, $17, $0a, $17, $12, $02
    db $14, $19, $14, $05, $0e, $1b, $14, $0c, $1e, $1b, $fd, $fb, $f2, $04, $fe, $03
    db $f4, $81, $f6, $07, $f0, $0f, $f5, $0c, $fc, $05, $19, $19, $05, $fd, $10, $f5
    db $0c, $fa, $3c, $66, $fa, $3c, $66, $f5, $0e, $fa, $3c, $66, $3e, $0a, $1e, $37
    db $03, $3e, $1e, $0a, $37, $17, $23, $f5, $0c, $fa, $3c, $66, $fa, $3c, $66, $f5
    db $0e, $fa, $3c, $66, $3e, $0a, $1e, $17, $03, $17, $3c, $30, $1c, $03, $1c, $3c
    db $f5, $0f, $fa, $49, $66, $f5, $0e, $fa, $49, $66, $f5, $0c, $fa, $49, $66, $3e
    db $0a, $3e, $1e, $00, $02, $f5, $0f, $fa, $49, $66, $f5, $0e, $fa, $49, $66, $3f
    db $0b, $0b, $04, $18, $04, $23, $3e, $23, $19, $1a, $1b, $f8, $dd, $65, $3e, $0a
    db $1e, $39, $05, $3e, $0a, $1e, $39, $05, $19, $05, $fb, $fc, $02, $20, $0c, $0c
    db $fd, $fb, $f2, $04, $fe, $03, $f0, $06, $f4, $6f, $f6, $02, $f5, $3f, $fc, $04
    db $1a, $1b, $1d, $fd, $02, $16, $02, $10, $f0, $0a, $fa, $c8, $66, $10, $04, $30
    db $02, $90, $f5, $3f, $f0, $06, $16, $18, $19, $fc, $03, $1a, $f1, $fe, $fd, $10
    db $f0, $09, $fa, $c8, $66, $1f, $20, $1d, $3a, $36, $1b, $d0, $30, $f6, $0d, $f0
    db $09, $f4, $de, $f5, $27, $04, $22, $20, $1f, $3d, $62, $76, $1a, $3b, $3d, $04
    db $06, $10, $42, $90, $04, $26, $27, $00, $24, $62, $7b, $01, $10, $04, $27, $06
    db $07, $0e, $30, $f4, $7d, $f5, $3f, $f6, $02, $f0, $0a, $16, $f0, $04, $16, $f0
    db $09, $fc, $04, $02, $f1, $ff, $fd, $f8, $66, $66, $f6, $15, $f4, $bc, $f5, $27
    db $fc, $05, $02, $10, $1f, $fd, $00, $02, $30, $1b, $f4, $de, $30, $f5, $3f, $f6
    db $14, $f1, $fc, $c2, $04, $c4, $04, $c6, $04, $f1, $02, $f4, $bc, $07, $1b, $f1
    db $02, $f5, $27, $f6, $15, $16, $16, $02, $00, $3f, $fc, $05, $00, $10, $1d, $fd
    db $fb, $f2, $04, $fe, $03, $f4, $6f, $f0, $09, $f6, $10, $fc, $03, $02, $4f, $fd
    db $f4, $6f, $f0, $09, $f6, $1b, $03, $02, $f4, $00, $f0, $0d, $c1, $01, $fc, $0b
    db $f1, $ff, $f3, $01, $fd, $f8, $0e, $67, $f2, $04, $fe, $03, $fc, $04, $70, $fd
    db $f0, $09, $f4, $6f, $f6, $01, $f5, $33, $fc, $08, $fa, $85, $67, $fd, $f5, $35
    db $fc, $08, $fa, $85, $67, $fd, $f5, $33, $fc, $08, $fa, $85, $67, $fd, $f5, $35
    db $fc, $05, $fa, $85, $67, $fd, $18, $12, $1e, $1d, $d0, $30, $f5, $33, $fa, $8a
    db $67, $14, $1d, $1a, $1d, $04, $00, $1a, $02, $16, $1f, $1e, $1f, $02, $1b, $07
    db $1b, $fa, $8a, $67, $16, $1e, $1d, $1e, $15, $1e, $1d, $1e, $1d, $14, $1a, $1d
    db $04, $02, $00, $1a, $f8, $2e, $67, $16, $1b, $18, $1b, $fb, $fc, $02, $18, $00
    db $1f, $00, $fd, $fc, $02, $16, $1f, $1e, $1f, $fd, $fb, $f2, $04, $fe, $03, $f0
    db $0b, $f4, $00, $f6, $0e, $f5, $38, $22, $27, $2b, $29, $27, $24, $f8, $a5, $67
    db $f2, $04, $fe, $03, $f0, $0b, $50, $f8, $9f, $67

    ldh a, [c]
    inc bc
    cp $03
    or $0a
    ldh a, [$ff0c]
    db $f4
    rst $38
    push af
    inc sp
    inc b
    ldh a, [rDIV]
    inc b
    ldh a, [$ff0c]
    rlca
    inc c
    rst $38

    db $f2, $03, $fe, $03, $f6, $0a, $f0, $0c, $f4, $ff, $f5, $33, $f8, $34, $68

    ldh a, [c]
    inc bc
    cp $03
    or $0a
    ldh a, [$ff0c]
    db $f4
    rst $38
    push af
    inc sp
    add hl, de
    dec de
    dec e
    rra
    dec e
    rra
    ld hl, sp+$33
    ld l, b

    db $f2, $03, $fe, $03, $f6, $0a, $f0, $0c, $f4, $ff, $f5, $33, $00, $1b, $00, $04
    db $18, $f8, $2e, $68, $f2, $03, $fe, $03, $f6, $0a, $f0, $0c, $f4, $ff, $f5, $33
    db $fa, $39, $68, $20, $1b, $58, $fa, $39, $68, $40, $58, $f2, $03, $fe, $03, $f6
    db $0a, $f0, $0c, $f4, $ff, $f5, $33, $fa, $39, $68, $20, $1b, $38, $07, $25, $04
    db $22, $04, $40, $cc, $0a, $d0, $0b, $ff, $19, $1b, $1d, $1f, $1d, $1f, $fb, $f2
    db $03, $fe, $03, $f6, $0a, $f4, $ff, $f0, $0b, $f5, $33, $f8, $bf, $68

    ldh a, [c]
    inc bc
    cp $03
    or $0a
    db $f4
    rst $38
    ldh a, [$ff0b]
    push af
    inc sp
    nop
    ldh a, [rDIV]
    nop
    ldh a, [$ff0b]
    dec b
    inc b
    rst $38
    ldh a, [c]
    inc bc
    cp $03
    or $0a
    db $f4
    rst $38
    ldh a, [$ff0b]
    push af
    inc sp
    ld d, $16
    ld d, $19
    add hl, de
    add hl, de
    ld hl, sp-$42
    ld l, b

    db $f2, $03, $fe, $03, $f6, $0a, $f4, $ff, $f0, $0b, $f5, $33, $18, $14, $1b, $00
    db $10, $18, $f8, $b9, $68, $f2, $03, $fe, $03, $f6, $0a, $f4, $ff, $f0, $0b, $f5
    db $33, $fa, $c4, $68, $58, $34, $1b, $fa, $c4, $68, $38, $19, $3b, $14, $f2, $03
    db $fe, $03, $f6, $0a, $f4, $ff, $f0, $0b, $f5, $33, $fa, $c4, $68, $58, $34, $04
    db $22, $1f, $1b, $1d, $1f, $58, $c4, $0a, $d0, $0b, $ff, $14, $16, $19, $19, $19
    db $19, $fb, $f2, $03, $fe, $03, $f6, $07, $f0, $0f, $f4, $ff, $f5, $1b, $f8, $3f
    db $69

    ldh a, [c]
    inc bc
    cp $03
    or $07
    ldh a, [rIF]
    db $f4
    rst $38
    push af
    daa
    ld hl, sp+$3b
    ld l, c
    ldh a, [c]
    inc bc
    cp $03
    or $07
    ldh a, [rIF]
    db $f4
    rst $38
    push af
    daa
    ld hl, sp+$35
    ld l, c

    db $f2, $03, $fe, $03, $f6, $07, $f0, $0f, $f4, $ff, $f5, $27, $f8, $31, $69, $f2
    db $03, $fe, $03, $f6, $07, $f0, $0f, $f4, $ff, $f5, $27, $22, $02, $27, $07, $40
    db $20, $07, $25, $05, $27, $07, $20, $07, $40, $f2, $03, $fe, $03, $f6, $07, $f0
    db $0f, $f4, $ff, $f5, $27, $22, $02, $27, $07, $20, $14, $34, $00, $19, $1b, $1d
    db $1f, $1d, $1f, $20, $f5, $1b, $1b, $14, $30, $ff, $f2, $03, $fe, $03, $f0, $0a
    db $f6, $10, $f4, $eb, $f8, $c6, $69

    ldh a, [c]
    inc bc
    cp $03
    ldh a, [$ff0a]
    or $10
    db $f4
    db $eb
    ld hl, sp-$3d
    ld l, c
    ldh a, [c]
    inc bc
    cp $03
    ldh a, [$ff0a]
    or $10
    db $f4
    db $eb
    ld h, $06
    ld b, $f1
    db $fc
    inc bc
    pop af
    inc b
    ld b, $03
    inc bc
    inc bc
    inc bc
    cpl
    rst $38

    db $f2, $03, $fe, $03, $f0, $0a, $f6, $10, $f4, $eb, $fc, $02, $26, $06, $06, $f1
    db $fc, $03, $f1, $04, $06, $fd, $03, $03, $03, $03, $2f, $ff

    ldh a, [c]
    inc bc
    cp $03
    ldh a, [$ff0a]
    or $10
    db $f4
    db $eb
    db $fc
    inc bc
    ld h, $06
    ld b, $f1
    db $fc
    inc bc
    pop af
    inc b
    ld b, $fd
    inc bc
    inc bc
    inc bc
    inc bc
    cpl
    rst $38

    db $f2, $03, $fe, $03, $f0, $0a, $f6, $10, $f4, $eb, $fc, $07, $26, $06, $06, $f1
    db $fc, $03, $f1, $04, $06, $fd, $03, $03, $03, $03, $2f, $ff, $f2, $02, $fe, $03
    db $f6, $29, $f4, $96, $fc, $02, $f5, $40, $fa, $f1, $69, $f5, $34, $fa, $fe, $69
    db $fd, $f5, $40, $fa, $f1, $69, $fa, $fe, $69, $fa, $f1, $69, $f5, $34, $fa, $fe
    db $69, $f8, $d1, $69, $f0, $05, $02, $f0, $03, $02, $f0, $05, $00, $f0, $03, $00
    db $fb, $f0, $05, $07, $f0, $03, $07, $fb, $f2, $02, $fe, $03, $f6, $01, $f4, $85
    db $f5, $10, $fa, $1a, $6a, $f5, $0f, $fa, $1a, $6a

    ld hl, sp+$0d
    ld l, d

    db $f0, $0c, $fc, $05, $0a, $f1, $fe, $fd, $10, $f0, $0e, $fc, $06, $1e, $f1, $fd
    db $fd, $70, $f0, $06, $0a, $10, $f0, $0d, $fc, $06, $0a, $f1, $fe, $fd, $fb, $f2
    db $02, $fe, $03, $f0, $05, $f6, $29, $f5, $28, $f4, $61, $05, $f4, $96, $05, $f8
    db $39, $6a, $f2, $02, $fe, $03, $f0, $0b, $f6, $10, $f4, $48, $21, $f8, $4c, $6a

    ldh a, [c]
    ld [bc], a
    cp $03
    ldh a, [rTMA]
    or $1f
    push af
    ccf
    db $f4
    sub b
    ld a, [$6a71]
    push af
    dec a
    ld a, [$6a71]
    ld hl, sp+$62
    ld l, d
    db $fc
    ld [bc], a
    rlca
    db $10
    dec de
    dec de
    sub b
    rlca
    rlca
    rlca
    db $fd
    ei
    ldh a, [c]
    ld [bc], a
    cp $03
    ldh a, [$ff08]
    or $1f
    push af
    daa
    db $f4
    ret z

    ld a, [$6aad]
    jr nz, jr_01f_6a8e

jr_01f_6a8e:
    ld a, [$6aad]
    ccf
    rra
    push af
    dec h
    ld a, [$6aad]
    jr nz, jr_01f_6a9a

jr_01f_6a9a:
    rra
    push af
    ccf
    ld [hl], b
    ldh a, [rTIMA]
    db $f4
    sbc d
    inc d
    db $fc
    inc bc
    add hl, de
    dec b
    pop af
    cp $fd
    ld hl, sp+$7d
    ld l, d
    ccf
    rra
    jr nz, jr_01f_6ab1

jr_01f_6ab1:
    ld [hl+], a
    ld [bc], a
    ei
    ldh a, [c]
    ld [bc], a
    cp $03
    db $f4
    ld h, h
    ldh a, [rTIMA]
    or $01
    push af
    daa
    ld a, [$6ada]
    add hl, bc
    db $10
    ld [bc], a
    ld a, [$6ada]
    rlca
    ld c, $07
    push af
    dec h
    ld a, [$6ada]
    add hl, bc
    db $10
    ld [bc], a
    rlca
    ret nc

    ld h, e
    ld hl, sp-$4c
    ld l, d
    rlca
    db $10
    ld [bc], a
    add hl, bc
    db $10
    ld [bc], a
    dec bc
    db $10
    ld [bc], a
    ei

    db $f2, $03, $fe, $03, $f6, $07, $f5, $20, $f0, $0a, $f4, $ff, $fa, $7b, $6b, $fa
    db $72, $6b, $fa, $7b, $6b, $fa, $6b, $6b, $f2, $03, $fe, $03, $f6, $07, $f5, $20
    db $f0, $0a, $f4, $ff, $fc, $04, $fa, $51, $6b, $fd, $fa, $3a, $6b, $fa, $3a, $6b
    db $f5, $23, $fa, $3a, $6b, $f5, $20, $fa, $21, $6b, $f8, $08, $6b, $1c, $10, $5c
    db $23, $1c, $10, $1c, $10, $03, $28, $23, $1b, $10, $27, $1b, $07, $10, $1b, $10
    db $1b, $10, $05, $27, $3b, $fb, $19, $10, $59, $25, $19, $10, $19, $10, $00, $29
    db $20, $18, $10, $58, $24, $18, $10, $18, $10, $1f, $27, $3f, $fb, $14, $10, $14
    db $10, $3b, $fc, $03, $10, $16, $fd, $3d, $16, $17, $18, $10, $18, $10, $3f, $fc
    db $03, $10, $16, $fd, $3d, $36, $fb, $02, $02, $30, $07, $07, $30, $fb, $16, $1d
    db $02, $10, $16, $02, $10, $1d, $fb, $14, $1b, $00, $10, $14, $00, $10, $36, $1d
    db $02, $10, $16, $02, $10, $1d, $18, $1f, $04, $10, $18, $04, $10, $1f, $fb, $f2
    db $03, $fe, $03, $f6, $15, $f4, $fa, $f0, $07, $f5, $2c, $fa, $59, $6c, $fa, $4f
    db $6c, $fa, $59, $6c, $fa, $44, $6c, $f2, $03, $fe, $03, $f4, $00, $f6, $0d, $f0
    db $05, $f5, $2c, $fa, $27, $6c, $f0, $0a, $f6, $15, $44, $f1, $fa, $fa, $08, $6c
    db $00, $02, $10, $24, $f6, $11, $f1, $fa, $1d, $04, $fa, $08, $6c, $fa, $d7, $6b
    db $f8, $af, $6b, $04, $10, $05, $27, $f1, $fa, $f6, $11, $fc, $05, $00, $07, $fd
    db $00, $f1, $06, $f6, $15, $05, $10, $03, $25, $f1, $fa, $f6, $11, $fc, $05, $1e
    db $05, $fd, $f6, $0e, $f1, $06, $1e, $03, $05, $10, $c7, $5b, $4c, $c6, $02, $c7
    db $59, $1b, $40, $fb, $f6, $11, $fc, $04, $1d, $04, $fd, $1d, $f6, $15, $f1, $06
    db $02, $10, $00, $22, $f1, $fa, $f6, $11, $fc, $05, $1b, $02, $fd, $1b, $f6, $15
    db $f1, $06, $fb, $c6, $02, $c7, $c2, $25, $04, $47, $df, $02, $c0, $b4, $3b, $00
    db $c6, $02, $c7, $c9, $24, $05, $47, $cc, $61, $c5, $01, $c6, $02, $c7, $6e, $fb
    db $00, $f1, $fe, $00, $f1, $02, $30, $00, $00, $30, $fb, $30, $20, $10, $f1, $ff
    db $20, $f1, $01, $10, $fb, $30, $3f, $10, $f1, $01, $3f, $f1, $ff, $50, $20, $10
    db $f1, $01, $20, $50, $22, $10, $f1, $ff, $22, $10, $fb, $f2, $03, $fe, $03, $f0
    db $09, $f6, $15, $f4, $ff, $f5, $2c, $fa, $2f, $6d, $fa, $45, $6d, $fa, $2f, $6d
    db $fa, $4f, $6d, $f2, $03, $fe, $03, $f5, $2c, $f6, $0b, $f4, $be, $f0, $08, $fc
    db $04, $fa, $0e, $6d, $fd, $f0, $0c, $f6, $15, $40, $f1, $fa, $fa, $ef, $6c, $1d
    db $1f, $10, $20, $f6, $11, $f1, $fa, $19, $00, $fa, $ef, $6c, $1f, $10, $02, $fa
    db $b9, $6c, $f8, $8d, $6c, $23, $f1, $fa, $f6, $11, $fc, $05, $1c, $03, $fd, $1c
    db $f1, $06, $f6, $15, $02, $10, $00, $22, $f1, $fa, $f6, $11, $fc, $07, $1b, $02
    db $fd, $f1, $01, $1b, $f1, $01, $fc, $05, $1c, $00, $03, $fd, $1c, $05, $02, $1f
    db $02, $1f, $1b, $1f, $1b, $fc, $04, $19, $1b, $fd, $fb, $fc, $04, $f6, $11, $19
    db $00, $fd, $19, $f6, $15, $f1, $06, $1f, $10, $1d, $3f, $f6, $11, $f1, $fa, $18
    db $fc, $05, $1f, $18, $fd, $f6, $15, $f1, $06, $fb, $18, $1b, $1f, $1b, $18, $1b
    db $1f, $1b, $19, $1d, $00, $1d, $19, $1d, $00, $1d, $1b, $1f, $02, $1f, $1b, $1f
    db $02, $1f, $19, $1d, $00, $19, $1d, $00, $19, $1d, $fb, $30, $38, $10, $f1, $01
    db $38, $f1, $ff, $50, $39, $10, $f1, $01, $39, $50, $3b, $f1, $ff, $10, $3b, $10
    db $fb, $30, $39, $10, $f1, $ff, $39, $f1, $01, $10, $fb, $19, $f1, $fe, $19, $f1
    db $02, $30, $19, $19, $30, $fb, $f2, $03, $fe, $03, $f0, $09, $f4, $ff, $f6, $10
    db $fc, $07, $fa, $8f, $6d, $fd, $fa, $a0, $6d, $f2, $03, $fe, $03, $f0, $07, $f4
    db $ff, $f6, $10, $fc, $02, $fc, $0c, $fa, $a5, $6d, $fd, $fa, $ae, $6d, $fd, $fc
    db $0e, $fa, $8f, $6d, $fd, $fa, $ae, $6d, $f8, $77, $6d, $06, $f1, $fe, $07, $07
    db $07, $f1, $02, $04, $f1, $fe, $07, $07, $07, $f1, $02, $fb, $05, $45, $05, $45
    db $fb, $06, $f1, $fc, $06, $f1, $04, $05, $06, $fb, $05, $07, $05, $07, $05, $07
    db $07, $f1, $01, $05, $07, $04, $04, $07, $04, $05, $06, $07, $f1, $ff, $fb

    ldh a, [c]
    inc b
    cp $03
    db $f4
    and [hl]
    ldh a, [rTAC]
    or $16
    push af
    daa
    db $fc
    ld c, $07
    nop
    ld [bc], a
    nop
    db $fd
    rlca
    ld d, b
    ld [hl], b
    ldh a, [c]
    inc b
    cp $03
    db $f4
    and [hl]
    ldh a, [rTAC]
    or $29
    push af
    daa
    ld a, [$6e95]
    ld a, [$6eb9]
    ld a, [$6e95]
    ld a, [$6e9f]
    ldh a, [rDIV]
    db $f4
    and b
    or $29
    push af
    ld [hl-], a
    ld a, [$6e95]
    ld a, [$6eb9]
    ld a, [$6e95]
    ld a, [$6ec1]
    db $f4
    cp e
    push af
    rrca
    ld a, [$6e5e]
    push af
    ld c, $fa
    ld e, [hl]
    ld l, [hl]
    push af
    rrca
    ld a, [$6e5e]
    push af
    ld de, $5efa
    ld l, [hl]
    db $f4
    add l
    push af
    inc e

jr_01f_6e1f:
    ld a, [$6e5e]
    push af
    jr nz, jr_01f_6e1f

    ld e, [hl]
    ld l, [hl]
    push af
    dec e
    ld a, [$6e5e]
    push af
    inc hl
    ld a, [$6e5e]
    push af
    ld [hl+], a
    ld a, [$6e5e]
    ld a, [$6e5e]
    push af
    ld hl, $5efa
    ld l, [hl]
    ld a, [$6e7a]
    ldh a, [rTAC]
    or $1b
    db $f4
    ei
    ld b, $f4
    add l
    ld a, [de]
    push af
    add hl, bc
    dec c
    ld b, $f4
    rst $00
    or $07
    ld b, $1a
    add $04
    pop bc
    inc b
    jp c, $f804

    reti


    ld l, l
    or $15
    ldh a, [$ff09]
    ld a, [de]
    or $02
    pop af
    ei
    ld b, $f1
    ld [bc], a
    ld bc, $15f6
    ld bc, $f104
    db $fc
    inc b
    pop af
    ld [bc], a
    or $17
    ld bc, $f61a
    dec d
    ld a, [de]
    pop af
    ld [bc], a
    or $03
    ld b, $f6
    ld bc, $f601
    ld [bc], a
    ld bc, $15f6
    inc b
    pop af
    db $fc
    inc b
    pop af
    inc b
    or $02
    ld bc, $fcf1
    ld bc, $29fb
    dec hl
    inc l
    daa
    add hl, hl

jr_01f_6e9a:
    dec bc
    inc c
    daa
    jr nc, jr_01f_6e9a

    dec h
    inc h
    jr nz, @+$3f

    ld [hl+], a
    db $f4
    and b
    or $0f
    push af
    ccf
    rst $00
    inc b
    db $db
    inc b
    push af
    daa
    rst $00
    inc b
    ldh a, [rDIV]
    db $db
    ld [$10d0], sp
    ei
    dec h
    inc h
    ld [hl+], a
    jr nz, jr_01f_6ee2

    ld [hl+], a
    ld [hl], b
    ei
    ld h, $25
    ld hl, $233e
    or $0e
    ldh a, [rDIV]
    db $f4
    nop
    ret nz

    inc b
    add $04
    jp z, $f504

    ld a, $f0
    ld b, $c3
    inc b
    ldh a, [rDIV]
    jp $f004


    ld [bc], a
    jp $f004


    dec b

jr_01f_6ee2:
    inc bc
    db $10
    ei
    ldh a, [c]
    inc b
    cp $03
    ldh a, [$ff09]
    or $10
    db $f4
    ld h, h
    db $fc
    db $10
    ld a, [$6f44]
    db $fd
    ldh a, [c]
    inc b
    cp $03
    ldh a, [$ff09]
    or $10
    db $f4
    ld h, h
    db $fc
    rra
    cpl
    ld bc, $fd0f
    rrca
    db $f4
    sbc d
    db $fc
    inc bc
    inc bc
    db $fd
    ldh a, [rTAC]
    db $fc
    db $10
    inc bc
    ld bc, $0102
    db $fd
    db $fc
    ld [$0103], sp
    ld [bc], a
    ld bc, $fff4
    ld [bc], a
    db $f4
    ld h, h
    ld bc, $0102
    db $fd
    db $fc
    ld [$0103], sp
    db $f4
    jp hl


    ld [bc], a
    db $f4
    adc [hl]
    ld bc, $fff4
    inc bc
    db $f4
    ld h, h
    ld bc, $fff4
    ld bc, $64f4
    ld bc, $fcfd
    rra
    ld a, [$6f44]
    db $fd
    ld hl, sp+$05
    ld l, a
    db $f4
    ret z

    inc bc
    rrca
    db $f4
    adc h
    ld bc, $64f4
    ld bc, $f2fb
    inc b
    ldh a, [rP1]
    push af
    rrca
    or $02
    ret nz

    ld bc, $03fe
    ldh a, [$ff0a]
    db $f4
    ld e, d
    or $1b
    push af
    ccf
    ld a, [$6f91]
    ld a, [$6f91]
    push af
    ld a, $fa
    sbc d
    ld l, a
    push af
    inc a
    ld a, [$6f9a]
    push af
    ld b, c
    ld a, [$6f91]
    dec b
    db $10
    db $f4
    or h
    rst $10
    inc bc
    jp nc, $f403

    ld e, d
    dec de
    ld [bc], a
    nop
    db $f4
    or h
    push bc
    inc bc
    ret nz

    inc bc
    db $f4
    ld e, d
    add hl, de
    ld hl, sp-$4c
    ld l, a
    dec b
    dec b
    nop
    dec e
    dec b
    nop
    nop
    dec e
    ei
    db $fc
    ld [bc], a
    dec b
    inc bc
    inc e
    add hl, de
    dec b
    inc e
    inc e
    add hl, de
    db $fd
    ei
    ldh a, [c]
    inc b
    ldh a, [rP1]
    cp $03
    db $f4
    add d
    push af
    dec de
    or $0d
    push bc
    ld bc, $1bf6
    push af
    inc sp
    ld a, [$7071]
    ld a, [$7050]
    ld a, [$7061]
    push af
    inc sp
    ld a, [$7071]
    push af
    inc sp
    ld a, [$7050]
    ret nc

    ld a, [hl+]
    push af
    ld [hl-], a
    ldh a, [$ff09]
    ld a, [$7071]
    ld a, [$7050]
    ret nc

    ld de, $1b1f
    rlca
    pop af
    ei
    rst $00
    rlca
    pop af
    dec b
    ld a, [$7071]
    push af
    inc sp
    ld a, [$7050]
    ret nc

    ld a, [hl+]
    push af
    ccf
    ld a, [$7042]
    push af
    ld a, $fa
    ld b, d
    ld [hl], b
    push af
    ccf
    ld a, [$7042]
    push af
    ld b, c
    ld a, [$7042]
    db $f4
    and $f5
    ld b, b
    ld a, [$7034]
    push af
    ld b, h
    ld a, [$7034]
    push af
    ld b, c
    ld a, [$7034]
    push af
    ld b, a
    ld a, [$7034]
    push af
    ld b, [hl]
    db $fc
    inc b
    ld a, [$702b]
    db $fd
    push af
    ld b, l
    db $fc
    inc bc
    ld a, [$702b]
    db $fd
    ret nc

    cpl
    ld hl, sp-$5a
    ld l, a
    ld e, $17
    jr jr_01f_7030

    ld [de], a

jr_01f_7030:
    inc e
    jr jr_01f_704d

    ei
    ldh a, [rTAC]
    db $fc
    ld [bc], a
    inc e
    ld [de], a
    jr jr_01f_7051

    rra
    dec d
    inc e
    dec d
    db $fd
    ei
    ldh a, [rTAC]
    or $0c
    db $fc
    ld [bc], a
    ld a, [hl-]
    dec d
    ld b, $15
    ld a, [hl-]

jr_01f_704d:
    dec d
    db $fd
    ei
    db $fc

jr_01f_7051:
    ld [bc], a
    ld [bc], a
    pop af
    ei
    ld [bc], a
    pop af
    dec b
    ld d, $f1
    ei
    ld d, $f1
    dec b
    db $fd
    rlca
    ei
    db $f4
    ld l, a
    ld d, b
    ld c, $07
    ldh a, [$ff09]
    push af
    ccf
    rlca
    pop af
    db $fd
    rlca
    pop af
    dec b
    ei
    db $fc
    ld [bc], a
    ldh a, [$ff0d]
    dec b
    pop af
    ei
    dec b
    pop af
    dec b
    dec e
    pop af
    ei
    dec e
    pop af
    dec b
    inc b
    pop af
    ei
    inc b
    pop af
    dec b
    dec de
    pop af
    ei
    dec de
    pop af
    dec b
    db $fd
    ei
    ldh a, [c]
    inc b
    cp $03
    db $f4
    adc b
    or $07
    ldh a, [rIF]
    push af
    inc de
    db $fc
    inc b
    ld a, [$714a]
    db $fd
    push af
    ld [de], a
    db $fc
    inc b
    ld a, [$714a]
    db $fd
    push af
    db $10
    db $fc
    inc b
    ld a, [$714a]
    db $fd
    push af
    dec d
    ld a, [$714a]
    ld a, [$714a]
    dec d
    ld d, b
    ld [hl], b
    ldh a, [c]
    inc b
    cp $03
    ldh a, [$ff0c]
    db $f4
    adc b
    or $07
    push af
    ld [de], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld a, [$7143]
    db $fd
    ld a, [$712d]
    db $fd
    push af
    ld de, $02fc
    ld a, [$7143]
    db $fd
    ld a, [$712d]
    db $fc
    ld [bc], a
    ld a, [$7143]
    db $fd
    push af
    ld [de], a
    ld a, [$712d]
    db $f4
    ld a, c
    or $02
    ldh a, [$ff09]
    push af
    jr nz, @-$04

    ld e, d
    ld [hl], c
    push af
    rra

jr_01f_70f7:
    ld a, [$715a]
    push af
    jr nz, jr_01f_70f7

    ld e, d
    ld [hl], c
    push af
    ld [hl+], a
    ld a, [$715a]
    push af
    ld hl, $5afa
    ld [hl], c
    push af
    dec h
    ld a, [$715a]
    push af
    ld [hl+], a
    ld a, [$715a]
    push af
    inc e
    ld a, [$715a]
    push af
    daa
    ld a, [$715a]
    ld a, [$715a]
    push af
    ld h, $fa
    ld d, d
    ld [hl], c
    dec c
    dec b
    dec bc
    dec c
    ld [hl], b
    ld hl, sp-$44
    ld [hl], b
    inc sp

jr_01f_712e:
    pop af
    db $fc
    rra
    pop af
    inc b
    inc de
    inc sp
    pop af
    db $fc
    rra
    pop af
    inc b
    inc de
    jr c, jr_01f_712e

    db $fc
    inc b
    pop af
    inc b
    sub b
    ei
    ld [hl], $f1
    db $fc
    ld [bc], a
    pop af
    inc b
    ld d, $35
    pop af
    db $fc
    ld bc, $04f1
    dec d
    ei
    db $fc
    ld b, $15
    ld [$050b], sp
    db $fd
    ei
    db $fc
    inc b
    dec d
    ld bc, $050c
    db $fd
    ei
    ldh a, [c]
    dec b
    cp $03
    db $f4
    ld e, l
    or $16
    ldh a, [$ff0a]
    push af
    jr nc, @-$04

    ld a, c
    ld [hl], c
    push af
    ld [hl-], a
    ld a, [$7179]
    ld hl, sp+$62
    ld [hl], c
    db $fc
    ld [$f114], sp
    db $fc
    inc d
    pop af
    inc b
    dec de
    pop af
    db $fc
    dec de
    pop af
    inc b
    db $fd
    ei
    ldh a, [c]
    dec b
    db $10
    cp $03
    db $f4
    ld h, e
    or $16
    ldh a, [$ff09]
    push af
    jr nc, @-$04

    pop bc
    ld [hl], c
    ld a, [$719f]
    ld hl, sp-$74
    ld [hl], c
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    dec b
    pop af
    db $fc
    dec b
    pop af
    inc b
    nop
    pop af
    db $fc
    nop
    pop af
    inc b
    db $fd
    db $fc
    ld [bc], a
    dec b
    pop af
    db $fc
    dec b
    pop af
    inc b
    rra
    pop af
    db $fc
    rra
    pop af
    inc b
    db $fd
    db $fd
    ei
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    inc b
    pop af
    db $fc
    inc b
    pop af
    inc b
    rra
    pop af
    db $fc
    rra
    pop af
    inc b
    db $fd
    db $fc
    ld [bc], a
    inc b
    pop af
    db $fc
    inc b
    pop af
    inc b
    dec e
    pop af
    db $fc
    dec e
    pop af
    inc b
    db $fd
    db $fd
    ei
    ldh a, [c]
    dec b
    cp $03
    db $f4
    ld d, b
    or $07
    ldh a, [rIF]
    push af
    dec de
    ld a, [$7210]
    jr jr_01f_7204

    ld a, [$7210]
    jr @-$0d

    ld hl, sp+$11
    pop af
    ld [$1df5], sp
    ld a, [$7210]
    jr jr_01f_7214

jr_01f_7204:
    ld a, [$7210]

jr_01f_7207:
    ld d, $f5
    ld de, $f8f1
    ld d, $f8
    db $eb
    ld [hl], c
    dec e
    db $10
    dec e
    ret nc

jr_01f_7214:
    jr c, jr_01f_7207

    ld hl, sp+$1d
    pop af
    ld [$301d], sp
    ei
    ldh a, [c]
    dec b
    cp $03
    ldh a, [$ff0a]
    db $f4

jr_01f_7224:
    ld a, e
    or $03
    push af
    jr jr_01f_7224

    ld h, l
    ld [hl], d
    push af
    ld d, $fa
    ld h, l
    ld [hl], d
    push af
    inc d
    ld a, [$7265]
    db $f4
    and b
    ret nc

    ld b, $d6
    dec b
    db $db
    dec b
    db $f4
    ld h, e
    jr c, jr_01f_727b

    ld a, [de]
    ld a, [hl-]
    or $20
    db $f4
    and $f0
    ld b, $f5
    ld hl, $04d1
    rst $10
    inc b
    db $f4
    ld e, [hl]
    add hl, de
    nop
    inc c
    add hl, de
    db $f4
    ret z

    push bc
    dec b
    ldh a, [rDIV]
    push bc
    dec b
    ldh a, [rSC]
    push bc
    ld b, $f8
    dec e
    ld [hl], d
    dec sp
    dec sp
    dec a
    dec e
    dec e
    ld e, $3f
    dec sp
    dec de
    ld [hl], $fb
    ldh a, [c]
    dec b
    cp $03
    ldh a, [rTIMA]
    db $f4
    ld l, a
    or $29
    push af

jr_01f_727b:
    inc h
    ld a, [$7296]
    push af
    ld [hl+], a

jr_01f_7281:
    ld a, [$7296]
    push af
    jr nz, jr_01f_7281

    sub [hl]
    ld [hl], d
    ld bc, $0100
    rra
    ld e, $01
    ld [$d006], sp
    ld b, b
    ld hl, sp+$70
    ld [hl], d
    ld [bc], a
    ld bc, $1002
    ld [bc], a
    ld bc, $0202
    pop af
    db $fc
    rra
    pop af
    inc b
    db $fc
    ld [bc], a
    ld [bc], a

jr_01f_72a6:
    ld bc, $fd02
    db $10
    ei
    ldh a, [c]
    dec b
    cp $03
    db $f4
    ld e, d
    or $18
    push af
    jr nc, jr_01f_72a6

    ld b, $fc
    inc b
    ld a, [$72e5]
    db $fd
    ld a, [$72c3]
    ld hl, sp-$55
    ld [hl], d
    db $fc
    ld [bc], a
    add hl, de
    db $10
    dec de
    nop
    ld e, $10
    dec e
    dec de
    db $fd
    dec de
    stop
    inc b
    ld [bc], a
    db $10
    dec de
    ld a, [de]
    db $10
    inc b
    nop
    dec de
    ld b, $1d
    db $f4
    and b
    jp nz, $dd05

    dec b
    sub $06
    ei
    dec de
    db $10
    dec e
    ld [bc], a
    ld bc, $1f10
    dec e
    ei
    ldh a, [c]
    dec b
    cp $03
    db $f4
    ld e, d
    or $10
    ldh a, [$ff08]
    ld bc, $04f0
    ld bc, $00f4
    ldh a, [$ff0b]
    add hl, bc
    ldh a, [rP1]
    ld bc, $eef8
    ld [hl], d
    ldh a, [c]
    inc bc
    cp $03
    or $0d
    db $f4
    nop
    push af
    inc [hl]
    ldh a, [$ff09]
    db $fc
    ld a, [bc]
    inc b
    dec e
    db $fd
    db $fc
    ld a, [bc]
    ld [bc], a
    dec de
    db $fd
    ld hl, sp+$07
    ld [hl], e
    ldh a, [c]
    inc bc
    cp $03
    db $f4
    ld a, d
    or $19
    push af
    db $10
    ld a, [$733f]
    push af
    rrca
    ld a, [$733f]
    push af
    dec c
    ld a, [$733f]
    push af
    dec bc
    ld a, [$733f]
    ld hl, sp+$20
    ld [hl], e
    db $fc
    ld [bc], a
    ldh a, [$ff0c]
    ld e, c
    pop af
    db $fc
    dec h
    db $10
    add hl, sp
    add hl, sp
    db $fd
    ei
    ldh a, [c]
    inc bc
    cp $03
    ldh a, [rTIMA]
    or $0e
    push af
    inc [hl]
    db $f4
    rst $00
    daa
    inc h
    jr nz, jr_01f_7399

    ld [hl], $31
    jr c, jr_01f_7399

    jr nz, jr_01f_738b

    daa
    ld [hl+], a
    ld a, [hl-]
    ld [hl], $31
    inc sp
    dec sp
    inc h
    ld h, $2e
    inc h
    ld [hl+], a
    jr nz, jr_01f_73a9

    ld sp, $28f5
    add hl, sp
    push af

jr_01f_7375:
    inc [hl]
    inc [hl]
    dec a
    inc h
    ld l, $2b
    daa
    ld [hl+], a
    dec a
    jr c, jr_01f_7375

    jr z, jr_01f_73ba

    push af
    inc [hl]
    ld [hl], $3b
    ld [hl+], a
    ld l, $f8
    ld c, h
    ld [hl], e

jr_01f_738b:
    inc b
    inc b
    ld [hl], h
    inc b
    push bc
    ld [hl], h
    nop
    sbc [hl]
    ld [hl], l
    db $10
    cp c
    halt
    inc c
    inc b

jr_01f_7399:
    ld de, $0474
    jp hl


    ld [hl], h
    nop
    cp c
    halt
    inc c
    jp nc, Jump_000_1075

    inc b
    jp hl


    halt
    db $10

jr_01f_73a9:
    or [hl]
    ld [hl], a
    nop
    push hl
    halt
    inc b
    ld e, l
    ld a, b
    inc c
    inc b
    or d
    ld a, b
    inc b
    or [hl]
    ld a, b
    db $10
    add h

jr_01f_73ba:
    ld a, b
    inc c
    db $ec
    ld a, b
    nop
    inc b
    rst $38
    ld a, b
    inc b
    sub [hl]
    ld a, c
    nop
    add h
    ld a, d
    db $10
    ld e, $7b
    inc c
    inc b
    ld d, [hl]
    ld a, e
    nop
    add c
    ld a, e
    inc b
    sbc h
    ld a, e
    db $10
    ld d, b
    ld a, l
    inc c
    inc b
    cp l
    ld a, e
    db $10
    di
    ld a, e
    inc b
    ld l, l
    ld a, h
    nop
    add $7c
    inc c
    ld [bc], a
    ld bc, $007d
    rst $38
    ld a, h
    inc b
    inc b
    ld [de], a
    ld a, l
    nop
    ld a, [hl+]
    ld a, l
    inc b
    dec a
    ld a, l
    db $10
    ld h, a
    ld a, l
    inc c

    db $03, $ab, $7d, $00, $d4, $7d, $04, $84, $7d, $0c

    ldh a, [c]
    db $10
    cp $03
    db $f4
    rst $38
    ldh a, [rTAC]
    or $29
    ld hl, sp+$42
    ld [hl], h
    ldh a, [c]
    db $10
    cp $03
    push af
    dec hl
    db $f4
    sbc $f6
    inc h
    ldh a, [rTMA]
    ld a, [$74ab]
    ld a, [$7490]
    ld a, [$74ab]
    ld a, [$7490]
    db $f4
    rst $38
    ldh a, [$ff0e]
    or $29
    db $fc
    ld [bc], a
    push af
    ld e, $fa
    ld a, b
    ld [hl], h
    ld a, [$7484]
    db $fd
    push af
    dec de
    ld a, [$7458]
    ld a, [$7464]
    db $fc
    ld [bc], a
    push af
    jr nz, @-$04

    ld a, b
    ld [hl], h
    ld a, [$7484]
    db $fd
    push af
    dec e
    ld a, [$7458]
    ld a, [$7464]
    ld hl, sp+$11
    ld [hl], h
    db $fc
    add hl, bc
    ld [de], a
    pop af
    db $fc
    ld c, $19
    ld [$04f1], sp
    db $fd
    ei
    db $fc
    ld [bc], a
    rla
    pop af
    db $fc
    dec c
    ld e, $08
    pop af
    inc b
    db $fd
    rla
    pop af
    db $fc
    dec c
    rlca
    pop af
    inc b
    rla
    ei
    db $fc
    inc bc
    ld [de], a
    pop af
    db $fc
    ld c, $19
    rlca
    pop af
    inc b
    db $fd
    ei
    db $fc
    inc bc
    ld de, $fcf1
    inc c
    add hl, de
    rlca
    pop af
    inc b
    db $fd
    ei
    db $fc
    inc bc
    rra
    pop af
    ld [bc], a
    add hl, de
    pop af
    cp $02
    pop af
    ld [bc], a
    add hl, de
    pop af
    cp $fd
    db $fc
    ld [bc], a
    ld e, $18

jr_01f_74a3:
    ld [bc], a
    jr jr_01f_74a3

    nop
    dec de
    inc b
    nop
    ei
    db $fc
    inc bc
    db $fc
    inc bc
    ld [bc], a
    pop af
    ld [bc], a
    dec de
    pop af
    cp $04
    pop af
    ld [bc], a
    dec de
    pop af
    cp $fd
    db $fc
    inc bc
    nop
    add hl, de
    ld [bc], a
    add hl, de
    db $fd
    db $fd
    ei
    ldh a, [c]
    db $10
    cp $03
    or $17
    db $f4
    or e
    ldh a, [$ff0c]
    db $fc
    ld [bc], a
    push af
    inc d
    ld a, [$758d]
    push af
    inc de
    ld a, [$758d]
    db $fd
    push af
    ld de, $03fc
    ld a, [$758d]
    db $fd
    push af
    ld d, $fa
    adc l
    ld [hl], l
    ldh a, [c]
    db $10

jr_01f_74eb:
    cp $03
    or $17
    db $f4
    or e
    db $fc
    ld [bc], a
    db $fc
    inc bc
    push af

jr_01f_74f6:
    inc de
    ld a, [$758d]
    push af
    ld [de], a
    ld a, [$758d]
    db $fd
    push af
    inc de
    ld a, [$756b]
    ld a, [$757c]
    db $fd
    or $14
    ldh a, [$ff0d]
    db $f4
    ld b, [hl]
    push af
    ld a, [hl+]
    ld a, [$7526]
    ld a, [$7564]
    or $12
    ldh a, [$ff0b]
    push af
    inc l
    ld a, [$7526]
    ld a, [$7564]
    ld hl, sp-$17
    ld [hl], h
    db $f4
    ld e, d
    sbc $04
    reti


    inc b
    jp nz, $c204

    inc b
    db $f4
    ld b, d
    add hl, hl
    daa
    dec h
    inc h
    ld [hl+], a
    jr nz, jr_01f_7572

    jr nz, jr_01f_74eb

    jr nc, jr_01f_755f

    inc h
    dec h
    daa
    ld l, $2c
    dec b
    add hl, de
    jr nz, jr_01f_74f6

    pop de
    ld b, $d6
    dec b
    reti


    dec b
    db $db
    ld b, $c2
    dec b
    push bc
    dec b
    add hl, hl
    ld [hl+], a
    inc l
    dec h
    ld l, $30
    add hl, hl
    jr nc, jr_01f_759a

    jr nc, jr_01f_758d

    dec de
    ld [bc], a

jr_01f_755f:
    add hl, hl
    dec h
    ld [hl+], a
    dec sp
    ei
    inc h
    inc [hl]
    inc l
    inc d
    inc d
    ld [hl], b
    ei
    ldh a, [$ff0b]
    rlca
    ld [bc], a
    db $10
    dec de
    db $10

jr_01f_7572:
    ld d, $1b
    rlca
    db $10
    pop af
    db $fc
    dec de
    rlca
    db $10
    ei
    ldh a, [$ff0b]
    nop
    inc d
    db $10
    inc d
    db $10
    dec de
    ld [bc], a
    inc b
    db $10
    pop af
    db $fc
    inc c
    nop
    inc d
    ei

jr_01f_758d:
    ldh a, [$ff0b]
    ld a, [bc]
    ld e, $10
    ld e, $10
    ld [de], a
    ld e, $0a
    db $10
    pop af
    db $fc

jr_01f_759a:
    ld e, $0a
    db $10
    ei
    ldh a, [c]
    db $10
    cp $03
    push af
    dec hl
    or $29
    db $f4
    add c
    ldh a, [$ff0d]
    db $fc
    ld [bc], a
    db $fc
    inc bc
    rrca
    ld a, [bc]
    ld [$fd1f], sp
    db $fc
    inc bc
    dec c
    ld [$1e06], sp
    db $fd
    db $fd
    db $fc
    add hl, bc
    rrca
    ld a, [bc]
    ld [$fd1f], sp
    db $fc
    ld [bc], a
    dec c
    ld [$1e06], sp
    db $fd
    dec c
    db $f4
    rst $38
    rlc h
    ret z

    inc b
    dec b
    db $10
    ldh a, [c]
    db $10
    cp $03
    push af
    scf
    or $12
    ldh a, [$ff0d]
    db $f4
    nop
    jp nz, $fc18

    inc c
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    ldh a, [$ff0c]
    db $f4
    jp hl


    ld a, [$76a5]
    dec b
    ld h, b
    ld [hl], b
    ld h, l
    ld e, $f1
    ld a, [$f11e]
    ld b, $fa
    and l
    halt
    nop
    db $f4
    nop
    or $92
    ldh a, [rDIV]
    rlc h
    ldh a, [$ff0d]
    call z, $fc2c
    dec bc
    pop af
    rst $38
    di
    ld bc, $d0fd
    dec b
    ldh a, [$ff0d]
    db $f4
    jp hl


    or $12
    ldh a, [$ff0c]
    ld a, [$7683]
    ld a, [$769a]
    ldh a, [$ff0c]
    ld h, d
    pop af
    ei
    reti


    inc b
    db $db
    inc b
    db $dd
    inc b
    sbc $04
    pop af
    dec b
    db $f4
    jp hl


    ld a, [$76a5]
    dec b
    add hl, de
    or $00
    db $f4
    ld d, b
    ldh a, [$ff0a]
    add hl, de
    inc d
    dec e
    ldh a, [$ff0d]
    or $12
    db $f4
    jp hl


    jr nz, jr_01f_7646

jr_01f_7646:
    db $10
    ld h, d
    ld a, $fa
    and l
    halt
    db $f4
    sbc e
    ret nz

    rlca
    db $f4
    nop
    pop af
    db $fc
    ret


    ld [bc], a
    jp z, $cb02

    ld [bc], a
    pop af
    inc b
    call z, $fc26
    dec bc
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    ldh a, [$ff0c]
    ld a, [$7683]
    pop af
    db $fc
    dec sp
    dec de
    dec de
    pop af
    inc b
    ld h, b
    inc d
    inc d
    ret nc

    cpl
    or $02
    db $f4
    ret z

    push af
    ld [hl-], a
    db $fc
    jr nc, jr_01f_76ef

    db $fd
    ld hl, sp-$2e
    ld [hl], l
    ld l, c
    ld a, $0a
    inc c
    add hl, hl
    daa
    daa
    dec h
    ld a, l
    db $f4
    nop
    ld c, c
    pop af
    db $fc
    jp z, $c904

    inc b
    pop af
    inc b
    rst $00
    ld b, b
    ei
    ld h, d
    rst $00
    ld b, d
    db $fc
    ld a, [bc]
    pop af
    rst $38
    di
    inc bc
    db $fd
    ei
    inc b
    dec b
    daa
    dec b
    call nz, $f105
    ei
    db $f4
    nop
    call nz, $f104
    dec b
    jp nz, $f40f

    jp hl


    inc b
    ei
    ldh a, [c]
    db $10
    cp $03
    db $f4
    adc l
    db $fc
    dec b
    ldh a, [$ff09]
    or $1b
    ld c, $f0
    rlca
    or $10
    ld [bc], a
    ldh a, [$ff0b]
    ld bc, $09f0
    ld bc, $f0fd
    add hl, bc
    or $1b
    ld [bc], a
    or $10
    db $f4
    call c, $f401
    rst $38
    inc b
    db $f4
    ld a, b
    ld [bc], a
    ld hl, sp-$47
    halt
    ldh a, [c]
    rrca
    ret nc

    ld bc, $0ff2

jr_01f_76eb:
    cp $03
    ldh a, [rIF]

jr_01f_76ef:
    or $00
    db $f4
    and [hl]
    push af
    rra
    jr jr_01f_76eb

    rst $00
    db $d3
    inc bc
    db $d3
    inc bc
    db $f4
    sbc e
    inc de
    ld [de], a
    inc de
    inc de
    rst $18
    inc b
    ret c

    inc b
    db $d3
    inc b
    ldh a, [c]
    rrca
    ldh a, [$ff0c]
    cp $03
    or $00
    db $fc
    ld [bc], a
    push af
    rra
    db $fc
    ld [bc], a
    ld a, [$777e]
    ld d, b
    db $fd
    push af
    jr nz, @-$04

    ld a, [hl]
    ld [hl], a
    ld d, b
    ld a, [$777e]
    db $f4
    add e
    dec e
    db $f4
    cp h
    pop de
    inc b
    pop de
    inc b
    pop de
    inc b
    db $fd
    ldh a, [$ff0b]
    db $f4
    and a
    push af
    inc hl
    ld a, [$7798]
    ld a, [de]
    push af
    ld hl, $98fa
    ld [hl], a
    inc e
    push af
    inc hl
    ld a, [$7798]
    ld a, [de]
    push af
    ld hl, $98fa
    ld [hl], a
    nop
    push af
    rra
    db $f4
    ld a, d
    db $fc
    inc bc
    ld a, [$777e]
    db $f4
    ld a, e
    jr jr_01f_776a

    inc de
    db $fd
    ld sp, $def4
    dec e
    ld de, $03fc
    db $f4
    rst $38
    dec de
    pop af
    db $fc
    db $f4
    adc d
    inc e

jr_01f_776a:
    dec e
    pop af
    inc b
    db $fd
    db $f4
    di
    call nz, $d303
    inc bc
    db $fc
    ld [bc], a
    rst $18
    inc bc
    ret c

    inc bc
    db $fd
    ld hl, sp+$08
    ld [hl], a
    db $f4

jr_01f_777f:
    sbc $11
    db $f4
    sbc e
    ld [de], a
    inc de
    inc d
    dec e
    ld d, $f4
    xor [hl]
    pop af
    db $fc
    jr jr_01f_777f

    inc b
    ld de, $1310
    ld [de], a
    ld de, $bcf4
    dec e
    ei
    dec de
    db $fc
    dec b
    inc d
    pop af
    rst $38
    db $fd
    ldh a, [$ff0a]
    dec de
    inc d
    db $f4
    db $f4
    call nc, $d403
    inc bc
    db $f4
    and a
    db $fc
    ld [bc], a
    dec de
    pop af
    db $fc
    inc d
    pop af
    inc b

jr_01f_77b3:
    inc d
    db $fd
    ei
    ldh a, [c]
    rrca
    cp $03
    ret nc

    jr nc, jr_01f_77b3

    rla
    db $f4
    ld a, b
    ldh a, [$ff0d]
    push af
    inc e
    db $fc
    inc b
    ld a, [$7854]
    db $fd
    db $fc
    inc b
    ld a, [$784b]
    db $fd
    push af
    inc e
    db $fc
    inc b
    ld a, [$7854]
    db $fd
    db $fc
    inc bc
    ld a, [$784b]
    db $fd
    dec b
    ld e, $05
    inc b
    inc c
    nop
    rlca
    inc c
    ldh a, [$ff09]
    or $00
    db $fc
    ld [bc], a
    push af
    jr z, @-$04

    inc sp

jr_01f_77f0:
    ld a, b
    push af
    ld h, $fa
    inc sp
    ld a, b
    db $fd
    push af
    jr z, jr_01f_77f0

    add hl, hl
    db $f4
    ld a, b
    db $fc
    ld b, $fa
    ld d, h
    ld a, b
    db $fd
    add hl, de
    ld [de], a
    dec de
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec b
    push af
    inc [hl]
    ldh a, [rTAC]
    db $fc
    ld [bc], a
    db $f4
    rst $38
    ld e, $f4
    and [hl]
    rra
    nop
    push af
    ld b, b
    db $fd
    db $f4
    nop
    push af
    ld b, b

jr_01f_781e:
    ld a, [$782e]
    push af
    jr z, jr_01f_781e

    ld l, $78
    push af
    db $10
    ld a, [$782e]
    ld hl, sp-$44
    ld [hl], a
    rst $00
    inc bc
    db $db
    inc bc
    ei
    db $f4
    add d
    rlca
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d02
    ld e, $0b
    rlca
    ld c, $02
    dec b
    ld b, $0c
    db $f4
    rst $00
    jp nz, $c203

    inc bc
    ei
    dec bc
    dec b
    dec bc
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ei
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc bc
    add hl, bc
    inc bc
    add hl, bc
    inc bc
    ei
    ldh a, [c]
    rrca
    cp $03
    ldh a, [rIF]
    db $f4
    adc l
    or $10
    dec bc
    db $f4
    sbc $c4
    inc bc
    call nz, $fc03
    inc bc
    ldh a, [rIF]
    add $03
    ldh a, [rP1]
    rst $08
    inc bc
    db $fd
    db $fc
    inc bc
    ldh a, [rIF]
    ret


    inc bc
    ldh a, [rTMA]
    pop bc
    inc bc
    db $fd
    ldh a, [c]
    rrca
    cp $03
    db $f4
    adc l
    or $10
    ldh a, [$ff0d]
    db $fc
    rrca
    dec bc
    ld bc, $0102
    daa
    ld bc, $fd01
    inc c
    rrca
    db $f4
    sbc $c2
    inc bc
    jp nz, $f403

    adc l
    ld bc, $def4
    inc b
    db $f4
    adc l
    inc h
    db $f4
    rst $00
    jp nz, $c203

    inc bc
    ld hl, sp-$7c
    ld a, b
    ldh a, [c]
    rrca
    ret nc

    ld bc, $0ff2
    cp $03
    ldh a, [$ff0b]
    or $00
    push af
    add hl, de
    ld a, [$78d5]
    push af
    dec de
    ld a, [$78d5]
    push af
    inc e
    ld a, [$78d5]
    push af
    dec de
    ld a, [$78d5]
    ld hl, sp-$4a
    ld a, b
    db $fc
    inc b
    db $f4
    rst $38
    dec e
    db $f4
    add d
    rla
    rla
    db $fd
    db $f4
    rst $38
    dec e
    db $f4
    adc d
    rla
    db $f4
    and [hl]
    inc bc
    db $f4
    add h
    rla
    ei
    ldh a, [c]
    rrca
    cp $03
    db $f4
    ld h, h
    or $29
    push af
    inc sp
    ldh a, [rTAC]
    ld [bc], a
    inc bc
    nop
    ld bc, $ecf8
    ld a, b
    ldh a, [c]
    ld c, $fe
    inc bc
    db $f4
    nop
    or $05
    ldh a, [rIF]
    push af
    daa
    rlc h
    db $fc
    ld c, $f1
    rst $38
    di
    ld [bc], a
    db $fd
    or $17
    push af
    rla
    ldh a, [rIF]
    db $fc
    ld [$7dfa], sp
    ld a, c
    db $fd
    push af
    dec d
    db $fc
    ld [bc], a
    ld a, [$797d]
    db $fd
    push af
    rla
    ld a, [$7973]
    push af
    inc e
    ld a, [$7973]
    push af
    inc d
    ld a, [$7973]
    push af
    add hl, de
    ld a, [$7973]
    push af
    ld [de], a
    ld a, [$7973]
    push af
    rla
    ld a, [$7973]
    db $f4
    call nc, $f41d
    add l
    ld de, $90f4
    ld [de], a
    db $f4
    jp hl


    inc sp
    or $21
    db $f4
    cp h
    push af
    ld b, h
    ldh a, [rTAC]
    jp nz, $f103

    cp $dd
    inc bc
    pop af
    cp $d6
    inc bc
    ret nc

    inc c
    ldh a, [$ff0c]
    push af
    rla
    ld a, [$797d]
    ld a, [$797d]
    ld hl, sp+$14
    ld a, c
    db $fc
    ld [bc], a
    db $f4
    rst $00
    inc d
    db $f4
    ld h, e
    nop
    db $fd
    ei
    db $f4
    sbc $18
    db $f4
    ld l, a
    inc b
    db $f4
    rst $00
    inc de
    db $f4
    ld h, e
    rra
    db $f4
    ret z

    ld d, $f4
    ld h, e
    ld [bc], a
    db $f4
    rst $00
    inc de
    db $f4
    ld h, e
    rra
    ei
    ldh a, [c]
    ld c, $fe
    inc bc
    db $f4
    nop
    or $05
    ret nc

    ld [bc], a
    push af
    daa

jr_01f_79a2:
    ldh a, [$ff0e]
    rlc h
    db $fc
    dec c
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    db $f4
    ld h, e
    push af
    jr c, jr_01f_79a2

    add hl, bc
    or $21
    db $fc
    ld [bc], a
    ld c, $f1
    db $fc
    ld [bc], a
    pop af
    inc b
    db $fc
    ld [bc], a
    ld [bc], a
    dec bc
    pop af
    db $fc
    dec bc
    pop af
    inc b
    db $fd
    db $fd
    ld a, [$7a69]
    or $21
    push af
    ld b, h
    db $f4
    ld h, e
    dec e
    ld [bc], a
    ld d, $f1
    db $fc
    ld d, $f1
    cp $16
    pop af
    ld b, $02
    pop af
    db $fc
    ld [bc], a
    pop af
    inc b
    ld d, $02
    pop af
    db $fc
    ld [bc], a
    ld a, [$7a69]
    or $21
    push af
    ld b, h
    db $f4
    ld h, e
    dec de
    nop
    inc d
    or $00
    push af
    jr c, @+$1f

    inc bc
    rlca
    inc c
    pop af
    db $fc
    inc c
    inc c
    db $10
    or $14
    ldh a, [$ff0a]
    db $10
    db $f4
    nop
    push af
    add hl, hl
    jp $c402


    dec b
    db $f4
    cp h
    inc bc
    ld bc, $f41f
    db $d3
    ld e, $f4
    cp h
    rra
    rla
    db $f4
    jp hl


    ld bc, $bcf4
    nop
    ld e, $17
    inc e
    ld e, $f4
    rst $38
    nop
    ret nz

    inc b
    ret nz

    inc bc
    or $0f
    db $f4
    nop
    sbc $02
    rst $18
    dec b
    db $f4
    cp h
    ld e, $1c
    dec d
    ld a, [de]
    inc e
    db $f4
    sbc $d7
    inc b
    reti


    inc bc
    jp c, $db04

    inc bc
    db $f4
    db $f4
    inc e
    db $f4
    sbc e
    db $10
    inc e
    db $f4
    nop
    db $dd
    nop
    db $fc
    dec b
    pop af
    rst $38
    di
    rlca
    db $fd
    or $21
    ldh a, [$ff08]
    db $f4
    ld h, e
    push af
    ld a, [hl-]
    db $fc
    ld [bc], a
    inc c
    jr nc, jr_01f_7a6b

    jr nc, jr_01f_7a6d

    db $10
    db $fd
    ld hl, sp-$53
    ld a, c
    or $18

jr_01f_7a6b:
    db $f4
    sbc e

jr_01f_7a6d:
    ldh a, [$ff0b]
    push af
    jr nz, jr_01f_7a74

    ld c, $2e

jr_01f_7a74:
    ld c, $0e
    db $10
    ld c, $0e
    inc c
    db $10
    dec bc
    db $10
    add hl, bc
    db $10

jr_01f_7a7f:
    rlca
    or $12
    and l
    ei
    ldh a, [c]
    ld c, $d0
    jr nz, jr_01f_7a7f

    ld [bc], a
    ldh a, [rTIMA]
    db $f4
    ld h, e
    push af
    inc l
    db $fc
    ld [bc], a
    dec bc
    rlca
    ld [bc], a
    ld c, $07
    ld [bc], a
    ld c, $02
    db $fd
    or $18
    ldh a, [$ff0b]
    db $f4
    sbc e
    push af
    inc sp
    ld a, [$7b00]
    ld a, [$7b10]
    ld a, [$7b00]
    db $fc
    inc b
    ld d, $19
    ld e, $fd
    dec b
    db $f4
    push af
    call nz, $c503
    inc bc
    ret


    ld [bc], a
    jp z, $fc04

    inc bc
    jp z, $f103

    cp $fd
    ldh a, [$ff0a]
    db $f4
    ld l, a
    or $02
    push af
    cpl
    ld a, [$7afa]
    push af
    inc l
    ld a, [$7afa]
    push af
    ld a, [hl+]
    db $fc
    ld [bc], a
    inc c
    nop
    db $fd
    inc c
    dec b
    nop
    add hl, de
    ld c, $02
    inc bc
    inc h
    ld d, b
    or $02
    db $f4
    ld h, e
    push af
    inc l
    ldh a, [rTMA]
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    dec bc
    rlca
    ld [bc], a
    db $fd
    ld c, $10
    db $fd
    ld hl, sp-$78
    ld a, d
    db $fc
    inc b
    inc c
    nop
    db $fd
    ei
    jr jr_01f_7b06

    inc h
    inc b
    inc b
    db $10

jr_01f_7b06:
    inc b
    inc b
    ld [bc], a
    stop
    db $10
    ld e, $10
    dec e
    ei
    db $fc
    dec b
    db $f4
    push bc
    dec de
    db $f4
    adc b
    ld d, $14
    db $fd
    db $f4
    sbc e
    db $10
    ei
    ldh a, [c]
    ld c, $cf

jr_01f_7b21:
    jr nz, jr_01f_7b21

    inc bc
    db $fc
    ld a, [de]
    ld a, [$7b41]
    db $fd
    ldh a, [$ff08]
    inc b
    db $fc
    inc b
    ld [bc], a
    pop af
    cp $fd
    ldh a, [$ff08]
    inc b
    inc b
    inc b
    db $fc
    inc b
    ld a, [$7b41]
    db $fd
    ld hl, sp+$22
    ld a, e
    or $10
    ldh a, [$ff0a]
    db $f4
    sbc $02
    db $f4
    ld c, [hl]
    ldh a, [rTAC]
    inc bc
    ldh a, [$ff0a]
    db $f4
    ld e, d
    ld [$07f0], sp
    ld bc, $f2fb
    db $10
    cp $03
    push af
    daa
    or $19
    ldh a, [rTIMA]
    db $f4
    nop
    db $db
    inc bc
    db $dd
    inc bc
    rst $18
    inc bc
    db $f4
    and b
    ldh a, [$ff09]
    nop

jr_01f_7b6d:
    db $f4
    ld [$04db], a
    db $db
    inc b
    db $f4
    sbc e
    nop
    push bc
    inc c
    call nz, $c20c
    dec c
    db $f4
    nop
    rst $00
    ld d, b
    rst $38
    ldh a, [c]
    db $10
    cp $03
    db $f4
    and b
    push af
    dec de
    ldh a, [rIF]
    or $19
    ret nc

    add hl, bc
    nop
    jr nc, jr_01f_7b6d

    inc c
    db $db
    inc c
    db $db
    dec c
    db $f4
    nop
    call nc, $ff50
    ldh a, [c]
    db $10
    cp $03
    ldh a, [rTIMA]
    push af
    daa
    or $01
    db $f4
    sub [hl]
    ret nc

    add hl, bc

jr_01f_7baa:
    jr jr_01f_7bdc

    db $f4
    adc h
    db $dd
    inc c
    db $db
    inc c
    reti


    dec c
    db $f4
    nop
    ret c

    jr z, jr_01f_7baa

    rst $38
    di
    jr z, @+$01

    ldh a, [c]
    db $10
    ret nc

    ld bc, $03fe
    db $f4
    ld h, h
    or $01
    ldh a, [$ff08]
    push af
    dec h
    db $fc
    inc b
    db $fc
    inc b
    ld bc, $050c
    ld a, [bc]
    db $fd
    db $fc
    inc b
    nop
    ld a, [bc]
    inc bc
    ld [$fcfd], sp

jr_01f_7bdc:
    inc b
    rra
    ld [$0601], sp
    db $fd
    db $fc
    inc b
    ld e, $08
    ld bc, $fd06

jr_01f_7be9:
    db $f4
    add l
    ldh a, [$ff08]
    db $fd
    push af
    jr z, jr_01f_7be9

    bit 7, e
    ldh a, [c]
    db $10
    ret nc

    ld bc, $03fe
    or $07
    db $fc
    inc b
    push af
    add hl, de

jr_01f_7bff:
    ld a, [$7c54]
    push af
    jr jr_01f_7bff

    ld d, h
    ld a, h
    push af
    rla
    ld a, [$7c54]
    push af
    ld d, $fa
    ld d, h
    ld a, h
    db $fd
    push af
    inc e
    ld a, [$7c29]
    push af
    dec de
    ld a, [$7c29]
    push af
    ld a, [de]
    ld a, [$7c29]
    push af
    add hl, de
    ld a, [$7c29]
    ld hl, sp+$12
    ld a, h
    db $f4
    rst $38
    ldh a, [rIF]
    dec d
    db $f4
    add l
    ld bc, $f015
    ld a, [bc]
    dec d
    ldh a, [rTAC]
    ld [$010d], sp
    dec d
    db $f4
    ld h, h
    dec d
    db $f4
    sub [hl]
    dec d
    ldh a, [$ff0d]
    ld bc, $fdf1
    ld bc, $0df0
    inc e
    pop af
    cp $1c
    ldh a, [$ff0e]
    dec d
    ldh a, [$ff0a]
    dec d
    ei
    db $f4
    rst $38
    ldh a, [$ff09]
    dec d
    db $f4
    add l
    ld bc, $d015
    ld b, b
    dec d
    pop af
    cp $01
    pop af
    cp $01
    pop af
    inc b
    dec d
    pop af
    db $fc
    dec d
    ei
    ldh a, [c]
    db $10
    cp $03
    db $f4
    rst $38
    or $24
    ldh a, [rTAC]
    db $fc

jr_01f_7c78:
    ld [$7fd0], sp
    db $fd
    ret nc

    ld [$27f5], sp
    ld a, [$7cba]
    rst $18
    ld b, b
    ret c

    ld b, b
    ld a, [$7cba]
    db $f4
    nop
    or $a4
    jp z, $cb02

    dec b
    db $fc
    ld b, $f1
    rst $38
    di
    inc d
    db $fd
    or $24
    db $f4
    rst $38
    ldh a, [rTAC]
    or $0e
    push af
    ld e, $fa
    cp d
    ld a, h
    call nz, $cb40
    jr c, jr_01f_7c78

    inc b
    adc $04
    db $f4
    nop
    rst $08
    ld [$06fc], sp
    pop af
    rst $38
    di
    dec de
    db $fd
    rst $38
    jp $6540


    ld h, [hl]
    pop bc
    ld b, b
    jp c, $c140

    ld h, b
    ld h, e
    ei
    ldh a, [c]
    db $10
    rst $08
    ld bc, $03fe
    db $fc
    inc b
    rst $08
    add b
    db $fd
    db $f4
    ld h, h
    or $10
    ldh a, [$ff09]
    ld [bc], a
    db $fc
    inc bc
    inc bc
    pop af
    cp $fd
    ldh a, [$ff0b]
    db $f4
    sub [hl]
    inc bc
    ldh a, [$ff09]
    db $f4
    ld h, h
    db $fc
    inc bc
    dec b
    pop af
    cp $fd
    pop af
    ld [$03fc], sp
    ld bc, $fef1
    db $fd
    pop af
    rlca
    inc bc
    inc b
    ld bc, $0102
    ld hl, sp-$2f
    ld a, h
    ret nc

    ld [bc], a
    ldh a, [c]
    dec bc
    cp $03
    db $f4
    nop
    or $05
    ldh a, [rIF]
    push af
    daa
    sbc a
    ldh a, [rDIV]
    sbc a
    rst $38
    ldh a, [c]
    db $10
    cp $03
    or $19
    ldh a, [$ff09]
    push af
    daa
    db $f4
    or h
    inc bc
    jp $c304


    inc b
    db $f4
    and b
    inc bc
    db $f4
    nop
    and h
    rst $38
    ldh a, [c]
    db $10
    cp $03
    or $19
    ldh a, [rIF]
    push af
    ld d, $f4
    sub [hl]
    nop
    inc d
    nop
    db $f4
    nop
    cp c
    rst $38
    ldh a, [c]
    db $10
    cp $03
    ldh a, [rTIMA]
    or $01
    push af
    dec de
    db $f4
    sub [hl]
    ld b, $10
    ld b, $f4
    rst $38
    and a
    rst $38
    ldh a, [c]
    db $10
    cp $03
    ldh a, [$ff0c]
    or $10
    rst $08
    add hl, bc
    db $f4
    sbc $02
    cpl
    jp nz, $cc0c

    inc c
    call $f80d
    ld [hl], a
    ld a, l
    ldh a, [c]
    db $10
    cp $03
    ldh a, [$ff0c]
    or $10
    db $f4
    sbc $02
    jp nz, $c104

    inc b
    inc bc
    db $fc
    inc bc
    jp $f103


    rst $38
    db $fd
    db $fc
    ld a, [bc]
    jp nz, $fd03

    rst $38

    db $f2, $0e, $fe, $03, $f6, $10, $f4, $50, $fc, $03, $fa, $9e, $7d, $f1, $fc, $0f
    db $02, $fd

    ld a, [$7d9e]
    ld bc, $f802
    add h
    ld a, l

    db $f0, $0c, $03, $01, $02, $0f, $f4, $ff, $02, $f4, $50, $01, $fb, $f2, $0e, $fe
    db $03, $f4, $6c, $f6, $21, $f0, $0a, $f5, $37, $fc, $03, $fa, $cd, $7d, $0c, $14
    db $fd

    ld a, [$7dcd]
    db $f4
    add h
    adc $05
    rst $00
    dec b
    rlc h
    ld hl, sp-$55
    ld a, l

    db $0c, $00, $14, $0c, $04, $14, $fb, $f2, $0e, $fe, $03, $f0, $0c, $f6, $19, $f5
    db $16, $fa, $fb, $7d, $1d, $10, $f5, $18, $fa, $fb, $7d

    dec e
    db $10
    push af
    ld a, [de]
    ld a, [$7dfb]
    dec e
    db $10
    push af
    jr @-$04

    ei
    ld a, l
    ld d, $16
    ld hl, sp-$2c
    ld a, l

    db $f4, $c3, $1d, $f4, $3c, $f1, $fb, $3d, $f1, $05, $29, $f1, $fb, $f4, $9b, $1d
    db $f1, $05, $fb

    sub l
    ld b, d
    and d
    ld b, d

    db $af, $42, $b9, $42, $c3, $42, $d0, $42, $dd, $42, $ea, $42, $f7, $42, $b8, $54
    db $c5, $54, $cf, $54, $dc, $54

    jp hl


    ld d, h
    or $54
    inc bc
    ld d, l
    db $10
    ld d, l
    dec e
    ld d, l

    db $2a, $55, $e3, $62, $f0, $62, $fd, $62, $04, $63, $11, $63

    ld e, $63
    dec hl
    ld h, e

    db $38, $63

    ld b, l
    ld h, e

    db $52, $63

    ld e, a
    ld h, e

    db $69, $63, $76, $63

    add e
    ld h, e
    sub b
    ld h, e
    sbc l
    ld h, e
    and a
    ld h, e
    or h
    ld h, e
    adc e
    ld [hl], e
    sbc b
    ld [hl], e
    and l
    ld [hl], e
    or d
    ld [hl], e
    cp a
    ld [hl], e
    call z, $d973
    ld [hl], e
    and $73
    db $ed
    ld [hl], e

    db $fa, $73

    nop
    nop
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
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0040], sp
    nop
    nop
    nop
    nop
    jr nz, jr_01f_7f00

jr_01f_7f00:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
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
    ld b, b
    nop
    jr nz, jr_01f_7ff8

jr_01f_7ff8:
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
