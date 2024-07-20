  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:get/get_state_manager/src/simple/get_controllers.dart';
  import 'itemscreen.dart';
  class Product {
    final String name;
    final double price;
    final image;

    Product({required this.name, required this.price,required this.image});


  }
  class WishlistController extends GetxController {
    var wishlist = <Product>[].obs;
    static WishlistController get to => Get.find<WishlistController>();
    void addToWishlist(Product product) {
      if (!wishlist.contains(product)) {
        wishlist.add(product);
        Get.snackbar('Added to Wishlist', '${product.name} added to your wishlist');
      } else {
        Get.snackbar('Already in Wishlist', '${product.name} is already in your wishlist');
      }

    }

    void removeFromWishlist(Product product) {
      wishlist.remove(product);
      Get.snackbar('Removed from Wishlist', '${product.name} removed from your wishlist');
    }
    bool isWishlistItem(index) {
      return wishlist.contains(index);
    }
  }



  class Wishlist extends StatelessWidget {
    final WishlistController _controllera = Get.put(WishlistController(), permanent: true);

    var pNames=[
      "Apple Watch -M2",
      "White Tshirt",
      "Shoe",
      "Ear Headphone",
      "Warm Zipper",
      "Nike Shoe",
      "T-Shirt",
      "Shirt",
      "Black T-Shirt",
      "Skull T-Shirt",
      "Star-War T-Shirt",
      "Hurrican Shoe",
      "Puma Shoe",
      "Nike AirMax",
      "Fashion Shoe",
      "Nike Shoe", "cocacola",
      "pepsi",
      "Thums Up",
      "Thums Up Charge",
      "Yes",
      "Moutn DEW"

    ];
    var prices = ['140', '30.0', '80.0', '25.0','40.0','90.0', '20.0', '25.0','20.0','20.0','21.0','30.0', '80.0', '25.0','40.0','90.0','10.0', '20.0', '25.0','20.0','20.0','21.0'];
    var discount=['200','55.0','95.0','36.0','48.0','104.0','25.0','30.0','28.0','24.0','24.0','55.0','95.0','36.0','48.0','104.0','20.0','25.0','30.0','28.0','24.0','24.0'];

    /*final List<Product> availableProducts = [
      Product(name: '"Apple Watch -M2",', price: 140,image:"images/Apple Watch -M2.png"),
      Product(name: "White Tshirt", price: 30.0,image:"images/Apple Watch -M2.png" ),
      Product(name: "Shoe", price: 80.0,image: "images/Apple Watch -M2.png"),
      Product(name: "Ear Headphone", price: 25.0,image: "images/Apple Watch -M2.png"),
      Product(name: "Warm Zipper", price: 40.0,image: "images/Apple Watch -M2.png"),
      Product(name: "Nike Shoe", price: 90.0,image: "images/Apple Watch -M2.png"),
      // Add more products as needed
    ];*/

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Wishlist'),centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,),
        body: Obx(
              () => _controllera.wishlist.isEmpty
              ? Center(
            child: Text('Your wishlist is empty'),
          )
              : SizedBox(
            height: double.infinity,
            child: ListView.builder(
              itemCount: _controllera.wishlist.length,
              itemBuilder: (context, index) {
               /* final product = Product(
                  name: pNames[index],
                  price: double.parse(prices[index]),
                  image: "images/${pNames[index]}.png",
                );*/
                final product = _controllera.wishlist[index];
                return Container(
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
                                  _controllera.removeFromWishlist(product);
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  _controllera.isWishlistItem(product)
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.redAccent,
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 0,),
                        Padding(padding: EdgeInsets.all(10),

                          child:
                          InkWell(
                            onTap: (){
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
                            child: Image.asset("images/${pNames[index]}.png",
                              height: 90,
                              width: 90,

                            ),
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
                                    fontSize: 20,
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('\$${prices[index]}',style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Colors.redAccent
                                  ),),
                                  SizedBox(width: 5,),
                                  Text('\$${discount[index]}',style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.4)
                                  ),),
                                //  IconButton(onPressed: () => _controllera.removeFromWishlist(product), icon: Icon(Icons.delete),)
                                ],
                              )
                            ],
                          ),)
                      ],
                    ),
                  ),
                );

              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showProductSelectionDialog(context),
          label: Text('Add Product'),
          icon: Icon(Icons.add),
        ),
      );
    }

    Future<void> _showProductSelectionDialog(BuildContext context) async {
      final WishlistController _controllera = Get.put(WishlistController());

      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add Product to Wishlist'),
            content: Container(
              width: 1800,
              child: Column(
                mainAxisSize: MainAxisSize.max, // Set mainAxisSize to min
                children: [
                  Text('Select a product to add to your wishlist:'),
                  SizedBox(height: 10),
                  Container(
                    height: 500, // Set a fixed height for the ListView
                    child: SingleChildScrollView(
                      child: GridView.builder(
                        itemCount: pNames.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.5,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          final product = Product(
                            name: pNames[index],
                            price: double.parse(prices[index]),
                            image: "images/${pNames[index]}.png",
                          );
                          return Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFD4ECF7),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Center(
                                        child: Text(
                                          '30% off',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 2,),
                                      Obx(
                                            () => IconButton(
                                          onPressed: () {
                                            _controllera.addToWishlist(product);
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            _controllera.isWishlistItem(product)
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 0,),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {
                                        if (index == 0) {
                                          Get.to(() => ItemScreen1());
                                        } else if (index == 1) {
                                          Get.to(() => ItemScreen2());
                                        } else if (index == 2) {
                                          Get.to(() => ItemScreen3());
                                        } else if (index == 3) {
                                          Get.to(() => ItemScreen4());
                                        } else if (index == 4) {
                                          Get.to(() => ItemScreen5());
                                        } else if (index == 5) {
                                          Get.to(() => ItemScreen6());
                                        }
                                      },
                                      child: Image.asset(
                                        "images/${pNames[index]}.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          pNames[index],
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black.withOpacity(0.8),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Text(
                                              '\$${prices[index]}',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: Colors.redAccent,
                                              ),
                                            ),
                                            SizedBox(width: 4,),
                                            Text(
                                              '\$${discount[index]}',
                                              style: TextStyle(
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black.withOpacity(0.4),
                                              ),
                                            ),
                                            SizedBox(width: 2,),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
