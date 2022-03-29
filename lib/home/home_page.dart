import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_ordo/detail/detail_product.dart';
import 'package:test_ordo/home/icon_appbar.dart';
import 'package:test_ordo/home/icon_bottom_bar.dart';
import 'package:test_ordo/themes.dart';

import 'card_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scfbg,
      // appBar: AppBar(
      //   backgroundColor: MyColors.scfbg,
      //   systemOverlayStyle:
      //       SystemUiOverlayStyle(statusBarColor: MyColors.scfbg),
      //   elevation: 0,
      //   title: SizedBox(
      //     height: 65.96,
      //     child: Center(
      //       child: Container(
      //         height: 40,
      //         padding: const EdgeInsets.all(8),
      //         decoration: BoxDecoration(
      //           color: MyColors.greenLow,
      //           borderRadius: BorderRadius.circular(35.09),
      //         ),
      //         child: Row(
      //           children: [
      //             Icon(
      //               Icons.search,
      //               color: MyColors.cargooo,
      //               size: 18,
      //             ),
      //             const SizedBox(
      //               width: 4,
      //             ),
      //             Expanded(
      //               child: Text(
      //                 "Cari dengan mengetik",
      //                 overflow: TextOverflow.ellipsis,
      //                 maxLines: 1,
      //                 style: TextStyle(color: MyColors.blackLow, fontSize: 14),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     IconAppBar(
      //       color: MyColors.cartago,
      //     ),
      //     IconAppBar(
      //       color: MyColors.gold,
      //     ),
      //     IconAppBar(
      //       color: MyColors.red,
      //     ),
      //   ],
      // ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomeView(
            onClick: () {
              pageController.jumpToPage(1);

              // pageController.animateTo(1,
              //     duration: const Duration(milliseconds: 800),
              //     curve: Curves.linear);
            },
          ),
          DetailProduct(
            onBack: () {
              // pageController.jumpToPage(0);

              pageController.animateTo(0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.fastOutSlowIn);
            },
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: MyColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const IconBottomBar(
              icon: Icons.bar_chart,
            ),
            const IconBottomBar(icon: Icons.account_box),
            IconBottomBar(
              color: currentPage == 0 ? MyColors.tukode : null,
            ),
            const IconBottomBar(
              icon: Icons.bar_chart,
            ),
            const IconBottomBar(icon: Icons.account_box)
          ],
        ),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  final void Function()? onClick;
  const HomeView({
    Key? key,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: MyColors.scfbg),
          elevation: 0,
          pinned: true,
          title: SizedBox(
            height: 65.96,
            child: Center(
              child: Container(
                height: 40,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: MyColors.greenLow,
                  borderRadius: BorderRadius.circular(35.09),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: MyColors.cargooo,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        "Cari dengan mengetik",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                            TextStyle(color: MyColors.blackLow, fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          actions: [
            IconAppBar(
              color: MyColors.cartago,
            ),
            IconAppBar(
              color: MyColors.gold,
            ),
            IconAppBar(
              color: MyColors.red,
            ),
          ],
          backgroundColor: MyColors.scfbg,
          expandedHeight: 250,
          flexibleSpace: Container(
            height: 250,
            margin: const EdgeInsets.only(top: 95),
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              color: MyColors.black,
            ),
          ),
        )
      ],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 30,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 382.11 / 461.71,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (ct, id) {
            return GestureDetector(onTap: onClick, child: const CardProduct());
          },
        ),
      ),
    );
  }
}
