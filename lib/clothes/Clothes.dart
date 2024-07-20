
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../itemscreen.dart';
import '../wish.dart';
import 'clothes product detail.dart';
import 'clothes product image slider.dart';


class Clothes extends StatelessWidget {

  var pNames=[
    "White T-Shirt",
    "T-Shirt",
    "Shirt",
    "Black T-Shirt",
    "Skull T-Shirt",
    "Star-War T-Shirt"

  ];
  var prices = ['10.0', '20.0', '25.0','20.0','20.0','21.0'];
  var discount=['20.0','25.0','30.0','28.0','24.0','24.0'];

  @override
  Widget build(BuildContext context) {
    final WishlistController _controllera = Get.put(WishlistController(),permanent: true);

    return

      Scaffold(appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Clothes'),centerTitle: true,elevation: 10,),
        body: SingleChildScrollView(
          child: GridView.builder(
              itemCount: pNames.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap:true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:0.7,
                crossAxisCount: 2,
              ), itemBuilder: (context,index){
            final product = Product(
              name: pNames[index],
              price: double.parse(prices[index]),
              image: "images/${pNames[index]}.png",
            );
            return
              InkWell(onTap: (){
                if (index == 0) {
                  Get.to(() => ClothesItemScreen1());
                } else if (index == 1) {
                  Get.to(() => ClothesItemScreen2());
                }else if (index == 2) {
                  Get.to(() => ClothesItemScreen3());
                }else if (index == 3) {
                  Get.to(() => ClothesItemScreen4());
                }else if (index == 4) {
                  Get.to(() => ClothesItemScreen5());
                }else if (index == 5) {
                  Get.to(() => ClothesItemScreen6());
                }

              },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFD4ECF7),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2
                        )
                      ]
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text('30% off',style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),),

                            ),
                            Obx(
                                  () => IconButton(
                                onPressed: () {
                                  if (index == 0) {
                                    _controllera.addToWishlist(product);
                                  } else if (index == 1) {
                                    _controllera.addToWishlist(product);
                                  }else if (index == 2) {
                                    _controllera.addToWishlist(product);
                                  }else if (index == 3) {
                                    _controllera.addToWishlist(product);
                                  }else if (index == 4) {
                                    _controllera.addToWishlist(product);
                                  }else if (index == 5) {
                                    _controllera.addToWishlist(product);
                                  }
                                },
                                icon: Icon(
                                  _controllera.isWishlistItem(product)
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.redAccent,
                                ),
                              ),
                            )                        ],
                        ),
                        SizedBox(height: 0,),
                        Padding(padding: EdgeInsets.all(10),

                          child:
                          Image.asset("images/${pNames[index]}.png",
                            height: 90,
                            width: 90,

                          ),
                        ),
                        SizedBox(height: 5,),
                        Padding(padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pNames[index],
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('\$${prices[index]}',style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Colors.redAccent
                                  ),),
                                  SizedBox(width: 5,),
                                  Text('\$${discount[index]}',style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.4)
                                  ),),
                                ],
                              )
                            ],
                          ),)
                      ],
                    ),
                  ),
                ),
              );
          }),
        ),
      );
  }
}

class ClothesItemScreen1 extends StatelessWidget {
  ClothesItemScreen1({super.key, });
  final ControllerA cA = Get.put(ControllerA(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              child: Stack(
                children: [
                  Center(child: ClothesProduct_image_slider1(),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15,top: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                        size: 25,),
                    ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('White T-Shirt',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating:4.5,
                        minRating: 1,
                        direction:Axis.horizontal,
                        allowHalfRating:true,
                        itemCount:5,
                        itemSize:25,
                        itemBuilder:(context,_) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate:(rating){},
                      ),
                      SizedBox(width: 5,),
                      Text('(450)')
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('\$10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$20',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('White T-Shirt',style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,)
                ],
              ),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFD4ECF7)
                    ),
                    child:Center(
                      child: Icon(Icons.shopping_cart_rounded,
                        color: Colors.redAccent,
                        size: 30,),
                    )
                ),

              ),
              ClothesProductDetailPopUp()]
        ),
      ),
    );
  }
}

// ItemScreen 2


class ClothesItemScreen2 extends StatelessWidget {
  const ClothesItemScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              child: Stack(
                children: [
                  Center(child: ClothesProduct_image_slider2(),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15,top: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                        size: 25,),
                    ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('T-Shirt',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating:4.5,
                        minRating: 1,
                        direction:Axis.horizontal,
                        allowHalfRating:true,
                        itemCount:5,
                        itemSize:25,
                        itemBuilder:(context,_) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate:(rating){},
                      ),
                      SizedBox(width: 5,),
                      Text('(450)')
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('\$20',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$25',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('T-Shirt',style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,)
                ],
              ),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFD4ECF7)
                  ),
                  child:Center(
                    child: Icon(Icons.shopping_cart_rounded,
                      color: Colors.redAccent,
                      size: 30,),
                  )
              ),
            ),
            ClothesProductDetailPopUp1()
          ],
        ),
      ),
    );
  }
}


//  ItemScreen 3




class ClothesItemScreen3 extends StatelessWidget {
  const ClothesItemScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              child: Stack(
                children: [
                  Center(child: ClothesProduct_image_slider3(),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15,top: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                        size: 25,),
                    ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shirt',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating:4.5,
                        minRating: 1,
                        direction:Axis.horizontal,
                        allowHalfRating:true,
                        itemCount:5,
                        itemSize:25,
                        itemBuilder:(context,_) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate:(rating){},
                      ),
                      SizedBox(width: 5,),
                      Text('(450)')
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('\$25',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$30',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Shirt',style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,)
                ],
              ),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFD4ECF7)
                  ),
                  child:Center(
                    child: Icon(Icons.shopping_cart_rounded,
                      color: Colors.redAccent,
                      size: 30,),
                  )
              ),
            ),
            ClothesProductDetailPopUp2()
          ],
        ),
      ),
    );
  }
}



// ItemScreen 4



class ClothesItemScreen4 extends StatelessWidget {
  ClothesItemScreen4({super.key, });
  final ControllerA cA = Get.put(ControllerA());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              child: Stack(
                children: [
                  Center(child: ClothesProduct_image_slider4(),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15,top: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                        size: 25,),
                    ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Black T-Shirt',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating:4.5,
                        minRating: 1,
                        direction:Axis.horizontal,
                        allowHalfRating:true,
                        itemCount:5,
                        itemSize:25,
                        itemBuilder:(context,_) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate:(rating){},
                      ),
                      SizedBox(width: 5,),
                      Text('(650)')
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('\$20',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$24',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Black T-Shirt',style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,)
                ],
              ),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFD4ECF7)
                    ),
                    child:Center(
                      child: Icon(Icons.shopping_cart_rounded,
                        color: Colors.redAccent,
                        size: 30,),
                    )
                ),

              ),
              ClothesProductDetailPopUp3()
            ]
        ),
      ),
    );
  }
}


// Item Screen 5



class ClothesItemScreen5 extends StatelessWidget {
  const ClothesItemScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              child: Stack(
                children: [
                  Center(child: ClothesProduct_image_slider5(),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15,top: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                        size: 25,),
                    ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Skull T-Shirt',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating:4.5,
                        minRating: 1,
                        direction:Axis.horizontal,
                        allowHalfRating:true,
                        itemCount:5,
                        itemSize:25,
                        itemBuilder:(context,_) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate:(rating){},
                      ),
                      SizedBox(width: 5,),
                      Text('(450)')
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('\$20',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$24',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Skull T-Shirt',style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,)
                ],
              ),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFD4ECF7)
                  ),
                  child:Center(
                    child: Icon(Icons.shopping_cart_rounded,
                      color: Colors.redAccent,
                      size: 30,),
                  )
              ),
            ),
            ClothesProductDetailPopUp4()
          ],
        ),
      ),
    );
  }
}

// ItemScreen 6




class ClothesItemScreen6 extends StatelessWidget {
  const ClothesItemScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),
              child: Stack(
                children: [
                  Center(child: ClothesProduct_image_slider6(),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15,top: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                        size: 25,),
                    ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Star-War T-Shirt',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating:4.5,
                        minRating: 1,
                        direction:Axis.horizontal,
                        allowHalfRating:true,
                        itemCount:5,
                        itemSize:25,
                        itemBuilder:(context,_) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate:(rating){},
                      ),
                      SizedBox(width: 5,),
                      Text('(479)')
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('\$21',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$24',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Star-War T-Shirt',style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,)
                ],
              ),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFD4ECF7)
                  ),
                  child:Center(
                    child: Icon(Icons.shopping_cart_rounded,
                      color: Colors.redAccent,
                      size: 30,),
                  )
              ),
            ),
            ClothesProductDetailPopUp5()
          ],
        ),
      ),
    );
  }
}