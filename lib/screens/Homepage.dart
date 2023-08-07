import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internproject/screens/section2.dart';
import 'package:internproject/widgets/Listcard.dart';
import 'package:internproject/widgets/Transparentbutton.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/LessonModel.dart';
import '../models/ProgramsModel.dart';
import '../utils.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<ProgramsModel> fetchDataFromInternet() async {
  final url = 'https://632017e19f82827dcf24a655.mockapi.io/api/programs';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return ProgramsModel.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load data from the internet');
  }
}
Future<LessonsModel> fetchLessonsDataFromInternet() async {
  final url = 'https://632017e19f82827dcf24a655.mockapi.io/api/lessons';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return lessonsModelFromJson(response.body);
  } else {
    throw Exception('Failed to load data from the internet');
  }
}
@override
  void initState() {
    super.initState();
    fetchDataFromInternet();
    fetchLessonsDataFromInternet();
  }
  
  @override
  Widget build(BuildContext context) {
  List<String>  imageslist=[ 'assets/page-1/images/frame-122.png',  'assets/page-1/images/.png','assets/page-1/images/young-woman-doing-natarajasana-exercise-4.png','assets/page-1/images/frame-122.png'];
  List<List<String>> titleslist=[['LiFE STYLE','A complete gudie for new born babay','16 lessons'],['Yoga','guide to deal with deasises','10 lessons'],['GOOD HABITS','make good habits daily and grow','20 lessons'],['LiFE STYLE','A complete gudie for new born babay','16 lessons']];
      double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 18.42*fem, 16*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                    color: Colors.blue.withOpacity(0.1),
                ),
    child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(

                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 248*fem, 0*fem),
                      width: 15*fem,
                      height: 7*fem,
                      child: Image.asset(
                        'assets/page-1/images/group-972.png',
                        width: 18*fem,
                        height: 7*fem,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.42*fem, 0*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/page-1/images/forumblack24dp-1-moP.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.25*fem),
                      width: 15.17*fem,
                      height: 19.75*fem,
                      child: Image.asset(
                        'assets/page-1/images/outline-status-notification-LE5.png',
                        width: 15.17*fem,
                        height: 19.75*fem,
                      ),
                    ),
                  ],
                ),
        ),
           Container(
            padding: EdgeInsets.only(right: 170),
                       color: Colors.blue.withOpacity(0.1),
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    Text(
                        'Hello, Priya!',
                        style: SafeGoogleFont (
                          'lora',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.3*ffem/fem,
                          letterSpacing: -0.2*fem,
                          color: Color(0xff08090a),
                        ),
                      ),
                       Text(
                        'What do you wanna learn today?',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.3333333333*ffem/fem,
                          letterSpacing: -0.12*fem,
                          color: Color(0xff6c747a),
                        ),
                      ),  ],
                      ),
                    ),
        
Section2(),

   
   Container(padding: EdgeInsets.only(top: 20),
                                  
                                    width: double.infinity,
                                
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // programsforyouK5b (1:624)
                                    
                                          child: Text(
                                            'Programs for you',
                                            style: SafeGoogleFont (
                                              'Lora',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.4444444444*ffem/fem,
                                              letterSpacing: -0.18*fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                   
                                     Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                      Text(
                                                  'View all',
                                                  textAlign: TextAlign.right,
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: -0.12*fem,
                                                    color: Color(0xff6c747a),
                                                  ),
                                                ),
                                      Icon(Icons.arrow_right_alt)],
                                     
                                     
                                     ) ])),
  SizedBox(
     width: MediaQuery.of(context).size.width,
        height: 300,
    child: FutureBuilder<ProgramsModel>(
          future: fetchDataFromInternet(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              List<Item> programs = snapshot.data!.items;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: programs.length,
                itemBuilder: (context, index) {
                     return 
                    ListCard(
                      path: imageslist[0],
                      title1: programs[index].category,
                      title2: programs[index].name,
                      title3: programs[index].lesson.toString()+" lessons",
                    );
                  
                  
                
                },
              );
            }
          },
        ),),
 
    
      
     
Container(padding: EdgeInsets.only(top: 20),
                                  
                                    width: double.infinity,
                                
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          
                                    
                                          child: Text(
                                            'Lesson api data',
                                            style: SafeGoogleFont (
                                              'Lora',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.4444444444*ffem/fem,
                                              letterSpacing: -0.18*fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                   
                                     Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                      Text(
                                                  'View all',
                                                  textAlign: TextAlign.right,
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: -0.12*fem,
                                                    color: Color(0xff6c747a),
                                                  ),
                                                ),
                                      Icon(Icons.arrow_right_alt)],
                                     
                                     
                                     ) ])),
  
     SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child:   SizedBox(
     width: MediaQuery.of(context).size.width,
        height: 320,
    child: FutureBuilder<LessonsModel>(
          future: fetchLessonsDataFromInternet(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              List<LessonItem> programs = snapshot.data!.items;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: programs.length,
                itemBuilder: (context, index) {
                     return 
                    ListCard(
                      path: imageslist[2],
                      title1: programs[index].category,
                      title2: programs[index].name,
                      title3: "duration :"+programs[index].duration.toString()+"minitues",
                    );
                  
                  
                
                },
              );
            }
          },
        ),),
     ),

  
     
     ]))),
    );
  }
}