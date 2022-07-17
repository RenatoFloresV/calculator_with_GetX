import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalculaterButton extends StatelessWidget {
  CalculaterButton(
      {Key? key,
      required this.backgroundColor,
      required this.firtsBorderColor,
      required this.secondBorderColor,
      required this.text,
      required this.colorContent,
      required this.function})
      : super(key: key);
  Color backgroundColor;
  Color firtsBorderColor;
  Color secondBorderColor;
  String text;
  Color colorContent;
  Function function;

  @override
  Widget build(BuildContext context) {
    return _boxTest(context, backgroundColor, firtsBorderColor,
        secondBorderColor, text, colorContent, function);
  }

  Widget _boxTest(
      BuildContext context,
      Color color,
      Color firtsBorderColor,
      Color secondBorderColor,
      String contentText,
      Color colorContent,
      Function function) {
    const borderColor = Colors.black;
    final widhtBorder = MediaQuery.of(context).size.width / 50;
    final backgroundColor = color; //Hexadecimal color code
    final textContent = contentText;
    final textColor = colorContent;
    final border = BorderSide(
      color: borderColor,
      width: widhtBorder,
    );
    final textStyle = TextStyle(
      fontFamily: 'Minecraft',
      fontWeight: FontWeight.w900,
      color: textColor,
    );
    final firtsBorder = firtsBorderColor;
    final secondBorder = secondBorderColor;

    return Padding(
        padding: EdgeInsets.all(widhtBorder),
        child: GestureDetector(
            onTap: (() => function()),
            child: Container(
                decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border(
                        top: border,
                        right: border,
                        bottom: border,
                        left: border)),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(
                          width: widhtBorder, color: Colors.transparent),
                      bottom:
                          BorderSide(width: widhtBorder, color: firtsBorder),
                    )),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                          top: BorderSide(
                              width: widhtBorder, color: Colors.transparent),
                          bottom: BorderSide(
                              width: widhtBorder, color: secondBorder),
                        )),
                        child: FittedBox(
                            child: Text(textContent,
                                textAlign: TextAlign.center, style: textStyle
                                // textScaleFactor: 1,
                                )))))));
  }
}
