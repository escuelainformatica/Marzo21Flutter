class Compra {
  String producto;
  int cantidad;
  int precio;
  String categoria;

  Compra(this.producto, this.cantidad, this.precio,this.categoria);

  @override
  String toString() {
    return 'Compra{producto: $producto, cantidad: $cantidad, precio: $precio, categoria: $categoria}';
  }
}

main() {

  List<Compra> compras=[];
  compras.add(Compra("cocacola",20,3,"bebida"));
  compras.add(Compra("fanta",44,3,"bebida"));
  compras.add(Compra("sprite",66,2,"otros"));

  print(compras.where((compra) => compra.categoria=='bebida'));
  int sumafinal=compras.
        where((compra) => compra.categoria=='bebida').
        fold(0, (total, compra) => total+compra.cantidad*compra.precio);
  print(sumafinal);
  
  sumafinal=0;
  for(Compra compra in compras) {
    if(compra.categoria=='bebida') {
      sumafinal=sumafinal+compra.cantidad*compra.precio;
    }
  }

}