import 'package:flutter/material.dart';
import 'package:test_ordo/themes.dart';

class IconAppBar extends StatelessWidget {
  final Color? color;
  const IconAppBar({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      margin: const EdgeInsets.only(right: 8),
      child: Center(
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: color ?? MyColors.gold,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
