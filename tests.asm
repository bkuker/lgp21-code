    .org 0300
    .entry start

one:    .dw 1
start:
    ld      testStr
    jmp     print

sretStr:    .dw "sret\t"
sret:
    ld      sretStr
    sret    printDone
    jmp     print
    ld      passStr
    sret    printDone
    jmp     print
    jmp add

addL:  .dw "add\t~"
addA:   .dw 39
addB:   .dw 3
addR:   .dw 42
add:
    ld      addL
    sret    printDone
    jmp     print
    ld      addR
    st      assertExpected
    ld      addA
    add     addB
    sret    aeqDone
    jmp     assert
    jmp sub

subStr:  .dw "sub\t~"
subA:   .dw 39
subB:   .dw 3
subR:   .dw 36
sub:
    ld      subStr
    sret    printDone
    jmp     print
    ld      subR
    st      assertExpected
    ld      subA
    sub     subB
    sret    aeqDone
    jmp     assert
    jmp mulh

mulhStr:  .dw "mulh\t~"
mulhA:   .dw 0.42
mulhB:   .dw 0.10
mulhR:   .dw 0.0420
mulh:
    ld      mulhStr
    sret    printDone
    jmp     print
    ld      mulhR
    st      assertExpected
    ld      mulhA
    mulh    mulhB
    sret    aeqDone
    jmp     assert
    hlt


assertExpected:
    .dw     0
assert:
    sub     assertExpected
    jn      assert_bad
    sub     one
    jn      assert_good
assert_bad:
    ld failStr
    jmp assert_print_result
assert_good:
    ld passStr
assert_print_result:
    sret printDone
    jmp print
aeqDone:
    jmp 0

print:
        pr6
        shl6
        pr6
        shl6
        pr6
        shl6
        pr6
        shl6
        pr6
printDone:
        jmp sret

testStr:    .dw "test\n"
passStr:    .dw "ok\n~~"
failStr:    .dw "bad\n~"