import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/category_container.dart';
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
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'shabnam',
              color: AppColor.white,
            ),
          ),
        ),
      );
    } else {
      return Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontFamily: 'shabnam',
          color: AppColor.red,
        ),
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
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset('assets/images/arrow-right.png'),
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
                        child: const Center(
                          child: Text(
                            'آپارتمان',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'shabnam',
                              color: AppColor.red,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '۱۶ دقیقه پیش در گرگان',
                        style: TextStyle(
                          fontFamily: 'shabnam',
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'آپارتمان ۵۰۰ متری در صیاد شیرازی',
                    style: TextStyle(
                      fontFamily: 'shabnam',
                      fontSize: 16,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                    ),
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
              const SliverToBoxAdapter(
                child: CategoryContainerwithouticon(
                  topic: 'هشدار های قبل معامله!',
                  arrowaddress: 'assets/images/arrow-left_grey.png',
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
                      child: const Column(
                        children: [
                          Text(
                            'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده گذاشتم فروش فوری خریدار باشی تخفیف پای معامله میدم',
                            style: TextStyle(
                              fontFamily: 'shabnam',
                              color: AppColor.grey,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
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
              const Text(
                'ویژگی ها',
                style: TextStyle(
                  fontFamily: 'shabnam',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
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
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'سند',
                          style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'تک برگ',
                          style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'جهت ساختمان',
                          style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'شمالی',
                          style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
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
              const Text(
                'امکانات',
                style: TextStyle(
                  fontFamily: 'shabnam',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
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
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'پارکینگ',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'انباری',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'بالکن',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'آسانسور',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'پنت هاوس',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'جنس کف سرامیک',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DottedLine(
                      dashColor: AppColor.grey,
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      dashGapLength: 2,
                    ),
                    Text(
                      'سرویس بهداشتی ایرانی و فرنگی',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
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
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'قیمت هر متر:',
                        style: TextStyle(
                          fontFamily: 'shabnam',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '۴۶٫۴۶۰٫۰۰۰',
                        style: TextStyle(
                          fontFamily: 'shabnam',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.horizontal,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'قیمت کل:',
                        style: TextStyle(
                          fontFamily: 'shabnam',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '۲۳٫۲۳۰٫۰۰۰٫۰۰۰',
                        style: TextStyle(
                          fontFamily: 'shabnam',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
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
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('متراژ'),
                      Text(
                        '۵۰۰',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.vertical,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('اتاق'),
                      Text(
                        '۶',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.vertical,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('طبقه'),
                      Text(
                        'دوبلکس',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  DottedLine(
                    dashColor: AppColor.grey,
                    direction: Axis.vertical,
                    lineLength: double.infinity,
                    dashGapLength: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ساخت'),
                      Text(
                        '۱۴۰۲',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
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
                const Text(
                  'موقعیت مکانی',
                  style: TextStyle(
                    fontFamily: 'shabnam',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
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
