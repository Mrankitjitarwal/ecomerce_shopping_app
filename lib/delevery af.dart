import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'Productdetail popup.dart';
import 'chechout.dart';


class SavedAddressController extends GetxController {
  var savedAddress = "".obs;

  void saveAddress(String address) {
    savedAddress.value = address;

  }

}
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
class SavedAddressPage extends StatelessWidget {
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);
  final Controller0 _controller = Get.put(Controller0(),permanent: true);

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

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Address'),
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
            height: 690,
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
                          'images/Apple Watch -M2.png',
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
                               "Apple Watch -M2",
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
                        'Saved Delivery Address:',
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
                    Obx(() =>   Text("\$${_controller.calculateTotal().toStringAsFixed(2)}",
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
                      Text("\$40.00",
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
                    Text("\$180.00",
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
                  child: ContainerButtonModel(
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
