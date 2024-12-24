import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../utils/app_color.dart';
import '../controllers/home_controller.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Obx(
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
    );
  }
}
