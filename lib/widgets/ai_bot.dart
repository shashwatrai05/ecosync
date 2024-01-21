import 'package:flutter/material.dart';

class WasteSegregationBot extends StatefulWidget {
  @override
  _WasteSegregationBotState createState() => _WasteSegregationBotState();
}

class _WasteSegregationBotState extends State<WasteSegregationBot> {
  TextEditingController _imageURLController = TextEditingController();
  List<ChatMessage> _chatMessages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Waste Segregation Bot'),
        backgroundColor: Colors.green, // Set app bar color
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _chatMessages.length,
              itemBuilder: (context, index) {
                return _chatMessages[index];
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.green.shade200, Colors.green.shade400],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      controller: _imageURLController,
                      decoration: InputDecoration(
                        hintText: 'Enter Image URL...',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _processImage(_imageURLController.text);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.image),
                  onPressed: () {
                    _addMessage('Image selected');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _processImage(String imageURL) {
    _addMessage('You: $imageURL');
    _addMessage('Bot: Processing image...'); 
  }

  void _addMessage(String message) {
    setState(() {
      _chatMessages.add(ChatMessage(message));
    });
  }
}

class ChatMessage extends StatelessWidget {
  final String message;

  ChatMessage(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.shade400, Colors.green.shade600],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}                                                          