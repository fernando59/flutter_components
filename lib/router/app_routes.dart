import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'Listview 1 Screen',
        screen: ListViewScreen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_outlined,
        name: 'Listview 2 Screen',
        screen: ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.access_alarm,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.alarm,
        name: 'Alert Screen',
        screen: const AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1': (BuildContext context) => ListViewScreen(),
  //   'listview2': (BuildContext context) => ListView2Screen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const CardScreen());
  }
}
