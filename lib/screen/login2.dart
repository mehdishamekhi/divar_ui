import 'package:divar_ui/screen/whole_screen.dart';
import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/red_bottom.dart';
import 'package:divar_ui/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'تایید شماره موبایل',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'shabnam',
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'کد ورود پیامک شده را وارد کنید',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'shabnam',
                      color: AppColor.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textfieldcontainer(
                      height: 48,
                      width: 73,
                      radius: 4,
                      hinttext: '',
                    ),
                    Textfieldcontainer(
                      height: 48,
                      width: 73,
                      radius: 4,
                      hinttext: '',
                    ),
                    Textfieldcontainer(
                      height: 48,
                      width: 73,
                      radius: 4,
                      hinttext: '',
                    ),
                    Textfieldcontainer(
                      height: 48,
                      width: 73,
                      radius: 4,
                      hinttext: '',
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '۰۰.۴۵',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'shabnam',
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'ارسال مجدد کد',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'shabnam',
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WholeScreen(),
                    ),
                  ),
                  child: const RedBottom(
                    radius: 4,
                    width: double.infinity,
                    height: 48,
                    topic: 'تایید ورود',
                    fontsize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
