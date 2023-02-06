void main() {
  // var valor1 = 10;
  // var valor2 = 20;

  // var igualdade = valor1 == valor2;
  // var diferenca = valor1 != valor2;
  // var maiorQue = valor1 > valor2;
  // var menorQue = valor1 < valor2;
  // var maiorOuIgualA = valor1 >= valor2;
  // var menorOuIgualA = valor1 <= valor2;

  // Algoritmo show do planeta
  var nome = "Anderson";
  var idade = 15;
  var acompanhado = false;

  var condicaoEntrada = idade >= 18;
  if (condicaoEntrada) {
    // IF é caso seja verdadeiro (true)
    print('Seja bem-vindo ao nosso show $nome');
  } else {
    // Else é caso seja falso (False)
    if (acompanhado) {
      print('Bem-vindos ao nosso show $nome e seu acompanhante!!!');
    } else {
      print('Lamento $nome, seu acesso não foi permitido!!!');
    }
  }
}
