import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/security_progress_widgets/security_progress_widgets.dart';

class SecurityProgress extends StatefulWidget {
  const SecurityProgress({super.key});

  @override
  State<SecurityProgress> createState() => _SecurityProgressState();
}

class _SecurityProgressState extends State<SecurityProgress> {
  List<bool> _selectionStates = List.generate(7, (index) => false);

  List<String> _selectedList = [
    'Connect to VPN',
    'Set up auto connect',
    'Turn on Threats Protection Tile',
    'Turn on Dark Web Monitor',
    'Multi-factor Authentication',
    'Update the app',
    'Secure more devices'
  ];

  void _handleCheckboxValueChanged(int index, bool? value, ) {
    // Handle the state update here
    setState(() {
      _selectionStates[index] = value!;
    });

    // Perform any additional logic based on the updated value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: Adaptive.h(15),
                color: Colors.blue.shade700,
                padding: EdgeInsets.only(top: 15.sp, left: 10.sp, right: 10.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 22.sp,)),
                        SizedBox(width: 30.sp),
                        Text('Your security progress', style: TextStyle(color: Colors.white, fontSize: 18.sp),)
                      ],
                    ),
                    SizedBox(height: 15.sp,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.sp),
                      child: Container(
                        width: Adaptive.w(100),
                        child: LinearProgressIndicator(
                          color: Colors.grey.shade50,
                          minHeight: 12.sp,
                          value: 0.75,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            Container(
              height: Adaptive.h(60),
              child: Align(
                child: ListView.builder(
                    itemCount: _selectedList.length,
                    itemBuilder: (context,  index) {
                  return Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 10.sp),
                        child: checkBoxTile(_selectedList[index], _selectionStates[index], (value) => _handleCheckboxValueChanged(index, value),),
                      ),
                      SizedBox(
                        height: 10.sp,
                        width: Adaptive.w(100),
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),

            ],
          ),
        ),
      ),
    );
  }
}
