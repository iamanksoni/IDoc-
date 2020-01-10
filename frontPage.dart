import 'package:flutter/material.dart';
import 'authentication.dart';


class HomePage extends StatefulWidget {

  HomePage({
    this.auth,
    this.onSignedIn,
  });

  final AuthImplementation auth;
  final VoidCallback onSignedIn;

  @override
  _HomePageState createState() => _HomePageState();
 
}

class _HomePageState extends State<HomePage> {

  final formKey = new GlobalKey<FormState>();
  
  String _email = "";
  String _password = "";

  //methods
  bool validateAndSave()
  {
    final form = formKey.currentState;
    if(form.validate())
    {
      form.save();
      return true;
    }
    else
    {
      return false;
    }
  }


  void validateAndSubmit() async
  {
    if(validateAndSave())
    {
      try 
      {
        String userId = await widget.auth.SignIn(_email, _password);
        print("Login User id " + userId);

        widget.onSignedIn();
      } 
      catch (e) 
      {
        print("Error = " + e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container( 
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue[400],
                Colors.blue[600],
                Colors.blue[500],
              ]),
        ),
        child: Form(
          key: formKey,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Personal Use", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,)),
              ),
              SizedBox(height: 80,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .5),
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17,),
                    decoration: InputDecoration(
                      labelText: "Username",
                      border: InputBorder.none,
                    ),
                    validator : (value)
                    {
                      return value.isEmpty ? "Email is required." : null;
                    },

                    onSaved: (value)
                    {
                      return _email = value;
                    },
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .5),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17,),
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: InputBorder.none,
                    ),
                    validator : (value)
                    {
                      return value.isEmpty ? "Password is required." : null;
                    },

                    onSaved: (value)
                    {
                      return _password = value;
                    },
                    obscureText: true,
                  ),
                ),
              ),


              SizedBox(
                height: 40,
              ),

              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
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
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 50,
                  width: 150,
                  child: MaterialButton(
                    onPressed: validateAndSubmit,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.lock,),
                        Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),)
                      ],
                    ),
                  )
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.format_list_bulleted, color: Colors.yellow,),
                  SizedBox(width: 10,),
                  Text("Welcome to IDoc", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,),)
                ],
              )

            ],
          ),
          ),
        )
      ),
      ),
    );
  }
}
