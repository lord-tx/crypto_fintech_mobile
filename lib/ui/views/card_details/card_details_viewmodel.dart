import 'package:opticash_mobile/ui/models/card_transaction_tile_model.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_assets.dart';

class CardDetailsViewModel extends BaseViewModel {

  List<CardTransactionTileModel> transactions = [
    CardTransactionTileModel(
      transactionTitle: "Starbucks Coffee",
      date: "2 Dec 2020",
      time: "3:09 PM",
      amount: "-\$156.00",
      credit: false,
      assetImage: kaStarbucksLogo,
    ),
    CardTransactionTileModel(
      transactionTitle: "December Subscription",
      date: "1 Dec 2020",
      time: "3:09 PM",
      amount: "-\$156.00",
      credit: false,
      assetImage: kaDribbbleLogo,
    ),
    CardTransactionTileModel(
      transactionTitle: "Netflix Subscription",
      date: "2 Dec 2020",
      time: "3:09 PM",
      amount: "-\$156.00",
      credit: false,
      assetImage: kaNetFlixLogo,
    ),
  ];
}
