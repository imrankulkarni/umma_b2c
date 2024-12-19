class AnjumanUpdateModel {
  final String title;
  final String description;
  final DateTime date;

  AnjumanUpdateModel({required this.title, required this.description, required this.date});

  factory AnjumanUpdateModel.fromJson(Map<String, dynamic> json) {
    return AnjumanUpdateModel(
      title: json['title'],
      description: json['description'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
    };
  }
}
