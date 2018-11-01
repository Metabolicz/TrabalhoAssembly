li $t4,0
li $t5,0
addi $t2,$gp,4 # t2 ponteiro inicio vetor
lw $t1,0($gp) # t1 elemento que estamos procurando
loop: lw $t3,0($t2) # v[t2]
beq $t3,$t1, achou # elemento = v[t2]
beq $t3,$zero, fim
volta: addi $t2,$t2,4  #t2 += 4
jal loop # proximo item
fim: sw $t5,0($gp) # grava no inicio (onde estava o elemento)
achou: addi $t5,$t5,1
j volta