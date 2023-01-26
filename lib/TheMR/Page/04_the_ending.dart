import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import '../sources.dart';

class TheEnding extends StatefulWidget {
  const TheEnding({Key? key}) : super(key: key);

  @override
  State<TheEnding> createState() => _TheEndingState();
}

class _TheEndingState extends State<TheEnding> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/vid.mp4")..initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TheScreen(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: 15,
            child: _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : Image.asset("assets/vid_alt.png"),
        ),    // Video
        Flexible(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\"The best thing is to look natural, but it takes makeup to look natural\"",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontStyle: FontStyle.italic
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  " — Calvin Klein",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),    // Quote
        Flexible(
          flex: 1,
          child: Image.asset(
            "assets/the_divider.png",
            color: Colors.grey.shade600,
          ),
        ),    // Divider
        Flexible(
          flex: 5,
          child: Text(
            "Thank You!",
            style: GoogleFonts.greatVibes(
              fontSize: 40,
            ),
          )
        ),    // Thank You
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.black,
            child: Center(
              child: Text(
                "ABOUT US",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),    // About Us
      ],
    ),
  );
}
