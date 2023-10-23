import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tasks_management/common/utils/constants.dart';
import 'package:tasks_management/common/widgets/appstyle.dart';
import 'package:tasks_management/common/widgets/custom_otn_btn.dart';
import 'package:tasks_management/common/widgets/reusable_text.dart';

import '../../../common/widgets/custom_text_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/images/img_girl_2.png",
                  width: 300,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: (ReusableText(
                  text: "Please enter your phone number",
                  style: appStyle(17, AppConst.kLight, FontWeight.w500),
                )),
              ),
              SizedBox(height: 20.h),
              Center(
                child: CustomTextField(
                  controller: ,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(4),
                    child: GestureDetector(
                        //TODO: Finish
                        ),
                  ),
                  keyboardType: TextInputType.phone,
                  hintText: "Enter phone number",
                  hintStyle: appStyle(16, AppConst.kBkDark, FontWeight.w600),
                ),
              ),
              SizedBox(height: 20.h),
              CustomOutlineButton(
                  width: AppConst.kWidth * 0.8,
                  height: AppConst.kHeight * 0.07,
                  colorText: AppConst.kBkDark,
                  colorBackground: AppConst.kLight,
                  text: "Send Code")
            ],
          ),
        ),
      ),
    );
  }
}
