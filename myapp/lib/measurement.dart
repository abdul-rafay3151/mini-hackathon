import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/material.dart';

class Measurements extends StatelessWidget {
  const Measurements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 70),
            child: Row(
              children: [
                Text(
                  "Waist",
                  style: GoogleFonts.raleway(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text(
                    "Length",
                    style: GoogleFonts.raleway(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text(
                    "Breadth",
                    style: GoogleFonts.raleway(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9, left: 40),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Center(
                    child: Text(
                      "43",
                      style: GoogleFonts.raleway(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: Center(
                      child: Text(
                        "34",
                        style: GoogleFonts.raleway(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: Center(
                      child: Text(
                        "76",
                        style: GoogleFonts.raleway(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9, left: 9),
            child: Row(
              children: [
                Text(
                  "Color :",
                  style: GoogleFonts.raleway(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF363641),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFEFE8D8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF43163A),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: ListTile(
                      leading: Text("1"),
                      trailing: Icon(CupertinoIcons.arrow_down),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 100),
            child: Text(
              "Do you want to use this material",
              style: GoogleFonts.raleway(
                  fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 9),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 80,
                  color: Color(0xFFFE2550),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Yes",
                      style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 40,
                    width: 80,
                    color: Colors.white,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Materiall(),
                          ),
                        );
                      },
                      child: Text(
                        "No",
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              // color: Colors.amber,
              child: ListTile(
                leading: Text(
                  "Total ",
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                title: Text(
                  "\$25.99 ",
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFE2550)),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
