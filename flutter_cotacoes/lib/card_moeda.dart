import 'package:flutter/material.dart';

class CardMoeda extends StatelessWidget {
  const CardMoeda({required this.moeda, required this.valor, required this.variacao, super.key});

  final String moeda;
  final String valor;
  final String variacao;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              moeda,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              valor,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(variacao),
          ],
        ),
      ),
    );
  }
}
