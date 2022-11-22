import 'package:counter_7/model/budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/page/form.dart';

class MyDataBudget extends StatefulWidget {
  const MyDataBudget({super.key});

  @override
  State<MyDataBudget> createState() => _MyDataBudgetState();
}

class _MyDataBudgetState extends State<MyDataBudget> {
  List<Widget> listDataBudget = [];

  void addDataBudget() {
    setState(() {
      for (var i = 0; i < MyFormPageState.budgets.length; i++) {
        Budget data = MyFormPageState.budgets[i];
        listDataBudget.add(Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Card(
                child: ListTile(
              title:
                  Text('${data.judul} (${data.tanggalPembuatan.toString()})'),
              subtitle: Text('${data.nominal}'),
              trailing: Text(data.jenis),
            ))));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (listDataBudget.isEmpty) {
      addDataBudget();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Budget"),
      ),
      drawer: const MyDrawer(),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 500,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listDataBudget,
            ),
          ),
        )
      ]),
    );
  }
}
