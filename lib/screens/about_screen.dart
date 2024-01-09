import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sobre',
          style: txtStyleAppBar,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: yellowMaterialState,
                ),
                child: Text(
                  'Politica de Privacidade',
                  style: txtStyleButtons,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: yellowMaterialState,
                ),
                child: Text(
                  'Termos de Serviço',
                  style: txtStyleButtons,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: yellowMaterialState,
                ),
                child: Text(
                  'Sobre o Produto',
                  style: txtStyleButtons,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
