
// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors, avoid_unnecessary_containers, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:todo/models/item.dart';


class HomePage extends StatefulWidget {

  List<Item> items = <Item>[];

  HomePage() {
    items = [];
    items.add(Item(title: "Banana", done: false));
    items.add(Item(title: "Café", done: true));
    items.add(Item(title: "Laranja", done: false));
  }


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo List"
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index){
          final  item = widget.items[index];

          return Center(
            child: CheckboxListTile(
              title: Text(item.title),
              key: Key(item.title),
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value!;
                });
              },
            )
          );
        },
      )
    );
  }
}
