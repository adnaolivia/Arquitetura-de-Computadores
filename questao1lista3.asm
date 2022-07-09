.text
main: addi $10, $0, 3 # primeiro multiplo de 3
      addi $11, $0, 3 # salto
      addi $8, $0, 0 #i=0;
      addi $9, $0, 10 # limite superior
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