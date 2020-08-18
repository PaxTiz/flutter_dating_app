import 'package:dating_app/constants.dart';
import 'package:flutter/material.dart';

import '../users.dart';
import 'package:dating_app/components/CustomScaffold.dart';
import 'package:dating_app/components/images/DatingUserImage.dart';


class Likes extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return CustomScaffold(
			pageTitle: "Likes",
			body: buildUI(),
		);
	}

	Widget buildUI() {
		return GridView.count(
			padding: EdgeInsets.all(0),
			crossAxisCount: 2,
			mainAxisSpacing: defaultPadding,
			crossAxisSpacing: defaultPadding,
			shrinkWrap: true,
			children: [
				DatingUserImage(user: users[0], showUserDetails: true,),
				DatingUserImage(user: users[1], showUserDetails: true,),
				DatingUserImage(user: users[2], showUserDetails: true,),
				DatingUserImage(user: users[3], showUserDetails: true,),
			],
		);
	}

}