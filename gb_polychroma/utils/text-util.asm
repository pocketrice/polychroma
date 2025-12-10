SECTION "Text", ROM0

textFontTileData: INCBIN "generated/bubblegum_round.2bpp"
textFontTileDataEnd:

LoadFontIntoVRAM::
	; copy tile data...
	ld de, textFontTileData
	ld hl, $9000
	ld bc, textFontTileDataEnd - textFontTileData
	jp CopyDEintoMemoryAtHL

; tile to start = [de], address of text = [hl]
DrawTextTilesLoop::

	; check for END_OF_STR char, 255
	ld a, [hl]
	cp 255
	ret z

	; write current char (hl) to address on tilemap (de)
	ld a, [hl]
	ld [de], a

	inc hl
	inc de

	; move to next char/bg tile
	jp DrawTextTilesLoop
