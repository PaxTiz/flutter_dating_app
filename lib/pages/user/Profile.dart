import 'package:dating_app/components/buttons/CustomButton.dart';
import 'package:dating_app/components/images/DatingUserImage.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/constants.dart';

import 'package:dating_app/models/User.dart';
import 'package:dating_app/components/CustomScaffold.dart';

class Profile extends StatefulWidget {

	final User user;
	const Profile({@required this.user});

	createState() => _Profile();

}

class _Profile extends State<Profile> {

	TextStyle getRowTitleStyle() => Theme.of(context).textTheme.headline3.apply(fontSizeFactor: .8);
	TextStyle getRowContentStyle() => Theme.of(context).textTheme.bodyText1;

	@override
	Widget build(BuildContext context) {
		return CustomScaffold(
			pageTitle: "My profile",
			body: buildUI(context),
		);
	}

	Widget buildUI(BuildContext context) {
		return Column(
			children: [
				Center(
					child: Column(
						children: [
							SizedBox(
								width: 128,
							    height: 128,
								child: CircleAvatar(
									backgroundImage: NetworkImage(widget.user.image),
								),
							),
							SizedBox(height: defaultPadding,),
							Text(widget.user.pseudo, style: Theme.of(context).textTheme.headline2.apply(fontSizeFactor: 1.5, color: Colors.black),),
						],
					),
				),
				SizedBox(height: defaultPadding,),
				Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						aboutMeSection(),
						SizedBox(height: defaultPadding,),
						picturesSection(),
						SizedBox(height: defaultPadding,),
					],
				)
			],
		);
	}

	Widget aboutMeSection() {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				Row(
					children: [
						Text("About me", style: Theme.of(context).textTheme.headline3,),
						Spacer(),
						CustomButton(text: "Update", large: false, action: () {},)
					],
				),
				SizedBox(height: defaultPadding / 2,),
				buildProfileRows(),
				SizedBox(height: defaultPadding / 2,),
				Text("Description", style: getRowTitleStyle(),),
				SizedBox(height: defaultPadding / 2,),
				Text(widget.user.description, textAlign: TextAlign.justify, style: getRowContentStyle(),),
			],
		);
	}

	Widget picturesSection() {
		return Column(
			children: [
				Row(
					children: [
						Text("My pictures", style: Theme.of(context).textTheme.headline3,),
						Spacer(),
						CustomButton(text: "Update", large: false, action: () {},)
					],
				),
				SizedBox(height: defaultPadding / 2,),
				GridView.count(
					padding: EdgeInsets.all(0),
					crossAxisCount: 2,
					mainAxisSpacing: defaultPadding,
					crossAxisSpacing: defaultPadding,
					shrinkWrap: true,
					physics: NeverScrollableScrollPhysics(),
					children: [
						DatingUserImage(user: widget.user,),
						DatingUserImage(user: widget.user,),
						DatingUserImage(user: widget.user,),
						DatingUserImage(user: widget.user,),
					],
				),
			],
		);
	}

	String sexToString() {
		return widget.user.sex == Sex.MAN ? "Man" : widget.user.sex == Sex.WOMAN ? "Woman" : "Non binary";
	}

	Widget buildProfileRows() {
		return Column(
			children: [
				buildProfileRow("Name", widget.user.pseudo),
				SizedBox(height: defaultPadding / 2,),
				buildProfileRow("Location", widget.user.location),
				SizedBox(height: defaultPadding / 2,),
				buildProfileRow("Sex", sexToString()),
				SizedBox(height: defaultPadding / 2,),
				buildProfileRow("Hobbies", widget.user.hobbies.join(", ")),
			],
		);
	}

	Widget buildProfileRow(String key, String value) {
		return Row(
			children: [
				Text(key, style: getRowTitleStyle(),),
				Spacer(),
				Text(value, style: getRowContentStyle()),
			],
		);
	}

}