import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ird_skill_task/app/utils/app_color.dart';
import 'package:ird_skill_task/app/widget/text.dart';

import '../utils/app_assets.dart';

class AppsBar extends StatelessWidget {
  const AppsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ModifiedText(
              text: 'Location',
              color: AppColor.grey,
              size: 12,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                ModifiedText(
                  text: 'Jakarta',
                  color: Colors.black,
                  size: 20,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  AppAssets.downArrow,
                  height: 10,
                  width: 10,
                )
              ],
            ),
          ],
        ),
        Container(
          height: 22,
          width: 17,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.notifications),
            ),
          ),
          child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                AppAssets.ellipse,
                height: 8,
                width: 8,
              )),
        )
      ],
    );
  }
}
