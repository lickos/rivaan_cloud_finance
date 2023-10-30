import 'package:cloudfinance/Views/Widgets/web_widgets/total_savings_bars.dart';
import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TotalSavings extends StatelessWidget {
  const TotalSavings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: size.width * 0.3,
        height: size.height * 0.45,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Savings',
                  style: TextStyle(color: AppColors.grayColor),
                ),
                Icon(
                  Icons.more_horiz,
                  color: AppColors.grayColor,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '\$406.27',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: AppColors.bgColor,
                  ),
                  child: const Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                            size: 10,
                          ),
                          Text(
                            '8.2%',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '+\$33.3',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    TextSpan(
                        text: ' than last month',
                        style: TextStyle(color: AppColors.grayColor)),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Divider(
              color: AppColors.grayColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: TotalSavingsBar(
              title: 'Dream Studio',
              firstValue: 251.9,
              secondValue: 750,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: TotalSavingsBar(
              title: 'Education',
              firstValue: 166,
              secondValue: 200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: TotalSavingsBar(
              title: 'Health Care',
              firstValue: 30.8,
              secondValue: 150,
            ),
          ),
        ]),
      ),
    );
  }
}
