import 'package:bitroot_project/screen/Home/home.dart';
import 'package:bitroot_project/screen/profile.dart';
import 'package:bitroot_project/screen/scan_receipt.dart';
import 'package:bitroot_project/screen/send.dart';
import 'package:bitroot_project/utils/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

int _selectedindex = 0;

final screens = [
  Home(),
  ScanReceipt(),
  SendPage(),
  ProfilePage(),
];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.space_dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan Receipt',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transfer_within_a_station),
            label: 'Send & Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Settings',
          ),
        ],
        selectedItemColor: AppColors.BlueText,
        unselectedItemColor: AppColors.LightText,
        currentIndex: _selectedindex,
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
      ),
    );
  }
}
