import 'package:cloudfinance/domain/models/chart_data.dart';
import 'package:cloudfinance/domain/models/latest_transactions.dart';

class Mocks {
  static List<ChartData> myData = [
    ChartData(month: 'JAN', value1: 750, value2: 350),
    ChartData(month: 'FEB', value1: 850, value2: 650),
    ChartData(month: 'MAR', value1: 400, value2: 150),
    ChartData(month: 'APR', value1: 736.4, value2: 380),
    ChartData(month: 'MAY', value1: 980, value2: 690),
    ChartData(month: 'JUN', value1: 850, value2: 700)
  ];

  static List<LatestTransactions> latestTransactions = [
    LatestTransactions(
      toTransaction: 'Elevate Agency',
      dateOfTransaction: DateTime(2023, 10, 2),
      description: 'Monthly Salary',
      amount: 1500.00,
      status: 'Success',
    ),
    LatestTransactions(
      toTransaction: 'Second Agency',
      dateOfTransaction: DateTime(2023, 10, 5),
      description: 'Cleaning Services',
      amount: 250.00,
      status: 'Success',
    ),
    LatestTransactions(
      toTransaction: 'Third Agency',
      dateOfTransaction: DateTime(2023, 10, 12),
      description: 'Security',
      amount: 500.00,
      status: 'Success',
    ),
    LatestTransactions(
      toTransaction: 'Forth Agency',
      dateOfTransaction: DateTime(2023, 10, 15),
      description: 'Secratary',
      amount: 300.00,
      status: 'Fail',
    ),
  ];
}
