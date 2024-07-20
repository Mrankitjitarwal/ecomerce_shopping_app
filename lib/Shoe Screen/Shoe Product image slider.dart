import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ShoeProduct_image_slider extends StatelessWidget {
  const ShoeProduct_image_slider({super.key});

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
              child: Image.asset('images/Hurrican Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Hurrican Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Hurrican Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Hurrican Shoe.png'),),
          ]
      );
  }
}
class ShoeProduct_image_slider2 extends StatelessWidget {
  const ShoeProduct_image_slider2({super.key});

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
              child: Image.asset('images/Puma Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Puma Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Puma Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Puma Shoe.png'),),
          ]
      );
  }
}

class ShoeProduct_image_slider3 extends StatelessWidget {
  const ShoeProduct_image_slider3({super.key});

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
              child: Image.asset('images/Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Shoe.png'),),
            Padding(padding: EdgeInsets.all(8),
              child: Image.asset('images/Shoe.png'),),
          ]
      );
  }
}





class ShoeProduct_image_slider4 extends StatelessWidget {
  const ShoeProduct_image_slider4({super.key});

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
            child: Image.asset('images/Nike AirMax.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Nike AirMax.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Nike AirMax.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Nike AirMax.png'),),
        ]
    );
  }
}





class ShoeProduct_image_slider5 extends StatelessWidget {
  const ShoeProduct_image_slider5({super.key});

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
            child: Image.asset('images/Fashion Shoe.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Fashion Shoe.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Fashion Shoe.png'),),
          Padding(padding: EdgeInsets.all(8),
            child: Image.asset('images/Fashion Shoe.png'),),
        ]
    );
  }
}






class ShoeProduct_image_slider6 extends StatelessWidget {
  const ShoeProduct_image_slider6({super.key});

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