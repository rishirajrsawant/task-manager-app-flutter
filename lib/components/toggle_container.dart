import 'package:flutter/material.dart';
import '../mainscreen.dart';

class ToggleContainer extends StatelessWidget {
  ToggleContainer({
    @required this.selectedState,
    @required this.activeState,
    @required this.defaultSize,
    @required this.togglePadding,
    @required this.toggleFont,
    @required this.containerText,
  });

  final ColorState selectedState, activeState;
  final double defaultSize, togglePadding, toggleFont;
  final String containerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(togglePadding),
      decoration: BoxDecoration(
        color: selectedState == activeState
            ? Color(0xFFCAA2EB)
            : Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        containerText,
        style: TextStyle(
            fontSize: defaultSize * toggleFont,
            fontWeight: FontWeight.bold,
            color: selectedState == activeState ? Colors.white : Colors.black),
      ),
    );
  }
}
