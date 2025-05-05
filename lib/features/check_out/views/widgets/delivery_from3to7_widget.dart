import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import '../../../../core/helper/font_weight_helper.dart';

Widget deliveryFrom3to7(){
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Text(
        'Delivery from 3 to 7 business days',
        style: Styles.textStyle14.copyWith(
            color: AppColor.black2,
            fontWeight: FontWeightHelper.regular),
      
      ),
    );
    
  }