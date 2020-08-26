import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Colors.redAccent,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}
