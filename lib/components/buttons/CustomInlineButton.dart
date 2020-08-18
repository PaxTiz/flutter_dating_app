import 'package:flutter/material.dart';
import 'package:dating_app/components/buttons/CButton.dart';

class CustomInlineButton extends CButton {

	final String coloredText;
	const CustomInlineButton({@required text, @required this.coloredText, @required action}) : super(text, action);

	@override
	Widget build(BuildContext context) {
		return FlatButton(
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
			child: Text.rich(
				TextSpan(
					children: [
						TextSpan(text: text, style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 3)),
						TextSpan(text: " $coloredText", style: Theme.of(context).textTheme.button.apply(color: Theme.of(context).primaryColor)),
					],
				)
			),
			onPressed: action,
		);
	}

}