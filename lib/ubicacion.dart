//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:nevarez/drawer_menu.dart';

class Ubicacion extends StatefulWidget {
  static const String routeName = '/ubicacion';

  @override
  State<Ubicacion> createState() => _UbicacionState();
}

class _UbicacionState extends State<Ubicacion> {
  //create the controllers
  TextEditingController estadoController = TextEditingController();
  TextEditingController ciudadController = TextEditingController();
  TextEditingController paisController = TextEditingController();
  TextEditingController cpController = TextEditingController();
  TextEditingController zhController = TextEditingController();
  TextEditingController coloniaController = TextEditingController();
  TextEditingController nomCalleController = TextEditingController();
  TextEditingController numCalleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro \nde Ubicacion'),
      ),
      drawer: DrawerMenu(),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Estado'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: estadoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el estado',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Pais'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: paisController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el pais',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Ciudad'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: ciudadController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la ciudad',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Codigo Postal'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cpController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el codigo postal',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Zona Horaria'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: zhController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la zona horaria',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Colonia'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: coloniaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la colonia',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre de Calle'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nomCalleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el nombre calle',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Numero de calle'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: numCalleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el numero de calle',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos de ubicacion se registraron con exito');
                  print('Estado: ' + estadoController.text);
                  print('Ciudad: ' + ciudadController.text);
                  print('Pais: ' + paisController.text);
                  print('Codigo Postal: ' + cpController.text);
                  print('Zona Horaria: ' + zhController.text);
                  print('Colonia: ' + coloniaController.text);
                  print('Nombre de calle: ' + nomCalleController.text);
                  print('Numero de calle: ' + numCalleController.text);
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
