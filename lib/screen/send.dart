import 'package:avatar_glow/avatar_glow.dart';
import 'package:bitroot_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_text.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryBlue,
        body: Center(
          child: Column(
            children: [
              AvatarGlow(
                glowColor: AppColors.primaryWhite,
                endRadius: 300,
                duration: Duration(milliseconds: 2000),
                repeat: true,
                showTwoGlows: true,
                curve: Curves.easeInOutQuad,
                // repeatPauseDuration: Duration(milliseconds: 100),
                child: Container(
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
              ),
              CustomText(
                text: 'Paying',
                color: AppColors.primaryWhite,
                size: 13,
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Marcus Cabata',
                size: 25,
                bold: true,
                color: AppColors.primaryWhite,
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: CustomText(
                  text: 'Cancel Payment',
                  size: 13,
                  bold: true,
                )),
              )
            ],
          ),
        ));
  }
}
