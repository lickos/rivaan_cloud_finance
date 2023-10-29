import 'package:cloudfinance/Views/Widgets/web_widgets/main_area.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWebUI();
          } else {
            return _buildMobileUI();
          }
        },
      ),
    );
  }

  Widget _buildWebUI() {
    return const MainArea();
  }

  _buildMobileUI() {}
}
