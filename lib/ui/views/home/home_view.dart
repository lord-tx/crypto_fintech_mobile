import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/components/home_page_main_card.dart';
import 'package:opticash_mobile/ui/components/home_page_sliding_section.dart';
import 'package:opticash_mobile/ui/components/home_page_transaction_section.dart';
import 'package:opticash_mobile/ui/components/opti_app_bar.dart';
import 'package:opticash_mobile/ui/components/opti_bottom_nav_bar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const OptiAppBar(),
      bottomNavigationBar: OptiBottomNavBar(
        onSelected: viewModel.onItemSelected,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(kaHomePageBackground,),
            fit: BoxFit.cover,
          )
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            HomePageMainCard(),
            HomePageSlidingSection(),
            HomePageTransactionSection(),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}



