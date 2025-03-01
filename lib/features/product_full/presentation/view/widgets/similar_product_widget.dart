import '../../../../../core/routes/routes_exports.dart';

class SimilarProductWidget extends StatefulWidget {
  const SimilarProductWidget({super.key});

  @override
  State<SimilarProductWidget> createState() => _SimilarProductWidgetState();
}

class _SimilarProductWidgetState extends State<SimilarProductWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Similar Product",
                style: Styles.textStyle16,
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 300),
                turns: isExpanded ? 0.5 : 0.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColor.dividerColor,
          ),
          ProductWidgetDetails(isExpanded: isExpanded),
        ],
      ),
    );
  }
}