import 'package:bikestoret/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage1,
      height: getVerticalSize(
        209,
      ),
      width: getHorizontalSize(
        343,
      ),
    );
  }
}
