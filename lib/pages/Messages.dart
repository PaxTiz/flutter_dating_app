import 'package:flutter/material.dart';

import 'package:dating_app/components/CustomScaffold.dart';
import 'package:dating_app/components/images/DatingUserImage.dart';

import '../users.dart';

class Messages extends StatefulWidget {

	createState() => _Messages();

}

class _Messages extends State<Messages> {

	@override
	Widget build(BuildContext context) {
		return CustomScaffold(
			pageTitle: "Messages",
			body: buildUI(),
		);
	}

	Widget buildUI() {
		return Column(
			children: [
				ListTile(
					contentPadding: EdgeInsets.all(0),
					leading: DatingUserImage(user: users[0], showUserDetails: false,),
					title: Text(users[0].pseudo, style: Theme.of(context).textTheme.headline3,),
					subtitle: Text("Flashé il y a 10 minutes", style: Theme.of(context).textTheme.bodyText1,),
					trailing: _buildMessageUnreadIndicator(),
				),
				ListTile(
					contentPadding: EdgeInsets.all(0),
					leading: DatingUserImage(user: users[1], showUserDetails: false,),
					title: Text(users[1].pseudo, style: Theme.of(context).textTheme.headline3,),
					subtitle: Text("Flashé il y a 2 heures", style: Theme.of(context).textTheme.bodyText1,),
					trailing: _buildMessageUnreadIndicator(),
				),
				ListTile(
					contentPadding: EdgeInsets.all(0),
					leading: DatingUserImage(user: users[2], showUserDetails: false,),
					title: Text(users[2].pseudo, style: Theme.of(context).textTheme.headline3,),
					subtitle: Text("Flashé il y a 10 minutes", style: Theme.of(context).textTheme.bodyText1,),
					trailing: _buildMessageUnreadIndicator(),
				),
				ListTile(
					contentPadding: EdgeInsets.all(0),
					leading: DatingUserImage(user: users[3], showUserDetails: false,),
					title: Text(users[3].pseudo, style: Theme.of(context).textTheme.headline3,),
					subtitle: Text("Flashé il y a 2 heures", style: Theme.of(context).textTheme.bodyText1,),
					trailing: _buildMessageUnreadIndicator(),
				),
			],
		);
	}

	Widget _buildMessageUnreadIndicator() {
		return Container(
			width: 10,
			height: 10,
			decoration: BoxDecoration(
				color: Theme.of(context).primaryColor,
				shape: BoxShape.circle,
			),
		);
	}

}