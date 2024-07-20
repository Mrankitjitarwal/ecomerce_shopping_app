
import 'package:ecom/wish.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'Account.dart';
import 'CartScreen.dart';
import 'Home_Screen.dart';
import 'database/databasehelper.dart';

class Controllerz extends GetxController {
  RxInt selectedIndex = 0.obs;
  static Controllerz get to => Get.find<Controllerz>();
}

class NAvi extends StatelessWidget {
  String? name;
  String? emailid;

  NAvi({Key? key, String? emailid}) : super(key: key) {
    this.emailid = emailid;
    initializeWidgetOptions();
  }

  List _widgetOption = [];

  Future<String?> profile(String email) async {
    final db1 = await DatabaseHelper().db;
    final result = await db1.query(
      'Signup',
      columns: ['name'],
      where: 'email = ?',
      whereArgs: [email],
    );

    if (result.isNotEmpty) {
      return result.first['name'] as String?;
    } else {
      return null;
    }
  }

  void getname() async {
    print('Email Id $emailid');
    if (emailid != null) {
      name = (await profile('$emailid')) ?? '';
      if (name != "") {
        print('Name for : $name');
        initializeWidgetOptions();
      } else {
        print('No user found with email: $emailid');
      }
    }
  }

  void initializeWidgetOptions() {
    _widgetOption = [
      HomeScreen(emailid: emailid),
      Wishlist(),
      CartScreen(),
      Account(emailid: emailid),
    ];
  }

  @override
  Widget build(BuildContext context) {
    getname();
    final Controllerz c3 = Get.put(Controllerz(),permanent: true);

    return Scaffold(
      body: _widgetOption.isNotEmpty
          ? Obx(() => _widgetOption[c3.selectedIndex.value % _widgetOption.length])
          : Container(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: context.theme.bottomNavigationBarTheme.backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
        child: ScaffoldMessenger(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,
              tabs: [
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.heart, text: 'Wishlist'),
                GButton(icon: LineIcons.shoppingCart, text: 'Cart'),
                GButton(icon: LineIcons.user, text: 'Account'),
              ],

              onTabChange: (index) {
                c3.selectedIndex.value = index;
              },
            ),
          ),
        ),
      ),
    );
  }
}
