class DetalleFactura {
  String descripcion;
  int cantidad;
  int precioUnitario;

  DetalleFactura(this.descripcion, this.cantidad, this.precioUnitario);
}
class Factura {

  int num;
  String cliente;
  String fecha;
  List<DetalleFactura> glosa=[];

  Factura(this.num, this.cliente, this.fecha);
}
class FacturaServicio {
  void mostrar(Factura fact) {
    print("Factura #${fact.num} ${fact.cliente} ${fact.fecha}");
    fact.glosa.forEach((item) {
      print(" glosa ${item.descripcion} ${item.cantidad} ${item.precioUnitario}");
    });
    //for(var item in fact.glosa) {
    //  print(" glosa ${item.descripcion} ${item.cantidad} ${item.precioUnitario}");
    //}
  }
  int total(Factura fact) => fact.glosa.fold(0, (previousValue, item) =>
                                        previousValue+(item.cantidad*item.precioUnitario));

}

main() {
  var fact2034=Factura(2034, "Cliente #1", "21/03/2022");
  fact2034.glosa.add(DetalleFactura("trabajo", 1, 200));
  fact2034.glosa.add(DetalleFactura("mano de obra", 5, 75));
  fact2034.glosa.add(DetalleFactura("Descuento cliente nuevo", 0, 0));

  var fs=FacturaServicio();
  fs.mostrar(fact2034);
  print(fs.total(fact2034));


}