import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/Project_ListView_PassData/Model/Product.dart';

import 'Detalis_Screen.dart';

class Home3 extends StatelessWidget {
  const Home3({Key? key}) : super(key: key);
  static final rout = '/';

  @override
  Widget build(BuildContext context) {
    List<Product2> products = List.generate(
        100,
        (index) =>
            Product2(name: 'Prodcut ${index + 1}', price: (index + 1) * 300));
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => ListTile(
          title: Text(products[i].name),
          trailing: Text('Price ${products[i].price}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => D_Screen(products[i])),
            );
          },
        ),
        itemCount: products.length,
      ),
    );
  }
}
