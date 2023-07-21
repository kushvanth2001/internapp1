import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internproject/screens/Homepage.dart';

import 'package:internproject/widgets/BottomContainer.dart';

class BotNavigationbar extends StatefulWidget {
  const BotNavigationbar({super.key});

  @override
  State<BotNavigationbar> createState() => _BotNavigationbarState();
}

class _BotNavigationbarState extends State<BotNavigationbar> {
   int _currentIndex = 0;

  setCurrentIndex(int k) {
    setState(() {
      _currentIndex = k;
    });
  }

  final pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
     HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 80,
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomContainer(
              icon: Icon(Icons.home),
              label: 'Home',
              currentIndex: _currentIndex,
              onTap: () => setCurrentIndex(0),
              inindex: 0,
            ),
            BottomContainer(
              icon: Icon(Icons.library_books_rounded),
              label: 'Learn',
              currentIndex: _currentIndex,
              onTap: () => setCurrentIndex(1),
              inindex: 1,
            ),
            BottomContainer(
              icon: Icon(Icons.hub),
              label: 'Hub',
              currentIndex: _currentIndex,
              onTap: () => setCurrentIndex(2),
              inindex: 2,
            ),
            BottomContainer(
              icon: Icon(Icons.chat),
              label: 'Chat',
              currentIndex: _currentIndex,
              onTap: () => setCurrentIndex(3),
              inindex: 3,
            ),
         Padding(
           padding: const EdgeInsets.only(left:8.0,right: 8),
           child:  GestureDetector(
      onTap: (){setState(() {
        _currentIndex=4;
      });},
      child: Container(

        decoration: BoxDecoration(
          border: _currentIndex == 4
              ? Border(top: BorderSide(width: 2, color: Colors.blue))
              : Border(top: BorderSide.none),
        ),
        height: 60,
        width: 70,
        child: Padding(
          
          padding: const EdgeInsets.only(top: 4.0),
               child: Column(
                 children: [
                   Container(
                    padding: EdgeInsets.all(3),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border: Border.all(
                    color: Colors.grey, // Customize the border color
                    width: 2, // Customize the border width
                         ),
                       ),
                       child: CircleAvatar(
                         radius: 10, // Customize the radius of the CircleAvatar
                        // Replace with your image
                       ),
                     ),
               Text('profile', style:TextStyle(color:_currentIndex == 4 ? Colors.blue : Colors.grey ,))  ],
               ),
             ),
           ),
         )
         
        )],
        ),
      ),
    );
  }
}
  
  
 