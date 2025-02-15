import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Image.network(
                      height: 85.h, width: 52.w, fit: BoxFit.cover, images[2]),
                  SizedBox(
                    height: 6.h,
                  ),
                  Image.network(
                      height: 59.h, width: 52.w, fit: BoxFit.cover, images[3]),
                ],
              )),
              SizedBox(
                width: 6.w,
              ),
              Expanded(
                  child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.r),
                    ),
                    child: Image.network(
                        height: 59.h,
                        width: 52.w,
                        fit: BoxFit.cover,
                        images[4]),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15.r)),
                    child: Image.network(
                        height: 85.h,
                        width: 52.w,
                        fit: BoxFit.cover,
                        images[5]),
                  ),
                ],
              )),
            ],
          ))
        ],
      ),
    );
  }
}
