void main() {
  List<dynamic> values = [1, 2, "João", 3, 4];
  
  print(values.where((element) => element is int && element > 2));
}