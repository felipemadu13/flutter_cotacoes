import 'package:flutter/material.dart';
import 'package:flutter_cotacoes/bolsa_de_valores.dart';
import 'package:flutter_cotacoes/card_moeda.dart';
import 'package:flutter_cotacoes/card_moeda_principal.dart';
import 'package:flutter_cotacoes/resultados.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class HomeMaterial extends StatefulWidget {
  const HomeMaterial({super.key});

  @override
  State<HomeMaterial> createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  late Future<Resultados> dadosCotacoes;

  @override
  void initState() {
    super.initState();
    dadosCotacoes = getDadosCotacoes();
  }

  Future<Resultados> getDadosCotacoes() async {
    try {
    
      final res = await http.get(Uri.parse('http://api.hgbrasil.com/finance'));


      if (res.statusCode != HttpStatus.ok) {
        throw Exception('Erro de conexão');
      }
   
      Resultados resultados = Resultados.fromJson(jsonDecode(res.body));
      return resultados;
      
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cotações Brasil',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                dadosCotacoes = getDadosCotacoes();
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: FutureBuilder<Resultados>(
        future: dadosCotacoes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('Nenhum dado disponível'));
          }

          final cotacoes = snapshot.data!;
          final currencies = cotacoes.results.currencies;
          final stocks = cotacoes.results.stocks;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardMoedaPrincipal(
                  moeda: "Dólar",
                  valor: "R\$ ${currencies.usd.buy.toStringAsFixed(4)}",
                  variacao: currencies.usd.variation.toStringAsFixed(2),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Outras moedas',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardMoeda(
                          moeda: "EURO",
                          valor: currencies.eur.buy.toStringAsFixed(4),
                          variacao: currencies.eur.variation.toStringAsFixed(2)),
                      CardMoeda(
                          moeda: "GBP",
                          valor: currencies.gbp.buy.toStringAsFixed(4),
                          variacao: currencies.gbp.variation.toStringAsFixed(2)),
                      CardMoeda(
                          moeda: "CAD",
                          valor: currencies.cad.buy.toStringAsFixed(4),
                          variacao: currencies.cad.variation.toStringAsFixed(2)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Bolsa de Valores',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BolsaDeValores(
                        bolsa: "IBOVESPA",
                        cidade: stocks.ibovespa.location,
                        variacaoPercentual: stocks.ibovespa.variation.toStringAsFixed(2)),
                    BolsaDeValores(
                        bolsa: "NASDAQ",
                        cidade: stocks.nasdaq.location,
                        variacaoPercentual: stocks.nasdaq.variation.toStringAsFixed(2)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
