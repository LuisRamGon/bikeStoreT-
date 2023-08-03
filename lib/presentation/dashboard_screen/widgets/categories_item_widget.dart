import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  
  const CategoriesItemWidget({Key? key, this.title, this.svgPath, this.imagePath})
      : super(
          key: key,
        );

  final String? title;
  final String? svgPath;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 4,
        bottom: 4,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 63,
            width: 63,
            padding: getPadding(
              all: 10,
            ),
            child: CustomImageView(
              svgPath: svgPath,
              imagePath: imagePath,
            ),
          ),
          Text(
            title ?? "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.bodySmallGreen900.copyWith(
              letterSpacing: getHorizontalSize(
                0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}