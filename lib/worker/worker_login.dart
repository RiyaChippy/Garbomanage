import 'package:flutter/material.dart';
import 'package:login/user/main1.dart';
import 'package:login/google.dart';
import 'package:login/worker/worker_dashboard.dart';
import 'package:login/worker/workerpass.dart';

// ignore: camel_case_types
class workerlog extends StatefulWidget {
  const workerlog({super.key});

  @override
  State<workerlog> createState() => _workerlogState();
}

// ignore: camel_case_types
class _workerlogState extends State<workerlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      width: 180, // Set a specific width for the container
                      height: 200,
                      top: 40,
                      left: 10,
                      child: Container(
                        width: 220, // Set a specific width for the container
                        height: 300, // Set a specific height for the container
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/welcome.png'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        child: Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: const Center(
                                child: Text(" Worker Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 40)))))
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email or Phone number",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 227, 218, 234),
                        ),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 107, 100, 237)
                            .withOpacity(0.7),
                      ),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 25, 0, 0),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 222, 211, 228),
                        ),
                        filled: true,
                        border: InputBorder.none,
                        fillColor: const Color.fromARGB(255, 107, 100, 237)
                            .withOpacity(0.7),
                      ),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 13, 0, 0),
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WPass()),
                ),
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 107, 100, 237),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const workerdash(),
                      ),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 107, 100, 237),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const google(),
                      ),
                    );
                  },
                  child: const Text(
                    "Login using Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 107, 100, 237),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "User Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                width: 180, // Set a specific width for the container
                height: 200,
                bottom: 40,
                right: 10,
                child: Container(
                  width: 220, // Set a specific width for the container
                  height: 300, // Set a specific height for the container
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/worker.gif'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
