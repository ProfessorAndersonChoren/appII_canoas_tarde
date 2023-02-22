import 'dart:math';

void main() {
  List<int> A = List.generate(8, (_) => Random().nextInt(50));
  List<int> B = [];

  print(A);
  for (int numero in A) {
    B.add(numero * 2);
  }
  print(B);
}
