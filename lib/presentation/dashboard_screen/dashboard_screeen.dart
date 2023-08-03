import 'package:bikestoret/core/app_export.dart';
import 'package:bikestoret/presentation/cart_screen/cart_screen.dart';
import 'package:bikestoret/presentation/dashboard_screen/home/home_Screen.dart';
import 'package:bikestoret/presentation/order_details_screen/order_details_screen.dart';
import 'package:bikestoret/presentation/profile_page/profile_page.dart';
import 'package:bikestoret/presentation/search_result_one_screen/search_result_one_screen.dart';
import 'package:bikestoret/providers/products_provider.dart';
import 'package:bikestoret/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int sliderIndex = 2;

  late ProductsProvider provider;

  @override
  void initState() {
    super.initState();
    // seed database
    // ProductService.seed();
  }

  @override
  Widget build(BuildContext context) {
    //
    final controller = PageController();

    mediaQueryData = MediaQuery.of(context);

    provider = context.watch<ProductsProvider>();

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      bottomNavigationBar: CustomBottomBar(index: (p0) {
        controller.jumpToPage(p0);
      },),
      body: PageView(

        controller: controller,
        physics: NeverScrollableScrollPhysics(
        ),

        children: [

          HomeScreenState(),

          SearchResultOneScreen() ,
         
          CartScreen(),

          OrderDetailsScreen(),
          
          ProfilePage()
        ],
      )
    )
      // 
    );
  }

  }
