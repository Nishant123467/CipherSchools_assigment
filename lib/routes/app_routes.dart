import 'package:flutter/material.dart';
import 'package:nishant_s_application1/presentation/splash_screen_screen/splash_screen_screen.dart';
import 'package:nishant_s_application1/presentation/getting_started_screen/getting_started_screen.dart';
import 'package:nishant_s_application1/presentation/onboarding_sign_up_screen/onboarding_sign_up_screen.dart';
import 'package:nishant_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:nishant_s_application1/presentation/expense_new_screen/expense_new_screen.dart';
import 'package:nishant_s_application1/presentation/income_new_screen/income_new_screen.dart';
import 'package:nishant_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenScreen = '/splash_screen_screen';

  static const String gettingStartedScreen = '/getting_started_screen';

  static const String onboardingSignUpScreen = '/onboarding_sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String expenseNewScreen = '/expense_new_screen';

  static const String incomeNewScreen = '/income_new_screen';

  static const String proflePage = '/profle_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenScreen: (context) => SplashScreenScreen(),
    gettingStartedScreen: (context) => GettingStartedScreen(),
    onboardingSignUpScreen: (context) => OnboardingSignUpScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    expenseNewScreen: (context) => ExpenseNewScreen(),
    incomeNewScreen: (context) => IncomeNewScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
