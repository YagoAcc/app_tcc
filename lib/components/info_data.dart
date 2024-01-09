import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class InfoData extends StatelessWidget {
  const InfoData({super.key, required this.nome});

  final String nome;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              nome,
              style: txtStyleTitle2,
            ),
            GestureDetector(
              child: const Row(
                children: [
                  Icon(
                    Icons.edit,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Editar Perfil')
                ],
              ),
            ),
            GestureDetector(
              child: const Row(
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Editar Imagem')
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
