lw $t5,0($gp) # t5 tamanho
addi $t2,$gp,4 # t2 ponteiro inicio vetor A
add $t1,$t2,$t5 # t1 ponteiro inicio vetor B
add $t6,$t1,$t5 # t6 ponteiro inicio vetor C
loop: lw $t3,0($t2) # A[t2]
lw $t7,0($t1) # B[t1]
sub $t8,$t3,$t7# B[t2] – B[t1]
sw $t8,0($t6)# grava no C[t6]
beq $t3,$zero, fim
beq $t7,$zero, fim
addi $t2,$t2,4  #t2 += 4
addi $t1,$t1,4  #t1 += 4
addi $t6,$t6,4  #t6 += 4
jal loop # proximo item
fim:
