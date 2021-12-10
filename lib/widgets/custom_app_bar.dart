import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/constants/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
        iconSize: 28,
      ),
      actions: <Widget>[

         IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications_none),
        iconSize: 28,
      ),


      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
