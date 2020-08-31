import 'package:flutter/material.dart';

void main() {
  runApp(GaleriaScreen());
}

class GaleriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Galeria';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          centerTitle: true,
        ),
        body: GridView.count(
          // Cria um grid com duas colunas
          crossAxisCount: 2,
          // Gera 100 Widgets que exibem o seu índice
          children: List.generate(50, (index) {
            return Center(
              child: Text(
                'Foto $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}
