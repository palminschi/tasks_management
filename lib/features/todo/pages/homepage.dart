import 'package:flutter/material.dart';
import 'package:tasks_management/common/utils/constants.dart';
import 'package:tasks_management/common/widgets/appstyle.dart';
import 'package:tasks_management/common/widgets/reusable_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ReusableText(
            text: "Hello",
            style: appStyle(26, AppConst.kBlueLight, FontWeight.bold)),
        const SizedBox(height: 50)
      ]),
    );
  }
}
