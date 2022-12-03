import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOpts = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView.separated(
        itemCount: menuOpts.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(menuOpts[i].name),
          leading: Icon(
            menuOpts[i].icon,
            color: AppTheme.primary,
          ),
          onTap: () {
            Navigator.pushNamed(context, menuOpts[i].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
