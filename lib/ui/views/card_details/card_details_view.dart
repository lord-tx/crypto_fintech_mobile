import 'package:flutter/material.dart';
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
      backgroundColor: Theme.of(context).colorScheme.background,
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
