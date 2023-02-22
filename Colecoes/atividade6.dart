import 'dart:math';

void main() {
  List<int> A = List.generate(10, (_) => Random().nextInt(50));
  List<int> B = List.generate(10, (_) => Random().nextInt(50));
  List<int> C = [];

  print(A);
  print(B);
  for (int i = 0; i < A.length; i++) {
    int soma = A[i] + B[i];
    C.add(soma);
  }
  print(C);
}
