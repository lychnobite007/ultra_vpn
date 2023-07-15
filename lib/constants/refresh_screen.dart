import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoadingAlert {
  static void show(BuildContext context, {String message = 'Loading...'}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.5.sp),
          ),
          backgroundColor: Colors.white,
          title: Text('Refresh the app'),
          content: Container(
            height: Adaptive.h(7),
            width: Adaptive.w(100),
            child: Center(
              child: Text('You have subscribed successfully! Now refresh the UltraVPN app so we could fetch your subscription and get you on board.',
                maxLines: 3,
                style: TextStyle(fontSize: 15.sp, color: Colors.black),),
            ),
          ),
          actions: [
            ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
                child: Text('REFRESH'))
          ],
        );
      },
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context).pop();
  }
}