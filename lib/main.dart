import 'package:flutter/material.dart';
import 'package:flutter_ui_assignment/recipes_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Color.fromARGB(255, 243, 242, 242), 
        useMaterial3: true, 
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
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white, 
        elevation: 0,
         actions: [
        IconButton(
          icon: Icon(Icons.search), 
          onPressed: () {
            debugPrint('Search More Recipes');
          }, ),
      ],
      ),
      
      body: const RecipesPage(),

floatingActionButton: FloatingActionButton(
  onPressed: () {
    debugPrint('Floating Menu Icon');
  },
  backgroundColor: Colors.lightBlueAccent,
  shape: const CircleBorder(), // Ensures it's perfectly round
  child: const Icon(
    Icons.restaurant,
    color: Colors.white,
  ),
),


      bottomNavigationBar: BottomNavigationBar(
  currentIndex: currentPage, 
  onTap: (int index) {
    setState(() {
      currentPage = index;
    });
  },
  backgroundColor: Colors.white,
  selectedItemColor: Colors.deepPurpleAccent,
  unselectedItemColor: Colors.grey,
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined) ,label: 'Recipes',    
    ),
    BottomNavigationBarItem(icon: Icon(Icons.star_outlined),label: 'Favourites',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.tag_faces_rounded),label: 'Food Joke',
    ),
  ],
),

    );
  }
}
