import 'package:bottom_nav_flutter/home.dart';
import 'package:bottom_nav_flutter/provider/count_provider.dart';
import 'package:bottom_nav_flutter/provider/profile_provider.dart';
import 'package:bottom_nav_flutter/screens/route/route_name.dart';
import 'package:bottom_nav_flutter/screens/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) =>CountProvider()),
          ChangeNotifierProvider(create: (_) =>ProfileProvider())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Bottom Nav Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const Home(),
          initialRoute: RoutesName.home,
          onGenerateRoute: Routes.generateRoute,
        ));
  }
}
