.text
main: addi $2, $0, 5
      syscall         #qtd de numeros que sera fornecido pelo usuario
      addi $8, $2, -1
     
      addi $2, $0, 5
      syscall         #Le primeiro numero do usuario
      add $9, $0, $2  #maior ($9) <= o primeiro numero digitado
      addi $10, $0, 1 #Qtd de maior ($10) <= 1
           
for1: beq $8, $0, saifor

      addi $2, $0, 5
      syscall        #le proximo numero
      beq $2, $9, incqtd
      slt $11, $2, $9 # Se ($2<$9) entao $11<=1 senao $1<=0
      bne $11, $0, prox
      add $9, $2, $0
      addi $10, $0, 1 #Qtd de maior ($10) <= 1
       
     j prox
incqtd: addi $10, $10, 1          
                   
prox: addi $8, $8, -1      
      j for1                  

saifor: add $4, $9, $0
        addi $2, $0, 1
        syscall
       
        addi $4, $0, ' '
        addi $2, $0, 11
        syscall

        add $4, $10, $0
        addi $2, $0, 1
        syscall
       
        addi $4, $0, 'x'
        addi $2, $0, 11
        syscall


      addi $2, $0, 10
      syscall