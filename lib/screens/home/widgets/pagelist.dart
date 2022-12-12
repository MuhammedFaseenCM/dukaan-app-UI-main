import 'package:flutter/material.dart';
import 'package:ui_design/screens/Order.dart';

import '../../Catalogue.dart';
import '../../Manage/Manage_screen.dart';
import '../../account/Additional_info/additional_info.dart';
import '../../payments.dart';
import '../../premium.dart';

class ListHome extends StatefulWidget {
  const ListHome({super.key});

  @override
  State<ListHome> createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      const Catalogue(),
      const AddInfo(),
      const Order(),
      const ManageScreen(),
      Payment(),
      const Premium()
    ];
    final pagename = [
      'Catalogue',
      'Additional information',
      'Order',
      'Manage screen',
      'Payment',
      'Premium'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              pagename[index],
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => pages[index]));
            },
            trailing: const Icon(Icons.arrow_circle_right),
          );
        },
        itemCount: pages.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            thickness: 2.0,
          );
        },
      ),
    );
  }
}
