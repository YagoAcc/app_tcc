import 'package:app_tcc/screens/accessScreens/access_form.dart';
import 'package:flutter/material.dart';

class AccessScreen extends StatelessWidget {
  const AccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AccessForm(),
    );
  }
}
