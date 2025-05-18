.arch armv7ve
.arm
.fpu vfpv4
.text
.align 1
.global main
.type main, %function
main:
	push {r10,fp}
	mov fp,sp
	sub sp,sp,#24
	movw r0,#:lower16:-3
	movt r0,#:upper16:-3
	str r0,[fp,#-8]
	ldr r0,[fp,#-8]
	rsb r1,r0,#0
	str r1,[fp,#-16]
	ldr r0,[fp,#-16]
	rsb r1,r0,#0
	str r1,[fp,#-20]
	ldr r0,[fp,#-20]
	rsb r1,r0,#0
	str r1,[fp,#-24]
	ldr r0,[fp,#-24]
	str r0,[fp,#-12]
	ldr r0,[fp,#-12]
	str r0,[fp,#-4]
	b .L0
.L0:
	ldr r0,[fp,#-4]
	mov sp,fp
	pop {r10,fp}
	bx lr
