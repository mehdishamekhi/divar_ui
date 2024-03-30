import 'package:divar_ui/screen/item_detail.dart';
import 'package:divar_ui/util/colors.dart';
import 'package:divar_ui/widgets/category_container.dart';
import 'package:divar_ui/widgets/category_container_with%20icon.dart';
import 'package:divar_ui/widgets/red_bottom.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

double _progress = 0;
int currentpage = 0;
final PageController _progresscontroller = PageController(initialPage: 0);

class _AddPageState extends State<AddPage> {
  @override
  void initState() {
    super.initState();
    _progress = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image.asset('assets/images/Group 1.png'),
          ),
          leading: InkWell(
            onTap: () {
              if (currentpage > 0) {
                _progresscontroller.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: Image.asset('assets/images/arrow-right.png'),
          ),
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  currentpage = 0;
                  _progress = 0;
                  _progresscontroller.jumpToPage(0);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset('assets/images/close-square.png'),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5),
            child: LinearProgressIndicator(
              minHeight: 5,
              value: _progress,
              color: AppColor.red,
              backgroundColor: AppColor.white,
            ),
          ),
        ),
        body: PageView(
          controller: _progresscontroller,
          onPageChanged: (int page) {
            setState(() {
              currentpage = page;
              _progress = page == 0 ? 0 : (currentpage) / 4;
            });
          },
          children: const [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
            Page5(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'اجاره مسکونی',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'فروش مسکونی',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'فروش دفاتر اداری و تجاری',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'اجاره دفاتر اداری و تجاری',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'اجاره کوتاه مدت',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'پروژه های ساخت و ساز',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'فروش آپارتمان',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'فروش خانه و ویلا',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
        const SizedBox(
          height: 15,
        ),
        CategoryContainerwithicon(
            topic: 'فروش زمین کلنگی',
            imageadderss: 'assets/images/arrow-left-r.png',
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            }),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/category-2.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'انتخاب دسته بندی آویز',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                PopUpMenuBottoms(
                  topic: 'دسته بندی',
                  item1: 'فروش آپارتمان',
                  item2: 'فروش خانه',
                  item3: 'فروش ویلا',
                ),
                Spacer(),
                PopUpMenuBottoms(
                  topic: 'محدوده ملک',
                  item1: 'فرشته',
                  item2: 'نازی آباد',
                  item3: 'زعفرانیه',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const DottedLine(
              dashColor: AppColor.grey,
              direction: Axis.horizontal,
              lineLength: double.infinity,
              dashGapLength: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: Row(
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
            ),
            const Row(
              children: [
                PopUpMenuBottoms(
                  topic: 'متراژ',
                  item1: '۱۰۰',
                  item2: '۲۰۰',
                  item3: '۳۰۰',
                ),
                Spacer(),
                PopUpMenuBottoms(
                  topic: 'تعداد اتاق',
                  item1: '۱',
                  item2: '۲',
                  item3: '۳',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                PopUpMenuBottoms(
                  topic: 'طبقه',
                  item1: '۱',
                  item2: '۲',
                  item3: '۳',
                ),
                Spacer(),
                PopUpMenuBottoms(
                  topic: 'سال ساخت',
                  item1: '۱۳۹۵',
                  item2: '۱۴۰۰',
                  item3: '۱۴۰۲',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const DottedLine(
              dashColor: AppColor.grey,
              direction: Axis.horizontal,
              lineLength: double.infinity,
              dashGapLength: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: Row(
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
            ),
            const CategoryContainerwithouticon(
              topic: 'آسانسور',
            ),
            const SizedBox(
              height: 10,
            ),
            const CategoryContainerwithouticon(
              topic: 'پارکینگ',
            ),
            const SizedBox(
              height: 10,
            ),
            const CategoryContainerwithouticon(
              topic: 'انباری',
            ),
            const SizedBox(
              height: 20,
            ),
            RedBottom(
              ontap: () {
                if (currentpage < 5) {
                  _progresscontroller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              radius: 4,
              width: double.infinity,
              height: 40,
              topic: 'بعدی',
              fontsize: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/map.png'),
              const SizedBox(
                width: 10,
              ),
              Text(
                'موقیعت مکانی',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کنید تا حریم خصوصی شما حفظ شود',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Image.asset('assets/images/mapi.png'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CategoryContainerwithouticon(
              topic: 'محل دقیق  نمایش داده شود؟',
            ),
          ),
          const Spacer(),
          RedBottom(
            ontap: () {
              if (currentpage < 5) {
                _progresscontroller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            radius: 4,
            width: double.infinity,
            height: 40,
            topic: 'بعدی',
            fontsize: 16,
          ),
        ],
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/camera.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'تصویر آویز',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset('assets/images/dropphoto.png'),
            ),
            Row(
              children: [
                Image.asset('assets/images/edit-2.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'عنوان آویز',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: const BoxDecoration(
                  color: AppColor.grey,
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(4),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'عنوان آویز را وارد کنید',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/clipboard-text.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'توضیحات',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: double.infinity,
                height: 104,
                decoration: const BoxDecoration(
                  color: AppColor.grey,
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(4),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'توضیحات آویز را وارد کنید',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: CategoryContainerwithouticon(
                topic: 'فعال کردن گفتگو',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: CategoryContainerwithouticon(
                topic: 'فعال کردن تماس',
              ),
            ),
            RedBottom(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemDetailScreen(),
                  ),
                );
              },
              radius: 4,
              width: double.infinity,
              height: 40,
              topic: 'ثبت آگهی',
              fontsize: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class PopUpMenuBottoms extends StatefulWidget {
  final String topic;
  final String item1;
  final String item2;
  final String item3;

  const PopUpMenuBottoms({
    super.key,
    required this.topic,
    required this.item1,
    required this.item2,
    required this.item3,
  });

  @override
  State<PopUpMenuBottoms> createState() => _PopUpMenuBottomsState();
}

class _PopUpMenuBottomsState extends State<PopUpMenuBottoms> {
  String selectedMenu = 'انتخاب کنید';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.topic,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          Container(
            height: 48,
            width: 159,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColor.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  children: [
                    PopupMenuButton(
                      icon: Image.asset(
                        'assets/images/Frame 46.png',
                        height: 24,
                        width: 8,
                      ),
                      onSelected: (item) {
                        setState(() {
                          selectedMenu = item.toString();
                        });
                      },
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        PopupMenuItem(
                          value: widget.item1,
                          textStyle: Theme.of(context).textTheme.titleLarge,
                          child: Text(
                            widget.item1,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        PopupMenuItem(
                          value: widget.item2,
                          textStyle: Theme.of(context).textTheme.titleLarge,
                          child: Text(
                            widget.item2,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        PopupMenuItem(
                          value: widget.item3,
                          textStyle: Theme.of(context).textTheme.titleLarge,
                          child: Text(
                            widget.item3,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      selectedMenu,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
