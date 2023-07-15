import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ultra_vpn/screens/dark_web_monitor.dart';
import 'package:ultra_vpn/screens/refer_friend_screen.dart';
import 'package:ultra_vpn/screens/security_progress.dart';
import 'package:ultra_vpn/screens/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  bool showMore = false;
  bool isExpanded = false;
  TextStyle expansionText = TextStyle(fontSize: 17.sp, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(
                builder: (context)=> SettingsScreen()));
          },
              icon: Icon(Icons.settings, size: 22.sp, color: Colors.grey,)),
          SizedBox(width: 7.5.sp,)
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.grey.shade200,
          padding: EdgeInsets.all(15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('dipenpau@gmail.com', style: TextStyle(fontSize: 15.sp)),
              SizedBox(height: 15 .sp,),
              Text('Profile', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.sp),),
              SizedBox(height: 5.sp,),
              Text('Subscription active until Aug 5, 2023', style: TextStyle(fontSize: 15.sp)),
              Padding(
                padding: EdgeInsets.only(top: 20.sp, bottom: 10.sp),
                child: Container(
                  height: Adaptive.h(10),
                  width: Adaptive.w(100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.sp),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularPercentIndicator(
                            radius: 22.sp,
                          percent: 1,
                          center: Text('1', style: TextStyle(color: Colors.blue.shade300, fontWeight: FontWeight.bold, fontSize: 18.sp),),
                          progressColor: Colors.blue.shade300,
                        ),
                        SizedBox(width: 17.sp,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 7.sp,
                                  backgroundColor: Colors.blue.shade200,
                                ),
                                SizedBox(width: 10.sp,),
                                Text('Current Streak', style: TextStyle(color: Colors.grey.shade600,fontSize: 16.sp),),
                              ],
                            ),
                            SizedBox(height: 5.sp,),
                            Text('1 Day', style: TextStyle(fontSize: 18.sp, color: Colors.black))
                          ],
                        ),
                        SizedBox(width: 17.sp,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 7.sp,
                                  backgroundColor: Colors.grey.shade300,
                                ),
                                SizedBox(width: 10.sp,),
                                Text('Max Streak', style: TextStyle(color: Colors.grey.shade600,fontSize: 16.sp)),
                              ],
                            ),
                            SizedBox(height: 5.sp,),
                            Text('1 Day', style: TextStyle(fontSize: 18.sp, color: Colors.black))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
                child: Container(
                  height: Adaptive.h(15),
                  width: Adaptive.w(100),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.sp)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.sp, bottom: showMore ? 10.sp : 0.sp),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=> DarkWebMonitor()));
                      },
                      child: Container(
                        height: Adaptive.h(14),
                        width: Adaptive.w(45),
                        padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.face, size: 28.sp, color: Colors.green,),
                            SizedBox(height: 10.sp,),
                            Text('Dark Web Monitor', style: TextStyle(color: Colors.grey,
                                fontSize: 15.sp),),
                            SizedBox(height: 10.sp,),
                            Row(
                              children: [
                                Text('No Leaks ', style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp)),
                                Icon(Icons.arrow_forward_ios_rounded,
                                  size: 19.sp, color: Colors.green,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12.sp,),
                    Container(
                      height: Adaptive.h(14),
                      width: Adaptive.w(45),
                      padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.face, size: 28.sp, color: Colors.blue.shade300,),
                          SizedBox(height: 10.sp,),
                          Text('Security Score', style:
                          TextStyle(color: Colors.grey, fontSize: 15.sp),),
                          SizedBox(height: 10.sp,),
                          Row(
                            children: [
                              Text('15%  ',
                                  style: TextStyle(
                                      color: Colors.blue.shade300,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp)),
                              Icon(Icons.arrow_forward_ios_rounded, size: 19.sp, color: Colors.blueAccent,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              showMore
                  ? Padding(
                padding: EdgeInsets.only(top: 10.sp),
                child: Row(
                  children: [
                    Container(
                      height: Adaptive.h(14),
                      width: Adaptive.w(45),
                      padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.drive_file_move_outline, size: 28.sp, color: Colors.blue.shade300,),
                          SizedBox(height: 10.sp,),
                          Text('Protocol', style: TextStyle(color: Colors.grey,
                              fontSize: 15.sp),),
                          SizedBox(height: 10.sp,),
                          Row(
                            children: [
                              Text('-',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp)),
                              // Icon(Icons.arrow_forward_ios_rounded, size: 19.sp, color: Colors.blueAccent,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12.sp,),
                    Container(
                      height: Adaptive.h(14),
                      width: Adaptive.w(45),
                      padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.lock_clock, size: 28.sp, color: Colors.blue.shade300,),
                          SizedBox(height: 10.sp,),
                          Text('Longest connection',
                            style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
                          SizedBox(height: 10.sp,),
                          Row(
                            children: [
                              Text('0h 8min 53s', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19.sp)),
                              // Icon(Icons.arrow_forward_ios_rounded, size: 19.sp, color: Colors.blueAccent,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
                  : Container(),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        showMore = !showMore;
                      });
                    },
                    child: Text(showMore ? 'Show less' : 'Show more',
                      style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16.sp),)),
              ),
              Container(
                width: Adaptive.w(100),
                padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shortcuts', style: TextStyle(color: Colors.grey, fontSize: 16.sp), ),
                    SizedBox(height: 15.sp,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=> SecurityProgress()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.login_outlined, size: 22.sp, ),
                          SizedBox(width: 12.sp,),
                          Text('Security Progress', style: TextStyle(fontSize: 18.sp),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15.sp,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/referAFriend');
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> ReferFriendScreen()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.card_giftcard_outlined, size: 22.sp),
                          SizedBox(width: 12.sp,),
                          Text('Refer a friend', style: TextStyle(fontSize: 18.sp),)
                        ],
                      ),
                    ),
                    isExpanded ? SizedBox(height: 15.sp,) : SizedBox(height: 5.sp,),
                    ExpansionTile(
                      tilePadding: EdgeInsets.only(left: -10.sp),
                      onExpansionChanged: (value) {

                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },

                      title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.help_outline_outlined, size: 22.sp, color: isExpanded ? Colors.blue : Colors.black,),
                        SizedBox(width: 12.sp,),
                        Text('Help center', style: TextStyle(fontSize: 18.sp),)
                      ],
                    ),
                      expandedAlignment: Alignment.centerLeft,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      childrenPadding: EdgeInsets.only(left: 7.5.sp, top: 10.sp, right: 7.5.sp),
                      children: [
                        Text('Contact us', style: expansionText,),
                        SizedBox(height: 10.sp,),
                        SizedBox(
                          width: Adaptive.w(100),
                          child: Divider(
                            color: Colors.black45,
                            thickness: 0.5,
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text('App Logs', style: expansionText),
                        SizedBox(height: 10.sp,),
                        SizedBox(
                          width: Adaptive.w(100),
                          child: Divider(
                            color: Colors.black45,
                            thickness: 0.5,
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text('Privacy Policy', style: expansionText,),
                        SizedBox(height: 10.sp,),
                        SizedBox(
                          width: Adaptive.w(100),
                          child: Divider(
                            color: Colors.black45,
                            thickness: 0.5,
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text('Terms of Service', style: expansionText,),
                        SizedBox(height: 10.sp,),
                        SizedBox(
                          width: Adaptive.w(100),
                          child: Divider(
                            color: Colors.black45,
                            thickness: 0.5,
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text('Subscription Info', style: expansionText,),
                        SizedBox(height: 15.sp,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.sp,),
              Container(
                padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp)),
                height: 30.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.logout_outlined, color: Colors.black, size: 22.sp),
                    SizedBox(width: 12.sp,),
                    Text('Log out', style: TextStyle(color: Colors.black, fontSize: 18.sp),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

