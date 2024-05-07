//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:nevarez/drawer_menu.dart';

class Empleado extends StatefulWidget {
  static const String routeName = '/empleado';

  @override
  State<Empleado> createState() => _EmpleadoState();
}

class _EmpleadoState extends State<Empleado> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController nombreCompController = TextEditingController();
  TextEditingController ciudadController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController numeroSeguroController = TextEditingController();
  TextEditingController rfcController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro \nde Empleado'),
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
                  hintText: 'Ingresa tu id',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu nombre',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre de Compañia'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreCompController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el nombre de tu compañia',
                ),
              ),
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
                  hintText: 'Ingresa la ciudad de la compañia',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Telefono'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: telefonoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu telefono',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Correo'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: correoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu correo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Numero de Seguro'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: numeroSeguroController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu numero de seguro',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('RFC'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: rfcController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu rfc',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos del empleado se registraron con exito');
                  print('Id: ' + idController.text);
                  print('Nombre: ' + nombreController.text);
                  print('Nombre de la Compañia: ' + nombreCompController.text);
                  print('Ciudad de la Compañia: ' + ciudadController.text);
                  print('Telefono: ' + telefonoController.text);
                  print('Correo: ' + correoController.text);
                  print('Numero de Seguro: ' + numeroSeguroController.text);
                  print('RFC: ' + rfcController.text);
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
