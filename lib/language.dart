class Language {
  String name;
  String description;
  final String id;
  bool selected = false;

  //Construtor posicional
  Language(this.name, this.description, this.id);

  //Construtor nominal
  //Language({this.name: name, this.description: description, this.id: id});
}