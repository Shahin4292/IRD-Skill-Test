import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/text.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_color.dart';
import '../../../utils/global_image.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageItem.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 70,
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              children: [
                Container(
                  width: 74,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Image.network(
                      imageItem[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ModifiedText(
                      text: 'Orchad House',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    ModifiedText(
                      text: 'Rp. 2.500.000.000 / Year',
                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AppAssets.bedroom),
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
                        SvgPicture.asset(AppAssets.bathroom),
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
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
