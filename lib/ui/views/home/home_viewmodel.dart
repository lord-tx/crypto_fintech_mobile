import 'package:flutter/cupertino.dart';
import 'package:opticash_mobile/app/app.locator.dart';
import 'package:opticash_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  static const int homeIndex = 0;
  static const int cardIndex = 1;
  static const int transferIndex = 2;
  static const int swapIndex = 3;
  static const int accountIndex = 4;

  static int currentIndex = 0;

  PageController bottomPageController = PageController();
  final nav = locator<NavigationService>();

  void onItemSelected(int pageIndex) {
    debugPrint("Navigating to Page $pageIndex");
    switch (pageIndex) {
      case homeIndex:
        if (currentIndex != homeIndex) {
          currentIndex = homeIndex;
          nav.navigateToHomeView();
        }
        break;
      case cardIndex:
        if (currentIndex != cardIndex) {
          currentIndex = cardIndex;
          nav.navigateToCardDetailsView();
        }
        break;
      case transferIndex:
        if (currentIndex != transferIndex) {
          currentIndex = transferIndex;
          nav.navigateToSendMoneyView();
        }
        break;
      case swapIndex:
        if (currentIndex != swapIndex) {
          currentIndex = swapIndex;
          nav.navigateToUnimplementedView();
        }
        break;
      case accountIndex:
        if (currentIndex != accountIndex) {
          currentIndex = homeIndex;
          nav.navigateToUnimplementedView();
        }
        break;
    }
  }
}
