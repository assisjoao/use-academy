enum UiError {
  requiredValue,
  minLenght,  
}

extension UiErrorExtension on UiError {
  String get description {
    switch (this) {
      case UiError.requiredValue:
        return 'Valor obrigatório';
      case UiError.minLenght:
        return 'Não atingiu o número mínimo de caracteres';
    }
  }
}

extension MultiplyExtension on int {
  int multiply4(){
    return this * 4;
  }
}

void main () {
  final String value = UiError.requiredValue.description;
  print(value);

  final int valorInteiro = 10;
  print(valorInteiro.multiply4());
}