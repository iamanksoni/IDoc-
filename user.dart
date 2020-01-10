import 'package:IDoc/imageViewer.dart';
import 'package:flutter/material.dart';
import 'package:IDoc/authentication.dart';

class UserPage extends StatefulWidget {

  UserPage ({
    this.auth,
    this.onSignedOut,
  });

  static int num = 0;

  final AuthImplementation auth;
  final VoidCallback onSignedOut;


  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {


  void _logoutUser() async
  {
    try 
    {
      await widget.auth.signOut();
      widget.onSignedOut();
    } 
    catch (e) 
    {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Important Docs"),
        actions: <Widget>[
          MaterialButton(
            onPressed: _logoutUser,
            child: Row(
              children: <Widget>[
                Icon(Icons.person, size: 26,),
                Text("LogOut",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // 1st box PanCard
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.pink,
                          Colors.red,
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/pancard.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("Pancard",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 1;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
                
                // 2nd box AadharCard
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.blueAccent[200],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/aadharcard.png",
                            height: 120,
                            width: 120,
                          ),
                          Text("Aadhar Card",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 2;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
                
                // 3rd box 10th markSheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow[600],
                          Colors.yellow[400],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/10marks.png",
                            height: 130,
                            width: 120,
                          ),
                          Text("10th Marks",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 3;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
                
                // 4th box 12th markSheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.green[400],
                          Colors.green[600],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/12marks.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("12th Marks",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 4;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
                
                // 5th box 1st semMarksheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange[500],
                          Colors.orange[700],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/1sem.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("1st Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 5;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              
                SizedBox(
                  height: 45,
                ),
              
              // 6th box 2nd semMarksheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.teal[500],
                          Colors.teal[700],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/2sem.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("2nd Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 6;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
              

              // 7th box 3rd semMarksheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.amber[500],
                          Colors.amber[700],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/3sem.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("3rd Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 7;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
              
                // 8th box 4th semMarksheet

                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.grey[500],
                          Colors.grey[700],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/4sem.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("4th Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 9;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
              

                // 9th box 5th semMarksheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.indigo[500],
                          Colors.indigo[700],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.indigo,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/5sem.png",
                            height: 120,
                            width: 120,
                          ),
                          Text("5th Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 9;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
              

                // 10th box 6th semMarksheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.limeAccent,
                          Colors.limeAccent[700],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.limeAccent,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/6sem.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("6th Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 10;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
              

                // 11th box 7th semMarksheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.cyan[500],
                          Colors.cyan[700],
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/7sem.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("7th Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 11;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),
              

                // 12th box 8th semMarksheet
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.brown[500],
                          Colors.brown,
                        ],
                        begin: (Alignment.topLeft),
                        end: (Alignment.bottomRight),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/8sem.png",
                            height: 150,
                            width: 120,
                          ),
                          Text("8th Sem",
                              style: new TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, .9),
                                    blurRadius: 4,
                                  )
                                ],
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 140,
                              child: MaterialButton(
                                onPressed: () {
                                  UserPage.num = 12;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => ImageViewer(),
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.green[800],
                                        Colors.green[600],
                                      ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 45,
                              width: 160,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.file_download,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
