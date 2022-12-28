// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'Page/01_luxury_fashion.dart';
import 'Page/02_new_arrival.dart';
import 'Page/03_collections.dart';
import 'Page/04_the_ending.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "The Main Screen",
  theme: ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFe7eaef),
      centerTitle: true,
      toolbarHeight: 80,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black45,
      size: 30,
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
      icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black45),
    ),
    IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        foregroundColor: Colors.red
      ),
      icon: const Icon(Icons.favorite, color: Colors.red),
    )
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Image.asset("assets/Logo/Asset_22x.png", height: 47),
      leading: header_buttons[0],
      actions: [
        header_buttons[1], header_spacing,
        header_buttons[2], header_spacing,
        header_buttons[3], header_spacing,
      ],
    ),
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
