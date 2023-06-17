import 'package:opticash_mobile/app/app.locator.dart';
import 'package:opticash_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SendMoneyViewModel extends BaseViewModel {

  void transfer() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 1));
    setBusy(false);
    locator<NavigationService>().navigateToShareTransactionView();
  }
}
