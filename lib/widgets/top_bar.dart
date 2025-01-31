import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';



class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool isOn = false;

  Widget _customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Home", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Row(
          children: [
            // Search Bar
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(FeatherIcons.search, size: 18, color: Colors.blueGrey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  filled: true,
                  fillColor: Colors.grey[300],
                ),
              ),
            ),
            SizedBox(width: 20),
            // Notification Icon with Badge
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(FeatherIcons.bell, size: 24, color: Colors.blueGrey),
                Positioned(
                  right: -4,
                  top: -4,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(minWidth: 16, minHeight: 16),
                    child: Center(
                      child: Text(
                        '3', // Change based on notifications
                        style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            // On/Off Button
            IconButton(
              icon: Icon(
                isOn ? FeatherIcons.power : FeatherIcons.toggleLeft, // Toggle between icons
                size: 24,
                color: Colors.blueGrey,
              ),
              onPressed: () {
                setState(() {
                  isOn = !isOn; // Toggle the state
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: _customAppBar(),
    );
  }
}