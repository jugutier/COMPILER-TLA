TLA
===

##Primer TP

####Instrucciones
Ubicarse en el directorio Parte 1/src
Para compilar usar el comando:
 >make [parametro] 
 
 Donde parametro es alguna de las siguientes:

1. compile --- Only compile with lex
2. compile_run_success --- Compile and execute valid program
3. compile_run_failure --- Compile and execute invalid program

##Segundo TP
####Instrucciones
Ubicarse en el directorio Parte 2/src

* ./compile

Inmediatamente emergera un menu con el siguiente texto:
#####Desea compilar algo? 0(NO) 1(SI)
* Ingrese 1 y presione enter
#####Nombre del programa?
* Ingrese testjg.c   y presione enter
* Aguarde a la generacion del cache de numeros primos (1 min)
* Recibira el mensaje: "Se compilo en nuestra sintaxis: testjg.c"
#####Ejecutar? 0(NO) 1(SI)
* Ingrese 1 y presione enter
* Vera por pantalla la correspondiente descomposicion en primos

####Un programa con la sintaxis que admite nuestro lenguaje?
 >testjg.c
 
####Que son estos archivos que me quedaron?
* primebits cache de primos 167mb
* out.c la salida del programa compilado en nuestra gramatica representado en c
 * a.out el binario compilado en c de out.c (el programa en nuestra sintaxis ya compilado)
 
####Por donde seguir?
* BONUS ver de implementar big integer (hay que buscar en internet, y adaptar el codigo existente)

