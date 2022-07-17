import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = '0'.obs;
  var secondNumer = '0'.obs;
  var operation = '0'.obs;
  var result = '0'.obs;

  cleanAll() {
    firstNumber.value = '0';
    secondNumer.value = '0';
    operation.value = '0';
    result.value = '0';
  }

  changeNorP() {
    if (result.value.startsWith('-')) {
      result.value = result.value.replaceFirst('-', '');
    } else {
      result.value = '-${result.value}';
    }
  }

  allNumber(String number) {
    if (result.value == '0') {
      return result.value = number;
    }
    if (result.value == '-0') {
      return result.value = '-$number';
    }
    result.value = result.value + number;
  }

  addDecimalPoint() {
    if (result.value.contains('.')) {
      return;
    }
    if (result.startsWith('0')) {
      result.value = '0.';
    } else {
      result.value = '${result.value}.';
    }
  }

  operationSelect(String op) {
    operation.value = op;
    firstNumber.value = result.value;
    result.value = '0';
  }

  del() {
    if (result.value.replaceAll('-', '').length > 1) {
      result.value = result.value.substring(0, result.value.length - 1);
    } else {
      result.value = '0';
    }
  }

  calculateResult() {
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(result.value);

    secondNumer.value = result.value;

    switch (operation.value) {
      case '+':
        result.value = (num1 + num2).toString();

        break;
      case '-':
        result.value = (num1 - num2).toString();
        break;
      case 'x':
        result.value = (num1 * num2).toString();
        break;
      case '/':
        result.value = (num1 / num2).toString();
        break;
      default:
        result.value = '0';
        break;
    }
    if (result.value.endsWith('.0')) {
      result.value = result.value.replaceAll('.0', '');
    }
  }
}
