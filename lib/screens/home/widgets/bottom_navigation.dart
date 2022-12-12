import 'package:flutter/material.dart';
import 'package:ui_design/screens/home/Home_Screen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            HomeScreen.selectedIndexNotifier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined), label: 'orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view), label: 'Products'),
            BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Manage'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
          ],
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
        );
      },
    );
  }
}
