import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'data_information_screen.dart';

class DarkWebMonitor extends StatelessWidget {
  DarkWebMonitor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined,size: 22.sp, color: Colors.black,)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.sp, right: 30.sp),
                  height: Adaptive.h(25),
                  color: Colors.blue.shade100,
                  width: Adaptive.w(100),
                ),
                SizedBox(height: 10.sp,),
                Text('Defend your data with',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20.sp, letterSpacing: 0, fontWeight: FontWeight.w500),),
                Text('Dark Web Monitor',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20.sp, letterSpacing: 0, fontWeight: FontWeight.w500),),
                SizedBox(height: 10.sp,),
                Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 15.sp,),
                  child: Text('It searches the dark web for sensitive data linked to',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: textStyle,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp, right: 20.sp,),
                  child: Text('your email address: passwords, contacts, or any',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: textStyle,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp, right: 20.sp,),
                  child: Text('other personal details.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: textStyle,),
                ),
                SizedBox(height: 15.sp,),
                Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 15.sp,),
                  child: Text('If we find your data exposed, we send you an alert.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: textStyle,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp, right: 20.sp,),
                  child: Text('This way, you can change passwords to protect',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: textStyle,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp, right: 20.sp,),
                  child: Text('your accounts right away.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: textStyle,),
                ),
                SizedBox(height: 72.sp,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: Adaptive.h(11.sp),
                    width: Adaptive.w(95),
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
                          onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context)=> DataInformationScreen()));
                          },
                          child: Text("TURN ON", style: TextStyle(fontSize: 18.sp),)),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  TextStyle textStyle = TextStyle(
      fontSize: 15.sp,
      color: Colors.black45,
      fontWeight: FontWeight.w600
  );
}
