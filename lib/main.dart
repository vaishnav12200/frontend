import 'package:flutter/material.dart';
import 'pages/settings_page.dart';
import 'pages/profile_page.dart';
import 'pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text('flutter'), 
  backgroundColor: Colors.green,
  actions: [
    IconButton(
      onPressed: () {
        debugPrint('Notifications clicked');
      },
      icon: const Icon(Icons.notifications),
    ),
  ],
),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floating action button  ');
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
      
      bottomNavigationBar: NavigationBar(
        destinations:const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
],
         onDestinationSelected: (int index){
          setState(() {
            _counter = index;           
          });
          if (index == 1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
            debugPrint('search clicked');
          }
          if (index == 2){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
         
         if (index == 3){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SettingsPage()),
          );
         }
         },
         selectedIndex: _counter,
      ),
      body:Column(
        children: [
      Padding(
        padding: EdgeInsets.only(top:20.0),
      
    ),
    const SizedBox(height: 20),
    Container(
      width:200,
      height:100,
     padding: EdgeInsets.all(20.0),
     decoration: BoxDecoration(
      color: const Color.fromARGB(255, 103, 100, 96),
      borderRadius: BorderRadius.circular(20.0)
     ),
     child:const Center(child:Text("i am vaish")) 
    ),
    const SizedBox(height: 20),
    Container(
      width: 200,
      height: 100,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Flutter Container 2',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    ),
    ],
      )
    );
  }
}
