import 'dart:ui';

class Agent {
  final String name;
  final String description;
  final Image imageurl;
  Agent({
    required this.name,
    required this.description,
    required this.imageurl,
  });

  @override
  String toString() =>
      'Agent(name: $name, description: $description, imageurl: $imageurl)';
}
