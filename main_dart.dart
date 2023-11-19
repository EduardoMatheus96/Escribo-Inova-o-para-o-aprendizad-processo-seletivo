import 'dart:io';

int? somatorio(int numero) {
  var somatorio = 0;

  for (var i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }
  return somatorio;
}

int trataInteiro(int numero) {
  bool condition;
  do {
    print("Insira um número inteiro positivo: ");
    String? entrada = stdin.readLineSync();
    try {
      int numero = int.parse(entrada!);
      print('Você digitou: $numero');
    } catch (e) {
      print('Por favor, digite um número inteiro válido.');
    }
    numero.isNegative ? condition = true : condition = false;

    if (condition)
      print("O Número nao é um inteiro Positivo, favor inserir  outro valor: ");
  } while (condition);
  return numero;
}

void main(List<String> args) {}
