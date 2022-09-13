import 'package:flutter/material.dart';
import 'package:odc/presentation/screens/event_screen.dart';
import 'package:odc/presentation/screens/final_screen.dart';
import 'package:odc/presentation/screens/midterm_screen.dart';
import 'package:odc/presentation/screens/notes_screen.dart';
import 'package:odc/presentation/screens/section_screen.dart';

import '../../../modules/home_cardmodel.dart';
import '../../constant/app_assets.dart';
import '../../views/home_card.dart';
import '../lecture_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<HomeCardModel> homeCards = [
    HomeCardModel(
        title: 'Lectures', image: lecturesIconSVG, screen: LectureScreen()),
    HomeCardModel(
        title: 'Section', image: sectionsIconSVG, screen: SectionScreen()),
    HomeCardModel(
        title: 'Midterm', image: midtermIconSVG, screen: MidtermScreen()),
    HomeCardModel(title: 'Final', image: finalIconSVG, screen: FinalScreen()),
    HomeCardModel(title: 'Events', image: eventIconSVG, screen: EventScreen()),
    HomeCardModel(title: 'Notes', image: notesIconSVG, screen: NoteScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 30),
          child: ListView(
      children: [
          Padding(
            padding: EdgeInsets.only(bottom: size.height / 30),
            child: Image.asset(
              odcImagePng,
              height: size.height / 11,
              width: size.width / 1.5,
              fit: BoxFit.cover,
            ),
          ),
        SizedBox(
          height: size.height,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              return HomeCard(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homeCards[index].screen,
                        ));
                  },
                  image: homeCards[index].image,
                  title: homeCards[index].title);
            },
            itemCount: homeCards.length,
          ),
        )
      ],
    ),
        ));
  }
}
