import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Álcool ou Gasolina'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            const Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                'Saiba qual a melhor opção para o abastercimento do seu carro!',
                //textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço Álcool, ex: 5.678',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço Álcool, ex: 7.789',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //debugPrint('Valor digitado: ' + _textEditingController.text);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
              ),
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
