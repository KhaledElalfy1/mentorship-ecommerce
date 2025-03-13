import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';

class GridViewWidgetDetails extends StatelessWidget {
  const GridViewWidgetDetails({super.key, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Image.network(
                height: 85.h, width: 52.w, fit: BoxFit.cover, images[2]),
            SizedBox(height: 6.h),
            Image.network(
                height: 59.h, width: 52.w, fit: BoxFit.cover, images[3]),
          ],
        )),
        SizedBox(width: 6.w),
        Expanded(
            child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.r),
              ),
              child: Image.network(
                  height: 59.h, width: 52.w, fit: BoxFit.cover, images[4]),
            ),
            SizedBox(height: 6.h),
            ClipRRect(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(15.r)),
              child: Image.network(
                  height: 85.h, width: 52.w, fit: BoxFit.cover, images[5]),
            ),
          ],
        )),
      ],
    ));
  }
}
