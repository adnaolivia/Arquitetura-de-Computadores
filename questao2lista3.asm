.text
main: addi $2, $0, 5
      syscall
      add $20, $0, $2 #multiplos de
      addi $2, $0, 5
      syscall
      add $21, $0, $2 #qtd de multiplos


      add $10, $0, $20 # primeiro multiplo de 3
      add $11, $0, $20 # salto
      addi $8, $0, 0 #i=0;
      add $9, $0, $21 # limite superior
test: beq $8, $9, fimfor
      add $4, $0, $10
      addi $2, $0, 1
      syscall
      
      addi $4, $0, ' '
      addi $2, $0, 11
      syscall
      
      add $10, $10, $11
      
      addi $8, $8, 1 # i++;
      j test
fimfor:      

      addi $2, $0, 10
      syscall