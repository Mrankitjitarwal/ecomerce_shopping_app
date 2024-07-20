
import 'package:ecom/signup.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'NAvi.dart';
import 'database/databasehelper.dart';

class Controller2 extends GetxController{

 /* ChangetoNAvi() async{
    Get.to(() => NAvi(emailid: email,));
  }*/
  ChangetoLSignup() async{
    Get.to(() => SignupPage());
  }
  final RxBool obscureText = RxBool(true);




  /*void toggleObscureText() {
    _obscureText.toggle();
    update();
    print('push');
  }*/

}
class LoginPage extends StatelessWidget {

  LoginPage({super.key, });
  //final _formFeild = GlobalKey<FormState>();
  final Controller2 c2 = Get.put(Controller2(),permanent: true);
 final  email = TextEditingController();
  var password = TextEditingController();

  void _handleLogin(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Get.defaultDialog(
        title: "Login Failed",
        middleText: "Please Enter Email and Password",
        backgroundColor: Color(0xffB81736),
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color: Colors.white),
      );
      return; // Exit the function if email or password is empty
    }

    Database db = await DatabaseHelper().db;
    List<Map> result = await db.query(
      'Signup',
      where: 'email =? AND password =?',
      whereArgs: [email, password],
    );

    if (result.isNotEmpty) {
      Get.to(()=>NAvi(emailid: email));
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setBool('islogedin', true);
      print('fdssd');

    } else {
      print('sd');
      Get.defaultDialog(
        title: "Login Failed",
        middleText: "Invalid Email or Password",
        backgroundColor: Color(0xff281537),
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color: Colors.white),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:
        Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration:
              BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xffB81736),
                      Color(0xff281537),
                    ]
                ),


              ),

              child: Padding(
                padding: EdgeInsets.only(top: 30,left: 15),
                child:  Text('Log in',style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                ),
              ),

            ),
            const Padding(
              padding: EdgeInsets.only(top:100 ,left: 15),
              child: Text('Hey there! Welcome back',style: TextStyle(
                  fontSize: 19,
                  color: Colors.white
              ),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 210),
              child:  Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    ),
                    color: Colors.white
                ),
                height: double.infinity,
                width: double.infinity,
                child:
                SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.only(top: 80,left: 10,right: 10),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            focusColor: Colors.cyan,
                            fillColor: Colors.black,
                            prefixIcon: Icon(Icons.mail),
                            suffixIcon: Icon(Icons.check,color: Colors.grey,),
                            label:  Text(
                              'Email',style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value == null) {
                              return "Please Enter The Email ID";
                            }
                            String emailValue = value.toString(); // Convert to string if necessary
                            bool emailValid = RegExp(r"^a-zA-Z0-9.!#$%&*'+-=_?/{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailValue);
                            if (emailValue.isEmpty) {
                              return "Please Enter The Email ID";
                            } else if (!emailValid) {
                              return "Please Enter Valid Email ID";
                            }
                            return null; // Return null if validation passes
                          },
                        ),
                        const SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: password,
                      obscureText: c2.obscureText.value,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon:Obx(() =>  IconButton(
                          icon: Icon(
                            c2.obscureText.value ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            print('onpressed working');
                            c2.obscureText.toggle(

                            );
                          },
                        ),),
                        label: Text(
                          'Password',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                        SizedBox(height: 20,),
                        InkWell(
                          onTap: () {
                                _handleLogin( email.text, password.text);
                          },
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffB81736),
                                  Color(0xff281537),
                                ],

                              ),

                            ),
                            child:
                            Center(
                              child: Text('                    Log In                        ',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                              ),
                            ),),

                          ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 700,),
            Align(
              alignment: Alignment.bottomRight,
              child:
              Padding(
                padding: const EdgeInsets.only(top: 530),
                child: Column(
                  children: [
                    TextButton(onPressed: (){
                      c2.ChangetoLSignup();
                    }, child: const Text("Don't have account?\n                     Sign Up ",style: TextStyle(
                        color: Colors.red,
                        fontSize: 13
                    ),))
                  ],
                ),
              ),
            ),

          ],
        )



    );
  }
  /*void login() async {
    if (email == email.text) {

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email.text);
      Get.snackbar('login success', 'login successfully');
      Get.to(NAvi(emailid: "emailid"));
    }
    else {
      Get.snackbar('login failed', 'Invalid Otp');

    }
  }*/
}




