import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class RedBottomicon extends StatelessWidget {
  final double radius;
  final double width;
  final double height;
  final String topic;
  final double fontsize;
  final String icon;
  const RedBottomicon({
    super.key,
    required this.radius,
    required this.width,
    required this.height,
    required this.topic,
    required this.fontsize,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          maximumSize: Size(width, height),
          backgroundColor: AppColor.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              topic,
              style: TextStyle(
                fontSize: fontsize,
                fontFamily: 'shabnam',
                color: AppColor.white,
              ),
            ),
          ],
        ));
  }
}
