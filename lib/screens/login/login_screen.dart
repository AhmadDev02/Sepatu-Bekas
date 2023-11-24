import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String routeName = '/loginscreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String email, password;

  _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      // ignore: avoid_print
      print(email);
      // ignore: avoid_print
      print(password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "LOGIN AJG",
              style: TextStyle(
                fontFamily: 'Muli',
                fontSize: 20,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 12.0,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (input) => !input!.contains('@')
                          ? 'Tuliskan Email Dengan Benar'
                          : null,
                      onSaved: (input) => email = input!,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 12.0,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (input) =>
                          input!.length < 6 ? 'Harus Memasukan 6 Huruf' : null,
                      onSaved: (input) => password = input!,
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.green),
                      onPressed: _submit,
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: const Text('Register'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
