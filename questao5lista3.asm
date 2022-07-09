.text
main: addi $10, $10, 0 #soma=0;
      addi $2, $0, 5
      syscall
      add $11, $0, $2 #$11 contem num
      srl $12, $11, 31 
test: bne $12, $0, fimwhile
      add $10, $10, $11 #soma = soma + num;
      addi $2, $0, 5
      syscall
      add $11, $0, $2
      srl $12, $11, 31 
      j test
fimwhile: add $4, $0, $10
      addi $2, $0, 1
      syscall     

      addi $2, $0, 10
      syscall