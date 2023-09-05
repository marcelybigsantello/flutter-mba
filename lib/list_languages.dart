import 'package:flutter/material.dart';

import 'language.dart';

class ListLanguagesWidget extends StatefulWidget {
  const ListLanguagesWidget({super.key});

  @override
  State<ListLanguagesWidget> createState() => _ListLanguagesWidgetState();
}

class _ListLanguagesWidgetState extends State<ListLanguagesWidget> {
  List<Language> linguagens = [
    Language("Android Nativo", "Linguagens C, Java e Kotlin", "1"),
    Language("iOS Nativo", "Linguagens Objective-C e Swift", "2"),
    Language("Flutter", "Linguagem DART", "3"),
    Language("React Native", "Linguagens Typescript e Javascript", "4"),
  ];

  List<ChoiceChip> _buildChips() {
    return linguagens
        .map((language) =>
            ChoiceChip(label: Text(language.name),
             selected: language.selected,
             onSelected: (value){
              setState(() {
                language.selected = value;
              });
             }))
        .toList();
  }

  List<Card> _buildContentCards() {
    return linguagens
        .where((language) => language.selected)
        .map((language) => Card(
              child: ListTile(
                leading: Text(language.id),
                title: Text(language.name),
                subtitle: Text(language.description),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Wrap(spacing: 10, children: _buildChips()),
        ),
        Expanded(
            child: ListView(
          children: _buildContentCards(),
        ))
      ],
    );
  }
}
