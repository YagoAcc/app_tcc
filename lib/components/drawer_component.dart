import 'package:app_tcc/components/info_data.dart';
import 'package:app_tcc/screens/accessScreens/access_screen.dart';
import 'package:app_tcc/screens/notifications_screen.dart';
import 'package:app_tcc/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        children: <Widget>[
          const InfoData(nome: 'Yago Accioly'),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const ImageIcon(
              NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/598/598430.png'),
              size: 20,
            ),
            title: const Text(
              'Meus Emblemas',
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text(
              'Notificações',
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsScreen()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Configurações',
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Sair',
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccessScreen()));
            },
          ),
        ],
      ),
    );
  }
}
