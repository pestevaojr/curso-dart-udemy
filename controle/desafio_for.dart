main() {

  // Minha solução
  var arvore = [
    '#', '##', '###', '####', '#####', '######'
  ];

  for (var linha in arvore) {
    print(linha);
  }

  // Usando valores numéricos
  var valor ='#';
  for (int i = 0; i < 6; i++) {
    print(valor);
    valor += '#';
  }

  // Solução desejada
  for (var valor = '#'; valor != '#######'; valor += '#') {
    print(valor);
  }
}