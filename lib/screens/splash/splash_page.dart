import 'package:avrodi_sharif_clone/utils/tools/router.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    goHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Spalsh Page"),
      ),
    );
  }

  void goHome() {
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.pushNamedAndRemoveUntil(context, RouteName.home, (route) => false));
  }
}
