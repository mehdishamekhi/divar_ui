import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainerwithouticon extends StatelessWidget {
  final String topic;
  final String arrowaddress;
  const CategoryContainerwithouticon({
    super.key,
    required this.topic,
    required this.arrowaddress,
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
            Text(
              topic,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const Spacer(),
            Image.asset(arrowaddress),
          ],
        ),
      ),
    );
  }
}
