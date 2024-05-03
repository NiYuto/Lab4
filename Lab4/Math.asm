.586 
.XMM
.MODEL flat,C
.DATA

n dd 50.0
res dd 0
a dd 0.0
b dd 1.0
h dd ?

two dd 2.0
three dd 3.0
four dd 4.0
x dd ?

.CODE
extern MathC:near

public func
	func proc C ;
	finit

	fld n
	fld1
	fldz
	fsub 
	fdiv ST(0), ST(1)

	fst h ; –азмер одного отрезка дл€ вычислени€
	fst x

	While_Loop:

		finit
		fld b
		fld x
		 ;(while (x<b))

		finit
		push x
		call MathC
		fld four
		fmul
		fld res
		fadd

		fst res

		finit
		fld x
		fld h
		fadd
		fst x
		fld b
		FXCH ST(1)
		FCOMI ST(0), ST(1)
		ja After_Loop

		;проверка if (x >= b) break;
		push x
		call MathC
		fld res
		fadd
		fst res

		finit
		fld x
		fld h
		fadd
		fst x
		jmp While_Loop
	After_Loop:
		finit
		push a
		call MathC
		push b
		call MathC
		fadd
		fld res
		fadd
		fld three
		fld h
		fdiv ST(0),ST(1)
		fmul ST(0),ST(2)
		fst res
		finit
		fld res
		push res
		ret

func endp
End  