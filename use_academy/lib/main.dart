import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
  
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Use Academy'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.book)),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0))),
      ),
      drawer: Drawer(
        child: Column(),
      ),
      backgroundColor: Colors.cyan,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[800],
        onTap: (value) => debugPrint(value.toString()),
        items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Início',
              activeIcon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Sacola',
            )],      
      ),

      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyContainer(),
            MyContainer(),
            MyContainer(),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: const EdgeInsets.all(24.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple[400],
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.4),
            offset: Offset(4.0, 4.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Icon(Icons.home),
         Expanded(
           child: Text(
           'Container',
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           textAlign: TextAlign.center,
           style: GoogleFonts.poppins(
             fontSize: 20.0,
             color: Colors.white,
             fontWeight: FontWeight.bold,
             
           ),
         ),
         ),
         Icon(Icons.home),

        ],
      ),
    );
  }
}
