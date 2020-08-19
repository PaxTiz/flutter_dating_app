import 'package:dating_app/constants.dart';
import 'package:dating_app/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dating_app/theme.dart';
import 'package:dating_app/pages/Dating.dart';
import 'package:dating_app/pages/Likes.dart';
import 'package:dating_app/pages/Messages.dart';
import 'package:dating_app/pages/user/Profile.dart';
import 'package:dating_app/pages/user/Login.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter Demo',
			theme: appTheme,
			home: Login(),
		);
	}
}

class App extends StatefulWidget {
	@override
    State createState() => _App();
}

class _App extends State<App> {

	int currentIndex = 0;
	List tabs = [
		Dating(),
		Likes(),
		Messages(),
		Profile(user: users[0],),
	];

	changeTab(int index) {
		setState(() {
		  currentIndex = index;
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: tabs[currentIndex],
			bottomNavigationBar: BottomNavigationBar(
				type: BottomNavigationBarType.fixed,
				unselectedItemColor: kColorDarkGrey,
				selectedItemColor: Theme.of(context).primaryColor,
				elevation: 1000,
				items: [
					BottomNavigationBarItem(
						icon: Icon(CupertinoIcons.home),
						title: Text("Home")
					),
					BottomNavigationBarItem(
						icon: Icon(CupertinoIcons.heart),
						title: Text("Likes")
					),
					BottomNavigationBarItem(
						icon: Icon(CupertinoIcons.conversation_bubble),
						title: Text("Messages")
					),
					BottomNavigationBarItem(
						icon: Icon(CupertinoIcons.profile_circled),
						title: Text("Profile")
					),
				],
				onTap: changeTab,
				currentIndex: currentIndex,
			),
		);
	}

}
