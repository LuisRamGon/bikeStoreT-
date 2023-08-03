import '../address_screen/widgets/addresses_item_widget.dart';
import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/appbar_title.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
                title:
                    AppbarTitle(text: "Address", margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 16, top: 17, right: 16),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(18));
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return AddressesItemWidget();
                    })),
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
  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
