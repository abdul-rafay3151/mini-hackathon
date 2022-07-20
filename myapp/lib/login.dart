import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/bottomnav.dart';
import 'package:myapp/carts.dart';
import 'package:myapp/products.dart';
import 'package:myapp/signUp.dart';

class Login extends StatelessWidget {
  var email = TextEditingController();
  var pass = TextEditingController();

  signin(context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email.text, password: pass.text);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNav()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, bottom: 30),
            child: Center(
              child: Image.asset(
                'assets/images/Vector (2).png',
                height: 150,
              ),
            ),
          ),
          Container(
            height: 400,
            width: 381,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(27),
              boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 7),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "Your email",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      obscureText: true,
                      controller: pass,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        signin(context);
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
                        "Login",
                        style: GoogleFonts.roboto(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "OR",
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFE2550),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            (10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Login With Google",
                        style: GoogleFonts.roboto(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            (10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
