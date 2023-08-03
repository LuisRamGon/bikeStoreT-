import 'package:bikestoret/core/app_export.dart';
import 'package:flutter/material.dart';


class CustomBottomBar extends StatefulWidget {
  final Function (int)? index;
  CustomBottomBar({this.onChanged, this.index});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;
  

  List<_BottomMenuModel> bottomMenuList = [
    
    _BottomMenuModel(
      icon: ImageConstant.imgHomeGreen900,
      activeIcon: ImageConstant.imgHomeGreen900,
      title: "Home",
      type: BottomBarEnum.Home,
      child: InkWell(onTap: () {
      },)
    ),
    _BottomMenuModel(
      icon: ImageConstant.imgSearchicon,
      activeIcon: ImageConstant.imgSearchicon,
      title: "Explore",
      type: BottomBarEnum.Explore,
    ),
    _BottomMenuModel(
      icon: ImageConstant.imgCartBlueGray300,
      activeIcon: ImageConstant.imgCartBlueGray300,
      title: "Cart",
      type: BottomBarEnum.Cart,
    ),
    _BottomMenuModel(
      icon: ImageConstant.imgInventoryfill0,
      activeIcon: ImageConstant.imgInventoryfill0,
      title: "Rental",
      type: BottomBarEnum.Rental,
    ),
    _BottomMenuModel(
      icon: ImageConstant.imgUsericon,
      activeIcon: ImageConstant.imgUsericon,
      title: "Account",
      type: BottomBarEnum.Account,
    )
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      ),
      child: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(0, 202, 23, 23),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getVerticalSize(
                    22,
                  ),
                  width: getHorizontalSize(
                    24,
                  ),
                  color: appTheme.blueGray300,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                      color: appTheme.blueGray300,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].activeIcon,
                  height: getVerticalSize(
                    22,
                  ),
                  width: getHorizontalSize(
                    24,
                  ),
                  color: appTheme.green900,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallGreen900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                      color: appTheme.green900,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {

          setState(() {
            selectedIndex = index;
            widget.index?.call(index);
          });
          widget.onChanged?.call(bottomMenuList[index].type);
          
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Explore,
  Cart,
  Rental,
  Account,
}

class _BottomMenuModel {
  _BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.child
    
  });
  var child;
  
  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
