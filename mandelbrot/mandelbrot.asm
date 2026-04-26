    .entry large


;Vertical range & size
.2236:	iLow:	.dw -1.1 >> 4
.2224:	iHigh:	.dw 1.1 >> 4
.2229:	iStep:	.dw 0.1 >> 4

;Horizontal range & size
.2231:	rLow:	.dw -2.1 >> 4
.2230:	rHigh:	.dw 0.52 >> 4
.2235:	rStep:	.dw 0.040 >> 4

;Maximum number of iterations
.2233:	max:	.dw #28

;Current position
.2245:	iPos:	.dw 0
.2262:	rPos:	.dw 0;

;Iteration variables
.2251:	itr:	.dw 0
.2213:	x:	    .dw 0
.2206:	xTemp:	.dw 0
.2247:	xx:	    .dw 0
.2225:	y:	    .dw 0
.2218:	yy:	    .dw 0

;Constants for computation
.2243:	dec:	.dw #2
.2221:	twoF:	.dw 2.0 >> 4
.2255:	fourF:	.dw 4.0 >> 4

;Constants for output
.2226:	eol:	.dw "\n"
.2252:	space:	.dw " "

    .org 2115
small:
    ld iLowSmall
    st iLow
    ld iStepSmall
    st iStep
    ld rStepSmall
    st rStep
    jmp start
medium:
    ld iLowMed
    st iLow
    ld iStepMed
    st iStep
    ld rStepMed
    st rStep
    jmp start
large:
    ld iLowLarge
    st iLow
    ld iStepLarge
    st iStep
    ld rStepLarge
    st rStep
    jmp start

;Tiny 20 min
;Vertical range & size
iLowSmall:	.dw -1.2 >> 4
iStepSmall:	.dw 0.30 >> 4
rStepSmall:	.dw 0.120 >> 4

;Small 70 min
;Vertical range & size
iLowMed:	.dw -1.2 >> 4
iStepMed:	.dw 0.15 >> 4
rStepMed:	.dw 0.060 >> 4

;Big 2.6 hours
;Vertical range & size
iLowLarge:	.dw -1.1 >> 4
iStepLarge:	.dw 0.1 >> 4
rStepLarge:	.dw 0.040 >> 4

    .org 2000

start:                      ;Start a new fractal  
            ld  iLow        ;Reset iPos to iLow
            st  iPos

newLine:                    ;Start a new line
            ld  rLow        ;Reset rPos to rLow
            st  rPos
            
            ld  eol         ;Print a new line
            pr6

            ld  iPos        ;iPos += iStep        
            add iStep
            st  iPos

            sub iHigh       ;If iPos > iHigh goto start
            jnt nextChar    ;else goto nextChar:
            jmp done

nextChar:                   ;Work out the next character
            ld  rPos        ;rPos += rStep
            add rStep
            st  rPos

            sub rHigh       ;if rPos < rHigh
            jnt compute     ;   goto compute
            jmp newLine     ;else goto newLine


compute:
            ld  max         ;itr = max
            stc itr
            st x            ; x = 0
            st y            ; y = 0

iterate:
            ; xtemp := x^2 - y^2 + x0    
            ld  y           ; yy = y * y
            mulh y
            shl4
            st yy
            nop
            ld x            ; x*x
            nop
            nop
            mulh x
            shl4
            st xx
            jmp 2039
.2039:
            sub yy          ; ... - y*y
            add rPos        ; + x0
            st  xTemp

                            ; y := 2*x*y + y0
            ld twoF
            jmp 2048
.2048:
            mulh x
            shl4
            mulh y
            shl4
            add iPos
            st y

            ld xTemp        ; x := xtemp
            st x

            ld itr          ;Decrement Iterator
            sub dec
            st itr
            jnt in          ;Iterator went negative, we are IN

            ld yy           ;Are we still inside the 2-unit circle?
            add xx
            sub fourF
            jnt iterate     ;Left the circle, we are out
            jmp out

out:        ld itr
            shl6
            shl6
            shl6
            shl6
            shl4
            pr4
            jmp nextChar

in:         ld space
            pr6
            jmp nextChar
done:
    hlt
    jmp start

