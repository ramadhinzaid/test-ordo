import 'package:flutter/material.dart';
import 'package:test_ordo/themes.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
        boxShadow: [
          BoxShadow(
            color: MyColors.shadowColor,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Background Image
          AspectRatio(
            aspectRatio: 330.34 / 291.68,
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: 90,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: MyColors.gold,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: const RattingCard(
                        rating: "4.5",
                        reviewer: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Harga(
                  harga: "Rp 6.000",
                  secondHarga: "Rp 4.500",
                ),
                Diskon(diskon: "10%")
              ],
            ),
          ),
          Text(
            "Lorem ipsum",
            style: TextStyle(
              fontSize: 16,
              color: MyColors.black,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

class RattingCard extends StatelessWidget {
  final String? rating;
  final int? reviewer;
  final double? fontSize, iconSize;
  final Color? color;
  final bool isRating;
  const RattingCard({
    Key? key,
    this.rating,
    this.reviewer,
    this.fontSize,
    this.iconSize,
    this.color,
    this.isRating = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: color ?? MyColors.white,
          size: iconSize ?? 12,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          rating ?? "0",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: fontSize ?? 8,
            color: color ?? MyColors.white,
          ),
        ),
        Text(
          " | ${reviewer! > 200 ? "200+" : "$reviewer"} ${isRating ? "rating" : "terjual"}",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: fontSize ?? 8,
            color: color ?? MyColors.white,
          ),
        )
      ],
    );
  }
}

class Diskon extends StatelessWidget {
  final String? diskon;
  const Diskon({
    Key? key,
    this.diskon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: MyColors.cartago,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Diskon $diskon",
        style: TextStyle(
          fontSize: 10,
          color: MyColors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class Harga extends StatelessWidget {
  final String? harga, secondHarga;
  final double? fontSize;
  const Harga({
    Key? key,
    this.harga,
    this.secondHarga,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          harga ?? "Rp -",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: fontSize ?? 12,
            color: MyColors.cargooo,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          secondHarga ?? "Rp -",
          style: TextStyle(
            fontSize: fontSize ?? 12,
            color: MyColors.cartago,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
