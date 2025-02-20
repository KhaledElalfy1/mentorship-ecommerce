import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/widgets/font_weight_helper.dart';
import 'package:mentorship_ecommerce/features/my_order/widgets/my_order_list_view.dart';
import '../../../core/utils/app_color.dart';
import '../widgets/custom_app_bar.dart';

class MyOrderViewBody extends StatefulWidget {
  const MyOrderViewBody({super.key});

  @override
  State<MyOrderViewBody> createState() => _MyOrderViewBodyState();
}

class _MyOrderViewBodyState extends State<MyOrderViewBody> {
  int _selectedTabIndex = 0; //* Intialize the index of the selected tab

  final List<String> _statuses = ["Pending", "Delivered", "Cancelled"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 33.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(_statuses.length, (index) {
                bool isSelected = _selectedTabIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 91.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColor.containerMyOrderColors
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Text(
                      _statuses[index],
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeightHelper.regular,
                        color:
                            isSelected ? Colors.white : AppColor.myOrderColor,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Expanded(
              child: MyOrderListView(status: _statuses[_selectedTabIndex])),
        ],
      ),
    );
  }
}
