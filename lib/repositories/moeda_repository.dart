import 'package:flutter_cripto_moedas/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'images/bitcoin.png',
      nome: 'Bitcoin',
      sigla: 'BTC',
      preco: 1239.00,
    ),
    Moeda(
        icone: 'images/cardano.png',
        nome: 'IluminateCoin',
        sigla: 'ILUMI',
        preco: 995.11),
    Moeda(
        icone: 'images/litecoin.png',
        nome: 'PegasusCoin',
        sigla: 'PGS',
        preco: 755.55),
    Moeda(
        icone: 'images/usdcoin.png',
        nome: 'LiroCoin',
        sigla: 'LIRO',
        preco: 589.77),
  ];
}
