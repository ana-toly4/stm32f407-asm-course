.syntax unified
        .cpu cortex-m4
        .thumb

        .section .text
        .global main
        .type main, %function
        .thumb_func

main:
        mov     r0, #52        @ R0 = 52 (A)
        mov     r1, #18        @ R1 = 18 (B)

        add     r2, r0, r1     @ R2 = A + B = 70
        sub     r3, r0, r1     @ R3 = A - B = 34

stop:
                nop
        b       stop

.size main, .-main