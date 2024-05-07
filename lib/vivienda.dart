//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:nevarez/drawer_menu.dart';

class Vivienda extends StatefulWidget {
  static const String routeName = '/vienda';

  @override
  State<Vivienda> createState() => _ViviendaState();
}

class _ViviendaState extends State<Vivienda> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController idUbiController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController idProvController = TextEditingController();
  TextEditingController idEmplController = TextEditingController();
  TextEditingController tipoViController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro \nde Vivienda'),
      ),
      drawer: DrawerMenu(),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Id'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id de vivienda',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Id Ubicacion'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idUbiController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id de ubicacion',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Id proveedor'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProvController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del poveedor',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Id empleado'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idEmplController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del empleado',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Nombre de Vivienda'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el nombre de vivienda',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Tipo de Vivienda'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: tipoViController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el tipo de vivienda',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Direccion'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: direccionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la direccion de la vivienda',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Precio'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el precio',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos de vivienda se registraron con exito');
                  print('Id de vivienda: ' + idController.text);
                  print('Id de ubicacion: ' + idUbiController.text);
                  print('Id de proveedor: ' + idProvController.text);
                  print('Id de empleado: ' + idEmplController.text);
                  print('Nombre de vivienda: ' + nombreController.text);
                  print('Tipo de vivienda: ' + tipoViController.text);
                  print('Direccion: ' + direccionController.text);
                  print('Precio: ' + precioController.text);
                },
                child: Text(
                  'Registrar',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
