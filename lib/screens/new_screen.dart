
import 'package:flutter/material.dart';


class NewScreen extends StatefulWidget {
  final String title;
  final String message;

  const NewScreen({Key? key, required this.title, required this.message}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height*1;
    return Container(
      color: Colors.white,
      child: SafeArea(
              child: SizedBox(
                height: height*1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () { debugPrint('all is well is clicked'); },
                          child: Text(widget.title,  style:const TextStyle(decoration: TextDecoration.none),)),
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () { debugPrint('all is well is clicked'); },
                          child: Text(widget.title,  style:const TextStyle(decoration: TextDecoration.none),)),
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () { debugPrint('all is well is clicked'); },
                          child: Text(widget.title,  style:const TextStyle(decoration: TextDecoration.none),)),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}