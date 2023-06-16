import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(kaLoadingBackground),
            alignment: Alignment.topCenter,
            fit: BoxFit.contain,
          ),
          color: Colors.black),
      child: Image.asset(
        kaOptiLogo,
        scale: 5,
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
