import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: const Color(0xffB6E388).withOpacity(1),
        title: SvgPicture.asset(
          "assets/images/logoGreen.svg",
          height: 30,
        ),
      ),
      body: const Center(
        child: Text("tlqkf"),
      ),
    );
  }
}
