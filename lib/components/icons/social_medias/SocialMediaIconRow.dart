import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'SocialMediaIcon.dart';

class SocialMediaIconRow extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				SocialMediaIcon(
					icon: FontAwesomeIcons.google,
					action: null,
				),
				SizedBox(width: 16,),
				SocialMediaIcon(
					icon: FontAwesomeIcons.apple,
					action: null,
				),
			],
		);
	}

}