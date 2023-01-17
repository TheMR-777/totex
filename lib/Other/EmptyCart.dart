import 'package:flutter/material.dart';

class EmptyCart extends StatefulWidget {
  const EmptyCart({super.key});

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //     backgroundColor: Colors.white,
          //     title: Text("C A R T", style: TextStyle(color: Colors.black))),
          body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Cart',
                      style:
                          TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 300,
                ),
                Row(
                  children: [
                    Text("You have no items in your Shopping Bag",
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                  ],
                ),
                SizedBox(
                  height: 280,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag_outlined),
                        SizedBox(
                          height: 40,
                          width: 20,
                        ),
                        Text("CONTINUE SHOPPING")
                      ],
                    ))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
