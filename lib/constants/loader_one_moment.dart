import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class PaymentLoader extends StatefulWidget {
  const PaymentLoader({super.key});

  @override
  State<PaymentLoader> createState() => _PaymentLoaderState();
}

class _PaymentLoaderState extends State<PaymentLoader> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pop(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 5.sp,),
            Text('One Moment, please!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),),
            Text('Your purchase is being processed', style: TextStyle(fontSize: 12.sp, color: Colors.black26),),
          ],
        ),
      ),
    );
  }
  void hide(BuildContext context) {
    Navigator.of(context).pop();
  }
}

