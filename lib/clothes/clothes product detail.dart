import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../delevery af.dart';
import 'ClothesProductSummary.dart';



class ContainerButtonModel2 extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String itext;
  ContainerButtonModel2({super.key,this.bgColor,this.containerWidth,required this.itext});

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

class ClothesController0 extends GetxController{
  var prices = 10.obs;
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
class ClothesProductDetailPopUp extends StatelessWidget {
  ClothesProductDetailPopUp({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs3 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final ClothesController0 _ClothesController0 = Get.put(ClothesController0(),permanent: true);

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
                            SizedBox(height: 10,),
                            Text("Size:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Color:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 18,),
                          ],
                        ),
                        SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                                // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("M",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:  Text("XL",style: istyle,),),
                                SizedBox(width: 10,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                children: [
                                  for (var i=0; i<4;i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 18),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: CLrs3[i],
                                          borderRadius: BorderRadius.circular(20)
                                      ),

                                    )
                                ],
                              ),
                            ),
                            SizedBox(height: 17,),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _ClothesController0.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_ClothesController0.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _ClothesController0.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() => Text("\$${_ClothesController0.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(

                      onTap: ()  {
                        Get.to(() => ClothesSavedAddressPage());
                      },
                      child: ContainerButtonModel2(
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
        child: ContainerButtonModel2(
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

class ClothesController1 extends GetxController{
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

class ClothesProductDetailPopUp1 extends StatelessWidget {
  ClothesProductDetailPopUp1({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs3 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final ClothesController1 _ClothesController1 = Get.put(ClothesController1(),permanent: true);

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
                            SizedBox(height: 10,),
                            Text("Size:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Color:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 18,),
                          ],
                        ),
                        SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                                // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("M",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:  Text("XL",style: istyle,),),
                                SizedBox(width: 10,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                children: [
                                  for (var i=0; i<4;i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 18),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: CLrs3[i],
                                          borderRadius: BorderRadius.circular(20)
                                      ),

                                    )
                                ],
                              ),
                            ),
                            SizedBox(height: 17,),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _ClothesController1.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_ClothesController1.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _ClothesController1.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() => Text("\$${_ClothesController1.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(

                      onTap: ()  {
                        Get.to(() => ClothesSavedAddressPage1());
                      },
                      child: ContainerButtonModel2(
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
        child: ContainerButtonModel2(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}





class ClothesController2 extends GetxController{
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


class ClothesProductDetailPopUp2 extends StatelessWidget {
  ClothesProductDetailPopUp2({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs3 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final ClothesController2 _ClothesController2 = Get.put(ClothesController2(),permanent: true);

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
                            SizedBox(height: 10,),
                            Text("Size:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Color:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 18,),
                          ],
                        ),
                        SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                                // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("M",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:  Text("XL",style: istyle,),),
                                SizedBox(width: 10,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                children: [
                                  for (var i=0; i<4;i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 18),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: CLrs3[i],
                                          borderRadius: BorderRadius.circular(20)
                                      ),

                                    )
                                ],
                              ),
                            ),
                            SizedBox(height: 17,),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _ClothesController2.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_ClothesController2.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _ClothesController2.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() => Text("\$${_ClothesController2.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(

                      onTap: ()  {
                        Get.to(() => ClothesSavedAddressPage2());
                      },
                      child: ContainerButtonModel2(
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
        child: ContainerButtonModel2(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}



class ClothesController3 extends GetxController{
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


class ClothesProductDetailPopUp3 extends StatelessWidget {
  ClothesProductDetailPopUp3({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs3 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final ClothesController3 _ClothesController3 = Get.put(ClothesController3(),permanent: true);

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
                            SizedBox(height: 10,),
                            Text("Size:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Color:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 18,),
                          ],
                        ),
                        SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                                // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("M",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:  Text("XL",style: istyle,),),
                                SizedBox(width: 10,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                children: [
                                  for (var i=0; i<4;i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 18),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: CLrs3[i],
                                          borderRadius: BorderRadius.circular(20)
                                      ),

                                    )
                                ],
                              ),
                            ),
                            SizedBox(height: 17,),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _ClothesController3.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_ClothesController3.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _ClothesController3.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() => Text("\$${_ClothesController3.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(

                      onTap: ()  {
                        Get.to(() => ClothesSavedAddressPage3());
                      },
                      child: ContainerButtonModel2(
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
        child: ContainerButtonModel2(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}




class ClothesController4 extends GetxController{
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



class ClothesProductDetailPopUp4 extends StatelessWidget {
  ClothesProductDetailPopUp4({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs3 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final ClothesController4 _ClothesController4 = Get.put(ClothesController4(),permanent: true);

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
                            SizedBox(height: 10,),
                            Text("Size:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Color:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 18,),
                          ],
                        ),
                        SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                                // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("M",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:  Text("XL",style: istyle,),),
                                SizedBox(width: 10,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                children: [
                                  for (var i=0; i<4;i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 18),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: CLrs3[i],
                                          borderRadius: BorderRadius.circular(20)
                                      ),

                                    )
                                ],
                              ),
                            ),
                            SizedBox(height: 17,),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _ClothesController4.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_ClothesController4.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _ClothesController4.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() => Text("\$${_ClothesController4.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(

                      onTap: ()  {
                        Get.to(() => ClothesSavedAddressPage4());
                      },
                      child: ContainerButtonModel2(
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
        child: ContainerButtonModel2(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}


class ClothesController5 extends GetxController{
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



class ClothesProductDetailPopUp5 extends StatelessWidget {
  ClothesProductDetailPopUp5({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs3 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final ClothesController5 _ClothesController5 = Get.put(ClothesController5(),permanent: true);

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
                            SizedBox(height: 10,),
                            Text("Size:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Color:",style: istyle,),
                            SizedBox(height: 30,),
                            Text("Total:",style: istyle,),
                            SizedBox(height: 18,),
                          ],
                        ),
                        SizedBox(width: 3,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                                // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("M",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                                //SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:  Text("XL",style: istyle,),),
                                SizedBox(width: 10,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                children: [
                                  for (var i=0; i<4;i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 18),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          color: CLrs3[i],
                                          borderRadius: BorderRadius.circular(20)
                                      ),

                                    )
                                ],
                              ),
                            ),
                            SizedBox(height: 17,),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _ClothesController5.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_ClothesController5.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _ClothesController5.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() => Text("\$${_ClothesController5.calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)
                          ),))
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(

                      onTap: ()  {
                        Get.to(() => ClothesSavedAddressPage5());
                      },
                      child: ContainerButtonModel2(
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
        child: ContainerButtonModel2(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}

