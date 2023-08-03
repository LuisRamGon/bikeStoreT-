import 'package:bikestoret/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListCategoryItemWidget extends StatelessWidget {
  const ListCategoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blue50,
          width: getHorizontalSize(
            1,
          ),
        ),
        borderRadius: BorderRadiusStyle.circleBorder26,
      ),
      child: Container(
        height: getVerticalSize(
          52,
        ),
        width: getHorizontalSize(
          56,
        ),
        padding: getPadding(
          left: 12,
          top: 11,
          right: 12,
          bottom: 11,
        ),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder26,
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgHighheelsicon,
              height: getVerticalSize(
                29,
              ),
              width: getHorizontalSize(
                32,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
