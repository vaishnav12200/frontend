import 'package:flutter/material.dart';
import 'pages/settings_page.dart';
import 'pages/profile_page.dart';
import 'pages/search_page.dart'; // This must contain the CarouselExample class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // MUST be true for CarouselView
        colorSchemeSeed: Colors.green,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  // This list maps your BottomNavigationBar to your pages
  final List<Widget> _pages = [
    const HomeContent(),      // Index 0
    const CarouselExample(), // Index 1 (From your search_page.dart)
    const ProfilePage(),      // Index 2
    const SettingsPage(),     // Index 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter TV'),
        backgroundColor: Colors.green,
      ),
      body: _pages[_currentIndex], // Switches view based on tap
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Welcome Home"));
  }
}
