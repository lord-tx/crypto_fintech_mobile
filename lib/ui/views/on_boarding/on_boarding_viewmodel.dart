import 'package:opticash_mobile/app/app.locator.dart';
import 'package:opticash_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardingViewModel extends BaseViewModel {
  final nav = locator<NavigationService>();

  void navigateToCreateAccount() {
    nav.navigateToSignUpView();
  }

  /// Simulate Loading
  void navigateToHomeView() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    setBusy(false);
    nav.replaceWithHomeView();
  }
}
