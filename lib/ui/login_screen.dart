import 'package:flutter/material.dart';
import 'package:recruitech_flutter/data/http_helper.dart';
import 'package:recruitech_flutter/data/login_class/login_request.dart';
import 'package:recruitech_flutter/data/login_class/login_response.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  HttpHelper? httpHelper;
  String email = "";
  String password = "";

  @override
  void initState() {
    httpHelper = HttpHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  child: Column(
                children: [
                  Image.asset("lib/assets/recruitech_logo.png",
                      width: 126, height: 128),
                  const Text("Sign in to your account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: TextEditingController(text: email),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.account_circle)),
                onChanged: (value) {
                  email = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: TextEditingController(text: password),
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Passsword',
                      prefixIcon: Icon(Icons.key)),
                  onChanged: (value) {
                    password = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                )),
            ElevatedButton(
                onPressed: () {
                  final request =
                      LoginRequest(email: email, password: password);
                  final response = httpHelper?.login(request);
                  if (_formKey.currentState!.validate()) {
                    if (response != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Logged!!!')));
                      /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                  JobsScreen();
                },)); */
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Something is wrong!!!')));
                    }
                  }
                },
                child: const Text("Sign-In"))
          ],
        ));
  }
}
