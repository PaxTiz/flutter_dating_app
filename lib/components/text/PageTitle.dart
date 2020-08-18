import 'package:flutter/material.dart';
import 'package:dating_app/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PageTitle extends StatefulWidget {
	final String title;
	final bool showSettingsIcon;
	const PageTitle({@required this.title, @required this.showSettingsIcon});

	createState() => _PageTitle();
}

class _PageTitle extends State<PageTitle> {

	@override
    Widget build(BuildContext context) {
		return Container(
	        width: MediaQuery.of(context).size.width,
	        padding: EdgeInsets.only(top: defaultPadding * MediaQuery.of(context).size.height / 200, left: defaultPadding * 2, right: defaultPadding * 2, bottom: defaultPadding),
	        decoration: BoxDecoration(
		        color: Theme.of(context).primaryColor,
		        shape: BoxShape.rectangle,
		        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
		        boxShadow: [
		        	BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1),
		        ]
	        ),
	        child: widget.showSettingsIcon ? Row(
		        mainAxisAlignment: MainAxisAlignment.spaceBetween,
		        crossAxisAlignment: CrossAxisAlignment.center,
		        children: [
			        FittedBox(
				        fit: BoxFit.scaleDown,
				        child: titleText(factor: 0.8)
			        ),
//			        Spacer(),
			        IconButton(
				        padding: EdgeInsets.all(0),
				        icon: Icon(Icons.settings, color: Colors.white),
				        iconSize: defaultPadding * 2,
				        onPressed: () {},
			        )
		        ],
	        ) : titleText()
        );
    }

    Widget titleText({double factor = 1}) {
		return AutoSizeText(widget.title, style: Theme.of(context).textTheme.headline1, textScaleFactor: factor,);
    }

}