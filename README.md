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
* crear desde cero en compiler.y 
* añadir el codigo c en extra.y
#### Un programa con la sintaxis que admitimos?
 Program.txt, en pseudo-codigo
 program2 implementacion
 Si usas extra.y la entrada seria el programa en primos.c

#### Que deberia pasar?
* Ejecuto >./arma2 se crea nuestro compilador con la parte sintactica y semantica. 
* Se ejecuta en el compilador nuestro program2 y devuelva la salida del programa, por ejemplo si lo ejecute con 3 me devuelve 3 la descomposicion en primos
