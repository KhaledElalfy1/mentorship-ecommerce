import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';

class CustomRatingWidget extends StatefulWidget {
  const CustomRatingWidget(
      {super.key, required this.rating, required this.size});

  final double rating;
  final int size;
  @override
  State<CustomRatingWidget> createState() => _CustomRatingWidgetState();
}

class _CustomRatingWidgetState extends State<CustomRatingWidget> {
  late double displayedRating;

  @override
  void initState() {
    super.initState();
    displayedRating = widget.rating;
  }

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: widget.rating,
      itemCount: 5,
      itemSize: widget.size.sp,
      itemPadding: const EdgeInsets.symmetric(horizontal: .2),
      itemBuilder: (context, _) => const Icon(
        Icons.star_rate_rounded, //
        color: AppColor.starColor,
      ),
    );
  }
}
