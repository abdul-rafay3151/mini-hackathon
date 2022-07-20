import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/first.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 10,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.001),
                  child: Row(
                    children: [
                      Text(
                        "No",
                        style: GoogleFonts.raleway(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "1",
                        style: GoogleFonts.abrilFatface(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 50),
                      )
                    ],
                  ),
                ),
                Text(
                  "Featured",
                  style: GoogleFonts.raleway(
                      color: Color(0xFFFE2550),
                      fontWeight: FontWeight.w800,
                      fontSize: 30),
                ),
                Text(
                  "Tailored",
                  style: GoogleFonts.abrilFatface(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      "Jennifer Kingsley",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "exploring the",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
