import 'package:flutter/material.dart';
import 'spesifiklowongan.dart';

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class DetailLowongan extends StatelessWidget {
  final String title;
  final String posisi;
  final String gaji;
  final String umur;
  final String pendidikan;
  final String jenkel;
  final String path;
  final String deskripsi;

  DetailLowongan({this.title, this.posisi, this.gaji, this.umur, this.pendidikan, this.jenkel, this.path, this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Text("Lowongan Kerja"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              posisi,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Hero(tag: title, child: Image.asset(path)),
            SizedBox(height: 10),
            Text(
              'DETAIL',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpesifikLowongan(
                  name: 'Pendidikan',
                  name2: pendidikan,
                ),
                SpesifikLowongan(
                  name: 'Jenis Kelamin',
                  name2: jenkel,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpesifikLowongan(
                  name: 'Gaji',
                  name2: gaji,
                ),
                SpesifikLowongan(
                  name: 'umur',
                  name2: umur,
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                deskripsi,
                textDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                _showSimpleDialog(context);
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.deepPurple[900],
              child: Text(
                'Lamar',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
