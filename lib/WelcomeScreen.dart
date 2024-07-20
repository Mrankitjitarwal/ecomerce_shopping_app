

import 'package:ecom/signin.dart';
import 'package:ecom/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ]
          ),
          image: DecorationImage(image: AssetImage('images/laptop.png'))
        ),
        child: Column(children: [

          Padding(padding: EdgeInsets.all(210)),
          SizedBox(height: 100,),
          Text('Welcome To Desi Mart',style: TextStyle(fontSize: 30,color: Colors.white),),
        SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Get.to(() => LoginPage());
            },
            child:
            SingleChildScrollView(
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white)
                ),

              child:
              SingleChildScrollView(
                child: Center(child:
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Log In',style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),),
              ),
          ),
            ),),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Get.to(() => SignupPage());
            },
            child:Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),

              ),

              child: Center(child: Text('SIGN UP',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),),
            ),)
        ],

        ),
      ),
    );
  }
}
