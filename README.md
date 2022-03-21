# clase 21 Marzo

* funciones con nombres de argumento

* si un argumento tiene la notacion "required", entonces el campo es requerido.
* se pueden mezclar argumentos posicionales (en el ejemplo: "arg1") con argumentos con nombre (entre { })

```dart
// definir la funcion
void crearCaja(int arg1,{required int ancho,required int alto,String caracter='*',bool vacio=false,String color="0"}) {
  
}
// argumentos posicionales
void funcionPosicional(int arg1,int arg2,int arg3) {
  
}
// argumentos con nombre
void funcionNombre({int arg1=0,int arg2=0,int arg3=0}) {

}
// argumentos con opcionales
void funcionOpcional([int arg1=0,int arg2=0,int arg3=0]) {

}


// llamo
main() {
  crearCaja(0, alto: 333,ancho: 222, caracter: "X");
  
  funcionPosicional(1,2,3);
  funcionNombre(arg1:222,arg3=333);
  funcionOpcional(222,0,333);
  
}
```

* Argumento vacio de una funcion
```dart
// el simbo "_" indicando un argumento que no se va a ocupar
void mifuncion(_) {
}

main() {
  mifuncion(22);
}


```

