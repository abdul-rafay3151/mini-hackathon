import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/carts.dart';
import 'package:myapp/info.dart';
import 'package:myapp/measurement.dart';

class ProductsInfo extends StatelessWidget {
  const ProductsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              // width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Bitmap.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 9),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 230),
                    child: Icon(Icons.favorite_outline),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.arrowshape_turn_up_right_fill),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, right: 40),
              child: Text(
                "Perfect Situation White Sleeveless Dress",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, right: 325),
              child: Text(
                "\$ 25.99",
                style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFE2550)),
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Color(0xFFFE2550),
                      indicatorWeight: 5,
                      labelStyle: GoogleFonts.raleway(
                          fontSize: 10, fontWeight: FontWeight.w700),
                      tabs: [
                        Tab(
                          text: "INFO",
                        ),
                        Tab(
                          text: "MEASUREMENTS",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    child: TabBarView(
                      children: [
                        Info(),
                        Measurements(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Carts(),
            ),
          );
        },
        label: Text("Add to Bag"),
        backgroundColor: Color(0xFFFE2550),
      ),
    );
  }
}
