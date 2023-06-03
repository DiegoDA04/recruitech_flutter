class Role {
  final int id;
  final String name;

  Role({required this.id, required this.name});

  Role.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['name']);
}
