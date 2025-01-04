import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ChatService {
 final String _apiKey = dotenv.env['key'] ?? '';
  final String _model = dotenv.env['model'] ?? ''; 

   Future<String> getChatResponse(String userMessage) async {
    if (_apiKey.isEmpty) {
      return "API key not found!";
    }
    const String apiUrl = "https://api.openai.com/v1/chat/completions";

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $_apiKey",
        },
        body: json.encode({
          "model": _model,
          "messages": [
            {"role": "system", "content": "You are Lekshmi, a english financial advisory chatbot special trained to advice indian citizens living in remote areas about various indian financial policies,laws and ideas.Always include examples or steps to clarify your answer.reply in detail in about 2-3 paragraphs or 5-6 points"},
            {"role": "user", "content": userMessage},
          ],
          "max_tokens": 2000,
          "temperature": 0.7,
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data["choices"][0]["message"]["content"].toString().trim();
      } else {
        return "Failed to fetch response: ${response.statusCode}";
      }
    } catch (e) {
      return "Error occurred: $e";
    }
  }
}
