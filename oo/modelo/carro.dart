class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);

  int acelerar() {
    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }      
    return _velocidadeAtual;
  }

  int frear() {
    if (_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }     
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  bool estaParado() {
    return _velocidadeAtual == 0;
  }

  int get velocidadeAtual {
    return _velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;

    if (deltaValido && novaVelocidade >= 0 && novaVelocidade <= velocidadeMaxima) {
      _velocidadeAtual = novaVelocidade;
    }
/*
    if (novaVelocidade > velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else if (novaVelocidade < 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual = novaVelocidade;
    }*/
  }
}