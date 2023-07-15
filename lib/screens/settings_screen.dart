import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool meteredConnection = false;
  bool threatProtection = false;
  bool tapJacking = false;
  bool improve = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        )
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: Adaptive.w(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.sp, right: 17.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VPN connection',
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Container(
                      height: Adaptive.h(51),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.sp,
                          ),
                          itemsContainer('Auto-connect', 'off'),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 10.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          itemsContainer('Protocol', 'Recommended'),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 10.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          itemsContainer('Split Tunneling',
                              'Disables VPN for selected apps.'),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 10.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          itemsContainer('DNS', 'Default'),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 10.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          itemsContainer('Local Network Discovery',
                              'Enables access to printers, TVs, and other devices when connected.'),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 10.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.sp),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Metered Connection',
                                        style: textStyle1,
                                      ),
                                      Text(
                                          'Metered VPN connection gives you more control over how much data your phone uses through downloads and other apps.',
                                          style: textStyle2),
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: meteredConnection,
                                  onChanged: (value) {
                                    setState(() {
                                      meteredConnection = !meteredConnection;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Text(
                      'Tools',
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Container(
                      height: Adaptive.h(30),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Threat Protection',
                                        style: textStyle1,
                                      ),
                                      Text(
                                          'When you are connected to VPN, DNS filtering blocks malicious domains before any threats reach your device',
                                          style: textStyle2),
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: threatProtection,
                                  onChanged: (value) {
                                    setState(() {
                                      threatProtection = !threatProtection;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 15.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          itemsContainer('Kill Switch',
                              'Blocks unprotected traffic if VPN connection drops.'),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 10.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tapjacking Protection',
                                        style: textStyle1,
                                      ),
                                      Text(
                                          'Warns you if a malicious app adds a screen overlay to trick you into unintended action.',
                                          style: textStyle2),
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: tapJacking,
                                  onChanged: (value) {
                                    setState(() {
                                      tapJacking = !tapJacking;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Text(
                      'General',
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Container(
                      height: Adaptive.h(19),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.sp,
                          ),
                          itemsContainer('Appearance', 'System'),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: SizedBox(
                              height: 10.sp,
                              width: Adaptive.w(100),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Help us improve',
                                        style: textStyle1,
                                      ),
                                      Text(
                                          'Send us anonymous aggregated data: crash reports, OS version, marketing performance, and feature usage data - nothing that could identify you.',
                                          style: textStyle2),
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: improve,
                                  onChanged: (value) {
                                    setState(() {
                                      improve = !improve;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemsContainer(String text1, text2) {
    return Padding(
      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.sp,
          ),
          Text(
            text1,
            style: textStyle1,
          ),
          Text(
            text2,
            style: textStyle2,
          ),
          SizedBox(
            height: 15.sp,
          ),
        ],
      ),
    );
  }

  TextStyle textStyle1 = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
  );
  TextStyle textStyle2 = TextStyle(
    fontSize: 14.sp,
    color: Colors.black45,
  );

  TextStyle textStyle = TextStyle(
      fontSize: 14.sp, color: Colors.black45, fontWeight: FontWeight.w600);
}
