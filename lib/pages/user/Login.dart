import 'package:flutter/material.dart';
import 'package:dating_app/constants.dart';

import 'package:dating_app/pages/user/Register.dart';
import 'package:dating_app/components/icons/social_medias/SocialMediaIconRow.dart';
import 'package:dating_app/components/text/PageTitle.dart';
import 'package:dating_app/components/text/TextDivider.dart';
import 'package:dating_app/components/buttons/CustomInlineButton.dart';
import 'package:dating_app/components/buttons/CustomButton.dart';

import 'package:dating_app/main.dart';

class Login extends StatefulWidget {
	createState() => _Login();
}

class _Login extends State<Login> {

	final _usernameController = TextEditingController();
	final _passwordController = TextEditingController();
	final globalKey = GlobalKey<ScaffoldState>();

	void showSnackBar() {
		globalKey.currentState.showSnackBar(SnackBar(content: Text("Like !"),));
	}

	void login() {
		Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => App()));
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			key: globalKey,
			resizeToAvoidBottomInset: false,
			body: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					PageTitle(title: "Login", showSettingsIcon: false,),
					Padding(
						padding: EdgeInsets.symmetric(horizontal: defaultPadding),
						child: Column(
							children: [
								SizedBox(height: defaultPadding * 2,),
								buildForm(),
								SizedBox(height: defaultPadding,),
								Row(
									children: [
										Spacer(),
										FlatButton(
											child: Text("Forgot credentials ?", style: Theme.of(context).textTheme.button.apply(color: Theme.of(context).primaryColor),),
											onPressed: showSnackBar,
										)
									],
								),
								SizedBox(height: defaultPadding,),
								CustomButton(text: "Login", action: login),
								SizedBox(height: defaultPadding,),
								CustomInlineButton(
									text: "Don't have an account ?",
									coloredText: "Sign up",
									action: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => Register())),
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

	buildForm() {
		return Column(
			children: [
				TextFormField(
					controller: _usernameController,
					decoration: InputDecoration(
						labelText: "Username",
					),
				),
				SizedBox(height: 16,),
				TextFormField(
					controller: _passwordController,
					obscureText: true,
					decoration: InputDecoration(
						labelText: "Password",
					),
				),
			],
		);
	}

}