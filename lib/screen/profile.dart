import 'package:bitroot_project/screen/appbar.dart';
import 'package:bitroot_project/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: CustomScrollView(
        slivers: [
          const UserAppBar(),
          const SliverToBoxAdapter(
            child:  SizedBox(height: 10),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 50,
                width: 380,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.primaryLightWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Search Settings'),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 8, (context, index) {
            return const SettingsList();
          })),
        ],
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Personal info'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            thickness: 1,
            color: AppColors.LightText,
          ),
        )
      ],
    );
  }
}
