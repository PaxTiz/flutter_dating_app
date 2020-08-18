import 'package:flutter/material.dart';

import 'package:dating_app/models/User.dart';
import 'package:dating_app/components/text/DatingUserAbout.dart';

class DatingUserImage extends StatefulWidget {

	final User user;
	final bool showUserDetails;
	const DatingUserImage({@required this.user, this.showUserDetails = false});

	createState() => _DatingUserImage();

}

class _DatingUserImage extends State<DatingUserImage> {

	double currentItem = 0;

	@override
	Widget build(BuildContext context) {
		return ClipRRect(
			borderRadius: BorderRadius.all(Radius.circular(8)),
			child: widget.showUserDetails ? _showAvatarWithDetails() : _showAvatar(),
		);
	}

	Image _showAvatar() {
		return Image.network(
			widget.user.image,
			fit: BoxFit.cover,
			loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
				return loadingProgress == null ? child : Center(child: CircularProgressIndicator(),);
			},
		);
	}

	Widget _showAvatarWithDetails() {
		return Stack(
			children: [
				_showAvatar(),
				Positioned(
					bottom: 16,
					left: 16,
					right: 16,
					child: DatingUserAbout(user: widget.user),
				),
			],
		);
	}

}
