import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/second.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    "No",
                    style: GoogleFonts.raleway(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "2",
                    style: GoogleFonts.abrilFatface(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 50),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "Featured",
                  style: GoogleFonts.raleway(
                      color: Color(0xFFFE2550),
                      fontWeight: FontWeight.w800,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Text(
                  "Tailored",
                  style: GoogleFonts.abrilFatface(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Jimmy Chuka",
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "exploring new Spring",
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 225, bottom: 10),
                child: Text(
                  "sweater collection",
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: 75,
                  width: 400,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Shop Now",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: Colors.white, style: BorderStyle.solid),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
