class Job {
  final int id;
  final String title;
  final String description;

  Job({required this.id, required this.title, required this.description});

  Job.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            title: json['title'],
            description: json['description']);
}
