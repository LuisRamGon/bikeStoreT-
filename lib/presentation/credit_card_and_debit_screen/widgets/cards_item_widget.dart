import 'package:bikestoret/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardsItemWidget extends StatelessWidget {
  const CardsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 21,
        top: 24,
        right: 21,
        bottom: 24,
      ),
      decoration: AppDecoration.fill2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVolumeGray400,
            height: getVerticalSize(
              22,
            ),
            width: getHorizontalSize(
              36,
            ),
            margin: getMargin(
              left: 3,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 30,
            ),
            child: Text(
              "6326    9124    8124    9875",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineSmall!.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 17,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "CARD HOLDER",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 37,
                    bottom: 2,
                  ),
                  child: Text(
                    "CARD SAVE",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 1,
              top: 1,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "Dominic Ovo",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        CustomTextStyles.labelMediumOnPrimaryContainer.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 41,
                    bottom: 1,
                  ),
                  child: Text(
                    "06/24",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        CustomTextStyles.labelMediumOnPrimaryContainer.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
