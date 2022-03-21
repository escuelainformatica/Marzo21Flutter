main() async {

  var resultado="";

  //try {
    funcionAsinc()
      .catchError((e) {
        print("hay un error $e");
        return "error";
      })
      .then((value) {
        resultado = value;
        print("el resultado es $resultado");
    });
  //} on Exception {
  //  print("excepción");
  //}



}


Future<String> funcionAsinc() async {
  throw Exception('este es un error');
  await Future.delayed(Duration(seconds: 1));
  return "hola mundo";
}