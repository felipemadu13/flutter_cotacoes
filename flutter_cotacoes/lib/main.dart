import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_cotacoes/home_material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomeMaterial(),
    );
  }
}

// class HomeMaterial extends StatefulWidget {
//   const HomeMaterial({super.key});

//   @override
//   State<HomeMaterial> createState() => _HomeMaterialState();
// }

// class _HomeMaterialState extends State<HomeMaterial> {
//   late Future<Map<String, dynamic>> dadosCotacoes;

//   @override
//   void initState() {
//     super.initState();
//     dadosCotacoes = getDadosCotacoes();
//   }

//   Future<Map<String, dynamic>> getDadosCotacoes() async {
//     print("get dados");
//     try {
//       final res = await http.get(
//         Uri.parse(
//           'http://api.hgbrasil.com/finance/quotations?key=<suakey>',
//         ),
//       );

//       if (res.statusCode != HttpStatus.ok) {
//         throw 'Erro de conexão';
//       }

//       final data = jsonDecode(res.body);

//       print(data);

//       return data;
//     } catch (e) {
//       throw e.toString();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Cotações Brasil',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.refresh),
//           ),
//         ],
//       ),
//       body: FutureBuilder(
//           future: dadosCotacoes,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator.adaptive(),
//               );
//             }
//             if (snapshot.hasError) {
//               return Center(
//                 child: Text(snapshot.error.toString()),
//               );
//             }
//             final data = snapshot.data!;

//             return Text("Dados lidos");
//           }),
//     );
//   }
// }
