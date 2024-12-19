class Event {
  final String id;
  final String title;
  final String description;
  final DateTime eventDate;
  final String mosqueId; // Associated mosque ID
  final String location;
  final String contactDetails;
  final String imageUrl;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.eventDate,
    required this.mosqueId,
    required this.location,
    required this.contactDetails,
    required this.imageUrl,
  });

  // Method to create Event object from a Map (used for deserialization)
  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      eventDate: DateTime.parse(map['event_date']),
      mosqueId: map['mosque_id'],
      location: map['location'],
      contactDetails: map['contact_details'],
      imageUrl: map['image_url'],
    );
  }

  // Method to convert Event object to a Map (used for serialization)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'event_date': eventDate.toIso8601String(),
      'mosque_id': mosqueId,
      'location': location,
      'contact_details': contactDetails,
      'image_url': imageUrl,
    };
  }
}
