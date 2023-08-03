import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:bikestoret/widgets/custom_outlined_button.dart';
import 'package:bikestoret/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 16,
              right: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 43,
                  ),
                  child: Text(
                    "Welcome BikeStore",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium!.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    "Sign in to continue",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall!.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                CustomTextFormField(
                  controller: emailController,
                  margin: getMargin(
                    top: 28,
                  ),
                  contentPadding: getPadding(
                    top: 15,
                    right: 30,
                    bottom: 15,
                  ),
                  textStyle: theme.textTheme.bodySmall!,
                  hintText: "Your Email",
                  hintStyle: theme.textTheme.bodySmall!,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgMail,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      48,
                    ),
                  ),
                  filled: true,
                  fillColor:
                      theme.colorScheme.onPrimaryContainer.withOpacity(1),
                ),
                CustomTextFormField(
                  controller: passwordController,
                  margin: getMargin(
                    top: 10,
                  ),
                  contentPadding: getPadding(
                    top: 15,
                    right: 30,
                    bottom: 15,
                  ),
                  textStyle: theme.textTheme.bodySmall!,
                  hintText: "Password",
                  hintStyle: theme.textTheme.bodySmall!,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgLock,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      48,
                    ),
                  ),
                  obscureText: true,
                  filled: true,
                  fillColor:
                      theme.colorScheme.onPrimaryContainer.withOpacity(1),
                ),
                CustomElevatedButton(
                  width: double.maxFinite,
                  height: getVerticalSize(
                    57,
                  ),
                  text: "Sign In",
                  margin: getMargin(
                    top: 16,
                  ),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  buttonTextStyle:
                      CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 10,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            134,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: appTheme.blue50,
                          ),
                        ),
                      ),
                      Text(
                        "OR",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBluegray300.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.07,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 10,
                          bottom: 9,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            137,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: appTheme.blue50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomOutlinedButton(
                  width: double.maxFinite,
                  height: getVerticalSize(
                    57,
                  ),
                  text: "Login with Google",
                  margin: getMargin(
                    top: 16,
                  ),
                  leftIcon: Container(
                    margin: getMargin(
                      right: 30,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgGoogleIcon,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlue50,
                  buttonTextStyle: CustomTextStyles.titleSmallBluegray300,
                ),
                CustomOutlinedButton(
                  width: double.maxFinite,
                  height: getVerticalSize(
                    57,
                  ),
                  text: "Login with facebook",
                  margin: getMargin(
                    top: 8,
                  ),
                  leftIcon: Container(
                    margin: getMargin(
                      right: 30,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFacebookIcon,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlue50,
                  buttonTextStyle: CustomTextStyles.titleSmallBluegray300,
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Text(
                    "Forgot Password?",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelLargeGreen900_1.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account?",
                          style: theme.textTheme.bodySmall!.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: " ",
                          style:
                              CustomTextStyles.labelLargeIndigoA200_1.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "Register",
                          style: CustomTextStyles.labelLargeGreen900.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
