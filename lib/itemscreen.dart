
import 'package:ecom/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'Productdetail popup.dart';
class ControllerA extends GetxController{
  ChangetoProductdetail() async{
    Get.to(()=> ProductDetailPopUp());
  }
}

class ItemScreen1 extends StatelessWidget {
   ItemScreen1({super.key, });
 final ControllerA cA = Get.put(ControllerA(),permanent: true);

  @override
  Widget build(BuildContext context) {
    final  Price= "140";
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
                  Center(child: Product_image_slider(),
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
                Text('Apple Watch Series 6',style: TextStyle(
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
                    Text('\$$Price',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22 ,
                    ),),
                    SizedBox(width: 5,),
                    Text('\$200',style: TextStyle(
                      color: Colors.black45,
                      decoration:TextDecoration.lineThrough
                    ),)
                  ],
                ),
                SizedBox(height: 20,),
                Text('Apple Watch ',style: TextStyle(fontSize: 16),
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
                  ProductDetailPopUp()]
              ),
            ),
    );
  }
}

// ItemScreen 2


class ItemScreen2 extends StatelessWidget {
  const ItemScreen2({super.key});

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
                  Center(child: Product_image_slider2(),
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
                  Text('White Tshirt',style: TextStyle(
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
                      Text('\$40',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$60',style: TextStyle(
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
        ProductDetailPopUp1()
          ],
        ),
      ),
    );
  }
}


//  ItemScreen 3




class ItemScreen3 extends StatelessWidget {
  const ItemScreen3({super.key});

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
                  Center(child: Product_image_slider3(),
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
                  Text('Warm Zipper',style: TextStyle(
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
                      Text('\$40',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$60',style: TextStyle(
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
            ProductDetailPopUp2()
          ],
        ),
      ),
    );
  }
}



// ItemScreen 4



class ItemScreen4 extends StatelessWidget {
  ItemScreen4({super.key, });
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
                  Center(child: Product_image_slider(),
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
                  Text('Ear HeadPhone',style: TextStyle(
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
                      Text('\$70',style: TextStyle(
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
                  Text('Ear HeadPhone',style: TextStyle(fontSize: 16),
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
              ProductDetailPopUp3()
            ]
        ),
      ),
    );
  }
}


// Item Screen 5



class ItemScreen5 extends StatelessWidget {
  const ItemScreen5({super.key});

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
                  Center(child: Product_image_slider3(),
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
                  Text('Warm Zipper',style: TextStyle(
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
                      Text('\$40',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$60',style: TextStyle(
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
            ProductDetailPopUp4()
          ],
        ),
      ),
    );
  }
}

// ItemScreen 6




class ItemScreen6 extends StatelessWidget {
  const ItemScreen6({super.key});

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
                  Center(child: Product_image_slider4(),
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
                      Text('\$50',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22 ,
                      ),),
                      SizedBox(width: 5,),
                      Text('\$60',style: TextStyle(
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
            ProductDetailPopUp5()
          ],
        ),
      ),
    );
  }
}