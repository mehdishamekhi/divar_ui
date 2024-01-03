import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/red_bottom_icon.dart';
import 'package:divar_ui/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Signup1 extends StatelessWidget {
  const Signup1({super.key});

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
                Row(
                  children: [
                    const Text(
                      'خوش اومدی به',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'shabnam',
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset('assets/images/loginframe.png'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'این فوق العاده است که آویز رو برای آگهی هات انتخاب کردی!',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'shabnam',
                      color: AppColor.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Textfieldcontainer(
                  height: 48,
                  width: double.infinity,
                  radius: 4,
                  hinttext: 'نام و نام خانوادگی',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Textfieldcontainer(
                    height: 48,
                    width: double.infinity,
                    radius: 4,
                    hinttext: 'شماره موبایل',
                  ),
                ),
                const Spacer(),
                const RedBottomicon(
                  radius: 4,
                  width: double.infinity,
                  height: 48,
                  topic: 'مرحله بعد',
                  fontsize: 16,
                  icon: 'assets/images/arrow-right.png',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'قبلا ثبت نام کردی؟',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'shabnam',
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ورود',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'shabnam',
                          color: AppColor.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
