import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'share_transaction_viewmodel.dart';

class ShareTransactionView extends StackedView<ShareTransactionViewModel> {
  const ShareTransactionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShareTransactionViewModel viewModel,
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
  ShareTransactionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShareTransactionViewModel();
}
