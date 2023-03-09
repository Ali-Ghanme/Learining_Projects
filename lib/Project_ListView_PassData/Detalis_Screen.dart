import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/Product.dart';

class D_Screen extends StatelessWidget {
  Product2 product2;

  D_Screen(this.product2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Name ${product2.name}'),
            SizedBox(
              height: 200,
            ),
            Text('Price ${product2.price}'),
          ],
        ),
      ),
    );
  }
}
