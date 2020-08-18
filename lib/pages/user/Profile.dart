import 'package:flutter/material.dart';
import 'package:dating_app/components/CustomScaffold.dart';

class Profile extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return CustomScaffold(
			pageTitle: "My profile",
			body: buildUI(),
		);
	}

	Widget buildUI() {
		return Text("hey");
	}

}