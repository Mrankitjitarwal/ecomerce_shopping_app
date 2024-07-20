import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Product_image_slider extends StatelessWidget {
  const Product_image_slider({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      height:300,
      autoPlayInterval:3000,
      indicatorRadius:4,
      isLoop: true,
      children:[
        Padding(padding: EdgeInsets.all(8),
        child: Image.asset('images/p1.png'),),
        Padding(padding: EdgeInsets.all(8),
          child: Image.asset('images/p2.png'),),
        Padding(padding: EdgeInsets.all(8),
          child: Image.asset('images/p1.png'),),
        Padding(padding: EdgeInsets.all(8),
          child: Image.asset('images/p2.png'),),
      ]
    );
  }
}




class Product_image_slider2 extends StatelessWidget {
  const Product_image_slider2({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        indicatorColor: Colors.redAccent,
        indicatorBackgroundColor: Colors.white,
        height:800,
        width: 500,
        autoPlayInterval:3000,
        indicatorRadius:4,
        isLoop: true,
        children:[
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/2.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/1.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/tshirt2.jpg'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/tshirt3.jpg'),),
        ]
    );
  }
}





class Product_image_slider3 extends StatelessWidget {
  const Product_image_slider3({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        indicatorColor: Colors.redAccent,
        indicatorBackgroundColor: Colors.white,
        height:800,
        width: 500,
        autoPlayInterval:3000,
        indicatorRadius:4,
        isLoop: true,
        children:[
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Warm Zipper.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/image1.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/image3.jpg'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/image4.jpg'),),
        ]
    );
  }
}






class Product_image_slider4 extends StatelessWidget {
  const Product_image_slider4({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        indicatorColor: Colors.redAccent,
        indicatorBackgroundColor: Colors.white,
        height:800,
        width: 500,
        autoPlayInterval:3000,
        indicatorRadius:4,
        isLoop: true,
        children:[
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Nike Shoe.png'),),
       /*   Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/shoe1.png'),),*/
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/shoe2.png'),),
         Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/shoe3.png'),),
        ]
    );
  }
}