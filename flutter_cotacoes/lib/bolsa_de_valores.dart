import 'package:flutter/material.dart';

class BolsaDeValores extends StatelessWidget {
  const BolsaDeValores(
      {required this.bolsa,
      required this.cidade,
      required this.variacaoPercentual,
      super.key});

  final String bolsa;
  final String cidade;
  final String variacaoPercentual;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          bolsa,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          cidade,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          variacaoPercentual,
          style: const TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
