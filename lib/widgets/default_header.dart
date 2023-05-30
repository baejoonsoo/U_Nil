import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultHeader extends StatelessWidget {
  const DefaultHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFC7F2A4),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SvgPicture.asset(
            'assets/images/logoGreen.svg',
            height: 30,
          ),
        ),
      ),
    );
  }
}
