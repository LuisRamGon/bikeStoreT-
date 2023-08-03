import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/appbar_title.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:bikestoret/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({Key? key}) : super(key: key);

  TextEditingController countryController = TextEditingController();

  TextEditingController firstnameoneController = TextEditingController();

  TextEditingController lastnameoneController = TextEditingController();

  TextEditingController streetaddressController = TextEditingController();

  TextEditingController streetaddressController1 = TextEditingController();

  TextEditingController cityoneController = TextEditingController();

  TextEditingController enterstateproviController = TextEditingController();

  TextEditingController zipcodeoneController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

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
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                title: AppbarTitle(
                    text: "Add Address", margin: getMargin(left: 12))),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 29),
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Country or region",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))),
                              CustomTextFormField(
                                  controller: countryController,
                                  margin: getMargin(top: 11),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the country or region",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("First Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: firstnameoneController,
                                  margin: getMargin(top: 13),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the first name",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("Last Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: lastnameoneController,
                                  margin: getMargin(top: 12),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the last name",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("Street Address",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: streetaddressController,
                                  margin: getMargin(top: 12),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the street address",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("Street Address 2 (Optional)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: streetaddressController1,
                                  margin: getMargin(top: 16),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the street address 2",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("City",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: cityoneController,
                                  margin: getMargin(top: 11),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the city",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("State/Province/Region",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: enterstateproviController,
                                  margin: getMargin(top: 12),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the state/province/region",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Zip Code",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: zipcodeoneController,
                                  margin: getMargin(top: 11),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the zip code",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.number,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper
                                          .outlineBlue50TL5),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("Phone Number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  controller: phonenumberoneController,
                                  margin: getMargin(top: 12),
                                  contentPadding: getPadding(
                                      left: 12, top: 15, right: 12, bottom: 15),
                                  textStyle: theme.textTheme.bodySmall!,
                                  hintText: "Enter the phone number",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  textInputType: TextInputType.phone,
                                  defaultBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  enabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  focusedBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5,
                                  disabledBorderDecoration:
                                      TextFormFieldStyleHelper.outlineBlue50TL5)
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                width: double.maxFinite,
                height: getVerticalSize(57),
                text: "Add Address",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainer)));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
