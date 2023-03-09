import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Return data from a second screen
class PageTow extends StatelessWidget {
  const PageTow({Key? key}) : super(key: key);
  static final rout = 'PageOne';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageTow"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("name"),
            Text("Age"),
          ],
        ),
      ),
    );
  }
}
