import 'package:flutter/material.dart';
import 'package:nevarez/cliente.dart';
import 'package:nevarez/empleado.dart';
import 'package:nevarez/proveedor.dart';
import 'package:nevarez/ubicacion.dart';
import 'package:nevarez/vivienda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String cliente = Cliente.routeName;
  static const String empleado = Empleado.routeName;
  static const String proveedor = Proveedor.routeName;
  static const String ubicacion = Ubicacion.routeName;
  static const String vivienda = Vivienda.routeName;
  //static const String row_cinco = Row_cinco.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        cliente: (context) => Cliente(),
        empleado: (context) => Empleado(),
        proveedor: (context) => Proveedor(),
        ubicacion: (context) => Ubicacion(),
        vivienda: (context) => Vivienda(),
        //  row_cinco: (context) => Row_cinco(),
      },
      home: Cliente(),
    );
  }
}
