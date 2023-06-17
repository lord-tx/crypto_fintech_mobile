import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/components/opti_app_bar.dart';
import 'package:stacked/stacked.dart';

import 'unimplemented_viewmodel.dart';

class UnimplementedView extends StackedView<UnimplementedViewModel> {
  const UnimplementedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UnimplementedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const OptiAppBar(
        type: OptiAppBarType.internal,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                kaHomePageBackground,
              ),
              fit: BoxFit.cover,
            )
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12
            ),
            child: const Text(
              "This page has not been implemented or is not within scope"
            ),
          ),
        ),
      ),
    );
  }

  @override
  UnimplementedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UnimplementedViewModel();
}
