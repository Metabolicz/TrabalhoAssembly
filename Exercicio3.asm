li $t1,0 # t1 resultado = 0
li $t5,1
lw $t2,4($gp) # t2 = m[gp+4]
lw $t3,8($gp) # t3 = m[gp+8]
slt $t4,$t3,$zero
bne $t4,$zero,neg
loop: add $t1,$t1,$t2 # m = t2+....
addi $t3,$t3,-1 # t3 --
beq $t3,$zero,fim # $t3 == 0
jal loop # soma mais um termo
fim: sw $t1,0($gp) # grava resultado
neg:loop: sub $t1,$t1,$t2 # m = t2-....
addi $t3,$t3,1 # t3 ++
beq $t3,$t5,fim # $t3 == 1
jal loop # soma mais um termo
j fim
