// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, dead_code, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
const my_style = GoogleFonts.crimsonPro;
const normal_text_size = 19.0;
const titled_text_size = 22.0;

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  final my_controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyScaffoldWithAppBar.my_app_bar(context),
      drawer: Drawer(),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          children: [
            Expanded(
                child: CarouselSlider(
                    carouselController: my_controller,
                    items: [
                      slidingimgs("assets/Totex/png (14).png"),
                      slidingimgs("assets/Totex/png (15).png"),
                      slidingimgs("assets/Totex/png (16).png"),
                    ],
                    options: CarouselOptions(
                      height: 350,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          listindex = index;
                        });
                      },
                    ))),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: AnimatedSmoothIndicator(
                effect: ExpandingDotsEffect(
                    activeDotColor: Color.fromARGB(255, 90, 181, 255),
                    dotWidth: 12,
                    expansionFactor: 2),
                activeIndex: listindex,
                count: 3,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "SPRAY CONDITIONER",
              style: my_style(
                fontSize: titled_text_size,
                letterSpacing: 5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Professional Hair Care",
              style: my_style(
                fontSize: normal_text_size,
                color: Colors.grey,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "RS 1500",
              style: my_style(
                fontSize: titled_text_size,
                color: Color.fromARGB(255, 254, 189, 91),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                "Color",
                style: my_style(
                  fontSize: normal_text_size,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () => setState(() {
                        my_controller.animateToPage(0);
                      }),
                  child: itemcolor(Color.fromARGB(255, 90, 181, 255))),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () => setState(() {
                        my_controller.animateToPage(1);
                      }),
                  child: itemcolor(Color.fromARGB(255, 200, 153, 136))),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      my_controller.animateToPage(2);
                    });
                  },
                  child: itemcolor(Color.fromARGB(255, 255, 123, 167)))
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(Icons.add, color: Colors.white, size: 25),
                    SizedBox(width: 5),
                    Text(
                      "ADD TO CART",
                      style: my_style(color: Colors.white, fontSize: normal_text_size - 3),
                    )
                  ]),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 25,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("MATERIALS", style: my_style(fontSize: titled_text_size, letterSpacing: 3)),
            SizedBox(
              height: 10,
            ),
            Text(v1!, style: my_style(color: Colors.grey, fontSize: normal_text_size)),
            SizedBox(
              height: 30,
            ),
            Text("CARE", style: my_style(fontSize: titled_text_size, letterSpacing: 3)),
            SizedBox(
              height: 10,
            ),
            Text(v2!, style: my_style(color: Colors.grey, fontSize: normal_text_size)),
            SizedBox(
              height: 30,
            ),
            precautions("assets/Icons/icon1.png", "Do not use bleach"),
            SizedBox(
              height: 20,
            ),
            precautions("assets/Icons/icon2.png", "Do not tumble dry"),
            SizedBox(
              height: 20,
            ),
            precautions(
                "assets/Icons/icon3.png", "Dry clean with tetrachloroethylene"),
            SizedBox(
              height: 20,
            ),
            precautions(
                "assets/Icons/icon4.png", "Iron at a maximum of 110ºC/230ºF"),
            SizedBox(
              height: 40,
            ),
            Text("CARE", style: my_style(fontSize: titled_text_size, letterSpacing: 3)),
            SizedBox(
              height: 20,
            ),
            expansiontile(
                Icon(Icons.local_shipping_outlined),
                "Free Flat Rate Shipping",
                "Estimated to be delivered on",
                "09/11/2021 - 12/11/2021"),
            expansiontile(Icon(Icons.policy_outlined), "COD Policy",
                "Estimated to be delivered on", "09/11/2021 - 12/11/2021"),
            expansiontile(Icon(Icons.autorenew_rounded), "Return Policy",
                "Estimated to be delivered on", "09/11/2021 - 12/11/2021"),
            SizedBox(height: 50),
            Align(
              alignment: Alignment.center,
              child: Text("YOU MAY ALSO LIKE",
                  style: my_style(fontSize: titled_text_size, letterSpacing: 4)),
            ),
            SizedBox(height: 10),
            Image.asset(
              "assets/Icons/line.png",
              color: Colors.black,
              cacheWidth: 180,
            ),
            SizedBox(height: 20),
            Row(children: [
              endscritem("assets/Totex/png (42).png", "21WN",
                  "reversible angora cardigan", "RS 1800"),
              SizedBox(width: 10),
              endscritem("assets/Totex/png (9).png", "21WN",
                  "reversible angora cardigan", "RS 1200")
            ]),
            Row(children: [
              endscritem("assets/Totex/png (36).png", "21WN",
                  "reversible angora cardigan", "RS 1500"),
              SizedBox(width: 10),
              endscritem("assets/Totex/png (37).png", "21WN",
                  "reversible angora cardigan", "RS 1400")
            ]),
          ],
        ),
      ),
    );
  }
}

Widget endscritem(String img, txt1, txt2, txt3) {
  return Expanded(
    child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(img),
            Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.favorite_border_outlined,
                    color: Color.fromARGB(255, 254, 189, 91))),
            Align(alignment: Alignment.bottomLeft, child: Text(txt1)),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  txt2,
                  style: my_style(color: Colors.grey),
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(txt3,
                  style: my_style(color: Color.fromARGB(255, 254, 189, 91))),
            )
          ],
        )),
  );
}

Widget expansiontile(Icon icon, String txt4, txt5, txt6) {
  return ExpansionTile(
      title: Row(children: [
        icon,
        SizedBox(width: 20),
        Text(txt4, style: my_style(fontSize: normal_text_size))
      ]),
      childrenPadding: EdgeInsets.only(left: 16),
      children: [
        Align(
            alignment: Alignment.topLeft,
            child:
                Text(txt5, style: my_style(fontSize: normal_text_size, color: Colors.grey))),
        SizedBox(height: 5),
        Align(
            alignment: Alignment.topLeft,
            child:
                Text(txt6, style: my_style(fontSize: normal_text_size, color: Colors.grey))),
      ]);
}

Widget precautions(String txt7, txt8) {
  return Row(children: [
    Image.asset(
      txt7,
      cacheHeight: 28,
    ),
    SizedBox(width: 20),
    Text(txt8, style: my_style(color: Colors.grey, fontSize: normal_text_size)),
  ]);
}

String? v1 =
        "We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products.",
    v2 =
        "To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment.";
int listindex = 0, col_picker = 0;
Widget slidingimgs(String img) {
  return Container(
    child: Image.asset(img, fit: BoxFit.cover),
  );
}

Widget itemcolor(Color colors) {
  return Container(
    height: 20,
    width: 20,
    decoration: BoxDecoration(shape: BoxShape.circle, color: colors),
  );
}
