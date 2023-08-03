import 'package:bikestoret/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.green900,
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle435,
            height: getSize(
              72,
            ),
            width: getSize(
              72,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                14,
              ),
            ),
            alignment: Alignment.center,
            margin: getMargin(
              bottom: 5,
            ),
          ),
        ),
      ),
    );
  }
}
