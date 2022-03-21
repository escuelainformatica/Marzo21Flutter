void main(List<String> arguments) {
  print('Hello world!');

  var n1=0;
  var n2=0;
  int total=0;

  // captura de error
  // con exception
  try {
    total = n1 ~/ n2; // ~/ division
  } on Exception {
    print("hay un error");
  }
  // con catch (se obtiene los datos del error)
  try {
    total = n1 ~/ n2; // ~/
  } catch (ex) {
    print("hay un error $ex");
  }
  // generar exception
  throw Exception('este es un error');


  print(total);
}
