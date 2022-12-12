import 'package:flutter/material.dart';
import 'package:ui_design/screens/home/Home_Screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<splashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    gotoMainScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child: Image.asset('assets/images/dukaan.png')),
              const SizedBox(
                width: 10.0,
              ),
              const Text(
                'DUKAAN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      )),
    );
  }

  Future<void> gotoMainScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
  }
}
