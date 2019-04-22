import 'package:flutter/material.dart';
// import 'dart:async';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> { 

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn();

  // Future <FirebaseUser> _signIn()async{
  //   GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  //   GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  
  //     FirebaseUser user = await _auth.signInWithCustomToken(
        
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: const Color(0xff0ba120),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
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
              Container(
                color: Colors.transparent,
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Center(
                  child: Material(  
                    color: const Color(0xff0ba120).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30),
                    child: MaterialButton(
                      // color: const Color(0xff0ba120).withOpacity(0.8),
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.edit, color: Colors.white,),
                          Padding(padding: EdgeInsets.only(right: 30)),
                          Text(
                            "Login With Google",
                            style: TextStyle(fontSize: 20, color: Colors.white)
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/halamanDashboard');
                      },
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
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
