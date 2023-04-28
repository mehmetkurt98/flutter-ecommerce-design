import 'package:flutter/material.dart';
import 'package:flutter_eticaret_uyg/assets.dart';
import 'package:flutter_eticaret_uyg/model/bottom_nav_bar_model.dart';
import 'package:flutter_eticaret_uyg/view/account.dart';
import 'package:flutter_eticaret_uyg/view/cart.dart';
import 'package:flutter_eticaret_uyg/view/category.dart';
import 'package:flutter_eticaret_uyg/view/home.dart';
import 'package:flutter_eticaret_uyg/view/wishlist.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: Assets.icons.icBottomHomeSVG, title: "Home"),
    BottomNavBarModel(image: Assets.icons.icBottomSaveSVG, title: "Wishlist"),
    BottomNavBarModel(
        image: Assets.icons.icBottomCategoriesSVG, title: "Category"),
    BottomNavBarModel(image: Assets.icons.icBottomProfileSVG, title: "Account"),
    BottomNavBarModel(image: Assets.icons.icBottomCartSVG, title: "Cart"),
  ];
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return Wishlist();
      case 2:
        return Category();
      case 3:
        return Account();
      case 4:
        return Cart();
      default:
        return Home();
    }
  }
}
