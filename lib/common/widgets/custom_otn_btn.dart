import 'package:flutter/material.dart';
import 'package:tasks_management/common/utils/constants.dart';
import 'package:tasks_management/common/widgets/appstyle.dart';
import 'package:tasks_management/common/widgets/reusable_text.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {Key? key,
      this.onTap, this.width, this.height,
      this.colorBackground,
      required this.colorText,
      required this.text})
      : super(key: key);

  final void Function()? onTap;
  final double? width;
  final double? height;
  final Color? colorBackground;
  final Color colorText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? AppConst.kWidth * 0.8,
        height: height,
        decoration: BoxDecoration(
            color: colorBackground,
            borderRadius: BorderRadius.all(Radius.circular(AppConst.kRadius)),
            border: Border.all(width: 1, color: colorText)),
        child: Center(
          child: ReusableText(
            text: text,
            style: appStyle(18, colorText, FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
