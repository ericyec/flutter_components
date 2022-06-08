import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  Listview1Screen({Key? key}) : super(key: key);

  final options = ['Bulls', 'Magic', 'Golden State', 'Celtics', 'Pasers'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1'),
      ),
      body: ListView(children: [
        ...options
            .map((game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
            .toList()
      ]),
    );
  }
}
