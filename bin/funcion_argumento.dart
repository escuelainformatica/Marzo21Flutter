
funcion1(int n1,int n2,int n3) {
  return n1+n2+n3;
}
funcion2({int n1=0,int n2=0,int n3=0}) {
  return n1+n2+n3;
}
// definicion de funcion con nombres de argumento (y opcionales)
funcion3({required int n1,int n2=0,int n3=0,int valor4=0}) => n1+n2+n3+valor4;


main() {
  funcion1(1,2,3);
  funcion2(n1:1,n2:2,n3:3);
  print(funcion3(n1:22, valor4:1234));

}