SECTION "MemoryUtilsSection", ROM0

CopyDEintoMemoryAtHL::
	ld a, [de]
	ld [hli], a
	inc de
	dec bc
	ld a, b
	or c
	jp nz, CopyDEintoMemoryAtHL
	ret

CopyDEintoMemoryAtHL_With52Offset::
	ld a, [de]
	add a, 48
	ld [hli], a
	inc de
	dec bc
	ld a, b
	or c
	jp nz, CopyDEintoMemoryAtHL_With52Offset
	ret
