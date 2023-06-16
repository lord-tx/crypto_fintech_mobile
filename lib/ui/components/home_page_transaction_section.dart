import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:opticash_mobile/ui/models/home_transanction_tile_model.dart';

class HomePageTransactionSection extends StatelessWidget {
  const HomePageTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),

      /// Probably a ListTile shrink-wrapped
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today, 26 june 2021",
                style: ktHomeTransactionTitleStyle,
              ),
              Text(
                "See All",
                style: ktHomeTransactionButtonStyle,
              ),
            ],
          ),
          TransactionTile(
            tileModel: HomeTransactionTileModel(
              transactionTitle: "Payment Netflix",
              category: "Entertainment",
              time: "08:45 AM",
              amount: "500",
              credit: false,
              assetLink: kaAppleLogo,
            ),
          ),
          TransactionTile(
            tileModel: HomeTransactionTileModel(
                transactionTitle: "Payment Netflix",
                category: "Food Delivery",
                time: "10:12 AM",
                amount: "1890",
                credit: true,
                assetLink: kaLinkedInLogo),
          ),
          TransactionTile(
            tileModel: HomeTransactionTileModel(
                transactionTitle: "Payment Netflix",
                category: "Entertainment",
                time: "08:45 AM",
                amount: "500",
                credit: false,
                assetLink: kaAppleLogo),
          ),
        ],
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final HomeTransactionTileModel tileModel;
  const TransactionTile({super.key, required this.tileModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFEDEDED)),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage:
              AssetImage(tileModel.assetLink ?? kaDefaultAssetLink),
        ),
        title: Text(
          tileModel.transactionTitle ?? "Transaction Title",
          style: ktHomeTransactionListTitleStyle,
        ),
        subtitle: Text(
          "${tileModel.category}   •   ${tileModel.time}",
          style: ktHomeTransactionListSubtitleStyle,
        ),
        trailing: Text(
          NumberFormat.currency(symbol: "\$")
              .format(int.tryParse(tileModel.amount ?? "500")),
          style: ktHomeTransactionListAmountStyle(tileModel.credit ?? false),
        ),
      ),
    );
  }
}
