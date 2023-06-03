class Developer {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? description;

  Developer({
    this.id,
    this.firstName,
    this.lastName,
    this.description,
  });

  Developer.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          firstName: json['firstName'],
          lastName: json['lastName'],
          description: json['description'],
        );
}
