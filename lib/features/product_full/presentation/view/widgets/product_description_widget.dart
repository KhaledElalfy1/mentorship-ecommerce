import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';

class ProductDescriptionWidget extends StatefulWidget {
  const ProductDescriptionWidget({super.key});
    
  @override
  State<ProductDescriptionWidget> createState() => _ProductDescriptionWidgetState();
}

class _ProductDescriptionWidgetState extends State<ProductDescriptionWidget> {
  bool isExpanded =false;
  @override
  Widget build(BuildContext context) {
  return AnimatedContainer(
      duration:const Duration(milliseconds: 300),
            padding: EdgeInsets.only(left: 32.w, right: 32.w),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: Styles.textStyle16,
              ),
             AnimatedRotation(
                  duration: const Duration(milliseconds: 300),
                  turns: isExpanded ? 0.5 : 0.0,
                  child:  InkWell(
                    onTap: (){
                      setState(() {
                         isExpanded = !isExpanded;
                      });
                    },
                    child:const  Icon(
                      Icons.keyboard_arrow_down,
                    ),
                  ),
                ),
              
            ],
          ),
          const Divider(
            color:AppColor.dividerColor,
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutCirc,
            child: isExpanded
                ? SizedBox(
                    width: 305.w,
                    child: RichText(
                        text: TextSpan(style: Styles.textStyle12.copyWith(color: Colors.black), 

                        children: [
                      TextSpan(
                        text:
                            "Sportswear is no longer under culture,it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.\t\t\t",
                        style: Styles.textStyle12,
                      ),
                      TextSpan(
                          text: "Read more",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: const Color(0xff508A7B),
                              fontSize: 12.sp))
                    ])),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
    }
}