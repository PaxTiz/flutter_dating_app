import 'package:flutter/cupertino.dart';

enum Sex {
	MAN,
	WOMAN,
	NON_BINARY
}

class User {

	final String pseudo;
	final Sex sex;
	final int age;
	final String location;
	final List hobbies;
	final String description;
	final String image;

	const User({
		@required this.pseudo,
		@required this.sex,
		@required this.age,
		@required this.location,
		@required this.hobbies,
		@required this.description,
		@required this.image
	});

}