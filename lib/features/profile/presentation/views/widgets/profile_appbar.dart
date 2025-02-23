import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/helper/extention.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/svgs.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 34.r,
                backgroundImage: const NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/f792/d332/6d08a9e5b5ea5bab640e7074d47d8480?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=CjMOb1462rP97jt6LVAgk8kYNO38zFmuNA4ISHrOXLdxnCcnm1s36zyDl5CQalMGiga3iSXNHj10fRaiXYGRfLWrubIce8uPFsLTooE~ofwj-Hfx8QQBxTmdaPu9HL8KKGyEsoHKXFye0m88z1LbJ6HWlBv8LbPqdE1GOwnq~UwDmmncYu8wm9anwN~jNz-~C59~HyNkPf86nv3NTyTEtnUreg50xAdpp9qpuuyOBoEYyd8mM~xhltOU-UdzoTYv5JW2KfOElS51-eHSOnXVOTw-b1pv1B5exxRgA2ZFL1aatU3qSzVv03Yynl6R~a7POIzp3rMhDvUZlBu8Ji3azA__"),
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sunie Pham",
                      style: Styles.textStyle16
                          .copyWith(color: AppColor.blackColor)),
                  SizedBox(height: 10.h),
                  Text(
                    "sunieux@gmail.com",
                    style:
                        Styles.textStyle12.copyWith(color: AppColor.blackColor),
                  )
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                context.pushNamed(Routes.setting);
              },
              icon: SvgPicture.asset(Svgs.settingIcon))
        ],
      ),
    );
  }
}
