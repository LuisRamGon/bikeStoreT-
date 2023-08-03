import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:bikestoret/widgets/custom_icon_button.dart';
import 'package:bikestoret/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchResultOneScreen extends StatelessWidget {
  SearchResultOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          height: getVerticalSize(
            29,
          ),
          title: CustomSearchView(
            width: getHorizontalSize(
              268,
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
                top: 12,
                right: 14,
                bottom: 18,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgSearch,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: getVerticalSize(
                29,
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
              height: getVerticalSize(
                19,
              ),
              width: getHorizontalSize(
                24,
              ),
              svgPath: ImageConstant.imgSort,
              margin: getMargin(
                left: 1,
                right: 10,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                19,
              ),
              width: getHorizontalSize(
                24,
              ),
              svgPath: ImageConstant.imgFilter,
              margin: getMargin(
                left: 16,
                right: 11,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 10,
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
                          "4 Result",
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
                          "Electric Bike ",
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
                Padding(
                  padding: getPadding(
                    left: 18,
                    top: 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            top: 3,
                            right: 17,
                            bottom: 16,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 57,
                                width: 56,
                                padding: getPadding(
                                  all: 12,
                                ),
                                decoration: IconButtonStyleHelper.outlineBlue50,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgClassicBike,
                                ),
                              ),
                              Text(
                                "Clasic ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall10.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 17,
                            right: 17,
                            bottom: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 57,
                                width: 56,
                                padding: getPadding(
                                  all: 11,
                                ),
                                decoration: IconButtonStyleHelper.outlineBlue50,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgTelevision,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 6,
                                ),
                                child: Text(
                                  "Electric",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall10.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 17,
                            top: 3,
                            right: 17,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 57,
                                width: 56,
                                padding: getPadding(
                                  all: 11,
                                ),
                                decoration: IconButtonStyleHelper.outlineBlue50,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgManshoesicon,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  top: 6,
                                ),
                                child: Text(
                                  "Super bike",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmall10.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 17,
                            top: 3,
                            bottom: 8,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 57,
                                width: 56,
                                padding: getPadding(
                                  all: 12,
                                ),
                                decoration: IconButtonStyleHelper.outlineBlue50,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgHighheelsicon,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Text(
                                  "Delivery",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall10.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: getMargin(
                            right: 6,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 7,
                            right: 16,
                            bottom: 7,
                          ),
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAspasweb,
                                height: getVerticalSize(
                                  97,
                                ),
                                width: getHorizontalSize(
                                  128,
                                ),
                                margin: getMargin(
                                  top: 33,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Text(
                                  "RedBike Sport",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 21,
                                ),
                                child: RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: getVerticalSize(
                                    12,
                                  ),
                                  unratedColor: appTheme.blue50,
                                  itemCount: 5,
                                  updateOnDrag: true,
                                  onRatingUpdate: (rating) {},
                                  itemBuilder: (
                                    context,
                                    _,
                                  ) {
                                    return Icon(
                                      Icons.star,
                                      color: appTheme.yellow700,
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 18,
                                ),
                                child: Text(
                                  "299,43",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.labelLargeGreen900_1
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "534,33",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodySmall10.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.5,
                                        ),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                      ),
                                      child: Text(
                                        "24% Off",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
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
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: getMargin(
                            left: 6,
                          ),
                          padding: getPadding(
                            left: 10,
                            top: 7,
                            right: 10,
                            bottom: 7,
                          ),
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img124158405bicic,
                                height: getVerticalSize(
                                  125,
                                ),
                                width: getHorizontalSize(
                                  139,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 9,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 16,
                                ),
                                child: Text(
                                  "BlueBike Sport",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 21,
                                ),
                                child: RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: getVerticalSize(
                                    12,
                                  ),
                                  unratedColor: appTheme.blue50,
                                  itemCount: 5,
                                  updateOnDrag: true,
                                  onRatingUpdate: (rating) {},
                                  itemBuilder: (
                                    context,
                                    _,
                                  ) {
                                    return Icon(
                                      Icons.star,
                                      color: appTheme.yellow700,
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 18,
                                ),
                                child: Text(
                                  "299,43",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.labelLargeGreen900_1
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "534,33",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodySmall10.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.5,
                                        ),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                      ),
                                      child: Text(
                                        "24% Off",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
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
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    350,
                  ),
                  width: getHorizontalSize(
                    367,
                  ),
                  margin: getMargin(
                    top: 12,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            all: 16,
                          ),
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgDownload1125x133,
                                height: getVerticalSize(
                                  125,
                                ),
                                width: getHorizontalSize(
                                  133,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  91,
                                ),
                                margin: getMargin(
                                  top: 16,
                                ),
                                child: Text(
                                  "Super Electric BlueBike",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: getVerticalSize(
                                    12,
                                  ),
                                  unratedColor: appTheme.blue50,
                                  itemCount: 5,
                                  updateOnDrag: true,
                                  onRatingUpdate: (rating) {},
                                  itemBuilder: (
                                    context,
                                    _,
                                  ) {
                                    return Icon(
                                      Icons.star,
                                      color: appTheme.yellow700,
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 18,
                                ),
                                child: Text(
                                  "299,43",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.labelLargeGreen900_1
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "534,33",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodySmall10.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.5,
                                        ),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                      ),
                                      child: Text(
                                        "24% Off",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
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
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: getMargin(
                            right: 12,
                          ),
                          padding: getPadding(
                            all: 16,
                          ),
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBicicletaelect,
                                height: getVerticalSize(
                                  118,
                                ),
                                width: getHorizontalSize(
                                  133,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  107,
                                ),
                                margin: getMargin(
                                  top: 23,
                                ),
                                child: Text(
                                  "Delivery Electric RedBike",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: getVerticalSize(
                                    12,
                                  ),
                                  unratedColor: appTheme.blue50,
                                  itemCount: 5,
                                  updateOnDrag: true,
                                  onRatingUpdate: (rating) {},
                                  itemBuilder: (
                                    context,
                                    _,
                                  ) {
                                    return Icon(
                                      Icons.star,
                                      color: appTheme.yellow700,
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 18,
                                ),
                                child: Text(
                                  "299,43",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.labelLargeGreen900_1
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.5,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "534,33",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          CustomTextStyles.bodySmall10.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.5,
                                        ),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                      ),
                                      child: Text(
                                        "24% Off",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
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
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: AppDecoration.fill,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
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
                                  left: 14,
                                  top: 19,
                                  bottom: 14,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 1,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgHome,
                                            height: getVerticalSize(
                                              19,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                            ),
                                            child: Text(
                                              "Home",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodySmall10
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
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
                                        left: 40,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSearchGreen900,
                                            height: getVerticalSize(
                                              19,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              "Explore",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallGreen900
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
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
                                        left: 43,
                                        bottom: 1,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgCarticon,
                                            height: getVerticalSize(
                                              19,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                            ),
                                            child: Text(
                                              "Cart",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .labelMediumBluegray300
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
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
                                        left: 45,
                                        bottom: 1,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgInventoryfill0,
                                            height: getSize(
                                              26,
                                            ),
                                            width: getSize(
                                              26,
                                            ),
                                          ),
                                          Text(
                                            "Rental",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles.bodySmall10
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.5,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 35,
                                        bottom: 1,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgUsericon,
                                            height: getVerticalSize(
                                              19,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                            ),
                                            child: Text(
                                              "Account",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodySmall10
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
     
      ),
    );
  }
}