

import 'package:ecom/Drinks/productsummary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ContainerButtonModel extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String itext;
  ContainerButtonModel({super.key,this.bgColor,this.containerWidth,required this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: containerWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor
        ),
        child:  Center(
          child: Text(itext,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
        ));
  }
}

class DrinkController0 extends GetxController{
  var prices = 25.obs;
  var j=1.obs;
  void increament(){
    j++;
  }
  void decrement(){
    if(j>1){
      j--;
    }}
  double calculateTotal() {
    double total = 0.0;
    {
      total +=j * prices.value;
    }
    return total;
  }


}
class DrinkProductDetailPopUp extends StatelessWidget {
  DrinkProductDetailPopUp({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final DrinkController0 _drinkController0 = Get.put(DrinkController0(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height/2.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 40,),
                            Text("Total  :",style: istyle,),
                            SizedBox(height: 30,),
                          ],
                        ),
                        SizedBox(height: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 27,),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: _drinkController0.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_drinkController0.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _drinkController0.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() =>   Text("\$${_drinkController0.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: ()  {
                        Get.to(() => DrinkSavedAddressPage());
                      },
                      child: ContainerButtonModel1(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext:"Checkout",
                        bgColor:Colors.redAccent,
                      ),
                    )

                  ],
                ),
              ),
            )
        );
      },
      child:
      Center(
        child: ContainerButtonModel1(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}
class ContainerButtonModel1 extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String itext;
  ContainerButtonModel1({super.key,this.bgColor,this.containerWidth,required this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: containerWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor
        ),
        child:  Center(
          child: Text(itext,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
        ));
  }
}

class DrinkController1 extends GetxController{
  var prices = 23.obs;
  var j=1.obs;
  void increament(){
    j++;
  }
  void decrement(){
    if(j>1){
      j--;
    }}
  double calculateTotal() {
    double total = 0.0;
    {
      total +=j * prices.value;
    }
    return total;
  }


}



class DrinkProductDetailPopUp1 extends StatelessWidget {
  DrinkProductDetailPopUp1({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final DrinkController1 _drinkController1 = Get.put(DrinkController1(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height/2.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 40,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 30,),
                          ],
                        ),
                        SizedBox(height: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            SizedBox(height: 27,),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: _drinkController1.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_drinkController1.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _drinkController1.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() =>   Text("\$${_drinkController1.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: ()  {
                        Get.to(() => DrinkSavedAddressPage1());
                      },
                      child: ContainerButtonModel1(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext:"Checkout",
                        bgColor:Colors.redAccent,
                      ),
                    )

                  ],
                ),
              ),
            )
        );
      },
      child:
      Center(
        child: ContainerButtonModel1(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}





class DrinkController2 extends GetxController{
  var prices = 22.obs;
  var j=1.obs;
  void increament(){
    j++;
  }
  void decrement(){
    if(j>1){
      j--;
    }}
  double calculateTotal() {
    double total = 0.0;
    {
      total +=j * prices.value;
    }
    return total;
  }


}



class DrinkProductDetailPopUp2 extends StatelessWidget {
  DrinkProductDetailPopUp2({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final DrinkController2 _drinkController2 = Get.put(DrinkController2(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height/2.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 40,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 30,),
                          ],
                        ),
                        SizedBox(height: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            SizedBox(height: 27,),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: _drinkController2.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_drinkController2.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _drinkController2.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Paymentd',style: istyle,),
                        Obx(() =>   Text("\$${_drinkController2.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: ()  {
                        Get.to(() => DrinkSavedAddressPage2());
                      },
                      child: ContainerButtonModel1(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext:"Checkout",
                        bgColor:Colors.redAccent,
                      ),
                    )

                  ],
                ),
              ),
            )
        );
      },
      child:
      Center(
        child: ContainerButtonModel1(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}



class DrinkController3 extends GetxController{
  var prices = 20.obs;
  var j=1.obs;
  void increament(){
    j++;
  }
  void decrement(){
    if(j>1){
      j--;
    }}
  double calculateTotal() {
    double total = 0.0;
    {
      total +=j * prices.value;
    }
    return total;
  }


}



class DrinkProductDetailPopUp3 extends StatelessWidget {
  DrinkProductDetailPopUp3({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final DrinkController3 _drinkController3 = Get.put(DrinkController3(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height/2.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 40,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 30,),
                          ],
                        ),
                        SizedBox(height: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            SizedBox(height: 27,),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: _drinkController3.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_drinkController3.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _drinkController3.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() =>   Text("\$${_drinkController3.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: ()  {
                        Get.to(() => DrinkSavedAddressPage3());
                      },
                      child: ContainerButtonModel1(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext:"Checkout",
                        bgColor:Colors.redAccent,
                      ),
                    )

                  ],
                ),
              ),
            )
        );
      },
      child:
      Center(
        child: ContainerButtonModel1(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}




class DrinkController4 extends GetxController{
  var prices = 20.obs;
  var j=1.obs;
  void increament(){
    j++;
  }
  void decrement(){
    if(j>1){
      j--;
    }}
  double calculateTotal() {
    double total = 0.0;
    {
      total +=j * prices.value;
    }
    return total;
  }


}



class DrinkProductDetailPopUp4 extends StatelessWidget {
  DrinkProductDetailPopUp4({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final DrinkController4 _drinkController4 = Get.put(DrinkController4(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height/2.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 40,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 30,),
                          ],
                        ),
                        SizedBox(height: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            SizedBox(height: 27,),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: _drinkController4.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_drinkController4.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _drinkController4.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() =>   Text("\$${_drinkController4.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: ()  {
                        Get.to(() => DrinkSavedAddressPage4());
                      },
                      child: ContainerButtonModel1(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext:"Checkout",
                        bgColor:Colors.redAccent,
                      ),
                    )

                  ],
                ),
              ),
            )
        );
      },
      child:
      Center(
        child: ContainerButtonModel1(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}


class DrinkController5 extends GetxController{
  var prices = 21.obs;
  var j=1.obs;
  void increament(){
    j++;
  }
  void decrement(){
    if(j>1){
      j--;
    }}
  double calculateTotal() {
    double total = 0.0;
    {
      total +=j * prices.value;
    }
    return total;
  }


}



class DrinkProductDetailPopUp5 extends StatelessWidget {
  DrinkProductDetailPopUp5({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final DrinkController5 _drinkController5 = Get.put(DrinkController5(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height/2.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 40,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 30,),
                          ],
                        ),
                        SizedBox(height: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [


                            SizedBox(height: 27,),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: _drinkController5.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_drinkController5.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _drinkController5.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() =>   Text("\$${_drinkController5.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: ()  {
                        Get.to(() => DrinkSavedAddressPage5());
                      },
                      child: ContainerButtonModel1(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext:"Checkout",
                        bgColor:Colors.redAccent,
                      ),
                    )

                  ],
                ),
              ),
            )
        );
      },
      child:
      Center(
        child: ContainerButtonModel1(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}

