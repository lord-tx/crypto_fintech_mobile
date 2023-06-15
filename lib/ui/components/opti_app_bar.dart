import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';

class OptiAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? leadingImage;
  final String? titleText;
  final String? subtitleText;
  const OptiAppBar({super.key, this.leadingImage, this.titleText, this.subtitleText});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(leadingImage ?? kaDefaultHeaderImageAssetLink),
        ),
        title: Text(titleText ?? "Hello, James", style: ktHomeHeaderTitleTextStyle,),
        subtitle: Text(subtitleText ?? "14th May 2023"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: BoxShape.circle
                ),
                child: const Icon(Icons.history, color: Colors.black,)
            ),
            const SizedBox(width: 10,),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: BoxShape.circle
                ),
                child: const Icon(IconlyBold.notification, color: Colors.black,)
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(
    100, // Width
    100, // Height
  );
}
