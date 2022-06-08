import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Nombre de la ruta'),
                  leading: const Icon(Icons.access_time),
                  onTap: () {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 15));
  }
}
