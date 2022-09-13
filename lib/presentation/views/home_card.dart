import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final Function() onTap;
  final String title;
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
