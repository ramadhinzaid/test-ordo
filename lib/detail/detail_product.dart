import 'package:flutter/material.dart';
import 'package:test_ordo/appbars.dart';
import 'package:test_ordo/detail/card_ulasan.dart';
import 'package:test_ordo/home/card_product.dart';
import 'package:test_ordo/themes.dart';

class DetailProduct extends StatefulWidget {
  final void Function()? onBack;
  const DetailProduct({Key? key, this.onBack}) : super(key: key);

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        widget.onBack!();
        return false;
      },
      child: Scaffold(
        backgroundColor: MyColors.scfbg,
        appBar: MyAppBar(
          title: "PRODUK DETAIL",
          onTap: widget.onBack,
        ),
        body: SizedBox(
          width: size.width,
          height: size.height - (90 + kToolbarHeight),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Image
                Container(
                  height: 200,
                  width: 200,
                  color: MyColors.greenLow,
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    color: MyColors.red,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                    ),
                  ),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Tas Guci",
                                style: TextStyle(
                                  color: MyColors.tukode,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: MyColors.gold,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Text(
                                "Barang Bekas",
                                style: TextStyle(
                                  color: MyColors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: MyColors.cargooo,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Text(
                                "Stok 100",
                                style: TextStyle(
                                  color: MyColors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: const [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Harga(
                                  harga: "Rp 126.000",
                                  secondHarga: "Rp 100.500",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Diskon(
                              diskon: "10%",
                            )
                          ],
                        ),
                        // Divider
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          height: 1,
                          color: MyColors.black.withOpacity(0.1),
                        ),

                        // Label
                        Text(
                          "Vendor",
                          style: TextStyle(
                            fontSize: 16,
                            color: MyColors.tukode,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: MyColors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  // Store Name
                                  Text(
                                    "Eiger Store",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: MyColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RattingCard(
                              isRating: false,
                              rating: "5.0",
                              reviewer: 200,
                              color: MyColors.cargooo,
                              fontSize: 14,
                              iconSize: 24,
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Deskripsi",
                          style: TextStyle(
                            fontSize: 16,
                            color: MyColors.tukode,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "In publishing and graphic design, Lorem ipsum is a placeholder t",
                          style: TextStyle(
                            color: MyColors.tukode,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Ulasan dan Penilaian",
                          style: TextStyle(
                            fontSize: 16,
                            color: MyColors.tukode,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const CardUlasan()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
