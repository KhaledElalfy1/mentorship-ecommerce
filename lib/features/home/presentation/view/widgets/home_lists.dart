import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  "https://i.pinimg.com/736x/f3/f5/ba/f3f5ba216c8f16b8dee66cc43f79208c.jpg",
  "https://i.pinimg.com/736x/08/36/46/083646721338b3dfcd81f40abaf40fc5.jpg",
  "https://i.pinimg.com/736x/03/3a/be/033abee363e218f731b299617ca48c69.jpg"
];

const recommendedItemslist = [
  RecommendedItemModel(
    imageUrl: "https://i.pinimg.com/736x/03/3a/be/033abee363e218f731b299617ca48c69.jpg",
    title: 'White fashion hoodie',
    price: 39.99,
  ),
  RecommendedItemModel(
    imageUrl: "https://i.pinimg.com/736x/03/3a/be/033abee363e218f731b299617ca48c69.jpg",
    title: 'Cotton T-shirt',
    price: 30.99,
  ),
];

const modeList = [
  ModeModel(icon: Icons.sunny, title: 'Light'),
  ModeModel(icon: Icons.nightlight_outlined, title: 'Dark'),
];

const List<Widget> bottomNavigationPages = [
  HomeView(),
  SearchView(),
  MyOrderView(),
  ProfileView(),
];
