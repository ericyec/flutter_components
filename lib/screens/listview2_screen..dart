import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  Listview2Screen({Key? key}) : super(key: key);

  final options = ['Bulls', 'Magic', 'Golden State', 'Celtics', 'Pasers'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 2'),
        elevation: 0,
        //backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(
              Icons.sports_basketball_rounded,

              ///color: Colors.indigo,
            ),
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              //color: Colors.indigo,
            ),
            onTap: () {
              print(options[index]);
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
