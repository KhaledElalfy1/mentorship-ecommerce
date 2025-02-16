import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/features/home/data/models/mode_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/mode_button.dart';

class SelectMode extends StatefulWidget {
  const SelectMode({super.key});

  @override
  State<SelectMode> createState() => _SelectModeState();
}

class _SelectModeState extends State<SelectMode> {
  final list = const [
    ModeModel(icon: Icons.wb_sunny_outlined, title: 'Light'),
    ModeModel(icon: Icons.nightlight_outlined, title: 'Light'),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.h,
      width: 227.w,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.w)),
        color: AppColor.containerMode,
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          list.length,
          (index) => GestureDetector(
            onTap: () => setState(() => activeIndex = index),
            child: ModeButton(
              modeModel: list[index],
              isActive: activeIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
