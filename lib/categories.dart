import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'clothes/Clothes.dart';

import 'Drinks/drinks.dart';
import 'Shoe Screen/Shoes.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {

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
    var cate =['Drinks','Clothes','Shoes','Electronics','Groceries','Home Appliances','Laptops','Stationaries'];

    return Scaffold(appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
      size: 25,), onPressed: () {   Navigator.pop(context); },),
      title: Text('Categories'),centerTitle: true,elevation: 10,),
    body:     Padding(
      padding: const EdgeInsets.only(top: 12,bottom: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Column(
            children: [
              for(var i=0;i<8;i++)
                InkWell( onTap: (){
    if (i == 0) {
    Get.to(() => Drinks());
    } else if (i == 1) {
    Get.to(() => Clothes());
    }else if (i == 2) {
    Get.to(() => Shoes());
    }else if (i == 3) {
    Get.to(() => Drinks());
    }else if (i == 4) {
    Get.to(() => Drinks());
    }else if (i == 5) {
    Get.to(() => Drinks());
    }else if (i == 6) {
      Get.to(() => Drinks());
    }else if (i == 7) {
      Get.to(() => Drinks());
    }
    },
                  child: Container(
                    height:85,
                    width: 4000,
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

                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      SizedBox(width: 30,),
                        Image.asset(

                          iconimagelist[i],
                          height: 75,
                          width: 95,
                        ),
                        Expanded(child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(cate[i],style: TextStyle(
                                fontSize: 23,
                                color: Colors.black,
                            ),),

                          ],
                        )),
                      ],
                    ),

                          )
      ),]
          ),
        ),
      ),
    ),
    );
  }
}
