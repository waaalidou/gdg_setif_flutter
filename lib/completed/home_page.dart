import 'package:chat_app/completed/app_home.dart';
import 'package:chat_app/completed/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "images/Group1.png",
                    width: 90,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Welcome !",
                  style: GoogleFonts.sacramento(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Get in touch with millions people in the world!",
                  style: GoogleFonts.lato(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  "Continue as",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), //<-- SEE HERE
                  ),
                  margin: const EdgeInsets.all(0),
                  color: const Color.fromRGBO(1, 166, 171, 1),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: ListTile(
                      dense: true,
                      leading: const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 20,
                      ),
                      title: const FittedBox(
                        child: Text(
                          "Seffih Oualid Redouane",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      subtitle: const Center(
                        child: Text(
                          "Active From 20min",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const AppHomeScreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Login to another account",
                  style: GoogleFonts.lato(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    labelText: 'Email',
                    fillColor: Color.fromARGB(255, 227, 227, 227),
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    labelText: 'password',
                    fillColor: Color.fromARGB(255, 227, 227, 227),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(1, 166, 171, 1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Login",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You don't have an account?"),
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
                        " SignUp Now",
                        style: GoogleFonts.lato(
                          color: const Color.fromRGBO(1, 166, 171, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
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
      ),
    );
  }
}
