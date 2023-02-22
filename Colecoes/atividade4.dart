import 'dart:math';

void main() {
  List<int> A = List.generate(5, (_) => Random().nextInt(50));
  List<int> B = List.empty(growable: true);

  print(A);
  for (int numero in A) {
    B.add(numero);
  }
  print(B);
}
