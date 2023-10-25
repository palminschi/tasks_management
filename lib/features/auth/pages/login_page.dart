import 'package:country_picker/country_picker.dart';
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
  final TextEditingController textController = TextEditingController();
  Country country = Country(
      phoneCode: "1",
      countryCode: "US",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "USA",
      example: "USA",
      displayName: "United States",
      displayNameNoCountryCode: "US",
      e164Key: "");

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
                  controller: textController,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                                backgroundColor: AppConst.kBkDark,
                                textStyle: appStyle(
                                    16, AppConst.kLight, FontWeight.w500),
                                bottomSheetHeight: AppConst.kHeight * 0.6,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(AppConst.kRadius),
                                    topRight:
                                        Radius.circular(AppConst.kRadius))),
                            onSelect: (code) {
                              setState(() {});
                            });
                      },
                      child: ReusableText(
                        text: "${country.flagEmoji} +${country.phoneCode}",
                        style: appStyle(18, AppConst.kBkDark, FontWeight.bold),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  hintText: "Enter phone number",
                  hintStyle: appStyle(16, AppConst.kBkDark, FontWeight.w600),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: CustomOutlineButton(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpPage()));
                    },
                    width: AppConst.kWidth * 0.85,
                    height: AppConst.kHeight * 0.09,
                    colorText: AppConst.kBkDark,
                    colorBackground: AppConst.kLight,
                    text: "Send Code"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
