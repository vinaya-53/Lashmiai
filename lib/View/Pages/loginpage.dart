import 'package:flutter/material.dart';
import 'package:lakshmiai/View/Pages/chatbotpage.dart';
import 'package:lakshmiai/View/Widgets/txtfld.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(42.0),
                child: Image.asset("assets/logo1.png"),
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: Color.fromARGB(202, 182, 166, 19),
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in to continue",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(
                      color: Color.fromARGB(202, 182, 166, 19),
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              txfldd(hnttxt: "Username"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Color.fromARGB(202, 182, 166, 19),
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              txfldd(hnttxt: "Password"),
              SizedBox(height: 20),
              
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chatbotpge()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(202, 182, 166, 19),
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Forgot Password",
                style: TextStyle(
                  color: Color.fromARGB(202, 182, 166, 19),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Create a new account",
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
