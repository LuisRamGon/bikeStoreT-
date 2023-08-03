import 'package:bikestoret/core/utils/image_constant.dart';
import 'package:bikestoret/presentation/dashboard_screen/widgets/categories_item_widget.dart';
import 'package:bikestoret/presentation/dashboard_screen/widgets/flashsale_item_widget.dart';
import 'package:bikestoret/presentation/dashboard_screen/widgets/slider_item_widget.dart';
import 'package:bikestoret/providers/products_provider.dart';
import 'package:bikestoret/theme/theme_helper.dart';
import 'package:bikestoret/widgets/app_bar/appbar_image.dart';
import 'package:bikestoret/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/custom_text_style.dart';




class HomeScreenState extends StatefulWidget {
  const HomeScreenState({super.key});

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> with AutomaticKeepAliveClientMixin{
  late ProductsProvider provider;
  
  final controller = PageController();


  @override
  Widget build(BuildContext context) {
    super.build(context);
    provider = context.watch<ProductsProvider>();
    
    return Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          height: getVerticalSize(
            65,
          ),
          leadingWidth: 48,
          leading: AppbarImage(
            height: getSize(
              16,
            ),
            width: getSize(
              16,
            ),
            svgPath: ImageConstant.imgSearch,
            margin: getMargin(
              top: 20,
              bottom: 19,
            ),
          ),
          title: Text(
            "Search Product",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.bodySmall!.copyWith(
              letterSpacing: getHorizontalSize(
                0.5,
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: getVerticalSize(
                      209,
                    ),
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      // sliderIndex = index;
                    },
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index, realIndex) {
                    return SliderItemWidget();
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall!.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                    Text(
                      "More Category",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallGreen900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoriesItemWidget(
                      svgPath: ImageConstant.imgClassicBike1,
                      title: "Clasic",
                    ),
                    CategoriesItemWidget(
                      svgPath: ImageConstant.imgElectricBike,
                      title: "Electric",
                    ),
                    CategoriesItemWidget(
                      svgPath: ImageConstant.imgSuperBike11,
                      title: "Super Bike",
                    ),
                    CategoriesItemWidget(
                      svgPath: ImageConstant.imgDelivery0,
                      title: "Delivery",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flash Rental",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall!.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                    Text(
                      "See More",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallGreen900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    )
                  ],
                ),
                _buildProductsView()
              ],
            ),
          ),
        ),
    );
    
  }
  Widget _buildProductsView() {

    if (provider.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: getVerticalSize(
          250,
        ),
        child: ListView.separated(
          padding: getPadding(
            top: 12,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: getHorizontalSize(
                16,
              ),
            );
          },
          itemCount: provider.products.length,
          itemBuilder: (context, index) {
            final product = provider.products[index];
            return FlashsaleItemWidget(
              title: product.name,
              price: product.price,
              discountPrice: product.discountPrice,
              imageUrl: product.imageUrl ?? "",
            );
          },
        ),
      ),
    );
  }
  
  @override
  bool get wantKeepAlive => true;

}


