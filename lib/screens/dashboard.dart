
import 'dart:async';

import 'package:bottom_nav_flutter/provider/count_provider.dart';
import 'package:bottom_nav_flutter/screens/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final provider=Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      provider.setCount();
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: InkWell(child:
        Consumer<CountProvider>(builder: (BuildContext context, value, Widget? child) {
          return Text(value.count.toString(),style: const TextStyle(color: Colors.green),);
        },),
          onTap: (){
          funRoute();
          },
        ),
      ),
    );
  }

  void funRoute() {
    Navigator.pushNamed(context, RoutesName.news,arguments:  ScreenArguments(
      'All is well',
      'All Data',
    ));
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
