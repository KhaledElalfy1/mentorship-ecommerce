import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/cart/presentation/views/widgets/container_numbers_widget.dart';

class ContainerNumberOfProduct extends StatefulWidget {
  const ContainerNumberOfProduct({super.key});

  @override
  State<ContainerNumberOfProduct> createState() =>
      _ContainerNumberOfProductState();
}

class _ContainerNumberOfProductState extends State<ContainerNumberOfProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 22.h,
        width: 63.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Colors.white,
            border: Border.all(
              color: Colors.black.withOpacity(0.5),
            )),
        child: const ContainerNumbersWidget());
  }
}
