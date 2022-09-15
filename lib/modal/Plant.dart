class Plant {
  final String assetPath;
  final String name;
  final String type;
  final String description;
  final int size;

  Plant(this.description, this.size, {required this.assetPath, required this.name, required this.type});
}