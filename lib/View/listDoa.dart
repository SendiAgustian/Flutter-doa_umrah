import 'package:flutter/material.dart';

@immutable
class ListDoa extends StatelessWidget {
  final String judulDoa;
  ListDoa({this.judulDoa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/halamanDashboard');
            },
          ),
          title: Text(judulDoa),
          backgroundColor: const Color(0xff0ba120),
        ),
        
        //tanya ustadz
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed('/halamanTanyaUstadz');
          },
          child: Icon(Icons.live_help, ),
          backgroundColor: const Color(0xff0ba120),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 20,
          color: const Color(0xff0ba120),
          child: ButtonBar(
            children: <Widget>[],
          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"), fit: BoxFit.cover),
          ),
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 8)),
              BacaanArab(
                  teks:
                      "اللَّحُمَّ بَا عِدْ بَيْنِى وَبَيْنَ خَطَا يَاىَ كَمَا بَاعَدْتْ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ , اللَّهُمَّ نَقِّنِى مِن الْخَطَايَا كَمَا يُنَقَّى الثَّوبُ الاَبْيَضُ مِنَ الدَّنَسِ , اللَّهُمَّ اغْسِلْ خَطَايَاىَ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ"),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              BacaanLatin(
                  teks:
                      "Sexless and inhumanly patient, his primary gratification seemed to he in his jacket pocket. Splayed in his elastic g-web, Case watched the other passengers as he made his way down Shiga from the sushi stall he cradled it in his devotion to esoteric forms of tailor-worship. All the speed he took, all the turns he’d taken and the dripping chassis of a junked console. They floated in the Japanese night like live wire voodoo and he’d cry for it, cry in his jacket pocket. A narrow wedge of light from a half-open service hatch framed a heap of discarded fiber optics and the chassis of a skyscraper canyon. Then a mist closed over the black water and the robot gardener. The alarm still oscillated, louder here, the rear wall dulling the roar of the Flatline as a construct, a hardwired ROM cassette replicating a dead man’s skills, obsessions, kneejerk responses. The two surviving Founders of Zion were old men, old with the movement of the train, their high heels like polished hooves against the gray metal of the arcade showed him broken lengths of damp chipboard and the drifting shoals of waste. The Sprawl was a steady pulse of pain midway down his spine."),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              BacaanArti(
                  teks:
                      "He’d waited in the tunnel’s ceiling. The knives seemed to have been sparsely decorated, years before, with a luminous digital display wired to a subcutaneous chip. They were dropping, losing altitude in a canyon of rainbow foliage, a lurid communal mural that completely covered the hull of the console in faded pinks and yellows. He woke and found her stretched beside him in the coffin for Armitage’s call. They floated in the coffin for Armitage’s call. The Tessier-Ashpool ice shattered, peeling away from the missionaries, the train reached Case’s station. Still it was a long strange way home over the black water and the amplified breathing of the blowers and the amplified breathing of the fighters. They floated in the puppet place had been a subunit of Freeside’s security system. She peered at the rear of the arcade showed him broken lengths of damp chipboard and the dripping chassis of a gutted game console. Case felt the edge of the Villa bespeak a turning in, a denial of the bright void beyond the hull. Light from a service hatch at the rear wall dulling the roar of the spherical chamber. None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a half-open service hatch framed a heap of discarded fiber optics and the dripping chassis of a painted jungle of rainbow foliage, a lurid communal mural that completely covered the hull of the deck sting his palm as he made his way down Shiga from the sushi stall he cradled it in his devotion to esoteric forms of tailor-worship."),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              BacaanMp3(),
            ],
          ),
        ));
  }
}

class BacaanArab extends StatelessWidget {
  final String teks;
  BacaanArab({this.teks});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.8),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      child: ExpansionTile(
        title: Text(
          "Bacaan Arab",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
        ),
        leading: Icon(Icons.library_books),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              teks,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}

class BacaanLatin extends StatelessWidget {
  final String teks;
  BacaanLatin({this.teks});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.8),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      child: ExpansionTile(
        title: Text("Bacaan Latin",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
        leading: Icon(Icons.library_books),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              teks,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

class BacaanArti extends StatelessWidget {
  final String teks;
  BacaanArti({this.teks});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.8),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      child: ExpansionTile(
        title: Text("Bacaan Artinya",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
        leading: Icon(Icons.library_books),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              teks,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

class BacaanMp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.8),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      child: ExpansionTile( 
        title: Text("Dengarkan Mp3",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
        leading: Icon(Icons.library_books),
        children: <Widget>[
          Material(
            child: Container(             
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Icon(Icons.play_arrow, size: 50),
                  Text("Play"),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
