import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';

class SplashScreenScreen extends StatelessWidget {
  const SplashScreenScreen({Key? key}) : super(key: key);

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
                      Container(
                          height: 424.v,
                          width: 380.h,
                          margin: EdgeInsets.only(left: 13.h),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: 253.v,
                                        width: 365.h,
                                        margin: EdgeInsets.only(bottom: 45.v),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.h)))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 137.v,
                                    width: 141.h,
                                    alignment: Alignment.bottomCenter,
                                    onTap: () {
                                      onTapImgVector(context);
                                    }),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgIconsaxLinearRecordcircle,
                                    height: 234.v,
                                    width: 225.h,
                                    alignment: Alignment.topRight)
                              ])),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 100.h),
                              child: Text("CipherX",
                                  style: theme.textTheme.displaySmall))),
                      SizedBox(height: 153.v),
                      SizedBox(
                          height: 195.v,
                          width: 285.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgIconsaxLinearRecordcircle195x206,
                                    height: 195.v,
                                    width: 206.h,
                                    alignment: Alignment.centerLeft),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        width: 158.h,
                                        margin: EdgeInsets.only(bottom: 44.v),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "By\nOpen Source ",
                                                  style: CustomTextStyles
                                                      .bodyMedium89ffffff),
                                              TextSpan(
                                                  text: "Community",
                                                  style: theme
                                                      .textTheme.bodyMedium)
                                            ]),
                                            textAlign: TextAlign.center)))
                              ]))
                    ])))));
  }

  /// Navigates to the gettingStartedScreen when the action is triggered.
  onTapImgVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.gettingStartedScreen);
  }
}
