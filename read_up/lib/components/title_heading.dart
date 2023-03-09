import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHeading extends StatelessWidget {
  String title;
  TitleHeading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.alice(
            textStyle: Theme.of(context).textTheme.headline5,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Icon(
          Icons.hdr_strong,
          size: 12,
        )
      ],
    );
  }
}
