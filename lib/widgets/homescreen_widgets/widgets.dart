

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget container(String text1, String text2) {

  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 16.sp
  );
  TextStyle textStyle2 = TextStyle(
      color: Colors.white,
      fontSize: 16.sp,
    fontWeight: FontWeight.bold
  );

  return Padding(
    padding: EdgeInsets.only(left: 15.sp),
    child: Container(
      height: 30.sp,
      width: Adaptive.w(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1, style: textStyle,),
          Text(text2, style: textStyle2),

        ],
      ),
    ),
  );
}