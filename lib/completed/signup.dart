import 'package:chat_app/completed/app_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/Group1.png",
                width: 80,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Create Account",
                style: GoogleFonts.sacramento(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Create a new account in few minutes and start chatting",
                style: GoogleFonts.lato(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 25),
              Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Phone Number"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Confirme Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("I agree to "),
                  TextButton(
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      " Privacy Policy & services terms",
                      style: GoogleFonts.lato(
                        color: const Color.fromRGBO(1, 166, 171, 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AppHomeScreen(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(1, 166, 171, 1),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Finishing The SignUp",
                      style: GoogleFonts.lato(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: Text(
                  "All Copyrights reserved GDG Setif 2023",
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 213, 212, 212),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
