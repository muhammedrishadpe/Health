import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health/screens/bottom_Bar/bottom_bar.dart';

class LoginAuth extends StatefulWidget {
  const LoginAuth({super.key});

  @override
  State<LoginAuth> createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  //Initialiale Firebase App
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const LoginPage();
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//Login  function

  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User found for that email");
      }
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("login"),
          TextField(
            keyboardType: TextInputType.emailAddress,
            // obscureText: true,
            controller: _emailController,
            decoration: const InputDecoration(
                hintText: "email", prefixIcon: Icon(Icons.email)),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            controller: _passwordController,
            decoration: const InputDecoration(
                hintText: "Password", prefixIcon: Icon(Icons.lock)),
          ),
          SizedBox(
            width: double.infinity,
            child: RawMaterialButton(
              padding: const EdgeInsets.all(18),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              onPressed: () async {
                User? user = await loginUsingEmailPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                    context: context);
                print(user);
                if (user != null) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => BottomBar(),
                    ),
                  );
                }
              },
              fillColor: const Color.fromARGB(15, 50, 120, 242),
              child: const Text("Login"),
            ),
          )
        ],
      ),
    );
  }
}
