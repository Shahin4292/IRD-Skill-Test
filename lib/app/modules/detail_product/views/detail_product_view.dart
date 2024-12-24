import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ird_skill_task/app/utils/app_color.dart';

import '../../../common/text.dart';
import '../../../utils/app_assets.dart';
import '../controllers/detail_product_controller.dart';
import '../widget/image_design.dart';
import '../widget/profile_design.dart';

class DetailProductView extends GetView<DetailProductController> {
  final String imageUrl;
  final String? title;
  final String? description;

  const DetailProductView({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 304,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image_design(),
          ),
          ModifiedText(
            text: title!,
            size: 16,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          ModifiedText(
            text: description!,
            size: 12,
            color: AppColor.darkGrey,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          profile_design(),
          SizedBox(
            height: size.height * 0.02,
          ),
          ModifiedText(
            text: 'Gallery',
            color: AppColor.darkGrey,
            size: 16,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppAssets.image3,
                height: 65,
                width: 65,
              ),
              Image.asset(
                AppAssets.image3,
                height: 65,
                width: 65,
              ),
              Image.asset(
                AppAssets.image3,
                height: 65,
                width: 65,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Center(
                  child: ModifiedText(
                    text: "+5",
                    fontWeight: FontWeight.bold,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.location)
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ModifiedText(
                    text: "price",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.darkGrey,
                  ),
                  ModifiedText(
                      text: 'Rp. 2.500.000.000 / Year',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)
                ],
              ),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: GradientColor.gradientColor),
                child: Center(
                  child: ModifiedText(
                    text: "Rent Now",
                    fontWeight: FontWeight.w500,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
