import 'package:flutter/material.dart';
import 'package:dating_app/components/buttons/CButton.dart';

class CustomButton extends CButton {

	final bool large;
	const CustomButton({@required text, @required action, this.large = true}) : super(text, action);

	@override
	Widget build(BuildContext context) {
		return large ? buildLargeButton(context) : buildButton(context);
	}

	Widget buildLargeButton(BuildContext context) {
		return SizedBox(
			width: double.infinity,
			child: buildButton(context),
		);
	}

	RaisedButton buildButton(BuildContext context) {
		return RaisedButton(
			child: Text(
				text.toUpperCase(),
				style: large
					? Theme.of(context).textTheme.button
					: Theme.of(context).textTheme.button.apply(fontSizeFactor: .8),
			),
			onPressed: action,
			padding: large ? EdgeInsets.symmetric(vertical: 16) : EdgeInsets.symmetric(vertical: 8),
			color: Theme.of(context).primaryColor,
			elevation: 5,
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
		);
	}

}