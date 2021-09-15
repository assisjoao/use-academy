abstract class Cobranca {
  void cobrarSaida();

  void cobrarEntrada();
}

mixin CobrarEntradaBasica {
  void cobrarEntradaBasica(){
    print("Cobrou entrada básica");
  }
}

class Employee implements Cobranca {
  final String name;

  Employee({required this.name});


  @override
  void cobrarEntrada() {
    print("cobrou entrada");
  }

  @override
  void cobrarSaida() {}
}

class EmployeeBasic with CobrarEntradaBasica implements Cobranca {
  final String name;

  EmployeeBasic({required this.name});


  @override
  void cobrarEntrada() {
    print("cobrou entrada");
  }

  @override
  void cobrarSaida() {}
}


void main() {
  final Employee employee = Employee(name: "João");
  employee.cobrarEntrada();

  final EmployeeBasic employeBasic = EmployeeBasic(name: "Rafael");
  employeBasic.cobrarEntradaBasica();

}
