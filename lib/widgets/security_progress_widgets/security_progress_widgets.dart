

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget checkBoxTile (String text, bool isChecked, Function(bool?) onChanged) {
  return ListTile(
    title: Text(text, style: TextStyle(fontSize: 18.sp)),
    leading: Transform.scale(
      scale: 5.25.sp,
      child: Checkbox(
        value: isChecked,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.standard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.5.sp)),
        onChanged: onChanged,
      ),
    ),
    trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
  );
}