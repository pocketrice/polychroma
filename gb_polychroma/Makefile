PROJECTNAME = polychroma
SRCDIR = src
UTILDIR = utils
LIBDIR = libs
DSTDIR = build
GENDIR = generated
OBJDIR = obj
RESDIR = resources
ASMDIR = src
GB_CART = $(DSTDIR)/$(PROJECTNAME).gb
GB_SYM = $(DSTDIR)/$(PROJECTNAME).sym

# tools
RGBDS ?=
ASM := $(RGBDS)rgbasm
GFX := $(RGBDS)rgbgfx
LINK := $(RGBDS)rgblink
FIX := $(RGBDS)rgbfix

# tool flags
FIXFLAGS := -v -p 0xFF

$(GB_CART): $(OBJDIR)/main.o $(OBJDIR)/polytalk.o $(OBJDIR)/title.o $(OBJDIR)/input.o $(OBJDIR)/background-util.o $(OBJDIR)/input-util.o $(OBJDIR)/memory-util.o $(OBJDIR)/text-util.o $(OBJDIR)/vblank-util.o
	rgblink -o $(GB_CART) -n $(GB_SYM) $(OBJDIR)/main.o $(OBJDIR)/polytalk.o $(OBJDIR)/title.o $(OBJDIR)/input.o $(OBJDIR)/background-util.o $(OBJDIR)/input-util.o $(OBJDIR)/memory-util.o $(OBJDIR)/text-util.o $(OBJDIR)/vblank-util.o
	rgbfix -c -p 0xFF -v $(GB_CART)

$(OBJDIR)/main.o: $(SRCDIR)/main.asm
	rgbasm -o $(OBJDIR)/main.o $(SRCDIR)/main.asm

$(OBJDIR)/polytalk.o: $(SRCDIR)/polytalk.asm
	rgbasm -o $(OBJDIR)/polytalk.o $(SRCDIR)/polytalk.asm

$(OBJDIR)/title.o: $(SRCDIR)/title.asm
	rgbasm -o $(OBJDIR)/title.o $(SRCDIR)/title.asm

$(OBJDIR)/input.o: $(LIBDIR)/input.asm
	rgbasm -o $(OBJDIR)/input.o $(LIBDIR)/input.asm 

$(OBJDIR)/input-util.o: $(UTILDIR)/input-util.asm
	rgbasm -o $(OBJDIR)/input-util.o $(UTILDIR)/input-util.asm

$(OBJDIR)/background-util.o: $(UTILDIR)/background-util.asm
	rgbasm -o $(OBJDIR)/background-util.o $(UTILDIR)/background-util.asm

$(OBJDIR)/memory-util.o: $(UTILDIR)/memory-util.asm
	rgbasm -o $(OBJDIR)/memory-util.o $(UTILDIR)/memory-util.asm

$(OBJDIR)/text-util.o: $(UTILDIR)/text-util.asm
	rgbasm -o $(OBJDIR)/text-util.o $(UTILDIR)/text-util.asm

$(OBJDIR)/vblank-util.o: $(UTILDIR)/vblank-util.asm
	rgbasm -o $(OBJDIR)/vblank-util.o $(UTILDIR)/vblank-util.asm

clean: 
	rm -rfv $(OBJDIR)/*

.PHONY: clean all
