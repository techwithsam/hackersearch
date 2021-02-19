import 'package:flutter/material.dart';
import 'locator.dart';
import 'screen/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  locatorPage();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
