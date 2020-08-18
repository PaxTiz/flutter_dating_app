import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatingAction extends StatelessWidget {

	final Color color;
	final Icon icon;
	final  Function action;
	final bool darkIcon;
	const DatingAction({@required this.color, @required this.icon, @required this.action, this.darkIcon = false});

	@override
	Widget build(BuildContext context) {
		return Container(
			decoration: BoxDecoration(
				color: color,
				shape: BoxShape.circle
			),
			child: IconButton(
				color: darkIcon ? Colors.blueGrey : Colors.white,
				icon: icon,
				onPressed: action,
			),
		);
	}

}