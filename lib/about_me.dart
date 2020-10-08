import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

class About_me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputBMI()));
            },
          ),
          title: Text('Profil'),
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(130),
                  child: Image(
                    image: NetworkImage(
                        'https://instagram.fdps5-1.fna.fbcdn.net/v/t51.2885-19/s150x150/66226811_2326896540867382_5967752982144483328_n.jpg?_nc_ht=instagram.fdps5-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=TGIQHb58SOIAX95QAtG&oh=d89f5fb3e690f39c0b5cc53e54ff2a4d&oe=5FA77771'),
                    width: 100,
                    height: 100,
                  ),
                ),
                Text(
                  'I Gede Wira Dharma Putra',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    height: 1.2,
                  ),
                ),
                Text(
                  'wira.dharma@undiksha.ac.id',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ContainIcon(
                              0, 'UNDIKSHA', Icons.school, Colors.blueAccent),
                          ContainIcon(
                              13, 'Rock', Icons.music_note, Colors.blueAccent),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ContainIcon(0, 'Singaraja', Icons.location_on,
                              Colors.blueAccent),
                          ContainIcon(
                              13, 'PES', Icons.games, Colors.blueAccent),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon(this.atas, this.isi, this.icon, this.warna);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          border: Border.all(
            width: 3,
            color: Colors.blueAccent,
          ),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: warna,
            ),
            Container(
              color: Colors.blueAccent,
              margin: EdgeInsets.only(top: 14),
              width: 100,
              height: 20,
              child: TextBox(isi),
            ),
          ],
        ));
  }
}

class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        isi,
        style: TextStyle(height: 1.5, fontSize: 15, color: Colors.white),
      ),
    );
  }
}
