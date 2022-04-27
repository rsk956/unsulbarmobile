import 'package:flutter/material.dart';
import 'package:rsk_widget2/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reski Gridview & Button Navbar",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedItem = 0;
  var _pages = [FirstPage(), SecondPage(), ThirdPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reski-Belajar Widget flutter"),
        ),
        body: Center(
          child: _pages[_selectedItem],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting")
          ],
          currentIndex: _selectedItem,
          onTap: (index) {
            setState(() {
              _selectedItem = index;
            });
          },
        ));
  }
}
