import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:bikestoret/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterFormScreen extends StatelessWidget {
  RegisterFormScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

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
                    "Let’s Get Started",
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
                    top: 9,
                  ),
                  child: Text(
                    "Create an new account",
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
                  controller: fullnameController,
                  margin: getMargin(
                    top: 30,
                  ),
                  contentPadding: getPadding(
                    top: 15,
                    right: 30,
                    bottom: 15,
                  ),
                  textStyle: theme.textTheme.bodySmall!,
                  hintText: "Full Name",
                  hintStyle: theme.textTheme.bodySmall!,
                  textInputAction: TextInputAction.next,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgUser,
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
                  controller: emailController,
                  margin: getMargin(
                    top: 8,
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
                    top: 8,
                  ),
                  contentPadding: getPadding(
                    top: 15,
                    right: 30,
                    bottom: 15,
                  ),
                  textStyle: theme.textTheme.bodySmall!,
                  hintText: "Password",
                  hintStyle: theme.textTheme.bodySmall!,
                  textInputAction: TextInputAction.next,
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
                CustomTextFormField(
                  controller: passwordoneController,
                  margin: getMargin(
                    top: 8,
                  ),
                  contentPadding: getPadding(
                    top: 15,
                    right: 30,
                    bottom: 15,
                  ),
                  textStyle: theme.textTheme.bodySmall!,
                  hintText: "Password Again",
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
                  text: "Sign Up",
                  margin: getMargin(
                    top: 20,
                  ),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  buttonTextStyle:
                      CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Have an account?",
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
                          text: "Sign In",
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
