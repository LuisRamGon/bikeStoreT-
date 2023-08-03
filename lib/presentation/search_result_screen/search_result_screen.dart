import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:bikestoret/widgets/custom_elevated_button.dart';
import 'package:bikestoret/widgets/custom_icon_button.dart';
import 'package:bikestoret/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends StatelessWidget {
  SearchResultScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          height: getVerticalSize(
            67,
          ),
          title: CustomSearchView(
            width: getHorizontalSize(
              263,
            ),
            margin: getMargin(
              left: 16,
            ),
            controller: searchController,
            hintText: "Search Product",
            hintStyle: theme.textTheme.bodySmall!,
            textStyle: theme.textTheme.bodySmall!,
            prefix: Container(
              margin: getMargin(
                left: 16,
                top: 15,
                right: 8,
                bottom: 15,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgSearch,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: getVerticalSize(
                46,
              ),
            ),
            suffix: Padding(
              padding: EdgeInsets.only(
                right: getHorizontalSize(
                  15,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  searchController.clear();
                },
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            contentPadding: getPadding(
              top: 14,
              right: 30,
              bottom: 14,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgSortBlueGray300,
              margin: getMargin(
                left: 16,
                top: 16,
                right: 16,
              ),
            ),
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgFilter,
              margin: getMargin(
                left: 16,
                top: 16,
                right: 32,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 11,
            bottom: 11,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: appTheme.blue50,
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "0 Result",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "Man Shoes",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge!.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgDownicon,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 8,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 72,
                width: 72,
                padding: getPadding(
                  all: 28,
                ),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  svgPath: ImageConstant.imageNotFound,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "Product Not Found",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.headlineSmallOnPrimary.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Text(
                  "thank you for shopping using lafyuu",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodySmall!.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              CustomElevatedButton(
                width: double.maxFinite,
                height: getVerticalSize(
                  57,
                ),
                text: "Back to Home",
                margin: getMargin(
                  all: 16,
                ),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
