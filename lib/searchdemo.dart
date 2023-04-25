import 'package:flutter/material.dart';

class DemoSearch extends StatefulWidget {
  const DemoSearch({Key? key}) : super(key: key);

  @override
  State<DemoSearch> createState() => _DemoSearchState();
}

class _DemoSearchState extends State<DemoSearch> {
  List name = [
    "Mahesh",
    "Amit",
    "Ashish",
    "Mohit",
    "Hardik",
    "Jay",
    "Tushar",
    "Ui",
    "Jenis",
    "Nevil",
    "Harshil",
  ];

  TextEditingController search = TextEditingController();
  List searchdata = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {});
                  searchdata.clear();
                  name.forEach((element) {
                    if (element.contains(value)) {
                      searchdata.add(element);
                    }
                  });
                },
                controller: search,
                decoration: InputDecoration(hintText: "Search name"),
              ),
              SizedBox(height: 30),
              search.text == ""
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: name.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Text("${name[index]}"),
                        );
                      },
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: searchdata.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Text("${searchdata[index]}"),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
