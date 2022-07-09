.text
main: addi $8, $0, 0 #i=0;
      addi $9, $0, 11 # limite superior
test: beq $8, $9, fimfor
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      addi $8, $8, 1 # i++;
      j test
fimfor:      

      addi $2, $0, 10
      syscall