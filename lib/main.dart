import 'package:flutter/material.dart';
import 'package:ft_widget/Pdetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // final person = List<String>.generate(20, (i) => 'Mahasiswa #${i + 1}');
  static List<String> person = [
    'Reski',
    'Radinal',
    'Suhail',
    'Roy Jorghi',
    'Heril',
    'Paris',
    'Sukman',
    'Yusran',
    'Tamrin',
    'Wahyu',
    'Afdal'
  ];

  static List<String> aset = [];
  final profil = Image.asset('image/img1.png');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('MyList')),
        body: ListView.builder(
          itemCount: person.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  child: Image.asset(
                    'images/img1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                trailing: const Icon(Icons.arrow_right_alt),
                title: Text(person[index]),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Pdetail(
                      index: person[index],
                    ),
                  ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
