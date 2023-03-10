import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Reset App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int a = 0;

  String _text1 = "Ganjil : ";
  String _text2 = "Genap Kelipatan 3 : ";
  String _text3 = "Prima : ";
  String percobaan = "Percobaan";
  String latihan = "Latihan";
  String tugas = "Tugas";

  void _incrementCounter() {
    setState(() {
      _counter++;

      //percobaan
      if(_counter%2 != 0){
        _text1 += '$_counter, ';
      }
      //end percobaan

      //latihan
      if(_counter%2 == 0){
        if(_counter%3 == 0){
          _text2 += '$_counter, ';
        }
      }
      //end latihan

      //tugas
      for(int i = 2; i <= _counter; i++){
        int bilangan = 0;
        for (var j = 1; j <= _counter; j++) {
          if(i%j == 0){
            bilangan = bilangan+1;
          }
        }
        if(bilangan==2 && bilangan != 0){
          _text3 += '${i}, ';
        }
      }

      // if(_counter%2 != 0 && _counter != 1){
      //   int prima = 0;
      //    if(_counter%3 != 0){
      //      _text3 += '$_counter, ';
      //    }
      //   // for(int i = 0; i < _counter; i++){
      //   //   for(int j = 2; j <= i/2; j++){
      //   //     if(i%j == 0){
      //   //       prima++;
      //   //     }
      //   //   }
      //   //   if(prima == 0){
      //   //     _text3 += '$i, ';
      //   //   }
      //   // }
      // }

      if(_counter == 2){
        _text3 += '$_counter, ';
      }
      // int prima = 0;
      //
      // for(int i = 0; i < _counter; i++){
      //   for(int angka = i; angka <= i; i++){
      //     if(i % _counter == 0){
      //       prima += 1;
      //     }
      //   }
      //   if(prima == 2){
      //     _text3 += '$prima, ';
      //   }
      // }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              percobaan,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              _text1,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              latihan,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text2,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              tugas,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text3,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
