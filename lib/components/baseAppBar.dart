import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final Color color;
  final Text title;
  final AppBar appBar;

  //final List<Widget> widgets;

  const BaseAppBar({
    super.key,
    required this.title,
    required this.appBar,
    //required this.widgets,
    //required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButton(color: Color.fromARGB(255, 55, 177, 74)),
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
