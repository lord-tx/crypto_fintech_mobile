import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  PageController bottomPageController = PageController();

  void onItemSelected(int pageIndex){
    debugPrint("Navigating to Page $pageIndex");
  }
}
