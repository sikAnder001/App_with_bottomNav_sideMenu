import 'package:bottom_nav_flutter/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   }

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<ProfileProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<ProfileProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return Slider(
                    min: 0,
                    max:1,

                    // value: slideValue,
                    onChanged: (value) {
                      provider.setSlider(value);
                    },
                  value: value.sliderValue,
                );
              },
            ),
            Consumer<ProfileProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return
                  Row(children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color:Colors.red.withOpacity(value.sliderValue),

                        ),
                        child:const Center(child:  Text('hell')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color:Colors.green.withOpacity(value.sliderValue),
                        ),
                        child: const Center(child: Text('hell')),
                      ),
                    )
                  ],);
              },
            )
          ],
        ),
      ),
    );
  }
}
