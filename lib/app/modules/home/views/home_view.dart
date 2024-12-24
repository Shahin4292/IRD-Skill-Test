import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:ird_skill_task/app/utils/app_assets.dart';
import 'package:ird_skill_task/app/utils/app_color.dart';

import '../../../common/app_bar.dart';
import '../../../common/text.dart';
import '../controllers/home_controller.dart';
import '../widget/button_widget.dart';
import '../widget/list_item.dart';
import '../widget/product_tile.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              title: Text("text 1"),
              onTap: () {},
            ),
            ListTile(
              title: Text("text 2"),
              onTap: () {},
            )
          ],
        )),
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
                    Builder(
                        builder: (context) => GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Container(
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
                            ))
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                ButtonWidget(homeController: homeController),
                SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ModifiedText(
                      text: 'Near from you',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    InkWell(
                      splashColor: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      child: ModifiedText(
                        text: 'See more',
                        size: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.darkGrey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                ProductTile(),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ModifiedText(
                      text: 'Best for you',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    InkWell(
                      splashColor: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      child: ModifiedText(
                        text: 'See more',
                        size: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.darkGrey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: ListItem(),
                ),
              ],
            ),
          ),
        ));
  }
}
