.text
main: addi $2, $0, 5
      syscall
      addi $8, $2, 1
      addi $11, $0, 11
      addi $13, $0, 13
      addi $17, $0, 17
do:   div $8, $11
      mfhi $9    # resto da divisao
      beq $9, $0, achou

      div $8, $13
      mfhi $9    # resto da divisao
      beq $9, $0, achou

      div $8, $17
      mfhi $9    # resto da divisao
      beq $9, $0, achou

      addi $8, $8, 1
      j do    
achou: add $4, $8, $0
      addi $2, $0, 1
      syscall                        


      addi $2, $0, 10
      syscall