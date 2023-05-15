import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:u_nil/screens/mypage_screen.dart';
import 'package:u_nil/widgets/bottomNavigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: const [
            Flexible(
              child: TabBarView(
                children: <Widget>[
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  MyPageScreen()
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
