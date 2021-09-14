void main() {
  List<double> valoresInteiros = [1, 2, 3];
  double valor = 2.89;
  print(valor.toString());

  for (double val in valoresInteiros){
    print(val.abs());
  }
}