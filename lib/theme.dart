import 'package:flutter/material.dart';

final appTheme = ThemeData(
	visualDensity: VisualDensity.adaptivePlatformDensity,
	primaryColor: Colors.lightBlue,
	inputDecorationTheme: InputDecorationTheme(
		floatingLabelBehavior: FloatingLabelBehavior.always,
		border: OutlineInputBorder(
			borderRadius: BorderRadius.circular(16)
		)
	),
	textTheme: TextTheme(
		headline1: TextStyle(
			fontSize: 36,
			fontFamily: "Ubuntu",
			fontWeight: FontWeight.bold,
			color: Colors.white,
		),
		headline2: TextStyle(
			fontFamily: "Raleway",
			fontWeight: FontWeight.bold,
			fontSize: 24
		),
		headline3: TextStyle(
			fontFamily: "Raleway",
			fontWeight: FontWeight.bold,
			fontSize: 18,
			color: Colors.black
		),
		bodyText1: TextStyle(
			fontFamily: "Raleway",
			fontSize: 16,
		),
		button: TextStyle(
			fontFamily: "Raleway",
			fontSize: 16,
			fontWeight: FontWeight.bold,
			color: Colors.white,
		),
	)
);