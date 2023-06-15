import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'send_money_viewmodel.dart';

class SendMoneyView extends StackedView<SendMoneyViewModel> {
  const SendMoneyView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SendMoneyViewModel viewModel,
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
  SendMoneyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SendMoneyViewModel();
}
