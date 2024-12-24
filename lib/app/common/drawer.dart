import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue, // Background color for the drawer
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Drawer items
            Expanded(
              child: ListView(
                children: [
                  _buildDrawerItem(Icons.home, 'Home', true),
                  _buildDrawerItem(Icons.person, 'Profile', false),
                  _buildDrawerItem(Icons.location_on, 'Nearby', false),
                  _buildDrawerItem(Icons.bookmark, 'Bookmark', false),
                  _buildDrawerItem(Icons.notifications, 'Notification', false),
                  _buildDrawerItem(Icons.message, 'Message', false),
                  Divider(color: Colors.white70, thickness: 1),
                  _buildDrawerItem(Icons.settings, 'Setting', false),
                  _buildDrawerItem(Icons.help, 'Help', false),
                  _buildDrawerItem(Icons.logout, 'Logout', false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, bool isSelected) {
    return Container(
      color: isSelected ? Colors.white : Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: isSelected ? Colors.blue : Colors.white),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: () {
          // Handle navigation here
        },
      ),
    );
  }
}