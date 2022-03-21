class Compra {
  String producto;
  int cantidad;
  int precio;

  Compra(this.producto, this.cantidad, this.precio);
}

class CompraServicio {
  void mostrar(Compra compra) {
    print("La compra es ${compra.producto} ${compra.cantidad} ${compra.precio}");
  }
  //int subTotal(Compra compra) {
  //  return compra.cantidad*compra.precio;
  //}
  int subTotal(Compra compra) => compra.cantidad*compra.precio;
  
  double obtenerIva(Compra compra)  => subTotal(compra)*1.19;

  
}

main() {
   var compra1=Compra("cocacola",100,2);
   var cs=CompraServicio();
   cs.mostrar(compra1);
   print(cs.subTotal(compra1));
   print(cs.obtenerIva(compra1));
   
}