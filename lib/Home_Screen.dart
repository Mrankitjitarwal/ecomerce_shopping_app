
import 'package:ecom/popular.dart';
import 'package:ecom/search.dart';
import 'package:ecom/wish.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Account.dart';

import 'CartScreen.dart';
import 'ScreenPage/privacy & policy.dart';
import 'WelcomeScreen.dart';
import 'categories.dart';
import 'clothes/Clothes.dart';
import 'Shoe Screen/Shoes.dart';

import 'database/databasehelper.dart';
import 'GridItems.dart';
import 'Drinks/drinks.dart';
import 'itemscreen.dart';

class HomeScreen extends StatelessWidget {
  String? name;
  String? emailid;

  HomeScreen({Key? key,required this.emailid }) : super(key: key){
  this.emailid = emailid ?? '';
  }

  Future<List<Map<String, dynamic>>> getData() async {
    final db1 = await DatabaseHelper().db;
    return await db1.query('Signup');
  }

  Future<String?> profile(String email) async {
    final db1 = await DatabaseHelper().db;
    final result = await db1.query(
      'Signup',
      columns: ['name'],
      where: 'email = ?',
      whereArgs: [email],
    );

    if (result.isNotEmpty) {
      return result.first['name'] as String;
    } else {
      return null;
    }
  }

  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('islogedin');
    Get.to(() => WelcomeScreen());
    Get.snackbar('logout success', 'logout successfully');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: profile(emailid!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          name = snapshot.data;
          return buildScaffold(context);
        } else {
          // Show a loading indicator or some placeholder
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
     @override
     Scaffold buildScaffold(BuildContext context) {
    // getname();
     List<Color> Clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255,36, 131, 233),
      Color.fromARGB(255,63,208,143),
    ];
    var imagelist=[
      'images/slide1.png',
      'images/slide3.png',
      'images/slide4.png'
    ];
    var iconimagelist=[
      'images/drink.png',
      'images/Shirt.png',
      'images/Nike AirMax.png',
      'images/Electronics.png',
      'images/Groceries.png',
      'images/Home Appliances.png',
      'images/Laptops.png',
      'images/Stationaries.png'
    ];
   var cate =['Drinks','Clothes','Shoes','Electronics','Groceries','Home App.','Laptops','Stationary'];
    return
      Scaffold(drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName:Text(name??''),
                accountEmail: Text(emailid!)),
            InkWell(onTap: (){Get.to(()=>HomeScreen(emailid: emailid,));},
              child: ListTile(leading:
              Icon( LineIcons.home,),
                title: Text('HomePage'),),
            ), InkWell(onTap: (){Get.to(()=>Wishlist());},
              child: ListTile(leading:
              Icon( LineIcons.heart,),
                title: Text('Wishlist'),),
            ),
            InkWell(onTap: (){Get.to(()=>CartScreen());},
              child: ListTile(leading:
              Icon( LineIcons.shoppingCart),
                title: Text('Cart'),),
            ),
            InkWell(onTap: (){Get.to(()=>Account(emailid: emailid,));},
              child: ListTile(leading:
              Icon( LineIcons.user,),
                title: Text('Account'),),
            ),
            InkWell(onTap: (){Get.to(()=> PrivacyPolicyPage()
             );},
              child: ListTile(leading:
               Icon(Icons.privacy_tip_rounded),
              title: Text('Privacy & Policy'),),
            ),
            InkWell(onTap: (){
              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
              child: ListTile(leading:
              Icon(
                Get.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              ),
                title: Text("Theme"),),
            ),
            InkWell(onTap: (){
              _logout();
            },
              child: ListTile(leading:
              Icon(Icons.logout),
                title: Text('Log Out'),),
            ),

          ],
        ),
      ),
        appBar: AppBar(elevation: 0,

          actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Get.to(()=>SearchPage());
            },
          ),
        ],),
        body:
         SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                  child:
                  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hello ${name}', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 5,),
                            Text("Let's get somethings?", style: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                            ),
         )
                          ],
                        )

                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      for(int i=0;i<3;i++)
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 10),
                         width: MediaQuery.of(context).size.width/1.5,
                          height: MediaQuery.of(context).size.height/5.5,
                          decoration: BoxDecoration(
                            color: Clrs[i],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Get 30% off on Winter Collection',style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white
                                  ),),
                                  Container(width: 90,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                    child: InkWell(
                                      onTap: (){

                                      },
                                      child: Center(
                                        child: Text('Get Now',style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              Image.asset(
                                imagelist[i],
                                height: 180,
                                width: 110,
                              )
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    TextButton(onPressed: (){
                      Get.to(()=>Categories());
                    }, child: Text('View all>>',style: TextStyle(
                      color: Colors.black54,
                    ),))

                  ],
                ),),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        for(var i=0;i<4;i++)
                          InkWell(onTap: (){
                            if (i == 0) {
                              Get.to(() => Drinks());
                            } else if (i == 1) {
                              Get.to(() => Clothes());
                            }else if (i == 2) {
                              Get.to(() => Shoes());
                            }else if (i == 3) {
                              Get.to(() => ItemScreen4());
                            }
                          },
                            child: Container(
                              height:85,
                              width: 80,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color(0xFFD4ECF7),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    spreadRadius: 2
                                  )
                                ]
                              ),

                            child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                  Image.asset(
                      iconimagelist[i],
                      height: 65,
                      width: 65,
                  ), Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(cate[i],style: TextStyle(
                                      fontSize: 15,
                                   // color: Theme.of(context).textTheme.bodyText1?.color,
                                  ),),

                                ],
                              )),
                            ],
                            ),

                            ),
                          )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                      TextButton(onPressed: (){
                        Get.to(()=>Popular());
                      }, child: Text('View all>>',style: TextStyle(
                        color: Colors.black54,
                      ),))

                    ],
                  ),),
                GridItems()
              ],
            ),
        ),
      );
  }
}



