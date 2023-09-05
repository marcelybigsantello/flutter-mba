import 'package:flutter/material.dart';

class ListLanguagesWidget extends StatefulWidget {
  const ListLanguagesWidget({super.key});

  @override
  State<ListLanguagesWidget> createState() => _ListLanguagesWidgetState();
}

class _ListLanguagesWidgetState extends State<ListLanguagesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            const Center(
              child: Wrap(
                spacing: 10,
                children: [
                  ChoiceChip(label: Text("Android Nativo"), selected: false),
                  ChoiceChip(label: Text("iOS Nativo"), selected: false),
                  ChoiceChip(label: Text("Flutter"), selected: true),
                  ChoiceChip(label: Text("React Native"), selected: false),
                  ChoiceChip(label: Text("PWA"), selected: false),
                  ChoiceChip(label: Text("Ionic"), selected: false)
                ],
              ),
            ),
            Expanded(
              child: ListView(
              children : const [
                Card(
                  child: ListTile(
                    leading: Text("1"),
                    title: Text("Android Nativo"),
                    subtitle: Text("Linguagem C, Java e Kotlin"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Text("2"),
                    title: Text("iOS Nativo"),
                    subtitle: Text("Linguagens Objective-C e Swift"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Text("3"),
                    title: Text("Flutter"),
                    subtitle: Text("Linguagem DART"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Text("4"),
                    title: Text("React Native"),
                    subtitle: Text("Linguagem Typescript e JavaScript"),
                  ),
                )

              ],
            ))
          ],
        );
  }
}