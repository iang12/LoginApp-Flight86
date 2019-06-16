import 'package:flutter/material.dart';
import 'home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Wrap(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(200.0)),
                child: Container(
                  color: Colors.yellow[700],
                  height: 70.0,
                  width: 130.0,
                ),
              ),
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(400.0),
                        bottomRight: Radius.circular(500.0),
                      ),
                      child: Container(
                        color: Colors.green,
                        height: 130.0,
                        width: 60.0,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      Icon(Icons.flight_takeoff,size: 80.0, color: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Flight',
                        style: TextStyle(fontSize: 40.0, color: Colors.grey),
                      ),
                      Text(
                        '86',
                        style:
                            TextStyle(fontSize: 40.0, color: Colors.green[600]),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.grey[700]),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'EMAIL',
                              hintText: 'labs@gmail.com',
                              labelStyle: TextStyle(color: Colors.grey[500]),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              icon: Text(
                                '@',
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.orange[700]),
                              )),
                        ),
                        Divider(
                          color: Colors.grey[300],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'SENHA',
                            hintText: '*****************',
                            labelStyle: TextStyle(color: Colors.grey[500]),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.orange[700],
                              size: 30.0,
                            ),
                          ),
                          obscureText: true,
                        ),
                        Divider(
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                                child: Container(
                                width: 320.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: new Center(
                                  child: Text(
                                    'Login',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(50.0)),
                        child: new Center(
                          child: Text(
                            'Gmail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50.0)),
                        child: new Center(
                          child: Text(
                            'Facebook',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 20.0,
                  ),
                  Text('Esqueceu a Senha?',style: TextStyle(
                    color: Colors.orange,
                    fontWeight:FontWeight.bold
                  ),),
                ],
              ),
            ],
          )
        
        ],
      ),
    );
  }
}
