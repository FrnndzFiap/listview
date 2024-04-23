import 'package:flutter/material.dart';
import 'package:listview/Contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Contato> contatos = [
      Contato(nome: 'Jorge amado', subtitulo: 'jorgeamado@gmail.com'),
      Contato(nome: 'Maria Antonia', subtitulo: 'mariaantonia@gmail.com'),
      Contato(nome: 'Cleber Jonto', subtitulo: 'cleberjonto@gmail.com'),
      Contato(nome: 'Joana Limeira', subtitulo: 'joanalimeira@gmail.com'),
      Contato(nome: 'Carlso Casstro', subtitulo: 'carlsocasstro@gmail.com'),
      Contato(nome: 'Julio Serteiro', subtitulo: 'julioserteiro@gmail.com'),
    ];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview builder'),  
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                child: 
                Text(contatos[index].nome.characters.first),
                ),
              title: Text(contatos[index].nome),
              subtitle: Text(contatos[index].subtitulo),  
            );
          }
        )
      );
  }
}
