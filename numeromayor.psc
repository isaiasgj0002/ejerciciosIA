Algoritmo numeromayor
	definir numero1, numero2, numero3 como Entero
	escribir "Ingresa el numero 1: "
	leer numero1
	escribir "Ingresa el numero 2: "
	leer numero2
	escribir "Ingresa el numero 3: "
	leer numero3
	si numero1 > numero2 y numero1 > numero3 Entonces
		Escribir "El primer numero es mayor"
	SiNo
		si numero2>numero1 y numero2 > numero3 Entonces
			Escribir "El segundo numero es mayor"
		SiNo
			si numero3>numero1 y numero3 > numero2 Entonces
				Escribir "El tercer numero es mayor"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
