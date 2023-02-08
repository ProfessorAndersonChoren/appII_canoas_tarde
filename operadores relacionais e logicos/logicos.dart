void main() {
  bool logico1 = false;
  bool logico2 = false;

  // Conjução (E / &&)
  bool conjuncao = logico1 && logico2;
  print('Conjunção: $conjuncao');

  // Disjunção (OU / ||)
  bool disjuncao = logico1 || logico2;
  print('Disjunção: $disjuncao');

  // Negação (Não / !)
  bool negacaoLogico1 = !logico1;
  bool negacaoLogico2 = !logico2;
  print('Negação de A: $negacaoLogico1');
  print('Negação de B: $negacaoLogico2');
}
