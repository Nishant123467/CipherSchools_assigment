import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/widgets/custom_icon_button.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        body: SizedBox(
          width: 393.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFortySixSection(context),
                SizedBox(height: 227.v),
                _buildFortySevenSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySixSection(BuildContext context) {
    return Container(
      height: 333.v,
      width: 380.h,
      margin: EdgeInsets.only(left: 13.h),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 253.v,
              width: 365.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 82.v,
            width: 84.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 7.h,
              top: 1.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconsaxLinearRecordcircle,
            height: 175.v,
            width: 210.h,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySevenSection(BuildContext context) {
    return SizedBox(
      height: 220.v,
      width: 363.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Welcome",
                                    style: theme.textTheme.displayMedium,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "to ",
                                    style: theme.textTheme.displayMedium,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 14.v),
                            Text(
                              "CipherX.",
                              style: theme.textTheme.displaySmall,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.v),
                          child: CustomIconButton(
                            height: 90.adaptSize,
                            width: 90.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            decoration: IconButtonStyleHelper.fillGrayBf,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Text(
                    "The best way to track your expenses.",
                    style: CustomTextStyles.titleLargeABeeZeeWhiteA700,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconsaxLinearRecordcircle195x206,
            height: 213.v,
            width: 214.h,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
