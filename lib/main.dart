import 'package:flutter/material.dart';

import 'Product/ProductCard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MediaQuery Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
        canvasColor: Colors.greenAccent,
        errorColor: Colors.redAccent,
        primaryIconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          headline: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28),
          body1: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 24),
          body2: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent,
              fontSize: 18),
          subtitle: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15),
          subhead: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15),
          caption: TextStyle(
            fontFamily: 'Sans',
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
      home: new ProductCard(),
    );
  }
}
