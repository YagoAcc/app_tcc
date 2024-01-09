import 'package:app_tcc/components/drawer_component.dart';
import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notificações',
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
      body: const Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
