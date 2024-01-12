// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:firebase_app/auth_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          SizedBox(height: 70,),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                  ),
                Text(
                    email,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black54
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 250,),
          GestureDetector(
            onTap: (){
              AuthController.instance.logOut();
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
                    "Sign Out",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              )
            ),
          ),
      ]),
    );
  }
}