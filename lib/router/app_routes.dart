import 'package:flutter/material.dart';

import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: '/home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: '/listview1',
        name: 'LV1 Screen',
        screen: Listview1Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: '/listview2',
        name: 'LV2 Screen',
        screen: Listview2Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: '/alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: '/card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_membership_sharp),
    MenuOption(
        route: '/avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: '/animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: '/inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: '/lisviewBuilder',
        name: 'List View Builder',
        screen: const ListviewBuilderScreen(),
        icon: Icons.list),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'/home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home': (BuildContext context) => const HomeScreen(),
  //   '/listview1': (BuildContext context) => Listview1Screen(),
  //   '/listview2': (BuildContext context) => Listview2Screen(),
  //   '/alert': (BuildContext context) => const AlertScreen(),
  //   '/card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
