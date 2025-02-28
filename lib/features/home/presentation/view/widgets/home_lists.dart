import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mentorship_ecommerce/core/utils/assets.dart';
import 'package:mentorship_ecommerce/features/home/data/models/drawer_item_model.dart';
import 'package:mentorship_ecommerce/features/home/data/models/mode_model.dart';
import 'package:mentorship_ecommerce/features/home/data/models/recommended_item_model.dart';
import 'package:mentorship_ecommerce/features/home/data/models/tabs_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/home_view.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/accessories_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/beauty_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/man_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/woman_page/woman_page.dart';
import 'package:mentorship_ecommerce/features/my_order/views/my_order_view.dart';
import 'package:mentorship_ecommerce/features/profile/presentation/views/profile_view.dart';
import 'package:mentorship_ecommerce/features/search/presentation/view/search_view.dart';

const List<TabsModel> listOfTabsIcons = [
  TabsModel(icon: Icons.female, text: 'woman'),
  TabsModel(icon: Icons.male, text: 'man'),
  TabsModel(icon: FontAwesomeIcons.glasses, text: 'Accessories'),
  TabsModel(icon: FontAwesomeIcons.screwdriver, text: 'Beauty'),
];

const drawerItemsList = [
  DrawerItemModel(icon: Icons.settings, title: 'Setting'),
  DrawerItemModel(icon: Icons.mail_outline, title: 'Support'),
  DrawerItemModel(icon: Icons.info_outline, title: 'About us'),
];

const List<Widget> tabsScreens = <Widget>[
  WomanPage(),
  ManPage(),
  AccessoriesPage(),
  BeautyPage(),
];

const featuredProductlist = [
  Assets.productImage1,
  Assets.productImage2,
  Assets.productImage3,
];

const recommendedItemslist = [
  RecommendedItemModel(
    imageUrl: Assets.recommendedImage1,
    title: 'White fashion hoodie',
    price: 39.99,
  ),
  RecommendedItemModel(
    imageUrl: Assets.recommendedImage2,
    title: 'Cotton T-shirt',
    price: 30.99,
  ),
];

const modeList = [
  ModeModel(icon: Icons.wb_sunny_outlined, title: 'Light'),
  ModeModel(icon: Icons.nightlight_outlined, title: 'Light'),
];

 const List<Widget> bottomNavigationPages =  [
    HomeView(),
    SearchView(),
    MyOrderView(),
    ProfileView(),
  ];
