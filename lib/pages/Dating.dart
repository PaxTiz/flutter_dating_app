import 'package:flutter/material.dart';

import 'package:dating_app/constants.dart';
import 'package:dating_app/models/User.dart';
import 'package:dating_app/components/CustomScaffold.dart';
import 'package:dating_app/components/icons/dating_actions/DatingActionRow.dart';
import 'package:dating_app/components/images/DatingUserImage.dart';
import '../users.dart';

class Dating extends StatefulWidget {
	createState() => _Dating();
}

class _Dating extends State<Dating> {

	int currentIndex = 0;

	void previousProfile() {
		if(currentIndex - 1 >= 0) {
			setState(() => currentIndex--);
		}
	}

	void nextProfile() {
		if(currentIndex + 1 < users.length) {
			setState(() => currentIndex++);
		}
	}

	void like() {
		Scaffold.of(context).showSnackBar(SnackBar(content: Text("Like !"),));
	}

	void superLike() {
		Scaffold.of(context).showSnackBar(SnackBar(content: Text("Super Like !"),));
	}

    @override
    Widget build(BuildContext context) {
		return CustomScaffold(
			pageTitle: "Meet new people",
			showSettingIcon: true,
			body: buildUI(),
		);
    }

    Widget buildUI() {
		return Column(
			children: [
				IndexedStack(
					index: currentIndex,
					children: users.map((e) => buildCard(e)).toList(),
				),
				SizedBox(height: defaultPadding * 2,),
				DatingActionRow(
					previousProfile: previousProfile,
					like: like,
					superLike: superLike,
					nextProfile: nextProfile,
				)
			],
		);
    }

    Widget buildCard(User user) {
    	return Container(
		    decoration: BoxDecoration(
			    color: kColorGrey,
			    boxShadow: [kDefaultShadow],
			    borderRadius: BorderRadius.circular(8)
		    ),
		    child: Padding(
			    padding: EdgeInsets.all(8),
			    child: DatingUserImage(user: user, showUserDetails: true,),
		    ),
	    );
    }

}