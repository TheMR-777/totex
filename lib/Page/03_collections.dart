import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import '../sources.dart';

class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);

  static final totex_img = Image.asset("assets/Logo/Asset_12x.png_BLACK.png");
  static final my_brands = [
    totex_img, totex_img,
  ];
  static const trendings = [
    October(), Autumn(),
  ];
  static var trending_one = math.Random().nextBool();

  @override
  Widget build(BuildContext context) => TheScreen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Image.asset("assets/custom_divider.jpg", width: 300),
          ),    // Luxury Divider
          Flexible(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 5 / 1,
              //padding: const EdgeInsets.all(25),
              crossAxisSpacing: 10,
              children: my_brands,
            ),
          ),    // The Brands
          Flexible(
            child: Image.asset(
                "assets/the_divider.png",
                width: 200,
                color: Colors.grey.shade600,
            ),
          ),    // Divider
          Flexible(
            flex: 7,
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.grey.shade100,
                    Colors.transparent,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      child: my_constant.titled_text("COLLECTIONS", color: Colors.grey.shade900)
                  ),          // COLLECTIONS
                  Flexible(
                    flex: 2,
                    child: trendings[trending_one ? 0 : 1],
                  ),          // Ad. Looking
                ],
              ),
            ),
          ),    // The Collection
          Flexible(
              child: my_constant.explore_button(onPressed: () {}, text: "VIEW ALL")
          ),    // VIEW ALL
        ],
      ),
  );
}

class October extends StatelessWidget {
  const October({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(
          child: Image.asset("assets/Totex_Modified/png (4).png", height: 300)
      ),    // The Image
      Stack(
        alignment: Alignment.center,
        children: [
          Text(
            "10",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 250,
              fontStyle: FontStyle.italic,
              color: Colors.grey.shade600,
            ),
          ),    // The 10
          Column(
            children: [
              Text(
                "October",
                style: GoogleFonts.dmSerifDisplay(
                  height: 5,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey.shade100,
                ),
              ),  // October
              Text(
                "COLLECTION",
                style: GoogleFonts.montserrat(
                  fontSize: 11,
                  height: -5,
                  letterSpacing: 10,
                  color: Colors.grey.shade100,
                ),
              ),  // COLLECTION
            ],
          ),  // The October
        ],
      ),       // The 10 and October
    ],
  );
}

class Autumn extends StatelessWidget {
  const Autumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(
        child: Column(
          children: [
            Text(
              "Autumn",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 50,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade800,
              ),
            ),  // Autumn
            Text(
              "COLLECTION",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                letterSpacing: 7,
                color: Colors.grey.shade800,
              ),
            ),  // COLLECTION
          ],
        ),
      ),
      Flexible(
          flex: 2,
          child: Image.asset(
              "assets/Totex_Modified/png (5).png",
              width: MediaQuery.of(context).size.width,
          )
      ),    // Product Image
    ],
  );
}
