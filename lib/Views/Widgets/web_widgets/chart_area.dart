import 'package:cloudfinance/domain/models/chart_data.dart';
import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:cloudfinance/utils/mocks/chart_data_mock.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartArea extends StatelessWidget {
  const ChartArea({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TooltipBehavior tooltip = TooltipBehavior(enable: true);
    return Container(
      width: size.width * 0.45,
      height: size.height * 0.45,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: 1000,
          interval: 100,
        ),
        tooltipBehavior: tooltip,
        series: <ColumnSeries<ChartData, String>>[
          ColumnSeries<ChartData, String>(
            dataSource: Mocks.myData,
            width: 0.5,
            xValueMapper: (ChartData data, _) => data.month,
            yValueMapper: (ChartData data, _) => data.value1,
            borderRadius: BorderRadius.circular(5.0),
            color: AppColors.blueColor,
          ),
          ColumnSeries<ChartData, String>(
            dataSource: Mocks.myData,
            width: 0.5,
            xValueMapper: (ChartData data, _) => data.month,
            yValueMapper: (ChartData data, _) => data.value2,
            borderRadius: BorderRadius.circular(5.0),
            color: AppColors.secondaryBlue,
          ),
        ],
      ),
    );
  }
}
