import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Shoe Screen/Shoe Product Summary.dart';
import '../chechout.dart';
import '../delevery af.dart';
import 'drinksproductDetail.dart';


class MyProgressIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  MyProgressIndicator({required this.currentPage, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    double progress = (currentPage + 1) / totalPages;

    return LinearProgressIndicator(
      backgroundColor: Colors.grey,
      color: Colors.redAccent,
      borderRadius: BorderRadius.circular(12),
      minHeight: 8,
      value: progress,
    );
  }
}
class DrinkSavedAddressPage extends StatelessWidget {
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);
  final DrinkController0 _drinkcontroller0 = Get.put(DrinkController0(),permanent: true);

  // Assuming you have a DeliveryAddressController, import it and create an instance
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    int currentPage = 2; // Replace with your current page number
    int totalPages = 5; // Replace with your total page count

    var delevery =20;
    double calculateTotal() {
      double total = 0.0;
      {
        total +=delevery+ _drinkcontroller0.calculateTotal();
      }
      return total;
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
          size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Product Detail',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          MyProgressIndicator(
            currentPage: currentPage,
            totalPages: totalPages,
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width:double.infinity,
            height: 687,
            decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Product Summary:',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 5),
                Column(
                    children: [
                      Container(
                        height: 290,
                        width:290,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'images/cocacola.png',
                          height: 700,
                          width: 700,
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
                                "Coca Cola",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Delivery Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(()=>DeliveryAddressPage());
                      },
                      icon: Icon(Icons.edit_note),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Obx(
                      () => Text(
                    savedAddressController.savedAddress.value ,

                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Price:',style: istyle,),
                    Obx(() =>   Text("\$${_drinkcontroller0.calculateTotal().toStringAsFixed(2)}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delevery Charge:',style: istyle,),
                    Text("\$${delevery}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Price:',style: istyle,),
                    Text("\$${calculateTotal()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: ()  {

                  },
                  child: ContainerButtonModel1(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext:"Make Payment",
                    bgColor:Colors.redAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



class DrinkSavedAddressPage1 extends StatelessWidget {
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);
  final DrinkController1 _drinkcontroller1 = Get.put(DrinkController1(),permanent: true);

  // Assuming you have a DeliveryAddressController, import it and create an instance
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    int currentPage = 2; // Replace with your current page number
    int totalPages = 5; // Replace with your total page count

    var delevery =20;
    double calculateTotal() {
      double total = 0.0;
      {
        total +=delevery+ _drinkcontroller1.calculateTotal();
      }
      return total;
    }
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Product Detail',style: TextStyle(fontSize: 25),)),

      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          MyProgressIndicator(
            currentPage: currentPage,
            totalPages: totalPages,
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width:double.infinity,
            height: 687,
            decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Product Summary:',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 5),
                Column(
                    children: [
                      Container(
                        height: 290,
                        width:290,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'images/pepsi.png',
                          height: 700,
                          width: 700,
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
                                "Pepsi",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Delivery Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(()=>DeliveryAddressPage());
                      },
                      icon: Icon(Icons.edit_note),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Obx(
                      () => Text(
                    savedAddressController.savedAddress.value ,

                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Price:',style: istyle,),
                    Obx(() =>   Text("\$${_drinkcontroller1.calculateTotal().toStringAsFixed(2)}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delevery Charge:',style: istyle,),
                    Text("\$${delevery}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Price:',style: istyle,),
                    Text("\$${calculateTotal()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: ()  {

                  },
                  child: ContainerButtonModel1(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext:"Make Payment",
                    bgColor:Colors.redAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



class DrinkSavedAddressPage2 extends StatelessWidget {
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);
  final DrinkController2 _drinkcontroller2 = Get.put(DrinkController2(),permanent: true);

  // Assuming you have a DeliveryAddressController, import it and create an instance
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    int currentPage = 2; // Replace with your current page number
    int totalPages = 5; // Replace with your total page count

    var delevery =20;
    double calculateTotal() {
      double total = 0.0;
      {
        total +=delevery+ _drinkcontroller2.calculateTotal();
      }
      return total;
    }
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Product Detail',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          MyProgressIndicator(
            currentPage: currentPage,
            totalPages: totalPages,
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width:double.infinity,
            height: 687,
            decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Product Summary:',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 5),
                Column(
                    children: [
                      Container(
                        height: 290,
                        width:290,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'images/Thums Up.png',
                          height: 700,
                          width: 700,
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
                                "Thums Up",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Delivery Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(()=>DeliveryAddressPage());
                      },
                      icon: Icon(Icons.edit_note),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Obx(
                      () => Text(
                    savedAddressController.savedAddress.value ,

                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Price:',style: istyle,),
                    Obx(() =>   Text("\$${_drinkcontroller2.calculateTotal().toStringAsFixed(2)}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delevery Charge:',style: istyle,),
                    Text("\$${delevery}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Price:',style: istyle,),
                    Text("\$${calculateTotal()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: ()  {

                  },
                  child: ContainerButtonModel1(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext:"Make Payment",
                    bgColor:Colors.redAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}




class DrinkSavedAddressPage3 extends StatelessWidget {
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);
  final DrinkController3 _drinkcontroller3 = Get.put(DrinkController3(),permanent: true);

  // Assuming you have a DeliveryAddressController, import it and create an instance
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    int currentPage = 2; // Replace with your current page number
    int totalPages = 5; // Replace with your total page count

    var delevery =20;
    double calculateTotal() {
      double total = 0.0;
      {
        total +=delevery+ _drinkcontroller3.calculateTotal();
      }
      return total;
    }
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Product Detail',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          MyProgressIndicator(
            currentPage: currentPage,
            totalPages: totalPages,
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width:double.infinity,
            height: 687,
            decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Product Summary:',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 5),
                Column(
                    children: [
                      Container(
                        height: 290,
                        width:290,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'images/Thums Up Charge.png',
                          height: 700,
                          width: 700,
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
                                "Thums Up Charge",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Delivery Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(()=>DeliveryAddressPage());
                      },
                      icon: Icon(Icons.edit_note),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Obx(
                      () => Text(
                    savedAddressController.savedAddress.value ,

                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Price:',style: istyle,),
                    Obx(() =>   Text("\$${_drinkcontroller3.calculateTotal().toStringAsFixed(2)}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delevery Charge:',style: istyle,),
                    Text("\$${delevery}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Price:',style: istyle,),
                    Text("\$${calculateTotal()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: ()  {

                  },
                  child: ContainerButtonModel1(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext:"Make Payment",
                    bgColor:Colors.redAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



class DrinkSavedAddressPage4 extends StatelessWidget {
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);
  final DrinkController4 _drinkcontroller4 = Get.put(DrinkController4(),permanent: true);

  // Assuming you have a DeliveryAddressController, import it and create an instance
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    int currentPage = 2; // Replace with your current page number
    int totalPages = 5; // Replace with your total page count

    var delevery =20;
    double calculateTotal() {
      double total = 0.0;
      {
        total +=delevery+ _drinkcontroller4.calculateTotal();
      }
      return total;
    }
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Product Detail',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          MyProgressIndicator(
            currentPage: currentPage,
            totalPages: totalPages,
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width:double.infinity,
            height: 687,
            decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Product Summary:',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 5),
                Column(
                    children: [
                      Container(
                        height: 290,
                        width:290,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'images/Yes.png',
                          height: 700,
                          width: 700,
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
                                "yes",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Delivery Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(()=>DeliveryAddressPage());
                      },
                      icon: Icon(Icons.edit_note),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Obx(
                      () => Text(
                    savedAddressController.savedAddress.value ,

                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Price:',style: istyle,),
                    Obx(() =>   Text("\$${_drinkcontroller4.calculateTotal().toStringAsFixed(2)}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delevery Charge:',style: istyle,),
                    Text("\$${delevery}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Price:',style: istyle,),
                    Text("\$${calculateTotal()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: ()  {

                  },
                  child: ContainerButtonModel1(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext:"Make Payment",
                    bgColor:Colors.redAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



class DrinkSavedAddressPage5 extends StatelessWidget {
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);
  final DrinkController5 _drinkcontroller5 = Get.put(DrinkController5(),permanent: true);

  // Assuming you have a DeliveryAddressController, import it and create an instance
  final istyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w600,
      fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    int currentPage = 2; // Replace with your current page number
    int totalPages = 5; // Replace with your total page count

    var delevery =20;
    double calculateTotal() {
      double total = 0.0;
      {
        total +=delevery+ _drinkcontroller5.calculateTotal();
      }
      return total;
    }
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Product Detail',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          MyProgressIndicator(
            currentPage: currentPage,
            totalPages: totalPages,
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width:double.infinity,
            height: 687,
            decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Product Summary:',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 5),
                Column(
                    children: [
                      Container(
                        height: 290,
                        width:290,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'images/Moutn DEW.png',
                          height: 700,
                          width: 700,
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
                                "Moutn DEW",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:  Text(
                        'Delivery Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(()=>DeliveryAddressPage());
                      },
                      icon: Icon(Icons.edit_note),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Obx(
                      () => Text(
                    savedAddressController.savedAddress.value ,

                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Price:',style: istyle,),
                    Obx(() =>   Text("\$${_drinkcontroller5.calculateTotal().toStringAsFixed(2)}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delevery Charge:',style: istyle,),
                    Text("\$${delevery}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Price:',style: istyle,),
                    Text("\$${calculateTotal()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFDB3022)
                      ),)
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: ()  {

                  },
                  child: ContainerButtonModel1(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext:"Make Payment",
                    bgColor:Colors.redAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}