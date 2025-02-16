import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class MyTimeLineTile extends StatelessWidget {
  const MyTimeLineTile({
    super.key,
    required this.process,
    required this.time,
    required this.isPast,
    required this.isLast,
  });
  final String process;
  final String time;

  final bool isPast;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 25.w,
              height: 25.h,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: const Color(0xff474340), width: 2),
              ),
              child: CircleAvatar(
                backgroundColor: const Color(0xff474340),
                child: isPast
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 10,
                      )
                    : null,
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            Text(
              process,
              style: Styles.textStyle12.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Text(
              time,
              style: Styles.textStyle12.copyWith(
                color: const Color(0xffC8C7C6),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Visibility(
          visible: !isLast,
          child: Padding(
            padding: EdgeInsets.only(left: 14.0.w),
            child: Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xff474340),
                  radius: 2,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xff474340),
                  radius: 2,
                ),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
