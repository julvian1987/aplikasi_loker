import 'package:flutter/material.dart';
import 'detaillowongan.dart';
import 'homescreen.dart';
import 'itemlowongan.dart';
import 'profil.dart';

class Lowongan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Jobsplace'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              var route = new MaterialPageRoute(
                builder: (context) => profil(),
              );
              Navigator.of(context).push(route);
            },
          ),
        ],
      ),
      body: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: allJobs.jobs.length,
        itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => DetailLowongan(
                    title: allJobs.jobs[i].title,
                    jenkel: allJobs.jobs[i].jenkel,
                    pendidikan: allJobs.jobs[i].pendidikan,
                    posisi: allJobs.jobs[i].posisi,
                    path: allJobs.jobs[i].path,
                    umur: allJobs.jobs[i].umur,
                    gaji: allJobs.jobs[i].gaji,
                    deskripsi: allJobs.jobs[i].deskripsi,
                  ),
                ),
              );
            },
            child: Container(
                height: 1000,
                margin: EdgeInsets.only(top: i.isEven ? 0 : 5, bottom: i.isEven ? 5 : 0),
                decoration: BoxDecoration(color: Colors.deepPurple[900], boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 1)
                ]),
                child: Column(
                  children: [
                    Hero(tag: allJobs.jobs[i].title, child: Image.asset(allJobs.jobs[i].path)),
                    SizedBox(height: 20),
                    Text(
                      allJobs.jobs[i].title,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      (allJobs.jobs[i].posisi).toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Terbaru',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                )),
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
      ),
    );
  }
}
