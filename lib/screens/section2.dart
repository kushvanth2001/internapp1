import 'package:flutter/material.dart';

import '../widgets/Transparentbutton.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.blue.withOpacity(0.1),
      padding: EdgeInsets.only(bottom: 40),
      child: Column(children: [
Padding(padding: EdgeInsets.all(30)),
Padding(
  padding: const EdgeInsets.only(left:8.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
  
   TreansparentButton(path:  'assets/page-1/images/solid-files-book-mark.png',text: 'Programs',),
  
    TreansparentButton(path:   'assets/page-1/images/help-circle.png',text: 'Get help',)
  
  ],),
),
SizedBox(height: 15,),
Padding(
  padding: const EdgeInsets.only(left:8.0),
child:Row(
   mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [

 TreansparentButton(path:         'assets/page-1/images/solid-status-book-open.png',text: 'Learn       ',),
  TreansparentButton(path:  'assets/page-1/images/trello-VXP.png',text: 'DDTracker',)
],))

]),);
  }
}