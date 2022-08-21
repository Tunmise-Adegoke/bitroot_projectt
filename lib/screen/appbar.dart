import 'package:bitroot_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_text.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primaryLightWhite,
      expandedHeight: 200,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0, top: 16),
          child: CustomText(
            text: 'Log Out',
            size: 11,
            color: AppColors.BlueText,
            bold: true,
          ),
        ),
      ],
      flexibleSpace: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 70),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.primaryWhite,
                  width: 4,
                ),
                shape: BoxShape.circle),
            child: Icon(
              Icons.account_circle_outlined,
              size: 7.h,
            ),
          ),
          SizedBox(height: 5),
          Text('Mae Jamison'),
          SizedBox(height: 5),
          Text('maej@gmail.com'),
        ],
      ),
    );
  }
}
