import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  
  Image _profile = Image(
    image: AssetImage('images/st.jpeg'),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
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
            ],
          ),
        ),
      ),
    );
  }
}
