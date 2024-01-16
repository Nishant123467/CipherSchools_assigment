import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/widgets/custom_elevated_button.dart';
import 'package:nishant_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.border,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "Recent Transaction",
                          style: CustomTextStyles.titleMediumSemiBold,
                        ),
                      ),
                      CustomElevatedButton(
                        height: 32.v,
                        width: 78.h,
                        text: "See All",
                        buttonStyle: CustomButtonStyles.fillDeepPurple,
                        buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 28.h,
                  ),
                  child: _buildFrameSixRow(
                    context,
                    shopping: "Shopping",
                    buyAnAvocado: "Buy some grocery",
                    price: "- ₹120",
                    time: "10:00 AM",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10.h,
                    right: 28.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMagiconsGlyphPrimary,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 9.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Subscription",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 12.v),
                            Text(
                              "Disney+ Annual..",
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: _buildCardTransactionColumn(
                          context,
                          price: "- ₹499",
                          time: "03:30 PM",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10.h,
                    right: 28.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          decoration: IconButtonStyleHelper.fillGray,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMagiconsGlyphTravelCar,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 9.h,
                          top: 5.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Travel",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 14.v),
                            Text(
                              "Chandigarh to De...",
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: _buildCardTransactionColumn(
                          context,
                          price: "- ₹1000",
                          time: "10:00 AM",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Container(
                  margin: EdgeInsets.only(
                    left: 9.h,
                    right: 28.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillRed,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMagiconsGlyphRed500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 9.h,
                          top: 5.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Food",
                                  style: theme.textTheme.titleMedium,
                                ),
                                Text(
                                  "- ₹32",
                                  style: CustomTextStyles.titleMediumRed500,
                                ),
                              ],
                            ),
                            SizedBox(height: 12.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "Buy a ramen",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Text(
                                  "07:30 PM",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    right: 28.h,
                  ),
                  child: _buildFrameSixRow(
                    context,
                    shopping: "Shopping",
                    buyAnAvocado: "Buy some grocery",
                    price: "- ₹120",
                    time: "10:00 AM",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCardTransactionColumn(
    BuildContext context, {
    required String price,
    required String time,
  }) {
    return Column(
      children: [
        Text(
          price,
          style: CustomTextStyles.titleMediumRed500.copyWith(
            color: appTheme.red500,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          time,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameSixRow(
    BuildContext context, {
    required String shopping,
    required String buyAnAvocado,
    required String price,
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillOrange,
              child: CustomImageView(
                imagePath: ImageConstant.imgMagiconsGlyphEcommerceAmberA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shopping,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: theme.colorScheme.errorContainer,
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  buyAnAvocado,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 8.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    price,
                    style: CustomTextStyles.titleMediumRed500.copyWith(
                      color: appTheme.red500,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  time,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
