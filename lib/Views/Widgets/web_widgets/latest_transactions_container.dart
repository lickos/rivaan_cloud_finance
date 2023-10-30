import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:cloudfinance/utils/mocks/chart_data_mock.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LatestTransactionsContainer extends StatelessWidget {
  const LatestTransactionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Icon(Icons.crop_square),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'To/From',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Date',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Description',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Amount',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Status',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Action',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
        rows: Mocks.latestTransactions.map((e) {
          return DataRow(cells: <DataCell>[
            const DataCell(Icon(Icons.crop_square)),
            DataCell(
              Text(e.toTransaction),
            ),
            DataCell(
              Text('${e.dateOfTransaction}'),
            ),
            DataCell(
              Text(e.description),
            ),
            DataCell(
              e.amount > 0
                  ? Text(
                      '+\$${e.amount}',
                      style: const TextStyle(color: Colors.green),
                    )
                  : Text(
                      '-\$${e.amount}',
                      style: const TextStyle(color: Colors.red),
                    ),
            ),
            DataCell(
              e.status == 'Success'
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3.0, vertical: 8.0),
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.green,
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        '${e.status}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.green),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3.0, vertical: 8.0),
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.red,
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        '${e.status}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
            ),
            DataCell(Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.link,
                    color: AppColors.grayColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: AppColors.grayColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: AppColors.grayColor,
                  ),
                ),
              ],
            )),
          ]);
        }).toList(),
      ),
    );
  }
}
