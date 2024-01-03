import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainerwithicon extends StatelessWidget {
  final String imageadderss;
  final String topic;

  const CategoryContainerwithicon({
    super.key,
    required this.imageadderss,
    required this.topic,
  });

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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/arrow-left_grey.png',
              width: 24,
              height: 24,
            ),
            const Spacer(),
            Text(
              topic,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(imageadderss),
          ],
        ),
      ),
    );
  }
}
