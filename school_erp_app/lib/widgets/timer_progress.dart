import 'package:flutter/material.dart';

class TimerProgressBar extends StatelessWidget {
  final ValueNotifier<double> progressNotifier = ValueNotifier<double>(0.0);

  TimerProgressBar({super.key});

  // 模拟一个进度更新的方法
  void startProgress() async {
    double progress = 0.0;
    while (progress < 50.0) {
      await Future.delayed(const Duration(milliseconds: 1000));
      progress += 1;
      progressNotifier.value = progress; // 更新进度
    }
  }

  @override
  Widget build(BuildContext context) {
    // 在构建时启动进度
    startProgress();
    return ValueListenableBuilder<double>(
      valueListenable: progressNotifier, // 监听 progressNotifier 的变化
      builder: (context, progress, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                width: double.infinity,
                height: 35,
                child: LinearProgressIndicator(
                  value: progress / 50,
                  color: Colors.greenAccent,
                  backgroundColor: Colors.grey.shade400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${(progress).toStringAsFixed(0)} sec',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset("assets/ic_clock.png")
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
