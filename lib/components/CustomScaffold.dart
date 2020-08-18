import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:dating_app/components/text/PageTitle.dart';

class CustomScaffold extends StatelessWidget {

	final String pageTitle;
	final bool showSettingIcon;
	final Widget body;
	const CustomScaffold({@required this.pageTitle, this.showSettingIcon = false, @required this.body});

	@override
	Widget build(BuildContext context) {
		return ListView(
			padding: EdgeInsets.all(0),
			children: [
				PageTitle(title: pageTitle, showSettingsIcon: showSettingIcon,),
				SizedBox(height: defaultPadding * 2,),
				Padding(
					padding: EdgeInsets.symmetric(horizontal: defaultPadding),
					child: body,
				)
			],
		);
	}

}