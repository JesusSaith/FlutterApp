import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleRegistration(BuildContext context) {
    // Tu función de registro existente
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange, // Cambiar el color de fondo de la página de registro
      appBar: AppBar(
        title: Text(
          'Registro',
          style: TextStyle(
            color: Colors.white, // Cambiar el color del texto del título
            fontSize: 24, // Cambiar el tamaño de la fuente del título
          ),
        ),
        backgroundColor: Colors.transparent, // Hacer que la barra de navegación sea transparente
        elevation: 0, // Eliminar la sombra de la barra de navegación
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  labelStyle: TextStyle(color: Colors.white), // Cambiar el color del texto de la etiqueta
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Cambiar el color del borde del campo de texto
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white, // Cambiar el color del ícono
                  ),
                ),
                style: TextStyle(color: Colors.white), // Cambiar el color del texto del campo de texto
              ),
              SizedBox(height: 10),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
                obscureText: true,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _handleRegistration(context),
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Cambiar el color de fondo del botón
                  padding: EdgeInsets.symmetric(vertical: 15), // Añadir espacio vertical
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
