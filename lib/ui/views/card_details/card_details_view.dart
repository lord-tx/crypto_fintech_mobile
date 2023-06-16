import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/app_colors.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:opticash_mobile/ui/components/opti_app_bar.dart';
import 'package:opticash_mobile/ui/models/card_transaction_tile_model.dart';
import 'package:stacked/stacked.dart';

import 'card_details_viewmodel.dart';

class CardDetailsView extends StackedView<CardDetailsViewModel> {
  const CardDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CardDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: OptiAppBar(
        type: OptiAppBarType.internal,
        titleText: "My Card",
        trailing: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kcPrimaryColorDark,
              borderRadius: BorderRadius.circular(15)
            ),
            child: const Icon(IconlyBold.plus, color: Colors.white,),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          DebitCardContainer(),
          SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.visibility_outlined,
                      color: Colors.black,
                      size: 45,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("View Card")
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      IconlyBold.wallet,
                      color: Colors.black,
                      size: 45,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Top Up")
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      IconlyBold.editSquare,
                      color: Colors.black,
                      size: 45,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Withdraw")
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 45,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Settings")
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 2),
                  blurRadius: 2.0
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("History", style: ktHomeTransactionTitleStyle,),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.history, color: Colors.black,),
                        Text("View", style: ktHomeTransactionButtonStyle,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 35,),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              CardTransactionTileModel tnx = viewModel.transactions[index];
              return ListTile(
                leading: Image.asset(tnx.assetImage ?? kaDefaultAssetLink),
                title: Text(tnx.transactionTitle ?? "", style: const TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("${tnx.date}   •   ${tnx.time}"),
                trailing: Text(tnx.amount ?? "", style: const TextStyle(fontWeight: FontWeight.bold),),
              );
            },
            separatorBuilder: (context, index){
              return const Divider();
            },
            itemCount: viewModel.transactions.length
          ),
        ],
      ),
    );
  }

  @override
  CardDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CardDetailsViewModel();
}

class DebitCardContainer extends StatelessWidget {
  const DebitCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Container(
        height: 263,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color(0xFF525E1C),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(kaCardMaskTop),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(kaCardMaskBottom),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("OptiCard", style: ktHomeHeaderTitleTextStyle.copyWith(color: Colors.white),),
                      Text("Virtual Card", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(kaOptiLogo, width: 100, height: 100,),
                      Image.asset(kaMasterCardIcon, width: 100, height: 100,),
                    ],
                  ),
                  Text(".... .... .... 7430", style: TextStyle(
                    color: Colors.white,
                    fontFamily: "IBMPlexMono",
                    fontSize: 30
                  ),)
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}

