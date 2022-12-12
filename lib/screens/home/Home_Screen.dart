import 'package:flutter/material.dart';
import 'package:ui_design/screens/Catalogue.dart';
import 'package:ui_design/screens/Manage/Manage_screen.dart';
import 'package:ui_design/screens/account/Additional_info/additional_info.dart';
import 'package:ui_design/screens/home/widgets/bottom_navigation.dart';
import 'package:ui_design/screens/home/widgets/pagelist.dart';
import 'package:ui_design/screens/premium.dart';

import '../payments.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pages = [
    ListHome(),
    Catalogue(),
    ManageScreen(),
    Payment(),
    ListHome()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNav(),
        backgroundColor: (Color.fromARGB(255, 217, 215, 215)),
        body: SafeArea(
            child: ValueListenableBuilder(
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
          valueListenable: HomeScreen.selectedIndexNotifier,
        )),
      ),
    );
  }
}
