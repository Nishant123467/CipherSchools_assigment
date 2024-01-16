import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProflePage extends StatelessWidget {
  const ProflePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray100,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 30.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildProfileRow(context),
                SizedBox(height: 40.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    right: 3.h,
                  ),
                  child: _buildSearchRow(
                    context,
                    settingsText: "Account",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    right: 3.h,
                  ),
                  child: _buildSearchRow(
                    context,
                    settingsText: "Settings",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    right: 3.h,
                  ),
                  child: _buildSearchRow(
                    context,
                    settingsText: "Export Data",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    right: 3.h,
                  ),
                  child: _buildSearchRow(
                    context,
                    settingsText: "Logout",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 6.v),
                Text(
                  "Khushi Sharma",
                  style: theme.textTheme.headlineSmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 18.v,
              bottom: 22.v,
            ),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgMagiconsOutlineUser,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSearchRow(
    BuildContext context, {
    required String settingsText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.border,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomIconButton(
              height: 52.adaptSize,
              width: 52.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSearch,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 17.v,
              bottom: 15.v,
            ),
            child: Text(
              settingsText,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.errorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
