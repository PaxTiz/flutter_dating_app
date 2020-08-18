import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;
  final Color color;

  const TextDivider({@required this.text, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildLine(),
          Text(
            text,
            style: Theme.of(context).textTheme.button.apply(color: Colors.black, fontSizeDelta: 3, fontWeightDelta: 3),
          ),
          buildLine(left: false)
        ],
      ),
    );
  }

  Widget buildLine({bool left = true}) {
  	return Expanded(
	    child: Container(
		    height: 2,
		    color: color,
		    margin: EdgeInsets.only(left: left ? 0 : 16, right: left ? 16 : 0,),
	    ),
    );
  }

}
