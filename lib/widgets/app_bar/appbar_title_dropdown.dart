import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<String> items;

  Function(String) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 107.h,
        hintText: "October",
        items: items,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(8.h, 8.v, 4.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgMagiconsGlyphArrowArrowdown2,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        borderDecoration: DropDownStyleHelper.outlineGray,
        filled: false,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
