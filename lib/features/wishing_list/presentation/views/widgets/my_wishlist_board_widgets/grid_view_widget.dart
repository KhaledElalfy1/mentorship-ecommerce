import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_board_widgets/grid_view_widget_details.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 153.h,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      bottomLeft: Radius.circular(15.r)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[0]))),
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[1]))),
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          GridViewWidgetDetails(images: images)
        ],
      ),
    );
  }
}
