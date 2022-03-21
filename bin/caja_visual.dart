import 'dart:io';

void crearCaja(int arg,{required int ancho,required int alto,String caracter='*',bool vacio=false,String color="0"}) {
  stdout.write("\u{1B}[${color}m");
  if(vacio) {
    for (int y = 0; y < alto; y++) {
      if(y==0 || y==alto-1) {
        for (int x = 0; x < ancho; x++) {
          stdout.write(caracter);
        }
      } else {
        stdout.write(caracter);
        for (int x = 0; x < ancho-2; x++) {
          stdout.write(' ');
        }
        stdout.write(caracter);
      }
      print("");
    }
  } else {
    for (int y = 0; y < alto; y++) {
      for (int x = 0; x < ancho; x++) {
        stdout.write(caracter);
      }
      print("");
    }
  }
  stdout.write("\u{1B}[0m");
}

main(){
  print('\u{1B}[36mAAA\u{1B}[41mBBB\u{1B}[0mCCC');
  crearCaja(0,ancho:100,alto:7,caracter: "0",vacio: true,color:"36");
  crearCaja(0,ancho:30,alto:7,caracter: "0",vacio: true,color:"37");
  crearCaja(0,ancho:10,alto:10,vacio: true,color:"33");
}