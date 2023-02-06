import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RatingAndRivewsCount extends StatelessWidget{
  IconData? icon;
  String? rate;
  String? reviews;

  RatingAndRivewsCount({
    this.icon,
    this.rate,
    this.reviews
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color:Colors.amber,size:4.5.w,),
        Text("${rate}"),
        Text("${reviews}")
      ],
    );
  }

}