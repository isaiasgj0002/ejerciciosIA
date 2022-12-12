Algoritmo algo1
	definir nombre Como Caracter
	definir contador Como Entero
	escribir "Escriba el nombre del joven: "
	leer nombre
	escribir nombre + " "+"estudia?"
	leer respuesta1
	si respuesta1 = "no" Entonces
		contador = contador + 1 
	FinSi
	escribir nombre + " "+"trabaja?"
	leer respuesta2
	si respuesta2 = "no" Entonces
		contador = contador + 1
	FinSi
	si contador = 2 Entonces
		Escribir nombre + " "+"si debe hacer servicio militar"
		siNo
			Escribir nombre + " "+"no debe hacer servicio militar"
	FinSi
FinAlgoritmo
