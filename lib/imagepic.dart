import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'Account.dart';

class ImageController extends GetxController {
  RxString imagePath = ''.obs;

  void pickImageFromCamera() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
    }
  }

  void pickImageFromGallery() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
    }
  }
}


class Imagepic extends StatelessWidget {
  final ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         /*   Obx(() {
              return CircleAvatar(
                radius: 65,
                backgroundColor: Colors.tealAccent,
                child: imageController.imagePath.value.isNotEmpty
                    ? ClipOval(
                  child: Image.file(
                    File(imageController.imagePath.value),
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                )
                    : Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ), // Placeholder icon if no image is selected
              );
            }),*/
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => imageController.pickImageFromCamera(),
              child: Text('Pick from Camera'),
            ),
            ElevatedButton(
              onPressed: () => imageController.pickImageFromGallery(),
              child: Text('Pick from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}


