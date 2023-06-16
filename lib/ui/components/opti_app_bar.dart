import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:opticash_mobile/app/app.locator.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:stacked_services/stacked_services.dart';

enum OptiAppBarType {
  home,

  /// When back button and app bar is required
  internal
}

class OptiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? leadingImage;
  final String? titleText;
  final String? subtitleText;
  final List<Widget> trailing;
  final OptiAppBarType type;

  const OptiAppBar(
      {super.key,
      this.leadingImage,
      this.titleText,
      this.subtitleText,
      this.trailing = const [],
      this.type = OptiAppBarType.home});

  @override
  Widget build(BuildContext context) {
    if (type == OptiAppBarType.home) {
      return SafeArea(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage:
                AssetImage(leadingImage ?? kaDefaultHeaderImageAssetLink),
          ),
          title: Text(
            titleText ?? "Hello, James",
            style: ktHomeHeaderTitleTextStyle,
          ),
          subtitle: Text(subtitleText ?? "14th May 2023"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                  child: const Icon(
                    Icons.history,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 10,
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                  child: const Icon(
                    IconlyBold.notification,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      );
    } else if (type == OptiAppBarType.internal) {
      return SafeArea(
          child: ListTile(
        onTap: () => locator<NavigationService>().back(),
        leading: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF9E9E9E), width: 3)),
            child: const Icon(Icons.arrow_back_ios_new)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            titleText ?? "",
            style: ktHomeHeaderTitleTextStyleAlt,
          ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: trailing,
        ),
      ));
    } else {
      return const Placeholder();
    }
  }

  @override
  Size get preferredSize => const Size(
        100, // Width
        100, // Height
      );
}
