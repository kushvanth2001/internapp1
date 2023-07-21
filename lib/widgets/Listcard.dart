import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class ListCard extends StatelessWidget {
  final String? path;
    final String? title1;
      final String? title2;
        final String? title3;

  const ListCard({super.key, this.path, this.title1, this.title2, this.title3});

  @override
  Widget build(BuildContext context) {
          double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Card(
      elevation: 4,
      child: SingleChildScrollView(
        child: Container(
          
           decoration: BoxDecoration(border: Border.all(width: 0.1),borderRadius: BorderRadius.all(Radius.circular(7))),
      
          child: Column(
            mainAxisSize: MainAxisSize.max,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      
                                                    
                                                      margin: EdgeInsets.fromLTRB(0*fem, 20, 0*fem, 16*fem),
                                                      width: 242*fem,
                                                      height: 140*fem,
                                                      child: Image.asset(
                                                        path!,
                                                        width: 242*fem,
                                                        height: 140*fem,
                                                      ),
                                                    ),
                                                    Container(
                                                
                                                      margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 8*fem),
                                                      child: Text(
                                                      title1!,
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.3333333333*ffem/fem,
                                                          letterSpacing: -0.24*fem,
                                                          color: Color(0xff598bed),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // acompleteguideforyournewbornba (1:627)
                                                      margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 15*fem),
                                                      constraints: BoxConstraints (
                                                        maxWidth: 199*fem,
                                                      ),
                                                      child: Text(
                                                      title2!,
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.5*ffem/fem,
                                                          letterSpacing: -0.16*fem,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // lessonsdR3 (1:629)
                                                      margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 0*fem),
                                                      child: Text(
                                                        title3!,
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.3333333333*ffem/fem,
                                                          letterSpacing: -0.12*fem,
                                                          color: Color(0xff6c747a),
                                                        ),
                                                      ),
                                                    ),
                                                SizedBox(height: 20,)  ],
                                                ),
        ),
      ),
    );
  }
}