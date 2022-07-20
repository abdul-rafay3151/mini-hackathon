import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 169),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF27AE60).withOpacity(0.2),
                ),
                child: Center(
                  child: Icon(
                    Icons.check_rounded,
                    color: Color(0xFF27AE60),
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                "Payment Sucessfull",
                style: GoogleFonts.abrilFatface(
                    fontSize: 24, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your Order will be ready in 5 days.",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  "including shipping, more details and",
                  style: GoogleFonts.raleway(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  "options for tracking will be sent to",
                  style: GoogleFonts.raleway(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  "your email",
                  style: GoogleFonts.raleway(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Thanks!!!",
                  style: GoogleFonts.raleway(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 52,
                  width: 228,
                  child: ElevatedButton(
                    onPressed: () {
                      // signin(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFE2550),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          (10),
                        ),
                      ),
                    ),
                    child: Text(
                      "Continue Shopping",
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
