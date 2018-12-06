.data 
input: .asciiz "How many disks are there in Tower of Hanoi = "
mov: .asciiz "Total move of disks = "

.text
la $a0, input
li $v0, 4
syscall
li $v0, 5
syscall
move $t7, $v0
li $t0, 2
li $t1, 1

count:
mul $t2, $t1, $t0
addi $t1, $t2, 0
subi $t7, $t7, 1
bnez $t7, count

subi $t1, $t1, 1
la $a0, mov
li $v0, 4
syscall
move $a0, $t1
li $v0, 1
syscall
