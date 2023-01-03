// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'TheMR/Page/01_luxury_fashion.dart';
import 'TheMR/Page/02_new_arrival.dart';
import 'TheMR/Page/03_collections.dart';
import 'TheMR/Page/04_the_ending.dart';
import 'Other/EmptyCart.dart';
import 'CartScreen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "The Main Screen",
  theme: ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFe7eaef),
      centerTitle: true,
      toolbarHeight: 70,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black45,
      size: 27,
    )
  ),
  home: const MyScaffoldWithAppBar(),
));

class MyScaffoldWithAppBar extends StatelessWidget {
  const MyScaffoldWithAppBar({Key? key}) : super(key: key);

  static const header_spacing = SizedBox(width: 7);
  static final header_buttons = [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu, color: Colors.black45),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search_outlined, color: Colors.black45),
    ),
    IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        foregroundColor: Colors.red
      ),
      icon: const Icon(Icons.favorite, color: Colors.red),
    )
  ];

  static AppBar my_app_bar(BuildContext context) => AppBar(
    title: Image.asset("assets/Logo/Asset_22x.png", height: 47),
    leading: header_buttons[0],
    actions: [
      header_buttons[1], header_spacing,
      IconButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CartScreen(),
          )
        ),
        icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black45),
      ),
      header_spacing,
      header_buttons[2], header_spacing,
    ],
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: my_app_bar(context),
    body: const MyScrollableView(),
  );
}

class MyScrollableView extends StatelessWidget {
  const MyScrollableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      children: const [
        Luxury(),          // The Front and Button
        NewArrival(),      // The New Arrival Col.
        Collections(),     // As the name implies
        TheEnding(),       // The Ending
      ],
    ),
  );
}
