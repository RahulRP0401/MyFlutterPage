import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class star extends StatefulWidget {
  double i = 1;
  star(double intrat) {
    this.i = intrat;
  }

  @override
  State<star> createState() => _starState();
}

class _starState extends State<star> {
  double rating = 0;
  @override
  void initState() {
    // TODO: implement initState
    rating = widget.i;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 20,
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          rating = rating;
        });
      },
    );
  }
}
