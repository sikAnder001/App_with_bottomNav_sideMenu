import 'package:bottom_nav_flutter/screens/chat.dart';
import 'package:bottom_nav_flutter/screens/dashboard.dart';
import 'package:bottom_nav_flutter/screens/profile.dart';
import 'package:bottom_nav_flutter/screens/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab=0;

  final List<Widget> screens=[
    const Dashboard(),
    const Profile(),
    const Chat(),
    const Settings()
  ];

final PageStorageBucket bucket=PageStorageBucket();
Widget currentScreen=const Dashboard();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        backgroundColor: Colors.lightBlue,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: (){
                      setState(() {
                        currentScreen=const Dashboard();
                        currentTab=0;
                      });
                      },
                    minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.dashboard,
                          color: currentTab==0?Colors.yellow:Colors.grey,
                          ),
                          Text('Dashboard',
                            style: currentTab==0?const TextStyle(fontSize: 13):const TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                      setState(() {
                        currentScreen=const Profile();
                        currentTab=1;
                      });
                      },
                    minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                          color: currentTab==1?Colors.yellow:Colors.grey,
                          ),
                          Text('Profile',style:
                          currentTab==1?const TextStyle(fontSize: 13):const TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        currentScreen=const Chat();
                        currentTab=2;
                      });
                    },
                    minWidth: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,
                          color: currentTab==2?Colors.yellow:Colors.grey,
                        ),
                         Text('Chat',style:
                        currentTab==2?const TextStyle(fontSize: 13):const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        currentScreen=const Settings();
                        currentTab=3;
                      });
                    },
                    minWidth: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings,
                          color: currentTab==3?Colors.yellow:Colors.grey,
                        ),
                        Text('Settings',style:
                        currentTab==3?const TextStyle(fontSize: 13):const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
