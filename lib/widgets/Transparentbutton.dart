import 'package:flutter/material.dart';

import '../utils.dart';

class TreansparentButton extends StatelessWidget {
  final String? path;
  final String? text;
  const TreansparentButton({super.key,this.path,this.text});

  @override
  Widget build(BuildContext context) {
      double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Container(
                                  // autogroupen7oHms (X6dvBjbz6yHhBoKh6ZEN7o)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(24*fem, 14*fem, 39*fem, 14*fem),
                            
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff598bed)),
                                    borderRadius: BorderRadius.circular(8*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // solidfilesbookmarkxND (1:868)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 16*fem, 0*fem),
                                        width: 16*fem,
                                        height: 17.5*fem,
                                        child: Image.asset(
                                         path!,
                                          width: 16*fem,
                                          height: 17.5*fem,
                                        ),
                                      ),
                                      Text(
                                      text!,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286*ffem/fem,
                                          letterSpacing: -0.07*fem,
                                          color: Color(0xff598bed),
                                        ),
                                      ),
                                    ],
                                  ),
                                ) ;
  }
}