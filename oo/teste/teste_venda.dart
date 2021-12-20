import '../modelo/cliente.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';
import '../modelo/venda_item.dart';

main() {
  var vendaItem1 = VendaItem(
        produto: Produto(
          codigo: 1,
          nome: 'Lápis Preto',
          preco: 6.00,
          desconto: 0.5,
        ),
        quantidade: 30,
      );

  var venda = Venda(
    cliente: Cliente(
      nome: 'Francisco Cardoso',
      cpf: '123.456.789-00',
    ),
    itens: <VendaItem>[
      vendaItem1,
      VendaItem(
        produto: Produto(
          codigo: 123,
          nome: 'Caderno',
          preco: 20.00,
          desconto: 0.25,
        ),
        
        quantidade: 20,
      ),
      VendaItem(
        produto: Produto(
          codigo: 52,
          nome: 'Borracha',
          preco: 2.00,
          desconto: 0.5,
        ),
        quantidade: 100,
      ),
    ],
  );

  print('O valor total da venda é: R\$ ${venda.valorTotal}.');
  print('Nome do primeiro produto é: ${venda.itens[0].produto!.nome}.');
  print('O CPF do cliente é: ${venda.cliente!.cpf}.');
}
