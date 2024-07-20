
import 'package:ecom/wish.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'itemscreen.dart';

class Popular extends StatelessWidget {

  var pNames=[
    "Apple Watch -M2",
    "White Tshirt",
    "Shoe",
    "Ear Headphone",
    "Warm Zipper",
    "Nike Shoe",

  ];
  var prices = ['140', '30.0', '80.0', '25.0','40.0','90.0'];
  var discount=['200','55.0','95.0','36.0','48.0','104.0'];

  @override
  Widget build(BuildContext context) {
    final WishlistController _controllera = Get.put(WishlistController(),permanent: true);

    return

      Scaffold(appBar: AppBar(title: Text('Popular'),centerTitle: true,elevation: 10,),
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
                  Get.to(() => ItemScreen1());
                } else if (index == 1) {
                  Get.to(() => ItemScreen2());
                }else if (index == 2) {
                  Get.to(() => ItemScreen3());
                }else if (index == 3) {
                  Get.to(() => ItemScreen4());
                }else if (index == 4) {
                  Get.to(() => ItemScreen5());
                }else if (index == 5) {
                  Get.to(() => ItemScreen6());
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
