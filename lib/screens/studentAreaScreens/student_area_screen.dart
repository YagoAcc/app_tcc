import 'package:app_tcc/components/drawer_component.dart';
import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class StudentAreaScreen extends StatelessWidget {
  const StudentAreaScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Área do Aluno',
          style: txtStyleAppBar,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const DrawerComponent(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: yellowColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Olá, Aluno!',
                          style: txtStyleTitle2,
                        ),
                        const Text(
                          'Você tem X tarefas para \nserem feitas hoje!',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 12),
                  child: Text('Pesquisar...'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: yellowColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [Text('Mural de Avisos')],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
