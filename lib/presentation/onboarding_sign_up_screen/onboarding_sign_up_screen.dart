import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:nishant_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:nishant_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nishant_s_application1/widgets/custom_checkbox_button.dart';
import 'package:nishant_s_application1/widgets/custom_elevated_button.dart';
import 'package:nishant_s_application1/widgets/custom_outlined_button.dart';
import 'package:nishant_s_application1/widgets/custom_text_form_field.dart';

class OnboardingSignUpScreen extends StatelessWidget {
  OnboardingSignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool checkbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 56.v,
                ),
                child: Column(
                  children: [
                    _buildName(context),
                    SizedBox(height: 24.v),
                    _buildEmail(context),
                    SizedBox(height: 24.v),
                    _buildPassword(context),
                    SizedBox(height: 16.v),
                    _buildCheckbox(context),
                    SizedBox(height: 24.v),
                    _buildSignUp(context),
                    SizedBox(height: 12.v),
                    Text(
                      "Or with",
                      style: CustomTextStyles.titleSmallBold,
                    ),
                    SizedBox(height: 12.v),
                    _buildSignUpWithGoogle(context),
                    SizedBox(height: 20.v),
                    Text(
                      "Already have an account? Login",
                      style: CustomTextStyles.titleMediumPrimary.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyph,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Sign Up",
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "Name",
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.only(
        left: 16.h,
        top: 18.v,
        bottom: 18.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL16,
    );
  }

  /// Section Widget
  Widget _buildCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 30.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text:
              "By signing up, you agree to the Terms of Service and Privacy Policy",
          isExpandedText: true,
          value: checkbox,
          onChange: (value) {
            checkbox = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
    );
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign Up with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFlatcoloriconsgoogle,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
      ),
    );
  }
}
