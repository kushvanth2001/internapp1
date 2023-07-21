import 'package:flutter/material.dart';
import 'package:internproject/widgets/Botnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intern app',
      
      theme: ThemeData(
       
        useMaterial3: true,
      ),
      home:BotNavigationbar() ,
    );
  }
}


