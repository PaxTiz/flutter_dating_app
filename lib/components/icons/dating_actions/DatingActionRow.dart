import 'package:flutter/material.dart';
import 'package:dating_app/constants.dart';

import 'DatingAction.dart';

class DatingActionRow extends StatelessWidget {

	final Function previousProfile, like, superLike, nextProfile;
	const DatingActionRow({@required this.previousProfile, @required this.like, @required this.superLike, @required this.nextProfile});

	@override
	Widget build(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceAround,
			children: [
				DatingAction(
					color: kColorGrey,
					icon: Icon(Icons.chevron_left),
					darkIcon: true,
					action: previousProfile,
				),
				DatingAction(
					color: kColorRed,
					icon: Icon(Icons.favorite),
					action: like,
				),
				DatingAction(
					color: kColorGreen,
					icon: Icon(Icons.whatshot),
					action: superLike,
				),
				DatingAction(
					color: kColorGrey,
					icon: Icon(Icons.chevron_right),
					darkIcon: true,
					action: nextProfile,
				),
			],
		);
	}

}