import 'package:flutter/material.dart';

class CardMoedaPrincipal extends StatelessWidget {
  const CardMoedaPrincipal({required this.moeda, required this.valor, required this.variacao, super.key});

  final String moeda;
  final String valor;
  final String variacao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                moeda,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                valor,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                variacao,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
