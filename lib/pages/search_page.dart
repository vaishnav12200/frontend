import 'search_page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SearchBar(
          leading: const Icon(Icons.search),
          backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 221, 154, 9)),
          hintText: 'Search',
          onChanged: (String value) {
            debugPrint('Search query: $value');
          },
        ),
      ),
    );
  }
}