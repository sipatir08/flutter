import 'package:flutter/material.dart';

import 'ui/dashboard.dart' as dashboard;
import 'ui/add.dart';
import 'ui/update.dart';
import 'ui/login.dart';

// Dummy list to store sales data globally
List<Map<String, String>> salesData = [];

// Main function to run the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Management System',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Home Page Widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project1'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text(
            'Muhammad Fathir_714220021',
            style: TextStyle(fontSize: 16),
          ),
          Center(
            child: Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: [
                // Dashboard button
                HomeButton(
                  icon: Icons.dashboard,
                  label: 'Dashboard',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => dashboard.DashboardPage()),
                    );
                  },
                ),
                // Add button
                HomeButton(
                  icon: Icons.add,
                  label: 'Add',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPage()),
                    );
                  },
                ),
                // Update button
                HomeButton(
                  icon: Icons.update,
                  label: 'Update',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UpdatePage()),
                    );
                  },
                ),
                // Logout button
                HomeButton(
                  icon: Icons.logout,
                  label: 'Logout',
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Widget for Home Buttons
class HomeButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function() onTap;

  const HomeButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            SizedBox(height: 10),
            Text(label, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}