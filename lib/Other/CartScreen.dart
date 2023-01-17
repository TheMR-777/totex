// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.close, color: Colors.black, size: 30,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CART',
                  style: GoogleFonts.crimsonPro(
                      fontSize: 33,
                      letterSpacing: 4
                  ),
                ),
              ),            // Cart
              SizedBox(
                height: 50,
              ),         // Spacing
              Expanded(
                child: ListView(
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
                          Image.asset('assets/Totex_Modified/png (14).png', height: 130),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                      'LOTION',
                                      style: GoogleFonts.crimsonPro(
                                          fontSize: 20,
                                          letterSpacing: 3
                                      )
                                  ),
                                  Text(
                                      'After shave lotion',
                                      style: GoogleFonts.crimsonPro(
                                          fontSize: 15,
                                          letterSpacing: 1.5,
                                          color: Colors.black45
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                          onTap: () {},
                                          child: Icon(Icons.remove, size: 22)
                                      ),
                                      Text('   1   ', style: GoogleFonts.crimsonPro(fontSize: 20)),
                                      GestureDetector(
                                          onTap: () {},
                                          child: Icon(CupertinoIcons.add, size: 22)
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$ 120',
                                    style: GoogleFonts.crimsonPro(
                                        fontSize: 20,
                                        color: Colors.orange.withOpacity(0.7)
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),        // Product 1
                    SizedBox(
                      height: 20,
                    ),         // Spacing
                    Container(
                      height: 210,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/Totex_Modified/png (14).png', height: 130),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                      'LOTION',
                                      style: GoogleFonts.crimsonPro(
                                          fontSize: 20,
                                          letterSpacing: 3
                                      )
                                  ),
                                  Text(
                                      'After shave lotion',
                                      style: GoogleFonts.crimsonPro(
                                          fontSize: 15,
                                          letterSpacing: 1.5,
                                          color: Colors.black45
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                          onTap: () {},
                                          child: Icon(Icons.remove, size: 22)
                                      ),
                                      Text('   1   ', style: GoogleFonts.crimsonPro(fontSize: 20)),
                                      GestureDetector(
                                          onTap: () {},
                                          child: Icon(CupertinoIcons.add, size: 22)
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$ 120',
                                    style: GoogleFonts.crimsonPro(
                                        fontSize: 20,
                                        color: Colors.orange.withOpacity(0.7)
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),        // Product 1
                  ],
                ),
              ),         // Products
              Divider(
                color: Colors.black,
              ),          // Divider
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
              ),              // Sub Total
              SizedBox(
                height: 20,
              ),         // Spacing
              Row(
                children: [
                  Text(
                    '*shipping charges,taxes and discount codes\n'
                    'are calculated at the time of accounting.',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),              // Shipping Charges
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: screen.height * 0.025),
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  SizedBox(
                    height: 20,
                    width: 10,
                  ),
                  Text('Buy Now')
                ],
              ),
),   // Buy Now
          ],
      ),
        ),
    ));
  }
}
