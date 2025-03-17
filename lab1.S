.global lab1
.syntax unified
.cpu cortex-m4
.thumb

lab1:
    push {lr}  // Збереження значення LR

    // A & B
    mov r0, #6      // Прикладне значення A
    mov r1, #3      // Прикладне значення B
    and r2, r0, r1  // R2 = A & B

    // Логічний зсув вправо (LSR)
    lsr r2, r2, #1  // R2 = (A & B) >> 1

    // Факторіал C
    mov r3, #4      // Прикладне значення C
    mov r4, #1      // Початкове значення факторіала
factorial_loop:
    mul r4, r4, r3  // R4 *= C
    subs r3, r3, #1 // C--
    cmp r3, #1
    bgt factorial_loop

    // Додавання результатів
    add r2, r2, r4  // (A & B) >> 1 + C!

    pop {pc}  // Повернення
