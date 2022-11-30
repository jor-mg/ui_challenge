import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color.fromARGB(255, 255, 119, 46);

class ButtonCustomWidget extends StatelessWidget {
  final Widget widget;

  const ButtonCustomWidget({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 40.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 126, 6).withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget,
              ));
        },
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          'Get Started',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            height: 1,
          ),
        ),
      ),
    );
  }
}
