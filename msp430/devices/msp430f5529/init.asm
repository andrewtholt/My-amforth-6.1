; ----------------------------------------------------------------------

main:   ; Debugger requires the 'main' symbol.
reset:

  mov #5A80h, &WDTCTL ; Watchdog off

  ; Now it is time to initialize hardware. (Porting: Change this !)

  ;------------------------------------------------------------------------------
  ; Init Clock

  bis.w #40h, r2
  mov.w #20h, &166h
  mov.w #144h, &168h
  mov.w #1308h, &160h
  mov.w #40h, &162h
  mov.w #0F4h, &164h
  nop
  nop
  nop
  bic.w #40h, r2

reset_loop:
  mov.w #0h, &16Eh
  bic.w #2h, &102h
  bit.w #2h, &102h
  jc reset_loop

  ;------------------------------------------------------------------------------

; Forth registers
    MOV     #RSTACK,SP              ; set up stack
    MOV     #PSTACK,PSP
    MOV     #UAREA,UP              ; initial user pointer

; now hand over to Forth with COLD (a colon word)
    MOV     #XT_COLD+2,IP
    NEXT

mcu_name:
	.db 11,"MSP430F5529"

; ----------------------------------------------------------------------
; DEFAULT INTERRUPT HANDLER

nullirq: RETI
