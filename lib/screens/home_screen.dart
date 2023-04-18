import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SvgPicture.asset(
          'assets/images/logoGreen.svg',
          height: 30,
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          height: 48,
          child: Center(
            child: Container(
              width: 220,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.35),
                      blurRadius: 7,
                      spreadRadius: 0,
                      offset: const Offset(0,2),
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: const [
                  Icon(
                    Icons.home_rounded,
                    size: 30,
                    color: Color(0xffCCCCCC),
                  ), Icon(
                    Icons.edit_rounded,
                    size: 30,
                    color: Color(0xffCCCCCC),
                  ), Icon(
                    Icons.list_rounded,
                    size: 30,
                    color: Color(0xffCCCCCC),
                  ), Icon(
                    Icons.person,
                    size: 30,
                    color: Color(0xffCCCCCC),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
