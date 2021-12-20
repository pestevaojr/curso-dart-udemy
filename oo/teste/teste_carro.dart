import '../modelo/carro.dart';

main () {
  final carro = Carro(213);
  print('Acelerando até o limite!');
  while (!carro.estaNoLimite()) {
    print('A velocidade atual é ${carro.acelerar()} Km/h.');
  }

  print('O carro chegou no máximo com velodade ${carro.velocidadeAtual} Km/h.');

  while(!carro.estaParado()) {
    print('A velocidade atual é ${carro.frear()} Km/h.');
  }   
  
  print('O carro parou com velodade ${carro.velocidadeAtual} Km/h.');
}