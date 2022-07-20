import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Materiall extends StatefulWidget {
  @override
  State<Materiall> createState() => _MateriallState();
}

class _MateriallState extends State<Materiall> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          "Specify Material",
          style: GoogleFonts.abrilFatface(
              fontSize: 26, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Text(
                    productList[index],
                    style: GoogleFonts.raleway(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                selectedColor: Color(0xFFFE2550),
                selected: index == _selectedIndex,
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ],
          );
        },
      ),
      bottomSheet: Container(
        height: 210,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Text(
                "Enter The Color",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 85),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF363641),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFEFE8D8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF43163A),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF00AEFF),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFFC8233),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120, top: 10),
              child: Text(
                "Enter The Color",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF8F8F8)),
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "5", border: InputBorder.none),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 49,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Done",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(primary: Color(0xFFFE2550)),
              ),
            )
          ],
        ),
      ),
    );
  }

  List productList = [
    "Lace",
    "Ankara",
    "Guinea",
    "Linen",
    "Silk",
    "Wool",
    "Cotton",
  ];
}
