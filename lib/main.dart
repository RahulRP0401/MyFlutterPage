import 'package:browsecar/searchbar.dart';
import 'package:browsecar/slider.dart';
import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:browsecar/slider_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Browse Car',
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.italic, fontSize: 50),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rahul Patil',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text("rahulrp@gmail.com"),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text('New Car'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Used car'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
          child: Column(children: [
            search(),
            Row(
              children: [
                Text("Hot Deals"),
                Text(
                  "show all",
                  style: TextStyle(color: Colors.blue),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            dashboard(),
            Row(
              children: [
                Text("Top Dealers"),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            bottomdashboard(),
          ]),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 10)),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Icon(Icons.home),
            Icon(Icons.calendar_month),
            Icon(Icons.notification_add),
            Icon(Icons.account_box)
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
        padding: EdgeInsets.only(bottom: 10),
      ),
    ));
  }
}

//seat
