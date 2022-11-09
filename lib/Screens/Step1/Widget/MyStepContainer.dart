import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/utils.dart';

class MyStepContainer extends StatefulWidget {
  final String image;
  final String text;

  const MyStepContainer({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  State<MyStepContainer> createState() => _MyStepContainerState();
}

class _MyStepContainerState extends State<MyStepContainer> {
  bool press = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: press ? greyBluish : blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {
        setState(() {
          press = !press;
        });
      },
      child: Container(
        height: 55,
        width: 158,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.image),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.text,
              style: GoogleFonts.manrope(
                  color: press ? Color(0xff73858F) : Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
