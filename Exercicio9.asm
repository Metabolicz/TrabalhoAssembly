li $t9,0# contador
addi $t2,$gp,0 # t2 ponteiro inicio vetor A
addi $t1,$t2,100 # t1 ponteiro inicio vetor B
add $t6,$t1,200 # t6 ponteiro inicio vetor C
loop: lw $t3,0($t2) # A[t2]
lw $t7,0($t1) # B[t1]
sub $t8,$t3,$t7# B[t2] – B[t1]
sw $t8,0($t6)# grava no C[t6]
slti $t10,$t8,0 # t8 < 0
bne $t10,$zero, achou
volta: beq $t3,$zero, fim
beq $t7,$zero, fim
addi $t2,$t2,4  #t2 += 4
addi $t1,$t1,4  #t1 += 4
addi $t6,$t6,4  #t6 += 4
jal loop # proximo item
fim:nop
achou : addi $t9,$t9,1 # Contador++
j volta # volta para o loop
