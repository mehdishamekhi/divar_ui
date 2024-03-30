import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/category_container_profile.dart';
import 'package:divar_ui/widgets/red_bottom.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchcontroller = TextEditingController();
    var scrollcontroller = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset('assets/images/Frame 6.png'),
        ),
        backgroundColor: AppColor.white,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            controller: scrollcontroller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                search_container(searchcontroller: searchcontroller),
                const SizedBox(
                  height: 20,
                ),
                const hesabkarbary(),
                const SizedBox(
                  height: 20,
                ),
                const personal_info(),
                const SizedBox(
                  height: 50,
                ),
                const DottedLine(
                  dashColor: AppColor.grey,
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  dashGapLength: 0,
                ),
                const SizedBox(
                  height: 50,
                ),
                CategoryContainerProfile(
                  imageadderss: 'assets/images/note-2.png',
                  topic: 'اگهی های من',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryContainerProfile(
                  imageadderss: 'assets/images/card.png',
                  topic: 'پرداخت های من',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryContainerProfile(
                  imageadderss: 'assets/images/eye.png',
                  topic: 'بازدید های اخیر',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryContainerProfile(
                  imageadderss: 'assets/images/save-2.png',
                  topic: 'ذخیره شده ها',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryContainerProfile(
                  imageadderss: 'assets/images/setting.png',
                  topic: 'تنظیمات',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryContainerProfile(
                  imageadderss: 'assets/images/message-question.png',
                  topic: 'پشتیبانی و قوانین',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryContainerProfile(
                  imageadderss: 'assets/images/info-circle.png',
                  topic: 'درباره آویز',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'نسخه\n۱.۵.۹',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class personal_info extends StatelessWidget {
  const personal_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 95,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColor.grey,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/edit.png',
              height: 24,
              width: 24,
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  'مهدی شامخی',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Row(
                  children: [
                    RedBottom(
                      ontap: () {},
                      radius: 4,
                      width: 66,
                      height: 26,
                      topic: 'تایید شده',
                      fontsize: 12,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '۰۹۱۸۵۸۶۵۹۱۷',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(22),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/profile-p.jpeg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class hesabkarbary extends StatelessWidget {
  const hesabkarbary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'حساب کاربری',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          width: 5,
        ),
        Image.asset(
          'assets/images/profile-circle.png',
          height: 24,
          width: 24,
        ),
      ],
    );
  }
}

class search_container extends StatelessWidget {
  const search_container({
    super.key,
    required this.searchcontroller,
  });

  final TextEditingController searchcontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 343,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColor.grey,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 300,
              height: 30,
              child: TextField(
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                controller: searchcontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'جستجو...',
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/search-normal.png',
            height: 24,
            width: 24,
          ),
        ],
      ),
    );
  }
}
