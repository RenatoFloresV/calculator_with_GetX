import 'package:calculator/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calculater_button.dart';

class AllButtons extends StatelessWidget {
  AllButtons({Key? key}) : super(key: key);
  final CalculatorController calculatorController =
      Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          // childAspectRatio: 0.95,
        ),
        children: [
          //Row 1
          _secondaryButton('AC', () => calculatorController.cleanAll()),
          _secondaryButton('+/-', () => calculatorController.changeNorP()),
          _secondaryButton('del', () => calculatorController.del()),
          _secondaryButton(
              '/', () => calculatorController.operationSelect('/')),

          //Row 2
          _primaryButton('7', () => calculatorController.allNumber('7')),
          _primaryButton('8', () => calculatorController.allNumber('8')),
          _primaryButton('9', () => calculatorController.allNumber('9')),
          _secondaryButton(
              'x', () => calculatorController.operationSelect('x')),
          //Row 3
          _primaryButton('4', () => calculatorController.allNumber('4')),
          _primaryButton('5', () => calculatorController.allNumber('5')),
          _primaryButton('6', () => calculatorController.allNumber('6')),
          _secondaryButton(
              '-', () => calculatorController.operationSelect('-')),
          //Row 4
          _primaryButton('1', () => calculatorController.allNumber('1')),
          _primaryButton('2', () => calculatorController.allNumber('2')),
          _primaryButton('3', () => calculatorController.allNumber('3')),
          _secondaryButton(
              '+', () => calculatorController.operationSelect('+')),
          //Row 5
          _primaryButton('', () => null),
          _primaryButton('0', () => calculatorController.allNumber('0')),
          _primaryButton('.', () => calculatorController.addDecimalPoint()),
          _secondaryButton('=', () => calculatorController.calculateResult()),
        ]);
  }

  Widget _primaryButton(String text, Function function) {
    return CalculaterButton(
        backgroundColor: const Color(0xFFe9eaef),
        firtsBorderColor: const Color(0xFFbebdcd),
        secondBorderColor: Colors.white,
        text: text,
        colorContent: const Color(0xFF4b384b),
        function: function);
  }

  Widget _secondaryButton(String text, Function function) {
    return CalculaterButton(
        backgroundColor: const Color(0xFFc24155),
        firtsBorderColor: const Color(0xFF79303d),
        secondBorderColor: const Color(0xFFcc6a79),
        text: text,
        colorContent: Colors.white,
        function: function);
  }
}
