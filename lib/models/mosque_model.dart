class Mosque {
  final String id;
  final String name;
  final String location;
  final String address;
  final String phoneNumber;
  final List<String> services;
  final List<String> events;
  final String prayerTimesUrl;  // URL to get prayer times for this mosque
  final double latitude;
  final double longitude;

  Mosque({
    required this.id,
    required this.name,
    required this.location,
    required this.address,
    required this.phoneNumber,
    required this.services,
    required this.events,
    required this.prayerTimesUrl,
    required this.latitude,
    required this.longitude,
  });

  // Method to create Mosque object from a Map (used for deserialization)
  factory Mosque.fromMap(Map<String, dynamic> map) {
    return Mosque(
      id: map['id'],
      name: map['name'],
      location: map['location'],
      address: map['address'],
      phoneNumber: map['phone_number'],
      services: List<String>.from(map['services']),
      events: List<String>.from(map['events']),
      prayerTimesUrl: map['prayer_times_url'],
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }

  // Method to convert Mosque object to a Map (used for serialization)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'address': address,
      'phone_number': phoneNumber,
      'services': services,
      'events': events,
      'prayer_times_url': prayerTimesUrl,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
