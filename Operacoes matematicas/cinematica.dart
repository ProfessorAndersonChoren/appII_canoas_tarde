void main() {
  // Entrada
  int posicaoInicial = 0; // metros
  int velocidade = 2; // m/s
  int tempoFinal = 10; // segundos
  int tempoInicial = 0; // segundos

  // Processamento
  int posicaoFinal = posicaoInicial + velocidade * (tempoFinal - tempoInicial);

  // Saída
  print('A posição final do objeto é $posicaoFinal\m');
}
