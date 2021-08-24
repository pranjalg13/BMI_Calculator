import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onpress;
  final IconData icon;
  final Function onlongtap;
  RoundIconButton(
      {@required this.icon, @required this.onpress, this.onlongtap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      onLongPress: onlongtap,
      child: RawMaterialButton(
        child: Icon(icon),
        shape: CircleBorder(),
        fillColor: Colors.blue[500],
        onPressed: onpress,
        elevation: 2.0,
        constraints: BoxConstraints.tightFor(
          width: 45.0,
          height: 45.0,
        ),
      ),
    );
  }
}
