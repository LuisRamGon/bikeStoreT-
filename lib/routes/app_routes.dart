import 'package:flutter/material.dart';
import 'package:bikestoret/presentation/dashboard_screen/dashboard_screeen.dart';
import 'package:bikestoret/presentation/login_screen/login_screen.dart';
import 'package:bikestoret/presentation/register_form_screen/register_form_screen.dart';
import 'package:bikestoret/presentation/account_screen/account_screen.dart';
import 'package:bikestoret/presentation/profile_container_screen/profile_container_screen.dart';
import 'package:bikestoret/presentation/splash_screen/splash_screen.dart';
import 'package:bikestoret/presentation/change_password_screen/change_password_screen.dart';
import 'package:bikestoret/presentation/list_category_screen/list_category_screen.dart';
import 'package:bikestoret/presentation/search_result_one_screen/search_result_one_screen.dart';
import 'package:bikestoret/presentation/search_result_screen/search_result_screen.dart';
import 'package:bikestoret/presentation/order_screen/order_screen.dart';
import 'package:bikestoret/presentation/cart_screen/cart_screen.dart';
import 'package:bikestoret/presentation/order_details_screen/order_details_screen.dart';
import 'package:bikestoret/presentation/address_screen/address_screen.dart';
import 'package:bikestoret/presentation/add_address_screen/add_address_screen.dart';
import 'package:bikestoret/presentation/tenant_information_screen/tenant_information_screen.dart';
import 'package:bikestoret/presentation/add_payment_screen/add_payment_screen.dart';
import 'package:bikestoret/presentation/credit_card_and_debit_screen/credit_card_and_debit_screen.dart';
import 'package:bikestoret/presentation/add_card_screen/add_card_screen.dart';
import 'package:bikestoret/presentation/lailyfa_febrina_card_screen/lailyfa_febrina_card_screen.dart';
import 'package:bikestoret/presentation/success_screen/success_screen.dart';
import 'package:bikestoret/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {

  static const String homeScreen = '/homeScreen';
  
  static const String dashboardScreen = '/dashboard_screen';

  static const String loginScreen = '/login_screen';

  static const String registerFormScreen = '/register_form_screen';

  static const String accountScreen = '/account_screen';

  static const String profilePage = '/profile_page';

  static const String profileContainerScreen = '/profile_container_screen';

  static const String splashScreen = '/splash_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String listCategoryScreen = '/list_category_screen';

  static const String searchResultOneScreen = '/search_result_one_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String orderScreen = '/order_screen';

  static const String cartScreen = '/cart_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String addressScreen = '/address_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String tenantInformationScreen = '/tenant_information_screen';

  static const String addPaymentScreen = '/add_payment_screen';

  static const String creditCardAndDebitScreen =
      '/credit_card_and_debit_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String lailyfaFebrinaCardScreen = '/lailyfa_febrina_card_screen';

  static const String successScreen = '/success_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    dashboardScreen: (context) => DashboardScreen(),
    loginScreen: (context) => LoginScreen(),
    registerFormScreen: (context) => RegisterFormScreen(),
    accountScreen: (context) => AccountScreen(),
    profileContainerScreen: (context) => ProfileContainerScreen(),
    splashScreen: (context) => SplashScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    listCategoryScreen: (context) => ListCategoryScreen(),
    searchResultOneScreen: (context) => SearchResultOneScreen(),
    searchResultScreen: (context) => SearchResultScreen(),
    orderScreen: (context) => OrderScreen(),
    cartScreen: (context) => CartScreen(),
    orderDetailsScreen: (context) => OrderDetailsScreen(),
    addressScreen: (context) => AddressScreen(),
    addAddressScreen: (context) => AddAddressScreen(),
    tenantInformationScreen: (context) => TenantInformationScreen(),
    addPaymentScreen: (context) => AddPaymentScreen(),
    creditCardAndDebitScreen: (context) => CreditCardAndDebitScreen(),
    addCardScreen: (context) => AddCardScreen(),
    lailyfaFebrinaCardScreen: (context) => LailyfaFebrinaCardScreen(),
    successScreen: (context) => SuccessScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
