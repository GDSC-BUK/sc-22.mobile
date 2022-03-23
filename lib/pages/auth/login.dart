import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Container(
        child: const Text("Login"),
        padding: EdgeInsets.fromLTRB(0, paddingTop, 0, 0),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
