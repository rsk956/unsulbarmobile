import 'package:flutter/material.dart';
import 'package:ft_widget/main.dart';

class Pdetail extends StatelessWidget {
  final index;
  const Pdetail({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Detail $index')),
        body: ListView(
          children: [
            Container(
              child: Image.asset('images/img1.png'),
            ),
            Container(
              height: 100,
              child: ListTile(
                title: Text('Nama : $index'),
                subtitle: Text('Mahasiswa Unsulbar angkatan 2019'),
              ),
            ),
            Container(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.defaultRouteName;
                  },
                  icon: Icon(Icons.send),
                  label: Text('chat')),
            )
          ],
        ));
  }
}
