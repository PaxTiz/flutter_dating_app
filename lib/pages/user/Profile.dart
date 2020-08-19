import 'package:dating_app/components/buttons/CustomButton.dart';
import 'package:dating_app/components/images/DatingUserImage.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/constants.dart';

import 'package:dating_app/models/User.dart';
import 'package:dating_app/components/CustomScaffold.dart';

class Profile extends StatelessWidget {

	final User user;
	const Profile({@required this.user});

	@override
	Widget build(BuildContext context) {
		return CustomScaffold(
			pageTitle: "My profile",
			body: buildUI(context),
		);
	}

	Widget buildUI(BuildContext context) {
		final TextStyle rowTitleStyle = Theme.of(context).textTheme.headline3.apply(fontSizeFactor: .8);

		return Column(
			children: [
				Center(
					child: Column(
						children: [
							SizedBox(
								width: 128,
							    height: 128,
								child: CircleAvatar(
									backgroundImage: NetworkImage(user.image),
								),
							),
							SizedBox(height: defaultPadding,),
							Text(user.pseudo, style: Theme.of(context).textTheme.headline2.apply(fontSizeFactor: 1.5, color: Colors.black),),
						],
					),
				),
				SizedBox(height: defaultPadding,),
				Column(
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
						Row(
							children: [
								Text("Name", style: rowTitleStyle,),
								Spacer(),
								Text(user.pseudo, style: Theme.of(context).textTheme.bodyText1,),
							],
						),
						SizedBox(height: defaultPadding / 2,),
						Row(
							children: [
								Text("Location", style: rowTitleStyle,),
								Spacer(),
								Text(user.location, style: Theme.of(context).textTheme.bodyText1,),
							],
						),
						SizedBox(height: defaultPadding / 2,),
						Row(
							children: [
								Text("Sex", style: rowTitleStyle,),
								Spacer(),
								Text(sexToString(), style: Theme.of(context).textTheme.bodyText1,),
							],
						),
						SizedBox(height: defaultPadding / 2,),
						Row(
							children: [
								Text("Hobbies", style: rowTitleStyle,),
								Spacer(),
								Text(user.hobbies.join(", "), style: Theme.of(context).textTheme.bodyText1,),
							],
						),
						SizedBox(height: defaultPadding / 2,),
						Text("Description", style: rowTitleStyle,),
						SizedBox(height: defaultPadding / 2,),
						Text(user.description, textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1,),

						SizedBox(height: defaultPadding,),
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
								DatingUserImage(user: user,),
								DatingUserImage(user: user,),
								DatingUserImage(user: user,),
								DatingUserImage(user: user,),
							],
						),
						SizedBox(height: defaultPadding,),
					],
				)
			],
		);
	}

	String sexToString() {
		return user.sex == Sex.MAN ? "Man" : user.sex == Sex.WOMAN ? "Woman" : "Non binary";
	}

}