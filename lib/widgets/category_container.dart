import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainerwithouticon extends StatefulWidget {
  final String topic;
  final bool? initialValue;
  final ValueChanged<bool>? onChanged;

  const CategoryContainerwithouticon({
    Key? key,
    required this.topic,
    this.initialValue,
    this.onChanged,
  }) : super(key: key);

  @override
  _CategoryContainerwithouticonState createState() =>
      _CategoryContainerwithouticonState();
}

class _CategoryContainerwithouticonState
    extends State<CategoryContainerwithouticon> {
  late bool light;

  @override
  void initState() {
    super.initState();
    light = widget.initialValue ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          light = !light;
          widget.onChanged?.call(light);
        });
      },
      child: Container(
        height: 40,
        width: 343,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey, // Use your desired color
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
                widget.topic,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const Spacer(),
              Transform.scale(
                scale: 0.7,
                child: Switch(
                  value: light,
                  activeColor: AppColor.white,
                  activeTrackColor: AppColor.red,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                      widget.onChanged?.call(light);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example Page')),
      body: Center(
        child: CategoryContainerwithouticon(
          topic: 'Toggle Switch',
          initialValue: switchValue,
          onChanged: (bool value) {
            setState(() {
              switchValue = value;
            });
          },
        ),
      ),
    );
  }
}
