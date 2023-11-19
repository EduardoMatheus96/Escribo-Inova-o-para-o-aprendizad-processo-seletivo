import 'dart:io';

somatorio(int numero) {
  var somatorio = 0;

  for (var i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }
  print("O valor do somatorio do numero ${numero} é de ${somatorio}");
}

int trataInteiro() {
  bool condition;
  int numero = 0;
  do {
    print("Insira um número inteiro positivo: ");
    String? entrada = stdin.readLineSync();
    try {
      numero = int.parse(entrada!);
    } catch (e) {
      print('Por favor, digite um número inteiro válido.');
    }
    numero.isNegative ? condition = true : condition = false;

    if (condition)
      print("O Número nao é um inteiro Positivo, favor inserir  outro valor: ");
  } while (condition);
  return numero;
}

void main(List<String> args) {
  print("Insira um número inteiro positivo: ");
  int numero = trataInteiro();
  somatorio(numero);
}
