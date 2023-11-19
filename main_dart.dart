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
