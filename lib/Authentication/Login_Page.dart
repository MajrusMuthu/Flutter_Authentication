// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_authentication/Authentication/Bottons.dart';
import 'package:flutter_authentication/components/Text_Field.dart';
import 'package:flutter_authentication/components/squre_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      //popup the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //wrong email
      if (e.code == 'user not found') {
        //error message
        wrongEmailMessage();
        //wrong Password
      } else if (e.code == 'wrong-password') {
        //error message
        wrongPasswordMessage();
      }
    }
  }

  //wrong email message popup
  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (builder) {
          return const AlertDialog(
            title: Text("Incorrect Email"),
          );
        });
  }

  //wrong Password message popup
  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (builder) {
          return const AlertDialog(
            title: Text("Incorrect Password"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                Icon(Icons.lock, size: 150),
                SizedBox(height: 40),
                Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                ),
                SizedBox(height: 15),
                MyTextField(
                  controller: emailController,
                  hindText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hindText: 'Password',
                  obscureText: true,
                ),
                // SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                MyBotton(
                  onTap: () => signUserIn(),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Or continue with"),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SqureTile(imagePath: 'Images/Google.png'),
                    SizedBox(
                      width: 25,
                    ),
                    SqureTile(imagePath: 'Images/Apple.png'),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
