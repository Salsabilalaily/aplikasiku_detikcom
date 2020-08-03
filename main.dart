import 'package:flutter/material.dart';

class HalamanPertama extends StatefulWidget {
  @override
  _HalamanPertamaState createState() => _HalamanPertamaState();
}
class _HalamanPertamaState extends State<HalamanPertama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('detikcom'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Home'),
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
              ),
              Divider(),
              ListTile(
                title: Text('Layanan'),
                leading: CircleAvatar(
                  child: Icon(Icons.add_alert),
                ),
              ),
              Divider(),
              ListTile(
                title: Text('Kategori'),
                leading: CircleAvatar(
                  child: Icon(Icons.widgets),
                ),
              ),
              Divider(),
              ListTile(
                title: Text('Video'),
                leading: CircleAvatar(
                  child: Icon(Icons.video_library),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class HalamanKedua extends StatefulWidget {
  @override
  _HalamanKeduaState createState() => _HalamanKeduaState();
}
class _HalamanKeduaState extends State<HalamanKedua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home), text: 'Home',),
                Tab(icon: Icon(Icons.add_alert), text: 'Layanan',),
                Tab(icon: Icon(Icons.widgets), text: 'Kategori',),
                Tab(icon: Icon(Icons.video_library), text: 'Video',),
          ]),
          body: TabBarView(
              children: <Widget>[
                Center(child: Text("Halaman Home"),),
                Center(child: Text("Halaman Layanan"),),
                Center(child: Text("Halaman Kategori"),),
                Center(child: Text("Halaman Video"),)
          ]),
        ),
      ),
    );
  }
}




