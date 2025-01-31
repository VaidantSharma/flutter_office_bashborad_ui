import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/top_bar.dart';
import 'widgets/left_sidebar.dart';
import 'widgets/right_sidebar.dart';
import 'widgets/main_content.dart';


void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // Move TopBar inside the Row
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 2, child: Sidebar()),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      TopBar(), // Now inside the Row's center section
                      Expanded(child: MainContent()),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: RightSidebar()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





