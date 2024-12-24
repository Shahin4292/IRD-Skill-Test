import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:ird_skill_task/app/utils/app_assets.dart';
import 'package:ird_skill_task/app/utils/app_color.dart';

import '../../../utils/global_image.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/text.dart';
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: imageList.map((image) {
                      return GestureDetector(
                        onTap: () {
                          // Navigate to the details screen
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ImageDetailsScreen(
                          //       imageUrl: image["url"]!,
                          //       title: image["title"]!,
                          //       description: image["description"]!,
                          //     ),
                          //   ),
                          // );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          // child: ClipRRect(
                          //   borderRadius: BorderRadius.circular(10),
                          //   child: Image.network(
                          //     image["url"]!,
                          //     width: 222,
                          //     height: 272,
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                          child: Container(
                            height: 272,
                            width: 222,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  image["url"]!,
                                ),
                                fit: BoxFit
                                    .cover, // Adjust image to fill the container
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 125),
                                  child: Container(
                                    height: 24,
                                    width: 73,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColor.cyan,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          AppAssets.locationsIcon,
                                          height: 12,
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        ModifiedText(
                                          text: '1.8 km',
                                          size: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  bottom: 40,
                                  child: Column(
                                    children: [
                                      ModifiedText(
                                        text: 'Dreamsville House',
                                        size: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      ModifiedText(
                                        text: 'Jl. Sultan Iskandar Muda',
                                        size: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
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
                // Container(
                //   width: MediaQuery.sizeOf(context).width,
                //   height: MediaQuery.sizeOf(context).height,
                //   color: Colors.red,
                //   child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Text("data")
                //     ],
                //   ),
                // )
                Expanded(
                  child: ListView.builder(
                    itemCount: imageItem.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 74,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.network(
                                imageItem[index],
                              ),
                            ),
                            Text("data")
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
