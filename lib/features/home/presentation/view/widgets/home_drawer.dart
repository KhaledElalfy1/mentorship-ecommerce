import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/features/home/presentation/view/widgets/user_info_list_tile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(),
        ],
      ),
    );
  }
}
