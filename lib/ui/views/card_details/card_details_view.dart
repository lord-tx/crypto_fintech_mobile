import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:opticash_mobile/ui/common/app_colors.dart';
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
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CardDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CardDetailsViewModel();
}
