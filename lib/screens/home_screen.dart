import 'package:flutter/material.dart';
import 'package:u_nil/screens/mypage_screen.dart';
import 'package:u_nil/screens/recipe_list_screen.dart';
import 'package:u_nil/widgets/bottomNavigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children:  [
            Flexible(
              child: TabBarView(
                children: <Widget>[
                  const Text('1'),
                  const Text('2'),
                   RecipeListScreen(),
                  const MyPageScreen()
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
