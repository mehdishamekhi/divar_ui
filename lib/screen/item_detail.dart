import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/category_container_with%20icon.dart';
import 'package:divar_ui/widgets/red_bottom_icon.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Update the UI when tabs change
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildTabLabel(int index, String title) {
    if (_tabController.index == index) {
      return Container(
        decoration: BoxDecoration(
          color: AppColor.red, // Color for selected tab
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      );
    } else {
      return Text(
        title,
        style: Theme.of(context).textTheme.displaySmall,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var page1 = ScrollController();
    var page2 = ScrollController();
    var page3 = ScrollController();
    var page4 = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/share.png'),
            const SizedBox(
              width: 25,
            ),
            Image.asset('assets/images/information.png'),
          ],
        ),
        leading: Image.asset('assets/images/archive.png'),
        actions: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset('assets/images/arrow-right.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Image.asset('assets/images/detailimage.png'),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 29,
                        width: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColor.grey,
                        ),
                        child: Center(
                          child: Text(
                            'آپارتمان',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '۱۶ دقیقه پیش در گرگان',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'آپارتمان ۵۰۰ متری در صیاد شیرازی',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.horizontal,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CategoryContainerwithicon(
                  topic: 'هشدار های قبل معامله!',
                  imageadderss: 'assets/images/arrow-left_grey.png',
                  ontap: () {},
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                sliver: SliverToBoxAdapter(
                  child: TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(child: _buildTabLabel(0, 'مشخصات')),
                      Tab(child: _buildTabLabel(1, 'قیمت')),
                      Tab(child: _buildTabLabel(2, 'ویژگی ها و امکانات')),
                      Tab(child: _buildTabLabel(3, 'توضیحات')),
                    ],
                    indicator: const BoxDecoration(),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Page1(page1: page1),
                    Page2(page2: page2),
                    Page3(page3: page3),
                    SingleChildScrollView(
                      controller: page4,
                      child: Column(
                        children: [
                          Text(
                            'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده گذاشتم فروش فوری خریدار باشی تخفیف پای معامله میدم',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                            child: Row(
                              children: [
                                RedBottomicon(
                                  radius: 4,
                                  width: 159,
                                  height: 40,
                                  topic: 'گفتگو',
                                  fontsize: 14,
                                  icon: 'assets/images/message.png',
                                ),
                                Spacer(),
                                RedBottomicon(
                                  radius: 4,
                                  width: 159,
                                  height: 40,
                                  topic: 'اطلاعات تماس',
                                  fontsize: 14,
                                  icon: 'assets/images/call.png',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
    required this.page3,
  });

  final ScrollController page3;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: page3,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/clipboard.png'),
              const SizedBox(
                width: 10,
              ),
              Text(
                'ویژگی ها',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Container(
              height: 96,
              width: 343,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: AppColor.grey,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'سند',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const Spacer(),
                        Text(
                          'تک برگ',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                    const DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'جهت ساختمان',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const Spacer(),
                        Text(
                          'شمالی',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Image.asset('assets/images/magicpen.png'),
              const SizedBox(
                width: 10,
              ),
              Text(
                'امکانات',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Container(
              height: 392,
              width: 343,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: AppColor.grey,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'پارکینگ',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'انباری',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'بالکن',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'آسانسور',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'پنت هاوس',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'جنس کف سرامیک',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'سرویس بهداشتی ایرانی و فرنگی',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            child: Row(
              children: [
                RedBottomicon(
                  radius: 4,
                  width: 159,
                  height: 40,
                  topic: 'گفتگو',
                  fontsize: 14,
                  icon: 'assets/images/message.png',
                ),
                Spacer(),
                RedBottomicon(
                  radius: 4,
                  width: 159,
                  height: 40,
                  topic: 'اطلاعات تماس',
                  fontsize: 14,
                  icon: 'assets/images/call.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
    required this.page2,
  });

  final ScrollController page2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: page2,
      child: Column(
        children: [
          Container(
            height: 96,
            width: 343,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColor.grey,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'قیمت هر متر:',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const Spacer(),
                      Text(
                        '۴۶٫۴۶۰٫۰۰۰',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                  const DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.horizontal,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'قیمت کل:',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const Spacer(),
                      Text(
                        '۲۳٫۲۳۰٫۰۰۰٫۰۰۰',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            child: Row(
              children: [
                RedBottomicon(
                  radius: 4,
                  width: 159,
                  height: 40,
                  topic: 'گفتگو',
                  fontsize: 14,
                  icon: 'assets/images/message.png',
                ),
                Spacer(),
                RedBottomicon(
                  radius: 4,
                  width: 159,
                  height: 40,
                  topic: 'اطلاعات تماس',
                  fontsize: 14,
                  icon: 'assets/images/call.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
    required this.page1,
  });

  final ScrollController page1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: page1,
      child: Column(
        children: [
          Container(
            height: 98,
            width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1,
                color: AppColor.grey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('متراژ'),
                      Text(
                        '۵۰۰',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                  const DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.vertical,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('اتاق'),
                      Text(
                        '۶',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                  const DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.vertical,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('طبقه'),
                      Text(
                        'دوبلکس',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                  const DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.vertical,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('ساخت'),
                      Text(
                        '۱۴۰۲',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Row(
              children: [
                Image.asset('assets/images/map.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'موقعیت مکانی',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          Image.asset('assets/images/mapi.png'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                RedBottomicon(
                  radius: 4,
                  width: 159,
                  height: 40,
                  topic: 'گفتگو',
                  fontsize: 14,
                  icon: 'assets/images/message.png',
                ),
                Spacer(),
                RedBottomicon(
                  radius: 4,
                  width: 159,
                  height: 40,
                  topic: 'اطلاعات تماس',
                  fontsize: 14,
                  icon: 'assets/images/call.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
