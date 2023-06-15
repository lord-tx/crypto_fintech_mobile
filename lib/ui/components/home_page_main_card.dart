import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/app_colors.dart';

class HomePageMainCard extends StatelessWidget {
  final String? cardTitle;
  final String? amount;
  final String? walletAddress;

  const HomePageMainCard({
    super.key, this.cardTitle, this.amount, this.walletAddress
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: const BoxDecoration(
        color: kcHomeTileBaseColor
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(kaHomeCardBackground)
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(cardTitle ?? "OPCH Balance", ),
                      const Icon(Icons.arrow_drop_down_circle_rounded)
                    ]
                  ),
                  Text(amount ?? "243,998"),
                  Text(walletAddress ?? "123848492920304.234"),
                ],
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
