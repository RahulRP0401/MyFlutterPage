import 'package:flutter/material.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: "Search...",
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Perform search operation here
                print(searchController.text);
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
      padding: EdgeInsets.only(bottom: 20),
    );
  }
}
