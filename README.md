# Makefile inputs
    -MCU 
    -LOG_LEVEL 
    -BUILD_TYPE 
    -PRG

# Default values
MCU = atmega328p\
LOG_LEVEL = DBG\
BUILD_TYPE = debug\
PRG = atmelice_isp

# Options
## BUILD_TYPE
debug\
release

## LOG_LEVEL
TRACE\
DBG\
INFO\
WARN\
ERR\
FATAL

## MCU
avr2

    “Classic” devices with up to 8 KiB of program memory.
    mcu = attiny22, attiny26, at90s2313, at90s2323, at90s2333, at90s2343, at90s4414, at90s4433, at90s4434, at90c8534, at90s8515, at90s8535.
avr25

    “Classic” devices with up to 8 KiB of program memory and with the MOVW instruction.
    mcu = attiny13, attiny13a, attiny24, attiny24a, attiny25, attiny261, attiny261a, attiny2313, attiny2313a, attiny43u, attiny44, attiny44a, attiny45, attiny48, attiny441, attiny461, attiny461a, attiny4313, attiny84, attiny84a, attiny85, attiny87, attiny88, attiny828, attiny841, attiny861, attiny861a, ata5272, ata6616c, at86rf401.
avr3

    “Classic” devices with 16 KiB up to 64 KiB of program memory.
    mcu = at76c711, at43usb355.
avr31

    “Classic” devices with 128 KiB of program memory.
    mcu = atmega103, at43usb320.
avr35

    “Classic” devices with 16 KiB up to 64 KiB of program memory and with the MOVW instruction.
    mcu = attiny167, attiny1634, atmega8u2, atmega16u2, atmega32u2, ata5505, ata6617c, ata664251, at90usb82, at90usb162.
avr4

    “Enhanced” devices with up to 8 KiB of program memory.
    mcu = atmega48, atmega48a, atmega48p, atmega48pa, atmega48pb, atmega8, atmega8a, atmega8hva, atmega88, atmega88a, atmega88p, atmega88pa, atmega88pb, atmega8515, atmega8535, ata5795, ata6285, ata6286, ata6289, ata6612c, at90pwm1, at90pwm2, at90pwm2b, at90pwm3, at90pwm3b, at90pwm81.
avr5

    “Enhanced” devices with 16 KiB up to 64 KiB of program memory.
    mcu = atmega16, atmega16a, atmega16hva, atmega16hva2, atmega16hvb, atmega16hvbrevb, atmega16m1, atmega16u4, atmega161, atmega162, atmega163, atmega164a, atmega164p, atmega164pa, atmega165, atmega165a, atmega165p, atmega165pa, atmega168, atmega168a, atmega168p, atmega168pa, atmega168pb, atmega169, atmega169a, atmega169p, atmega169pa, atmega32, atmega32a, atmega32c1, atmega32hvb, atmega32hvbrevb, atmega32m1, atmega32u4, atmega32u6, atmega323, atmega324a, atmega324p, atmega324pa, atmega324pb, atmega325, atmega325a, atmega325p, atmega325pa, atmega328, atmega328p, atmega328pb, atmega329, atmega329a, atmega329p, atmega329pa, atmega3250, atmega3250a, atmega3250p, atmega3250pa, atmega3290, atmega3290a, atmega3290p, atmega3290pa, atmega406, atmega64, atmega64a, atmega64c1, atmega64hve, atmega64hve2, atmega64m1, atmega64rfr2, atmega640, atmega644, atmega644a, atmega644p, atmega644pa, atmega644rfr2, atmega645, atmega645a, atmega645p, atmega649, atmega649a, atmega649p, atmega6450, atmega6450a, atmega6450p, atmega6490, atmega6490a, atmega6490p, ata5790, ata5790n, ata5791, ata6613c, ata6614q, ata5782, ata5831, ata8210, ata8510, ata5787, ata5835, ata5700m322, ata5702m322, at90pwm161, at90pwm216, at90pwm316, at90can32, at90can64, at90scr100, at90usb646, at90usb647, at94k, m3000.
avr51

    “Enhanced” devices with 128 KiB of program memory.
    mcu = atmega128, atmega128a, atmega128rfa1, atmega128rfr2, atmega1280, atmega1281, atmega1284, atmega1284p, atmega1284rfr2, at90can128, at90usb1286, at90usb1287.
avr6

    “Enhanced” devices with 3-byte PC, i.e. with more than 128 KiB of program memory.
    mcu = atmega256rfr2, atmega2560, atmega2561, atmega2564rfr2.
avrxmega2

    “XMEGA” devices with more than 8 KiB and up to 64 KiB of program memory.
    mcu = atxmega8e5, atxmega16a4, atxmega16a4u, atxmega16c4, atxmega16d4, atxmega16e5, atxmega32a4, atxmega32a4u, atxmega32c3, atxmega32c4, atxmega32d3, atxmega32d4, atxmega32e5, avr64da28, avr64da32, avr64da48, avr64da64, avr64db28, avr64db32, avr64db48, avr64db64, avr64dd14, avr64dd20, avr64dd28, avr64dd32, avr64du28, avr64du32, avr64ea28, avr64ea32, avr64ea48.
avrxmega3

    “XMEGA” devices with up to 64 KiB of combined program memory and RAM, and with program memory visible in the RAM address space.
    mcu = attiny202, attiny204, attiny212, attiny214, attiny402, attiny404, attiny406, attiny412, attiny414, attiny416, attiny416auto, attiny417, attiny424, attiny426, attiny427, attiny804, attiny806, attiny807, attiny814, attiny816, attiny817, attiny824, attiny826, attiny827, attiny1604, attiny1606, attiny1607, attiny1614, attiny1616, attiny1617, attiny1624, attiny1626, attiny1627, attiny3214, attiny3216, attiny3217, attiny3224, attiny3226, attiny3227, atmega808, atmega809, atmega1608, atmega1609, atmega3208, atmega3209, atmega4808, atmega4809, avr16dd14, avr16dd20, avr16dd28, avr16dd32, avr16du14, avr16du20, avr16du28, avr16du32, avr16ea28, avr16ea32, avr16ea48, avr16eb14, avr16eb20, avr16eb28, avr16eb32, avr32da28, avr32da32, avr32da48, avr32db28, avr32db32, avr32db48, avr32dd14, avr32dd20, avr32dd28, avr32dd32, avr32du14, avr32du20, avr32du28, avr32du32, avr32ea28, avr32ea32, avr32ea48.
avrxmega4

    “XMEGA” devices with more than 64 KiB and up to 128 KiB of program memory.
    mcu = atxmega64a3, atxmega64a3u, atxmega64a4u, atxmega64b1, atxmega64b3, atxmega64c3, atxmega64d3, atxmega64d4, avr128da28, avr128da32, avr128da48, avr128da64, avr128db28, avr128db32, avr128db48, avr128db64.
avrxmega5

    “XMEGA” devices with more than 64 KiB and up to 128 KiB of program memory and more than 64 KiB of RAM.
    mcu = atxmega64a1, atxmega64a1u.
avrxmega6

    “XMEGA” devices with more than 128 KiB of program memory.
    mcu = atxmega128a3, atxmega128a3u, atxmega128b1, atxmega128b3, atxmega128c3, atxmega128d3, atxmega128d4, atxmega192a3, atxmega192a3u, atxmega192c3, atxmega192d3, atxmega256a3, atxmega256a3b, atxmega256a3bu, atxmega256a3u, atxmega256c3, atxmega256d3, atxmega384c3, atxmega384d3.
avrxmega7

    “XMEGA” devices with more than 128 KiB of program memory and more than 64 KiB of RAM.
    mcu = atxmega128a1, atxmega128a1u, atxmega128a4u.
avrtiny

    “Reduced Tiny” Tiny core devices with only 16 general purpose registers and 512 B up to 4 KiB of program memory.
    mcu = attiny4, attiny5, attiny9, attiny10, attiny102, attiny104, attiny20, attiny40.
avr1

    This ISA is implemented by the minimal AVR core and supported for assembler only.
    mcu = attiny11, attiny12, attiny15, attiny28, at90s1200.


## PRG

jtag	Atmel-ICE (ARM/AVR) in JTAG mode\
dw	    Atmel-ICE (ARM/AVR) in debugWIRE mode\
pdi	    Atmel-ICE (ARM/AVR) in PDI mode\
updi	Atmel-ICE (ARM/AVR) in UPDI mode