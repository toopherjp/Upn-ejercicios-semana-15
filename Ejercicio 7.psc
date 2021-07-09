//En un negocio de venta de productos de cómputo, un cliente paga por
//un producto y si el dinero que entrega es mayor al precio del producto,
//la empresa debe devolverle al cliente la cantidad excedente de dinero
//(el cambio o vuelto). Dicha cantidad debe ser desglosada en una
//denominación que sea factible dadas las restricciones de billetes y
//monedas que existen, por ejemplo. Si el cliente compra un mouse de 47
//soles y paga con un 3 billetes de 20 soles (60 soles) el vuelto debería ser
//13 soles ( 1 billete de 10 soles + 1 moneda de 2 soles + 1 moneda de un
//sol)
Proceso Ejercicio_7
	Definir monto, billete Como Entero
	Escribir "Cuanto pagaria usted x este Mouse Gamer"
	Leer monto
	Escribir "Con cuanto desea pagar?"
	Leer billete
	Vuelto <- billete - monto
	//-----------------------//
	S100 <- Trunc(Vuelto/100)
	Rs100 <- Vuelto  mod 100
	//-----------------------//
	S50 <- Trunc(Rs100/50)
	Rs50 <- Rs100  mod 50
	//-----------------------//
	S20 <- Trunc(Rs50/20)
	Rs20 <- Rs50 mod 20
	//-----------------------//
	S10 <- Trunc(Rs20/10)
	Rs10 <- Rs20 mod 10
	//-----------------------//
	S5 <- Trunc(Rs10/5)
	//-----------------------//
	S1 <- Rs10 mod 5
	//-----------------------//
	Escribir "Su vuelto es de: S/." Vuelto
	Escribir "Su vuelto va de la siguiente manera:"
	Escribir "Cheques de 100 soles: " S100
	Escribir "Cheques de 50 soles: " S50
	Escribir "Cheques de 20 soles: " S20
	Escribir "Cheques de 10 soles: " S10
	Escribir "Monedas de 5 soles: " S5
	Escribir "Monedas de 1 sol: " S1
FinProceso