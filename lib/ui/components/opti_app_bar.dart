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
  final String? backgroundImage;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const OptiAppBar(
      {super.key,
      this.leadingImage,
      this.titleText,
      this.subtitleText,
      this.trailing = const [],
      this.type = OptiAppBarType.home, this.backgroundImage, this.backgroundColor, this.foregroundColor});

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
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: backgroundImage != null ? BoxDecoration(
          color: backgroundColor != null ? backgroundColor! : Colors.transparent,
          image: DecorationImage(
            image: AssetImage(backgroundImage!),
            fit: BoxFit.cover,
          )
        ) : BoxDecoration(
            color: backgroundColor != null ? backgroundColor! : Colors.transparent,
        ),
        child: SafeArea(
            child: ListTile(
          onTap: () => locator<NavigationService>().back(),
          leading: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: foregroundColor ?? const Color(0xFF9E9E9E), width: 3)),
              child: Icon(Icons.arrow_back_ios_new, color: foregroundColor ?? const Color(0xFF9E9E9E),)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              titleText ?? "",
              style: ktHomeHeaderTitleTextStyleAlt.copyWith(color: foregroundColor ?? const Color(0xFF9E9E9E)),
            ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: trailing,
          ),
        )),
      );
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
