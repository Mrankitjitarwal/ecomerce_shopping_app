import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'delevery af.dart';

class DeliveryAddressController extends GetxController {
  var deliveryAddressname = ''.obs;
  var deliveryAddressLastname = ''.obs;
  var deliveryAddresscityname = ''.obs;
  var deliveryAddressstatename = ''.obs;
  var deliveryAddresscountryname = ''.obs;
  var deliveryAddresspincode = ''.obs;
  var deliveryAddressphonenumber = ''.obs;
  late SavedAddressController savedAddressController;
  late DeliveryAddressController deliveryController;

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      savedAddressController = Get.find<SavedAddressController>();
      deliveryController = Get.find<DeliveryAddressController>();
      loadAddressFromSharedPreferences();
    });
  }


  Future<void> saveAddressToSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('deliveryAddressname', deliveryAddressname.value);
    prefs.setString('deliveryAddressLastname', deliveryAddressLastname.value);
    prefs.setString('deliveryAddresscityname', deliveryAddresscityname.value);
    prefs.setString('deliveryAddressstatename', deliveryAddressstatename.value);
    prefs.setString('deliveryAddresscountryname', deliveryAddresscountryname.value);
    prefs.setString('deliveryAddresspincode', deliveryAddresspincode.value);
    prefs.setString('deliveryAddressphonenumber', deliveryAddressphonenumber.value);
  }

  Future<void> loadAddressFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    deliveryAddressname.value = prefs.getString('deliveryAddressname') ?? '';
    deliveryAddressLastname.value = prefs.getString('deliveryAddressLastname') ?? '';
    deliveryAddresscityname.value = prefs.getString('deliveryAddresscityname') ?? '';
    deliveryAddressstatename.value = prefs.getString('deliveryAddressstatename') ?? '';
    deliveryAddresscountryname.value = prefs.getString('deliveryAddresscountryname') ?? '';
    deliveryAddresspincode.value = prefs.getString('deliveryAddresspincode') ?? '';
    deliveryAddressphonenumber.value = prefs.getString('deliveryAddressphonenumber') ?? '';
  }

  void setDeliveryAddress(String address) {
    deliveryAddressname.value = address;
  }

  void setLastName(String address) {
    deliveryAddressLastname.value = address;
  }

  void setCity(String address) {
    deliveryAddresscityname.value = address;
  }

  void setStateName(String address) {
    deliveryAddressstatename.value = address;
  }

  void setCountry(String address) {
    deliveryAddresscountryname.value = address;
  }

  void setPin(String address) {
    deliveryAddresspincode.value = address;
  }

  void setPhone(String address) {
    deliveryAddressphonenumber.value = address;
  }

  void checkout() {
    print("Checkout: $deliveryAddressname");
    Get.find<SavedAddressController>().saveAddress(
      "${deliveryAddressname.value}, ${deliveryAddresscityname.value}, ${deliveryAddressstatename.value},${deliveryAddresscountryname.value},${deliveryAddresspincode.value}",
    );
  }

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
      Position position = await Geolocator.getCurrentPosition();
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      deliveryAddresscityname.value = placemarks.first.locality ?? '';
      deliveryAddressstatename.value = placemarks.first.administrativeArea ?? '';
      deliveryAddresscountryname.value = placemarks.first.country ?? '';
      deliveryAddresspincode.value = placemarks.first.postalCode ?? '';
    } catch (e) {
      print("Error getting current location: $e");
    }
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
class DeliveryAddressPage extends StatelessWidget {
  final DeliveryAddressController deliveryController =
  Get.put(DeliveryAddressController(), permanent: true);
  final SavedAddressController savedAddressController =
  Get.put(SavedAddressController(), permanent: true);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    int currentPage = 1; // Replace with your current page number
    int totalPages = 5;
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        size: 25,), onPressed: () {   Navigator.pop(context); },),
        title: Text('Delivery Address'),
      ),
      body: Column(
        children: [
          MyProgressIndicator(
            currentPage: currentPage,
            totalPages: totalPages,
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      onChanged: (value) => deliveryController.setDeliveryAddress(value),
                      decoration: InputDecoration(labelText: 'Full Name'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      onChanged: (value) =>deliveryController.setCity(value),
                      decoration: InputDecoration(labelText: 'City'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your city';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      onChanged: (value) => deliveryController.setStateName(value),
                      decoration: InputDecoration(labelText: 'State'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your state';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      onChanged: (value) => deliveryController.setCountry(value),
                      decoration: InputDecoration(labelText: 'Country'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your country';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      onChanged: (value) => deliveryController.setPin(value),
                      decoration: InputDecoration(labelText: 'Pin Code'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your pin code';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () async {
                        print("Get current location button pressed");
                        await deliveryController.getCurrentLocation();
                        Get.find<SavedAddressController>().saveAddress(
                          "${deliveryController.deliveryAddressname.value}, ${deliveryController.deliveryAddresscityname.value}, ${deliveryController.deliveryAddressstatename.value},${deliveryController.deliveryAddresscountryname.value},${deliveryController.deliveryAddresspincode.value}",
                        );
                        print( "${deliveryController.deliveryAddressname.value}, ${deliveryController.deliveryAddresscityname.value}, ${deliveryController.deliveryAddressstatename.value},${deliveryController.deliveryAddresscountryname.value},${deliveryController.deliveryAddresspincode.value}",
                        );
                        Navigator.pop(context);
                      },
                      child: Text('Get Current Location'),
                    ),SizedBox(height: 16,),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Form is valid, save the delivery address
                          deliveryController.checkout(); // Save the address to SavedAddressController
                          Get.find<SavedAddressController>().saveAddress(
                            "${deliveryController.deliveryAddressname.value}, ${deliveryController.deliveryAddresscityname.value}, ${deliveryController.deliveryAddressstatename.value},${deliveryController.deliveryAddresscountryname.value},${deliveryController.deliveryAddresspincode.value}",
                          );
                          print('save address page');
                          // Navigate to SavedAddressPage
                          Navigator.pop(context);
                        }
                      },
                      child: Text('Save Address'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}