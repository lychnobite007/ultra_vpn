import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReferFriendScreen extends StatelessWidget {
   ReferFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text('Refer a Friend', style: TextStyle(color: Colors.white, fontSize: 18.sp),),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15.sp,),
              Container(
                margin: EdgeInsets.only(left: 15.sp, right: 15.sp),
                height: Adaptive.h(25),
                color: Colors.blue.shade100,
                width: Adaptive.w(100),
              ),
              SizedBox(height: 10.sp,),
              Text('Refer a friend, get 3 months free',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20.sp, letterSpacing: -1, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.sp,),
              Column(
                children: [
                  Text('The more friends you refer, the more free months', style: textStyle,),
                  Text('you receive! Your friend gets up to 3 free months', style: textStyle,),
                  Text('depending on the plan they choose.', style: textStyle,),
                  SizedBox(height: 17.sp,),
                  SizedBox(
                    width: Adaptive.w(76.5),
                    height: 27.sp,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade400,
                      ),
                        onPressed: (){},
                        child: Text('SHARE INVITATION', style: TextStyle(fontSize: 17.sp),)),
                  ),
                  SizedBox(height: 15.sp,),
                  Text('OR COPY LINK', style: TextStyle(fontSize: 14.sp, color: Colors.grey) ,),
                  SizedBox(height: 15.sp,),
                  Container(
                    height: 27.sp,
                    width: Adaptive.w(76.5),
                    padding: EdgeInsets.only(left: 12.sp),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.sp)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Link that needs to be copied'),
                        IconButton(onPressed: (){}, icon: Icon(Icons.copy)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.sp,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 12.sp ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('How it works', style: textStyle2,),
                      SizedBox(height: 20.sp,),
                      instructionsBox(Icons.person, 'Invite a friend', 'Do you know someone who is not using UltraVPN yet? Invite them to sign up with your unique referral link.'),
                      SizedBox(height: 15.sp,),
                      instructionsBox(Icons.hourglass_empty_outlined, 'Wait for 30 days', 'Your friend buys a subscription and stays with us for at least 30 days, Great! You are now  eligible for a reward.'),
                      SizedBox(height: 15.sp,),
                      instructionsBox(Icons.card_giftcard_outlined, 'Get 3 months free', 'We add three extra months to your account. Your friend gets 3 months if they buy the 1-year or 2-year plan, and 1 extra month if they choose the monthly plan.'),
                      SizedBox(height: 15.sp,),
                      Text('Got questions?', style: textStyle2,),
                      SizedBox(height: 10.sp,),
                      Padding(
                        padding: EdgeInsets.only(left: 10.sp, right: 10.sp,),
                        child: Text('Find answers to frequently asked questions and learn more about our referral program.', style: textStyle),
                      ),
                      SizedBox(height: 20.sp,),
                      SizedBox(
                        width: Adaptive.w(42),
                        height: 29.sp,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                            ),
                            onPressed: (){},
                            child: Text('LEARN MORE', style: TextStyle(fontSize: 18.sp),)),
                      ),
                      SizedBox(height: 30.sp,),
                      Padding(
                        padding: EdgeInsets.only(left: 10.sp, right: 10.sp,),
                        child: Row(
                          children: [
                            Text("Refer a friend program's", style: textStyle,),
                            Text("Terms and Conditions", style: textStyle,),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.sp,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

    TextStyle textStyle = TextStyle(
    fontSize: 15.sp,
    color: Colors.black45,
    fontWeight: FontWeight.w600
  );
   TextStyle textStyle2 = TextStyle(
       fontSize: 20.sp,
       color: Colors.black,
       fontWeight: FontWeight.w600
   );
   TextStyle textStyle3 = TextStyle(
       fontSize: 17.sp,
       color: Colors.black,
       fontWeight: FontWeight.bold
   );

   Widget instructionsBox (IconData icon, String text, String text2) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Icon(icon, color: Colors.blue, size: 25.sp,),
         SizedBox(height: 5.sp,),
         Padding(
           padding: EdgeInsets.only(left: 10.sp,),
           child: Text(text, style: textStyle3,),
         ),
         SizedBox(height: 5.sp,),
         Padding(
           padding: EdgeInsets.only(left: 10.sp, right: 10.sp,),
           child: Text(text2, style: textStyle,),
         )
       ],
     );
   }

}
