import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class Textfieldcontainer extends StatefulWidget {
  final double height;
  final double width;
  final double radius;
  final String hinttext;

  const Textfieldcontainer(
      {super.key,
      required this.height,
      required this.width,
      required this.radius,
      required this.hinttext});

  @override
  State<Textfieldcontainer> createState() => _TextfieldcontainerState();
}

class _TextfieldcontainerState extends State<Textfieldcontainer> {
  FocusNode _focusNode = FocusNode();
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          border: Border.all(
            width: 1,
            color: AppColor.grey,
          )),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hinttext,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          filled: true,
          fillColor: _focusNode.hasFocus
              ? AppColor.greyforground
              : AppColor.greybackground,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
