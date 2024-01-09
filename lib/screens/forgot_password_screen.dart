import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Esqueceu sua senha?',
                  style: txtStyleTitle,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text(
                    'Informe o seu email cadastrado para receber as instruções de como recuperar o acesso:',
                    style: txtStyleButtons,
                    textAlign: TextAlign.center,
                  ),
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIconColor: Color(0xFF292325),
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Color(0xFF292325)),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                          'Enviar Email',
                          style: txtStyleStandard,
                        ),
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: const Text(
                                'Email enviado com sucesso! Verifique sua caixa de entrada!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'OK',
                                  style: txtStyleButtons,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
