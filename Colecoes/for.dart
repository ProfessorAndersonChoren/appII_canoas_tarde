import 'dart:io';

void main() {
  print("Digite um número de 1 até 10");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 1 || numero > 10) {
    print('Número inválido!!!');
  } else {
    tabuada(numero);
  }
}

void tabuada(int numero) {
  for (int i = 1; i < 11; i++) {
    int tabuada = numero * i;
    print('$numero X $i = $tabuada');
  }
}
