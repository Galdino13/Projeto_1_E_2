import 'dart:html';
import 'app_controller.dart';
import 'app_widget.dart';
import 'home_page.dart';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 0;
  var c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset('assets/images/ben.png'),
                accountName: Text("Nome do Usuario"),
                accountEmail: null,
              ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Inicio'),
                  subtitle: Text('tela de inicio'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                    ;
                  }),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Logout'),
                  subtitle: Text('Finalizar sessão'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  }),
              ListTile(
                  leading: Icon(Icons.numbers),
                  title: Text('Contador'),
                  subtitle: Text("Ver alienigenas"),
                  onTap: () {
                    Navigator.of(context).pushNamed('/contador');
                  })
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Contador"),
          actions: [
            CustomSwitch(),
          ],
        ),
        backgroundColor: Color(0xff00a3ff),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/image' + "$c" + '.png'),
              //fit:BoxFit.cover,
            )),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Some ou diminua",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    "$count",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      onPressed: () {
                        setState(() {
                          count--;
                          if (count >= 10 || count < 0) {
                            c = 0;
                          } else {
                            c = count;
                          }
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            count++;
                            if (count >= 10 || count < 0) {
                              c = 0;
                            } else {
                              c = count;
                            }
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ))
                  ])
                ])));
  }
}
