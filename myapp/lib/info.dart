import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 250),
              child: Text(
                "MATERIALS",
                style: GoogleFonts.raleway(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 180),
              child: Text(
                "WASH INSTRUCTIONS",
                style: GoogleFonts.raleway(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 15),
              child: Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the perfect",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
