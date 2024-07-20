import 'dart:io';

import 'package:ecom/wish.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_icons/line_icons.dart';
import 'ScreenPage/Terms_&_condition.dart';
import 'ScreenPage/help&support.dart';
import 'database/databasehelper.dart';
import 'imagepic.dart' as ImagePic;

class Account extends StatelessWidget {
  final ImagePic.ImageController imageController = Get.put(ImagePic.ImageController());

  String? name;
  String? emailid;

  Account({Key? key, required this.emailid})
      : super(key: key) {
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: profile(emailid!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          name = snapshot.data;
          return buildScaffold(context);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        elevation: 0,
        centerTitle: true,
       // backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(ImagePic.Imagepic());
            },
            icon: Icon(Icons.edit_note),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            color: Color(0xff281537),
            margin: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() {
                    return CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.tealAccent,
                      child: ClipOval(
                        child: imageController.imagePath.value.isNotEmpty
                            ? Image.file(
                          File(imageController.imagePath.value),
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        )
                            : Icon(
                          Icons.person,
                          size: 60,
                          //color: Colors.white,
                        ),
                      ),
                    );
                  }),
                  Text('${name ?? ''}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
            //  color: Colors.white,
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  ListTile(
                    //tileColor: Colors.white,
                    leading: Text("Full Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    trailing: Text("Ankit", style: TextStyle(fontSize: 16)),
                  ),
                  Divider(),
                  ListTile(
                    //tileColor: Colors.white,
                    leading: Text("Email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    trailing: Text("${emailid!}", style: TextStyle(fontSize: 16)),
                  ),
                  Divider(),
                  ListTile(
                   // tileColor: Colors.white,
                    leading: Text("Phone Number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    trailing: Text("98725207952", style: TextStyle(fontSize: 16)),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(LineIcons.heart),
                    title: Text('Wishlist', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => Wishlist());
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.headset_mic_outlined),
                    title: Text('Help & Support', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => HelpAndSupportPage());
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.gavel_outlined),
                    title: Text('Legal', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => ());
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.verified_user_outlined),
                    title: Text('Terms & Condition', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => TermsConditionsPage());
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
