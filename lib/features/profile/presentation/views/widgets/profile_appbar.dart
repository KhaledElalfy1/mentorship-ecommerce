import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorship_ecommerce/features/profile/presentation/views/widgets/profile_appbar_widget.dart';
import '../../../../../core/helper/extention.dart';
import '../../../../../core/routes/routes.dart';
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
          const ProfileAppbarWidget(),
          IconButton(
              onPressed: () {
                context.pushNamed(Routes.editProfile);
              },
              icon: SvgPicture.asset(Svgs.settingIcon))
        ],
      ),
    );
  }
}
