class LatestTransactions {
  final String toTransaction;
  final DateTime dateOfTransaction;
  final String description;
  final double amount;
  final String status;

  LatestTransactions({
    required this.toTransaction,
    required this.dateOfTransaction,
    required this.description,
    required this.amount,
    required this.status,
  });
}
