class HomeTransactionTileModel{
  String? transactionTitle;
  String? category;
  String? assetLink;
  String? time;
  String? amount;
  /// Use an enum instead, for now, if it is not credit it is debit
  bool? credit;

  HomeTransactionTileModel({
    this.transactionTitle,
    this.category,
    this.assetLink,
    this.time,
    this.amount,
    this.credit
  });
}