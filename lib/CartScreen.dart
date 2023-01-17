// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const my_font_style = GoogleFonts.crimsonPro;
const my_padding = EdgeInsets.symmetric(horizontal: 20);

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            "CART",
            style: my_font_style(
              letterSpacing: 2,
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
        body: ListView(
          padding: my_padding,
          children: [
            Container(
              height: 210,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/Totex_Modified/png (14).png',
                      height: 130),
                  Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          Text('LOTION',
                              style: my_font_style(
                                  fontSize: 20, letterSpacing: 3)),
                          Text('After shave lotion',
                              style: my_font_style(
                                  fontSize: 15,
                                  letterSpacing: 1.5,
                                  color: Colors.black45)),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child:
                                  Icon(Icons.remove, size: 22)),
                              Text('   1   ',
                                  style: my_font_style(
                                      fontSize: 20)),
                              GestureDetector(
                                  onTap: () {},
                                  child: Icon(CupertinoIcons.add,
                                      size: 22)),
                            ],
                          ),
                          Text(
                            '\$ 120',
                            style: my_font_style(
                                fontSize: 20,
                                color:
                                Colors.orange.withOpacity(0.7)),
                          ),
                        ],
                      ))
                ],
              ),
            ), // Product 1
            SizedBox(
              height: 20,
            ), // Spacing
            Container(
              height: 210,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/Totex_Modified/png (14).png',
                      height: 130),
                  Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          Text('LOTION',
                              style: my_font_style(
                                  fontSize: 20, letterSpacing: 3)),
                          Text('After shave lotion',
                              style: my_font_style(
                                  fontSize: 15,
                                  letterSpacing: 1.5,
                                  color: Colors.black45)),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child:
                                  Icon(Icons.remove, size: 22)),
                              Text('   1   ',
                                  style: my_font_style(
                                      fontSize: 20)),
                              GestureDetector(
                                  onTap: () {},
                                  child: Icon(CupertinoIcons.add,
                                      size: 22)),
                            ],
                          ),
                          Text(
                            '\$ 120',
                            style: my_font_style(
                                fontSize: 20,
                                color:
                                Colors.orange.withOpacity(0.7)),
                          ),
                        ],
                      ))
                ],
              ),
            ), // Product 1
          ],
        ),
        bottomNavigationBar: Padding(
          padding: my_padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(
                color: Colors.black,
              ),      // Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '\$240',
                    style: TextStyle(fontSize: 18, color: Colors.orange),
                  ),
                ],
              ),          // Sub Total
              SizedBox(
                height: 20,
              ),     // Spacing
              Row(
                children: [
                  Text(
                    '*shipping charges,taxes and discount codes\n'
                        'are calculated at the time of accounting.',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),          // Shipping Charges
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Buy Now",
                      style: my_font_style(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),    // Buy Now
            ],
          ),
        ),
    );
}
