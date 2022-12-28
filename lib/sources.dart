import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class my_constant {
  static const font_style = GoogleFonts.montserrat;
  static const font_size = 17.0;
  static Text normal_text(String text) => Text(text, style: font_style(fontSize: font_size));
  static Text titled_text(String text, {Color color = Colors.black}) => Text(text, style: font_style(fontSize: 30, letterSpacing: 3, color: color));
  static Text button_text(String text, {Color color = Colors.white}) => Text(text, style: font_style(fontSize: 17, letterSpacing: 2, color: color));

  static OutlinedButton explore_button({required VoidCallback onPressed, String text = "Explore"}) => OutlinedButton(
    onPressed: onPressed,
    style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.black87,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
        //side: const BorderSide(color: Colors.black, width: 2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70)
        )
    ),
    child: my_constant.button_text(text),
  );
  static getScreenSize(BuildContext context) => MediaQuery.of(context).size;
}

class TheScreen extends StatelessWidget {
  const TheScreen({
    required this.child,
    this.alignment = Alignment.center,
    Key? key
  }) : super(key: key);

  final Alignment alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      height: screen.height - (Theme.of(context).appBarTheme.toolbarHeight?.toDouble() ?? 0),
      alignment: alignment,
      child: child,
    );
  }
}