import 'package:divar_ui/screen/whole_screen.dart';
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
                Text(
                  'تایید شماره موبایل',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'کد ورود پیامک شده را وارد کنید',
                    style: Theme.of(context).textTheme.bodySmall,
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '۰۰.۴۵',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'ارسال مجدد کد',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                RedBottom(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WholeScreen(),
                      ),
                    );
                  },
                  radius: 4,
                  width: double.infinity,
                  height: 48,
                  topic: 'تایید ورود',
                  fontsize: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
