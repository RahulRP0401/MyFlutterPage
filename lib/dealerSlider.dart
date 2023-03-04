import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class bottomSlider extends StatelessWidget {
  final List<String> carName = [
    'Benz',
    'Thar',
    'porsche',
    'swift',
    'creata',
    'Urus'
  ];
  final List<String> imgList = [
    '/home/rahul/Desktop/app_1/browsecar/car_3.jpeg',
    '/home/rahul/Desktop/app_1/browsecar/car_2.webp',
    '/home/rahul/Desktop/app_1/browsecar/car_1.jpg',
    '/home/rahul/Desktop/app_1/browsecar/car_4.jpeg',
    '/home/rahul/Desktop/app_1/browsecar/car_5.webp',
    '/home/rahul/Desktop/app_1/browsecar/car_6.webp'
  ];
  late final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(50, 0, 0, 0),
                            Colors.transparent,
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        ' ${carName[imgList.indexOf(item)]} ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      height: 400,
    );
  }
}
