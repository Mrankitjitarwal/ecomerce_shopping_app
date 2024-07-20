import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'Shoe Product Summary.dart';

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

class ShoeController0 extends GetxController{
  var prices = 85.obs;
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
class ShoeProductDetailPopUp extends StatelessWidget {
  ShoeProductDetailPopUp({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final ShoeController0 _shoeController0 = Get.put(ShoeController0(),permanent: true);

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
                                  onPressed: _shoeController0.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_shoeController0.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _shoeController0.increament,
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
                        Obx(() =>   Text("\$${_shoeController0.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => ShoeSavedAddressPage());
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

class ShoeController1 extends GetxController{
  var prices = 83.obs;
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



class ShoeProductDetailPopUp1 extends StatelessWidget {
  ShoeProductDetailPopUp1({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final ShoeController1 _shoeController1 = Get.put(ShoeController1(),permanent: true);

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
                                  onPressed: _shoeController1.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_shoeController1.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _shoeController1.increament,
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
                        Obx(() =>   Text("\$${_shoeController1.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height:50 ),
                    InkWell(
                      onTap: ()  {
                        Get.to(() => ShoeSavedAddressPage1());
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





class ShoeController2 extends GetxController{
  var prices = 80.obs;
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



class ShoeProductDetailPopUp2 extends StatelessWidget {
  ShoeProductDetailPopUp2({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final ShoeController2 _shoeController2 = Get.put(ShoeController2(),permanent: true);



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
                                  onPressed: _shoeController2.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_shoeController2.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _shoeController2.increament,
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
                        Obx(() =>   Text("\$${_shoeController2.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => ShoeSavedAddressPage2());
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



class ShoeController3 extends GetxController{
  var prices = 75.obs;
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



class ShoeProductDetailPopUp3 extends StatelessWidget {
  ShoeProductDetailPopUp3({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final ShoeController3 _shoeController3 = Get.put(ShoeController3(),permanent: true);

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
                                  onPressed: _shoeController3.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_shoeController3.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _shoeController3.increament,
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
                        Obx(() =>   Text("\$${_shoeController3.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => ShoeSavedAddressPage3());
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




class ShoeController4 extends GetxController{
  var prices = 80.obs;
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



class ShoeProductDetailPopUp4 extends StatelessWidget {
  ShoeProductDetailPopUp4({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final ShoeController4 _shoeController4 = Get.put(ShoeController4(),permanent: true);

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
                                  onPressed: _shoeController4.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_shoeController4.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _shoeController4.increament,
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
                        Obx(() =>   Text("\$${_shoeController4.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => ShoeSavedAddressPage4());
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


class ShoeController5 extends GetxController{
  var prices = 90.obs;
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



class ShoeProductDetailPopUp5 extends StatelessWidget {
  ShoeProductDetailPopUp5({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  int indexx = 0;
  int indexxx = 0;
  final ShoeController5 _shoeController5 = Get.put(ShoeController5(),permanent: true);

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
                                  onPressed: _shoeController5.decrement,
                                  child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_shoeController5.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _shoeController5.increament,
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
                        Obx(() =>   Text("\$${_shoeController5.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => ShoeSavedAddressPage5());
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

