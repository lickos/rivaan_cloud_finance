import 'package:cloudfinance/Views/Widgets/web_widgets/header.dart';
import 'package:cloudfinance/Views/Widgets/web_widgets/menu_item.dart';
import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:cloudfinance/utils/constants/constant_widgets.dart';
import 'package:flutter/material.dart';

class MainArea extends StatelessWidget {
  const MainArea({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              height: size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Row(
                        children: [
                          Switch(
                            value: true,
                            activeColor: AppColors.blueColor,
                            onChanged: (bool value) {},
                          ),
                          const Text(
                            'Cloud Finance',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ConstantWidgets.largeSizedBox,
                    _menuTitles('MENU'),
                    ConstantWidgets.smallSizedBox,
                    const MenuItem(
                      itemIcon: Icons.view_cozy,
                      itemLabel: 'Overview',
                    ),
                    const MenuItem(
                      itemIcon: Icons.assessment,
                      itemLabel: 'Statistics',
                    ),
                    const MenuItem(
                      itemIcon: Icons.euro,
                      itemLabel: 'Savings',
                    ),
                    const MenuItem(
                      itemIcon: Icons.pie_chart,
                      itemLabel: 'Portfolios',
                    ),
                    const MenuItem(
                      itemIcon: Icons.mail,
                      itemLabel: 'Messages',
                      messages: 13,
                    ),
                    const MenuItem(
                      itemIcon: Icons.receipt,
                      itemLabel: 'Transactions',
                    ),
                    ConstantWidgets.largeSizedBox,
                    _menuTitles('GENERAL'),
                    ConstantWidgets.smallSizedBox,
                    const MenuItem(
                      itemIcon: Icons.settings,
                      itemLabel: 'Settings',
                    ),
                    const MenuItem(
                      itemIcon: Icons.photo,
                      itemLabel: 'Appearances',
                    ),
                    const MenuItem(
                      itemIcon: Icons.info,
                      itemLabel: 'Need Help?',
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: MenuItem(
                            itemIcon: Icons.logout,
                            itemLabel: 'Log Out',
                            bold: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: size.height,
              child: Column(children: [const Header()]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuTitles(String textMessage) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        textMessage,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}