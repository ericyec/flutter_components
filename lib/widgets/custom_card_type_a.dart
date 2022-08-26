import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardTypeA extends StatelessWidget {
  const CustomCardTypeA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.album,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Proident magna anim non ipsum pariatur in ea ut eiusmod deserunt commodo.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    //style: TextButton.styleFrom(primary: AppTheme.primary),
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () {},
                    //style: TextButton.styleFrom(primary: AppTheme.primary),
                    child: const Text('OK')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
