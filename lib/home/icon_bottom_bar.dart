import 'package:flutter/material.dart';
import 'package:test_ordo/themes.dart';

class IconBottomBar extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  const IconBottomBar({
    Key? key,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 32,
      onPressed: () {},
      icon: Icon(
        icon ?? Icons.home,
        color: color ?? MyColors.disableBtn,
      ),
    );
  }
}
