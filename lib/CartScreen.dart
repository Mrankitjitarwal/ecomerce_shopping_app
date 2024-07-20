
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CController extends GetxController{
  var quantities = <RxInt>[1.obs, 1.obs, 1.obs, 1.obs];
  var prices = <RxDouble>[50.55.obs,30.0.obs,80.0.obs,25.0.obs];
  static CController get to => Get.find<CController>();
  void increment(int index) {
    quantities[index]++;
  }

  void decrement(int index) {
    if (quantities[index] > 1) {
      quantities[index]--;
    }
  }

  double calculateTotal() {
    double total = 0.0;
    for (int i = 0; i < 4; i++) {
      total +=quantities[i] * prices[i].value;
    }
    return total;
  }
}
class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final CController _controller = Get.put(CController(),permanent: true);
  var pNames = [
      "Apple Watch -M2",
      "White Tshirt",
      "Nike Shoe",
      "Ear Headphone"
    ];
    var pSize = [
      "36",
      "M",
      "S",
      "40"
    ];

    @override
    Widget build(BuildContext context) {
      return
        Scaffold(
          appBar: AppBar(
            title: Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            centerTitle: true,
            elevation: 10,
            automaticallyImplyLeading: false,
          ),

          body:
          Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 12),
            child: Stack(
                children:[
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 5),
                                // padding: EdgeInsets.only(right: 5),
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 248, 248, 248),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: MediaQuery.of(context).size.width / 4.97,
                                      margin: EdgeInsets.only(left: 8),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFD4ECF7),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Image.asset(
                                        'images/${pNames[index]}.png',
                                        height: 70,
                                        width: 70,
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 20, left: 15, bottom: 25, right: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              pNames[index],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Size:',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  pSize[index],
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Obx(() =>  Text(
                                          "\$${(_controller.quantities[index] * _controller.prices[index].value).toStringAsFixed(2)}",
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),),
                                        Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              CupertinoButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: () {
                                                  // Decrease quantity
                                                  _controller.decrement(index);
                                                },
                                                child: Icon(CupertinoIcons.minus),
                                              ),
                                              Obx(() => Text(
                                                _controller.quantities[index].toString(),
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )),
                                              CupertinoButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: () {
                                                  // Increase quantity
                                                  _controller.increment(index);
                                                },
                                                child: Icon(CupertinoIcons.plus),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                              ]),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(fontSize: 18, color: Colors.black),
                              ),
                              Obx(() =>  Text(
                                '\$${_controller.calculateTotal().toStringAsFixed(2)}',
                                style: TextStyle(fontSize: 18, color: Colors.black),
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.redAccent),
                            child: Center(
                              child: Text(
                                'Order Now',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]

            ),
          ),
        );
  }
}





