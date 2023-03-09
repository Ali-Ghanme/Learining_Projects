import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/All_Push_Methods/Screen/ScreenOne.dart';
import 'package:learning_app/All_Push_Methods/Screen/ScreenTow.dart';

class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);
  static final rout = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReadMe"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ScreenOne()))
                    },
                child: Text("Open Screen one")),
            ElevatedButton(
                // Navigate by named Rout Not by MaterialPageRoute
                onPressed: () => {
                      Navigator.of(context).pushNamed(ScreenTow.rout),
                    },
                child: Text("Open Screen tow")),
          ],
        ),
      ),
    );
  }
}
