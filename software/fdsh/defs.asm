; Flash Disk Shell
; Copyright (c) 2025 Arvid Juskaitis

; Key deffinitions
KEY_CR  = $0D
KEY_ESC = $1B
KEY_L   = 'L'
KEY_R   = 'R'
KEY_X   = 'X'
KEY_W   = 'W'
KEY_D   = 'D'
KEY_B   = 'B'
KEY_QM  = '?'

; Device communication address
DEVICE_IN   = $C800
DEVICE_OUT  = $C801

; Command and marker definitions
CMD_LIST    = $01
CMD_READ    = $02
CMD_WRITE   = $03
CMD_DELETE  = $04
ACK         = $A0
NACK        = $AF
BODT        = $80       ; Begin of data transfer marker
EODT        = $8F       ; End of data transfer marker

RDY         = %10000000
BSY         = %01000000
DAT         = %00010000

; Status codes as return codes from subroutines
ST_RESET    = 0
ST_WIP      = 1
ST_DONE     = 2
ST_ABORT    = 3
ST_ERROR    = 4

; ------------------------------
; Macro SET_PTR addr
; parm1 - buffer
; ------------------------------
SET_PTR .macro
    lda #<\1
    sta ptr
    lda #>\1
    sta ptr+1
    .endm
