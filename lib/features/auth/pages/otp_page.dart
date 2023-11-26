import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:tasks_management/common/utils/constants.dart';
import 'package:tasks_management/common/widgets/appstyle.dart';
import 'package:tasks_management/common/widgets/reusable_text.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppConst.kHeight * 0.12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/images/img_girl_2.png",
                  width: AppConst.kWidth * 0.5,
                ),
              ),

              const SizedBox(height: 26),

              ReusableText(text: "Enter your OTP code", style: appStyle(
                  18, AppConst.kLight, FontWeight.bold)),

              Pinput(
                length: 6,
                showCursor: true,
                onCompleted: (value) {
                  if (value.length == 6) {

                  }
                },
                onSubmitted: (value) {

                },
              )
            ],
          ),
        )));
  }
}
