import 'package:doa_umrah/View/listDoa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget kategoriDoa(String judul, String ket) {
    return Container(
      child: Stack(
        children: <Widget>[
          Material(
            color: Colors.white.withOpacity(0.8),
            elevation: 14,
            borderRadius: BorderRadius.circular(24),
            child: Center(
                child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    judul,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "arial",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  Text(
                    ket,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: "arial",
                      color: Colors.black,
                    ),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                  Text(
                    "More...",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: "arial",
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            )),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => ListDoa(judulDoa: judul),
                )
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: const Color(0xff0ba120),
          actions: <Widget>[
            GestureDetector(
              child: Icon(Icons.more_vert),
              onTap: (){
              Navigator.of(context).pushReplacementNamed('/halamanKeluar');
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                child: StaggeredGridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  staggeredTiles: [
                    StaggeredTile.extent(2, 120),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                    StaggeredTile.extent(1, 200),
                  ],
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 120),
                    ),
                    kategoriDoa("Judul Do'a1",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a2",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a3",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a4",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a5",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a6",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a7",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a8",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a9",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a10",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a11",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                    kategoriDoa("Judul Do'a12",
                        "Case had never seen him wear the same suit twice, although his wardrobe seemed to consist entirely of meticulous reconstruction’s of"),
                  ],
                ),
              ),
              ClipPath(
                clipper: MyClipper1(),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    "Do'a - do'a\nUmrah",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "arial",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(color: const Color(0xff0ba120)),
                ),
              ),
            ],
          ),
        ));
  }
}

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 30);

    path.quadraticBezierTo(
        size.width / 4, size.height - 20, size.width / 2, size.height - 70);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 110,
        size.width, size.height - 100);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
