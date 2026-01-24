#PURPOSE: program that seek for the maximum number in a list. The program ends
#if the number read is zero
#INPUT:?
#OUTPUT:?
#VARIABLES:
#%edi hold the current position in the list
#%ebx hold the current max
#%eax hold the element currently in exam
.section .data
data_items:
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0
.section .text
.globl _start
_start:
#move in our counter %edi, the position 0
movl $0, %edi
#load the first word, 4 bytes, of our list
#indexing in the form of base + index * scale
movl data_items(,%edi,4), %eax
#the first element will always be the max
movl %eax, %ebx

start_loop:
#check to see if we hit the end
cmpl $0, %eax
#jump if == 0
je loop_exit
#load the next item
incl %edi
movl data_items(,%edi,4), %eax
#check if the new item is greater than the current max
cmpl %ebx, %eax
#if it less, jump to the start of the loop again
jle start_loop
#otherwise move the value in ebx to be the max
movl %eax, %ebx
jmp start_loop
loop_exit:
#we decided to "print" the max, as a return status code.
#the exit accept a status code in %ebx, which we have
movl $1, %eax
int $0x80

