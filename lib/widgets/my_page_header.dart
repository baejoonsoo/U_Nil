import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPageHeader extends StatelessWidget {
  const MyPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFC7F2A4),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 30,
        ),
        child: SvgPicture.asset(
          'assets/images/logoWhite.svg',
          height: 30,
        ),
      ),
    );
  }
}
