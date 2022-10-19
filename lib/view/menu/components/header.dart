import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignotus/core/app_constants.dart';

class Header extends StatelessWidget {
  final String headerText;

  const Header({
    Key? key,
    required this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: padding_25),
        child: Text(
          headerText,
          style: GoogleFonts.bebasNeue(fontSize: fontSize_56),
        ),
      ),
    );
  }
}
