import 'package:flutter/material.dart';
import 'package:ui_widgets/snackbar.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  final formKey = GlobalKey<FormState>();

  String userid = "mahesh@gmail.com";
  String password = "Mahesh@123";
  TextEditingController usercntr = TextEditingController();
  TextEditingController passcntr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: usercntr,
                validator: (value) {
                  bool emailValid = RegExp(
                    "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  ).hasMatch(value!);
                  if (emailValid) {
                    return null;
                  } else {
                    return 'Please enter valid email';
                  }
                },
                decoration: InputDecoration(
                  hintText: "Username",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: passcntr,
                validator: (value) {
                  bool passValid = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                      .hasMatch(value!);

                  print('$passValid');
                  if (passValid) {
                    return null;
                  } else {
                    return "Please enter valid password";
                  }
                },
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                height: 55,
                minWidth: 300,
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Press",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (userid == usercntr.text && password == passcntr.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SnackBarDemo(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(
                                Icons.layers,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Text("Invalid crediential"),
                              Spacer(),
                            ],
                          ),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            label: "Cancle",
                            onPressed: () {
                              print("Cancle");
                            },
                          ),
                        ),
                      );
                    }
                  }
                },
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                height: 55,
                minWidth: 300,
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    passcntr.clear();
                    usercntr.clear();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
