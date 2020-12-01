import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Suma de dos números';

    return MaterialApp(
      title: appTitle,
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
            centerTitle: true,
          ),
          body: AddTwoNumbers(),
        ),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Número 1:  ",
                style: TextStyle(fontSize: 20),
              ),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Número 2:  ",
                style: TextStyle(fontSize: 20),
              ),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num2controller,
                ),
              ),
              Text("\n\n\n\n"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("SUMAR"),
                onPressed: () {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Resultado: ",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                result,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
