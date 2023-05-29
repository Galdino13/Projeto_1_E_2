import 'package:flutter/material.dart';
import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build: TODO> IMPLEMENT BUILD
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
                  print('home');
                }),
            ListTile(
                leading: Icon(Icons.account_circle_rounded),
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
        title: Text("HOME"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          //scrollDirection: Axis.vertical,
          children: [
            Text(
              'Hello, How are you?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Image(image: AssetImage('assets/images/image0.png'))
            //fit:BoxFit.cover,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState() {
            counter++;
          }
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
