import 'Profile_page.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
 const ProfilePage({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profiles...'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: Text('profiles'),
      ),
    );
  }
}