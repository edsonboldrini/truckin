import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:truckin/app/modules/shared/utils/styles.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.orangePrimary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text('Mapa'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text('Adicionar rota'),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.star),
          //   title: Text('Favoritos'),
          // ),
        ],
      ),
    );
  }
}
