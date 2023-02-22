import 'dart:io';

void main() {
  print('Digite um número inteiro e positivo');
  String numero = stdin.readLineSync()!;
  List<String> digitos = numero.split('');
  int contagem = 0;

  for (int i = 0; i < digitos.length; i++) {
    contagem++;
  }
  print('O valor $numero contêm $contagem digitos');
}
