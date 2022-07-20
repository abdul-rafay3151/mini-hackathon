import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Carts extends StatefulWidget {
  const Carts({Key? key}) : super(key: key);

  @override
  State<Carts> createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: ListView(
        children: [
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                leading: Text(
                  "Cart",
                  style: GoogleFonts.abrilFatface(
                      fontSize: 36, fontWeight: FontWeight.w400),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, size: 30),
                  ),
                ),
                trailing: CircleAvatar(backgroundColor: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 40,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
