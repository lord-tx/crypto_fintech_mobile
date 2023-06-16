import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/app_colors.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';

class HomePageMainCard extends StatelessWidget {
  final String? cardTitle;
  final String? amount;
  final String? walletAddress;

  const HomePageMainCard(
      {super.key, this.cardTitle, this.amount, this.walletAddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      decoration: const BoxDecoration(color: kcHomeTileBaseColor),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(kaHomeCardBackground),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      cardTitle ?? "OPCH Balance",
                      style: ktHomeCardTitleStyle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_drop_down_circle_rounded,
                      color: Colors.white,
                    )
                  ]),
                  Text(
                    NumberFormat.currency(symbol: "\$", decimalDigits: 0)
                        .format(int.tryParse(amount ?? "243998")),
                    style: ktHomeCardAmountStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    walletAddress ?? "123848492920304.234",
                    style: ktHomeCardWalletStyle,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: kcPrimaryColorMid, shape: BoxShape.circle),
                        child: const Icon(
                          IconlyBold.send,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Send Money")
                  ],
                ),
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: kcPrimaryColorMid, shape: BoxShape.circle),
                        child: const Icon(
                          IconlyBold.wallet,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Top-Up")
                  ],
                ),
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: kcPrimaryColorMid, shape: BoxShape.circle),
                        child: const Icon(
                          IconlyBold.editSquare,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Withdraw")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
