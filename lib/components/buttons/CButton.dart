import 'package:flutter/material.dart';

abstract class CButton extends StatelessWidget {

	final String text;
	final Function action;
	const CButton(this.text, this.action);

	Widget build(BuildContext context);

}