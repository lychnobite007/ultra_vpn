import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close, size: 22.sp,
              color: Colors.black,)),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: Adaptive.h(100),
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Adaptive.h(30),
              ),
              Text('Welcome to UltraVPN!', style: TextStyle(color: Colors.blue.shade300, fontSize: 22.sp, fontWeight: FontWeight.bold),),
              Center(
                child: Text('Now you can connect to VPN and enjoy ultimate',
                maxLines: 2,
                style: TextStyle(color: Colors.grey, fontSize: 16.sp)),
              ),
              Center(
                child: Text('privacy and security online.',
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey, fontSize: 16.sp)),
              ),
              Spacer(),
              Container(
                height: Adaptive.h(11.sp),
                width: Adaptive.w(100),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15.sp)
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade300
                    ),
                      onPressed: (){},
                      child: Text("LET's GO")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
