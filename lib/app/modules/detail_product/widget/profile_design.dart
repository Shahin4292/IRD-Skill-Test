import 'package:flutter/material.dart';
import 'package:ird_skill_task/app/utils/app_assets.dart';

import '../../../common/text.dart';
import '../../../utils/app_color.dart';

class profile_design extends StatelessWidget {
  const profile_design({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: CircleAvatar(
                child: Image.asset(
                  AppAssets.men,
                  height: 30,
                  width: 30,
                ),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ModifiedText(
              text: 'Garry Allen',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            ModifiedText(
              text: 'Owner',
              size: 12,
              color: AppColor.darkGrey,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: AppColor.darkGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.call,
            size: 15,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: AppColor.darkGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.message,
            size: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
