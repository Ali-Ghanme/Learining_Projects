import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  static final rout = '/Second_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("yes"),
              onPressed: () {
                Navigator.of(context).pop('yse');
              },
            ),
            ElevatedButton(
              child: Text("no"),
              onPressed: () {
                Navigator.of(context).pop('no');
              },
            ),
          ],
        ),
      ),
    );
  }
}
