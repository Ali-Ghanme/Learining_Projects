import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/main.dart';

import 'Second_Screen.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);
  static final rout = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            MyButton(),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("data"),
      onPressed: () async {
        var result = await Navigator.of(context).pushNamed(SecondScreen.rout);
        ScaffoldMessenger.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text('You Select ${result}')));
      },
    );
  }
}
