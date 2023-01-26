import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class OrangeTextDivider extends StatelessWidget {
  final String text;
  final double buttonHeight;
  final double buttonWidth;

  const OrangeTextDivider(
      {Key? key,
      required this.text,
      required this.buttonHeight,
      required this.buttonWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xffEA981C), width: 2),
          borderRadius: BorderRadius.all(Radius.circular(buttonHeight / 2))),
      height: buttonHeight,
      width: buttonWidth,
      child: Center(
        child: AutoSizeText(
          text,
          maxLines: 1,
        ),
      ),
    );
  }
}
