import 'package:flutter/material.dart';
import '../Model/Student.dart';
import 'Page_One.dart';

// Send Data From Home Page to PageOne using ModelOfRout
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
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
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PageOne.rout,
                      arguments: Student("Ahmed", "21"));
                },
                child: Text("Go to Page One")),
            TextButton(onPressed: () {}, child: Text("Go to Page Tow")),
          ],
        ),
      ),
    );
  }
}
