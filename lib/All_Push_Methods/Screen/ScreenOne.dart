import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ScreenTow.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);
  static final rout = '/ScreenOne';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenOne"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ScreenTow()))
                    },
                child: Text("Open Screen Tow")),
            ElevatedButton(
                onPressed: () => {null}, child: Text("Open Screen tow")),
          ],
        ),
      ),
    );
  }
}
