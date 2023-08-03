import 'package:bikestoret/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FlashsaleItemWidget extends StatelessWidget {
  const FlashsaleItemWidget(
      {Key? key,
      this.title,
      this.svgPath,
      this.imageUrl,
      this.price,
      this.discountPrice})
      : super(
          key: key,
        );

  final String? title;
  final String? svgPath;
  final String? imageUrl;
  final double? price;
  final double? discountPrice;
  String get discountPercentage {
    double discount = (price! - discountPrice!) / price! * 100;
    return discount.toStringAsFixed(0);
  }

  String get priceString {
    return "\$" + price.toString();
  }

  String get discountPriceString {
    return "\$" + discountPrice.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        142,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: svgPath,
                    url: imageUrl,
                    height: getVerticalSize(
                      113,
                    ),
                    width: getHorizontalSize(
                      119,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      title ?? "",
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
                    child: Text(
                      discountPriceString,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelLargeGreen900_1.copyWith(
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
                          priceString,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmall10.copyWith(
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
                            "$discountPercentage% OFF",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium!.copyWith(
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
                      top: 15,
                    ),
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: InkWell(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border.all(
                                  color: Colors.blueGrey,
                                ),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Text(
                                "rent",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap:() {
                              print("rent");
                            },
                          ),
                        ),
                        SizedBox(width: 40,),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              border: Border.all(
                                color: Colors.blueGrey,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              "Delete",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap:() {
                            print("delete");
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
