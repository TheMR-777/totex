// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, duplicate_import, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'CartScreen.dart';
import 'EmptyCart.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Totex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: DefaultTabController(
      //     length: 3,
      //     child: MyHomePage(
      //       title: 'Totex',
      //     )),
      home: CartScreen(),
    );
  }
}
