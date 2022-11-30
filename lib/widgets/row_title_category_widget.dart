import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowTitleCategoryWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const RowTitleCategoryWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            subTitle,
            style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: const Color.fromARGB(255, 255, 119, 46)),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
