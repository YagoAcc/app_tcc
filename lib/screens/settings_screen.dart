import 'package:app_tcc/components/container_icon.dart';
import 'package:app_tcc/screens/about_screen.dart';
import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Configurações',
          style: txtStyleAppBar,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerIcon(
                  initialIcon: Icons.volume_down,
                  secondIcon: Icons.volume_off,
                ),
                SizedBox(
                  width: 20,
                ),
                ContainerIcon(
                  initialIcon: Icons.music_note,
                  secondIcon: Icons.music_off,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: yellowMaterialState,
              ),
              child: Text('Idioma', style: txtStyleButtons),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen()));
              },
              style: ButtonStyle(
                backgroundColor: yellowMaterialState,
              ),
              child: Text('Sobre', style: txtStyleButtons),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: yellowMaterialState,
              ),
              child: Text('Progresso', style: txtStyleButtons),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: yellowMaterialState,
              ),
              child: Text('Emblemas', style: txtStyleButtons),
            ),
          ],
        ),
      ),
    );
  }
}
