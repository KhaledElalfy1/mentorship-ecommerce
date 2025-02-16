import 'package:flutter/cupertino.dart';

import 'build_dots.dart';

class DotsListView extends StatelessWidget {
  final int currentIndex2;
  final int dotCount;

  const DotsListView(
      {super.key, required this.dotCount, required this.currentIndex2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dotCount, (index) {
        return BuildDots(currentIndex: currentIndex2, index1: index);
      }),
    );
  }
}
