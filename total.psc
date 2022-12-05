Algoritmo total
	definir n,cantidad  Como Entero
	definir x,preciototal Como Real
	i<-1
	preciototal <- 0
	escribir "Ingresa cantidad de productos"
	leer n
	mientras i<= n Hacer
		escribir "Ingresa la cantidad del producto ", i
		leer cantidad
		escribir "Ingresa el precio del producto ", i
		leer x
		preciototal <- preciototal+(cantidad*x)
		i<-i+1
	FinMientras
	escribir "El precio total es: ",preciototal
FinAlgoritmo
