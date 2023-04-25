import 'package:flutter/material.dart';

class DropDownFormFieldDemo extends StatefulWidget {
  @override
  _DropDownFormFieldDemoState createState() => _DropDownFormFieldDemoState();
}

class _DropDownFormFieldDemoState extends State<DropDownFormFieldDemo> {
  final _formKey = GlobalKey<FormState>();

  String? select;

  List dropdownitem = ["Male", "Female"];
  @override
  Widget build(BuildContext context) {
    String? name;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonFormField(
                value: select,
                isExpanded: false,
                itemHeight: 50,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 5),
                  ),
                ),
                hint: const Text(
                  'Select your choice',
                ),
                onChanged: (value) {
                  setState(
                    () {
                      select = value as String?;
                    },
                  );
                },
                validator: (value) {
                  if (value == null) {
                    return "Can't be Empty";
                  } else {
                    return null;
                  }
                },
                items: List.generate(
                  dropdownitem.length,
                  (index) => DropdownMenuItem(
                    value: dropdownitem[index],
                    child: Text(
                      dropdownitem[index],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('PROCEED'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Center(child: Text("Hello")),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
