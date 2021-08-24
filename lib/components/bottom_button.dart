import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onpress;
  final String title;
  BottomButton({@required this.onpress, @required this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: Center(
            child: Text(
          title,
          style: kLabelTextStyle.copyWith(fontWeight: FontWeight.bold),
        )),
        width: double.infinity,
        height: KBottomContainerheight,
        color: Colors.pink,
      ),
    );
  }
}
