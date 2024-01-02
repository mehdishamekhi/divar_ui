import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class RedBottom extends StatelessWidget {
  final double radius;
  final double width;
  final double height;
  final String topic;
  final double fontsize;
  const RedBottom({
    super.key,
    required this.radius,
    required this.width,
    required this.height,
    required this.topic,
    required this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: AppColor.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: () {},
      child: Text(
        topic,
        style: TextStyle(
          fontSize: fontsize,
          fontFamily: 'shabnam',
          color: AppColor.white,
        ),
      ),
    );
  }
}
