class CardTransactionTileModel{
  String? transactionTitle;
  String? assetImage;
  String? date;
  String? time;
  String? amount;
  /// Use an enum instead, for now, if it is not credit it is debit
  bool? credit;

  CardTransactionTileModel({
    this.transactionTitle,
    this.assetImage,
    this.date,
    this.time,
    this.amount,
    this.credit
  });
}