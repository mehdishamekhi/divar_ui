import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset('assets/images/Frame 5.png'),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Row(
                children: [
                  Text(
                    'مشاهده همه',
                    style: TextStyle(
                      fontFamily: 'shabnam',
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'آویز های داغ',
                    style: TextStyle(
                      fontFamily: 'shabnam',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 270,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: horizontalcontainer(),
                    );
                  },
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 40,
              ),
              child: Row(
                children: [
                  Text(
                    'مشاهده همه',
                    style: TextStyle(
                      fontFamily: 'shabnam',
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'آویز های اخیر',
                    style: TextStyle(
                      fontFamily: 'shabnam',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: 334,
              height: 270,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      child: verticalcontainer(),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class verticalcontainer extends StatelessWidget {
  const verticalcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139,
      width: 343,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColor.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset('assets/images/verticalimage.png'),
            const Spacer(),
            const Column(
              children: [
                Text(
                  'ویلا ۵۰۰ متری زیر قیمت',
                  style: TextStyle(
                    fontFamily: 'shabnam',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Text(
                  'سال ساخت ۱۳۹۸\nسند تک برگ٫دوبلکس \nتجهیزات کامل',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'shabnam',
                    color: Color.fromARGB(255, 188, 190, 193),
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      '۲۵٫۶۸۳٫۰۰۰٫۰۰۰',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontWeight: FontWeight.bold,
                        color: AppColor.red,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      ':قیمت',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class horizontalcontainer extends StatelessWidget {
  const horizontalcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 267,
      width: 224,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColor.grey,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              'assets/images/hoimage.png',
              height: 112,
              width: 192,
            ),
            const Spacer(),
            const Text(
              'ویلا ۵۰۰ متری زیر قیمت',
              style: TextStyle(
                fontFamily: 'shabnam',
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            const Text(
              'ویو عالی٫سندتک برگ٫سال ساخت ٫۱۴۰۲تحویل فوری',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'shabnam',
                color: Color.fromARGB(255, 188, 190, 193),
                fontSize: 12,
              ),
            ),
            const Spacer(),
            const Row(
              children: [
                Text(
                  'قیمت:',
                  style: TextStyle(
                    fontFamily: 'shabnam',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Text(
                  '۲۵٫۶۸۳٫۰۰۰٫۰۰۰',
                  style: TextStyle(
                    fontFamily: 'shabnam',
                    fontWeight: FontWeight.bold,
                    color: AppColor.red,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
