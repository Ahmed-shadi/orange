import 'package:flutter/material.dart';
import 'package:odc/presentation/screens/notes_screen.dart';

import '../../../modules/home_cardmodel.dart';
import '../lecture_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   List<HomeCardModel> homeCards = [
     HomeCardModel(
         title: 'Lectures', image: lecturesIconSVG, screen: LectureScreen()),
     HomeCardModel(
         title: 'Section', image: sectionsIconSVG, screen: SectionScreen()),
     HomeCardModel(
         title: 'Midterm', image: midtermIconSVG, screen: Midtermcreen()),
     HomeCardModel(title: 'Final', image: finalIconSVG, screen: FinalScreen()),
     HomeCardModel(title: 'Events', image: eventIconSVG, screen: EvenZZScreen()),
     HomeCardModel(title: 'Notes', image: notesIconSVG, screen: NoteScreen()),
   ];
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return   Scaffold(    body: ListView(
    children: [
    Padding(
    padding: EdgeInsets.only(bottom: size.height / 30),
    child: Image.asset(
    'assets/images/logo.png',
    height: size.height / 11,
    width: size.width / 1.5,
    fit: BoxFit.cover,
    ),
    ),
    ],
    )

    ); }
}