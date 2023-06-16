import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/app_colors.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';

class HomePageSlidingSection extends StatelessWidget {
  const HomePageSlidingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(kaHomeSliderGraphicMask))),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 15),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //   // image: AssetImage()
              // ),
              color: kcHomeSlideTypeColor_2,
            ),
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      kaHomeSliderGraphic_2,
                      fit: BoxFit.fitWidth,
                    )),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Refer a friend\nand earn \$5 per \nreferral",
                  style: ktHomeSlideTextStyle,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //   // image: AssetImage()
              // ),
              color: kcHomeSlideTypeColor_1,
            ),
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      kaHomeSliderGraphic_1,
                      fit: BoxFit.fitWidth,
                    )),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Refer a friend\nand earn \$5 per \nreferral",
                  style: ktHomeSlideTextStyle,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
