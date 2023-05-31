import 'package:bottom_nav_flutter/home.dart';
import 'package:bottom_nav_flutter/screens/new_screen.dart';
import 'package:bottom_nav_flutter/screens/route/route_name.dart';
import 'package:flutter/material.dart';

import '../dashboard.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext builder) =>  const Home());
      case RoutesName.news:
        final args = settings.arguments as ScreenArguments;
        return MaterialPageRoute(
            builder: (BuildContext builder) =>   NewScreen(title: args.title,message: args.message));
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No route Found"),
            ),
          );
        });
    }
  }
}
