import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/category_container.dart';
import 'package:divar_ui/widgets/category_container_with%20icon.dart';
import 'package:divar_ui/widgets/red_bottom.dart';
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
                    Column(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('متراژ'),
                                    Text('۵۰۰'),
                                  ],
                                ),
                                DottedLine(
                                  dashColor: AppColor.grey,
                                  direction: Axis.vertical,
                                  lineLength: double.infinity,
                                  dashGapLength: 2,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('اتاق'),
                                    Text('۶'),
                                  ],
                                ),
                                DottedLine(
                                  dashColor: AppColor.grey,
                                  direction: Axis.vertical,
                                  lineLength: double.infinity,
                                  dashGapLength: 2,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('طبقه'),
                                    Text('دوبلکس'),
                                  ],
                                ),
                                DottedLine(
                                  dashColor: AppColor.grey,
                                  direction: Axis.vertical,
                                  lineLength: double.infinity,
                                  dashGapLength: 2,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('ساخت'),
                                    Text('۱۴۰۲'),
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
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
