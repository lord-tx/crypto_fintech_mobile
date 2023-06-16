import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/app_colors.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:opticash_mobile/ui/components/opti_app_bar.dart';
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
          DebitCardContainer()
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

