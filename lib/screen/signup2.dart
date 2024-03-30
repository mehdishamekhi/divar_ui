import 'dart:async';

import 'package:divar_ui/screen/whole_screen.dart';
import 'package:divar_ui/widgets/red_bottom.dart';
import 'package:divar_ui/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Siginup2 extends StatefulWidget {
  const Siginup2({Key? key}) : super(key: key);

  @override
  _Siginup2State createState() => _Siginup2State();
}

class _Siginup2State extends State<Siginup2> {
  int _remainingSeconds = 45; // Initial remaining time in seconds
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void resetTimer() {
    setState(() {
      _remainingSeconds = 45; // Reset remaining time to initial value
      _timer.cancel(); // Cancel existing timer
      startTimer(); // Start a new timer
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'تایید شماره موبایل',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'کد ثبت نام پیامک شده را وارد کنید',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) => const Textfieldcontainer(
                      height: 48,
                      width: 73,
                      radius: 4,
                      hinttext: '',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: InkWell(
                    onTap: resetTimer, // Reset timer when tapped
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          formatTime(_remainingSeconds),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(width: 10),
                        Text('ارسال مجدد کد',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                RedBottom(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WholeScreen(),
                      ),
                    );
                  },
                  radius: 4,
                  width: double.infinity,
                  height: 48,
                  topic: 'تایید ثبت نام',
                  fontsize: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
