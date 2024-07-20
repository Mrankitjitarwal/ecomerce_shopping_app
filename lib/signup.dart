
import 'package:ecom/signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'database/databasehelper.dart';
class Controller1 extends GetxController{
  RxBool _obscureText = true.obs;

  bool get obscureText => _obscureText.value;

  ChangetoSignin() {
    Get.to(() => LoginPage());
  }

  void toggleObscureText() {
    _obscureText.toggle();
    print('Password visibility toggled');
  }
}
class SignupPage extends StatelessWidget {
   SignupPage({super.key});

   final Controller1 c1 = Get.put(Controller1(),permanent: true);

    var name = TextEditingController();
    var email = TextEditingController();
    var password = TextEditingController();
    // var confirm_password = TextEditingController();


    Future<void> insertdataintodb( String name, String email,
        String pass,/*String confirm_password*/ ) async {
      Map<String, dynamic> mymap() {
        return {

          'name': name,
          'email': email,
          'password': pass,
          // 'Confirm_password': confirm_password,
        };
      }
      Database db = await DatabaseHelper().db;

      await db.insert('Signup', mymap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      Get.snackbar('Registeration', 'Successfully Register');
      print('Data saved successfully');

    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body:
          Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration:  BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xffB81736),
                          Color(0xff281537),
                        ]
                    )
                ),

                child: Padding(
                  padding: EdgeInsets.only(top: 30,left: 15),
                  child:  Text('Sign up',style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                  ),
                ),

              ),
              Padding(
                padding: EdgeInsets.only(top:100 ,left: 15),
                child: Text('Create an account to get started',style: TextStyle(
                    fontSize: 19,
                    color: Colors.white
                ),),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 210),
                child:  Container(
                  decoration: const BoxDecoration(
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

                          TextField(
                            controller: name,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle),
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label:  Text(
                                'Name',style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),

                              ),
                            )
                          ),
                          const SizedBox(height: 20,),
                          TextField(
                            controller: email,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              // suffixIcon:Icon(Icons.visibility_off,color: Colors.grey,),
                              label:  Text(
                                'Email',style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),

                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextField(
                            controller: password,
                            obscureText: c1.obscureText, // Use c1.obscureText here
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  c1.obscureText ? Icons.visibility_off : Icons.visibility,
                                ),
                                onPressed: () {
                                  c1.toggleObscureText(); //
                                  print('working');// Call the correct function to toggle visibility
                                },
                              ),
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
                          /*   TextField(
                          controller: confirm_password,
                          obscureText: _obscureText,
                          decoration: InputDecoration(

                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText ? Icons.visibility_off : Icons.visibility,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });

                                }),
                            label:  Text(
                              'Confirm Password',style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),

                            ),
                          ),
                        ),*/
                          SizedBox(height: 20,),
                          Container(
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
                            child: Center(
                              child: TextButton(onPressed: (){
                                insertdataintodb(name.text,email.text,password.text,/*confirm_password.text*/);
                                print('Sucessfully Register');
                                name.text="";
                                email.text="";
                                password.text="";
                                // confirm_password.text="";
                              c1.ChangetoSignin()
                                //signup();

                                /* Get.to(LoginPage())*/;
                              }, child:  Text('                    Sign Up                        ',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                              ),),
                              /*child: Text('Sign Up',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white
                          ),
                          ),*/
                            ),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextButton(onPressed: (){
                                 //c1.ChangetoSignin();
                                  Get.to(()=>LoginPage());
                                  /* Get.to(LoginPage());*/
                                }, child: Text("Already have an account?\n                     Log In ",style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 13
                                ),))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          )



      );
  }
  /* void signup() async{
     if( name.text.isNotEmpty*//*&& _passwordController.text=='test'*//**//* && _usernumController.text=='823399****'*//*){
       SharedPreferences prefs =await SharedPreferences.getInstance();
       prefs.setString('usernum', email.text );
       prefs.setString('username', name.text);
       prefs.setString("pas", password.text);
       //Get.snackbar('login success', 'login successfully');
      // Get.snackbar('OTP', 'OTP is : 4657');
       Get.to(LoginPage(tittle: email.text,pas:password.text,nam:name.text));
     }
     else{

       Get.snackbar('login failed', 'Please check your username and password');
     }

   }*/
}
