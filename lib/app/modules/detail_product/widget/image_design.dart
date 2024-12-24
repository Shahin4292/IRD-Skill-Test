import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../common/text.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_color.dart';

class Image_design extends StatelessWidget {
  const Image_design({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 20,
          left: 40,
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                  color: AppColor.darkGrey,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 45,
          child: Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
                color: AppColor.darkGrey,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
                child: SvgPicture.network(
              AppAssets.saveIcon,
              height: 15,
              width: 12,
            )),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 40,
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
        Positioned(
          left: 40,
          bottom: 45,
          child: Row(
            children: [
              SvgPicture.asset(
                AppAssets.bedroom,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              ModifiedText(
                color: AppColor.darkGrey,
                text: '6 Bedroom',
                size: 12,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                AppAssets.bathroom,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              ModifiedText(
                text: '4 Bathroom',
                size: 12,
                color: AppColor.darkGrey,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        )
      ],
    );
  }
}
