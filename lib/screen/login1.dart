import 'package:divar_ui/screen/login2.dart';
import 'package:divar_ui/screen/signup1.dart';
import 'package:divar_ui/widgets/red_bottom_icon.dart';
import 'package:divar_ui/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

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
                    Text(
                      'ورود به',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Image.asset('assets/images/loginframe.png'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const Textfieldcontainer(
                  height: 48,
                  width: double.infinity,
                  radius: 4,
                  hinttext: 'شماره موبایل',
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login2(),
                    ),
                  ),
                  child: const RedBottomicon(
                    radius: 4,
                    width: double.infinity,
                    height: 48,
                    topic: 'مرحله بعد',
                    fontsize: 16,
                    icon: 'assets/images/arrow-right.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تاحالا ثبت نام نکردی؟',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup1(),
                          ),
                        ),
                        child: Text(
                          'ثبت نام',
                          style: Theme.of(context).textTheme.headlineSmall,
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
