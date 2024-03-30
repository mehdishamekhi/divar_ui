import 'package:divar_ui/screen/item_detail.dart';
import 'package:divar_ui/screen/whole_hot_aviz_page.dart';
import 'package:divar_ui/screen/whole_recent_aviz_page.dart';
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HotAviz(),
                        ),
                      );
                    },
                    child: Text(
                      'مشاهده همه',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'آویز های داغ',
                    style: Theme.of(context).textTheme.titleLarge,
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
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ItemDetailScreen(),
                          ),
                        ),
                        child: const horizontalcontainer(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 40,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RecentAviz(),
                        ),
                      );
                    },
                    child: Text(
                      'مشاهده همه',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'آویز های اخیر',
                    style: Theme.of(context).textTheme.titleLarge,
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
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 17,
                        vertical: 10,
                      ),
                      child: InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ItemDetailScreen(),
                                ),
                              ),
                          child: const verticalcontainer()),
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
            Column(
              children: [
                Text(
                  'ویلا ۵۰۰ متری زیر قیمت',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Spacer(),
                Text(
                  'سال ساخت ۱۳۹۸\nسند تک برگ٫دوبلکس \nتجهیزات کامل',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      '۲۵٫۶۸۳٫۰۰۰٫۰۰۰',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      ':قیمت',
                      style: Theme.of(context).textTheme.displayLarge,
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
            Text(
              'ویلا ۵۰۰ متری زیر قیمت',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Spacer(),
            Text(
              'ویو عالی٫سندتک برگ٫سال ساخت ٫۱۴۰۲تحویل فوری',
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  'قیمت:',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Spacer(),
                Text(
                  '۲۵٫۶۸۳٫۰۰۰٫۰۰۰',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
