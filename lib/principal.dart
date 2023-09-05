import 'package:flutter/material.dart';

import 'list_languages.dart';

class PrincipalWidget extends StatelessWidget {
  const PrincipalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo Home Page"),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const ListLanguagesWidget(),
    );
  }
}
