import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:nishant_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nishant_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nishant_s_application1/widgets/custom_drop_down.dart';
import 'package:nishant_s_application1/widgets/custom_elevated_button.dart';
import 'package:nishant_s_application1/widgets/custom_text_form_field.dart';

class ExpenseNewScreen extends StatelessWidget {
  ExpenseNewScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController descriptionvalueController = TextEditingController();

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 124.v),
            child: Column(
              children: [
                Container(
                  decoration: AppDecoration.fillLightBlueA,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.64,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "How much?",
                            style: CustomTextStyles.titleMediumGray50SemiBold,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Row(
                          children: [
                            Text(
                              "₹",
                              style: theme.textTheme.displayLarge,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "0",
                                style: theme.textTheme.displayLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 28.v),
                      _buildExpenseForm(context),
                      SizedBox(height: 1.v),
                      _buildContinueButton(context),
                    ],
                  ),
                ),
                SizedBox(height: 547.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 104.v,
                  ),
                  decoration: AppDecoration.border.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: _buildUserDescription(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyphPrimary32x32,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Expense",
      ),
    );
  }

  /// Section Widget
  Widget _buildExpenseForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
              child: CustomImageView(
                imagePath:
                    ImageConstant.imgMagiconsGlyphArrowArrowdown2Black900,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
            ),
            hintText: "Category",
            items: dropdownItemList,
            onChanged: (value) {},
          ),
          SizedBox(height: 16.v),
          CustomTextFormField(
            controller: descriptionvalueController,
            hintText: "Description",
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 16.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
              child: CustomImageView(
                imagePath:
                    ImageConstant.imgMagiconsGlyphArrowArrowdown2Black900,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
            ),
            hintText: "Wallet",
            items: dropdownItemList1,
            onChanged: (value) {},
          ),
          SizedBox(height: 16.v),
          DottedBorder(
            color: appTheme.gray10001,
            padding: EdgeInsets.only(
              left: 1.h,
              top: 1.v,
              right: 1.h,
              bottom: 1.v,
            ),
            strokeWidth: 1.h,
            radius: Radius.circular(16),
            borderType: BorderType.RRect,
            dashPattern: [
              8,
              8,
            ],
            child: Container(
              height: 56.v,
              width: 343.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.border,
      child: CustomElevatedButton(
        text: "Continue",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserDescription(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMagiconsGlyphUser,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Text(
              "Write a description",
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
