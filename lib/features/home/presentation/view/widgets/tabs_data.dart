import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mentorship_ecommerce/features/home/data/models/tabs_model.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/accessories_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/beauty_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/man_page.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/tabs/woman_page/woman_page.dart';

const List<TabsModel> list = [
  TabsModel(icon: Icons.female, text: 'woman'),
  TabsModel(icon: Icons.male, text: 'man'),
  TabsModel(icon: FontAwesomeIcons.glasses, text: 'Accessories'),
  TabsModel(icon: FontAwesomeIcons.screwdriver, text: 'Beauty'),
];
const List<Widget> tabs = <Widget>[
  WomanPage(),
  ManPage(),
  AccessoriesPage(),
  BeautyPage(),
];
