import 'package:calculator/controllers/calculator_controller.dart';
import 'package:calculator/widgets/line_separator.dart';
import 'package:calculator/widgets/math_result.dart';
import 'package:calculator/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  const MathResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculatorController = Get.find<CalculatorController>();
    final widhtBorder = MediaQuery.of(context).size.width / 50;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFF4b384b),
              border: Border.all(
                color: Colors.black,
                width: widhtBorder,
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SubResult(text: '${calculatorController.firstNumber}'),
                        SubResult(text: '${calculatorController.operation}'),
                        SubResult(text: '${calculatorController.secondNumer}'),
                        const LineSeparator(),
                        FittedBox(
                            child: MainResultText(
                                text: '${calculatorController.result}')),
                      ],
                    ))),
          ),
        ],
      ),
    );
  }
}

// SizedBox(
//             height: 100,
//             child: Form(
//               child: Column(
//                 children: [
//                   TextFormField(
//                     textAlign: TextAlign.end,
//                     textAlignVertical: TextAlignVertical.center,
//                     enabled: true,
//                     decoration: InputDecoration(
//                       hintText: count.toString(),
//                       hintStyle: const TextStyle(
//                           height: 1.5,
//                           fontSize: 40,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Minecraft',
//                           color: Colors.white),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Colors.black,
//                             width: widhtBorder,
//                             style: BorderStyle.solid,
//                           ),
//                           borderRadius: BorderRadius.circular(20.0)),
//                       fillColor: const Color(0xFF4b384b),
//                       filled: true,
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
