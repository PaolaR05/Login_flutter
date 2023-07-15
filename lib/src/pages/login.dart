import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Good Vibes APP',
          style: TextStyle(color: Colors.white),          
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/good-vibes.png'),
              ),
              Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: userController,
                          decoration: const InputDecoration(
                            label: Text('Usuario'),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) return 'Usuario vacío';
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('Contraseña'),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) return 'Contraseña vacía';
                            return null;
                          },
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(
                  onPressed: () {
                    final bool validity =
                        userController.text == 'pmunoz@unah.hn' &&
                            passwordController.text == '20172000803';
                    if (formKey.currentState!.validate() && validity) {
                      Navigator.pushNamed(context, MyRoutes.welcome.name);
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('usuario/contraseña incorrectas'),
                        action: SnackBarAction(
                          label: 'Ok',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}