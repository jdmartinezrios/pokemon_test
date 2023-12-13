class Pokemon {
  final String name;
  final String url;

  Pokemon({required this.name, required this.url});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      url: json['url'],
      name: json['name'],
    );
  }

  @override
  String toString() => 'name: $name, url: $url';
}
