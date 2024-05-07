import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.attribution_rounded,
              text: 'Tabla Cliente',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.cliente)}),
          _buildDrawerItem(
              icon: Icons.badge_rounded,
              text: 'Tabla Empleado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.empleado)}),
          _buildDrawerItem(
              icon: Icons.location_on,
              text: 'Tabla Ubicacion',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.ubicacion)}),
          _buildDrawerItem(
              icon: Icons.admin_panel_settings_rounded,
              text: 'Tabla Provedor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.proveedor)}),
          _buildDrawerItem(
              icon: Icons.balcony_rounded,
              text: 'Tabla Vivienda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.vivienda)}),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Drawer Tablas",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
