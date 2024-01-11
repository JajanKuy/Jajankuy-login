// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_app/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/6310507.jpg"
                ),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.1,),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email, color: Colors.black,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.key, color: Colors.black,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
          SizedBox(height: 60,),
          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                    "img/loginbtn.jpg"
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Center(
                child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              )
            ),
          ),
          SizedBox(height: 10,),
          RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Have an account?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500]
              )
            )
          ),
          SizedBox(height:w*0.2),
          RichText(text: TextSpan(
            text: "Sign Up using on the following method",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16
            ),
          ),
        ),
        SizedBox(height:w*0.08),
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 236, 233, 233),
          radius: 35,
          backgroundImage: AssetImage(
            "img/google.png"
          ),
        )
      ]),
    );
  }
}