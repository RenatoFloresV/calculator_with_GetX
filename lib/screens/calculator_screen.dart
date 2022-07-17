import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/calculator_controller.dart';
import '../widgets/all_buttons.dart';
import 'math_results.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({Key? key}) : super(key: key);

  final calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF9d7c99),
        body: SafeArea(
            child: GetPlatform.isDesktop
                ? _desktopCalculator()
                : _mobileCalculator()));
  }

  _desktopCalculator() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MathResults(),
          AllButtons(),
        ],
      ),
    );
  }

  _mobileCalculator() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MathResults(),
        AllButtons(),
      ],
    );
  }
}
