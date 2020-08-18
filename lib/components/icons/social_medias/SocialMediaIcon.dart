import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaIcon extends StatelessWidget {

	final IconData icon;
	final Function action;
	const SocialMediaIcon({@required this.icon, @required this.action});

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: action,
			child: Container(
				padding: EdgeInsets.all(16),
				decoration: BoxDecoration(
					shape: BoxShape.circle,
					color: Colors.white,
					boxShadow: [
						BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 1)
					]
				),
				child: FaIcon(icon, color: Colors.black),
			),
		);
	}

}