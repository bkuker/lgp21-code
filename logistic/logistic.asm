    .entry start
    .org 3000

rLow:   .dw 2.8 >> 4
rHigh:  .dw 4.0 >> 4
rStep:  .dw 0.04 >> 4
r:      .dw 0

space:  .dw " "
mark:   .dw "x"

Xzero:  .dw 0.5 >> 4
x:      .dw 0
one:    .dw 1.0 >> 4

shift: .dw $00001000
buf:    .dw 4000

burnIters: .dw #10
recordIters: .dw #40
iterCount: .dw 0
iterDec: .dw #2

start:
    ld rLow                 ;Load the starting R value
    st r                    ;and store it to R
next_r:
    ld Xzero                ;Init X
    st x
    sret clear_ret          ;clear buffer
    jmp clear

                        ; Burn-in
    ld burnIters
    st iterCount
burn:
    sret iter_ret
    jmp iter
    ld iterCount
    sub iterDec
    st iterCount
    jn burn_done
    jmp burn
burn_done:

                        ; Record
    ld recordIters
    st iterCount
record:
    sret iter_ret
    jmp iter
    mulh shift
    add buf
    sta store_mark
    ld mark
store_mark:
    st  0000                ;Address filled in above
    ld iterCount
    sub iterDec
    st iterCount
    jn record_done
    jmp record
record_done:

    sret print_ret          ;Print Buffer subroutine call
    jmp print

    ld r                    ;Load R
    add rStep               ;Increment by step
    st r                    ;Save it
    sub rHigh               ;If R is less than high...
    jn next_r               ;go to the next R

    hlt                     ;Done, halt

iter:
    ld one  ; x = (1-x)*x*r
    sub x
    mulh x
    shl4
    mulh r
    shl4
    st x
iter_ret:
    jmp 0

; Clear out entire buffer track with space character
buf_inc:    .dw     &01000004   ;Innstruction increment
storeI:     .dw     &400j2800   ;Store to 40:00 with counter in high bits
clear:
    ld storeI
clear_next:
    st clear_store
    ld space
clear_store:
    hlt             ;overwritten later
    ld clear_store
    add buf_inc
    jn clear_done
    jmp clear_next
clear_done:
clear_ret:
    jmp 0

; Print out buffer track followed by a CRLF
loadI:  .dw     &40012800   ;Load to 40:00 with counter in high bits
eol:    .dw "\n"
print:
    ld loadI
print_next:
    st print_load
print_load:
    hlt             ;overwritten later
    pr6
    ld print_load
    add buf_inc
    jn print_done
    u print_next
print_done:
    ld eol
    pr6
print_ret:
    jmp 0