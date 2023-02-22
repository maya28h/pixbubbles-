IDEAL
MODEL small
STACK 100h

DATASEG
set1 db 'shooter have to kill all the pixbubbles.',10,13,'$'
set2 db 'shooter can only kill pixbubbles',10,13,'$'
set3 db 'if he shoots the same color as his.',10,13,'$'
set4 db 'you can move the shooter.',10,13,'$'
set5 db 'left- A, right- D. W- shoot!',10,13,'$'
set6 db 'hurry up.',10,13,'$'
shooter_x dw 160
shooter_x2 dw 160
shooter_Y dw 121
color_shooter db 0eh
num_w dw 0

b1x dw 150

b2x dw 160


b3x dw 170

b4x dw 180

b5x dw 188

b6x dw 180

b7x dw 170

b8x dw 150

b9x dw 160


b10x dw 140

b11x dw 130


b12x dw 120

b13x dw 110


b14x dw 120

b15x dw 130

b16x dw 140



CODESEG
xor ax,ax
xor dx,dx


proc the_game_settings_printer 
; the_game_settings_printer prints the settings of the game
	push bp
	mov bp,sp
	push ax
	push dx
	
	mov ah,9h
	mov dx, [bp+14]
	int 21h
	
	mov dx, [bp+12]
	int 21h
	
	mov dx, [bp+10]
	int 21h
	
	mov dx, [bp+8]
	int 21h
	
	mov dx, [bp+6]
	int 21h
	
	mov dx, [bp+4]
	int 21h
		
	pop dx
	pop ax
	pop bp
	ret 14
	
endp the_game_settings_printer


proc draw_shooter
	mov bh, 0h ;
	mov al, [color_shooter] ; color 
	mov ah,0ch; 
	mov cx, [shooter_x] ;x placement
	p_x1_loop:
		mov dx, 90h   ;y placement
		p_y1_loop:
			inc dx
			int 10h
			
			cmp dx, 98h
			jne p_y1_loop
			
		inc cx
		mov dx, shooter_x
		add dx, 9
		cmp cx, dx
		jne p_x1_loop	
	ret
endp draw_shooter

proc draw_b1
	mov bh, 0h ;
	mov al, 0ch ; color red
	mov ah,0ch; 
	mov cx, 150 ;x placement

	p1_x_loop:
		mov dx, 40   ;y placement
		p1_y_loop:
			inc dx
			int 10h
			
			cmp dx, 32h
			jne p1_y_loop
			
		inc cx

		cmp cx, 158
		jne p1_x_loop	
	ret
endp draw_b1



proc dark_b1
	mov bh, 0h ;
	mov al, 00h ; color red
	mov ah,0ch; 
	mov cx, 150 ;x placement

	pd1_x_loop:
		mov dx, 40   ;y placement
		pd1_y_loop:
			inc dx
			int 10h
			
			cmp dx, 32h
			jne pd1_y_loop
			
		inc cx

		cmp cx, 158
		jne pd1_x_loop	
	ret
endp dark_b1





proc draw_b2
	mov bh, 0h ;
	mov al, 0eh ; color yello
	mov ah,0ch; 
	mov cx, 160 ;x placement

	p2_x_loop:
		mov dx, 28   ;y placement
		p2_y_loop:
			inc dx
			int 10h
			
			cmp dx, 26h
			jne p2_y_loop
			
		inc cx

		cmp cx, 168
		jne p2_x_loop	
	ret
	
endp draw_b2



proc dark_b2
	mov bh, 0h ;
	mov al, 00h ; color yello
	mov ah,0ch; 
	mov cx, 160 ;x placement

	pd2_x_loop:
		mov dx, 28   ;y placement
		pd2_y_loop:
			inc dx
			int 10h
			
			cmp dx, 26h
			jne pd2_y_loop
			
		inc cx

		cmp cx, 168
		jne pd2_x_loop	
	ret
	
endp dark_b2





proc draw_b3
	mov bh, 0h ;
	mov al, 0ah ; color green
	mov ah,0ch; 
	mov cx, 170 ;x placement
		
	p3_x_loop:
		mov dx, 28   ;y placement
		p3_y_loop:
			inc dx
			int 10h
			
			cmp dx, 26h
			jne p3_y_loop
			
		inc cx

		mov dx, 170
		add dx, 8
		cmp cx, dx
		jne p3_x_loop	
	ret
endp draw_b3

proc draw_b4
	mov bh, 0h ;
	mov al, 09h ; color blue
	mov ah,0ch; 
	mov cx, 180 ;x placement

	p4_x_loop:
		mov dx, 28   ;y placement
		p4_y_loop:
			inc dx
			int 10h
			
			cmp dx, 26h
			jne p4_y_loop
			
		inc cx

		mov dx, 180
		add dx, 8
		cmp cx, dx
		jne p4_x_loop	
	ret
endp draw_b4

proc draw_b5
	mov bh, 0h ;
	mov al, 0bh ; color also blue
	mov ah,0ch; 
	mov cx, 188 ;x placement

	p5_x_loop:
		mov dx, 40   ;y placement
		p5_y_loop:
			inc dx
			int 10h
			
			cmp dx, 32h
			jne p5_y_loop
			
		inc cx

		mov dx, 188
		add dx, 8
		cmp cx, dx
		jne p5_x_loop	
	ret
endp draw_b5


proc dark_b5
	mov bh, 0h ;
	mov al, 00h ; color also blue
	mov ah,0ch; 
	mov cx, 188 ;x placement

	pd5_x_loop:
		mov dx, 40   ;y placement
		pd5_y_loop:
			inc dx
			int 10h
			
			cmp dx, 32h
			jne pd5_y_loop
			
		inc cx

		mov dx, 188
		add dx, 8
		cmp cx, dx
		jne pd5_x_loop	
	ret
endp dark_b5



proc draw_b6
	mov bh, 0h ;
	mov al, 0Dh ; color pink
	mov ah,0ch; 
	mov cx, 180 ;x placement

	p6_x_loop:
		mov dx, 52   ;y placement
		p6_y_loop:
			inc dx
			int 10h
			
			cmp dx, 62
			jne p6_y_loop
			
		inc cx

		mov dx, 180
		add dx, 8
		cmp cx, dx
		jne p6_x_loop
	ret
endp draw_b6


proc dark_b6
	mov bh, 0h ;
	mov al, 00h ; color pink
	mov ah,0ch; 
	mov cx, 180 ;x placement

	pd6_x_loop:
		mov dx, 52   ;y placement
		pd6_y_loop:
			inc dx
			int 10h
			
			cmp dx, 62
			jne pd6_y_loop
			
		inc cx

		mov dx, 180
		add dx, 8
		cmp cx, dx
		jne pd6_x_loop
	ret
endp dark_b6




proc draw_b7
	mov bh, 0h ;
	mov al, 0bh ; color also blue
	mov ah,0ch; 
	mov cx, 170 ;x placement
		
	p7_x_loop:
		mov dx, 64   ;y placement
		p7_y_loop:
			inc dx
			int 10h
			
			cmp dx, 74
			jne p7_y_loop
			
		inc cx

		mov dx, 170
		add dx, 8
		cmp cx, dx
		jne p7_x_loop
	ret
endp draw_b7



proc dark_b7
	mov bh, 0h ;
	mov al, 0bh ; color also blue
	mov ah,0ch; 
	mov cx, 170 ;x placement
		
	pd7_x_loop:
		mov dx, 64   ;y placement
		pd7_y_loop:
			inc dx
			int 10h
			
			cmp dx, 74
			jne pd7_y_loop
			
		inc cx

		mov dx, 170
		add dx, 8
		cmp cx, dx
		jne pd7_x_loop
	ret
endp dark_b7



proc draw_b8
	mov bh, 0h ;
	mov al, 09h ; color blue
	mov ah,0ch; 
	mov cx, 150 ;x placement

	p8_x_loop:
		mov dx, 74   ;y placement
		p8_y_loop:
			inc dx
			int 10h
			
			cmp dx, 84
			jne p8_y_loop
			
		inc cx

		mov dx, 150
		add dx, 8
		cmp cx, dx
		jne p8_x_loop
	ret
endp draw_b8

proc draw_b9
	mov bh, 0h ;
	mov al, 0ah ; color green
	mov ah,0ch; 
	mov cx, 160 ;x placement

	p9_x_loop:
		mov dx, 74   ;y placement
		p9_y_loop:
			inc dx
			int 10h
			
			cmp dx, 84
			jne p9_y_loop
			
		inc cx

		mov dx, 160
		add dx, 8
		cmp cx, dx
		jne p9_x_loop
	ret
endp draw_b9

proc draw_b10
	mov bh, 0h ;
	mov al, 0eh ; color yellow
	mov ah,0ch; 
	mov cx, 140 ;x placement

	p10_x_loop:
		mov dx, 74   ;y placement
		p10_y_loop:
			inc dx
			int 10h
			
			cmp dx, 84
			jne p10_y_loop
			
		inc cx

		mov dx, 140
		add dx, 8
		cmp cx, dx
		jne p10_x_loop
	ret
endp draw_b10



proc dark_b10
	mov bh, 0h ;
	mov al, 00h ; color yellow
	mov ah,0ch; 
	mov cx, 140 ;x placement

	pd10_x_loop:
		mov dx, 74   ;y placement
		pd10_y_loop:
			inc dx
			int 10h
			
			cmp dx, 84
			jne pd10_y_loop
			
		inc cx

		mov dx, 140
		add dx, 8
		cmp cx, dx
		jne pd10_x_loop
	ret
endp dark_b10





proc draw_b11
	mov bh, 0h ;
	mov al, 0ch ; color red
	mov ah,0ch; 
	mov cx, 130 ;x placement

	p11_x_loop:
		mov dx, 64   ;y placement
		p11_y_loop:
			inc dx
			int 10h
			
			cmp dx, 74
			jne p11_y_loop
			
		inc cx

		mov dx, 130
		add dx, 8
		cmp cx, dx
		jne p11_x_loop
	ret
endp draw_b11



proc dark_b11
	mov bh, 0h ;
	mov al, 00h ; color black
	mov ah,0ch; 
	mov cx, 130 ;x placement

	pd11_x_loop:
		mov dx, 64   ;y placement
		pd11_y_loop:
			inc dx
			int 10h
			
			cmp dx, 74
			jne pd11_y_loop
			
		inc cx

		mov dx, 130
		add dx, 8
		cmp cx, dx
		jne pd11_x_loop
	ret
endp dark_b11







proc dark_b12
	mov bh, 0h ;
	mov al, 00h ; color pink
	mov ah,0ch; 
	mov cx, 120 ;x placement
		
	pd12_x_loop:
		mov dx, 54   ;y placement
		pd12_y_loop:
			inc dx
			int 10h
			
			cmp dx, 64
			jne pd12_y_loop
			
		inc cx

		mov dx, 120
		add dx, 8
		cmp cx, dx
		jne pd12_x_loop
	ret
endp dark_b12


proc draw_b12
	mov bh, 0h ;
	mov al, 0dh ; color pink
	mov ah,0ch; 
	mov cx, 120 ;x placement
		
	p12_x_loop:
		mov dx, 54   ;y placement
		p12_y_loop:
			inc dx
			int 10h
			
			cmp dx, 64
			jne p12_y_loop
			
		inc cx

		mov dx, 120
		add dx, 8
		cmp cx, dx
		jne p12_x_loop
	ret
endp draw_b12






proc draw_b13
	mov bh, 0h ;
	mov al, 0eh ; color yellow
	mov ah,0ch; 
	mov cx, 110 ;x placement
	
	p13_x_loop:
		mov dx, 44   ;y placement
		p13_y_loop:
			inc dx
			int 10h
			
			cmp dx, 54
			jne p13_y_loop
			
		inc cx

		mov dx, 110
		add dx, 8
		cmp cx, dx
		jne p13_x_loop
	ret
endp draw_b13


proc dark_b13
	mov bh, 0h ;
	mov al, 00h ; color yellow
	mov ah,0ch; 
	mov cx, 110 ;x placement
	
	pd13_x_loop:
		mov dx, 44   ;y placement
		pd13_y_loop:
			inc dx
			int 10h
			
			cmp dx, 54
			jne pd13_y_loop
			
		inc cx

		mov dx, 110
		add dx, 8
		cmp cx, dx
		jne pd13_x_loop
	ret
endp dark_b13



proc draw_b14
	mov bh, 0h ;
	mov al, 09h ; color blue
	mov ah,0ch; 
	mov cx, 120 ;x placement

	p14_x_loop:
		mov dx, 30   ;y placement
		p14_y_loop:
			inc dx
			int 10h
			
			cmp dx, 40
			jne p14_y_loop
			
		inc cx

		mov dx, 120
		add dx, 8
		cmp cx, dx
		jne p14_x_loop
	ret
endp draw_b14

proc draw_b15
	mov bh, 0h ;
	mov al, 0ah ; color green
	mov ah,0ch; 
	mov cx, 130 ;x placement

	p15_x_loop:
		mov dx, 30   ;y placement
		p15_y_loop:
			inc dx
			int 10h
			
			cmp dx, 40
			jne p15_y_loop
			
		inc cx

		mov dx, 130
		add dx, 8
		cmp cx, dx
		jne p15_x_loop
	ret
endp draw_b15

proc draw_b16
	mov bh, 0h ;
	mov al, 0Dh ; color pink
	mov ah,0ch; 
	mov cx, 140 ;x placement

	p16_x_loop:
		mov dx, 30   ;y placement
		p16_y_loop:
			inc dx
			int 10h
			
			cmp dx, 40
			jne p16_y_loop
			
		inc cx

		mov dx, 140
		add dx, 8
		cmp cx, dx
		jne p16_x_loop	
	ret
endp draw_b16


proc dark_b16
	mov bh, 0h ;
	mov al, 00h ; color pink
	mov ah,0ch; 
	mov cx, 140 ;x placement

	pd16_x_loop:
		mov dx, 30   ;y placement
		pd16_y_loop:
			inc dx
			int 10h
			
			cmp dx, 40
			jne pd16_y_loop
			
		inc cx

		mov dx, 140
		add dx, 8
		cmp cx, dx
		jne pd16_x_loop	
	ret
endp dark_b16


proc deletet_shooterd	
	mov bh, 0h ;
	mov al, 00h ; color black
	mov ah,0ch; 
	mov cx, [shooter_x] ;x placement
	dec cx
	mov dx, 90h   ;y placement
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	    
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	ret
endp deletet_shooterd

proc deletet_shootera	
	mov bh, 0h ;
	mov al, 00h ; color black
	mov ah,0ch; 
	mov cx, [shooter_x] ;x placement
	add cx, 9
	mov dx, 90h   ;y placement
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	inc dx
	int 10h	
	
	ret
endp deletet_shootera



proc get_key ; returns ah=scancode al=ascii
    mov ah, 00h
    int 16h
    ret
endp




start:
    mov ax, @data
    mov ds, ax

	mov ax, 13h
	int 10h
	

push offset set1
push offset set2
push offset set3
push offset set4
push offset set5
push offset set6

; Graphic mode
mov ax, 13h
int 10h


call the_game_settings_printer 



call draw_b1
call draw_b2
call draw_b3
call draw_b4
call draw_b5
call draw_b6
call draw_b7
call draw_b8
call draw_b9
call draw_b10
call draw_b11
call draw_b12
call draw_b13
call draw_b14
call draw_b15
call draw_b16
call draw_shooter



cmp [num_w], 1
je its1
its1: mov [color_shooter], 0Ah


cmp [num_w], 2
je its2
its2: mov [color_shooter], 0Dh


cmp [num_w], 3
je its3
its3: mov [color_shooter], 0ch


cmp [num_w], 4
je its4
its4: mov [color_shooter], 0Ah


cmp [num_w], 5
je its5
its5: mov [color_shooter], 0Eh


cmp [num_w], 6
je its6
its6: mov [color_shooter], 09h


cmp [num_w], 7
je its7
its7: mov [color_shooter], 0Eh


cmp [num_w], 8
je its8
its8: mov [color_shooter], 0ch


cmp [num_w], 9
je its9
its9: mov [color_shooter], 0Dh


cmp [num_w],10
je its10
its10: mov [color_shooter], 0Bh


cmp [num_w],11
je its11
its11: mov [color_shooter], 9h


cmp [num_w], 12
je its12
its12: mov [color_shooter], 0Ah


cmp [num_w], 13
je its13
its13: mov [color_shooter], 9h

cmp [num_w], 14
je its14
its14: mov [color_shooter], 0Eh


cmp [num_w], 15
je its15
its15: mov [color_shooter], 0Bh




aloop:
call get_key ; Input: jump to the label of the key pressed
        cmp al, "a"
        je key_a
        cmp al, "d"
        je key_d
		cmp al, "w"
		je key_w

    key_d:
		inc [shooter_x]
		call draw_shooter
		call deletet_shooterd
		jmp aloop
			
			
		key_a:
		dec [shooter_x]
		call deletet_shootera
		call draw_shooter
		jmp aloop
	
	
	jmp koolae
	w_chek: jmp aloop
		
	koolae:	key_w:
	cmp [color_shooter], 0eh
		jne colorpink
		je coloryellow
	coloryellow:
		cmp [shooter_x], 165
		jl chek_b2
		jge colorpink
	chek_b2: cmp [shooter_x], 145
		jge calldarkb2
		jl chekdb10
	calldarkb2: call dark_b2
	
	chekdb10: 	
		cmp [shooter_x], 155
		jl chek_b10
		jge colorpink
	chek_b10: cmp [shooter_x], 135
		jge calldarkb10
		jl chekdb13
	calldarkb10: call dark_b10
	
	chekdb13: 
		cmp [shooter_x], 125
		jl chek_b13
		jge colorpink
	chek_b13: cmp [shooter_x], 105
		jge calldarkb13
		jl colorpink
	calldarkb13: call dark_b13
		
	colorpink: 	
		cmp [shooter_x], 185
		jl chek_b6
		jge colorred
	chek_b6: cmp [shooter_x], 165
		jge calldarkb6
		jl chekdb12
	calldarkb6: call dark_b6
	
	chekdb12: 	
		cmp [shooter_x], 125
		jl chek_b12
		jge colorred
	chek_b12: cmp [shooter_x], 105
		jge calldarkb12
		jl chekdb16
	calldarkb12: call dark_b12
	
	chekdb16: 
		cmp [shooter_x], 145
		jl chek_b16
		jge colorred
	chek_b16: cmp [shooter_x], 125
		jge calldarkb16
		jl colorred
	calldarkb16: call dark_b16
		
	colorred:
		cmp [shooter_x], 155
		jl chek_b1
		jge colorcyan
	chek_b1: cmp [shooter_x], 135
		jge calldarkb1
		jl chekdb11
	calldarkb1: call dark_b1

	
	chekdb11: 
		cmp [shooter_x], 135
		jl chek_b11
		jge colorcyan
	chek_b11: cmp [shooter_x], 115
		jge calldarkb11
		jl colorcyan
	calldarkb11: call dark_b11

	
	
	colorcyan:
		cmp [shooter_x], 198
		jl chek_b5
		jge colorgreen
	chek_b5: cmp [shooter_x], 175
		jge calldarkb5
		jl chekdb7
	calldarkb5: call dark_b5

	
	chekdb7: 
		cmp [shooter_x], 160
		jl chek_b7
		jge colorgreen
	chek_b7: cmp [shooter_x], 180
		jge calldarkb7
		jl colorgreen
	calldarkb7: call dark_b7

	colorgreen:
		inc [num_w]
		
		
	labe1: cmp [num_w],1
		je jump1
		jne labe2
	jump1: mov [color_shooter], 0dh
	labe2: cmp [num_w], 2
		je jump2
		jne labe3
	jump2: mov [color_shooter], 09h
	labe3: cmp [num_w], 3
		je jump3
		jne labe4
	jump3: mov [color_shooter], 0bh
	labe4: cmp [num_w], 4
		je jump4
		jne labe5
	jump4: mov [color_shooter], 0eh
	labe5: cmp [num_w], 5
		je jump5
		jne labe6
	jump5: mov [color_shooter], 0bh
	labe6: cmp [num_w], 6
		je jump6
		jne labe7
		
	jmp w_chek2	
	aloop2: jmp w_chek
	

		
	w_chek2: jump6: mov [color_shooter], 09h
	labe7: cmp [num_w], 7
		je jump7
		jne labe8
	jump7: mov [color_shooter], 0ah
	labe8: cmp [num_w], 8
		je jump8
		jne labe9
	jump8: mov [color_shooter], 0ch
	labe9: cmp [num_w], 9
		je jump9
		jne labe10
	jump9: mov [color_shooter], 0dh
	labe10: cmp [num_w], 10
		je jump10
		jne labe11
	jump10: mov [color_shooter], 0eh
	labe11: cmp [num_w], 11
		je jump11
		jne labe12
	jump11: mov [color_shooter], 0ah
	labe12: cmp [num_w], 12
		je jump12
		jne labe13
		
		
	jumptow: jmp w_chek3
	aloop1: 	jmp aloop2	
		
	w_chek3:	
	jump12: mov [color_shooter], 0ch
	labe13: cmp [num_w], 13
		je jump13
		jne labe14
	jump13: mov [color_shooter], 0ah
	labe14: cmp [num_w], 14
		je jump14
		jne labe15
	jump14: mov [color_shooter], 0dh
	labe15: cmp [num_w], 15
		je jump15
		jne labe16
	jump15: mov [color_shooter], 0eh
	labe16: cmp [num_w], 16
		je jump16
		jne labe17
	jump16: mov [color_shooter], 09h
	labe17: cmp [num_w], 17
		je exitlabe
		jne aloop1
	exitlabe: jmp exit
		







;loop aloop

exit:
    mov ax, 4c00h
    int 21h
END start