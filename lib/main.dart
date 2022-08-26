import 'package:flutter/material.dart';

import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //home: const CardScreen(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        // En caso que la ruta no exista en la llamada entra
        // aquí y determina a que ruta de las que existe entrara
        onGenerateRoute:
            //(settings) => AppRoutes.onGenerateRoute(settings)
            // O tambien como sigue
            AppRoutes.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
