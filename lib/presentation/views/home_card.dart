import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SvgPicture.asset(
          image,
          semanticsLabel:'Acme logo',
          )
        ],
      ),
    );
  }
}
