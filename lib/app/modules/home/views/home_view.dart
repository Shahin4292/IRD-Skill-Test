import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:ird_skill_task/app/utils/app_assets.dart';
import 'package:ird_skill_task/app/utils/app_color.dart';

import '../../../widget/app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            AppsBar(),
            SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: AppColor.whiteSmoke,
                      filled: true,
                      hintText: 'Search address, or near you',
                      hintStyle: TextStyle(
                          color: AppColor.darkGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: 16,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      gradient: GradientColor.gradientColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: SvgPicture.asset(
                      AppAssets.menu,
                      height: 16,
                      width: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
