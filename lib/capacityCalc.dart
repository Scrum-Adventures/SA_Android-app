import 'package:flutter/material.dart';

import 'build.dart';

class Capacity extends StatefulWidget {
  @override
  _capacityState createState() => _capacityState();
}

class _capacityState extends State<Capacity> {
  List<dynamicWidget> dynamicList = [];
  List<String> Price = [];
  List<String> Product = [];

  Icon floatingIcon;
  double total;
  
  static const String _title = 'Capacity Calculator';

  @override
  Widget build(BuildContext context) {
    Widget dynamicTextField = new Flexible(
      flex: 2,
      child: new ListView.builder(
        itemCount: dynamicList.length,
        itemBuilder: (_, index) => dynamicList[index],
      ),
    );

    addDynamic() {
      if (Product.length != 0) {
        floatingIcon = new Icon(Icons.add);

        Product = [];
        Price = [];
        dynamicList = [];
      }
      setState(() {});
      if (dynamicList.length >= 25) {
        return;
      }
      dynamicList.add(new dynamicWidget());
    }

    submitData() {
      floatingIcon = new Icon(Icons.arrow_back);
      Product = [];
      Price = [];
      total = 0;
      dynamicList.forEach((widget) => Product.add(widget.product.text));
      dynamicList.forEach((widget) => Price.add(widget.price.text));
      Price.forEach((index) {
        total += double.parse(index);
      });
      Product.add("TEAM CAPACITY ");
      Product.length == 1
          ? Price.add("0")
          : Price.add((total).toStringAsFixed(2));

      print(total.toString());
      setState(() {});
      print(Product.length);
    }

    Widget submitButton = new Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: new RaisedButton(
        color: Color.fromRGBO(47, 86, 163, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          // side: BorderSide(color: Color.fromRGBO(47, 86, 163, 1))
        ),
        onPressed: submitData,
        child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text(
            'Calculate Capacity',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );

    Widget result(BuildContext context) {
      return Container(
          padding: EdgeInsets.all(16.0),
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Hrs',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: [
              for (var item in dynamicList)
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(item.product.text)),
                    DataCell(Text(item.price.text)),
                  ],
                ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(
                    "CALCULATED CAPACITY",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  DataCell(Text(
                    total.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ],
          ),
      );
    }

    return new Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
        body: new Container(
            child: new Column(children: <Widget>[
              Product.length == 0 ? dynamicTextField : result(context),
              Product.length == 0 ? submitButton : new Container(),
            ],
            ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: addDynamic, child: new Icon(Icons.add),
        ),
    );
  }
}

class dynamicWidget extends StatelessWidget {
  TextEditingController product = new TextEditingController();
  TextEditingController price = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListBody(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 200,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: new TextFormField(
                  controller: product,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      labelText: 'Name ', border: OutlineInputBorder()),
                ),
              ),
              Container(
                width: 150,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: new TextFormField(
                  controller: price,
                  decoration: const InputDecoration(
                      labelText: 'Hrs', border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}