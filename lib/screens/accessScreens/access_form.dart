import 'package:app_tcc/screens/forgot_password_screen.dart';
import 'package:app_tcc/screens/home_screen.dart';
import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class AccessForm extends StatefulWidget {
  const AccessForm({super.key});

  @override
  _AccessFormState createState() => _AccessFormState();
}

class _AccessFormState extends State<AccessForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _hidePassword = true;

  @override
  void initState() {
    super.initState();
    _hidePassword = true;
  }

  void _togglePasswordView() {
    setState(() {
      _hidePassword = !_hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      'Área de\nAcesso',
                      textAlign: TextAlign.center,
                      style: txtStyleTitle,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 35,
                right: 10,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(backgroundColor: darkYellowMaterialState),
                  child: Text(
                    'Acesso ao docente',
                    style: txtStyleButtons,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Usuário',
                  style: txtStyleStandard,
                ),
                TextField(
                  controller: emailController,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Senha',
                  style: txtStyleStandard,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: _hidePassword,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      //works as usual whenever toggle happens
                      onTap: () {
                        print('1. $_hidePassword');
                        _togglePasswordView();
                        print('2. $_hidePassword');
                      },
                      //icon doesn't change
                      child: Icon(_hidePassword == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Esqueceu sua senha?',
                    style: txtStyleSmallButtons,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ForgotPasswordScreen()));
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: GestureDetector(
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        color: yellowColor,
                      ),
                      child: Center(
                        child: Text(
                          'Entrar',
                          style: txtStyleStandard,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
