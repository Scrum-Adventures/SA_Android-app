import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class Capacity extends StatefulWidget {
  @override
  _capacityState createState() => _capacityState();
}

class _capacityState extends State<Capacity> {
  late Icon floatingIcon;
  late double total;
  late double allocatedHrs;
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

    Widget result(BuildContext context) {
      return Expanded(
          child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: DataTable(
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Name',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Allocation',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                    rows: [
                      for (var item = 0; item < hours.length; item++)
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text(name[item].toString())),
                            DataCell(Text(hours[item].toString())),
                          ],
                        ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            "TEAM CAPACITY",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                          DataCell(Text(
                            allocatedHrs.toStringAsFixed(2),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                    ],
                  ))));
    }

    submitData() {
      floatingIcon = new Icon(Icons.arrow_back);
      name = [];
      hours = [];
      allocation = [];
      total = 0;
      allocatedHrs = 0;
      dynamicList.forEach((widget) => name.add(widget.nameController.text));
      dynamicList.forEach(
          (widget) => hours.add(double.parse(widget.hoursController.text)));
      dynamicList.forEach(
          (widget) => allocation.add(double.parse(widget.allocation.text)));

      for (var i = 0; i < hours.length; i++) {
        hours[i] = hours[i] * (allocation[i] / 100);
        allocatedHrs += hours[i];
      }
      setState(() {});
      print(name.length);
    }

    Widget submitButton = new Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: new RaisedButton(
        color: Color.fromRGBO(47, 86, 163, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
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

    return new Scaffold(
        body: new Container(
            child: new Column(children: <Widget>[
          name.length == 0 ? dynamicTextField : result(context),
          name.length == 0 ? submitButton : new Container(),
        ])),
        floatingActionButton: FloatingActionButton(
            onPressed: addDynamic, child: new Icon(Icons.add)));
  }

  List<dynamicWidget> dynamicList = [];
  List<double> hours = [];
  List<String> name = [];
  List<double> allocation = [];
  addDynamic() {
    if (name.length != 0) {
      floatingIcon = new Icon(Icons.add);

      name = [];
      hours = [];
      allocation = [];
      dynamicList = [];
    }
    setState(() {});
    if (dynamicList.length >= 25) {
      return;
    }
    dynamicList.add(new dynamicWidget());
  }
}

class dynamicWidget extends StatelessWidget {
  TextEditingController nameController = new TextEditingController();
  TextEditingController hoursController = new TextEditingController();
  TextEditingController allocation = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListBody(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: new TextFormField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      labelText: 'Name ', border: OutlineInputBorder()),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3.5,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: new TextFormField(
                  controller: hoursController,
                  decoration: const InputDecoration(
                      labelText: 'Hrs', border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 3.2,
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: new TextFormField(
                    controller: allocation,
                    decoration: const InputDecoration(
                        labelText: 'Allocation %',
                        border: OutlineInputBorder()),
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    onSaved: ((value) => {
                          double.parse(value!) <= 100 ? double.parse(value!) : 100
                        }),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
