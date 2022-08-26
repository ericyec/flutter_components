import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: const [
            CustomCardTypeA(),
            SizedBox(height: 10.0),
            CustomCardTypeB(),
            SizedBox(height: 10.0),
            CustomCardTypeB()
          ],
        ));
  }
}
