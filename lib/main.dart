import 'package:flutter/material.dart';

void main() => runApp(CarrascoApp());

class CarrascoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'David Carrasco',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin de materialApp
  } //fin del widget
} //fin de class CarrascoApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //fin de clase ingreso sistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //fin accion widget []
        title: Text('sistema Carrasco'),
      ), //fin de appBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/foto.PNG'),
                SizedBox(height: 16.0),
              ],
            ),
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.amber,
                      labelText: 'Usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Cancelar'),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ), //fin de FlatButton
                        RaisedButton(
                          child: Text(
                            'Siguiente',
                          ),
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ), //fin de raisedButton
                      ], //fin de children widget []
                    ), //fin del child Row
                  ) //fin de padding
                ], //fin del widget []
              ) //fin columna
            //if verdadero
            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text('Igresaste al sistema'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Cerrar sesion'),
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    ) //fin de  oton sobresaliente
                  ], //fin de niño widget
                ),
              ) // if falso
          ], //fin de widget
        ), //fin de listView
      ), //fin de area segura
    ); //fin de scaffold
  } //fin de widget
} //fin de clase _IngresoSistema
