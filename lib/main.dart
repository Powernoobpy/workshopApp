import 'package:flutter/material.dart';
import './event.dart';
import 'package:getwidget/getwidget.dart';

void main(List<String> args) {
  runApp(Workshop());
}

class Workshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Event Counter", home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  final List<Event> eventlist = [
    Event(id: 'e1', title: 'HBD', date: DateTime.now()),
    Event(id: 'e2', title: 'rod chon', date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EventCounter'),
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      body: Column(
          children: eventlist.map((e) {
        return GFCard(
          title: GFListTile(
            title: Text(e.title),
            subTitle: Text(e.id),
          ),
        );
      }).toList()),
    );
  }
}
