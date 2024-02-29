import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Ejemplo TabBar Angel Guerrero",
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: MiPaginaInicial());
  }
} //fin AppMiTabBar

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Angel Guerrero"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "INICIO",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "CUENTA",
                icon: Icon(Icons.verified_user),
              ),
              Tab(
                text: "VENTA",
                icon: Icon(Icons.shopping_bag),
              ),
              Tab(
                text: "AJUSTES",
                icon: Icon(Icons.settings),
              ),
            ], //fin de tabs
          ), //fin buttontabb
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Chivas BEE BEE CHIVAS:)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Tu Cuenta",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Compra",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Tu Configuracion",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ]), //JARIN DE NINOS
      ),
    );
  } //fin widgets
} //_MiPaginaInicialState
