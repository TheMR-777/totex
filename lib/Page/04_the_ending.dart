import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:wp_01_main_screen/sources.dart';

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
    _controller = VideoPlayerController.network(
      'https://vod-progressive.akamaized.net/exp=1672171044~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4827%2F15%2F399139457%2F1701868879.mp4~hmac=2264f31ff1ecec01f4a15d70d570df1679759b93d6f22372610a1e29206166d1/vimeo-prod-skyfire-std-us/01/4827/15/399139457/1701868879.mp4',
    )..initialize().then((_) {
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
            flex: 3,
            child: VideoPlayer(_controller)
        ),    // Video
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
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
          flex: 2,
          child: Image.asset(
            "assets/the_divider.png",
            width: 250,
            color: Colors.grey.shade600,
          ),
        ),    // Divider
        Flexible(
          child: Text(
            "Thank You!",
            style: GoogleFonts.greatVibes(
              fontSize: 40,
            ),
          )
        ),    // Thank You
        Flexible(
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
