import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_ordo/themes.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final void Function()? onTap;
  const MyAppBar({
    Key? key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: MyColors.scfbg,
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: MyColors.scfbg,
      title: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: SizedBox(
              width: 30,
              height: 30,
              child: Center(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: MyColors.cargooo,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.arrow_back,
                    color: MyColors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            title ?? "",
            style: TextStyle(
              color: MyColors.cargooo,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
