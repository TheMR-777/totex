import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../sources.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  static final categories = [
    my_constant.normal_text("All"),
    my_constant.normal_text("Hair Care"),
    my_constant.normal_text("Skin Care"),
    my_constant.normal_text("Beard"),
    my_constant.normal_text("Others"),
  ];
  static var selected_one = 0;

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  var my_controller = CarouselController();

  @override
  Widget build(BuildContext context) => TheScreen(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: my_constant.titled_text("NEW ARRIVAL"),
        ),    // New Arrival
        Flexible(
          child: Image.asset("assets/the_divider.png", width: 200),
        ),    // Divider
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              NewArrival.categories.length,
              // Miraculously, this index is being used for very crucial purpose
              (index) => Flexible(
                child: GestureDetector(
                  onTap: () => my_controller.animateToPage(index),
                  child: Column(
                    children: [
                      NewArrival.categories.elementAt(index),       // ALL etc
                      const Flexible(child: SizedBox(height: 5)),   // Spacing
                      Flexible(
                        flex: 7,
                        child: Image.asset(
                            "assets/indicator_sq.png",
                            height: 11,
                            color: NewArrival.selected_one == index
                              ? Colors.deepOrange
                              : Colors.transparent,
                        ),
                      ),                                // Diamond
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),    // Categories
        Flexible(
          flex: 17,
          child: CarouselSlider(
            carouselController: my_controller,
            options: CarouselOptions(
              height: my_constant.getScreenSize(context).height * 0.55,
              onPageChanged: (index, reason) => setState(() => NewArrival.selected_one = index),
            ),
            items: List.generate(NewArrival.categories.length, (index) => GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 1 / 2.2,
              children: List.generate(4, (index) => TheProduct(number: index + 14)),
            )),
          ),
        ),    // The Products
        Flexible(
          flex: 2,
          child: my_constant.explore_button(onPressed: () {}, text: "EXPLORE MORE"),
        ),    // Explore More
      ],
    ),
  );
}

class TheProduct extends StatelessWidget {
  const TheProduct({
    required this.number,
    Key? key
  }) : super(key: key);

  final int number;
  final int price = 120;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(flex: 4, child: Image.asset("assets/Totex_Modified/png ($number).png")),
      Flexible(child: Text("After Shave", style: my_constant.font_style(fontSize: my_constant.font_size, height: 2.5))),
      Flexible(child: Text("\$$price", style: my_constant.font_style(color: Colors.red, fontSize: 18, height: 1.2)))
    ],
  );
}
