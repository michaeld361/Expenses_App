import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now()),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 48.23,
      date: DateTime.now()),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Card(
          color:Colors.blue,
          child: Container(width: double.infinity, child: Text('Chart')),
          elevation: 5,
          ),
        Column(children: transactions.map((tx) {
          return Card(child: Row(children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical:10, horizontal:15),
                decoration: BoxDecoration(border: Border.all(color:Colors.purple, width: 2)),
                padding:EdgeInsets.all(10),
                child:Text(
                  tx.amount.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                    ),
                  ),
                ),
              Column(children: <Widget>[
                Text(tx.title),
                Text(tx.date.toString())
                ])
            ]));
          }).toList()),
        ])
    );
  }
}
