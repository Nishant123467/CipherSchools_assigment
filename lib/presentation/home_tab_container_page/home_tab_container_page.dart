import '../home_tab_container_page/widgets/incomecomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/presentation/home_page/home_page.dart';
import 'package:nishant_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:nishant_s_application1/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:nishant_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:nishant_s_application1/widgets/app_bar/custom_app_bar.dart';

class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key}) : super(key: key);

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
}

// ignore_for_file: must_be_immutable
class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.border,
                child: Column(children: [
                  _buildAppBar(context),
                  SizedBox(height: 9.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        _buildTabview(context),
                        SizedBox(
                            height: 356.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  HomePage(),
                                  HomePage(),
                                  HomePage(),
                                  HomePage()
                                ]))
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.gradientOrangeToOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL32),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomAppBar(
              height: 40.v,
              leadingWidth: 48.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgClose,
                  margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v),
                  onTap: () {
                    onTapClose(context);
                  }),
              centerTitle: true,
              title: AppbarTitleDropdown(
                  hintText: "October",
                  items: dropdownItemList,
                  onTap: (value) {}),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgMagiconsGlyphEcommercePrimary,
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v))
              ]),
          SizedBox(height: 12.v),
          Text("Account Balance", style: theme.textTheme.titleSmall),
          SizedBox(height: 8.v),
          Text("₹38000",
              style: CustomTextStyles.displayMediumInterPrimaryContainer),
          SizedBox(height: 25.v),
          SizedBox(
              height: 80.v,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 11.h);
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return IncomecomponentItemWidget();
                  })),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 34.v,
        width: 346.h,
        margin: EdgeInsets.only(left: 8.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.h),
            border: Border.all(color: appTheme.gray50, width: 1.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.amberA700,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: appTheme.orange50,
                borderRadius: BorderRadius.circular(16.h)),
            tabs: [
              Tab(child: Text("Today")),
              Tab(child: Text("Week")),
              Tab(child: Text("Month")),
              Tab(child: Text("Year"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
