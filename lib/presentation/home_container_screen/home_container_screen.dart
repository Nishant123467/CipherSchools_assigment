import 'package:flutter/material.dart';
import 'package:nishant_s_application1/core/app_export.dart';
import 'package:nishant_s_application1/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:nishant_s_application1/presentation/profle_page/profle_page.dart';
import 'package:nishant_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:nishant_s_application1/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.border,
                child: Column(children: [
                  Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.homeTabContainerPage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(routeSetting.name!),
                          transitionDuration: Duration(seconds: 0))),
                  SizedBox(height: 34.v)
                ])),
            bottomNavigationBar: _buildBottomNavigation(context),
            floatingActionButton: CustomFloatingButton(
                height: 56,
                width: 56,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    imagePath: ImageConstant.imgPlus,
                    height: 28.0.v,
                    width: 28.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeTabContainerPage;
      case BottomBarEnum.Transaction:
        return "/";
      case BottomBarEnum.Budget:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.proflePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeTabContainerPage:
        return HomeTabContainerPage();
      case AppRoutes.proflePage:
        return ProflePage();
      default:
        return DefaultWidget();
    }
  }
}
