import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({super.key, required this.categoryName});
final String categoryName;
  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryName,
                style: Styles.textStyle22,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.wishListItems);
                  },
                  icon: SvgPicture.asset(
                    Svgs.rightArrowIcon,
                    height: 20.h,
                    width: 20.w,
                    color: AppColor.darkGray,
                  ))
            ],
          );
  }
}