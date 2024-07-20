import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'delevery af.dart';
class Controller0 extends GetxController{
var prices = 140.obs;
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
class Controllerc extends GetxController{
  var prices = 40.obs;
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
class Controllerx extends GetxController{

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
class Controller3a extends GetxController{

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
      total += j * prices.value;
    }
    return total;
  }
}
class Controller4 extends GetxController{
  var prices = 40.obs;
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
class Controller5 extends GetxController{
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
class ProductDetailPopUp extends StatelessWidget {
  ProductDetailPopUp({super.key});
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
  int indexx = 0;
  int indexxx = 0;
  List size = [40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51];

  final Controller0 _controller = Get.put(Controller0(),permanent: true);

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
                          /*  SizedBox(height: 20,),
                            Text("Size:",style: istyle,),*/
                            SizedBox(height: 30,),
                            Text("Color:",style: istyle,),
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
                          /*  Row(
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
                            ),*/
                            SizedBox(height: 30,),
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
                            SizedBox(height: 27,),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _controller.decrement,
                                    child: Text('-',style: istyle,),
                                ),
                                Obx(() => Text('${_controller.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _controller.increament,
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
                        Obx(() =>   Text("\$${_controller.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => SavedAddressPage());
                      },
                      child: ContainerButtonModel(
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
        child: ContainerButtonModel(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}
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

//



class ProductDetailPopUp1 extends StatelessWidget {
  ProductDetailPopUp1({super.key});
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


  final Controllerx _controller1 = Get.put(Controllerx(),permanent: true);

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
                                    onPressed: _controller1.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_controller1.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _controller1.increament,
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
                        Obx(() => Text("\$${_controller1.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => SavedAddressPage());
                      },
                      child: ContainerButtonModel(
                          containerWidth: MediaQuery.of(context).size.width,
                          itext:"Checkout",
                          bgColor:Colors.redAccent

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
        child: ContainerButtonModel(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}




// productdetail popoup2





class ProductDetailPopUp2 extends StatelessWidget {
  ProductDetailPopUp2({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs2 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final Controllerc _controller2 = Get.put(Controllerc(),permanent: true);

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
                              //  SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                                //SizedBox(width: 0,),
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
                                          color: CLrs2[i],
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
                                    onPressed: _controller2.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_controller2.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _controller2.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() => Text("\$${_controller2.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => SavedAddressPage());
                      },
                      child: ContainerButtonModel(
                          containerWidth: MediaQuery.of(context).size.width,
                          itext:"Checkout",
                          bgColor:Colors.redAccent

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
        child: ContainerButtonModel(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}




//




class ProductDetailPopUp3 extends StatelessWidget {
  ProductDetailPopUp3({super.key});
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


  final Controller3a _controller3 = Get.put(Controller3a(),permanent: true);

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
                                    onPressed: _controller3.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_controller3.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _controller3.increament,
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
                        Obx(() => Text("\$${_controller3.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => SavedAddressPage());
                      },
                      child: ContainerButtonModel(
                          containerWidth: MediaQuery.of(context).size.width,
                          itext:"Checkout",
                          bgColor:Colors.redAccent

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
        child: ContainerButtonModel(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}




//


class ProductDetailPopUp4 extends StatelessWidget {
  ProductDetailPopUp4({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs2 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];

  final Controller4 _controller4 = Get.put(Controller4(),permanent: true);

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
                               // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                               // SizedBox(width: 0,),
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
                                          color: CLrs2[i],
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
                                    onPressed: _controller4.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_controller4.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _controller4.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() =>  Text("\$${_controller4.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => SavedAddressPage());
                      },
                      child: ContainerButtonModel(
                          containerWidth: MediaQuery.of(context).size.width,
                          itext:"Checkout",
                          bgColor:Colors.redAccent

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
        child: ContainerButtonModel(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}



//


class ProductDetailPopUp5 extends StatelessWidget {
  ProductDetailPopUp5({super.key});
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );
  List<Color> CLrs2 =[
    Colors.greenAccent,
    Colors.black,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent
  ];


  final Controller5 _controller5 = Get.put(Controller5(),permanent: true);

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
                               // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("S",style: istyle,),),
                               // SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child: Text("M",style: istyle,),),
                              //  SizedBox(width: 0,),
                                TextButton(onPressed: (){}, child:Text("L",style: istyle,),),
                              //  SizedBox(width: 0,),
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
                                          color: CLrs2[i],
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
                                    onPressed: _controller5.decrement,
                                    child: Text('-',style: istyle,)),
                                Obx(() => Text('${_controller5.j}',style: istyle,)),
                                TextButton(
                                    onPressed: _controller5.increament,
                                    child: Text('+',style: istyle,)),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: istyle,),
                        Obx(() =>  Text("\$${_controller5.calculateTotal().toStringAsFixed(2)}",
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
                        Get.to(() => SavedAddressPage());
                      },
                      child: ContainerButtonModel(
                          containerWidth: MediaQuery.of(context).size.width,
                          itext:"Checkout",
                          bgColor:Colors.redAccent

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
        child: ContainerButtonModel(
            containerWidth: MediaQuery.of(context).size.width/1.5,
            itext:"Buy Now",
            bgColor:Colors.redAccent

        ),
      ),
    );
  }
}
