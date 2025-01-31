import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/profile.png')),
          SizedBox(height: 10),
          Text("Vaidant Sharma", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Admin"),
          Divider(),
          _sidebarItem(FeatherIcons.home, "Home"),
          _sidebarItem(FeatherIcons.users, "Employees"),
          _sidebarItem(FeatherIcons.checkCircle, "Attendance"),
          _sidebarItem(FeatherIcons.barChart2, "Summary"),
          _sidebarItem(FeatherIcons.info, "Information"),
          ExpansionTile(
            leading: Icon(FeatherIcons.briefcase, color: Colors.blueGrey),
            title: Text("Workspaces", style: TextStyle(fontSize: 16)),
            children: [
              ExpansionTile(
                leading: Icon(FeatherIcons.folder, color: Colors.blueGrey),
                title: Text("Technical", style: TextStyle(fontSize: 16)),
              ),
              _sidebarItem(FeatherIcons.fileText, "Finance"),
            ],
          ),
          Spacer(),
          _sidebarItem(FeatherIcons.settings, "Settings"),
          _sidebarItem(FeatherIcons.logOut, "Logout"),
        ],
      ),
    );
  }

  Widget _sidebarItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueGrey),
      title: Text(title, style: TextStyle(fontSize: 16)),
      onTap: () {},
    );
  }
}
