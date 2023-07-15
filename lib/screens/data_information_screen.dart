import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../components/bottom_navigation_bar.dart';

class DataInformationScreen extends StatefulWidget {
   DataInformationScreen({super.key});

  @override
  State<DataInformationScreen> createState() => _DataInformationScreenState();
}

class _DataInformationScreenState extends State<DataInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined, size: 22.sp, color: Colors.black,)),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert_outlined, size: 22.sp, color: Colors.black))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: Adaptive.w(100),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30.sp,
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.shield, size: 34.sp, color: Colors.green,),
              ),
              SizedBox(height: 10.sp,),
              Text('Your info is safe', style: textStyle2,),
              SizedBox(height: 5.sp,),
              Text('dipenpaun85@gmail.com', style: textStyle2.copyWith(fontSize: 14.sp),),
              SizedBox(height: 15.sp,),
              Container(
                width: Adaptive.w(100),
                height: 25.sp,
                padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Adaptive.w(45),
                      color: Colors.grey.shade200,
                      child: Center(child: Text('Leaks', style: textStyle2.copyWith(fontSize: 16.sp),)),
                    ),
                    Container(
                      width: Adaptive.w(45),
                      // color: Colors.grey,
                      child: Center(child: Text('Cleared', style: textStyle2.copyWith(fontSize: 16.sp, color: Colors.grey))),
                    )
                  ],
                ),
              ),

              Container(
                height: Adaptive.h(30),
                width: Adaptive.w(100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.tv_off_sharp, size: 22.sp, color: Colors.grey.shade400),
                    Text('No leaks, yay!', style: TextStyle(color: Colors.grey.shade400),)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  TextStyle textStyle2 = TextStyle(
      fontSize: 20.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600
  );
}
