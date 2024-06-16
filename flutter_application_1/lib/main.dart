import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Name(),
    );
  }
}

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Número de pestañas/tabulaciones
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PassGuards'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.key), text: 'Generar'),
              Tab(icon: Icon(Icons.remove_red_eye), text: 'Ver'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Content for Generar tab')),
            Center(child: Text('Content for Ver tab')),
          ],
        ),
      ),
    );
  }
}