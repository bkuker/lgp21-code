            .org 1000
            .entry start

iLow:   .dw -1.1 >> 4
iHigh:  .dw 1.1 >> 4
iStep:  .dw 0.1 >> 4


rLow:   .dw -2.1 >> 4
rHigh:  .dw 0.52 >> 4
rStep:  .dw 0.040 >> 4

eol:    .dw "\n"
dot:    .dw "."
star:   .dw " "

.1047:  rPos:   .dw 0;
.1055:  iPos:   .dw 0
            .org 1100

                            ;Start a new fractal                    
start:      ld  iLow        ;Reset iPos to iLow
            st  iPos
                            ;Start a new line
newLine:    ld  rLow        ;Reset rPos to rLow
            st  rPos
            
            ld  eol         ;Print a new line
            pr6

            ld  iPos        ;iPos += iStep        
            add iStep
            st  iPos

            sub iHigh       ;If iPos > iHigh goto start
            jnt nextChar    ;else goto nextChar:
            hlt             ; TODO jmp start

nextChar:   ld  rPos        ;rPos += rStep
            add rStep
            st  rPos

            sub rHigh       ;if rPos > rHigh goto newLine
            jnt compute
            jmp newLine

            .org 1200

.1220: itr:    .dw 0
.1221:  dec:    .dw #2
.1239:  yy:     .dw 0
.1240:  x:      .dw 0
.1246:   xx:     .dw 0
.1247: fourF:  .dw 4.0 >> 4
.1254:   y:      .dw 0
.1255:  xTemp:  .dw 0
twoF:   .dw 2.0 >> 4



max:    .dw #28



            .org 1300
compute:    ld  max         ;itr = max
            stc itr
            st x            ; x = 0
            st y            ; y = 0

                            ; xtemp := x^2 - y^2 + x0
iterate:    ld  y           ; yy = y * y
            jmp 1308
.1308:      mulh y
            shl4
            st yy
            ld x            ; x*x
            jmp 1315
.1315:      mulh x
            shl4
            st xx
            jmp 1324
.1324:
            sub yy          ; ... - y*y
            add rPos        ; + x0
            st  xTemp

                            ; y := 2*x*y + y0
            ld twoF
            jmp 1332
.1332:            mulh x
            shl4
            nop
            nop
            mulh y
            shl4
            nop
            nop
            add iPos
            nop
            nop
            nop
            nop
            nop
            st y

                            ; x := xtemp
            ld xTemp
                        nop
            nop
            nop
            nop
            nop
            nop
            st x

            ld itr          ;Decrement Iterator
            sub dec
                        nop
            nop
            nop
            nop
            nop
            st itr

            jnt in         ;Iterator went negative, we are IN
        nop
        nop
        nop
            ld xx
                    nop
        nop
        nop
                nop
        nop
        nop
            add yy
            sub fourF
            jnt iterate         ;Left the circle, we are out

            jmp out


in:         ld star
            pr6
            jmp nextChar

out:        ld  itr
            shl4
            shl4
            shl4
            shl4
            shl6
            shl6
            ;shl4
            pr4
            jmp nextChar