import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainerProfile extends StatelessWidget {
  final String imageadderss;
  final String topic;
  final VoidCallback ontap;
  const CategoryContainerProfile({
    super.key,
    required this.imageadderss,
    required this.topic,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
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
              const SizedBox(
                width: 5,
              ),
              Image.asset('assets/images/arrow-left_grey.png'),
              const Spacer(),
              Text(
                topic,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(imageadderss),
            ],
          ),
        ),
      ),
    );
  }
}
