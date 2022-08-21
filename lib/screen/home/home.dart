import 'package:bitroot_project/screen/Home/sender_List.dart';
import 'package:bitroot_project/screen/profile.dart';
import 'package:bitroot_project/utils/colors.dart';
import 'package:bitroot_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.primaryLightWhite,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.abc_outlined,
                      size: 5.h,
                      color: AppColors.LightText,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const ProfilePage());
                        },
                        child: const CircleAvatar(
                          backgroundColor: AppColors.BlueText,
                          radius: 27,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: 'Hi Vanessa,',
                            size: 11,
                            bold: true,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            text: 'Here\'s your spending dashboard',
                            size: 11,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Container(
                      height: 100,
                      width: 400,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                CustomText(
                                  text: '204.05',
                                  bold: true,
                                  size: 26,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                CustomText(
                                  text: 'Your Balance',
                                  color: AppColors.LightText,
                                  size: 10,
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              thickness: 1,
                              width: 1,
                              color: AppColors.LightText,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const CustomText(
                                      text: '30',
                                      size: 26,
                                      color: AppColors.BlueText,
                                      bold: true,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 0.4.h),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size: 5.h,
                                        color: AppColors.BlueText,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const CustomText(
                                  text: 'Last Days',
                                  color: AppColors.LightText,
                                  size: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomText(
                    text: 'Send Again',
                    color: Colors.black,
                    size: 12,
                    bold: true,
                  ),
                  const SizedBox(height: 10),
                  const SenderList(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 380,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: AppColors.primaryLightWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColors.primaryBlue,
                          size: 3.h,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const CustomText(
                            text: 'Search Transactions',
                            color: AppColors.LightText,
                            size: 11),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Your Activity',
                        bold: true,
                        size: 12,
                      ),
                      Icon(
                        Icons.menu,
                        color: AppColors.BlueText,
                        size: 3.h,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomText(
                        text: 'Apple MacBook Pro 16\'-Silver',
                        size: 11,
                      ),
                      CustomText(
                        text: '3,234.03',
                        size: 11,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const CustomText(
                    text: 'Apple Store',
                    bold: true,
                    size: 11,
                  ),
                  const SizedBox(height: 5),
                  const CustomText(
                    text: 'Return Time Remaining 2 Weeks',
                    color: AppColors.LightText,
                    size: 10,
                  ),
                  const SizedBox(height: 5),
                  const CustomText(
                    text: '1342 Colorado Street, Suite 32 - 92003',
                    color: AppColors.LightText,
                    size: 10,
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    color: AppColors.LightText,
                    height: 1,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomText(
                        text: 'Ueno Coffee Filters',
                        size: 11,
                      ),
                      CustomText(
                        text: '3,234.03',
                        size: 11,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const CustomText(
                    text: 'Target',
                    bold: true,
                    size: 11,
                  ),
                  const SizedBox(height: 5),
                  const CustomText(
                    text: 'Return Time Remaining 2 Weeks',
                    color: AppColors.LightText,
                    size: 10,
                  ),
                  const SizedBox(height: 5),
                  const CustomText(
                    text: '1342 Colorado Street, Suite 32 - 92003',
                    color: AppColors.LightText,
                    size: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
