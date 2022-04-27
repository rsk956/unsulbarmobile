import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final List alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      children: <Widget>[
        GridView.count(
          padding: EdgeInsets.all(5),
          crossAxisSpacing: 1,
          mainAxisSpacing: 2,
          crossAxisCount: 3,
          children: List.generate(alphabet.length, (index) {
            return Container(
              child: Card(
                child: Center(
                  child: Text(
                    alphabet[index],
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20),
                  ),
                ),
                color: Colors.deepPurpleAccent,
              ),
            );
          }),
        ),
      ],
    ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color.fromARGB(255, 92, 163, 86),
            child: ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("Belajar widget flutter"),
              subtitle: Text("By Samaria"),
              trailing: Icon(Icons.chat),
              contentPadding: EdgeInsets.all(10),
              iconColor: Colors.white,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  final List alphabet = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GridView.count(
        crossAxisSpacing: 1,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        children: List.generate(
          alphabet.length,
          (index) {
            return Container(
              child: Card(
                child: Center(
                  child: Text(
                    alphabet[index],
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ),
                color: Colors.black54,
              ),
            );
          },
        ),
      ),
    ));
  }
}
