import 'package:browsecar/ratingstar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class bottomdashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 200,
            width: 150,
            child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "/home/rahul/Desktop/app_1/browsecar/carlenders/ford.webp",
                      fit: BoxFit.cover,
                      width: 120,
                      height: 80,
                    ),
                    star(3.5),
                    Text(
                      "  Ford",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 200,
            width: 150,
            child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "/home/rahul/Desktop/app_1/browsecar/carlenders/tesla.png",
                      fit: BoxFit.cover,
                      width: 120,
                      height: 100,
                    ),
                    star(4.0),
                    Text(
                      "  Tesla",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 200,
            width: 150,
            child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "/home/rahul/Desktop/app_1/browsecar/carlenders/mahindra.webp",
                      fit: BoxFit.cover,
                      width: 120,
                      height: 100,
                    ),
                    star(4.5),
                    Text(
                      "  Mahindra",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
