import '../tenant_information_screen/widgets/address_item_widget.dart';
import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/appbar_title.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TenantInformationScreen extends StatelessWidget {
  const TenantInformationScreen({Key? key}) : super(key: key);

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
                    height: getVerticalSize(28),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 13),
                    onTap: () {
                      onTapArrowleft7(context);
                    }),
                title: AppbarTitle(
                    text: "tenant information", margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(28),
                      width: getHorizontalSize(24),
                      svgPath: ImageConstant.imgPlusicon,
                      margin:
                          getMargin(left: 16, top: 14, right: 16, bottom: 13))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 4, right: 16),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(22));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return AddressItemWidget();
                    })),
            bottomNavigationBar: CustomElevatedButton(
                width: double.maxFinite,
                height: getVerticalSize(57),
                text: "Next",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainer)));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
