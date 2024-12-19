import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/anjuman_update_model.dart'; // Ensure the path is correct
import '../constants/app_strings.dart'; // Ensure the path is correct

class AnjumanService {
  // Fetch all updates related to Anjuman
  Future<List<AnjumanUpdateModel>> fetchAnjumanUpdates() async {
    try {
      final response = await http.get(Uri.parse('${AppStrings.apiBaseUrl}/anjuman/updates'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as List;
        return data.map((json) => AnjumanUpdateModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch Anjuman updates');
      }
    } catch (e) {
      print('Error fetching Anjuman updates: $e');
      return [];
    }
  }

  // Submit a new update to the Anjuman system
  Future<bool> postAnjumanUpdate(AnjumanUpdateModel update) async {
    try {
      final response = await http.post(
        Uri.parse('${AppStrings.apiBaseUrl}/anjuman/updates'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(update.toJson()),
      );

      if (response.statusCode == 201) {
        return true;
      } else {
        print('Error posting Anjuman update: ${response.body}');
        return false;
      }
    } catch (e) {
      print('Error posting Anjuman update: $e');
      return false;
    }
  }
}
