addi $t2,$gp,4 # t2 ponteiro inicio vetor
lw $t1,0($gp) # t1 tamanho vetor
add $t1,$t1,$t1
add $t1,$t1,$t1 # t1 = 4t1
add $t1,$t2,$t1 #t1 = Tam*4+t2 ponteiro final do vetor
loop: beq $t1,$t2,fim # se t1==t2 acabou
lw $t4,0($t2) # t4 = v[t2]
addi $t2,$t2,4  #t2 += 4
add $t3,$t3,$t4 # sum= sum + v[t2]
jal loop # proximo item
fim: sw $t3,0($gp) # grava sum no inicio (onde estava o tamanho)

