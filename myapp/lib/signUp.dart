import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  var email = TextEditingController();
  var pass = TextEditingController();

  register(context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: pass.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        register(context);
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
                        "Sign Up",
                        style: GoogleFonts.roboto(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
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
