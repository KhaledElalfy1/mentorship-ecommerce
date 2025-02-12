import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isSelected =true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () {
    setState(() {
      isSelected = !isSelected;
    });
  },
  child: Container(
    width: 18.30.w,
    height: 20.h,
    decoration: BoxDecoration(
      color: isSelected ? Colors.teal : Colors.grey, 
      borderRadius: BorderRadius.circular(5), 
    ),
    child: Icon(Icons.check_sharp, color: Colors.white, size: 15.sp),
  ),
);
  }
}