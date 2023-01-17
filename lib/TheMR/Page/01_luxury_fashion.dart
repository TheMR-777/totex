import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../sources.dart';

class Luxury extends StatelessWidget {
  const Luxury({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TheScreen(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: my_constant.getScreenSize(context).height * 0.75,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/Totex_Modified/png (43).png", height: my_constant.getScreenSize(context).height / 1.7),
              ),    // Product Image
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "LUXURY\n  FASHION\n& ACCESSORIES",
                  style: GoogleFonts.libreCaslonDisplay(
                    fontSize: 55,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),    // Display Text
            ],
          ),
        ),    // Luxury Fashion
        Expanded(
          child: Center(
            child: my_constant.explore_button(onPressed: () {}, text: "EXPLORE COLLECTION"),
          ),
        ),    // Explore Collection
      ],
    ),
  );
}
