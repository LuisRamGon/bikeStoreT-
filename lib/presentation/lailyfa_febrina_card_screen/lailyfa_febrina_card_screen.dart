import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/appbar_title.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:bikestoret/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LailyfaFebrinaCardScreen extends StatelessWidget {
  LailyfaFebrinaCardScreen({Key? key}) : super(key: key);

  TextEditingController cardnumberfullController = TextEditingController();

  TextEditingController expirationdateController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController cardholdernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(25),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 15, bottom: 15),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                title: AppbarTitle(
                    text: "Lailyfa Febrina Card", margin: getMargin(left: 12))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 22),
                    child: Padding(
                        padding: getPadding(left: 16, right: 14, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding: getPadding(
                                      left: 17, top: 14, right: 17, bottom: 14),
                                  decoration: AppDecoration.fill2.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgClose,
                                            height: getVerticalSize(22),
                                            width: getHorizontalSize(36)),
                                        Padding(
                                            padding:
                                                getPadding(left: 4, top: 40),
                                            child: Text(
                                                "6326    9124    8124    9875",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.headlineSmall!
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 4, top: 17),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("CARD HOLDER",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodySmallOnPrimaryContainer
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 37, bottom: 2),
                                                  child: Text("CARD SAVE",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodySmallOnPrimaryContainer
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 1, bottom: 9),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("Lailyfa Febrina",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelMediumOnPrimaryContainer
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32, bottom: 3),
                                                  child: Text("06/24",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelMediumOnPrimaryContainer
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 2, top: 23),
                                  child: Text("Card Number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: cardnumberfullController,
                                  margin: getMargin(left: 2, top: 12),
                                  contentPadding: getPadding(
                                      left: 16, top: 15, right: 16, bottom: 15),
                                  textStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  hintText: "1231 - 2312 - 3123 - 1231",
                                  hintStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme
                                      .colorScheme.onPrimaryContainer
                                      .withOpacity(1)),
                              Padding(
                                  padding: getPadding(left: 2, top: 24),
                                  child: Text("Expiration Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: expirationdateController,
                                  margin: getMargin(left: 2, top: 11),
                                  contentPadding: getPadding(
                                      left: 16, top: 15, right: 16, bottom: 15),
                                  textStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  hintText: "12/12",
                                  hintStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme
                                      .colorScheme.onPrimaryContainer
                                      .withOpacity(1)),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Text("Security Code",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: zipcodeController,
                                  margin: getMargin(top: 11),
                                  contentPadding: getPadding(
                                      left: 16, top: 15, right: 16, bottom: 15),
                                  textStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  hintText: "1219",
                                  hintStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme
                                      .colorScheme.onPrimaryContainer
                                      .withOpacity(1)),
                              Padding(
                                  padding: getPadding(left: 2, top: 23),
                                  child: Text("Card Holder",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: cardholdernameController,
                                  margin: getMargin(left: 2, top: 12),
                                  contentPadding: getPadding(
                                      left: 16, top: 15, right: 16, bottom: 15),
                                  textStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  hintText: "Lailyfa Febrina",
                                  hintStyle: CustomTextStyles
                                      .labelLargeBluegray300SemiBold,
                                  filled: true,
                                  fillColor: theme
                                      .colorScheme.onPrimaryContainer
                                      .withOpacity(1))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                width: double.maxFinite,
                height: getVerticalSize(57),
                text: "Save",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainer)));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}
