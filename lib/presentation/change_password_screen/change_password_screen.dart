import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/appbar_title.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:bikestoret/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  TextEditingController languageController = TextEditingController();

  TextEditingController languageoneController = TextEditingController();

  TextEditingController languagetwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                title: AppbarTitle(
                    text: "Change Password", margin: getMargin(left: 12))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 26, right: 16, bottom: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Old Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall!.copyWith(
                                  letterSpacing: getHorizontalSize(0.5))),
                          CustomTextFormField(
                              controller: languageController,
                              margin: getMargin(top: 12),
                              contentPadding:
                                  getPadding(top: 15, right: 30, bottom: 15),
                              textStyle: CustomTextStyles.labelLargeBluegray300,
                              hintText: "•••••••••••••••••",
                              hintStyle: CustomTextStyles.labelLargeBluegray300,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Text("New Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                          CustomTextFormField(
                              controller: languageoneController,
                              margin: getMargin(top: 12),
                              contentPadding:
                                  getPadding(top: 15, right: 30, bottom: 15),
                              textStyle: CustomTextStyles.labelLargeBluegray300,
                              hintText: "•••••••••••••••••",
                              hintStyle: CustomTextStyles.labelLargeBluegray300,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5),
                          Padding(
                              padding: getPadding(top: 24),
                              child: Text("New Password Again",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                          CustomTextFormField(
                              controller: languagetwoController,
                              margin: getMargin(top: 11, bottom: 5),
                              contentPadding:
                                  getPadding(top: 15, right: 30, bottom: 15),
                              textStyle: CustomTextStyles.labelLargeBluegray300,
                              hintText: "•••••••••••••••••",
                              hintStyle: CustomTextStyles.labelLargeBluegray300,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineBlue50TL5)
                        ]))),
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
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
