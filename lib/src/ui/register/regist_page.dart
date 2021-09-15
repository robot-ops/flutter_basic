import 'package:flutter/material.dart';

enum jeniskelamin { Lakilaki, Perempuan }

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  jeniskelamin? _jenkel = jeniskelamin.Lakilaki;
  DateTime selectedDate = DateTime.now();
  bool checkBoxValue = false;

  final firstDate = DateTime(1950, 1);
  final lastDate = DateTime(2030, 12);

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerNomor = new TextEditingController();
  TextEditingController controllerTanggal = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formKey,
      appBar: AppBar(
        title: Text('Instagram'),
        backgroundColor: Colors.black87,
      ),
      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: Column(
              key: formKey,
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Tidak Boleh Kosong';
                    }
                    return null;
                  },
                  controller: controllerNama,
                  decoration: InputDecoration(
                      hintText: "Masukan Nama Anda",
                      labelText: "Masukan Nama Anda",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Padding(padding: new EdgeInsets.only(top: 20.0)),
                TextFormField(
                  controller: controllerNomor,
                  decoration: InputDecoration(
                      hintText: "Nomor Telepon Anda",
                      labelText: "Nomor Telepon Anda",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nomor Tidak Boleh Kosong';
                    }
                    return null;
                  },
                ),
                Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  child: TextFormField(
                    controller: controllerTanggal,
                    readOnly: true,
                    onTap: () {
                      setState(() {
                        _openDatePicker(context);
                      });
                    },
                    decoration: InputDecoration(
                        labelText: 'Masukan Tanggal Lahir',
                        hintText: (selectedDate.toString()),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tanggal Tidak Boleh Kosong';
                      }
                      return null;
                    },
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                ListTile(
                  title: const Text('Laki-Laki'),
                  leading: Radio<jeniskelamin>(
                    value: jeniskelamin.Lakilaki,
                    groupValue: _jenkel,
                    onChanged: (jeniskelamin? value) {
                      setState(() {
                        _jenkel = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Perempuan'),
                  leading: Radio<jeniskelamin>(
                    value: jeniskelamin.Perempuan,
                    groupValue: _jenkel,
                    onChanged: (jeniskelamin? value) {
                      setState(() {
                        _jenkel = value;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final from = formKey.currentState;
                    from!.save();
                    if (from.validate()) {
                      _Dialog();
                    }
                  },
                  child: const Text('Submit'),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Checkbox(
                          value: checkBoxValue,
                          onChanged: (bool? value) {
                            print(value);
                            setState(() {
                              checkBoxValue = value!;
                            });
                          }),
                      Text("Pastikan data anda sudah benar")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _Dialog() {
    AlertDialog alertDialog = new AlertDialog(
      content: Container(
        height: 200.0,
        child: Column(
          children: <Widget>[
            Text("Nama : ${controllerNama.text}"),
            Text("Nomor : ${controllerNomor.text}"),
            Text(" $_jenkel"),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("${date.day}/${date.month}/${date.year}")));
      });
    }
  }
}
