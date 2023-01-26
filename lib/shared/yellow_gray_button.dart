import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'figma_typography.dart';

class YellowGrayButton extends StatefulWidget {
  final bool changeCondition;
  final double buttonWidth;
  final double buttonHeight;
  final Function() onTap;
  final String buttonText;

  const YellowGrayButton({Key? key,
    required this.changeCondition,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.onTap,
    required this.buttonText})
      : super(key: key);

  @override
  _YellowGrayButtonState createState() => _YellowGrayButtonState();
}

class _YellowGrayButtonState extends State<YellowGrayButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(widget.buttonHeight),
      child: InkWell(
        borderRadius: BorderRadius.circular(widget.buttonHeight),
        onTap: widget.changeCondition ? () => widget.onTap() : null,
        child: Ink(
          height: widget.buttonHeight,
          decoration: BoxDecoration(
              color: widget.changeCondition
                  ? const Color(0xffEA981C)
                  : const Color(0xff707170),
              borderRadius: BorderRadius.circular(widget.buttonHeight),
              border: Border.all(color: Colors.white, width: 1)),
          child: SizedBox(
            width: widget.buttonWidth,
            child: Center(
              child: AutoSizeText(
                widget.buttonText,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FigmaTextWeight.medium),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
