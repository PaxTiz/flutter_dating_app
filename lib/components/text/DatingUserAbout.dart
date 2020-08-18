import 'package:flutter/material.dart';
import 'package:dating_app/models/User.dart';

class DatingUserAbout extends StatelessWidget {

	final User user;
	const DatingUserAbout({@required this.user});

	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				FittedBox(
					fit: BoxFit.scaleDown,
					child: Text("${user.pseudo}, ${user.age} ans", style: Theme.of(context).textTheme.headline2.apply(color: Colors.white),),
				),
				FittedBox(
					fit: BoxFit.scaleDown,
					child: Text(user.location, style: Theme.of(context).textTheme.bodyText1.apply(color: Colors.white),),
				),
			],
		);
	}

}