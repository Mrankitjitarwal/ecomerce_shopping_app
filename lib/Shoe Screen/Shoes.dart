
import 'package:ecom/Shoe%20Screen/shoe%20product%20Detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../Productdetail popup.dart';
import '../itemscreen.dart';
import '../wish.dart';
import 'Shoe Product image slider.dart';

class Shoes extends StatelessWidget {

  var pNames=[
    "Hurrican Shoe",
    "Puma Shoe",
    "Shoe",
    "Nike AirMax",
    "Fashion Shoe",
    "Nike Shoe",

  ];
  var prices = ['85.0', '83.0', '80.0', '75.0','80.0','90.0'];
  var discount=['90.0','90.0','95.0','86.0','88.0','104.0'];

  @override
  Widget build(BuildContext context) {
    final WishlistController _controllera = Get.put(WishlistController(),permanent: true);

    return

      Scaffold(appBar: AppBar(title: Text('Shoes'),centerTitle: true,elevation: 10,),
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
                  Get.to(() => ShoeItemScreen1());
                } else if (index == 1) {
                  Get.to(() => ShoeItemScreen2());
                }else if (index == 2) {
                  Get.to(() => ShoeItemScreen3());
                }else if (index == 3) {
                  Get.to(() => ShoeItemScreen4());
                }else if (index == 4) {
                  Get.to(() => ShoeItemScreen5());
                }else if (index == 5) {
                  Get.to(() => ShoeItemScreen6());
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



class ShoeItemScreen1 extends StatelessWidget {
  ShoeItemScreen1({super.key, });


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
                  Center(child: ShoeProduct_image_slider(),
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
                  Text('Hurrican Shoe',style: TextStyle(
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
                      Text('\$85',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$90',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Hurrican Shoe',style: TextStyle(fontSize: 16),
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
              ShoeProductDetailPopUp()]
        ),
      ),
    );
  }
}

// ItemScreen 2


class ShoeItemScreen2 extends StatelessWidget {
  const ShoeItemScreen2({super.key});

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
                  Center(child: ShoeProduct_image_slider2(),
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
                  Text('Puma Shoe',style: TextStyle(
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
                      Text('\$83',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$90',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Puma Shoe',style: TextStyle(fontSize: 16),
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
            ShoeProductDetailPopUp1()
          ],
        ),
      ),
    );
  }
}


//  ItemScreen 3




class ShoeItemScreen3 extends StatelessWidget {
  const ShoeItemScreen3({super.key});

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
                  Center(child: ShoeProduct_image_slider3(),
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
                  Text('Shoe',style: TextStyle(
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
                      Text('\$80',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$95',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Shoe',style: TextStyle(fontSize: 16),
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
            ShoeProductDetailPopUp2()
          ],
        ),
      ),
    );
  }
}



// ItemScreen 4



class ShoeItemScreen4 extends StatelessWidget {
  ShoeItemScreen4({super.key, });
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
                  Center(child: ShoeProduct_image_slider4(),
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
                  Text('Nike AirMax Shoe',style: TextStyle(
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
                      Text('\$75',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$86',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Nike AirMax Shoe',style: TextStyle(fontSize: 16),
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
              ShoeProductDetailPopUp3()
            ]
        ),
      ),
    );
  }
}


// Item Screen 5



class ShoeItemScreen5 extends StatelessWidget {
  const ShoeItemScreen5({super.key});

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
                  Center(child: ShoeProduct_image_slider5(),
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
                  Text('Fashion Shoe',style: TextStyle(
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
                      Text('\$80',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$90',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Fashion Shoe',style: TextStyle(fontSize: 16),
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
            ShoeProductDetailPopUp4()
          ],
        ),
      ),
    );
  }
}

// ItemScreen 6




class ShoeItemScreen6 extends StatelessWidget {
  const ShoeItemScreen6({super.key});

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
                  Center(child: ShoeProduct_image_slider6(),
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
                  Text('Nike Shoe',style: TextStyle(
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
                      Text('\$90',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$104',style: TextStyle(
                          color: Colors.black45,
                          decoration:TextDecoration.lineThrough
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Nike Shoe',style: TextStyle(fontSize: 16),
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
            ShoeProductDetailPopUp5()
          ],
        ),
      ),
    );
  }
}