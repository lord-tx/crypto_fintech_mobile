import 'package:opticash_mobile/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:opticash_mobile/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:opticash_mobile/ui/views/home/home_view.dart';
import 'package:opticash_mobile/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:opticash_mobile/ui/views/on_boarding/on_boarding_view.dart';
import 'package:opticash_mobile/ui/views/card_details/card_details_view.dart';
import 'package:opticash_mobile/ui/views/send_money/send_money_view.dart';
import 'package:opticash_mobile/ui/views/share_transaction/share_transaction_view.dart';
import 'package:opticash_mobile/ui/views/sign_up/sign_up_view.dart';
import 'package:opticash_mobile/ui/views/unimplemented/unimplemented_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: OnBoardingView),
    MaterialRoute(page: CardDetailsView),
    MaterialRoute(page: SendMoneyView),
    MaterialRoute(page: ShareTransactionView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: UnimplementedView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
