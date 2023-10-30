import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class OverviewContainer extends StatelessWidget {
  final IconData iconName;
  final String title;
  final double amount;
  final IconData symbolName;
  final Color symbolColor;
  final double symbolPercentance;
  final double symbolDif;

  const OverviewContainer({
    super.key,
    required this.iconName,
    required this.title,
    required this.amount,
    required this.symbolName,
    required this.symbolColor,
    required this.symbolPercentance,
    required this.symbolDif,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: size.width * 0.18,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(iconName, color: AppColors.grayColor),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.grayColor,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Text(
                    '\$$amount',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: AppColors.bgColor,
                    ),
                    child: Row(children: [
                      Icon(
                        symbolName,
                        color: symbolColor,
                      ),
                      Text(
                        '$symbolPercentance%',
                        style: TextStyle(
                          color: symbolColor,
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                symbolColor == Colors.green
                    ? Row(
                        children: [
                          Text(
                            '+\$$symbolDif%',
                            style: TextStyle(color: symbolColor),
                          ),
                          const Text(
                            ' than last month',
                            style: TextStyle(
                              color: AppColors.grayColor,
                            ),
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Text(
                            '-\$$symbolDif%',
                            style: TextStyle(color: symbolColor),
                          ),
                          const Text(
                            ' than last month',
                            style: TextStyle(
                              color: AppColors.grayColor,
                            ),
                          )
                        ],
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
