import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomModal extends StatelessWidget {

	final double height;
	final Widget body;
	final Function close;
	const CustomModal({@required this.body, this.height = 500, @required this.close});

	@override
	Widget build(BuildContext context) {
		return Stack(
			children: [
				GestureDetector(
					onTap: close,
					child: Opacity(
						opacity: .6,
						child: Container(
							width: double.infinity,
							height: double.infinity,
							color: Colors.black
						),
					),
				),
				Center(
					child: Container(
						decoration: BoxDecoration(
							color: Colors.white,
							borderRadius: BorderRadius.circular(defaultPadding)
						),
						margin: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding),
						padding: EdgeInsets.all(defaultPadding),
						height: height,
						child: body,
					),
				),
			],
		);
	}

}