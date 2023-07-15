import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ultra_vpn/screens/profileScreen.dart';
import 'package:ultra_vpn/screens/welcome_screen.dart';
import '../constants/loader_one_moment.dart';
import '../constants/refresh_screen.dart';
import '../widgets/homescreen_widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isConnected = false;
  String titleOfExpansion = 'VPN Not Connected';

  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: Adaptive.h(50),
                    ),
                    // Container(
                    //   child: ExpansionTile(
                    //     backgroundColor: Colors.green.shade300,
                    //     onExpansionChanged: (value) {
                    //       titleOfExpansion = 'Connected to Country';
                    //     },
                    //     title: Text(titleOfExpansion,
                    //       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.sp),),
                    //     children: [
                    //       SizedBox(height: 5.sp),
                    //       Divider(
                    //         height: 1.sp,
                    //         thickness: 0.1,
                    //         color: Colors.black,
                    //       ),
                    //       container('Protocol', 'NordLynx'),
                    //       Divider(
                    //         height: 1.sp,
                    //         thickness: 0.1,
                    //         color: Colors.black,
                    //       ),
                    //       container('Your IP Address', '45.45.56.62'),
                    //       Divider(
                    //         height: 1.sp,
                    //         thickness: 0.1,
                    //         color: Colors.black,
                    //       ),
                    //       container('Connection Active', '00:07'),
                    //     ],
                    //     trailing: isConnected ? Icon(Icons.expand_less, color: Colors.white,) : SizedBox(),
                    //   ),
                    // ),
                    InkWell(
                      onTap: _toggleExpanded,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: _isExpanded ? 60.sp : 30.sp,
                        decoration: BoxDecoration(
                          color: _isExpanded
                              ? Colors.green.shade300
                              : Colors.black38,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: _isExpanded
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 18.0, top: _isExpanded ? 15.sp : 0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  _isExpanded
                                      ? 'Connected to Country'
                                      : titleOfExpansion,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: _isExpanded
                                        ? Colors.white
                                        : Colors.red.shade300,
                                  ),
                                ),
                              ),
                            ),
                            _isExpanded
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 15.sp),
                                      Divider(
                                        height: 1.sp,
                                        thickness: 0.1,
                                        color: Colors.black,
                                      ),
                                      container('Protocol', 'NordLynx'),
                                      Divider(
                                        height: 1.sp,
                                        thickness: 0.1,
                                        color: Colors.black,
                                      ),
                                      container(
                                          'Your IP Address', '45.45.56.62'),
                                      Divider(
                                        height: 1.sp,
                                        thickness: 0.1,
                                        color: Colors.black,
                                      ),
                                      container('Connection Active', '00:07'),
                                    ],
                                  )
                                : Container(),

                            // Container(
                            //   // height: 60.sp,
                            //   color: Colors.green,
                            //   child: ListView.builder(
                            //     itemCount: 4, // Replace with your actual item count
                            //     itemBuilder: (context, index) => ListTile(
                            //       title: Text('Item $index'),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: Adaptive.w(100),
                  height: Adaptive.h(15),
                  margin: EdgeInsets.all(17.5.sp),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        isConnected
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 18.sp,
                                      child: Icon(
                                        Icons.shield,
                                        color: Colors.red,
                                        size: 21.sp,
                                      )),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'You are unprotected',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 17.sp),
                                      ),
                                      SizedBox(
                                        height: 5.sp,
                                      ),
                                      Text(
                                        'Connect to VPN for online security',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 18.sp,
                                      child: Icon(
                                        Icons.flag_circle,
                                        size: 25.sp,
                                      )),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Text(
                                    'United States',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 19.sp),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 18.sp,
                                      child: Icon(Icons.cameraswitch_rounded,
                                          size: 17.sp))
                                ],
                              ),
                        SizedBox(
                          height: 17.sp,
                        ),
                        isConnected
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: Adaptive.w(82) / 2,
                                    height: 27.5.sp,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            isConnected = false;
                                          });
                                        },
                                        child: Text(
                                          'PAUSE',
                                          style: TextStyle(fontSize: 17.sp),
                                        )),
                                  ),
                                  SizedBox(
                                    width: Adaptive.w(82) / 2,
                                    height: 27.5.sp,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            isConnected = false;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.grey),
                                        child: Text(
                                          'DISCONNECT',
                                          style: TextStyle(fontSize: 17.sp),
                                        )),
                                  ),
                                ],
                              )
                            : SizedBox(
                                width: Adaptive.w(100),
                                height: 27.5.sp,
                                child: ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => PaymentLoader(),
                                      //   ),
                                      // );
                                      //
                                      // LoadingAlert.show(context);
                                      // Future.delayed(Duration(seconds: 3), () {
                                      //   LoadingAlert.hide(context);
                                      // });
                                      setState(() {
                                        isConnected = true;
                                      });
                                    },
                                    child: Text(
                                      'QUICK CONNECT',
                                      style: TextStyle(fontSize: 17.sp),
                                    )),
                              )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.sp, bottom: 10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Browse',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 13.sp,
                      ),
                      horizontalTile(Icons.refresh, 'Traffic routing'),
                      SizedBox(
                        height: 12.sp,
                      ),
                      horizontalTile(
                          Icons.drive_file_move_sharp, 'Speciality servers'),
                      SizedBox(
                        height: 12.sp,
                      ),
                      horizontalTile(Icons.search_outlined, 'Search'),
                      SizedBox(
                        height: 12.sp,
                      ),
                    ],
                  ),
                ),
                isConnected
                    ? Padding(
                        padding: EdgeInsets.only(left: 17.sp, bottom: 10.sp),
                        child: Text(
                          'Available Cities',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(left: 17.sp, bottom: 10.sp),
                        child: Text(
                          'All countries',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                isConnected
                    ? Column(
                        children: List.generate(10, (index) {
                          return Container(
                            height: 30.sp,
                            width: Adaptive.w(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.sp),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 22.sp,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CityName $index',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 5.sp,
                                      ),
                                      Text(
                                        'Servers $index',
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      )
                    : Column(
                        children: List.generate(10, (index) {
                          return Container(
                            height: 30.sp,
                            width: Adaptive.w(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 12.sp, right: 12.sp),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 22.sp,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CountryName $index',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 5.sp,
                                      ),
                                      Text(
                                        '$index Cities Available',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.more_horiz_outlined,
                                    size: 23.sp,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget horizontalTile(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue, size: 20.sp),
        SizedBox(
          width: 18.sp,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }

  TextStyle textStyle = TextStyle(color: Colors.black, fontSize: 17.5.sp);
}
