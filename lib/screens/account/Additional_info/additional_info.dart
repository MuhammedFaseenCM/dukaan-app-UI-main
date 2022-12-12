import 'package:flutter/material.dart';

class AddInfo extends StatefulWidget {
  const AddInfo({super.key});

  @override
  State<AddInfo> createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  bool toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional information'),
        centerTitle: true,
      ),
      body: Container(
          color: Colors.white,
          child: ListView.builder(
            itemBuilder: (context, index) {
              final data = list[index];
              return ListTile(
                leading: icons[index],
                title: Text(data),
                trailing: trailingicons[index],
              );
            },
            itemCount: list.length,
          )),
    );
  }

  final list = [
    'ShareDukaan App',
    'Change Language',
    'WhatsApp Chat Support',
    'Privacy Policy',
    'Rate Us',
    'Sign Out',
  ];

  final icons = const [
    Icon(Icons.share),
    Icon(Icons.announcement),
    Icon(Icons.whatsapp),
    Icon(Icons.lock),
    Icon(Icons.star_border),
    Icon(Icons.exit_to_app),
  ];

  final trailingicons = [
    const Icon(Icons.arrow_forward),
    const Icon(Icons.arrow_forward),
    Switch(value: true, onChanged: (value) {}),
    null,
    null,
    null,
    null,
    null,
    null
  ];
}
