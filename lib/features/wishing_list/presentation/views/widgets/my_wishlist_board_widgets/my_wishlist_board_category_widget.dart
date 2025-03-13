import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_board_widgets/category_name.dart';
import 'package:mentorship_ecommerce/features/wishing_list/presentation/views/widgets/my_wishlist_board_widgets/grid_view_widget.dart';
import '../../../../../../core/routes/routes_exports.dart';

class MyWishlistBoardCategoryWidget extends StatelessWidget {
  const MyWishlistBoardCategoryWidget(
      {super.key,
      required this.images,
      required this.categoryName,
      required this.numOfProducts});
  final List<String> images;
  final String categoryName;
  final int numOfProducts;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 331.w,
      margin: EdgeInsets.only(top: 30.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridViewWidget(images: images),
          CategoryName(categoryName: categoryName),
          Text(
            "$numOfProducts items",
            style: Styles.textStyle12.copyWith(color: AppColor.grey),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: AppColor.divider3Color,
          )
        ],
      ),
    );
  }
}
