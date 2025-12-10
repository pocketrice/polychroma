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