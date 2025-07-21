import 'package:flutter/material.dart';

class FadeScaleAnimation extends StatelessWidget {
  final ValueNotifier<double> opacityNotifier = ValueNotifier(0.0);
  final ValueNotifier<double> scaleNotifier = ValueNotifier(0.6);
  final Widget widget;
  FadeScaleAnimation({super.key, required this.widget}) {
    Future.delayed(const Duration(milliseconds: 300), () {
      opacityNotifier.value = 1.0;
      scaleNotifier.value = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: opacityNotifier,
      builder: (context, opacity, _) {
        return AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 1000),
          child: ValueListenableBuilder<double>(
            valueListenable: scaleNotifier,
            builder: (context, scale, _) {
              return AnimatedScale(
                scale: scale,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutBack,
                child: widget,
              );
            },
          ),
        );
      },
    );
  }
}
