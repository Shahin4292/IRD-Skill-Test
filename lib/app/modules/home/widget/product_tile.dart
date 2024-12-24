import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/text.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_color.dart';
import '../../../utils/global_image.dart';
import '../../detail_product/views/detail_product_view.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: imageList.map((image) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProductView(
                    imageUrl: image["url"]!,
                    title: image["title"]!,
                    description: image["description"]!,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
    );
  }
}
