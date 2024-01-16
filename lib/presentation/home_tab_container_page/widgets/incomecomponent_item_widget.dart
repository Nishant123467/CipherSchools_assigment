import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class IncomecomponentItemWidget extends StatelessWidget {
  const IncomecomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 170.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillGrayTL20,
              child: CustomImageView(
                imagePath: ImageConstant.imgUser,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Income",
                  style: CustomTextStyles.titleSmallGray50,
                ),
                SizedBox(height: 4.v),
                Text(
                  "₹50000",
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
