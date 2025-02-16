import 'package:flutter/material.dart';
import 'package:flutter_cotacoes/bolsa_de_valores.dart';
import 'package:flutter_cotacoes/card_moeda.dart';
import 'package:flutter_cotacoes/card_moeda_principal.dart';

class HomeMaterial extends StatelessWidget {
  const HomeMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cotações Brasil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardMoedaPrincipal(moeda: "Dollar", valor: "R\$ 4.9544", variacao: "+0,00"),
            const SizedBox(height: 20),
            const Text(
              'Outras moedas',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardMoeda(moeda: "EURO", valor: "5.2597", variacao: "-0.011"),
                  CardMoeda(moeda: "EURO", valor: "5.2597", variacao: "-0.011"),
                  CardMoeda(moeda: "EURO", valor: "5.2597", variacao: "-0.011"),
                  CardMoeda(moeda: "EURO", valor: "5.2597", variacao: "-0.011"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Bolsa de Valores',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BolsaDeValores(
                    bolsa: "IBOVESPA",
                    cidade: "São Paulo, Brazil",
                    variacaoPercentual: "1.69"),
                BolsaDeValores(
                    bolsa: "IBOVESPA",
                    cidade: "São Paulo, Brazil",
                    variacaoPercentual: "1.69"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
