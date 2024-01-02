
// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors, avoid_unnecessary_containers, unused_import, unused_local_variable, sort_child_properties_last

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
  var newTaskCtrl = TextEditingController();

  void add() {
    if (newTaskCtrl.text.isEmpty) return;
    setState(() {
      widget.items.add(Item(
        done: false,
        title: newTaskCtrl.text,
      ));
      newTaskCtrl.clear();
    });
  }

  void remove(int index) {
    setState(() {
      widget.items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskCtrl,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Nova Tarefa",
            labelStyle: TextStyle(
              color: Colors.white,
            )
          ),
        )
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index){
          final  item = widget.items[index];

          return Center(
            child: Dismissible(
              background: Container(
                color: Colors.red.withOpacity(0.5),
              ),
              onDismissed: (direction) {
                remove(index);
              },
              key: Key(item.title),
              child: CheckboxListTile(
                title: Text(item.title),
                value: item.done,
                onChanged: (value) {
                  setState(() {
                    item.done = value!;
                  });
                },
              ),
            )
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add, 
        child: Icon(
          Icons.add
        ),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
