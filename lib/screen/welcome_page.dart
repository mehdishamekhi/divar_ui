import 'package:divar_ui/screen/login1.dart';
import 'package:divar_ui/screen/signup1.dart';
import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/red_bottom.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: SizedBox(
                    height: 224,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: controller,
                      itemCount: 3,
                      itemBuilder: (context, int) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset('assets/images/welcome1.png'),
                            Image.asset('assets/images/welcome2.png'),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'اینجا محل',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Image.asset('assets/images/loginframe.png'),
                    Text(
                      'آگهی شماست',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'در آویز ملک خود را برای فروش ٫اجاره و رهن آگهی کنید و یا اگر دنبال ملک بامشخصات دلخواه خود هستید آویز ها را ببنید',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                SmoothPageIndicator(
                  effect: const WormEffect(
                    dotColor: AppColor.grey,
                    activeDotColor: AppColor.red,
                    dotHeight: 6,
                    dotWidth: 10,
                    type: WormType.normal,
                  ),
                  controller: controller,
                  count: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      RedBottom(
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signup1(),
                            ),
                          );
                        },
                        radius: 4,
                        width: 159,
                        height: 40,
                        topic: 'ثبت نام',
                        fontsize: 14,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login1(),
                          ),
                        ),
                        child: Container(
                          height: 40,
                          width: 159,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColor.red,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              'ورود',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
