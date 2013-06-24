TLA
===

Primer TP

####Instrucciones
Ver compiler.l para ver la sintaxis implementada en lex
Para compilar usar el comando "make" parado en el directorio raiz

1. El archivo "arma" es del primer tp
2. El archivo "arma2" es lo que intento hacer puri para la parte 2
3. El archivo "arma3" es uno descargado de internet  que parsea un "codigo en c" habria que probarlo con funciones

####Ejemplo de invocacion 
>sh arma 

>./arma

####Por donde seguir?
Necesitamos agregar la parte semantica, podemos:
* Crearla desde cero en compiler.y (que usa program2 como entrada)
* Añadir el codigo c en extra.y (que usa primos.c como entrada)
#### Un programa con la sintaxis que admite nuestro lenguaje?
 Program.txt, en pseudo-codigo
 program2 implementacion

####Que deberia pasar?
* Ejecuto >./arma2 se crea nuestro compilador con la parte sintactica y semantica. 
* Se ejecuta en el compilador nuestro program2 y devuelva la salida del programa, por ejemplo si lo ejecute con 3 me devuelve 3 la descomposicion en primos

####Entendamos el proceso de generacion del compilador
gcc -o Extra y.tab.c -ll -ly
* -o archivo redirecciona el out a archivo
* y.tab.c se genera en base a la sintaxys/semantica descrita, es un programa de c eso lo ejecutamos con gcc y ponemos el output en un archivo que va a ser nuestro compilador
* luego ejecutamos nuestro compilador con el archivo de nuestra sintaxis
