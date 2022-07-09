.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      addi $9, $2, 1
      
test: beq $8, $9, fimfor
      andi $20, $8, 1 #$20 = 1 se $8 for impar e $20=0 se $8 for par
      bne $20,$0, impar
      
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      
      addi $4, $0, ' '
      addi $2, $0, 11
      syscall
      
impar:addi $8, $8, 1 # i++;
      j test
fimfor:      

      addi $2, $0, 10
      syscall