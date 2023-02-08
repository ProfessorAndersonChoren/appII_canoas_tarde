void main() {
  /*
  1° Trabalhar a mais de 5 anos na empresa E receber menos de R$ 1.500
  2° Trabalhar a mais de 3 anos na empresa E receber menos de R$ 1.000
  3° Trabalhar na empresa a mais de 1 ano || receber R$ 800 ou menos
  */

  // Entrada
  int tempoDeEmpresa = 2;
  double salario = 700;
  double aumento = 0.15; // 15% -> 15/100 = 0.15

  // Processamento
  // if (tempoDeEmpresa > 5 && salario < 1500) {
  //   // salario = salario * aumento + salario;
  //   salario += salario * aumento;
  // } else if (tempoDeEmpresa > 3 && salario < 1000) {
  //   salario += salario * aumento;
  // } else if (tempoDeEmpresa > 1 && salario < 800) {
  //   salario += salario * aumento;
  // }

  if (
      // 1° Critério
      (tempoDeEmpresa > 5 && salario < 1500) ||
          // 2° Critério
          (tempoDeEmpresa > 3 && salario < 1000) ||
          // 3° Critério
          (tempoDeEmpresa > 1 && salario < 800)) {
    salario += salario * aumento;
  }

  // Saída
  print('O novo salário do funcionário é R\$ $salario');
}
