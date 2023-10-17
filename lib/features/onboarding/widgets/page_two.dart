import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_management/common/utils/constants.dart';

import '../../../common/widgets/appstyle.dart';
import '../../../common/widgets/custom_otn_btn.dart';
import '../../../common/widgets/reusable_text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kBkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Image.asset("assets/images/img_girl_2.png"),
          ),
          SizedBox(height: 30.h),
          CustomOutlineButton(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()
                    )
                );
              },
              width: AppConst.kWidth * 0.9,
              height: AppConst.kHeight * 0.06,
              color: AppConst.kLight,
              text: "Login with a phone number"
          )
        ],
      ),
    );
  }
}
