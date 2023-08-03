import 'package:bikestoret/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 13,
        bottom: 13,
      ),
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFondoblancoweb,
            height: getVerticalSize(
              72,
            ),
            width: getHorizontalSize(
              75,
            ),
            margin: getMargin(
              top: 6,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
              bottom: 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Electric blackBike \n36 Miami",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.labelLarge!.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLoveicon,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 53,
                        bottom: 10,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTrashicon,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 8,
                        bottom: 10,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "299,43",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeGreen900_1.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgFolder,
                        height: getVerticalSize(
                          20,
                        ),
                        width: getHorizontalSize(
                          33,
                        ),
                        margin: getMargin(
                          left: 67,
                        ),
                      ),
                      SizedBox(
                        height: getVerticalSize(
                          20,
                        ),
                        width: getHorizontalSize(
                          41,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  20,
                                ),
                                width: getHorizontalSize(
                                  41,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.blue50,
                                  border: Border.all(
                                    color: appTheme.blue50,
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                    strokeAlign: strokeAlignCenter,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: getPadding(
                                  right: 17,
                                ),
                                child: Text(
                                  "1",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOnPrimary
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.06,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getVerticalSize(
                          20,
                        ),
                        width: getHorizontalSize(
                          33,
                        ),
                      ),
                    ],
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
