import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  static const String _phone = 'tel:+54 9 123 456-7890';
  static const String _mail = 'mailto:loremipsum@gmail.com?subject=MiCard&body=Hello%20World';
  

  void _launchPhone() async => await canLaunch(_phone) ? await launch(_phone) : throw 'Could not launch $_phone';
  void _launchMail() async => await canLaunch(_mail) ? await launch(_mail) : throw 'Could not launch $_mail';

  Image _profile = Image(
    image: AssetImage('images/st.jpeg'),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.teal[600],
      title: 'MiCard',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.teal,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(85, 0, 85, 0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            end: Alignment.topLeft,
                            colors: <Color>[
                              Colors.tealAccent[700],
                              Colors.teal[700],
                            ],
                          ),
                        ),
                        height: 150,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(63, 95, 63, 25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.tealAccent[700],
                              spreadRadius: 20,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(7),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: _profile.image,
                          backgroundColor: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                    child: Text(
                      'Benjamin Cimatti',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Text(
                    'JUNIOR SOFTWARE\nDEVELOPER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.teal[100],
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 200,
                      child: Divider(
                        color: Colors.teal[100],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    margin: EdgeInsetsDirectional.fromSTEB(60, 0, 60, 0),
                    child: ListTile(
                      visualDensity: VisualDensity.comfortable,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      onTap: (){
                        _launchPhone();
                      },
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[600],
                      ),
                      title: Text(
                        '+54 9 123 456-7890',
                        style: TextStyle(
                          color: Colors.teal[700],
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    margin: EdgeInsetsDirectional.fromSTEB(60, 25, 60, 0),
                    child: ListTile(
                      visualDensity: VisualDensity.comfortable,
                      dense: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      onTap: (){
                        _launchMail();
                      },
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal[600],
                      ),
                      title: Text(
                        'loremipsum@gmail.com',
                        style: TextStyle(
                          color: Colors.teal[700],
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
