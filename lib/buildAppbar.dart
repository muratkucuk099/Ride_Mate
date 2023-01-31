import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppbar(BuildContext context, int value) {
  const icon = Icons.person;
  return AppBar(
    centerTitle: true,
    backgroundColor: Color.fromARGB(231, 1, 4, 49),
    title: Text(
      "YAMAHA",
      style: GoogleFonts.fasthand(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    /* leading: BackButton(
      onPressed: () {
        Navigator.pop(context);
      },
    ), */
  );
}
