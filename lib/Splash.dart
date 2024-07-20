
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'NAvi.dart';
import 'WelcomeScreen.dart';

class Controller extends GetxController {
  bool islogedin =false;
  initSharedPrefs() async{
    SharedPreferences preferences =await SharedPreferences.getInstance();
    islogedin = preferences.getBool('islogedin')?? false;

  }
  @override
  void onInit() {
    super.onInit();
    initSharedPrefs();

  }

  _navigateToHome() async {
    await Future.delayed(
      const Duration(seconds: 2),
          () => Get.to(() => islogedin ? NAvi(emailid: 'a') : const WelcomeScreen()),
    );
  }
}
class Splash extends StatelessWidget {
  Splash({super.key});
  final Controller c1 = Get.put(Controller(),permanent: true);





  @override
  Widget build(BuildContext context) {
c1.initSharedPrefs();
    // Call the _navigateToHome method to initiate navigation after a delay
c1._navigateToHome();

    return Scaffold(
      body:
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



      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/desi.png'),
                ),
              ),
            ),
          ),
          Text(
            'Online Shopping Mart',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),)
    );
  }
}
