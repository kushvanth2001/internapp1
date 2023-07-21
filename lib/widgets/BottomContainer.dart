

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final Icon? icon;
  final String? label;
  final int? currentIndex;
  final VoidCallback? onTap;
  final int? inindex;

  const BottomContainer({
    Key? key,
    this.icon,
    this.inindex,
    this.label,
    this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      child: Container(

        decoration: BoxDecoration(
          border: currentIndex == inindex
              ? Border(top: BorderSide(width: 2, color: Colors.blue))
              : Border(top: BorderSide.none),
        ),
        height: 60,
        width: 70,
        child: Padding(
          
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
             Icon(icon!.icon,color: currentIndex == inindex ? Colors.blue : Colors.grey ,),
              Text(
                label!,
                style: TextStyle(
                  color: currentIndex == inindex ? Colors.blue : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}