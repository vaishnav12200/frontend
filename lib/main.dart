import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text('flutter'), backgroundColor: Colors.green),

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
         },
         selectedIndex: _counter,
      ),
      body:Column(
        children: [
      Padding(
        padding: EdgeInsets.only(top:20.0),
      child: SearchBar(
        leading: Icon(Icons.search),
        backgroundColor:WidgetStateProperty.all(const Color.fromARGB(255, 221, 154, 9)),
        hintText: 'Search',
        onChanged: (String value) {
          debugPrint('Search query: $value');
        },
      ),
    ),
    const SizedBox(height: 20),
    Container(
      width: 200,
      height: 100,
      color: Colors.green,
      child: const Center(
        child: Text(
          'Flutter Container',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
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
