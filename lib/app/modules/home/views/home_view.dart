import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:ird_skill_task/app/utils/app_assets.dart';
import 'package:ird_skill_task/app/utils/app_color.dart';

import '../../../widget/app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                SizedBox(
                  height: 18,
                ),
                Obx(
                  () => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        homeController.buttonName.length,
                        (index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: GestureDetector(
                              onTap: () {
                                homeController.selectedIndex.value = index;
                              },
                              child: Container(
                                height: 34,
                                width: 68,
                                decoration: BoxDecoration(
                                  gradient:
                                      homeController.selectedIndex.value ==
                                              index
                                          ? GradientColor.gradientColor
                                          : ColorGradient.gradientColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    homeController.buttonName[index],
                                    style: TextStyle(
                                      color:
                                          homeController.selectedIndex.value ==
                                                  index
                                              ? Colors.white
                                              : AppColor.darkGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
