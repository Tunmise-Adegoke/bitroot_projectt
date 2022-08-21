import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colors.dart';

class SenderList extends StatelessWidget {
  const SenderList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.maxFinite,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 10, top: 3),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryWhite,
                          width: 4,
                        ),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 5.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Name'),
              ],
            );
          }),
    );
  }
}
