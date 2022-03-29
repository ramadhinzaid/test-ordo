import 'package:flutter/material.dart';
import 'package:test_ordo/themes.dart';

class CardUlasan extends StatelessWidget {
  const CardUlasan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 8,
            offset: Offset(-2, 2),
            color: Color.fromRGBO(185, 184, 184, 0.25),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                  color: MyColors.red,
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(40, 35)),
                ),
              )
            ],
          ),
          const Text(
            "Thats",
            style: TextStyle(
              color: Color.fromRGBO(39, 39, 39, 1),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
