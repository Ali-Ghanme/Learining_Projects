import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Student.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);
  static final rout = 'PageOne';

  @override
  Widget build(BuildContext context) {
    Student? student = ModalRoute.of(context)?.settings.arguments as Student?;
    return Scaffold(
      appBar: AppBar(
        title: Text("PageOne"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("name ${student?.name}"),
            Text("Age ${student?.age}"),
          ],
        ),
      ),
    );
  }
}
