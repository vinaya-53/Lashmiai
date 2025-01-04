import 'package:flutter/material.dart';
import 'package:lakshmiai/View/Pages/community.dart';
import '../../../api_serv.dart';

class chatbotpge extends StatefulWidget {
  const chatbotpge({super.key});

  @override
  State<chatbotpge> createState() => _chatbotpgeState();
}

class _chatbotpgeState extends State<chatbotpge> {
  final TextEditingController _textController = TextEditingController();
  String _response = ""; // To store the chatbot's response
  final ChatService _chatService = ChatService();

  void _sendMessage() async {
    final userMessage = _textController.text.trim();
    if (userMessage.isNotEmpty) {
      setState(() {
        _response = "Lekshmi is thinking...";
      });

      final response = await _chatService.getChatResponse(userMessage);

      setState(() {
        _response = response;
      });

      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset("assets/chatbotimage.png"),
            const SizedBox(height: 130),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: "Ask me",
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: _sendMessage, // Trigger API call
                  ),
                ),
              ),
            ),
            const SizedBox(height: 13),
            if (_response.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  _response,
                  style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            Row(
              children: [
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => comunity()));
                  },
                  child: Image.asset("assets/btn.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => comunity()));
                  },
                  child: Image.asset("assets/btnn.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => comunity()));
                  },
                  child: Image.asset("assets/btnnn.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
