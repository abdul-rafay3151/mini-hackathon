import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/infoProducts.dart';
import 'package:myapp/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            height: 122,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ListTile(
                title: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Top",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.cancel),
                    ),
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "5182 Items found for Top",
                style: GoogleFonts.raleway(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductsInfo(),
                      ),
                    );
                  },
                  child: Container(
                    width: 170,
                    height: 210,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Bitmap.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 170,
                  height: 210,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Bitmap2.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          "\$ 25.99",
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFE2550),
                          ),
                        ),
                        trailing: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "White Strap Plunge Top",
                            style: GoogleFonts.raleway(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          "\$ 25.99",
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFE2550),
                          ),
                        ),
                        trailing: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Grey winter cardigan",
                            style: GoogleFonts.raleway(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 210,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Bitmap3.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 170,
                  height: 210,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Bitmap4.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          "\$ 25.99",
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFE2550),
                          ),
                        ),
                        trailing: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "White Strap Plunge Top",
                            style: GoogleFonts.raleway(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          "\$ 25.99",
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFE2550),
                          ),
                        ),
                        trailing: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Grey winter cardigan",
                            style: GoogleFonts.raleway(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
