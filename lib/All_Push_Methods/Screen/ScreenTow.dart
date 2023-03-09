import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/All_Push_Methods/Screen/Home4.dart';

class ScreenTow extends StatelessWidget {
  const ScreenTow({Key? key}) : super(key: key);
  static final rout = '/ScreenTow';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenTow"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => {
                      // pushAndRemoveUntil
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => Home4()),
                          (rout) => false)
                    },
                child: Text("Go Home")),
            ElevatedButton(
                onPressed: () => {null}, child: Text("Open Screen tow")),
          ],
        ),
      ),
    );
  }
}
