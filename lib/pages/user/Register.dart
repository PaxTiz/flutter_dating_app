import 'package:flutter/material.dart';
import 'package:dating_app/constants.dart';

import 'package:dating_app/components/icons/social_medias/SocialMediaIconRow.dart';
import 'package:dating_app/components/text/PageTitle.dart';
import 'package:dating_app/components/text/TextDivider.dart';
import 'package:dating_app/components/buttons/CustomButton.dart';
import 'package:dating_app/components/buttons/CustomInlineButton.dart';

import '../../main.dart';

class Register extends StatefulWidget {
	createState() => _Register();
}

class _Register extends State<Register> {

	final _usernameController = TextEditingController();
	final _passwordController = TextEditingController();
	final _passwordRepeatController = TextEditingController();
	final _emailController = TextEditingController();
	final globalKey = GlobalKey<ScaffoldState>();

	void showSnackBar() {
		globalKey.currentState.showSnackBar(SnackBar(content: Text("Like !"),));
	}

	void register() {
		Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => App()));
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			key: globalKey,
			resizeToAvoidBottomInset: false,
			body: ListView(
				padding: EdgeInsets.all(0),
				children: [
					PageTitle(title: "Create an account", showSettingsIcon: false,),
					Padding(
						padding: EdgeInsets.symmetric(horizontal: defaultPadding),
						child: Column(
							children: [
								SizedBox(height: defaultPadding * 2,),
								buildForm(),
								SizedBox(height: defaultPadding * 2,),
								CustomButton(text: "Create an account", action: register),
								SizedBox(height: defaultPadding,),
								CustomInlineButton(
									text: "Already have an account ?",
									coloredText: "Sign in",
									action: () => Navigator.pop(context),
								),
								TextDivider(text: "OR", color: Colors.black38,),
								SocialMediaIconRow()
							],
						),
					)
				],
			),
		);
	}

	Widget buildForm() {
		return Column(
			children: [
				TextFormField(
					controller: _usernameController,
					decoration: InputDecoration(
						labelText: "Username"
					),
				),
				SizedBox(height: defaultPadding,),
				TextFormField(
					controller: _passwordController,
					obscureText: true,
					decoration: InputDecoration(
						labelText: "Password",
					),
				),
				SizedBox(height: defaultPadding,),
				TextFormField(
					controller: _passwordRepeatController,
					obscureText: true,
					decoration: InputDecoration(
						labelText: "Repeat your password",
					),
				),
				SizedBox(height: defaultPadding,),
				TextFormField(
					controller: _emailController,
					decoration: InputDecoration(
						labelText: "Email",
					),
				),
			],
		);
	}

}