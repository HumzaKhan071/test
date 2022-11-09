import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContainer extends StatelessWidget {
  final String title;

  const MyContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xffD7E9ED), borderRadius: BorderRadius.circular(9)),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.manrope(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
