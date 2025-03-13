import '../../../../../core/routes/routes_exports.dart';

class ProfileDetailsIcons extends StatelessWidget {
  const ProfileDetailsIcons(
      {super.key,
      required this.icon,
      required this.text,
      this.isNeededIcon,
      this.onPressed});
  final String icon;
  final String text;
  final bool? isNeededIcon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                icon,
                color: AppColor.svgColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                text,
                style:
                    Styles.textStyle14.copyWith(color: AppColor.charcoalBrown),
              )
            ],
          ),
          isNeededIcon == true
              ? IconButton(
                  onPressed: onPressed,
                  icon: SvgPicture.asset(
                    Svgs.rightArrowIcon,
                    color: AppColor.charcoalBrown,
                  ))
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}