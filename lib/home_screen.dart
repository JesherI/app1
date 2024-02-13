import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  TextEditingController counterTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    counterTxt.text = counter.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 2'),
        elevation: 30,
        backgroundColor: const Color.fromARGB(197, 91, 205, 240),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            separador(15.0),
            titulo(),
            separador(35.0),
            creditos(),
            separador(60.0),
            contador(),
          ],
        ),
      ),
      floatingActionButton: botones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Row botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
          foregroundColor: Colors.amber,
          backgroundColor: Colors.blue,
          onPressed: () {
            counter--;
            counterTxt.text = counter.toString();
          },
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          foregroundColor: Colors.amber,
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            counter = 0;
            counterTxt.text = counter.toString();
          },
          child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          foregroundColor: Colors.amber,
          backgroundColor: Colors.red,
          onPressed: () {
            counter++;
            counterTxt.text = counter.toString();
          },
          child: const Icon(Icons.plus_one),
        ),
      ],
    );
  }

  SizedBox separador(double alto) {
    return SizedBox(
      height: alto,
    );
  }

  Row creditos() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Developer',
          style: TextStyle(
            fontSize: 20.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Jesher Mendieta ',
          style: TextStyle(
            fontSize: 28.5,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 88, 3, 74),
          ),
        ),
      ],
    );
  }

  Text titulo() {
    return const Text(
      'Contador de taps',
      style: TextStyle(
        color: Colors.amber,
        fontSize: 20.5,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget contador() {
    return SizedBox(
      width: 350,
      child: TextField(
        controller: counterTxt,
        enabled: false,
        keyboardType: TextInputType.number,
        maxLength: 6,
        cursorColor: Colors.red,
        style: const TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 154, 76, 159)
        ),
        //cursorRadius: const Radius.elliptical(10.0, 15.0),
        //cursorWidth: 16.0,
        //obscureText: true, ocurece el texto
        //maxLines: 3, expane el TextField 3 lineas
        decoration: const InputDecoration(
          // icon: CircularProgressIndicator(),
          prefixIcon: Icon(Icons.numbers),
          prefixIconColor: Colors.blueAccent,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.blueGrey)),
        ),
      ),
    );
  }
}
