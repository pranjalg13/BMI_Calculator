import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer(
      {@required this.decorationcolor, this.iconWiget, this.onpress});

  final Color decorationcolor;
  final Widget iconWiget;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: iconWiget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: decorationcolor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
