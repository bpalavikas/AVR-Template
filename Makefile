# Get project name
WORKSPACE = $(notdir $(CURDIR))

TARGET_DIR = build/bin
OBJ_DIR = build/obj
SRC = $(wildcard core/src/*.c)
UTIL = $(wildcard util/src/*.c)
BUILD = $(patsubst core/src/%.c, $(OBJ_DIR)/%.o, $(SRC)) $(patsubst util/src/%.c, $(OBJ_DIR)/%.o, $(UTIL))

# Flags
CC = avr-gcc
OBJCOPY = avr-objcopy
BUILD_TYPE ?= debug
LOG_LEVEL ?= DBG
MCU ?= atmega328p

CFLAGS = -mmcu=$(MCU) -Wall -DLOG_LEVEL=$(LOG_LEVEL) 

ifeq ($(BUILD_TYPE), debug)
	CFLAGS += -g -O0
	ELF = $(TARGET_DIR)/debug/$(WORKSPACE).elf
	HEX = $(TARGET_DIR)/debug/$(WORKSPACE).hex
else ifeq ($(BUILD_TYPE), release)
	CFLAGS += -O2
	ELF = $(TARGET_DIR)/release/$(WORKSPACE).elf
	HEX = $(TARGET_DIR)/release/$(WORKSPACE).hex
endif

ifeq ($(PRG), jtag)
	PRGx = atmelice
else ifeq ($(PRG), dw)
	PRGx = atmelice_dw
else ifeq ($(PRG), pdi)
	PRGx = atmelice_pdi
else ifeq ($(PRG), updi)
	PRGx = atmelice_updi
else 
	PRGx = atmelice_isp
endif


all: $(HEX)

$(HEX): $(ELF)
	$(OBJCOPY) -O ihex -R .eeprom $(ELF) $(HEX)

$(ELF) : $(BUILD)
	$(CC) $(CFLAGS) -o $(ELF) $(BUILD)

$(OBJ_DIR)/%.o : core/src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o : utils/src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_DIR)/*.o
	rm -f $(TARGET_DIR)/debug/*
	rm -f $(TARGET_DIR)/release/*

flash:	
	./build/flash.sh $(WORKSPACE) $(MCU) $(PRGx) $(BUILD_TYPE)
