#PURPOSE: program that seek for the minimum number in a list. The program ends
#if the number read is zero
#VARIABLES:
#%edi hold the current position in the list
#%ebx hold the current min
#%eax hold the element currently in exam
.section .data
data_items: 
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0
.section .text
.globl _start
_start:
#loads first item as min
movl data_items, %ebx
movl $0, %edi
start_loop:
cmpl $0, %eax
je end_loop
incl %edi
#load current element in %eax
movl data_items(,%edi,4), %eax
cmpl %eax, %ebx
jge start_loop
movl %eax, %ebx
jmp start_loop
end_loop:
movl $1, %eax
int $0x80
