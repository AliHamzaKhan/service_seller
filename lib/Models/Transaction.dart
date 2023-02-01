

class Transaction {
  Transaction({
    required this.transactionDate,
  });

  String transactionDate;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    transactionDate: json["transactionDate"]?? "",
  );

  Map<String, dynamic> toJson() => {
    "transactionDate": transactionDate,
  };
}