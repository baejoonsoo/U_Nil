import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.35),
                  blurRadius: 7,
                  spreadRadius: 0,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: const TabBar(
              labelColor: Color(0xffB6E388),
              unselectedLabelColor: Color(0xffCCCCCC),
              indicatorColor: Color.fromRGBO(0, 0, 0, 0),
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home_rounded,
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.edit_rounded,
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.list_rounded,
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
