import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo 4 Pantallas',
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 11, 94),
      appBar: AppBar(title: Text('Login',
        style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 24,
          fontWeight: FontWeight.bold,
      ),),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 4, 36, 3),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 255, 255), )),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder(), labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)))),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder(), labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)))),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Menu())),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 11, 94),
      appBar: AppBar(title: Text('Menú',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Home())),
              child: Text('Home'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Lista_products())),
              child: Text('Ver lista de productos'),
            ),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Registrar_producto())),
              child: Text('Agregar producto'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Login())),
              child: Text('Logout'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 11, 94),
      appBar: AppBar(title: Text('Preguntas frecuentes',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Pregunta 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255))),
            Text('Respuesta 1', style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255))),
            Text('Pregunta 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255))),
            Text('Respuesta 2', style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255))),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Volver'),
            )],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}

class Lista_products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 11, 94),
      appBar: AppBar(title: Text('List View',
        style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 24,
          fontWeight: FontWeight.bold,
      ),),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('Producto 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255) )),
            Text('Producto 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255) )),
            Text('Producto 3', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255) )),
            Text('Producto 4', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255) )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Volver'),
              )],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}

class Registrar_producto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 11, 94),
      appBar: AppBar(title: Text('Registro de productos',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Registro de productos', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255))),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: 'Nombre del producto', border: OutlineInputBorder(), labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)))),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: 'Precio del producto', border: OutlineInputBorder(), labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)))),
            SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Volver'),
                ),],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}
