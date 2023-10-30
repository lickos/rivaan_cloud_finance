import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TotalSavingsBar extends StatelessWidget {
  final String title;
  final double firstValue;
  final double secondValue;
  const TotalSavingsBar({
    super.key,
    required this.title,
    required this.firstValue,
    required this.secondValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: '\$$firstValue',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '/\$$secondValue'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        LinearPercentIndicator(
          lineHeight: 12.0,
          percent: firstValue / secondValue,
          backgroundColor: AppColors.bgColor,
          progressColor: AppColors.blueColor,
          barRadius: const Radius.circular(5.0),
        ),
      ],
    );
  }
}
