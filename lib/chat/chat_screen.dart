import 'package:flutter/material.dart';

void main() => runApp(const ChatScreen());

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://ugc-idle.s3-us-west-2.amazonaws.com/97e1fefcccd6eac917c614f0d3beff35.jpg'),
          ),
        ),
        title: const Text('mi amor'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );

  }
}

class _ChatView extends StatelessWidget {
 
 
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}